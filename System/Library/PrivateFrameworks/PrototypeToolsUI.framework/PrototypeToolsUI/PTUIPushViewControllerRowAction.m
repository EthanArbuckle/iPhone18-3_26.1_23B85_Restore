@interface PTUIPushViewControllerRowAction
+ (id)actionWithViewControllerCreator:(id)a3;
- (id)defaultHandler;
@end

@implementation PTUIPushViewControllerRowAction

+ (id)actionWithViewControllerCreator:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v3 copy];

  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (id)defaultHandler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__PTUIPushViewControllerRowAction_defaultHandler__block_invoke;
  v4[3] = &unk_279ACACB0;
  v4[4] = self;
  v2 = MEMORY[0x2666F6670](v4, a2);

  return v2;
}

uint64_t __49__PTUIPushViewControllerRowAction_defaultHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  if (v7 && ((*(v7 + 16))(v7, v5, v6), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [v6 navigationController];
    v11 = 1;
    [v10 pushViewController:v9 animated:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end