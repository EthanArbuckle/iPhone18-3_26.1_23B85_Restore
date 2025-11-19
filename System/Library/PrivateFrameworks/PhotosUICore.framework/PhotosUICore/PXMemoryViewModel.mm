@interface PXMemoryViewModel
- (PXMemoryViewModel)init;
- (UIEdgeInsets)layoutMargins;
- (void)performChanges:(id)a3;
- (void)setIsHighlighted:(BOOL)a3;
- (void)setKeyAsset:(id)a3;
- (void)setLocalizedDateText:(id)a3;
- (void)setLocalizedTitle:(id)a3;
- (void)setSpecSet:(int64_t)a3;
- (void)setVariant:(int64_t)a3;
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

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXMemoryViewModel;
  [(PXMemoryViewModel *)&v3 performChanges:a3];
}

- (void)setVariant:(int64_t)a3
{
  if (self->_variant != a3)
  {
    [(PXMemoryViewModel *)self signalChange:16];
    self->_variant = a3;
  }
}

- (void)setSpecSet:(int64_t)a3
{
  if (self->_specSet != a3)
  {
    [(PXMemoryViewModel *)self signalChange:16];
    self->_specSet = a3;
  }
}

- (void)setIsHighlighted:(BOOL)a3
{
  if (self->_isHighlighted != a3)
  {
    [(PXMemoryViewModel *)self signalChange:8];
    self->_isHighlighted = a3;
  }
}

- (void)setKeyAsset:(id)a3
{
  v9 = a3;
  v4 = self->_keyAsset;
  keyAsset = v4;
  if (v4 != v9)
  {
    v6 = [(PXDisplayAsset *)v4 isEqual:v9];

    v7 = v9;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PXMemoryViewModel *)self signalChange:4];
    v8 = v9;
    keyAsset = self->_keyAsset;
    self->_keyAsset = v8;
  }

  v7 = v9;
LABEL_5:
}

- (void)setLocalizedTitle:(id)a3
{
  v9 = a3;
  v4 = self->_localizedTitle;
  localizedTitle = v4;
  if (v4 != v9)
  {
    v6 = [(NSString *)v4 isEqualToString:v9];

    v7 = v9;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PXMemoryViewModel *)self signalChange:2];
    v8 = v9;
    localizedTitle = self->_localizedTitle;
    self->_localizedTitle = v8;
  }

  v7 = v9;
LABEL_5:
}

- (void)setLocalizedDateText:(id)a3
{
  v9 = a3;
  v4 = self->_localizedDateText;
  localizedDateText = v4;
  if (v4 != v9)
  {
    v6 = [(NSString *)v4 isEqualToString:v9];

    v7 = v9;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PXMemoryViewModel *)self signalChange:1];
    v8 = v9;
    localizedDateText = self->_localizedDateText;
    self->_localizedDateText = v8;
  }

  v7 = v9;
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