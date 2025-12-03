@interface NSURLResponse(ISAdditions)
- (uint64_t)itunes_allHeaderFields;
- (uint64_t)itunes_statusCode;
@end

@implementation NSURLResponse(ISAdditions)

- (uint64_t)itunes_statusCode
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 200;
  }

  return [self statusCode];
}

- (uint64_t)itunes_allHeaderFields
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [self allHeaderFields];
  }

  else
  {
    v3 = MEMORY[0x277CBEAC0];

    return [v3 dictionary];
  }
}

@end