@interface SUCorePolicyLoadBrain
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyLoadBrain)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCorePolicyLoadBrain

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3
{
  additionalOptions = self->_additionalOptions;
  self->_specifiedFields = 0;
  self->_additionalOptions = 0;
  *&self->_allowsCellular = 0;
  self->_liveServerCatalogOnly = 0;
  self->_skipPhase = a3;
  MEMORY[0x2821F96F8]();
}

- (SUCorePolicyLoadBrain)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUCorePolicyLoadBrain;
  v5 = [(SUCorePolicyLoadBrain *)&v8 init];
  if (v5)
  {
    v5->_specifiedFields = [v4 decodeInt64ForKey:@"SpecifiedFields"];
    v5->_allowsCellular = [v4 decodeBoolForKey:@"AllowsCellular"];
    v5->_discretionary = [v4 decodeBoolForKey:@"Discretionary"];
    v5->_disableUI = [v4 decodeBoolForKey:@"DisableUI"];
    v5->_liveServerCatalogOnly = [v4 decodeBoolForKey:@"LiveServerCatalogOnly"];
    v5->_skipPhase = [v4 decodeBoolForKey:@"SkipPhase"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SUCorePolicyLoadBrain specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [v4 encodeBool:-[SUCorePolicyLoadBrain allowsCellular](self forKey:{"allowsCellular"), @"AllowsCellular"}];
  [v4 encodeBool:-[SUCorePolicyLoadBrain discretionary](self forKey:{"discretionary"), @"Discretionary"}];
  [v4 encodeBool:-[SUCorePolicyLoadBrain disableUI](self forKey:{"disableUI"), @"DisableUI"}];
  [v4 encodeBool:-[SUCorePolicyLoadBrain liveServerCatalogOnly](self forKey:{"liveServerCatalogOnly"), @"LiveServerCatalogOnly"}];
  [v4 encodeBool:-[SUCorePolicyLoadBrain skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setAllowsCellular:{-[SUCorePolicyLoadBrain allowsCellular](self, "allowsCellular")}];
  [v5 setDiscretionary:{-[SUCorePolicyLoadBrain discretionary](self, "discretionary")}];
  [v5 setDisableUI:{-[SUCorePolicyLoadBrain disableUI](self, "disableUI")}];
  [v5 setLiveServerCatalogOnly:{-[SUCorePolicyLoadBrain liveServerCatalogOnly](self, "liveServerCatalogOnly")}];
  [v5 setSkipPhase:{-[SUCorePolicyLoadBrain skipPhase](self, "skipPhase")}];
  v6 = [(SUCorePolicyLoadBrain *)self additionalOptions];
  v7 = [v6 copyWithZone:a3];
  [v5 setAdditionalOptions:v7];

  [v5 setSpecifiedFields:{-[SUCorePolicyLoadBrain specifiedFields](self, "specifiedFields")}];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCorePolicyLoadBrain *)v5 allowsCellular];
      if (v6 == [(SUCorePolicyLoadBrain *)self allowsCellular]&& (v7 = [(SUCorePolicyLoadBrain *)v5 discretionary], v7 == [(SUCorePolicyLoadBrain *)self discretionary]) && (v8 = [(SUCorePolicyLoadBrain *)v5 disableUI], v8 == [(SUCorePolicyLoadBrain *)self disableUI]) && (v9 = [(SUCorePolicyLoadBrain *)v5 liveServerCatalogOnly], v9 == [(SUCorePolicyLoadBrain *)self liveServerCatalogOnly]) && (v10 = [(SUCorePolicyLoadBrain *)v5 skipPhase], v10 == [(SUCorePolicyLoadBrain *)self skipPhase]))
      {
        v13 = [(SUCorePolicyLoadBrain *)v5 specifiedFields];
        v11 = v13 == [(SUCorePolicyLoadBrain *)self specifiedFields];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUCorePolicyLoadBrain *)self specifiedFields];
  v5 = @"YES";
  if ([(SUCorePolicyLoadBrain *)self allowsCellular])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(SUCorePolicyLoadBrain *)self discretionary])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(SUCorePolicyLoadBrain *)self disableUI])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(SUCorePolicyLoadBrain *)self liveServerCatalogOnly])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (![(SUCorePolicyLoadBrain *)self skipPhase])
  {
    v5 = @"NO";
  }

  v10 = [(SUCorePolicyLoadBrain *)self additionalOptions];
  if (v10)
  {
    v11 = [(SUCorePolicyLoadBrain *)self additionalOptions];
    v12 = [v3 stringWithFormat:@"SUCorePolicyLoadBrain(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|liveServerCatalogOnly:%@|skipPhase:%@|additionalOptions:%@)", v4, v6, v7, v8, v9, v5, v11];
  }

  else
  {
    v12 = [v3 stringWithFormat:@"SUCorePolicyLoadBrain(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|liveServerCatalogOnly:%@|skipPhase:%@|additionalOptions:%@)", v4, v6, v7, v8, v9, v5, @"none"];
  }

  return v12;
}

- (id)summary
{
  if ([(SUCorePolicyLoadBrain *)self specifiedFields])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|fields=%llX", -[SUCorePolicyLoadBrain specifiedFields](self, "specifiedFields")];
    v4 = [&stru_28469CC48 stringByAppendingString:v3];
  }

  else
  {
    v4 = &stru_28469CC48;
  }

  if ([(SUCorePolicyLoadBrain *)self allowsCellular])
  {
    v5 = [(__CFString *)v4 stringByAppendingString:@"|cellular"];

    v4 = v5;
  }

  if ([(SUCorePolicyLoadBrain *)self discretionary])
  {
    v6 = @"|discretionary";
  }

  else
  {
    v6 = @"|non-discretionary";
  }

  v7 = [(__CFString *)v4 stringByAppendingString:v6];

  if ([(SUCorePolicyLoadBrain *)self disableUI])
  {
    v8 = @"UIDisabled";
  }

  else
  {
    v8 = @"UIEnabled";
  }

  v9 = [v7 stringByAppendingString:v8];

  if ([(SUCorePolicyLoadBrain *)self liveServerCatalogOnly])
  {
    v10 = [v9 stringByAppendingString:@"|liveServerCatalogOnly"];

    v9 = v10;
  }

  if ([(SUCorePolicyLoadBrain *)self skipPhase])
  {
    v11 = [v9 stringByAppendingString:@"|skipPhase"];

    v9 = v11;
  }

  v12 = [(SUCorePolicyLoadBrain *)self additionalOptions];
  if (v12)
  {
    v13 = @"|withAdditionalOptions";
  }

  else
  {
    v13 = @"|noAdditionalOptions";
  }

  v14 = [v9 stringByAppendingString:v13];

  if (([v14 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v15 = [v14 stringByAppendingString:@"|"];

    v14 = v15;
  }

  return v14;
}

@end