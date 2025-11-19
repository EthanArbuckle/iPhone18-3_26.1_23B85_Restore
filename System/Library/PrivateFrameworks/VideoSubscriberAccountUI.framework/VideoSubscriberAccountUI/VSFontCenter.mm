@interface VSFontCenter
- (UITraitEnvironment)traitEnvironment;
- (VSFontCenter)initWithTraitEnvironment:(id)a3;
- (void)_updateFontsWithTraitCollection:(id)a3;
- (void)dealloc;
- (void)setTraitCollection:(id)a3;
@end

@implementation VSFontCenter

- (VSFontCenter)initWithTraitEnvironment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VSFontCenter;
  v5 = [(VSFontCenter *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
      v7 = [v6 traitCollection];
      objc_storeWeak(&v5->_traitEnvironment, v6);
    }

    else
    {
      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      [v6 addObserver:v5 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
      v7 = 0;
    }

    [(VSFontCenter *)v5 setTraitCollection:v7];
  }

  return v5;
}

- (void)dealloc
{
  if (!self->_traitCollection)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];
  }

  v4.receiver = self;
  v4.super_class = VSFontCenter;
  [(VSFontCenter *)&v4 dealloc];
}

- (void)_updateFontsWithTraitCollection:(id)a3
{
  v4 = MEMORY[0x277D74300];
  v5 = *MEMORY[0x277D76A00];
  v6 = a3;
  v7 = [v4 preferredFontForTextStyle:v5 compatibleWithTraitCollection:v6];
  [(VSFontCenter *)self setTitle0Font:v7];

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:v6];
  [(VSFontCenter *)self setTitle1Font:v8];

  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:v6];
  [(VSFontCenter *)self setTitle2Font:v9];

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28] compatibleWithTraitCollection:v6];
  [(VSFontCenter *)self setTitle3Font:v10];

  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:v6];
  [(VSFontCenter *)self setHeadlineFont:v11];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:v6];
  [(VSFontCenter *)self setSubheadlineFont:v12];

  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v6];
  [(VSFontCenter *)self setBodyFont:v13];

  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:v6];
  [(VSFontCenter *)self setCalloutFont:v14];

  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:v6];
  [(VSFontCenter *)self setFootnoteFont:v15];

  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:v6];
  [(VSFontCenter *)self setCaption1Font:v16];

  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:v6];

  [(VSFontCenter *)self setCaption2Font:v17];
  v18 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D743F8]];
  [(VSFontCenter *)self setAppAgeRatingFont:v18];
}

- (void)setTraitCollection:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  traitCollection = self->_traitCollection;
  self->_traitCollection = v4;

  [(VSFontCenter *)self _updateFontsWithTraitCollection:v6];
}

- (UITraitEnvironment)traitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_traitEnvironment);

  return WeakRetained;
}

@end