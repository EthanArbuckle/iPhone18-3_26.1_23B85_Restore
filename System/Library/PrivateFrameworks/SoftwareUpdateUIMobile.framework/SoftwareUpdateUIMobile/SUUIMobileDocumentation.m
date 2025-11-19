@interface SUUIMobileDocumentation
- (BOOL)isEqual:(id)a3;
- (NSData)licenseAgreement;
- (NSData)releaseNotes;
- (NSData)releaseNotesSummary;
- (NSData)updateIcon;
- (SUUIMobileDocumentation)init;
- (SUUIMobileDocumentation)initWithCoder:(id)a3;
- (SUUIMobileDocumentation)initWithDocumentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUUIMobileDocumentation

- (SUUIMobileDocumentation)initWithDocumentation:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = SUUIMobileDocumentation;
  v8 = [(SUUIMobileDocumentation *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingDocumentation, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (NSData)updateIcon
{
  image[2] = self;
  image[1] = a2;
  v4 = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  image[0] = [(SUDocumentation *)v4 iconImage];
  MEMORY[0x277D82BD8](v4);
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
  v3 = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  v4 = [(SUDocumentation *)v3 releaseNotesSummary];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (NSData)releaseNotes
{
  v3 = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  v4 = [(SUDocumentation *)v3 releaseNotes];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (NSData)licenseAgreement
{
  v3 = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  v4 = [(SUDocumentation *)v3 licenseAgreement];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v5 = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  v6 = [(SUDocumentation *)v5 copyWithZone:v7];
  MEMORY[0x277D82BD8](v5);
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Could not create a copy of %@: The underlying documentation is corrupted.", v9}];
  }

  v4 = [[SUUIMobileDocumentation alloc] initWithDocumentation:v6];
  objc_storeStrong(&v6, 0);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(SUUIMobileDocumentation *)v6 underlyingDocumentation];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x277D82BD8](v4);
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

- (SUUIMobileDocumentation)initWithCoder:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"documentation"];
  if (v5)
  {
    v3 = v7;
    v7 = 0;
    v7 = [v3 initWithDocumentation:v5];
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
      v5 = [(SUUIMobileDocumentation *)v9 underlyingDocumentation];
      v4 = [v6 underlyingDocumentation];
      v10 = [(SUDocumentation *)v5 isEqual:?]& 1;
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
  v3 = [(SUUIMobileDocumentation *)self underlyingDocumentation];
  v4 = [(SUDocumentation *)v3 hash];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

@end