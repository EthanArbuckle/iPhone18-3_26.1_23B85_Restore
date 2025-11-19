@interface TPSAnalyticsEvent
- (TPSAnalyticsDataProvider)dataProvider;
- (TPSAnalyticsEvent)initWithCoder:(id)a3;
- (TPSAnalyticsEvent)initWithDate:(id)a3;
- (id)analyticsEventRepresentation;
- (id)eventName;
- (id)mutableAnalyticsEventRepresentation;
- (void)log;
- (void)setDataProvider:(id)a3;
@end

@implementation TPSAnalyticsEvent

- (TPSAnalyticsEvent)initWithDate:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TPSAnalyticsEvent;
  v5 = [(TPSAnalyticsEvent *)&v7 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF00] date];
    }

    objc_storeStrong(&v5->_date, v4);
  }

  return v5;
}

- (void)setDataProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataProvider, obj);
    deliveryInfoVersion = self->_deliveryInfoVersion;
    if (deliveryInfoVersion)
    {
      v8 = deliveryInfoVersion;
      v9 = self->_deliveryInfoVersion;
      self->_deliveryInfoVersion = v8;
    }

    else
    {
      v9 = [(TPSAnalyticsEvent *)self dataProvider];
      v10 = [v9 deliveryInfoVersion];
      v11 = self->_deliveryInfoVersion;
      self->_deliveryInfoVersion = v10;
    }

    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)analyticsEventRepresentation
{
  v2 = [(TPSAnalyticsEvent *)self mutableAnalyticsEventRepresentation];
  v3 = [v2 copy];

  return v3;
}

- (TPSAnalyticsEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSAnalyticsEvent;
  v5 = [(TPSAnalyticsEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;
  }

  return v5;
}

- (void)log
{
  v3 = +[TPSAnalyticsEventController sharedInstance];
  [v3 logAnalyticsEvent:self];
}

- (TPSAnalyticsDataProvider)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

- (id)eventName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1F3F2F4B8;
}

- (id)mutableAnalyticsEventRepresentation
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end