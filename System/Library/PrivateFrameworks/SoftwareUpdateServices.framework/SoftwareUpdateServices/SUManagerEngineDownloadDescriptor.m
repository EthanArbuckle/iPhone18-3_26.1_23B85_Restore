@interface SUManagerEngineDownloadDescriptor
+ (id)phaseToString:(int64_t)a3;
- (BOOL)armInstall:(id)a3;
- (BOOL)disarmInstall;
- (SUManagerEngineDownloadDescriptor)initWithAsset:(id)a3 releaseDate:(id)a4 sessionID:(id)a5 scanOptions:(id)a6 downloadOptions:(id)a7 installTonightConfig:(id)a8 coreDescriptor:(id)a9 downloadAtPhase:(int64_t)a10 cleanupLevel:(id)a11;
- (id)summary;
@end

@implementation SUManagerEngineDownloadDescriptor

- (SUManagerEngineDownloadDescriptor)initWithAsset:(id)a3 releaseDate:(id)a4 sessionID:(id)a5 scanOptions:(id)a6 downloadOptions:(id)a7 installTonightConfig:(id)a8 coreDescriptor:(id)a9 downloadAtPhase:(int64_t)a10 cleanupLevel:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a11;
  v29.receiver = self;
  v29.super_class = SUManagerEngineDownloadDescriptor;
  v25 = [(SUManagerEngineDownloadDescriptor *)&v29 init];
  v26 = v25;
  if (v25)
  {
    [(SUManagerEngineDownloadDescriptor *)v25 setAsset:v17];
    [(SUManagerEngineDownloadDescriptor *)v26 setReleaseDate:v18];
    [(SUManagerEngineDownloadDescriptor *)v26 setSessionID:v19];
    [(SUManagerEngineDownloadDescriptor *)v26 setScanOptions:v20];
    [(SUManagerEngineDownloadDescriptor *)v26 setDownloadOptions:v21];
    [(SUManagerEngineDownloadDescriptor *)v26 setInstallOptions:0];
    [(SUManagerEngineDownloadDescriptor *)v26 setInstallTonightConfig:v22];
    [(SUManagerEngineDownloadDescriptor *)v26 setCoreDescriptor:v23];
    [(SUManagerEngineDownloadDescriptor *)v26 setAtPhase:a10];
    [(SUManagerEngineDownloadDescriptor *)v26 setCleanupLevel:v24];
    v27 = v26;
  }

  return v26;
}

+ (id)phaseToString:(int64_t)a3
{
  if (a3 > 6)
  {
    return @"DownloadPhaseUndefined";
  }

  else
  {
    return off_279CAB760[a3];
  }
}

- (id)summary
{
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [(SUManagerEngineDownloadDescriptor *)self asset];
  v3 = [(SUManagerEngineDownloadDescriptor *)self releaseDate];
  v4 = [(SUManagerEngineDownloadDescriptor *)self sessionID];
  v5 = [(SUManagerEngineDownloadDescriptor *)self scanOptions];
  v6 = [(SUManagerEngineDownloadDescriptor *)self downloadOptions];
  v7 = [(SUManagerEngineDownloadDescriptor *)self installTonightConfig];
  v8 = [SUManagerEngineDownloadDescriptor phaseToString:[(SUManagerEngineDownloadDescriptor *)self atPhase]];
  v9 = [(SUManagerEngineDownloadDescriptor *)self cleanupLevel];
  v10 = [(SUManagerEngineDownloadDescriptor *)self coreDescriptor];
  v11 = [v10 summary];
  v12 = [v15 initWithFormat:@"asset:%@ releaseDate:%@ sessionID:%@ scanOptions:%@ downloadOptions:%@ installTonightConfig:%@ atPhase:%@ cleanupLevel:%@, coreDescriptor:%@", v14, v3, v4, v5, v6, v7, v8, v9, v11];

  return v12;
}

- (BOOL)armInstall:(id)a3
{
  v4 = a3;
  if ([(SUManagerEngineDownloadDescriptor *)self atPhase]== 5 || [(SUManagerEngineDownloadDescriptor *)self atPhase]== 6)
  {
    [(SUManagerEngineDownloadDescriptor *)self setAtPhase:6];
    v5 = 1;
    v6 = v4;
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
  v3 = [(SUManagerEngineDownloadDescriptor *)self atPhase];
  if (v3 == 6)
  {
    [(SUManagerEngineDownloadDescriptor *)self setAtPhase:5];
  }

  return v3 == 6;
}

@end