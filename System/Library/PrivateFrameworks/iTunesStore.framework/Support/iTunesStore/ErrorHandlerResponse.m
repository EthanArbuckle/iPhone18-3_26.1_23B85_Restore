@interface ErrorHandlerResponse
- (void)dealloc;
@end

@implementation ErrorHandlerResponse

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ErrorHandlerResponse;
  [(ErrorHandlerResponse *)&v3 dealloc];
}

@end