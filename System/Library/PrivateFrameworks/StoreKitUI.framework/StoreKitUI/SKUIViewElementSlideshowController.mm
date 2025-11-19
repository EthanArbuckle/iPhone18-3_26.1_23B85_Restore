@interface SKUIViewElementSlideshowController
- (SKUIViewElementSlideshowController)initWithShelf:(id)a3 selectedLockup:(id)a4;
- (SKUIViewElementSlideshowDelegate)delegate;
- (id)slideshowViewController:(id)a3 dataConsumerAtIndex:(int64_t)a4;
- (id)slideshowViewController:(id)a3 imageURLAtIndex:(int64_t)a4;
- (id)slideshowViewController:(id)a3 placeholderImageAtIndex:(int64_t)a4;
- (void)dealloc;
- (void)presentFromParentViewController:(id)a3;
- (void)slideshowViewControllerDidFinish:(id)a3;
@end

@implementation SKUIViewElementSlideshowController

- (SKUIViewElementSlideshowController)initWithShelf:(id)a3 selectedLockup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIViewElementSlideshowController initWithShelf:selectedLockup:];
  }

  v18.receiver = self;
  v18.super_class = SKUIViewElementSlideshowController;
  v8 = [(SKUIViewElementSlideshowController *)&v18 init];
  if (v8)
  {
    v9 = objc_opt_new();
    [(SKUIViewElementSlideshowController *)v8 setDataConsumers:v9];

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lockups = v8->_lockups;
    v8->_lockups = v10;

    v8->_selectedIndex = 0;
    v12 = [v6 slideshowTitle];
    title = v8->_title;
    v8->_title = v12;

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__SKUIViewElementSlideshowController_initWithShelf_selectedLockup___block_invoke;
    v15[3] = &unk_2781FA478;
    v16 = v7;
    v17 = v8;
    [v6 enumerateChildrenUsingBlock:v15];
  }

  return v8;
}

void __67__SKUIViewElementSlideshowController_initWithShelf_selectedLockup___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 elementType] == 66;
  v4 = v11;
  if (v3)
  {
    v5 = v11;
    v6 = [v5 fullscreenImage];
    v7 = [v5 firstChildForElementType:49];
    v8 = v7;
    if (v6 && v7)
    {
      if (*(a1 + 32) == v5)
      {
        *(*(a1 + 40) + 48) = [*(*(a1 + 40) + 24) count];
      }

      [*(*(a1 + 40) + 24) addObject:v5];
      v9 = [(SKUIStyledImageDataConsumer *)[SKUIScreenshotDataConsumer alloc] initWithViewElement:v6];
      [v6 size];
      [(SKUIStyledImageDataConsumer *)v9 setImageSize:?];
      v10 = [*(a1 + 40) dataConsumers];
      [v10 addObject:v9];
    }

    v4 = v11;
  }
}

- (void)dealloc
{
  [(SKUISlideshowViewController *)self->_padViewController setDataSource:0];
  [(SKUISlideshowViewController *)self->_padViewController setDelegate:0];
  [(SKUIIPhoneSlideshowViewController *)self->_phoneViewController setDataSource:0];
  [(SKUIIPhoneSlideshowViewController *)self->_phoneViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIViewElementSlideshowController;
  [(SKUIViewElementSlideshowController *)&v3 dealloc];
}

- (void)presentFromParentViewController:(id)a3
{
  layoutContext = self->_layoutContext;
  v5 = a3;
  v6 = [(SKUIViewElementLayoutContext *)layoutContext clientContext];
  v7 = SKUIUserInterfaceIdiom(v6);
  if (v7 == 1)
  {
    v8 = 32;
  }

  else
  {
    v8 = 40;
  }

  v9 = off_2781F6730;
  if (v7 != 1)
  {
    v9 = off_2781F63B0;
  }

  v10 = objc_alloc_init(*v9);
  v11 = *(&self->super.isa + v8);
  *(&self->super.isa + v8) = v10;

  [*(&self->super.isa + v8) setClientContext:v6];
  [*(&self->super.isa + v8) setDataSource:self];
  [*(&self->super.isa + v8) setDelegate:self];
  [*(&self->super.isa + v8) setCurrentIndex:self->_selectedIndex];
  v13 = *(&self->super.isa + v8);
  if (self->_title)
  {
    [v13 setTitle:?];
  }

  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
  [v12 setModalPresentationStyle:17];
  [v5 presentViewController:v12 animated:1 completion:0];
}

- (id)slideshowViewController:(id)a3 placeholderImageAtIndex:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_lockups objectAtIndex:a4];
  v6 = [v5 firstChildForElementType:49];
  v7 = [(SKUIViewElementLayoutContext *)self->_layoutContext requestIdentifierForViewElement:v6];
  if (v7)
  {
    v8 = [(SKUIViewElementLayoutContext *)self->_layoutContext resourceLoader];
    v9 = [v8 cachedResourceForRequestIdentifier:{objc_msgSend(v7, "unsignedIntegerValue")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)slideshowViewController:(id)a3 imageURLAtIndex:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_lockups objectAtIndex:a4];
  v5 = [v4 fullscreenImage];
  v6 = [v5 URL];

  return v6;
}

- (id)slideshowViewController:(id)a3 dataConsumerAtIndex:(int64_t)a4
{
  v6 = [(SKUIViewElementSlideshowController *)self dataConsumers];
  v7 = [v6 objectAtIndex:a4];

  v8 = [(SKUIViewElementLayoutContext *)self->_layoutContext clientContext];
  if (SKUIUserInterfaceIdiom(v8) != 1)
  {
    [v7 setForcesPortrait:1];
  }

  return v7;
}

- (void)slideshowViewControllerDidFinish:(id)a3
{
  v5 = a3;
  v4 = [(SKUIViewElementSlideshowController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 viewElementSlideshowWillDismiss:self];
  }

  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (SKUIViewElementSlideshowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithShelf:selectedLockup:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewElementSlideshowController initWithShelf:selectedLockup:]";
}

@end