@interface PRCollaborationData
- (BOOL)isEqual:(id)equal;
- (PRCollaborationData)initWithCoder:(id)coder;
- (PRCollaborationData)initWithData:(id)data sendingPeer:(id)peer;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRCollaborationData

- (PRCollaborationData)initWithData:(id)data sendingPeer:(id)peer
{
  dataCopy = data;
  peerCopy = peer;
  v12.receiver = self;
  v12.super_class = PRCollaborationData;
  v9 = [(PRCollaborationData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_sendingPeer, peer);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    data = self->_data;
    data = [v5 data];
    if ([(NSData *)data isEqualToData:data])
    {
      sendingPeer = self->_sendingPeer;
      sendingPeer = [v5 sendingPeer];
      v10 = [(PRPeer *)sendingPeer isEqual:sendingPeer];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRCollaborationData alloc];
  data = self->_data;
  sendingPeer = self->_sendingPeer;

  return [(PRCollaborationData *)v4 initWithData:data sendingPeer:sendingPeer];
}

- (PRCollaborationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SendingPeer"];

  v7 = [(PRCollaborationData *)self initWithData:v5 sendingPeer:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"Data"];
  [coderCopy encodeObject:self->_sendingPeer forKey:@"SendingPeer"];
}

@end