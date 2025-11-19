@interface PSESchemaPSEMediaEntitySimilarity
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PSESchemaPSEMediaEntitySimilarity)initWithDictionary:(id)a3;
- (PSESchemaPSEMediaEntitySimilarity)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsSameMediaAlbum:(BOOL)a3;
- (void)setHasIsSameMediaArtist:(BOOL)a3;
- (void)setHasIsSameMediaItem:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSESchemaPSEMediaEntitySimilarity

- (PSESchemaPSEMediaEntitySimilarity)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PSESchemaPSEMediaEntitySimilarity;
  v5 = [(PSESchemaPSEMediaEntitySimilarity *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isSameMediaTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMediaEntitySimilarity setIsSameMediaTitle:](v5, "setIsSameMediaTitle:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isSameMediaArtist"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMediaEntitySimilarity setIsSameMediaArtist:](v5, "setIsSameMediaArtist:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isSameMediaAlbum"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMediaEntitySimilarity setIsSameMediaAlbum:](v5, "setIsSameMediaAlbum:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isSameMediaItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMediaEntitySimilarity setIsSameMediaItem:](v5, "setIsSameMediaItem:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PSESchemaPSEMediaEntitySimilarity)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PSESchemaPSEMediaEntitySimilarity *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PSESchemaPSEMediaEntitySimilarity *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSEMediaEntitySimilarity isSameMediaAlbum](self, "isSameMediaAlbum")}];
    [v3 setObject:v7 forKeyedSubscript:@"isSameMediaAlbum"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSEMediaEntitySimilarity isSameMediaArtist](self, "isSameMediaArtist")}];
  [v3 setObject:v8 forKeyedSubscript:@"isSameMediaArtist"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSEMediaEntitySimilarity isSameMediaItem](self, "isSameMediaItem")}];
  [v3 setObject:v9 forKeyedSubscript:@"isSameMediaItem"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSEMediaEntitySimilarity isSameMediaTitle](self, "isSameMediaTitle")}];
    [v3 setObject:v5 forKeyedSubscript:@"isSameMediaTitle"];
  }

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isSameMediaTitle;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_isSameMediaArtist;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
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
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_isSameMediaAlbum;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_isSameMediaItem;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = v4[12];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    isSameMediaTitle = self->_isSameMediaTitle;
    if (isSameMediaTitle != [v4 isSameMediaTitle])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    isSameMediaArtist = self->_isSameMediaArtist;
    if (isSameMediaArtist != [v4 isSameMediaArtist])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    isSameMediaAlbum = self->_isSameMediaAlbum;
    if (isSameMediaAlbum == [v4 isSameMediaAlbum])
    {
      has = self->_has;
      v6 = v4[12];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    isSameMediaItem = self->_isSameMediaItem;
    if (isSameMediaItem != [v4 isSameMediaItem])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
}

- (void)setHasIsSameMediaItem:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsSameMediaAlbum:(BOOL)a3
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

- (void)setHasIsSameMediaArtist:(BOOL)a3
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