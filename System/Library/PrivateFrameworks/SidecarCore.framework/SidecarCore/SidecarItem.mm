@interface SidecarItem
- (BOOL)conformsToType:(id)type;
- (SidecarItem)initWithData:(id)data type:(id)type;
- (SidecarItem)initWithObject:(id)object type:(id)type;
- (UTType)uniformType;
- (id)debugDescription;
- (id)description;
- (id)objectValue;
@end

@implementation SidecarItem

- (UTType)uniformType
{
  v2 = MEMORY[0x277CE1CB8];
  type = [(SidecarItem *)self type];
  v4 = [v2 typeWithIdentifier:type];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = [(SidecarItem *)self type];
  data = [(SidecarItem *)self data];
  v8 = [v3 stringWithFormat:@"<%@: %@ (%lu bytes)>", v5, type, objc_msgSend(data, "length")];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(SidecarItem *)self type];
  data = [(SidecarItem *)self data];
  v6 = [v3 stringWithFormat:@"<%@ (%lu bytes)>", type, objc_msgSend(data, "length")];

  return v6;
}

- (BOOL)conformsToType:(id)type
{
  v4 = [MEMORY[0x277CE1CB8] _typeWithIdentifier:type allowUndeclared:1];
  uniformType = [(SidecarItem *)self uniformType];
  v6 = [uniformType conformsToType:v4];

  return v6;
}

- (id)objectValue
{
  v21 = *MEMORY[0x277D85DE8];
  data = [(SidecarItem *)self data];
  v14 = 0;
  v3 = SidecarOPACKDecode(data, &v14);
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
        domain = [v5 domain];
        code = [v5 code];
        localizedDescription = [v5 localizedDescription];
        *buf = 138543875;
        v16 = domain;
        v17 = 2048;
        v18 = code;
        v19 = 2113;
        v20 = localizedDescription;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v8 = log;
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (SidecarItem)initWithObject:(id)object type:(id)type
{
  v20[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v18 = 0;
  v7 = SidecarOPACKEncode(object, &v18);
  v8 = v18;
  v9 = v8;
  if (!v7 || v8)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CCA2A0];
    localizedDescription = [v8 localizedDescription];
    v19 = *MEMORY[0x277CCA7E8];
    v20[0] = v9;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v10 exceptionWithName:v11 reason:localizedDescription userInfo:v13];
    [v14 raise];
  }

  v15 = [(SidecarItem *)self initWithData:v7 type:typeCopy];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (SidecarItem)initWithData:(id)data type:(id)type
{
  dataCopy = data;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = SidecarItem;
  v9 = [(SidecarItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_type, type);
  }

  return v10;
}

@end