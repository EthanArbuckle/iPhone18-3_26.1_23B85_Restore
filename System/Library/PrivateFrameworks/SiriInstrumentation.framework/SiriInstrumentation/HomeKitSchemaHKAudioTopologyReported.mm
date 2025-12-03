@interface HomeKitSchemaHKAudioTopologyReported
- (BOOL)isEqual:(id)equal;
- (HomeKitSchemaHKAudioTopologyReported)initWithDictionary:(id)dictionary;
- (HomeKitSchemaHKAudioTopologyReported)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsLeader:(BOOL)leader;
- (void)writeTo:(id)to;
@end

@implementation HomeKitSchemaHKAudioTopologyReported

- (HomeKitSchemaHKAudioTopologyReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = HomeKitSchemaHKAudioTopologyReported;
  v5 = [(HomeKitSchemaHKAudioTopologyReported *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioTopology"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAudioTopologyReported setAudioTopology:](v5, "setAudioTopology:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isLeader"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAudioTopologyReported setIsLeader:](v5, "setIsLeader:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (HomeKitSchemaHKAudioTopologyReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HomeKitSchemaHKAudioTopologyReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HomeKitSchemaHKAudioTopologyReported *)self dictionaryRepresentation];
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
  v4 = *(&self->_isLeader + 1);
  if (v4)
  {
    v5 = [(HomeKitSchemaHKAudioTopologyReported *)self audioTopology]- 1;
    if (v5 > 3)
    {
      v6 = @"HKDEVICESAUDIOTOPOLOGY_NONE";
    }

    else
    {
      v6 = off_1E78D8030[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"audioTopology"];
    v4 = *(&self->_isLeader + 1);
  }

  if ((v4 & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[HomeKitSchemaHKAudioTopologyReported isLeader](self, "isLeader")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isLeader"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isLeader + 1))
  {
    v2 = 2654435761 * self->_audioTopology;
    if ((*(&self->_isLeader + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*(&self->_isLeader + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_isLeader;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(&self->_isLeader + 1);
  v6 = equalCopy[13];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    audioTopology = self->_audioTopology;
    if (audioTopology != [equalCopy audioTopology])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v5 = *(&self->_isLeader + 1);
    v6 = equalCopy[13];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    isLeader = self->_isLeader;
    if (isLeader != [equalCopy isLeader])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = *(&self->_isLeader + 1);
  v6 = toCopy;
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    v5 = *(&self->_isLeader + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)setHasIsLeader:(BOOL)leader
{
  if (leader)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLeader + 1) = *(&self->_isLeader + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end