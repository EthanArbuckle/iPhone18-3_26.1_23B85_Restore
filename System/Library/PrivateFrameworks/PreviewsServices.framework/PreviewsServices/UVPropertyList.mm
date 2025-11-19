@interface UVPropertyList
- (NSData)data;
- (NSDictionary)dictionary;
- (UVPropertyList)initWithData:(id)a3;
- (UVPropertyList)initWithDictionary:(id)a3;
- (UVPropertyList)initWithXpcDictionary:(id)a3;
- (id)_initWithAnyCoder:(id)a3;
- (void)_encodeWithAnyCoder:(id)a3;
- (void)data;
- (void)dictionary;
- (void)encodeToXpcDictionary:(id)a3;
@end

@implementation UVPropertyList

- (UVPropertyList)initWithDictionary:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = UVPropertyList;
  v6 = [(UVPropertyList *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
    data = v7->_data;
    v7->_data = 0;
  }

  return v7;
}

- (UVPropertyList)initWithData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = UVPropertyList;
  v6 = [(UVPropertyList *)&v10 init];
  v7 = v6;
  if (v6)
  {
    dictionary = v6->_dictionary;
    v6->_dictionary = 0;

    objc_storeStrong(&v7->_data, a3);
  }

  return v7;
}

- (NSDictionary)dictionary
{
  v32 = *MEMORY[0x277D85DE8];
  dictionary = self->_dictionary;
  if (dictionary)
  {
    v3 = dictionary;
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
      v3 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v7 = [(NSDictionary *)v3 allKeys];
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v27 + 1) + 8 * i);
              if (objc_opt_isKindOfClass())
              {
                v13 = [(NSDictionary *)v3 objectForKey:v12];
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  continue;
                }
              }

              goto LABEL_20;
            }

            v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
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

        v23 = [MEMORY[0x277CBEAC0] dictionary];

        v3 = v23;
      }
    }

    else
    {
      v15 = UVLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(UVPropertyList *)v6 dictionary:v15];
      }

      v3 = [MEMORY[0x277CBEAC0] dictionary];
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSData)data
{
  data = self->_data;
  if (data)
  {
    v3 = data;
  }

  else
  {
    dictionary = self->_dictionary;
    v14 = 0;
    v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:200 options:0 error:&v14];
    v5 = v14;
    if (!v3)
    {
      v6 = UVLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(UVPropertyList *)v5 data:v6];
      }

      v3 = [MEMORY[0x277CBEA90] data];
    }
  }

  return v3;
}

- (void)_encodeWithAnyCoder:(id)a3
{
  v4 = a3;
  v5 = [(UVPropertyList *)self data];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (id)_initWithAnyCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"UVPropertyList missing serialization"];
  }

  v6 = [(UVPropertyList *)self initWithData:v5];

  return v6;
}

- (void)encodeToXpcDictionary:(id)a3
{
  v4 = a3;
  v5 = [[UVRawXPCCoder alloc] initWithXpcDictionary:v4];

  [(UVPropertyList *)self _encodeWithAnyCoder:v5];
}

- (UVPropertyList)initWithXpcDictionary:(id)a3
{
  v4 = a3;
  v5 = [[UVRawXPCDecoder alloc] initWithXpcDictionary:v4];
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