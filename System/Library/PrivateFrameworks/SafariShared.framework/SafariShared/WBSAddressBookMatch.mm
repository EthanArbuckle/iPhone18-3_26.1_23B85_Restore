@interface WBSAddressBookMatch
+ (id)addressBookMatchWithContactDictionaryRepresentation:(id)representation forContact:(id)contact;
- (BOOL)isEqual:(id)equal;
- (NSDate)dateValue;
- (NSString)description;
- (NSString)stringValue;
- (WBSAddressBookMatch)initWithCoder:(id)coder;
- (WBSAddressBookMatch)initWithValue:(id)value property:(id)property key:(id)key identifier:(id)identifier label:(id)label;
- (WBSAddressBookMatch)initWithValue:(id)value property:(id)property key:(id)key identifier:(id)identifier label:(id)label uniqueID:(id)d;
- (id)dictionaryRepresentationExcludingValue:(BOOL)value;
- (unint64_t)hash;
- (void)_setValue:(id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSAddressBookMatch

- (void)_setValue:(id)value
{
  if (self->_value != value)
  {
    v5 = [value copy];
    value = self->_value;
    self->_value = v5;
  }
}

- (NSString)stringValue
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = self->_value;
  }

  else
  {
    value = 0;
  }

  return value;
}

- (NSDate)dateValue
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = self->_value;
  }

  else
  {
    value = 0;
  }

  return value;
}

- (WBSAddressBookMatch)initWithValue:(id)value property:(id)property key:(id)key identifier:(id)identifier label:(id)label
{
  valueCopy = value;
  propertyCopy = property;
  keyCopy = key;
  identifierCopy = identifier;
  labelCopy = label;
  v30.receiver = self;
  v30.super_class = WBSAddressBookMatch;
  v17 = [(WBSAddressBookMatch *)&v30 init];
  if (v17)
  {
    v18 = [valueCopy copy];
    value = v17->_value;
    v17->_value = v18;

    v20 = [propertyCopy copy];
    property = v17->_property;
    v17->_property = v20;

    v22 = [keyCopy copy];
    key = v17->_key;
    v17->_key = v22;

    v24 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v24;

    v26 = [labelCopy copy];
    label = v17->_label;
    v17->_label = v26;

    v28 = v17;
  }

  return v17;
}

- (WBSAddressBookMatch)initWithValue:(id)value property:(id)property key:(id)key identifier:(id)identifier label:(id)label uniqueID:(id)d
{
  dCopy = d;
  v15 = [(WBSAddressBookMatch *)self initWithValue:value property:property key:key identifier:identifier label:label];
  if (v15)
  {
    v16 = [dCopy copy];
    uniqueID = v15->_uniqueID;
    v15->_uniqueID = v16;

    v18 = v15;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [self->_value hash];
  v4 = [(NSString *)self->_property hash]^ v3;
  return v4 ^ [(NSString *)self->_identifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      stringValue = [(WBSAddressBookMatch *)self stringValue];
      dateValue = [(WBSAddressBookMatch *)self dateValue];
      stringValue2 = [(WBSAddressBookMatch *)v5 stringValue];
      dateValue2 = [(WBSAddressBookMatch *)v5 dateValue];
      property = [(WBSAddressBookMatch *)v5 property];
      v10 = [(WBSAddressBookMatch *)v5 key];
      identifier = [(WBSAddressBookMatch *)v5 identifier];
      label = [(WBSAddressBookMatch *)v5 label];
      if ((stringValue == stringValue2 || [stringValue isEqualToString:stringValue2]) && (dateValue == dateValue2 || objc_msgSend(dateValue, "isEqualToDate:", dateValue2)) && ((property = self->_property, property == property) || -[NSString isEqualToString:](property, "isEqualToString:", property)) && ((key = self->_key, key == v10) || -[NSString isEqualToString:](key, "isEqualToString:", v10)) && ((identifier = self->_identifier, identifier == identifier) || -[NSString isEqualToString:](identifier, "isEqualToString:", identifier)))
      {
        label = self->_label;
        if (label == label)
        {
          v17 = 1;
        }

        else
        {
          v17 = [(NSString *)label isEqualToString:label];
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (NSString)description
{
  dateValue = [(WBSAddressBookMatch *)self dateValue];
  v4 = dateValue;
  if (dateValue)
  {
    [dateValue description];
  }

  else
  {
    [(WBSAddressBookMatch *)self stringValue];
  }
  v5 = ;
  if ([(NSString *)self->_key length])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" key = %@", self->_key];;
  }

  else
  {
    v6 = &stru_1F3A5E418;
  }

  if ([(NSString *)self->_identifier length])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" identifier = %@", self->_identifier];;
  }

  else
  {
    v7 = &stru_1F3A5E418;
  }

  if ([(NSString *)self->_label length])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" label = '%@'", self->_label];;
  }

  else
  {
    v8 = &stru_1F3A5E418;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p%@ property = %@%@; value = '%@'%@>", objc_opt_class(), self, v8, self->_property, v6, v5, v7];;

  return v9;
}

- (id)dictionaryRepresentationExcludingValue:(BOOL)value
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = dictionary;
  if (!value)
  {
    [dictionary setObject:self->_value forKeyedSubscript:@"Value"];
  }

  [v6 setObject:self->_property forKeyedSubscript:@"Property"];
  [v6 setObject:self->_key forKeyedSubscript:@"Key"];
  [v6 setObject:self->_identifier forKeyedSubscript:@"Identifier"];
  [v6 setObject:self->_label forKeyedSubscript:@"Label"];
  [v6 setObject:self->_uniqueID forKeyedSubscript:@"UniqueID"];

  return v6;
}

+ (id)addressBookMatchWithContactDictionaryRepresentation:(id)representation forContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    representationCopy = representation;
    v8 = [representationCopy safari_stringForKey:@"Property"];
    v9 = [representationCopy safari_stringForKey:@"Key"];
    v10 = [representationCopy safari_stringForKey:@"Identifier"];
    v11 = [representationCopy safari_stringForKey:@"Label"];
    v12 = [representationCopy safari_stringForKey:@"UniqueID"];

    if ([MEMORY[0x1E695CD58] safari_wbsPropertySupportsMultipleValues:v8])
    {
      [contactCopy safari_valueStringForIdentifier:v10 wbsProperty:v8 wbsComponent:v9];
    }

    else
    {
      [contactCopy safari_valueStringForWBSProperty:v8 wbsComponent:v9 atIndex:0];
    }
    v14 = ;
    if (v14)
    {
      v13 = [[self alloc] initWithValue:v14 property:v8 key:v9 identifier:v10 label:v11 uniqueID:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (WBSAddressBookMatch)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WBSAddressBookMatch;
  v5 = [(WBSAddressBookMatch *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Value"];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Property"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Key"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UniqueID"];
    v5 = [(WBSAddressBookMatch *)v5 initWithValue:v9 property:v10 key:v11 identifier:v12 label:v13 uniqueID:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"Value"];
  [coderCopy encodeObject:self->_property forKey:@"Property"];
  [coderCopy encodeObject:self->_key forKey:@"Key"];
  [coderCopy encodeObject:self->_identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_label forKey:@"Label"];
  [coderCopy encodeObject:self->_uniqueID forKey:@"UniqueID"];
}

@end