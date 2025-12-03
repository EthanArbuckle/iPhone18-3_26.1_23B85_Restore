@interface MHSchemaMHVoiceProfileConfusionScore
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHVoiceProfileConfusionScore)initWithDictionary:(id)dictionary;
- (MHSchemaMHVoiceProfileConfusionScore)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHVoiceProfileConfusionScore

- (MHSchemaMHVoiceProfileConfusionScore)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MHSchemaMHVoiceProfileConfusionScore;
  v5 = [(MHSchemaMHVoiceProfileConfusionScore *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"homeMemberUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHVoiceProfileConfusionScore *)v5 setHomeMemberUserId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"similarityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceProfileConfusionScore setSimilarityScore:](v5, "setSimilarityScore:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceProfileConfusionScore)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceProfileConfusionScore *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHVoiceProfileConfusionScore *)self dictionaryRepresentation];
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
  if (self->_homeMemberUserId)
  {
    homeMemberUserId = [(MHSchemaMHVoiceProfileConfusionScore *)self homeMemberUserId];
    v5 = [homeMemberUserId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"homeMemberUserId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceProfileConfusionScore similarityScore](self, "similarityScore")}];
    [dictionary setObject:v6 forKeyedSubscript:@"similarityScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_homeMemberUserId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_similarityScore;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  homeMemberUserId = [(MHSchemaMHVoiceProfileConfusionScore *)self homeMemberUserId];
  homeMemberUserId2 = [equalCopy homeMemberUserId];
  v7 = homeMemberUserId2;
  if ((homeMemberUserId != 0) == (homeMemberUserId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  homeMemberUserId3 = [(MHSchemaMHVoiceProfileConfusionScore *)self homeMemberUserId];
  if (homeMemberUserId3)
  {
    v9 = homeMemberUserId3;
    homeMemberUserId4 = [(MHSchemaMHVoiceProfileConfusionScore *)self homeMemberUserId];
    homeMemberUserId5 = [equalCopy homeMemberUserId];
    v12 = [homeMemberUserId4 isEqual:homeMemberUserId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    similarityScore = self->_similarityScore;
    if (similarityScore != [equalCopy similarityScore])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  homeMemberUserId = [(MHSchemaMHVoiceProfileConfusionScore *)self homeMemberUserId];

  if (homeMemberUserId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end