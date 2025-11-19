@interface AccountCell
- (AccountCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_profileImageDidChange:(id)a3;
- (void)_updateAccountImage;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AccountCell

- (AccountCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v13.receiver = self;
  v13.super_class = AccountCell;
  v5 = [(PSTableCell *)&v13 initWithStyle:a3 reuseIdentifier:a4, a5];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
  v7 = [MEMORY[0x1E69DC888] vui_keyColor];
  v8 = [v6 imageWithTintColor:v7 renderingMode:2];

  v9 = objc_alloc_init(MEMORY[0x1E698BB40]);
  v10 = [v9 profilePictureForPicture:v8];

  [(AccountCell *)v5 setPlaceHolderImage:v10];
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:v5 selector:sel__profileImageDidChange_ name:@"VUIAuthenticationManagerProfileImageDidChangeNotification" object:0];

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v11.receiver = self;
  v11.super_class = AccountCell;
  v4 = a3;
  [(PSTableCell *)&v11 refreshCellContentsWithSpecifier:v4];
  [(AccountCell *)self setAccessoryType:1, v11.receiver, v11.super_class];
  v5 = [(AccountCell *)self textLabel];
  v6 = [v4 propertyForKey:*MEMORY[0x1E69C59A8]];
  [v5 setText:v6];

  v7 = [(AccountCell *)self detailTextLabel];
  v8 = [v4 propertyForKey:*MEMORY[0x1E69C59A0]];
  [v7 setText:v8];

  v9 = [(AccountCell *)self detailTextLabel];
  v10 = [v4 propertyForKey:*MEMORY[0x1E69C5998]];

  [v9 setTextColor:v10];
  [(AccountCell *)self _updateAccountImage];
  [(AccountCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AccountCell;
  [(PSTableCell *)&v4 layoutSubviews];
  v3 = [(AccountCell *)self imageView];
  [v3 setBounds:{0.0, 0.0, 56.0, 56.0}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = AccountCell;
  [(AccountCell *)&v5 sizeThatFits:a3.width, a3.height];
  if (v4 < 72.0)
  {
    v4 = 72.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updateAccountImage
{
  if (!+[VUIAuthenticationManager userHasActiveAccount])
  {
    goto LABEL_4;
  }

  v3 = +[VUIAuthenticationManager userProfileImage];
  if (v3)
  {
LABEL_5:
    v6 = v3;
    goto LABEL_6;
  }

  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
  v6 = [VUIAuthenticationManager monogramAvatarForSize:[(AccountCell *)self vuiIsRTL] scale:56.0 isRTL:56.0, v5];

  if (!v6)
  {
LABEL_4:
    v3 = [(AccountCell *)self placeHolderImage];
    goto LABEL_5;
  }

LABEL_6:
  v7 = [(AccountCell *)self imageView];
  [v7 setImage:v6];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__AccountCell__updateAccountImage__block_invoke;
  v8[3] = &unk_1E872D768;
  v8[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
}

- (void)_profileImageDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = __38__AccountCell__profileImageDidChange___block_invoke;
  v5 = &unk_1E872D768;
  v6 = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end