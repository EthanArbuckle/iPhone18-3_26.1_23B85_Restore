@interface SUUIScanResults
- (BOOL)isEqual:(id)equal;
- (SUUIScanResults)initWithCoder:(id)coder;
- (SUUIScanResults)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUUIScanResults

- (SUUIScanResults)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v10 = 0;
  objc_storeStrong(&v10, alternateDescriptor);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = SUUIScanResults;
  v7 = [(SUUIScanResults *)&v9 init];
  selfCopy = v7;
  objc_storeStrong(&selfCopy, v7);
  if (v7)
  {
    objc_storeStrong(&selfCopy->_preferredDescriptor, location[0]);
    objc_storeStrong(&selfCopy->_alternateDescriptor, v10);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v12 = a2;
  zoneCopy = zone;
  v4 = [objc_opt_class() allocWithZone:zone];
  preferredDescriptor = [(SUUIScanResults *)selfCopy preferredDescriptor];
  v7 = [(SUUIDescriptor *)preferredDescriptor copyWithZone:zoneCopy];
  alternateDescriptor = [(SUUIScanResults *)selfCopy alternateDescriptor];
  v5 = [(SUUIDescriptor *)alternateDescriptor copyWithZone:zoneCopy];
  v10 = [v4 initWithPreferredDescriptor:v7 alternateDescriptor:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](alternateDescriptor);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](preferredDescriptor);
  v9 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = location[0];
  preferredDescriptor = [(SUUIScanResults *)selfCopy preferredDescriptor];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x277D82BD8](preferredDescriptor);
  v5 = location[0];
  alternateDescriptor = [(SUUIScanResults *)selfCopy alternateDescriptor];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x277D82BD8](alternateDescriptor);
  objc_storeStrong(location, 0);
}

- (SUUIScanResults)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"preferredDescriptor"];
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"alternateDescriptor"];
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUUIScanResults *)v3 initWithPreferredDescriptor:v7 alternateDescriptor:v6];
  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (selfCopy == location[0])
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
      preferredDescriptor = [(SUUIScanResults *)selfCopy preferredDescriptor];
      v19 = 0;
      v17 = 0;
      v15 = 0;
      if (preferredDescriptor || (v20 = [v21 preferredDescriptor], v19 = 1, v7 = 1, v20))
      {
        preferredDescriptor2 = [(SUUIScanResults *)selfCopy preferredDescriptor];
        v17 = 1;
        preferredDescriptor3 = [v21 preferredDescriptor];
        v15 = 1;
        v7 = [(SUUIDescriptor *)preferredDescriptor2 isEqual:?];
      }

      if (v15)
      {
        MEMORY[0x277D82BD8](preferredDescriptor3);
      }

      if (v17)
      {
        MEMORY[0x277D82BD8](preferredDescriptor2);
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](v20);
      }

      MEMORY[0x277D82BD8](preferredDescriptor);
      alternateDescriptor = [(SUUIScanResults *)selfCopy alternateDescriptor];
      v13 = 0;
      v11 = 0;
      v9 = 0;
      if (alternateDescriptor || (v14 = [v21 alternateDescriptor], v13 = 1, v5 = 1, v14))
      {
        alternateDescriptor2 = [(SUUIScanResults *)selfCopy alternateDescriptor];
        v11 = 1;
        alternateDescriptor3 = [v21 alternateDescriptor];
        v9 = 1;
        v5 = [(SUUIDescriptor *)alternateDescriptor2 isEqual:?];
      }

      if (v9)
      {
        MEMORY[0x277D82BD8](alternateDescriptor3);
      }

      if (v11)
      {
        MEMORY[0x277D82BD8](alternateDescriptor2);
      }

      if (v13)
      {
        MEMORY[0x277D82BD8](v14);
      }

      MEMORY[0x277D82BD8](alternateDescriptor);
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
  preferredDescriptor = [(SUUIScanResults *)self preferredDescriptor];
  v4 = [(SUUIDescriptor *)preferredDescriptor hash];
  MEMORY[0x277D82BD8](preferredDescriptor);
  alternateDescriptor = [(SUUIScanResults *)self alternateDescriptor];
  v6 = [(SUUIDescriptor *)alternateDescriptor hash];
  MEMORY[0x277D82BD8](alternateDescriptor);
  return v4 ^ ((v6 >> 16) | (v6 << 16));
}

@end