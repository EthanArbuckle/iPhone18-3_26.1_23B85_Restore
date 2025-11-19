@interface BLESender
- (BLESender)init;
- (void)dealloc;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation BLESender

- (BLESender)init
{
  v6.receiver = self;
  v6.super_class = BLESender;
  v2 = [(BLESender *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    semaphore = v2->_semaphore;
    v2->_semaphore = v3;

    v2->_mtu = 10000;
    v2->_sendDataLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = BLESender;
  [(BLESender *)&v4 dealloc];
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  if (a4 == 4)
  {

    sub_10001934C(self, a2, a3, 4, self, v4, v5, v6, v8);
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[BLESender stream:handleEvent:]", 121, self, @"LE: Stream event %lu on %@", v5, v6, a4);
  }
}

@end