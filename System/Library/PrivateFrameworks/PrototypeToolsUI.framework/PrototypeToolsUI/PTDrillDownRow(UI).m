@interface PTDrillDownRow(UI)
- (id)defaultUIAction;
@end

@implementation PTDrillDownRow(UI)

- (id)defaultUIAction
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__PTDrillDownRow_UI__defaultUIAction__block_invoke;
  v3[3] = &unk_279ACAD00;
  v3[4] = a1;
  v1 = [PTUIPushViewControllerRowAction actionWithViewControllerCreator:v3];

  return v1;
}

@end