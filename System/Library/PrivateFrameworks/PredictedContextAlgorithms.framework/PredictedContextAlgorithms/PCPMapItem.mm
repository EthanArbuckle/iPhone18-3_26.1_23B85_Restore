@interface PCPMapItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPlaceType:(id)type;
- (int)placeType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPlaceSource:(BOOL)source;
- (void)setHasPlaceType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PCPMapItem

- (int)placeType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_placeType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPlaceType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsPlaceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PlaceType_Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"AreaOfInterest"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PointOfInterest"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Address"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Country"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"AdministrativeArea"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"SubAdministrativeArea"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Locality"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"TimeZone"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"SubLocality"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"Ocean"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"InlandWater"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"Island"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"Street"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"Admin"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"Postal"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"Intersection"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"Building"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"Continent"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"Region"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"Division"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"Undefined"])
  {
    v4 = 1000;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPlaceSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPMapItem;
  v4 = [(PCPMapItem *)&v8 description];
  dictionaryRepresentation = [(PCPMapItem *)self dictionaryRepresentation];
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

  category = self->_category;
  if (category)
  {
    [v4 setObject:category forKey:@"category"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    placeType = self->_placeType;
    v9 = @"PlaceType_Unknown";
    switch(placeType)
    {
      case 0:
        break;
      case 1:
        v9 = @"AreaOfInterest";
        break;
      case 2:
        v9 = @"PointOfInterest";
        break;
      case 3:
        v9 = @"Address";
        break;
      case 4:
        v9 = @"Country";
        break;
      case 5:
        v9 = @"AdministrativeArea";
        break;
      case 6:
        v9 = @"SubAdministrativeArea";
        break;
      case 7:
        v9 = @"Locality";
        break;
      case 8:
        v9 = @"TimeZone";
        break;
      case 9:
        v9 = @"SubLocality";
        break;
      case 10:
        v9 = @"Ocean";
        break;
      case 11:
        v9 = @"InlandWater";
        break;
      case 12:
        v9 = @"Island";
        break;
      case 13:
        v9 = @"Street";
        break;
      case 14:
        v9 = @"Admin";
        break;
      case 15:
        v9 = @"Postal";
        break;
      case 16:
        v9 = @"Intersection";
        break;
      case 17:
        v9 = @"Building";
        break;
      case 18:
        v9 = @"Continent";
        break;
      case 19:
        v9 = @"Region";
        break;
      case 20:
        v9 = @"Division";
        break;
      default:
        if (placeType == 1000)
        {
          v9 = @"Undefined";
        }

        else
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_placeType];
        }

        break;
    }

    [v4 setObject:v9 forKey:@"placeType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_placeSource];
    [v4 setObject:v10 forKey:@"placeSource"];

    has = self->_has;
  }

  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_mapItemMUID];
    [v4 setObject:v11 forKey:@"mapItemMUID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_placeName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    placeType = self->_placeType;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  placeSource = self->_placeSource;
  PBDataWriterWriteUint64Field();
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_8:
    mapItemMUID = self->_mapItemMUID;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_placeName)
  {
    [toCopy setPlaceName:?];
    toCopy = v6;
  }

  if (self->_category)
  {
    [v6 setCategory:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 10) = self->_placeType;
    *(toCopy + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 2) = self->_placeSource;
  *(toCopy + 44) |= 2u;
  if (*&self->_has)
  {
LABEL_8:
    *(toCopy + 1) = self->_mapItemMUID;
    *(toCopy + 44) |= 1u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_placeName copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_category copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_placeSource;
    *(v5 + 44) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 40) = self->_placeType;
  *(v5 + 44) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_mapItemMUID;
    *(v5 + 44) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  placeName = self->_placeName;
  if (placeName | *(equalCopy + 4))
  {
    if (![(NSString *)placeName isEqual:?])
    {
      goto LABEL_20;
    }
  }

  category = self->_category;
  if (category | *(equalCopy + 3))
  {
    if (![(NSString *)category isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_placeType != *(equalCopy + 10))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_placeSource != *(equalCopy + 2))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_20;
  }

  v7 = (*(equalCopy + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_mapItemMUID != *(equalCopy + 1))
    {
      goto LABEL_20;
    }

    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_placeName hash];
  v4 = [(NSString *)self->_category hash];
  if ((*&self->_has & 4) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_placeType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761u * self->_placeSource;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 2654435761u * self->_mapItemMUID;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PCPMapItem *)self setPlaceName:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(PCPMapItem *)self setCategory:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 44);
  if ((v5 & 4) != 0)
  {
    self->_placeType = *(fromCopy + 10);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 44);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(fromCopy + 44) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_placeSource = *(fromCopy + 2);
  *&self->_has |= 2u;
  if (*(fromCopy + 44))
  {
LABEL_8:
    self->_mapItemMUID = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_9:
}

@end