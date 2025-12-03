@interface NSError
+ (id)pvai_wrappedError:(int64_t)error error:(id)a4;
@end

@implementation NSError

+ (id)pvai_wrappedError:(int64_t)error error:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    domain = [v5 domain];
    v8 = [domain isEqualToString:@"com.apple.devicecheck.error.pvappidentity"];

    if (v8)
    {
      v9 = v6;
      goto LABEL_7;
    }

    v10 = objc_alloc_init(NSMutableDictionary);
    [v10 setObject:v6 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  else
  {
    v10 = objc_alloc_init(NSMutableDictionary);
  }

  v9 = [NSError pvai_errorWithCode:error userInfo:v10];

LABEL_7:

  return v9;
}

@end