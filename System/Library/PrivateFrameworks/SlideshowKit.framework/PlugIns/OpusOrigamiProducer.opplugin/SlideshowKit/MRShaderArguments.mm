@interface MRShaderArguments
- (void)dealloc;
@end

@implementation MRShaderArguments

- (void)dealloc
{
  self->_filter0 = 0;

  self->_filter1 = 0;
  self->_filter2 = 0;

  self->_filter3 = 0;
  v3.receiver = self;
  v3.super_class = MRShaderArguments;
  [(MRShaderArguments *)&v3 dealloc];
}

@end