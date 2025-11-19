@interface STTransportServiceMessageLedgerItemDeliveryStatus
+ (BOOL)_canTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStatus:(id)a3;
- (STTransportServiceMessageLedgerItemDeliveryStatus)initWithCoder:(id)a3;
- (STTransportServiceMessageLedgerItemDeliveryStatus)statusWithIncrementedAttempts;
- (STTransportServiceMessageLedgerItemDeliveryStatus)statusWithUpdatedState:(int64_t)a3;
- (id)_initWithState:(int64_t)a3 numberOfAttempts:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STTransportServiceMessageLedgerItemDeliveryStatus

- (id)_initWithState:(int64_t)a3 numberOfAttempts:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = STTransportServiceMessageLedgerItemDeliveryStatus;
  result = [(STTransportServiceMessageLedgerItemDeliveryStatus *)&v7 init];
  *(result + 1) = a3;
  *(result + 2) = a4;
  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STTransportServiceMessageLedgerItemDeliveryStatus *)self state]- 1;
  if (v4 > 4)
  {
    v5 = @"Pending";
  }

  else
  {
    v5 = *(&off_1001A6150 + v4);
  }

  return [NSString stringWithFormat:@"<%@ { State: %@, Attempts: %ld }>", v3, v5, [(STTransportServiceMessageLedgerItemDeliveryStatus *)self numberOfAttempts]];
}

- (STTransportServiceMessageLedgerItemDeliveryStatus)statusWithUpdatedState:(int64_t)a3
{
  if ([STTransportServiceMessageLedgerItemDeliveryStatus _canTransitionFromState:[(STTransportServiceMessageLedgerItemDeliveryStatus *)self state] toState:a3])
  {
    v5 = [[STTransportServiceMessageLedgerItemDeliveryStatus alloc] _initWithState:a3 numberOfAttempts:[(STTransportServiceMessageLedgerItemDeliveryStatus *)self numberOfAttempts]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (STTransportServiceMessageLedgerItemDeliveryStatus)statusWithIncrementedAttempts
{
  v2 = [[STTransportServiceMessageLedgerItemDeliveryStatus alloc] _initWithState:self->_state numberOfAttempts:[(STTransportServiceMessageLedgerItemDeliveryStatus *)self numberOfAttempts]+ 1];

  return v2;
}

+ (BOOL)_canTransitionFromState:(int64_t)a3 toState:(int64_t)a4
{
  v4 = 0x18u >> a4;
  if (a4 >= 6)
  {
    LOBYTE(v4) = 0;
  }

  v5 = 1u >> a4;
  if (a4 >= 6)
  {
    LOBYTE(v5) = 0;
  }

  if (a3 != 3)
  {
    LOBYTE(v5) = 0;
  }

  if (a3 != 2)
  {
    LOBYTE(v4) = v5;
  }

  v6 = 0xBu >> a4;
  if (a4 >= 6)
  {
    LOBYTE(v6) = 0;
  }

  v7 = 0x1Cu >> a4;
  if (a4 >= 6)
  {
    LOBYTE(v7) = 0;
  }

  if (a3 != 1)
  {
    LOBYTE(v7) = 0;
  }

  if (a3)
  {
    LOBYTE(v6) = v7;
  }

  if (a3 <= 1)
  {
    LOBYTE(v4) = v6;
  }

  return v4 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  state = self->_state;
  numberOfAttempts = self->_numberOfAttempts;

  return [v4 _initWithState:state numberOfAttempts:numberOfAttempts];
}

- (STTransportServiceMessageLedgerItemDeliveryStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"state"];
  v6 = [v4 decodeIntegerForKey:@"numberOfAttempts"];

  return [(STTransportServiceMessageLedgerItemDeliveryStatus *)self _initWithState:v5 numberOfAttempts:v6];
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInteger:state forKey:@"state"];
  [v5 encodeInteger:self->_numberOfAttempts forKey:@"numberOfAttempts"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STTransportServiceMessageLedgerItemDeliveryStatus *)self isEqualToStatus:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToStatus:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = [(STTransportServiceMessageLedgerItemDeliveryStatus *)self state];
    if (v5 == [(STTransportServiceMessageLedgerItemDeliveryStatus *)v4 state])
    {
      v6 = [(STTransportServiceMessageLedgerItemDeliveryStatus *)self numberOfAttempts];
      v7 = v6 == [(STTransportServiceMessageLedgerItemDeliveryStatus *)v4 numberOfAttempts];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end