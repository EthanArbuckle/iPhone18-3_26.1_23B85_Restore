@interface AWDCoreRoutineLocationAwarenessIntervalHistogram
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAnyPositiveIntervalHistogram:(id)histogram;
- (void)addLessThan10mIntervalHistogram:(id)histogram;
- (void)addLessThan200mIntervalHistogram:(id)histogram;
- (void)addLessThan25mIntervalHistogram:(id)histogram;
- (void)addLessThan55mIntervalHistogram:(id)histogram;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineLocationAwarenessIntervalHistogram

- (void)dealloc
{
  [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self setLessThan10mIntervalHistograms:0];
  [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self setLessThan25mIntervalHistograms:0];
  [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self setLessThan55mIntervalHistograms:0];
  [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self setLessThan200mIntervalHistograms:0];
  [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self setAnyPositiveIntervalHistograms:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLocationAwarenessIntervalHistogram;
  [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addLessThan10mIntervalHistogram:(id)histogram
{
  lessThan10mIntervalHistograms = self->_lessThan10mIntervalHistograms;
  if (!lessThan10mIntervalHistograms)
  {
    lessThan10mIntervalHistograms = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_lessThan10mIntervalHistograms = lessThan10mIntervalHistograms;
  }

  [(NSMutableArray *)lessThan10mIntervalHistograms addObject:histogram];
}

- (void)addLessThan25mIntervalHistogram:(id)histogram
{
  lessThan25mIntervalHistograms = self->_lessThan25mIntervalHistograms;
  if (!lessThan25mIntervalHistograms)
  {
    lessThan25mIntervalHistograms = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_lessThan25mIntervalHistograms = lessThan25mIntervalHistograms;
  }

  [(NSMutableArray *)lessThan25mIntervalHistograms addObject:histogram];
}

- (void)addLessThan55mIntervalHistogram:(id)histogram
{
  lessThan55mIntervalHistograms = self->_lessThan55mIntervalHistograms;
  if (!lessThan55mIntervalHistograms)
  {
    lessThan55mIntervalHistograms = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_lessThan55mIntervalHistograms = lessThan55mIntervalHistograms;
  }

  [(NSMutableArray *)lessThan55mIntervalHistograms addObject:histogram];
}

- (void)addLessThan200mIntervalHistogram:(id)histogram
{
  lessThan200mIntervalHistograms = self->_lessThan200mIntervalHistograms;
  if (!lessThan200mIntervalHistograms)
  {
    lessThan200mIntervalHistograms = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_lessThan200mIntervalHistograms = lessThan200mIntervalHistograms;
  }

  [(NSMutableArray *)lessThan200mIntervalHistograms addObject:histogram];
}

- (void)addAnyPositiveIntervalHistogram:(id)histogram
{
  anyPositiveIntervalHistograms = self->_anyPositiveIntervalHistograms;
  if (!anyPositiveIntervalHistograms)
  {
    anyPositiveIntervalHistograms = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_anyPositiveIntervalHistograms = anyPositiveIntervalHistograms;
  }

  [(NSMutableArray *)anyPositiveIntervalHistograms addObject:histogram];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLocationAwarenessIntervalHistogram;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLocationAwarenessIntervalHistogram description](&v3, sel_description), -[AWDCoreRoutineLocationAwarenessIntervalHistogram dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v62 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  }

  if ([(NSMutableArray *)self->_lessThan10mIntervalHistograms count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_lessThan10mIntervalHistograms, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    lessThan10mIntervalHistograms = self->_lessThan10mIntervalHistograms;
    v7 = [(NSMutableArray *)lessThan10mIntervalHistograms countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v54;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(lessThan10mIntervalHistograms);
          }

          [v5 addObject:{objc_msgSend(*(*(&v53 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)lessThan10mIntervalHistograms countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"LessThan10mIntervalHistogram"];
  }

  if ([(NSMutableArray *)self->_lessThan25mIntervalHistograms count])
  {
    v11 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_lessThan25mIntervalHistograms, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    lessThan25mIntervalHistograms = self->_lessThan25mIntervalHistograms;
    v13 = [(NSMutableArray *)lessThan25mIntervalHistograms countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v50;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(lessThan25mIntervalHistograms);
          }

          [v11 addObject:{objc_msgSend(*(*(&v49 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v14 = [(NSMutableArray *)lessThan25mIntervalHistograms countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"LessThan25mIntervalHistogram"];
  }

  if ([(NSMutableArray *)self->_lessThan55mIntervalHistograms count])
  {
    v17 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_lessThan55mIntervalHistograms, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    lessThan55mIntervalHistograms = self->_lessThan55mIntervalHistograms;
    v19 = [(NSMutableArray *)lessThan55mIntervalHistograms countByEnumeratingWithState:&v45 objects:v59 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(lessThan55mIntervalHistograms);
          }

          [v17 addObject:{objc_msgSend(*(*(&v45 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v20 = [(NSMutableArray *)lessThan55mIntervalHistograms countByEnumeratingWithState:&v45 objects:v59 count:16];
      }

      while (v20);
    }

    [dictionary setObject:v17 forKey:@"LessThan55mIntervalHistogram"];
  }

  if ([(NSMutableArray *)self->_lessThan200mIntervalHistograms count])
  {
    v23 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_lessThan200mIntervalHistograms, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    lessThan200mIntervalHistograms = self->_lessThan200mIntervalHistograms;
    v25 = [(NSMutableArray *)lessThan200mIntervalHistograms countByEnumeratingWithState:&v41 objects:v58 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      do
      {
        for (m = 0; m != v26; ++m)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(lessThan200mIntervalHistograms);
          }

          [v23 addObject:{objc_msgSend(*(*(&v41 + 1) + 8 * m), "dictionaryRepresentation")}];
        }

        v26 = [(NSMutableArray *)lessThan200mIntervalHistograms countByEnumeratingWithState:&v41 objects:v58 count:16];
      }

      while (v26);
    }

    [dictionary setObject:v23 forKey:@"LessThan200mIntervalHistogram"];
  }

  if ([(NSMutableArray *)self->_anyPositiveIntervalHistograms count])
  {
    v29 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_anyPositiveIntervalHistograms, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    anyPositiveIntervalHistograms = self->_anyPositiveIntervalHistograms;
    v31 = [(NSMutableArray *)anyPositiveIntervalHistograms countByEnumeratingWithState:&v37 objects:v57 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v38;
      do
      {
        for (n = 0; n != v32; ++n)
        {
          if (*v38 != v33)
          {
            objc_enumerationMutation(anyPositiveIntervalHistograms);
          }

          [v29 addObject:{objc_msgSend(*(*(&v37 + 1) + 8 * n), "dictionaryRepresentation")}];
        }

        v32 = [(NSMutableArray *)anyPositiveIntervalHistograms countByEnumeratingWithState:&v37 objects:v57 count:16];
      }

      while (v32);
    }

    [dictionary setObject:v29 forKey:@"AnyPositiveIntervalHistogram"];
  }

  v35 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v63 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteUint64Field();
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  lessThan10mIntervalHistograms = self->_lessThan10mIntervalHistograms;
  v8 = [(NSMutableArray *)lessThan10mIntervalHistograms countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v55;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(lessThan10mIntervalHistograms);
        }

        v12 = *(*(&v54 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)lessThan10mIntervalHistograms countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v9);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  lessThan25mIntervalHistograms = self->_lessThan25mIntervalHistograms;
  v14 = [(NSMutableArray *)lessThan25mIntervalHistograms countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v51;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(lessThan25mIntervalHistograms);
        }

        v18 = *(*(&v50 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)lessThan25mIntervalHistograms countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v15);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  lessThan55mIntervalHistograms = self->_lessThan55mIntervalHistograms;
  v20 = [(NSMutableArray *)lessThan55mIntervalHistograms countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v47;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(lessThan55mIntervalHistograms);
        }

        v24 = *(*(&v46 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v21 = [(NSMutableArray *)lessThan55mIntervalHistograms countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v21);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  lessThan200mIntervalHistograms = self->_lessThan200mIntervalHistograms;
  v26 = [(NSMutableArray *)lessThan200mIntervalHistograms countByEnumeratingWithState:&v42 objects:v59 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v43;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(lessThan200mIntervalHistograms);
        }

        v30 = *(*(&v42 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v27 = [(NSMutableArray *)lessThan200mIntervalHistograms countByEnumeratingWithState:&v42 objects:v59 count:16];
    }

    while (v27);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  anyPositiveIntervalHistograms = self->_anyPositiveIntervalHistograms;
  v32 = [(NSMutableArray *)anyPositiveIntervalHistograms countByEnumeratingWithState:&v38 objects:v58 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v39;
    do
    {
      for (n = 0; n != v33; ++n)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(anyPositiveIntervalHistograms);
        }

        v36 = *(*(&v38 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v33 = [(NSMutableArray *)anyPositiveIntervalHistograms countByEnumeratingWithState:&v38 objects:v58 count:16];
    }

    while (v33);
  }

  v37 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 64) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 1) = self->_duration;
    *(to + 64) |= 1u;
  }

  if ([(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self lessThan10mIntervalHistogramsCount])
  {
    [to clearLessThan10mIntervalHistograms];
    lessThan10mIntervalHistogramsCount = [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self lessThan10mIntervalHistogramsCount];
    if (lessThan10mIntervalHistogramsCount)
    {
      v7 = lessThan10mIntervalHistogramsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addLessThan10mIntervalHistogram:{-[AWDCoreRoutineLocationAwarenessIntervalHistogram lessThan10mIntervalHistogramAtIndex:](self, "lessThan10mIntervalHistogramAtIndex:", i)}];
      }
    }
  }

  if ([(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self lessThan25mIntervalHistogramsCount])
  {
    [to clearLessThan25mIntervalHistograms];
    lessThan25mIntervalHistogramsCount = [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self lessThan25mIntervalHistogramsCount];
    if (lessThan25mIntervalHistogramsCount)
    {
      v10 = lessThan25mIntervalHistogramsCount;
      for (j = 0; j != v10; ++j)
      {
        [to addLessThan25mIntervalHistogram:{-[AWDCoreRoutineLocationAwarenessIntervalHistogram lessThan25mIntervalHistogramAtIndex:](self, "lessThan25mIntervalHistogramAtIndex:", j)}];
      }
    }
  }

  if ([(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self lessThan55mIntervalHistogramsCount])
  {
    [to clearLessThan55mIntervalHistograms];
    lessThan55mIntervalHistogramsCount = [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self lessThan55mIntervalHistogramsCount];
    if (lessThan55mIntervalHistogramsCount)
    {
      v13 = lessThan55mIntervalHistogramsCount;
      for (k = 0; k != v13; ++k)
      {
        [to addLessThan55mIntervalHistogram:{-[AWDCoreRoutineLocationAwarenessIntervalHistogram lessThan55mIntervalHistogramAtIndex:](self, "lessThan55mIntervalHistogramAtIndex:", k)}];
      }
    }
  }

  if ([(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self lessThan200mIntervalHistogramsCount])
  {
    [to clearLessThan200mIntervalHistograms];
    lessThan200mIntervalHistogramsCount = [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self lessThan200mIntervalHistogramsCount];
    if (lessThan200mIntervalHistogramsCount)
    {
      v16 = lessThan200mIntervalHistogramsCount;
      for (m = 0; m != v16; ++m)
      {
        [to addLessThan200mIntervalHistogram:{-[AWDCoreRoutineLocationAwarenessIntervalHistogram lessThan200mIntervalHistogramAtIndex:](self, "lessThan200mIntervalHistogramAtIndex:", m)}];
      }
    }
  }

  if ([(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self anyPositiveIntervalHistogramsCount])
  {
    [to clearAnyPositiveIntervalHistograms];
    anyPositiveIntervalHistogramsCount = [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self anyPositiveIntervalHistogramsCount];
    if (anyPositiveIntervalHistogramsCount)
    {
      v19 = anyPositiveIntervalHistogramsCount;
      for (n = 0; n != v19; ++n)
      {
        [to addAnyPositiveIntervalHistogram:{-[AWDCoreRoutineLocationAwarenessIntervalHistogram anyPositiveIntervalHistogramAtIndex:](self, "anyPositiveIntervalHistogramAtIndex:", n)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v65 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 64) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 64) |= 1u;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  lessThan10mIntervalHistograms = self->_lessThan10mIntervalHistograms;
  v9 = [(NSMutableArray *)lessThan10mIntervalHistograms countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v57;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(lessThan10mIntervalHistograms);
        }

        v13 = [*(*(&v56 + 1) + 8 * i) copyWithZone:zone];
        [v6 addLessThan10mIntervalHistogram:v13];
      }

      v10 = [(NSMutableArray *)lessThan10mIntervalHistograms countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v10);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  lessThan25mIntervalHistograms = self->_lessThan25mIntervalHistograms;
  v15 = [(NSMutableArray *)lessThan25mIntervalHistograms countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v53;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(lessThan25mIntervalHistograms);
        }

        v19 = [*(*(&v52 + 1) + 8 * j) copyWithZone:zone];
        [v6 addLessThan25mIntervalHistogram:v19];
      }

      v16 = [(NSMutableArray *)lessThan25mIntervalHistograms countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v16);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  lessThan55mIntervalHistograms = self->_lessThan55mIntervalHistograms;
  v21 = [(NSMutableArray *)lessThan55mIntervalHistograms countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v49;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(lessThan55mIntervalHistograms);
        }

        v25 = [*(*(&v48 + 1) + 8 * k) copyWithZone:zone];
        [v6 addLessThan55mIntervalHistogram:v25];
      }

      v22 = [(NSMutableArray *)lessThan55mIntervalHistograms countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v22);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  lessThan200mIntervalHistograms = self->_lessThan200mIntervalHistograms;
  v27 = [(NSMutableArray *)lessThan200mIntervalHistograms countByEnumeratingWithState:&v44 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v45;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(lessThan200mIntervalHistograms);
        }

        v31 = [*(*(&v44 + 1) + 8 * m) copyWithZone:zone];
        [v6 addLessThan200mIntervalHistogram:v31];
      }

      v28 = [(NSMutableArray *)lessThan200mIntervalHistograms countByEnumeratingWithState:&v44 objects:v61 count:16];
    }

    while (v28);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  anyPositiveIntervalHistograms = self->_anyPositiveIntervalHistograms;
  v33 = [(NSMutableArray *)anyPositiveIntervalHistograms countByEnumeratingWithState:&v40 objects:v60 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v41;
    do
    {
      for (n = 0; n != v34; ++n)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(anyPositiveIntervalHistograms);
        }

        v37 = [*(*(&v40 + 1) + 8 * n) copyWithZone:zone];
        [v6 addAnyPositiveIntervalHistogram:v37];
      }

      v34 = [(NSMutableArray *)anyPositiveIntervalHistograms countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v34);
  }

  v38 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 64);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 64) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_22;
      }
    }

    else if ((*(equal + 64) & 2) != 0)
    {
LABEL_22:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(equal + 64) & 1) == 0 || self->_duration != *(equal + 1))
      {
        goto LABEL_22;
      }
    }

    else if (*(equal + 64))
    {
      goto LABEL_22;
    }

    lessThan10mIntervalHistograms = self->_lessThan10mIntervalHistograms;
    if (!(lessThan10mIntervalHistograms | *(equal + 4)) || (v5 = [(NSMutableArray *)lessThan10mIntervalHistograms isEqual:?]) != 0)
    {
      lessThan25mIntervalHistograms = self->_lessThan25mIntervalHistograms;
      if (!(lessThan25mIntervalHistograms | *(equal + 6)) || (v5 = [(NSMutableArray *)lessThan25mIntervalHistograms isEqual:?]) != 0)
      {
        lessThan55mIntervalHistograms = self->_lessThan55mIntervalHistograms;
        if (!(lessThan55mIntervalHistograms | *(equal + 7)) || (v5 = [(NSMutableArray *)lessThan55mIntervalHistograms isEqual:?]) != 0)
        {
          lessThan200mIntervalHistograms = self->_lessThan200mIntervalHistograms;
          if (!(lessThan200mIntervalHistograms | *(equal + 5)) || (v5 = [(NSMutableArray *)lessThan200mIntervalHistograms isEqual:?]) != 0)
          {
            anyPositiveIntervalHistograms = self->_anyPositiveIntervalHistograms;
            if (anyPositiveIntervalHistograms | *(equal + 3))
            {

              LOBYTE(v5) = [(NSMutableArray *)anyPositiveIntervalHistograms isEqual:?];
            }

            else
            {
              LOBYTE(v5) = 1;
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761u * self->_duration;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSMutableArray *)self->_lessThan10mIntervalHistograms hash];
  v6 = [(NSMutableArray *)self->_lessThan25mIntervalHistograms hash];
  v7 = v5 ^ v6 ^ [(NSMutableArray *)self->_lessThan55mIntervalHistograms hash];
  v8 = [(NSMutableArray *)self->_lessThan200mIntervalHistograms hash];
  return v7 ^ v8 ^ [(NSMutableArray *)self->_anyPositiveIntervalHistograms hash];
}

- (void)mergeFrom:(id)from
{
  v57 = *MEMORY[0x29EDCA608];
  v5 = *(from + 64);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 64);
  }

  if (v5)
  {
    self->_duration = *(from + 1);
    *&self->_has |= 1u;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = *(from + 4);
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self addLessThan10mIntervalHistogram:*(*(&v48 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v8);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = *(from + 6);
  v12 = [v11 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self addLessThan25mIntervalHistogram:*(*(&v44 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v13);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = *(from + 7);
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self addLessThan55mIntervalHistogram:*(*(&v40 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v18);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = *(from + 5);
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v53 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self addLessThan200mIntervalHistogram:*(*(&v36 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v53 count:16];
    }

    while (v23);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = *(from + 3);
  v27 = [v26 countByEnumeratingWithState:&v32 objects:v52 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(AWDCoreRoutineLocationAwarenessIntervalHistogram *)self addAnyPositiveIntervalHistogram:*(*(&v32 + 1) + 8 * n)];
      }

      v28 = [v26 countByEnumeratingWithState:&v32 objects:v52 count:16];
    }

    while (v28);
  }

  v31 = *MEMORY[0x29EDCA608];
}

@end