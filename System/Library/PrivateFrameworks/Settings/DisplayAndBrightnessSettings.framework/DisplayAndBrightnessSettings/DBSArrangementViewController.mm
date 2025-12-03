@interface DBSArrangementViewController
- (CGSize)externalDisplaySize;
- (CGSize)nativeDisplaySize;
- (CGSize)preferredContentSize;
- (DBSArrangementViewController)init;
- (DBSArrangementViewControllerDelegate)delegate;
- (id)externalDisplayName;
- (id)nativeDisplayImageWithWidth:(double)width;
- (void)cancelPressed;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)displayLayoutMonitorDidUpdateLayout:(id)layout;
- (void)loadView;
- (void)mirroredToggled:(id)toggled;
- (void)setDisplayService:(id)service;
- (void)setExternalDisplayInfo:(id)info;
- (void)setPressed;
- (void)updateComponentsWithConnectedDispalyInfo:(id)info;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_displayLayoutMonitorDidUpdateLayout_ name:DBSExternalDisplayManagerDisplayLayoutMonitorDidChange object:0];
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

- (id)nativeDisplayImageWithWidth:(double)width
{
  v4 = +[DBSExternalDisplayManager defaultManager];
  v5 = [v4 mainDisplayImageWithWidth:width];

  return v5;
}

- (id)externalDisplayName
{
  v2 = +[DBSExternalDisplayManager defaultManager];
  externalDisplayName = [v2 externalDisplayName];

  return externalDisplayName;
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

- (void)setExternalDisplayInfo:(id)info
{
  infoCopy = info;
  if (self->_externalDisplayInfo != infoCopy)
  {
    v7 = infoCopy;
    objc_storeStrong(&self->_externalDisplayInfo, info);
    [(DBSArrangementViewController *)self updateComponentsWithConnectedDispalyInfo:v7];
    view = [(DBSArrangementViewController *)self view];
    [view setNeedsLayout];

    infoCopy = v7;
  }
}

- (void)setDisplayService:(id)service
{
  serviceCopy = service;
  if (self->_displayService != serviceCopy)
  {
    v7 = serviceCopy;
    objc_storeStrong(&self->_displayService, service);
    view = [(DBSArrangementViewController *)self view];
    [view setNeedsLayout];

    serviceCopy = v7;
  }
}

- (void)updateComponentsWithConnectedDispalyInfo:(id)info
{
  infoCopy = info;
  arrangement = [infoCopy arrangement];
  isMirrored = [infoCopy isMirrored];

  [(DBSArrangementViewController *)self setWasMirrored:isMirrored];
  edge = [arrangement edge];
  if (edge <= 3)
  {
    [(DBSArrangementViewController *)self setCurrentDisplayLocation:qword_22105F468[edge]];
  }

  layoutController = [(DBSArrangementViewController *)self layoutController];
  [layoutController updateCurrentDisplayLocation:{-[DBSArrangementViewController currentDisplayLocation](self, "currentDisplayLocation")}];

  wasMirrored = [(DBSArrangementViewController *)self wasMirrored];
  mirroredSwitch = [(DBSArrangementViewController *)self mirroredSwitch];
  [mirroredSwitch setOn:wasMirrored];
}

- (void)loadView
{
  v70[2] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 500.0, 500.0}];
  [(DBSArrangementViewController *)self setView:v3];

  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  view = [(DBSArrangementViewController *)self view];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  v69 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPressed];
  v6 = objc_alloc(MEMORY[0x277D751E0]);
  v7 = DBS_LocalizedStringForConnectedDisplays(@"SET_DISPLAY_ARRANGEMENT");
  v8 = [v6 initWithTitle:v7 style:2 target:self action:sel_setPressed];

  v68 = v8;
  [v8 setEnabled:0];
  navigationItem = [(DBSArrangementViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v69];

  navigationItem2 = [(DBSArrangementViewController *)self navigationItem];
  v11 = DBS_LocalizedStringForConnectedDisplays(@"DISPLAY_ARRANGEMENT");
  [navigationItem2 setTitle:v11];

  navigationItem3 = [(DBSArrangementViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v8];

  v13 = [DBSArrangementLayoutViewController alloc];
  [(DBSArrangementViewController *)self nativeDisplaySize];
  v15 = v14;
  v17 = v16;
  nativeDisplayName = [(DBSArrangementViewController *)self nativeDisplayName];
  [(DBSArrangementViewController *)self externalDisplaySize];
  v20 = v19;
  v22 = v21;
  externalDisplayName = [(DBSArrangementViewController *)self externalDisplayName];
  v24 = [(DBSArrangementLayoutViewController *)v13 initWithNativeDisplaySize:nativeDisplayName nativeDisplayName:externalDisplayName externalDisplaySize:[(DBSArrangementViewController *)self currentDisplayLocation] externalDisplayName:v15 currentNativeDisplayLocation:v17, v20, v22];
  [(DBSArrangementViewController *)self setLayoutController:v24];

  layoutController = [(DBSArrangementViewController *)self layoutController];
  [layoutController setDelegate:self];

  layoutController2 = [(DBSArrangementViewController *)self layoutController];
  view2 = [layoutController2 view];

  view3 = [(DBSArrangementViewController *)self view];
  [view3 bounds];
  [view2 setFrame:?];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = objc_opt_new();
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 addSubview:view2];
  [v29 setClipsToBounds:1];
  layer = [v29 layer];
  [layer setCornerRadius:7.0];

  [(DBSArrangementViewController *)self setContainerView:v29];
  view4 = [(DBSArrangementViewController *)self view];
  [view4 addSubview:v29];

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
  wasMirrored = [(DBSArrangementViewController *)self wasMirrored];
  mirroredSwitch = [(DBSArrangementViewController *)self mirroredSwitch];
  [mirroredSwitch setOn:wasMirrored];

  v39 = objc_alloc(MEMORY[0x277D75A68]);
  v70[0] = v32;
  v70[1] = v36;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v41 = [v39 initWithArrangedSubviews:v40];

  [v41 setAlignment:3];
  [v41 setAxis:0];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
  tableCellGroupedBackgroundColor = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
  [v41 setBackgroundColor:tableCellGroupedBackgroundColor];

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

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v43 setTextColor:secondaryLabelColor];

  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v43 setTextAlignment:1];
  view5 = [(DBSArrangementViewController *)self view];
  [view5 addSubview:v43];

  v49 = MEMORY[0x277CCAAD0];
  v50 = _NSDictionaryOfVariableBindings(&cfstr_Containerview.isa, v29, 0);
  v51 = [v49 constraintsWithVisualFormat:@"H:|-20-[containerView]-20-|" options:0 metrics:0 views:v50];
  [v49 activateConstraints:v51];

  v52 = MEMORY[0x277CCAAD0];
  v53 = _NSDictionaryOfVariableBindings(&cfstr_ContainerviewI.isa, v29, v43, 0);
  v54 = [v52 constraintsWithVisualFormat:@"V:|-52-[containerView][instructions(38)]-6-|" options:0 metrics:0 views:v53];
  [v52 activateConstraints:v54];

  v55 = MEMORY[0x277CCAAD0];
  v56 = _NSDictionaryOfVariableBindings(&cfstr_Layoutcontroll.isa, view2, 0);
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
  v65 = _NSDictionaryOfVariableBindings(&cfstr_Layoutcontroll_0.isa, view2, v41, 0);
  v66 = [v64 constraintsWithVisualFormat:@"V:|[layoutControllerView]-2-[mirrorControls(44)]|" options:0 metrics:0 views:v65];
  [v64 activateConstraints:v66];

  externalDisplayInfo = [(DBSArrangementViewController *)self externalDisplayInfo];
  [(DBSArrangementViewController *)self updateComponentsWithConnectedDispalyInfo:externalDisplayInfo];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:DBSExternalDisplayManagerDisplayLayoutMonitorDidChange object:0];

  v4.receiver = self;
  v4.super_class = DBSArrangementViewController;
  [(DBSArrangementViewController *)&v4 dealloc];
}

- (void)displayLayoutMonitorDidUpdateLayout:(id)layout
{
  layoutCopy = layout;
  object = [layoutCopy object];

  v5 = layoutCopy;
  if (object)
  {
    object2 = [layoutCopy object];
    v7 = objc_opt_class();
    v8 = object2;
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

    layoutController = [(DBSArrangementViewController *)self layoutController];
    interfaceOrientation = [v10 interfaceOrientation];
    [v10 bounds];
    v14 = v13;
    v16 = v15;

    [layoutController updateOrientationTo:interfaceOrientation withNativeDisplaySize:{v14, v16}];
    view = [(DBSArrangementViewController *)self view];
    [view setNeedsLayout];

    v5 = layoutCopy;
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

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = DBSArrangementViewController;
  [(DBSArrangementViewController *)&v6 dismissViewControllerAnimated:animated completion:completion];
  delegate = [(DBSArrangementViewController *)self delegate];
  [delegate arrangementViewControllerDidDismiss:self];
}

- (void)cancelPressed
{
  wasMirrored = [(DBSArrangementViewController *)self wasMirrored];
  mirroredSwitch = [(DBSArrangementViewController *)self mirroredSwitch];
  isOn = [mirroredSwitch isOn];

  if (wasMirrored != isOn)
  {
    v6 = +[DBSExternalDisplayManager defaultManager];
    [v6 setMirroringEnabled:{-[DBSArrangementViewController wasMirrored](self, "wasMirrored")}];
  }

  [(DBSArrangementViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)updateSetButtonEnablement
{
  navigationItem = [(DBSArrangementViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  mirroredSwitch = [(DBSArrangementViewController *)self mirroredSwitch];
  isOn = [mirroredSwitch isOn];
  if (isOn == [(DBSArrangementViewController *)self wasMirrored])
  {
    layoutController = [(DBSArrangementViewController *)self layoutController];
    [rightBarButtonItem setEnabled:{objc_msgSend(layoutController, "nativeDisplayLocation") != -[DBSArrangementViewController currentDisplayLocation](self, "currentDisplayLocation")}];
  }

  else
  {
    [rightBarButtonItem setEnabled:1];
  }
}

- (void)setPressed
{
  layoutController = [(DBSArrangementViewController *)self layoutController];
  nativeDisplayLocation = [layoutController nativeDisplayLocation];

  if ((nativeDisplayLocation - 1) >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = nativeDisplayLocation - 1;
  }

  v6 = objc_alloc(MEMORY[0x277D66BB0]);
  externalDisplayInfo = [(DBSArrangementViewController *)self externalDisplayInfo];
  identifier = [externalDisplayInfo identifier];
  externalDisplayInfo2 = [(DBSArrangementViewController *)self externalDisplayInfo];
  arrangement = [externalDisplayInfo2 arrangement];
  [arrangement offset];
  v14 = [v6 initWithDisplayIdentifier:identifier edge:v5 offset:?];

  displayService = [(DBSArrangementViewController *)self displayService];
  externalDisplayInfo3 = [(DBSArrangementViewController *)self externalDisplayInfo];
  identifier2 = [externalDisplayInfo3 identifier];
  [displayService setDisplayArrangement:v14 forDisplay:identifier2];

  [(DBSArrangementViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)mirroredToggled:(id)toggled
{
  v4 = +[DBSExternalDisplayManager defaultManager];
  mirroredSwitch = [(DBSArrangementViewController *)self mirroredSwitch];
  [v4 setMirroringEnabled:{objc_msgSend(mirroredSwitch, "isOn")}];

  [(DBSArrangementViewController *)self updateSetButtonEnablement];
}

- (DBSArrangementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end