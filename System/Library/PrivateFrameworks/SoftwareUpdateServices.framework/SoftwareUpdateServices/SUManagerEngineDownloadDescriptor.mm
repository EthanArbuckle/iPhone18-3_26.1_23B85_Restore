@interface SUManagerEngineDownloadDescriptor
+ (id)phaseToString:(int64_t)string;
- (BOOL)armInstall:(id)install;
- (BOOL)disarmInstall;
- (SUManagerEngineDownloadDescriptor)initWithAsset:(id)asset releaseDate:(id)date sessionID:(id)d scanOptions:(id)options downloadOptions:(id)downloadOptions installTonightConfig:(id)config coreDescriptor:(id)descriptor downloadAtPhase:(int64_t)self0 cleanupLevel:(id)self1;
- (id)summary;
@end

@implementation SUManagerEngineDownloadDescriptor

- (SUManagerEngineDownloadDescriptor)initWithAsset:(id)asset releaseDate:(id)date sessionID:(id)d scanOptions:(id)options downloadOptions:(id)downloadOptions installTonightConfig:(id)config coreDescriptor:(id)descriptor downloadAtPhase:(int64_t)self0 cleanupLevel:(id)self1
{
  assetCopy = asset;
  dateCopy = date;
  dCopy = d;
  optionsCopy = options;
  downloadOptionsCopy = downloadOptions;
  configCopy = config;
  descriptorCopy = descriptor;
  levelCopy = level;
  v29.receiver = self;
  v29.super_class = SUManagerEngineDownloadDescriptor;
  v25 = [(SUManagerEngineDownloadDescriptor *)&v29 init];
  v26 = v25;
  if (v25)
  {
    [(SUManagerEngineDownloadDescriptor *)v25 setAsset:assetCopy];
    [(SUManagerEngineDownloadDescriptor *)v26 setReleaseDate:dateCopy];
    [(SUManagerEngineDownloadDescriptor *)v26 setSessionID:dCopy];
    [(SUManagerEngineDownloadDescriptor *)v26 setScanOptions:optionsCopy];
    [(SUManagerEngineDownloadDescriptor *)v26 setDownloadOptions:downloadOptionsCopy];
    [(SUManagerEngineDownloadDescriptor *)v26 setInstallOptions:0];
    [(SUManagerEngineDownloadDescriptor *)v26 setInstallTonightConfig:configCopy];
    [(SUManagerEngineDownloadDescriptor *)v26 setCoreDescriptor:descriptorCopy];
    [(SUManagerEngineDownloadDescriptor *)v26 setAtPhase:phase];
    [(SUManagerEngineDownloadDescriptor *)v26 setCleanupLevel:levelCopy];
    v27 = v26;
  }

  return v26;
}

+ (id)phaseToString:(int64_t)string
{
  if (string > 6)
  {
    return @"DownloadPhaseUndefined";
  }

  else
  {
    return off_279CAB760[string];
  }
}

- (id)summary
{
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  asset = [(SUManagerEngineDownloadDescriptor *)self asset];
  releaseDate = [(SUManagerEngineDownloadDescriptor *)self releaseDate];
  sessionID = [(SUManagerEngineDownloadDescriptor *)self sessionID];
  scanOptions = [(SUManagerEngineDownloadDescriptor *)self scanOptions];
  downloadOptions = [(SUManagerEngineDownloadDescriptor *)self downloadOptions];
  installTonightConfig = [(SUManagerEngineDownloadDescriptor *)self installTonightConfig];
  v8 = [SUManagerEngineDownloadDescriptor phaseToString:[(SUManagerEngineDownloadDescriptor *)self atPhase]];
  cleanupLevel = [(SUManagerEngineDownloadDescriptor *)self cleanupLevel];
  coreDescriptor = [(SUManagerEngineDownloadDescriptor *)self coreDescriptor];
  summary = [coreDescriptor summary];
  v12 = [v15 initWithFormat:@"asset:%@ releaseDate:%@ sessionID:%@ scanOptions:%@ downloadOptions:%@ installTonightConfig:%@ atPhase:%@ cleanupLevel:%@, coreDescriptor:%@", asset, releaseDate, sessionID, scanOptions, downloadOptions, installTonightConfig, v8, cleanupLevel, summary];

  return v12;
}

- (BOOL)armInstall:(id)install
{
  installCopy = install;
  if ([(SUManagerEngineDownloadDescriptor *)self atPhase]== 5 || [(SUManagerEngineDownloadDescriptor *)self atPhase]== 6)
  {
    [(SUManagerEngineDownloadDescriptor *)self setAtPhase:6];
    v5 = 1;
    v6 = installCopy;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  [(SUManagerEngineDownloadDescriptor *)self setInstallOptions:v6];

  return v5;
}

- (BOOL)disarmInstall
{
  [(SUManagerEngineDownloadDescriptor *)self setInstallOptions:0];
  atPhase = [(SUManagerEngineDownloadDescriptor *)self atPhase];
  if (atPhase == 6)
  {
    [(SUManagerEngineDownloadDescriptor *)self setAtPhase:5];
  }

  return atPhase == 6;
}

@end