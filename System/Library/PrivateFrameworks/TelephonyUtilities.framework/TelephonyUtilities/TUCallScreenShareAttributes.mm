@interface TUCallScreenShareAttributes
+ (NSNumber)defaultCornerRadius;
+ (NSValue)defaultSystemRootLayerTransform;
+ (id)defaultAttributes;
+ (id)originalResolutionWithContentScale:(id)scale contentRect:(id)rect displayScale:(id)displayScale;
+ (int64_t)currentDeviceFamily;
+ (int64_t)currentDeviceHomeButtonType;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScreenShareAttributes:(id)attributes;
- (BOOL)isSignificantChangeFromAttributes:(id)attributes;
- (NSString)description;
- (TUCallScreenShareAttributes)initWithAttributes:(id)attributes;
- (TUCallScreenShareAttributes)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setResolutionAttributesWithContentScale:(id)scale contentRect:(id)rect displayScale:(id)displayScale;
@end

@implementation TUCallScreenShareAttributes

+ (id)defaultAttributes
{
  v3 = objc_alloc_init(TUCallScreenShareAttributes);
  [(TUCallScreenShareAttributes *)v3 setStyle:0];
  -[TUCallScreenShareAttributes setDeviceFamily:](v3, "setDeviceFamily:", [self currentDeviceFamily]);
  -[TUCallScreenShareAttributes setDeviceHomeButtonType:](v3, "setDeviceHomeButtonType:", [self currentDeviceHomeButtonType]);
  defaultDisplayScale = [self defaultDisplayScale];
  [(TUCallScreenShareAttributes *)v3 setDisplayScale:defaultDisplayScale];

  defaultScaleFactor = [self defaultScaleFactor];
  [(TUCallScreenShareAttributes *)v3 setScaleFactor:defaultScaleFactor];

  defaultCornerRadius = [self defaultCornerRadius];
  [(TUCallScreenShareAttributes *)v3 setCornerRadius:defaultCornerRadius];

  defaultSystemRootLayerTransform = [self defaultSystemRootLayerTransform];
  [(TUCallScreenShareAttributes *)v3 setSystemRootLayerTransform:defaultSystemRootLayerTransform];

  v8 = [MEMORY[0x1E696B098] valueWithRect:{0.0, 0.0, 0.0, 0.0}];
  [(TUCallScreenShareAttributes *)v3 setOriginalResolution:v8];

  return v3;
}

- (TUCallScreenShareAttributes)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v21.receiver = self;
  v21.super_class = TUCallScreenShareAttributes;
  v5 = [(TUCallScreenShareAttributes *)&v21 init];
  if (v5)
  {
    v5->_deviceFamily = [attributesCopy deviceFamily];
    v5->_deviceHomeButtonType = [attributesCopy deviceHomeButtonType];
    v5->_style = [attributesCopy style];
    displayScale = [attributesCopy displayScale];
    displayScale = v5->_displayScale;
    v5->_displayScale = displayScale;

    scaleFactor = [attributesCopy scaleFactor];
    scaleFactor = v5->_scaleFactor;
    v5->_scaleFactor = scaleFactor;

    cornerRadius = [attributesCopy cornerRadius];
    cornerRadius = v5->_cornerRadius;
    v5->_cornerRadius = cornerRadius;

    originalResolution = [attributesCopy originalResolution];
    originalResolution = v5->_originalResolution;
    v5->_originalResolution = originalResolution;

    displayID = [attributesCopy displayID];
    displayID = v5->_displayID;
    v5->_displayID = displayID;

    windowUUID = [attributesCopy windowUUID];
    windowUUID = v5->_windowUUID;
    v5->_windowUUID = windowUUID;

    v5->_windowed = [attributesCopy isWindowed];
    systemRootLayerTransform = [attributesCopy systemRootLayerTransform];
    systemRootLayerTransform = v5->_systemRootLayerTransform;
    v5->_systemRootLayerTransform = systemRootLayerTransform;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" deviceFamily=%ld", -[TUCallScreenShareAttributes deviceFamily](self, "deviceFamily")];
  [v3 appendFormat:@" deviceHomeButtonType=%ld", -[TUCallScreenShareAttributes deviceHomeButtonType](self, "deviceHomeButtonType")];
  [v3 appendFormat:@" style=%ld", -[TUCallScreenShareAttributes style](self, "style")];
  displayScale = [(TUCallScreenShareAttributes *)self displayScale];
  [v3 appendFormat:@" displayScale=%@", displayScale];

  scaleFactor = [(TUCallScreenShareAttributes *)self scaleFactor];
  [v3 appendFormat:@" scaleFactor=%@", scaleFactor];

  cornerRadius = [(TUCallScreenShareAttributes *)self cornerRadius];
  [v3 appendFormat:@" cornerRadius=%@", cornerRadius];

  displayID = [(TUCallScreenShareAttributes *)self displayID];
  [v3 appendFormat:@" displayID=%@", displayID];

  frameRate = [(TUCallScreenShareAttributes *)self frameRate];
  [v3 appendFormat:@" frameRate=%@", frameRate];

  [v3 appendFormat:@" windowed=%d", -[TUCallScreenShareAttributes isWindowed](self, "isWindowed")];
  windowUUID = [(TUCallScreenShareAttributes *)self windowUUID];
  [v3 appendFormat:@" windowUUID=%@", windowUUID];

  systemRootLayerTransform = [(TUCallScreenShareAttributes *)self systemRootLayerTransform];
  [v3 appendFormat:@" systemRootLayerTransform=%@", systemRootLayerTransform];

  originalResolution = [(TUCallScreenShareAttributes *)self originalResolution];
  [v3 appendFormat:@" originalResolution=%@", originalResolution];

  [v3 appendString:@">"];
  v12 = [v3 copy];

  return v12;
}

+ (int64_t)currentDeviceFamily
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
  deviceType = [cUTWeakLinkClass() deviceType];
  if (deviceType == 4)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2 * (deviceType == 2);
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

+ (NSValue)defaultSystemRootLayerTransform
{
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v2;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  v3 = [MEMORY[0x1E696B098] bs_valueWithCGAffineTransform:v5];

  return v3;
}

+ (NSNumber)defaultCornerRadius
{
  v2 = MobileGestalt_get_current_device();
  v3 = MEMORY[0x1E696AD98];
  MobileGestalt_get_deviceCornerRadius();
  v4 = [v3 numberWithFloat:?];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithAttributes:self];
}

- (BOOL)isSignificantChangeFromAttributes:(id)attributes
{
  attributesCopy = attributes;
  style = [(TUCallScreenShareAttributes *)self style];
  if (style == [attributesCopy style])
  {
    displayScale = [(TUCallScreenShareAttributes *)self displayScale];
    displayScale2 = [attributesCopy displayScale];
    if (TUNumbersAreEqualOrNil(displayScale, displayScale2))
    {
      displayID = [(TUCallScreenShareAttributes *)self displayID];
      displayID2 = [attributesCopy displayID];
      if (TUNumbersAreEqualOrNil(displayID, displayID2))
      {
        systemRootLayerTransform = [(TUCallScreenShareAttributes *)self systemRootLayerTransform];
        systemRootLayerTransform2 = [attributesCopy systemRootLayerTransform];
        v12 = TUObjectsAreEqualOrNil(systemRootLayerTransform, systemRootLayerTransform2) ^ 1;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallScreenShareAttributes *)self isEqualToScreenShareAttributes:equalCopy];

  return v5;
}

- (BOOL)isEqualToScreenShareAttributes:(id)attributes
{
  attributesCopy = attributes;
  deviceFamily = [(TUCallScreenShareAttributes *)self deviceFamily];
  if (deviceFamily == [attributesCopy deviceFamily] && (v6 = -[TUCallScreenShareAttributes deviceHomeButtonType](self, "deviceHomeButtonType"), v6 == objc_msgSend(attributesCopy, "deviceHomeButtonType")) && (v7 = -[TUCallScreenShareAttributes style](self, "style"), v7 == objc_msgSend(attributesCopy, "style")))
  {
    displayScale = [(TUCallScreenShareAttributes *)self displayScale];
    displayScale2 = [attributesCopy displayScale];
    if (TUObjectsAreEqualOrNil(displayScale, displayScale2))
    {
      scaleFactor = [(TUCallScreenShareAttributes *)self scaleFactor];
      scaleFactor2 = [attributesCopy scaleFactor];
      if (TUObjectsAreEqualOrNil(scaleFactor, scaleFactor2))
      {
        cornerRadius = [(TUCallScreenShareAttributes *)self cornerRadius];
        cornerRadius2 = [attributesCopy cornerRadius];
        if (TUObjectsAreEqualOrNil(cornerRadius, cornerRadius2))
        {
          originalResolution = [(TUCallScreenShareAttributes *)self originalResolution];
          originalResolution2 = [attributesCopy originalResolution];
          if (TUObjectsAreEqualOrNil(originalResolution, originalResolution2))
          {
            v30 = originalResolution;
            displayID = [(TUCallScreenShareAttributes *)self displayID];
            [attributesCopy displayID];
            v29 = v31 = displayID;
            if (TUObjectsAreEqualOrNil(displayID, v29))
            {
              frameRate = [(TUCallScreenShareAttributes *)self frameRate];
              frameRate2 = [attributesCopy frameRate];
              v28 = frameRate;
              if (TUObjectsAreEqualOrNil(frameRate, frameRate2))
              {
                windowUUID = [(TUCallScreenShareAttributes *)self windowUUID];
                windowUUID2 = [attributesCopy windowUUID];
                v26 = windowUUID;
                if (TUObjectsAreEqualOrNil(windowUUID, windowUUID2))
                {
                  systemRootLayerTransform = [(TUCallScreenShareAttributes *)self systemRootLayerTransform];
                  systemRootLayerTransform2 = [attributesCopy systemRootLayerTransform];
                  v24 = systemRootLayerTransform;
                  if (TUObjectsAreEqualOrNil(systemRootLayerTransform, systemRootLayerTransform2))
                  {
                    isWindowed = [(TUCallScreenShareAttributes *)self isWindowed];
                    v21 = isWindowed ^ [attributesCopy isWindowed] ^ 1;
                  }

                  else
                  {
                    LOBYTE(v21) = 0;
                  }

                  originalResolution = v30;
                }

                else
                {
                  LOBYTE(v21) = 0;
                  originalResolution = v30;
                }
              }

              else
              {
                LOBYTE(v21) = 0;
                originalResolution = v30;
              }
            }

            else
            {
              LOBYTE(v21) = 0;
              originalResolution = v30;
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

- (void)setResolutionAttributesWithContentScale:(id)scale contentRect:(id)rect displayScale:(id)displayScale
{
  scaleCopy = scale;
  displayScaleCopy = displayScale;
  scaleFactor = self->_scaleFactor;
  self->_scaleFactor = scaleCopy;
  v16 = scaleCopy;
  rectCopy = rect;

  displayScale = self->_displayScale;
  self->_displayScale = displayScaleCopy;
  v13 = displayScaleCopy;

  v14 = [TUCallScreenShareAttributes originalResolutionWithContentScale:v16 contentRect:rectCopy displayScale:v13];

  originalResolution = self->_originalResolution;
  self->_originalResolution = v14;
}

+ (id)originalResolutionWithContentScale:(id)scale contentRect:(id)rect displayScale:(id)displayScale
{
  v6 = 0;
  if (scale)
  {
    if (rect && displayScale)
    {
      displayScaleCopy = displayScale;
      scaleCopy = scale;
      [rect rectValue];
      v12 = v11;
      v14 = v13;
      [scaleCopy doubleValue];
      v16 = v12 / v15;
      [displayScaleCopy doubleValue];
      v18 = v17 * v16;
      [scaleCopy doubleValue];
      v20 = v19;

      v21 = v14 / v20;
      [displayScaleCopy doubleValue];
      v23 = v22;

      v6 = [MEMORY[0x1E696B098] valueWithRect:{0.0, 0.0, v18, v21 * v23}];
    }

    v5 = vars8;
  }

  return v6;
}

- (unint64_t)hash
{
  deviceFamily = [(TUCallScreenShareAttributes *)self deviceFamily];
  v4 = [(TUCallScreenShareAttributes *)self deviceHomeButtonType]^ deviceFamily;
  v5 = v4 ^ [(TUCallScreenShareAttributes *)self style];
  displayScale = [(TUCallScreenShareAttributes *)self displayScale];
  v7 = [displayScale hash];
  scaleFactor = [(TUCallScreenShareAttributes *)self scaleFactor];
  v9 = v5 ^ v7 ^ [scaleFactor hash];
  cornerRadius = [(TUCallScreenShareAttributes *)self cornerRadius];
  v11 = [cornerRadius hash];
  originalResolution = [(TUCallScreenShareAttributes *)self originalResolution];
  v13 = v11 ^ [originalResolution hash];
  displayID = [(TUCallScreenShareAttributes *)self displayID];
  v25 = v9 ^ v13 ^ [displayID hash];
  frameRate = [(TUCallScreenShareAttributes *)self frameRate];
  v16 = [frameRate hash];
  systemRootLayerTransform = [(TUCallScreenShareAttributes *)self systemRootLayerTransform];
  v18 = v16 ^ [systemRootLayerTransform hash];
  windowUUID = [(TUCallScreenShareAttributes *)self windowUUID];
  v20 = v18 ^ [windowUUID hash];
  isWindowed = [(TUCallScreenShareAttributes *)self isWindowed];
  v22 = 1237;
  if (isWindowed)
  {
    v22 = 1231;
  }

  v23 = v20 ^ v22;

  return v25 ^ v23;
}

- (TUCallScreenShareAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_deviceFamily);
  self->_deviceFamily = [coderCopy decodeIntegerForKey:v5];

  v6 = NSStringFromSelector(sel_deviceHomeButtonType);
  self->_deviceHomeButtonType = [coderCopy decodeIntegerForKey:v6];

  v7 = NSStringFromSelector(sel_style);
  self->_style = [coderCopy decodeIntegerForKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_displayScale);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
  displayScale = self->_displayScale;
  self->_displayScale = v10;

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_scaleFactor);
  v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
  scaleFactor = self->_scaleFactor;
  self->_scaleFactor = v14;

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_cornerRadius);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
  cornerRadius = self->_cornerRadius;
  self->_cornerRadius = v18;

  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_originalResolution);
  v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
  originalResolution = self->_originalResolution;
  self->_originalResolution = v22;

  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_frameRate);
  v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
  frameRate = self->_frameRate;
  self->_frameRate = v26;

  v28 = objc_opt_class();
  v29 = NSStringFromSelector(sel_displayID);
  v30 = [coderCopy decodeObjectOfClass:v28 forKey:v29];
  displayID = self->_displayID;
  self->_displayID = v30;

  v32 = NSStringFromSelector(sel_isWindowed);
  self->_windowed = [coderCopy decodeBoolForKey:v32];

  v33 = objc_opt_class();
  v34 = NSStringFromSelector(sel_windowUUID);
  v35 = [coderCopy decodeObjectOfClass:v33 forKey:v34];
  windowUUID = self->_windowUUID;
  self->_windowUUID = v35;

  v37 = objc_opt_class();
  v38 = NSStringFromSelector(sel_systemRootLayerTransform);
  v39 = [coderCopy decodeObjectOfClass:v37 forKey:v38];

  systemRootLayerTransform = self->_systemRootLayerTransform;
  self->_systemRootLayerTransform = v39;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceFamily = [(TUCallScreenShareAttributes *)self deviceFamily];
  v6 = NSStringFromSelector(sel_deviceFamily);
  [coderCopy encodeInteger:deviceFamily forKey:v6];

  deviceHomeButtonType = [(TUCallScreenShareAttributes *)self deviceHomeButtonType];
  v8 = NSStringFromSelector(sel_deviceHomeButtonType);
  [coderCopy encodeInteger:deviceHomeButtonType forKey:v8];

  style = [(TUCallScreenShareAttributes *)self style];
  v10 = NSStringFromSelector(sel_style);
  [coderCopy encodeInteger:style forKey:v10];

  displayScale = [(TUCallScreenShareAttributes *)self displayScale];
  v12 = NSStringFromSelector(sel_displayScale);
  [coderCopy encodeObject:displayScale forKey:v12];

  scaleFactor = [(TUCallScreenShareAttributes *)self scaleFactor];
  v14 = NSStringFromSelector(sel_scaleFactor);
  [coderCopy encodeObject:scaleFactor forKey:v14];

  cornerRadius = [(TUCallScreenShareAttributes *)self cornerRadius];
  v16 = NSStringFromSelector(sel_cornerRadius);
  [coderCopy encodeObject:cornerRadius forKey:v16];

  frameRate = [(TUCallScreenShareAttributes *)self frameRate];
  v18 = NSStringFromSelector(sel_frameRate);
  [coderCopy encodeObject:frameRate forKey:v18];

  displayID = [(TUCallScreenShareAttributes *)self displayID];
  v20 = NSStringFromSelector(sel_displayID);
  [coderCopy encodeObject:displayID forKey:v20];

  isWindowed = [(TUCallScreenShareAttributes *)self isWindowed];
  v22 = NSStringFromSelector(sel_isWindowed);
  [coderCopy encodeBool:isWindowed forKey:v22];

  windowUUID = [(TUCallScreenShareAttributes *)self windowUUID];
  v24 = NSStringFromSelector(sel_windowUUID);
  [coderCopy encodeObject:windowUUID forKey:v24];

  originalResolution = [(TUCallScreenShareAttributes *)self originalResolution];
  v26 = NSStringFromSelector(sel_originalResolution);
  [coderCopy encodeObject:originalResolution forKey:v26];

  systemRootLayerTransform = [(TUCallScreenShareAttributes *)self systemRootLayerTransform];
  v27 = NSStringFromSelector(sel_systemRootLayerTransform);
  [coderCopy encodeObject:systemRootLayerTransform forKey:v27];
}

@end