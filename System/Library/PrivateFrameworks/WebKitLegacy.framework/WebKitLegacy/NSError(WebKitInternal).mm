@interface NSError(WebKitInternal)
- (uint64_t)_webkit_initWithDomain:()WebKitInternal code:URL:;
@end

@implementation NSError(WebKitInternal)

- (uint64_t)_webkit_initWithDomain:()WebKitInternal code:URL:
{
  v9 = [descriptions objectForKey:?];
  v10 = [v9 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a4)}];
  v11 = MEMORY[0x1E695DF20];
  v12 = *MEMORY[0x1E696A980];
  absoluteString = [a5 absoluteString];
  v14 = [v11 dictionaryWithObjectsAndKeys:{a5, v12, absoluteString, @"NSErrorFailingURLStringKey", v10, *MEMORY[0x1E696A578], 0}];

  return [self initWithDomain:a3 code:a4 userInfo:v14];
}

@end