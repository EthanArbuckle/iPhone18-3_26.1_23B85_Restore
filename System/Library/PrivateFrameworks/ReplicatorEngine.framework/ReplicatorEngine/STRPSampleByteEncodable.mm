@interface STRPSampleByteEncodable
- (BOOL)isEqual:(id)a3;
- (STRPSampleByteEncodable)initWithCoder:(id)a3;
- (STRPSampleByteEncodable)initWithStruct:(MyCoolStruct *)a3;
@end

@implementation STRPSampleByteEncodable

- (STRPSampleByteEncodable)initWithStruct:(MyCoolStruct *)a3
{
  v4 = v3;
  v7.receiver = self;
  v7.super_class = STRPSampleByteEncodable;
  result = [(STRPSampleByteEncodable *)&v7 init];
  if (result)
  {
    *&result->_aStruct.aBool = a3;
    *&result->_aStruct.someOptions = v4;
    *(&result->_aStruct.someOptions + 2) = WORD2(v4);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(STRPSampleByteEncodable *)self aStruct];
      if ((([(STRPSampleByteEncodable *)v5 aStruct]^ v6) & 1) != 0 || (*&v16 = [(STRPSampleByteEncodable *)self aStruct], DWORD2(v16) = v7, WORD6(v16) = v8, *&v15 = [(STRPSampleByteEncodable *)v5 aStruct], DWORD2(v15) = v9, WORD6(v15) = v10, *(&v16 + 6) != *(&v15 + 6)) || (v11 = [(STRPSampleByteEncodable *)self aStruct], (([(STRPSampleByteEncodable *)v5 aStruct]^ v11) & 0xFF0000000000) != 0))
      {
        v12 = 0;
      }

      else
      {
        v14 = [(STRPSampleByteEncodable *)self aStruct]>> 8;
        v12 = v14 == ([(STRPSampleByteEncodable *)v5 aStruct]>> 8);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (STRPSampleByteEncodable)initWithCoder:(id)a3
{
  v9 = 0;
  v5 = a3;
  v6 = [a3 decodeBytesForKey:@"aStruct" returnedLength:&v9];
  if (v9 == 14)
  {
    self = [(STRPSampleByteEncodable *)self initWithStruct:*v6, *(v6 + 8) | (*(v6 + 12) << 32)];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end