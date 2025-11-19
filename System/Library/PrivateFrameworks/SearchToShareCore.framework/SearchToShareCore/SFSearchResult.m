@interface SFSearchResult
@end

@implementation SFSearchResult

uint64_t __70__SFSearchResult_SearchToShare__sts_providerIconWithScale_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D755B8] imageWithData:a2 scale:*(a1 + 40)];
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    v4 = (*(v4 + 16))();
    v3 = v6;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

@end