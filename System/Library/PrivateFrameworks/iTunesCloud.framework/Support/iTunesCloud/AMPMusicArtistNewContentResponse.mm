@interface AMPMusicArtistNewContentResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addArtistContent:(id)content;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AMPMusicArtistNewContentResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = fromCopy[1];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AMPMusicArtistNewContentResponse *)self addArtistContent:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (fromCopy[3])
  {
    [(AMPMusicArtistNewContentResponse *)self setRecoId:?];
  }

  if (fromCopy[2])
  {
    [(AMPMusicArtistNewContentResponse *)self setModel:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_artistContents hash];
  v4 = [(NSString *)self->_recoId hash]^ v3;
  return v4 ^ [(NSData *)self->_model hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((artistContents = self->_artistContents, !(artistContents | equalCopy[1])) || -[NSMutableArray isEqual:](artistContents, "isEqual:")) && ((recoId = self->_recoId, !(recoId | equalCopy[3])) || -[NSString isEqual:](recoId, "isEqual:")))
  {
    model = self->_model;
    if (model | equalCopy[2])
    {
      v8 = [(NSData *)model isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_artistContents;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) copyWithZone:{zone, v17}];
        [v5 addArtistContent:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_recoId copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSData *)self->_model copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(AMPMusicArtistNewContentResponse *)self artistContentsCount])
  {
    [toCopy clearArtistContents];
    artistContentsCount = [(AMPMusicArtistNewContentResponse *)self artistContentsCount];
    if (artistContentsCount)
    {
      v5 = artistContentsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(AMPMusicArtistNewContentResponse *)self artistContentAtIndex:i];
        [toCopy addArtistContent:v7];
      }
    }
  }

  if (self->_recoId)
  {
    [toCopy setRecoId:?];
  }

  v8 = toCopy;
  if (self->_model)
  {
    [toCopy setModel:?];
    v8 = toCopy;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_artistContents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_recoId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_model)
  {
    PBDataWriterWriteDataField();
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v20[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v20 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v20[0] & 0x7F) << v6;
        if ((v20[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) == 3)
      {
        break;
      }

      if (v14 == 2)
      {
        v16 = PBReaderReadString();
        v17 = 24;
LABEL_25:
        v15 = *&self->PBCodable_opaque[v17];
        *&self->PBCodable_opaque[v17] = v16;
LABEL_26:

        goto LABEL_28;
      }

      if (v14 == 1)
      {
        v15 = objc_alloc_init(AMPMusicArtistContent);
        [(AMPMusicArtistNewContentResponse *)self addArtistContent:v15];
        v20[0] = 0;
        v20[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000C8C30(v15, from))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v16 = PBReaderReadData();
    v17 = 16;
    goto LABEL_25;
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_artistContents count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_artistContents, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_artistContents;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"artistContent"];
  }

  recoId = self->_recoId;
  if (recoId)
  {
    [v3 setObject:recoId forKey:@"recoId"];
  }

  model = self->_model;
  if (model)
  {
    [v3 setObject:model forKey:@"model"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AMPMusicArtistNewContentResponse;
  v3 = [(AMPMusicArtistNewContentResponse *)&v7 description];
  dictionaryRepresentation = [(AMPMusicArtistNewContentResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)addArtistContent:(id)content
{
  contentCopy = content;
  artistContents = self->_artistContents;
  v8 = contentCopy;
  if (!artistContents)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_artistContents;
    self->_artistContents = v6;

    contentCopy = v8;
    artistContents = self->_artistContents;
  }

  [(NSMutableArray *)artistContents addObject:contentCopy];
}

@end