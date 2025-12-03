@interface MHSchemaMHRTSFalseRejectDetected
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHRTSFalseRejectDetected)initWithDictionary:(id)dictionary;
- (MHSchemaMHRTSFalseRejectDetected)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHRTSFalseRejectDetected

- (MHSchemaMHRTSFalseRejectDetected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = MHSchemaMHRTSFalseRejectDetected;
  v5 = [(MHSchemaMHRTSFalseRejectDetected *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHRTSFalseRejectDetected setAssetVersion:](v5, "setAssetVersion:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"gestureModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(MHSchemaMHRTSFalseRejectDetected *)v5 setGestureModelVersion:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"audioModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(MHSchemaMHRTSFalseRejectDetected *)v5 setAudioModelVersion:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"policyModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(MHSchemaMHRTSFalseRejectDetected *)v5 setPolicyModelVersion:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (MHSchemaMHRTSFalseRejectDetected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHRTSFalseRejectDetected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHRTSFalseRejectDetected *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHRTSFalseRejectDetected assetVersion](self, "assetVersion")}];
    [dictionary setObject:v4 forKeyedSubscript:@"assetVersion"];
  }

  if (self->_audioModelVersion)
  {
    audioModelVersion = [(MHSchemaMHRTSFalseRejectDetected *)self audioModelVersion];
    v6 = [audioModelVersion copy];
    [dictionary setObject:v6 forKeyedSubscript:@"audioModelVersion"];
  }

  if (self->_gestureModelVersion)
  {
    gestureModelVersion = [(MHSchemaMHRTSFalseRejectDetected *)self gestureModelVersion];
    v8 = [gestureModelVersion copy];
    [dictionary setObject:v8 forKeyedSubscript:@"gestureModelVersion"];
  }

  if (self->_policyModelVersion)
  {
    policyModelVersion = [(MHSchemaMHRTSFalseRejectDetected *)self policyModelVersion];
    v10 = [policyModelVersion copy];
    [dictionary setObject:v10 forKeyedSubscript:@"policyModelVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_assetVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_gestureModelVersion hash]^ v3;
  v5 = [(NSString *)self->_audioModelVersion hash];
  return v4 ^ v5 ^ [(NSString *)self->_policyModelVersion hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    assetVersion = self->_assetVersion;
    if (assetVersion != [equalCopy assetVersion])
    {
      goto LABEL_20;
    }
  }

  gestureModelVersion = [(MHSchemaMHRTSFalseRejectDetected *)self gestureModelVersion];
  gestureModelVersion2 = [equalCopy gestureModelVersion];
  if ((gestureModelVersion != 0) == (gestureModelVersion2 == 0))
  {
    goto LABEL_19;
  }

  gestureModelVersion3 = [(MHSchemaMHRTSFalseRejectDetected *)self gestureModelVersion];
  if (gestureModelVersion3)
  {
    v9 = gestureModelVersion3;
    gestureModelVersion4 = [(MHSchemaMHRTSFalseRejectDetected *)self gestureModelVersion];
    gestureModelVersion5 = [equalCopy gestureModelVersion];
    v12 = [gestureModelVersion4 isEqual:gestureModelVersion5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  gestureModelVersion = [(MHSchemaMHRTSFalseRejectDetected *)self audioModelVersion];
  gestureModelVersion2 = [equalCopy audioModelVersion];
  if ((gestureModelVersion != 0) == (gestureModelVersion2 == 0))
  {
    goto LABEL_19;
  }

  audioModelVersion = [(MHSchemaMHRTSFalseRejectDetected *)self audioModelVersion];
  if (audioModelVersion)
  {
    v14 = audioModelVersion;
    audioModelVersion2 = [(MHSchemaMHRTSFalseRejectDetected *)self audioModelVersion];
    audioModelVersion3 = [equalCopy audioModelVersion];
    v17 = [audioModelVersion2 isEqual:audioModelVersion3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  gestureModelVersion = [(MHSchemaMHRTSFalseRejectDetected *)self policyModelVersion];
  gestureModelVersion2 = [equalCopy policyModelVersion];
  if ((gestureModelVersion != 0) != (gestureModelVersion2 == 0))
  {
    policyModelVersion = [(MHSchemaMHRTSFalseRejectDetected *)self policyModelVersion];
    if (!policyModelVersion)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = policyModelVersion;
    policyModelVersion2 = [(MHSchemaMHRTSFalseRejectDetected *)self policyModelVersion];
    policyModelVersion3 = [equalCopy policyModelVersion];
    v22 = [policyModelVersion2 isEqual:policyModelVersion3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  gestureModelVersion = [(MHSchemaMHRTSFalseRejectDetected *)self gestureModelVersion];

  if (gestureModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  audioModelVersion = [(MHSchemaMHRTSFalseRejectDetected *)self audioModelVersion];

  if (audioModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  policyModelVersion = [(MHSchemaMHRTSFalseRejectDetected *)self policyModelVersion];

  v7 = toCopy;
  if (policyModelVersion)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end