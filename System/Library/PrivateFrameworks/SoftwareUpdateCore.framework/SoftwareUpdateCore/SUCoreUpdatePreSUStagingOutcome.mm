@interface SUCoreUpdatePreSUStagingOutcome
- (SUCoreUpdatePreSUStagingOutcome)initWithError:(id)error;
- (id)description;
@end

@implementation SUCoreUpdatePreSUStagingOutcome

- (SUCoreUpdatePreSUStagingOutcome)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = SUCoreUpdatePreSUStagingOutcome;
  v6 = [(SUCoreUpdatePreSUStagingOutcome *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  error = [(SUCoreUpdatePreSUStagingOutcome *)self error];
  v6 = [v3 stringWithFormat:@"[%@ >>>\n\terror: %@\n<<<]\n", v4, error];

  return v6;
}

@end