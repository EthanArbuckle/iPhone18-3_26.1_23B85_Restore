@interface SUICGetViewModelVoicesForVoiceCollection
@end

@implementation SUICGetViewModelVoicesForVoiceCollection

uint64_t ___SUICGetViewModelVoicesForVoiceCollection_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E698D178];
  v6 = a3;
  v7 = a2;
  v8 = [v5 sharedInstance];
  v9 = [v8 outputVoiceComparator];
  v10 = v4 == 0;
  if (v4)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v10)
  {
    v7 = v6;
  }

  v12 = [v11 voiceInfo];

  v13 = [v7 voiceInfo];

  v14 = (v9)[2](v9, v12, v13);
  return v14;
}

@end