@interface SFDynamicButtonVisibilityFeedback
- (SFDynamicButtonVisibilityFeedback)initWithCardSection:(id)a3 buttons:(id)a4;
- (SFDynamicButtonVisibilityFeedback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFDynamicButtonVisibilityFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFDynamicButtonVisibilityFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_buttons forKey:{@"_buttons", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_cardSection forKey:@"_cardSection"];
}

- (SFDynamicButtonVisibilityFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFDynamicButtonVisibilityFeedback;
  v5 = [(SFFeedback *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"_buttons"];
    buttons = v5->_buttons;
    v5->_buttons = v6;

    v8 = [v4 decodeObjectForKey:@"_cardSection"];
    cardSection = v5->_cardSection;
    v5->_cardSection = v8;

    v10 = v5;
  }

  return v5;
}

- (SFDynamicButtonVisibilityFeedback)initWithCardSection:(id)a3 buttons:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SFDynamicButtonVisibilityFeedback;
  v8 = [(SFFeedback *)&v15 init];
  if (v8)
  {
    v9 = [v7 copy];
    buttons = v8->_buttons;
    v8->_buttons = v9;

    v11 = [v6 copy];
    cardSection = v8->_cardSection;
    v8->_cardSection = v11;

    v13 = v8;
  }

  return v8;
}

@end