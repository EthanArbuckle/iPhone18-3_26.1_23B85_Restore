@interface SKUIMoreListController
- (SKUIMoreListController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SKUIMoreListController

- (SKUIMoreListController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIMoreListController *)v8 initWithNibName:v9 bundle:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIMoreListController;
  v16 = [(SKUIMoreListController *)&v20 initWithNibName:v6 bundle:v7];
  v17 = v16;
  if (v16)
  {
    v18 = [(SKUIMoreListController *)v16 navigationItem];
    [v18 setBackButtonTitle:&stru_2827FFAC8];
  }

  return v17;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([MEMORY[0x277D75738] instancesRespondToSelector:a2])
  {
    v11.receiver = self;
    v11.super_class = SKUIMoreListController;
    [(UIMoreListController *)&v11 tableView:v7 didSelectRowAtIndexPath:v8];
  }

  v9 = [(SKUIMoreListController *)self navigationController];
  v10 = [v9 storeKitDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 moreNavigationController:v9 didSelectItemAtIndex:{objc_msgSend(v8, "row")}];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  if (SKUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

@end