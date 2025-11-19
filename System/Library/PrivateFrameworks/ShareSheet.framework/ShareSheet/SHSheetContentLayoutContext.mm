@interface SHSheetContentLayoutContext
- (NSDirectionalEdgeInsets)viewDirectionalLayoutMargins;
- (SHSheetContentLayoutContext)initWithSectionIdentifier:(id)a3 dataSourceSnapshot:(id)a4 environment:(id)a5;
@end

@implementation SHSheetContentLayoutContext

- (SHSheetContentLayoutContext)initWithSectionIdentifier:(id)a3 dataSourceSnapshot:(id)a4 environment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = SHSheetContentLayoutContext;
  v11 = [(SHSheetContentLayoutContext *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    sectionIdentifier = v11->_sectionIdentifier;
    v11->_sectionIdentifier = v12;

    objc_storeStrong(&v11->_dataSourceSnapshot, a4);
    objc_storeStrong(&v11->_environment, a5);
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