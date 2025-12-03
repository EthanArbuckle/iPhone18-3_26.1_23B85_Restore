@interface SUCorePolicySoftwareUpdateDownload
- (BOOL)isEqual:(id)equal;
- (SUCorePolicySoftwareUpdateDownload)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePolicySoftwareUpdateDownload

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set
{
  *&self->_allowsCellular = 0;
  self->_disableUI = 0;
  *&self->_requiresPowerPluggedIn = 0;
  self->_downloadTimeoutSecs = 120;
  self->_specifiedFields = 0;
  self->_maxPreSUStagingOptionalSize = -1;
  self->_skipPhase = set;
  additionalOptions = self->_additionalOptions;
  self->_additionalOptions = 0;
  MEMORY[0x2821F96F8]();
}

- (SUCorePolicySoftwareUpdateDownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SUCorePolicySoftwareUpdateDownload;
  v5 = [(SUCorePolicySoftwareUpdateDownload *)&v8 init];
  if (v5)
  {
    v5->_specifiedFields = [coderCopy decodeInt64ForKey:@"SpecifiedFields"];
    v5->_allowsCellular = [coderCopy decodeBoolForKey:@"AllowsCellular"];
    v5->_discretionary = [coderCopy decodeBoolForKey:@"Discretionary"];
    v5->_disableUI = [coderCopy decodeBoolForKey:@"DisableUI"];
    v5->_requiresPowerPluggedIn = [coderCopy decodeBoolForKey:@"RequiresPowerPluggedIn"];
    v5->_downloadTimeoutSecs = [coderCopy decodeIntForKey:@"SoftwareUpdateAssetDownloadTimeoutSecs"];
    v5->_requiresInexpensiveAccess = [coderCopy decodeBoolForKey:@"RequiresInexpensiveAccess"];
    v5->_maxPreSUStagingOptionalSize = [coderCopy decodeInt64ForKey:@"MaxPSUSOptionalSize"];
    v5->_skipPhase = [coderCopy decodeBoolForKey:@"SkipPhase"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SUCorePolicySoftwareUpdateDownload specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateDownload allowsCellular](self forKey:{"allowsCellular"), @"AllowsCellular"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateDownload discretionary](self forKey:{"discretionary"), @"Discretionary"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateDownload disableUI](self forKey:{"disableUI"), @"DisableUI"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateDownload requiresPowerPluggedIn](self forKey:{"requiresPowerPluggedIn"), @"RequiresPowerPluggedIn"}];
  [coderCopy encodeInt:-[SUCorePolicySoftwareUpdateDownload downloadTimeoutSecs](self forKey:{"downloadTimeoutSecs"), @"SoftwareUpdateAssetDownloadTimeoutSecs"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateDownload requiresInexpensiveAccess](self forKey:{"requiresInexpensiveAccess"), @"RequiresInexpensiveAccess"}];
  [coderCopy encodeInt64:-[SUCorePolicySoftwareUpdateDownload maxPreSUStagingOptionalSize](self forKey:{"maxPreSUStagingOptionalSize"), @"MaxPSUSOptionalSize"}];
  [coderCopy encodeBool:-[SUCorePolicySoftwareUpdateDownload skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAllowsCellular:{-[SUCorePolicySoftwareUpdateDownload allowsCellular](self, "allowsCellular")}];
  [v5 setDiscretionary:{-[SUCorePolicySoftwareUpdateDownload discretionary](self, "discretionary")}];
  [v5 setDisableUI:{-[SUCorePolicySoftwareUpdateDownload disableUI](self, "disableUI")}];
  [v5 setSkipPhase:{-[SUCorePolicySoftwareUpdateDownload requiresPowerPluggedIn](self, "requiresPowerPluggedIn")}];
  [v5 setRequiresPowerPluggedIn:{-[SUCorePolicySoftwareUpdateDownload requiresPowerPluggedIn](self, "requiresPowerPluggedIn")}];
  [v5 setDownloadTimeoutSecs:{-[SUCorePolicySoftwareUpdateDownload downloadTimeoutSecs](self, "downloadTimeoutSecs")}];
  additionalOptions = [(SUCorePolicySoftwareUpdateDownload *)self additionalOptions];
  v7 = [additionalOptions copyWithZone:zone];
  [v5 setAdditionalOptions:v7];

  [v5 setRequiresInexpensiveAccess:{-[SUCorePolicySoftwareUpdateDownload requiresInexpensiveAccess](self, "requiresInexpensiveAccess")}];
  [v5 setMaxPreSUStagingOptionalSize:{-[SUCorePolicySoftwareUpdateDownload maxPreSUStagingOptionalSize](self, "maxPreSUStagingOptionalSize")}];
  [v5 setSpecifiedFields:{-[SUCorePolicySoftwareUpdateDownload specifiedFields](self, "specifiedFields")}];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      allowsCellular = [(SUCorePolicySoftwareUpdateDownload *)v5 allowsCellular];
      if (allowsCellular == [(SUCorePolicySoftwareUpdateDownload *)self allowsCellular]&& (v7 = [(SUCorePolicySoftwareUpdateDownload *)v5 discretionary], v7 == [(SUCorePolicySoftwareUpdateDownload *)self discretionary]) && (v8 = [(SUCorePolicySoftwareUpdateDownload *)v5 disableUI], v8 == [(SUCorePolicySoftwareUpdateDownload *)self disableUI]) && (v9 = [(SUCorePolicySoftwareUpdateDownload *)v5 skipPhase], v9 == [(SUCorePolicySoftwareUpdateDownload *)self skipPhase]) && (v10 = [(SUCorePolicySoftwareUpdateDownload *)v5 requiresPowerPluggedIn], v10 == [(SUCorePolicySoftwareUpdateDownload *)self requiresPowerPluggedIn]) && (v11 = [(SUCorePolicySoftwareUpdateDownload *)v5 downloadTimeoutSecs], v11 == [(SUCorePolicySoftwareUpdateDownload *)self downloadTimeoutSecs]) && (v12 = [(SUCorePolicySoftwareUpdateDownload *)v5 requiresInexpensiveAccess], v12 == [(SUCorePolicySoftwareUpdateDownload *)self requiresInexpensiveAccess]) && (v13 = [(SUCorePolicySoftwareUpdateDownload *)v5 specifiedFields], v13 == [(SUCorePolicySoftwareUpdateDownload *)self specifiedFields]))
      {
        maxPreSUStagingOptionalSize = [(SUCorePolicySoftwareUpdateDownload *)v5 maxPreSUStagingOptionalSize];
        v15 = maxPreSUStagingOptionalSize == [(SUCorePolicySoftwareUpdateDownload *)self maxPreSUStagingOptionalSize];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  specifiedFields = [(SUCorePolicySoftwareUpdateDownload *)self specifiedFields];
  v3 = @"NO";
  if ([(SUCorePolicySoftwareUpdateDownload *)self skipPhase])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(SUCorePolicySoftwareUpdateDownload *)self allowsCellular])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(SUCorePolicySoftwareUpdateDownload *)self discretionary])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(SUCorePolicySoftwareUpdateDownload *)self disableUI])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(SUCorePolicySoftwareUpdateDownload *)self requiresPowerPluggedIn])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  downloadTimeoutSecs = [(SUCorePolicySoftwareUpdateDownload *)self downloadTimeoutSecs];
  if ([(SUCorePolicySoftwareUpdateDownload *)self requiresInexpensiveAccess])
  {
    v3 = @"YES";
  }

  maxPreSUStagingOptionalSize = [(SUCorePolicySoftwareUpdateDownload *)self maxPreSUStagingOptionalSize];
  additionalOptions = [(SUCorePolicySoftwareUpdateDownload *)self additionalOptions];
  if (additionalOptions)
  {
    additionalOptions2 = [(SUCorePolicySoftwareUpdateDownload *)self additionalOptions];
    v13 = [v16 stringWithFormat:@"SUCorePolicySoftwareUpdateDownload(specifiedFields:0x%llX|skipPhase:%@|allowsCellular:%@|discretionary:%@|disableUI:%@|requiresPowerPluggedIn:%@|downloadTimeoutSecs:%d|requiresInexpensiveAccess:%@|maxPreSUStagingOptionalSize:%lld|additionalOptions:%@)", specifiedFields, v4, v5, v6, v7, v8, downloadTimeoutSecs, v3, maxPreSUStagingOptionalSize, additionalOptions2];
  }

  else
  {
    v13 = [v16 stringWithFormat:@"SUCorePolicySoftwareUpdateDownload(specifiedFields:0x%llX|skipPhase:%@|allowsCellular:%@|discretionary:%@|disableUI:%@|requiresPowerPluggedIn:%@|downloadTimeoutSecs:%d|requiresInexpensiveAccess:%@|maxPreSUStagingOptionalSize:%lld|additionalOptions:%@)", specifiedFields, v4, v5, v6, v7, v8, downloadTimeoutSecs, v3, maxPreSUStagingOptionalSize, @"none"];
  }

  return v13;
}

- (id)summary
{
  if ([(SUCorePolicySoftwareUpdateDownload *)self specifiedFields])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|fields=%llX", -[SUCorePolicySoftwareUpdateDownload specifiedFields](self, "specifiedFields")];
    v4 = [&stru_28469CC48 stringByAppendingString:v3];
  }

  else
  {
    v4 = &stru_28469CC48;
  }

  if ([(SUCorePolicySoftwareUpdateDownload *)self allowsCellular])
  {
    v5 = [(__CFString *)v4 stringByAppendingString:@"|cellular"];

    v4 = v5;
  }

  if ([(SUCorePolicySoftwareUpdateDownload *)self discretionary])
  {
    v6 = @"|discretionary";
  }

  else
  {
    v6 = @"|non-discretionary";
  }

  v7 = [(__CFString *)v4 stringByAppendingString:v6];

  if ([(SUCorePolicySoftwareUpdateDownload *)self disableUI])
  {
    v8 = @"UIDisabled";
  }

  else
  {
    v8 = @"UIEnabled";
  }

  v9 = [v7 stringByAppendingString:v8];

  if ([(SUCorePolicySoftwareUpdateDownload *)self skipPhase])
  {
    v10 = [v9 stringByAppendingString:@"|skipPhase"];

    v9 = v10;
  }

  if ([(SUCorePolicySoftwareUpdateDownload *)self requiresPowerPluggedIn])
  {
    v11 = [v9 stringByAppendingString:@"|power"];

    v9 = v11;
  }

  if ([(SUCorePolicySoftwareUpdateDownload *)self downloadTimeoutSecs]!= 120)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|suTimeout=%d", -[SUCorePolicySoftwareUpdateDownload downloadTimeoutSecs](self, "downloadTimeoutSecs")];
    v13 = [v9 stringByAppendingString:v12];

    v9 = v13;
  }

  if ([(SUCorePolicySoftwareUpdateDownload *)self requiresInexpensiveAccess])
  {
    v14 = [v9 stringByAppendingString:@"|cheapAccess"];

    v9 = v14;
  }

  v15 = [v9 stringByAppendingFormat:@"|maxPSUSOptSize=%lld", -[SUCorePolicySoftwareUpdateDownload maxPreSUStagingOptionalSize](self, "maxPreSUStagingOptionalSize")];

  additionalOptions = [(SUCorePolicySoftwareUpdateDownload *)self additionalOptions];
  if (additionalOptions)
  {
    v17 = @"|withAdditionalOptions";
  }

  else
  {
    v17 = @"|noAdditionalOptions";
  }

  v18 = [v15 stringByAppendingString:v17];

  if (([v18 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v19 = [v18 stringByAppendingString:@"|"];

    v18 = v19;
  }

  return v18;
}

@end