@interface SKEventBasicConfigUpdated
- (SKEventBasicConfigUpdated)initWithBasicConfig:(id)a3;
- (id)descriptionWithLevel:(int)a3;
@end

@implementation SKEventBasicConfigUpdated

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v10 = [objc_opt_class() description];
    CUAppendF();
    v4 = 0;
  }

  basicConfig = self->_basicConfig;
  v11 = CUPrintNSObjectOneLine();
  CUAppendF();
  v6 = v4;

  v7 = &stru_2877689A8;
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (SKEventBasicConfigUpdated)initWithBasicConfig:(id)a3
{
  v4 = a3;
  v5 = [(SKEvent *)self initWithEventType:300];
  if (v5)
  {
    v6 = [v4 copy];
    basicConfig = v5->_basicConfig;
    v5->_basicConfig = v6;

    v8 = v5;
  }

  return v5;
}

@end