@interface SUUIStatefulUIManagerFSMParam
- (SUUIStatefulUIManagerFSMParam)init;
- (SUUIStatefulUIManagerFSMParam)initWithRetriesCount:(unsigned __int8)count;
@end

@implementation SUUIStatefulUIManagerFSMParam

- (SUUIStatefulUIManagerFSMParam)init
{
  v4 = 0;
  v4 = [(SUUIStatefulUIManagerFSMParam *)self initWithRetriesCount:0];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (SUUIStatefulUIManagerFSMParam)initWithRetriesCount:(unsigned __int8)count
{
  v8 = a2;
  countCopy = count;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = SUUIStatefulUIManagerFSMParam;
  v5 = [(SUUIStatefulUIManagerFSMParam *)&v6 init];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    [(SUUIStatefulUIManagerFSMParam *)v9 setRetries:countCopy];
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

@end