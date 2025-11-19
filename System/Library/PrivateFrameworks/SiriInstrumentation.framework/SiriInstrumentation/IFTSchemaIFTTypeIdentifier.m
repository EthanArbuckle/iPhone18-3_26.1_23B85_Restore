@interface IFTSchemaIFTTypeIdentifier
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTCustom)custom;
- (IFTSchemaIFTPrimitive)primitive;
- (IFTSchemaIFTTypeIdentifier)initWithDictionary:(id)a3;
- (IFTSchemaIFTTypeIdentifier)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteCustom;
- (void)deletePrimitive;
- (void)setCustom:(id)a3;
- (void)setPrimitive:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTTypeIdentifier

- (IFTSchemaIFTTypeIdentifier)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTTypeIdentifier;
  v5 = [(IFTSchemaIFTTypeIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"primitive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTPrimitive alloc] initWithDictionary:v6];
      [(IFTSchemaIFTTypeIdentifier *)v5 setPrimitive:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"custom"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTCustom alloc] initWithDictionary:v8];
      [(IFTSchemaIFTTypeIdentifier *)v5 setCustom:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTTypeIdentifier)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTTypeIdentifier *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTTypeIdentifier *)self dictionaryRepresentation];
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
  if (self->_custom)
  {
    v4 = [(IFTSchemaIFTTypeIdentifier *)self custom];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"custom"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"custom"];
    }
  }

  if (self->_primitive)
  {
    v7 = [(IFTSchemaIFTTypeIdentifier *)self primitive];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"primitive"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"primitive"];
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

  whichOneof_Typeidentifier = self->_whichOneof_Typeidentifier;
  if (whichOneof_Typeidentifier != [v4 whichOneof_Typeidentifier])
  {
    goto LABEL_13;
  }

  v6 = [(IFTSchemaIFTTypeIdentifier *)self primitive];
  v7 = [v4 primitive];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(IFTSchemaIFTTypeIdentifier *)self primitive];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTTypeIdentifier *)self primitive];
    v11 = [v4 primitive];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTTypeIdentifier *)self custom];
  v7 = [v4 custom];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(IFTSchemaIFTTypeIdentifier *)self custom];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(IFTSchemaIFTTypeIdentifier *)self custom];
    v16 = [v4 custom];
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
  v4 = [(IFTSchemaIFTTypeIdentifier *)self primitive];

  if (v4)
  {
    v5 = [(IFTSchemaIFTTypeIdentifier *)self primitive];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTTypeIdentifier *)self custom];

  if (v6)
  {
    v7 = [(IFTSchemaIFTTypeIdentifier *)self custom];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteCustom
{
  if (self->_whichOneof_Typeidentifier == 2)
  {
    self->_whichOneof_Typeidentifier = 0;
    self->_custom = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTCustom)custom
{
  if (self->_whichOneof_Typeidentifier == 2)
  {
    v3 = self->_custom;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCustom:(id)a3
{
  v4 = a3;
  primitive = self->_primitive;
  self->_primitive = 0;

  self->_whichOneof_Typeidentifier = 2 * (v4 != 0);
  custom = self->_custom;
  self->_custom = v4;
}

- (void)deletePrimitive
{
  if (self->_whichOneof_Typeidentifier == 1)
  {
    self->_whichOneof_Typeidentifier = 0;
    self->_primitive = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPrimitive)primitive
{
  if (self->_whichOneof_Typeidentifier == 1)
  {
    v3 = self->_primitive;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPrimitive:(id)a3
{
  v4 = a3;
  custom = self->_custom;
  self->_custom = 0;

  self->_whichOneof_Typeidentifier = v4 != 0;
  primitive = self->_primitive;
  self->_primitive = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTTypeIdentifier;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTTypeIdentifier *)self primitive];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTTypeIdentifier *)self deletePrimitive];
  }

  v9 = [(IFTSchemaIFTTypeIdentifier *)self custom];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTTypeIdentifier *)self deleteCustom];
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