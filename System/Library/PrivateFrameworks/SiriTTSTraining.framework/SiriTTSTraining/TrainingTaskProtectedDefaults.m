@interface TrainingTaskProtectedDefaults
- (TrainingTaskProtectedDefaults)init;
@end

@implementation TrainingTaskProtectedDefaults

- (TrainingTaskProtectedDefaults)init
{
  v12.receiver = self;
  v12.super_class = TrainingTaskProtectedDefaults;
  v2 = [(TrainingTaskProtectedDefaults *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("TrainingdTaskProtectedDefaults", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = sub_100014E7C();
    v7 = [NSMutableDictionary dictionaryWithContentsOfURL:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = +[NSMutableDictionary dictionary];
    }

    defaults = v2->_defaults;
    v2->_defaults = v9;
  }

  return v2;
}

@end