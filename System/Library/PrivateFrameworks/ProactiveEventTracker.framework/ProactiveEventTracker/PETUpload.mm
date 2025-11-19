@interface PETUpload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAggregatedMessages:(id)a3;
- (void)addUnaggregatedMessages:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PETUpload

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  metadata = self->_metadata;
  v6 = *(v4 + 4);
  if (metadata)
  {
    if (v6)
    {
      [(PETMetadata *)metadata mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PETUpload *)self setMetadata:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(v4 + 1);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PETUpload *)self addAggregatedMessages:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v4 + 5);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(PETUpload *)self addUnaggregatedMessages:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  if (*(v4 + 52))
  {
    self->_isCompressed = *(v4 + 48);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(PETUpload *)self setCompressedData:?];
  }

  if (*(v4 + 3))
  {
    [(PETUpload *)self setCompressedMessages:?];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(PETMetadata *)self->_metadata hash];
  v4 = [(NSMutableArray *)self->_aggregatedMessages hash];
  v5 = [(NSMutableArray *)self->_unaggregatedMessages hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_isCompressed;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(NSData *)self->_compressedData hash];
  return v7 ^ v8 ^ [(NSData *)self->_compressedMessages hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  metadata = self->_metadata;
  if (metadata | *(v4 + 4))
  {
    if (![(PETMetadata *)metadata isEqual:?])
    {
      goto LABEL_15;
    }
  }

  aggregatedMessages = self->_aggregatedMessages;
  if (aggregatedMessages | *(v4 + 1))
  {
    if (![(NSMutableArray *)aggregatedMessages isEqual:?])
    {
      goto LABEL_15;
    }
  }

  unaggregatedMessages = self->_unaggregatedMessages;
  if (unaggregatedMessages | *(v4 + 5))
  {
    if (![(NSMutableArray *)unaggregatedMessages isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
      goto LABEL_15;
    }

    v8 = *(v4 + 48);
    if (self->_isCompressed)
    {
      if (*(v4 + 48))
      {
        goto LABEL_10;
      }

LABEL_15:
      v11 = 0;
      goto LABEL_16;
    }
  }

  if (v8)
  {
    goto LABEL_15;
  }

LABEL_10:
  compressedData = self->_compressedData;
  if (compressedData | *(v4 + 2) && ![(NSData *)compressedData isEqual:?])
  {
    goto LABEL_15;
  }

  compressedMessages = self->_compressedMessages;
  if (compressedMessages | *(v4 + 3))
  {
    v11 = [(NSData *)compressedMessages isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_16:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PETMetadata *)self->_metadata copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = self->_aggregatedMessages;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v30 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addAggregatedMessages:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = self->_unaggregatedMessages;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v26 + 1) + 8 * v18) copyWithZone:{a3, v26}];
        [v5 addUnaggregatedMessages:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  if (*&self->_has)
  {
    *(v5 + 48) = self->_isCompressed;
    *(v5 + 52) |= 1u;
  }

  v20 = [(NSData *)self->_compressedData copyWithZone:a3, v26];
  v21 = *(v5 + 16);
  *(v5 + 16) = v20;

  v22 = [(NSData *)self->_compressedMessages copyWithZone:a3];
  v23 = *(v5 + 24);
  *(v5 + 24) = v22;

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v13 = a3;
  if (self->_metadata)
  {
    [v13 setMetadata:?];
  }

  if ([(PETUpload *)self aggregatedMessagesCount])
  {
    [v13 clearAggregatedMessages];
    v4 = [(PETUpload *)self aggregatedMessagesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PETUpload *)self aggregatedMessagesAtIndex:i];
        [v13 addAggregatedMessages:v7];
      }
    }
  }

  if ([(PETUpload *)self unaggregatedMessagesCount])
  {
    [v13 clearUnaggregatedMessages];
    v8 = [(PETUpload *)self unaggregatedMessagesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PETUpload *)self unaggregatedMessagesAtIndex:j];
        [v13 addUnaggregatedMessages:v11];
      }
    }
  }

  v12 = v13;
  if (*&self->_has)
  {
    v13[48] = self->_isCompressed;
    v13[52] |= 1u;
  }

  if (self->_compressedData)
  {
    [v13 setCompressedData:?];
    v12 = v13;
  }

  if (self->_compressedMessages)
  {
    [v13 setCompressedMessages:?];
    v12 = v13;
  }
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_aggregatedMessages;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_unaggregatedMessages;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  if (*&self->_has)
  {
    isCompressed = self->_isCompressed;
    PBDataWriterWriteBOOLField();
  }

  if (self->_compressedData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_compressedMessages)
  {
    PBDataWriterWriteDataField();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  metadata = self->_metadata;
  if (metadata)
  {
    v5 = [(PETMetadata *)metadata dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"metadata"];
  }

  if ([(NSMutableArray *)self->_aggregatedMessages count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_aggregatedMessages, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = self->_aggregatedMessages;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"aggregated_messages"];
  }

  if ([(NSMutableArray *)self->_unaggregatedMessages count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_unaggregatedMessages, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = self->_unaggregatedMessages;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"unaggregated_messages"];
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCompressed];
    [v3 setObject:v20 forKey:@"is_compressed"];
  }

  compressedData = self->_compressedData;
  if (compressedData)
  {
    [v3 setObject:compressedData forKey:@"compressed_data"];
  }

  compressedMessages = self->_compressedMessages;
  if (compressedMessages)
  {
    [v3 setObject:compressedMessages forKey:@"compressed_messages"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PETUpload;
  v4 = [(PETUpload *)&v8 description];
  v5 = [(PETUpload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addUnaggregatedMessages:(id)a3
{
  v4 = a3;
  unaggregatedMessages = self->_unaggregatedMessages;
  v8 = v4;
  if (!unaggregatedMessages)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_unaggregatedMessages;
    self->_unaggregatedMessages = v6;

    v4 = v8;
    unaggregatedMessages = self->_unaggregatedMessages;
  }

  [(NSMutableArray *)unaggregatedMessages addObject:v4];
}

- (void)addAggregatedMessages:(id)a3
{
  v4 = a3;
  aggregatedMessages = self->_aggregatedMessages;
  v8 = v4;
  if (!aggregatedMessages)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_aggregatedMessages;
    self->_aggregatedMessages = v6;

    v4 = v8;
    aggregatedMessages = self->_aggregatedMessages;
  }

  [(NSMutableArray *)aggregatedMessages addObject:v4];
}

@end