@interface NSMutableDictionary
- (int64_t)sortPinInformationEarliestToLatest:(id)a3;
- (int64_t)sortPinInformationLeftToRight:(id)a3;
@end

@implementation NSMutableDictionary

- (int64_t)sortPinInformationLeftToRight:(id)a3
{
  [-[NSMutableDictionary objectForKey:](self objectForKey:{@"location", "CGPointValue"}];
  v5 = v4;
  [objc_msgSend(a3 objectForKey:{@"location", "CGPointValue"}];
  return v5 > v6;
}

- (int64_t)sortPinInformationEarliestToLatest:(id)a3
{
  [-[NSMutableDictionary objectForKey:](self objectForKey:{@"date", "doubleValue"}];
  v5 = v4;
  [objc_msgSend(a3 objectForKey:{@"date", "doubleValue"}];
  return v5 > v6;
}

@end