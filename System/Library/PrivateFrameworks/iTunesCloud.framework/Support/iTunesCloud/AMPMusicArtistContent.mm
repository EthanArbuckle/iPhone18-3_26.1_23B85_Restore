@interface AMPMusicArtistContent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCatalogContent:(id)content;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AMPMusicArtistContent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 32))
  {
    self->_adamId = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(AMPMusicArtistContent *)self setName:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5[2];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AMPMusicArtistContent *)self addCatalogContent:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_adamId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_catalogContents hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_adamId != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  name = self->_name;
  if (name | *(equalCopy + 3) && ![(NSString *)name isEqual:?])
  {
    goto LABEL_11;
  }

  catalogContents = self->_catalogContents;
  if (catalogContents | *(equalCopy + 2))
  {
    v8 = [(NSMutableArray *)catalogContents isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_adamId;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_name copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_catalogContents;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) copyWithZone:{zone, v16}];
        [v6 addCatalogContent:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_adamId;
    *(toCopy + 32) |= 1u;
  }

  v9 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
  }

  if ([(AMPMusicArtistContent *)self catalogContentsCount])
  {
    [v9 clearCatalogContents];
    catalogContentsCount = [(AMPMusicArtistContent *)self catalogContentsCount];
    if (catalogContentsCount)
    {
      v6 = catalogContentsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AMPMusicArtistContent *)self catalogContentAtIndex:i];
        [v9 addCatalogContent:v8];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    adamId = self->_adamId;
    PBDataWriterWriteInt64Field();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_catalogContents;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithLongLong:self->_adamId];
    [v3 setObject:v4 forKey:@"adamId"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  if ([(NSMutableArray *)self->_catalogContents count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_catalogContents, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_catalogContents;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"catalogContent"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AMPMusicArtistContent;
  v3 = [(AMPMusicArtistContent *)&v7 description];
  dictionaryRepresentation = [(AMPMusicArtistContent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)addCatalogContent:(id)content
{
  contentCopy = content;
  catalogContents = self->_catalogContents;
  v8 = contentCopy;
  if (!catalogContents)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_catalogContents;
    self->_catalogContents = v6;

    contentCopy = v8;
    catalogContents = self->_catalogContents;
  }

  [(NSMutableArray *)catalogContents addObject:contentCopy];
}

@end