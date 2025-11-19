@interface SUCorePolicySoftwareUpdateScan
+ (id)nameForScanUpdateType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldScanForMajorUpdates;
- (BOOL)shouldScanForMinorUpdates;
- (SUCorePolicySoftwareUpdateScan)init;
- (SUCorePolicySoftwareUpdateScan)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)backToDefaults;
- (void)encodeWithCoder:(id)a3;
- (void)setRampingScanType:(id)a3;
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

- (void)setRampingScanType:(id)a3
{
  v4 = [a3 compare:@"Background" options:1];
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
    v3 = [(SUCorePolicySoftwareUpdateScan *)self scanUpdateType];
    if (v3 != 1)
    {
      LOBYTE(v3) = [(SUCorePolicySoftwareUpdateScan *)self scanUpdateType]== 2;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)shouldScanForMinorUpdates
{
  if ([(SUCorePolicySoftwareUpdateScan *)self scanUpdateType])
  {
    v3 = [(SUCorePolicySoftwareUpdateScan *)self scanUpdateType];
    if (v3 != 1)
    {
      LOBYTE(v3) = [(SUCorePolicySoftwareUpdateScan *)self scanUpdateType]== 3;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (SUCorePolicySoftwareUpdateScan)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUCorePolicySoftwareUpdateScan;
  v5 = [(SUCorePolicySoftwareUpdateScan *)&v13 init];
  if (v5)
  {
    v5->_specifiedFields = [v4 decodeInt64ForKey:@"SpecifiedFields"];
    v5->_allowsCellular = [v4 decodeBoolForKey:@"AllowsCellular"];
    v5->_discretionary = [v4 decodeBoolForKey:@"Discretionary"];
    v5->_disableUI = [v4 decodeBoolForKey:@"DisableUI"];
    v5->_requiresPowerPluggedIn = [v4 decodeBoolForKey:@"RequiresPowerPluggedIn"];
    v5->_restrictToIncremental = [v4 decodeBoolForKey:@"RestrictToIncremental"];
    v5->_restrictToFull = [v4 decodeBoolForKey:@"RestrictToFull"];
    v5->_allowSameVersion = [v4 decodeBoolForKey:@"AllowSameVersion"];
    v5->_downloadTimeoutSecs = [v4 decodeIntForKey:@"DownloadTimeoutSecs"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SessionID"];
    sessionId = v5->_sessionId;
    v5->_sessionId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RampingScanType"];
    rampingScanType = v5->_rampingScanType;
    v5->_rampingScanType = v8;

    v5->_scanUpdateType = [v4 decodeInt64ForKey:@"ScanUpdateType"];
    v5->_liveServerCatalogOnly = [v4 decodeBoolForKey:@"LiveServerCatalogOnly"];
    additionalServerParams = v5->_additionalServerParams;
    v5->_additionalServerParams = 0;

    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInt64:-[SUCorePolicySoftwareUpdateScan specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [v6 encodeBool:-[SUCorePolicySoftwareUpdateScan allowsCellular](self forKey:{"allowsCellular"), @"AllowsCellular"}];
  [v6 encodeBool:-[SUCorePolicySoftwareUpdateScan discretionary](self forKey:{"discretionary"), @"Discretionary"}];
  [v6 encodeBool:-[SUCorePolicySoftwareUpdateScan disableUI](self forKey:{"disableUI"), @"DisableUI"}];
  [v6 encodeBool:-[SUCorePolicySoftwareUpdateScan requiresPowerPluggedIn](self forKey:{"requiresPowerPluggedIn"), @"RequiresPowerPluggedIn"}];
  [v6 encodeBool:-[SUCorePolicySoftwareUpdateScan restrictToIncremental](self forKey:{"restrictToIncremental"), @"RestrictToIncremental"}];
  [v6 encodeBool:-[SUCorePolicySoftwareUpdateScan restrictToFull](self forKey:{"restrictToFull"), @"RestrictToFull"}];
  [v6 encodeBool:-[SUCorePolicySoftwareUpdateScan allowSameVersion](self forKey:{"allowSameVersion"), @"AllowSameVersion"}];
  [v6 encodeInt:-[SUCorePolicySoftwareUpdateScan downloadTimeoutSecs](self forKey:{"downloadTimeoutSecs"), @"DownloadTimeoutSecs"}];
  v4 = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
  [v6 encodeObject:v4 forKey:@"SessionID"];

  v5 = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
  [v6 encodeObject:v5 forKey:@"RampingScanType"];

  [v6 encodeInt64:-[SUCorePolicySoftwareUpdateScan scanUpdateType](self forKey:{"scanUpdateType"), @"ScanUpdateType"}];
  [v6 encodeBool:-[SUCorePolicySoftwareUpdateScan liveServerCatalogOnly](self forKey:{"liveServerCatalogOnly"), @"LiveServerCatalogOnly"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setAllowsCellular:{-[SUCorePolicySoftwareUpdateScan allowsCellular](self, "allowsCellular")}];
  [v5 setDiscretionary:{-[SUCorePolicySoftwareUpdateScan discretionary](self, "discretionary")}];
  [v5 setDisableUI:{-[SUCorePolicySoftwareUpdateScan disableUI](self, "disableUI")}];
  [v5 setRequiresPowerPluggedIn:{-[SUCorePolicySoftwareUpdateScan requiresPowerPluggedIn](self, "requiresPowerPluggedIn")}];
  [v5 setRestrictToIncremental:{-[SUCorePolicySoftwareUpdateScan restrictToIncremental](self, "restrictToIncremental")}];
  [v5 setRestrictToFull:{-[SUCorePolicySoftwareUpdateScan restrictToFull](self, "restrictToFull")}];
  [v5 setAllowSameVersion:{-[SUCorePolicySoftwareUpdateScan allowSameVersion](self, "allowSameVersion")}];
  [v5 setDownloadTimeoutSecs:{-[SUCorePolicySoftwareUpdateScan downloadTimeoutSecs](self, "downloadTimeoutSecs")}];
  v6 = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
  v7 = [v6 copyWithZone:a3];
  [v5 setSessionId:v7];

  v8 = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
  v9 = [v8 copyWithZone:a3];
  [v5 setRampingScanType:v9];

  [v5 setScanUpdateType:{-[SUCorePolicySoftwareUpdateScan scanUpdateType](self, "scanUpdateType")}];
  [v5 setLiveServerCatalogOnly:{-[SUCorePolicySoftwareUpdateScan liveServerCatalogOnly](self, "liveServerCatalogOnly")}];
  v10 = [(SUCorePolicySoftwareUpdateScan *)self additionalServerParams];
  v11 = [v10 copyWithZone:a3];
  [v5 setAdditionalServerParams:v11];

  v12 = [(SUCorePolicySoftwareUpdateScan *)self additionalOptions];
  v13 = [v12 copyWithZone:a3];
  [v5 setAdditionalOptions:v13];

  [v5 setSpecifiedFields:{-[SUCorePolicySoftwareUpdateScan specifiedFields](self, "specifiedFields")}];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCorePolicySoftwareUpdateScan *)v5 allowsCellular];
      if (v6 == [(SUCorePolicySoftwareUpdateScan *)self allowsCellular]&& (v7 = [(SUCorePolicySoftwareUpdateScan *)v5 discretionary], v7 == [(SUCorePolicySoftwareUpdateScan *)self discretionary]) && (v8 = [(SUCorePolicySoftwareUpdateScan *)v5 disableUI], v8 == [(SUCorePolicySoftwareUpdateScan *)self disableUI]) && (v9 = [(SUCorePolicySoftwareUpdateScan *)v5 requiresPowerPluggedIn], v9 == [(SUCorePolicySoftwareUpdateScan *)self requiresPowerPluggedIn]) && (v10 = [(SUCorePolicySoftwareUpdateScan *)v5 restrictToIncremental], v10 == [(SUCorePolicySoftwareUpdateScan *)self restrictToIncremental]) && (v11 = [(SUCorePolicySoftwareUpdateScan *)v5 restrictToFull], v11 == [(SUCorePolicySoftwareUpdateScan *)self restrictToFull]) && (v12 = [(SUCorePolicySoftwareUpdateScan *)v5 allowSameVersion], v12 == [(SUCorePolicySoftwareUpdateScan *)self allowSameVersion]) && (v13 = [(SUCorePolicySoftwareUpdateScan *)v5 downloadTimeoutSecs], v13 == [(SUCorePolicySoftwareUpdateScan *)self downloadTimeoutSecs]))
      {
        v14 = MEMORY[0x277D643F8];
        v15 = [(SUCorePolicySoftwareUpdateScan *)v5 sessionId];
        v16 = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
        if ([v14 stringIsEqual:v15 to:v16])
        {
          v17 = MEMORY[0x277D643F8];
          v18 = [(SUCorePolicySoftwareUpdateScan *)v5 rampingScanType];
          v19 = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
          if ([v17 stringIsEqual:v18 to:v19] && (v20 = -[SUCorePolicySoftwareUpdateScan scanUpdateType](v5, "scanUpdateType"), v20 == -[SUCorePolicySoftwareUpdateScan scanUpdateType](self, "scanUpdateType")) && (v21 = -[SUCorePolicySoftwareUpdateScan liveServerCatalogOnly](v5, "liveServerCatalogOnly"), v21 == -[SUCorePolicySoftwareUpdateScan liveServerCatalogOnly](self, "liveServerCatalogOnly")))
          {
            v24 = [(SUCorePolicySoftwareUpdateScan *)v5 specifiedFields];
            v22 = v24 == [(SUCorePolicySoftwareUpdateScan *)self specifiedFields];
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
  v30 = [(SUCorePolicySoftwareUpdateScan *)self specifiedFields];
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
  v21 = [(SUCorePolicySoftwareUpdateScan *)self downloadTimeoutSecs];
  v26 = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
  if (v26)
  {
    v10 = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
  }

  else
  {
    v10 = @"none";
  }

  v11 = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
  if (v11)
  {
    v12 = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
  }

  else
  {
    v12 = @"none";
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

  v15 = [(SUCorePolicySoftwareUpdateScan *)self additionalServerParams];
  if (v15)
  {
    v16 = [(SUCorePolicySoftwareUpdateScan *)self additionalServerParams];
  }

  else
  {
    v16 = @"none";
  }

  v17 = [(SUCorePolicySoftwareUpdateScan *)self additionalOptions];
  if (v17)
  {
    v18 = [(SUCorePolicySoftwareUpdateScan *)self additionalOptions];
    v19 = [v31 initWithFormat:@"SUCorePolicySoftwareUpdateScan(\n        specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|UIDisabled:%@|requiresPowerPluggedIn:%@|\n        restrictToIncremental:%@|restrictToFull:%@|allowSameVersion:%@|\n        downloadTimeoutSecs:%d|sessionId:%@|rampingScanType:%@|scanUpdateType:%@|liveServerCatalogOnly:%@|\n        additionalServerParams:%@|\n        additionalOptions:%@)", v30, v29, v28, v27, v25, v24, v23, v22, v21, v10, v12, v13, v14, v16, v18];
  }

  else
  {
    v19 = [v31 initWithFormat:@"SUCorePolicySoftwareUpdateScan(\n        specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|UIDisabled:%@|requiresPowerPluggedIn:%@|\n        restrictToIncremental:%@|restrictToFull:%@|allowSameVersion:%@|\n        downloadTimeoutSecs:%d|sessionId:%@|rampingScanType:%@|scanUpdateType:%@|liveServerCatalogOnly:%@|\n        additionalServerParams:%@|\n        additionalOptions:%@)", v30, v29, v28, v27, v25, v24, v23, v22, v21, v10, v12, v13, v14, v16, @"none"];
  }

  if (v15)
  {
  }

  if (v11)
  {
  }

  if (v26)
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

  v16 = [(SUCorePolicySoftwareUpdateScan *)self sessionId];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = [(SUCorePolicySoftwareUpdateScan *)self sessionId];
    v19 = [v17 initWithFormat:@"|sesionID=%@", v18];
    v20 = [v9 stringByAppendingString:v19];

    v9 = v20;
  }

  v21 = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = [(SUCorePolicySoftwareUpdateScan *)self rampingScanType];
    v24 = [v22 initWithFormat:@"|rampScan=%@", v23];
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

  v31 = [(SUCorePolicySoftwareUpdateScan *)self additionalServerParams];
  if (v31)
  {
    v32 = @"|withServerParams";
  }

  else
  {
    v32 = @"|noServerParams";
  }

  v33 = [v9 stringByAppendingString:v32];

  v34 = [(SUCorePolicySoftwareUpdateScan *)self additionalOptions];
  if (v34)
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

+ (id)nameForScanUpdateType:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_27892D668[a3];
  }
}

@end