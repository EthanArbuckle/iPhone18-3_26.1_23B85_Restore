@interface PLATFORMProvisionalConnectedComponentsWrapper
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLATFORMProvisionalConnectedComponentsByClock)msg;
- (PLATFORMProvisionalConnectedComponentsWrapper)initWithDictionary:(id)dictionary;
- (PLATFORMProvisionalConnectedComponentsWrapper)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (void)deleteMsg;
- (void)setMsg:(id)msg;
- (void)writeTo:(id)to;
@end

@implementation PLATFORMProvisionalConnectedComponentsWrapper

- (PLATFORMProvisionalConnectedComponentsWrapper)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PLATFORMProvisionalConnectedComponentsWrapper;
  v5 = [(PLATFORMProvisionalConnectedComponentsWrapper *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clockIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLATFORMProvisionalConnectedComponentsWrapper *)v5 setClockIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"msg"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PLATFORMProvisionalConnectedComponentsByClock alloc] initWithDictionary:v8];
      [(PLATFORMProvisionalConnectedComponentsWrapper *)v5 setMsg:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PLATFORMProvisionalConnectedComponentsWrapper)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLATFORMProvisionalConnectedComponentsWrapper *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLATFORMProvisionalConnectedComponentsWrapper *)self dictionaryRepresentation];
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
  if (self->_clockIdentifier)
  {
    clockIdentifier = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];
    dictionaryRepresentation = [clockIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clockIdentifier"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clockIdentifier"];
    }
  }

  if (self->_msg)
  {
    v7 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self msg];
    dictionaryRepresentation2 = [v7 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"msg"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"msg"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichEventtype = self->_whichEventtype;
  if (whichEventtype != [equalCopy whichEventtype])
  {
    goto LABEL_13;
  }

  clockIdentifier = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];
  clockIdentifier2 = [equalCopy clockIdentifier];
  if ((clockIdentifier != 0) == (clockIdentifier2 == 0))
  {
    goto LABEL_12;
  }

  clockIdentifier3 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];
  if (clockIdentifier3)
  {
    v9 = clockIdentifier3;
    clockIdentifier4 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];
    clockIdentifier5 = [equalCopy clockIdentifier];
    v12 = [clockIdentifier4 isEqual:clockIdentifier5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  clockIdentifier = [(PLATFORMProvisionalConnectedComponentsWrapper *)self msg];
  clockIdentifier2 = [equalCopy msg];
  if ((clockIdentifier != 0) != (clockIdentifier2 == 0))
  {
    v13 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self msg];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self msg];
    v16 = [equalCopy msg];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  clockIdentifier = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];

  if (clockIdentifier)
  {
    clockIdentifier2 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self msg];

  if (v6)
  {
    v7 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self msg];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteMsg
{
  if (self->_whichEventtype == 101)
  {
    self->_whichEventtype = 0;
    self->_msg = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLATFORMProvisionalConnectedComponentsByClock)msg
{
  if (self->_whichEventtype == 101)
  {
    v3 = self->_msg;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMsg:(id)msg
{
  v3 = 101;
  if (!msg)
  {
    v3 = 0;
  }

  self->_whichEventtype = v3;
  objc_storeStrong(&self->_msg, msg);
}

- (id)qualifiedMessageName
{
  if ([(PLATFORMProvisionalConnectedComponentsWrapper *)self whichEventtype]== 101)
  {
    return @"com.apple.aiml.siri.platform.ProvisionalConnectedComponentsWrapper.ProvisionalConnectedComponentsByClock";
  }

  else
  {
    return @"com.apple.aiml.siri.platform.ProvisionalConnectedComponentsWrapper";
  }
}

@end