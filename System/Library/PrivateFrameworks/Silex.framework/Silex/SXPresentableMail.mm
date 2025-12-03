@interface SXPresentableMail
- (SXPresentableMail)initWithRecipient:(id)recipient subject:(id)subject;
@end

@implementation SXPresentableMail

- (SXPresentableMail)initWithRecipient:(id)recipient subject:(id)subject
{
  recipientCopy = recipient;
  subjectCopy = subject;
  v12.receiver = self;
  v12.super_class = SXPresentableMail;
  v9 = [(SXPresentableMail *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recipient, recipient);
    objc_storeStrong(&v10->_subject, subject);
  }

  return v10;
}

@end