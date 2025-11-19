@interface TraceComposeRecipientStatistics
@end

@implementation TraceComposeRecipientStatistics

void ___TraceComposeRecipientStatistics_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 containsObject:v4];
  v6 = [v4 personSuggestion];

  if (v5)
  {
    v7 = 40;
    if (!v6)
    {
      v7 = 48;
    }
  }

  else
  {
    if (!v6)
    {
      return;
    }

    v7 = 56;
  }

  ++*(*(*(a1 + v7) + 8) + 24);
}

@end