@interface ODDSiriSchemaODDMultiUserState
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDMultiUserState)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDMultiUserState)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addEnrolledUsers:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDMultiUserState

- (ODDSiriSchemaODDMultiUserState)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ODDSiriSchemaODDMultiUserState;
  v5 = [(ODDSiriSchemaODDMultiUserState *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"enrolledUsers"];
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

    v15 = [v4 objectForKeyedSubscript:{@"multiUserSetupStatus", v19}];
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

- (ODDSiriSchemaODDMultiUserState)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDMultiUserState *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDMultiUserState *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_enrolledUsers count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"enrolledUsers"];
  }

  if (self->_multiUserSetupStatus)
  {
    v12 = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"multiUserSetupStatus"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"multiUserSetupStatus"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v16];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(ODDSiriSchemaODDMultiUserState *)self enrolledUsers];
  v6 = [v4 enrolledUsers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(ODDSiriSchemaODDMultiUserState *)self enrolledUsers];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDMultiUserState *)self enrolledUsers];
    v10 = [v4 enrolledUsers];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
  v6 = [v4 multiUserSetupStatus];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
    v15 = [v4 multiUserSetupStatus];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v10 = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];

  if (v10)
  {
    v11 = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addEnrolledUsers:(id)a3
{
  v4 = a3;
  enrolledUsers = self->_enrolledUsers;
  v8 = v4;
  if (!enrolledUsers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_enrolledUsers;
    self->_enrolledUsers = v6;

    v4 = v8;
    enrolledUsers = self->_enrolledUsers;
  }

  [(NSArray *)enrolledUsers addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = ODDSiriSchemaODDMultiUserState;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDMultiUserState *)self enrolledUsers:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(ODDSiriSchemaODDMultiUserState *)self setEnrolledUsers:v7];

  v8 = [(ODDSiriSchemaODDMultiUserState *)self multiUserSetupStatus];
  v9 = [v8 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v9 suppressMessage];
  if (v4)
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