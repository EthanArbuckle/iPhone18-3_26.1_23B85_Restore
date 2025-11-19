@interface NSInputStream(SafariCoreExtras)
- (BOOL)safari_readNetworkOrderUInt16:()SafariCoreExtras;
- (BOOL)safari_readNetworkOrderUInt32:()SafariCoreExtras;
- (id)safari_readAllData;
@end

@implementation NSInputStream(SafariCoreExtras)

- (BOOL)safari_readNetworkOrderUInt16:()SafariCoreExtras
{
  v4 = [a1 read:a3 maxLength:2];
  if (v4 == 2)
  {
    *a3 = bswap32(*a3) >> 16;
  }

  return v4 == 2;
}

- (BOOL)safari_readNetworkOrderUInt32:()SafariCoreExtras
{
  v4 = [a1 read:a3 maxLength:4];
  if (v4 == 4)
  {
    *a3 = bswap32(*a3);
  }

  return v4 == 4;
}

- (id)safari_readAllData
{
  v2 = malloc_type_malloc(0x4000uLL, 0x9A1CDEEAuLL);
  v3 = [a1 streamStatus];
  v4 = v3 == 0;
  if (!v3)
  {
    [a1 open];
  }

  v5 = objc_alloc_init(WBSScopeExitHandler);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__NSInputStream_SafariCoreExtras__safari_readAllData__block_invoke;
  v10[3] = &unk_1E7CF29B0;
  v11 = v4;
  v10[4] = a1;
  v10[5] = v2;
  [(WBSScopeExitHandler *)v5 setHandler:v10];
  v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if ([a1 hasBytesAvailable])
  {
    do
    {
      v7 = [a1 read:v2 maxLength:0x4000];
      if (!v7)
      {
        break;
      }

      if (v7 < 0)
      {
        v8 = 0;
        goto LABEL_8;
      }

      [v6 appendBytes:v2 length:v7];
    }

    while (([a1 hasBytesAvailable] & 1) != 0);
  }

  v8 = v6;
LABEL_8:

  return v8;
}

@end