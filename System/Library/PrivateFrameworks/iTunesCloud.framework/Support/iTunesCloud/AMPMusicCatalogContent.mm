@interface AMPMusicCatalogContent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContentType:(id)a3;
- (int)contentType;
- (unint64_t)hash;
- (void)addContentFeatures:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCanonicalId:(BOOL)a3;
- (void)setHasContentType:(BOOL)a3;
- (void)setHasIsExplicit:(BOOL)a3;
- (void)setHasReleaseDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AMPMusicCatalogContent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 48);
  if ((v6 & 8) != 0)
  {
    self->_contentType = *(v4 + 10);
    *&self->_has |= 8u;
    v6 = *(v4 + 48);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(v4 + 48) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_adamId = *(v4 + 1);
  *&self->_has |= 1u;
  v6 = *(v4 + 48);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_canonicalId = *(v4 + 2);
  *&self->_has |= 2u;
  v6 = *(v4 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  self->_releaseDate = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 48) & 0x10) != 0)
  {
LABEL_6:
    self->_isExplicit = *(v4 + 44);
    *&self->_has |= 0x10u;
  }

LABEL_7:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(v4 + 4);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AMPMusicCatalogContent *)self addContentFeatures:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_contentType;
    if (*&self->_has)
    {
LABEL_3:
      v7 = 2654435761 * self->_adamId;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_canonicalId;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v10 = 0;
    return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ [(NSMutableArray *)self->_contentFeatures hash:v3];
  }

LABEL_9:
  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v9 = 2654435761 * self->_releaseDate;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v10 = 2654435761 * self->_isExplicit;
  return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ [(NSMutableArray *)self->_contentFeatures hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = *(v4 + 48);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_contentType != *(v4 + 10))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_27;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_adamId != *(v4 + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_canonicalId != *(v4 + 2))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_releaseDate != *(v4 + 3))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(v4 + 48) & 0x10) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v7 = 0;
    goto LABEL_28;
  }

  if ((*(v4 + 48) & 0x10) == 0)
  {
    goto LABEL_27;
  }

  v9 = *(v4 + 44);
  if (self->_isExplicit)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_27;
  }

LABEL_24:
  contentFeatures = self->_contentFeatures;
  if (contentFeatures | *(v4 + 4))
  {
    v7 = [(NSMutableArray *)contentFeatures isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_28:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 10) = self->_contentType;
    *(v5 + 48) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 1) = self->_adamId;
  *(v5 + 48) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 2) = self->_canonicalId;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  *(v5 + 3) = self->_releaseDate;
  *(v5 + 48) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(v5 + 44) = self->_isExplicit;
    *(v5 + 48) |= 0x10u;
  }

LABEL_7:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_contentFeatures;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{a3, v15}];
        [v6 addContentFeatures:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[10] = self->_contentType;
    *(v4 + 48) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 1) = self->_adamId;
  *(v4 + 48) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_17:
    *(v4 + 3) = self->_releaseDate;
    *(v4 + 48) |= 4u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  *(v4 + 2) = self->_canonicalId;
  *(v4 + 48) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((has & 0x10) != 0)
  {
LABEL_6:
    *(v4 + 44) = self->_isExplicit;
    *(v4 + 48) |= 0x10u;
  }

LABEL_7:
  v10 = v4;
  if ([(AMPMusicCatalogContent *)self contentFeaturesCount])
  {
    [v10 clearContentFeatures];
    v6 = [(AMPMusicCatalogContent *)self contentFeaturesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AMPMusicCatalogContent *)self contentFeaturesAtIndex:i];
        [v10 addContentFeatures:v9];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    contentType = self->_contentType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  adamId = self->_adamId;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  canonicalId = self->_canonicalId;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  releaseDate = self->_releaseDate;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    isExplicit = self->_isExplicit;
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_contentFeatures;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    contentType = self->_contentType;
    if (contentType >= 5)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_contentType];
    }

    else
    {
      v6 = off_1001DDE50[contentType];
    }

    [v3 setObject:v6 forKey:@"contentType"];

    has = self->_has;
  }

  if (has)
  {
    v16 = [NSNumber numberWithLongLong:self->_adamId];
    [v3 setObject:v16 forKey:@"adamId"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_8:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_8;
  }

  v17 = [NSNumber numberWithLongLong:self->_canonicalId];
  [v3 setObject:v17 forKey:@"canonicalId"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  v18 = [NSNumber numberWithLongLong:self->_releaseDate];
  [v3 setObject:v18 forKey:@"releaseDate"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    v7 = [NSNumber numberWithBool:self->_isExplicit];
    [v3 setObject:v7 forKey:@"isExplicit"];
  }

LABEL_11:
  if ([(NSMutableArray *)self->_contentFeatures count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_contentFeatures, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_contentFeatures;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"contentFeatures"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AMPMusicCatalogContent;
  v3 = [(AMPMusicCatalogContent *)&v7 description];
  v4 = [(AMPMusicCatalogContent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)addContentFeatures:(id)a3
{
  v4 = a3;
  contentFeatures = self->_contentFeatures;
  v8 = v4;
  if (!contentFeatures)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_contentFeatures;
    self->_contentFeatures = v6;

    v4 = v8;
    contentFeatures = self->_contentFeatures;
  }

  [(NSMutableArray *)contentFeatures addObject:v4];
}

- (void)setHasIsExplicit:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasReleaseDate:(BOOL)a3
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

- (void)setHasCanonicalId:(BOOL)a3
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

- (int)StringAsContentType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Album"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Song"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Playlist"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MusicVideo"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ArtistUploadedContent"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasContentType:(BOOL)a3
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

- (int)contentType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_contentType;
  }

  else
  {
    return 0;
  }
}

@end