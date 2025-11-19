@interface SFStoreCardSectionEngagementFeedback
- (SFStoreCardSectionEngagementFeedback)initWithCoder:(id)a3;
- (SFStoreCardSectionEngagementFeedback)initWithProductPageResult:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFStoreCardSectionEngagementFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFStoreCardSectionEngagementFeedback;
  v4 = a3;
  [(SFCardSectionEngagementFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_productPageResult forKey:{@"_productPageResult", v5.receiver, v5.super_class}];
}

- (SFStoreCardSectionEngagementFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SFStoreCardSectionEngagementFeedback;
  v5 = [(SFCardSectionEngagementFeedback *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_productPageResult = [v4 decodeInt32ForKey:@"_productPageResult"];
  }

  return v5;
}

- (SFStoreCardSectionEngagementFeedback)initWithProductPageResult:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SFStoreCardSectionEngagementFeedback;
  result = [(SFCardSectionEngagementFeedback *)&v5 initWithCardSection:0 destination:0 triggerEvent:2 actionCardType:3];
  if (result)
  {
    result->_productPageResult = a3;
  }

  return result;
}

@end