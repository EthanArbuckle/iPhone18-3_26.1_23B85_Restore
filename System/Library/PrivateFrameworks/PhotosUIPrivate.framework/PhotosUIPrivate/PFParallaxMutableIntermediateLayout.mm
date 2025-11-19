@interface PFParallaxMutableIntermediateLayout
@end

@implementation PFParallaxMutableIntermediateLayout

void __72__PFParallaxMutableIntermediateLayout_UIDebugging__debugQuickLookObject__block_invoke(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = *(*(a1 + 40) + 8);
  v12 = v11[4];
  v13 = v11[5];
  v14 = v11[6];
  v15 = v11[7];
  v16 = a2;
  v19.origin.x = v12;
  v19.origin.y = v13;
  v19.size.width = v14;
  v19.size.height = v15;
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  *(*(*(a1 + 40) + 8) + 32) = CGRectUnion(v19, v20);
  v17 = [MEMORY[0x1E696B098] valueWithCGRect:{a3, a4, a5, a6}];
  [*(a1 + 32) setObject:v17 forKeyedSubscript:v16];
}

@end