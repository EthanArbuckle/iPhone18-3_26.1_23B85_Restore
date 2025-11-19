@interface STSSuggestionTableViewCell
- (STSSuggestionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation STSSuggestionTableViewCell

- (STSSuggestionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = STSSuggestionTableViewCell;
  v4 = [(STSSuggestionTableViewCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = _UIImageGetSearchGlass();
    v6 = MEMORY[0x277D755B8];
    [v5 size];
    v8 = v7;
    v10 = v9;
    v11 = [MEMORY[0x277D75348] systemWhiteColor];
    v12 = _UIImageGetSearchGlass();
    v13 = [v6 _tintedImageForSize:v11 withTint:0 effectsImage:v12 maskImage:0 style:{v8, v10}];

    v14 = [(STSSuggestionTableViewCell *)v4 imageView];
    [v14 setImage:v13];
  }

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = STSSuggestionTableViewCell;
  [(STSSuggestionTableViewCell *)&v13 layoutSubviews];
  v3 = [(STSSuggestionTableViewCell *)self imageView];
  [v3 frame];

  v4 = [(STSSuggestionTableViewCell *)self imageView];
  [v4 setFrame:{14.0, 22.0, 18.0, 18.0}];

  v5 = [(STSSuggestionTableViewCell *)self textLabel];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(STSSuggestionTableViewCell *)self textLabel];
  [v12 setFrame:{38.0, v7, v9, v11}];
}

@end