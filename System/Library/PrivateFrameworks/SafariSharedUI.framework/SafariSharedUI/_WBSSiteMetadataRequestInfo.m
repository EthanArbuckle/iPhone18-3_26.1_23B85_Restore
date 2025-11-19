@interface _WBSSiteMetadataRequestInfo
- (NSOperation)operation;
- (NSSet)requestTokens;
- (NSSet)tokens;
@end

@implementation _WBSSiteMetadataRequestInfo

- (NSOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

- (NSSet)requestTokens
{
  v2 = [(NSMutableSet *)self->_requestTokens copy];

  return v2;
}

- (NSSet)tokens
{
  v2 = [(NSMutableSet *)self->_tokens copy];

  return v2;
}

@end