@interface SKUIProductPageTableSwooshSection
- (SKUIColorScheme)colorScheme;
- (SKUIProductPageTableSwooshSection)initWithItems:(id)a3 title:(id)a4;
- (SKUIProductPageTableSwooshSection)initWithLockups:(id)a3 title:(id)a4;
- (id)_artworkLoader;
- (id)_missingItemLoader;
- (id)_swooshViewController;
- (id)headerViewForTableView:(id)a3;
- (id)swoosh:(id)a3 imageForCellAtIndex:(int64_t)a4;
- (void)dealloc;
- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5;
- (void)setColorScheme:(id)a3;
- (void)swoosh:(id)a3 didSelectCellAtIndex:(int64_t)a4;
@end

@implementation SKUIProductPageTableSwooshSection

- (SKUIProductPageTableSwooshSection)initWithItems:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageTableSwooshSection initWithItems:title:];
  }

  v13.receiver = self;
  v13.super_class = SKUIProductPageTableSwooshSection;
  v8 = [(SKUIProductPageTableSwooshSection *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(SKUIItemList);
    [(SKUIItemList *)v9 setItems:v6];
    [(SKUIItemList *)v9 setTitle:v7];
    v10 = [[SKUISwooshPageComponent alloc] initWithItemList:v9];
    swooshComponent = v8->_swooshComponent;
    v8->_swooshComponent = v10;
  }

  return v8;
}

- (SKUIProductPageTableSwooshSection)initWithLockups:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageTableSwooshSection initWithLockups:title:];
  }

  v12.receiver = self;
  v12.super_class = SKUIProductPageTableSwooshSection;
  v8 = [(SKUIProductPageTableSwooshSection *)&v12 init];
  if (v8)
  {
    v9 = [[SKUISwooshPageComponent alloc] initWithLockups:v6 swooshType:0 title:v7];
    swooshComponent = v8->_swooshComponent;
    v8->_swooshComponent = v9;
  }

  return v8;
}

- (void)dealloc
{
  [(SKUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  [(SKUILockupSwooshViewController *)self->_swooshViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIProductPageTableSwooshSection;
  [(SKUIProductPageTableSwooshSection *)&v3 dealloc];
}

- (SKUIColorScheme)colorScheme
{
  v2 = [(SKUIProductPageTableSwooshSection *)self _swooshViewController];
  v3 = [v2 colorScheme];

  return v3;
}

- (void)setColorScheme:(id)a3
{
  v4 = a3;
  v5 = [(SKUIProductPageTableSwooshSection *)self _swooshViewController];
  [v5 setColorScheme:v4];
}

- (id)headerViewForTableView:(id)a3
{
  if (!self->_missingItemLoader && [(SKUISwooshPageComponent *)self->_swooshComponent isMissingItemData])
  {
    v4 = [(SKUIProductPageTableSwooshSection *)self _missingItemLoader];
    [v4 loadItemsForPageComponent:self->_swooshComponent startIndex:0 reason:1];
  }

  v5 = [(SKUIProductPageTableSwooshSection *)self _swooshViewController];
  v6 = [v5 view];

  return v6;
}

- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5
{
  v10 = a4;
  if ([v10 count])
  {
    v6 = [(SKUISwooshPageComponent *)self->_swooshComponent _updateLockupItemsWithItems:v10];
    swooshViewController = self->_swooshViewController;
    v8 = [(SKUISwooshPageComponent *)self->_swooshComponent lockups];
    [(SKUILockupSwooshViewController *)swooshViewController setLockups:v8];

    v9 = [(SKUIProductPageTableSwooshSection *)self _artworkLoader];
    [v9 loadImagesForNextPageWithReason:0];
  }
}

- (void)swoosh:(id)a3 didSelectCellAtIndex:(int64_t)a4
{
  if (self->_actionBlock)
  {
    v6 = [a3 lockups];
    v9 = [v6 objectAtIndex:a4];

    actionBlock = self->_actionBlock;
    v8 = [v9 item];
    actionBlock[2](actionBlock, v8);
  }
}

- (id)swoosh:(id)a3 imageForCellAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(SKUIProductPageTableSwooshSection *)self _artworkLoader];
  v8 = [v6 lockups];

  v9 = [v8 objectAtIndex:a4];

  v10 = [v9 item];
  if (v10)
  {
    v11 = [v7 cachedImageForItem:v10];
    if (v11)
    {
      goto LABEL_6;
    }

    [v7 loadImageForItem:v10 reason:1];
    v12 = v7;
    v13 = v10;
  }

  else
  {
    v12 = v7;
    v13 = 0;
  }

  v11 = [v12 placeholderImageForItem:v13];
LABEL_6:

  return v11;
}

- (id)_artworkLoader
{
  artworkLoader = self->_artworkLoader;
  if (!artworkLoader)
  {
    v4 = [SKUILockupSwooshArtworkLoader alloc];
    v5 = [(SKUIProductPageTableSwooshSection *)self resourceLoader];
    v6 = [(SKUIProductPageTableSwooshSection *)self _swooshViewController];
    v7 = [(SKUILockupSwooshArtworkLoader *)v4 initWithArtworkLoader:v5 swoosh:v6];
    v8 = self->_artworkLoader;
    self->_artworkLoader = v7;

    artworkLoader = self->_artworkLoader;
  }

  return artworkLoader;
}

- (id)_missingItemLoader
{
  missingItemLoader = self->_missingItemLoader;
  if (!missingItemLoader)
  {
    v4 = [SKUIMissingItemLoader alloc];
    v5 = [(SKUIProductPageTableSwooshSection *)self resourceLoader];
    v6 = [(SKUIMissingItemLoader *)v4 initWithResourceLoader:v5];
    v7 = self->_missingItemLoader;
    self->_missingItemLoader = v6;

    [(SKUIMissingItemLoader *)self->_missingItemLoader setDelegate:self];
    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

- (id)_swooshViewController
{
  swooshViewController = self->_swooshViewController;
  if (!swooshViewController)
  {
    v4 = [[SKUILockupSwooshViewController alloc] initWithSwoosh:self->_swooshComponent];
    v5 = self->_swooshViewController;
    self->_swooshViewController = v4;

    v6 = self->_swooshViewController;
    v7 = [(SKUIProductPageTableSection *)self clientContext];
    [(SKUILockupSwooshViewController *)v6 setClientContext:v7];

    [(SKUILockupSwooshViewController *)self->_swooshViewController setDelegate:self];
    v8 = self->_swooshViewController;
    v9 = [(SKUILockupSwooshViewController *)v8 artworkContext];
    v10 = [v9 iconConsumer];
    [v10 imageSize];
    [(SKUILockupSwooshViewController *)v8 _setExpectedImageSize:?];

    swooshViewController = self->_swooshViewController;
  }

  return swooshViewController;
}

- (void)initWithItems:title:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageTableSwooshSection initWithItems:title:]";
}

- (void)initWithLockups:title:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageTableSwooshSection initWithLockups:title:]";
}

@end