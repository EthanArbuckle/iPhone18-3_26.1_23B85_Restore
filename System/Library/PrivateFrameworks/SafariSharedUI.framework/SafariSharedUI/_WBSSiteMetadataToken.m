@interface _WBSSiteMetadataToken
- (NSSet)parentRequests;
@end

@implementation _WBSSiteMetadataToken

- (NSSet)parentRequests
{
  v2 = [(NSMutableSet *)self->_parentRequests copy];

  return v2;
}

@end