@interface _PXConsoleViewController
- (UITextView)_textView;
- (_PXConsoleViewController)init;
- (void)_presentSharingViewController:(id)a3;
- (void)appendOutput:(id)a3;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _PXConsoleViewController

- (void)_presentSharingViewController:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [(_PXConsoleViewController *)self _textView];
  v5 = [v4 text];
  v6 = v5;
  v7 = &stru_1F1741150;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v11 = [v9 initWithActivityItems:v10 applicationActivities:0];
  [(_PXConsoleViewController *)self presentViewController:v11 animated:1 completion:0];
  v12 = [v11 popoverPresentationController];
  v13 = [(_PXConsoleViewController *)self _shareBarButtonItem];
  [v12 setBarButtonItem:v13];
}

- (UITextView)_textView
{
  textView = self->__textView;
  if (!textView)
  {
    v4 = [(_PXConsoleViewController *)self view];
    textView = self->__textView;
  }

  return textView;
}

- (void)appendOutput:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [v3 description];
      v7 = v6;
      v8 = &stru_1F1741150;
      if (v6)
      {
        v8 = v6;
      }

      v9 = v8;

      v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9];
LABEL_9:
      v10 = v5;
      px_dispatch_on_main_queue();
    }

    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3];
  }

  v5 = v4;
  goto LABEL_9;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _PXConsoleViewController;
  [(_PXConsoleViewController *)&v6 viewWillDisappear:?];
  v5 = [(_PXConsoleViewController *)self navigationController];
  [v5 setToolbarHidden:-[_PXConsoleViewController toolBarWasHidden](self animated:{"toolBarWasHidden"), v3}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = _PXConsoleViewController;
  [(_PXConsoleViewController *)&v7 viewWillAppear:?];
  v5 = [(_PXConsoleViewController *)self navigationController];
  -[_PXConsoleViewController setToolBarWasHidden:](self, "setToolBarWasHidden:", [v5 isToolbarHidden]);

  v6 = [(_PXConsoleViewController *)self navigationController];
  [v6 setToolbarHidden:0 animated:v3];
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = _PXConsoleViewController;
  [(_PXConsoleViewController *)&v7 loadView];
  v3 = [(_PXConsoleViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DD168]);
  [v3 bounds];
  v5 = [v4 initWithFrame:?];
  textView = self->__textView;
  self->__textView = v5;

  [(UITextView *)self->__textView setAutoresizingMask:18];
  [v3 addSubview:self->__textView];
}

- (_PXConsoleViewController)init
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _PXConsoleViewController;
  v2 = [(_PXConsoleViewController *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v2 action:sel__presentSharingViewController_];
    shareBarButtonItem = v2->__shareBarButtonItem;
    v2->__shareBarButtonItem = v4;

    v9[0] = v3;
    v9[1] = v2->__shareBarButtonItem;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    [(_PXConsoleViewController *)v2 setToolbarItems:v6];
  }

  return v2;
}

@end