@interface TUScreenShareAttributes
+ (NSNumber)defaultCornerRadius;
+ (NSValue)defaultSystemRootLayerTransform;
+ (id)defaultAttributes;
+ (int64_t)currentDeviceFamily;
+ (int64_t)currentDeviceHomeButtonType;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScreenShareAttributes:(id)a3;
- (BOOL)isSignificantChangeFromAttributes:(id)a3;
- (NSString)description;
- (TUScreenShareAttributes)initWithAttributes:(id)a3;
- (TUScreenShareAttributes)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUScreenShareAttributes

+ (id)defaultAttributes
{
  v3 = objc_alloc_init(TUScreenShareAttributes);
  [(TUScreenShareAttributes *)v3 setStyle:0];
  -[TUScreenShareAttributes setDeviceFamily:](v3, "setDeviceFamily:", [a1 currentDeviceFamily]);
  -[TUScreenShareAttributes setDeviceHomeButtonType:](v3, "setDeviceHomeButtonType:", [a1 currentDeviceHomeButtonType]);
  v4 = [a1 defaultDisplayScale];
  [(TUScreenShareAttributes *)v3 setDisplayScale:v4];

  v5 = [a1 defaultScaleFactor];
  [(TUScreenShareAttributes *)v3 setScaleFactor:v5];

  v6 = [a1 defaultCornerRadius];
  [(TUScreenShareAttributes *)v3 setCornerRadius:v6];

  v7 = [a1 defaultSystemRootLayerTransform];
  [(TUScreenShareAttributes *)v3 setSystemRootLayerTransform:v7];

  v8 = [MEMORY[0x1E696B098] valueWithRect:{0.0, 0.0, 0.0, 0.0}];
  [(TUScreenShareAttributes *)v3 setOriginalResolution:v8];

  return v3;
}

- (TUScreenShareAttributes)initWithAttributes:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TUScreenShareAttributes;
  v5 = [(TUScreenShareAttributes *)&v21 init];
  if (v5)
  {
    v5->_deviceFamily = [v4 deviceFamily];
    v5->_deviceHomeButtonType = [v4 deviceHomeButtonType];
    v5->_style = [v4 style];
    v6 = [v4 displayScale];
    displayScale = v5->_displayScale;
    v5->_displayScale = v6;

    v8 = [v4 scaleFactor];
    scaleFactor = v5->_scaleFactor;
    v5->_scaleFactor = v8;

    v10 = [v4 cornerRadius];
    cornerRadius = v5->_cornerRadius;
    v5->_cornerRadius = v10;

    v12 = [v4 originalResolution];
    originalResolution = v5->_originalResolution;
    v5->_originalResolution = v12;

    v14 = [v4 displayID];
    displayID = v5->_displayID;
    v5->_displayID = v14;

    v16 = [v4 windowUUID];
    windowUUID = v5->_windowUUID;
    v5->_windowUUID = v16;

    v5->_windowed = [v4 isWindowed];
    v18 = [v4 systemRootLayerTransform];
    systemRootLayerTransform = v5->_systemRootLayerTransform;
    v5->_systemRootLayerTransform = v18;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" deviceFamily=%ld", -[TUScreenShareAttributes deviceFamily](self, "deviceFamily")];
  [v3 appendFormat:@" deviceHomeButtonType=%ld", -[TUScreenShareAttributes deviceHomeButtonType](self, "deviceHomeButtonType")];
  [v3 appendFormat:@" style=%ld", -[TUScreenShareAttributes style](self, "style")];
  v4 = [(TUScreenShareAttributes *)self displayScale];
  [v3 appendFormat:@" displayScale=%@", v4];

  v5 = [(TUScreenShareAttributes *)self scaleFactor];
  [v3 appendFormat:@" scaleFactor=%@", v5];

  v6 = [(TUScreenShareAttributes *)self cornerRadius];
  [v3 appendFormat:@" cornerRadius=%@", v6];

  v7 = [(TUScreenShareAttributes *)self displayID];
  [v3 appendFormat:@" displayID=%@", v7];

  v8 = [(TUScreenShareAttributes *)self frameRate];
  [v3 appendFormat:@" frameRate=%@", v8];

  [v3 appendFormat:@" windowed=%d", -[TUScreenShareAttributes isWindowed](self, "isWindowed")];
  v9 = [(TUScreenShareAttributes *)self windowUUID];
  [v3 appendFormat:@" windowUUID=%@", v9];

  v10 = [(TUScreenShareAttributes *)self systemRootLayerTransform];
  [v3 appendFormat:@" systemRootLayerTransform=%@", v10];

  v11 = [(TUScreenShareAttributes *)self originalResolution];
  [v3 appendFormat:@" originalResolution=%@", v11];

  [v3 appendString:@">"];
  v12 = [v3 copy];

  return v12;
}

+ (int64_t)currentDeviceFamily
{
  v2 = [CUTWeakLinkClass() sharedInstance];
  v3 = [v2 deviceType];
  if (v3 == 4)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2 * (v3 == 2);
  }

  return v4;
}

+ (int64_t)currentDeviceHomeButtonType
{
  v2 = MobileGestalt_get_current_device();
  homeButtonType = MobileGestalt_get_homeButtonType();
  if (homeButtonType < 3)
  {
    v4 = homeButtonType + 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (NSNumber)defaultCornerRadius
{
  v2 = MobileGestalt_get_current_device();
  v3 = MEMORY[0x1E696AD98];
  MobileGestalt_get_deviceCornerRadius();
  v4 = [v3 numberWithFloat:?];

  return v4;
}

+ (NSValue)defaultSystemRootLayerTransform
{
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v2;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  v3 = [MEMORY[0x1E696B098] bs_valueWithCGAffineTransform:v5];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithAttributes:self];
}

- (BOOL)isSignificantChangeFromAttributes:(id)a3
{
  v4 = a3;
  v5 = [(TUScreenShareAttributes *)self style];
  if (v5 == [v4 style])
  {
    v6 = [(TUScreenShareAttributes *)self displayScale];
    v7 = [v4 displayScale];
    if (TUNumbersAreEqualOrNil(v6, v7))
    {
      v8 = [(TUScreenShareAttributes *)self displayID];
      v9 = [v4 displayID];
      if (TUNumbersAreEqualOrNil(v8, v9))
      {
        v10 = [(TUScreenShareAttributes *)self systemRootLayerTransform];
        v11 = [v4 systemRootLayerTransform];
        v12 = TUObjectsAreEqualOrNil(v10, v11) ^ 1;
      }

      else
      {
        LOBYTE(v12) = 1;
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUScreenShareAttributes *)self isEqualToScreenShareAttributes:v4];

  return v5;
}

- (BOOL)isEqualToScreenShareAttributes:(id)a3
{
  v4 = a3;
  v5 = [(TUScreenShareAttributes *)self deviceFamily];
  if (v5 == [v4 deviceFamily] && (v6 = -[TUScreenShareAttributes deviceHomeButtonType](self, "deviceHomeButtonType"), v6 == objc_msgSend(v4, "deviceHomeButtonType")) && (v7 = -[TUScreenShareAttributes style](self, "style"), v7 == objc_msgSend(v4, "style")))
  {
    v8 = [(TUScreenShareAttributes *)self displayScale];
    v9 = [v4 displayScale];
    if (TUObjectsAreEqualOrNil(v8, v9))
    {
      v10 = [(TUScreenShareAttributes *)self scaleFactor];
      v11 = [v4 scaleFactor];
      if (TUObjectsAreEqualOrNil(v10, v11))
      {
        v12 = [(TUScreenShareAttributes *)self cornerRadius];
        v13 = [v4 cornerRadius];
        if (TUObjectsAreEqualOrNil(v12, v13))
        {
          v14 = [(TUScreenShareAttributes *)self originalResolution];
          v15 = [v4 originalResolution];
          if (TUObjectsAreEqualOrNil(v14, v15))
          {
            v30 = v14;
            v16 = [(TUScreenShareAttributes *)self displayID];
            [v4 displayID];
            v29 = v31 = v16;
            if (TUObjectsAreEqualOrNil(v16, v29))
            {
              v17 = [(TUScreenShareAttributes *)self frameRate];
              v27 = [v4 frameRate];
              v28 = v17;
              if (TUObjectsAreEqualOrNil(v17, v27))
              {
                v18 = [(TUScreenShareAttributes *)self windowUUID];
                v25 = [v4 windowUUID];
                v26 = v18;
                if (TUObjectsAreEqualOrNil(v18, v25))
                {
                  v19 = [(TUScreenShareAttributes *)self systemRootLayerTransform];
                  v23 = [v4 systemRootLayerTransform];
                  v24 = v19;
                  if (TUObjectsAreEqualOrNil(v19, v23))
                  {
                    v20 = [(TUScreenShareAttributes *)self isWindowed];
                    v21 = v20 ^ [v4 isWindowed] ^ 1;
                  }

                  else
                  {
                    LOBYTE(v21) = 0;
                  }

                  v14 = v30;
                }

                else
                {
                  LOBYTE(v21) = 0;
                  v14 = v30;
                }
              }

              else
              {
                LOBYTE(v21) = 0;
                v14 = v30;
              }
            }

            else
            {
              LOBYTE(v21) = 0;
              v14 = v30;
            }
          }

          else
          {
            LOBYTE(v21) = 0;
          }
        }

        else
        {
          LOBYTE(v21) = 0;
        }
      }

      else
      {
        LOBYTE(v21) = 0;
      }
    }

    else
    {
      LOBYTE(v21) = 0;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [(TUScreenShareAttributes *)self deviceFamily];
  v4 = [(TUScreenShareAttributes *)self deviceHomeButtonType]^ v3;
  v5 = v4 ^ [(TUScreenShareAttributes *)self style];
  v6 = [(TUScreenShareAttributes *)self displayScale];
  v7 = [v6 hash];
  v8 = [(TUScreenShareAttributes *)self scaleFactor];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(TUScreenShareAttributes *)self cornerRadius];
  v11 = [v10 hash];
  v12 = [(TUScreenShareAttributes *)self originalResolution];
  v13 = v11 ^ [v12 hash];
  v14 = [(TUScreenShareAttributes *)self displayID];
  v25 = v9 ^ v13 ^ [v14 hash];
  v15 = [(TUScreenShareAttributes *)self frameRate];
  v16 = [v15 hash];
  v17 = [(TUScreenShareAttributes *)self windowUUID];
  v18 = v16 ^ [v17 hash];
  v19 = [(TUScreenShareAttributes *)self systemRootLayerTransform];
  v20 = v18 ^ [v19 hash];
  v21 = [(TUScreenShareAttributes *)self isWindowed];
  v22 = 1237;
  if (v21)
  {
    v22 = 1231;
  }

  v23 = v20 ^ v22;

  return v25 ^ v23;
}

- (TUScreenShareAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_deviceFamily);
  self->_deviceFamily = [v4 decodeIntegerForKey:v5];

  v6 = NSStringFromSelector(sel_deviceHomeButtonType);
  self->_deviceHomeButtonType = [v4 decodeIntegerForKey:v6];

  v7 = NSStringFromSelector(sel_style);
  self->_style = [v4 decodeIntegerForKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_displayScale);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
  displayScale = self->_displayScale;
  self->_displayScale = v10;

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_scaleFactor);
  v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
  scaleFactor = self->_scaleFactor;
  self->_scaleFactor = v14;

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_cornerRadius);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
  cornerRadius = self->_cornerRadius;
  self->_cornerRadius = v18;

  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_originalResolution);
  v22 = [v4 decodeObjectOfClass:v20 forKey:v21];
  originalResolution = self->_originalResolution;
  self->_originalResolution = v22;

  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_frameRate);
  v26 = [v4 decodeObjectOfClass:v24 forKey:v25];
  frameRate = self->_frameRate;
  self->_frameRate = v26;

  v28 = objc_opt_class();
  v29 = NSStringFromSelector(sel_displayID);
  v30 = [v4 decodeObjectOfClass:v28 forKey:v29];
  displayID = self->_displayID;
  self->_displayID = v30;

  v32 = NSStringFromSelector(sel_isWindowed);
  self->_windowed = [v4 decodeBoolForKey:v32];

  v33 = objc_opt_class();
  v34 = NSStringFromSelector(sel_windowUUID);
  v35 = [v4 decodeObjectOfClass:v33 forKey:v34];
  windowUUID = self->_windowUUID;
  self->_windowUUID = v35;

  v37 = objc_opt_class();
  v38 = NSStringFromSelector(sel_systemRootLayerTransform);
  v39 = [v4 decodeObjectOfClass:v37 forKey:v38];

  systemRootLayerTransform = self->_systemRootLayerTransform;
  self->_systemRootLayerTransform = v39;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUScreenShareAttributes *)self deviceFamily];
  v6 = NSStringFromSelector(sel_deviceFamily);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(TUScreenShareAttributes *)self deviceHomeButtonType];
  v8 = NSStringFromSelector(sel_deviceHomeButtonType);
  [v4 encodeInteger:v7 forKey:v8];

  v9 = [(TUScreenShareAttributes *)self style];
  v10 = NSStringFromSelector(sel_style);
  [v4 encodeInteger:v9 forKey:v10];

  v11 = [(TUScreenShareAttributes *)self displayScale];
  v12 = NSStringFromSelector(sel_displayScale);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUScreenShareAttributes *)self scaleFactor];
  v14 = NSStringFromSelector(sel_scaleFactor);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(TUScreenShareAttributes *)self cornerRadius];
  v16 = NSStringFromSelector(sel_cornerRadius);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(TUScreenShareAttributes *)self frameRate];
  v18 = NSStringFromSelector(sel_frameRate);
  [v4 encodeObject:v17 forKey:v18];

  v19 = [(TUScreenShareAttributes *)self displayID];
  v20 = NSStringFromSelector(sel_displayID);
  [v4 encodeObject:v19 forKey:v20];

  v21 = [(TUScreenShareAttributes *)self isWindowed];
  v22 = NSStringFromSelector(sel_isWindowed);
  [v4 encodeBool:v21 forKey:v22];

  v23 = [(TUScreenShareAttributes *)self windowUUID];
  v24 = NSStringFromSelector(sel_windowUUID);
  [v4 encodeObject:v23 forKey:v24];

  v25 = [(TUScreenShareAttributes *)self originalResolution];
  v26 = NSStringFromSelector(sel_originalResolution);
  [v4 encodeObject:v25 forKey:v26];

  v28 = [(TUScreenShareAttributes *)self systemRootLayerTransform];
  v27 = NSStringFromSelector(sel_systemRootLayerTransform);
  [v4 encodeObject:v28 forKey:v27];
}

@end