@interface WFPBBrowseGalleryCategoryEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFPBBrowseGalleryCategoryEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(WFPBBrowseGalleryCategoryEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(WFPBBrowseGalleryCategoryEvent *)self setGalleryCategoryIdentifier:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[2])) || -[NSString isEqual:](key, "isEqual:")))
  {
    galleryCategoryIdentifier = self->_galleryCategoryIdentifier;
    if (galleryCategoryIdentifier | equalCopy[1])
    {
      v7 = [(NSString *)galleryCategoryIdentifier isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_galleryCategoryIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_galleryCategoryIdentifier)
  {
    [v5 setGalleryCategoryIdentifier:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_galleryCategoryIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  galleryCategoryIdentifier = self->_galleryCategoryIdentifier;
  if (galleryCategoryIdentifier)
  {
    [v4 setObject:galleryCategoryIdentifier forKey:@"galleryCategoryIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBBrowseGalleryCategoryEvent;
  v4 = [(WFPBBrowseGalleryCategoryEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBBrowseGalleryCategoryEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"BrowseGalleryCategory";
  }
}

@end