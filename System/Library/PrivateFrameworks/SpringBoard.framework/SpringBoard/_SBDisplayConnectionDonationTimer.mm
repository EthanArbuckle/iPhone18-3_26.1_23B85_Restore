@interface _SBDisplayConnectionDonationTimer
- (_SBDisplayConnectionDonationTimer)initWithUniqueId:(id)id deviceName:(id)name productName:(id)productName connect:(BOOL)connect mirroring:(BOOL)mirroring handler:(id)handler;
- (void)dealloc;
- (void)resetTimerOnConnect:(BOOL)connect;
@end

@implementation _SBDisplayConnectionDonationTimer

- (_SBDisplayConnectionDonationTimer)initWithUniqueId:(id)id deviceName:(id)name productName:(id)productName connect:(BOOL)connect mirroring:(BOOL)mirroring handler:(id)handler
{
  idCopy = id;
  nameCopy = name;
  productNameCopy = productName;
  handlerCopy = handler;
  v28.receiver = self;
  v28.super_class = _SBDisplayConnectionDonationTimer;
  v18 = [(_SBDisplayConnectionDonationTimer *)&v28 init];
  if (v18)
  {
    v19 = [idCopy copy];
    uniqueId = v18->_uniqueId;
    v18->_uniqueId = v19;

    v21 = [nameCopy copy];
    deviceName = v18->_deviceName;
    v18->_deviceName = v21;

    v23 = [productNameCopy copy];
    productName = v18->_productName;
    v18->_productName = v23;

    v18->_connect = connect;
    v18->_mirroring = mirroring;
    v18->_counter = 0;
    v25 = [handlerCopy copy];
    handler = v18->_handler;
    v18->_handler = v25;
  }

  return v18;
}

- (void)dealloc
{
  [(_SBDisplayConnectionDonationTimer *)self invalidate];
  v3.receiver = self;
  v3.super_class = _SBDisplayConnectionDonationTimer;
  [(_SBDisplayConnectionDonationTimer *)&v3 dealloc];
}

- (void)resetTimerOnConnect:(BOOL)connect
{
  counter = self->_counter;
  if (connect)
  {
    v5 = counter + 1;
  }

  else
  {
    v5 = counter - 1;
  }

  self->_counter = v5;
  [(NSTimer *)self->_timer invalidate];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___SBDisplayConnectionDonationTimer_resetTimerOnConnect___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end