@interface TPSContextualRule
+ (id)eventsForRuleDictionary:(id)a3;
- (TPSContextualRule)initWithCoder:(id)a3;
- (TPSContextualRule)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)restartTracking;
@end

@implementation TPSContextualRule

+ (id)eventsForRuleDictionary:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 TPSSafeArrayForKey:@"events"];
  if (!v4)
  {
    v5 = [v3 TPSSafeArrayForKey:@"conditions"];
    v6 = [v5 count];

    if (v6)
    {
      v10[0] = v3;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      v4 = 0;
    }
  }

  if ([v4 count])
  {
    v7 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (TPSContextualRule)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = TPSContextualRule;
  v5 = [(TPSSerializableObject *)&v27 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = [v4 TPSSafeStringForKey:@"id"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  if (![(NSString *)v5->_identifier length])
  {
    goto LABEL_18;
  }

  v8 = [v4 TPSSafeArrayForKey:@"events"];
  v9 = 0x1EBE05000;
  if ([v8 count])
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        v15 = 0;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [TPSContextualEvent identifierFromEventInfoDictionary:*(*(&v23 + 1) + 8 * v15), v23];
          if ([v16 length])
          {
            [v10 addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }

    v9 = 0x1EBE05000uLL;
    if ([v10 count])
    {
      v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
      eventIdentifiers = v5->_eventIdentifiers;
      v5->_eventIdentifiers = v17;
    }
  }

  v19 = [*(&v5->super.super.isa + *(v9 + 2804)) count];

  if (v19)
  {
LABEL_17:
    v20 = v5;
  }

  else
  {
LABEL_18:
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (TPSContextualRule)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TPSContextualRule;
  v5 = [(TPSSerializableObject *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"eventIdentifiers"];
    eventIdentifiers = v5->_eventIdentifiers;
    v5->_eventIdentifiers = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchedDate"];
    matchedDate = v5->_matchedDate;
    v5->_matchedDate = v13;

    if (v5->_matchedDate)
    {
      if ([MEMORY[0x1E695DF00] isDateExpired:-63072000.0 maxTimeInterval:?])
      {
        v15 = v5->_matchedDate;
        v5->_matchedDate = 0;
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSContextualRule;
  v4 = a3;
  [(TPSSerializableObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:{@"id", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_eventIdentifiers forKey:@"eventIdentifiers"];
  [v4 encodeObject:self->_matchedDate forKey:@"matchedDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TPSContextualRule;
  v4 = [(TPSSerializableObject *)&v6 copyWithZone:a3];
  [v4 setIdentifier:self->_identifier];
  [v4 setEventIdentifiers:self->_eventIdentifiers];
  [v4 setMatchedDate:self->_matchedDate];
  return v4;
}

- (void)restartTracking
{
  matchedDate = self->_matchedDate;
  self->_matchedDate = 0;
  MEMORY[0x1EEE66BB8]();
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSContextualRule;
  v4 = [(TPSSerializableObject *)&v9 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"%@ = %@\n", @"id", self->_identifier];
  if ([(NSArray *)self->_eventIdentifiers count])
  {
    v6 = [(NSArray *)self->_eventIdentifiers debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"eventIdentifiers", v6];
  }

  matchedDate = self->_matchedDate;
  if (matchedDate)
  {
    [v5 appendFormat:@"%@ = %@\n", @"matchedDate", matchedDate];
  }

  return v5;
}

@end