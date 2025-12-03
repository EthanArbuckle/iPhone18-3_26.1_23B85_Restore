@interface SXEmailAddition
- (id)action;
@end

@implementation SXEmailAddition

- (id)action
{
  v3 = [SXEmailAction alloc];
  v4 = [(SXEmailAddition *)self to];
  subject = [(SXEmailAddition *)self subject];
  v6 = [(SXEmailAction *)v3 initWithRecipient:v4 subject:subject];

  return v6;
}

@end