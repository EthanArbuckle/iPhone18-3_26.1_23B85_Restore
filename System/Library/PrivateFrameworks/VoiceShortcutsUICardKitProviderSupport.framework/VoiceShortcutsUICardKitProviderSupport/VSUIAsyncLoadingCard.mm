@interface VSUIAsyncLoadingCard
- (VSUIAsyncLoadingCard)initWithCard:(id)card;
@end

@implementation VSUIAsyncLoadingCard

- (VSUIAsyncLoadingCard)initWithCard:(id)card
{
  cardCopy = card;
  v10.receiver = self;
  v10.super_class = VSUIAsyncLoadingCard;
  v6 = [(CRBasicCard *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storedCard, card);
    v8 = v7;
  }

  return v7;
}

@end