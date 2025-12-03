@interface SUUIMobileDocumentation
- (BOOL)isEqual:(id)equal;
- (NSData)licenseAgreement;
- (NSData)releaseNotes;
- (NSData)releaseNotesSummary;
- (NSData)updateIcon;
- (SUUIMobileDocumentation)init;
- (SUUIMobileDocumentation)initWithCoder:(id)coder;
- (SUUIMobileDocumentation)initWithDocumentation:(id)documentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUUIMobileDocumentation

- (SUUIMobileDocumentation)initWithDocumentation:(id)documentation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, documentation);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = SUUIMobileDocumentation;
  selfCopy = [(SUUIMobileDocumentation *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_underlyingDocumentation, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (NSData)updateIcon
{
  image[2] = self;
  image[1] = a2;
  underlyingDocumentation = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  image[0] = [(SUDocumentation *)underlyingDocumentation iconImage];
  MEMORY[0x277D82BD8](underlyingDocumentation);
  if (image[0])
  {
    v6 = UIImagePNGRepresentation(image[0]);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(image, 0);
  v2 = v6;

  return v2;
}

- (NSData)releaseNotesSummary
{
  underlyingDocumentation = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  releaseNotesSummary = [(SUDocumentation *)underlyingDocumentation releaseNotesSummary];
  MEMORY[0x277D82BD8](underlyingDocumentation);

  return releaseNotesSummary;
}

- (NSData)releaseNotes
{
  underlyingDocumentation = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  releaseNotes = [(SUDocumentation *)underlyingDocumentation releaseNotes];
  MEMORY[0x277D82BD8](underlyingDocumentation);

  return releaseNotes;
}

- (NSData)licenseAgreement
{
  underlyingDocumentation = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  licenseAgreement = [(SUDocumentation *)underlyingDocumentation licenseAgreement];
  MEMORY[0x277D82BD8](underlyingDocumentation);

  return licenseAgreement;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v8 = a2;
  zoneCopy = zone;
  underlyingDocumentation = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  v6 = [(SUDocumentation *)underlyingDocumentation copyWithZone:zoneCopy];
  MEMORY[0x277D82BD8](underlyingDocumentation);
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Could not create a copy of %@: The underlying documentation is corrupted.", selfCopy}];
  }

  v4 = [[SUUIMobileDocumentation alloc] initWithDocumentation:v6];
  objc_storeStrong(&v6, 0);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = location[0];
  underlyingDocumentation = [(SUUIMobileDocumentation *)selfCopy underlyingDocumentation];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x277D82BD8](underlyingDocumentation);
  objc_storeStrong(location, 0);
}

- (SUUIMobileDocumentation)init
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

- (SUUIMobileDocumentation)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"documentation"];
  if (v5)
  {
    v3 = selfCopy;
    selfCopy = 0;
    selfCopy = [v3 initWithDocumentation:v5];
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
      underlyingDocumentation = [(SUUIMobileDocumentation *)selfCopy underlyingDocumentation];
      underlyingDocumentation2 = [v6 underlyingDocumentation];
      v10 = [(SUDocumentation *)underlyingDocumentation isEqual:?]& 1;
      MEMORY[0x277D82BD8](underlyingDocumentation2);
      MEMORY[0x277D82BD8](underlyingDocumentation);
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
  underlyingDocumentation = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  v4 = [(SUDocumentation *)underlyingDocumentation hash];
  MEMORY[0x277D82BD8](underlyingDocumentation);
  return v4;
}

@end