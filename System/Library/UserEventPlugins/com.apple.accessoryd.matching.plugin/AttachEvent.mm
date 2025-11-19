@interface AttachEvent
- (AttachEvent)initWithTimestamp:(id)a3 connectType:(id)a4 primaryPort:(id)a5 restrictedModeEnabled:(BOOL)a6 dialogShown:(BOOL)a7 supportsUSB:(BOOL)a8 supportsUART:(BOOL)a9 supportsMB:(BOOL)a10 supportsAIDBulkPipes:(BOOL)a11 digitalID:(id)a12;
- (void)dealloc;
@end

@implementation AttachEvent

- (AttachEvent)initWithTimestamp:(id)a3 connectType:(id)a4 primaryPort:(id)a5 restrictedModeEnabled:(BOOL)a6 dialogShown:(BOOL)a7 supportsUSB:(BOOL)a8 supportsUART:(BOOL)a9 supportsMB:(BOOL)a10 supportsAIDBulkPipes:(BOOL)a11 digitalID:(id)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v27 = a12;
  v28.receiver = self;
  v28.super_class = AttachEvent;
  v21 = [(AttachEvent *)&v28 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_timestamp, a3);
    objc_storeStrong(&v22->_connectType, a4);
    objc_storeStrong(&v22->_primaryPort, a5);
    v22->_restrictedModeEnabled = a6;
    v22->_rmDialogShown = a7;
    v22->_accSupoortsUSB = a8;
    v22->_accSupoortsUART = a9;
    v22->_accSupoortsMikeyBus = a10;
    objc_storeStrong(&v22->_accDigitalID, a12);
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