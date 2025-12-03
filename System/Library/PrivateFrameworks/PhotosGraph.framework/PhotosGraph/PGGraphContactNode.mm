@interface PGGraphContactNode
+ (id)filter;
+ (id)filterWithContactIdentifiers:(id)identifiers;
- (BOOL)hasProperties:(id)properties;
- (PGGraphContactNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphContactNode)initWithName:(id)name contactIdentifier:(id)identifier birthdayDate:(id)date potentialBirthdayDate:(id)birthdayDate;
- (id)description;
- (id)propertyDictionary;
- (void)setLocalProperties:(id)properties;
@end

@implementation PGGraphContactNode

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphContactNode;
  v4 = [(PGGraphOptimizedNode *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ (%@)", v4, self->_contactIdentifier];

  return v5;
}

- (id)propertyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:self->_name forKeyedSubscript:@"name"];
  [v3 setObject:self->_contactIdentifier forKeyedSubscript:@"cnid"];
  birthdayDate = self->_birthdayDate;
  if (birthdayDate)
  {
    v5 = MEMORY[0x277CCABB0];
    [(NSDate *)birthdayDate timeIntervalSince1970];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"bday"];
  }

  potentialBirthdayDate = self->_potentialBirthdayDate;
  if (potentialBirthdayDate)
  {
    v8 = MEMORY[0x277CCABB0];
    [(NSDate *)potentialBirthdayDate timeIntervalSince1970];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"pbday"];
  }

  return v3;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v6;
    if (v6 && ![v6 isEqual:self->_name])
    {
      goto LABEL_11;
    }

    v8 = [v5 objectForKeyedSubscript:@"cnid"];
    v7 = v8;
    if (v8)
    {
      if (![v8 isEqual:self->_contactIdentifier])
      {
        goto LABEL_11;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"bday"];
    v7 = v9;
    if (v9)
    {
      [v9 doubleValue];
      v11 = v10;
      [(NSDate *)self->_birthdayDate timeIntervalSince1970];
      if (v11 != v12)
      {
        goto LABEL_11;
      }
    }

    v13 = [v5 objectForKeyedSubscript:@"pbday"];
    v7 = v13;
    if (!v13 || ([v13 doubleValue], v15 = v14, -[NSDate timeIntervalSince1970](self->_potentialBirthdayDate, "timeIntervalSince1970"), v15 == v16))
    {
      v17 = 1;
    }

    else
    {
LABEL_11:
      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (void)setLocalProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:@"name"];
  name = self->_name;
  self->_name = v4;

  v6 = [propertiesCopy objectForKeyedSubscript:@"cnid"];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v6;

  v8 = [propertiesCopy objectForKeyedSubscript:@"bday"];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x277CBEAA8];
    [v8 doubleValue];
    v11 = [v10 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_birthdayDate, v11);
  if (v9)
  {
  }

  v12 = [propertiesCopy objectForKeyedSubscript:@"pbday"];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277CBEAA8];
    [v12 doubleValue];
    v15 = [v14 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&self->_potentialBirthdayDate, v15);
  if (v13)
  {
  }
}

- (PGGraphContactNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [propertiesCopy objectForKeyedSubscript:@"name"];
  v8 = [propertiesCopy objectForKeyedSubscript:@"cnid"];
  v9 = [propertiesCopy objectForKeyedSubscript:@"bday"];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CBEAA8];
    [v9 doubleValue];
    v12 = [v11 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v12 = 0;
  }

  v13 = [propertiesCopy objectForKeyedSubscript:@"pbday"];
  v14 = v13;
  if (v13)
  {
    v15 = MEMORY[0x277CBEAA8];
    [v13 doubleValue];
    v16 = [v15 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(PGGraphContactNode *)self initWithName:v7 contactIdentifier:v8 birthdayDate:v12 potentialBirthdayDate:v16];

  return v17;
}

- (PGGraphContactNode)initWithName:(id)name contactIdentifier:(id)identifier birthdayDate:(id)date potentialBirthdayDate:(id)birthdayDate
{
  nameCopy = name;
  identifierCopy = identifier;
  dateCopy = date;
  birthdayDateCopy = birthdayDate;
  v18.receiver = self;
  v18.super_class = PGGraphContactNode;
  v15 = [(PGGraphNode *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_contactIdentifier, identifier);
    objc_storeStrong(&v16->_birthdayDate, date);
    objc_storeStrong(&v16->_potentialBirthdayDate, birthdayDate);
  }

  return v16;
}

+ (id)filterWithContactIdentifiers:(id)identifiers
{
  v11[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  filter = [self filter];
  v10 = @"cnid";
  v11[0] = identifiersCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [filter filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Contact" domain:303];

  return v2;
}

@end