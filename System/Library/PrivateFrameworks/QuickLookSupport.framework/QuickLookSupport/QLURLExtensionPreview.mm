@interface QLURLExtensionPreview
- (QLURLExtensionPreview)initWithCoder:(id)a3;
- (QLURLExtensionPreview)initWithURL:(id)a3 contentType:(id)a4;
- (QLURLExtensionPreview)initWithURLHandler:(id)a3 contentType:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateForExternalResourceAccessWithExtension:(id)a3 context:(id)a4;
@end

@implementation QLURLExtensionPreview

- (QLURLExtensionPreview)initWithURLHandler:(id)a3 contentType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = QLURLExtensionPreview;
  v8 = [(QLExtensionPreview *)&v11 initWithDescription:0];
  v9 = v8;
  if (v8)
  {
    [(QLURLExtensionPreview *)v8 setUrlHandler:v6];
    objc_storeStrong(&v9->_contentType, a4);
  }

  return v9;
}

- (QLURLExtensionPreview)initWithURL:(id)a3 contentType:(id)a4
{
  v6 = MEMORY[0x277CDAB18];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v9 initWithURL:v8 sandboxType:*MEMORY[0x277D861B8]];

  v11 = [(QLURLExtensionPreview *)self initWithURLHandler:v10 contentType:v7];
  return v11;
}

- (void)updateForExternalResourceAccessWithExtension:(id)a3 context:(id)a4
{
  v5 = [a4 _auxiliaryConnection];
  v6 = [v5 valueForEntitlement:@"com.apple.private.quickLook.externalResources"];
  v7 = [v6 BOOLValue];

  v8 = [(QLURLExtensionPreview *)self urlHandler];
  [v8 setNeedsAccessToExternalResources:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = QLURLExtensionPreview;
  v4 = a3;
  [(QLExtensionPreview *)&v7 encodeWithCoder:v4];
  v5 = [(QLURLExtensionPreview *)self urlHandler:v7.receiver];
  [v4 encodeObject:v5 forKey:@"urlHandler"];

  v6 = [(QLURLExtensionPreview *)self contentType];
  [v4 encodeObject:v6 forKey:@"contentType"];
}

- (QLURLExtensionPreview)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urlHandler"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];

  v7 = [(QLURLExtensionPreview *)self initWithURLHandler:v5 contentType:v6];
  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(QLURLExtensionPreview *)self urlHandler];
  v6 = [v5 fileURL];
  v7 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v6];

  return v7;
}

@end