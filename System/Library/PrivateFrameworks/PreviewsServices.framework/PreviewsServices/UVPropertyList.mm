@interface UVPropertyList
- (NSData)data;
- (NSDictionary)dictionary;
- (UVPropertyList)initWithData:(id)data;
- (UVPropertyList)initWithDictionary:(id)dictionary;
- (UVPropertyList)initWithXpcDictionary:(id)dictionary;
- (id)_initWithAnyCoder:(id)coder;
- (void)_encodeWithAnyCoder:(id)coder;
- (void)data;
- (void)dictionary;
- (void)encodeToXpcDictionary:(id)dictionary;
@end

@implementation UVPropertyList

- (UVPropertyList)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = UVPropertyList;
  v6 = [(UVPropertyList *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
    data = v7->_data;
    v7->_data = 0;
  }

  return v7;
}

- (UVPropertyList)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = UVPropertyList;
  v6 = [(UVPropertyList *)&v10 init];
  v7 = v6;
  if (v6)
  {
    dictionary = v6->_dictionary;
    v6->_dictionary = 0;

    objc_storeStrong(&v7->_data, data);
  }

  return v7;
}

- (NSDictionary)dictionary
{
  v32 = *MEMORY[0x277D85DE8];
  dictionary = self->_dictionary;
  if (dictionary)
  {
    dictionary2 = dictionary;
  }

  else
  {
    data = self->_data;
    v26 = 0;
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:&v26];
    v6 = v26;
    if (v5)
    {
      objc_opt_class();
      objc_opt_class();
      dictionary2 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        allKeys = [(NSDictionary *)dictionary2 allKeys];
        v8 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v28;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(allKeys);
              }

              v12 = *(*(&v27 + 1) + 8 * i);
              if (objc_opt_isKindOfClass())
              {
                v13 = [(NSDictionary *)dictionary2 objectForKey:v12];
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  continue;
                }
              }

              goto LABEL_20;
            }

            v9 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {

LABEL_20:
        v22 = UVLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(UVPropertyList *)v22 dictionary];
        }

        dictionary = [MEMORY[0x277CBEAC0] dictionary];

        dictionary2 = dictionary;
      }
    }

    else
    {
      v15 = UVLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(UVPropertyList *)v6 dictionary:v15];
      }

      dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return dictionary2;
}

- (NSData)data
{
  data = self->_data;
  if (data)
  {
    data = data;
  }

  else
  {
    dictionary = self->_dictionary;
    v14 = 0;
    data = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:200 options:0 error:&v14];
    v5 = v14;
    if (!data)
    {
      v6 = UVLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(UVPropertyList *)v5 data:v6];
      }

      data = [MEMORY[0x277CBEA90] data];
    }
  }

  return data;
}

- (void)_encodeWithAnyCoder:(id)coder
{
  coderCopy = coder;
  data = [(UVPropertyList *)self data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (id)_initWithAnyCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"UVPropertyList missing serialization"];
  }

  v6 = [(UVPropertyList *)self initWithData:v5];

  return v6;
}

- (void)encodeToXpcDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[UVRawXPCCoder alloc] initWithXpcDictionary:dictionaryCopy];

  [(UVPropertyList *)self _encodeWithAnyCoder:v5];
}

- (UVPropertyList)initWithXpcDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[UVRawXPCDecoder alloc] initWithXpcDictionary:dictionaryCopy];
  v6 = [(UVPropertyList *)self _initWithAnyCoder:v5];

  return v6;
}

- (void)dictionary
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25F533000, a2, a3, "UVPropertyList data could not be deserialized: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)data
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25F533000, a2, a3, "UVPropertyList dictionary could not be serialized: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithXpcDictionary:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25F533000, a2, a3, "UVPropertyList XPC dictionary could not be serialized: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end