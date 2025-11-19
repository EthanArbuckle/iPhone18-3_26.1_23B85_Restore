@interface PSGDeviceNameEditingController
- (id)_editedDeviceName;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)suspend;
- (void)viewDidLoad;
@end

@implementation PSGDeviceNameEditingController

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v7 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v8 = [v6 initWithObjects:{v7, 0}];

    v9 = MEMORY[0x277D3FAD8];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    v11 = [v9 preferenceSpecifierNamed:0 target:WeakRetained set:sel_setDeviceName_specifier_ get:sel_deviceName_ detail:0 cell:8 edit:0];

    [v11 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF20]];
    [v8 addObject:v11];
    v12 = *(&self->super.super.super.super.super.isa + v2);
    *(&self->super.super.super.super.super.isa + v2) = v8;
    v13 = v8;

    v4 = *(&self->super.super.super.super.super.isa + v2);
  }

  return v4;
}

- (void)suspend
{
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) firstResponder];
  [v3 resignFirstResponder];

  v4.receiver = self;
  v4.super_class = PSGDeviceNameEditingController;
  [(PSGDeviceNameEditingController *)&v4 suspend];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSGDeviceNameEditingController;
  [(PSGDeviceNameEditingController *)&v4 viewDidLoad];
  v3 = PSG_LocalizedStringForGeneral(@"Device_Name");
  [(PSGDeviceNameEditingController *)self setTitle:v3];
}

void __49__PSGDeviceNameEditingController_viewWillAppear___block_invoke(uint64_t a1)
{
  if ((PSGIsDeviceNameSettable() & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [v2 navigationController];
    v4 = [v3 topViewController];

    if (v2 == v4)
    {
      v10 = [*(a1 + 32) _editedDeviceName];
      if (v10)
      {
        v5 = [*(a1 + 32) originalDeviceName];
        v6 = [v5 isEqualToString:v10];

        if ((v6 & 1) == 0)
        {
          v7 = +[(PSSpecifierDataSource *)PSGAboutDataSource];
          [v7 setDeviceNameToIgnoreOnce:v10];
        }
      }

      v8 = [*(a1 + 32) navigationController];
      v9 = [v8 popViewControllerAnimated:1];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = PSGDeviceNameEditingController;
  v5 = [(PSGDeviceNameEditingController *)&v9 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v5 tag] == 8)
  {
    v6 = DeviceName();
    v7 = [v5 editableTextField];
    [v7 setAutocapitalizationType:2];
    [v7 setAutocorrectionType:1];
    [v7 setAutoresizesTextToFit:1];
    [v7 setTextAlignment:4];
    [v7 setReturnKeyType:9];
    [v7 setClearButtonMode:3];
    [v7 setPlaceholder:v6];
    [v5 setControllerDelegate:self];
  }

  return v5;
}

- (id)_editedDeviceName
{
  v2 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) firstResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 text];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end