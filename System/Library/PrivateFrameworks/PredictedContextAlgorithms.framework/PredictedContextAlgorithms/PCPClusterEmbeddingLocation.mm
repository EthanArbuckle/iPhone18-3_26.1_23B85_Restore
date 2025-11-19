@interface PCPClusterEmbeddingLocation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPClusterEmbeddingLocation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPClusterEmbeddingLocation;
  v4 = [(PCPClusterEmbeddingLocation *)&v8 description];
  v5 = [(PCPClusterEmbeddingLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  placeName = self->_placeName;
  if (placeName)
  {
    [v3 setObject:placeName forKey:@"placeName"];
  }

  placeType = self->_placeType;
  if (placeType)
  {
    [v4 setObject:placeType forKey:@"placeType"];
  }

  placeLocation = self->_placeLocation;
  if (placeLocation)
  {
    v8 = [(PCPLocation *)placeLocation dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"placeLocation"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_placeName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_placeType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_placeLocation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_placeName)
  {
    [v4 setPlaceName:?];
    v4 = v5;
  }

  if (self->_placeType)
  {
    [v5 setPlaceType:?];
    v4 = v5;
  }

  if (self->_placeLocation)
  {
    [v5 setPlaceLocation:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_placeName copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_placeType copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(PCPLocation *)self->_placeLocation copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((placeName = self->_placeName, !(placeName | v4[2])) || -[NSString isEqual:](placeName, "isEqual:")) && ((placeType = self->_placeType, !(placeType | v4[3])) || -[NSString isEqual:](placeType, "isEqual:")))
  {
    placeLocation = self->_placeLocation;
    if (placeLocation | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(PCPClusterEmbeddingLocation *)self setPlaceName:?];
    v4 = v7;
  }

  if (v4[3])
  {
    [(PCPClusterEmbeddingLocation *)self setPlaceType:?];
    v4 = v7;
  }

  placeLocation = self->_placeLocation;
  v6 = v4[1];
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