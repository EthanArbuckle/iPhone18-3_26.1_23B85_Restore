@interface SXPresentableMail
- (SXPresentableMail)initWithRecipient:(id)a3 subject:(id)a4;
@end

@implementation SXPresentableMail

- (SXPresentableMail)initWithRecipient:(id)a3 subject:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXPresentableMail;
  v9 = [(SXPresentableMail *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recipient, a3);
    objc_storeStrong(&v10->_subject, a4);
  }

  return v10;
}

@end