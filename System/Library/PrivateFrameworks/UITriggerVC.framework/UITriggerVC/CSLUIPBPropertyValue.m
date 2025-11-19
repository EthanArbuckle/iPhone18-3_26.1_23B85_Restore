@interface CSLUIPBPropertyValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addArrayValues:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSLUIPBPropertyValue

- (void)addArrayValues:(id)a3
{
  v4 = a3;
  arrayValues = self->_arrayValues;
  v8 = v4;
  if (!arrayValues)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_arrayValues;
    self->_arrayValues = v6;

    v4 = v8;
    arrayValues = self->_arrayValues;
  }

  [(NSMutableArray *)arrayValues addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CSLUIPBPropertyValue;
  v4 = [(CSLUIPBPropertyValue *)&v8 description];
  v5 = [(CSLUIPBPropertyValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"stringValue"];
  }

  numberValue = self->_numberValue;
  if (numberValue)
  {
    v7 = [(CSLUIPBNumber *)numberValue dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"numberValue"];
  }

  uUIDValue = self->_uUIDValue;
  if (uUIDValue)
  {
    [v4 setObject:uUIDValue forKey:@"UUIDValue"];
  }

  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v4 setObject:dataValue forKey:@"dataValue"];
  }

  sizeValue = self->_sizeValue;
  if (sizeValue)
  {
    v11 = [(CSLUIPBSize *)sizeValue dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"sizeValue"];
  }

  dictionaryKey = self->_dictionaryKey;
  if (dictionaryKey)
  {
    v13 = [(CSLUIPBPropertyValue *)dictionaryKey dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"dictionaryKey"];
  }

  if ([(NSMutableArray *)self->_arrayValues count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_arrayValues, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = self->_arrayValues;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"arrayValues"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_numberValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_uUIDValue)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_sizeValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dictionaryKey)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_arrayValues;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_stringValue)
  {
    [v8 setStringValue:?];
  }

  if (self->_numberValue)
  {
    [v8 setNumberValue:?];
  }

  if (self->_uUIDValue)
  {
    [v8 setUUIDValue:?];
  }

  if (self->_dataValue)
  {
    [v8 setDataValue:?];
  }

  if (self->_sizeValue)
  {
    [v8 setSizeValue:?];
  }

  if (self->_dictionaryKey)
  {
    [v8 setDictionaryKey:?];
  }

  if ([(CSLUIPBPropertyValue *)self arrayValuesCount])
  {
    [v8 clearArrayValues];
    v4 = [(CSLUIPBPropertyValue *)self arrayValuesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CSLUIPBPropertyValue *)self arrayValuesAtIndex:i];
        [v8 addArrayValues:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(CSLUIPBNumber *)self->_numberValue copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSData *)self->_uUIDValue copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(NSData *)self->_dataValue copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(CSLUIPBSize *)self->_sizeValue copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(CSLUIPBPropertyValue *)self->_dictionaryKey copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_arrayValues;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * v22) copyWithZone:{a3, v26}];
        [v5 addArrayValues:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((stringValue = self->_stringValue, !(stringValue | v4[6])) || -[NSString isEqual:](stringValue, "isEqual:")) && ((numberValue = self->_numberValue, !(numberValue | v4[4])) || -[CSLUIPBNumber isEqual:](numberValue, "isEqual:")) && ((uUIDValue = self->_uUIDValue, !(uUIDValue | v4[7])) || -[NSData isEqual:](uUIDValue, "isEqual:")) && ((dataValue = self->_dataValue, !(dataValue | v4[2])) || -[NSData isEqual:](dataValue, "isEqual:")) && ((sizeValue = self->_sizeValue, !(sizeValue | v4[5])) || -[CSLUIPBSize isEqual:](sizeValue, "isEqual:")) && ((dictionaryKey = self->_dictionaryKey, !(dictionaryKey | v4[3])) || -[CSLUIPBPropertyValue isEqual:](dictionaryKey, "isEqual:")))
  {
    arrayValues = self->_arrayValues;
    if (arrayValues | v4[1])
    {
      v12 = [(NSMutableArray *)arrayValues isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stringValue hash];
  v4 = [(CSLUIPBNumber *)self->_numberValue hash]^ v3;
  v5 = [(NSData *)self->_uUIDValue hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_dataValue hash];
  v7 = [(CSLUIPBSize *)self->_sizeValue hash];
  v8 = v7 ^ [(CSLUIPBPropertyValue *)self->_dictionaryKey hash];
  return v6 ^ v8 ^ [(NSMutableArray *)self->_arrayValues hash];
}

- (void)mergeFrom:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 6))
  {
    [(CSLUIPBPropertyValue *)self setStringValue:?];
  }

  numberValue = self->_numberValue;
  v6 = *(v4 + 4);
  if (numberValue)
  {
    if (v6)
    {
      [(CSLUIPBNumber *)numberValue mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(CSLUIPBPropertyValue *)self setNumberValue:?];
  }

  if (*(v4 + 7))
  {
    [(CSLUIPBPropertyValue *)self setUUIDValue:?];
  }

  if (*(v4 + 2))
  {
    [(CSLUIPBPropertyValue *)self setDataValue:?];
  }

  sizeValue = self->_sizeValue;
  v8 = *(v4 + 5);
  if (sizeValue)
  {
    if (v8)
    {
      [(CSLUIPBSize *)sizeValue mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(CSLUIPBPropertyValue *)self setSizeValue:?];
  }

  dictionaryKey = self->_dictionaryKey;
  v10 = *(v4 + 3);
  if (dictionaryKey)
  {
    if (v10)
    {
      [(CSLUIPBPropertyValue *)dictionaryKey mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(CSLUIPBPropertyValue *)self setDictionaryKey:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(v4 + 1);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(CSLUIPBPropertyValue *)self addArrayValues:*(*(&v17 + 1) + 8 * i), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end