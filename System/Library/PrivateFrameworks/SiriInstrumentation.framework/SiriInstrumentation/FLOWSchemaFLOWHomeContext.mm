@interface FLOWSchemaFLOWHomeContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWHomeContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWHomeContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppleTvCount:(BOOL)count;
- (void)setHasHasCurrentHome:(BOOL)home;
- (void)setHasHomePodCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWHomeContext

- (FLOWSchemaFLOWHomeContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FLOWSchemaFLOWHomeContext;
  v5 = [(FLOWSchemaFLOWHomeContext *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"homeCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeContext setHomeCount:](v5, "setHomeCount:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"homePodCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeContext setHomePodCount:](v5, "setHomePodCount:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appleTvCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeContext setAppleTvCount:](v5, "setAppleTvCount:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"hasCurrentHome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeContext setHasCurrentHome:](v5, "setHasCurrentHome:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWHomeContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWHomeContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWHomeContext *)self dictionaryRepresentation];
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
  v4 = *(&self->_hasCurrentHome + 1);
  if ((v4 & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWHomeContext appleTvCount](self, "appleTvCount")}];
    [dictionary setObject:v7 forKeyedSubscript:@"appleTvCount"];

    v4 = *(&self->_hasCurrentHome + 1);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(&self->_hasCurrentHome + 1) & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWHomeContext hasCurrentHome](self, "hasCurrentHome")}];
  [dictionary setObject:v8 forKeyedSubscript:@"hasCurrentHome"];

  v4 = *(&self->_hasCurrentHome + 1);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWHomeContext homeCount](self, "homeCount")}];
  [dictionary setObject:v9 forKeyedSubscript:@"homeCount"];

  if ((*(&self->_hasCurrentHome + 1) & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWHomeContext homePodCount](self, "homePodCount")}];
    [dictionary setObject:v5 forKeyedSubscript:@"homePodCount"];
  }

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_hasCurrentHome + 1))
  {
    v2 = 2654435761 * self->_homeCount;
    if ((*(&self->_hasCurrentHome + 1) & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_homePodCount;
      if ((*(&self->_hasCurrentHome + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*(&self->_hasCurrentHome + 1) & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*(&self->_hasCurrentHome + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(&self->_hasCurrentHome + 1) & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_appleTvCount;
  if ((*(&self->_hasCurrentHome + 1) & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_hasCurrentHome;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(&self->_hasCurrentHome + 1);
  v6 = equalCopy[21];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (v5)
  {
    homeCount = self->_homeCount;
    if (homeCount != [equalCopy homeCount])
    {
      goto LABEL_18;
    }

    v5 = *(&self->_hasCurrentHome + 1);
    v6 = equalCopy[21];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    homePodCount = self->_homePodCount;
    if (homePodCount != [equalCopy homePodCount])
    {
      goto LABEL_18;
    }

    v5 = *(&self->_hasCurrentHome + 1);
    v6 = equalCopy[21];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    appleTvCount = self->_appleTvCount;
    if (appleTvCount == [equalCopy appleTvCount])
    {
      v5 = *(&self->_hasCurrentHome + 1);
      v6 = equalCopy[21];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    hasCurrentHome = self->_hasCurrentHome;
    if (hasCurrentHome != [equalCopy hasCurrentHome])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = *(&self->_hasCurrentHome + 1);
  if (v4)
  {
    PBDataWriterWriteUint32Field();
    v4 = *(&self->_hasCurrentHome + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(&self->_hasCurrentHome + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  v4 = *(&self->_hasCurrentHome + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteUint32Field();
  if ((*(&self->_hasCurrentHome + 1) & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
}

- (void)setHasHasCurrentHome:(BOOL)home
{
  if (home)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasCurrentHome + 1) = *(&self->_hasCurrentHome + 1) & 0xF7 | v3;
}

- (void)setHasAppleTvCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasCurrentHome + 1) = *(&self->_hasCurrentHome + 1) & 0xFB | v3;
}

- (void)setHasHomePodCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasCurrentHome + 1) = *(&self->_hasCurrentHome + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end