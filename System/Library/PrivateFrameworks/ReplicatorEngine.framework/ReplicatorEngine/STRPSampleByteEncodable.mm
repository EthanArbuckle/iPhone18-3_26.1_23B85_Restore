@interface STRPSampleByteEncodable
- (BOOL)isEqual:(id)equal;
- (STRPSampleByteEncodable)initWithCoder:(id)coder;
- (STRPSampleByteEncodable)initWithStruct:(MyCoolStruct *)struct;
@end

@implementation STRPSampleByteEncodable

- (STRPSampleByteEncodable)initWithStruct:(MyCoolStruct *)struct
{
  v4 = v3;
  v7.receiver = self;
  v7.super_class = STRPSampleByteEncodable;
  result = [(STRPSampleByteEncodable *)&v7 init];
  if (result)
  {
    *&result->_aStruct.aBool = struct;
    *&result->_aStruct.someOptions = v4;
    *(&result->_aStruct.someOptions + 2) = WORD2(v4);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      aStruct = [(STRPSampleByteEncodable *)self aStruct];
      if ((([(STRPSampleByteEncodable *)v5 aStruct]^ aStruct) & 1) != 0 || (*&v16 = [(STRPSampleByteEncodable *)self aStruct], DWORD2(v16) = v7, WORD6(v16) = v8, *&v15 = [(STRPSampleByteEncodable *)v5 aStruct], DWORD2(v15) = v9, WORD6(v15) = v10, *(&v16 + 6) != *(&v15 + 6)) || (v11 = [(STRPSampleByteEncodable *)self aStruct], (([(STRPSampleByteEncodable *)v5 aStruct]^ v11) & 0xFF0000000000) != 0))
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

- (STRPSampleByteEncodable)initWithCoder:(id)coder
{
  v9 = 0;
  coderCopy = coder;
  v6 = [coder decodeBytesForKey:@"aStruct" returnedLength:&v9];
  if (v9 == 14)
  {
    self = [(STRPSampleByteEncodable *)self initWithStruct:*v6, *(v6 + 8) | (*(v6 + 12) << 32)];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end