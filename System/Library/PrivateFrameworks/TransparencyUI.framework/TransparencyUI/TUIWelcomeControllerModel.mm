@interface TUIWelcomeControllerModel
- (NSString)description;
- (TUIWelcomeControllerModel)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUIWelcomeControllerModel

- (void)encodeWithCoder:(id)coder
{
  symbolName = self->_symbolName;
  coderCopy = coder;
  [coderCopy encodeObject:symbolName forKey:@"_symbolName"];
  [coderCopy encodeObject:self->_title forKey:@"_title"];
  [coderCopy encodeObject:self->_detailText forKey:@"_detailText"];
  [coderCopy encodeObject:self->_primaryButton forKey:@" _primaryButton"];
  [coderCopy encodeObject:self->_secondaryButton forKey:@"_secondaryButton"];
  [coderCopy encodeObject:self->_helpLinkTitle forKey:@"_helpLinkTitle"];
  [coderCopy encodeObject:self->_helpLinkURL forKey:@"_helpLinkURL"];
}

- (TUIWelcomeControllerModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = TUIWelcomeControllerModel;
  v5 = [(TUIWelcomeControllerModel *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_symbolName"];
    symbolName = v5->_symbolName;
    v5->_symbolName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_detailText"];
    detailText = v5->_detailText;
    v5->_detailText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@" _primaryButton"];
    primaryButton = v5->_primaryButton;
    v5->_primaryButton = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryButton"];
    secondaryButton = v5->_secondaryButton;
    v5->_secondaryButton = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_helpLinkTitle"];
    helpLinkTitle = v5->_helpLinkTitle;
    v5->_helpLinkTitle = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_helpLinkURL"];
    helpLinkURL = v5->_helpLinkURL;
    v5->_helpLinkURL = v18;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TUIWelcomeControllerModel);
  v5 = [(NSString *)self->_symbolName copy];
  symbolName = v4->_symbolName;
  v4->_symbolName = v5;

  v7 = [(NSString *)self->_title copy];
  title = v4->_title;
  v4->_title = v7;

  v9 = [(NSString *)self->_detailText copy];
  detailText = v4->_detailText;
  v4->_detailText = v9;

  v11 = [(NSString *)self->_primaryButton copy];
  primaryButton = v4->_primaryButton;
  v4->_primaryButton = v11;

  v13 = [(NSString *)self->_secondaryButton copy];
  secondaryButton = v4->_secondaryButton;
  v4->_secondaryButton = v13;

  v15 = [(NSString *)self->_helpLinkTitle copy];
  helpLinkTitle = v4->_helpLinkTitle;
  v4->_helpLinkTitle = v15;

  v17 = [(NSString *)self->_helpLinkURL copy];
  helpLinkURL = v4->_helpLinkURL;
  v4->_helpLinkURL = v17;

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  symbolName = [(TUIWelcomeControllerModel *)self symbolName];
  title = [(TUIWelcomeControllerModel *)self title];
  detailText = [(TUIWelcomeControllerModel *)self detailText];
  primaryButton = [(TUIWelcomeControllerModel *)self primaryButton];
  secondaryButton = [(TUIWelcomeControllerModel *)self secondaryButton];
  helpLinkTitle = [(TUIWelcomeControllerModel *)self helpLinkTitle];
  helpLinkURL = [(TUIWelcomeControllerModel *)self helpLinkURL];
  v11 = [v3 stringWithFormat:@"symbolName: %@\title: %@\ndetailText: %@\nprimaryButton: %@\nsecondaryButton: %@\nhelpLinkTitle: %@\nhelpLinkURL: %@", symbolName, title, detailText, primaryButton, secondaryButton, helpLinkTitle, helpLinkURL];

  return v11;
}

@end