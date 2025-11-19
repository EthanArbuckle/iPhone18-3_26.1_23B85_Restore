@interface TVRUIDeviceInfo
+ (TVRUIDeviceInfo)currentDeviceInfo;
- (BOOL)hasHomeButton;
- (BOOL)isPad;
- (CGRect)_userIntentButtonRect;
- (CGRect)_volumeDownButtonRect;
- (CGRect)_volumeUpButtonRect;
- (CGRect)volumeButtonsRect;
- (TVRUIDeviceInfo)init;
- (double)_volumeButtonsX;
- (id)_volumeButtonsDictionaryForSpecificHardware;
- (id)description;
- (id)hardwareInfoForOrientation:(int64_t)a3;
- (void)_readPlistForParametersIfNeeded;
@end

@implementation TVRUIDeviceInfo

+ (TVRUIDeviceInfo)currentDeviceInfo
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TVRUIDeviceInfo)init
{
  v4.receiver = self;
  v4.super_class = TVRUIDeviceInfo;
  result = [(TVRUIDeviceInfo *)&v4 init];
  if (result)
  {
    result->_volumeButtonHeight = 0.0;
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    result->_volumeButtonsRect.origin = *MEMORY[0x277CBF3A0];
    result->_volumeButtonsRect.size = v3;
  }

  return result;
}

- (BOOL)isPad
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (BOOL)hasHomeButton
{
  if (hasHomeButton_onceToken != -1)
  {
    [TVRUIDeviceInfo hasHomeButton];
  }

  return hasHomeButton_hasHomeButton;
}

uint64_t __32__TVRUIDeviceInfo_hasHomeButton__block_invoke()
{
  result = MGGetSInt32Answer();
  hasHomeButton_hasHomeButton = result != 2;
  return result;
}

- (id)hardwareInfoForOrientation:(int64_t)a3
{
  [(TVRUIDeviceInfo *)self _userIntentButtonRect];
  v28 = v5;
  v29 = v4;
  v26 = v7;
  v27 = v6;
  [(TVRUIDeviceInfo *)self _volumeUpButtonRect];
  v25 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(TVRUIDeviceInfo *)self _volumeDownButtonRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(TVRUIDeviceInfo *)self volumeButtonsRect];
  v23 = [[TVRUIDeviceHardwareInfo alloc] initWithUserIntentButton:v29 volumeUpButton:v28 volumeDownButton:v27 volumeTotalHeight:v26, v25, v10, v12, v14, v16, v18, v20, v22, CGRectGetHeight(v31)];

  return v23;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[TVRUIDeviceInfo isPad](self withName:{"isPad"), @"isPad"}];
  v5 = [v3 appendBool:-[TVRUIDeviceInfo hasHomeButton](self withName:{"hasHomeButton"), @"hasHomeButton"}];
  v6 = [v3 build];

  return v6;
}

- (CGRect)_volumeUpButtonRect
{
  [(TVRUIDeviceInfo *)self _readPlistForParametersIfNeeded];
  [(TVRUIDeviceInfo *)self _volumeButtonsX];
  v4 = v3;
  [(TVRUIDeviceInfo *)self volumeButtonsRect];
  MinY = CGRectGetMinY(v12);
  [(TVRUIDeviceInfo *)self volumeButtonsRect];
  Width = CGRectGetWidth(v13);
  [(TVRUIDeviceInfo *)self volumeButtonHeight];
  v8 = v7;
  v9 = v4;
  v10 = MinY;
  v11 = Width;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)_volumeDownButtonRect
{
  [(TVRUIDeviceInfo *)self _readPlistForParametersIfNeeded];
  [(TVRUIDeviceInfo *)self _volumeButtonsX];
  v4 = v3;
  [(TVRUIDeviceInfo *)self volumeButtonsRect];
  MaxY = CGRectGetMaxY(v14);
  [(TVRUIDeviceInfo *)self volumeButtonHeight];
  v7 = MaxY - v6;
  [(TVRUIDeviceInfo *)self volumeButtonsRect];
  Width = CGRectGetWidth(v15);
  [(TVRUIDeviceInfo *)self volumeButtonHeight];
  v10 = v9;
  v11 = v4;
  v12 = v7;
  v13 = Width;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_userIntentButtonRect
{
  v11 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__TVRUIDeviceInfo__userIntentButtonRect__block_invoke;
  block[3] = &unk_279D87C20;
  block[4] = self;
  if (_userIntentButtonRect_onceToken != -1)
  {
    dispatch_once(&_userIntentButtonRect_onceToken, block);
  }

  v2 = _TVRUIDeviceInfoLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromCGRect(*_userIntentButtonRect_frame);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Power button frame - %@", buf, 0xCu);
  }

  v5 = *&_userIntentButtonRect_frame[8];
  v4 = *_userIntentButtonRect_frame;
  v6 = *&_userIntentButtonRect_frame[16];
  v7 = *&_userIntentButtonRect_frame[24];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

void __40__TVRUIDeviceInfo__userIntentButtonRect__block_invoke(uint64_t a1)
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v3);
      v6 = BytePtr[1];
      _userIntentButtonRect_frame = *BytePtr;
      *&qword_2804DA950 = v6;
    }

    CFRelease(v3);
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 _referenceBounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v40.origin.x = v9;
    v40.origin.y = v11;
    v40.size.width = v13;
    v40.size.height = v15;
    v16 = CGRectGetWidth(v40) * *&_userIntentButtonRect_frame;
    v17 = floorf(v16);
    v41.origin.x = v9;
    v41.origin.y = v11;
    v41.size.width = v13;
    v41.size.height = v15;
    Height = CGRectGetHeight(v41);
    v38 = *(&_userIntentButtonRect_frame + 1);
    v42.origin.x = v9;
    v42.origin.y = v11;
    v42.size.width = v13;
    v42.size.height = v15;
    Width = CGRectGetWidth(v42);
    v19.f64[0] = Height;
    v19.f64[1] = Width;
    v20 = vrndm_f32(vcvt_f32_f64(vmulq_f64(v19, __PAIR128__(qword_2804DA950, v38))));
    v21 = v9;
    v19.f64[0] = v11;
    v22 = v13;
    v23 = v15;
    v24 = CGRectGetHeight(*(&v19 - 8)) * *&qword_2804DA958;
    v25 = floorf(v24);
  }

  else
  {
    if (![*(a1 + 32) hasHomeButton])
    {
      return;
    }

    v26 = [MEMORY[0x277D759A0] mainScreen];
    [v26 _referenceBounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v43.origin.x = v28;
    v43.origin.y = v30;
    v43.size.width = v32;
    v43.size.height = v34;
    v39 = CGRectGetHeight(v43);
    v44.origin.x = v28;
    v44.origin.y = v30;
    v44.size.width = v32;
    v44.size.height = v34;
    v35 = CGRectGetWidth(v44);
    v36.f64[0] = v39;
    v36.f64[1] = v35;
    v20 = vrndm_f32(vcvt_f32_f64(v36));
    v17 = 0.0;
    v25 = 0.0;
  }

  *&_userIntentButtonRect_frame = v17;
  *(&_userIntentButtonRect_frame + 8) = vcvtq_f64_f32(v20);
  qword_2804DA958 = *&v25;
}

- (double)_volumeButtonsX
{
  [(TVRUIDeviceInfo *)self volumeButtonsRect];
  if (CGRectGetWidth(v22) <= 0.0)
  {
    [(TVRUIDeviceInfo *)self volumeButtonsRect];
    if (CGRectGetMinX(v23) <= 0.0)
    {
      return 0.0;
    }

    else
    {
      [(TVRUIDeviceInfo *)self volumeButtonsRect];

      return CGRectGetMinX(*&v17);
    }
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v5;
    v13 = v7;
    v14 = v9;
    v15 = v11;

    return CGRectGetWidth(*&v12);
  }
}

- (void)_readPlistForParametersIfNeeded
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_FAULT, "Missing screen class (%{public}@) in plist", &v2, 0xCu);
}

- (id)_volumeButtonsDictionaryForSpecificHardware
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (_volumeButtonsDictionaryForSpecificHardware_onceToken != -1)
  {
    [TVRUIDeviceInfo _volumeButtonsDictionaryForSpecificHardware];
  }

  v3 = 0;
  if (_volumeButtonsDictionaryForSpecificHardware_productType > 2309863437)
  {
    if (_volumeButtonsDictionaryForSpecificHardware_productType <= 3585085678)
    {
      if (_volumeButtonsDictionaryForSpecificHardware_productType <= 2793418700)
      {
        if (_volumeButtonsDictionaryForSpecificHardware_productType == 2309863438)
        {
          v8 = @"volumeButtonHeight";
          LODWORD(v2) = 1115815936;
          v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
          v5 = v4;
          v9 = @"volumeButtonsRect";
          v6 = @"{{0,221},{0,151}}";
        }

        else
        {
          if (_volumeButtonsDictionaryForSpecificHardware_productType != 2722529672)
          {
            goto LABEL_46;
          }

          v8 = @"volumeButtonHeight";
          LODWORD(v2) = 1115160576;
          v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
          v5 = v4;
          v9 = @"volumeButtonsRect";
          v6 = @"{{0,170},{0,144}}";
        }

        goto LABEL_45;
      }

      if (_volumeButtonsDictionaryForSpecificHardware_productType == 2793418701)
      {
        v8 = @"volumeButtonHeight";
        LODWORD(v2) = 1115684864;
        v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
        v5 = v4;
        v9 = @"volumeButtonsRect";
        v6 = @"{{0,226},{0,150}}";
        goto LABEL_45;
      }

      if (_volumeButtonsDictionaryForSpecificHardware_productType != 2941181571)
      {
        if (_volumeButtonsDictionaryForSpecificHardware_productType != 3054476161)
        {
          goto LABEL_46;
        }

        v8 = @"volumeButtonHeight";
        LODWORD(v2) = 1112276992;
        v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
        v5 = v4;
        v9 = @"volumeButtonsRect";
        v6 = @"{{0,170},{1,114}}";
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (_volumeButtonsDictionaryForSpecificHardware_productType > 3743999267)
    {
      if (_volumeButtonsDictionaryForSpecificHardware_productType == 3743999268)
      {
        v8 = @"volumeButtonHeight";
        LODWORD(v2) = 1115160576;
        v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
        v5 = v4;
        v9 = @"volumeButtonsRect";
        v6 = @"{{0,152},{0,140}}";
        goto LABEL_45;
      }

      if (_volumeButtonsDictionaryForSpecificHardware_productType == 3825599860)
      {
        v8 = @"volumeButtonHeight";
        LODWORD(v2) = 1115684864;
        v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
        v5 = v4;
        v9 = @"volumeButtonsRect";
        v6 = @"{{0,224},{0,148}}";
        goto LABEL_45;
      }

      if (_volumeButtonsDictionaryForSpecificHardware_productType != 3885279870)
      {
        goto LABEL_46;
      }

LABEL_38:
      v8 = @"volumeButtonHeight";
      LODWORD(v2) = 1116209152;
      v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
      v5 = v4;
      v9 = @"volumeButtonsRect";
      v6 = @"{{0,184},{0,156}}";
      goto LABEL_45;
    }

    if (_volumeButtonsDictionaryForSpecificHardware_productType == 3585085679)
    {
      v8 = @"volumeButtonHeight";
      LODWORD(v2) = 1115815936;
      v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
      v5 = v4;
      v9 = @"volumeButtonsRect";
      v6 = @"{{0,219},{0,151}}";
      goto LABEL_45;
    }

    if (_volumeButtonsDictionaryForSpecificHardware_productType != 3677894691)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

  if (_volumeButtonsDictionaryForSpecificHardware_productType <= 1060988940)
  {
    if (_volumeButtonsDictionaryForSpecificHardware_productType <= 746003605)
    {
      if (_volumeButtonsDictionaryForSpecificHardware_productType != 133314240)
      {
        if (_volumeButtonsDictionaryForSpecificHardware_productType != 689804742)
        {
          goto LABEL_46;
        }

        v8 = @"volumeButtonHeight";
        LODWORD(v2) = 1115160576;
        v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
        v5 = v4;
        v9 = @"volumeButtonsRect";
        v6 = @"{{0,220},{0,155}}";
        goto LABEL_45;
      }

LABEL_37:
      v8 = @"volumeButtonHeight";
      LODWORD(v2) = 1116471296;
      v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
      v5 = v4;
      v9 = @"volumeButtonsRect";
      v6 = @"{{0,227},{0,147}}";
      goto LABEL_45;
    }

    if (_volumeButtonsDictionaryForSpecificHardware_productType != 746003606)
    {
      if (_volumeButtonsDictionaryForSpecificHardware_productType != 851437781)
      {
        goto LABEL_46;
      }

      v8 = @"volumeButtonHeight";
      LODWORD(v2) = 1115684864;
      v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
      v5 = v4;
      v9 = @"volumeButtonsRect";
      v6 = @"{{0,240},{0,150}}";
      goto LABEL_45;
    }

LABEL_36:
    v8 = @"volumeButtonHeight";
    LODWORD(v2) = 1112276992;
    v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
    v5 = v4;
    v9 = @"volumeButtonsRect";
    v6 = @"{{0,52},{1,114}}";
    goto LABEL_45;
  }

  if (_volumeButtonsDictionaryForSpecificHardware_productType <= 1434404432)
  {
    if (_volumeButtonsDictionaryForSpecificHardware_productType != 1060988941)
    {
      if (_volumeButtonsDictionaryForSpecificHardware_productType != 1260109173)
      {
        goto LABEL_46;
      }

      v8 = @"volumeButtonHeight";
      LODWORD(v2) = 1115947008;
      v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
      v5 = v4;
      v9 = @"volumeButtonsRect";
      v6 = @"{{0,219},{0,152}}";
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  if (_volumeButtonsDictionaryForSpecificHardware_productType == 1434404433)
  {
    v8 = @"volumeButtonHeight";
    LODWORD(v2) = 1115684864;
    v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
    v5 = v4;
    v9 = @"volumeButtonsRect";
    v6 = @"{{0,218},{0,152}}";
    goto LABEL_45;
  }

  if (_volumeButtonsDictionaryForSpecificHardware_productType == 2078329141 || _volumeButtonsDictionaryForSpecificHardware_productType == 2159747553)
  {
    v8 = @"volumeButtonHeight";
    LODWORD(v2) = 1115684864;
    v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
    v5 = v4;
    v9 = @"volumeButtonsRect";
    v6 = @"{{0,79},{0,145}}";
LABEL_45:
    v10[0] = v4;
    v10[1] = v6;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v8 count:2];
  }

LABEL_46:

  return v3;
}

uint64_t __62__TVRUIDeviceInfo__volumeButtonsDictionaryForSpecificHardware__block_invoke()
{
  result = MGGetProductType();
  _volumeButtonsDictionaryForSpecificHardware_productType = result;
  return result;
}

- (CGRect)volumeButtonsRect
{
  x = self->_volumeButtonsRect.origin.x;
  y = self->_volumeButtonsRect.origin.y;
  width = self->_volumeButtonsRect.size.width;
  height = self->_volumeButtonsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end