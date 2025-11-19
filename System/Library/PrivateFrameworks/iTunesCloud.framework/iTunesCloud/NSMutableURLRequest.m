@interface NSMutableURLRequest
@end

@implementation NSMutableURLRequest

void __57__NSMutableURLRequest_ICAdditions__ic_appendHTTPCookies___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  if ([v5 length])
  {
    [*(a1 + 32) appendString:@"; "];
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@=%@", v7, v6];

  [*(a1 + 32) appendString:v8];
}

@end