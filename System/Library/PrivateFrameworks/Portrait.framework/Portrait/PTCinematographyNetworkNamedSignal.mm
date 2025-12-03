@interface PTCinematographyNetworkNamedSignal
- (PTCinematographyNetworkNamedSignal)initWithModelDictionary:(id)dictionary;
- (id)_flattenArray:(id)array;
- (void)_flattenArray:(id)array toMutableArray:(id)mutableArray;
- (void)writePayload:(id)payload toStream:(id)stream;
@end

@implementation PTCinematographyNetworkNamedSignal

- (PTCinematographyNetworkNamedSignal)initWithModelDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = PTCinematographyNetworkNamedSignal;
  v5 = [(PTCinematographyNetworkSignal *)&v8 initWithModelDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"flatten"];
    v5->_flatten = [v6 BOOLValue];
  }

  return v5;
}

- (void)writePayload:(id)payload toStream:(id)stream
{
  v24 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  streamCopy = stream;
  if ([(PTCinematographyNetworkSignal *)self checkSignalForStream:streamCopy])
  {
    detection = [payloadCopy detection];
    _namedSignals = [detection _namedSignals];
    name = [(PTCinematographyNetworkSignal *)self name];
    v11 = [_namedSignals objectForKeyedSubscript:name];

    if (v11)
    {
      if ([(PTCinematographyNetworkNamedSignal *)self flatten])
      {
        v12 = [(PTCinematographyNetworkNamedSignal *)self _flattenArray:v11];

        v11 = v12;
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v11 = v11;
      }

      if (![payloadCopy isMissingDetection])
      {
        v13 = [v11 count];
        if (v13 == [(PTCinematographyNetworkSignal *)self count])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = v11;
          v14 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v20;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v20 != v16)
                {
                  objc_enumerationMutation(v11);
                }

                [*(*(&v19 + 1) + 8 * i) floatValue];
                [streamCopy writeFloat:?];
              }

              v15 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
            }

            while (v15);
          }

          goto LABEL_23;
        }

        v18 = _PTLogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(PTCinematographyNetworkNamedSignal *)self writePayload:v11 toStream:v18];
        }
      }
    }

LABEL_22:
    [streamCopy writeZerosWithCount:{-[PTCinematographyNetworkSignal count](self, "count")}];
LABEL_23:

    goto LABEL_24;
  }

  v11 = _PTLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [PTCinematographyNetworkNamedSignal writePayload:v11 toStream:?];
  }

LABEL_24:
}

- (id)_flattenArray:(id)array
{
  arrayCopy = array;
  v5 = objc_opt_new();
  [(PTCinematographyNetworkNamedSignal *)self _flattenArray:arrayCopy toMutableArray:v5];

  v6 = [v5 copy];

  return v6;
}

- (void)_flattenArray:(id)array toMutableArray:(id)mutableArray
{
  v18 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  mutableArrayCopy = mutableArray;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [arrayCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [(PTCinematographyNetworkNamedSignal *)self _flattenArray:v12 toMutableArray:mutableArrayCopy];
        }

        else
        {
          [mutableArrayCopy addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [arrayCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)writePayload:(NSObject *)a3 toStream:.cold.2(void *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [a1 count];
  v7 = [a1 name];
  v8 = 134218498;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2048;
  v13 = [a2 count];
  _os_log_error_impl(&dword_2243FB000, a3, OS_LOG_TYPE_ERROR, "Expected %ld values for named signal %@, got %ld values", &v8, 0x20u);
}

@end