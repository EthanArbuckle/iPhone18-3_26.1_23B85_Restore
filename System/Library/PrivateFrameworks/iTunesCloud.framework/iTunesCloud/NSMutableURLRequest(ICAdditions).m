@interface NSMutableURLRequest(ICAdditions)
- (void)ic_appendHTTPCookieWithName:()ICAdditions value:;
- (void)ic_appendHTTPCookies:()ICAdditions;
@end

@implementation NSMutableURLRequest(ICAdditions)

- (void)ic_appendHTTPCookieWithName:()ICAdditions value:
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [a1 ic_appendHTTPCookies:v9];
}

- (void)ic_appendHTTPCookies:()ICAdditions
{
  v4 = a3;
  v5 = [a1 ic_valueForHTTPHeaderField:@"Cookie"];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__NSMutableURLRequest_ICAdditions__ic_appendHTTPCookies___block_invoke;
  v8[3] = &unk_1E7BF90C8;
  v9 = v6;
  v7 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  [a1 setValue:v7 forHTTPHeaderField:@"Cookie"];
}

@end