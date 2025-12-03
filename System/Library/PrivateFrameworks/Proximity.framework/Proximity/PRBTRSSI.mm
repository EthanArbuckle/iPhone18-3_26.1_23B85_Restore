@interface PRBTRSSI
- (BOOL)isEqual:(id)equal;
- (PRBTRSSI)initWithCoder:(id)coder;
- (PRBTRSSI)initWithTimeStamp:(double)stamp rssi_dbm:(int)rssi_dbm channel:(int)channel;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRBTRSSI

- (PRBTRSSI)initWithTimeStamp:(double)stamp rssi_dbm:(int)rssi_dbm channel:(int)channel
{
  v9.receiver = self;
  v9.super_class = PRBTRSSI;
  result = [(PRBTRSSI *)&v9 init];
  if (result)
  {
    result->_timestamp = stamp;
    result->_rssi_dbm = rssi_dbm;
    result->_channel = channel;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(PRBTRSSI *)self timestamp];
    v7 = v6;
    [v5 timestamp];
    if (v7 == v8 && (v9 = -[PRBTRSSI rssi_dbm](self, "rssi_dbm"), v9 == [v5 rssi_dbm]))
    {
      channel = [(PRBTRSSI *)self channel];
      v11 = channel == [v5 channel];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PRBTRSSI)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"timestamp"];
  v6 = -[PRBTRSSI initWithTimeStamp:rssi_dbm:channel:](self, "initWithTimeStamp:rssi_dbm:channel:", [coderCopy decodeIntForKey:@"rssi"], objc_msgSend(coderCopy, "decodeIntForKey:", @"channel"), v5);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy encodeInt:self->_rssi_dbm forKey:@"rssi"];
  [coderCopy encodeInt:self->_channel forKey:@"channel"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRBTRSSI alloc];
  timestamp = self->_timestamp;
  rssi_dbm = self->_rssi_dbm;
  channel = self->_channel;

  return [(PRBTRSSI *)v4 initWithTimeStamp:rssi_dbm rssi_dbm:channel channel:timestamp];
}

@end