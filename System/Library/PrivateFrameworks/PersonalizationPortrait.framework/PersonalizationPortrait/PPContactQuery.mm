@interface PPContactQuery
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContactQuery:(id)query;
- (PPContactQuery)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPContactQuery

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPContactQuery i:'%@' n:'%@' e:'%@' ph:'%@' po:'%@' d:%d tbi:%@ c.len:%tu o:%d>", self->_matchingIdentifiers, self->_matchingName, self->_matchingEmail, self->_matchingPhone, self->_matchingPostalAddress, self->_domain, self->_targetBundleIdentifier, -[NSString length](self->_context, "length"), self->_onlyQueryMostRelevantContacts];

  return v2;
}

- (BOOL)isEqualToContactQuery:(id)query
{
  queryCopy = query;
  if (!queryCopy)
  {
    goto LABEL_29;
  }

  v5 = self->_matchingIdentifiers;
  v6 = v5;
  if (v5 == queryCopy[2])
  {
  }

  else
  {
    v7 = [(NSArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v8 = self->_matchingName;
  v9 = v8;
  if (v8 == queryCopy[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v11 = self->_matchingEmail;
  v12 = v11;
  if (v11 == queryCopy[4])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v14 = self->_matchingPhone;
  v15 = v14;
  if (v14 == queryCopy[5])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v17 = self->_matchingPostalAddress;
  v18 = v17;
  if (v17 == queryCopy[6])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (self->_domain == *(queryCopy + 8))
  {
    v20 = self->_targetBundleIdentifier;
    v21 = v20;
    if (v20 == queryCopy[7])
    {
    }

    else
    {
      v22 = [(NSString *)v20 isEqual:?];

      if ((v22 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v23 = self->_context;
    v24 = v23;
    if (v23 == queryCopy[8])
    {
    }

    else
    {
      v25 = [(NSString *)v23 isEqual:?];

      if ((v25 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v26 = self->_onlyQueryMostRelevantContacts == *(queryCopy + 9);
    goto LABEL_30;
  }

LABEL_29:
  v26 = 0;
LABEL_30:

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPContactQuery *)self isEqualToContactQuery:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  v6 = [(NSArray *)self->_matchingIdentifiers copyWithZone:zone];
  [v5 setMatchingIdentifiers:v6];

  v7 = [(NSString *)self->_matchingName copyWithZone:zone];
  [v5 setMatchingName:v7];

  v8 = [(NSString *)self->_matchingEmail copyWithZone:zone];
  [v5 setMatchingEmail:v8];

  v9 = [(NSString *)self->_matchingPhone copyWithZone:zone];
  [v5 setMatchingPhone:v9];

  v10 = [(NSString *)self->_matchingPostalAddress copyWithZone:zone];
  [v5 setMatchingPostalAddress:v10];

  [v5 setDomain:self->_domain];
  v11 = [(NSString *)self->_targetBundleIdentifier copyWithZone:zone];
  [v5 setTargetBundleIdentifier:v11];

  v12 = [(NSString *)self->_context copyWithZone:zone];
  [v5 setContext:v12];

  [v5 setOnlyQueryMostRelevantContacts:self->_onlyQueryMostRelevantContacts];
  return v5;
}

- (unint64_t)hash
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_matchingIdentifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 = [*(*(&v22 + 1) + 8 * i) hash] - v6 + 32 * v6;
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
    v9 = 31 * v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_matchingName hash];
  v11 = [(NSString *)self->_matchingEmail hash];
  v12 = [(NSString *)self->_matchingPhone hash];
  v13 = [(NSString *)self->_matchingPostalAddress hash];
  domain = self->_domain;
  v15 = [(NSString *)self->_targetBundleIdentifier hash];
  v16 = [(NSString *)self->_context hash];
  v17 = *MEMORY[0x1E69E9840];
  v18 = v11 - (v10 + v9) + 32 * (v10 + v9);
  v19 = v13 - (v12 - v18 + 32 * v18) + 32 * (v12 - v18 + 32 * v18);
  v20 = v15 - (domain - v19 + 32 * v19) + 32 * (domain - v19 + 32 * v19);
  return self->_onlyQueryMostRelevantContacts - (v16 - v20 + 32 * v20) + 32 * (v16 - v20 + 32 * v20);
}

- (void)encodeWithCoder:(id)coder
{
  matchingIdentifiers = self->_matchingIdentifiers;
  coderCopy = coder;
  [coderCopy encodeObject:matchingIdentifiers forKey:@"mid"];
  [coderCopy encodeObject:self->_matchingName forKey:@"mnm"];
  [coderCopy encodeObject:self->_matchingEmail forKey:@"mem"];
  [coderCopy encodeObject:self->_matchingPhone forKey:@"mph"];
  [coderCopy encodeObject:self->_matchingPostalAddress forKey:@"mpo"];
  [coderCopy encodeInt32:self->_domain forKey:@"dom"];
  [coderCopy encodeObject:self->_targetBundleIdentifier forKey:@"tbi"];
  [coderCopy encodeObject:self->_context forKey:@"ctx"];
  [coderCopy encodeBool:self->_onlyQueryMostRelevantContacts forKey:@"onq"];
}

- (PPContactQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"mid"];
  [(PPContactQuery *)v5 setMatchingIdentifiers:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mnm"];
  [(PPContactQuery *)v5 setMatchingName:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mem"];
  [(PPContactQuery *)v5 setMatchingEmail:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mph"];
  [(PPContactQuery *)v5 setMatchingPhone:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mpo"];
  [(PPContactQuery *)v5 setMatchingPostalAddress:v14];

  -[PPContactQuery setDomain:](v5, "setDomain:", [coderCopy decodeInt32ForKey:@"dom"]);
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tbi"];
  [(PPContactQuery *)v5 setTargetBundleIdentifier:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ctx"];
  [(PPContactQuery *)v5 setContext:v16];

  -[PPContactQuery setOnlyQueryMostRelevantContacts:](v5, "setOnlyQueryMostRelevantContacts:", [coderCopy decodeBoolForKey:@"onq"]);
  return v5;
}

@end