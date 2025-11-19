@interface UIView(CACUIAdditions)
- (id)cac_snapshot;
@end

@implementation UIView(CACUIAdditions)

- (id)cac_snapshot
{
  v2 = [a1 layer];
  [v2 layoutIfNeeded];

  v3 = [MEMORY[0x277D75568] defaultFormat];
  v4 = objc_alloc(MEMORY[0x277D75560]);
  [a1 bounds];
  v7 = [v4 initWithSize:v3 format:{v5, v6}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__UIView_CACUIAdditions__cac_snapshot__block_invoke;
  v10[3] = &unk_279CECB10;
  v10[4] = a1;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

@end