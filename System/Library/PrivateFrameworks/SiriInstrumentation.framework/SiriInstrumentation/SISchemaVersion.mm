@interface SISchemaVersion
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaVersion)initWithDictionary:(id)dictionary;
- (SISchemaVersion)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMinor:(BOOL)minor;
- (void)setHasPatch:(BOOL)patch;
- (void)writeTo:(id)to;
@end

@implementation SISchemaVersion

- (SISchemaVersion)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaVersion;
  v5 = [(SISchemaVersion *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"major"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVersion setMajor:](v5, "setMajor:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"minor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVersion setMinor:](v5, "setMinor:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"patch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVersion setPatch:](v5, "setPatch:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"prerelease"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SISchemaVersion *)v5 setPrerelease:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaVersion)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaVersion *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaVersion *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaVersion major](self, "major")}];
    [dictionary setObject:v9 forKeyedSubscript:@"major"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaVersion minor](self, "minor")}];
  [dictionary setObject:v10 forKeyedSubscript:@"minor"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaVersion patch](self, "patch")}];
    [dictionary setObject:v5 forKeyedSubscript:@"patch"];
  }

LABEL_5:
  if (self->_prerelease)
  {
    prerelease = [(SISchemaVersion *)self prerelease];
    v7 = [prerelease copy];
    [dictionary setObject:v7 forKeyedSubscript:@"prerelease"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSString *)self->_prerelease hash:v3];
  }

  v6 = 2654435761 * self->_major;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_minor;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_patch;
  return v7 ^ v6 ^ v8 ^ [(NSString *)self->_prerelease hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    major = self->_major;
    if (major != [equalCopy major])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      minor = self->_minor;
      if (minor != [equalCopy minor])
      {
        goto LABEL_18;
      }

      has = self->_has;
      v6 = equalCopy[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (!v10 || (patch = self->_patch, patch == [equalCopy patch]))
      {
        prerelease = [(SISchemaVersion *)self prerelease];
        prerelease2 = [equalCopy prerelease];
        v14 = prerelease2;
        if ((prerelease != 0) != (prerelease2 == 0))
        {
          prerelease3 = [(SISchemaVersion *)self prerelease];
          if (!prerelease3)
          {

LABEL_21:
            v20 = 1;
            goto LABEL_19;
          }

          v16 = prerelease3;
          prerelease4 = [(SISchemaVersion *)self prerelease];
          prerelease5 = [equalCopy prerelease];
          v19 = [prerelease4 isEqual:prerelease5];

          if (v19)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }
      }
    }
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  prerelease = [(SISchemaVersion *)self prerelease];

  v6 = toCopy;
  if (prerelease)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (void)setHasPatch:(BOOL)patch
{
  if (patch)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMinor:(BOOL)minor
{
  if (minor)
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