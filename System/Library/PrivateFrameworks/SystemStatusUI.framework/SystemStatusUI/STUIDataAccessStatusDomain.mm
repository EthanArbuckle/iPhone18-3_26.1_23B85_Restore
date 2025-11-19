@interface STUIDataAccessStatusDomain
+ (id)_dataForBaseData:(id)a3;
- (STUIDataAccessStatusDomainData)data;
- (void)observeData:(id)a3;
- (void)observeDataWithBlock:(id)a3;
@end

@implementation STUIDataAccessStatusDomain

- (STUIDataAccessStatusDomainData)data
{
  v3 = objc_opt_class();
  v7.receiver = self;
  v7.super_class = STUIDataAccessStatusDomain;
  v4 = [(STStatusDomain *)&v7 data];
  v5 = [v3 _dataForBaseData:v4];

  return v5;
}

- (void)observeData:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__STUIDataAccessStatusDomain_observeData___block_invoke;
  v7[3] = &unk_279D389B8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = STUIDataAccessStatusDomain;
  v5 = v4;
  [(STStatusDomain *)&v6 observeData:v7];
}

void __42__STUIDataAccessStatusDomain_observeData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = a3;
  v6 = a2;
  v7 = [objc_opt_class() _dataForBaseData:v6];

  (*(v4 + 16))(v4, v7, v5);
}

- (void)observeDataWithBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__STUIDataAccessStatusDomain_observeDataWithBlock___block_invoke;
  v7[3] = &unk_279D389E0;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = STUIDataAccessStatusDomain;
  v5 = v4;
  [(STStatusDomain *)&v6 observeDataWithBlock:v7];
}

void __51__STUIDataAccessStatusDomain_observeDataWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [objc_opt_class() _dataForBaseData:v3];

  (*(v2 + 16))(v2, v4);
}

+ (id)_dataForBaseData:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [(STDataAccessStatusDomainData *)[STUIDataAccessStatusDomainData alloc] initWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end