@interface PCConfiguration
+ (void)fetchConfigurationForClass:(Class)a3 completion:(id)a4;
@end

@implementation PCConfiguration

+ (void)fetchConfigurationForClass:(Class)a3 completion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    if (objc_opt_class() == a3)
    {
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_260F1D000, v9, OS_LOG_TYPE_ERROR, "Error: Configuration class method should be called from a subclass.", buf, 2u);
      }

      APSimulateCrash();
      v5[2](v5, 0);
    }

    else
    {
      v6 = [MEMORY[0x277CE4A38] sharedInstance];
      v7 = [(objc_class *)a3 path];
      v8 = [v6 configurationForPath:v7];

      if (v8)
      {
        (v5)[2](v5, v8);
      }

      else
      {
        v10 = objc_alloc_init(PCSupportRequester);
        v11 = NSStringFromClass(a3);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = sub_260F1E790;
        v12[3] = &unk_279AC9748;
        v14 = a3;
        v13 = v5;
        [(PCSupportRequester *)v10 fetchConfigurationForClass:v11 completion:v12];
      }
    }
  }
}

@end