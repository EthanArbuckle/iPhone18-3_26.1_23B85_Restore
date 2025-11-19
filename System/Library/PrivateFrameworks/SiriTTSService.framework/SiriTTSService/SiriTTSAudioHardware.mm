@interface SiriTTSAudioHardware
+ (id)defaultOutput;
- (void)fetchHardwareInfo;
- (void)setDuckOthers:(BOOL)a3;
@end

@implementation SiriTTSAudioHardware

+ (id)defaultOutput
{
  v2 = objc_alloc_init(SiriTTSAudioHardware);
  [(SiriTTSAudioHardware *)v2 fetchHardwareInfo];

  return v2;
}

- (void)fetchHardwareInfo
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v4 = [v3 attributeForKey:*MEMORY[0x1E69AEB00]];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AEB90]];
  routeType = self->_routeType;
  self->_routeType = v5;

  if ([(NSString *)self->_routeType isEqualToString:@"Speaker"])
  {
    self->_isAppleProduct = 1;
  }

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AEC28]];
  self->_isBluetooth = [v7 BOOLValue];

  if (!self->_isBluetooth)
  {
    goto LABEL_10;
  }

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AEC08]];
  v9 = [v8 componentsSeparatedByString:{@", "}];
  if ([v9 count] == 2)
  {
    v10 = [v9 firstObject];
    v11 = [v10 length];
    if (v11 - 1 >= 0)
    {
      v12 = v11;
      v13 = 1;
      do
      {
        v14 = [v10 characterAtIndex:--v12];
        if ([v10 characterAtIndex:v12] - 48 > 9)
        {
          break;
        }

        self->_vendorId += (v14 - 48) * v13;
        v13 *= 10;
      }

      while (v12 > 0);
    }

    v15 = [v9 lastObject];
    self->_productId = strtol([v15 UTF8String], 0, 10);

    self->_isAppleProduct = self->_vendorId == 76;
LABEL_10:
    v18 = 0.0;
    if ([v3 getActiveCategoryVolume:&v18 andName:0])
    {
      self->_volume = v18;
    }

    goto LABEL_15;
  }

  v16 = TTSGetServiceLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v18 = 5.7779e-34;
    v19 = v8;
    _os_log_error_impl(&dword_1B1A8A000, v16, OS_LOG_TYPE_ERROR, "Unexpected model ID pattern: %@", &v18, 0xCu);
  }

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)setDuckOthers:(BOOL)a3
{
  v3 = TTSGetServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_1B1A8A000, v3, OS_LOG_TYPE_FAULT, "Volume ducking is unsupported on non-macOS devices.", v4, 2u);
  }
}

@end