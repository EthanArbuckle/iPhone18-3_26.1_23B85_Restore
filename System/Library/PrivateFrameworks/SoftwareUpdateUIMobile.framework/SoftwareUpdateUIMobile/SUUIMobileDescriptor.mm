@interface SUUIMobileDescriptor
- (BOOL)isDownloadable;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSplatUpdate;
- (BOOL)isSplomboUpdate;
- (BOOL)promoteAlternateUpdate;
- (NSDate)releaseDate;
- (NSString)description;
- (NSString)productBuildVersion;
- (NSString)productSystemName;
- (NSString)productVersion;
- (NSString)productVersionExtra;
- (NSString)publisher;
- (NSString)updateName;
- (SUUIMobileDescriptor)init;
- (SUUIMobileDescriptor)initWithCoder:(id)a3;
- (SUUIMobileDescriptor)initWithDescriptor:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)audienceType;
- (int64_t)updateType;
- (int64_t)upgradeVersionType;
- (unint64_t)downloadSize;
- (unint64_t)hash;
- (unint64_t)installationSize;
- (unint64_t)preparationSize;
- (unint64_t)totalRequiredFreeSpace;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUUIMobileDescriptor

- (SUUIMobileDescriptor)init
{
  v5 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v3 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v6 = [v3 stringWithFormat:@"%@ is unavailable", v7];
  v8 = [v5 exceptionWithName:v4 reason:? userInfo:?];
  v2 = v8;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_exception_throw(v8);
}

- (SUUIMobileDescriptor)initWithDescriptor:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = SUUIMobileDescriptor;
  v10 = [(SUUIMobileDescriptor *)&v11 init];
  v13 = v10;
  objc_storeStrong(&v13, v10);
  if (v10)
  {
    objc_storeStrong(&v13->_underlyingDescriptor, location[0]);
    v8 = [SUUIMobileDocumentation alloc];
    v9 = [location[0] documentation];
    v4 = [(SUUIMobileDocumentation *)v8 initWithDocumentation:?];
    mobileDocumentation = v13->_mobileDocumentation;
    v13->_mobileDocumentation = v4;
    MEMORY[0x277D82BD8](mobileDocumentation);
    MEMORY[0x277D82BD8](v9);
  }

  v7 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v7;
}

- (NSString)updateName
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 humanReadableUpdateName];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (NSString)productSystemName
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 productSystemName];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (NSString)productVersion
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 productVersion];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (NSString)productBuildVersion
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 productBuildVersion];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (NSString)publisher
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 publisher];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (int64_t)updateType
{
  v3 = MEMORY[0x277D64B88];
  v4 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v5 = [v3 definitionFromSUType:{-[SUDescriptor updateType](v4, "updateType")}];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (unint64_t)totalRequiredFreeSpace
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 totalRequiredFreeSpace];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (unint64_t)downloadSize
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 downloadSize];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (unint64_t)preparationSize
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 preparationSize];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (unint64_t)installationSize
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 installationSize];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)isDownloadable
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 isDownloadable];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (NSDate)releaseDate
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 releaseDate];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (int64_t)audienceType
{
  v3 = MEMORY[0x277D64B40];
  v4 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v5 = [v3 definitionFromSUType:{-[SUDescriptor audienceType](v4, "audienceType")}];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (int64_t)upgradeVersionType
{
  v3 = MEMORY[0x277D64B90];
  v4 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v5 = [v3 definitionFromSUType:{-[SUDescriptor upgradeType](v4, "upgradeType")}];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (BOOL)promoteAlternateUpdate
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 promoteAlternateUpdate];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (NSString)productVersionExtra
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 productVersionExtra];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (BOOL)isSplatUpdate
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 isSplatOnly];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)isSplomboUpdate
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 isSplombo];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (SUUIMobileDescriptor)initWithCoder:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
  if (v5)
  {
    v3 = v7;
    v7 = 0;
    v7 = [v3 initWithDescriptor:v5];
    v8 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(SUUIMobileDescriptor *)v6 underlyingDescriptor];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v13 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v14 = [(SUDescriptor *)v13 copyWithZone:v15];
  MEMORY[0x277D82BD8](v13);
  if (!v14)
  {
    v9 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE658];
    v7 = MEMORY[0x277CCACA8];
    v3 = objc_opt_class();
    v11 = NSStringFromClass(v3);
    v10 = [v7 stringWithFormat:@"Could not create a copy of %@: The underlying descriptor is corrupted.", v11];
    v12 = [v9 exceptionWithName:v8 reason:? userInfo:?];
    v4 = v12;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_exception_throw(v12);
  }

  v6 = [[SUUIMobileDescriptor allocWithZone:?], "initWithDescriptor:", v14];
  objc_storeStrong(&v14, 0);
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v9 == location[0])
  {
    v10 = 1;
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = MEMORY[0x277D82BE0](location[0]);
      v5 = [(SUUIMobileDescriptor *)v9 underlyingDescriptor];
      v4 = [v6 underlyingDescriptor];
      v10 = [(SUDescriptor *)v5 isEqual:?]& 1;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      v7 = 1;
      objc_storeStrong(&v6, 0);
    }

    else
    {
      v10 = 0;
      v7 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (unint64_t)hash
{
  v3 = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)v3 hash];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (NSString)description
{
  v43[6] = *MEMORY[0x277D85DE8];
  v31 = MEMORY[0x277D64B68];
  v42[0] = @"updateName";
  v33 = [(SUUIMobileDescriptor *)self updateName];
  location = 0;
  objc_storeStrong(&location, v33);
  v35 = 0;
  if (location)
  {
    v2 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    v36 = [MEMORY[0x277CBEB68] null];
    v35 = 1;
    v2 = MEMORY[0x277D82BE0](v36);
  }

  v38 = v2;
  if (v35)
  {
    MEMORY[0x277D82BD8](v36);
  }

  objc_storeStrong(&location, 0);
  v11 = v38;
  v3 = v38;
  v30 = v11;
  v43[0] = v30;
  v42[1] = @"documentation";
  v12 = MEMORY[0x277CCACA8];
  v29 = [(SUUIMobileDescriptor *)self documentation];
  v28 = [v12 stringWithFormat:@"%p", v29];
  v43[1] = v28;
  v42[2] = @"hasReadMe";
  v27 = [(SUUIMobileDescriptor *)self documentation];
  v26 = [(SUUIDocumentation *)v27 releaseNotes];
  v41 = v26 != 0;
  if (v26)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v13 = v4;
  v5 = v4;
  v25 = v13;
  v43[2] = v25;
  v42[3] = @"hasReadMeSummary";
  v24 = [(SUUIMobileDescriptor *)self documentation];
  v23 = [(SUUIDocumentation *)v24 releaseNotesSummary];
  v40 = v23 != 0;
  if (v23)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v14 = v6;
  v7 = v6;
  v22 = v14;
  v43[3] = v22;
  v42[4] = @"hasIcon";
  v21 = [(SUUIMobileDescriptor *)self documentation];
  v20 = [(SUUIDocumentation *)v21 updateIcon];
  v39 = v20 != 0;
  if (v20)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v15 = v8;
  v9 = v8;
  v19 = v15;
  v43[4] = v19;
  v42[5] = @"hash";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIMobileDescriptor hash](self, "hash")}];
  v43[5] = v18;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:6];
  v17 = [v31 descriptionForObject:self properties:?];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v33);
  *MEMORY[0x277D85DE8];

  return v17;
}

@end