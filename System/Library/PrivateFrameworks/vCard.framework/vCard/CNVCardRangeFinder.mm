@interface CNVCardRangeFinder
+ (id)allRangesInData:(id)data;
+ (id)rangesInData:(id)data;
@end

@implementation CNVCardRangeFinder

+ (id)allRangesInData:(id)data
{
  v3 = [self rangesInData:data];
  v8 = 0;
  v4 = [v3 allObjects:&v8];
  v5 = v8;

  v6 = [MEMORY[0x277CFBDF8] eitherWithLeft:v4 right:v5];

  return v6;
}

+ (id)rangesInData:(id)data
{
  dataCopy = data;
  v4 = (*(*MEMORY[0x277CFBD00] + 16))();
  v5 = MEMORY[0x277CFBE60];
  if (v4)
  {
    emptyObservable = [MEMORY[0x277CFBE60] emptyObservable];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__CNVCardRangeFinder_rangesInData___block_invoke;
    v8[3] = &unk_27A710DF8;
    v9 = dataCopy;
    emptyObservable = [v5 observableWithBlock:v8];
  }

  return emptyObservable;
}

id __35__CNVCardRangeFinder_rangesInData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) length];
  v5 = [CNVCardDataAnalyzer analyzeData:*(a1 + 32)];
  v6 = [@"BEGIN:VCARD" dataUsingEncoding:v5];
  v7 = [@"END:VCARD" dataUsingEncoding:v5];
  v8 = [@"\r" dataUsingEncoding:v5];
  v9 = [@"\n" dataUsingEncoding:v5];
  if (v4)
  {
    v10 = 0;
    do
    {
      v11 = [*(a1 + 32) rangeOfData:v6 options:0 range:{v10, v4}];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v13 = v11;
      v14 = [*(a1 + 32) rangeOfData:v7 options:0 range:{v11 + v12, objc_msgSend(*(a1 + 32), "length") - (v11 + v12)}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      do
      {
        do
        {
          v10 = v14 + v15;
          v16 = [*(a1 + 32) length];
          v4 = v16 - v10;
          v14 = [*(a1 + 32) rangeOfData:v8 options:2 range:{v10, v16 - v10}];
        }

        while (v14 != 0x7FFFFFFFFFFFFFFFLL);
        v14 = [*(a1 + 32) rangeOfData:v9 options:2 range:{v10, v4}];
      }

      while (v14 != 0x7FFFFFFFFFFFFFFFLL);
      v17 = [MEMORY[0x277CCAE60] valueWithRange:{v13, v10 - v13}];
      [v3 observerDidReceiveResult:v17];
    }

    while (v4);
  }

  [v3 observerDidComplete];
  v18 = objc_alloc_init(MEMORY[0x277CFBDC8]);

  return v18;
}

@end