@interface STRPOPACKCoder
+ (id)decodeObjectOfClass:(Class)class fromData:(id)data error:(id *)error;
+ (id)encodeObject:(id)object error:(id *)error;
@end

@implementation STRPOPACKCoder

+ (id)encodeObject:(id)object error:(id *)error
{
  objectCopy = object;
  v6 = objc_alloc_init(STRPPropertyListTypeEncoder);
  v7 = [(STRPPropertyListTypeEncoder *)v6 encodeRootObject:objectCopy];

  v12 = 0;
  v8 = MEMORY[0x1E12CC0F0](v7, 0, &v12);
  if (v8)
  {
    v9 = v12 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  if (error && v10)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"STRPCodingErrorDomain" code:2 userInfo:0];
  }

  return v8;
}

+ (id)decodeObjectOfClass:(Class)class fromData:(id)data error:(id *)error
{
  v7 = OPACKDecodeData();
  if (v7)
  {
    v8 = objc_alloc_init(STRPPropertyListTypeDecoder);
    v9 = [(STRPPropertyListTypeDecoder *)v8 decodeRootObjectOfClass:class fromEncoded:v7 error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"STRPCodingErrorDomain" code:2 userInfo:0];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end