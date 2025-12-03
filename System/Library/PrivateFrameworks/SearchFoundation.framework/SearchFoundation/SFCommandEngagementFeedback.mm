@interface SFCommandEngagementFeedback
- (SFCommandEngagementFeedback)initWithCoder:(id)coder;
- (SFCommandEngagementFeedback)initWithCommand:(id)command cardSection:(id)section;
- (SFCommandEngagementFeedback)initWithCommand:(id)command cardSection:(id)section result:(id)result button:(id)button;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCommandEngagementFeedback

- (id)copyWithZone:(_NSZone *)zone
{
  v24.receiver = self;
  v24.super_class = SFCommandEngagementFeedback;
  v4 = [(SFFeedback *)&v24 copyWithZone:zone];
  command = [(SFCommandEngagementFeedback *)self command];
  v6 = [command copy];
  v7 = v4[5];
  v4[5] = v6;

  cardSection = [(SFCommandEngagementFeedback *)self cardSection];
  v9 = [cardSection copy];
  v10 = v4[6];
  v4[6] = v9;

  result = [(SFCommandEngagementFeedback *)self result];
  v12 = [result copy];
  v13 = v4[3];
  v4[3] = v12;

  button = [(SFCommandEngagementFeedback *)self button];
  v15 = [button copy];
  v16 = v4[7];
  v4[7] = v15;

  v4[4] = [(SFCommandEngagementFeedback *)self triggerEvent];
  resultSection = [(SFCommandEngagementFeedback *)self resultSection];
  v18 = [resultSection copy];
  v19 = v4[8];
  v4[8] = v18;

  photosAttributes = [(SFCommandEngagementFeedback *)self photosAttributes];
  v21 = [photosAttributes copy];
  v22 = v4[9];
  v4[9] = v21;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFCommandEngagementFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_result forKey:{@"_result", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_cardSection forKey:@"_cardSection"];
  [coderCopy encodeObject:self->_button forKey:@"_button"];
  [coderCopy encodeObject:self->_command forKey:@"_command"];
  [coderCopy encodeInteger:self->_triggerEvent forKey:@"_triggerEvent"];
  [coderCopy encodeObject:self->_resultSection forKey:@"_resultSection"];
  [coderCopy encodeObject:self->_photosAttributes forKey:@"_photosAttributes"];
}

- (SFCommandEngagementFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = SFCommandEngagementFeedback;
  v5 = [(SFFeedback *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_result"];
    v7 = v5->_result;
    v5->_result = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cardSection"];
    cardSection = v5->_cardSection;
    v5->_cardSection = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_button"];
    button = v5->_button;
    v5->_button = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_command"];
    command = v5->_command;
    v5->_command = v12;

    v5->_triggerEvent = [coderCopy decodeIntegerForKey:@"_triggerEvent"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resultSection"];
    resultSection = v5->_resultSection;
    v5->_resultSection = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_photosAttributes"];
    photosAttributes = v5->_photosAttributes;
    v5->_photosAttributes = v16;

    v18 = v5;
  }

  return v5;
}

- (SFCommandEngagementFeedback)initWithCommand:(id)command cardSection:(id)section
{
  commandCopy = command;
  sectionCopy = section;
  v12.receiver = self;
  v12.super_class = SFCommandEngagementFeedback;
  v9 = [(SFFeedback *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_command, command);
    objc_storeStrong(&v10->_cardSection, section);
  }

  return v10;
}

- (SFCommandEngagementFeedback)initWithCommand:(id)command cardSection:(id)section result:(id)result button:(id)button
{
  resultCopy = result;
  buttonCopy = button;
  v12 = [(SFCommandEngagementFeedback *)self initWithCommand:command cardSection:section];
  v13 = v12;
  if (v12)
  {
    [(SFCommandEngagementFeedback *)v12 setResult:resultCopy];
    [(SFCommandEngagementFeedback *)v13 setButton:buttonCopy];
    v14 = v13;
  }

  return v13;
}

@end