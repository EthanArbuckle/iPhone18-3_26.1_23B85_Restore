@interface PEGASUSSchemaPEGASUSAudioQueueStateItemTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioQueueStateItemTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSAudioQueueStateItemTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSAudioQueueStateItemTier1

- (PEGASUSSchemaPEGASUSAudioQueueStateItemTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PEGASUSSchemaPEGASUSAudioQueueStateItemTier1;
  v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioAlbum"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)v5 setAudioAlbum:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"audioArtist"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)v5 setAudioArtist:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioClientId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)v5 setAudioClientId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"audioTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)v5 setAudioTitle:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioQueueStateItemTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self dictionaryRepresentation];
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
  if (self->_audioAlbum)
  {
    audioAlbum = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioAlbum];
    v5 = [audioAlbum copy];
    [dictionary setObject:v5 forKeyedSubscript:@"audioAlbum"];
  }

  if (self->_audioArtist)
  {
    audioArtist = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioArtist];
    v7 = [audioArtist copy];
    [dictionary setObject:v7 forKeyedSubscript:@"audioArtist"];
  }

  if (self->_audioClientId)
  {
    audioClientId = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioClientId];
    v9 = [audioClientId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"audioClientId"];
  }

  if (self->_audioTitle)
  {
    audioTitle = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioTitle];
    v11 = [audioTitle copy];
    [dictionary setObject:v11 forKeyedSubscript:@"audioTitle"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_audioAlbum hash];
  v4 = [(NSString *)self->_audioArtist hash]^ v3;
  v5 = [(NSString *)self->_audioClientId hash];
  return v4 ^ v5 ^ [(NSString *)self->_audioTitle hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  audioAlbum = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioAlbum];
  audioAlbum2 = [equalCopy audioAlbum];
  if ((audioAlbum != 0) == (audioAlbum2 == 0))
  {
    goto LABEL_21;
  }

  audioAlbum3 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioAlbum];
  if (audioAlbum3)
  {
    v8 = audioAlbum3;
    audioAlbum4 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioAlbum];
    audioAlbum5 = [equalCopy audioAlbum];
    v11 = [audioAlbum4 isEqual:audioAlbum5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  audioAlbum = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioArtist];
  audioAlbum2 = [equalCopy audioArtist];
  if ((audioAlbum != 0) == (audioAlbum2 == 0))
  {
    goto LABEL_21;
  }

  audioArtist = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioArtist];
  if (audioArtist)
  {
    v13 = audioArtist;
    audioArtist2 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioArtist];
    audioArtist3 = [equalCopy audioArtist];
    v16 = [audioArtist2 isEqual:audioArtist3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  audioAlbum = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioClientId];
  audioAlbum2 = [equalCopy audioClientId];
  if ((audioAlbum != 0) == (audioAlbum2 == 0))
  {
    goto LABEL_21;
  }

  audioClientId = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioClientId];
  if (audioClientId)
  {
    v18 = audioClientId;
    audioClientId2 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioClientId];
    audioClientId3 = [equalCopy audioClientId];
    v21 = [audioClientId2 isEqual:audioClientId3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  audioAlbum = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioTitle];
  audioAlbum2 = [equalCopy audioTitle];
  if ((audioAlbum != 0) != (audioAlbum2 == 0))
  {
    audioTitle = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioTitle];
    if (!audioTitle)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = audioTitle;
    audioTitle2 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioTitle];
    audioTitle3 = [equalCopy audioTitle];
    v26 = [audioTitle2 isEqual:audioTitle3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  audioAlbum = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioAlbum];

  if (audioAlbum)
  {
    PBDataWriterWriteStringField();
  }

  audioArtist = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioArtist];

  if (audioArtist)
  {
    PBDataWriterWriteStringField();
  }

  audioClientId = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioClientId];

  if (audioClientId)
  {
    PBDataWriterWriteStringField();
  }

  audioTitle = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioTitle];

  v8 = toCopy;
  if (audioTitle)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSAudioQueueStateItemTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioAlbum];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioClientId];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioTitle];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioAlbum];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioClientId];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioTitle];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioAlbum];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioClientId];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioTitle];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioAlbum];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioClientId];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioTitle];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioAlbum];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioClientId];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioTitle];
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