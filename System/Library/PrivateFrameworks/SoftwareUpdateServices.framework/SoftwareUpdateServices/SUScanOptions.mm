@interface SUScanOptions
- (BOOL)MDMUseDelayPeriod;
- (BOOL)_identifierIsAllowedToSetManagedScanOptions;
- (BOOL)clientIsBuddy;
- (BOOL)clientIsDDM;
- (BOOL)clientIsInboxUpdaterd;
- (BOOL)findsAnyUpdate;
- (BOOL)isEmergencyOnlyScan;
- (BOOL)isPMVRequested;
- (BOOL)isSplatOnlyScan;
- (SUScanOptions)init;
- (SUScanOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)MDMSoftwareUpdatePath;
- (void)encodeWithCoder:(id)a3;
- (void)setMDMShowRapidSecurityResponse:(BOOL)a3;
- (void)setMDMSoftwareUpdatePath:(unint64_t)a3;
- (void)setMDMUseDelayPeriod:(BOOL)a3;
@end

@implementation SUScanOptions

- (BOOL)_identifierIsAllowedToSetManagedScanOptions
{
  if ([@"com.apple.mdm" isEqualToString:self->_identifier] & 1) != 0 || (objc_msgSend(@"com.apple.SoftwareUpdateServices.DDM", "isEqualToString:", self->_identifier))
  {
    return 1;
  }

  identifier = self->_identifier;

  return [@"com.apple.sus_tool" isEqualToString:identifier];
}

- (BOOL)MDMUseDelayPeriod
{
  managedScanOptions = self->_managedScanOptions;
  if (managedScanOptions)
  {
    LOBYTE(managedScanOptions) = [(SUMDMScanOptions *)managedScanOptions useDelayPeriod]== 1;
  }

  return managedScanOptions;
}

- (void)setMDMUseDelayPeriod:(BOOL)a3
{
  v3 = a3;
  if ([(SUScanOptions *)self _identifierIsAllowedToSetManagedScanOptions])
  {
    managedScanOptions = self->_managedScanOptions;

    [(SUMDMScanOptions *)managedScanOptions setUseDelayPeriod:v3];
  }
}

- (void)setMDMShowRapidSecurityResponse:(BOOL)a3
{
  v3 = a3;
  if ([(SUScanOptions *)self _identifierIsAllowedToSetManagedScanOptions])
  {
    managedScanOptions = self->_managedScanOptions;

    [(SUMDMScanOptions *)managedScanOptions setAllowSplat:v3];
  }
}

- (unint64_t)MDMSoftwareUpdatePath
{
  result = [(SUMDMScanOptions *)self->_managedScanOptions MDMSoftwareUpdatePath];
  if (result == 3)
  {
    return 0;
  }

  return result;
}

- (void)setMDMSoftwareUpdatePath:(unint64_t)a3
{
  if ([(SUScanOptions *)self _identifierIsAllowedToSetManagedScanOptions])
  {
    managedScanOptions = self->_managedScanOptions;

    [(SUMDMScanOptions *)managedScanOptions setMDMSoftwareUpdatePath:a3];
  }
}

- (SUScanOptions)init
{
  v11.receiver = self;
  v11.super_class = SUScanOptions;
  v2 = [(SUOptionsBase *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    types = v2->_types;
    v2->_types = v3;

    sessionID = v2->_sessionID;
    v2->_sessionID = 0;

    v2->_ignoreNoUpdateFoundResult = 0;
    v6 = [(SUOptionsBase *)v2 defaultClientName];
    clientName = v2->_clientName;
    v2->_clientName = v6;

    v2->_scanType = 0;
    v2->_collectDocumentation = 1;
    v2->_scanForSplatIfNecessary = 1;
    v8 = objc_opt_new();
    managedScanOptions = v2->_managedScanOptions;
    v2->_managedScanOptions = v8;

    v2->_disableSplatCombo = 0;
    v2->_disablePreSoftwareUpdateStaging = 0;
  }

  return v2;
}

- (SUScanOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SUScanOptions;
  v5 = [(SUOptionsBase *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(SUScanOptions *)v5 setIdentifier:v6];

    -[SUScanOptions setForced:](v5, "setForced:", [v4 decodeBoolForKey:@"forced"]);
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"types"];
    [(SUScanOptions *)v5 setTypes:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    [(SUScanOptions *)v5 setSessionID:v11];

    -[SUScanOptions setIgnoreNoUpdateFoundResult:](v5, "setIgnoreNoUpdateFoundResult:", [v4 decodeBoolForKey:@"ignoreNoUpdateFoundResult"]);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUScanClientNameKey"];
    [(SUScanOptions *)v5 setClientName:v12];

    -[SUScanOptions setScanType:](v5, "setScanType:", [v4 decodeIntForKey:@"SUScanTaskTypeKey"]);
    -[SUScanOptions setCollectDocumentation:](v5, "setCollectDocumentation:", [v4 decodeBoolForKey:@"SUCollectDocumentation"]);
    -[SUScanOptions setScanForSplatIfNecessary:](v5, "setScanForSplatIfNecessary:", [v4 decodeBoolForKey:@"ScanForSplat"]);
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managedScanOptions"];
    [(SUScanOptions *)v5 setManagedScanOptions:v13];

    -[SUScanOptions setDisableSplatCombo:](v5, "setDisableSplatCombo:", [v4 decodeBoolForKey:@"disableSplombo"]);
    -[SUScanOptions setDisablePreSoftwareUpdateStaging:](v5, "setDisablePreSoftwareUpdateStaging:", [v4 decodeBoolForKey:@"disablePSUS"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeBool:self->_forced forKey:@"forced"];
  [v5 encodeObject:self->_types forKey:@"types"];
  [v5 encodeObject:self->_sessionID forKey:@"sessionID"];
  [v5 encodeBool:self->_ignoreNoUpdateFoundResult forKey:@"ignoreNoUpdateFoundResult"];
  [v5 encodeObject:self->_clientName forKey:@"SUScanClientNameKey"];
  [v5 encodeInt:LODWORD(self->_scanType) forKey:@"SUScanTaskTypeKey"];
  [v5 encodeBool:self->_collectDocumentation forKey:@"SUCollectDocumentation"];
  [v5 encodeBool:self->_scanForSplatIfNecessary forKey:@"ScanForSplat"];
  [v5 encodeObject:self->_managedScanOptions forKey:@"managedScanOptions"];
  [v5 encodeBool:self->_disableSplatCombo forKey:@"disableSplombo"];
  [v5 encodeBool:self->_disablePreSoftwareUpdateStaging forKey:@"disablePSUS"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSString *)self->_identifier copy];
  [v4 setIdentifier:v5];

  [v4 setForced:self->_forced];
  v6 = [(NSMutableSet *)self->_types copy];
  [v4 setTypes:v6];

  v7 = [(NSString *)self->_sessionID copy];
  [v4 setSessionID:v7];

  [v4 setIgnoreNoUpdateFoundResult:self->_ignoreNoUpdateFoundResult];
  v8 = [(NSString *)self->_clientName copy];
  [v4 setClientName:v8];

  [v4 setScanType:self->_scanType];
  [v4 setCollectDocumentation:self->_collectDocumentation];
  [v4 setScanForSplatIfNecessary:self->_scanForSplatIfNecessary];
  v9 = [(SUMDMScanOptions *)self->_managedScanOptions copy];
  [v4 setManagedScanOptions:v9];

  [v4 setDisableSplatCombo:self->_disableSplatCombo];
  [v4 setDisablePreSoftwareUpdateStaging:self->_disablePreSoftwareUpdateStaging];
  return v4;
}

- (BOOL)isSplatOnlyScan
{
  v3 = [(SUScanOptions *)self types];
  if ([v3 count] == 1)
  {
    v4 = [(SUScanOptions *)self types];
    v5 = [v4 containsObject:&unk_287B6F5E0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)findsAnyUpdate
{
  types = self->_types;
  if (!types || ![(NSMutableSet *)types count])
  {
    return 1;
  }

  return [(SUScanOptions *)self containsType:0];
}

- (id)description
{
  v23 = MEMORY[0x277CCACA8];
  v22 = [(SUScanOptions *)self clientName];
  v21 = [(SUScanOptions *)self identifier];
  if ([(SUScanOptions *)self isForced])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v19 = v3;
  v18 = [(SUScanOptions *)self scanType];
  if ([(SUScanOptions *)self collectDocumentation])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v17 = v4;
  if ([(SUScanOptions *)self scanForSplatIfNecessary])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v16 = v5;
  v20 = [(SUScanOptions *)self types];
  v6 = SUStringFromUpdateTypes(v20);
  v7 = [(SUScanOptions *)self requestedPMV];
  v8 = [(SUScanOptions *)self requestedBuild];
  v9 = [(SUScanOptions *)self sessionID];
  if ([(SUScanOptions *)self MDMUseDelayPeriod])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(SUScanOptions *)self MDMShowRapidSecurityResponse])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [(SUScanOptions *)self managedScanOptions];
  if ([(SUScanOptions *)self ignoreNoUpdateFoundResult])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [v23 stringWithFormat:@"\n            ClientName: %@\n            Identifier: %@\n            Forced: %@\n            ScanType: %d\n            CollectDoc: %@\n            ScanForSplat: %@\n            Types: %@\n            Requested PMV: %@\n            Requested Build: %@\n            SessionID: %@\n            MDM use delay: %@\n            MDM show RSR: %@\n            =============== MDM: %@ \n            ===================\n            Ignore NoUpdateFound response: %@\n", v22, v21, v19, v18, v17, v16, v6, v7, v8, v9, v10, v11, v12, v13];

  return v14;
}

- (BOOL)isEmergencyOnlyScan
{
  v3 = [(SUScanOptions *)self types];
  if ([v3 count] == 1)
  {
    v4 = [(SUScanOptions *)self types];
    v5 = [v4 containsObject:&unk_287B6F688];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPMVRequested
{
  v2 = [(SUScanOptions *)self requestedPMV];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)clientIsBuddy
{
  v3 = +[SUPreferences sharedInstance];
  v4 = [v3 buddyInitiatedScan];

  if (v4)
  {
    SULogInfo(@"%s: Overriding result to YES by SUBuddyInitiatedScan", v5, v6, v7, v8, v9, v10, v11, "[SUScanOptions(SUS) clientIsBuddy]");
    return 1;
  }

  else
  {
    v13 = [(SUScanOptions *)self clientName];
    v14 = [v13 isEqualToString:@"com.apple.purplebuddy"];

    return v14;
  }
}

- (BOOL)clientIsInboxUpdaterd
{
  v3 = +[SUPreferences sharedInstance];
  v4 = [v3 inboxUpdaterdInitiatedScan];

  if (v4)
  {
    SULogInfo(@"%s: Overriding result to YES by SUInboxUpdaterdInitiatedScan", v5, v6, v7, v8, v9, v10, v11, "[SUScanOptions(SUS) clientIsInboxUpdaterd]");
    return 1;
  }

  else
  {
    v13 = [(SUScanOptions *)self clientName];
    v14 = [v13 isEqualToString:@"com.apple.inboxupdaterd"];

    return v14;
  }
}

- (BOOL)clientIsDDM
{
  v2 = [(SUScanOptions *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.SoftwareUpdateServices.DDM"];

  return v3;
}

@end