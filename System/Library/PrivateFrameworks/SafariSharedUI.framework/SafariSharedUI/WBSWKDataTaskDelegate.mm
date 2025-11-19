@interface WBSWKDataTaskDelegate
- (void)dataTask:(id)a3 didCompleteWithError:(id)a4;
- (void)dataTask:(id)a3 didReceiveData:(id)a4;
@end

@implementation WBSWKDataTaskDelegate

- (void)dataTask:(id)a3 didReceiveData:(id)a4
{
  didReceiveData = self->_didReceiveData;
  if (didReceiveData)
  {
    didReceiveData[2](didReceiveData, a3, a4);
  }
}

- (void)dataTask:(id)a3 didCompleteWithError:(id)a4
{
  didCompleteWithError = self->_didCompleteWithError;
  if (didCompleteWithError)
  {
    didCompleteWithError[2](didCompleteWithError, a3, a4);
  }
}

@end