@interface DASessionSettings
+ (id)acceptableValueClasses;
+ (id)sessionSettingsWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSessionSettings:(id)a3;
- (DASessionSettings)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionary;
@end

@implementation DASessionSettings

+ (id)sessionSettingsWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (DASessionSettings)initWithDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = DASessionSettings;
  v5 = [(DASessionSettings *)&v23 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_36;
  }

  p_deviceIdentifier = &v5->_deviceIdentifier;
  deviceIdentifier = v5->_deviceIdentifier;
  v5->_displayDeviceIdentifier = 0;
  v5->_deviceIdentifier = &stru_100014D88;

  *&v6->_fullscreenPromptsEnabled = 1;
  v6->_allowCellularSizeThreshold = 0x100000;
  v6->_requestedDisplayBrightness = 0.0;
  if (!v4)
  {
    goto LABEL_36;
  }

  v9 = [v4 objectForKeyedSubscript:@"displayDeviceIdentifier"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_displayDeviceIdentifier = [v9 BOOLValue];
    }
  }

  v10 = [v4 objectForKeyedSubscript:@"deviceIdentifier"];
  if (!v10)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v6->_deviceIdentifier, v10);
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 stringValue];
    v12 = *p_deviceIdentifier;
    *p_deviceIdentifier = v11;
  }

  else
  {
LABEL_11:
    v6->_displayDeviceIdentifier = 0;
  }

LABEL_12:
  v13 = [v4 objectForKeyedSubscript:@"fullscreenPromptsEnabled"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_fullscreenPromptsEnabled = [v13 BOOLValue];
    }
  }

  v14 = [v4 objectForKeyedSubscript:@"allowCellularSizeThreshold"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 integerValue];
      if (v15 < 0)
      {
        v16 = -1;
      }

      else
      {
        v16 = v15;
      }

      v6->_allowCellularSizeThreshold = v16;
    }
  }

  v17 = [v4 objectForKeyedSubscript:@"overrideDisplayBrightness"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_overrideDisplayBrightness = [v17 BOOLValue];
    }
  }

  v18 = [v4 objectForKeyedSubscript:@"requestedDisplayBrightness"];
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      if (v19 < 0.0)
      {
        v19 = 0.0;
      }

      v6->_requestedDisplayBrightness = v19;
    }
  }

  v20 = [v4 objectForKeyedSubscript:@"overrideTrueToneSettings"];
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_overrideTrueToneSettings = [v20 BOOLValue];
    }
  }

  v21 = [v4 objectForKeyedSubscript:@"requestedTrueToneSetting"];
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_requestedTrueToneSetting = [v21 BOOLValue];
    }
  }

LABEL_36:
  return v6;
}

- (id)dictionary
{
  v13[0] = @"displayDeviceIdentifier";
  v3 = [NSNumber numberWithBool:[(DASessionSettings *)self displayDeviceIdentifier]];
  v14[0] = v3;
  v13[1] = @"deviceIdentifier";
  v4 = [(DASessionSettings *)self deviceIdentifier];
  v14[1] = v4;
  v13[2] = @"fullscreenPromptsEnabled";
  v5 = [NSNumber numberWithBool:[(DASessionSettings *)self fullscreenPromptsEnabled]];
  v14[2] = v5;
  v13[3] = @"allowCellularSizeThreshold";
  v6 = [NSNumber numberWithUnsignedInteger:[(DASessionSettings *)self allowCellularSizeThreshold]];
  v14[3] = v6;
  v13[4] = @"overrideDisplayBrightness";
  v7 = [NSNumber numberWithBool:[(DASessionSettings *)self overrideDisplayBrightness]];
  v14[4] = v7;
  v13[5] = @"requestedDisplayBrightness";
  [(DASessionSettings *)self requestedDisplayBrightness];
  v8 = [NSNumber numberWithFloat:?];
  v14[5] = v8;
  v13[6] = @"overrideTrueToneSettings";
  v9 = [NSNumber numberWithBool:[(DASessionSettings *)self overrideTrueToneSettings]];
  v14[6] = v9;
  v13[7] = @"requestedTrueToneSetting";
  v10 = [NSNumber numberWithBool:[(DASessionSettings *)self requestedTrueToneSetting]];
  v14[7] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

+ (id)acceptableValueClasses
{
  if (qword_10001C338 != -1)
  {
    sub_10000B7E4();
  }

  v3 = qword_10001C330;

  return v3;
}

- (BOOL)isEqualToSessionSettings:(id)a3
{
  v4 = a3;
  v5 = [(DASessionSettings *)self deviceIdentifier];
  v6 = [v4 deviceIdentifier];
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [(DASessionSettings *)self displayDeviceIdentifier];
  if (v8 != [v4 displayDeviceIdentifier])
  {
    goto LABEL_8;
  }

  v9 = [(DASessionSettings *)self fullscreenPromptsEnabled];
  if (v9 == [v4 fullscreenPromptsEnabled] && (v10 = -[DASessionSettings allowCellularSizeThreshold](self, "allowCellularSizeThreshold"), v10 == objc_msgSend(v4, "allowCellularSizeThreshold")) && (v11 = -[DASessionSettings overrideDisplayBrightness](self, "overrideDisplayBrightness"), v11 == objc_msgSend(v4, "overrideDisplayBrightness")) && (-[DASessionSettings requestedDisplayBrightness](self, "requestedDisplayBrightness"), v13 = v12, objc_msgSend(v4, "requestedDisplayBrightness"), v13 == v14) && (v15 = -[DASessionSettings overrideTrueToneSettings](self, "overrideTrueToneSettings"), v15 == objc_msgSend(v4, "overrideTrueToneSettings")))
  {
    v18 = [(DASessionSettings *)self requestedTrueToneSetting];
    v16 = v18 ^ [v4 requestedTrueToneSetting] ^ 1;
  }

  else
  {
LABEL_8:
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self == v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DASessionSettings *)self isEqualToSessionSettings:v4];
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DASessionSettings *)self displayDeviceIdentifier];
  v6 = [(DASessionSettings *)self deviceIdentifier];
  v7 = [(DASessionSettings *)self fullscreenPromptsEnabled];
  v8 = [(DASessionSettings *)self allowCellularSizeThreshold];
  v9 = [(DASessionSettings *)self overrideDisplayBrightness];
  [(DASessionSettings *)self requestedDisplayBrightness];
  v11 = [NSString stringWithFormat:@"<%@: %p displayDeviceIdentifier: %d; deviceIdentifier: %@; fullscreenPromptsEnabled: %d; allowCellularSizeThreshold: %lu; overrideDisplayBrightness: %d; requestedDisplayBrightness: %f; overrideTrueToneSettings: %d; requestedTrueToneSetting: %d;>", v4, self, v5, v6, v7, v8, v9, v10, [(DASessionSettings *)self overrideTrueToneSettings], [(DASessionSettings *)self requestedTrueToneSetting]];;

  return v11;
}

@end