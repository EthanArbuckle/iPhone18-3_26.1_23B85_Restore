@interface STRPOPACKCoder
+ (id)decodeObjectOfClass:(Class)a3 fromData:(id)a4 error:(id *)a5;
+ (id)encodeObject:(id)a3 error:(id *)a4;
@end

@implementation STRPOPACKCoder

+ (id)encodeObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(STRPPropertyListTypeEncoder);
  v7 = [(STRPPropertyListTypeEncoder *)v6 encodeRootObject:v5];

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
  if (a4 && v10)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STRPCodingErrorDomain" code:2 userInfo:0];
  }

  return v8;
}

+ (id)decodeObjectOfClass:(Class)a3 fromData:(id)a4 error:(id *)a5
{
  v7 = OPACKDecodeData();
  if (v7)
  {
    v8 = objc_alloc_init(STRPPropertyListTypeDecoder);
    v9 = [(STRPPropertyListTypeDecoder *)v8 decodeRootObjectOfClass:a3 fromEncoded:v7 error:a5];
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"STRPCodingErrorDomain" code:2 userInfo:0];
    *a5 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end