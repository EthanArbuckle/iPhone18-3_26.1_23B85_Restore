@interface RMUIProfileViewModel
- (RMUIProfileViewModel)init;
- (RMUIProfileViewModel)initWithCoder:(id)coder;
- (void)clearModel;
- (void)encodeWithCoder:(id)coder;
- (void)setIsInteractiveProfile:(BOOL)profile;
@end

@implementation RMUIProfileViewModel

- (RMUIProfileViewModel)init
{
  v8.receiver = self;
  v8.super_class = RMUIProfileViewModel;
  v2 = [(RMUIProfileViewModel *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    toggleViewModel = v2->_toggleViewModel;
    v2->_toggleViewModel = v3;

    v5 = objc_opt_new();
    footerViewModel = v2->_footerViewModel;
    v2->_footerViewModel = v5;
  }

  return v2;
}

- (void)clearModel
{
  [(RMUIProfileViewModel *)self setTitle:0];
  [(RMUIProfileViewModel *)self setSymbol:0];
  [(RMUIProfileViewModel *)self setValue:0];
  [(RMUIProfileViewModel *)self setProfileIdentifier:0];
  [(RMUIProfileViewModel *)self setDeclaration:0];

  [(RMUIProfileViewModel *)self setIsInteractiveProfile:0];
}

- (void)setIsInteractiveProfile:(BOOL)profile
{
  self->_isInteractiveProfile = profile;
  if (!profile)
  {
    [(RMUIProfileViewModel *)self setInteractiveDetailsText:0];
    toggleViewModel = [(RMUIProfileViewModel *)self toggleViewModel];
    [toggleViewModel clearModel];

    footerViewModel = [(RMUIProfileViewModel *)self footerViewModel];
    [footerViewModel clearModel];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithShort:{-[RMUIProfileViewModel symbol](self, "symbol")}];
  [coderCopy encodeObject:v6 forKey:@"symbol"];

  title = [(RMUIProfileViewModel *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  value = [(RMUIProfileViewModel *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  profileIdentifier = [(RMUIProfileViewModel *)self profileIdentifier];
  [coderCopy encodeObject:profileIdentifier forKey:@"profileIdentifier"];

  declaration = [(RMUIProfileViewModel *)self declaration];
  [coderCopy encodeObject:declaration forKey:@"declaration"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMUIProfileViewModel isInteractiveProfile](self, "isInteractiveProfile")}];
  [coderCopy encodeObject:v11 forKey:@"isInteractiveProfile"];

  interactiveDetailsText = [(RMUIProfileViewModel *)self interactiveDetailsText];
  [coderCopy encodeObject:interactiveDetailsText forKey:@"interactiveDetailsText"];

  toggleViewModel = [(RMUIProfileViewModel *)self toggleViewModel];
  [coderCopy encodeObject:toggleViewModel forKey:@"toggleViewModel"];

  footerViewModel = [(RMUIProfileViewModel *)self footerViewModel];
  [coderCopy encodeObject:footerViewModel forKey:@"footerViewModel"];
}

- (RMUIProfileViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = RMUIProfileViewModel;
  v5 = [(RMUIProfileViewModel *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
    v5->_symbol = [v6 integerValue];

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"value"];
    value = v5->_value;
    v5->_value = v11;

    v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"profileIdentifier"];
    profileIdentifier = v5->_profileIdentifier;
    v5->_profileIdentifier = v14;

    v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"declaration"];
    declaration = v5->_declaration;
    v5->_declaration = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isInteractiveProfile"];
    v5->_isInteractiveProfile = [v19 BOOLValue];

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"interactiveDetailsText"];
    interactiveDetailsText = v5->_interactiveDetailsText;
    v5->_interactiveDetailsText = v21;

    v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"toggleViewModel"];
    toggleViewModel = v5->_toggleViewModel;
    v5->_toggleViewModel = v24;

    v26 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"footerViewModel"];
    footerViewModel = v5->_footerViewModel;
    v5->_footerViewModel = v27;
  }

  return v5;
}

@end