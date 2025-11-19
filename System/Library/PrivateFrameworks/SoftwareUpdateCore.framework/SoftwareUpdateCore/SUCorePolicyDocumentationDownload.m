@interface SUCorePolicyDocumentationDownload
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyDocumentationDownload)init;
- (SUCorePolicyDocumentationDownload)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)backToDefaults;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCorePolicyDocumentationDownload

- (SUCorePolicyDocumentationDownload)init
{
  v5.receiver = self;
  v5.super_class = SUCorePolicyDocumentationDownload;
  v2 = [(SUCorePolicyDocumentationDownload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SUCorePolicyDocumentationDownload *)v2 backToDefaults];
  }

  return v3;
}

- (void)backToDefaults
{
  additionalOptions = self->_additionalOptions;
  self->_specifiedFields = 0;
  self->_additionalOptions = 0;
  *&self->_allowsCellular = 0;
  self->_requiresInexpensiveAccess = 0;
  self->_downloadTimeoutSecs = 120;
  MEMORY[0x2821F96F8]();
}

- (SUCorePolicyDocumentationDownload)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUCorePolicyDocumentationDownload;
  v5 = [(SUCorePolicyDocumentationDownload *)&v8 init];
  if (v5)
  {
    v5->_specifiedFields = [v4 decodeInt64ForKey:@"SpecifiedFields"];
    v5->_allowsCellular = [v4 decodeBoolForKey:@"AllowsCellular"];
    v5->_discretionary = [v4 decodeBoolForKey:@"Discretionary"];
    v5->_disableUI = [v4 decodeBoolForKey:@"DisableUI"];
    v5->_requiresPowerPluggedIn = [v4 decodeBoolForKey:@"RequiresPowerPluggedIn"];
    v5->_downloadTimeoutSecs = [v4 decodeIntForKey:@"DownloadTimeoutSecs"];
    v5->_requiresInexpensiveAccess = [v4 decodeBoolForKey:@"RequiresInexpensiveAccess"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SUCorePolicyDocumentationDownload specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [v4 encodeBool:-[SUCorePolicyDocumentationDownload allowsCellular](self forKey:{"allowsCellular"), @"AllowsCellular"}];
  [v4 encodeBool:-[SUCorePolicyDocumentationDownload discretionary](self forKey:{"discretionary"), @"Discretionary"}];
  [v4 encodeBool:-[SUCorePolicyDocumentationDownload disableUI](self forKey:{"disableUI"), @"DisableUI"}];
  [v4 encodeBool:-[SUCorePolicyDocumentationDownload requiresPowerPluggedIn](self forKey:{"requiresPowerPluggedIn"), @"RequiresPowerPluggedIn"}];
  [v4 encodeInt:-[SUCorePolicyDocumentationDownload downloadTimeoutSecs](self forKey:{"downloadTimeoutSecs"), @"DownloadTimeoutSecs"}];
  [v4 encodeBool:-[SUCorePolicyDocumentationDownload requiresInexpensiveAccess](self forKey:{"requiresInexpensiveAccess"), @"RequiresInexpensiveAccess"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setAllowsCellular:{-[SUCorePolicyDocumentationDownload allowsCellular](self, "allowsCellular")}];
  [v5 setDiscretionary:{-[SUCorePolicyDocumentationDownload discretionary](self, "discretionary")}];
  [v5 setDisableUI:{-[SUCorePolicyDocumentationDownload disableUI](self, "disableUI")}];
  [v5 setRequiresPowerPluggedIn:{-[SUCorePolicyDocumentationDownload requiresPowerPluggedIn](self, "requiresPowerPluggedIn")}];
  [v5 setDownloadTimeoutSecs:{-[SUCorePolicyDocumentationDownload downloadTimeoutSecs](self, "downloadTimeoutSecs")}];
  v6 = [(SUCorePolicyDocumentationDownload *)self additionalOptions];
  v7 = [v6 copyWithZone:a3];
  [v5 setAdditionalOptions:v7];

  [v5 setRequiresInexpensiveAccess:{-[SUCorePolicyDocumentationDownload requiresInexpensiveAccess](self, "requiresInexpensiveAccess")}];
  [v5 setSpecifiedFields:{-[SUCorePolicyDocumentationDownload specifiedFields](self, "specifiedFields")}];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCorePolicyDocumentationDownload *)v5 allowsCellular];
      if (v6 == [(SUCorePolicyDocumentationDownload *)self allowsCellular]&& (v7 = [(SUCorePolicyDocumentationDownload *)v5 discretionary], v7 == [(SUCorePolicyDocumentationDownload *)self discretionary]) && (v8 = [(SUCorePolicyDocumentationDownload *)v5 disableUI], v8 == [(SUCorePolicyDocumentationDownload *)self disableUI]) && (v9 = [(SUCorePolicyDocumentationDownload *)v5 requiresPowerPluggedIn], v9 == [(SUCorePolicyDocumentationDownload *)self requiresPowerPluggedIn]) && (v10 = [(SUCorePolicyDocumentationDownload *)v5 downloadTimeoutSecs], v10 == [(SUCorePolicyDocumentationDownload *)self downloadTimeoutSecs]) && (v11 = [(SUCorePolicyDocumentationDownload *)v5 requiresInexpensiveAccess], v11 == [(SUCorePolicyDocumentationDownload *)self requiresInexpensiveAccess]))
      {
        v14 = [(SUCorePolicyDocumentationDownload *)v5 specifiedFields];
        v12 = v14 == [(SUCorePolicyDocumentationDownload *)self specifiedFields];
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
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUCorePolicyDocumentationDownload *)self specifiedFields];
  v5 = @"YES";
  if ([(SUCorePolicyDocumentationDownload *)self allowsCellular])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(SUCorePolicyDocumentationDownload *)self discretionary])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(SUCorePolicyDocumentationDownload *)self disableUI])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(SUCorePolicyDocumentationDownload *)self requiresPowerPluggedIn])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [(SUCorePolicyDocumentationDownload *)self downloadTimeoutSecs];
  if (![(SUCorePolicyDocumentationDownload *)self requiresInexpensiveAccess])
  {
    v5 = @"NO";
  }

  v11 = [(SUCorePolicyDocumentationDownload *)self additionalOptions];
  if (v11)
  {
    v12 = [(SUCorePolicyDocumentationDownload *)self additionalOptions];
    v13 = [v3 stringWithFormat:@"SUCorePolicyDocumentationDownload(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|requiresPowerPluggedIn:%@|downloadTimeoutSecs:%d|requiresInexpensiveAccess:%@|additionalOptions:%@)", v4, v6, v7, v8, v9, v10, v5, v12];
  }

  else
  {
    v13 = [v3 stringWithFormat:@"SUCorePolicyDocumentationDownload(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|requiresPowerPluggedIn:%@|downloadTimeoutSecs:%d|requiresInexpensiveAccess:%@|additionalOptions:%@)", v4, v6, v7, v8, v9, v10, v5, @"none"];
  }

  return v13;
}

- (id)summary
{
  if ([(SUCorePolicyDocumentationDownload *)self specifiedFields])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|fields=%llX", -[SUCorePolicyDocumentationDownload specifiedFields](self, "specifiedFields")];
    v4 = [&stru_28469CC48 stringByAppendingString:v3];
  }

  else
  {
    v4 = &stru_28469CC48;
  }

  if ([(SUCorePolicyDocumentationDownload *)self allowsCellular])
  {
    v5 = [(__CFString *)v4 stringByAppendingString:@"|cellular"];

    v4 = v5;
  }

  if ([(SUCorePolicyDocumentationDownload *)self discretionary])
  {
    v6 = @"|discretionary";
  }

  else
  {
    v6 = @"|non-discretionary";
  }

  v7 = [(__CFString *)v4 stringByAppendingString:v6];

  if ([(SUCorePolicyDocumentationDownload *)self disableUI])
  {
    v8 = @"|UIDisabled";
  }

  else
  {
    v8 = @"|UIEnabled";
  }

  v9 = [v7 stringByAppendingString:v8];

  if ([(SUCorePolicyDocumentationDownload *)self requiresPowerPluggedIn])
  {
    v10 = [v9 stringByAppendingString:@"|power"];

    v9 = v10;
  }

  if ([(SUCorePolicyDocumentationDownload *)self downloadTimeoutSecs]!= 120)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|documentationDownloadTimeout=%d", -[SUCorePolicyDocumentationDownload downloadTimeoutSecs](self, "downloadTimeoutSecs")];
    v12 = [v9 stringByAppendingString:v11];

    v9 = v12;
  }

  if ([(SUCorePolicyDocumentationDownload *)self requiresInexpensiveAccess])
  {
    v13 = [v9 stringByAppendingString:@"|cheapAccess"];

    v9 = v13;
  }

  v14 = [(SUCorePolicyDocumentationDownload *)self additionalOptions];
  if (v14)
  {
    v15 = @"|withAdditionalOptions";
  }

  else
  {
    v15 = @"|noAdditionalOptions";
  }

  v16 = [v9 stringByAppendingString:v15];

  if (([v16 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v17 = [v16 stringByAppendingString:@"|"];

    v16 = v17;
  }

  return v16;
}

@end