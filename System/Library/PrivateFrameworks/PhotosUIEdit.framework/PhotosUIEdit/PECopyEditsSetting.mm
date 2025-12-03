@interface PECopyEditsSetting
+ (id)allSettings;
- (BOOL)isApplicableToCompositionController:(id)controller asset:(id)asset;
- (NSArray)compositionKeys;
- (NSString)localizedTitle;
- (PECopyEditsSetting)initWithIdentifier:(unint64_t)identifier;
@end

@implementation PECopyEditsSetting

- (NSArray)compositionKeys
{
  v24[1] = *MEMORY[0x277D85DE8];
  identifier = [(PECopyEditsSetting *)self identifier];
  v3 = MEMORY[0x277CBEBF8];
  if (identifier <= 3)
  {
    if (identifier > 1)
    {
      if (identifier == 2)
      {
        v9 = *MEMORY[0x277D3ABB8];
        v22[0] = *MEMORY[0x277D3ABC0];
        v22[1] = v9;
        v10 = *MEMORY[0x277D3AA58];
        v22[2] = *MEMORY[0x277D3ABB0];
        v22[3] = v10;
        v11 = *MEMORY[0x277D3ABA0];
        v22[4] = *MEMORY[0x277D3ABE8];
        v22[5] = v11;
        v12 = *MEMORY[0x277D3AA80];
        v22[6] = *MEMORY[0x277D3AA18];
        v22[7] = v12;
        v13 = *MEMORY[0x277D3AA10];
        v22[8] = *MEMORY[0x277D3ABE0];
        v22[9] = v13;
        v14 = *MEMORY[0x277D3AB08];
        v22[10] = *MEMORY[0x277D3AA70];
        v22[11] = v14;
        v4 = MEMORY[0x277CBEA60];
        v5 = v22;
        v8 = 12;
        goto LABEL_24;
      }

      v7 = *MEMORY[0x277D3AA48];
      v21[0] = *MEMORY[0x277D3AA50];
      v21[1] = v7;
      v4 = MEMORY[0x277CBEA60];
      v5 = v21;
    }

    else
    {
      if (!identifier)
      {
        v24[0] = *MEMORY[0x277D3AAB0];
        v4 = MEMORY[0x277CBEA60];
        v5 = v24;
        goto LABEL_23;
      }

      if (identifier != 1)
      {
        goto LABEL_25;
      }

      v6 = *MEMORY[0x277D3AA90];
      v23[0] = *MEMORY[0x277D3AA20];
      v23[1] = v6;
      v4 = MEMORY[0x277CBEA60];
      v5 = v23;
    }

    v8 = 2;
LABEL_24:
    v3 = [v4 arrayWithObjects:v5 count:v8];
    goto LABEL_25;
  }

  if (identifier <= 6)
  {
    if (identifier == 4)
    {
      v20 = *MEMORY[0x277D3AA08];
      v4 = MEMORY[0x277CBEA60];
      v5 = &v20;
    }

    else
    {
      if (identifier != 5)
      {
        goto LABEL_25;
      }

      v19 = *MEMORY[0x277D3AA88];
      v4 = MEMORY[0x277CBEA60];
      v5 = &v19;
    }

    goto LABEL_23;
  }

  if (identifier == 7)
  {
    v18 = *MEMORY[0x277D3A9E0];
    v4 = MEMORY[0x277CBEA60];
    v5 = &v18;
    goto LABEL_23;
  }

  if (identifier == 8)
  {
    v17 = *MEMORY[0x277D3AB10];
    v4 = MEMORY[0x277CBEA60];
    v5 = &v17;
    goto LABEL_23;
  }

  if (identifier != 9)
  {
    goto LABEL_25;
  }

  if (_os_feature_enabled_impl())
  {
    v16 = *MEMORY[0x277D3ABA8];
    v4 = MEMORY[0x277CBEA60];
    v5 = &v16;
LABEL_23:
    v8 = 1;
    goto LABEL_24;
  }

  v3 = MEMORY[0x277CBEBF8];
LABEL_25:

  return v3;
}

- (NSString)localizedTitle
{
  identifier = [(PECopyEditsSetting *)self identifier];
  if (identifier > 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A30140[identifier];
  }

  return PELocalizedString(v3);
}

- (BOOL)isApplicableToCompositionController:(id)controller asset:(id)asset
{
  controllerCopy = controller;
  assetCopy = asset;
  if ([(PECopyEditsSetting *)self identifier]== 6)
  {
    if ([PESmartPasteablePreset isAssetTypeEligibleForSmartPaste:assetCopy])
    {
      IsValid = [PESmartPasteablePreset isCompositionControllerEligibleForSmartPaste:controllerCopy];
LABEL_9:
      v9 = IsValid;
      goto LABEL_10;
    }
  }

  else
  {
    if ([(PECopyEditsSetting *)self identifier]!= 5)
    {
      compositionKeys = [(PECopyEditsSetting *)self compositionKeys];
      v12 = controllerCopy;
      v9 = PFExists();

      goto LABEL_10;
    }

    if ([controllerCopy userOrientation] != 1)
    {
      IsValid = NUOrientationIsValid();
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

uint64_t __64__PECopyEditsSetting_isApplicableToCompositionController_asset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) adjustmentControllerForKey:a2];
  v3 = v2;
  if (v2)
  {
    if ([v2 canBeEnabled])
    {
      v4 = [v3 enabled];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PECopyEditsSetting)initWithIdentifier:(unint64_t)identifier
{
  v7.receiver = self;
  v7.super_class = PECopyEditsSetting;
  v4 = [(PECopyEditsSetting *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_identifier = identifier;
    v4->_enabled = [PECopyEditsSetting _isSettingIdentifierEnabledByDefault:identifier];
  }

  return v5;
}

+ (id)allSettings
{
  v14[10] = *MEMORY[0x277D85DE8];
  v13 = [[PECopyEditsSetting alloc] initWithIdentifier:7];
  v14[0] = v13;
  v2 = [[PECopyEditsSetting alloc] initWithIdentifier:8];
  v14[1] = v2;
  v3 = [[PECopyEditsSetting alloc] initWithIdentifier:9];
  v14[2] = v3;
  v4 = [[PECopyEditsSetting alloc] initWithIdentifier:0];
  v14[3] = v4;
  v5 = [[PECopyEditsSetting alloc] initWithIdentifier:1];
  v14[4] = v5;
  v6 = [[PECopyEditsSetting alloc] initWithIdentifier:2];
  v14[5] = v6;
  v7 = [[PECopyEditsSetting alloc] initWithIdentifier:3];
  v14[6] = v7;
  v8 = [[PECopyEditsSetting alloc] initWithIdentifier:4];
  v14[7] = v8;
  v9 = [[PECopyEditsSetting alloc] initWithIdentifier:5];
  v14[8] = v9;
  v10 = [[PECopyEditsSetting alloc] initWithIdentifier:6];
  v14[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:10];

  return v11;
}

@end