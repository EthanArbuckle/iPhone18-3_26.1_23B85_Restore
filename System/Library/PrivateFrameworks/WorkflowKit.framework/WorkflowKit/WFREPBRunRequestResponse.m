@interface WFREPBRunRequestResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addOutputData:(id)a3;
- (void)addVariablesData:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBRunRequestResponse

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 3))
  {
    [(WFREPBRunRequestResponse *)self setRunRequestIdentifier:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(v4 + 4);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WFREPBRunRequestResponse *)self addVariablesData:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(v4 + 2);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(WFREPBRunRequestResponse *)self addOutputData:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  if (*(v4 + 1))
  {
    [(WFREPBRunRequestResponse *)self setErrorData:?];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_runRequestIdentifier hash];
  v4 = [(NSMutableArray *)self->_variablesDatas hash]^ v3;
  v5 = [(NSMutableArray *)self->_outputDatas hash];
  return v4 ^ v5 ^ [(NSData *)self->_errorData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((runRequestIdentifier = self->_runRequestIdentifier, !(runRequestIdentifier | v4[3])) || -[NSString isEqual:](runRequestIdentifier, "isEqual:")) && ((variablesDatas = self->_variablesDatas, !(variablesDatas | v4[4])) || -[NSMutableArray isEqual:](variablesDatas, "isEqual:")) && ((outputDatas = self->_outputDatas, !(outputDatas | v4[2])) || -[NSMutableArray isEqual:](outputDatas, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | v4[1])
    {
      v9 = [(NSData *)errorData isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_runRequestIdentifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_variablesDatas;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v28 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addVariablesData:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_outputDatas;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * v18) copyWithZone:{a3, v24}];
        [v5 addOutputData:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  v20 = [(NSData *)self->_errorData copyWithZone:a3];
  v21 = v5[1];
  v5[1] = v20;

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  [v12 setRunRequestIdentifier:self->_runRequestIdentifier];
  if ([(WFREPBRunRequestResponse *)self variablesDatasCount])
  {
    [v12 clearVariablesDatas];
    v4 = [(WFREPBRunRequestResponse *)self variablesDatasCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(WFREPBRunRequestResponse *)self variablesDataAtIndex:i];
        [v12 addVariablesData:v7];
      }
    }
  }

  if ([(WFREPBRunRequestResponse *)self outputDatasCount])
  {
    [v12 clearOutputDatas];
    v8 = [(WFREPBRunRequestResponse *)self outputDatasCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(WFREPBRunRequestResponse *)self outputDataAtIndex:j];
        [v12 addOutputData:v11];
      }
    }
  }

  if (self->_errorData)
  {
    [v12 setErrorData:?];
  }
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_runRequestIdentifier)
  {
    __assert_rtn("[WFREPBRunRequestResponse writeTo:]", "WFREPBRunRequestResponse.m", 163, "nil != self->_runRequestIdentifier");
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_variablesDatas;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteDataField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_outputDatas;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteDataField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  runRequestIdentifier = self->_runRequestIdentifier;
  if (runRequestIdentifier)
  {
    [v3 setObject:runRequestIdentifier forKey:@"runRequestIdentifier"];
  }

  variablesDatas = self->_variablesDatas;
  if (variablesDatas)
  {
    [v4 setObject:variablesDatas forKey:@"variablesData"];
  }

  outputDatas = self->_outputDatas;
  if (outputDatas)
  {
    [v4 setObject:outputDatas forKey:@"outputData"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBRunRequestResponse;
  v4 = [(WFREPBRunRequestResponse *)&v8 description];
  v5 = [(WFREPBRunRequestResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addOutputData:(id)a3
{
  v4 = a3;
  outputDatas = self->_outputDatas;
  v8 = v4;
  if (!outputDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_outputDatas;
    self->_outputDatas = v6;

    v4 = v8;
    outputDatas = self->_outputDatas;
  }

  [(NSMutableArray *)outputDatas addObject:v4];
}

- (void)addVariablesData:(id)a3
{
  v4 = a3;
  variablesDatas = self->_variablesDatas;
  v8 = v4;
  if (!variablesDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_variablesDatas;
    self->_variablesDatas = v6;

    v4 = v8;
    variablesDatas = self->_variablesDatas;
  }

  [(NSMutableArray *)variablesDatas addObject:v4];
}

@end