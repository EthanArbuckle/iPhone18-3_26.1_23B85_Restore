@interface UINavigationController(SUSlowRoll)
- (id)popViewControllerAnimated:()SUSlowRoll withCompletionBlock:;
@end

@implementation UINavigationController(SUSlowRoll)

- (id)popViewControllerAnimated:()SUSlowRoll withCompletionBlock:
{
  selfCopy = self;
  v9 = a2;
  v8 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setCompletionBlock:location];
  v6 = [selfCopy popViewControllerAnimated:v8 & 1];
  [MEMORY[0x277CD9FF0] commit];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);

  return v5;
}

@end