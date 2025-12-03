@interface NSURLRequest(print)
- (id)psso_DisplayRequest;
@end

@implementation NSURLRequest(print)

- (id)psso_DisplayRequest
{
  v2 = [self URL];

  if (v2)
  {
    v3 = MEMORY[0x277CCACE0];
    v4 = [self URL];
    absoluteString = [v4 absoluteString];
    v6 = [v3 componentsWithString:absoluteString];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__3;
    v28 = __Block_byref_object_dispose__3;
    v7 = MEMORY[0x277CCACA8];
    hTTPMethod = [self HTTPMethod];
    path = [v6 path];
    v29 = [v7 stringWithFormat:@"%@ %@ %@\n", hTTPMethod, path, @"HTTP/1.1"];

    v10 = v25[5];
    host = [v6 host];
    v12 = [v10 stringByAppendingFormat:@"%@ %@\n", @"Host:", host];
    v13 = v25[5];
    v25[5] = v12;

    allHTTPHeaderFields = [self allHTTPHeaderFields];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__NSURLRequest_print__psso_DisplayRequest__block_invoke;
    v23[3] = &unk_279A3E7E8;
    v23[4] = &v24;
    [allHTTPHeaderFields enumerateKeysAndObjectsUsingBlock:v23];

    v15 = v25[5];
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    hTTPBody = [self HTTPBody];
    v18 = [v16 initWithData:hTTPBody encoding:4];
    v19 = [v15 stringByAppendingFormat:@"\n%@\n", v18];
    v20 = v25[5];
    v25[5] = v19;

    v21 = v25[5];
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end