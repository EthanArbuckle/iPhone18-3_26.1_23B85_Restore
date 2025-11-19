@interface SXEmailAction
- (SXEmailAction)initWithRecipient:(id)a3 subject:(id)a4;
@end

@implementation SXEmailAction

- (SXEmailAction)initWithRecipient:(id)a3 subject:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXEmailAction;
  v9 = [(SXEmailAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subject, a4);
    objc_storeStrong(&v10->_recipient, a3);
  }

  return v10;
}

@end