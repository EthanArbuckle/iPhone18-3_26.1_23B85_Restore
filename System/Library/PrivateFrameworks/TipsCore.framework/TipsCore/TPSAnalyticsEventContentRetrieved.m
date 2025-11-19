@interface TPSAnalyticsEventContentRetrieved
+ (id)eventWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 context:(id)a6 serviceError:(id)a7;
+ (id)eventWithTipID:(id)a3 correlationID:(id)a4 serviceError:(id)a5;
- (TPSAnalyticsEventContentRetrieved)initWithCoder:(id)a3;
- (id)_initWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 context:(id)a6 serviceError:(id)a7;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setDataProvider:(id)a3;
@end

@implementation TPSAnalyticsEventContentRetrieved

- (TPSAnalyticsEventContentRetrieved)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TPSAnalyticsEventContentRetrieved;
  v5 = [(TPSAnalyticsEvent *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle_ID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service_error"];
    serviceError = v5->_serviceError;
    v5->_serviceError = v14;
  }

  return v5;
}

- (id)_initWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 context:(id)a6 serviceError:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = TPSAnalyticsEventContentRetrieved;
  v17 = [(TPSAnalyticsEvent *)&v21 initWithDate:0];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_tipID, a3);
    objc_storeStrong(p_isa + 5, a4);
    objc_storeStrong(p_isa + 6, a5);
    objc_storeStrong(p_isa + 7, a6);
    objc_storeStrong(p_isa + 8, a7);
  }

  return p_isa;
}

+ (id)eventWithTipID:(id)a3 correlationID:(id)a4 serviceError:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithTipID:v10 correlationID:v9 serviceError:v8];

  return v11;
}

+ (id)eventWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 context:(id)a6 serviceError:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] _initWithTipID:v16 correlationID:v15 bundleID:v14 context:v13 serviceError:v12];

  return v17;
}

- (void)setDataProvider:(id)a3
{
  v14.receiver = self;
  v14.super_class = TPSAnalyticsEventContentRetrieved;
  [(TPSAnalyticsEvent *)&v14 setDataProvider:a3];
  correlationID = self->_correlationID;
  if (correlationID)
  {
    v5 = correlationID;
    v6 = self->_correlationID;
    self->_correlationID = v5;
  }

  else
  {
    v6 = [(TPSAnalyticsEvent *)self dataProvider];
    v7 = [v6 correlationIDForIdentifier:self->_tipID];
    v8 = self->_correlationID;
    self->_correlationID = v7;
  }

  context = self->_context;
  if (context)
  {
    v10 = context;
    v11 = self->_context;
    self->_context = v10;
  }

  else
  {
    v11 = [(TPSAnalyticsEvent *)self dataProvider];
    v12 = [v11 contextForIdentifier:self->_tipID];
    v13 = self->_context;
    self->_context = v12;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventContentRetrieved;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeObject:self->_context forKey:@"context"];
  [v4 encodeObject:self->_bundleID forKey:@"bundle_ID"];
  [v4 encodeObject:self->_serviceError forKey:@"service_error"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [v3 setObject:self->_context forKeyedSubscript:@"context"];
  [v3 setObject:self->_bundleID forKeyedSubscript:@"bundle_ID"];

  return v3;
}

@end