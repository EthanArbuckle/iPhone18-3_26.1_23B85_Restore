@interface SSEnvironmentDescription
- (BSSettings)bsSettings;
- (CGSize)imagePixelSize;
- (CGSize)imagePointSize;
- (NSString)currentApplicationBundleID;
- (NSString)loggableDescription;
- (SSEnvironmentDescription)init;
- (SSEnvironmentDescription)initWithBSXPCCoder:(id)a3;
- (UIEdgeInsets)screenshotsWindowSafeAreaInsets;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)takeElementsFromDisplayLayout:(id)a3;
@end

@implementation SSEnvironmentDescription

- (SSEnvironmentDescription)init
{
  v15.receiver = self;
  v15.super_class = SSEnvironmentDescription;
  v2 = [(SSEnvironmentDescription *)&v15 init];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  identifier = v2->_identifier;
  v2->_identifier = v4;

  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  sessionIdentifier = v2->_sessionIdentifier;
  v2->_sessionIdentifier = v7;

  v9 = [MEMORY[0x1E695DF00] date];
  date = v2->_date;
  v2->_date = v9;

  elements = v2->_elements;
  v2->_elements = MEMORY[0x1E695E0F0];

  v12 = objc_alloc_init(SSUIServiceOptions);
  serviceOptions = v2->_serviceOptions;
  v2->_serviceOptions = v12;

  [(SSUIServiceOptions *)v2->_serviceOptions setFlashStyle:0];
  [(SSUIServiceOptions *)v2->_serviceOptions setSaveLocation:0];
  return v2;
}

- (void)takeElementsFromDisplayLayout:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 elements];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [[SSEnvironmentElement alloc] initWithDisplayLayoutElement:*(*(&v14 + 1) + 8 * v10)];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  elements = self->_elements;
  self->_elements = v12;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSEnvironmentDescription *)self identifier];
  [v4 encodeObject:v5 forKey:@"SSEnvironmentDescriptionIdentifier"];

  v6 = [(SSEnvironmentDescription *)self elements];
  [v4 encodeCollection:v6 forKey:@"SSEnvironmentDescriptionElements"];

  v7 = [(SSEnvironmentDescription *)self imageSurface];
  [v4 encodeObject:v7 forKey:@"SSEnvironmentDescriptionImageSurface"];

  [(SSEnvironmentDescription *)self imagePixelSize];
  [v4 encodeCGSize:@"SSEnvironmentDescriptionImagePixelSize" forKey:?];
  [(SSEnvironmentDescription *)self imageScale];
  [v4 encodeDouble:@"SSEnvironmentDescriptionImageScale" forKey:?];
  v8 = [(SSEnvironmentDescription *)self sessionIdentifier];
  [v4 encodeObject:v8 forKey:@"SSEnvironmentDescriptionSessionIdentifier"];

  [v4 encodeInt64:-[SSEnvironmentDescription presentationMode](self forKey:{"presentationMode"), @"SSEnvironmentDescriptionPresentationMode"}];
  v9 = [(SSEnvironmentDescription *)self serviceOptions];
  [v4 encodeObject:v9 forKey:@"SSEnvironmentDescriptionServiceOptions"];

  v10 = [(SSEnvironmentDescription *)self appleInternalOptions];
  [v4 encodeObject:v10 forKey:@"SSEnvironmentDescriptionAppleInternalOptions"];

  v11 = [(SSEnvironmentDescription *)self date];
  [v4 encodeObject:v11 forKey:@"SSEnvironmentDescriptionDate"];

  v12 = [(SSEnvironmentDescription *)self betaApplicationBundleID];
  [v4 encodeObject:v12 forKey:@"SSEnvironmentDescriptionBetaApplicationBundleID"];

  v13 = [(SSEnvironmentDescription *)self betaApplicationName];
  [v4 encodeObject:v13 forKey:@"SSEnvironmentDescriptionBetaApplicationName"];

  [v4 encodeBool:-[SSEnvironmentDescription canAutosaveToFiles](self forKey:{"canAutosaveToFiles"), @"SSEnvironmentDescriptionCanAutosaveToFilesKey"}];
  [v4 encodeBool:-[SSEnvironmentDescription skipShutterSound](self forKey:{"skipShutterSound"), @"SSEnvironmentDescriptionSkipShutterSoundKey"}];
  [v4 encodeBool:-[SSEnvironmentDescription hasOnenessScreen](self forKey:{"hasOnenessScreen"), @"SSEnvironmentDescriptionHasOnenessScreenKey"}];
  [v4 encodeUInt64:-[SSEnvironmentDescription externalFlashLayerRenderID](self forKey:{"externalFlashLayerRenderID"), @"SSEnvironmentDescriptionExternalFlashLayerRenderIDKey"}];
  [v4 encodeUInt64:-[SSEnvironmentDescription externalFlashLayerContextID](self forKey:{"externalFlashLayerContextID"), @"SSEnvironmentDescriptionExternalFlashLayerContextIDKey"}];
  v14 = [(SSEnvironmentDescription *)self harvestedMetadata];
  [v4 encodeCollection:v14 forKey:@"SSEnvironmentDescriptionHarvestedMetadataKey"];

  [(SSEnvironmentDescription *)self screenshotsWindowSafeAreaInsets];
  v15 = NSStringFromUIEdgeInsets(v17);
  [v4 encodeObject:v15 forKey:@"SSEnvironmentDescriptionScreenshotsWindowSafeAreaInsetsKey"];
}

- (SSEnvironmentDescription)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSEnvironmentDescription *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionIdentifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = objc_opt_class();
  v9 = [v4 decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionElements"];
  elements = v5->_elements;
  v5->_elements = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionImageSurface"];
  imageSurface = v5->_imageSurface;
  v5->_imageSurface = v11;

  [v4 decodeCGSizeForKey:@"SSEnvironmentDescriptionImagePixelSize"];
  v5->_imagePixelSize.width = v13;
  v5->_imagePixelSize.height = v14;
  [v4 decodeDoubleForKey:@"SSEnvironmentDescriptionImageScale"];
  v5->_imageScale = v15;
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionSessionIdentifier"];
  sessionIdentifier = v5->_sessionIdentifier;
  v5->_sessionIdentifier = v16;

  v5->_presentationMode = [v4 decodeInt64ForKey:@"SSEnvironmentDescriptionPresentationMode"];
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionServiceOptions"];
  serviceOptions = v5->_serviceOptions;
  v5->_serviceOptions = v18;

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionAppleInternalOptions"];
  appleInternalOptions = v5->_appleInternalOptions;
  v5->_appleInternalOptions = v20;

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionDate"];
  date = v5->_date;
  v5->_date = v22;

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionBetaApplicationBundleID"];
  betaApplicationBundleID = v5->_betaApplicationBundleID;
  v5->_betaApplicationBundleID = v24;

  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionBetaApplicationName"];
  betaApplicationName = v5->_betaApplicationName;
  v5->_betaApplicationName = v26;

  v5->_canAutosaveToFiles = [v4 decodeBoolForKey:@"SSEnvironmentDescriptionCanAutosaveToFilesKey"];
  v5->_skipShutterSound = [v4 decodeBoolForKey:@"SSEnvironmentDescriptionSkipShutterSoundKey"];
  v5->_hasOnenessScreen = [v4 decodeBoolForKey:@"SSEnvironmentDescriptionHasOnenessScreenKey"];
  v5->_externalFlashLayerRenderID = [v4 decodeUInt64ForKey:@"SSEnvironmentDescriptionExternalFlashLayerRenderIDKey"];
  v5->_externalFlashLayerContextID = [v4 decodeUInt64ForKey:@"SSEnvironmentDescriptionExternalFlashLayerContextIDKey"];
  v28 = objc_opt_class();
  v29 = [v4 decodeCollectionOfClass:v28 containingClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionHarvestedMetadataKey"];
  harvestedMetadata = v5->_harvestedMetadata;
  v5->_harvestedMetadata = v29;

  v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionScreenshotsWindowSafeAreaInsetsKey"];

  v5->_screenshotsWindowSafeAreaInsets = UIEdgeInsetsFromString(v31);
  return v5;
}

- (NSString)loggableDescription
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(SSEnvironmentDescription *)self identifier];
  v6 = [v5 shorterLoggableString];
  v7 = [v4 stringWithFormat:@"identifier: %@ ", v6];
  [v3 appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  [(SSEnvironmentDescription *)self imagePixelSize];
  v9 = NSStringFromCGSize(v51);
  v10 = [v8 stringWithFormat:@"pixelSize: %@ ", v9];
  [v3 appendString:v10];

  v11 = MEMORY[0x1E696AEC0];
  [(SSEnvironmentDescription *)self imageScale];
  v13 = [v11 stringWithFormat:@"scale: %f ", v12];
  [v3 appendString:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(SSEnvironmentDescription *)self sessionIdentifier];
  v16 = [v15 shorterLoggableString];
  v17 = [v14 stringWithFormat:@"sessionIdentifier: %@ ", v16];
  [v3 appendString:v17];

  [v3 appendString:@"elements: ["];
  v18 = MEMORY[0x1E696AEC0];
  v19 = [(SSEnvironmentDescription *)self betaApplicationBundleID];
  v20 = [v18 stringWithFormat:@"beta app bundleID: %@", v19];
  [v3 appendString:v20];

  v21 = MEMORY[0x1E696AEC0];
  v22 = [(SSEnvironmentDescription *)self betaApplicationName];
  v23 = [v21 stringWithFormat:@"beta app name: %@", v22];
  [v3 appendString:v23];

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
  [v3 appendString:v26];

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
  [v3 appendString:v29];

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
  [v3 appendString:v32];

  v33 = MEMORY[0x1E696AEC0];
  [(SSEnvironmentDescription *)self screenshotsWindowSafeAreaInsets];
  v34 = NSStringFromUIEdgeInsets(v52);
  v35 = [v33 stringWithFormat:@"screenshots window safe area insets: %@", v34];
  [v3 appendString:v35];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v36 = [(SSEnvironmentDescription *)self elements];
  v37 = [v36 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v44 + 1) + 8 * i);
        [v3 appendString:@"<"];
        v42 = [v41 loggableDescription];
        [v3 appendString:v42];

        [v3 appendString:@">"];
      }

      v38 = [v36 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v38);
  }

  [v3 appendString:@"]"];

  return v3;
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
  v2 = [(SSEnvironmentDescription *)self elements];
  if ([v2 count])
  {
    v3 = [v2 firstObject];
    v4 = [v3 bundleIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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