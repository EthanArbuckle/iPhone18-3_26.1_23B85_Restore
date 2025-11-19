@interface BRCServerZoneHealthState
- (BRCServerZoneHealthState)initWithCKInfo:(id)a3 state:(int)a4;
- (BRCServerZoneHealthState)initWithCoder:(id)a3;
- (BRCServerZoneHealthState)initWithServerZoneHealthState:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BRCServerZoneHealthState

- (BRCServerZoneHealthState)initWithCKInfo:(id)a3 state:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BRCServerZoneHealthState;
  v8 = [(BRCServerZoneHealthState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_ckInfo, a3);
    v9->_state = a4;
  }

  return v9;
}

- (BRCServerZoneHealthState)initWithServerZoneHealthState:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BRCServerZoneHealthState;
  v5 = [(BRCServerZoneHealthState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_ckInfo, *(v4 + 2));
    v6->_state = *(v4 + 2);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithServerZoneHealthState:self];
}

- (BRCServerZoneHealthState)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRCServerZoneHealthState;
  v5 = [(BRCServerZoneHealthState *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ckinfo"];
    ckInfo = v5->_ckInfo;
    v5->_ckInfo = v6;

    v5->_state = [v4 decodeInt32ForKey:@"state"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  ckInfo = self->_ckInfo;
  v5 = a3;
  [v5 encodeObject:ckInfo forKey:@"ckinfo"];
  [v5 encodeInt32:self->_state forKey:@"state"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BRFieldCKInfo *)self->_ckInfo etag];
  v5 = v4;
  state = self->_state;
  if (state > 2)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_2785064E0[state];
  }

  v8 = [v3 stringWithFormat:@"zone-health{etag:%@, state:%@}", v4, v7];

  return v8;
}

@end