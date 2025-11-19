@interface NSURLRequest(StocksEasyPrinting)
- (id)HTTPBodyString;
@end

@implementation NSURLRequest(StocksEasyPrinting)

- (id)HTTPBodyString
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [a1 HTTPBody];
  v4 = [v2 initWithData:v3 encoding:4];

  return v4;
}

@end