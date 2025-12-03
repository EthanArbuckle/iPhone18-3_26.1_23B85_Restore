@interface IPAPhotoAdjustment
- (id)_debugDescriptionSuffix;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setMaskUUID:(id)d;
@end

@implementation IPAPhotoAdjustment

- (id)_debugDescriptionSuffix
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"enabled=%d", self->_enabled];
  v4 = v3;
  if (self->_maskUUID)
  {
    [v3 appendFormat:@" maskUUID=%@", self->_maskUUID];
  }

  if (self->_autoSettings)
  {
    [v4 appendFormat:@" autoSettings=<%@:%p count:%lu>", objc_opt_class(), self->_autoSettings, -[NSDictionary count](self->_autoSettings, "count")];
  }

  return v4;
}

- (void)setMaskUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  v12 = dCopy;
  if (dCopy && (v6 = [dCopy length], v5 = v12, !v6))
  {
    v9 = _PFAssertFailHandler();
    [(IPAPhotoAdjustment *)v9 copyWithZone:v10, v11];
  }

  else
  {
    v7 = [v5 copy];
    maskUUID = self->_maskUUID;
    self->_maskUUID = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = IPAPhotoAdjustment;
  v4 = [(IPAAdjustment *)&v6 copyWithZone:zone];
  *(v4 + 32) = self->_enabled;
  objc_storeStrong(v4 + 5, self->_maskUUID);
  objc_storeStrong(v4 + 6, self->_autoSettings);
  return v4;
}

@end