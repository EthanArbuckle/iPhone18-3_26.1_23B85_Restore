@interface BRCTransferFailureReport
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransferFailureReport:(id)report;
- (BRCTransferFailureReport)initWithError:(id)error;
- (id)description;
- (unint64_t)hash;
- (void)encounteredErrors:(unint64_t)errors atDate:(id)date;
- (void)setLastFailureDate:(id)date;
@end

@implementation BRCTransferFailureReport

- (BRCTransferFailureReport)initWithError:(id)error
{
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = BRCTransferFailureReport;
  v6 = [(BRCTransferFailureReport *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
    v8 = objc_opt_new();
    privateDBErrorCountByPCSAndEDPState = v7->_privateDBErrorCountByPCSAndEDPState;
    v7->_privateDBErrorCountByPCSAndEDPState = v8;

    v10 = objc_opt_new();
    shareDBErrorCountByPCSAndEDPState = v7->_shareDBErrorCountByPCSAndEDPState;
    v7->_shareDBErrorCountByPCSAndEDPState = v10;
  }

  return v7;
}

- (void)setLastFailureDate:(id)date
{
  dateCopy = date;
  lastFailureDate = self->_lastFailureDate;
  p_lastFailureDate = &self->_lastFailureDate;
  v12 = dateCopy;
  if (lastFailureDate)
  {
    [dateCopy timeIntervalSinceDate:?];
    if (v8 <= 0.0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [v12 timeIntervalSinceDate:distantPast];
  v11 = v10;

  if (v11 > 0.0)
  {
LABEL_3:
    objc_storeStrong(p_lastFailureDate, date);
  }

LABEL_4:
}

- (void)encounteredErrors:(unint64_t)errors atDate:(id)date
{
  v6 = MEMORY[0x277CFAE78];
  v7 = MEMORY[0x277CCABB0];
  dateCopy = date;
  v9 = [BRCUserDefaults defaultsForMangledID:0];
  v10 = [v7 numberWithBool:{objc_msgSend(v9, "supportsEnhancedDrivePrivacy")}];
  v14 = [v6 pairWithLeft:&unk_2837B00B8 andRight:v10];

  v11 = [(NSMutableDictionary *)self->_privateDBErrorCountByPCSAndEDPState objectForKeyedSubscript:v14];
  if (v11)
  {
    v12 = v11;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "unsignedLongLongValue") + errors}];
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:errors];
  }

  [(NSMutableDictionary *)self->_privateDBErrorCountByPCSAndEDPState setObject:v13 forKeyedSubscript:v14];
  [(BRCTransferFailureReport *)self setLastFailureDate:dateCopy];
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
  domain = [(NSError *)self->_error domain];
  v4 = [domain hash];
  v5 = [(NSError *)self->_error code]^ v4;
  brc_cloudKitErrorMessage = [(NSError *)self->_error brc_cloudKitErrorMessage];
  v7 = [brc_cloudKitErrorMessage hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCTransferFailureReport *)self isEqualToTransferFailureReport:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToTransferFailureReport:(id)report
{
  reportCopy = report;
  userInfo = [(NSError *)self->_error userInfo];
  v6 = *MEMORY[0x277CCA7E8];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  error = [reportCopy error];
  userInfo2 = [error userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:v6];

  domain = [(NSError *)self->_error domain];
  error2 = [reportCopy error];
  domain2 = [error2 domain];
  if (([domain isEqualToString:domain2] & 1) == 0)
  {
    goto LABEL_7;
  }

  code = [(NSError *)self->_error code];
  error3 = [reportCopy error];
  if (code != [error3 code])
  {

LABEL_7:
    goto LABEL_8;
  }

  brc_cloudKitErrorMessage = [(NSError *)self->_error brc_cloudKitErrorMessage];
  error4 = [reportCopy error];
  brc_cloudKitErrorMessage2 = [error4 brc_cloudKitErrorMessage];
  v18 = brc_cloudKitErrorMessage2;
  if (brc_cloudKitErrorMessage == brc_cloudKitErrorMessage2)
  {

LABEL_12:
    if (!(v7 | v10))
    {
      v23 = 1;
      goto LABEL_10;
    }

    domain = [v7 domain];
    error2 = [v10 domain];
    if ([domain isEqualToString:error2])
    {
      code2 = [v7 code];
      v23 = code2 == [v10 code];
      goto LABEL_9;
    }

LABEL_8:
    v23 = 0;
LABEL_9:

    goto LABEL_10;
  }

  brc_cloudKitErrorMessage3 = [(NSError *)self->_error brc_cloudKitErrorMessage];
  [reportCopy error];
  v20 = v28 = v7;
  [v20 brc_cloudKitErrorMessage];
  v26 = brc_cloudKitErrorMessage;
  v22 = v21 = v10;
  v27 = [brc_cloudKitErrorMessage3 isEqualToString:v22];

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