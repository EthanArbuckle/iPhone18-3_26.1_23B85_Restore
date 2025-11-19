@interface UVRawXPCCoder
- (UVRawXPCCoder)initWithXpcDictionary:(id)a3;
- (void)encodeObject:(id)a3 forKey:(id)a4;
@end

@implementation UVRawXPCCoder

- (UVRawXPCCoder)initWithXpcDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UVRawXPCCoder;
  v6 = [(UVRawXPCCoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
  }

  return v7;
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  dictionary = self->_dictionary;
  v5 = a3;
  v6 = [@"data" UTF8String];
  v7 = [v5 bytes];
  v8 = [v5 length];

  xpc_dictionary_set_data(dictionary, v6, v7, v8);
}

@end