@interface WFConcreteRunnableEntry
- (WFConcreteRunnableEntry)initWithCoder:(id)coder;
- (WFConcreteRunnableEntry)initWithIdentifier:(id)identifier name:(id)name entryIcon:(id)icon accessoryIcon:(id)accessoryIcon serializedParameterState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFConcreteRunnableEntry

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFConcreteRunnableEntry *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  uniqueIdentifier = [(WFConcreteRunnableEntry *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  name = [(WFConcreteRunnableEntry *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  entryIcon = [(WFConcreteRunnableEntry *)self entryIcon];
  [coderCopy encodeObject:entryIcon forKey:@"entryIcon"];

  accessoryIcon = [(WFConcreteRunnableEntry *)self accessoryIcon];
  [coderCopy encodeObject:accessoryIcon forKey:@"accessoryIcon"];

  serializedParameterState = [(WFConcreteRunnableEntry *)self serializedParameterState];
  [coderCopy encodeObject:serializedParameterState forKey:@"serializedParameterState"];
}

- (WFConcreteRunnableEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = WFConcreteRunnableEntry;
  v5 = [(WFConcreteRunnableEntry *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entryIcon"];
    entryIcon = v5->_entryIcon;
    v5->_entryIcon = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryIcon"];
    accessoryIcon = v5->_accessoryIcon;
    v5->_accessoryIcon = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v16 setWithObjects:{v17, v18, v19, v20, v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"serializedParameterState"];
    serializedParameterState = v5->_serializedParameterState;
    v5->_serializedParameterState = v23;

    v25 = v5;
  }

  return v5;
}

- (WFConcreteRunnableEntry)initWithIdentifier:(id)identifier name:(id)name entryIcon:(id)icon accessoryIcon:(id)accessoryIcon serializedParameterState:(id)state
{
  identifierCopy = identifier;
  nameCopy = name;
  iconCopy = icon;
  accessoryIconCopy = accessoryIcon;
  stateCopy = state;
  v27.receiver = self;
  v27.super_class = WFConcreteRunnableEntry;
  v17 = [(WFConcreteRunnableEntry *)&v27 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uniqueIdentifier = v17->_uniqueIdentifier;
    v17->_uniqueIdentifier = uUIDString;

    v23 = [nameCopy copy];
    name = v17->_name;
    v17->_name = v23;

    objc_storeStrong(&v17->_entryIcon, icon);
    objc_storeStrong(&v17->_accessoryIcon, accessoryIcon);
    objc_storeStrong(&v17->_serializedParameterState, state);
    v25 = v17;
  }

  return v17;
}

@end