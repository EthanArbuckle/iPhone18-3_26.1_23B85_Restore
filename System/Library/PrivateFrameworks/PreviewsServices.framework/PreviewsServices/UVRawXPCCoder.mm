@interface UVRawXPCCoder
- (UVRawXPCCoder)initWithXpcDictionary:(id)dictionary;
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation UVRawXPCCoder

- (UVRawXPCCoder)initWithXpcDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = UVRawXPCCoder;
  v6 = [(UVRawXPCCoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
  }

  return v7;
}

- (void)encodeObject:(id)object forKey:(id)key
{
  dictionary = self->_dictionary;
  objectCopy = object;
  uTF8String = [@"data" UTF8String];
  bytes = [objectCopy bytes];
  v8 = [objectCopy length];

  xpc_dictionary_set_data(dictionary, uTF8String, bytes, v8);
}

@end