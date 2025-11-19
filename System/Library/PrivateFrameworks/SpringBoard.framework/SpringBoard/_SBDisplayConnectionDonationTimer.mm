@interface _SBDisplayConnectionDonationTimer
- (_SBDisplayConnectionDonationTimer)initWithUniqueId:(id)a3 deviceName:(id)a4 productName:(id)a5 connect:(BOOL)a6 mirroring:(BOOL)a7 handler:(id)a8;
- (void)dealloc;
- (void)resetTimerOnConnect:(BOOL)a3;
@end

@implementation _SBDisplayConnectionDonationTimer

- (_SBDisplayConnectionDonationTimer)initWithUniqueId:(id)a3 deviceName:(id)a4 productName:(id)a5 connect:(BOOL)a6 mirroring:(BOOL)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v28.receiver = self;
  v28.super_class = _SBDisplayConnectionDonationTimer;
  v18 = [(_SBDisplayConnectionDonationTimer *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    uniqueId = v18->_uniqueId;
    v18->_uniqueId = v19;

    v21 = [v15 copy];
    deviceName = v18->_deviceName;
    v18->_deviceName = v21;

    v23 = [v16 copy];
    productName = v18->_productName;
    v18->_productName = v23;

    v18->_connect = a6;
    v18->_mirroring = a7;
    v18->_counter = 0;
    v25 = [v17 copy];
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

- (void)resetTimerOnConnect:(BOOL)a3
{
  counter = self->_counter;
  if (a3)
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