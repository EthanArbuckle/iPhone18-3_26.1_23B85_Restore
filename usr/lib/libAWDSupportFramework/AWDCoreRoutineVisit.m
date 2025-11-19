@interface AWDCoreRoutineVisit
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMapItemSources:(id)a3;
- (int)mapItemSourcesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addPossibleMapItems:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineVisit

- (void)dealloc
{
  PBRepeatedInt32Clear();
  [(AWDCoreRoutineVisit *)self setPossibleMapItems:0];
  [(AWDCoreRoutineVisit *)self setSelectedMapItem:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineVisit;
  [(AWDCoreRoutineVisit *)&v3 dealloc];
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

- (void)addPossibleMapItems:(id)a3
{
  possibleMapItems = self->_possibleMapItems;
  if (!possibleMapItems)
  {
    possibleMapItems = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_possibleMapItems = possibleMapItems;
  }

  [(NSMutableArray *)possibleMapItems addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineVisit;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineVisit description](&v3, sel_description), -[AWDCoreRoutineVisit dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x29EDCA608];
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
          v8 = off_29EE32648[v7];
        }

        [v5 addObject:v8];
        ++v6;
      }

      while (v6 < self->_mapItemSources.count);
    }

    [v3 setObject:v5 forKey:@"mapItemSources"];
  }

  if ([(NSMutableArray *)self->_possibleMapItems count])
  {
    v9 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_possibleMapItems, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    possibleMapItems = self->_possibleMapItems;
    v11 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(possibleMapItems);
          }

          [v9 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v12 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"possibleMapItems"];
  }

  selectedMapItem = self->_selectedMapItem;
  if (selectedMapItem)
  {
    [v3 setObject:-[AWDCoreRoutineMapItem dictionaryRepresentation](selectedMapItem forKey:{"dictionaryRepresentation"), @"selectedMapItem"}];
  }

  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_dwellTime), @"dwellTime"}];
  }

  v16 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
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

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  possibleMapItems = self->_possibleMapItems;
  v8 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(possibleMapItems);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if (self->_selectedMapItem)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    dwellTime = self->_dwellTime;
    PBDataWriterWriteUint64Field();
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if ([(AWDCoreRoutineVisit *)self mapItemSourcesCount])
  {
    [a3 clearMapItemSources];
    v5 = [(AWDCoreRoutineVisit *)self mapItemSourcesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addMapItemSources:{-[AWDCoreRoutineVisit mapItemSourcesAtIndex:](self, "mapItemSourcesAtIndex:", i)}];
      }
    }
  }

  if ([(AWDCoreRoutineVisit *)self possibleMapItemsCount])
  {
    [a3 clearPossibleMapItems];
    v8 = [(AWDCoreRoutineVisit *)self possibleMapItemsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addPossibleMapItems:{-[AWDCoreRoutineVisit possibleMapItemsAtIndex:](self, "possibleMapItemsAtIndex:", j)}];
      }
    }
  }

  if (self->_selectedMapItem)
  {
    [a3 setSelectedMapItem:?];
  }

  if (*&self->_has)
  {
    *(a3 + 4) = self->_dwellTime;
    *(a3 + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt32Copy();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  possibleMapItems = self->_possibleMapItems;
  v7 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(possibleMapItems);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) copyWithZone:a3];
        [v5 addPossibleMapItems:v11];
      }

      v8 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  *(v5 + 48) = [(AWDCoreRoutineMapItem *)self->_selectedMapItem copyWithZone:a3];
  if (*&self->_has)
  {
    *(v5 + 32) = self->_dwellTime;
    *(v5 + 56) |= 1u;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    IsEqual = PBRepeatedInt32IsEqual();
    if (IsEqual)
    {
      possibleMapItems = self->_possibleMapItems;
      if (!(possibleMapItems | *(a3 + 5)) || (IsEqual = [(NSMutableArray *)possibleMapItems isEqual:?]) != 0)
      {
        selectedMapItem = self->_selectedMapItem;
        if (!(selectedMapItem | *(a3 + 6)) || (IsEqual = [(AWDCoreRoutineMapItem *)selectedMapItem isEqual:?]) != 0)
        {
          LOBYTE(IsEqual) = (*(a3 + 56) & 1) == 0;
          if (*&self->_has)
          {
            LOBYTE(IsEqual) = (*(a3 + 56) & 1) != 0 && self->_dwellTime == *(a3 + 4);
          }
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = PBRepeatedInt32Hash();
  v4 = [(NSMutableArray *)self->_possibleMapItems hash];
  v5 = [(AWDCoreRoutineMapItem *)self->_selectedMapItem hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_dwellTime;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [a3 mapItemSourcesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDCoreRoutineVisit addMapItemSources:](self, "addMapItemSources:", [a3 mapItemSourcesAtIndex:i]);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = *(a3 + 5);
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(AWDCoreRoutineVisit *)self addPossibleMapItems:*(*(&v16 + 1) + 8 * j)];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  selectedMapItem = self->_selectedMapItem;
  v14 = *(a3 + 6);
  if (selectedMapItem)
  {
    if (v14)
    {
      [(AWDCoreRoutineMapItem *)selectedMapItem mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(AWDCoreRoutineVisit *)self setSelectedMapItem:?];
  }

  if (*(a3 + 56))
  {
    self->_dwellTime = *(a3 + 4);
    *&self->_has |= 1u;
  }

  v15 = *MEMORY[0x29EDCA608];
}

@end