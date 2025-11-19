@interface AWDCoreRoutineMapItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMapItemSources:(id)a3;
- (int)mapItemSourcesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineMapItem

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMapItem;
  [(AWDCoreRoutineMapItem *)&v3 dealloc];
}

- (int)mapItemSourcesAtIndex:(unint64_t)a3
{
  p_mapItemSources = &self->_mapItemSources;
  count = self->_mapItemSources.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_mapItemSources->list[a3];
}

- (int)StringAsMapItemSources:(id)a3
{
  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceNone"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceReverseGeocode"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceContacts"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceMapsSupport"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceUser"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceMapsSupportFavorite"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceMapsSupportHistoryEntry"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceMapsSupportHistoryEntryRoute"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceMapsSupportHistoryEntryPlaceDisplay"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceEventKit"])
  {
    return 9;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceLocalSearch"])
  {
    return 10;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceMapItemHandle"])
  {
    return 11;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceForwardGeocode"])
  {
    return 12;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceProactiveExperts"])
  {
    return 13;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourcePortrait"])
  {
    return 14;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceLearnedPlace"])
  {
    return 15;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceBluePOI"])
  {
    return 16;
  }

  if ([a3 isEqualToString:@"CoreRoutineMapItemSourceMapItemURL"])
  {
    return 17;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMapItem;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineMapItem description](&v3, sel_description), -[AWDCoreRoutineMapItem dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  p_mapItemSources = &self->_mapItemSources;
  if (self->_mapItemSources.count)
  {
    v5 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:?];
    if (self->_mapItemSources.count)
    {
      v6 = 0;
      do
      {
        v7 = p_mapItemSources->list[v6];
        if (v7 >= 0x12)
        {
          v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", p_mapItemSources->list[v6]];
        }

        else
        {
          v8 = off_29EE32570[v7];
        }

        [v5 addObject:v8];
        ++v6;
      }

      while (v6 < self->_mapItemSources.count);
    }

    [v3 setObject:v5 forKey:@"mapItemSources"];
  }

  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_hasMuid), @"hasMuid"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  p_mapItemSources = &self->_mapItemSources;
  if (self->_mapItemSources.count)
  {
    v5 = 0;
    do
    {
      v6 = p_mapItemSources->list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < p_mapItemSources->count);
  }

  if (*&self->_has)
  {
    hasMuid = self->_hasMuid;

    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  if ([(AWDCoreRoutineMapItem *)self mapItemSourcesCount])
  {
    [a3 clearMapItemSources];
    v5 = [(AWDCoreRoutineMapItem *)self mapItemSourcesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addMapItemSources:{-[AWDCoreRoutineMapItem mapItemSourcesAtIndex:](self, "mapItemSourcesAtIndex:", i)}];
      }
    }
  }

  if (*&self->_has)
  {
    *(a3 + 32) = self->_hasMuid;
    *(a3 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt32Copy();
  if (*&self->_has)
  {
    v4[32] = self->_hasMuid;
    v4[36] |= 1u;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    IsEqual = PBRepeatedInt32IsEqual();
    if (IsEqual)
    {
      LOBYTE(IsEqual) = (*(a3 + 36) & 1) == 0;
      if (*&self->_has)
      {
        if ((*(a3 + 36) & 1) == 0)
        {
LABEL_5:
          LOBYTE(IsEqual) = 0;
          return IsEqual;
        }

        if (self->_hasMuid)
        {
          if ((*(a3 + 32) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else if (*(a3 + 32))
        {
          goto LABEL_5;
        }

        LOBYTE(IsEqual) = 1;
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = PBRepeatedInt32Hash();
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_hasMuid;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v5 = [a3 mapItemSourcesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDCoreRoutineMapItem addMapItemSources:](self, "addMapItemSources:", [a3 mapItemSourcesAtIndex:i]);
    }
  }

  if (*(a3 + 36))
  {
    self->_hasMuid = *(a3 + 32);
    *&self->_has |= 1u;
  }
}

@end