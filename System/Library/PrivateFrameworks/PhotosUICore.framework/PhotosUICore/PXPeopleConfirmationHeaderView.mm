@interface PXPeopleConfirmationHeaderView
+ (CGSize)_sizeForString:(id)a3 width:(double)a4 multiline:(BOOL)a5 font:(id)a6;
+ (CGSize)sizeForTitle:(id)a3 boundingSize:(CGSize)a4;
+ (id)_titleFont;
- (NSString)title;
- (PXPeopleConfirmationHeaderView)initWithFrame:(CGRect)a3;
- (void)_setupHeader;
- (void)prepareForReuse;
- (void)setTitle:(id)a3;
@end

@implementation PXPeopleConfirmationHeaderView

- (NSString)title
{
  v2 = [(PXPeopleConfirmationHeaderView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleConfirmationHeaderView *)self titleLabel];
  [v5 setText:v4];
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

  v7 = [(PXPeopleConfirmationHeaderView *)self safeAreaLayoutGuide];
  v18 = [v7 leadingAnchor];
  v16 = [v7 trailingAnchor];
  v17 = MEMORY[0x1E696ACD8];
  v8 = [(UILabel *)v6 bottomAnchor];
  v9 = [v7 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[0] = v10;
  v11 = [(UILabel *)v6 leadingAnchor];
  v12 = [v11 constraintEqualToAnchor:v18 constant:20.0];
  v19[1] = v12;
  v13 = [(UILabel *)v6 trailingAnchor];
  v14 = [v13 constraintEqualToAnchor:v16 constant:-20.0];
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

- (PXPeopleConfirmationHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXPeopleConfirmationHeaderView;
  v3 = [(PXPeopleConfirmationHeaderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

+ (CGSize)_sizeForString:(id)a3 width:(double)a4 multiline:(BOOL)a5 font:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a3;
  v11 = objc_opt_new();
  if (v6)
  {
    v12 = objc_opt_new();
    [v12 setLineBreakMode:0];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69DB688]];
  }

  [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB648]];
  [v10 boundingRectWithSize:v6 options:v11 attributes:0 context:{a4, 0.0}];
  v14 = v13;
  v16 = v15;

  v17 = ceil(v14);
  v18 = ceil(v16);
  result.height = v18;
  result.width = v17;
  return result;
}

+ (CGSize)sizeForTitle:(id)a3 boundingSize:(CGSize)a4
{
  width = a4.width;
  v5 = a4.width + -40.0;
  v6 = a3;
  v7 = +[PXPeopleConfirmationHeaderView _titleFont];
  [PXPeopleConfirmationHeaderView _sizeForString:v6 width:0 multiline:v7 font:v5];
  v9 = v8;

  v10 = v9 + 10.0 + 10.0;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

@end