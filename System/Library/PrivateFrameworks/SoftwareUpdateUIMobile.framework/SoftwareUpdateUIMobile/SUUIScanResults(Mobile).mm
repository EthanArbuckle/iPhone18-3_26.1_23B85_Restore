@interface SUUIScanResults(Mobile)
- (id)toSUScanResults;
- (uint64_t)initFromSUScanResults:()Mobile;
@end

@implementation SUUIScanResults(Mobile)

- (uint64_t)initFromSUScanResults:()Mobile
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v9 = selfCopy;
  preferredDescriptor = [location[0] preferredDescriptor];
  v17 = 0;
  v15 = 0;
  if (preferredDescriptor)
  {
    v7 = [SUUIMobileDescriptor alloc];
    preferredDescriptor2 = [location[0] preferredDescriptor];
    v17 = 1;
    v16 = [(SUUIMobileDescriptor *)v7 initWithDescriptor:?];
    v15 = 1;
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  alternateDescriptor = [location[0] alternateDescriptor];
  v13 = 0;
  v11 = 0;
  if (alternateDescriptor)
  {
    v4 = [SUUIMobileDescriptor alloc];
    alternateDescriptor2 = [location[0] alternateDescriptor];
    v13 = 1;
    v12 = [(SUUIMobileDescriptor *)v4 initWithDescriptor:?];
    v11 = 1;
    v5 = v12;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = 0;
  selfCopy = [v9 initWithPreferredDescriptor:v8 alternateDescriptor:v5];
  v21 = MEMORY[0x277D82BE0](selfCopy);
  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](alternateDescriptor2);
  }

  MEMORY[0x277D82BD8](alternateDescriptor);
  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](preferredDescriptor2);
  }

  MEMORY[0x277D82BD8](preferredDescriptor);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v21;
}

- (id)toSUScanResults
{
  selfCopy = self;
  v12[1] = a2;
  preferredDescriptor = [self preferredDescriptor];
  v10 = MEMORY[0x277D82BE0](preferredDescriptor);
  objc_storeStrong(&preferredDescriptor, 0);
  v12[0] = v10;
  alternateDescriptor = [selfCopy alternateDescriptor];
  v7 = MEMORY[0x277D82BE0](alternateDescriptor);
  objc_storeStrong(&alternateDescriptor, 0);
  v9 = v7;
  v3 = objc_alloc(MEMORY[0x277D64900]);
  underlyingDescriptor = [v12[0] underlyingDescriptor];
  underlyingDescriptor2 = [v9 underlyingDescriptor];
  v6 = [v3 initWithPreferredDescriptor:underlyingDescriptor alternateDescriptor:?];
  MEMORY[0x277D82BD8](underlyingDescriptor2);
  MEMORY[0x277D82BD8](underlyingDescriptor);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v12, 0);

  return v6;
}

@end