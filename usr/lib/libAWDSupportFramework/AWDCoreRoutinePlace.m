@interface AWDCoreRoutinePlace
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addDistanceToOtherPlaces:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutinePlace

- (void)dealloc
{
  [(AWDCoreRoutinePlace *)self setMapItem:0];
  [(AWDCoreRoutinePlace *)self setDistanceToOtherPlaces:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutinePlace;
  [(AWDCoreRoutinePlace *)&v3 dealloc];
}

- (void)addDistanceToOtherPlaces:(id)a3
{
  distanceToOtherPlaces = self->_distanceToOtherPlaces;
  if (!distanceToOtherPlaces)
  {
    distanceToOtherPlaces = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_distanceToOtherPlaces = distanceToOtherPlaces;
  }

  [(NSMutableArray *)distanceToOtherPlaces addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutinePlace;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutinePlace description](&v3, sel_description), -[AWDCoreRoutinePlace dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  mapItem = self->_mapItem;
  if (mapItem)
  {
    [v3 setObject:-[AWDCoreRoutineMapItem dictionaryRepresentation](mapItem forKey:{"dictionaryRepresentation"), @"mapItem"}];
  }

  if ([(NSMutableArray *)self->_distanceToOtherPlaces count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_distanceToOtherPlaces, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    distanceToOtherPlaces = self->_distanceToOtherPlaces;
    v7 = [(NSMutableArray *)distanceToOtherPlaces countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(distanceToOtherPlaces);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)distanceToOtherPlaces countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"distanceToOtherPlaces"];
  }

  v11 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  if (self->_mapItem)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  distanceToOtherPlaces = self->_distanceToOtherPlaces;
  v5 = [(NSMutableArray *)distanceToOtherPlaces countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(distanceToOtherPlaces);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        PBDataWriterWriteSubmessage();
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)distanceToOtherPlaces countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if (self->_mapItem)
  {
    [a3 setMapItem:?];
  }

  if ([(AWDCoreRoutinePlace *)self distanceToOtherPlacesCount])
  {
    [a3 clearDistanceToOtherPlaces];
    v5 = [(AWDCoreRoutinePlace *)self distanceToOtherPlacesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addDistanceToOtherPlaces:{-[AWDCoreRoutinePlace distanceToOtherPlacesAtIndex:](self, "distanceToOtherPlacesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  v5[2] = [(AWDCoreRoutineMapItem *)self->_mapItem copyWithZone:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  distanceToOtherPlaces = self->_distanceToOtherPlaces;
  v7 = [(NSMutableArray *)distanceToOtherPlaces countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(distanceToOtherPlaces);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addDistanceToOtherPlaces:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)distanceToOtherPlaces countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    mapItem = self->_mapItem;
    if (!(mapItem | *(a3 + 2)) || (v5 = [(AWDCoreRoutineMapItem *)mapItem isEqual:?]) != 0)
    {
      distanceToOtherPlaces = self->_distanceToOtherPlaces;
      if (distanceToOtherPlaces | *(a3 + 1))
      {

        LOBYTE(v5) = [(NSMutableArray *)distanceToOtherPlaces isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  mapItem = self->_mapItem;
  v6 = *(a3 + 2);
  if (mapItem)
  {
    if (v6)
    {
      [(AWDCoreRoutineMapItem *)mapItem mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDCoreRoutinePlace *)self setMapItem:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(a3 + 1);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDCoreRoutinePlace *)self addDistanceToOtherPlaces:*(*(&v13 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x29EDCA608];
}

@end