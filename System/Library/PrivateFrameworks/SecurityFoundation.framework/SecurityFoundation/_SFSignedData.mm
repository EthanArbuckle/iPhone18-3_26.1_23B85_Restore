@interface _SFSignedData
- (_SFSignedData)initWithCoder:(id)a3;
- (_SFSignedData)initWithData:(id)a3 signature:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFSignedData

- (_SFSignedData)initWithData:(id)a3 signature:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = _SFSignedData;
  v8 = [(_SFSignedData *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc_init(SFSignedData_Ivars);
    signedDataInternal = v8->_signedDataInternal;
    v8->_signedDataInternal = v9;

    v11 = [v6 copy];
    v12 = v8->_signedDataInternal;
    v13 = v12[1];
    v12[1] = v11;

    v14 = [v7 copy];
    v15 = v8->_signedDataInternal;
    v16 = v15[2];
    v15[2] = v14;
  }

  return v8;
}

- (_SFSignedData)initWithCoder:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _SFSignedData;
  v5 = [(_SFSignedData *)&v22 init];
  if (v5)
  {
    v6 = objc_alloc_init(SFSignedData_Ivars);
    signedDataInternal = v5->_signedDataInternal;
    v5->_signedDataInternal = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
    v9 = v5->_signedDataInternal;
    v10 = v9[1];
    v9[1] = v8;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_signature"];
    v12 = v5->_signedDataInternal;
    v13 = v12[2];
    v12[2] = v11;

    v14 = v5->_signedDataInternal;
    if (!v14[1] || !v14[2])
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA050];
      v23 = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to deserialize object of type %@", objc_opt_class()];
      v24[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v19 = [v15 errorWithDomain:v16 code:4865 userInfo:v18];

      [v4 failWithError:v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(self->_signedDataInternal + 1);
  v5 = a3;
  [v5 encodeObject:v4 forKey:@"_data"];
  [v5 encodeObject:*(self->_signedDataInternal + 2) forKey:@"_signature"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  signedDataInternal = self->_signedDataInternal;
  v6 = signedDataInternal[1];
  v7 = signedDataInternal[2];

  return [v4 initWithData:v6 signature:v7];
}

@end