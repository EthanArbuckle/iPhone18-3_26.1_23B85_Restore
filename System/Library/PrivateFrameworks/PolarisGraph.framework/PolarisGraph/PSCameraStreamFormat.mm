@interface PSCameraStreamFormat
- (BOOL)isEqual:(id)equal;
- (PSCameraStreamFormat)initWithCoder:(id)coder;
- (id)initIsUnwarped:(BOOL)unwarped isRectified:(BOOL)rectified isPyramid:(BOOL)pyramid;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSCameraStreamFormat

- (id)initIsUnwarped:(BOOL)unwarped isRectified:(BOOL)rectified isPyramid:(BOOL)pyramid
{
  v9.receiver = self;
  v9.super_class = PSCameraStreamFormat;
  result = [(PSCameraStreamFormat *)&v9 init];
  if (result)
  {
    *(result + 8) = unwarped;
    *(result + 9) = rectified;
    *(result + 10) = pyramid;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_isUnwarped forKey:@"unwarped"];
  [coderCopy encodeBool:self->_isRectified forKey:@"rectified"];
  [coderCopy encodeBool:self->_isPyramid forKey:@"pyramid"];
}

- (PSCameraStreamFormat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[PSCameraStreamFormat initIsUnwarped:isRectified:isPyramid:](self, "initIsUnwarped:isRectified:isPyramid:", [coderCopy decodeBoolForKey:@"unwarped"], objc_msgSend(coderCopy, "decodeBoolForKey:", @"rectified"), objc_msgSend(coderCopy, "decodeBoolForKey:", @"pyramid"));

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    isUnwarped = self->_isUnwarped;
    if (isUnwarped == [(PSCameraStreamFormat *)v6 isUnwarped]&& (isRectified = self->_isRectified, isRectified == [(PSCameraStreamFormat *)v6 isRectified]))
    {
      isPyramid = self->_isPyramid;
      v10 = isPyramid == [(PSCameraStreamFormat *)v6 isPyramid];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  if ([(PSCameraStreamFormat *)self isUnwarped])
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  isRectified = [(PSCameraStreamFormat *)self isRectified];
  v5 = 2;
  if (!isRectified)
  {
    v5 = 0;
  }

  return v5 | v3 | [(PSCameraStreamFormat *)self isPyramid];
}

@end