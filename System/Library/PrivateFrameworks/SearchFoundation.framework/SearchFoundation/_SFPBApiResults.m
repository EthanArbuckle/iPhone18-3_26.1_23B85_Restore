@interface _SFPBApiResults
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBApiResults)initWithDictionary:(id)a3;
- (_SFPBApiResults)initWithFacade:(id)a3;
- (_SFPBApiResults)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)addFlights:(id)a3;
- (void)setFlights:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBApiResults

- (_SFPBApiResults)initWithFacade:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBApiResults *)self init];
  if (v5)
  {
    if ([v4 hasStatus])
    {
      -[_SFPBApiResults setStatus:](v5, "setStatus:", [v4 status]);
    }

    if ([v4 hasResultType])
    {
      -[_SFPBApiResults setResultType:](v5, "setResultType:", [v4 resultType]);
    }

    v6 = [v4 flights];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v4 flights];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBFlight alloc] initWithFacade:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(_SFPBApiResults *)v5 setFlights:v7];
    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBApiResults)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = _SFPBApiResults;
  v5 = [(_SFPBApiResults *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBApiResults setStatus:](v5, "setStatus:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"resultType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBApiResults setResultType:](v5, "setResultType:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"flights"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v7;
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBFlight alloc] initWithDictionary:v14];
              [(_SFPBApiResults *)v5 addFlights:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v11);
      }

      v7 = v19;
      v6 = v20;
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBApiResults)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBApiResults *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBApiResults *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_flights count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_flights;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"flights"];
  }

  if (self->_resultType)
  {
    v12 = [(_SFPBApiResults *)self resultType];
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = @"1";
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
      }
    }

    else
    {
      v13 = @"0";
    }

    [v3 setObject:v13 forKeyedSubscript:@"resultType"];
  }

  if (self->_status)
  {
    v14 = [(_SFPBApiResults *)self status];
    if (v14 >= 3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_1E7ACE548[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"status"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    status = self->_status;
    if (status == [v4 status])
    {
      resultType = self->_resultType;
      if (resultType == [v4 resultType])
      {
        v7 = [(_SFPBApiResults *)self flights];
        v8 = [v4 flights];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_SFPBApiResults *)self flights];
          if (!v10)
          {

LABEL_12:
            v15 = 1;
            goto LABEL_10;
          }

          v11 = v10;
          v12 = [(_SFPBApiResults *)self flights];
          v13 = [v4 flights];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_SFPBApiResults *)self status])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBApiResults *)self resultType])
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_SFPBApiResults *)self flights];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addFlights:(id)a3
{
  v4 = a3;
  flights = self->_flights;
  v8 = v4;
  if (!flights)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_flights;
    self->_flights = v6;

    v4 = v8;
    flights = self->_flights;
  }

  [(NSArray *)flights addObject:v4];
}

- (void)setFlights:(id)a3
{
  v4 = [a3 copy];
  flights = self->_flights;
  self->_flights = v4;

  MEMORY[0x1EEE66BB8]();
}

@end