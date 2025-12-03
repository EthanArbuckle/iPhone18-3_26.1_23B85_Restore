@interface WBSWKDataTaskDelegate
- (void)dataTask:(id)task didCompleteWithError:(id)error;
- (void)dataTask:(id)task didReceiveData:(id)data;
@end

@implementation WBSWKDataTaskDelegate

- (void)dataTask:(id)task didReceiveData:(id)data
{
  didReceiveData = self->_didReceiveData;
  if (didReceiveData)
  {
    didReceiveData[2](didReceiveData, task, data);
  }
}

- (void)dataTask:(id)task didCompleteWithError:(id)error
{
  didCompleteWithError = self->_didCompleteWithError;
  if (didCompleteWithError)
  {
    didCompleteWithError[2](didCompleteWithError, task, error);
  }
}

@end