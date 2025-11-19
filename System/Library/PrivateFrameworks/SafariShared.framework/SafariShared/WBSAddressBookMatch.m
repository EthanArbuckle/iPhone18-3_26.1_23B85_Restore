@interface WBSAddressBookMatch
+ (id)addressBookMatchWithContactDictionaryRepresentation:(id)a3 forContact:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)dateValue;
- (NSString)description;
- (NSString)stringValue;
- (WBSAddressBookMatch)initWithCoder:(id)a3;
- (WBSAddressBookMatch)initWithValue:(id)a3 property:(id)a4 key:(id)a5 identifier:(id)a6 label:(id)a7;
- (WBSAddressBookMatch)initWithValue:(id)a3 property:(id)a4 key:(id)a5 identifier:(id)a6 label:(id)a7 uniqueID:(id)a8;
- (id)dictionaryRepresentationExcludingValue:(BOOL)a3;
- (unint64_t)hash;
- (void)_setValue:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSAddressBookMatch

- (void)_setValue:(id)a3
{
  if (self->_value != a3)
  {
    v5 = [a3 copy];
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

- (WBSAddressBookMatch)initWithValue:(id)a3 property:(id)a4 key:(id)a5 identifier:(id)a6 label:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = WBSAddressBookMatch;
  v17 = [(WBSAddressBookMatch *)&v30 init];
  if (v17)
  {
    v18 = [v12 copy];
    value = v17->_value;
    v17->_value = v18;

    v20 = [v13 copy];
    property = v17->_property;
    v17->_property = v20;

    v22 = [v14 copy];
    key = v17->_key;
    v17->_key = v22;

    v24 = [v15 copy];
    identifier = v17->_identifier;
    v17->_identifier = v24;

    v26 = [v16 copy];
    label = v17->_label;
    v17->_label = v26;

    v28 = v17;
  }

  return v17;
}

- (WBSAddressBookMatch)initWithValue:(id)a3 property:(id)a4 key:(id)a5 identifier:(id)a6 label:(id)a7 uniqueID:(id)a8
{
  v14 = a8;
  v15 = [(WBSAddressBookMatch *)self initWithValue:a3 property:a4 key:a5 identifier:a6 label:a7];
  if (v15)
  {
    v16 = [v14 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WBSAddressBookMatch *)self stringValue];
      v19 = [(WBSAddressBookMatch *)self dateValue];
      v7 = [(WBSAddressBookMatch *)v5 stringValue];
      v8 = [(WBSAddressBookMatch *)v5 dateValue];
      v9 = [(WBSAddressBookMatch *)v5 property];
      v10 = [(WBSAddressBookMatch *)v5 key];
      v11 = [(WBSAddressBookMatch *)v5 identifier];
      v12 = [(WBSAddressBookMatch *)v5 label];
      if ((v6 == v7 || [v6 isEqualToString:v7]) && (v19 == v8 || objc_msgSend(v19, "isEqualToDate:", v8)) && ((property = self->_property, property == v9) || -[NSString isEqualToString:](property, "isEqualToString:", v9)) && ((key = self->_key, key == v10) || -[NSString isEqualToString:](key, "isEqualToString:", v10)) && ((identifier = self->_identifier, identifier == v11) || -[NSString isEqualToString:](identifier, "isEqualToString:", v11)))
      {
        label = self->_label;
        if (label == v12)
        {
          v17 = 1;
        }

        else
        {
          v17 = [(NSString *)label isEqualToString:v12];
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
  v3 = [(WBSAddressBookMatch *)self dateValue];
  v4 = v3;
  if (v3)
  {
    [v3 description];
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

- (id)dictionaryRepresentationExcludingValue:(BOOL)a3
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = v5;
  if (!a3)
  {
    [v5 setObject:self->_value forKeyedSubscript:@"Value"];
  }

  [v6 setObject:self->_property forKeyedSubscript:@"Property"];
  [v6 setObject:self->_key forKeyedSubscript:@"Key"];
  [v6 setObject:self->_identifier forKeyedSubscript:@"Identifier"];
  [v6 setObject:self->_label forKeyedSubscript:@"Label"];
  [v6 setObject:self->_uniqueID forKeyedSubscript:@"UniqueID"];

  return v6;
}

+ (id)addressBookMatchWithContactDictionaryRepresentation:(id)a3 forContact:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [v7 safari_stringForKey:@"Property"];
    v9 = [v7 safari_stringForKey:@"Key"];
    v10 = [v7 safari_stringForKey:@"Identifier"];
    v11 = [v7 safari_stringForKey:@"Label"];
    v12 = [v7 safari_stringForKey:@"UniqueID"];

    if ([MEMORY[0x1E695CD58] safari_wbsPropertySupportsMultipleValues:v8])
    {
      [v6 safari_valueStringForIdentifier:v10 wbsProperty:v8 wbsComponent:v9];
    }

    else
    {
      [v6 safari_valueStringForWBSProperty:v8 wbsComponent:v9 atIndex:0];
    }
    v14 = ;
    if (v14)
    {
      v13 = [[a1 alloc] initWithValue:v14 property:v8 key:v9 identifier:v10 label:v11 uniqueID:v12];
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

- (WBSAddressBookMatch)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Value"];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Property"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Key"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UniqueID"];
    v5 = [(WBSAddressBookMatch *)v5 initWithValue:v9 property:v10 key:v11 identifier:v12 label:v13 uniqueID:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  [v5 encodeObject:value forKey:@"Value"];
  [v5 encodeObject:self->_property forKey:@"Property"];
  [v5 encodeObject:self->_key forKey:@"Key"];
  [v5 encodeObject:self->_identifier forKey:@"Identifier"];
  [v5 encodeObject:self->_label forKey:@"Label"];
  [v5 encodeObject:self->_uniqueID forKey:@"UniqueID"];
}

@end