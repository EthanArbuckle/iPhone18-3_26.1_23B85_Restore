@interface PXCloudQuotaController
- (PXCloudQuotaController)init;
- (PXCloudQuotaControllerDelegate)delegate;
- (id)presentingViewControllerForInformationView;
- (void)setInformationView:(id)a3;
@end

@implementation PXCloudQuotaController

- (PXCloudQuotaControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentingViewControllerForInformationView
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(PXCloudQuotaController *)self delegate];
  v4 = [v3 presentingViewControllerForCloudQuotaController:self];
  v5 = PLUserStatusGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v8;
    v12 = 138544642;
    v13 = v6;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = v8;
    v18 = 2048;
    v19 = v3;
    v20 = 2114;
    v21 = objc_opt_class();
    v22 = 2048;
    v23 = v4;
    v10 = v21;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> delegate:<%{public}@:%p>, presenting view controller:<%{public}@:%p>", &v12, 0x3Eu);
  }

  return v4;
}

- (void)setInformationView:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_informationView != v5)
  {
    objc_storeStrong(&self->_informationView, a3);
    v6 = [(PXCloudQuotaController *)self delegate];
    v7 = PLUserStatusGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = objc_opt_class();
      v11 = v10;
      v12 = objc_opt_class();
      informationView = self->_informationView;
      v15 = 138544642;
      v16 = v8;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = v10;
      v21 = 2048;
      v22 = v6;
      v23 = 2114;
      v24 = v12;
      v25 = 2048;
      v26 = informationView;
      v14 = v12;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> delegate:<%{public}@:%p>, informationViewDidChange:<%{public}@:%p>", &v15, 0x3Eu);
    }

    [v6 cloudQuotaController:self informationViewDidChange:self->_informationView];
  }
}

- (PXCloudQuotaController)init
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = NSStringFromSelector(a2);
    [v5 raise:v6 format:{@"Only subclasses can be instanciated %@", v7}];
  }

  v8 = PLUserStatusGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v12 = v4;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> init", buf, 0x16u);
  }

  v10.receiver = self;
  v10.super_class = PXCloudQuotaController;
  return [(PXCloudQuotaController *)&v10 init];
}

@end