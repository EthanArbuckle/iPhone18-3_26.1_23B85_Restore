@interface RMUIProfileViewModel
- (RMUIProfileViewModel)init;
- (RMUIProfileViewModel)initWithCoder:(id)a3;
- (void)clearModel;
- (void)encodeWithCoder:(id)a3;
- (void)setIsInteractiveProfile:(BOOL)a3;
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

- (void)setIsInteractiveProfile:(BOOL)a3
{
  self->_isInteractiveProfile = a3;
  if (!a3)
  {
    [(RMUIProfileViewModel *)self setInteractiveDetailsText:0];
    v5 = [(RMUIProfileViewModel *)self toggleViewModel];
    [v5 clearModel];

    v6 = [(RMUIProfileViewModel *)self footerViewModel];
    [v6 clearModel];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithShort:{-[RMUIProfileViewModel symbol](self, "symbol")}];
  [v5 encodeObject:v6 forKey:@"symbol"];

  v7 = [(RMUIProfileViewModel *)self title];
  [v5 encodeObject:v7 forKey:@"title"];

  v8 = [(RMUIProfileViewModel *)self value];
  [v5 encodeObject:v8 forKey:@"value"];

  v9 = [(RMUIProfileViewModel *)self profileIdentifier];
  [v5 encodeObject:v9 forKey:@"profileIdentifier"];

  v10 = [(RMUIProfileViewModel *)self declaration];
  [v5 encodeObject:v10 forKey:@"declaration"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMUIProfileViewModel isInteractiveProfile](self, "isInteractiveProfile")}];
  [v5 encodeObject:v11 forKey:@"isInteractiveProfile"];

  v12 = [(RMUIProfileViewModel *)self interactiveDetailsText];
  [v5 encodeObject:v12 forKey:@"interactiveDetailsText"];

  v13 = [(RMUIProfileViewModel *)self toggleViewModel];
  [v5 encodeObject:v13 forKey:@"toggleViewModel"];

  v14 = [(RMUIProfileViewModel *)self footerViewModel];
  [v5 encodeObject:v14 forKey:@"footerViewModel"];
}

- (RMUIProfileViewModel)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = RMUIProfileViewModel;
  v5 = [(RMUIProfileViewModel *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
    v5->_symbol = [v6 integerValue];

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"value"];
    value = v5->_value;
    v5->_value = v11;

    v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"profileIdentifier"];
    profileIdentifier = v5->_profileIdentifier;
    v5->_profileIdentifier = v14;

    v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"declaration"];
    declaration = v5->_declaration;
    v5->_declaration = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isInteractiveProfile"];
    v5->_isInteractiveProfile = [v19 BOOLValue];

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"interactiveDetailsText"];
    interactiveDetailsText = v5->_interactiveDetailsText;
    v5->_interactiveDetailsText = v21;

    v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"toggleViewModel"];
    toggleViewModel = v5->_toggleViewModel;
    v5->_toggleViewModel = v24;

    v26 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"footerViewModel"];
    footerViewModel = v5->_footerViewModel;
    v5->_footerViewModel = v27;
  }

  return v5;
}

@end