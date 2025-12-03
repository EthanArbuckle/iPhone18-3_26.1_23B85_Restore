@interface _UINavigationBarNSToolbarLayout
- (id)_initWithLayout:(id)layout;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _UINavigationBarNSToolbarLayout

- (id)_initWithLayout:(id)layout
{
  layoutCopy = layout;
  v34.receiver = self;
  v34.super_class = _UINavigationBarNSToolbarLayout;
  v5 = [(_UINavigationBarNSToolbarLayout *)&v34 init];
  v6 = v5;
  if (v5)
  {
    v5->_style = *(layoutCopy + 2);
    v5->_location = *(layoutCopy + 3);
    v7 = [*(layoutCopy + 4) copy];
    customizationIdentifier = v6->_customizationIdentifier;
    v6->_customizationIdentifier = v7;

    v9 = [*(layoutCopy + 5) copy];
    title = v6->_title;
    v6->_title = v9;

    v11 = [*(layoutCopy + 6) copy];
    subtitle = v6->_subtitle;
    v6->_subtitle = v11;

    v6->_isTitleSectionHidden = *(layoutCopy + 8);
    v13 = [*(layoutCopy + 7) copy];
    representedURL = v6->_representedURL;
    v6->_representedURL = v13;

    v15 = [*(layoutCopy + 8) copy];
    representedDragItemsProvider = v6->_representedDragItemsProvider;
    v6->_representedDragItemsProvider = v15;

    objc_storeStrong(&v6->_bottomPalette, *(layoutCopy + 9));
    v17 = [*(layoutCopy + 10) copy];
    staticLeadingItemGroups = v6->_staticLeadingItemGroups;
    v6->_staticLeadingItemGroups = v17;

    v19 = [*(layoutCopy + 11) copy];
    leadingGroups = v6->_leadingGroups;
    v6->_leadingGroups = v19;

    v21 = [*(layoutCopy + 12) copy];
    centerGroupsCustomized = v6->_centerGroupsCustomized;
    v6->_centerGroupsCustomized = v21;

    v23 = [*(layoutCopy + 13) copy];
    centerGroupsFull = v6->_centerGroupsFull;
    v6->_centerGroupsFull = v23;

    v25 = [*(layoutCopy + 14) copy];
    trailingGroups = v6->_trailingGroups;
    v6->_trailingGroups = v25;

    objc_storeStrong(&v6->_pinnedTrailingGroup, *(layoutCopy + 15));
    v27 = [*(layoutCopy + 16) copy];
    staticTrailingItemGroups = v6->_staticTrailingItemGroups;
    v6->_staticTrailingItemGroups = v27;

    v6->_showSidebarToggle = *(layoutCopy + 9);
    v29 = [*(layoutCopy + 17) copy];
    backButtonTitle = v6->_backButtonTitle;
    v6->_backButtonTitle = v29;

    objc_storeStrong(&v6->_backButtonImage, *(layoutCopy + 18));
    v31 = [*(layoutCopy + 19) copy];
    backButtonHandler = v6->_backButtonHandler;
    v6->_backButtonHandler = v31;

    objc_storeStrong(&v6->_centeredInlineSearchTextField, *(layoutCopy + 21));
    objc_storeStrong(&v6->_trailingInlineSearchTextField, *(layoutCopy + 20));
    v6->_isParentVCPresentingFullScreen = *(layoutCopy + 10);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initWithLayout:self];
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = _UINavigationBarNSToolbarLayout;
  v3 = [(_UINavigationBarNSToolbarLayout *)&v9 description];
  v4 = [v3 mutableCopy];

  v5 = self->_location - 1;
  if (v5 <= 3)
  {
    [v4 appendString:off_1E710A580[v5]];
  }

  if (self->_customizationIdentifier)
  {
    [v4 appendFormat:@" customizationIdentifier='%@'", self->_customizationIdentifier];
  }

  if (self->_title)
  {
    [v4 appendFormat:@" title='%@'", self->_title];
  }

  if (self->_subtitle)
  {
    [v4 appendFormat:@" subtitle='%@'", self->_subtitle];
  }

  if (self->_isTitleSectionHidden)
  {
    [v4 appendFormat:@" isTitleSectionHidden=YES"];
  }

  if (self->_isParentVCPresentingFullScreen)
  {
    [v4 appendFormat:@" isParentVCPresentingFullScreen=YES"];
  }

  if (self->_representedURL)
  {
    [v4 appendFormat:@" representedURL='%@'", self->_representedURL];
  }

  representedDragItemsProvider = self->_representedDragItemsProvider;
  if (representedDragItemsProvider)
  {
    v7 = _Block_copy(representedDragItemsProvider);
    [v4 appendFormat:@" representedDragItemsProvider='%@'", v7];
  }

  return v4;
}

@end