@interface RMDummyData
- ($AE72BB7FA4D4C7C6B4FE5A9414CF8B1A)payload;
- (RMDummyData)initWithCoder:(id)a3;
- (RMDummyData)initWithPayload:(id *)a3;
@end

@implementation RMDummyData

- (RMDummyData)initWithPayload:(id *)a3
{
  v8.receiver = self;
  v8.super_class = RMDummyData;
  result = [(RMDummyData *)&v8 init];
  if (result)
  {
    v5 = *a3->var0.var0;
    v6 = *(&a3->var0.var1 + 1);
    v7 = *(&a3->var0.var1 + 2);
    *(&result->_payload.var0.abstime + 3) = *(&a3->var0.var1 + 3);
    *(&result->_payload.var0.abstime + 2) = v7;
    *(&result->_payload.var0.abstime + 1) = v6;
    *result->_payload.var0.data = v5;
  }

  return result;
}

- (RMDummyData)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v5 = a3;
  v6 = [a3 decodeBytesForKey:@"DummyDataEncodingKey" returnedLength:&v13];
  v7 = 0;
  if (v6 && v13 == 64)
  {
    v8 = *v6;
    v9 = v6[1];
    v10 = v6[3];
    v14[2] = v6[2];
    v14[3] = v10;
    v14[0] = v8;
    v14[1] = v9;
    self = [(RMDummyData *)self initWithPayload:v14];
    v7 = self;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- ($AE72BB7FA4D4C7C6B4FE5A9414CF8B1A)payload
{
  v3 = *(&self->var0.var1 + 3);
  *retstr->var0.var0 = *(&self->var0.var1 + 1);
  *(&retstr->var0.var1 + 1) = v3;
  v4 = *(&self->var0.var1 + 7);
  *(&retstr->var0.var1 + 2) = *(&self->var0.var1 + 5);
  *(&retstr->var0.var1 + 3) = v4;
  return self;
}

@end