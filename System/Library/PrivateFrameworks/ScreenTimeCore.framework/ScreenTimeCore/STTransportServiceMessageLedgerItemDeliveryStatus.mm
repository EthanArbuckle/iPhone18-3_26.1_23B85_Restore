@interface STTransportServiceMessageLedgerItemDeliveryStatus
+ (BOOL)_canTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStatus:(id)status;
- (STTransportServiceMessageLedgerItemDeliveryStatus)initWithCoder:(id)coder;
- (STTransportServiceMessageLedgerItemDeliveryStatus)statusWithIncrementedAttempts;
- (STTransportServiceMessageLedgerItemDeliveryStatus)statusWithUpdatedState:(int64_t)state;
- (id)_initWithState:(int64_t)state numberOfAttempts:(int64_t)attempts;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STTransportServiceMessageLedgerItemDeliveryStatus

- (id)_initWithState:(int64_t)state numberOfAttempts:(int64_t)attempts
{
  v7.receiver = self;
  v7.super_class = STTransportServiceMessageLedgerItemDeliveryStatus;
  result = [(STTransportServiceMessageLedgerItemDeliveryStatus *)&v7 init];
  *(result + 1) = state;
  *(result + 2) = attempts;
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

- (STTransportServiceMessageLedgerItemDeliveryStatus)statusWithUpdatedState:(int64_t)state
{
  if ([STTransportServiceMessageLedgerItemDeliveryStatus _canTransitionFromState:[(STTransportServiceMessageLedgerItemDeliveryStatus *)self state] toState:state])
  {
    v5 = [[STTransportServiceMessageLedgerItemDeliveryStatus alloc] _initWithState:state numberOfAttempts:[(STTransportServiceMessageLedgerItemDeliveryStatus *)self numberOfAttempts]];
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

+ (BOOL)_canTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v4 = 0x18u >> toState;
  if (toState >= 6)
  {
    LOBYTE(v4) = 0;
  }

  v5 = 1u >> toState;
  if (toState >= 6)
  {
    LOBYTE(v5) = 0;
  }

  if (state != 3)
  {
    LOBYTE(v5) = 0;
  }

  if (state != 2)
  {
    LOBYTE(v4) = v5;
  }

  v6 = 0xBu >> toState;
  if (toState >= 6)
  {
    LOBYTE(v6) = 0;
  }

  v7 = 0x1Cu >> toState;
  if (toState >= 6)
  {
    LOBYTE(v7) = 0;
  }

  if (state != 1)
  {
    LOBYTE(v7) = 0;
  }

  if (state)
  {
    LOBYTE(v6) = v7;
  }

  if (state <= 1)
  {
    LOBYTE(v4) = v6;
  }

  return v4 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  state = self->_state;
  numberOfAttempts = self->_numberOfAttempts;

  return [v4 _initWithState:state numberOfAttempts:numberOfAttempts];
}

- (STTransportServiceMessageLedgerItemDeliveryStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"state"];
  v6 = [coderCopy decodeIntegerForKey:@"numberOfAttempts"];

  return [(STTransportServiceMessageLedgerItemDeliveryStatus *)self _initWithState:v5 numberOfAttempts:v6];
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInteger:state forKey:@"state"];
  [coderCopy encodeInteger:self->_numberOfAttempts forKey:@"numberOfAttempts"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STTransportServiceMessageLedgerItemDeliveryStatus *)self isEqualToStatus:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToStatus:(id)status
{
  statusCopy = status;
  if (statusCopy == self)
  {
    v7 = 1;
  }

  else
  {
    state = [(STTransportServiceMessageLedgerItemDeliveryStatus *)self state];
    if (state == [(STTransportServiceMessageLedgerItemDeliveryStatus *)statusCopy state])
    {
      numberOfAttempts = [(STTransportServiceMessageLedgerItemDeliveryStatus *)self numberOfAttempts];
      v7 = numberOfAttempts == [(STTransportServiceMessageLedgerItemDeliveryStatus *)statusCopy numberOfAttempts];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end