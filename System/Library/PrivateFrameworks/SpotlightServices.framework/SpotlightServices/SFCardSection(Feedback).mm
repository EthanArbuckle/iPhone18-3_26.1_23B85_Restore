@interface SFCardSection(Feedback)
- (id)copyForFeedback;
@end

@implementation SFCardSection(Feedback)

- (id)copyForFeedback
{
  nextCard = [self nextCard];

  if (nextCard)
  {

    return [self copy];
  }

  else
  {

    return self;
  }
}

@end