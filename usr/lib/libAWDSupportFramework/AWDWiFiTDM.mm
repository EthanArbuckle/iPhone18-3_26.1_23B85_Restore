@interface AWDWiFiTDM
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addSliceStats:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiTDM

- (void)dealloc
{
  [(AWDWiFiTDM *)self setSliceStats:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiTDM;
  [(AWDWiFiTDM *)&v3 dealloc];
}

- (void)addSliceStats:(id)a3
{
  sliceStats = self->_sliceStats;
  if (!sliceStats)
  {
    sliceStats = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_sliceStats = sliceStats;
  }

  [(NSMutableArray *)sliceStats addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiTDM;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiTDM description](&v3, sel_description), -[AWDWiFiTDM dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ([(NSMutableArray *)self->_sliceStats count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_sliceStats, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    sliceStats = self->_sliceStats;
    v6 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(sliceStats);
          }

          [v4 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v9++), "dictionaryRepresentation")}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"sliceStats"];
  }

  v10 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sliceStats = self->_sliceStats;
  v4 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(sliceStats);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v5 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if ([(AWDWiFiTDM *)self sliceStatsCount])
  {
    [a3 clearSliceStats];
    v5 = [(AWDWiFiTDM *)self sliceStatsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addSliceStats:{-[AWDWiFiTDM sliceStatsAtIndex:](self, "sliceStatsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sliceStats = self->_sliceStats;
  v7 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(sliceStats);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addSliceStats:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    sliceStats = self->_sliceStats;
    if (sliceStats | *(a3 + 1))
    {

      LOBYTE(v5) = [(NSMutableArray *)sliceStats isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a3 + 1);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(AWDWiFiTDM *)self addSliceStats:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x29EDCA608];
}

@end