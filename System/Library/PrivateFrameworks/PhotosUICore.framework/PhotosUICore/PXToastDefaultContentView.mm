@interface PXToastDefaultContentView
+ (void)configureBackgroundOfToastContentView:(id)view;
- (PXToastDefaultContentView)initWithCoder:(id)coder;
- (PXToastDefaultContentView)initWithFrame:(CGRect)frame;
- (PXToastDefaultContentView)initWithToastConfiguration:(id)configuration;
- (void)layoutSubviews;
@end

@implementation PXToastDefaultContentView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXToastDefaultContentView;
  [(PXToastDefaultContentView *)&v5 layoutSubviews];
  [(PXToastDefaultContentView *)self bounds];
  v3 = CGRectGetHeight(v6) * 0.5;
  layer = [(PXToastDefaultContentView *)self layer];
  [layer setCornerRadius:v3];
}

- (PXToastDefaultContentView)initWithToastConfiguration:(id)configuration
{
  v7 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v6.receiver = self;
  v6.super_class = PXToastDefaultContentView;
  if ([(PXToastDefaultContentView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)])
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
    objc_claimAutoreleasedReturnValue();
    PXFontWithTextStyle();
  }

  return 0;
}

- (PXToastDefaultContentView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXToastDefaultContentView.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXToastDefaultContentView initWithCoder:]"}];

  abort();
}

- (PXToastDefaultContentView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXToastDefaultContentView.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXToastDefaultContentView initWithFrame:]"}];

  abort();
}

+ (void)configureBackgroundOfToastContentView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  LODWORD(v4) = 1045220557;
  [layer setShadowOpacity:v4];
  [layer setShadowRadius:4.0];
  [layer setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [viewCopy setBackgroundColor:secondarySystemBackgroundColor];
}

@end