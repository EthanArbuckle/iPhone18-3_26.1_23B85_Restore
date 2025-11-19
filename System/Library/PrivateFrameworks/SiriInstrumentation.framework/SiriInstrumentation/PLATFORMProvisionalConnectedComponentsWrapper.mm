@interface PLATFORMProvisionalConnectedComponentsWrapper
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLATFORMProvisionalConnectedComponentsByClock)msg;
- (PLATFORMProvisionalConnectedComponentsWrapper)initWithDictionary:(id)a3;
- (PLATFORMProvisionalConnectedComponentsWrapper)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (void)deleteMsg;
- (void)setMsg:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLATFORMProvisionalConnectedComponentsWrapper

- (PLATFORMProvisionalConnectedComponentsWrapper)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PLATFORMProvisionalConnectedComponentsWrapper;
  v5 = [(PLATFORMProvisionalConnectedComponentsWrapper *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"clockIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLATFORMProvisionalConnectedComponentsWrapper *)v5 setClockIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"msg"];
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

- (PLATFORMProvisionalConnectedComponentsWrapper)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLATFORMProvisionalConnectedComponentsWrapper *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_clockIdentifier)
  {
    v4 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"clockIdentifier"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"clockIdentifier"];
    }
  }

  if (self->_msg)
  {
    v7 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self msg];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"msg"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"msg"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichEventtype = self->_whichEventtype;
  if (whichEventtype != [v4 whichEventtype])
  {
    goto LABEL_13;
  }

  v6 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];
  v7 = [v4 clockIdentifier];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];
    v11 = [v4 clockIdentifier];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self msg];
  v7 = [v4 msg];
  if ((v6 != 0) != (v7 == 0))
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
    v16 = [v4 msg];
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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];

  if (v4)
  {
    v5 = [(PLATFORMProvisionalConnectedComponentsWrapper *)self clockIdentifier];
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

- (void)setMsg:(id)a3
{
  v3 = 101;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichEventtype = v3;
  objc_storeStrong(&self->_msg, a3);
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