@interface SUComposeTextFieldConfiguration
- (UIEdgeInsets)borderInsets;
- (void)dealloc;
@end

@implementation SUComposeTextFieldConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUComposeTextFieldConfiguration;
  [(SUComposeTextFieldConfiguration *)&v3 dealloc];
}

- (UIEdgeInsets)borderInsets
{
  top = self->_borderInsets.top;
  left = self->_borderInsets.left;
  bottom = self->_borderInsets.bottom;
  right = self->_borderInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end