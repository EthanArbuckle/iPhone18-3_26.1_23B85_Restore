@interface PCConfiguration
+ (void)fetchConfigurationForClass:(Class)class completion:(id)completion;
@end

@implementation PCConfiguration

+ (void)fetchConfigurationForClass:(Class)class completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (objc_opt_class() == class)
    {
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_260F1D000, v9, OS_LOG_TYPE_ERROR, "Error: Configuration class method should be called from a subclass.", buf, 2u);
      }

      APSimulateCrash();
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      mEMORY[0x277CE4A38] = [MEMORY[0x277CE4A38] sharedInstance];
      path = [(objc_class *)class path];
      v8 = [mEMORY[0x277CE4A38] configurationForPath:path];

      if (v8)
      {
        (completionCopy)[2](completionCopy, v8);
      }

      else
      {
        v10 = objc_alloc_init(PCSupportRequester);
        v11 = NSStringFromClass(class);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = sub_260F1E790;
        v12[3] = &unk_279AC9748;
        classCopy = class;
        v13 = completionCopy;
        [(PCSupportRequester *)v10 fetchConfigurationForClass:v11 completion:v12];
      }
    }
  }
}

@end