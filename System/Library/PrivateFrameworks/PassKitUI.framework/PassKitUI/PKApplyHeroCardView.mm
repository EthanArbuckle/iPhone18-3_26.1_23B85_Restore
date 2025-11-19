@interface PKApplyHeroCardView
- (PKApplyHeroCardView)initWithFeatureIdentifier:(unint64_t)a3;
@end

@implementation PKApplyHeroCardView

- (PKApplyHeroCardView)initWithFeatureIdentifier:(unint64_t)a3
{
  if (a3 == 5)
  {
    v5 = PKPassKitUIBundle();
    v6 = [v5 URLForResource:@"SAVINGS_Icon" withExtension:@"pdf"];
    v7 = PKUIScreenScale();
    v8 = PKUIImageFromPDF(v6, 62.0, 62.0, v7);
  }

  else
  {
    v9 = PKAccountHeroImageName();
    v5 = v9;
    if (v9)
    {
      v8 = PKUIImageNamed(v9);
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = [(PKHeroCardExplanationHeaderView *)self initWithImage:v8];
  v11 = v10;
  if (v10)
  {
    v10->_featureIdentifier = a3;
    if (a3 == 5)
    {
      [(PKHeroCardExplanationHeaderView *)v10 setPadding:4];
      [(PKHeroCardExplanationHeaderView *)v11 setHideBorders:1];
      [(PKHeroCardExplanationHeaderView *)v11 setCornerRadius:8.0];
      [(PKHeroCardExplanationHeaderView *)v11 setSize:0];
    }
  }

  return v11;
}

@end