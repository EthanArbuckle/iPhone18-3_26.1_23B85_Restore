@interface IMURLRequestService
- (NSURLSessionDelegate)urlSessionDelegate;
- (void)setUrlSessionDelegate:(id)a3;
@end

@implementation IMURLRequestService

- (NSURLSessionDelegate)urlSessionDelegate
{
  v2 = [(IMBaseStoreService *)self amsUrlSession];
  v3 = [v2 session];
  v4 = [v3 delegate];

  return v4;
}

- (void)setUrlSessionDelegate:(id)a3
{
  v4 = a3;
  v5 = [(IMBaseStoreService *)self amsUrlSession];
  [v5 setDelegate:v4];
}

@end