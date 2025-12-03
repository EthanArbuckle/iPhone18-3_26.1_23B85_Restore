@interface SUCorePolicySoftwareUpdateScan
+ (id)nameForScanUpdateType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldScanForMajorUpdates;
- (BOOL)shouldScanForMinorUpdates;
- (SUCorePolicySoftwareUpdateScan)init;
- (SUCorePolicySoftwareUpdateScan)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)backToDefaults;
- (void)encodeWithCoder:(id)coder;
- (void)setRampingScanType:(id)type;
@end

@implementation SUCorePolicySoftwareUpdateScan

- (SUCorePolicySoftwareUpdateScan)init
{
  v5.receiver = self;
  v5.super_class = SUCorePolicySoftwareUpdateScan;
  v2 = [(SUCorePolicySoftwareUpdateScan *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SUCorePolicySoftwareUpdateScan *)v2 backToDefaults];
  }

  return v3;
}

- (void)backToDefaults
{
  self->_specifiedFields = 0;
  *&self->_allowsCellular = 0;
  *&self->_requiresPowerPluggedIn = 0;
  self->_downloadTimeoutSecs = 120;
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:@"Foreground"];
  rampingScanType = self->_rampingScanType;
  self->_rampingScanType = v3;

  sessionId = self->_sessionId;
  self->_sessionId = 0;

  additionalServerParams = self->_additionalServerParams;
  self->_scanUpdateType = 0;
  self->_additionalServerParams = 0;
  self->_liveServerCatalogOnly = 0;

  additionalOptions = self->_additionalOptions;
  self->_additionalOptions = 0;
}

- (void)setRampingScanType:(id)type
{
  v4 = [type compare:@"Background" options:1];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v4)
  {
    v6 = @"Foreground";
  }

  else
  {
    v6 = @"Background";
  }

  v7 = [v5 initWithString:v6];
  rampingScanType = self->_rampingScanType;
  self->_rampingScanType = v7;

  self->_specifiedFields |= 0x200uLL;
}

- (BOOL)shouldScanForMajorUpdates
{
  if ([(SUCorePolicySoftwareUpdateScan *)self scanUpdateType])
  {
    scanUpdateType = [(SUCorePolicySoftwareUpdateScan *)self scanUpdateType];
    if (scanUpdateType != 1)
    {
      LOBYTE(scanUpdateType) = [(SUCorePolicySoftwareUpdateScan *)self scanUpdateType]== 2;
    }
  }

  else
  {
    LOBYTE(scanUpdateType) = 1;
  }

  return scanUpdateType;
}

- (BOOL)shouldScanForMinorUpdates
{
  if ([(SUCorePolicySoftwareUpdateScan *)self scanUpdateType])
  {
    scanUpdateType = [(SUCorePolicySoftwareUpdateScan *)self scanUpdateType];
    if (scanUpdateType != 1)
    {
      LOBYTE(scanUpdateType) = [(SUCorePolicySoftwareUpdateScan *)self scanUpdateType]== 3;
    }
  }

  else
  {
    LOBYTE(scanUpdateType) = 1;
  }

  return scanUpdateType;
}

- (SUCorePolicySoftwareUpdateScan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SUCorePolicySoftwareUpdateScan;
  v5 = [(SUCorePolicySoftwareUpdateScan *)&v13 init];
  if (v5)
  {
    v5->_specifiedFields = [coderCopy decodeInt64ForKey:@"SpecifiedFields"];
    v5->_allowsCellular = [coderCopy decodeBoolForKey:@"AllowsCellular"];
    v5->_discretionary = [coderCopy decodeBoolForKey:@"Discretionary"];
    v5->_disableUI = [coderCopy decodeBoolForKey:@"DisableUI"];
    v5->_requiresPowerPluggedIn = [coderCopy decodeBoolForKey:@"RequiresPowerPluggedIn"];
    v5->_restrictToIncremental = [coderCopy decodeBoolForKey:@"RestrictToIncremental"];
    v5->_restrictToFull = [coderCopy decodeBoolForKey:@"RestrictToFull"];
    v5->_allowSameVersion = [coderCopy decodeBoolForKey:@"AllowSameVersion"];
    v5->_downloadTimeoutSecs = [coderCopy decodeIntForKey:@"DownloadTimeoutSecs"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SessionID"];
    sessionId = v5->_sessionId;
    v5->_sessionId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RampingScanType"];
    rampingScanType = v5->_rampingScanType;
    v5->_rampingScanType = v8;

    v5->_scanUpdateType = [coderCopy decodeInt64ForKey:@"ScanUpdateType"];
    v5->_liveServerCatalogOnly = [coderCopy decodeBoolForKey:@"LiveServerCatalogOnly"];
    additionalServerParams = v5->_additionalServerParams;
    v5->_additionalServerParams = 0;

    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SUCorePolicySoftwareUpdateScan specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateScan allowsCellular](self forKey:{"allowsCellular"), @"AllowsCellular"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateScan discretionary](self forKey:{"discretionary"), @"Discretionary"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateScan disableUI](self forKey:{"disableUI"), @"DisableUI"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateScan requiresPowerPluggedIn](self forKey:{"requiresPowerPluggedIn"), @"RequiresPowerPluggedIn"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateScan restrictToIncremental](self forKey:{"restrictToIncremental"), @"RestrictToIncremental"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateScan restrictToFull](self forKey:{"restrictToFull"), @"RestrictToFull"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateScan allowSameVersion](self forKey:{"allowSameVersion"), @"AllowSameVersion"}];
  [coderCopy encodeInt:-[SUCorePolicySoftwareUpdateScan downloadTimeoutSecs](self forKey:{"downloadTimeoutSecs"), @"DownloadTimeoutSecs"}];
  sessionId = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
  [coderCopy encodeObject:sessionId forKey:@"SessionID"];

  rampingScanType = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
  [coderCopy encodeObject:rampingScanType forKey:@"RampingScanType"];

  [coderCopy encodeInt64:-[SUCorePolicySoftwareUpdateScan scanUpdateType](self forKey:{"scanUpdateType"), @"ScanUpdateType"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateScan liveServerCatalogOnly](self forKey:{"liveServerCatalogOnly"), @"LiveServerCatalogOnly"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAllowsCellular:{-[SUCorePolicySoftwareUpdateScan allowsCellular](self, "allowsCellular")}];
  [v5 setDiscretionary:{-[SUCorePolicySoftwareUpdateScan discretionary](self, "discretionary")}];
  [v5 setDisableUI:{-[SUCorePolicySoftwareUpdateScan disableUI](self, "disableUI")}];
  [v5 setRequiresPowerPluggedIn:{-[SUCorePolicySoftwareUpdateScan requiresPowerPluggedIn](self, "requiresPowerPluggedIn")}];
  [v5 setRestrictToIncremental:{-[SUCorePolicySoftwareUpdateScan restrictToIncremental](self, "restrictToIncremental")}];
  [v5 setRestrictToFull:{-[SUCorePolicySoftwareUpdateScan restrictToFull](self, "restrictToFull")}];
  [v5 setAllowSameVersion:{-[SUCorePolicySoftwareUpdateScan allowSameVersion](self, "allowSameVersion")}];
  [v5 setDownloadTimeoutSecs:{-[SUCorePolicySoftwareUpdateScan downloadTimeoutSecs](self, "downloadTimeoutSecs")}];
  sessionId = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
  v7 = [sessionId copyWithZone:zone];
  [v5 setSessionId:v7];

  rampingScanType = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
  v9 = [rampingScanType copyWithZone:zone];
  [v5 setRampingScanType:v9];

  [v5 setScanUpdateType:{-[SUCorePolicySoftwareUpdateScan scanUpdateType](self, "scanUpdateType")}];
  [v5 setLiveServerCatalogOnly:{-[SUCorePolicySoftwareUpdateScan liveServerCatalogOnly](self, "liveServerCatalogOnly")}];
  additionalServerParams = [(SUCorePolicySoftwareUpdateScan *)self additionalServerParams];
  v11 = [additionalServerParams copyWithZone:zone];
  [v5 setAdditionalServerParams:v11];

  additionalOptions = [(SUCorePolicySoftwareUpdateScan *)self additionalOptions];
  v13 = [additionalOptions copyWithZone:zone];
  [v5 setAdditionalOptions:v13];

  [v5 setSpecifiedFields:{-[SUCorePolicySoftwareUpdateScan specifiedFields](self, "specifiedFields")}];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      allowsCellular = [(SUCorePolicySoftwareUpdateScan *)v5 allowsCellular];
      if (allowsCellular == [(SUCorePolicySoftwareUpdateScan *)self allowsCellular]&& (v7 = [(SUCorePolicySoftwareUpdateScan *)v5 discretionary], v7 == [(SUCorePolicySoftwareUpdateScan *)self discretionary]) && (v8 = [(SUCorePolicySoftwareUpdateScan *)v5 disableUI], v8 == [(SUCorePolicySoftwareUpdateScan *)self disableUI]) && (v9 = [(SUCorePolicySoftwareUpdateScan *)v5 requiresPowerPluggedIn], v9 == [(SUCorePolicySoftwareUpdateScan *)self requiresPowerPluggedIn]) && (v10 = [(SUCorePolicySoftwareUpdateScan *)v5 restrictToIncremental], v10 == [(SUCorePolicySoftwareUpdateScan *)self restrictToIncremental]) && (v11 = [(SUCorePolicySoftwareUpdateScan *)v5 restrictToFull], v11 == [(SUCorePolicySoftwareUpdateScan *)self restrictToFull]) && (v12 = [(SUCorePolicySoftwareUpdateScan *)v5 allowSameVersion], v12 == [(SUCorePolicySoftwareUpdateScan *)self allowSameVersion]) && (v13 = [(SUCorePolicySoftwareUpdateScan *)v5 downloadTimeoutSecs], v13 == [(SUCorePolicySoftwareUpdateScan *)self downloadTimeoutSecs]))
      {
        v14 = MEMORY[0x277D643F8];
        sessionId = [(SUCorePolicySoftwareUpdateScan *)v5 sessionId];
        sessionId2 = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
        if ([v14 stringIsEqual:sessionId to:sessionId2])
        {
          v17 = MEMORY[0x277D643F8];
          rampingScanType = [(SUCorePolicySoftwareUpdateScan *)v5 rampingScanType];
          rampingScanType2 = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
          if ([v17 stringIsEqual:rampingScanType to:rampingScanType2] && (v20 = -[SUCorePolicySoftwareUpdateScan scanUpdateType](v5, "scanUpdateType"), v20 == -[SUCorePolicySoftwareUpdateScan scanUpdateType](self, "scanUpdateType")) && (v21 = -[SUCorePolicySoftwareUpdateScan liveServerCatalogOnly](v5, "liveServerCatalogOnly"), v21 == -[SUCorePolicySoftwareUpdateScan liveServerCatalogOnly](self, "liveServerCatalogOnly")))
          {
            specifiedFields = [(SUCorePolicySoftwareUpdateScan *)v5 specifiedFields];
            v22 = specifiedFields == [(SUCorePolicySoftwareUpdateScan *)self specifiedFields];
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (id)description
{
  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  specifiedFields = [(SUCorePolicySoftwareUpdateScan *)self specifiedFields];
  if ([(SUCorePolicySoftwareUpdateScan *)self allowsCellular])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v29 = v3;
  if ([(SUCorePolicySoftwareUpdateScan *)self discretionary])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v28 = v4;
  if ([(SUCorePolicySoftwareUpdateScan *)self disableUI])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v27 = v5;
  if ([(SUCorePolicySoftwareUpdateScan *)self requiresPowerPluggedIn])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v25 = v6;
  if ([(SUCorePolicySoftwareUpdateScan *)self restrictToIncremental])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v24 = v7;
  if ([(SUCorePolicySoftwareUpdateScan *)self restrictToFull])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v23 = v8;
  if ([(SUCorePolicySoftwareUpdateScan *)self allowSameVersion])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v22 = v9;
  downloadTimeoutSecs = [(SUCorePolicySoftwareUpdateScan *)self downloadTimeoutSecs];
  sessionId = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
  if (sessionId)
  {
    sessionId2 = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
  }

  else
  {
    sessionId2 = @"none";
  }

  rampingScanType = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
  if (rampingScanType)
  {
    rampingScanType2 = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
  }

  else
  {
    rampingScanType2 = @"none";
  }

  v13 = [SUCorePolicySoftwareUpdateScan nameForScanUpdateType:[(SUCorePolicySoftwareUpdateScan *)self scanUpdateType]];
  if ([(SUCorePolicySoftwareUpdateScan *)self liveServerCatalogOnly])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  additionalServerParams = [(SUCorePolicySoftwareUpdateScan *)self additionalServerParams];
  if (additionalServerParams)
  {
    additionalServerParams2 = [(SUCorePolicySoftwareUpdateScan *)self additionalServerParams];
  }

  else
  {
    additionalServerParams2 = @"none";
  }

  additionalOptions = [(SUCorePolicySoftwareUpdateScan *)self additionalOptions];
  if (additionalOptions)
  {
    additionalOptions2 = [(SUCorePolicySoftwareUpdateScan *)self additionalOptions];
    v19 = [v31 initWithFormat:@"SUCorePolicySoftwareUpdateScan(\n        specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|UIDisabled:%@|requiresPowerPluggedIn:%@|\n        restrictToIncremental:%@|restrictToFull:%@|allowSameVersion:%@|\n        downloadTimeoutSecs:%d|sessionId:%@|rampingScanType:%@|scanUpdateType:%@|liveServerCatalogOnly:%@|\n        additionalServerParams:%@|\n        additionalOptions:%@)", specifiedFields, v29, v28, v27, v25, v24, v23, v22, downloadTimeoutSecs, sessionId2, rampingScanType2, v13, v14, additionalServerParams2, additionalOptions2];
  }

  else
  {
    v19 = [v31 initWithFormat:@"SUCorePolicySoftwareUpdateScan(\n        specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|UIDisabled:%@|requiresPowerPluggedIn:%@|\n        restrictToIncremental:%@|restrictToFull:%@|allowSameVersion:%@|\n        downloadTimeoutSecs:%d|sessionId:%@|rampingScanType:%@|scanUpdateType:%@|liveServerCatalogOnly:%@|\n        additionalServerParams:%@|\n        additionalOptions:%@)", specifiedFields, v29, v28, v27, v25, v24, v23, v22, downloadTimeoutSecs, sessionId2, rampingScanType2, v13, v14, additionalServerParams2, @"none"];
  }

  if (additionalServerParams)
  {
  }

  if (rampingScanType)
  {
  }

  if (sessionId)
  {
  }

  return v19;
}

- (id)summary
{
  if ([(SUCorePolicySoftwareUpdateScan *)self specifiedFields])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|fields=%llX", -[SUCorePolicySoftwareUpdateScan specifiedFields](self, "specifiedFields")];
    v4 = [&stru_28469CC48 stringByAppendingString:v3];
  }

  else
  {
    v4 = &stru_28469CC48;
  }

  if ([(SUCorePolicySoftwareUpdateScan *)self allowsCellular])
  {
    v5 = [(__CFString *)v4 stringByAppendingString:@"|cellular"];

    v4 = v5;
  }

  if ([(SUCorePolicySoftwareUpdateScan *)self discretionary])
  {
    v6 = @"|discretionary";
  }

  else
  {
    v6 = @"|non-discretionary";
  }

  v7 = [(__CFString *)v4 stringByAppendingString:v6];

  if ([(SUCorePolicySoftwareUpdateScan *)self disableUI])
  {
    v8 = @"|UIDisabled";
  }

  else
  {
    v8 = @"|UIEnabled";
  }

  v9 = [v7 stringByAppendingString:v8];

  if ([(SUCorePolicySoftwareUpdateScan *)self requiresPowerPluggedIn])
  {
    v10 = [v9 stringByAppendingString:@"|power"];

    v9 = v10;
  }

  if ([(SUCorePolicySoftwareUpdateScan *)self restrictToIncremental])
  {
    v11 = [v9 stringByAppendingString:@"|restrictIncr"];

    v9 = v11;
  }

  if ([(SUCorePolicySoftwareUpdateScan *)self restrictToFull])
  {
    v12 = [v9 stringByAppendingString:@"|restrictFull"];

    v9 = v12;
  }

  if ([(SUCorePolicySoftwareUpdateScan *)self allowSameVersion])
  {
    v13 = [v9 stringByAppendingString:@"|allowSame"];

    v9 = v13;
  }

  if ([(SUCorePolicySoftwareUpdateScan *)self downloadTimeoutSecs]!= 120)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|catalogTimeout=%d", -[SUCorePolicySoftwareUpdateScan downloadTimeoutSecs](self, "downloadTimeoutSecs")];
    v15 = [v9 stringByAppendingString:v14];

    v9 = v15;
  }

  sessionId = [(SUCorePolicySoftwareUpdateScan *)self sessionId];

  if (sessionId)
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    sessionId2 = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
    v19 = [v17 initWithFormat:@"|sesionID=%@", sessionId2];
    v20 = [v9 stringByAppendingString:v19];

    v9 = v20;
  }

  rampingScanType = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];

  if (rampingScanType)
  {
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    rampingScanType2 = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
    v24 = [v22 initWithFormat:@"|rampScan=%@", rampingScanType2];
    v25 = [v9 stringByAppendingString:v24];

    v9 = v25;
  }

  if ([(SUCorePolicySoftwareUpdateScan *)self scanUpdateType])
  {
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    v27 = [SUCorePolicySoftwareUpdateScan nameForScanUpdateType:[(SUCorePolicySoftwareUpdateScan *)self scanUpdateType]];
    v28 = [v26 initWithFormat:@"|scanUpdateType=%@", v27];
    v29 = [v9 stringByAppendingString:v28];

    v9 = v29;
  }

  if ([(SUCorePolicySoftwareUpdateScan *)self liveServerCatalogOnly])
  {
    v30 = [v9 stringByAppendingString:@"|liveServerCatalogOnly"];

    v9 = v30;
  }

  additionalServerParams = [(SUCorePolicySoftwareUpdateScan *)self additionalServerParams];
  if (additionalServerParams)
  {
    v32 = @"|withServerParams";
  }

  else
  {
    v32 = @"|noServerParams";
  }

  v33 = [v9 stringByAppendingString:v32];

  additionalOptions = [(SUCorePolicySoftwareUpdateScan *)self additionalOptions];
  if (additionalOptions)
  {
    v35 = @"|withAdditionalOptions";
  }

  else
  {
    v35 = @"|noAdditionalOptions";
  }

  v36 = [v33 stringByAppendingString:v35];

  if (([v36 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v37 = [v36 stringByAppendingString:@"|"];

    v36 = v37;
  }

  return v36;
}

+ (id)nameForScanUpdateType:(int64_t)type
{
  if (type > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_27892D668[type];
  }
}

@end