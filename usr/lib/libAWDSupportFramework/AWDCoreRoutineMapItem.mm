@interface AWDCoreRoutineMapItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMapItemSources:(id)sources;
- (int)mapItemSourcesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineMapItem

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMapItem;
  [(AWDCoreRoutineMapItem *)&v3 dealloc];
}

- (int)mapItemSourcesAtIndex:(unint64_t)index
{
  p_mapItemSources = &self->_mapItemSources;
  count = self->_mapItemSources.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_mapItemSources->list[index];
}

- (int)StringAsMapItemSources:(id)sources
{
  if ([sources isEqualToString:@"CoreRoutineMapItemSourceNone"])
  {
    return 0;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceReverseGeocode"])
  {
    return 1;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceContacts"])
  {
    return 2;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapsSupport"])
  {
    return 3;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceUser"])
  {
    return 4;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapsSupportFavorite"])
  {
    return 5;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapsSupportHistoryEntry"])
  {
    return 6;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapsSupportHistoryEntryRoute"])
  {
    return 7;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapsSupportHistoryEntryPlaceDisplay"])
  {
    return 8;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceEventKit"])
  {
    return 9;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceLocalSearch"])
  {
    return 10;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapItemHandle"])
  {
    return 11;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceForwardGeocode"])
  {
    return 12;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceProactiveExperts"])
  {
    return 13;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourcePortrait"])
  {
    return 14;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceLearnedPlace"])
  {
    return 15;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceBluePOI"])
  {
    return 16;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapItemURL"])
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
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

    [dictionary setObject:v5 forKey:@"mapItemSources"];
  }

  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_hasMuid), @"hasMuid"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if ([(AWDCoreRoutineMapItem *)self mapItemSourcesCount])
  {
    [to clearMapItemSources];
    mapItemSourcesCount = [(AWDCoreRoutineMapItem *)self mapItemSourcesCount];
    if (mapItemSourcesCount)
    {
      v6 = mapItemSourcesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addMapItemSources:{-[AWDCoreRoutineMapItem mapItemSourcesAtIndex:](self, "mapItemSourcesAtIndex:", i)}];
      }
    }
  }

  if (*&self->_has)
  {
    *(to + 32) = self->_hasMuid;
    *(to + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedInt32Copy();
  if (*&self->_has)
  {
    v4[32] = self->_hasMuid;
    v4[36] |= 1u;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    IsEqual = PBRepeatedInt32IsEqual();
    if (IsEqual)
    {
      LOBYTE(IsEqual) = (*(equal + 36) & 1) == 0;
      if (*&self->_has)
      {
        if ((*(equal + 36) & 1) == 0)
        {
LABEL_5:
          LOBYTE(IsEqual) = 0;
          return IsEqual;
        }

        if (self->_hasMuid)
        {
          if ((*(equal + 32) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else if (*(equal + 32))
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

- (void)mergeFrom:(id)from
{
  mapItemSourcesCount = [from mapItemSourcesCount];
  if (mapItemSourcesCount)
  {
    v6 = mapItemSourcesCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDCoreRoutineMapItem addMapItemSources:](self, "addMapItemSources:", [from mapItemSourcesAtIndex:i]);
    }
  }

  if (*(from + 36))
  {
    self->_hasMuid = *(from + 32);
    *&self->_has |= 1u;
  }
}

@end