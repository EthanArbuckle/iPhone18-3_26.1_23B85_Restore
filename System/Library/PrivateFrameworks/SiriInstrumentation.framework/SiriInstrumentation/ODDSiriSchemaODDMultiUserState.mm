@interface ODDSiriSchemaODDMultiUserState
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDMultiUserState)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDMultiUserState)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addEnrolledUsers:(id)users;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDMultiUserState

- (ODDSiriSchemaODDMultiUserState)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = ODDSiriSchemaODDMultiUserState;
  v5 = [(ODDSiriSchemaODDMultiUserState *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"enrolledUsers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [ODDSiriSchemaODDUserPersonalization alloc];
              v14 = [(ODDSiriSchemaODDUserPersonalization *)v13 initWithDictionary:v12, v19];
              [(ODDSiriSchemaODDMultiUserState *)v5 addEnrolledUsers:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"multiUserSetupStatus", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[ODDSiriSchemaODDMultiUserSetupStatus alloc] initWithDictionary:v15];
      [(ODDSiriSchemaODDMultiUserState *)v5 setMultiUserSetupStatus:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDMultiUserState)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDMultiUserState *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDMultiUserState *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_enrolledUsers count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_enrolledUsers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"enrolledUsers"];
  }

  if (self->_multiUserSetupStatus)
  {
    multiUserSetupStatus = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
    dictionaryRepresentation2 = [multiUserSetupStatus dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"multiUserSetupStatus"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"multiUserSetupStatus"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  enrolledUsers = [(ODDSiriSchemaODDMultiUserState *)self enrolledUsers];
  enrolledUsers2 = [equalCopy enrolledUsers];
  if ((enrolledUsers != 0) == (enrolledUsers2 == 0))
  {
    goto LABEL_11;
  }

  enrolledUsers3 = [(ODDSiriSchemaODDMultiUserState *)self enrolledUsers];
  if (enrolledUsers3)
  {
    v8 = enrolledUsers3;
    enrolledUsers4 = [(ODDSiriSchemaODDMultiUserState *)self enrolledUsers];
    enrolledUsers5 = [equalCopy enrolledUsers];
    v11 = [enrolledUsers4 isEqual:enrolledUsers5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  enrolledUsers = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
  enrolledUsers2 = [equalCopy multiUserSetupStatus];
  if ((enrolledUsers != 0) != (enrolledUsers2 == 0))
  {
    multiUserSetupStatus = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
    if (!multiUserSetupStatus)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = multiUserSetupStatus;
    multiUserSetupStatus2 = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
    multiUserSetupStatus3 = [equalCopy multiUserSetupStatus];
    v16 = [multiUserSetupStatus2 isEqual:multiUserSetupStatus3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_enrolledUsers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  multiUserSetupStatus = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];

  if (multiUserSetupStatus)
  {
    multiUserSetupStatus2 = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addEnrolledUsers:(id)users
{
  usersCopy = users;
  enrolledUsers = self->_enrolledUsers;
  v8 = usersCopy;
  if (!enrolledUsers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_enrolledUsers;
    self->_enrolledUsers = array;

    usersCopy = v8;
    enrolledUsers = self->_enrolledUsers;
  }

  [(NSArray *)enrolledUsers addObject:usersCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = ODDSiriSchemaODDMultiUserState;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDMultiUserState *)self enrolledUsers:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(ODDSiriSchemaODDMultiUserState *)self setEnrolledUsers:v7];

  multiUserSetupStatus = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
  v9 = [multiUserSetupStatus applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDMultiUserState *)self deleteMultiUserSetupStatus];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end