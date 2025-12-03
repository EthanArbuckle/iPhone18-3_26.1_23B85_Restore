@interface SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions
- (SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions)initWithBSXPCCoder:(id)coder;
- (SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions)initWithLayoutMode:(id)mode descriptions:(id)descriptions;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions

- (SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions)initWithLayoutMode:(id)mode descriptions:(id)descriptions
{
  modeCopy = mode;
  descriptionsCopy = descriptions;
  v12.receiver = self;
  v12.super_class = SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions;
  v9 = [(SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutMode, mode);
    objc_storeStrong(&v10->_descriptions, descriptions);
  }

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  layoutMode = self->_layoutMode;
  coderCopy = coder;
  [coderCopy encodeObject:layoutMode forKey:@"layoutMode"];
  [coderCopy encodeCollection:self->_descriptions forKey:@"descriptions"];
}

- (SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutMode"];
  v6 = objc_opt_class();
  v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"descriptions"];

  v8 = [(SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions *)self initWithLayoutMode:v5 descriptions:v7];
  return v8;
}

@end