@interface PSCameraStreamFormat
- (BOOL)isEqual:(id)a3;
- (PSCameraStreamFormat)initWithCoder:(id)a3;
- (id)initIsUnwarped:(BOOL)a3 isRectified:(BOOL)a4 isPyramid:(BOOL)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSCameraStreamFormat

- (id)initIsUnwarped:(BOOL)a3 isRectified:(BOOL)a4 isPyramid:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = PSCameraStreamFormat;
  result = [(PSCameraStreamFormat *)&v9 init];
  if (result)
  {
    *(result + 8) = a3;
    *(result + 9) = a4;
    *(result + 10) = a5;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_isUnwarped forKey:@"unwarped"];
  [v4 encodeBool:self->_isRectified forKey:@"rectified"];
  [v4 encodeBool:self->_isPyramid forKey:@"pyramid"];
}

- (PSCameraStreamFormat)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[PSCameraStreamFormat initIsUnwarped:isRectified:isPyramid:](self, "initIsUnwarped:isRectified:isPyramid:", [v4 decodeBoolForKey:@"unwarped"], objc_msgSend(v4, "decodeBoolForKey:", @"rectified"), objc_msgSend(v4, "decodeBoolForKey:", @"pyramid"));

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

  v4 = [(PSCameraStreamFormat *)self isRectified];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3 | [(PSCameraStreamFormat *)self isPyramid];
}

@end