@interface SCKPProvider
- (SCKPProvider)init;
- (void)requestCardSectionViewProviderForCard:(id)a3 delegate:(id)a4 reply:(id)a5;
- (void)requestIdentifiedCardSectionViewProviderForCard:(id)a3 delegate:(id)a4 reply:(id)a5;
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

- (void)requestCardSectionViewProviderForCard:(id)a3 delegate:(id)a4 reply:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SCKPProvider_requestCardSectionViewProviderForCard_delegate_reply___block_invoke;
  v10[3] = &unk_279C60118;
  v11 = v8;
  v9 = v8;
  [(SCKPProvider *)self requestIdentifiedCardSectionViewProviderForCard:a3 delegate:a4 reply:v10];
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

- (void)requestIdentifiedCardSectionViewProviderForCard:(id)a3 delegate:(id)a4 reply:(id)a5
{
  if (a5)
  {
    v6 = a5;
    v7 = a3;
    v8 = [[SCKPCardSectionViewProvider alloc] initWithCard:v7];

    v6[2](v6, 0, v8);
  }
}

@end