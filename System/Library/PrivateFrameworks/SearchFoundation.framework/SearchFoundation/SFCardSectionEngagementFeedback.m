@interface SFCardSectionEngagementFeedback
- (SFCardSectionEngagementFeedback)initWithCardSection:(id)a3 destination:(id)a4 triggerEvent:(unint64_t)a5 actionCardType:(unint64_t)a6;
- (SFCardSectionEngagementFeedback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCardSectionEngagementFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFCardSectionEngagementFeedback;
  v4 = a3;
  [(SFCardSectionFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_triggerEvent forKey:{@"trigger_event", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_actionCardType forKey:@"action_type_card"];
  [v4 encodeObject:self->_destination forKey:@"_destination"];
}

- (SFCardSectionEngagementFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFCardSectionEngagementFeedback;
  v5 = [(SFCardSectionFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_triggerEvent = [v4 decodeIntegerForKey:@"trigger_event"];
    v5->_actionCardType = [v4 decodeIntegerForKey:@"action_type_card"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_destination"];
    destination = v5->_destination;
    v5->_destination = v6;
  }

  return v5;
}

- (SFCardSectionEngagementFeedback)initWithCardSection:(id)a3 destination:(id)a4 triggerEvent:(unint64_t)a5 actionCardType:(unint64_t)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = SFCardSectionEngagementFeedback;
  v12 = [(SFCardSectionFeedback *)&v15 initWithCardSection:a3];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_destination, a4);
    v13->_triggerEvent = a5;
    v13->_actionCardType = a6;
  }

  return v13;
}

@end