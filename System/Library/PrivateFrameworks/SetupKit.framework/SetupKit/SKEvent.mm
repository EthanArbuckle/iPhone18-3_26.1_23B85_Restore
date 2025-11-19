@interface SKEvent
- (SKEvent)initWithEventType:(int)a3;
- (SKEvent)initWithEventType:(int)a3 error:(id)a4;
- (id)descriptionWithLevel:(int)a3;
@end

@implementation SKEvent

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v13 = [objc_opt_class() description];
    CUAppendF();
    v4 = 0;
  }

  if (self->_eventType)
  {
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  error = self->_error;
  if (error)
  {
    v8 = error;
    v14 = CUPrintNSError();
    CUAppendF();
    v9 = v4;

    v4 = v9;
  }

  v10 = &stru_2877689A8;
  if (v4)
  {
    v10 = v4;
  }

  v11 = v10;

  return v11;
}

- (SKEvent)initWithEventType:(int)a3 error:(id)a4
{
  v7 = a4;
  v8 = [(SKEvent *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, a4);
    v9->_eventType = a3;
    v10 = v9;
  }

  return v9;
}

- (SKEvent)initWithEventType:(int)a3
{
  v4 = [(SKEvent *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_eventType = a3;
    v6 = v4;
  }

  return v5;
}

@end