@interface TFAppLockupViewSpecification
- (CGSize)iconSize;
- (TFAppLockupViewSpecification)initWithTraitCollection:(id)collection;
- (id)_createSubtitleLabelFontWithTraitCollection:(id)collection;
- (id)_createTitleLabelFontWithTraitCollection:(id)collection;
@end

@implementation TFAppLockupViewSpecification

- (TFAppLockupViewSpecification)initWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v20.receiver = self;
  v20.super_class = TFAppLockupViewSpecification;
  v5 = [(TFAppLockupViewSpecification *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(TFAppLockupViewSpecification *)v5 _createTitleLabelFontWithTraitCollection:collectionCopy];
    titleLabelFont = v6->_titleLabelFont;
    v6->_titleLabelFont = v7;

    v9 = [(TFAppLockupViewSpecification *)v6 _createSubtitleLabelFontWithTraitCollection:collectionCopy];
    subtitleLabelFont = v6->_subtitleLabelFont;
    v6->_subtitleLabelFont = v9;

    v11 = MEMORY[0x277D75520];
    _titleFontStyle = [(TFAppLockupViewSpecification *)v6 _titleFontStyle];
    v13 = [v11 metricsForTextStyle:_titleFontStyle];
    [v13 scaledValueForValue:24.0];
    v6->_titleLabelBaselineToFirstSubtitleLabelBaseline = v14;

    v15 = MEMORY[0x277D75520];
    _subtitleFontStyle = [(TFAppLockupViewSpecification *)v6 _subtitleFontStyle];
    v17 = [v15 metricsForTextStyle:_subtitleFontStyle];
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

- (id)_createTitleLabelFontWithTraitCollection:(id)collection
{
  v4 = MEMORY[0x277D74310];
  collectionCopy = collection;
  _titleFontStyle = [(TFAppLockupViewSpecification *)self _titleFontStyle];
  v7 = [v4 tf_systemFontWithTextStyle:_titleFontStyle weight:collectionCopy forTraitCollection:*MEMORY[0x277D74420]];

  return v7;
}

- (id)_createSubtitleLabelFontWithTraitCollection:(id)collection
{
  v4 = MEMORY[0x277D74310];
  collectionCopy = collection;
  _subtitleFontStyle = [(TFAppLockupViewSpecification *)self _subtitleFontStyle];
  v7 = [v4 tf_systemFontWithTextStyle:_subtitleFontStyle weight:collectionCopy forTraitCollection:*MEMORY[0x277D74418]];

  return v7;
}

@end