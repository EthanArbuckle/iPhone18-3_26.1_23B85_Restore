@interface IMURLRequestService
- (NSURLSessionDelegate)urlSessionDelegate;
- (void)setUrlSessionDelegate:(id)delegate;
@end

@implementation IMURLRequestService

- (NSURLSessionDelegate)urlSessionDelegate
{
  amsUrlSession = [(IMBaseStoreService *)self amsUrlSession];
  session = [amsUrlSession session];
  delegate = [session delegate];

  return delegate;
}

- (void)setUrlSessionDelegate:(id)delegate
{
  delegateCopy = delegate;
  amsUrlSession = [(IMBaseStoreService *)self amsUrlSession];
  [amsUrlSession setDelegate:delegateCopy];
}

@end