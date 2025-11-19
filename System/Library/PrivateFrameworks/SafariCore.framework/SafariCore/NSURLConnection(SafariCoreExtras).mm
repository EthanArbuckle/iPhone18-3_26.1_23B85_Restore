@interface NSURLConnection(SafariCoreExtras)
+ (WBSAsynchronousRequestHelper)safari_sendAsynchronousRequest:()SafariCoreExtras queue:completionHandler:;
@end

@implementation NSURLConnection(SafariCoreExtras)

+ (WBSAsynchronousRequestHelper)safari_sendAsynchronousRequest:()SafariCoreExtras queue:completionHandler:
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[WBSAsynchronousRequestHelper alloc] initWithRequest:v9 queue:v8 completionHandler:v7];

  [(WBSAsynchronousRequestHelper *)v10 sendRequest];

  return v10;
}

@end