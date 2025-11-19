@interface BRCTransferFailureReport
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTransferFailureReport:(id)a3;
- (BRCTransferFailureReport)initWithError:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encounteredErrors:(unint64_t)a3 atDate:(id)a4;
- (void)setLastFailureDate:(id)a3;
@end

@implementation BRCTransferFailureReport

- (BRCTransferFailureReport)initWithError:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BRCTransferFailureReport;
  v6 = [(BRCTransferFailureReport *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
    v8 = objc_opt_new();
    privateDBErrorCountByPCSAndEDPState = v7->_privateDBErrorCountByPCSAndEDPState;
    v7->_privateDBErrorCountByPCSAndEDPState = v8;

    v10 = objc_opt_new();
    shareDBErrorCountByPCSAndEDPState = v7->_shareDBErrorCountByPCSAndEDPState;
    v7->_shareDBErrorCountByPCSAndEDPState = v10;
  }

  return v7;
}

- (void)setLastFailureDate:(id)a3
{
  v5 = a3;
  lastFailureDate = self->_lastFailureDate;
  p_lastFailureDate = &self->_lastFailureDate;
  v12 = v5;
  if (lastFailureDate)
  {
    [v5 timeIntervalSinceDate:?];
    if (v8 <= 0.0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = [MEMORY[0x277CBEAA8] distantPast];
  [v12 timeIntervalSinceDate:v9];
  v11 = v10;

  if (v11 > 0.0)
  {
LABEL_3:
    objc_storeStrong(p_lastFailureDate, a3);
  }

LABEL_4:
}

- (void)encounteredErrors:(unint64_t)a3 atDate:(id)a4
{
  v6 = MEMORY[0x277CFAE78];
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = [BRCUserDefaults defaultsForMangledID:0];
  v10 = [v7 numberWithBool:{objc_msgSend(v9, "supportsEnhancedDrivePrivacy")}];
  v14 = [v6 pairWithLeft:&unk_2837B00B8 andRight:v10];

  v11 = [(NSMutableDictionary *)self->_privateDBErrorCountByPCSAndEDPState objectForKeyedSubscript:v14];
  if (v11)
  {
    v12 = v11;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "unsignedLongLongValue") + a3}];
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  }

  [(NSMutableDictionary *)self->_privateDBErrorCountByPCSAndEDPState setObject:v13 forKeyedSubscript:v14];
  [(BRCTransferFailureReport *)self setLastFailureDate:v8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  privateDBErrorCountByPCSAndEDPState = self->_privateDBErrorCountByPCSAndEDPState;
  return [v3 stringWithFormat:@"<%@:%p e:%@ ppcs:%@ spcs:%@>", v4, self, self->_error, privateDBErrorCountByPCSAndEDPState, self->_shareDBErrorCountByPCSAndEDPState];
}

- (unint64_t)hash
{
  v3 = [(NSError *)self->_error domain];
  v4 = [v3 hash];
  v5 = [(NSError *)self->_error code]^ v4;
  v6 = [(NSError *)self->_error brc_cloudKitErrorMessage];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCTransferFailureReport *)self isEqualToTransferFailureReport:v4];
  }

  return v5;
}

- (BOOL)isEqualToTransferFailureReport:(id)a3
{
  v4 = a3;
  v5 = [(NSError *)self->_error userInfo];
  v6 = *MEMORY[0x277CCA7E8];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  v8 = [v4 error];
  v9 = [v8 userInfo];
  v10 = [v9 objectForKeyedSubscript:v6];

  v11 = [(NSError *)self->_error domain];
  v12 = [v4 error];
  v13 = [v12 domain];
  if (([v11 isEqualToString:v13] & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = [(NSError *)self->_error code];
  v15 = [v4 error];
  if (v14 != [v15 code])
  {

LABEL_7:
    goto LABEL_8;
  }

  v16 = [(NSError *)self->_error brc_cloudKitErrorMessage];
  v29 = [v4 error];
  v17 = [v29 brc_cloudKitErrorMessage];
  v18 = v17;
  if (v16 == v17)
  {

LABEL_12:
    if (!(v7 | v10))
    {
      v23 = 1;
      goto LABEL_10;
    }

    v11 = [v7 domain];
    v12 = [v10 domain];
    if ([v11 isEqualToString:v12])
    {
      v25 = [v7 code];
      v23 = v25 == [v10 code];
      goto LABEL_9;
    }

LABEL_8:
    v23 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v19 = [(NSError *)self->_error brc_cloudKitErrorMessage];
  [v4 error];
  v20 = v28 = v7;
  [v20 brc_cloudKitErrorMessage];
  v26 = v16;
  v22 = v21 = v10;
  v27 = [v19 isEqualToString:v22];

  v10 = v21;
  v7 = v28;

  if (v27)
  {
    goto LABEL_12;
  }

  v23 = 0;
LABEL_10:

  return v23;
}

@end