@interface PFCStoredLayout
- (CGRect)originalCrop;
- (CGRect)timeRect;
- (PFCStoredLayout)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFCStoredLayout

- (void)encodeWithCoder:(id)a3
{
  x = self->_originalCrop.origin.x;
  y = self->_originalCrop.origin.y;
  width = self->_originalCrop.size.width;
  height = self->_originalCrop.size.height;
  v12 = a3;
  [v12 encodeCGRect:@"originalCrop" forKey:{x, y, width, height}];
  [v12 encodeObject:self->_baseImageName forKey:@"baseImageName"];
  [v12 encodeObject:self->_maskImageName forKey:@"maskImageName"];
  [v12 encodeInteger:self->_timePosition forKey:@"timePosition"];
  [v12 encodeCGRect:@"timeRect" forKey:{self->_timeRect.origin.x, self->_timeRect.origin.y, self->_timeRect.size.width, self->_timeRect.size.height}];
  backgroundZorder = self->_backgroundZorder;
  *&backgroundZorder = backgroundZorder;
  [v12 encodeFloat:@"backgroundZorder" forKey:backgroundZorder];
  foregroundZorder = self->_foregroundZorder;
  *&foregroundZorder = foregroundZorder;
  [v12 encodeFloat:@"foregroundZorder" forKey:foregroundZorder];
  timeElementZorder = self->_timeElementZorder;
  *&timeElementZorder = timeElementZorder;
  [v12 encodeFloat:@"timeElementZorder" forKey:timeElementZorder];
  imageAOTBrightness = self->_imageAOTBrightness;
  *&imageAOTBrightness = imageAOTBrightness;
  [v12 encodeFloat:@"imageAOTBrightness" forKey:imageAOTBrightness];
  [v12 encodeBool:self->_userEdited forKey:@"userEdited"];
}

- (PFCStoredLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PFCStoredLayout;
  v5 = [(PFCStoredLayout *)&v24 init];
  if (v5)
  {
    [v4 decodeCGRectForKey:@"originalCrop"];
    v5->_originalCrop.origin.x = v6;
    v5->_originalCrop.origin.y = v7;
    v5->_originalCrop.size.width = v8;
    v5->_originalCrop.size.height = v9;
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseImageName"];
    baseImageName = v5->_baseImageName;
    v5->_baseImageName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maskImageName"];
    maskImageName = v5->_maskImageName;
    v5->_maskImageName = v12;

    v5->_timePosition = [v4 decodeIntegerForKey:@"timePosition"];
    [v4 decodeCGRectForKey:@"timeRect"];
    v5->_timeRect.origin.x = v14;
    v5->_timeRect.origin.y = v15;
    v5->_timeRect.size.width = v16;
    v5->_timeRect.size.height = v17;
    [v4 decodeFloatForKey:@"backgroundZorder"];
    v5->_backgroundZorder = v18;
    [v4 decodeFloatForKey:@"foregroundZorder"];
    v5->_foregroundZorder = v19;
    [v4 decodeFloatForKey:@"timeElementZorder"];
    v5->_timeElementZorder = v20;
    [v4 decodeFloatForKey:@"imageAOTBrightness"];
    v5->_imageAOTBrightness = v21;
    v5->_userEdited = [v4 decodeBoolForKey:@"userEdited"];
    colorInfo = v5->_colorInfo;
    v5->_colorInfo = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setOriginalCrop:{self->_originalCrop.origin.x, self->_originalCrop.origin.y, self->_originalCrop.size.width, self->_originalCrop.size.height}];
  v6 = [(NSString *)self->_baseImageName copyWithZone:a3];
  [v5 setBaseImageName:v6];

  v7 = [(NSString *)self->_maskImageName copyWithZone:a3];
  [v5 setMaskImageName:v7];

  [v5 setTimePosition:self->_timePosition];
  [v5 setTimeRect:{self->_timeRect.origin.x, self->_timeRect.origin.y, self->_timeRect.size.width, self->_timeRect.size.height}];
  [v5 setBackgroundZorder:self->_backgroundZorder];
  [v5 setForegroundZorder:self->_foregroundZorder];
  [v5 setTimeElementZorder:self->_timeElementZorder];
  [v5 setImageAOTBrightness:self->_imageAOTBrightness];
  [v5 setUserEdited:self->_userEdited];
  [v5 setColorInfo:0];
  return v5;
}

- (CGRect)originalCrop
{
  x = self->_originalCrop.origin.x;
  y = self->_originalCrop.origin.y;
  width = self->_originalCrop.size.width;
  height = self->_originalCrop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)timeRect
{
  x = self->_timeRect.origin.x;
  y = self->_timeRect.origin.y;
  width = self->_timeRect.size.width;
  height = self->_timeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end