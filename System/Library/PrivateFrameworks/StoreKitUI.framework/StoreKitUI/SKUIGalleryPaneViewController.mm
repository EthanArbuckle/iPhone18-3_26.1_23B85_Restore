@interface SKUIGalleryPaneViewController
- (SKUIGalleryPaneViewController)initWithMediaComponent:(id)component galleryIndex:(int64_t)index;
@end

@implementation SKUIGalleryPaneViewController

- (SKUIGalleryPaneViewController)initWithMediaComponent:(id)component galleryIndex:(int64_t)index
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGalleryPaneViewController initWithMediaComponent:galleryIndex:];
  }

  v11.receiver = self;
  v11.super_class = SKUIGalleryPaneViewController;
  v8 = [(SKUIGalleryPaneViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_component, component);
    v9->_galleryIndex = index;
  }

  return v9;
}

- (void)initWithMediaComponent:galleryIndex:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGalleryPaneViewController initWithMediaComponent:galleryIndex:]";
}

@end