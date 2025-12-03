@interface PFCStoredLayout
- (CGRect)originalCrop;
- (CGRect)timeRect;
- (PFCStoredLayout)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFCStoredLayout

- (void)encodeWithCoder:(id)coder
{
  x = self->_originalCrop.origin.x;
  y = self->_originalCrop.origin.y;
  width = self->_originalCrop.size.width;
  height = self->_originalCrop.size.height;
  coderCopy = coder;
  [coderCopy encodeCGRect:@"originalCrop" forKey:{x, y, width, height}];
  [coderCopy encodeObject:self->_baseImageName forKey:@"baseImageName"];
  [coderCopy encodeObject:self->_maskImageName forKey:@"maskImageName"];
  [coderCopy encodeInteger:self->_timePosition forKey:@"timePosition"];
  [coderCopy encodeCGRect:@"timeRect" forKey:{self->_timeRect.origin.x, self->_timeRect.origin.y, self->_timeRect.size.width, self->_timeRect.size.height}];
  backgroundZorder = self->_backgroundZorder;
  *&backgroundZorder = backgroundZorder;
  [coderCopy encodeFloat:@"backgroundZorder" forKey:backgroundZorder];
  foregroundZorder = self->_foregroundZorder;
  *&foregroundZorder = foregroundZorder;
  [coderCopy encodeFloat:@"foregroundZorder" forKey:foregroundZorder];
  timeElementZorder = self->_timeElementZorder;
  *&timeElementZorder = timeElementZorder;
  [coderCopy encodeFloat:@"timeElementZorder" forKey:timeElementZorder];
  imageAOTBrightness = self->_imageAOTBrightness;
  *&imageAOTBrightness = imageAOTBrightness;
  [coderCopy encodeFloat:@"imageAOTBrightness" forKey:imageAOTBrightness];
  [coderCopy encodeBool:self->_userEdited forKey:@"userEdited"];
}

- (PFCStoredLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = PFCStoredLayout;
  v5 = [(PFCStoredLayout *)&v24 init];
  if (v5)
  {
    [coderCopy decodeCGRectForKey:@"originalCrop"];
    v5->_originalCrop.origin.x = v6;
    v5->_originalCrop.origin.y = v7;
    v5->_originalCrop.size.width = v8;
    v5->_originalCrop.size.height = v9;
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseImageName"];
    baseImageName = v5->_baseImageName;
    v5->_baseImageName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maskImageName"];
    maskImageName = v5->_maskImageName;
    v5->_maskImageName = v12;

    v5->_timePosition = [coderCopy decodeIntegerForKey:@"timePosition"];
    [coderCopy decodeCGRectForKey:@"timeRect"];
    v5->_timeRect.origin.x = v14;
    v5->_timeRect.origin.y = v15;
    v5->_timeRect.size.width = v16;
    v5->_timeRect.size.height = v17;
    [coderCopy decodeFloatForKey:@"backgroundZorder"];
    v5->_backgroundZorder = v18;
    [coderCopy decodeFloatForKey:@"foregroundZorder"];
    v5->_foregroundZorder = v19;
    [coderCopy decodeFloatForKey:@"timeElementZorder"];
    v5->_timeElementZorder = v20;
    [coderCopy decodeFloatForKey:@"imageAOTBrightness"];
    v5->_imageAOTBrightness = v21;
    v5->_userEdited = [coderCopy decodeBoolForKey:@"userEdited"];
    colorInfo = v5->_colorInfo;
    v5->_colorInfo = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setOriginalCrop:{self->_originalCrop.origin.x, self->_originalCrop.origin.y, self->_originalCrop.size.width, self->_originalCrop.size.height}];
  v6 = [(NSString *)self->_baseImageName copyWithZone:zone];
  [v5 setBaseImageName:v6];

  v7 = [(NSString *)self->_maskImageName copyWithZone:zone];
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