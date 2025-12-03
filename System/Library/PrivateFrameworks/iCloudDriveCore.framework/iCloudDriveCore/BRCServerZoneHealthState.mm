@interface BRCServerZoneHealthState
- (BRCServerZoneHealthState)initWithCKInfo:(id)info state:(int)state;
- (BRCServerZoneHealthState)initWithCoder:(id)coder;
- (BRCServerZoneHealthState)initWithServerZoneHealthState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRCServerZoneHealthState

- (BRCServerZoneHealthState)initWithCKInfo:(id)info state:(int)state
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = BRCServerZoneHealthState;
  v8 = [(BRCServerZoneHealthState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_ckInfo, info);
    v9->_state = state;
  }

  return v9;
}

- (BRCServerZoneHealthState)initWithServerZoneHealthState:(id)state
{
  stateCopy = state;
  v8.receiver = self;
  v8.super_class = BRCServerZoneHealthState;
  v5 = [(BRCServerZoneHealthState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_ckInfo, *(stateCopy + 2));
    v6->_state = *(stateCopy + 2);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithServerZoneHealthState:self];
}

- (BRCServerZoneHealthState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BRCServerZoneHealthState;
  v5 = [(BRCServerZoneHealthState *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ckinfo"];
    ckInfo = v5->_ckInfo;
    v5->_ckInfo = v6;

    v5->_state = [coderCopy decodeInt32ForKey:@"state"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  ckInfo = self->_ckInfo;
  coderCopy = coder;
  [coderCopy encodeObject:ckInfo forKey:@"ckinfo"];
  [coderCopy encodeInt32:self->_state forKey:@"state"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  etag = [(BRFieldCKInfo *)self->_ckInfo etag];
  v5 = etag;
  state = self->_state;
  if (state > 2)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_2785064E0[state];
  }

  v8 = [v3 stringWithFormat:@"zone-health{etag:%@, state:%@}", etag, v7];

  return v8;
}

@end