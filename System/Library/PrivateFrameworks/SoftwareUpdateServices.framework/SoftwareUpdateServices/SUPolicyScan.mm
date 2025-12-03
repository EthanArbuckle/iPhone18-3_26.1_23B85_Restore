@interface SUPolicyScan
- (BOOL)allowSameVersion;
- (BOOL)restrictToFull;
- (NSString)scanType;
- (NSString)sessionID;
- (SUPolicyScan)initWithScanOptions:(id)options;
- (id)_stringForBool:(BOOL)bool;
- (id)description;
- (int)downloadTimeoutSecs;
@end

@implementation SUPolicyScan

- (SUPolicyScan)initWithScanOptions:(id)options
{
  optionsCopy = options;
  v8.receiver = self;
  v8.super_class = SUPolicyScan;
  v5 = [(SUPolicyScan *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SUPolicyScan *)v5 setScanOptions:optionsCopy];
  }

  return v6;
}

- (NSString)scanType
{
  scanOptions = [(SUPolicyScan *)self scanOptions];
  isForced = [scanOptions isForced];
  v4 = &kSUScanTypeForeground;
  if (!isForced)
  {
    v4 = &kSUScanTypeBackground;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (BOOL)restrictToFull
{
  v2 = +[SUPreferences sharedInstance];
  forceFullReplacement = [v2 forceFullReplacement];

  return forceFullReplacement;
}

- (BOOL)allowSameVersion
{
  v2 = +[SUPreferences sharedInstance];
  allowSameBuildUpdates = [v2 allowSameBuildUpdates];

  return allowSameBuildUpdates;
}

- (int)downloadTimeoutSecs
{
  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    return 60;
  }

  else
  {
    return 30;
  }
}

- (NSString)sessionID
{
  scanOptions = [(SUPolicyScan *)self scanOptions];
  sessionID = [scanOptions sessionID];

  return sessionID;
}

- (id)_stringForBool:(BOOL)bool
{
  if (bool)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  assetType = [(SUPolicyScan *)self assetType];
  v5 = [(SUPolicyScan *)self _stringForBool:[(SUPolicy *)self discretionary]];
  v6 = [(SUPolicyScan *)self _stringForBool:[(SUPolicy *)self allowsCellular]];
  v7 = [(SUPolicyScan *)self _stringForBool:[(SUPolicy *)self requiresPowerPluggedIn]];
  v8 = [(SUPolicyScan *)self _stringForBool:[(SUPolicyScan *)self restrictToIncremental]];
  v9 = [(SUPolicyScan *)self _stringForBool:[(SUPolicyScan *)self restrictToFull]];
  v10 = [(SUPolicyScan *)self _stringForBool:[(SUPolicyScan *)self allowSameVersion]];
  sessionID = [(SUPolicyScan *)self sessionID];
  v12 = [v3 stringWithFormat:@"\n            assetType:%@\n            discretionary: %@\n            allowsCellular: %@\n            requiresPowerPluggedIn: %@\n            restrictToIncremental: %@\n            restrictToFull: %@\n            allowSameVersion: %@\n            sessionID: %@\n            downloadTimeoutSecs: %d\n", assetType, v5, v6, v7, v8, v9, v10, sessionID, -[SUPolicyScan downloadTimeoutSecs](self, "downloadTimeoutSecs")];

  return v12;
}

@end