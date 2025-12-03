@interface PRSessionStartNotification
+ (id)createWithBluetoothConnectionEventCounterValue:(id)value;
- (PRSessionStartNotification)init;
@end

@implementation PRSessionStartNotification

- (PRSessionStartNotification)init
{
  v3.receiver = self;
  v3.super_class = PRSessionStartNotification;
  return [(PRSessionStartNotification *)&v3 init];
}

+ (id)createWithBluetoothConnectionEventCounterValue:(id)value
{
  if (value)
  {
    valueCopy = value;
    v4 = objc_alloc_init(PRSessionStartNotification);
    [(PRSessionStartNotification *)v4 _setType:0];
    [(PRSessionStartNotification *)v4 _setBluetoothConnectionEventCounterValue:valueCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end