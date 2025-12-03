@interface TPVoucher
+ (id)voucherInfoWithData:(id)data sig:(id)sig;
+ (id)voucherWithReason:(unint64_t)reason beneficiaryID:(id)d sponsorID:(id)iD signingKeyPair:(id)pair error:(id *)error;
- (BOOL)checkSignatureWithKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVoucher:(id)voucher;
- (TPVoucher)initWithObj:(id)obj data:(id)data sig:(id)sig;
- (id)createRecoveryECPublicKey:(id)key;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation TPVoucher

- (unint64_t)hash
{
  data = [(TPVoucher *)self data];
  v4 = [data hash];
  v5 = [(TPVoucher *)self sig];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPVoucher *)self isEqualToVoucher:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToVoucher:(id)voucher
{
  voucherCopy = voucher;
  if (voucherCopy == self)
  {
    v9 = 1;
  }

  else
  {
    data = [(TPVoucher *)self data];
    data2 = [(TPVoucher *)voucherCopy data];
    if ([data isEqualToData:data2])
    {
      v7 = [(TPVoucher *)self sig];
      v8 = [(TPVoucher *)voucherCopy sig];
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
  dictionaryRepresentation = [(TPVoucher *)self dictionaryRepresentation];
  v5 = [dictionaryRepresentation description];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [TPPBVoucher alloc];
  data = [(TPVoucher *)self data];
  v5 = [(TPPBVoucher *)v3 initWithData:data];

  dictionaryRepresentation = [(TPPBVoucher *)v5 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)createRecoveryECPublicKey:(id)key
{
  v3 = MEMORY[0x277D4D2F0];
  keyCopy = key;
  v5 = [v3 alloc];
  v6 = [objc_alloc(MEMORY[0x277D4D2E8]) initWithCurve:4];
  v11 = 0;
  v7 = [v5 initWithData:keyCopy specifier:v6 error:&v11];

  v8 = v11;
  v9 = 0;
  if (!v8)
  {
    v9 = v7;
  }

  return v9;
}

- (BOOL)checkSignatureWithKey:(id)key
{
  keyCopy = key;
  v5 = [(TPVoucher *)self sig];
  data = [(TPVoucher *)self data];
  v7 = checkTypesafeSignature(keyCopy, v5, data, @"TPPB.Voucher");

  return v7;
}

- (TPVoucher)initWithObj:(id)obj data:(id)data sig:(id)sig
{
  objCopy = obj;
  dataCopy = data;
  sigCopy = sig;
  v11 = +[TPStringTable defaultTable];
  v22.receiver = self;
  v22.super_class = TPVoucher;
  v12 = [(TPVoucher *)&v22 init];
  if (v12)
  {
    v13 = [objCopy reason] - 1;
    if (v13 < 7)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 0;
    }

    v12->_reason = v14;
    beneficiary = [objCopy beneficiary];
    v16 = [v11 stringWithString:beneficiary];
    beneficiaryID = v12->_beneficiaryID;
    v12->_beneficiaryID = v16;

    sponsor = [objCopy sponsor];
    v19 = [v11 stringWithString:sponsor];
    sponsorID = v12->_sponsorID;
    v12->_sponsorID = v19;

    objc_storeStrong(&v12->_data, data);
    objc_storeStrong(&v12->_sig, sig);
  }

  return v12;
}

+ (id)voucherInfoWithData:(id)data sig:(id)sig
{
  dataCopy = data;
  sigCopy = sig;
  v7 = [[TPPBVoucher alloc] initWithData:dataCopy];
  if (v7)
  {
    v8 = [[TPVoucher alloc] initWithObj:v7 data:dataCopy sig:sigCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)voucherWithReason:(unint64_t)reason beneficiaryID:(id)d sponsorID:(id)iD signingKeyPair:(id)pair error:(id *)error
{
  pairCopy = pair;
  iDCopy = iD;
  dCopy = d;
  v16 = objc_alloc_init(TPPBVoucher);
  [(TPPBVoucher *)v16 setBeneficiary:dCopy];

  [(TPPBVoucher *)v16 setSponsor:iDCopy];
  if (reason - 1 >= 7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TPVoucher.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"NO"}];
    v19 = 0;
  }

  else
  {
    [(TPPBVoucher *)v16 setReason:reason];
    currentHandler = [(TPPBVoucher *)v16 data];
    v18 = typesafeSignature(pairCopy, currentHandler, @"TPPB.Voucher", error);
    if (v18)
    {
      v19 = [[TPVoucher alloc] initWithObj:v16 data:currentHandler sig:v18];
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

@end