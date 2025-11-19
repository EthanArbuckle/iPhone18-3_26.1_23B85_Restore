@interface SFCardSection(Feedback)
- (id)copyForFeedback;
@end

@implementation SFCardSection(Feedback)

- (id)copyForFeedback
{
  v1 = [a1 nextCard];

  if (v1)
  {

    return [a1 copy];
  }

  else
  {

    return a1;
  }
}

@end