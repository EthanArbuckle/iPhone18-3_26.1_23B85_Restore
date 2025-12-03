@interface PXPeopleConfirmationHeaderView
+ (CGSize)_sizeForString:(id)string width:(double)width multiline:(BOOL)multiline font:(id)font;
+ (CGSize)sizeForTitle:(id)title boundingSize:(CGSize)size;
+ (id)_titleFont;
- (NSString)title;
- (PXPeopleConfirmationHeaderView)initWithFrame:(CGRect)frame;
- (void)_setupHeader;
- (void)prepareForReuse;
- (void)setTitle:(id)title;
@end

@implementation PXPeopleConfirmationHeaderView

- (NSString)title
{
  titleLabel = [(PXPeopleConfirmationHeaderView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(PXPeopleConfirmationHeaderView *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (void)_setupHeader
{
  v19[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(UILabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v3 setTextAlignment:4];
  v4 = +[PXPeopleConfirmationHeaderView _titleFont];
  [(UILabel *)v3 setFont:v4];

  [(UILabel *)v3 setAdjustsFontForContentSizeCategory:1];
  [(PXPeopleConfirmationHeaderView *)self addSubview:v3];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;
  v6 = v3;

  safeAreaLayoutGuide = [(PXPeopleConfirmationHeaderView *)self safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
  trailingAnchor = [safeAreaLayoutGuide trailingAnchor];
  v17 = MEMORY[0x1E696ACD8];
  bottomAnchor = [(UILabel *)v6 bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[0] = v10;
  leadingAnchor2 = [(UILabel *)v6 leadingAnchor];
  v12 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor constant:20.0];
  v19[1] = v12;
  trailingAnchor2 = [(UILabel *)v6 trailingAnchor];
  v14 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor constant:-20.0];
  v19[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  [v17 activateConstraints:v15];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PXPeopleConfirmationHeaderView;
  [(PXPeopleConfirmationHeaderView *)&v3 prepareForReuse];
  [(PXPeopleConfirmationHeaderView *)self setTitle:&stru_1F1741150];
  [(PXPeopleConfirmationHeaderView *)self setPerson:0];
}

- (PXPeopleConfirmationHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXPeopleConfirmationHeaderView;
  v3 = [(PXPeopleConfirmationHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXPeopleConfirmationHeaderView *)v3 _setupHeader];
  }

  return v4;
}

+ (id)_titleFont
{
  v2 = *MEMORY[0x1E69DDDC0];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v2 addingSymbolicTraits:2 options:0];
  v5 = MEMORY[0x1E69DB878];
  [v3 pointSize];
  v6 = [v5 fontWithDescriptor:v4 size:?];

  return v6;
}

+ (CGSize)_sizeForString:(id)string width:(double)width multiline:(BOOL)multiline font:(id)font
{
  multilineCopy = multiline;
  fontCopy = font;
  stringCopy = string;
  v11 = objc_opt_new();
  if (multilineCopy)
  {
    v12 = objc_opt_new();
    [v12 setLineBreakMode:0];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69DB688]];
  }

  [v11 setObject:fontCopy forKeyedSubscript:*MEMORY[0x1E69DB648]];
  [stringCopy boundingRectWithSize:multilineCopy options:v11 attributes:0 context:{width, 0.0}];
  v14 = v13;
  v16 = v15;

  v17 = ceil(v14);
  v18 = ceil(v16);
  result.height = v18;
  result.width = v17;
  return result;
}

+ (CGSize)sizeForTitle:(id)title boundingSize:(CGSize)size
{
  width = size.width;
  v5 = size.width + -40.0;
  titleCopy = title;
  v7 = +[PXPeopleConfirmationHeaderView _titleFont];
  [PXPeopleConfirmationHeaderView _sizeForString:titleCopy width:0 multiline:v7 font:v5];
  v9 = v8;

  v10 = v9 + 10.0 + 10.0;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

@end