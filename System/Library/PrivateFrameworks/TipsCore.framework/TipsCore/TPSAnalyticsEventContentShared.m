@interface TPSAnalyticsEventContentShared
+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 shareMethod:(id)a5;
- (TPSAnalyticsEventContentShared)initWithCoder:(id)a3;
- (id)_initWithContentID:(id)a3 collectionID:(id)a4 shareMethod:(id)a5;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventContentShared

- (TPSAnalyticsEventContentShared)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TPSAnalyticsEventContentShared;
  v5 = [(TPSAnalyticsEvent *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    contentID = v5->_contentID;
    v5->_contentID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"share_method"];
    shareMethod = v5->_shareMethod;
    v5->_shareMethod = v10;
  }

  return v5;
}

- (id)_initWithContentID:(id)a3 collectionID:(id)a4 shareMethod:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventContentShared;
  v12 = [(TPSAnalyticsEvent *)&v15 initWithDate:0];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_contentID, a3);
    objc_storeStrong(p_isa + 5, a4);
    objc_storeStrong(p_isa + 6, a5);
  }

  return p_isa;
}

+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 shareMethod:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithContentID:v10 collectionID:v9 shareMethod:v8];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventContentShared;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_contentID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_collectionID forKey:@"collection_ID"];
  [v4 encodeObject:self->_shareMethod forKey:@"share_method"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_contentID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  [v3 setObject:self->_shareMethod forKeyedSubscript:@"share_method"];

  return v3;
}

@end