@interface PSUIGenerateTransferQRCodeSpecifier
+ (id)keyFor:(id)for;
+ (id)specifierWithHostController:(id)controller iccid:(id)iccid carrierName:(id)name;
- (PSListController)hostController;
- (PSUIGenerateTransferQRCodeSpecifier)initWithHostController:(id)controller iccid:(id)iccid carrierName:(id)name;
- (void)generateTransferQRCodeCellPressed:(id)pressed;
- (void)setProperty:(id)property forKey:(id)key;
- (void)showSpinner:(BOOL)spinner;
- (void)simSetupFlowCompleted:(unint64_t)completed;
@end

@implementation PSUIGenerateTransferQRCodeSpecifier

+ (id)keyFor:(id)for
{
  v3 = MEMORY[0x277CCACA8];
  forCopy = for;
  forCopy = [v3 stringWithFormat:@"%@:%@", objc_opt_class(), forCopy];

  return forCopy;
}

+ (id)specifierWithHostController:(id)controller iccid:(id)iccid carrierName:(id)name
{
  controllerCopy = controller;
  iccidCopy = iccid;
  nameCopy = name;
  v10 = [PSUIGenerateTransferQRCodeSpecifier keyFor:iccidCopy];
  v11 = +[SSFlowHostCache sharedInstance];
  v12 = [v11 objectForKey:v10];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [[PSUIGenerateTransferQRCodeSpecifier alloc] initWithHostController:controllerCopy iccid:iccidCopy carrierName:nameCopy];
  }

  v14 = v13;

  return v14;
}

- (PSUIGenerateTransferQRCodeSpecifier)initWithHostController:(id)controller iccid:(id)iccid carrierName:(id)name
{
  controllerCopy = controller;
  iccidCopy = iccid;
  nameCopy = name;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"GENERATE_TRANSFER_QRCODE" value:&stru_287733598 table:@"Cellular"];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"GENERATE_TRANSFER_QRCODE" value:&stru_287733598 table:@"Cellular"];

  v18.receiver = self;
  v18.super_class = PSUIGenerateTransferQRCodeSpecifier;
  v13 = [(PSUIGenerateTransferQRCodeSpecifier *)&v18 initWithName:v10 target:0 set:0 get:0 detail:0 cell:13 edit:0];
  v14 = v13;
  if (v13)
  {
    [(PSUIGenerateTransferQRCodeSpecifier *)v13 setIdentifier:v12];
    [(PSUIGenerateTransferQRCodeSpecifier *)v14 setTarget:v14];
    [(PSUIGenerateTransferQRCodeSpecifier *)v14 setButtonAction:sel_generateTransferQRCodeCellPressed_];
    objc_storeWeak(&v14->_hostController, controllerCopy);
    objc_storeStrong(&v14->_iccid, iccid);
    objc_storeStrong(&v14->_carrierName, name);
  }

  return v14;
}

- (void)generateTransferQRCodeCellPressed:(id)pressed
{
  v20[3] = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  v5 = pressedCopy;
  if (self->_flow)
  {
    getLogger = [(PSUIGenerateTransferQRCodeSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "duplicate request to launch SimSetupSupport", &buf, 2u);
    }
  }

  else
  {
    [pressedCopy setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    v19[0] = *MEMORY[0x277D49548];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:11];
    v8 = *MEMORY[0x277D49578];
    iccid = self->_iccid;
    v20[0] = v7;
    v20[1] = iccid;
    v10 = *MEMORY[0x277D49538];
    v19[1] = v8;
    v19[2] = v10;
    v20[2] = self->_carrierName;
    getLogger = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v11 = [MEMORY[0x277D49530] flowWithOptions:getLogger];
    flow = self->_flow;
    self->_flow = v11;

    [(TSSIMSetupFlow *)self->_flow setDelegate:self];
    objc_initWeak(&buf, self);
    v13 = self->_flow;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__PSUIGenerateTransferQRCodeSpecifier_generateTransferQRCodeCellPressed___block_invoke;
    v15[3] = &unk_279BAACB0;
    v15[4] = self;
    objc_copyWeak(&v17, &buf);
    v16 = v5;
    [(TSSIMSetupFlow *)v13 firstViewController:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __73__PSUIGenerateTransferQRCodeSpecifier_generateTransferQRCodeCellPressed___block_invoke(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v5 = [a1[4] getLogger];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (WeakRetained)
    {
      if (v6)
      {
        v7 = objc_opt_class();
        v8 = [WeakRetained iccid];
        v16 = 138412546;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "present %@: for iccid: %@", &v16, 0x16u);
      }

      v9 = [WeakRetained iccid];
      v5 = [PSUIGenerateTransferQRCodeSpecifier keyFor:v9];

      v10 = +[SSFlowHostCache sharedInstance];
      [v10 setObject:WeakRetained forKey:v5];

      v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
      [v11 setModalPresentationStyle:2];
      v12 = [WeakRetained hostController];
      [v12 presentViewController:v11 animated:1 completion:0];

      [a1[5] setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
    }

    else if (v6)
    {
      v16 = 138412290;
      v17 = v3;
      _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "invalid specifier. skip present : %@", &v16, 0xCu);
    }
  }

  else
  {
    WeakRetained = [a1[4] getLogger];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_loadWeakRetained(a1 + 6);
      v14 = [v13 iccid];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_2658DE000, WeakRetained, OS_LOG_TYPE_DEFAULT, "invalid view for qr code with iccid: %@", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  if (!self->_spinner)
  {
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v6;

    if (spinnerCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    goto LABEL_6;
  }

  if (!spinner)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [(PSUIGenerateTransferQRCodeSpecifier *)self propertyForKey:*MEMORY[0x277D40148]];
  [v5 setAccessoryView:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
LABEL_6:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PSUIGenerateTransferQRCodeSpecifier_showSpinner___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__PSUIGenerateTransferQRCodeSpecifier_showSpinner___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 232));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

- (void)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  if ([*MEMORY[0x277D40148] isEqualToString:keyCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = propertyCopy;
      textLabel = [v8 textLabel];
      [textLabel setNumberOfLines:0];

      textLabel2 = [v8 textLabel];

      [textLabel2 setLineBreakMode:0];
    }
  }

  if ([*MEMORY[0x277D3FF38] isEqualToString:keyCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSUIGenerateTransferQRCodeSpecifier showSpinner:](self, "showSpinner:", [propertyCopy BOOLValue] ^ 1);
    }
  }

  v11.receiver = self;
  v11.super_class = PSUIGenerateTransferQRCodeSpecifier;
  [(PSUIGenerateTransferQRCodeSpecifier *)&v11 setProperty:propertyCopy forKey:keyCopy];
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__PSUIGenerateTransferQRCodeSpecifier_simSetupFlowCompleted___block_invoke;
  v5[3] = &unk_279BA9FE0;
  objc_copyWeak(v6, &location);
  v5[4] = self;
  v6[1] = completed;
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __61__PSUIGenerateTransferQRCodeSpecifier_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained hostController];
    v5 = [v4 presentedViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];

    v6 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v13 = 134217984;
      v14 = v7;
      _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "simSetupFlowCompleted with completionType:%ld", &v13, 0xCu);
    }

    v8 = v3[30];
    v3[30] = 0;

    v9 = [v3 iccid];
    v10 = [PSUIGenerateTransferQRCodeSpecifier keyFor:v9];

    v11 = +[SSFlowHostCache sharedInstance];
    [v11 removeObjectForKey:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end