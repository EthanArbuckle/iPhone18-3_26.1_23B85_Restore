@interface SXResolvedAutoPlacement
- (SXResolvedAutoPlacement)initWithAdvertisement:(id)advertisement suggestedArticles:(id)articles;
@end

@implementation SXResolvedAutoPlacement

- (SXResolvedAutoPlacement)initWithAdvertisement:(id)advertisement suggestedArticles:(id)articles
{
  advertisementCopy = advertisement;
  articlesCopy = articles;
  v12.receiver = self;
  v12.super_class = SXResolvedAutoPlacement;
  v9 = [(SXResolvedAutoPlacement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_advertisement, advertisement);
    objc_storeStrong(&v10->_suggestedArticles, articles);
  }

  return v10;
}

@end