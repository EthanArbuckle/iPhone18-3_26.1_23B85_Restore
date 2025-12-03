@interface FLOWSchemaFLOWIdentityContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWIdentityContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWIdentityContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWIdentityContext

- (FLOWSchemaFLOWIdentityContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWSchemaFLOWIdentityContext;
  v5 = [(FLOWSchemaFLOWIdentityContext *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"profileSwitchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWProfileSwitchContext alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWIdentityContext *)v5 setProfileSwitchContext:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWIdentityContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWIdentityContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWIdentityContext *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_profileSwitchContext)
  {
    profileSwitchContext = [(FLOWSchemaFLOWIdentityContext *)self profileSwitchContext];
    dictionaryRepresentation = [profileSwitchContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"profileSwitchContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"profileSwitchContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    profileSwitchContext = [(FLOWSchemaFLOWIdentityContext *)self profileSwitchContext];
    profileSwitchContext2 = [equalCopy profileSwitchContext];
    v7 = profileSwitchContext2;
    if ((profileSwitchContext != 0) != (profileSwitchContext2 == 0))
    {
      profileSwitchContext3 = [(FLOWSchemaFLOWIdentityContext *)self profileSwitchContext];
      if (!profileSwitchContext3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = profileSwitchContext3;
      profileSwitchContext4 = [(FLOWSchemaFLOWIdentityContext *)self profileSwitchContext];
      profileSwitchContext5 = [equalCopy profileSwitchContext];
      v12 = [profileSwitchContext4 isEqual:profileSwitchContext5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  profileSwitchContext = [(FLOWSchemaFLOWIdentityContext *)self profileSwitchContext];

  if (profileSwitchContext)
  {
    profileSwitchContext2 = [(FLOWSchemaFLOWIdentityContext *)self profileSwitchContext];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLOWSchemaFLOWIdentityContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLOWSchemaFLOWIdentityContext *)self profileSwitchContext:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(FLOWSchemaFLOWIdentityContext *)self deleteProfileSwitchContext];
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