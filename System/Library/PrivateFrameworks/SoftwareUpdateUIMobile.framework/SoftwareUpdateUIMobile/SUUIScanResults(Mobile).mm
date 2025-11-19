@interface SUUIScanResults(Mobile)
- (id)toSUScanResults;
- (uint64_t)initFromSUScanResults:()Mobile;
@end

@implementation SUUIScanResults(Mobile)

- (uint64_t)initFromSUScanResults:()Mobile
{
  v20 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v9 = v20;
  v10 = [location[0] preferredDescriptor];
  v17 = 0;
  v15 = 0;
  if (v10)
  {
    v7 = [SUUIMobileDescriptor alloc];
    v18 = [location[0] preferredDescriptor];
    v17 = 1;
    v16 = [(SUUIMobileDescriptor *)v7 initWithDescriptor:?];
    v15 = 1;
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  v6 = [location[0] alternateDescriptor];
  v13 = 0;
  v11 = 0;
  if (v6)
  {
    v4 = [SUUIMobileDescriptor alloc];
    v14 = [location[0] alternateDescriptor];
    v13 = 1;
    v12 = [(SUUIMobileDescriptor *)v4 initWithDescriptor:?];
    v11 = 1;
    v5 = v12;
  }

  else
  {
    v5 = 0;
  }

  v20 = 0;
  v20 = [v9 initWithPreferredDescriptor:v8 alternateDescriptor:v5];
  v21 = MEMORY[0x277D82BE0](v20);
  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BD8](v6);
  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v21;
}

- (id)toSUScanResults
{
  v13 = a1;
  v12[1] = a2;
  v11 = [a1 preferredDescriptor];
  v10 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  v12[0] = v10;
  v8 = [v13 alternateDescriptor];
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  v9 = v7;
  v3 = objc_alloc(MEMORY[0x277D64900]);
  v5 = [v12[0] underlyingDescriptor];
  v4 = [v9 underlyingDescriptor];
  v6 = [v3 initWithPreferredDescriptor:v5 alternateDescriptor:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v12, 0);

  return v6;
}

@end