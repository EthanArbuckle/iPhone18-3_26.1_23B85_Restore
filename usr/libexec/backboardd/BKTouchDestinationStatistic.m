@interface BKTouchDestinationStatistic
- (void)addDestination:(id)a3 touchIdentifier:(unsigned int)a4;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)reset;
@end

@implementation BKTouchDestinationStatistic

- (void)reset
{
  v4.receiver = self;
  v4.super_class = BKTouchDestinationStatistic;
  [(BKEventStatistic *)&v4 reset];
  statsPerDestination = self->_statsPerDestination;
  self->_statsPerDestination = 0;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100093A20;
  v10[3] = &unk_1000FD128;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [v9 appendBodySectionWithName:@"destinations" openDelimiter:@"{" closeDelimiter:@"}" block:v10];
}

- (void)addDestination:(id)a3 touchIdentifier:(unsigned int)a4
{
  v6 = a3;
  statsPerDestination = self->_statsPerDestination;
  v17 = v6;
  if (!statsPerDestination)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = self->_statsPerDestination;
    self->_statsPerDestination = v8;

    v6 = v17;
    statsPerDestination = self->_statsPerDestination;
  }

  v10 = [(NSMutableDictionary *)statsPerDestination objectForKey:v6];
  if (!v10)
  {
    v10 = objc_alloc_init(BKTouchDestinationStats);
    [(NSMutableDictionary *)self->_statsPerDestination setObject:v10 forKey:v17];
    if (v17)
    {
      v11 = v17[3];
    }

    else
    {
      v11 = 0;
    }

    v12 = BKHIDEventRoutingGetClientConnectionManager();
    v13 = [v12 clientForTaskPort:v11];
    v14 = v13;
    if (v13)
    {
      [v13 pid];
    }

    v15 = BSProcessDescriptionForPID();
    [(BKTouchDestinationStats *)v10 setProcessDescription:v15];
  }

  v16 = [(BKTouchDestinationStats *)v10 touchIdentifiers];
  [v16 addIndex:a4];

  [(BKEventStatistic *)self setNeedsLogging:1];
}

@end