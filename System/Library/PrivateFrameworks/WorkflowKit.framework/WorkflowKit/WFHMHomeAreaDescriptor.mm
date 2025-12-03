@interface WFHMHomeAreaDescriptor
- (BOOL)isEqual:(id)equal;
- (WFHMHomeAreaDescriptor)initWithCoder:(id)coder;
- (WFHMHomeAreaDescriptor)initWithHome:(id)home;
- (WFHMHomeAreaDescriptor)initWithRoom:(id)room inHome:(id)home;
- (WFHMHomeAreaDescriptor)initWithUniqueIdentifier:(id)identifier homeIdentifier:(id)homeIdentifier name:(id)name areaType:(unint64_t)type homeName:(id)homeName;
- (WFHMHomeAreaDescriptor)initWithZone:(id)zone inHome:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFHMHomeAreaDescriptor

- (unint64_t)hash
{
  v3 = objc_opt_new();
  uniqueIdentifier = [(WFHMHomeAreaDescriptor *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v6 = [v3 combine:uUIDString];

  v7 = [v3 finalize];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uniqueIdentifier = [(WFHMHomeAreaDescriptor *)equalCopy uniqueIdentifier];
      uniqueIdentifier2 = [(WFHMHomeAreaDescriptor *)self uniqueIdentifier];
      v7 = [uniqueIdentifier isEqual:uniqueIdentifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  uniqueIdentifier = [(WFHMHomeAreaDescriptor *)self uniqueIdentifier];
  v6 = [uniqueIdentifier copy];
  homeIdentifier = [(WFHMHomeAreaDescriptor *)self homeIdentifier];
  v8 = [homeIdentifier copy];
  name = [(WFHMHomeAreaDescriptor *)self name];
  v10 = [name copy];
  areaType = [(WFHMHomeAreaDescriptor *)self areaType];
  homeName = [(WFHMHomeAreaDescriptor *)self homeName];
  v13 = [homeName copy];
  v14 = [v4 initWithUniqueIdentifier:v6 homeIdentifier:v8 name:v10 areaType:areaType homeName:v13];

  return v14;
}

- (WFHMHomeAreaDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeIdentifier"];
  v7 = [coderCopy decodeIntegerForKey:@"areaType"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeName"];

  v10 = [(WFHMHomeAreaDescriptor *)self initWithUniqueIdentifier:v5 homeIdentifier:v6 name:v8 areaType:v7 homeName:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(WFHMHomeAreaDescriptor *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  homeIdentifier = [(WFHMHomeAreaDescriptor *)self homeIdentifier];
  [coderCopy encodeObject:homeIdentifier forKey:@"homeIdentifier"];

  name = [(WFHMHomeAreaDescriptor *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  homeName = [(WFHMHomeAreaDescriptor *)self homeName];
  [coderCopy encodeObject:homeName forKey:@"homeName"];

  [coderCopy encodeInteger:-[WFHMHomeAreaDescriptor areaType](self forKey:{"areaType"), @"areaType"}];
}

- (WFHMHomeAreaDescriptor)initWithRoom:(id)room inHome:(id)home
{
  roomCopy = room;
  homeCopy = home;
  v9 = homeCopy;
  if (!roomCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHomeAreaPickerParameter.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"room"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFHomeAreaPickerParameter.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    goto LABEL_3;
  }

  if (!homeCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  uniqueIdentifier = [roomCopy uniqueIdentifier];
  uniqueIdentifier2 = [v9 uniqueIdentifier];
  name = [roomCopy name];
  name2 = [v9 name];
  v14 = [(WFHMHomeAreaDescriptor *)self initWithUniqueIdentifier:uniqueIdentifier homeIdentifier:uniqueIdentifier2 name:name areaType:2 homeName:name2];

  return v14;
}

- (WFHMHomeAreaDescriptor)initWithZone:(id)zone inHome:(id)home
{
  zoneCopy = zone;
  homeCopy = home;
  v9 = homeCopy;
  if (!zoneCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHomeAreaPickerParameter.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"zone"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFHomeAreaPickerParameter.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    goto LABEL_3;
  }

  if (!homeCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  uniqueIdentifier = [zoneCopy uniqueIdentifier];
  uniqueIdentifier2 = [v9 uniqueIdentifier];
  name = [zoneCopy name];
  name2 = [v9 name];
  v14 = [(WFHMHomeAreaDescriptor *)self initWithUniqueIdentifier:uniqueIdentifier homeIdentifier:uniqueIdentifier2 name:name areaType:1 homeName:name2];

  return v14;
}

- (WFHMHomeAreaDescriptor)initWithHome:(id)home
{
  homeCopy = home;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHomeAreaPickerParameter.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  uniqueIdentifier = [homeCopy uniqueIdentifier];
  uniqueIdentifier2 = [homeCopy uniqueIdentifier];
  name = [homeCopy name];
  name2 = [homeCopy name];
  v10 = [(WFHMHomeAreaDescriptor *)self initWithUniqueIdentifier:uniqueIdentifier homeIdentifier:uniqueIdentifier2 name:name areaType:0 homeName:name2];

  return v10;
}

- (WFHMHomeAreaDescriptor)initWithUniqueIdentifier:(id)identifier homeIdentifier:(id)homeIdentifier name:(id)name areaType:(unint64_t)type homeName:(id)homeName
{
  identifierCopy = identifier;
  homeIdentifierCopy = homeIdentifier;
  nameCopy = name;
  homeNameCopy = homeName;
  v21.receiver = self;
  v21.super_class = WFHMHomeAreaDescriptor;
  v17 = [(WFHMHomeAreaDescriptor *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uniqueIdentifier, identifier);
    objc_storeStrong(&v18->_homeIdentifier, homeIdentifier);
    objc_storeStrong(&v18->_name, name);
    v18->_areaType = type;
    objc_storeStrong(&v18->_homeName, homeName);
    v19 = v18;
  }

  return v18;
}

@end