@interface _UIAlternateApplicationIconsAlertContentViewController
- (NSString)messageText;
- (void)__updateWithVisualStyle:(id)style;
- (void)_containingAlertControllerDidChangeVisualStyle:(id)style;
- (void)_updateWithContainingAlertControllerVisualStyle;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)setMessageText:(id)text;
@end

@implementation _UIAlternateApplicationIconsAlertContentViewController

- (NSString)messageText
{
  view = [(UIViewController *)self view];
  messageLabel = self->_messageLabel;

  return [(UILabel *)messageLabel text];
}

- (void)setMessageText:(id)text
{
  textCopy = text;
  view = [(UIViewController *)self view];
  [(UILabel *)self->_messageLabel setText:textCopy];
}

- (void)_containingAlertControllerDidChangeVisualStyle:(id)style
{
  v5.receiver = self;
  v5.super_class = _UIAlternateApplicationIconsAlertContentViewController;
  styleCopy = style;
  [(UIViewController *)&v5 _containingAlertControllerDidChangeVisualStyle:styleCopy];
  [(_UIAlternateApplicationIconsAlertContentViewController *)self __updateWithVisualStyle:styleCopy, v5.receiver, v5.super_class];
}

- (void)__updateWithVisualStyle:(id)style
{
  styleCopy = style;
  messageLabelFont = [styleCopy messageLabelFont];
  [(UILabel *)self->_messageLabel setFont:messageLabelFont];

  messageLabelColor = [styleCopy messageLabelColor];
  [(UILabel *)self->_messageLabel setTextColor:messageLabelColor];

  maximumNumberOfLinesInMessageLabel = [styleCopy maximumNumberOfLinesInMessageLabel];
  messageLabel = self->_messageLabel;

  [(UILabel *)messageLabel setNumberOfLines:maximumNumberOfLinesInMessageLabel];
}

- (void)_updateWithContainingAlertControllerVisualStyle
{
  _visualStyleOfContainingAlertController = [(UIViewController *)self _visualStyleOfContainingAlertController];
  if (_visualStyleOfContainingAlertController)
  {
    v4 = _visualStyleOfContainingAlertController;
    [(_UIAlternateApplicationIconsAlertContentViewController *)self __updateWithVisualStyle:_visualStyleOfContainingAlertController];
    _visualStyleOfContainingAlertController = v4;
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = _UIAlternateApplicationIconsAlertContentViewController;
  [(UIViewController *)&v4 didMoveToParentViewController:controller];
  [(_UIAlternateApplicationIconsAlertContentViewController *)self _updateWithContainingAlertControllerVisualStyle];
}

- (void)loadView
{
  v41[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(_UIAlternateApplicationIconsAlertContentViewController *)self _updateWithContainingAlertControllerVisualStyle];
  [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  selfCopy = self;
  selfCopy2 = self;
  messageLabel = self->_messageLabel;
  selfCopy->_messageLabel = v3;
  v34 = v3;

  v6 = _UIMainBundleIdentifier();
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v35 = [UIImage _applicationIconImageForBundleIdentifier:v6 format:2 scale:?];

  v8 = [[UIImageView alloc] initWithImage:v35];
  [(UIImageView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1148846080;
  [(UIView *)v8 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [(UIView *)v8 setContentCompressionResistancePriority:1 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [(UIView *)v8 setContentHuggingPriority:0 forAxis:v11];
  v33 = v8;
  LODWORD(v12) = 1148846080;
  [(UIView *)v8 setContentHuggingPriority:1 forAxis:v12];
  v13 = [UIStackView alloc];
  v41[0] = v34;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v15 = [(UIStackView *)v13 initWithArrangedSubviews:v14];

  [(UIStackView *)v15 setAxis:1];
  [(UIStackView *)v15 setAlignment:3];
  [(UIStackView *)v15 setDistribution:3];
  v16 = v15;
  v32 = v15;
  [(UIStackView *)v15 setSpacing:8.0];
  v17 = [UIStackView alloc];
  v40[0] = v8;
  v40[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v19 = [(UIStackView *)v17 initWithArrangedSubviews:v18];

  [(UIStackView *)v19 setAxis:0];
  [(UIStackView *)v19 setAlignment:3];
  [(UIStackView *)v19 setDistribution:3];
  [(UIStackView *)v19 setSpacing:8.0];
  v20 = objc_opt_new();
  [v20 addSubview:v19];
  [(UIStackView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = @"hStackView";
  v39 = v19;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  centerXAnchor = [(UIView *)v19 centerXAnchor];
  centerXAnchor2 = [v20 centerXAnchor];
  v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v37[0] = v23;
  centerYAnchor = [(UIView *)v19 centerYAnchor];
  centerYAnchor2 = [v20 centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v37[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v28 = [v27 mutableCopy];

  v29 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-(spc)-[hStackView]-(spc)-|" options:0 metrics:&unk_1EFE349C8 views:v31];
  [v28 addObjectsFromArray:v29];

  v30 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|-(spc)-[hStackView]-(spc)-|" options:0 metrics:&unk_1EFE349C8 views:v31];
  [v28 addObjectsFromArray:v30];

  [MEMORY[0x1E69977A0] activateConstraints:v28];
  [(UIViewController *)selfCopy2 setView:v20];
}

@end