@interface CACElementActionsPresentationManager
- (void)showElementActionsForElement:(id)a3 usingPortraitUpRect:(CGRect)a4;
@end

@implementation CACElementActionsPresentationManager

- (void)showElementActionsForElement:(id)a3 usingPortraitUpRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__CACElementActionsPresentationManager_showElementActionsForElement_usingPortraitUpRect___block_invoke;
  v17[3] = &unk_279CEBDE0;
  v17[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__CACElementActionsPresentationManager_showElementActionsForElement_usingPortraitUpRect___block_invoke_2;
  v11[3] = &unk_279CEBE08;
  v12 = v9;
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  v10 = v9;
  [(CACSimpleContentViewManager *)self showViewControllerWithCreationHandler:v17 updateHandler:v11];
}

CACElementActionsPresentationViewController *__89__CACElementActionsPresentationManager_showElementActionsForElement_usingPortraitUpRect___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(CACElementActionsPresentationViewController);
  [(CACElementActionsPresentationViewController *)v2 setElementActionsDelegate:*(a1 + 32)];

  return v2;
}

void __89__CACElementActionsPresentationManager_showElementActionsForElement_usingPortraitUpRect___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setElement:v3];
  [v4 setSourceRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

@end