@interface CLSNSFWModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
- (CLSNSFWModel)initWithSceneAnalysisVersion:(unint64_t)a3;
- (id)modelInfo;
- (id)nodeForSignalIdentifier:(unint64_t)a3;
- (void)processSignals:(id)a3 intoProcessedSignals:(id)a4;
- (void)setupVersion32;
- (void)setupVersion33;
- (void)setupVersion50_4;
@end

@implementation CLSNSFWModel

- (id)modelInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __25__CLSNSFWModel_modelInfo__block_invoke;
  aBlock[3] = &unk_279A280B8;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_generalNode, 1);
  v5[2](v5, self->_explicitNode, 1);
  v5[2](v5, self->_noneNode, 0);
  v5[2](v5, self->_brassiereNode, 0);
  v5[2](v5, self->_femaleBreastNode, 0);
  v5[2](v5, self->_maleBreastNode, 0);
  v5[2](v5, self->_buttocksNode, 0);
  v5[2](v5, self->_femaleGenitalsNode, 0);
  v5[2](v5, self->_maleGenitalsNode, 0);
  v5[2](v5, self->_underwearNode, 0);
  v5[2](v5, self->_maleUnderwearNode, 0);
  v6 = v4;

  return v4;
}

void __25__CLSNSFWModel_modelInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 signalInfoWithIsHierarchical:?];
  [v2 addObject:v3];
}

- (void)processSignals:(id)a3 intoProcessedSignals:(id)a4
{
  v17 = a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:&unk_287051C98];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v6 objectForKeyedSubscript:&unk_287051CB0];
  [v10 doubleValue];

  v11 = [v6 objectForKeyedSubscript:&unk_287051CC8];

  [v11 doubleValue];
  v13 = v12;

  if (self->_version < 0x32)
  {
    [v17 setIsRecallinglyNSFWExplicit:{-[CLSSignalNode passesHighRecallWithConfidence:](self->_explicitNode, "passesHighRecallWithConfidence:", v13)}];
    [v17 setIsNSFWExplicit:{-[CLSSignalNode passesWithConfidence:](self->_explicitNode, "passesWithConfidence:", v13)}];
  }

  else
  {
    v14 = v9 <= 0.3 && v13 >= 0.29;
    [v17 setIsPreciselyNSFWExplicit:v14];
    v15 = v9 <= 0.39 && v13 >= 0.15;
    [v17 setIsNSFWExplicit:v15];
    v16 = v9 <= 0.66 && v13 >= 0.08;
    [v17 setIsRecallinglyNSFWExplicit:v16];
  }
}

- (id)nodeForSignalIdentifier:(unint64_t)a3
{
  if (a3 <= 2147483385)
  {
    if (a3 > 2147483382)
    {
      if (a3 == 2147483383)
      {
        explicitNode = self->_explicitNode;
      }

      else if (a3 == 2147483384)
      {
        explicitNode = self->_brassiereNode;
      }

      else
      {
        explicitNode = self->_femaleBreastNode;
      }

      goto LABEL_24;
    }

    if (a3 == 2147483381)
    {
      explicitNode = self->_noneNode;
      goto LABEL_24;
    }

    if (a3 == 2147483382)
    {
      explicitNode = self->_generalNode;
      goto LABEL_24;
    }
  }

  else
  {
    if (a3 <= 2147483388)
    {
      if (a3 == 2147483386)
      {
        explicitNode = self->_maleBreastNode;
      }

      else if (a3 == 2147483387)
      {
        explicitNode = self->_buttocksNode;
      }

      else
      {
        explicitNode = self->_femaleGenitalsNode;
      }

      goto LABEL_24;
    }

    switch(a3)
    {
      case 0x7FFFFEFDuLL:
        explicitNode = self->_maleGenitalsNode;
        goto LABEL_24;
      case 0x7FFFFEFEuLL:
        explicitNode = self->_underwearNode;
        goto LABEL_24;
      case 0x7FFFFEFFuLL:
        explicitNode = self->_maleUnderwearNode;
LABEL_24:
        v5 = explicitNode;
        goto LABEL_25;
    }
  }

  if ([(CLSNSFWModel *)self isResponsibleForSignalIdentifier:a3])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"NSFW - Unknown (%X)", a3];
    v5 = [[CLSSignalNode alloc] initWithIdentifier:a3 name:v7 operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  }

  else
  {
    v5 = 0;
  }

LABEL_25:

  return v5;
}

- (void)setupVersion50_4
{
  self->_version = 50;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147483381 name:@"NSFW - None" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  noneNode = self->_noneNode;
  self->_noneNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147483382 name:@"NSFW - General" operatingPoint:0.69 highPrecisionOperatingPoint:0.86 highRecallOperatingPoint:0.43];
  generalNode = self->_generalNode;
  self->_generalNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147483383 name:@"NSFW - Explicit" operatingPoint:0.28 highPrecisionOperatingPoint:0.43 highRecallOperatingPoint:0.09];
  explicitNode = self->_explicitNode;
  self->_explicitNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147483384 name:@"NSFW - BR" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  brassiereNode = self->_brassiereNode;
  self->_brassiereNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147483385 name:@"NSFW - FB" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  femaleBreastNode = self->_femaleBreastNode;
  self->_femaleBreastNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147483386 name:@"NSFW - MB" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleBreastNode = self->_maleBreastNode;
  self->_maleBreastNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147483387 name:@"NSFW - BT" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  buttocksNode = self->_buttocksNode;
  self->_buttocksNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147483388 name:@"NSFW - FG" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  femaleGenitalsNode = self->_femaleGenitalsNode;
  self->_femaleGenitalsNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147483389 name:@"NSFW - MG" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleGenitalsNode = self->_maleGenitalsNode;
  self->_maleGenitalsNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:2147483390 name:@"NSFW - UW" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  underwearNode = self->_underwearNode;
  self->_underwearNode = v21;

  v23 = [[CLSSignalNode alloc] initWithIdentifier:2147483391 name:@"NSFW - MU" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleUnderwearNode = self->_maleUnderwearNode;
  self->_maleUnderwearNode = v23;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion33
{
  self->_version = 33;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147483381 name:@"NSFW - None" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  noneNode = self->_noneNode;
  self->_noneNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147483382 name:@"NSFW - General" operatingPoint:0.37 highPrecisionOperatingPoint:0.63 highRecallOperatingPoint:0.22];
  generalNode = self->_generalNode;
  self->_generalNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147483383 name:@"NSFW - Explicit" operatingPoint:0.21 highPrecisionOperatingPoint:0.33 highRecallOperatingPoint:0.08];
  explicitNode = self->_explicitNode;
  self->_explicitNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147483384 name:@"NSFW - BR" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  brassiereNode = self->_brassiereNode;
  self->_brassiereNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147483385 name:@"NSFW - FB" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  femaleBreastNode = self->_femaleBreastNode;
  self->_femaleBreastNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147483386 name:@"NSFW - MB" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleBreastNode = self->_maleBreastNode;
  self->_maleBreastNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147483387 name:@"NSFW - BT" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  buttocksNode = self->_buttocksNode;
  self->_buttocksNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147483388 name:@"NSFW - FG" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  femaleGenitalsNode = self->_femaleGenitalsNode;
  self->_femaleGenitalsNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147483389 name:@"NSFW - MG" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleGenitalsNode = self->_maleGenitalsNode;
  self->_maleGenitalsNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:2147483390 name:@"NSFW - UW" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  underwearNode = self->_underwearNode;
  self->_underwearNode = v21;

  v23 = [[CLSSignalNode alloc] initWithIdentifier:2147483391 name:@"NSFW - MU" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleUnderwearNode = self->_maleUnderwearNode;
  self->_maleUnderwearNode = v23;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion32
{
  self->_version = 32;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147483381 name:@"NSFW - None" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  noneNode = self->_noneNode;
  self->_noneNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147483382 name:@"NSFW - General" operatingPoint:0.79 highPrecisionOperatingPoint:0.92 highRecallOperatingPoint:0.49];
  generalNode = self->_generalNode;
  self->_generalNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147483383 name:@"NSFW - Explicit" operatingPoint:0.21 highPrecisionOperatingPoint:0.39 highRecallOperatingPoint:0.06];
  explicitNode = self->_explicitNode;
  self->_explicitNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147483384 name:@"NSFW - BR" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  brassiereNode = self->_brassiereNode;
  self->_brassiereNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147483385 name:@"NSFW - FB" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  femaleBreastNode = self->_femaleBreastNode;
  self->_femaleBreastNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147483386 name:@"NSFW - MB" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleBreastNode = self->_maleBreastNode;
  self->_maleBreastNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147483387 name:@"NSFW - BT" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  buttocksNode = self->_buttocksNode;
  self->_buttocksNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147483388 name:@"NSFW - FG" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  femaleGenitalsNode = self->_femaleGenitalsNode;
  self->_femaleGenitalsNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147483389 name:@"NSFW - MG" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleGenitalsNode = self->_maleGenitalsNode;
  self->_maleGenitalsNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:2147483390 name:@"NSFW - UW" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  underwearNode = self->_underwearNode;
  self->_underwearNode = v21;

  v23 = [[CLSSignalNode alloc] initWithIdentifier:2147483391 name:@"NSFW - MU" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  maleUnderwearNode = self->_maleUnderwearNode;
  self->_maleUnderwearNode = v23;

  MEMORY[0x2821F96F8]();
}

- (CLSNSFWModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSNSFWModel;
  v4 = [(CLSNSFWModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (a3 < 0x32)
    {
      if (a3 < 0x21)
      {
        if (a3 == 32)
        {
          [(CLSNSFWModel *)v4 setupVersion32];
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
        [(CLSNSFWModel *)v4 setupVersion33];
      }
    }

    else
    {
      [(CLSNSFWModel *)v4 setupVersion50];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = 33;
  if (a3 <= 0x20)
  {
    v3 = 32 * (a3 == 32);
  }

  if (a3 <= 0x31)
  {
    return v3;
  }

  else
  {
    return 50;
  }
}

@end