@interface SFCardSectionEngagementFeedback
- (SFCardSectionEngagementFeedback)initWithCardSection:(id)section destination:(id)destination triggerEvent:(unint64_t)event actionCardType:(unint64_t)type;
- (SFCardSectionEngagementFeedback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCardSectionEngagementFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFCardSectionEngagementFeedback;
  coderCopy = coder;
  [(SFCardSectionFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_triggerEvent forKey:{@"trigger_event", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_actionCardType forKey:@"action_type_card"];
  [coderCopy encodeObject:self->_destination forKey:@"_destination"];
}

- (SFCardSectionEngagementFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFCardSectionEngagementFeedback;
  v5 = [(SFCardSectionFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_triggerEvent = [coderCopy decodeIntegerForKey:@"trigger_event"];
    v5->_actionCardType = [coderCopy decodeIntegerForKey:@"action_type_card"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_destination"];
    destination = v5->_destination;
    v5->_destination = v6;
  }

  return v5;
}

- (SFCardSectionEngagementFeedback)initWithCardSection:(id)section destination:(id)destination triggerEvent:(unint64_t)event actionCardType:(unint64_t)type
{
  destinationCopy = destination;
  v15.receiver = self;
  v15.super_class = SFCardSectionEngagementFeedback;
  v12 = [(SFCardSectionFeedback *)&v15 initWithCardSection:section];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_destination, destination);
    v13->_triggerEvent = event;
    v13->_actionCardType = type;
  }

  return v13;
}

@end