@interface PCPClusterEmbeddingLocation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPClusterEmbeddingLocation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPClusterEmbeddingLocation;
  v4 = [(PCPClusterEmbeddingLocation *)&v8 description];
  dictionaryRepresentation = [(PCPClusterEmbeddingLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  placeName = self->_placeName;
  if (placeName)
  {
    [dictionary setObject:placeName forKey:@"placeName"];
  }

  placeType = self->_placeType;
  if (placeType)
  {
    [v4 setObject:placeType forKey:@"placeType"];
  }

  placeLocation = self->_placeLocation;
  if (placeLocation)
  {
    dictionaryRepresentation = [(PCPLocation *)placeLocation dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"placeLocation"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_placeName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_placeType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_placeLocation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_placeName)
  {
    [toCopy setPlaceName:?];
    toCopy = v5;
  }

  if (self->_placeType)
  {
    [v5 setPlaceType:?];
    toCopy = v5;
  }

  if (self->_placeLocation)
  {
    [v5 setPlaceLocation:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_placeName copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_placeType copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(PCPLocation *)self->_placeLocation copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((placeName = self->_placeName, !(placeName | equalCopy[2])) || -[NSString isEqual:](placeName, "isEqual:")) && ((placeType = self->_placeType, !(placeType | equalCopy[3])) || -[NSString isEqual:](placeType, "isEqual:")))
  {
    placeLocation = self->_placeLocation;
    if (placeLocation | equalCopy[1])
    {
      v8 = [(PCPLocation *)placeLocation isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_placeName hash];
  v4 = [(NSString *)self->_placeType hash]^ v3;
  return v4 ^ [(PCPLocation *)self->_placeLocation hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(PCPClusterEmbeddingLocation *)self setPlaceName:?];
    fromCopy = v7;
  }

  if (fromCopy[3])
  {
    [(PCPClusterEmbeddingLocation *)self setPlaceType:?];
    fromCopy = v7;
  }

  placeLocation = self->_placeLocation;
  v6 = fromCopy[1];
  if (placeLocation)
  {
    if (v6)
    {
      [(PCPLocation *)placeLocation mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PCPClusterEmbeddingLocation *)self setPlaceLocation:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end