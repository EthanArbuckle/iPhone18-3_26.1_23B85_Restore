@interface HUDUserClientWindow
- (CGRect)frame;
- (HUDUserClientWindow)initWithFrame:(CGRect)a3;
- (id)getMetric:(id)a3;
- (void)addMetric:(id)a3 after:(id)a4;
- (void)removeMetrics:(id)a3;
- (void)requestMetrics:(id)a3;
@end

@implementation HUDUserClientWindow

- (HUDUserClientWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = HUDUserClientWindow;
  v7 = [(HUDUserClientWindow *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_frame.origin.x = x;
    v7->_frame.origin.y = y;
    v7->_frame.size.width = width;
    v7->_frame.size.height = height;
    v9 = objc_opt_new();
    map = v8->_map;
    v8->_map = v9;

    v11 = objc_opt_new();
    metrics = v8->_metrics;
    v8->_metrics = v11;
  }

  return v8;
}

- (id)getMetric:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_map objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6 && (*([v6 descriptor] + 48) & 2) != 0 && (MTLHudIsInternalInstall() & 1) == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  objc_sync_exit(v5);

  return v8;
}

- (void)addMetric:(id)a3 after:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = -[NSMutableDictionary objectForKeyedSubscript:](v7->_map, "objectForKeyedSubscript:", *([v23 descriptor] + 1));

  if (v8)
  {
    NSLog(@"[libMTLHud] Metric %s already exist", [*(objc_msgSend(v23 "descriptor") + 1)]);
  }

  metrics = v7->_metrics;
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *([v23 descriptor] + 10));
  v11 = [(NSMutableDictionary *)metrics objectForKeyedSubscript:v10];

  if (!v11)
  {
    if ((v11 = -[HUDUserClientMetricGroup initWithCategory:]([HUDUserClientMetricGroup alloc], "initWithCategory:", *([v23 descriptor] + 10)), v12 = v7->_metrics, +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(objc_msgSend(v23, "descriptor") + 10)), v13 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary setObject:forKeyedSubscript:](v12, "setObject:forKeyedSubscript:", v11, v13), v13, -[HUDUserClientMetricGroup category](v11, "category") == 2) && (*(HUDGetGlobalConfig() + 15) & 1) != 0 || -[HUDUserClientMetricGroup category](v11, "category") == 3 && *(HUDGetGlobalConfig() + 14) == 1)
    {
      [(HUDUserClientMetricGroup *)v11 setEnabled:0];
    }
  }

  if (v6)
  {
    for (i = 0; ; ++i)
    {
      v15 = [(HUDUserClientMetricGroup *)v11 metrics];
      v16 = [v15 count];

      if (i >= v16)
      {
        break;
      }

      v17 = [(HUDUserClientMetricGroup *)v11 metrics];
      v18 = [v17 objectAtIndexedSubscript:i];
      v19 = [*(objc_msgSend(v18 "descriptor") + 1)];

      if (v19)
      {
        if (i != 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = [(HUDUserClientMetricGroup *)v11 metrics];
          v21 = [v20 count] - 1;

          if (i < v21)
          {
            v22 = [(HUDUserClientMetricGroup *)v11 metrics];
            [v22 insertObject:v23 atIndex:i + 1];
            goto LABEL_19;
          }
        }

        break;
      }
    }
  }

  v22 = [(HUDUserClientMetricGroup *)v11 metrics];
  [v22 addObject:v23];
LABEL_19:

  -[NSMutableDictionary setObject:forKeyedSubscript:](v7->_map, "setObject:forKeyedSubscript:", v23, *([v23 descriptor] + 1));
  objc_sync_exit(v7);
}

- (void)removeMetrics:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)v4->_map objectForKeyedSubscript:v10];
  if (v5)
  {
    [(NSMutableDictionary *)v4->_map removeObjectForKey:v10];
    metrics = v4->_metrics;
    v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *([v5 descriptor] + 10));
    v8 = [(NSMutableDictionary *)metrics objectForKeyedSubscript:v7];

    v9 = [v8 metrics];
    [v9 removeObject:v5];
  }

  objc_sync_exit(v4);
}

- (void)requestMetrics:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  (v5)[2](v5, v4->_metrics);
  objc_sync_exit(v4);
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end