@interface SBDashBoardThermalStatusProvider
+ (id)thermometerGlyphForThermalStatus:(int64_t)status;
- (SBDashBoardThermalStatusProvider)init;
- (SBDashBoardThermalStatusProvider)initWithThermalController:(id)controller;
- (int64_t)thermalStatus;
@end

@implementation SBDashBoardThermalStatusProvider

- (SBDashBoardThermalStatusProvider)init
{
  v3 = +[SBThermalController sharedInstance];
  v4 = [(SBDashBoardThermalStatusProvider *)self initWithThermalController:v3];

  return v4;
}

- (SBDashBoardThermalStatusProvider)initWithThermalController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SBDashBoardThermalStatusProvider;
  v6 = [(SBDashBoardThermalStatusProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_thermalController, controller);
  }

  return v7;
}

- (int64_t)thermalStatus
{
  level = [(SBThermalController *)self->_thermalController level];
  if (level > 3)
  {
    return -1;
  }

  else
  {
    return qword_21F8A6080[level];
  }
}

+ (id)thermometerGlyphForThermalStatus:(int64_t)status
{
  if ((status + 1) > 2)
  {
    v9 = 0;
  }

  else
  {
    v4 = off_2783AFE58[status + 1];
    v5 = MEMORY[0x277D755D0];
    v6 = __sb__runningInSpringBoard();
    v7 = v6;
    if (v6)
    {
      v8 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v8 = [currentDevice userInterfaceIdiom] == 1;
    }

    v10 = 58.0;
    if (v8)
    {
      v10 = 80.0;
    }

    v11 = [v5 configurationWithPointSize:3 weight:v10];
    configurationPreferringMulticolor = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
    v13 = [v11 configurationByApplyingConfiguration:configurationPreferringMulticolor];

    if ((v7 & 1) == 0)
    {
    }

    v9 = [MEMORY[0x277D755B8] systemImageNamed:v4 withConfiguration:v13];
  }

  return v9;
}

@end