@interface WFConcreteRunnableEntry
- (WFConcreteRunnableEntry)initWithCoder:(id)a3;
- (WFConcreteRunnableEntry)initWithIdentifier:(id)a3 name:(id)a4 entryIcon:(id)a5 accessoryIcon:(id)a6 serializedParameterState:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFConcreteRunnableEntry

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFConcreteRunnableEntry *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(WFConcreteRunnableEntry *)self uniqueIdentifier];
  [v4 encodeObject:v6 forKey:@"uniqueIdentifier"];

  v7 = [(WFConcreteRunnableEntry *)self name];
  [v4 encodeObject:v7 forKey:@"name"];

  v8 = [(WFConcreteRunnableEntry *)self entryIcon];
  [v4 encodeObject:v8 forKey:@"entryIcon"];

  v9 = [(WFConcreteRunnableEntry *)self accessoryIcon];
  [v4 encodeObject:v9 forKey:@"accessoryIcon"];

  v10 = [(WFConcreteRunnableEntry *)self serializedParameterState];
  [v4 encodeObject:v10 forKey:@"serializedParameterState"];
}

- (WFConcreteRunnableEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = WFConcreteRunnableEntry;
  v5 = [(WFConcreteRunnableEntry *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entryIcon"];
    entryIcon = v5->_entryIcon;
    v5->_entryIcon = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryIcon"];
    accessoryIcon = v5->_accessoryIcon;
    v5->_accessoryIcon = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v16 setWithObjects:{v17, v18, v19, v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"serializedParameterState"];
    serializedParameterState = v5->_serializedParameterState;
    v5->_serializedParameterState = v23;

    v25 = v5;
  }

  return v5;
}

- (WFConcreteRunnableEntry)initWithIdentifier:(id)a3 name:(id)a4 entryIcon:(id)a5 accessoryIcon:(id)a6 serializedParameterState:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = WFConcreteRunnableEntry;
  v17 = [(WFConcreteRunnableEntry *)&v27 init];
  if (v17)
  {
    v18 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [MEMORY[0x1E696AFB0] UUID];
    v21 = [v20 UUIDString];
    uniqueIdentifier = v17->_uniqueIdentifier;
    v17->_uniqueIdentifier = v21;

    v23 = [v13 copy];
    name = v17->_name;
    v17->_name = v23;

    objc_storeStrong(&v17->_entryIcon, a5);
    objc_storeStrong(&v17->_accessoryIcon, a6);
    objc_storeStrong(&v17->_serializedParameterState, a7);
    v25 = v17;
  }

  return v17;
}

@end