@interface CLSIVSNSFWModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
- (CLSIVSNSFWModel)initWithSceneAnalysisVersion:(unint64_t)a3;
- (id)modelInfo;
- (id)nodeForSignalIdentifier:(unint64_t)a3;
- (void)processSignals:(id)a3 intoProcessedSignals:(id)a4;
- (void)setupVersion61;
- (void)setupVersion76;
- (void)setupVersion95;
- (void)setupVersion98;
@end

@implementation CLSIVSNSFWModel

- (id)modelInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __28__CLSIVSNSFWModel_modelInfo__block_invoke;
  aBlock[3] = &unk_279A280B8;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_anyNode, 1);
  v5[2](v5, self->_femaleBreastNode, 0);
  v5[2](v5, self->_maleBreastNode, 0);
  v5[2](v5, self->_buttocksNode, 0);
  v5[2](v5, self->_explicitNode, 1);
  v5[2](v5, self->_femaleGenitalsNode, 0);
  v5[2](v5, self->_maleGenitalsNode, 0);
  v5[2](v5, self->_noneNode, 0);
  v5[2](v5, self->_underwearNode, 0);
  v6 = v4;

  return v4;
}

void __28__CLSIVSNSFWModel_modelInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 signalInfoWithIsHierarchical:?];
  [v2 addObject:v3];
}

- (void)processSignals:(id)a3 intoProcessedSignals:(id)a4
{
  v12 = a4;
  v6 = [a3 objectForKeyedSubscript:&unk_287051C80];
  [v6 doubleValue];
  v8 = v7;

  [v12 setIsRecallinglyNSFWExplicit:{-[CLSSignalNode passesHighRecallWithConfidence:](self->_explicitNode, "passesHighRecallWithConfidence:", v8)}];
  [v12 setIsNSFWExplicit:{-[CLSSignalNode passesWithConfidence:](self->_explicitNode, "passesWithConfidence:", v8)}];
  [v12 setIsPreciselyNSFWExplicit:{-[CLSSignalNode passesHighRecallWithConfidence:](self->_explicitNode, "passesHighRecallWithConfidence:", v8)}];
  version = self->_version;
  if (version <= 0x61)
  {
    v11 = v12;
    if (version <= 0x5E)
    {
      if (version <= 0x4B)
      {
        if (version < 0x3D)
        {
          goto LABEL_10;
        }

        v10 = 0.96;
      }

      else
      {
        v10 = 0.898;
      }
    }

    else
    {
      v10 = 0.87;
    }
  }

  else
  {
    v10 = 0.883;
  }

  [v12 setIsVeryPreciselyIVSNSFWExplicit:v8 >= v10];
  v11 = v12;
LABEL_10:
}

- (id)nodeForSignalIdentifier:(unint64_t)a3
{
  if (a3 <= 2147481849)
  {
    if (a3 > 2147481847)
    {
      if (a3 == 2147481848)
      {
        buttocksNode = self->_buttocksNode;
      }

      else
      {
        buttocksNode = self->_femaleGenitalsNode;
      }

      goto LABEL_20;
    }

    if (a3 == 2147481846)
    {
      buttocksNode = self->_femaleBreastNode;
      goto LABEL_20;
    }

    if (a3 == 2147481847)
    {
      buttocksNode = self->_maleBreastNode;
      goto LABEL_20;
    }
  }

  else
  {
    if (a3 <= 2147481851)
    {
      if (a3 == 2147481850)
      {
        buttocksNode = self->_maleGenitalsNode;
      }

      else
      {
        buttocksNode = self->_noneNode;
      }

      goto LABEL_20;
    }

    switch(a3)
    {
      case 0x7FFFF8FCuLL:
        buttocksNode = self->_underwearNode;
        goto LABEL_20;
      case 0x7FFFF8FEuLL:
        buttocksNode = self->_explicitNode;
        goto LABEL_20;
      case 0x7FFFF8FDuLL:
        buttocksNode = self->_anyNode;
LABEL_20:
        v5 = buttocksNode;
        goto LABEL_21;
    }
  }

  if ([(CLSIVSNSFWModel *)self isResponsibleForSignalIdentifier:a3])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"IVS NSFW - Unknown (%X)", a3];
    v5 = [[CLSSignalNode alloc] initWithIdentifier:a3 name:v7 operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  }

  else
  {
    v5 = 0;
  }

LABEL_21:

  return v5;
}

- (void)setupVersion98
{
  self->_version = 98;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147481853 name:@"IVS NSFW - Any" operatingPoint:0.73 highPrecisionOperatingPoint:0.91 highRecallOperatingPoint:0.24];
  anyNode = self->_anyNode;
  self->_anyNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147481846 name:@"IVS NSFW - FB" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  femaleBreastNode = self->_femaleBreastNode;
  self->_femaleBreastNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147481847 name:@"IVS NSFW - MB" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleBreastNode = self->_maleBreastNode;
  self->_maleBreastNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147481848 name:@"IVS NSFW - BT" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  buttocksNode = self->_buttocksNode;
  self->_buttocksNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147481854 name:@"IVS NSFW - Explicit" operatingPoint:0.68 highPrecisionOperatingPoint:0.883 highRecallOperatingPoint:0.29];
  explicitNode = self->_explicitNode;
  self->_explicitNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147481849 name:@"IVS NSFW - FG" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  femaleGenitalsNode = self->_femaleGenitalsNode;
  self->_femaleGenitalsNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147481850 name:@"IVS NSFW - MG" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleGenitalsNode = self->_maleGenitalsNode;
  self->_maleGenitalsNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147481851 name:@"IVS NSFW - None" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  noneNode = self->_noneNode;
  self->_noneNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147481852 name:@"IVS NSFW - UW" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  underwearNode = self->_underwearNode;
  self->_underwearNode = v19;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion95
{
  self->_version = 95;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147481853 name:@"IVS NSFW - Any" operatingPoint:0.66 highPrecisionOperatingPoint:0.87 highRecallOperatingPoint:0.2];
  anyNode = self->_anyNode;
  self->_anyNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147481846 name:@"IVS NSFW - FB" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  femaleBreastNode = self->_femaleBreastNode;
  self->_femaleBreastNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147481847 name:@"IVS NSFW - MB" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleBreastNode = self->_maleBreastNode;
  self->_maleBreastNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147481848 name:@"IVS NSFW - BT" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  buttocksNode = self->_buttocksNode;
  self->_buttocksNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147481854 name:@"IVS NSFW - Explicit" operatingPoint:0.527 highPrecisionOperatingPoint:0.873 highRecallOperatingPoint:0.167];
  explicitNode = self->_explicitNode;
  self->_explicitNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147481849 name:@"IVS NSFW - FG" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  femaleGenitalsNode = self->_femaleGenitalsNode;
  self->_femaleGenitalsNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147481850 name:@"IVS NSFW - MG" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleGenitalsNode = self->_maleGenitalsNode;
  self->_maleGenitalsNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147481851 name:@"IVS NSFW - None" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  noneNode = self->_noneNode;
  self->_noneNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147481852 name:@"IVS NSFW - UW" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  underwearNode = self->_underwearNode;
  self->_underwearNode = v19;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion76
{
  self->_version = 76;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147481853 name:@"IVS NSFW - Any" operatingPoint:0.77 highPrecisionOperatingPoint:0.91 highRecallOperatingPoint:0.18];
  anyNode = self->_anyNode;
  self->_anyNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147481846 name:@"IVS NSFW - FB" operatingPoint:0.48 highPrecisionOperatingPoint:0.79 highRecallOperatingPoint:0.15];
  femaleBreastNode = self->_femaleBreastNode;
  self->_femaleBreastNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147481847 name:@"IVS NSFW - MB" operatingPoint:0.19 highPrecisionOperatingPoint:0.74 highRecallOperatingPoint:0.08];
  maleBreastNode = self->_maleBreastNode;
  self->_maleBreastNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147481848 name:@"IVS NSFW - BT" operatingPoint:0.32 highPrecisionOperatingPoint:0.62 highRecallOperatingPoint:0.1];
  buttocksNode = self->_buttocksNode;
  self->_buttocksNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147481854 name:@"IVS NSFW - Explicit" operatingPoint:0.63 highPrecisionOperatingPoint:0.84 highRecallOperatingPoint:0.21];
  explicitNode = self->_explicitNode;
  self->_explicitNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147481849 name:@"IVS NSFW - FG" operatingPoint:0.4 highPrecisionOperatingPoint:0.73 highRecallOperatingPoint:0.13];
  femaleGenitalsNode = self->_femaleGenitalsNode;
  self->_femaleGenitalsNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147481850 name:@"IVS NSFW - MG" operatingPoint:0.41 highPrecisionOperatingPoint:0.7 highRecallOperatingPoint:0.13];
  maleGenitalsNode = self->_maleGenitalsNode;
  self->_maleGenitalsNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147481851 name:@"IVS NSFW - None" operatingPoint:0.15 highPrecisionOperatingPoint:0.64 highRecallOperatingPoint:0.05];
  noneNode = self->_noneNode;
  self->_noneNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147481852 name:@"IVS NSFW - UW" operatingPoint:0.4 highPrecisionOperatingPoint:0.61 highRecallOperatingPoint:0.09];
  underwearNode = self->_underwearNode;
  self->_underwearNode = v19;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion61
{
  self->_version = 61;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147481853 name:@"IVS NSFW - Any" operatingPoint:0.87 highPrecisionOperatingPoint:0.95 highRecallOperatingPoint:0.11];
  anyNode = self->_anyNode;
  self->_anyNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147481846 name:@"IVS NSFW - FB" operatingPoint:0.14 highPrecisionOperatingPoint:0.82 highRecallOperatingPoint:0.04];
  femaleBreastNode = self->_femaleBreastNode;
  self->_femaleBreastNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147481847 name:@"IVS NSFW - MB" operatingPoint:0.46 highPrecisionOperatingPoint:0.89 highRecallOperatingPoint:0.02];
  maleBreastNode = self->_maleBreastNode;
  self->_maleBreastNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147481848 name:@"IVS NSFW - BT" operatingPoint:0.62 highPrecisionOperatingPoint:0.68 highRecallOperatingPoint:0.07];
  buttocksNode = self->_buttocksNode;
  self->_buttocksNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147481854 name:@"IVS NSFW - Explicit" operatingPoint:0.17 highPrecisionOperatingPoint:0.76 highRecallOperatingPoint:0.02];
  explicitNode = self->_explicitNode;
  self->_explicitNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147481849 name:@"IVS NSFW - FG" operatingPoint:0.45 highPrecisionOperatingPoint:0.46 highRecallOperatingPoint:0.01];
  femaleGenitalsNode = self->_femaleGenitalsNode;
  self->_femaleGenitalsNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147481850 name:@"IVS NSFW - MG" operatingPoint:0.08 highPrecisionOperatingPoint:0.77 highRecallOperatingPoint:0.06];
  maleGenitalsNode = self->_maleGenitalsNode;
  self->_maleGenitalsNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147481851 name:@"IVS NSFW - None" operatingPoint:0.13 highPrecisionOperatingPoint:0.82 highRecallOperatingPoint:0.01];
  noneNode = self->_noneNode;
  self->_noneNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147481852 name:@"IVS NSFW - UW" operatingPoint:0.13 highPrecisionOperatingPoint:0.62 highRecallOperatingPoint:0.11];
  underwearNode = self->_underwearNode;
  self->_underwearNode = v19;

  MEMORY[0x2821F96F8]();
}

- (CLSIVSNSFWModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSIVSNSFWModel;
  v4 = [(CLSIVSNSFWModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (a3 < 0x62)
    {
      if (a3 < 0x5F)
      {
        if (a3 < 0x4C)
        {
          if (a3 < 0x3D)
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

          else
          {
            [(CLSIVSNSFWModel *)v4 setupVersion61];
          }
        }

        else
        {
          [(CLSIVSNSFWModel *)v4 setupVersion76];
        }
      }

      else
      {
        [(CLSIVSNSFWModel *)v4 setupVersion95];
      }
    }

    else
    {
      [(CLSIVSNSFWModel *)v4 setupVersion98];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = 95;
  v4 = 76;
  v5 = 61;
  if (a3 < 0x3D)
  {
    v5 = 0;
  }

  if (a3 <= 0x4B)
  {
    v4 = v5;
  }

  if (a3 <= 0x5E)
  {
    v3 = v4;
  }

  if (a3 <= 0x61)
  {
    return v3;
  }

  else
  {
    return 98;
  }
}

@end