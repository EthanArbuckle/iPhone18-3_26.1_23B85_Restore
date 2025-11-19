@interface WBSLazyString
- (NSString)string;
- (WBSLazyString)initWithProvider:(id)a3;
@end

@implementation WBSLazyString

- (WBSLazyString)initWithProvider:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSLazyString;
  v5 = [(WBSLazyString *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    provider = v5->_provider;
    v5->_provider = v6;

    v8 = v5;
  }

  return v5;
}

- (NSString)string
{
  string = self->_string;
  if (!string)
  {
    v4 = (*(self->_provider + 2))();
    v5 = self->_string;
    self->_string = v4;

    provider = self->_provider;
    self->_provider = 0;

    string = self->_string;
  }

  return string;
}

@end