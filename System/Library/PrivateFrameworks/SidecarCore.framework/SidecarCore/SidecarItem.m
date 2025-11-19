@interface SidecarItem
- (BOOL)conformsToType:(id)a3;
- (SidecarItem)initWithData:(id)a3 type:(id)a4;
- (SidecarItem)initWithObject:(id)a3 type:(id)a4;
- (UTType)uniformType;
- (id)debugDescription;
- (id)description;
- (id)objectValue;
@end

@implementation SidecarItem

- (UTType)uniformType
{
  v2 = MEMORY[0x277CE1CB8];
  v3 = [(SidecarItem *)self type];
  v4 = [v2 typeWithIdentifier:v3];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SidecarItem *)self type];
  v7 = [(SidecarItem *)self data];
  v8 = [v3 stringWithFormat:@"<%@: %@ (%lu bytes)>", v5, v6, objc_msgSend(v7, "length")];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SidecarItem *)self type];
  v5 = [(SidecarItem *)self data];
  v6 = [v3 stringWithFormat:@"<%@ (%lu bytes)>", v4, objc_msgSend(v5, "length")];

  return v6;
}

- (BOOL)conformsToType:(id)a3
{
  v4 = [MEMORY[0x277CE1CB8] _typeWithIdentifier:a3 allowUndeclared:1];
  v5 = [(SidecarItem *)self uniformType];
  v6 = [v5 conformsToType:v4];

  return v6;
}

- (id)objectValue
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [(SidecarItem *)self data];
  v14 = 0;
  v3 = SidecarOPACKDecode(v2, &v14);
  v4 = v14;

  v5 = v4;
  if (v5)
  {
    v8 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v8)
    {
      log = v8;
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      v8 = log;
      if (v9)
      {
        v10 = [v5 domain];
        v11 = [v5 code];
        v12 = [v5 localizedDescription];
        *buf = 138543875;
        v16 = v10;
        v17 = 2048;
        v18 = v11;
        v19 = 2113;
        v20 = v12;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v8 = log;
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (SidecarItem)initWithObject:(id)a3 type:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v18 = 0;
  v7 = SidecarOPACKEncode(a3, &v18);
  v8 = v18;
  v9 = v8;
  if (!v7 || v8)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CCA2A0];
    v12 = [v8 localizedDescription];
    v19 = *MEMORY[0x277CCA7E8];
    v20[0] = v9;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v10 exceptionWithName:v11 reason:v12 userInfo:v13];
    [v14 raise];
  }

  v15 = [(SidecarItem *)self initWithData:v7 type:v6];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (SidecarItem)initWithData:(id)a3 type:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SidecarItem;
  v9 = [(SidecarItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_type, a4);
  }

  return v10;
}

@end