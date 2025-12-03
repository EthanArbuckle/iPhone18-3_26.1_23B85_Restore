@interface QLURLExtensionPreview
- (QLURLExtensionPreview)initWithCoder:(id)coder;
- (QLURLExtensionPreview)initWithURL:(id)l contentType:(id)type;
- (QLURLExtensionPreview)initWithURLHandler:(id)handler contentType:(id)type;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateForExternalResourceAccessWithExtension:(id)extension context:(id)context;
@end

@implementation QLURLExtensionPreview

- (QLURLExtensionPreview)initWithURLHandler:(id)handler contentType:(id)type
{
  handlerCopy = handler;
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = QLURLExtensionPreview;
  v8 = [(QLExtensionPreview *)&v11 initWithDescription:0];
  v9 = v8;
  if (v8)
  {
    [(QLURLExtensionPreview *)v8 setUrlHandler:handlerCopy];
    objc_storeStrong(&v9->_contentType, type);
  }

  return v9;
}

- (QLURLExtensionPreview)initWithURL:(id)l contentType:(id)type
{
  v6 = MEMORY[0x277CDAB18];
  typeCopy = type;
  lCopy = l;
  v9 = [v6 alloc];
  v10 = [v9 initWithURL:lCopy sandboxType:*MEMORY[0x277D861B8]];

  v11 = [(QLURLExtensionPreview *)self initWithURLHandler:v10 contentType:typeCopy];
  return v11;
}

- (void)updateForExternalResourceAccessWithExtension:(id)extension context:(id)context
{
  _auxiliaryConnection = [context _auxiliaryConnection];
  v6 = [_auxiliaryConnection valueForEntitlement:@"com.apple.private.quickLook.externalResources"];
  bOOLValue = [v6 BOOLValue];

  urlHandler = [(QLURLExtensionPreview *)self urlHandler];
  [urlHandler setNeedsAccessToExternalResources:bOOLValue];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = QLURLExtensionPreview;
  coderCopy = coder;
  [(QLExtensionPreview *)&v7 encodeWithCoder:coderCopy];
  v5 = [(QLURLExtensionPreview *)self urlHandler:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"urlHandler"];

  contentType = [(QLURLExtensionPreview *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"contentType"];
}

- (QLURLExtensionPreview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlHandler"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];

  v7 = [(QLURLExtensionPreview *)self initWithURLHandler:v5 contentType:v6];
  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  urlHandler = [(QLURLExtensionPreview *)self urlHandler];
  fileURL = [urlHandler fileURL];
  v7 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, fileURL];

  return v7;
}

@end