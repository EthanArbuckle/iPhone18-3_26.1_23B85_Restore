@interface PRSessionStartNotification
+ (id)createWithBluetoothConnectionEventCounterValue:(id)a3;
- (PRSessionStartNotification)init;
@end

@implementation PRSessionStartNotification

- (PRSessionStartNotification)init
{
  v3.receiver = self;
  v3.super_class = PRSessionStartNotification;
  return [(PRSessionStartNotification *)&v3 init];
}

+ (id)createWithBluetoothConnectionEventCounterValue:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(PRSessionStartNotification);
    [(PRSessionStartNotification *)v4 _setType:0];
    [(PRSessionStartNotification *)v4 _setBluetoothConnectionEventCounterValue:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end