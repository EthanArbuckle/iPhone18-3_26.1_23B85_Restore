@interface SFCommandEngagementFeedback
- (SFCommandEngagementFeedback)initWithCoder:(id)a3;
- (SFCommandEngagementFeedback)initWithCommand:(id)a3 cardSection:(id)a4;
- (SFCommandEngagementFeedback)initWithCommand:(id)a3 cardSection:(id)a4 result:(id)a5 button:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCommandEngagementFeedback

- (id)copyWithZone:(_NSZone *)a3
{
  v24.receiver = self;
  v24.super_class = SFCommandEngagementFeedback;
  v4 = [(SFFeedback *)&v24 copyWithZone:a3];
  v5 = [(SFCommandEngagementFeedback *)self command];
  v6 = [v5 copy];
  v7 = v4[5];
  v4[5] = v6;

  v8 = [(SFCommandEngagementFeedback *)self cardSection];
  v9 = [v8 copy];
  v10 = v4[6];
  v4[6] = v9;

  v11 = [(SFCommandEngagementFeedback *)self result];
  v12 = [v11 copy];
  v13 = v4[3];
  v4[3] = v12;

  v14 = [(SFCommandEngagementFeedback *)self button];
  v15 = [v14 copy];
  v16 = v4[7];
  v4[7] = v15;

  v4[4] = [(SFCommandEngagementFeedback *)self triggerEvent];
  v17 = [(SFCommandEngagementFeedback *)self resultSection];
  v18 = [v17 copy];
  v19 = v4[8];
  v4[8] = v18;

  v20 = [(SFCommandEngagementFeedback *)self photosAttributes];
  v21 = [v20 copy];
  v22 = v4[9];
  v4[9] = v21;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFCommandEngagementFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_result forKey:{@"_result", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_cardSection forKey:@"_cardSection"];
  [v4 encodeObject:self->_button forKey:@"_button"];
  [v4 encodeObject:self->_command forKey:@"_command"];
  [v4 encodeInteger:self->_triggerEvent forKey:@"_triggerEvent"];
  [v4 encodeObject:self->_resultSection forKey:@"_resultSection"];
  [v4 encodeObject:self->_photosAttributes forKey:@"_photosAttributes"];
}

- (SFCommandEngagementFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SFCommandEngagementFeedback;
  v5 = [(SFFeedback *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_result"];
    v7 = v5->_result;
    v5->_result = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cardSection"];
    cardSection = v5->_cardSection;
    v5->_cardSection = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_button"];
    button = v5->_button;
    v5->_button = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_command"];
    command = v5->_command;
    v5->_command = v12;

    v5->_triggerEvent = [v4 decodeIntegerForKey:@"_triggerEvent"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resultSection"];
    resultSection = v5->_resultSection;
    v5->_resultSection = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_photosAttributes"];
    photosAttributes = v5->_photosAttributes;
    v5->_photosAttributes = v16;

    v18 = v5;
  }

  return v5;
}

- (SFCommandEngagementFeedback)initWithCommand:(id)a3 cardSection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SFCommandEngagementFeedback;
  v9 = [(SFFeedback *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_command, a3);
    objc_storeStrong(&v10->_cardSection, a4);
  }

  return v10;
}

- (SFCommandEngagementFeedback)initWithCommand:(id)a3 cardSection:(id)a4 result:(id)a5 button:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(SFCommandEngagementFeedback *)self initWithCommand:a3 cardSection:a4];
  v13 = v12;
  if (v12)
  {
    [(SFCommandEngagementFeedback *)v12 setResult:v10];
    [(SFCommandEngagementFeedback *)v13 setButton:v11];
    v14 = v13;
  }

  return v13;
}

@end