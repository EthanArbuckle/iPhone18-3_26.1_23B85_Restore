@interface PTCinematographyNetworkLabelSignal
- (PTCinematographyNetworkLabelSignal)initWithModelDictionary:(id)dictionary;
- (unint64_t)_networkLabelForDetection:(id)detection;
- (void)writePayload:(id)payload toStream:(id)stream;
@end

@implementation PTCinematographyNetworkLabelSignal

- (PTCinematographyNetworkLabelSignal)initWithModelDictionary:(id)dictionary
{
  v32 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = PTCinematographyNetworkLabelSignal;
  v5 = [(PTCinematographyNetworkSignal *)&v26 initWithModelDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"params"];
    v7 = [v6 objectForKeyedSubscript:@"zero_label"];
    v5->_labelZero = [v7 unsignedIntegerValue];

    if (v5->_labelZero)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    v5->_labelOffset = v8;
    v9 = [v6 objectForKeyedSubscript:@"remap"];
    if (v9)
    {
      v23 = v6;
      v24 = dictionaryCopy;
      v10 = objc_opt_new();
      if ([v9 count])
      {
        v11 = 0;
        v25 = v9;
        do
        {
          v12 = [v9 objectAtIndexedSubscript:v11];
          if (objc_opt_respondsToSelector())
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v13 = v12;
            v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v28;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v28 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v27 + 1) + 8 * i);
                  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
                  [v10 setObject:v19 forKeyedSubscript:v18];
                }

                v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
              }

              while (v15);
              v9 = v25;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [PTCinematographyNetworkLabelSignal initWithModelDictionary:];
            }

            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
            [v10 setObject:v13 forKeyedSubscript:v12];
          }

          ++v11;
        }

        while (v11 < [v9 count]);
      }

      v20 = [v10 copy];

      dictionaryCopy = v24;
      v6 = v23;
    }

    else
    {
      v20 = 0;
    }

    remap = v5->_remap;
    v5->_remap = v20;
  }

  return v5;
}

- (void)writePayload:(id)payload toStream:(id)stream
{
  payloadCopy = payload;
  streamCopy = stream;
  if ([(PTCinematographyNetworkSignal *)self checkSignalForStream:streamCopy])
  {
    detection = [payloadCopy detection];
    v9 = [(PTCinematographyNetworkLabelSignal *)self _networkLabelForDetection:detection];

    [streamCopy writeOneHot:v9 count:{-[PTCinematographyNetworkSignal count](self, "count")}];
  }

  else
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetworkNamedSignal writePayload:v10 toStream:?];
    }
  }
}

- (unint64_t)_networkLabelForDetection:(id)detection
{
  detectionCopy = detection;
  remap = self->_remap;
  trackIdentifier = [detectionCopy trackIdentifier];
  if (remap)
  {
    if (trackIdentifier == 0x1000000000)
    {
      detectionType = 0;
    }

    else
    {
      detectionType = [detectionCopy detectionType];
    }

    v8 = self->_remap;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:detectionType];
    v10 = [(NSDictionary *)v8 objectForKeyedSubscript:v9];
    labelZero = [v10 unsignedIntegerValue];
  }

  else if (trackIdentifier == 0x1000000000)
  {
    labelZero = self->_labelZero;
  }

  else
  {
    labelZero = self->_labelOffset + [detectionCopy detectionType];
  }

  return labelZero;
}

@end