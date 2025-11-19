@interface TFAppLockupViewSpecification
- (CGSize)iconSize;
- (TFAppLockupViewSpecification)initWithTraitCollection:(id)a3;
- (id)_createSubtitleLabelFontWithTraitCollection:(id)a3;
- (id)_createTitleLabelFontWithTraitCollection:(id)a3;
@end

@implementation TFAppLockupViewSpecification

- (TFAppLockupViewSpecification)initWithTraitCollection:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = TFAppLockupViewSpecification;
  v5 = [(TFAppLockupViewSpecification *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(TFAppLockupViewSpecification *)v5 _createTitleLabelFontWithTraitCollection:v4];
    titleLabelFont = v6->_titleLabelFont;
    v6->_titleLabelFont = v7;

    v9 = [(TFAppLockupViewSpecification *)v6 _createSubtitleLabelFontWithTraitCollection:v4];
    subtitleLabelFont = v6->_subtitleLabelFont;
    v6->_subtitleLabelFont = v9;

    v11 = MEMORY[0x277D75520];
    v12 = [(TFAppLockupViewSpecification *)v6 _titleFontStyle];
    v13 = [v11 metricsForTextStyle:v12];
    [v13 scaledValueForValue:24.0];
    v6->_titleLabelBaselineToFirstSubtitleLabelBaseline = v14;

    v15 = MEMORY[0x277D75520];
    v16 = [(TFAppLockupViewSpecification *)v6 _subtitleFontStyle];
    v17 = [v15 metricsForTextStyle:v16];
    [v17 scaledValueForValue:20.0];
    v6->_firstSubtitleLabelBaselineToSecondSubtitleLabelBaseline = v18;
  }

  return v6;
}

- (CGSize)iconSize
{
  v2 = 80.0;
  v3 = 80.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_createTitleLabelFontWithTraitCollection:(id)a3
{
  v4 = MEMORY[0x277D74310];
  v5 = a3;
  v6 = [(TFAppLockupViewSpecification *)self _titleFontStyle];
  v7 = [v4 tf_systemFontWithTextStyle:v6 weight:v5 forTraitCollection:*MEMORY[0x277D74420]];

  return v7;
}

- (id)_createSubtitleLabelFontWithTraitCollection:(id)a3
{
  v4 = MEMORY[0x277D74310];
  v5 = a3;
  v6 = [(TFAppLockupViewSpecification *)self _subtitleFontStyle];
  v7 = [v4 tf_systemFontWithTextStyle:v6 weight:v5 forTraitCollection:*MEMORY[0x277D74418]];

  return v7;
}

@end