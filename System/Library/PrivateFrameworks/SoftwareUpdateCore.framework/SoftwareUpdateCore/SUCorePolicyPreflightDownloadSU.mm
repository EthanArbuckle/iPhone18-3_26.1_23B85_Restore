@interface SUCorePolicyPreflightDownloadSU
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyPreflightDownloadSU)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePolicyPreflightDownloadSU

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set
{
  basePreflightOptions = self->_basePreflightOptions;
  self->_specifiedFields = 0;
  self->_basePreflightOptions = 0;
  *&self->_allowsCellular = 0;
  self->_disableUI = 0;
  self->_skipPhase = set;

  additionalOptions = self->_additionalOptions;
  self->_additionalOptions = 0;
}

- (SUCorePolicyPreflightDownloadSU)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCorePolicyPreflightDownloadSU;
  v5 = [(SUCorePolicyPreflightDownloadSU *)&v9 init];
  if (v5)
  {
    v5->_specifiedFields = [coderCopy decodeInt64ForKey:@"SpecifiedFields"];
    v5->_allowsCellular = [coderCopy decodeBoolForKey:@"AllowsCellular"];
    v5->_discretionary = [coderCopy decodeBoolForKey:@"Discretionary"];
    v5->_disableUI = [coderCopy decodeBoolForKey:@"DisableUI"];
    v5->_skipPhase = [coderCopy decodeBoolForKey:@"SkipPhase"];
    basePreflightOptions = v5->_basePreflightOptions;
    v5->_basePreflightOptions = 0;

    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SUCorePolicyPreflightDownloadSU specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [coderCopy encodeBool:-[SUCorePolicyPreflightDownloadSU allowsCellular](self forKey:{"allowsCellular"), @"AllowsCellular"}];
  [coderCopy encodeBool:-[SUCorePolicyPreflightDownloadSU discretionary](self forKey:{"discretionary"), @"Discretionary"}];
  [coderCopy encodeBool:-[SUCorePolicyPreflightDownloadSU disableUI](self forKey:{"disableUI"), @"DisableUI"}];
  [coderCopy encodeBool:-[SUCorePolicyPreflightDownloadSU skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAllowsCellular:{-[SUCorePolicyPreflightDownloadSU allowsCellular](self, "allowsCellular")}];
  [v5 setDiscretionary:{-[SUCorePolicyPreflightDownloadSU discretionary](self, "discretionary")}];
  [v5 setDisableUI:{-[SUCorePolicyPreflightDownloadSU disableUI](self, "disableUI")}];
  [v5 setSkipPhase:{-[SUCorePolicyPreflightDownloadSU skipPhase](self, "skipPhase")}];
  basePreflightOptions = [(SUCorePolicyPreflightDownloadSU *)self basePreflightOptions];
  v7 = [basePreflightOptions copyWithZone:zone];
  [v5 setBasePreflightOptions:v7];

  additionalOptions = [(SUCorePolicyPreflightDownloadSU *)self additionalOptions];
  v9 = [additionalOptions copyWithZone:zone];
  [v5 setAdditionalOptions:v9];

  [v5 setSpecifiedFields:{-[SUCorePolicyPreflightDownloadSU specifiedFields](self, "specifiedFields")}];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      allowsCellular = [(SUCorePolicyPreflightDownloadSU *)v5 allowsCellular];
      if (allowsCellular == [(SUCorePolicyPreflightDownloadSU *)self allowsCellular]&& (v7 = [(SUCorePolicyPreflightDownloadSU *)v5 discretionary], v7 == [(SUCorePolicyPreflightDownloadSU *)self discretionary]) && (v8 = [(SUCorePolicyPreflightDownloadSU *)v5 disableUI], v8 == [(SUCorePolicyPreflightDownloadSU *)self disableUI]) && (v9 = [(SUCorePolicyPreflightDownloadSU *)v5 skipPhase], v9 == [(SUCorePolicyPreflightDownloadSU *)self skipPhase]))
      {
        specifiedFields = [(SUCorePolicyPreflightDownloadSU *)v5 specifiedFields];
        v10 = specifiedFields == [(SUCorePolicyPreflightDownloadSU *)self specifiedFields];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  specifiedFields = [(SUCorePolicyPreflightDownloadSU *)self specifiedFields];
  if ([(SUCorePolicyPreflightDownloadSU *)self allowsCellular])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(SUCorePolicyPreflightDownloadSU *)self discretionary])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(SUCorePolicyPreflightDownloadSU *)self disableUI])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(SUCorePolicyPreflightDownloadSU *)self skipPhase])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  basePreflightOptions = [(SUCorePolicyPreflightDownloadSU *)self basePreflightOptions];
  basePreflightOptions2 = @"none";
  if (basePreflightOptions)
  {
    basePreflightOptions2 = [(SUCorePolicyPreflightDownloadSU *)self basePreflightOptions];
  }

  additionalOptions = [(SUCorePolicyPreflightDownloadSU *)self additionalOptions];
  if (additionalOptions)
  {
    additionalOptions2 = [(SUCorePolicyPreflightDownloadSU *)self additionalOptions];
    v12 = [v14 stringWithFormat:@"SUCorePolicyPreflightDownloadSU(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|skipPhase:%@|basePreflightOptions:%@|additionalOptions:%@)", specifiedFields, v4, v5, v6, v7, basePreflightOptions2, additionalOptions2];
  }

  else
  {
    v12 = [v14 stringWithFormat:@"SUCorePolicyPreflightDownloadSU(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|skipPhase:%@|basePreflightOptions:%@|additionalOptions:%@)", specifiedFields, v4, v5, v6, v7, basePreflightOptions2, @"none"];
  }

  if (basePreflightOptions)
  {
  }

  return v12;
}

- (id)summary
{
  if ([(SUCorePolicyPreflightDownloadSU *)self specifiedFields])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|fields=%llX", -[SUCorePolicyPreflightDownloadSU specifiedFields](self, "specifiedFields")];
    v4 = [&stru_28469CC48 stringByAppendingString:v3];
  }

  else
  {
    v4 = &stru_28469CC48;
  }

  if ([(SUCorePolicyPreflightDownloadSU *)self allowsCellular])
  {
    v5 = [(__CFString *)v4 stringByAppendingString:@"|cellular"];

    v4 = v5;
  }

  if ([(SUCorePolicyPreflightDownloadSU *)self discretionary])
  {
    v6 = @"|discretionary";
  }

  else
  {
    v6 = @"|non-discretionary";
  }

  v7 = [(__CFString *)v4 stringByAppendingString:v6];

  if ([(SUCorePolicyPreflightDownloadSU *)self disableUI])
  {
    v8 = @"|UIDisabled";
  }

  else
  {
    v8 = @"|UIEnabled";
  }

  v9 = [v7 stringByAppendingString:v8];

  if ([(SUCorePolicyPreflightDownloadSU *)self skipPhase])
  {
    v10 = [v9 stringByAppendingString:@"|skipPhase"];

    v9 = v10;
  }

  basePreflightOptions = [(SUCorePolicyPreflightDownloadSU *)self basePreflightOptions];
  if (basePreflightOptions)
  {
    v12 = @"|withBasePreflightOptions";
  }

  else
  {
    v12 = @"|noBasePreflightOptions";
  }

  v13 = [v9 stringByAppendingString:v12];

  additionalOptions = [(SUCorePolicyPreflightDownloadSU *)self additionalOptions];
  if (additionalOptions)
  {
    v15 = @"|withAdditionalOptions";
  }

  else
  {
    v15 = @"|noAdditionalOptions";
  }

  v16 = [v13 stringByAppendingString:v15];

  if (([v16 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v17 = [v16 stringByAppendingString:@"|"];

    v16 = v17;
  }

  return v16;
}

@end