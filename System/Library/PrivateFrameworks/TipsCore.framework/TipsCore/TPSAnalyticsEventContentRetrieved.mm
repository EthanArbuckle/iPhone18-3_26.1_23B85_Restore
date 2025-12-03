@interface TPSAnalyticsEventContentRetrieved
+ (id)eventWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context serviceError:(id)error;
+ (id)eventWithTipID:(id)d correlationID:(id)iD serviceError:(id)error;
- (TPSAnalyticsEventContentRetrieved)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context serviceError:(id)error;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setDataProvider:(id)provider;
@end

@implementation TPSAnalyticsEventContentRetrieved

- (TPSAnalyticsEventContentRetrieved)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = TPSAnalyticsEventContentRetrieved;
  v5 = [(TPSAnalyticsEvent *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundle_ID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service_error"];
    serviceError = v5->_serviceError;
    v5->_serviceError = v14;
  }

  return v5;
}

- (id)_initWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context serviceError:(id)error
{
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  contextCopy = context;
  errorCopy = error;
  v21.receiver = self;
  v21.super_class = TPSAnalyticsEventContentRetrieved;
  v17 = [(TPSAnalyticsEvent *)&v21 initWithDate:0];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_tipID, d);
    objc_storeStrong(p_isa + 5, iD);
    objc_storeStrong(p_isa + 6, bundleID);
    objc_storeStrong(p_isa + 7, context);
    objc_storeStrong(p_isa + 8, error);
  }

  return p_isa;
}

+ (id)eventWithTipID:(id)d correlationID:(id)iD serviceError:(id)error
{
  errorCopy = error;
  iDCopy = iD;
  dCopy = d;
  v11 = [[self alloc] _initWithTipID:dCopy correlationID:iDCopy serviceError:errorCopy];

  return v11;
}

+ (id)eventWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context serviceError:(id)error
{
  errorCopy = error;
  contextCopy = context;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  dCopy = d;
  v17 = [[self alloc] _initWithTipID:dCopy correlationID:iDCopy bundleID:bundleIDCopy context:contextCopy serviceError:errorCopy];

  return v17;
}

- (void)setDataProvider:(id)provider
{
  v14.receiver = self;
  v14.super_class = TPSAnalyticsEventContentRetrieved;
  [(TPSAnalyticsEvent *)&v14 setDataProvider:provider];
  correlationID = self->_correlationID;
  if (correlationID)
  {
    v5 = correlationID;
    dataProvider = self->_correlationID;
    self->_correlationID = v5;
  }

  else
  {
    dataProvider = [(TPSAnalyticsEvent *)self dataProvider];
    v7 = [dataProvider correlationIDForIdentifier:self->_tipID];
    v8 = self->_correlationID;
    self->_correlationID = v7;
  }

  context = self->_context;
  if (context)
  {
    v10 = context;
    dataProvider2 = self->_context;
    self->_context = v10;
  }

  else
  {
    dataProvider2 = [(TPSAnalyticsEvent *)self dataProvider];
    v12 = [dataProvider2 contextForIdentifier:self->_tipID];
    v13 = self->_context;
    self->_context = v12;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventContentRetrieved;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundle_ID"];
  [coderCopy encodeObject:self->_serviceError forKey:@"service_error"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [dictionary setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [dictionary setObject:self->_context forKeyedSubscript:@"context"];
  [dictionary setObject:self->_bundleID forKeyedSubscript:@"bundle_ID"];

  return dictionary;
}

@end