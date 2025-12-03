@interface SFDynamicButtonVisibilityFeedback
- (SFDynamicButtonVisibilityFeedback)initWithCardSection:(id)section buttons:(id)buttons;
- (SFDynamicButtonVisibilityFeedback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFDynamicButtonVisibilityFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFDynamicButtonVisibilityFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_buttons forKey:{@"_buttons", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_cardSection forKey:@"_cardSection"];
}

- (SFDynamicButtonVisibilityFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SFDynamicButtonVisibilityFeedback;
  v5 = [(SFFeedback *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"_buttons"];
    buttons = v5->_buttons;
    v5->_buttons = v6;

    v8 = [coderCopy decodeObjectForKey:@"_cardSection"];
    cardSection = v5->_cardSection;
    v5->_cardSection = v8;

    v10 = v5;
  }

  return v5;
}

- (SFDynamicButtonVisibilityFeedback)initWithCardSection:(id)section buttons:(id)buttons
{
  sectionCopy = section;
  buttonsCopy = buttons;
  v15.receiver = self;
  v15.super_class = SFDynamicButtonVisibilityFeedback;
  v8 = [(SFFeedback *)&v15 init];
  if (v8)
  {
    v9 = [buttonsCopy copy];
    buttons = v8->_buttons;
    v8->_buttons = v9;

    v11 = [sectionCopy copy];
    cardSection = v8->_cardSection;
    v8->_cardSection = v11;

    v13 = v8;
  }

  return v8;
}

@end