@interface PXTilingControllerPreheatRecord
- (PXTilingControllerPreheatHandler)preheatHandler;
- (PXTilingControllerPreheatRecord)initWithPreheatHandler:(id)a3 context:(void *)a4;
- (UIEdgeInsets)padding;
@end

@implementation PXTilingControllerPreheatRecord

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXTilingControllerPreheatHandler)preheatHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_preheatHandler);

  return WeakRetained;
}

- (PXTilingControllerPreheatRecord)initWithPreheatHandler:(id)a3 context:(void *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PXTilingControllerPreheatRecord;
  v7 = [(PXTilingControllerPreheatRecord *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_preheatHandler, v6);
    v8->_context = a4;
    v9 = [MEMORY[0x1E696AC90] indexSet];
    preheatedTileIndexes = v8->_preheatedTileIndexes;
    v8->_preheatedTileIndexes = v9;
  }

  return v8;
}

@end