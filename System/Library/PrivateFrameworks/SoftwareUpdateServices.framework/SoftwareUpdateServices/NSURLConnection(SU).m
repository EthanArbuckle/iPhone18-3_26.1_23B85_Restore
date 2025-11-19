@interface NSURLConnection(SU)
+ (id)sendSynchronousRequest:()SU allowRedirects:returningResponse:error:;
@end

@implementation NSURLConnection(SU)

+ (id)sendSynchronousRequest:()SU allowRedirects:returningResponse:error:
{
  v9 = a3;
  v10 = [[SUHttpOperation alloc] initWithRequest:v9];

  [(SUHttpOperation *)v10 setAllowRedirects:a4];
  v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v11 addOperation:v10];
  [v11 waitUntilAllOperationsAreFinished];
  v12 = [(SUHttpOperation *)v10 data];
  if (a5)
  {
    *a5 = [(SUHttpOperation *)v10 response];
  }

  if (a6)
  {
    *a6 = [(SUHttpOperation *)v10 error];
  }

  return v12;
}

@end