@interface SCKPProvider
- (SCKPProvider)init;
- (void)requestCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply;
- (void)requestIdentifiedCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply;
@end

@implementation SCKPProvider

- (SCKPProvider)init
{
  v4.receiver = self;
  v4.super_class = SCKPProvider;
  v2 = [(SCKPProvider *)&v4 init];
  if (v2 && init_onceToken != -1)
  {
    [SCKPProvider init];
  }

  return v2;
}

- (void)requestCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SCKPProvider_requestCardSectionViewProviderForCard_delegate_reply___block_invoke;
  v10[3] = &unk_279C60118;
  v11 = replyCopy;
  v9 = replyCopy;
  [(SCKPProvider *)self requestIdentifiedCardSectionViewProviderForCard:card delegate:delegate reply:v10];
}

uint64_t __69__SCKPProvider_requestCardSectionViewProviderForCard_delegate_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestIdentifiedCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply
{
  if (reply)
  {
    replyCopy = reply;
    cardCopy = card;
    v8 = [[SCKPCardSectionViewProvider alloc] initWithCard:cardCopy];

    replyCopy[2](replyCopy, 0, v8);
  }
}

@end