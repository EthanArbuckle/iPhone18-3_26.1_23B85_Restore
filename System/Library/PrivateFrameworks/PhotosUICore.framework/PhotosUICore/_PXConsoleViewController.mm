@interface _PXConsoleViewController
- (UITextView)_textView;
- (_PXConsoleViewController)init;
- (void)_presentSharingViewController:(id)controller;
- (void)appendOutput:(id)output;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _PXConsoleViewController

- (void)_presentSharingViewController:(id)controller
{
  v14[1] = *MEMORY[0x1E69E9840];
  _textView = [(_PXConsoleViewController *)self _textView];
  text = [_textView text];
  v6 = text;
  v7 = &stru_1F1741150;
  if (text)
  {
    v7 = text;
  }

  v8 = v7;

  v9 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v11 = [v9 initWithActivityItems:v10 applicationActivities:0];
  [(_PXConsoleViewController *)self presentViewController:v11 animated:1 completion:0];
  popoverPresentationController = [v11 popoverPresentationController];
  _shareBarButtonItem = [(_PXConsoleViewController *)self _shareBarButtonItem];
  [popoverPresentationController setBarButtonItem:_shareBarButtonItem];
}

- (UITextView)_textView
{
  textView = self->__textView;
  if (!textView)
  {
    view = [(_PXConsoleViewController *)self view];
    textView = self->__textView;
  }

  return textView;
}

- (void)appendOutput:(id)output
{
  outputCopy = output;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = outputCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [outputCopy description];
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

    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:outputCopy];
  }

  v5 = v4;
  goto LABEL_9;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = _PXConsoleViewController;
  [(_PXConsoleViewController *)&v6 viewWillDisappear:?];
  navigationController = [(_PXConsoleViewController *)self navigationController];
  [navigationController setToolbarHidden:-[_PXConsoleViewController toolBarWasHidden](self animated:{"toolBarWasHidden"), disappearCopy}];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = _PXConsoleViewController;
  [(_PXConsoleViewController *)&v7 viewWillAppear:?];
  navigationController = [(_PXConsoleViewController *)self navigationController];
  -[_PXConsoleViewController setToolBarWasHidden:](self, "setToolBarWasHidden:", [navigationController isToolbarHidden]);

  navigationController2 = [(_PXConsoleViewController *)self navigationController];
  [navigationController2 setToolbarHidden:0 animated:appearCopy];
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = _PXConsoleViewController;
  [(_PXConsoleViewController *)&v7 loadView];
  view = [(_PXConsoleViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DD168]);
  [view bounds];
  v5 = [v4 initWithFrame:?];
  textView = self->__textView;
  self->__textView = v5;

  [(UITextView *)self->__textView setAutoresizingMask:18];
  [view addSubview:self->__textView];
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