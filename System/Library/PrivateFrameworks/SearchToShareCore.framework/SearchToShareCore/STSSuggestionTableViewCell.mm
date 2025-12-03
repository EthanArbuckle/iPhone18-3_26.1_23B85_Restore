@interface STSSuggestionTableViewCell
- (STSSuggestionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation STSSuggestionTableViewCell

- (STSSuggestionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = STSSuggestionTableViewCell;
  v4 = [(STSSuggestionTableViewCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = _UIImageGetSearchGlass();
    v6 = MEMORY[0x277D755B8];
    [v5 size];
    v8 = v7;
    v10 = v9;
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    v12 = _UIImageGetSearchGlass();
    v13 = [v6 _tintedImageForSize:systemWhiteColor withTint:0 effectsImage:v12 maskImage:0 style:{v8, v10}];

    imageView = [(STSSuggestionTableViewCell *)v4 imageView];
    [imageView setImage:v13];
  }

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = STSSuggestionTableViewCell;
  [(STSSuggestionTableViewCell *)&v13 layoutSubviews];
  imageView = [(STSSuggestionTableViewCell *)self imageView];
  [imageView frame];

  imageView2 = [(STSSuggestionTableViewCell *)self imageView];
  [imageView2 setFrame:{14.0, 22.0, 18.0, 18.0}];

  textLabel = [(STSSuggestionTableViewCell *)self textLabel];
  [textLabel frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  textLabel2 = [(STSSuggestionTableViewCell *)self textLabel];
  [textLabel2 setFrame:{38.0, v7, v9, v11}];
}

@end