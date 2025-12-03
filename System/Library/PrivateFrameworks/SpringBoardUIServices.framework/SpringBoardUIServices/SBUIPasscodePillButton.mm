@interface SBUIPasscodePillButton
- (SBUIPasscodePillButton)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SBUIPasscodePillButton

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = SBUIPasscodePillButton;
  [(SBUIPasscodePillButton *)&v7 layoutSubviews];
  [(SBUIPasscodePillButton *)self bounds];
  v4 = v3 * 0.5;
  [(UIView *)self->_pillView setFrame:?];
  layer = [(UIView *)self->_pillView layer];
  [layer setCornerRadius:v4];

  backdropLayer = self->_backdropLayer;
  [(UIView *)self->_pillView frame];
  [(CABackdropLayer *)backdropLayer setFrame:?];
  [(CABackdropLayer *)self->_backdropLayer setCornerRadius:v4];
}

- (SBUIPasscodePillButton)initWithFrame:(CGRect)frame
{
  v45[1] = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = SBUIPasscodePillButton;
  v3 = [(SBUIPasscodePillButton *)&v43 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_unhighlightedAlpha = 0.1;
    v3->_highlightedAlpha = 0.65;
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SBUIPasscodePillButton *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    pillView = v4->_pillView;
    v4->_pillView = v6;

    v8 = v4->_pillView;
    [(SBUIPasscodePillButton *)v4 unhighlightedAlpha];
    [(UIView *)v8 setAlpha:?];
    v9 = v4->_pillView;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v9 setBackgroundColor:whiteColor];

    layer = [(UIView *)v4->_pillView layer];
    v12 = *MEMORY[0x1E69796E8];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];

    [(SBUIPasscodePillButton *)v4 addSubview:v4->_pillView];
    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backdropView = v4->_backdropView;
    v4->_backdropView = v13;

    v15 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
    [v15 setName:@"saturation"];
    [v15 setValue:&unk_1F1DB5AD0 forKey:@"inputAmount"];
    v16 = objc_alloc_init(MEMORY[0x1E6979310]);
    backdropLayer = v4->_backdropLayer;
    v4->_backdropLayer = v16;

    v18 = v4->_backdropLayer;
    v45[0] = v15;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    [(CABackdropLayer *)v18 setFilters:v19];

    [(CABackdropLayer *)v4->_backdropLayer setCornerCurve:v12];
    layer2 = [(UIView *)v4->_backdropView layer];
    [layer2 addSublayer:v4->_backdropLayer];

    [(SBUIPasscodePillButton *)v4 addSubview:v4->_backdropView];
    v21 = objc_alloc(MEMORY[0x1E69DCC10]);
    v22 = [v21 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v22;

    v24 = v4->_titleLabel;
    v25 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.48];
    [(UILabel *)v24 setTextColor:v25];

    layer3 = [(UILabel *)v4->_titleLabel layer];
    v27 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [layer3 setCompositingFilter:v27];

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBUIPasscodePillButton *)v4 addSubview:v4->_titleLabel];
    v28 = MEMORY[0x1E696ACD8];
    v29 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, v4->_titleLabel, 0);
    v30 = [v28 constraintsWithVisualFormat:@"|-(>=16)-[_titleLabel]-(>=16)-|" options:0 metrics:0 views:v29];
    [v28 activateConstraints:v30];

    v31 = MEMORY[0x1E696ACD8];
    v32 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, v4->_titleLabel, 0);
    v33 = [v31 constraintsWithVisualFormat:@"V:|-(14)-[_titleLabel]-(14)-|" options:0 metrics:0 views:v32];
    [v31 activateConstraints:v33];

    v34 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UILabel *)v4->_titleLabel centerXAnchor];
    centerXAnchor2 = [(SBUIPasscodePillButton *)v4 centerXAnchor];
    v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v44[0] = v37;
    centerYAnchor = [(UILabel *)v4->_titleLabel centerYAnchor];
    centerYAnchor2 = [(SBUIPasscodePillButton *)v4 centerYAnchor];
    v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v44[1] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    [v34 activateConstraints:v41];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v10.receiver = self;
  v10.super_class = SBUIPasscodePillButton;
  [(SBUIPasscodePillButton *)&v10 setHighlighted:?];
  if (highlightedCopy)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 0.85;
  }

  v6 = objc_alloc(MEMORY[0x1E69DD278]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__SBUIPasscodePillButton_setHighlighted___block_invoke;
  v8[3] = &unk_1E789DA60;
  v8[4] = self;
  v9 = highlightedCopy;
  v7 = [v6 initWithDuration:v8 controlPoint1:v5 controlPoint2:0.0 animations:{0.0, 0.0, 1.0}];
  [v7 startAnimation];
}

uint64_t __41__SBUIPasscodePillButton_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[58];
  if (*(a1 + 40) == 1)
  {
    [v2 highlightedAlpha];
  }

  else
  {
    [v2 unhighlightedAlpha];
  }

  return [v3 setAlpha:?];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  [(SBUIPasscodePillButton *)self bounds];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v11, v10))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end