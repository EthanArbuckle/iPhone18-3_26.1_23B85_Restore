@interface SISchemaVersion
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaVersion)initWithDictionary:(id)a3;
- (SISchemaVersion)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMinor:(BOOL)a3;
- (void)setHasPatch:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaVersion

- (SISchemaVersion)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaVersion;
  v5 = [(SISchemaVersion *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"major"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVersion setMajor:](v5, "setMajor:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"minor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVersion setMinor:](v5, "setMinor:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"patch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVersion setPatch:](v5, "setPatch:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"prerelease"];
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

- (SISchemaVersion)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaVersion *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaVersion *)self dictionaryRepresentation];
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
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaVersion major](self, "major")}];
    [v3 setObject:v9 forKeyedSubscript:@"major"];

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
  [v3 setObject:v10 forKeyedSubscript:@"minor"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaVersion patch](self, "patch")}];
    [v3 setObject:v5 forKeyedSubscript:@"patch"];
  }

LABEL_5:
  if (self->_prerelease)
  {
    v6 = [(SISchemaVersion *)self prerelease];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"prerelease"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    major = self->_major;
    if (major != [v4 major])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      minor = self->_minor;
      if (minor != [v4 minor])
      {
        goto LABEL_18;
      }

      has = self->_has;
      v6 = v4[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (!v10 || (patch = self->_patch, patch == [v4 patch]))
      {
        v12 = [(SISchemaVersion *)self prerelease];
        v13 = [v4 prerelease];
        v14 = v13;
        if ((v12 != 0) != (v13 == 0))
        {
          v15 = [(SISchemaVersion *)self prerelease];
          if (!v15)
          {

LABEL_21:
            v20 = 1;
            goto LABEL_19;
          }

          v16 = v15;
          v17 = [(SISchemaVersion *)self prerelease];
          v18 = [v4 prerelease];
          v19 = [v17 isEqual:v18];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
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
  v5 = [(SISchemaVersion *)self prerelease];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (void)setHasPatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMinor:(BOOL)a3
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