@interface SUCorePolicyDocumentationScan
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyDocumentationScan)init;
- (SUCorePolicyDocumentationScan)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)backToDefaults;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePolicyDocumentationScan

- (SUCorePolicyDocumentationScan)init
{
  v5.receiver = self;
  v5.super_class = SUCorePolicyDocumentationScan;
  v2 = [(SUCorePolicyDocumentationScan *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SUCorePolicyDocumentationScan *)v2 backToDefaults];
  }

  return v3;
}

- (void)backToDefaults
{
  additionalServerParams = self->_additionalServerParams;
  self->_specifiedFields = 0;
  self->_additionalServerParams = 0;
  *&self->_allowsCellular = 0;
  self->_downloadTimeoutSecs = 120;
  self->_liveServerCatalogOnly = 0;

  additionalOptions = self->_additionalOptions;
  self->_additionalOptions = 0;
}

- (SUCorePolicyDocumentationScan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCorePolicyDocumentationScan;
  v5 = [(SUCorePolicyDocumentationScan *)&v9 init];
  if (v5)
  {
    v5->_specifiedFields = [coderCopy decodeInt64ForKey:@"SpecifiedFields"];
    v5->_allowsCellular = [coderCopy decodeBoolForKey:@"AllowsCellular"];
    v5->_discretionary = [coderCopy decodeBoolForKey:@"Discretionary"];
    v5->_disableUI = [coderCopy decodeBoolForKey:@"DisableUI"];
    v5->_requiresPowerPluggedIn = [coderCopy decodeBoolForKey:@"RequiresPowerPluggedIn"];
    v5->_downloadTimeoutSecs = [coderCopy decodeIntForKey:@"DownloadTimeoutSecs"];
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
  [coderCopy encodeInt64:-[SUCorePolicyDocumentationScan specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [coderCopy encodeBool:-[SUCorePolicyDocumentationScan allowsCellular](self forKey:{"allowsCellular"), @"AllowsCellular"}];
  [coderCopy encodeBool:-[SUCorePolicyDocumentationScan discretionary](self forKey:{"discretionary"), @"Discretionary"}];
  [coderCopy encodeBool:-[SUCorePolicyDocumentationScan disableUI](self forKey:{"disableUI"), @"DisableUI"}];
  [coderCopy encodeBool:-[SUCorePolicyDocumentationScan requiresPowerPluggedIn](self forKey:{"requiresPowerPluggedIn"), @"RequiresPowerPluggedIn"}];
  [coderCopy encodeInt:-[SUCorePolicyDocumentationScan downloadTimeoutSecs](self forKey:{"downloadTimeoutSecs"), @"DownloadTimeoutSecs"}];
  [coderCopy encodeBool:-[SUCorePolicyDocumentationScan liveServerCatalogOnly](self forKey:{"liveServerCatalogOnly"), @"LiveServerCatalogOnly"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAllowsCellular:{-[SUCorePolicyDocumentationScan allowsCellular](self, "allowsCellular")}];
  [v5 setDiscretionary:{-[SUCorePolicyDocumentationScan discretionary](self, "discretionary")}];
  [v5 setDisableUI:{-[SUCorePolicyDocumentationScan disableUI](self, "disableUI")}];
  [v5 setRequiresPowerPluggedIn:{-[SUCorePolicyDocumentationScan requiresPowerPluggedIn](self, "requiresPowerPluggedIn")}];
  [v5 setDownloadTimeoutSecs:{-[SUCorePolicyDocumentationScan downloadTimeoutSecs](self, "downloadTimeoutSecs")}];
  [v5 setLiveServerCatalogOnly:{-[SUCorePolicyDocumentationScan liveServerCatalogOnly](self, "liveServerCatalogOnly")}];
  additionalServerParams = [(SUCorePolicyDocumentationScan *)self additionalServerParams];
  v7 = [additionalServerParams copyWithZone:zone];
  [v5 setAdditionalServerParams:v7];

  additionalOptions = [(SUCorePolicyDocumentationScan *)self additionalOptions];
  v9 = [additionalOptions copyWithZone:zone];
  [v5 setAdditionalOptions:v9];

  [v5 setSpecifiedFields:{-[SUCorePolicyDocumentationScan specifiedFields](self, "specifiedFields")}];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      allowsCellular = [(SUCorePolicyDocumentationScan *)v5 allowsCellular];
      if (allowsCellular == [(SUCorePolicyDocumentationScan *)self allowsCellular]&& (v7 = [(SUCorePolicyDocumentationScan *)v5 discretionary], v7 == [(SUCorePolicyDocumentationScan *)self discretionary]) && (v8 = [(SUCorePolicyDocumentationScan *)v5 disableUI], v8 == [(SUCorePolicyDocumentationScan *)self disableUI]) && (v9 = [(SUCorePolicyDocumentationScan *)v5 requiresPowerPluggedIn], v9 == [(SUCorePolicyDocumentationScan *)self requiresPowerPluggedIn]) && (v10 = [(SUCorePolicyDocumentationScan *)v5 downloadTimeoutSecs], v10 == [(SUCorePolicyDocumentationScan *)self downloadTimeoutSecs]) && (v11 = [(SUCorePolicyDocumentationScan *)v5 liveServerCatalogOnly], v11 == [(SUCorePolicyDocumentationScan *)self liveServerCatalogOnly]))
      {
        specifiedFields = [(SUCorePolicyDocumentationScan *)v5 specifiedFields];
        v12 = specifiedFields == [(SUCorePolicyDocumentationScan *)self specifiedFields];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  specifiedFields = [(SUCorePolicyDocumentationScan *)self specifiedFields];
  v3 = @"NO";
  if ([(SUCorePolicyDocumentationScan *)self allowsCellular])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v15 = v4;
  if ([(SUCorePolicyDocumentationScan *)self discretionary])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(SUCorePolicyDocumentationScan *)self disableUI])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(SUCorePolicyDocumentationScan *)self requiresPowerPluggedIn])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  downloadTimeoutSecs = [(SUCorePolicyDocumentationScan *)self downloadTimeoutSecs];
  if ([(SUCorePolicyDocumentationScan *)self liveServerCatalogOnly])
  {
    v3 = @"YES";
  }

  additionalServerParams = [(SUCorePolicyDocumentationScan *)self additionalServerParams];
  additionalServerParams2 = @"none";
  if (additionalServerParams)
  {
    additionalServerParams2 = [(SUCorePolicyDocumentationScan *)self additionalServerParams];
  }

  additionalOptions = [(SUCorePolicyDocumentationScan *)self additionalOptions];
  if (additionalOptions)
  {
    additionalOptions2 = [(SUCorePolicyDocumentationScan *)self additionalOptions];
    v13 = [v17 stringWithFormat:@"SUCorePolicyDocumentationScan(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|requiresPowerPluggedIn:%@|downloadTimeoutSecs:%d|liveServerCatalogOnly:%@|additionalServerParams:%@|additionalOptions:%@)", specifiedFields, v15, v5, v6, v7, downloadTimeoutSecs, v3, additionalServerParams2, additionalOptions2];
  }

  else
  {
    v13 = [v17 stringWithFormat:@"SUCorePolicyDocumentationScan(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|requiresPowerPluggedIn:%@|downloadTimeoutSecs:%d|liveServerCatalogOnly:%@|additionalServerParams:%@|additionalOptions:%@)", specifiedFields, v15, v5, v6, v7, downloadTimeoutSecs, v3, additionalServerParams2, @"none"];
  }

  if (additionalServerParams)
  {
  }

  return v13;
}

- (id)summary
{
  if ([(SUCorePolicyDocumentationScan *)self specifiedFields])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|fields=%llX", -[SUCorePolicyDocumentationScan specifiedFields](self, "specifiedFields")];
    v4 = [&stru_28469CC48 stringByAppendingString:v3];
  }

  else
  {
    v4 = &stru_28469CC48;
  }

  if ([(SUCorePolicyDocumentationScan *)self allowsCellular])
  {
    v5 = [(__CFString *)v4 stringByAppendingString:@"|cellular"];

    v4 = v5;
  }

  if ([(SUCorePolicyDocumentationScan *)self discretionary])
  {
    v6 = @"|discretionary";
  }

  else
  {
    v6 = @"|non-discretionary";
  }

  v7 = [(__CFString *)v4 stringByAppendingString:v6];

  if ([(SUCorePolicyDocumentationScan *)self disableUI])
  {
    v8 = @"|UIDisabled";
  }

  else
  {
    v8 = @"|UIEnabled";
  }

  v9 = [v7 stringByAppendingString:v8];

  if ([(SUCorePolicyDocumentationScan *)self requiresPowerPluggedIn])
  {
    v10 = [v9 stringByAppendingString:@"|power"];

    v9 = v10;
  }

  if ([(SUCorePolicyDocumentationScan *)self downloadTimeoutSecs]!= 120)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|catalogTimeout=%d", -[SUCorePolicyDocumentationScan downloadTimeoutSecs](self, "downloadTimeoutSecs")];
    v12 = [v9 stringByAppendingString:v11];

    v9 = v12;
  }

  if ([(SUCorePolicyDocumentationScan *)self liveServerCatalogOnly])
  {
    v13 = [v9 stringByAppendingString:@"|liveServerCatalogOnly"];

    v9 = v13;
  }

  additionalServerParams = [(SUCorePolicyDocumentationScan *)self additionalServerParams];
  if (additionalServerParams)
  {
    v15 = @"|withAdditionalServerParams";
  }

  else
  {
    v15 = @"|noAdditionalServerParams";
  }

  v16 = [v9 stringByAppendingString:v15];

  additionalOptions = [(SUCorePolicyDocumentationScan *)self additionalOptions];
  if (additionalOptions)
  {
    v18 = @"|withAdditionalOptions";
  }

  else
  {
    v18 = @"|noAdditionalOptions";
  }

  v19 = [v16 stringByAppendingString:v18];

  if (([v19 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v20 = [v19 stringByAppendingString:@"|"];

    v19 = v20;
  }

  return v19;
}

@end