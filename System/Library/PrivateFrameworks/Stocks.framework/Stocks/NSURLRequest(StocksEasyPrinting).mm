@interface NSURLRequest(StocksEasyPrinting)
- (id)HTTPBodyString;
@end

@implementation NSURLRequest(StocksEasyPrinting)

- (id)HTTPBodyString
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  hTTPBody = [self HTTPBody];
  v4 = [v2 initWithData:hTTPBody encoding:4];

  return v4;
}

@end