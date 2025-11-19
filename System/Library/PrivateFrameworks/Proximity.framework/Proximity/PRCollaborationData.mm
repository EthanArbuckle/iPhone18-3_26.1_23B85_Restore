@interface PRCollaborationData
- (BOOL)isEqual:(id)a3;
- (PRCollaborationData)initWithCoder:(id)a3;
- (PRCollaborationData)initWithData:(id)a3 sendingPeer:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRCollaborationData

- (PRCollaborationData)initWithData:(id)a3 sendingPeer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PRCollaborationData;
  v9 = [(PRCollaborationData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_sendingPeer, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    data = self->_data;
    v7 = [v5 data];
    if ([(NSData *)data isEqualToData:v7])
    {
      sendingPeer = self->_sendingPeer;
      v9 = [v5 sendingPeer];
      v10 = [(PRPeer *)sendingPeer isEqual:v9];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRCollaborationData alloc];
  data = self->_data;
  sendingPeer = self->_sendingPeer;

  return [(PRCollaborationData *)v4 initWithData:data sendingPeer:sendingPeer];
}

- (PRCollaborationData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SendingPeer"];

  v7 = [(PRCollaborationData *)self initWithData:v5 sendingPeer:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v5 = a3;
  [v5 encodeObject:data forKey:@"Data"];
  [v5 encodeObject:self->_sendingPeer forKey:@"SendingPeer"];
}

@end