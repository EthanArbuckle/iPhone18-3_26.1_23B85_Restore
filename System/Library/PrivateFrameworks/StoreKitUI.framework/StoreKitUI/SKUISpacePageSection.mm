@interface SKUISpacePageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SKUISpacePageSection)initWithPageComponent:(id)component;
- (id)cellForIndexPath:(id)path;
- (void)willAppearInContext:(id)context;
@end

@implementation SKUISpacePageSection

- (SKUISpacePageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISpacePageSection initWithPageComponent:];
  }

  v7.receiver = self;
  v7.super_class = SKUISpacePageSection;
  v5 = [(SKUIStorePageSection *)&v7 initWithPageComponent:componentCopy];

  return v5;
}

- (void)willAppearInContext:(id)context
{
  collectionView = [context collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SKUISpacePageSectionReuseIdentifier"];
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SKUISpacePageSectionReuseIdentifier" forIndexPath:pathCopy];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  [collectionView bounds];
  v7 = v6;

  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  [pageComponent height];
  v10 = v9;

  v11 = v7;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISpacePageSection initWithPageComponent:]";
}

@end