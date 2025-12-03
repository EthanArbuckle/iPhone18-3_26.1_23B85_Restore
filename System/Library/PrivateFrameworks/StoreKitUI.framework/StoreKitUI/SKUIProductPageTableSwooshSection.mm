@interface SKUIProductPageTableSwooshSection
- (SKUIColorScheme)colorScheme;
- (SKUIProductPageTableSwooshSection)initWithItems:(id)items title:(id)title;
- (SKUIProductPageTableSwooshSection)initWithLockups:(id)lockups title:(id)title;
- (id)_artworkLoader;
- (id)_missingItemLoader;
- (id)_swooshViewController;
- (id)headerViewForTableView:(id)view;
- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index;
- (void)dealloc;
- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers;
- (void)setColorScheme:(id)scheme;
- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index;
@end

@implementation SKUIProductPageTableSwooshSection

- (SKUIProductPageTableSwooshSection)initWithItems:(id)items title:(id)title
{
  itemsCopy = items;
  titleCopy = title;
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
    [(SKUIItemList *)v9 setItems:itemsCopy];
    [(SKUIItemList *)v9 setTitle:titleCopy];
    v10 = [[SKUISwooshPageComponent alloc] initWithItemList:v9];
    swooshComponent = v8->_swooshComponent;
    v8->_swooshComponent = v10;
  }

  return v8;
}

- (SKUIProductPageTableSwooshSection)initWithLockups:(id)lockups title:(id)title
{
  lockupsCopy = lockups;
  titleCopy = title;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageTableSwooshSection initWithLockups:title:];
  }

  v12.receiver = self;
  v12.super_class = SKUIProductPageTableSwooshSection;
  v8 = [(SKUIProductPageTableSwooshSection *)&v12 init];
  if (v8)
  {
    v9 = [[SKUISwooshPageComponent alloc] initWithLockups:lockupsCopy swooshType:0 title:titleCopy];
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
  _swooshViewController = [(SKUIProductPageTableSwooshSection *)self _swooshViewController];
  colorScheme = [_swooshViewController colorScheme];

  return colorScheme;
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  _swooshViewController = [(SKUIProductPageTableSwooshSection *)self _swooshViewController];
  [_swooshViewController setColorScheme:schemeCopy];
}

- (id)headerViewForTableView:(id)view
{
  if (!self->_missingItemLoader && [(SKUISwooshPageComponent *)self->_swooshComponent isMissingItemData])
  {
    _missingItemLoader = [(SKUIProductPageTableSwooshSection *)self _missingItemLoader];
    [_missingItemLoader loadItemsForPageComponent:self->_swooshComponent startIndex:0 reason:1];
  }

  _swooshViewController = [(SKUIProductPageTableSwooshSection *)self _swooshViewController];
  view = [_swooshViewController view];

  return view;
}

- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v6 = [(SKUISwooshPageComponent *)self->_swooshComponent _updateLockupItemsWithItems:itemsCopy];
    swooshViewController = self->_swooshViewController;
    lockups = [(SKUISwooshPageComponent *)self->_swooshComponent lockups];
    [(SKUILockupSwooshViewController *)swooshViewController setLockups:lockups];

    _artworkLoader = [(SKUIProductPageTableSwooshSection *)self _artworkLoader];
    [_artworkLoader loadImagesForNextPageWithReason:0];
  }
}

- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index
{
  if (self->_actionBlock)
  {
    lockups = [swoosh lockups];
    v9 = [lockups objectAtIndex:index];

    actionBlock = self->_actionBlock;
    item = [v9 item];
    actionBlock[2](actionBlock, item);
  }
}

- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  _artworkLoader = [(SKUIProductPageTableSwooshSection *)self _artworkLoader];
  lockups = [swooshCopy lockups];

  v9 = [lockups objectAtIndex:index];

  item = [v9 item];
  if (item)
  {
    v11 = [_artworkLoader cachedImageForItem:item];
    if (v11)
    {
      goto LABEL_6;
    }

    [_artworkLoader loadImageForItem:item reason:1];
    v12 = _artworkLoader;
    v13 = item;
  }

  else
  {
    v12 = _artworkLoader;
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
    resourceLoader = [(SKUIProductPageTableSwooshSection *)self resourceLoader];
    _swooshViewController = [(SKUIProductPageTableSwooshSection *)self _swooshViewController];
    v7 = [(SKUILockupSwooshArtworkLoader *)v4 initWithArtworkLoader:resourceLoader swoosh:_swooshViewController];
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
    resourceLoader = [(SKUIProductPageTableSwooshSection *)self resourceLoader];
    v6 = [(SKUIMissingItemLoader *)v4 initWithResourceLoader:resourceLoader];
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
    clientContext = [(SKUIProductPageTableSection *)self clientContext];
    [(SKUILockupSwooshViewController *)v6 setClientContext:clientContext];

    [(SKUILockupSwooshViewController *)self->_swooshViewController setDelegate:self];
    v8 = self->_swooshViewController;
    artworkContext = [(SKUILockupSwooshViewController *)v8 artworkContext];
    iconConsumer = [artworkContext iconConsumer];
    [iconConsumer imageSize];
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