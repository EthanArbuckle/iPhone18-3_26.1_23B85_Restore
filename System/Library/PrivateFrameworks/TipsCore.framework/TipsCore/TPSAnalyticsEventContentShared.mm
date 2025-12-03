@interface TPSAnalyticsEventContentShared
+ (id)eventWithContentID:(id)d collectionID:(id)iD shareMethod:(id)method;
- (TPSAnalyticsEventContentShared)initWithCoder:(id)coder;
- (id)_initWithContentID:(id)d collectionID:(id)iD shareMethod:(id)method;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventContentShared

- (TPSAnalyticsEventContentShared)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TPSAnalyticsEventContentShared;
  v5 = [(TPSAnalyticsEvent *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    contentID = v5->_contentID;
    v5->_contentID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"share_method"];
    shareMethod = v5->_shareMethod;
    v5->_shareMethod = v10;
  }

  return v5;
}

- (id)_initWithContentID:(id)d collectionID:(id)iD shareMethod:(id)method
{
  dCopy = d;
  iDCopy = iD;
  methodCopy = method;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventContentShared;
  v12 = [(TPSAnalyticsEvent *)&v15 initWithDate:0];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_contentID, d);
    objc_storeStrong(p_isa + 5, iD);
    objc_storeStrong(p_isa + 6, method);
  }

  return p_isa;
}

+ (id)eventWithContentID:(id)d collectionID:(id)iD shareMethod:(id)method
{
  methodCopy = method;
  iDCopy = iD;
  dCopy = d;
  v11 = [[self alloc] _initWithContentID:dCopy collectionID:iDCopy shareMethod:methodCopy];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventContentShared;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_contentID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_collectionID forKey:@"collection_ID"];
  [coderCopy encodeObject:self->_shareMethod forKey:@"share_method"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_contentID forKeyedSubscript:@"tip_ID"];
  [dictionary setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  [dictionary setObject:self->_shareMethod forKeyedSubscript:@"share_method"];

  return dictionary;
}

@end