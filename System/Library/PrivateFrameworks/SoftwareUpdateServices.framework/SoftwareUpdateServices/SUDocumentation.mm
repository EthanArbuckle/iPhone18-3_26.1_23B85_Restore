@interface SUDocumentation
- (BOOL)hasAnyDocumentation;
- (SUDocumentation)init;
- (SUDocumentation)initWithCoder:(id)coder;
- (SUDocumentation)initWithSUCoreDocumentation:(id)documentation;
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUDocumentation

- (SUDocumentation)init
{
  v3.receiver = self;
  v3.super_class = SUDocumentation;
  return [(SUDocumentation *)&v3 init];
}

- (SUDocumentation)initWithSUCoreDocumentation:(id)documentation
{
  documentationCopy = documentation;
  v5 = [(SUDocumentation *)self init];
  v6 = v5;
  if (v5)
  {
    [(SUDocumentation *)v5 setCoreDocumentation:documentationCopy];
  }

  return v6;
}

- (SUDocumentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SUDocumentation *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coreDocumentation"];
    [(SUDocumentation *)v5 setCoreDocumentation:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_coreDocumentation forKey:@"coreDocumentation"];
  objc_sync_exit(selfCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [v4 setCoreDocumentation:selfCopy->_coreDocumentation];
  objc_sync_exit(selfCopy);

  return v4;
}

- (id)slaVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  slaVersion = [(SUCoreDocumentation *)selfCopy->_coreDocumentation slaVersion];
  objc_sync_exit(selfCopy);

  return slaVersion;
}

- (id)iconImage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  softwareUpdateIconImage = [(SUCoreDocumentation *)selfCopy->_coreDocumentation softwareUpdateIconImage];
  objc_sync_exit(selfCopy);

  return softwareUpdateIconImage;
}

- (id)humanReadableUpdateName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUDocumentation *)selfCopy _resetIfNecessary];
  humanReadableUpdateName = [(SUCoreDocumentation *)selfCopy->_coreDocumentation humanReadableUpdateName];
  objc_sync_exit(selfCopy);

  return humanReadableUpdateName;
}

- (id)notificationTitleString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUDocumentation *)selfCopy _resetIfNecessary];
  if ([(SUCoreDocumentation *)selfCopy->_coreDocumentation notificationEnabled])
  {
    notificationTitleString = [(SUCoreDocumentation *)selfCopy->_coreDocumentation notificationTitleString];
  }

  else
  {
    notificationTitleString = 0;
  }

  objc_sync_exit(selfCopy);

  return notificationTitleString;
}

- (id)notificationBodyString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUDocumentation *)selfCopy _resetIfNecessary];
  if ([(SUCoreDocumentation *)selfCopy->_coreDocumentation notificationEnabled])
  {
    notificationBodyString = [(SUCoreDocumentation *)selfCopy->_coreDocumentation notificationBodyString];
  }

  else
  {
    notificationBodyString = 0;
  }

  objc_sync_exit(selfCopy);

  return notificationBodyString;
}

- (id)recommendedUpdateTitleString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUDocumentation *)selfCopy _resetIfNecessary];
  recommendedUpdateTitleString = [(SUCoreDocumentation *)selfCopy->_coreDocumentation recommendedUpdateTitleString];
  objc_sync_exit(selfCopy);

  return recommendedUpdateTitleString;
}

- (id)recommendedUpdateAlertBodyString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUDocumentation *)selfCopy _resetIfNecessary];
  recommendedUpdateAlertBodyString = [(SUCoreDocumentation *)selfCopy->_coreDocumentation recommendedUpdateAlertBodyString];
  objc_sync_exit(selfCopy);

  return recommendedUpdateAlertBodyString;
}

- (id)mandatoryUpdateBodyString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUDocumentation *)selfCopy _resetIfNecessary];
  mandatoryUpdateBodyString = [(SUCoreDocumentation *)selfCopy->_coreDocumentation mandatoryUpdateBodyString];
  objc_sync_exit(selfCopy);

  return mandatoryUpdateBodyString;
}

- (id)releaseNotesSummaryFileName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  releaseNotesSummaryFileName = [(SUCoreDocumentation *)selfCopy->_coreDocumentation releaseNotesSummaryFileName];
  objc_sync_exit(selfCopy);

  return releaseNotesSummaryFileName;
}

- (id)releaseNotesSummary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUDocumentation *)selfCopy _resetIfNecessary];
  releaseNotesSummary = [(SUCoreDocumentation *)selfCopy->_coreDocumentation releaseNotesSummary];
  objc_sync_exit(selfCopy);

  return releaseNotesSummary;
}

- (id)releaseNotesFileName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  releaseNotesFileName = [(SUCoreDocumentation *)selfCopy->_coreDocumentation releaseNotesFileName];
  objc_sync_exit(selfCopy);

  return releaseNotesFileName;
}

- (id)releaseNotes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUDocumentation *)selfCopy _resetIfNecessary];
  releaseNotes = [(SUCoreDocumentation *)selfCopy->_coreDocumentation releaseNotes];
  objc_sync_exit(selfCopy);

  return releaseNotes;
}

- (id)licenseAgreementFileName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  licenseAgreementFileName = [(SUCoreDocumentation *)selfCopy->_coreDocumentation licenseAgreementFileName];
  objc_sync_exit(selfCopy);

  return licenseAgreementFileName;
}

- (id)licenseAgreement
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUDocumentation *)selfCopy _resetIfNecessary];
  licenseAgreement = [(SUCoreDocumentation *)selfCopy->_coreDocumentation licenseAgreement];
  objc_sync_exit(selfCopy);

  return licenseAgreement;
}

- (BOOL)hasAnyDocumentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUDocumentation *)selfCopy _resetIfNecessary];
  releaseNotesSummary = [(SUCoreDocumentation *)selfCopy->_coreDocumentation releaseNotesSummary];
  if (releaseNotesSummary)
  {
    v4 = 1;
  }

  else
  {
    releaseNotes = [(SUCoreDocumentation *)selfCopy->_coreDocumentation releaseNotes];
    if (releaseNotes)
    {
      v4 = 1;
    }

    else
    {
      licenseAgreement = [(SUCoreDocumentation *)selfCopy->_coreDocumentation licenseAgreement];
      v4 = licenseAgreement != 0;
    }
  }

  objc_sync_exit(selfCopy);
  return v4;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUDocumentation *)selfCopy _resetIfNecessary];
  v20 = MEMORY[0x277CCACA8];
  releaseNotesSummary = [(SUCoreDocumentation *)selfCopy->_coreDocumentation releaseNotesSummary];
  if (releaseNotesSummary)
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  v19 = v3;
  releaseNotes = [(SUCoreDocumentation *)selfCopy->_coreDocumentation releaseNotes];
  if (releaseNotes)
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  v18 = v4;
  licenseAgreement = [(SUCoreDocumentation *)selfCopy->_coreDocumentation licenseAgreement];
  if (licenseAgreement)
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  v17 = v5;
  preferencesIconFileName = [(SUCoreDocumentation *)selfCopy->_coreDocumentation preferencesIconFileName];
  softwareUpdateIconImage = [(SUCoreDocumentation *)selfCopy->_coreDocumentation softwareUpdateIconImage];
  if (softwareUpdateIconImage)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  humanReadableUpdateName = [(SUCoreDocumentation *)selfCopy->_coreDocumentation humanReadableUpdateName];
  notificationTitleString = [(SUDocumentation *)selfCopy notificationTitleString];
  notificationBodyString = [(SUDocumentation *)selfCopy notificationBodyString];
  recommendedUpdateTitleString = [(SUDocumentation *)selfCopy recommendedUpdateTitleString];
  recommendedUpdateAlertBodyString = [(SUDocumentation *)selfCopy recommendedUpdateAlertBodyString];
  mandatoryUpdateBodyString = [(SUDocumentation *)selfCopy mandatoryUpdateBodyString];
  v15 = [v20 stringWithFormat:@"\n                \thasReadMeSummary: %@\n                \thasReadMe: %@\n                \thasLicenseAgreement: %@\n                \thasIconImageName: %@\n                \thasIconImage: %@\n                \thumanReadableUpdateName: %@\n                \tnotificationTitle:%@\n                \tnotificationBody:%@\n                \trecommendedUpdateTitle:%@\n                \trecommendedUpdateBody:%@\n                \tmandatoryUpdateBody:%@", v19, v18, v17, preferencesIconFileName, v8, humanReadableUpdateName, notificationTitleString, notificationBodyString, recommendedUpdateTitleString, recommendedUpdateAlertBodyString, mandatoryUpdateBodyString];

  objc_sync_exit(selfCopy);

  return v15;
}

- (void)_resetIfNecessary
{
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = preferredLanguages;
  if (preferredLanguages && [preferredLanguages count])
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
    extendDocumentationProperties = [(SUCoreDocumentation *)self->_coreDocumentation extendDocumentationProperties];
  }
}

@end