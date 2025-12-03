@interface SFMapsCardSectionEngagementFeedback
- (SFMapsCardSectionEngagementFeedback)initWithCoder:(id)coder;
- (SFMapsCardSectionEngagementFeedback)initWithFeedbackType:(int)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMapsCardSectionEngagementFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFMapsCardSectionEngagementFeedback;
  coderCopy = coder;
  [(SFCardSectionEngagementFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_feedbackType forKey:{@"_feedbackType", v5.receiver, v5.super_class}];
}

- (SFMapsCardSectionEngagementFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SFMapsCardSectionEngagementFeedback;
  v5 = [(SFCardSectionEngagementFeedback *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_feedbackType = [coderCopy decodeInt32ForKey:@"_feedbackType"];
  }

  return v5;
}

- (SFMapsCardSectionEngagementFeedback)initWithFeedbackType:(int)type
{
  v5.receiver = self;
  v5.super_class = SFMapsCardSectionEngagementFeedback;
  result = [(SFCardSectionEngagementFeedback *)&v5 initWithCardSection:0 destination:0 triggerEvent:2 actionCardType:2];
  if (result)
  {
    result->_feedbackType = type;
  }

  return result;
}

@end