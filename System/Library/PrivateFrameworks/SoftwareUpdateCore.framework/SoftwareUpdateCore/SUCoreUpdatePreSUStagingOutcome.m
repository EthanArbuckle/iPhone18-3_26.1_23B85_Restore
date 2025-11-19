@interface SUCoreUpdatePreSUStagingOutcome
- (SUCoreUpdatePreSUStagingOutcome)initWithError:(id)a3;
- (id)description;
@end

@implementation SUCoreUpdatePreSUStagingOutcome

- (SUCoreUpdatePreSUStagingOutcome)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUCoreUpdatePreSUStagingOutcome;
  v6 = [(SUCoreUpdatePreSUStagingOutcome *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SUCoreUpdatePreSUStagingOutcome *)self error];
  v6 = [v3 stringWithFormat:@"[%@ >>>\n\terror: %@\n<<<]\n", v4, v5];

  return v6;
}

@end