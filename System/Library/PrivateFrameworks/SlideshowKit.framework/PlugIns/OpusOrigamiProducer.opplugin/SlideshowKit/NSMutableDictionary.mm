@interface NSMutableDictionary
- (int64_t)sortPinInformationEarliestToLatest:(id)latest;
- (int64_t)sortPinInformationLeftToRight:(id)right;
@end

@implementation NSMutableDictionary

- (int64_t)sortPinInformationLeftToRight:(id)right
{
  [-[NSMutableDictionary objectForKey:](self objectForKey:{@"location", "CGPointValue"}];
  v5 = v4;
  [objc_msgSend(right objectForKey:{@"location", "CGPointValue"}];
  return v5 > v6;
}

- (int64_t)sortPinInformationEarliestToLatest:(id)latest
{
  [-[NSMutableDictionary objectForKey:](self objectForKey:{@"date", "doubleValue"}];
  v5 = v4;
  [objc_msgSend(latest objectForKey:{@"date", "doubleValue"}];
  return v5 > v6;
}

@end