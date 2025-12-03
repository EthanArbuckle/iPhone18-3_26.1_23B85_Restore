@interface SUUIMobileDescriptor
- (BOOL)isDownloadable;
- (BOOL)isEqual:(id)equal;
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
- (SUUIMobileDescriptor)initWithCoder:(id)coder;
- (SUUIMobileDescriptor)initWithDescriptor:(id)descriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)audienceType;
- (int64_t)updateType;
- (int64_t)upgradeVersionType;
- (unint64_t)downloadSize;
- (unint64_t)hash;
- (unint64_t)installationSize;
- (unint64_t)preparationSize;
- (unint64_t)totalRequiredFreeSpace;
- (void)encodeWithCoder:(id)coder;
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

- (SUUIMobileDescriptor)initWithDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = SUUIMobileDescriptor;
  v10 = [(SUUIMobileDescriptor *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(&selfCopy->_underlyingDescriptor, location[0]);
    v8 = [SUUIMobileDocumentation alloc];
    documentation = [location[0] documentation];
    v4 = [(SUUIMobileDocumentation *)v8 initWithDocumentation:?];
    mobileDocumentation = selfCopy->_mobileDocumentation;
    selfCopy->_mobileDocumentation = v4;
    MEMORY[0x277D82BD8](mobileDocumentation);
    MEMORY[0x277D82BD8](documentation);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (NSString)updateName
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  humanReadableUpdateName = [(SUDescriptor *)underlyingDescriptor humanReadableUpdateName];
  MEMORY[0x277D82BD8](underlyingDescriptor);

  return humanReadableUpdateName;
}

- (NSString)productSystemName
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  productSystemName = [(SUDescriptor *)underlyingDescriptor productSystemName];
  MEMORY[0x277D82BD8](underlyingDescriptor);

  return productSystemName;
}

- (NSString)productVersion
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  productVersion = [(SUDescriptor *)underlyingDescriptor productVersion];
  MEMORY[0x277D82BD8](underlyingDescriptor);

  return productVersion;
}

- (NSString)productBuildVersion
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  productBuildVersion = [(SUDescriptor *)underlyingDescriptor productBuildVersion];
  MEMORY[0x277D82BD8](underlyingDescriptor);

  return productBuildVersion;
}

- (NSString)publisher
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  publisher = [(SUDescriptor *)underlyingDescriptor publisher];
  MEMORY[0x277D82BD8](underlyingDescriptor);

  return publisher;
}

- (int64_t)updateType
{
  v3 = MEMORY[0x277D64B88];
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v5 = [v3 definitionFromSUType:{-[SUDescriptor updateType](underlyingDescriptor, "updateType")}];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return v5;
}

- (unint64_t)totalRequiredFreeSpace
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  totalRequiredFreeSpace = [(SUDescriptor *)underlyingDescriptor totalRequiredFreeSpace];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return totalRequiredFreeSpace;
}

- (unint64_t)downloadSize
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  downloadSize = [(SUDescriptor *)underlyingDescriptor downloadSize];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return downloadSize;
}

- (unint64_t)preparationSize
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  preparationSize = [(SUDescriptor *)underlyingDescriptor preparationSize];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return preparationSize;
}

- (unint64_t)installationSize
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  installationSize = [(SUDescriptor *)underlyingDescriptor installationSize];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return installationSize;
}

- (BOOL)isDownloadable
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  isDownloadable = [(SUDescriptor *)underlyingDescriptor isDownloadable];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return isDownloadable;
}

- (NSDate)releaseDate
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  releaseDate = [(SUDescriptor *)underlyingDescriptor releaseDate];
  MEMORY[0x277D82BD8](underlyingDescriptor);

  return releaseDate;
}

- (int64_t)audienceType
{
  v3 = MEMORY[0x277D64B40];
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v5 = [v3 definitionFromSUType:{-[SUDescriptor audienceType](underlyingDescriptor, "audienceType")}];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return v5;
}

- (int64_t)upgradeVersionType
{
  v3 = MEMORY[0x277D64B90];
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v5 = [v3 definitionFromSUType:{-[SUDescriptor upgradeType](underlyingDescriptor, "upgradeType")}];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return v5;
}

- (BOOL)promoteAlternateUpdate
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  promoteAlternateUpdate = [(SUDescriptor *)underlyingDescriptor promoteAlternateUpdate];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return promoteAlternateUpdate;
}

- (NSString)productVersionExtra
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  productVersionExtra = [(SUDescriptor *)underlyingDescriptor productVersionExtra];
  MEMORY[0x277D82BD8](underlyingDescriptor);

  return productVersionExtra;
}

- (BOOL)isSplatUpdate
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  isSplatOnly = [(SUDescriptor *)underlyingDescriptor isSplatOnly];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return isSplatOnly;
}

- (BOOL)isSplomboUpdate
{
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  isSplombo = [(SUDescriptor *)underlyingDescriptor isSplombo];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return isSplombo;
}

- (SUUIMobileDescriptor)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
  if (v5)
  {
    v3 = selfCopy;
    selfCopy = 0;
    selfCopy = [v3 initWithDescriptor:v5];
    v8 = MEMORY[0x277D82BE0](selfCopy);
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = location[0];
  underlyingDescriptor = [(SUUIMobileDescriptor *)selfCopy underlyingDescriptor];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v16 = a2;
  zoneCopy = zone;
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v14 = [(SUDescriptor *)underlyingDescriptor copyWithZone:zoneCopy];
  MEMORY[0x277D82BD8](underlyingDescriptor);
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

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (selfCopy == location[0])
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
      underlyingDescriptor = [(SUUIMobileDescriptor *)selfCopy underlyingDescriptor];
      underlyingDescriptor2 = [v6 underlyingDescriptor];
      v10 = [(SUDescriptor *)underlyingDescriptor isEqual:?]& 1;
      MEMORY[0x277D82BD8](underlyingDescriptor2);
      MEMORY[0x277D82BD8](underlyingDescriptor);
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
  underlyingDescriptor = [(SUUIMobileDescriptor *)self underlyingDescriptor];
  v4 = [(SUDescriptor *)underlyingDescriptor hash];
  MEMORY[0x277D82BD8](underlyingDescriptor);
  return v4;
}

- (NSString)description
{
  v43[6] = *MEMORY[0x277D85DE8];
  v31 = MEMORY[0x277D64B68];
  v42[0] = @"updateName";
  updateName = [(SUUIMobileDescriptor *)self updateName];
  location = 0;
  objc_storeStrong(&location, updateName);
  v35 = 0;
  if (location)
  {
    v2 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v35 = 1;
    v2 = MEMORY[0x277D82BE0](null);
  }

  v38 = v2;
  if (v35)
  {
    MEMORY[0x277D82BD8](null);
  }

  objc_storeStrong(&location, 0);
  v11 = v38;
  v3 = v38;
  v30 = v11;
  v43[0] = v30;
  v42[1] = @"documentation";
  v12 = MEMORY[0x277CCACA8];
  documentation = [(SUUIMobileDescriptor *)self documentation];
  v28 = [v12 stringWithFormat:@"%p", documentation];
  v43[1] = v28;
  v42[2] = @"hasReadMe";
  documentation2 = [(SUUIMobileDescriptor *)self documentation];
  releaseNotes = [(SUUIDocumentation *)documentation2 releaseNotes];
  v41 = releaseNotes != 0;
  if (releaseNotes)
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
  documentation3 = [(SUUIMobileDescriptor *)self documentation];
  releaseNotesSummary = [(SUUIDocumentation *)documentation3 releaseNotesSummary];
  v40 = releaseNotesSummary != 0;
  if (releaseNotesSummary)
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
  documentation4 = [(SUUIMobileDescriptor *)self documentation];
  updateIcon = [(SUUIDocumentation *)documentation4 updateIcon];
  v39 = updateIcon != 0;
  if (updateIcon)
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
  MEMORY[0x277D82BD8](updateIcon);
  MEMORY[0x277D82BD8](documentation4);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](releaseNotesSummary);
  MEMORY[0x277D82BD8](documentation3);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](releaseNotes);
  MEMORY[0x277D82BD8](documentation2);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](documentation);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](updateName);
  *MEMORY[0x277D85DE8];

  return v17;
}

@end