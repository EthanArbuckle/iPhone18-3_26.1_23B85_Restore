@interface MHSchemaMHCoreSpeechZeroFilterRunPair
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHCoreSpeechZeroFilterRunPair)initWithDictionary:(id)a3;
- (MHSchemaMHCoreSpeechZeroFilterRunPair)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasZeroRunLength:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHCoreSpeechZeroFilterRunPair

- (MHSchemaMHCoreSpeechZeroFilterRunPair)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MHSchemaMHCoreSpeechZeroFilterRunPair;
  v5 = [(MHSchemaMHCoreSpeechZeroFilterRunPair *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"zeroRunStartingSample"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHCoreSpeechZeroFilterRunPair setZeroRunStartingSample:](v5, "setZeroRunStartingSample:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"zeroRunLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHCoreSpeechZeroFilterRunPair setZeroRunLength:](v5, "setZeroRunLength:", [v7 unsignedLongLongValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (MHSchemaMHCoreSpeechZeroFilterRunPair)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHCoreSpeechZeroFilterRunPair *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHCoreSpeechZeroFilterRunPair *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHCoreSpeechZeroFilterRunPair zeroRunLength](self, "zeroRunLength")}];
    [v3 setObject:v5 forKeyedSubscript:@"zeroRunLength"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHCoreSpeechZeroFilterRunPair zeroRunStartingSample](self, "zeroRunStartingSample")}];
    [v3 setObject:v6 forKeyedSubscript:@"zeroRunStartingSample"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_zeroRunStartingSample;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761u * self->_zeroRunLength;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    zeroRunStartingSample = self->_zeroRunStartingSample;
    if (zeroRunStartingSample != [v4 zeroRunStartingSample])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    zeroRunLength = self->_zeroRunLength;
    if (zeroRunLength != [v4 zeroRunLength])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }
}

- (void)setHasZeroRunLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end