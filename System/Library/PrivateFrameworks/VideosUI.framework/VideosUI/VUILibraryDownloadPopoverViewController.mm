@interface VUILibraryDownloadPopoverViewController
- (VUILibraryDownloadPopoverViewControllerDelegate)delegate;
- (void)loadView;
- (void)popoverPressed:(id)pressed;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VUILibraryDownloadPopoverViewController

- (void)loadView
{
  v23.receiver = self;
  v23.super_class = VUILibraryDownloadPopoverViewController;
  [(VUILibraryDownloadPopoverViewController *)&v23 loadView];
  v3 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v3 setTextStyle:3];
  [(VUITextLayout *)v3 setFontWeight:0];
  vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
  [(VUITextLayout *)v3 setColor:vui_keyColor];

  [(VUITextLayout *)v3 setNumberOfLines:1];
  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:@"REMOVE_DOWNLOAD"];
  v7 = [VUILabel labelWithString:v6 textLayout:v3 existingLabel:0];

  v8 = [VUIImageResourceMap imageForResourceName:@"ActionMenu-ClearHistory"];
  vui_keyColor2 = [MEMORY[0x1E69DC888] vui_keyColor];
  v10 = [v8 _flatImageWithColor:vui_keyColor2];

  v11 = objc_alloc_init(VUILibraryListItemView);
  listView = self->_listView;
  self->_listView = v11;

  [(VUILibraryListItemView *)self->_listView setTitleLabel:v7];
  [(VUILibraryListItemView *)self->_listView setItemImage:v10];
  view = [(VUILibraryDownloadPopoverViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v24);

  view2 = [(VUILibraryDownloadPopoverViewController *)self view];
  [view2 bounds];
  Height = CGRectGetHeight(v25);

  [(VUILibraryListItemView *)self->_listView sizeThatFits:Width, 1.79769313e308];
  [(VUILibraryDownloadPopoverViewController *)self setPreferredContentSize:fmin(Height, v17), fmin(Height, v18)];
  [(VUILibraryDownloadPopoverViewController *)self setView:self->_listView];
  view3 = [(VUILibraryDownloadPopoverViewController *)self view];
  vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  [view3 setBackgroundColor:vui_primaryDynamicBackgroundColor];

  v21 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_popoverPressed_];
  [v21 setDelegate:self];
  view4 = [(VUILibraryDownloadPopoverViewController *)self view];
  [view4 addGestureRecognizer:v21];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = VUILibraryDownloadPopoverViewController;
  [(VUILibraryDownloadPopoverViewController *)&v5 viewWillDisappear:disappear];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removeDownloadDismissed];
}

- (void)popoverPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removeDownloadPressed];
}

- (VUILibraryDownloadPopoverViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end