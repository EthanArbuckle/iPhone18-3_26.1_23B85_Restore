@interface PXAssetEditOperationTypesByVariationType
@end

@implementation PXAssetEditOperationTypesByVariationType

void ___PXAssetEditOperationTypesByVariationType_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___PXAssetEditOperationTypesByVariationType_block_invoke_2;
  aBlock[3] = &unk_1E7748D18;
  v6 = v0;
  v1 = v0;
  v2 = _Block_copy(aBlock);
  v2[2](v2, 0);
  v2[2](v2, 1);
  v2[2](v2, 2);
  v2[2](v2, 3);
  v3 = [v1 copy];
  v4 = _PXAssetEditOperationTypesByVariationType_editOperationTypesByVariationType;
  _PXAssetEditOperationTypesByVariationType_editOperationTypesByVariationType = v3;
}

void ___PXAssetEditOperationTypesByVariationType_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%li", @"PXAssetEditOperation.Variation", a2];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

@end