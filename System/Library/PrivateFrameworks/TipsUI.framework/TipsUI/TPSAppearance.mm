@interface TPSAppearance
+ (BOOL)isMacUI;
+ (BOOL)isPhoneUI;
+ (double)displayMultiplier;
+ (id)titleLabelFont;
- (CGSize)size;
- (CGSize)sizeWithSizes:(id)sizes mediaSizeType:(unint64_t)type;
- (double)displayScale;
- (double)heightToWidthRatioFromSizes:(id)sizes mediaSizeType:(unint64_t)type defaultValue:(double)value;
- (id)initAppearanceWithTraits:(id)traits size:(CGSize)size;
- (void)setTraitCollection:(id)collection;
- (void)updateMediaSizeType;
@end

@implementation TPSAppearance

+ (BOOL)isPhoneUI
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

  return v3;
}

+ (BOOL)isMacUI
{
  if (isMacUI_onceToken != -1)
  {
    +[TPSAppearance isMacUI];
  }

  return isMacUI_isMacIdiom;
}

void __24__TPSAppearance_isMacUI__block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  isMacUI_isMacIdiom = [v0 userInterfaceIdiom] == 5;
}

+ (double)displayMultiplier
{
  if (displayMultiplier_predicate[0] != -1)
  {
    +[TPSAppearance displayMultiplier];
  }

  return *&displayMultiplier_gDisplayMultiplier;
}

void __34__TPSAppearance_displayMultiplier__block_invoke()
{
  if (+[TPSAppearance isPhoneUI])
  {
    displayMultiplier_gDisplayMultiplier = 0x3FF0000000000000;
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 bounds];
    Width = CGRectGetWidth(v4);
    [v2 bounds];
    Height = CGRectGetHeight(v5);
    if (Width < Height)
    {
      Height = Width;
    }

    *&displayMultiplier_gDisplayMultiplier = Height / 768.0;
  }
}

+ (id)titleLabelFont
{
  v3 = objc_alloc(MEMORY[0x277D75520]);
  v4 = [v3 initForTextStyle:*MEMORY[0x277D76A20]];
  v5 = [self systemFontOfSize:22.0 weight:*MEMORY[0x277D74420]];
  v6 = [v4 scaledFontForFont:v5];

  return v6;
}

- (id)initAppearanceWithTraits:(id)traits size:(CGSize)size
{
  height = size.height;
  width = size.width;
  traitsCopy = traits;
  v11.receiver = self;
  v11.super_class = TPSAppearance;
  v8 = [(TPSAppearance *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TPSAppearance *)v8 setSize:width, height];
    [(TPSAppearance *)v9 setTraitCollection:traitsCopy];
    [(TPSAppearance *)v9 updateAppearanceWithSize:width, height];
  }

  return v9;
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  p_traitCollection = &self->_traitCollection;
  if (self->_traitCollection != collectionCopy)
  {
    v7 = collectionCopy;
    objc_storeStrong(p_traitCollection, collection);
    p_traitCollection = [(TPSAppearance *)self updateMediaSizeType];
    collectionCopy = v7;
  }

  MEMORY[0x2821F96F8](p_traitCollection, collectionCopy);
}

- (void)updateMediaSizeType
{
  traitCollection = [(TPSAppearance *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  traitCollection2 = [(TPSAppearance *)self traitCollection];
  horizontalSizeClass = [traitCollection2 horizontalSizeClass];

  v8 = horizontalSizeClass == 1 || verticalSizeClass == 1;

  [(TPSAppearance *)self setMediaSizeType:v8];
}

- (double)displayScale
{
  [(UITraitCollection *)self->_traitCollection displayScale];
  if (v3 > 0.0)
  {
    traitCollection = self->_traitCollection;

    [(UITraitCollection *)traitCollection displayScale];
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v6 = v5;

    return v6;
  }

  return result;
}

- (double)heightToWidthRatioFromSizes:(id)sizes mediaSizeType:(unint64_t)type defaultValue:(double)value
{
  [sizes heightToWidthRatioForViewMode:type == 0];
  if (result <= 0.0)
  {
    return value;
  }

  return result;
}

- (CGSize)sizeWithSizes:(id)sizes mediaSizeType:(unint64_t)type
{
  sizesCopy = sizes;
  v7 = sizesCopy;
  if (type)
  {
    [sizesCopy compact];
  }

  else
  {
    [sizesCopy regular];
  }
  v8 = ;
  v9 = v8;
  if (v8)
  {
    width = [v8 width];
    [width floatValue];
    [(TPSAppearance *)self nativeSizeForValue:v11];
    v13 = v12;

    height = [v9 height];
    [height floatValue];
    [(TPSAppearance *)self nativeSizeForValue:v15];
    v17 = v16;
  }

  else
  {
    v13 = 0.0;
    v17 = 0.0;
  }

  v18 = v13;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end