@interface CLSTabooEventModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
- (CLSTabooEventModel)initWithSceneAnalysisVersion:(unint64_t)a3;
- (id)modelInfo;
- (id)nodeForSignalIdentifier:(unint64_t)a3;
- (void)setupVersion32;
- (void)setupVersion33;
- (void)setupVersion50_4;
- (void)setupVersion85;
@end

@implementation CLSTabooEventModel

- (id)modelInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__CLSTabooEventModel_modelInfo__block_invoke;
  aBlock[3] = &unk_279A280B8;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_bloodNode, 0);
  v5[2](v5, self->_demonstrationNode, 0);
  v5[2](v5, self->_destructionNode, 0);
  v5[2](v5, self->_fireDevastationNode, 0);
  v5[2](v5, self->_floodDevastationNode, 0);
  v5[2](v5, self->_funeralNode, 0);
  v5[2](v5, self->_hospitalNode, 0);
  v5[2](v5, self->_religiousSettingNode, 0);
  v5[2](v5, self->_vehicleCrashNode, 0);
  v5[2](v5, self->_warNode, 0);
  v6 = v4;

  return v4;
}

void __31__CLSTabooEventModel_modelInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 signalInfoWithIsHierarchical:?];
  [v2 addObject:v3];
}

- (id)nodeForSignalIdentifier:(unint64_t)a3
{
  if (a3 > 2147482874)
  {
    if (a3 <= 2147482876)
    {
      if (a3 == 2147482875)
      {
        funeralNode = self->_funeralNode;
      }

      else
      {
        funeralNode = self->_hospitalNode;
      }

      goto LABEL_22;
    }

    switch(a3)
    {
      case 0x7FFFFCFDuLL:
        funeralNode = self->_religiousSettingNode;
        goto LABEL_22;
      case 0x7FFFFCFEuLL:
        funeralNode = self->_vehicleCrashNode;
        goto LABEL_22;
      case 0x7FFFFCFFuLL:
        funeralNode = self->_warNode;
LABEL_22:
        v5 = funeralNode;
        goto LABEL_23;
    }
  }

  else
  {
    if (a3 > 2147482871)
    {
      if (a3 == 2147482872)
      {
        funeralNode = self->_demonstrationNode;
      }

      else if (a3 == 2147482873)
      {
        funeralNode = self->_fireDevastationNode;
      }

      else
      {
        funeralNode = self->_floodDevastationNode;
      }

      goto LABEL_22;
    }

    if (a3 == 2147482870)
    {
      funeralNode = self->_destructionNode;
      goto LABEL_22;
    }

    if (a3 == 2147482871)
    {
      funeralNode = self->_bloodNode;
      goto LABEL_22;
    }
  }

  if ([(CLSTabooEventModel *)self isResponsibleForSignalIdentifier:a3])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"TE - Unknown (%X)", a3];
    v5 = [[CLSSignalNode alloc] initWithIdentifier:a3 name:v7 operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  }

  else
  {
    v5 = 0;
  }

LABEL_23:

  return v5;
}

- (void)setupVersion85
{
  self->_version = 85;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147482871 name:@"TE - Blood" operatingPoint:0.07 highPrecisionOperatingPoint:0.32 highRecallOperatingPoint:0.02];
  bloodNode = self->_bloodNode;
  self->_bloodNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147482872 name:@"TE - Demonstration" operatingPoint:0.08 highPrecisionOperatingPoint:0.3 highRecallOperatingPoint:0.06];
  demonstrationNode = self->_demonstrationNode;
  self->_demonstrationNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147482870 name:@"TE - Destruction" operatingPoint:0.14 highPrecisionOperatingPoint:0.39 highRecallOperatingPoint:0.05];
  destructionNode = self->_destructionNode;
  self->_destructionNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147482873 name:@"TE - Fire Devastation" operatingPoint:0.08 highPrecisionOperatingPoint:0.46 highRecallOperatingPoint:0.06];
  fireDevastationNode = self->_fireDevastationNode;
  self->_fireDevastationNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147482874 name:@"TE - Flood Devastation" operatingPoint:0.17 highPrecisionOperatingPoint:0.36 highRecallOperatingPoint:0.05];
  floodDevastationNode = self->_floodDevastationNode;
  self->_floodDevastationNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147482875 name:@"TE - Funeral" operatingPoint:0.18 highPrecisionOperatingPoint:0.26 highRecallOperatingPoint:0.06];
  funeralNode = self->_funeralNode;
  self->_funeralNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147482876 name:@"TE - Hospital" operatingPoint:0.18 highPrecisionOperatingPoint:0.3 highRecallOperatingPoint:0.05];
  hospitalNode = self->_hospitalNode;
  self->_hospitalNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147482877 name:@"TE - Religious Setting" operatingPoint:0.11 highPrecisionOperatingPoint:0.28 highRecallOperatingPoint:0.05];
  religiousSettingNode = self->_religiousSettingNode;
  self->_religiousSettingNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147482878 name:@"TE - Vehicle Crash" operatingPoint:0.12 highPrecisionOperatingPoint:0.22 highRecallOperatingPoint:0.03];
  vehicleCrashNode = self->_vehicleCrashNode;
  self->_vehicleCrashNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:2147482879 name:@"TE - War" operatingPoint:0.09 highPrecisionOperatingPoint:0.16 highRecallOperatingPoint:0.02];
  warNode = self->_warNode;
  self->_warNode = v21;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion50_4
{
  self->_version = 50;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147482871 name:@"TE - Blood" operatingPoint:0.04 highPrecisionOperatingPoint:0.16 highRecallOperatingPoint:0.04];
  bloodNode = self->_bloodNode;
  self->_bloodNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147482872 name:@"TE - Demonstration" operatingPoint:0.15 highPrecisionOperatingPoint:0.22 highRecallOperatingPoint:0.05];
  demonstrationNode = self->_demonstrationNode;
  self->_demonstrationNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147482870 name:@"TE - Destruction" operatingPoint:0.11 highPrecisionOperatingPoint:0.27 highRecallOperatingPoint:0.05];
  destructionNode = self->_destructionNode;
  self->_destructionNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147482873 name:@"TE - Fire Devastation" operatingPoint:0.26 highPrecisionOperatingPoint:0.36 highRecallOperatingPoint:0.06];
  fireDevastationNode = self->_fireDevastationNode;
  self->_fireDevastationNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147482874 name:@"TE - Flood Devastation" operatingPoint:0.12 highPrecisionOperatingPoint:0.18 highRecallOperatingPoint:0.03];
  floodDevastationNode = self->_floodDevastationNode;
  self->_floodDevastationNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147482875 name:@"TE - Funeral" operatingPoint:0.16 highPrecisionOperatingPoint:0.3 highRecallOperatingPoint:0.06];
  funeralNode = self->_funeralNode;
  self->_funeralNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147482876 name:@"TE - Hospital" operatingPoint:0.19 highPrecisionOperatingPoint:0.23 highRecallOperatingPoint:0.05];
  hospitalNode = self->_hospitalNode;
  self->_hospitalNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147482877 name:@"TE - Religious Setting" operatingPoint:0.13 highPrecisionOperatingPoint:0.37 highRecallOperatingPoint:0.09];
  religiousSettingNode = self->_religiousSettingNode;
  self->_religiousSettingNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147482878 name:@"TE - Vehicle Crash" operatingPoint:0.1 highPrecisionOperatingPoint:0.17 highRecallOperatingPoint:0.02];
  vehicleCrashNode = self->_vehicleCrashNode;
  self->_vehicleCrashNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:2147482879 name:@"TE - War" operatingPoint:0.07 highPrecisionOperatingPoint:0.07 highRecallOperatingPoint:0.03];
  warNode = self->_warNode;
  self->_warNode = v21;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion33
{
  self->_version = 33;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147482871 name:@"TE - Blood" operatingPoint:0.53 highPrecisionOperatingPoint:0.57 highRecallOperatingPoint:0.14];
  bloodNode = self->_bloodNode;
  self->_bloodNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147482872 name:@"TE - Demonstration" operatingPoint:0.39 highPrecisionOperatingPoint:0.59 highRecallOperatingPoint:0.25];
  demonstrationNode = self->_demonstrationNode;
  self->_demonstrationNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147482870 name:@"TE - Destruction" operatingPoint:0.46 highPrecisionOperatingPoint:0.49 highRecallOperatingPoint:0.28];
  destructionNode = self->_destructionNode;
  self->_destructionNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147482873 name:@"TE - Fire Devastation" operatingPoint:0.5 highPrecisionOperatingPoint:0.73 highRecallOperatingPoint:0.48];
  fireDevastationNode = self->_fireDevastationNode;
  self->_fireDevastationNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147482874 name:@"TE - Flood Devastation" operatingPoint:0.42 highPrecisionOperatingPoint:0.64 highRecallOperatingPoint:0.18];
  floodDevastationNode = self->_floodDevastationNode;
  self->_floodDevastationNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147482875 name:@"TE - Funeral" operatingPoint:0.29 highPrecisionOperatingPoint:0.65 highRecallOperatingPoint:0.29];
  funeralNode = self->_funeralNode;
  self->_funeralNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147482876 name:@"TE - Hospital" operatingPoint:0.46 highPrecisionOperatingPoint:0.51 highRecallOperatingPoint:0.26];
  hospitalNode = self->_hospitalNode;
  self->_hospitalNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147482877 name:@"TE - Religious Setting" operatingPoint:0.34 highPrecisionOperatingPoint:0.49 highRecallOperatingPoint:0.09];
  religiousSettingNode = self->_religiousSettingNode;
  self->_religiousSettingNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147482878 name:@"TE - Vehicle Crash" operatingPoint:0.21 highPrecisionOperatingPoint:0.27 highRecallOperatingPoint:0.11];
  vehicleCrashNode = self->_vehicleCrashNode;
  self->_vehicleCrashNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:2147482879 name:@"TE - War" operatingPoint:0.12 highPrecisionOperatingPoint:0.36 highRecallOperatingPoint:0.08];
  warNode = self->_warNode;
  self->_warNode = v21;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion32
{
  self->_version = 32;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147482871 name:@"TE - Blood" operatingPoint:0.24 highPrecisionOperatingPoint:0.24 highRecallOperatingPoint:0.24];
  bloodNode = self->_bloodNode;
  self->_bloodNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147482872 name:@"TE - Demonstration" operatingPoint:0.75 highPrecisionOperatingPoint:0.75 highRecallOperatingPoint:0.75];
  demonstrationNode = self->_demonstrationNode;
  self->_demonstrationNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147482873 name:@"TE - Fire Devastation" operatingPoint:0.13 highPrecisionOperatingPoint:0.13 highRecallOperatingPoint:0.13];
  fireDevastationNode = self->_fireDevastationNode;
  self->_fireDevastationNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147482874 name:@"TE - Flood Devastation" operatingPoint:0.22 highPrecisionOperatingPoint:0.22 highRecallOperatingPoint:0.22];
  floodDevastationNode = self->_floodDevastationNode;
  self->_floodDevastationNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147482875 name:@"TE - Funeral" operatingPoint:0.33 highPrecisionOperatingPoint:0.33 highRecallOperatingPoint:0.33];
  funeralNode = self->_funeralNode;
  self->_funeralNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147482876 name:@"TE - Hospital" operatingPoint:0.52 highPrecisionOperatingPoint:0.52 highRecallOperatingPoint:0.52];
  hospitalNode = self->_hospitalNode;
  self->_hospitalNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147482877 name:@"TE - Religious Setting" operatingPoint:0.66 highPrecisionOperatingPoint:0.66 highRecallOperatingPoint:0.66];
  religiousSettingNode = self->_religiousSettingNode;
  self->_religiousSettingNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147482878 name:@"TE - Vehicle Crash" operatingPoint:0.01 highPrecisionOperatingPoint:0.01 highRecallOperatingPoint:0.01];
  vehicleCrashNode = self->_vehicleCrashNode;
  self->_vehicleCrashNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147482879 name:@"TE - War" operatingPoint:0.26 highPrecisionOperatingPoint:0.26 highRecallOperatingPoint:0.26];
  warNode = self->_warNode;
  self->_warNode = v19;

  MEMORY[0x2821F96F8]();
}

- (CLSTabooEventModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSTabooEventModel;
  v4 = [(CLSTabooEventModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (a3 < 0x55)
    {
      if (a3 < 0x32)
      {
        if (a3 < 0x21)
        {
          if (a3 == 32)
          {
            [(CLSTabooEventModel *)v4 setupVersion32];
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v6 = objc_opt_class();
              *buf = 67109378;
              v11 = a3;
              v12 = 2112;
              v13 = v6;
              _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported version %d in %@", buf, 0x12u);
            }

            v5 = 0;
          }
        }

        else
        {
          [(CLSTabooEventModel *)v4 setupVersion33];
        }
      }

      else
      {
        [(CLSTabooEventModel *)v4 setupVersion50];
      }
    }

    else
    {
      [(CLSTabooEventModel *)v4 setupVersion85];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = 50;
  v4 = 33;
  if (a3 <= 0x20)
  {
    v4 = 32 * (a3 == 32);
  }

  if (a3 <= 0x31)
  {
    v3 = v4;
  }

  if (a3 <= 0x54)
  {
    return v3;
  }

  else
  {
    return 85;
  }
}

@end