@interface SUUIScanResults
- (BOOL)isEqual:(id)a3;
- (SUUIScanResults)initWithCoder:(id)a3;
- (SUUIScanResults)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUUIScanResults

- (SUUIScanResults)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = SUUIScanResults;
  v7 = [(SUUIScanResults *)&v9 init];
  v12 = v7;
  objc_storeStrong(&v12, v7);
  if (v7)
  {
    objc_storeStrong(&v12->_preferredDescriptor, location[0]);
    objc_storeStrong(&v12->_alternateDescriptor, v10);
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v4 = [objc_opt_class() allocWithZone:a3];
  v8 = [(SUUIScanResults *)v13 preferredDescriptor];
  v7 = [(SUUIDescriptor *)v8 copyWithZone:v11];
  v6 = [(SUUIScanResults *)v13 alternateDescriptor];
  v5 = [(SUUIDescriptor *)v6 copyWithZone:v11];
  v10 = [v4 initWithPreferredDescriptor:v7 alternateDescriptor:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(SUUIScanResults *)v8 preferredDescriptor];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x277D82BD8](v4);
  v5 = location[0];
  v6 = [(SUUIScanResults *)v8 alternateDescriptor];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (SUUIScanResults)initWithCoder:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"preferredDescriptor"];
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"alternateDescriptor"];
  v3 = v9;
  v9 = 0;
  v9 = [(SUUIScanResults *)v3 initWithPreferredDescriptor:v7 alternateDescriptor:v6];
  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v24 == location[0])
  {
    v25 = 1;
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = MEMORY[0x277D82BE0](location[0]);
      v8 = [(SUUIScanResults *)v24 preferredDescriptor];
      v19 = 0;
      v17 = 0;
      v15 = 0;
      if (v8 || (v20 = [v21 preferredDescriptor], v19 = 1, v7 = 1, v20))
      {
        v18 = [(SUUIScanResults *)v24 preferredDescriptor];
        v17 = 1;
        v16 = [v21 preferredDescriptor];
        v15 = 1;
        v7 = [(SUUIDescriptor *)v18 isEqual:?];
      }

      if (v15)
      {
        MEMORY[0x277D82BD8](v16);
      }

      if (v17)
      {
        MEMORY[0x277D82BD8](v18);
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](v20);
      }

      MEMORY[0x277D82BD8](v8);
      v6 = [(SUUIScanResults *)v24 alternateDescriptor];
      v13 = 0;
      v11 = 0;
      v9 = 0;
      if (v6 || (v14 = [v21 alternateDescriptor], v13 = 1, v5 = 1, v14))
      {
        v12 = [(SUUIScanResults *)v24 alternateDescriptor];
        v11 = 1;
        v10 = [v21 alternateDescriptor];
        v9 = 1;
        v5 = [(SUUIDescriptor *)v12 isEqual:?];
      }

      if (v9)
      {
        MEMORY[0x277D82BD8](v10);
      }

      if (v11)
      {
        MEMORY[0x277D82BD8](v12);
      }

      if (v13)
      {
        MEMORY[0x277D82BD8](v14);
      }

      MEMORY[0x277D82BD8](v6);
      v4 = 0;
      if (v7)
      {
        v4 = v5 & 1;
      }

      v25 = v4;
      v22 = 1;
      objc_storeStrong(&v21, 0);
    }

    else
    {
      v25 = 0;
      v22 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v25 & 1;
}

- (unint64_t)hash
{
  v3 = [(SUUIScanResults *)self preferredDescriptor];
  v4 = [(SUUIDescriptor *)v3 hash];
  MEMORY[0x277D82BD8](v3);
  v5 = [(SUUIScanResults *)self alternateDescriptor];
  v6 = [(SUUIDescriptor *)v5 hash];
  MEMORY[0x277D82BD8](v5);
  return v4 ^ ((v6 >> 16) | (v6 << 16));
}

@end