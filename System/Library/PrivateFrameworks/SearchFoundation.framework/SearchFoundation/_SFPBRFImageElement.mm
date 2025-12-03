@interface _SFPBRFImageElement
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFImageElement)initWithDictionary:(id)dictionary;
- (_SFPBRFImageElement)initWithFacade:(id)facade;
- (_SFPBRFImageElement)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addSources:(id)sources;
- (void)setSources:(id)sources;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFImageElement

- (_SFPBRFImageElement)initWithFacade:(id)facade
{
  v22 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFImageElement *)self init];
  if (v5)
  {
    sources = [facadeCopy sources];
    if (sources)
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
    sources2 = [facadeCopy sources];
    v9 = [sources2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(sources2);
          }

          v13 = [[_SFPBRFImageSource alloc] initWithFacade:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [sources2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(_SFPBRFImageElement *)v5 setSources:v7];
    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFImageElement)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = _SFPBRFImageElement;
  v5 = [(_SFPBRFImageElement *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sources"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [_SFPBRFImageSource alloc];
              v14 = [(_SFPBRFImageSource *)v13 initWithDictionary:v12, v18];
              [(_SFPBRFImageElement *)v5 addSources:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v15 = v5;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFImageElement)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFImageElement *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFImageElement *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_sources count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_sources;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"sources"];
  }

  v12 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    sources = [(_SFPBRFImageElement *)self sources];
    sources2 = [equalCopy sources];
    v7 = sources2;
    if ((sources != 0) != (sources2 == 0))
    {
      sources3 = [(_SFPBRFImageElement *)self sources];
      if (!sources3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = sources3;
      sources4 = [(_SFPBRFImageElement *)self sources];
      sources5 = [equalCopy sources];
      v12 = [sources4 isEqual:sources5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  sources = [(_SFPBRFImageElement *)self sources];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [sources countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(sources);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [sources countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addSources:(id)sources
{
  sourcesCopy = sources;
  sources = self->_sources;
  v8 = sourcesCopy;
  if (!sources)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sources;
    self->_sources = array;

    sourcesCopy = v8;
    sources = self->_sources;
  }

  [(NSArray *)sources addObject:sourcesCopy];
}

- (void)setSources:(id)sources
{
  v4 = [sources copy];
  sources = self->_sources;
  self->_sources = v4;

  MEMORY[0x1EEE66BB8]();
}

@end