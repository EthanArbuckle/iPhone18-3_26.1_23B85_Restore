@interface CLSMemeModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
- (BOOL)isMemeExclusiveFromSceneClassifications:(id)a3;
- (BOOL)isMemeFromSceneClassifications:(id)a3;
- (CLSMemeModel)initWithSceneAnalysisVersion:(unint64_t)a3;
- (id)modelInfo;
- (id)nodeForSignalIdentifier:(unint64_t)a3;
- (void)setupVersion55;
- (void)setupVersion59;
- (void)setupVersion62;
@end

@implementation CLSMemeModel

- (BOOL)isMemeFromSceneClassifications:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (-[CLSMemeModel isResponsibleForSignalIdentifier:](self, "isResponsibleForSignalIdentifier:", [v10 extendedSceneIdentifier]))
        {
          if ([(CLSSignalNode *)self->_negativeNode passesWithSignal:v10])
          {
            goto LABEL_14;
          }

          if ([(CLSSignalNode *)self->_memeScreenshotEtcNode passesWithSignal:v10]|| [(CLSSignalNode *)self->_documentNode passesWithSignal:v10])
          {
            v7 = 1;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
LABEL_14:
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (BOOL)isMemeExclusiveFromSceneClassifications:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (-[CLSMemeModel isResponsibleForSignalIdentifier:](self, "isResponsibleForSignalIdentifier:", [v10 extendedSceneIdentifier]))
        {
          if ([(CLSSignalNode *)self->_negativeNode passesWithSignal:v10])
          {
            goto LABEL_12;
          }

          v7 |= [(CLSSignalNode *)self->_memeScreenshotEtcNode passesWithSignal:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
LABEL_12:
    LOBYTE(v7) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (id)modelInfo
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = [(CLSMemeModel *)self negativeNode];
  v4 = [v3 signalInfoWithIsHierarchical:0];
  v5 = [(CLSMemeModel *)self documentNode];
  v6 = [v5 signalInfoWithIsHierarchical:0];
  v12[1] = v6;
  v7 = [(CLSMemeModel *)self memeScreenshotEtcNode];
  v8 = [v7 signalInfoWithIsHierarchical:0];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)nodeForSignalIdentifier:(unint64_t)a3
{
  switch(a3)
  {
    case 0x7FFFFAFF:
      v4 = [(CLSMemeModel *)self memeScreenshotEtcNode];
      goto LABEL_7;
    case 0x7FFFFAFE:
      v4 = [(CLSMemeModel *)self documentNode];
      goto LABEL_7;
    case 0x7FFFFAFD:
      v4 = [(CLSMemeModel *)self negativeNode];
LABEL_7:
      v5 = v4;
      goto LABEL_8;
  }

  if ([(CLSMemeModel *)self isResponsibleForSignalIdentifier:a3])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Meme - Unknown (%X)", a3];
    v5 = [[CLSSignalNode alloc] initWithIdentifier:a3 name:v7 operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  }

  else
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (void)setupVersion62
{
  self->_version = 62;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147482365 name:@"Meme - Negative" operatingPoint:0.98 highPrecisionOperatingPoint:0.997 highRecallOperatingPoint:0.868];
  negativeNode = self->_negativeNode;
  self->_negativeNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147482366 name:@"Meme - Document" operatingPoint:0.838 highPrecisionOperatingPoint:0.955 highRecallOperatingPoint:0.556];
  documentNode = self->_documentNode;
  self->_documentNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147482367 name:@"Meme - MemeScreenshotEtc" operatingPoint:0.91 highPrecisionOperatingPoint:0.98 highRecallOperatingPoint:0.6];
  memeScreenshotEtcNode = self->_memeScreenshotEtcNode;
  self->_memeScreenshotEtcNode = v7;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion59
{
  self->_version = 59;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147482365 name:@"Meme - Negative" operatingPoint:0.858 highPrecisionOperatingPoint:0.935 highRecallOperatingPoint:0.232];
  negativeNode = self->_negativeNode;
  self->_negativeNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147482366 name:@"Meme - Document" operatingPoint:0.543 highPrecisionOperatingPoint:0.866 highRecallOperatingPoint:0.282];
  documentNode = self->_documentNode;
  self->_documentNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147482367 name:@"Meme - MemeScreenshotEtc" operatingPoint:0.976 highPrecisionOperatingPoint:0.996 highRecallOperatingPoint:0.868];
  memeScreenshotEtcNode = self->_memeScreenshotEtcNode;
  self->_memeScreenshotEtcNode = v7;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion55
{
  self->_version = 55;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147482365 name:@"Meme - Negative" operatingPoint:0.889 highPrecisionOperatingPoint:0.975 highRecallOperatingPoint:0.707];
  negativeNode = self->_negativeNode;
  self->_negativeNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147482366 name:@"Meme - Document" operatingPoint:0.406 highPrecisionOperatingPoint:0.727 highRecallOperatingPoint:0.078];
  documentNode = self->_documentNode;
  self->_documentNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147482367 name:@"Meme - MemeScreenshotEtc" operatingPoint:0.993 highPrecisionOperatingPoint:0.997 highRecallOperatingPoint:0.925];
  memeScreenshotEtcNode = self->_memeScreenshotEtcNode;
  self->_memeScreenshotEtcNode = v7;

  MEMORY[0x2821F96F8]();
}

- (CLSMemeModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSMemeModel;
  v4 = [(CLSMemeModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (a3 < 0x3E)
    {
      if (a3 < 0x3B)
      {
        if (a3 < 0x37)
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
          [(CLSMemeModel *)v4 setupVersion55];
        }
      }

      else
      {
        [(CLSMemeModel *)v4 setupVersion59];
      }
    }

    else
    {
      [(CLSMemeModel *)v4 setupVersion62];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = 59;
  v4 = 55;
  if (a3 < 0x37)
  {
    v4 = 0;
  }

  if (a3 <= 0x3A)
  {
    v3 = v4;
  }

  if (a3 <= 0x3D)
  {
    return v3;
  }

  else
  {
    return 62;
  }
}

@end