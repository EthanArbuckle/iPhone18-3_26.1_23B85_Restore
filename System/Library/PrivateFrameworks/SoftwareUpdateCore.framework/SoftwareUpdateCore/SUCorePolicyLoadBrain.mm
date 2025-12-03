@interface SUCorePolicyLoadBrain
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyLoadBrain)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePolicyLoadBrain

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set
{
  additionalOptions = self->_additionalOptions;
  self->_specifiedFields = 0;
  self->_additionalOptions = 0;
  *&self->_allowsCellular = 0;
  self->_liveServerCatalogOnly = 0;
  self->_skipPhase = set;
  MEMORY[0x2821F96F8]();
}

- (SUCorePolicyLoadBrain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SUCorePolicyLoadBrain;
  v5 = [(SUCorePolicyLoadBrain *)&v8 init];
  if (v5)
  {
    v5->_specifiedFields = [coderCopy decodeInt64ForKey:@"SpecifiedFields"];
    v5->_allowsCellular = [coderCopy decodeBoolForKey:@"AllowsCellular"];
    v5->_discretionary = [coderCopy decodeBoolForKey:@"Discretionary"];
    v5->_disableUI = [coderCopy decodeBoolForKey:@"DisableUI"];
    v5->_liveServerCatalogOnly = [coderCopy decodeBoolForKey:@"LiveServerCatalogOnly"];
    v5->_skipPhase = [coderCopy decodeBoolForKey:@"SkipPhase"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SUCorePolicyLoadBrain specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [coderCopy encodeBool:-[SUCorePolicyLoadBrain allowsCellular](self forKey:{"allowsCellular"), @"AllowsCellular"}];
  [coderCopy encodeBool:-[SUCorePolicyLoadBrain discretionary](self forKey:{"discretionary"), @"Discretionary"}];
  [coderCopy encodeBool:-[SUCorePolicyLoadBrain disableUI](self forKey:{"disableUI"), @"DisableUI"}];
  [coderCopy encodeBool:-[SUCorePolicyLoadBrain liveServerCatalogOnly](self forKey:{"liveServerCatalogOnly"), @"LiveServerCatalogOnly"}];
  [coderCopy encodeBool:-[SUCorePolicyLoadBrain skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAllowsCellular:{-[SUCorePolicyLoadBrain allowsCellular](self, "allowsCellular")}];
  [v5 setDiscretionary:{-[SUCorePolicyLoadBrain discretionary](self, "discretionary")}];
  [v5 setDisableUI:{-[SUCorePolicyLoadBrain disableUI](self, "disableUI")}];
  [v5 setLiveServerCatalogOnly:{-[SUCorePolicyLoadBrain liveServerCatalogOnly](self, "liveServerCatalogOnly")}];
  [v5 setSkipPhase:{-[SUCorePolicyLoadBrain skipPhase](self, "skipPhase")}];
  additionalOptions = [(SUCorePolicyLoadBrain *)self additionalOptions];
  v7 = [additionalOptions copyWithZone:zone];
  [v5 setAdditionalOptions:v7];

  [v5 setSpecifiedFields:{-[SUCorePolicyLoadBrain specifiedFields](self, "specifiedFields")}];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      allowsCellular = [(SUCorePolicyLoadBrain *)v5 allowsCellular];
      if (allowsCellular == [(SUCorePolicyLoadBrain *)self allowsCellular]&& (v7 = [(SUCorePolicyLoadBrain *)v5 discretionary], v7 == [(SUCorePolicyLoadBrain *)self discretionary]) && (v8 = [(SUCorePolicyLoadBrain *)v5 disableUI], v8 == [(SUCorePolicyLoadBrain *)self disableUI]) && (v9 = [(SUCorePolicyLoadBrain *)v5 liveServerCatalogOnly], v9 == [(SUCorePolicyLoadBrain *)self liveServerCatalogOnly]) && (v10 = [(SUCorePolicyLoadBrain *)v5 skipPhase], v10 == [(SUCorePolicyLoadBrain *)self skipPhase]))
      {
        specifiedFields = [(SUCorePolicyLoadBrain *)v5 specifiedFields];
        v11 = specifiedFields == [(SUCorePolicyLoadBrain *)self specifiedFields];
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
  specifiedFields = [(SUCorePolicyLoadBrain *)self specifiedFields];
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

  additionalOptions = [(SUCorePolicyLoadBrain *)self additionalOptions];
  if (additionalOptions)
  {
    additionalOptions2 = [(SUCorePolicyLoadBrain *)self additionalOptions];
    v12 = [v3 stringWithFormat:@"SUCorePolicyLoadBrain(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|liveServerCatalogOnly:%@|skipPhase:%@|additionalOptions:%@)", specifiedFields, v6, v7, v8, v9, v5, additionalOptions2];
  }

  else
  {
    v12 = [v3 stringWithFormat:@"SUCorePolicyLoadBrain(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|liveServerCatalogOnly:%@|skipPhase:%@|additionalOptions:%@)", specifiedFields, v6, v7, v8, v9, v5, @"none"];
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

  additionalOptions = [(SUCorePolicyLoadBrain *)self additionalOptions];
  if (additionalOptions)
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