@interface AWDITesterTestLoad
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTestNames:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDITesterTestLoad

- (void)dealloc
{
  [(AWDITesterTestLoad *)self setTestNames:0];
  v3.receiver = self;
  v3.super_class = AWDITesterTestLoad;
  [(AWDITesterTestLoad *)&v3 dealloc];
}

- (void)addTestNames:(id)a3
{
  testNames = self->_testNames;
  if (!testNames)
  {
    testNames = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_testNames = testNames;
  }

  [(NSMutableArray *)testNames addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDITesterTestLoad;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterTestLoad description](&v3, sel_description), -[AWDITesterTestLoad dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  testNames = self->_testNames;
  if (testNames)
  {
    [v3 setObject:testNames forKey:@"testNames"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  testNames = self->_testNames;
  v6 = [(NSMutableArray *)testNames countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(testNames);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)testNames countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 24) |= 1u;
  }

  if ([(AWDITesterTestLoad *)self testNamesCount])
  {
    [a3 clearTestNames];
    v5 = [(AWDITesterTestLoad *)self testNamesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addTestNames:{-[AWDITesterTestLoad testNamesAtIndex:](self, "testNamesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 24) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  testNames = self->_testNames;
  v8 = [(NSMutableArray *)testNames countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(testNames);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addTestNames:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)testNames countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 24);
    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_9;
      }
    }

    else if (*(a3 + 24))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    testNames = self->_testNames;
    if (testNames | *(a3 + 2))
    {

      LOBYTE(v5) = [(NSMutableArray *)testNames isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
  }

  else
  {
    v2 = 0;
  }

  return [(NSMutableArray *)self->_testNames hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a3 + 2);
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

        [(AWDITesterTestLoad *)self addTestNames:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x29EDCA608];
}

@end