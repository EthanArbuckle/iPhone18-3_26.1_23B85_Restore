@interface UIURLDragPreviewView
+ (id)_titleFont;
+ (id)_urlFont;
+ (id)viewWithTitle:(id)a3 URL:(id)a4;
+ (id)viewWithTitle:(id)a3 URLText:(id)a4;
+ (id)viewWithURL:(id)a3;
+ (id)viewWithURLText:(id)a3;
+ (void)initialize;
- (UIURLDragPreviewView)initWithFrame:(CGRect)a3;
- (void)setTitle:(id)a3;
- (void)setUrl:(id)a3;
- (void)setUrlText:(id)a3;
- (void)updateConstraints;
@end

@implementation UIURLDragPreviewView

+ (id)viewWithTitle:(id)a3 URL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setTitle:v6];

  [v7 setUrl:v5];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [v7 systemLayoutSizeFittingSize:{10000.0, 10000.0}];
  [v7 setFrame:{v8, v9, v10, v11}];

  return v7;
}

+ (id)viewWithURL:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setUrl:v3];

  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [v4 systemLayoutSizeFittingSize:{10000.0, 10000.0}];
  [v4 setFrame:{v5, v6, v7, v8}];

  return v4;
}

+ (id)viewWithTitle:(id)a3 URLText:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setTitle:v6];

  [v7 setUrlText:v5];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [v7 systemLayoutSizeFittingSize:{10000.0, 10000.0}];
  [v7 setFrame:{v8, v9, v10, v11}];

  return v7;
}

+ (id)viewWithURLText:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setUrlText:v3];

  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [v4 systemLayoutSizeFittingSize:{10000.0, 10000.0}];
  [v4 setFrame:{v5, v6, v7, v8}];

  return v4;
}

+ (id)_titleFont
{
  v2 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleFootnote" addingSymbolicTraits:2 options:1];
  v3 = [off_1E70ECC18 fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)_urlFont
{
  v2 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleFootnote" addingSymbolicTraits:0 options:1];
  v3 = [off_1E70ECC18 fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (void)initialize
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!URLFormattingLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __URLFormattingLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71249D0;
    v7 = 0;
    URLFormattingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!URLFormattingLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *URLFormattingLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIURLDragPreviewView.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v2 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v2);
  }
}

- (UIURLDragPreviewView)initWithFrame:(CGRect)a3
{
  v48[2] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = UIURLDragPreviewView;
  v3 = [(UIView *)&v46 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v4->_titleLabel setLineBreakMode:4];
    v7 = +[UIURLDragPreviewView _titleFont];
    [(UILabel *)v4->_titleLabel setFont:v7];

    v8 = +[UIColor labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v8];

    [(UIView *)v4 addSubview:v4->_titleLabel];
    [(UIView *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(UIView *)v4->_titleLabel topAnchor];
    v10 = [(UIView *)v4 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [(UIView *)v4->_titleLabel leadingAnchor];
    v13 = [(UIView *)v4 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [(UIView *)v4->_titleLabel trailingAnchor];
    v16 = [(UIView *)v4 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    v18 = objc_opt_new();
    urlLabel = v4->_urlLabel;
    v4->_urlLabel = v18;

    [(UILabel *)v4->_urlLabel setNumberOfLines:1];
    [(UILabel *)v4->_urlLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v4->_urlLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_urlLabel setLineBreakMode:4];
    v20 = +[UIURLDragPreviewView _urlFont];
    [(UILabel *)v4->_urlLabel setFont:v20];

    v21 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_urlLabel setTextColor:v21];

    [(UIView *)v4 addSubview:v4->_urlLabel];
    [(UIView *)v4->_urlLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [(UIView *)v4->_urlLabel bottomAnchor];
    v23 = [(UIView *)v4 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v24 setActive:1];

    v25 = [(UIView *)v4->_urlLabel leadingAnchor];
    v26 = [(UIView *)v4 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    v28 = [(UIView *)v4->_urlLabel trailingAnchor];
    v29 = [(UIView *)v4 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    [v30 setActive:1];

    v31 = [(UIView *)v4->_urlLabel topAnchor];
    v32 = [(UIView *)v4 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v48[0] = v33;
    v34 = [(UIView *)v4->_titleLabel heightAnchor];
    v35 = [v34 constraintEqualToConstant:0.0];
    v48[1] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    urlOnlyConstraints = v4->_urlOnlyConstraints;
    v4->_urlOnlyConstraints = v36;

    v38 = [(UIView *)v4->_urlLabel firstBaselineAnchor];
    v39 = [(UIView *)v4->_titleLabel lastBaselineAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:17.0];
    v47 = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    titleAndUrlConstraints = v4->_titleAndUrlConstraints;
    v4->_titleAndUrlConstraints = v41;

    v43 = [(UIView *)v4 widthAnchor];
    v44 = [v43 constraintLessThanOrEqualToConstant:400.0];
    [v44 setActive:1];

    [(UIView *)v4 setNeedsUpdateConstraints];
  }

  return v4;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  title = self->_title;
  self->_title = v5;

  [(UILabel *)self->_titleLabel setText:v4];

  [(UIView *)self setNeedsUpdateConstraints];
}

- (void)setUrl:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  url = self->_url;
  self->_url = v5;

  urlText = self->_urlText;
  self->_urlText = 0;

  v8 = [v4 _lp_simplifiedDisplayString];

  [(UILabel *)self->_urlLabel setText:v8];
  v9 = [(UILabel *)self->_urlLabel text];
  v10 = [v9 length];

  if (!v10)
  {
    [(UILabel *)self->_urlLabel setText:&stru_1EFB14550];
  }

  [(UIView *)self setNeedsUpdateConstraints];
}

- (void)setUrlText:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  urlText = self->_urlText;
  self->_urlText = v5;

  url = self->_url;
  self->_url = 0;

  [(UILabel *)self->_urlLabel setText:v4];
  v8 = [(UILabel *)self->_urlLabel text];
  v9 = [v8 length];

  if (!v9)
  {
    [(UILabel *)self->_urlLabel setText:&stru_1EFB14550];
  }

  [(UIView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v12.receiver = self;
  v12.super_class = UIURLDragPreviewView;
  [(UIView *)&v12 updateConstraints];
  v3 = [(UILabel *)self->_titleLabel text];
  v4 = [(UILabel *)self->_urlLabel text];
  if ([v3 isEqualToString:v4])
  {
  }

  else
  {
    v5 = [(UILabel *)self->_titleLabel text];
    v6 = [(NSURL *)self->_url absoluteString];
    v7 = [v5 isEqualToString:v6];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  [(UILabel *)self->_titleLabel setText:0];
LABEL_5:
  v8 = [(UILabel *)self->_titleLabel text];
  v9 = [v8 length];

  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  [MEMORY[0x1E69977A0] deactivateConstraints:*(&self->super.super.super.isa + OBJC_IVAR___UIURLDragPreviewView__titleLabel[v10])];
  [MEMORY[0x1E69977A0] activateConstraints:*(&self->super.super.super.isa + OBJC_IVAR___UIURLDragPreviewView__titleLabel[v11])];
  [(UIView *)self setNeedsLayout];
}

@end