@interface DBSArrangementViewController
- (CGSize)externalDisplaySize;
- (CGSize)nativeDisplaySize;
- (CGSize)preferredContentSize;
- (DBSArrangementViewController)init;
- (DBSArrangementViewControllerDelegate)delegate;
- (id)externalDisplayName;
- (id)nativeDisplayImageWithWidth:(double)a3;
- (void)cancelPressed;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)displayLayoutMonitorDidUpdateLayout:(id)a3;
- (void)loadView;
- (void)mirroredToggled:(id)a3;
- (void)setDisplayService:(id)a3;
- (void)setExternalDisplayInfo:(id)a3;
- (void)setPressed;
- (void)updateComponentsWithConnectedDispalyInfo:(id)a3;
- (void)updateSetButtonEnablement;
@end

@implementation DBSArrangementViewController

- (DBSArrangementViewController)init
{
  v5.receiver = self;
  v5.super_class = DBSArrangementViewController;
  v2 = [(DBSArrangementViewController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_displayLayoutMonitorDidUpdateLayout_ name:DBSExternalDisplayManagerDisplayLayoutMonitorDidChange object:0];
  }

  return v2;
}

- (CGSize)nativeDisplaySize
{
  v2 = +[DBSExternalDisplayManager defaultManager];
  [v2 nativeDisplaySize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)nativeDisplayImageWithWidth:(double)a3
{
  v4 = +[DBSExternalDisplayManager defaultManager];
  v5 = [v4 mainDisplayImageWithWidth:a3];

  return v5;
}

- (id)externalDisplayName
{
  v2 = +[DBSExternalDisplayManager defaultManager];
  v3 = [v2 externalDisplayName];

  return v3;
}

- (CGSize)externalDisplaySize
{
  v2 = +[DBSExternalDisplayManager defaultManager];
  [v2 externalDisplaySize];
  v4 = v3;
  v6 = v5;

  v7 = v6 == 0.0;
  if (v4 == 0.0)
  {
    v7 = 1;
  }

  v8 = 4000.0;
  if (!v7)
  {
    v8 = v4;
  }

  v9 = 2400.0;
  if (!v7)
  {
    v9 = v6;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setExternalDisplayInfo:(id)a3
{
  v5 = a3;
  if (self->_externalDisplayInfo != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_externalDisplayInfo, a3);
    [(DBSArrangementViewController *)self updateComponentsWithConnectedDispalyInfo:v7];
    v6 = [(DBSArrangementViewController *)self view];
    [v6 setNeedsLayout];

    v5 = v7;
  }
}

- (void)setDisplayService:(id)a3
{
  v5 = a3;
  if (self->_displayService != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_displayService, a3);
    v6 = [(DBSArrangementViewController *)self view];
    [v6 setNeedsLayout];

    v5 = v7;
  }
}

- (void)updateComponentsWithConnectedDispalyInfo:(id)a3
{
  v4 = a3;
  v10 = [v4 arrangement];
  v5 = [v4 isMirrored];

  [(DBSArrangementViewController *)self setWasMirrored:v5];
  v6 = [v10 edge];
  if (v6 <= 3)
  {
    [(DBSArrangementViewController *)self setCurrentDisplayLocation:qword_22105F468[v6]];
  }

  v7 = [(DBSArrangementViewController *)self layoutController];
  [v7 updateCurrentDisplayLocation:{-[DBSArrangementViewController currentDisplayLocation](self, "currentDisplayLocation")}];

  v8 = [(DBSArrangementViewController *)self wasMirrored];
  v9 = [(DBSArrangementViewController *)self mirroredSwitch];
  [v9 setOn:v8];
}

- (void)loadView
{
  v70[2] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 500.0, 500.0}];
  [(DBSArrangementViewController *)self setView:v3];

  v4 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  v5 = [(DBSArrangementViewController *)self view];
  [v5 setBackgroundColor:v4];

  v69 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPressed];
  v6 = objc_alloc(MEMORY[0x277D751E0]);
  v7 = DBS_LocalizedStringForConnectedDisplays(@"SET_DISPLAY_ARRANGEMENT");
  v8 = [v6 initWithTitle:v7 style:2 target:self action:sel_setPressed];

  v68 = v8;
  [v8 setEnabled:0];
  v9 = [(DBSArrangementViewController *)self navigationItem];
  [v9 setLeftBarButtonItem:v69];

  v10 = [(DBSArrangementViewController *)self navigationItem];
  v11 = DBS_LocalizedStringForConnectedDisplays(@"DISPLAY_ARRANGEMENT");
  [v10 setTitle:v11];

  v12 = [(DBSArrangementViewController *)self navigationItem];
  [v12 setRightBarButtonItem:v8];

  v13 = [DBSArrangementLayoutViewController alloc];
  [(DBSArrangementViewController *)self nativeDisplaySize];
  v15 = v14;
  v17 = v16;
  v18 = [(DBSArrangementViewController *)self nativeDisplayName];
  [(DBSArrangementViewController *)self externalDisplaySize];
  v20 = v19;
  v22 = v21;
  v23 = [(DBSArrangementViewController *)self externalDisplayName];
  v24 = [(DBSArrangementLayoutViewController *)v13 initWithNativeDisplaySize:v18 nativeDisplayName:v23 externalDisplaySize:[(DBSArrangementViewController *)self currentDisplayLocation] externalDisplayName:v15 currentNativeDisplayLocation:v17, v20, v22];
  [(DBSArrangementViewController *)self setLayoutController:v24];

  v25 = [(DBSArrangementViewController *)self layoutController];
  [v25 setDelegate:self];

  v26 = [(DBSArrangementViewController *)self layoutController];
  v27 = [v26 view];

  v28 = [(DBSArrangementViewController *)self view];
  [v28 bounds];
  [v27 setFrame:?];

  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = objc_opt_new();
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 addSubview:v27];
  [v29 setClipsToBounds:1];
  v30 = [v29 layer];
  [v30 setCornerRadius:7.0];

  [(DBSArrangementViewController *)self setContainerView:v29];
  v31 = [(DBSArrangementViewController *)self view];
  [v31 addSubview:v29];

  v32 = objc_opt_new();
  v33 = DBS_LocalizedStringForConnectedDisplays(@"MIRROR_DISPLAYS");
  [v32 setText:v33];

  v34 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] labelFontSize];
  v35 = [v34 systemFontOfSize:?];
  [v32 setFont:v35];

  v36 = objc_opt_new();
  [v36 addTarget:self action:sel_mirroredToggled_ forControlEvents:4096];
  [(DBSArrangementViewController *)self setMirroredSwitch:v36];
  v37 = [(DBSArrangementViewController *)self wasMirrored];
  v38 = [(DBSArrangementViewController *)self mirroredSwitch];
  [v38 setOn:v37];

  v39 = objc_alloc(MEMORY[0x277D75A68]);
  v70[0] = v32;
  v70[1] = v36;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v41 = [v39 initWithArrangedSubviews:v40];

  [v41 setAlignment:3];
  [v41 setAxis:0];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
  v42 = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
  [v41 setBackgroundColor:v42];

  [v41 setLayoutMargins:{2.0, 20.0, 2.0, 20.0}];
  [v41 setLayoutMarginsRelativeArrangement:1];
  [v29 addSubview:v41];
  v43 = objc_opt_new();
  v44 = DBS_LocalizedStringForConnectedDisplays(@"ARRANGE_DISPLAYS_FOOTER");
  [v43 setText:v44];

  v45 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] smallSystemFontSize];
  v46 = [v45 systemFontOfSize:?];
  [v43 setFont:v46];

  v47 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v43 setTextColor:v47];

  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v43 setTextAlignment:1];
  v48 = [(DBSArrangementViewController *)self view];
  [v48 addSubview:v43];

  v49 = MEMORY[0x277CCAAD0];
  v50 = _NSDictionaryOfVariableBindings(&cfstr_Containerview.isa, v29, 0);
  v51 = [v49 constraintsWithVisualFormat:@"H:|-20-[containerView]-20-|" options:0 metrics:0 views:v50];
  [v49 activateConstraints:v51];

  v52 = MEMORY[0x277CCAAD0];
  v53 = _NSDictionaryOfVariableBindings(&cfstr_ContainerviewI.isa, v29, v43, 0);
  v54 = [v52 constraintsWithVisualFormat:@"V:|-52-[containerView][instructions(38)]-6-|" options:0 metrics:0 views:v53];
  [v52 activateConstraints:v54];

  v55 = MEMORY[0x277CCAAD0];
  v56 = _NSDictionaryOfVariableBindings(&cfstr_Layoutcontroll.isa, v27, 0);
  v57 = [v55 constraintsWithVisualFormat:@"H:|[layoutControllerView]|" options:0 metrics:0 views:v56];
  [v55 activateConstraints:v57];

  v58 = MEMORY[0x277CCAAD0];
  v59 = _NSDictionaryOfVariableBindings(&cfstr_Mirrorcontrols.isa, v41, 0);
  v60 = [v58 constraintsWithVisualFormat:@"H:|[mirrorControls]|" options:0 metrics:0 views:v59];
  [v58 activateConstraints:v60];

  v61 = MEMORY[0x277CCAAD0];
  v62 = _NSDictionaryOfVariableBindings(&cfstr_Instructions.isa, v43, 0);
  v63 = [v61 constraintsWithVisualFormat:@"H:|[instructions]|" options:0 metrics:0 views:v62];
  [v61 activateConstraints:v63];

  v64 = MEMORY[0x277CCAAD0];
  v65 = _NSDictionaryOfVariableBindings(&cfstr_Layoutcontroll_0.isa, v27, v41, 0);
  v66 = [v64 constraintsWithVisualFormat:@"V:|[layoutControllerView]-2-[mirrorControls(44)]|" options:0 metrics:0 views:v65];
  [v64 activateConstraints:v66];

  v67 = [(DBSArrangementViewController *)self externalDisplayInfo];
  [(DBSArrangementViewController *)self updateComponentsWithConnectedDispalyInfo:v67];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:DBSExternalDisplayManagerDisplayLayoutMonitorDidChange object:0];

  v4.receiver = self;
  v4.super_class = DBSArrangementViewController;
  [(DBSArrangementViewController *)&v4 dealloc];
}

- (void)displayLayoutMonitorDidUpdateLayout:(id)a3
{
  v18 = a3;
  v4 = [v18 object];

  v5 = v18;
  if (v4)
  {
    v6 = [v18 object];
    v7 = objc_opt_class();
    v8 = v6;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [(DBSArrangementViewController *)self layoutController];
    v12 = [v10 interfaceOrientation];
    [v10 bounds];
    v14 = v13;
    v16 = v15;

    [v11 updateOrientationTo:v12 withNativeDisplaySize:{v14, v16}];
    v17 = [(DBSArrangementViewController *)self view];
    [v17 setNeedsLayout];

    v5 = v18;
  }
}

- (CGSize)preferredContentSize
{
  v2 = 600.0;
  v3 = 450.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6.receiver = self;
  v6.super_class = DBSArrangementViewController;
  [(DBSArrangementViewController *)&v6 dismissViewControllerAnimated:a3 completion:a4];
  v5 = [(DBSArrangementViewController *)self delegate];
  [v5 arrangementViewControllerDidDismiss:self];
}

- (void)cancelPressed
{
  v3 = [(DBSArrangementViewController *)self wasMirrored];
  v4 = [(DBSArrangementViewController *)self mirroredSwitch];
  v5 = [v4 isOn];

  if (v3 != v5)
  {
    v6 = +[DBSExternalDisplayManager defaultManager];
    [v6 setMirroringEnabled:{-[DBSArrangementViewController wasMirrored](self, "wasMirrored")}];
  }

  [(DBSArrangementViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)updateSetButtonEnablement
{
  v7 = [(DBSArrangementViewController *)self navigationItem];
  v3 = [v7 rightBarButtonItem];
  v4 = [(DBSArrangementViewController *)self mirroredSwitch];
  v5 = [v4 isOn];
  if (v5 == [(DBSArrangementViewController *)self wasMirrored])
  {
    v6 = [(DBSArrangementViewController *)self layoutController];
    [v3 setEnabled:{objc_msgSend(v6, "nativeDisplayLocation") != -[DBSArrangementViewController currentDisplayLocation](self, "currentDisplayLocation")}];
  }

  else
  {
    [v3 setEnabled:1];
  }
}

- (void)setPressed
{
  v3 = [(DBSArrangementViewController *)self layoutController];
  v4 = [v3 nativeDisplayLocation];

  if ((v4 - 1) >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4 - 1;
  }

  v6 = objc_alloc(MEMORY[0x277D66BB0]);
  v7 = [(DBSArrangementViewController *)self externalDisplayInfo];
  v8 = [v7 identifier];
  v9 = [(DBSArrangementViewController *)self externalDisplayInfo];
  v10 = [v9 arrangement];
  [v10 offset];
  v14 = [v6 initWithDisplayIdentifier:v8 edge:v5 offset:?];

  v11 = [(DBSArrangementViewController *)self displayService];
  v12 = [(DBSArrangementViewController *)self externalDisplayInfo];
  v13 = [v12 identifier];
  [v11 setDisplayArrangement:v14 forDisplay:v13];

  [(DBSArrangementViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)mirroredToggled:(id)a3
{
  v4 = +[DBSExternalDisplayManager defaultManager];
  v5 = [(DBSArrangementViewController *)self mirroredSwitch];
  [v4 setMirroringEnabled:{objc_msgSend(v5, "isOn")}];

  [(DBSArrangementViewController *)self updateSetButtonEnablement];
}

- (DBSArrangementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end