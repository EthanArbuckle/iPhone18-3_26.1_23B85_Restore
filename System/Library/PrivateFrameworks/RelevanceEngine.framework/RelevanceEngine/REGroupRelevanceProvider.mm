@interface REGroupRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (REGroupRelevanceProvider)initWithDictionary:(id)dictionary;
- (REGroupRelevanceProvider)initWithGroupIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
@end

@implementation REGroupRelevanceProvider

- (REGroupRelevanceProvider)initWithGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = REGroupRelevanceProvider;
  v5 = [(RERelevanceProvider *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v6;
  }

  return v5;
}

- (REGroupRelevanceProvider)initWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"group_name"];
  v5 = v4;
  v6 = &stru_283B97458;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(REGroupRelevanceProvider *)self initWithGroupIdentifier:v7];
  return v8;
}

- (id)dictionaryEncoding
{
  v7[1] = *MEMORY[0x277D85DE8];
  groupIdentifier = self->_groupIdentifier;
  v6 = @"group_name";
  v7[0] = groupIdentifier;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REGroupRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 4, self->_groupIdentifier);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = REGroupRelevanceProvider;
    if ([(RERelevanceProvider *)&v11 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      groupIdentifier = self->_groupIdentifier;
      v6 = equalCopy->_groupIdentifier;
      v7 = groupIdentifier;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = REGroupRelevanceProvider;
  v3 = [(REGroupRelevanceProvider *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" groupIdentifier=%@", self->_groupIdentifier];

  return v4;
}

@end