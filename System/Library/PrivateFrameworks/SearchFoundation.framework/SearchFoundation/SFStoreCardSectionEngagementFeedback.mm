@interface SFStoreCardSectionEngagementFeedback
- (SFStoreCardSectionEngagementFeedback)initWithCoder:(id)coder;
- (SFStoreCardSectionEngagementFeedback)initWithProductPageResult:(int64_t)result;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFStoreCardSectionEngagementFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFStoreCardSectionEngagementFeedback;
  coderCopy = coder;
  [(SFCardSectionEngagementFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_productPageResult forKey:{@"_productPageResult", v5.receiver, v5.super_class}];
}

- (SFStoreCardSectionEngagementFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SFStoreCardSectionEngagementFeedback;
  v5 = [(SFCardSectionEngagementFeedback *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_productPageResult = [coderCopy decodeInt32ForKey:@"_productPageResult"];
  }

  return v5;
}

- (SFStoreCardSectionEngagementFeedback)initWithProductPageResult:(int64_t)result
{
  v5.receiver = self;
  v5.super_class = SFStoreCardSectionEngagementFeedback;
  result = [(SFCardSectionEngagementFeedback *)&v5 initWithCardSection:0 destination:0 triggerEvent:2 actionCardType:3];
  if (result)
  {
    result->_productPageResult = result;
  }

  return result;
}

@end