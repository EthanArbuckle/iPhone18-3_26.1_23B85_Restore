@interface SXDefaultComponentState
- (SXDefaultComponentState)init;
@end

@implementation SXDefaultComponentState

- (SXDefaultComponentState)init
{
  v6.receiver = self;
  v6.super_class = SXDefaultComponentState;
  v2 = [(SXDefaultComponentState *)&v6 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = @"component.default";
  }

  return v3;
}

@end