@interface UICollectionLayoutListConfiguration
- (UICollectionLayoutListConfiguration)init;
- (UICollectionLayoutListConfiguration)initWithAppearance:(UICollectionLayoutListAppearance)appearance;
- (UIListSeparatorConfiguration)separatorConfiguration;
- (id)_spiConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setCornerRadius:(double)radius;
- (void)setHeaderTopPadding:(CGFloat)headerTopPadding;
- (void)setSeparatorConfiguration:(UIListSeparatorConfiguration *)separatorConfiguration;
@end

@implementation UICollectionLayoutListConfiguration

- (UIListSeparatorConfiguration)separatorConfiguration
{
  v2 = [(UIListSeparatorConfiguration *)self->_separatorConfiguration copy];

  return v2;
}

- (id)_spiConfiguration
{
  v3 = objc_opt_new();
  [v3 set_apiVersion:1];
  [v3 set_headerElementKind:@"UICollectionElementKindSectionHeader"];
  [v3 set_footerElementKind:@"UICollectionElementKindSectionFooter"];
  if ((self->_appearance - 1) >= 4)
  {
    appearance = 0;
  }

  else
  {
    appearance = self->_appearance;
  }

  [v3 setAppearanceStyle:appearance];
  [v3 setSeparatorStyle:self->_showsSeparators];
  v5 = [(UIListSeparatorConfiguration *)self->_separatorConfiguration __copyWithSubclass:objc_opt_class() inZone:0];
  [v3 _setSeparatorConfiguration:v5];

  v6 = [self->_itemSeparatorHandler copy];
  [v3 _setItemSeparatorHandler:v6];

  [v3 set_backgroundColor:self->_backgroundColor];
  [v3 setLeadingSwipeActionsConfigurationProvider:self->_leadingSwipeActionsConfigurationProvider];
  [v3 setTrailingSwipeActionsConfigurationProvider:self->_trailingSwipeActionsConfigurationProvider];
  [v3 setWillBeginSwipingHandler:self->_willBeginSwipingHandler];
  [v3 setDidEndSwipingHandler:self->_didEndSwipingHandler];
  if (self->_headerMode == 1)
  {
    v7 = 1.79769313e308;
  }

  else
  {
    v7 = -1000.0;
  }

  [v3 setSectionHeaderHeight:v7];
  if (self->_footerMode == 1)
  {
    v8 = 1.79769313e308;
  }

  else
  {
    v8 = -1000.0;
  }

  [v3 setSectionFooterHeight:v8];
  [v3 setStylesFirstItemAsHeader:self->_headerMode == 2];
  [v3 setHeaderTopPadding:self->_headerTopPadding];
  [v3 setCornerRadius:self->_cornerRadius];
  [v3 setSectionHeaderHugsContent:self->_contentHuggingElements & 1];
  [v3 setHasCompactSectionSpacing:self->_hasCompactSectionSpacing];

  return v3;
}

- (UICollectionLayoutListConfiguration)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"init is unavailable on %@.", v6}];

  return 0;
}

- (UICollectionLayoutListConfiguration)initWithAppearance:(UICollectionLayoutListAppearance)appearance
{
  v16.receiver = self;
  v16.super_class = UICollectionLayoutListConfiguration;
  v4 = [(UICollectionLayoutListConfiguration *)&v16 init];
  if (v4)
  {
    v5 = +[UITraitCollection _fallbackTraitCollection];
    if ((appearance - 1) >= 4)
    {
      v6 = UICollectionLayoutListAppearancePlain;
    }

    else
    {
      v6 = appearance;
    }

    v7 = +[_UIListMetrics sharedMetrics];
    v8 = [v7 behaviorsForListWithStyle:v6 traitCollection:v5];

    v15 = 0u;
    v9 = [_UIListMetrics sharedMetrics:0];
    v10 = v9;
    if (v9)
    {
      [v9 metricsForSeparatorWithListStyle:v6 traitCollection:v5];
    }

    else
    {
      v15 = 0u;
    }

    v4->_contentHuggingElements = (v8 >> 1) & 1;
    v4->_appearance = appearance;
    v11 = [[UIListSeparatorConfiguration alloc] initWithListAppearance:appearance];
    separatorConfiguration = v4->_separatorConfiguration;
    v4->_separatorConfiguration = v11;

    v13 = dyld_program_sdk_at_least() ^ 1;
    if (*(&v15 + 1))
    {
      LOBYTE(v13) = 1;
    }

    v4->_showsSeparators = v13;
    v4->_headerTopPadding = 1.79769313e308;
    v4->_cornerRadius = 1.79769313e308;
  }

  return v4;
}

- (void)setHeaderTopPadding:(CGFloat)headerTopPadding
{
  if (headerTopPadding < 0.0)
  {
    headerTopPadding = 1.79769313e308;
  }

  self->_headerTopPadding = headerTopPadding;
}

- (void)_setCornerRadius:(double)radius
{
  if (radius < 0.0)
  {
    radius = 1.79769313e308;
  }

  self->_cornerRadius = radius;
}

- (void)setSeparatorConfiguration:(UIListSeparatorConfiguration *)separatorConfiguration
{
  if (!separatorConfiguration)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Setting a nil separatorConfiguration is not supported" userInfo:0];
    objc_exception_throw(v6);
  }

  v4 = [(UIListSeparatorConfiguration *)separatorConfiguration copy];
  v5 = self->_separatorConfiguration;
  self->_separatorConfiguration = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithAppearance:", self->_appearance}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 9) = self->_showsSeparators;
    v6 = [(UIListSeparatorConfiguration *)self->_separatorConfiguration copy];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [self->_itemSeparatorHandler copy];
    v9 = *(v5 + 56);
    *(v5 + 56) = v8;

    objc_storeStrong((v5 + 64), self->_backgroundColor);
    v10 = [self->_leadingSwipeActionsConfigurationProvider copy];
    v11 = *(v5 + 72);
    *(v5 + 72) = v10;

    v12 = [self->_trailingSwipeActionsConfigurationProvider copy];
    v13 = *(v5 + 80);
    *(v5 + 80) = v12;

    v14 = [self->_willBeginSwipingHandler copy];
    v15 = *(v5 + 32);
    *(v5 + 32) = v14;

    v16 = [self->_didEndSwipingHandler copy];
    v17 = *(v5 + 40);
    *(v5 + 40) = v16;

    *(v5 + 88) = self->_headerMode;
    *(v5 + 96) = self->_footerMode;
    *(v5 + 104) = self->_headerTopPadding;
    *(v5 + 24) = self->_cornerRadius;
    *(v5 + 112) = self->_contentHuggingElements;
    *(v5 + 8) = self->_hasCompactSectionSpacing;
  }

  return v5;
}

@end