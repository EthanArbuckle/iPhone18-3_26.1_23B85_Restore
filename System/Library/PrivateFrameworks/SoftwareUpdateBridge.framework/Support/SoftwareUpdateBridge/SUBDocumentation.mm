@interface SUBDocumentation
- (BOOL)isEqual:(id)equal;
- (NSArray)preferredPhoneLanguages;
- (NSData)licenseAgreement;
- (NSData)releaseNotes;
- (NSData)releaseNotesSummary;
- (NSString)currentPhoneLanguage;
- (NSString)humanReadableUpdateName;
- (SUBDocumentation)initWithCoder:(id)coder;
- (SUBDocumentation)initWithDocumentationBundleURL:(id)l;
- (SUBDocumentation)initWithMAAsset:(id)asset;
- (id)_resourceFromBundle:(id)bundle forKey:(id)key;
- (id)summary;
- (void)_loadBundleResources;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUBDocumentation

- (NSString)currentPhoneLanguage
{
  preferredPhoneLanguages = [(SUBDocumentation *)self preferredPhoneLanguages];
  v3 = preferredPhoneLanguages;
  if (preferredPhoneLanguages && [preferredPhoneLanguages count])
  {
    v4 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [v3 objectAtIndex:0];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : currentPhoneLanguage returned via preferredPhoneLanguages is (%{public}@)", &v10, 0xCu);
    }

    v7 = [v3 objectAtIndex:0];
  }

  else
  {
    v8 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : Using default language for currentPhoneLanguage", &v10, 2u);
    }

    v7 = @"en";
  }

  return v7;
}

- (NSArray)preferredPhoneLanguages
{
  v2 = +[NSLocale preferredLanguages];
  v3 = [v2 count];
  v4 = softwareupdatebridge_log;
  v5 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v10 = 138543362;
    v11 = v2;
    v6 = "[SUBDocumentation] : Preferred languages are %{public}@";
    v7 = v4;
    v8 = 12;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    LOWORD(v10) = 0;
    v6 = "[SUBDocumentation] : NSLocale did not return any preferred phone languages";
    v7 = v4;
    v8 = 2;
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
LABEL_7:

  return v2;
}

- (SUBDocumentation)initWithDocumentationBundleURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = SUBDocumentation;
  v6 = [(SUBDocumentation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentationBundleURL, l);
    suCoreParsedDocumentation = v7->_suCoreParsedDocumentation;
    v7->_suCoreParsedDocumentation = 0;
  }

  return v7;
}

- (SUBDocumentation)initWithMAAsset:(id)asset
{
  assetCopy = asset;
  v14.receiver = self;
  v14.super_class = SUBDocumentation;
  v5 = [(SUBDocumentation *)&v14 init];
  if (v5)
  {
    getLocalUrl = [assetCopy getLocalUrl];
    documentationBundleURL = v5->_documentationBundleURL;
    v5->_documentationBundleURL = getLocalUrl;

    v8 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Calling SUCoreDocumentation alloc on maDocAsset", buf, 2u);
    }

    v9 = [[SUCoreDocumentation alloc] initWithDocumentationAsset:assetCopy];
    suCoreParsedDocumentation = v5->_suCoreParsedDocumentation;
    v5->_suCoreParsedDocumentation = v9;

    v11 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v5->_suCoreParsedDocumentation;
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Parsed doc asset is: %{public}@\n", buf, 0xCu);
    }
  }

  return v5;
}

- (SUBDocumentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = SUBDocumentation;
  v5 = [(SUBDocumentation *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentationBundleURL"];
    documentationBundleURL = v5->_documentationBundleURL;
    v5->_documentationBundleURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotesSummary"];
    releaseNotesSummary = v5->_releaseNotesSummary;
    v5->_releaseNotesSummary = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotes"];
    releaseNotes = v5->_releaseNotes;
    v5->_releaseNotes = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"licenseAgreement"];
    licenseAgreement = v5->_licenseAgreement;
    v5->_licenseAgreement = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateName"];
    humanReadableUpdateName = v5->_humanReadableUpdateName;
    v5->_humanReadableUpdateName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suCoreParsedDocAsset"];
    suCoreParsedDocumentation = v5->_suCoreParsedDocumentation;
    v5->_suCoreParsedDocumentation = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suIconImage"];
    preferencesIcon = v5->_preferencesIcon;
    v5->_preferencesIcon = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  documentationBundleURL = self->_documentationBundleURL;
  coderCopy = coder;
  [coderCopy encodeObject:documentationBundleURL forKey:@"documentationBundleURL"];
  [coderCopy encodeObject:self->_releaseNotesSummary forKey:@"releaseNotesSummary"];
  [coderCopy encodeObject:self->_releaseNotes forKey:@"releaseNotes"];
  [coderCopy encodeObject:self->_licenseAgreement forKey:@"licenseAgreement"];
  [coderCopy encodeObject:self->_humanReadableUpdateName forKey:@"HumanReadableUpdateName"];
  [coderCopy encodeObject:self->_suCoreParsedDocumentation forKey:@"suCoreParsedDocAsset"];
  [coderCopy encodeObject:self->_preferencesIcon forKey:@"suIconImage"];
}

- (NSString)humanReadableUpdateName
{
  [(SUBDocumentation *)self _loadBundleResources];
  humanReadableUpdateName = self->_humanReadableUpdateName;

  return humanReadableUpdateName;
}

- (NSData)releaseNotesSummary
{
  [(SUBDocumentation *)self _loadBundleResources];
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->_releaseNotesSummary != 0;
    v7[0] = 67240192;
    v7[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : releaseNotesSummary requested, is valid? %{public}d", v7, 8u);
  }

  releaseNotesSummary = self->_releaseNotesSummary;

  return releaseNotesSummary;
}

- (NSData)releaseNotes
{
  [(SUBDocumentation *)self _loadBundleResources];
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->_releaseNotes != 0;
    v7[0] = 67240192;
    v7[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : releaseNotes requested, is valid? %{public}d", v7, 8u);
  }

  releaseNotes = self->_releaseNotes;

  return releaseNotes;
}

- (NSData)licenseAgreement
{
  [(SUBDocumentation *)self _loadBundleResources];
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->_licenseAgreement != 0;
    v7[0] = 67240192;
    v7[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : licenseAgreement requested, is valid? %{public}d", v7, 8u);
  }

  licenseAgreement = self->_licenseAgreement;

  return licenseAgreement;
}

- (id)_resourceFromBundle:(id)bundle forKey:(id)key
{
  v4 = CFBundleCopyResourceURLInDirectory(bundle, key, @"html", 0);
  if (v4)
  {
    v5 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [NSData dataWithContentsOfURL:v4];
      v10 = 138543618;
      v11 = v4;
      v12 = 2050;
      v13 = [v7 length];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] :Length of resource at URL: %{public}@ : %{public}lu", &v10, 0x16u);
    }

    v8 = [NSData dataWithContentsOfURL:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_loadBundleResources
{
  documentationBundleURL = self->_documentationBundleURL;
  v4 = softwareupdatebridge_log;
  v5 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (documentationBundleURL)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Loading bundle resources", buf, 2u);
    }

    currentPhoneLanguage = [(SUBDocumentation *)self currentPhoneLanguage];
    v7 = [(SUBDocumentation *)currentPhoneLanguage isEqualToString:self->_phoneLanguage];
    v8 = softwareupdatebridge_log;
    v9 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 138543362;
        selfCopy = currentPhoneLanguage;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : documentation language in use is same as the current language: %{public}@", buf, 0xCu);
      }

LABEL_38:

      return;
    }

    if (v9)
    {
      *buf = 138412290;
      selfCopy = currentPhoneLanguage;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : Setting language %@ for documentation language", buf, 0xCu);
    }

    [(SUBDocumentation *)self setPhoneLanguage:currentPhoneLanguage];
    documentationBundleURL = [(SUBDocumentation *)self documentationBundleURL];
    v11 = CFBundleCreate(kCFAllocatorDefault, documentationBundleURL);

    if (!v11)
    {
      v25 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        documentationBundleURL2 = [(SUBDocumentation *)self documentationBundleURL];
        absoluteString = [documentationBundleURL2 absoluteString];
        *buf = 138543362;
        selfCopy = absoluteString;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : Unable to create bundle from documentationBundleURL(%{public}@)", buf, 0xCu);
      }

      goto LABEL_38;
    }

    suCoreParsedDocumentation = [(SUBDocumentation *)self suCoreParsedDocumentation];

    if (!suCoreParsedDocumentation)
    {
LABEL_33:
      [(SUBDocumentation *)self setHumanReadableUpdateName:0];
      [(SUBDocumentation *)self setReleaseNotesSummary:0];
      [(SUBDocumentation *)self setReleaseNotes:0];
      [(SUBDocumentation *)self setLicenseAgreement:0];
      v30 = CFBundleCopyLocalizedString(v11, @"HumanReadableUpdateName", 0, @"documentation");
      if (([(__CFString *)v30 isEqualToString:@"HumanReadableUpdateName"]& 1) == 0)
      {
        [(SUBDocumentation *)self setHumanReadableUpdateName:v30];
      }

      v31 = [(SUBDocumentation *)self _resourceFromBundle:self->_documentationBundleURL forKey:@"ReadMeSummary"];
      [(SUBDocumentation *)self setReleaseNotesSummary:v31];

      v32 = [(SUBDocumentation *)self _resourceFromBundle:self->_documentationBundleURL forKey:@"ReadMe"];
      [(SUBDocumentation *)self setReleaseNotes:v32];

      v33 = [(SUBDocumentation *)self _resourceFromBundle:self->_documentationBundleURL forKey:@"License"];
      [(SUBDocumentation *)self setLicenseAgreement:v33];

      v34 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : %{public}@", buf, 0xCu);
      }

      CFRelease(v11);

      goto LABEL_38;
    }

    v13 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: SUCore Parsed doc exists. Attempting to extract image", buf, 2u);
    }

    suCoreParsedDocumentation2 = [(SUBDocumentation *)self suCoreParsedDocumentation];
    softwareUpdateIconImagePath = [suCoreParsedDocumentation2 softwareUpdateIconImagePath];

    v16 = +[NSFileManager defaultManager];
    v17 = [v16 fileExistsAtPath:softwareUpdateIconImagePath];
    v18 = softwareupdatebridge_log;
    v19 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 138543362;
        selfCopy = softwareUpdateIconImagePath;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: SoftwareUpdateIcon found at path %{public}@", buf, 0xCu);
      }

      v35 = 0;
      v20 = [[NSData alloc] initWithContentsOfFile:softwareUpdateIconImagePath options:1 error:&v35];
      v21 = v35;
      v22 = v21;
      if (v20 && !v21)
      {
        goto LABEL_23;
      }

      v23 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = softwareUpdateIconImagePath;
        v38 = 2114;
        v39 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Failed to read contents of icon file at %{public}@. Error: %{public}@", buf, 0x16u);
      }

      if (v20)
      {
LABEL_23:
        v24 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Found SU Icon in doc assets", buf, 2u);
        }

        [(SUBDocumentation *)self setPreferencesIcon:v20];

LABEL_32:
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      *buf = 138543362;
      selfCopy = softwareUpdateIconImagePath;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: SoftwareUpdateIcon file *not* found at path %{public}@", buf, 0xCu);
    }

    v29 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Unable to locate preferences icon in docs", buf, 2u);
    }

    goto LABEL_32;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : Documentation bundle URL is nil..", buf, 2u);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      documentationBundleURL = [(SUBDocumentation *)equalCopy documentationBundleURL];
      documentationBundleURL2 = [(SUBDocumentation *)self documentationBundleURL];
      v7 = [documentationBundleURL isEqual:documentationBundleURL2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)summary
{
  v3 = [NSString alloc];
  humanReadableUpdateName = [(SUBDocumentation *)self humanReadableUpdateName];
  releaseNotesSummary = [(SUBDocumentation *)self releaseNotesSummary];
  v6 = @"Null";
  if (releaseNotesSummary)
  {
    v7 = @"valid";
  }

  else
  {
    v7 = @"Null";
  }

  releaseNotes = [(SUBDocumentation *)self releaseNotes];
  if (releaseNotes)
  {
    v9 = @"valid";
  }

  else
  {
    v9 = @"Null";
  }

  licenseAgreement = [(SUBDocumentation *)self licenseAgreement];
  if (licenseAgreement)
  {
    v6 = @"valid";
  }

  documentationBundleURL = [(SUBDocumentation *)self documentationBundleURL];
  preferencesIcon = [(SUBDocumentation *)self preferencesIcon];
  v13 = @"YES";
  if (!preferencesIcon)
  {
    v13 = @"NO";
  }

  v14 = [v3 initWithFormat:@"Update name: %@ releaseNotesSummary:%@ releaseNotes:%@ licenseAgreement:%@, localBundleURL: %@ UIIconPresent: %@", humanReadableUpdateName, v7, v9, v6, documentationBundleURL, v13];

  return v14;
}

@end