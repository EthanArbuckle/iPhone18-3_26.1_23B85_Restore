@interface AccountCell
- (AccountCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_profileImageDidChange:(id)change;
- (void)_updateAccountImage;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AccountCell

- (AccountCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = AccountCell;
  specifier = [(PSTableCell *)&v13 initWithStyle:style reuseIdentifier:identifier, specifier];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
  vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
  v8 = [v6 imageWithTintColor:vui_keyColor renderingMode:2];

  v9 = objc_alloc_init(MEMORY[0x1E698BB40]);
  v10 = [v9 profilePictureForPicture:v8];

  [(AccountCell *)specifier setPlaceHolderImage:v10];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:specifier selector:sel__profileImageDidChange_ name:@"VUIAuthenticationManagerProfileImageDidChangeNotification" object:0];

  return specifier;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = AccountCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  [(AccountCell *)self setAccessoryType:1, v11.receiver, v11.super_class];
  textLabel = [(AccountCell *)self textLabel];
  v6 = [specifierCopy propertyForKey:*MEMORY[0x1E69C59A8]];
  [textLabel setText:v6];

  detailTextLabel = [(AccountCell *)self detailTextLabel];
  v8 = [specifierCopy propertyForKey:*MEMORY[0x1E69C59A0]];
  [detailTextLabel setText:v8];

  detailTextLabel2 = [(AccountCell *)self detailTextLabel];
  v10 = [specifierCopy propertyForKey:*MEMORY[0x1E69C5998]];

  [detailTextLabel2 setTextColor:v10];
  [(AccountCell *)self _updateAccountImage];
  [(AccountCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AccountCell;
  [(PSTableCell *)&v4 layoutSubviews];
  imageView = [(AccountCell *)self imageView];
  [imageView setBounds:{0.0, 0.0, 56.0, 56.0}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = AccountCell;
  [(AccountCell *)&v5 sizeThatFits:fits.width, fits.height];
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

  placeHolderImage = +[VUIAuthenticationManager userProfileImage];
  if (placeHolderImage)
  {
LABEL_5:
    v6 = placeHolderImage;
    goto LABEL_6;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v6 = [VUIAuthenticationManager monogramAvatarForSize:[(AccountCell *)self vuiIsRTL] scale:56.0 isRTL:56.0, v5];

  if (!v6)
  {
LABEL_4:
    placeHolderImage = [(AccountCell *)self placeHolderImage];
    goto LABEL_5;
  }

LABEL_6:
  imageView = [(AccountCell *)self imageView];
  [imageView setImage:v6];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__AccountCell__updateAccountImage__block_invoke;
  v8[3] = &unk_1E872D768;
  v8[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
}

- (void)_profileImageDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = __38__AccountCell__profileImageDidChange___block_invoke;
  v5 = &unk_1E872D768;
  selfCopy = self;
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