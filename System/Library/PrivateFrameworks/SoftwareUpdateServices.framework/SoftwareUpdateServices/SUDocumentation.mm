@interface SUDocumentation
- (BOOL)hasAnyDocumentation;
- (SUDocumentation)init;
- (SUDocumentation)initWithCoder:(id)a3;
- (SUDocumentation)initWithSUCoreDocumentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)humanReadableUpdateName;
- (id)iconImage;
- (id)licenseAgreement;
- (id)licenseAgreementFileName;
- (id)mandatoryUpdateBodyString;
- (id)notificationBodyString;
- (id)notificationTitleString;
- (id)recommendedUpdateAlertBodyString;
- (id)recommendedUpdateTitleString;
- (id)releaseNotes;
- (id)releaseNotesFileName;
- (id)releaseNotesSummary;
- (id)releaseNotesSummaryFileName;
- (id)slaVersion;
- (void)_resetIfNecessary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUDocumentation

- (SUDocumentation)init
{
  v3.receiver = self;
  v3.super_class = SUDocumentation;
  return [(SUDocumentation *)&v3 init];
}

- (SUDocumentation)initWithSUCoreDocumentation:(id)a3
{
  v4 = a3;
  v5 = [(SUDocumentation *)self init];
  v6 = v5;
  if (v5)
  {
    [(SUDocumentation *)v5 setCoreDocumentation:v4];
  }

  return v6;
}

- (SUDocumentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUDocumentation *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coreDocumentation"];
    [(SUDocumentation *)v5 setCoreDocumentation:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v5 encodeObject:v4->_coreDocumentation forKey:@"coreDocumentation"];
  objc_sync_exit(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = self;
  objc_sync_enter(v5);
  [v4 setCoreDocumentation:v5->_coreDocumentation];
  objc_sync_exit(v5);

  return v4;
}

- (id)slaVersion
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation slaVersion];
  objc_sync_exit(v2);

  return v3;
}

- (id)iconImage
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation softwareUpdateIconImage];
  objc_sync_exit(v2);

  return v3;
}

- (id)humanReadableUpdateName
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUDocumentation *)v2 _resetIfNecessary];
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation humanReadableUpdateName];
  objc_sync_exit(v2);

  return v3;
}

- (id)notificationTitleString
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUDocumentation *)v2 _resetIfNecessary];
  if ([(SUCoreDocumentation *)v2->_coreDocumentation notificationEnabled])
  {
    v3 = [(SUCoreDocumentation *)v2->_coreDocumentation notificationTitleString];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)notificationBodyString
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUDocumentation *)v2 _resetIfNecessary];
  if ([(SUCoreDocumentation *)v2->_coreDocumentation notificationEnabled])
  {
    v3 = [(SUCoreDocumentation *)v2->_coreDocumentation notificationBodyString];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)recommendedUpdateTitleString
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUDocumentation *)v2 _resetIfNecessary];
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation recommendedUpdateTitleString];
  objc_sync_exit(v2);

  return v3;
}

- (id)recommendedUpdateAlertBodyString
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUDocumentation *)v2 _resetIfNecessary];
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation recommendedUpdateAlertBodyString];
  objc_sync_exit(v2);

  return v3;
}

- (id)mandatoryUpdateBodyString
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUDocumentation *)v2 _resetIfNecessary];
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation mandatoryUpdateBodyString];
  objc_sync_exit(v2);

  return v3;
}

- (id)releaseNotesSummaryFileName
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation releaseNotesSummaryFileName];
  objc_sync_exit(v2);

  return v3;
}

- (id)releaseNotesSummary
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUDocumentation *)v2 _resetIfNecessary];
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation releaseNotesSummary];
  objc_sync_exit(v2);

  return v3;
}

- (id)releaseNotesFileName
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation releaseNotesFileName];
  objc_sync_exit(v2);

  return v3;
}

- (id)releaseNotes
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUDocumentation *)v2 _resetIfNecessary];
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation releaseNotes];
  objc_sync_exit(v2);

  return v3;
}

- (id)licenseAgreementFileName
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation licenseAgreementFileName];
  objc_sync_exit(v2);

  return v3;
}

- (id)licenseAgreement
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUDocumentation *)v2 _resetIfNecessary];
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation licenseAgreement];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)hasAnyDocumentation
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUDocumentation *)v2 _resetIfNecessary];
  v3 = [(SUCoreDocumentation *)v2->_coreDocumentation releaseNotesSummary];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SUCoreDocumentation *)v2->_coreDocumentation releaseNotes];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(SUCoreDocumentation *)v2->_coreDocumentation licenseAgreement];
      v4 = v6 != 0;
    }
  }

  objc_sync_exit(v2);
  return v4;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUDocumentation *)v2 _resetIfNecessary];
  v20 = MEMORY[0x277CCACA8];
  v23 = [(SUCoreDocumentation *)v2->_coreDocumentation releaseNotesSummary];
  if (v23)
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  v19 = v3;
  v22 = [(SUCoreDocumentation *)v2->_coreDocumentation releaseNotes];
  if (v22)
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  v18 = v4;
  v21 = [(SUCoreDocumentation *)v2->_coreDocumentation licenseAgreement];
  if (v21)
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  v17 = v5;
  v6 = [(SUCoreDocumentation *)v2->_coreDocumentation preferencesIconFileName];
  v7 = [(SUCoreDocumentation *)v2->_coreDocumentation softwareUpdateIconImage];
  if (v7)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(SUCoreDocumentation *)v2->_coreDocumentation humanReadableUpdateName];
  v10 = [(SUDocumentation *)v2 notificationTitleString];
  v11 = [(SUDocumentation *)v2 notificationBodyString];
  v12 = [(SUDocumentation *)v2 recommendedUpdateTitleString];
  v13 = [(SUDocumentation *)v2 recommendedUpdateAlertBodyString];
  v14 = [(SUDocumentation *)v2 mandatoryUpdateBodyString];
  v15 = [v20 stringWithFormat:@"\n                \thasReadMeSummary: %@\n                \thasReadMe: %@\n                \thasLicenseAgreement: %@\n                \thasIconImageName: %@\n                \thasIconImage: %@\n                \thumanReadableUpdateName: %@\n                \tnotificationTitle:%@\n                \tnotificationBody:%@\n                \trecommendedUpdateTitle:%@\n                \trecommendedUpdateBody:%@\n                \tmandatoryUpdateBody:%@", v19, v18, v17, v6, v8, v9, v10, v11, v12, v13, v14];

  objc_sync_exit(v2);

  return v15;
}

- (void)_resetIfNecessary
{
  v3 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectAtIndex:0];
  }

  else
  {
    v5 = @"en";
  }

  v7 = v5;
  if (([(__CFString *)v5 isEqualToString:self->_primaryLanguage]& 1) == 0)
  {
    [(SUDocumentation *)self setPrimaryLanguage:v7];
    v6 = [(SUCoreDocumentation *)self->_coreDocumentation extendDocumentationProperties];
  }
}

@end