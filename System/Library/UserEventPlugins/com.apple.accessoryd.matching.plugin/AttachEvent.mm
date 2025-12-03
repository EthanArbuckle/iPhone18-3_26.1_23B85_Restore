@interface AttachEvent
- (AttachEvent)initWithTimestamp:(id)timestamp connectType:(id)type primaryPort:(id)port restrictedModeEnabled:(BOOL)enabled dialogShown:(BOOL)shown supportsUSB:(BOOL)b supportsUART:(BOOL)t supportsMB:(BOOL)self0 supportsAIDBulkPipes:(BOOL)self1 digitalID:(id)self2;
- (void)dealloc;
@end

@implementation AttachEvent

- (AttachEvent)initWithTimestamp:(id)timestamp connectType:(id)type primaryPort:(id)port restrictedModeEnabled:(BOOL)enabled dialogShown:(BOOL)shown supportsUSB:(BOOL)b supportsUART:(BOOL)t supportsMB:(BOOL)self0 supportsAIDBulkPipes:(BOOL)self1 digitalID:(id)self2
{
  timestampCopy = timestamp;
  typeCopy = type;
  portCopy = port;
  dCopy = d;
  v28.receiver = self;
  v28.super_class = AttachEvent;
  v21 = [(AttachEvent *)&v28 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_timestamp, timestamp);
    objc_storeStrong(&v22->_connectType, type);
    objc_storeStrong(&v22->_primaryPort, port);
    v22->_restrictedModeEnabled = enabled;
    v22->_rmDialogShown = shown;
    v22->_accSupoortsUSB = b;
    v22->_accSupoortsUART = t;
    v22->_accSupoortsMikeyBus = mB;
    objc_storeStrong(&v22->_accDigitalID, d);
    chargeVoltage = v22->_chargeVoltage;
    v22->_chargeVoltage = 0;

    currentLimit = v22->_currentLimit;
    v22->_currentLimit = 0;

    v22->_accSupoortsCharging = 0;
  }

  return v22;
}

- (void)dealloc
{
  [(AttachEvent *)self setAccDigitalID:0];
  v3.receiver = self;
  v3.super_class = AttachEvent;
  [(AttachEvent *)&v3 dealloc];
}

@end