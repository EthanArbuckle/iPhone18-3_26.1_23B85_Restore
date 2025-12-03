@interface _UINoDefinitionViewController
- (void)viewDidLoad;
@end

@implementation _UINoDefinitionViewController

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = _UINoDefinitionViewController;
  [(UIViewController *)&v16 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(UIViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [_UIContentUnavailableView alloc];
  v6 = _UINSLocalizedStringWithDefaultValue(@"No definition found.", @"No definition found.");
  v7 = [(_UIContentUnavailableView *)v5 initWithFrame:v6 title:0 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(UIView *)v7 setAutoresizingMask:18];
  view2 = [(UIViewController *)self view];
  [view2 bounds];
  [(UIView *)v7 setFrame:?];

  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __44___UINoDefinitionViewController_viewDidLoad__block_invoke;
  v13 = &unk_1E70F5A28;
  objc_copyWeak(&v14, &location);
  [(_UIContentUnavailableView *)v7 setButtonAction:&v10];
  v9 = [(UIViewController *)self view:v10];
  [v9 addSubview:v7];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end