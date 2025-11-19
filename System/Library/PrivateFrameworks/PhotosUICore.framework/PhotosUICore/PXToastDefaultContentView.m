@interface PXToastDefaultContentView
+ (void)configureBackgroundOfToastContentView:(id)a3;
- (PXToastDefaultContentView)initWithCoder:(id)a3;
- (PXToastDefaultContentView)initWithFrame:(CGRect)a3;
- (PXToastDefaultContentView)initWithToastConfiguration:(id)a3;
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
  v4 = [(PXToastDefaultContentView *)self layer];
  [v4 setCornerRadius:v3];
}

- (PXToastDefaultContentView)initWithToastConfiguration:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (PXToastDefaultContentView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXToastDefaultContentView.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXToastDefaultContentView initWithCoder:]"}];

  abort();
}

- (PXToastDefaultContentView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXToastDefaultContentView.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXToastDefaultContentView initWithFrame:]"}];

  abort();
}

+ (void)configureBackgroundOfToastContentView:(id)a3
{
  v3 = a3;
  v6 = [v3 layer];
  LODWORD(v4) = 1045220557;
  [v6 setShadowOpacity:v4];
  [v6 setShadowRadius:4.0];
  [v6 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v5 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v3 setBackgroundColor:v5];
}

@end