@interface SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions
- (SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions)initWithBSXPCCoder:(id)a3;
- (SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions)initWithLayoutMode:(id)a3 descriptions:(id)a4;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions

- (SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions)initWithLayoutMode:(id)a3 descriptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions;
  v9 = [(SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutMode, a3);
    objc_storeStrong(&v10->_descriptions, a4);
  }

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  layoutMode = self->_layoutMode;
  v5 = a3;
  [v5 encodeObject:layoutMode forKey:@"layoutMode"];
  [v5 encodeCollection:self->_descriptions forKey:@"descriptions"];
}

- (SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutMode"];
  v6 = objc_opt_class();
  v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"descriptions"];

  v8 = [(SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions *)self initWithLayoutMode:v5 descriptions:v7];
  return v8;
}

@end