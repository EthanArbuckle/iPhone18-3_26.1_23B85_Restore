@interface SHSheetContentLayoutContext
- (NSDirectionalEdgeInsets)viewDirectionalLayoutMargins;
- (SHSheetContentLayoutContext)initWithSectionIdentifier:(id)identifier dataSourceSnapshot:(id)snapshot environment:(id)environment;
@end

@implementation SHSheetContentLayoutContext

- (SHSheetContentLayoutContext)initWithSectionIdentifier:(id)identifier dataSourceSnapshot:(id)snapshot environment:(id)environment
{
  identifierCopy = identifier;
  snapshotCopy = snapshot;
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = SHSheetContentLayoutContext;
  v11 = [(SHSheetContentLayoutContext *)&v15 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    sectionIdentifier = v11->_sectionIdentifier;
    v11->_sectionIdentifier = v12;

    objc_storeStrong(&v11->_dataSourceSnapshot, snapshot);
    objc_storeStrong(&v11->_environment, environment);
    v11->_sectionTopContentInset = 0.0;
    v11->_sectionBottomContentInset = 0.0;
    v11->_enableCustomViewSectionFooter = _ShareSheetSolariumEnabled() ^ 1;
    v11->_enableSectionFooter = 1;
  }

  return v11;
}

- (NSDirectionalEdgeInsets)viewDirectionalLayoutMargins
{
  top = self->_viewDirectionalLayoutMargins.top;
  leading = self->_viewDirectionalLayoutMargins.leading;
  bottom = self->_viewDirectionalLayoutMargins.bottom;
  trailing = self->_viewDirectionalLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end