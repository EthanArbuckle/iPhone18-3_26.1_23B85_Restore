@interface PXMockAssistantView
- (PXMockAssistantView)initWithTitle:(id)a3;
@end

@implementation PXMockAssistantView

- (PXMockAssistantView)initWithTitle:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXMockAssistantView+iOS.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v23.receiver = self;
  v23.super_class = PXMockAssistantView;
  v6 = [(PXMockAssistantView *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PXMockAssistantView *)v6 setBackgroundColor:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v8;

    [(UILabel *)v6->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    [(UILabel *)v6->_titleLabel setFont:v10];

    [(UILabel *)v6->_titleLabel setText:v5];
    [(PXMockAssistantView *)v6 addSubview:v6->_titleLabel];
    v11 = [(PXMockAssistantView *)v6 safeAreaLayoutGuide];
    v12 = MEMORY[0x1E696ACD8];
    v13 = [(UILabel *)v6->_titleLabel centerYAnchor];
    [v11 centerYAnchor];
    v14 = v22 = v5;
    v15 = [v13 constraintEqualToAnchor:v14];
    v24[0] = v15;
    v16 = [(UILabel *)v6->_titleLabel centerXAnchor];
    v17 = [v11 centerXAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v24[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    [v12 activateConstraints:v19];

    v5 = v22;
  }

  return v6;
}

@end