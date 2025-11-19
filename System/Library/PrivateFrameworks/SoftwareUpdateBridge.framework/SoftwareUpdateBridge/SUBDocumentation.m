@interface SUBDocumentation
- (BOOL)isEqual:(id)a3;
- (NSArray)preferredPhoneLanguages;
- (NSData)licenseAgreement;
- (NSData)releaseNotes;
- (NSData)releaseNotesSummary;
- (NSString)currentPhoneLanguage;
- (NSString)humanReadableUpdateName;
- (SUBDocumentation)initWithCoder:(id)a3;
- (SUBDocumentation)initWithDocumentationBundleURL:(id)a3;
- (SUBDocumentation)initWithMAAsset:(id)a3;
- (id)_resourceFromBundle:(id)a3 forKey:(id)a4;
- (id)summary;
- (void)_loadBundleResources;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUBDocumentation

- (NSString)currentPhoneLanguage
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(SUBDocumentation *)self preferredPhoneLanguages];
  v3 = v2;
  if (v2 && [v2 count])
  {
    v4 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [v3 objectAtIndex:0];
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_26AB06000, v5, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : currentPhoneLanguage returned via preferredPhoneLanguages is (%{public}@)", &v11, 0xCu);
    }

    v7 = [v3 objectAtIndex:0];
  }

  else
  {
    v8 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_26AB06000, v8, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : Using default language for currentPhoneLanguage", &v11, 2u);
    }

    v7 = @"en";
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSArray)preferredPhoneLanguages
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v3 = [v2 count];
  v4 = softwareupdatebridge_log;
  v5 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v11 = 138543362;
    v12 = v2;
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

    LOWORD(v11) = 0;
    v6 = "[SUBDocumentation] : NSLocale did not return any preferred phone languages";
    v7 = v4;
    v8 = 2;
  }

  _os_log_impl(&dword_26AB06000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
LABEL_7:
  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (SUBDocumentation)initWithDocumentationBundleURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SUBDocumentation;
  v6 = [(SUBDocumentation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentationBundleURL, a3);
    suCoreParsedDocumentation = v7->_suCoreParsedDocumentation;
    v7->_suCoreParsedDocumentation = 0;
  }

  return v7;
}

- (SUBDocumentation)initWithMAAsset:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SUBDocumentation;
  v5 = [(SUBDocumentation *)&v15 init];
  if (v5)
  {
    v6 = [v4 getLocalUrl];
    documentationBundleURL = v5->_documentationBundleURL;
    v5->_documentationBundleURL = v6;

    v8 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26AB06000, v8, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Calling SUCoreDocumentation alloc on maDocAsset", buf, 2u);
    }

    v9 = [objc_alloc(MEMORY[0x277D64188]) initWithDocumentationAsset:v4];
    suCoreParsedDocumentation = v5->_suCoreParsedDocumentation;
    v5->_suCoreParsedDocumentation = v9;

    v11 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v5->_suCoreParsedDocumentation;
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_26AB06000, v11, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Parsed doc asset is: %{public}@\n", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (SUBDocumentation)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SUBDocumentation;
  v5 = [(SUBDocumentation *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentationBundleURL"];
    documentationBundleURL = v5->_documentationBundleURL;
    v5->_documentationBundleURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotesSummary"];
    releaseNotesSummary = v5->_releaseNotesSummary;
    v5->_releaseNotesSummary = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotes"];
    releaseNotes = v5->_releaseNotes;
    v5->_releaseNotes = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"licenseAgreement"];
    licenseAgreement = v5->_licenseAgreement;
    v5->_licenseAgreement = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateName"];
    humanReadableUpdateName = v5->_humanReadableUpdateName;
    v5->_humanReadableUpdateName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suCoreParsedDocAsset"];
    suCoreParsedDocumentation = v5->_suCoreParsedDocumentation;
    v5->_suCoreParsedDocumentation = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suIconImage"];
    preferencesIcon = v5->_preferencesIcon;
    v5->_preferencesIcon = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  documentationBundleURL = self->_documentationBundleURL;
  v5 = a3;
  [v5 encodeObject:documentationBundleURL forKey:@"documentationBundleURL"];
  [v5 encodeObject:self->_releaseNotesSummary forKey:@"releaseNotesSummary"];
  [v5 encodeObject:self->_releaseNotes forKey:@"releaseNotes"];
  [v5 encodeObject:self->_licenseAgreement forKey:@"licenseAgreement"];
  [v5 encodeObject:self->_humanReadableUpdateName forKey:@"HumanReadableUpdateName"];
  [v5 encodeObject:self->_suCoreParsedDocumentation forKey:@"suCoreParsedDocAsset"];
  [v5 encodeObject:self->_preferencesIcon forKey:@"suIconImage"];
}

- (NSString)humanReadableUpdateName
{
  [(SUBDocumentation *)self _loadBundleResources];
  humanReadableUpdateName = self->_humanReadableUpdateName;

  return humanReadableUpdateName;
}

- (NSData)releaseNotesSummary
{
  v9 = *MEMORY[0x277D85DE8];
  [(SUBDocumentation *)self _loadBundleResources];
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->_releaseNotesSummary != 0;
    v8[0] = 67240192;
    v8[1] = v4;
    _os_log_impl(&dword_26AB06000, v3, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : releaseNotesSummary requested, is valid? %{public}d", v8, 8u);
  }

  releaseNotesSummary = self->_releaseNotesSummary;
  v6 = *MEMORY[0x277D85DE8];

  return releaseNotesSummary;
}

- (NSData)releaseNotes
{
  v9 = *MEMORY[0x277D85DE8];
  [(SUBDocumentation *)self _loadBundleResources];
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->_releaseNotes != 0;
    v8[0] = 67240192;
    v8[1] = v4;
    _os_log_impl(&dword_26AB06000, v3, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : releaseNotes requested, is valid? %{public}d", v8, 8u);
  }

  releaseNotes = self->_releaseNotes;
  v6 = *MEMORY[0x277D85DE8];

  return releaseNotes;
}

- (NSData)licenseAgreement
{
  v9 = *MEMORY[0x277D85DE8];
  [(SUBDocumentation *)self _loadBundleResources];
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->_licenseAgreement != 0;
    v8[0] = 67240192;
    v8[1] = v4;
    _os_log_impl(&dword_26AB06000, v3, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : licenseAgreement requested, is valid? %{public}d", v8, 8u);
  }

  licenseAgreement = self->_licenseAgreement;
  v6 = *MEMORY[0x277D85DE8];

  return licenseAgreement;
}

- (id)_resourceFromBundle:(id)a3 forKey:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = CFBundleCopyResourceURLInDirectory(a3, a4, @"html", 0);
  if (v4)
  {
    v5 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x277CBEA90];
      v7 = v5;
      v8 = [v6 dataWithContentsOfURL:v4];
      v12 = 138543618;
      v13 = v4;
      v14 = 2050;
      v15 = [v8 length];
      _os_log_impl(&dword_26AB06000, v7, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] :Length of resource at URL: %{public}@ : %{public}lu", &v12, 0x16u);
    }

    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_loadBundleResources
{
  v42 = *MEMORY[0x277D85DE8];
  documentationBundleURL = self->_documentationBundleURL;
  v4 = softwareupdatebridge_log;
  v5 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (documentationBundleURL)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_26AB06000, v4, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Loading bundle resources", buf, 2u);
    }

    v6 = [(SUBDocumentation *)self currentPhoneLanguage];
    v7 = [(SUBDocumentation *)v6 isEqualToString:self->_phoneLanguage];
    v8 = softwareupdatebridge_log;
    v9 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 138543362;
        v39 = v6;
        _os_log_impl(&dword_26AB06000, v8, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : documentation language in use is same as the current language: %{public}@", buf, 0xCu);
      }

LABEL_38:

      goto LABEL_39;
    }

    if (v9)
    {
      *buf = 138412290;
      v39 = v6;
      _os_log_impl(&dword_26AB06000, v8, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : Setting language %@ for documentation language", buf, 0xCu);
    }

    [(SUBDocumentation *)self setPhoneLanguage:v6];
    v10 = *MEMORY[0x277CBECE8];
    v11 = [(SUBDocumentation *)self documentationBundleURL];
    v12 = CFBundleCreate(v10, v11);

    if (!v12)
    {
      v26 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = [(SUBDocumentation *)self documentationBundleURL];
        v29 = [v28 absoluteString];
        *buf = 138543362;
        v39 = v29;
        _os_log_impl(&dword_26AB06000, v27, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : Unable to create bundle from documentationBundleURL(%{public}@)", buf, 0xCu);
      }

      goto LABEL_38;
    }

    v13 = [(SUBDocumentation *)self suCoreParsedDocumentation];

    if (!v13)
    {
LABEL_33:
      [(SUBDocumentation *)self setHumanReadableUpdateName:0];
      [(SUBDocumentation *)self setReleaseNotesSummary:0];
      [(SUBDocumentation *)self setReleaseNotes:0];
      [(SUBDocumentation *)self setLicenseAgreement:0];
      v31 = CFBundleCopyLocalizedString(v12, @"HumanReadableUpdateName", 0, @"documentation");
      if (([(__CFString *)v31 isEqualToString:@"HumanReadableUpdateName"]& 1) == 0)
      {
        [(SUBDocumentation *)self setHumanReadableUpdateName:v31];
      }

      v32 = [(SUBDocumentation *)self _resourceFromBundle:self->_documentationBundleURL forKey:@"ReadMeSummary"];
      [(SUBDocumentation *)self setReleaseNotesSummary:v32];

      v33 = [(SUBDocumentation *)self _resourceFromBundle:self->_documentationBundleURL forKey:@"ReadMe"];
      [(SUBDocumentation *)self setReleaseNotes:v33];

      v34 = [(SUBDocumentation *)self _resourceFromBundle:self->_documentationBundleURL forKey:@"License"];
      [(SUBDocumentation *)self setLicenseAgreement:v34];

      v35 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v39 = self;
        _os_log_impl(&dword_26AB06000, v35, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : %{public}@", buf, 0xCu);
      }

      CFRelease(v12);

      goto LABEL_38;
    }

    v14 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26AB06000, v14, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: SUCore Parsed doc exists. Attempting to extract image", buf, 2u);
    }

    v15 = [(SUBDocumentation *)self suCoreParsedDocumentation];
    v16 = [v15 softwareUpdateIconImagePath];

    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [v17 fileExistsAtPath:v16];
    v19 = softwareupdatebridge_log;
    v20 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        *buf = 138543362;
        v39 = v16;
        _os_log_impl(&dword_26AB06000, v19, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: SoftwareUpdateIcon found at path %{public}@", buf, 0xCu);
      }

      v37 = 0;
      v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v16 options:1 error:&v37];
      v22 = v37;
      v23 = v22;
      if (v21 && !v22)
      {
        goto LABEL_23;
      }

      v24 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v39 = v16;
        v40 = 2114;
        v41 = v23;
        _os_log_impl(&dword_26AB06000, v24, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Failed to read contents of icon file at %{public}@. Error: %{public}@", buf, 0x16u);
      }

      if (v21)
      {
LABEL_23:
        v25 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26AB06000, v25, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Found SU Icon in doc assets", buf, 2u);
        }

        [(SUBDocumentation *)self setPreferencesIcon:v21];

LABEL_32:
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      *buf = 138543362;
      v39 = v16;
      _os_log_impl(&dword_26AB06000, v19, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: SoftwareUpdateIcon file *not* found at path %{public}@", buf, 0xCu);
    }

    v30 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26AB06000, v30, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation]: Unable to locate preferences icon in docs", buf, 2u);
    }

    goto LABEL_32;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_26AB06000, v4, OS_LOG_TYPE_DEFAULT, "[SUBDocumentation] : Documentation bundle URL is nil..", buf, 2u);
  }

LABEL_39:
  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SUBDocumentation *)v4 documentationBundleURL];
      v6 = [(SUBDocumentation *)self documentationBundleURL];
      v7 = [v5 isEqual:v6];
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
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SUBDocumentation *)self humanReadableUpdateName];
  v5 = [(SUBDocumentation *)self releaseNotesSummary];
  v6 = @"Null";
  if (v5)
  {
    v7 = @"valid";
  }

  else
  {
    v7 = @"Null";
  }

  v8 = [(SUBDocumentation *)self releaseNotes];
  if (v8)
  {
    v9 = @"valid";
  }

  else
  {
    v9 = @"Null";
  }

  v10 = [(SUBDocumentation *)self licenseAgreement];
  if (v10)
  {
    v6 = @"valid";
  }

  v11 = [(SUBDocumentation *)self documentationBundleURL];
  v12 = [(SUBDocumentation *)self preferencesIcon];
  v13 = @"YES";
  if (!v12)
  {
    v13 = @"NO";
  }

  v14 = [v3 initWithFormat:@"Update name: %@ releaseNotesSummary:%@ releaseNotes:%@ licenseAgreement:%@, localBundleURL: %@ UIIconPresent: %@", v4, v7, v9, v6, v11, v13];

  return v14;
}

@end