@interface ICIAMLogEventRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEventParameters:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICIAMLogEventRequest

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(ICIAMLogEventRequest *)self setApplicationMessageIdentifier:?];
  }

  if (*(v4 + 40))
  {
    self->_dSID = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(ICIAMLogEventRequest *)self setDeviceID:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(v4 + 4);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ICIAMLogEventRequest *)self addEventParameters:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_applicationMessageIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_dSID;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_deviceID hash];
  return v5 ^ v6 ^ [(NSMutableArray *)self->_eventParameters hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  applicationMessageIdentifier = self->_applicationMessageIdentifier;
  if (applicationMessageIdentifier | *(v4 + 2))
  {
    if (![(NSString *)applicationMessageIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_dSID != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  deviceID = self->_deviceID;
  if (deviceID | *(v4 + 3) && ![(NSString *)deviceID isEqual:?])
  {
    goto LABEL_13;
  }

  eventParameters = self->_eventParameters;
  if (eventParameters | *(v4 + 4))
  {
    v8 = [(NSMutableArray *)eventParameters isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_applicationMessageIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_dSID;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_deviceID copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_eventParameters;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) copyWithZone:{a3, v17}];
        [v5 addEventParameters:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_applicationMessageIdentifier)
  {
    [v4 setApplicationMessageIdentifier:?];
    v4 = v9;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_dSID;
    *(v4 + 40) |= 1u;
  }

  if (self->_deviceID)
  {
    [v9 setDeviceID:?];
  }

  if ([(ICIAMLogEventRequest *)self eventParametersCount])
  {
    [v9 clearEventParameters];
    v5 = [(ICIAMLogEventRequest *)self eventParametersCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ICIAMLogEventRequest *)self eventParametersAtIndex:i];
        [v9 addEventParameters:v8];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_applicationMessageIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_deviceID)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_eventParameters;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  applicationMessageIdentifier = self->_applicationMessageIdentifier;
  if (applicationMessageIdentifier)
  {
    [v3 setObject:applicationMessageIdentifier forKey:@"applicationMessageIdentifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dSID];
    [v4 setObject:v6 forKey:@"DSID"];
  }

  deviceID = self->_deviceID;
  if (deviceID)
  {
    [v4 setObject:deviceID forKey:@"deviceID"];
  }

  if ([(NSMutableArray *)self->_eventParameters count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_eventParameters, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_eventParameters;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"eventParameters"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMLogEventRequest;
  v4 = [(ICIAMLogEventRequest *)&v8 description];
  v5 = [(ICIAMLogEventRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addEventParameters:(id)a3
{
  v4 = a3;
  eventParameters = self->_eventParameters;
  v8 = v4;
  if (!eventParameters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_eventParameters;
    self->_eventParameters = v6;

    v4 = v8;
    eventParameters = self->_eventParameters;
  }

  [(NSMutableArray *)eventParameters addObject:v4];
}

@end