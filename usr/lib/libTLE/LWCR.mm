@interface LWCR
+ (id)withData:(id)data withError:(id *)error;
+ (id)withVersion:(int64_t)version withConstraintCategory:(int64_t)category withRequirements:(id)requirements withError:(id *)error;
- (BOOL)hasRequirements;
- (LWCR)init;
- (NSDictionary)dictionary;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation LWCR

- (id).cxx_construct
{
  *(self + 112) = 0;
  *(self + 89) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

- (NSDictionary)dictionary
{
  v2 = [*(self + 3) copy];

  return v2;
}

- (BOOL)hasRequirements
{
  v3 = *(self + 56);
  v4 = *(self + 72);
  v5 = *(self + 88);
  v6 = *(self + 13);
  return der_vm_context_is_valid();
}

- (void)dealloc
{
  if (*(self + 2))
  {
    CEReleaseManagedContext();
  }

  v3.receiver = self;
  v3.super_class = LWCR;
  [(LWCR *)&v3 dealloc];
}

- (LWCR)init
{
  v6.receiver = self;
  v6.super_class = LWCR;
  v2 = [(LWCR *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 1);
    *(v2 + 1) = 0;

    *(v3 + 2) = 0;
  }

  return v3;
}

+ (id)withVersion:(int64_t)version withConstraintCategory:(int64_t)category withRequirements:(id)requirements withError:(id *)error
{
  v22[3] = *MEMORY[0x29EDCA608];
  requirementsCopy = requirements;
  v11 = MEMORY[0x29EDB8E00];
  v21[0] = @"vers";
  v12 = [MEMORY[0x29EDBA070] numberWithLongLong:version];
  v22[0] = v12;
  v21[1] = @"comp";
  v13 = [MEMORY[0x29EDBA070] numberWithLongLong:version == 1];
  v22[1] = v13;
  v21[2] = @"ccat";
  v14 = [MEMORY[0x29EDBA070] numberWithLongLong:category];
  v22[2] = v14;
  v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v16 = [v11 dictionaryWithDictionary:v15];

  if (requirementsCopy)
  {
    [v16 setObject:requirementsCopy forKeyedSubscript:@"reqs"];
  }

  v17 = *MEMORY[0x29EDC9140];
  if (CESerializeCFDictionaryWithOptions() == *MEMORY[0x29EDC9178])
  {
    v18 = [self withData:0 withError:error];
  }

  else if (error)
  {
    [MEMORY[0x29EDB9FA0] errorWithDomain:@"LWCRError" code:2 userInfo:0];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x29EDCA608];

  return v18;
}

+ (id)withData:(id)data withError:(id *)error
{
  v27[2] = *MEMORY[0x29EDCA608];
  dataCopy = data;
  v25 = 0;
  v24 = 1;
  v7 = *MEMORY[0x29EDC9140];
  v8 = CEManagedContextFromCFDataWithOptions();
  v9 = MEMORY[0x29EDC9178];
  if (v8 == *MEMORY[0x29EDC9178])
  {
    v11 = objc_alloc_init(LWCR);
    objc_storeStrong(v11 + 1, data);
    v12 = v25;
    *(v11 + 2) = v25;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    TLE::LWCR::loadFromCE((v11 + 32), v12, &v21);
    if (v21)
    {
      if (error)
      {
        v13 = MEMORY[0x29EDB9FA0];
        v26[0] = *MEMORY[0x29EDB9F18];
        v14 = [MEMORY[0x29EDBA070] numberWithInt:?];
        v27[0] = v14;
        v26[1] = *MEMORY[0x29EDB9E38];
        v15 = objc_alloc(MEMORY[0x29EDBA0F8]);
        v16 = [v15 initWithBytes:v22 length:v23 encoding:4];
        v27[1] = v16;
        v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
        *error = [v13 errorWithDomain:@"LWCRError" code:1 userInfo:v17];
      }
    }

    else
    {
      if (CEQueryContextToCFDictionary() == *v9)
      {
        v20 = *(v11 + 3);
        *(v11 + 3) = 0;

        v10 = v11;
        goto LABEL_8;
      }

      if (error)
      {
        [MEMORY[0x29EDB9FA0] errorWithDomain:@"LWCRError" code:2 userInfo:0];
        *error = v10 = 0;
        goto LABEL_8;
      }
    }

    v10 = 0;
LABEL_8:

    goto LABEL_10;
  }

  if (error)
  {
    [MEMORY[0x29EDB9FA0] errorWithDomain:@"LWCRError" code:2 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_10:

  v18 = *MEMORY[0x29EDCA608];

  return v10;
}

@end