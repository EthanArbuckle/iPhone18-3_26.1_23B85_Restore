@interface NSItemProvider(NSURL)
+ (id)itemProviderWithURL:()NSURL title:;
@end

@implementation NSItemProvider(NSURL)

+ (id)itemProviderWithURL:()NSURL title:
{
  v5 = a3;
  [v5 _setTitle:a4];
  v6 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v5];

  return v6;
}

@end