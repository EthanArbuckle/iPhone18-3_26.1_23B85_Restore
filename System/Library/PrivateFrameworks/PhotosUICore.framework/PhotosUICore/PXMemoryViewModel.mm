@interface PXMemoryViewModel
- (PXMemoryViewModel)init;
- (UIEdgeInsets)layoutMargins;
- (void)performChanges:(id)changes;
- (void)setIsHighlighted:(BOOL)highlighted;
- (void)setKeyAsset:(id)asset;
- (void)setLocalizedDateText:(id)text;
- (void)setLocalizedTitle:(id)title;
- (void)setSpecSet:(int64_t)set;
- (void)setVariant:(int64_t)variant;
@end

@implementation PXMemoryViewModel

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXMemoryViewModel;
  [(PXMemoryViewModel *)&v3 performChanges:changes];
}

- (void)setVariant:(int64_t)variant
{
  if (self->_variant != variant)
  {
    [(PXMemoryViewModel *)self signalChange:16];
    self->_variant = variant;
  }
}

- (void)setSpecSet:(int64_t)set
{
  if (self->_specSet != set)
  {
    [(PXMemoryViewModel *)self signalChange:16];
    self->_specSet = set;
  }
}

- (void)setIsHighlighted:(BOOL)highlighted
{
  if (self->_isHighlighted != highlighted)
  {
    [(PXMemoryViewModel *)self signalChange:8];
    self->_isHighlighted = highlighted;
  }
}

- (void)setKeyAsset:(id)asset
{
  assetCopy = asset;
  v4 = self->_keyAsset;
  keyAsset = v4;
  if (v4 != assetCopy)
  {
    v6 = [(PXDisplayAsset *)v4 isEqual:assetCopy];

    v7 = assetCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PXMemoryViewModel *)self signalChange:4];
    v8 = assetCopy;
    keyAsset = self->_keyAsset;
    self->_keyAsset = v8;
  }

  v7 = assetCopy;
LABEL_5:
}

- (void)setLocalizedTitle:(id)title
{
  titleCopy = title;
  v4 = self->_localizedTitle;
  localizedTitle = v4;
  if (v4 != titleCopy)
  {
    v6 = [(NSString *)v4 isEqualToString:titleCopy];

    v7 = titleCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PXMemoryViewModel *)self signalChange:2];
    v8 = titleCopy;
    localizedTitle = self->_localizedTitle;
    self->_localizedTitle = v8;
  }

  v7 = titleCopy;
LABEL_5:
}

- (void)setLocalizedDateText:(id)text
{
  textCopy = text;
  v4 = self->_localizedDateText;
  localizedDateText = v4;
  if (v4 != textCopy)
  {
    v6 = [(NSString *)v4 isEqualToString:textCopy];

    v7 = textCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PXMemoryViewModel *)self signalChange:1];
    v8 = textCopy;
    localizedDateText = self->_localizedDateText;
    self->_localizedDateText = v8;
  }

  v7 = textCopy;
LABEL_5:
}

- (PXMemoryViewModel)init
{
  v7.receiver = self;
  v7.super_class = PXMemoryViewModel;
  v2 = [(PXMemoryViewModel *)&v7 init];
  v3 = v2;
  if (v2)
  {
    localizedTitle = v2->_localizedTitle;
    v2->_localizedTitle = &stru_1F1741150;

    localizedDateText = v3->_localizedDateText;
    v3->_localizedDateText = &stru_1F1741150;
  }

  return v3;
}

@end