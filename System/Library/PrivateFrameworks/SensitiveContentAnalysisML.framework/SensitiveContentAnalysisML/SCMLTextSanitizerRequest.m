@interface SCMLTextSanitizerRequest
- (SCMLTextSanitizerRequest)init;
@end

@implementation SCMLTextSanitizerRequest

- (SCMLTextSanitizerRequest)init
{
  v6.receiver = self;
  v6.super_class = SCMLTextSanitizerRequest;
  v2 = [(SCMLTextSanitizerRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    text = v2->_text;
    v2->_text = &stru_1F374C020;

    *&v3->_keepGoing = 0;
    v3->_isChildPresent = 0;
    v3->_style = 0;
  }

  return v3;
}

@end