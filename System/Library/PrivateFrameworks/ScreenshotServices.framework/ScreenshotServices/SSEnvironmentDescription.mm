@interface SSEnvironmentDescription
- (BSSettings)bsSettings;
- (CGSize)imagePixelSize;
- (CGSize)imagePointSize;
- (NSString)currentApplicationBundleID;
- (NSString)loggableDescription;
- (SSEnvironmentDescription)init;
- (SSEnvironmentDescription)initWithBSXPCCoder:(id)coder;
- (UIEdgeInsets)screenshotsWindowSafeAreaInsets;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)takeElementsFromDisplayLayout:(id)layout;
@end

@implementation SSEnvironmentDescription

- (SSEnvironmentDescription)init
{
  v15.receiver = self;
  v15.super_class = SSEnvironmentDescription;
  v2 = [(SSEnvironmentDescription *)&v15 init];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  identifier = v2->_identifier;
  v2->_identifier = uUIDString;

  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString2 = [uUID2 UUIDString];
  sessionIdentifier = v2->_sessionIdentifier;
  v2->_sessionIdentifier = uUIDString2;

  date = [MEMORY[0x1E695DF00] date];
  date = v2->_date;
  v2->_date = date;

  elements = v2->_elements;
  v2->_elements = MEMORY[0x1E695E0F0];

  v12 = objc_alloc_init(SSUIServiceOptions);
  serviceOptions = v2->_serviceOptions;
  v2->_serviceOptions = v12;

  [(SSUIServiceOptions *)v2->_serviceOptions setFlashStyle:0];
  [(SSUIServiceOptions *)v2->_serviceOptions setSaveLocation:0];
  return v2;
}

- (void)takeElementsFromDisplayLayout:(id)layout
{
  v19 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  elements = [layoutCopy elements];
  v7 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(elements);
        }

        v11 = [[SSEnvironmentElement alloc] initWithDisplayLayoutElement:*(*(&v14 + 1) + 8 * v10)];
        [array addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [array copy];
  elements = self->_elements;
  self->_elements = v12;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SSEnvironmentDescription *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"SSEnvironmentDescriptionIdentifier"];

  elements = [(SSEnvironmentDescription *)self elements];
  [coderCopy encodeCollection:elements forKey:@"SSEnvironmentDescriptionElements"];

  imageSurface = [(SSEnvironmentDescription *)self imageSurface];
  [coderCopy encodeObject:imageSurface forKey:@"SSEnvironmentDescriptionImageSurface"];

  [(SSEnvironmentDescription *)self imagePixelSize];
  [coderCopy encodeCGSize:@"SSEnvironmentDescriptionImagePixelSize" forKey:?];
  [(SSEnvironmentDescription *)self imageScale];
  [coderCopy encodeDouble:@"SSEnvironmentDescriptionImageScale" forKey:?];
  sessionIdentifier = [(SSEnvironmentDescription *)self sessionIdentifier];
  [coderCopy encodeObject:sessionIdentifier forKey:@"SSEnvironmentDescriptionSessionIdentifier"];

  [coderCopy encodeInt64:-[SSEnvironmentDescription presentationMode](self forKey:{"presentationMode"), @"SSEnvironmentDescriptionPresentationMode"}];
  serviceOptions = [(SSEnvironmentDescription *)self serviceOptions];
  [coderCopy encodeObject:serviceOptions forKey:@"SSEnvironmentDescriptionServiceOptions"];

  appleInternalOptions = [(SSEnvironmentDescription *)self appleInternalOptions];
  [coderCopy encodeObject:appleInternalOptions forKey:@"SSEnvironmentDescriptionAppleInternalOptions"];

  date = [(SSEnvironmentDescription *)self date];
  [coderCopy encodeObject:date forKey:@"SSEnvironmentDescriptionDate"];

  betaApplicationBundleID = [(SSEnvironmentDescription *)self betaApplicationBundleID];
  [coderCopy encodeObject:betaApplicationBundleID forKey:@"SSEnvironmentDescriptionBetaApplicationBundleID"];

  betaApplicationName = [(SSEnvironmentDescription *)self betaApplicationName];
  [coderCopy encodeObject:betaApplicationName forKey:@"SSEnvironmentDescriptionBetaApplicationName"];

  [coderCopy encodeBool:-[SSEnvironmentDescription canAutosaveToFiles](self forKey:{"canAutosaveToFiles"), @"SSEnvironmentDescriptionCanAutosaveToFilesKey"}];
  [coderCopy encodeBool:-[SSEnvironmentDescription skipShutterSound](self forKey:{"skipShutterSound"), @"SSEnvironmentDescriptionSkipShutterSoundKey"}];
  [coderCopy encodeBool:-[SSEnvironmentDescription hasOnenessScreen](self forKey:{"hasOnenessScreen"), @"SSEnvironmentDescriptionHasOnenessScreenKey"}];
  [coderCopy encodeUInt64:-[SSEnvironmentDescription externalFlashLayerRenderID](self forKey:{"externalFlashLayerRenderID"), @"SSEnvironmentDescriptionExternalFlashLayerRenderIDKey"}];
  [coderCopy encodeUInt64:-[SSEnvironmentDescription externalFlashLayerContextID](self forKey:{"externalFlashLayerContextID"), @"SSEnvironmentDescriptionExternalFlashLayerContextIDKey"}];
  harvestedMetadata = [(SSEnvironmentDescription *)self harvestedMetadata];
  [coderCopy encodeCollection:harvestedMetadata forKey:@"SSEnvironmentDescriptionHarvestedMetadataKey"];

  [(SSEnvironmentDescription *)self screenshotsWindowSafeAreaInsets];
  v15 = NSStringFromUIEdgeInsets(v17);
  [coderCopy encodeObject:v15 forKey:@"SSEnvironmentDescriptionScreenshotsWindowSafeAreaInsetsKey"];
}

- (SSEnvironmentDescription)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSEnvironmentDescription *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionIdentifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = objc_opt_class();
  v9 = [coderCopy decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionElements"];
  elements = v5->_elements;
  v5->_elements = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionImageSurface"];
  imageSurface = v5->_imageSurface;
  v5->_imageSurface = v11;

  [coderCopy decodeCGSizeForKey:@"SSEnvironmentDescriptionImagePixelSize"];
  v5->_imagePixelSize.width = v13;
  v5->_imagePixelSize.height = v14;
  [coderCopy decodeDoubleForKey:@"SSEnvironmentDescriptionImageScale"];
  v5->_imageScale = v15;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionSessionIdentifier"];
  sessionIdentifier = v5->_sessionIdentifier;
  v5->_sessionIdentifier = v16;

  v5->_presentationMode = [coderCopy decodeInt64ForKey:@"SSEnvironmentDescriptionPresentationMode"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionServiceOptions"];
  serviceOptions = v5->_serviceOptions;
  v5->_serviceOptions = v18;

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionAppleInternalOptions"];
  appleInternalOptions = v5->_appleInternalOptions;
  v5->_appleInternalOptions = v20;

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionDate"];
  date = v5->_date;
  v5->_date = v22;

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionBetaApplicationBundleID"];
  betaApplicationBundleID = v5->_betaApplicationBundleID;
  v5->_betaApplicationBundleID = v24;

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionBetaApplicationName"];
  betaApplicationName = v5->_betaApplicationName;
  v5->_betaApplicationName = v26;

  v5->_canAutosaveToFiles = [coderCopy decodeBoolForKey:@"SSEnvironmentDescriptionCanAutosaveToFilesKey"];
  v5->_skipShutterSound = [coderCopy decodeBoolForKey:@"SSEnvironmentDescriptionSkipShutterSoundKey"];
  v5->_hasOnenessScreen = [coderCopy decodeBoolForKey:@"SSEnvironmentDescriptionHasOnenessScreenKey"];
  v5->_externalFlashLayerRenderID = [coderCopy decodeUInt64ForKey:@"SSEnvironmentDescriptionExternalFlashLayerRenderIDKey"];
  v5->_externalFlashLayerContextID = [coderCopy decodeUInt64ForKey:@"SSEnvironmentDescriptionExternalFlashLayerContextIDKey"];
  v28 = objc_opt_class();
  v29 = [coderCopy decodeCollectionOfClass:v28 containingClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionHarvestedMetadataKey"];
  harvestedMetadata = v5->_harvestedMetadata;
  v5->_harvestedMetadata = v29;

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionScreenshotsWindowSafeAreaInsetsKey"];

  v5->_screenshotsWindowSafeAreaInsets = UIEdgeInsetsFromString(v31);
  return v5;
}

- (NSString)loggableDescription
{
  v49 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  identifier = [(SSEnvironmentDescription *)self identifier];
  shorterLoggableString = [identifier shorterLoggableString];
  v7 = [v4 stringWithFormat:@"identifier: %@ ", shorterLoggableString];
  [string appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  [(SSEnvironmentDescription *)self imagePixelSize];
  v9 = NSStringFromCGSize(v51);
  v10 = [v8 stringWithFormat:@"pixelSize: %@ ", v9];
  [string appendString:v10];

  v11 = MEMORY[0x1E696AEC0];
  [(SSEnvironmentDescription *)self imageScale];
  v13 = [v11 stringWithFormat:@"scale: %f ", v12];
  [string appendString:v13];

  v14 = MEMORY[0x1E696AEC0];
  sessionIdentifier = [(SSEnvironmentDescription *)self sessionIdentifier];
  shorterLoggableString2 = [sessionIdentifier shorterLoggableString];
  v17 = [v14 stringWithFormat:@"sessionIdentifier: %@ ", shorterLoggableString2];
  [string appendString:v17];

  [string appendString:@"elements: ["];
  v18 = MEMORY[0x1E696AEC0];
  betaApplicationBundleID = [(SSEnvironmentDescription *)self betaApplicationBundleID];
  v20 = [v18 stringWithFormat:@"beta app bundleID: %@", betaApplicationBundleID];
  [string appendString:v20];

  v21 = MEMORY[0x1E696AEC0];
  betaApplicationName = [(SSEnvironmentDescription *)self betaApplicationName];
  v23 = [v21 stringWithFormat:@"beta app name: %@", betaApplicationName];
  [string appendString:v23];

  v24 = MEMORY[0x1E696AEC0];
  if ([(SSEnvironmentDescription *)self canAutosaveToFiles])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  v26 = [v24 stringWithFormat:@"can autosave to files: %@", v25];
  [string appendString:v26];

  v27 = MEMORY[0x1E696AEC0];
  if ([(SSEnvironmentDescription *)self skipShutterSound])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  v29 = [v27 stringWithFormat:@"skip shutter sound: %@", v28];
  [string appendString:v29];

  v30 = MEMORY[0x1E696AEC0];
  if ([(SSEnvironmentDescription *)self hasOnenessScreen])
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  v32 = [v30 stringWithFormat:@"has oneness screen: %@", v31];
  [string appendString:v32];

  v33 = MEMORY[0x1E696AEC0];
  [(SSEnvironmentDescription *)self screenshotsWindowSafeAreaInsets];
  v34 = NSStringFromUIEdgeInsets(v52);
  v35 = [v33 stringWithFormat:@"screenshots window safe area insets: %@", v34];
  [string appendString:v35];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  elements = [(SSEnvironmentDescription *)self elements];
  v37 = [elements countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v45;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(elements);
        }

        v41 = *(*(&v44 + 1) + 8 * i);
        [string appendString:@"<"];
        loggableDescription = [v41 loggableDescription];
        [string appendString:loggableDescription];

        [string appendString:@">"];
      }

      v38 = [elements countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v38);
  }

  [string appendString:@"]"];

  return string;
}

- (CGSize)imagePointSize
{
  [(SSEnvironmentDescription *)self imagePixelSize];
  v4 = v3;
  v6 = v5;
  [(SSEnvironmentDescription *)self imageScale];
  v8 = v6 / v7;
  v9 = v4 / v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (NSString)currentApplicationBundleID
{
  elements = [(SSEnvironmentDescription *)self elements];
  if ([elements count])
  {
    firstObject = [elements firstObject];
    bundleIdentifier = [firstObject bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

- (BSSettings)bsSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:self forSetting:1];

  return v3;
}

- (CGSize)imagePixelSize
{
  width = self->_imagePixelSize.width;
  height = self->_imagePixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)screenshotsWindowSafeAreaInsets
{
  top = self->_screenshotsWindowSafeAreaInsets.top;
  left = self->_screenshotsWindowSafeAreaInsets.left;
  bottom = self->_screenshotsWindowSafeAreaInsets.bottom;
  right = self->_screenshotsWindowSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end