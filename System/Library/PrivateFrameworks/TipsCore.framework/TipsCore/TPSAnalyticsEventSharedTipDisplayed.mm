@interface TPSAnalyticsEventSharedTipDisplayed
+ (id)eventWithTipID:(id)d correlationID:(id)iD collectionID:(id)collectionID variantID:(id)variantID message:(id)message isEligible:(BOOL)eligible;
+ (id)eventWithTipID:(id)d invalidVariantID:(id)iD;
- (TPSAnalyticsEventSharedTipDisplayed)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d correlationID:(id)iD collectionID:(id)collectionID variantID:(id)variantID eligibility:(id)eligibility message:(id)message;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventSharedTipDisplayed

- (TPSAnalyticsEventSharedTipDisplayed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventSharedTipDisplayed;
  v5 = [(TPSAnalyticsEvent *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_variant_ID"];
    variantID = v5->_variantID;
    v5->_variantID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eligibility"];
    eligibility = v5->_eligibility;
    v5->_eligibility = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventSharedTipDisplayed;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeObject:self->_collectionID forKey:@"collection_ID"];
  [coderCopy encodeObject:self->_variantID forKey:@"tip_variant_ID"];
  [coderCopy encodeObject:self->_eligibility forKey:@"eligibility"];
  [coderCopy encodeObject:self->_message forKey:@"message"];
}

- (id)_initWithTipID:(id)d correlationID:(id)iD collectionID:(id)collectionID variantID:(id)variantID eligibility:(id)eligibility message:(id)message
{
  dCopy = d;
  iDCopy = iD;
  collectionIDCopy = collectionID;
  variantIDCopy = variantID;
  eligibilityCopy = eligibility;
  messageCopy = message;
  date = [MEMORY[0x1E695DF00] date];
  v24.receiver = self;
  v24.super_class = TPSAnalyticsEventSharedTipDisplayed;
  v18 = [(TPSAnalyticsEvent *)&v24 initWithDate:date];

  if (v18)
  {
    objc_storeStrong(&v18->_tipID, d);
    objc_storeStrong(&v18->_correlationID, iD);
    objc_storeStrong(&v18->_collectionID, collectionID);
    objc_storeStrong(&v18->_variantID, variantID);
    objc_storeStrong(&v18->_eligibility, eligibility);
    objc_storeStrong(&v18->_message, message);
  }

  return v18;
}

+ (id)eventWithTipID:(id)d correlationID:(id)iD collectionID:(id)collectionID variantID:(id)variantID message:(id)message isEligible:(BOOL)eligible
{
  dCopy = d;
  iDCopy = iD;
  collectionIDCopy = collectionID;
  variantIDCopy = variantID;
  messageCopy = message;
  v19 = messageCopy;
  if (eligible)
  {
    v20 = @"eligible";
  }

  else if ([(__CFString *)messageCopy length])
  {
    v20 = @"ineligible";
  }

  else
  {
    v20 = @"ineligible - with correlating tip";
  }

  if ([(__CFString *)v19 length])
  {
    v21 = v19;
  }

  else
  {
    v21 = @"n/a";
  }

  v22 = v21;
  if ([(__CFString *)collectionIDCopy length])
  {
    v23 = collectionIDCopy;
  }

  else
  {
    v23 = @"n/a";
  }

  v24 = v23;
  v25 = [[self alloc] _initWithTipID:dCopy correlationID:iDCopy collectionID:v24 variantID:variantIDCopy eligibility:v20 message:v22];

  return v25;
}

+ (id)eventWithTipID:(id)d invalidVariantID:(id)iD
{
  iDCopy = iD;
  v6 = [[self alloc] _initWithTipID:@"n/a" correlationID:@"n/a" collectionID:@"n/a" variantID:iDCopy eligibility:@"ineligible - invalid URL" message:@"ineligible - invalid URL"];

  return v6;
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  tipID = [(TPSAnalyticsEventSharedTipDisplayed *)self tipID];
  [dictionary setObject:tipID forKeyedSubscript:@"tip_ID"];

  correlationID = [(TPSAnalyticsEventSharedTipDisplayed *)self correlationID];
  [dictionary setObject:correlationID forKeyedSubscript:@"tip_correlation_ID"];

  collectionID = [(TPSAnalyticsEventSharedTipDisplayed *)self collectionID];
  [dictionary setObject:collectionID forKeyedSubscript:@"collection_ID"];

  variantID = [(TPSAnalyticsEventSharedTipDisplayed *)self variantID];
  [dictionary setObject:variantID forKeyedSubscript:@"tip_variant_ID"];

  eligibility = [(TPSAnalyticsEventSharedTipDisplayed *)self eligibility];
  [dictionary setObject:eligibility forKeyedSubscript:@"eligibility"];

  message = [(TPSAnalyticsEventSharedTipDisplayed *)self message];
  [dictionary setObject:message forKeyedSubscript:@"message"];

  return dictionary;
}

@end