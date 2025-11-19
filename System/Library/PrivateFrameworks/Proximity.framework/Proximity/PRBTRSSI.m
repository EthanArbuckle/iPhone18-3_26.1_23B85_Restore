@interface PRBTRSSI
- (BOOL)isEqual:(id)a3;
- (PRBTRSSI)initWithCoder:(id)a3;
- (PRBTRSSI)initWithTimeStamp:(double)a3 rssi_dbm:(int)a4 channel:(int)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRBTRSSI

- (PRBTRSSI)initWithTimeStamp:(double)a3 rssi_dbm:(int)a4 channel:(int)a5
{
  v9.receiver = self;
  v9.super_class = PRBTRSSI;
  result = [(PRBTRSSI *)&v9 init];
  if (result)
  {
    result->_timestamp = a3;
    result->_rssi_dbm = a4;
    result->_channel = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(PRBTRSSI *)self timestamp];
    v7 = v6;
    [v5 timestamp];
    if (v7 == v8 && (v9 = -[PRBTRSSI rssi_dbm](self, "rssi_dbm"), v9 == [v5 rssi_dbm]))
    {
      v10 = [(PRBTRSSI *)self channel];
      v11 = v10 == [v5 channel];
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

- (PRBTRSSI)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"timestamp"];
  v6 = -[PRBTRSSI initWithTimeStamp:rssi_dbm:channel:](self, "initWithTimeStamp:rssi_dbm:channel:", [v4 decodeIntForKey:@"rssi"], objc_msgSend(v4, "decodeIntForKey:", @"channel"), v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [v4 encodeInt:self->_rssi_dbm forKey:@"rssi"];
  [v4 encodeInt:self->_channel forKey:@"channel"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRBTRSSI alloc];
  timestamp = self->_timestamp;
  rssi_dbm = self->_rssi_dbm;
  channel = self->_channel;

  return [(PRBTRSSI *)v4 initWithTimeStamp:rssi_dbm rssi_dbm:channel channel:timestamp];
}

@end