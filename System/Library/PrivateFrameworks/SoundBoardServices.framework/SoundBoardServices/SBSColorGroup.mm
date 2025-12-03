@interface SBSColorGroup
- (SBSColorGroup)initWithBackground:(id)background primaryText:(id)text secondaryText:(id)secondaryText;
- (SBSColorGroup)initWithCoder:(id)coder;
- (SBSColorGroup)initWithData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSColorGroup

- (SBSColorGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"background"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryText"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryText"];

  v8 = [[SBSColorGroup alloc] initWithBackground:v5 primaryText:v6 secondaryText:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  background = self->_background;
  coderCopy = coder;
  [coderCopy encodeObject:background forKey:@"background"];
  [coderCopy encodeObject:self->_primaryText forKey:@"primaryText"];
  [coderCopy encodeObject:self->_secondaryText forKey:@"secondaryText"];
}

- (SBSColorGroup)initWithBackground:(id)background primaryText:(id)text secondaryText:(id)secondaryText
{
  backgroundCopy = background;
  textCopy = text;
  secondaryTextCopy = secondaryText;
  v15.receiver = self;
  v15.super_class = SBSColorGroup;
  v12 = [(SBSColorGroup *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_background, background);
    objc_storeStrong(&v13->_primaryText, text);
    objc_storeStrong(&v13->_secondaryText, secondaryText);
  }

  return v13;
}

- (SBSColorGroup)initWithData:(id)data
{
  v4 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v9 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v9];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end