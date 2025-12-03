@interface SXEmailAction
- (SXEmailAction)initWithRecipient:(id)recipient subject:(id)subject;
@end

@implementation SXEmailAction

- (SXEmailAction)initWithRecipient:(id)recipient subject:(id)subject
{
  recipientCopy = recipient;
  subjectCopy = subject;
  v12.receiver = self;
  v12.super_class = SXEmailAction;
  v9 = [(SXEmailAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subject, subject);
    objc_storeStrong(&v10->_recipient, recipient);
  }

  return v10;
}

@end