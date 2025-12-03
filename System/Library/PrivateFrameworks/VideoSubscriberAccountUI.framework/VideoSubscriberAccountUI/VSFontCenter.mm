@interface VSFontCenter
- (UITraitEnvironment)traitEnvironment;
- (VSFontCenter)initWithTraitEnvironment:(id)environment;
- (void)_updateFontsWithTraitCollection:(id)collection;
- (void)dealloc;
- (void)setTraitCollection:(id)collection;
@end

@implementation VSFontCenter

- (VSFontCenter)initWithTraitEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = VSFontCenter;
  v5 = [(VSFontCenter *)&v9 init];
  if (v5)
  {
    if (environmentCopy)
    {
      defaultCenter = environmentCopy;
      traitCollection = [defaultCenter traitCollection];
      objc_storeWeak(&v5->_traitEnvironment, defaultCenter);
    }

    else
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
      traitCollection = 0;
    }

    [(VSFontCenter *)v5 setTraitCollection:traitCollection];
  }

  return v5;
}

- (void)dealloc
{
  if (!self->_traitCollection)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];
  }

  v4.receiver = self;
  v4.super_class = VSFontCenter;
  [(VSFontCenter *)&v4 dealloc];
}

- (void)_updateFontsWithTraitCollection:(id)collection
{
  v4 = MEMORY[0x277D74300];
  v5 = *MEMORY[0x277D76A00];
  collectionCopy = collection;
  v7 = [v4 preferredFontForTextStyle:v5 compatibleWithTraitCollection:collectionCopy];
  [(VSFontCenter *)self setTitle0Font:v7];

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:collectionCopy];
  [(VSFontCenter *)self setTitle1Font:v8];

  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:collectionCopy];
  [(VSFontCenter *)self setTitle2Font:v9];

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28] compatibleWithTraitCollection:collectionCopy];
  [(VSFontCenter *)self setTitle3Font:v10];

  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:collectionCopy];
  [(VSFontCenter *)self setHeadlineFont:v11];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:collectionCopy];
  [(VSFontCenter *)self setSubheadlineFont:v12];

  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:collectionCopy];
  [(VSFontCenter *)self setBodyFont:v13];

  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:collectionCopy];
  [(VSFontCenter *)self setCalloutFont:v14];

  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:collectionCopy];
  [(VSFontCenter *)self setFootnoteFont:v15];

  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:collectionCopy];
  [(VSFontCenter *)self setCaption1Font:v16];

  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:collectionCopy];

  [(VSFontCenter *)self setCaption2Font:v17];
  v18 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D743F8]];
  [(VSFontCenter *)self setAppAgeRatingFont:v18];
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy copy];
  traitCollection = self->_traitCollection;
  self->_traitCollection = v4;

  [(VSFontCenter *)self _updateFontsWithTraitCollection:collectionCopy];
}

- (UITraitEnvironment)traitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_traitEnvironment);

  return WeakRetained;
}

@end