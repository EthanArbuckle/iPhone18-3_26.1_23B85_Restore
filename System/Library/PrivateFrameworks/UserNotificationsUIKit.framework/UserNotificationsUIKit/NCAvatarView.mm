@interface NCAvatarView
- (NCAvatarView)initWithBundleIdentifier:(id)identifier communicationContext:(id)context pointSize:(double)size;
- (void)_configureBackgroundMaterialViewIfNecessary;
- (void)_configureImageViewIfNecessary;
- (void)_loadImage:(id)image needsFormatting:(BOOL)formatting animated:(BOOL)animated;
- (void)_updateAvatarImageIfNecessary;
- (void)layoutSubviews;
- (void)setMaterialBacked:(BOOL)backed;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NCAvatarView

- (NCAvatarView)initWithBundleIdentifier:(id)identifier communicationContext:(id)context pointSize:(double)size
{
  identifierCopy = identifier;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = NCAvatarView;
  v11 = [(NCAvatarView *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_communicationContext, context);
    v12->_pointSize = size;
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    v12->_userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

    objc_storeStrong(&v12->_bundleIdentifier, identifier);
  }

  return v12;
}

- (void)setMaterialBacked:(BOOL)backed
{
  if (self->_materialBacked != backed)
  {
    self->_materialBacked = backed;
    if (backed)
    {

      [(NCAvatarView *)self setNeedsLayout];
    }

    else
    {
      [(MTMaterialView *)self->_backgroundMaterialView removeFromSuperview];
      backgroundMaterialView = self->_backgroundMaterialView;
      self->_backgroundMaterialView = 0;
    }
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = NCAvatarView;
  [(NCAvatarView *)&v6 layoutSubviews];
  [(NCAvatarView *)self _configureImageViewIfNecessary];
  [(NCAvatarView *)self _updateAvatarImageIfNecessary];
  [(NCAvatarView *)self _configureBackgroundMaterialViewIfNecessary];
  if ([(_UNNotificationCommunicationContext *)self->_communicationContext isBusinessCorrespondence])
  {
    v3 = NCProminentIconCornerRadius();
    [(NCAvatarView *)self _setContinuousCornerRadius:?];
    [(MTMaterialView *)self->_backgroundMaterialView _setContinuousCornerRadius:v3];
    [(UIImageView *)self->_imageView _setContinuousCornerRadius:v3];
  }

  else
  {
    [(NCAvatarView *)self frame];
    CGRectGetHeight(v7);
    UIRoundToScale();
    v5 = v4;
    [(NCAvatarView *)self _setCornerRadius:?];
    [(MTMaterialView *)self->_backgroundMaterialView _setCornerRadius:v5];
    [(UIImageView *)self->_imageView _setCornerRadius:v5];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = NCAvatarView;
  [(NCAvatarView *)&v6 traitCollectionDidChange:change];
  traitCollection = [(NCAvatarView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (self->_userInterfaceStyle != userInterfaceStyle)
  {
    self->_userInterfaceStyle = userInterfaceStyle;
    self->_avatarImageNeedsUpdate = 1;
    [(NCAvatarView *)self setNeedsLayout];
  }
}

- (void)_configureImageViewIfNecessary
{
  if (!self->_imageView)
  {
    v3 = objc_alloc(MEMORY[0x277D755E8]);
    [(NCAvatarView *)self bounds];
    v4 = [v3 initWithFrame:?];
    imageView = self->_imageView;
    self->_imageView = v4;

    v6 = self->_imageView;
    systemDarkGrayColor = [MEMORY[0x277D75348] systemDarkGrayColor];
    [(UIImageView *)v6 setTintColor:systemDarkGrayColor];

    [(UIImageView *)self->_imageView setClipsToBounds:1];
    [(NCAvatarView *)self addSubview:self->_imageView];
    v8 = self->_imageView;

    [(UIImageView *)v8 setAutoresizingMask:18];
  }
}

- (void)_updateAvatarImageIfNecessary
{
  image = [(UIImageView *)self->_imageView image];
  if (image && !self->_avatarImageNeedsUpdate)
  {
  }

  else
  {
    isGeneratingAvatarImage = self->_isGeneratingAvatarImage;

    if (!isGeneratingAvatarImage)
    {
      traitCollection = [(NCAvatarView *)self traitCollection];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __45__NCAvatarView__updateAvatarImageIfNecessary__block_invoke;
      v14[3] = &unk_278371CA8;
      v14[4] = self;
      v6 = [traitCollection traitCollectionByModifyingTraits:v14];

      self->_isGeneratingAvatarImage = 1;
      objc_initWeak(&location, self);
      v7 = CACurrentMediaTime();
      v8 = [MEMORY[0x277D77F40] sharedInstanceForPointSize:self->_pointSize];
      communicationContext = self->_communicationContext;
      bundleIdentifier = self->_bundleIdentifier;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __45__NCAvatarView__updateAvatarImageIfNecessary__block_invoke_2;
      v11[3] = &unk_278371CF8;
      objc_copyWeak(v12, &location);
      v12[1] = *&v7;
      [v8 renderAvatarForCommunicationContext:communicationContext bundleIdentifier:bundleIdentifier compatibleWithTraitCollection:v6 completion:v11];

      objc_destroyWeak(v12);
      objc_destroyWeak(&location);
    }
  }
}

void __45__NCAvatarView__updateAvatarImageIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D759A0];
  v5 = a2;
  v4 = [v3 mainScreen];
  [v4 scale];
  [v5 setDisplayScale:?];

  [v5 setUserInterfaceStyle:*(*(a1 + 32) + 408)];
}

void __45__NCAvatarView__updateAvatarImageIfNecessary__block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__NCAvatarView__updateAvatarImageIfNecessary__block_invoke_3;
  v7[3] = &unk_278371CD0;
  objc_copyWeak(v9, (a1 + 32));
  v9[1] = *(a1 + 40);
  v8 = v5;
  v10 = a3;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);

  objc_destroyWeak(v9);
}

void __45__NCAvatarView__updateAvatarImageIfNecessary__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _loadImage:*(a1 + 32) needsFormatting:*(a1 + 56) animated:CACurrentMediaTime() - *(a1 + 48) > 0.0333];
    WeakRetained = v3;
    *(v3 + 432) = 0;
  }
}

- (void)_loadImage:(id)image needsFormatting:(BOOL)formatting animated:(BOOL)animated
{
  animatedCopy = animated;
  imageView = self->_imageView;
  if (formatting)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  imageCopy = image;
  [(UIImageView *)imageView setContentMode:v8];
  image = [(UIImageView *)self->_imageView image];

  [(UIImageView *)self->_imageView setImage:imageCopy];
  self->_avatarImageNeedsUpdate = 0;
  v11 = self->_imageView;
  if (!animatedCopy || image)
  {

    [(UIImageView *)v11 setAlpha:1.0];
  }

  else
  {
    [(UIImageView *)v11 setAlpha:0.0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__NCAvatarView__loadImage_needsFormatting_animated___block_invoke;
    v12[3] = &unk_27836F6A8;
    v12[4] = self;
    [MEMORY[0x277D75D18] _animateUsingSpringWithTension:1 friction:v12 interactive:0 animations:240.0 completion:20.0];
  }
}

- (void)_configureBackgroundMaterialViewIfNecessary
{
  v21[3] = *MEMORY[0x277D85DE8];
  if (self->_materialBacked && !self->_backgroundMaterialView)
  {
    traitCollection = [(NCAvatarView *)self traitCollection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__NCAvatarView__configureBackgroundMaterialViewIfNecessary__block_invoke;
    v19[3] = &unk_278371CA8;
    v19[4] = self;
    v4 = [traitCollection traitCollectionByModifyingTraits:v19];

    v5 = MEMORY[0x277D26718];
    v6 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
    v20[0] = v6;
    v21[0] = @"avatarBackground";
    v7 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v20[1] = v7;
    v21[1] = @"avatarBackground";
    v8 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    v20[2] = v8;
    v21[2] = @"avatarBackgroundDark";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v5 materialViewWithRecipeNamesByTraitCollection:v9 inBundle:v10 options:0 initialWeighting:0 scaleAdjustment:v4 compatibleWithTraitCollection:1.0];
    backgroundMaterialView = self->_backgroundMaterialView;
    self->_backgroundMaterialView = v11;

    v13 = self->_backgroundMaterialView;
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@.%p", v16, self];
    [(MTMaterialView *)v13 setGroupNameBase:v17];

    [(NCAvatarView *)self insertSubview:self->_backgroundMaterialView atIndex:0];
    v18 = self->_backgroundMaterialView;
    [(NCAvatarView *)self bounds];
    [(MTMaterialView *)v18 setFrame:?];
    [(MTMaterialView *)self->_backgroundMaterialView setAutoresizingMask:18];
  }
}

@end