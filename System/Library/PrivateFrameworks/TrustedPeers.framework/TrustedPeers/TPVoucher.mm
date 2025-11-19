@interface TPVoucher
+ (id)voucherInfoWithData:(id)a3 sig:(id)a4;
+ (id)voucherWithReason:(unint64_t)a3 beneficiaryID:(id)a4 sponsorID:(id)a5 signingKeyPair:(id)a6 error:(id *)a7;
- (BOOL)checkSignatureWithKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVoucher:(id)a3;
- (TPVoucher)initWithObj:(id)a3 data:(id)a4 sig:(id)a5;
- (id)createRecoveryECPublicKey:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation TPVoucher

- (unint64_t)hash
{
  v3 = [(TPVoucher *)self data];
  v4 = [v3 hash];
  v5 = [(TPVoucher *)self sig];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPVoucher *)self isEqualToVoucher:v4];
  }

  return v5;
}

- (BOOL)isEqualToVoucher:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(TPVoucher *)self data];
    v6 = [(TPVoucher *)v4 data];
    if ([v5 isEqualToData:v6])
    {
      v7 = [(TPVoucher *)self sig];
      v8 = [(TPVoucher *)v4 sig];
      v9 = [v7 isEqualToData:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPVoucher *)self dictionaryRepresentation];
  v5 = [v4 description];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [TPPBVoucher alloc];
  v4 = [(TPVoucher *)self data];
  v5 = [(TPPBVoucher *)v3 initWithData:v4];

  v6 = [(TPPBVoucher *)v5 dictionaryRepresentation];

  return v6;
}

- (id)createRecoveryECPublicKey:(id)a3
{
  v3 = MEMORY[0x277D4D2F0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [objc_alloc(MEMORY[0x277D4D2E8]) initWithCurve:4];
  v11 = 0;
  v7 = [v5 initWithData:v4 specifier:v6 error:&v11];

  v8 = v11;
  v9 = 0;
  if (!v8)
  {
    v9 = v7;
  }

  return v9;
}

- (BOOL)checkSignatureWithKey:(id)a3
{
  v4 = a3;
  v5 = [(TPVoucher *)self sig];
  v6 = [(TPVoucher *)self data];
  v7 = checkTypesafeSignature(v4, v5, v6, @"TPPB.Voucher");

  return v7;
}

- (TPVoucher)initWithObj:(id)a3 data:(id)a4 sig:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[TPStringTable defaultTable];
  v22.receiver = self;
  v22.super_class = TPVoucher;
  v12 = [(TPVoucher *)&v22 init];
  if (v12)
  {
    v13 = [v8 reason] - 1;
    if (v13 < 7)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 0;
    }

    v12->_reason = v14;
    v15 = [v8 beneficiary];
    v16 = [v11 stringWithString:v15];
    beneficiaryID = v12->_beneficiaryID;
    v12->_beneficiaryID = v16;

    v18 = [v8 sponsor];
    v19 = [v11 stringWithString:v18];
    sponsorID = v12->_sponsorID;
    v12->_sponsorID = v19;

    objc_storeStrong(&v12->_data, a4);
    objc_storeStrong(&v12->_sig, a5);
  }

  return v12;
}

+ (id)voucherInfoWithData:(id)a3 sig:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[TPPBVoucher alloc] initWithData:v5];
  if (v7)
  {
    v8 = [[TPVoucher alloc] initWithObj:v7 data:v5 sig:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)voucherWithReason:(unint64_t)a3 beneficiaryID:(id)a4 sponsorID:(id)a5 signingKeyPair:(id)a6 error:(id *)a7
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_alloc_init(TPPBVoucher);
  [(TPPBVoucher *)v16 setBeneficiary:v15];

  [(TPPBVoucher *)v16 setSponsor:v14];
  if (a3 - 1 >= 7)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"TPVoucher.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"NO"}];
    v19 = 0;
  }

  else
  {
    [(TPPBVoucher *)v16 setReason:a3];
    v17 = [(TPPBVoucher *)v16 data];
    v18 = typesafeSignature(v13, v17, @"TPPB.Voucher", a7);
    if (v18)
    {
      v19 = [[TPVoucher alloc] initWithObj:v16 data:v17 sig:v18];
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

@end