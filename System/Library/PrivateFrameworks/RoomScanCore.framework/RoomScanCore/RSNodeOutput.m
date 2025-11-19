@interface RSNodeOutput
- (RSNodeConnection)connection;
@end

@implementation RSNodeOutput

- (RSNodeConnection)connection
{
  v3 = objc_msgSend_consumer(self, a2, v2);
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end