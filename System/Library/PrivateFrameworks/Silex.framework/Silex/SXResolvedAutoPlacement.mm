@interface SXResolvedAutoPlacement
- (SXResolvedAutoPlacement)initWithAdvertisement:(id)a3 suggestedArticles:(id)a4;
@end

@implementation SXResolvedAutoPlacement

- (SXResolvedAutoPlacement)initWithAdvertisement:(id)a3 suggestedArticles:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXResolvedAutoPlacement;
  v9 = [(SXResolvedAutoPlacement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_advertisement, a3);
    objc_storeStrong(&v10->_suggestedArticles, a4);
  }

  return v10;
}

@end