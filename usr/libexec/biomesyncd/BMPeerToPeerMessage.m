@interface BMPeerToPeerMessage
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
@end

@implementation BMPeerToPeerMessage

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BMPeerToPeerMessage;
  v5 = [(BMPeerToPeerMessage *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"protocolVersion"];
    v5->_protocolVersion = [v6 unsignedIntegerValue];

    v7 = [BMSyncDevicePeer alloc];
    v8 = [v4 objectForKeyedSubscript:@"peer"];
    v9 = [(BMSyncDevicePeer *)v7 initFromDictionary:v8];
    peer = v5->_peer;
    v5->_peer = v9;

    v11 = [v4 objectForKeyedSubscript:@"walltime"];
    [v11 doubleValue];
    v5->_walltime = v12;

    v13 = [v4 objectForKeyedSubscript:@"syncReason"];
    v5->_syncReason = [v13 unsignedIntegerValue];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v9[0] = @"protocolVersion";
  v3 = [NSNumber numberWithUnsignedInteger:self->_protocolVersion];
  v10[0] = v3;
  v9[1] = @"peer";
  v4 = [(BMSyncDevicePeer *)self->_peer dictionaryRepresentation];
  v10[1] = v4;
  v9[2] = @"walltime";
  v5 = [NSNumber numberWithDouble:self->_walltime];
  v10[2] = v5;
  v9[3] = @"syncReason";
  v6 = [NSNumber numberWithUnsignedInteger:self->_syncReason];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end