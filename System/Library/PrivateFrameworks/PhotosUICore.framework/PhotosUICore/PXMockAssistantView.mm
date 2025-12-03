@interface PXMockAssistantView
- (PXMockAssistantView)initWithTitle:(id)title;
@end

@implementation PXMockAssistantView

- (PXMockAssistantView)initWithTitle:(id)title
{
  v24[2] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMockAssistantView+iOS.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v23.receiver = self;
  v23.super_class = PXMockAssistantView;
  v6 = [(PXMockAssistantView *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PXMockAssistantView *)v6 setBackgroundColor:systemBackgroundColor];

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v8;

    [(UILabel *)v6->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    [(UILabel *)v6->_titleLabel setFont:v10];

    [(UILabel *)v6->_titleLabel setText:titleCopy];
    [(PXMockAssistantView *)v6 addSubview:v6->_titleLabel];
    safeAreaLayoutGuide = [(PXMockAssistantView *)v6 safeAreaLayoutGuide];
    v12 = MEMORY[0x1E696ACD8];
    centerYAnchor = [(UILabel *)v6->_titleLabel centerYAnchor];
    [safeAreaLayoutGuide centerYAnchor];
    v14 = v22 = titleCopy;
    v15 = [centerYAnchor constraintEqualToAnchor:v14];
    v24[0] = v15;
    centerXAnchor = [(UILabel *)v6->_titleLabel centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v24[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    [v12 activateConstraints:v19];

    titleCopy = v22;
  }

  return v6;
}

@end