@interface UVRawXPCDecoder
- (UVRawXPCDecoder)initWithXpcDictionary:(id)dictionary;
- (id)decodeObjectOfClass:(Class)class forKey:(id)key;
@end

@implementation UVRawXPCDecoder

- (UVRawXPCDecoder)initWithXpcDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = UVRawXPCDecoder;
  v6 = [(UVRawXPCDecoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
  }

  return v7;
}

- (id)decodeObjectOfClass:(Class)class forKey:(id)key
{
  length = 0;
  data = xpc_dictionary_get_data(self->_dictionary, [@"data" UTF8String], &length);
  if (data)
  {
    v5 = data;
    v6 = objc_alloc(MEMORY[0x277CBEA90]);
    data = [v6 initWithBytes:v5 length:length];
  }

  return data;
}

@end