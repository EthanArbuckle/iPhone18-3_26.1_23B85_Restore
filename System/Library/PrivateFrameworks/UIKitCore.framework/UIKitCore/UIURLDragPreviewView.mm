@interface UIURLDragPreviewView
+ (id)_titleFont;
+ (id)_urlFont;
+ (id)viewWithTitle:(id)title URL:(id)l;
+ (id)viewWithTitle:(id)title URLText:(id)text;
+ (id)viewWithURL:(id)l;
+ (id)viewWithURLText:(id)text;
+ (void)initialize;
- (UIURLDragPreviewView)initWithFrame:(CGRect)frame;
- (void)setTitle:(id)title;
- (void)setUrl:(id)url;
- (void)setUrlText:(id)text;
- (void)updateConstraints;
@end

@implementation UIURLDragPreviewView

+ (id)viewWithTitle:(id)title URL:(id)l
{
  lCopy = l;
  titleCopy = title;
  v7 = objc_opt_new();
  [v7 setTitle:titleCopy];

  [v7 setUrl:lCopy];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [v7 systemLayoutSizeFittingSize:{10000.0, 10000.0}];
  [v7 setFrame:{v8, v9, v10, v11}];

  return v7;
}

+ (id)viewWithURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  [v4 setUrl:lCopy];

  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [v4 systemLayoutSizeFittingSize:{10000.0, 10000.0}];
  [v4 setFrame:{v5, v6, v7, v8}];

  return v4;
}

+ (id)viewWithTitle:(id)title URLText:(id)text
{
  textCopy = text;
  titleCopy = title;
  v7 = objc_opt_new();
  [v7 setTitle:titleCopy];

  [v7 setUrlText:textCopy];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [v7 systemLayoutSizeFittingSize:{10000.0, 10000.0}];
  [v7 setFrame:{v8, v9, v10, v11}];

  return v7;
}

+ (id)viewWithURLText:(id)text
{
  textCopy = text;
  v4 = objc_opt_new();
  [v4 setUrlText:textCopy];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *URLFormattingLibrary(void)"];
    [currentHandler handleFailureInFunction:v4 file:@"UIURLDragPreviewView.m" lineNumber:18 description:{@"%s", v5[0]}];

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

- (UIURLDragPreviewView)initWithFrame:(CGRect)frame
{
  v48[2] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = UIURLDragPreviewView;
  v3 = [(UIView *)&v46 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    topAnchor = [(UIView *)v4->_titleLabel topAnchor];
    topAnchor2 = [(UIView *)v4 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v11 setActive:1];

    leadingAnchor = [(UIView *)v4->_titleLabel leadingAnchor];
    leadingAnchor2 = [(UIView *)v4 leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v14 setActive:1];

    trailingAnchor = [(UIView *)v4->_titleLabel trailingAnchor];
    trailingAnchor2 = [(UIView *)v4 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
    bottomAnchor = [(UIView *)v4->_urlLabel bottomAnchor];
    bottomAnchor2 = [(UIView *)v4 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v24 setActive:1];

    leadingAnchor3 = [(UIView *)v4->_urlLabel leadingAnchor];
    leadingAnchor4 = [(UIView *)v4 leadingAnchor];
    v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v27 setActive:1];

    trailingAnchor3 = [(UIView *)v4->_urlLabel trailingAnchor];
    trailingAnchor4 = [(UIView *)v4 trailingAnchor];
    v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v30 setActive:1];

    topAnchor3 = [(UIView *)v4->_urlLabel topAnchor];
    topAnchor4 = [(UIView *)v4 topAnchor];
    v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v48[0] = v33;
    heightAnchor = [(UIView *)v4->_titleLabel heightAnchor];
    v35 = [heightAnchor constraintEqualToConstant:0.0];
    v48[1] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    urlOnlyConstraints = v4->_urlOnlyConstraints;
    v4->_urlOnlyConstraints = v36;

    firstBaselineAnchor = [(UIView *)v4->_urlLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UIView *)v4->_titleLabel lastBaselineAnchor];
    v40 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:17.0];
    v47 = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    titleAndUrlConstraints = v4->_titleAndUrlConstraints;
    v4->_titleAndUrlConstraints = v41;

    widthAnchor = [(UIView *)v4 widthAnchor];
    v44 = [widthAnchor constraintLessThanOrEqualToConstant:400.0];
    [v44 setActive:1];

    [(UIView *)v4 setNeedsUpdateConstraints];
  }

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = [titleCopy copy];
  title = self->_title;
  self->_title = v5;

  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(UIView *)self setNeedsUpdateConstraints];
}

- (void)setUrl:(id)url
{
  urlCopy = url;
  v5 = [urlCopy copy];
  url = self->_url;
  self->_url = v5;

  urlText = self->_urlText;
  self->_urlText = 0;

  _lp_simplifiedDisplayString = [urlCopy _lp_simplifiedDisplayString];

  [(UILabel *)self->_urlLabel setText:_lp_simplifiedDisplayString];
  text = [(UILabel *)self->_urlLabel text];
  v10 = [text length];

  if (!v10)
  {
    [(UILabel *)self->_urlLabel setText:&stru_1EFB14550];
  }

  [(UIView *)self setNeedsUpdateConstraints];
}

- (void)setUrlText:(id)text
{
  textCopy = text;
  v5 = [textCopy copy];
  urlText = self->_urlText;
  self->_urlText = v5;

  url = self->_url;
  self->_url = 0;

  [(UILabel *)self->_urlLabel setText:textCopy];
  text = [(UILabel *)self->_urlLabel text];
  v9 = [text length];

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
  text = [(UILabel *)self->_titleLabel text];
  text2 = [(UILabel *)self->_urlLabel text];
  if ([text isEqualToString:text2])
  {
  }

  else
  {
    text3 = [(UILabel *)self->_titleLabel text];
    absoluteString = [(NSURL *)self->_url absoluteString];
    v7 = [text3 isEqualToString:absoluteString];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  [(UILabel *)self->_titleLabel setText:0];
LABEL_5:
  text4 = [(UILabel *)self->_titleLabel text];
  v9 = [text4 length];

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