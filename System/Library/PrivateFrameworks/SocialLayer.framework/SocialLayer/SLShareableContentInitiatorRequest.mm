@interface SLShareableContentInitiatorRequest
- (NSString)description;
- (SLShareableContentInitiatorRequest)initWithBSXPCCoder:(id)coder;
- (SLShareableContentInitiatorRequest)initWithCoder:(id)coder;
- (SLShareableContentInitiatorRequest)initWithFileURL:(id)l containerSetupInfo:(id)info collaborationMetadata:(id)metadata;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLShareableContentInitiatorRequest

- (SLShareableContentInitiatorRequest)initWithFileURL:(id)l containerSetupInfo:(id)info collaborationMetadata:(id)metadata
{
  lCopy = l;
  infoCopy = info;
  metadataCopy = metadata;
  v15.receiver = self;
  v15.super_class = SLShareableContentInitiatorRequest;
  v12 = [(SLShareableContentInitiatorRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileURL, l);
    objc_storeStrong(&v13->_containerSetupInfo, info);
    objc_storeStrong(&v13->_collaborationMetadata, metadata);
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  fileURL = [(SLShareableContentInitiatorRequest *)self fileURL];
  [v3 appendFormat:@" fileURL=%@", fileURL];

  containerSetupInfo = [(SLShareableContentInitiatorRequest *)self containerSetupInfo];
  [v3 appendFormat:@" containerSetupInfo=%@", containerSetupInfo];

  collaborationMetadata = [(SLShareableContentInitiatorRequest *)self collaborationMetadata];
  [v3 appendFormat:@" collaborationMetadata=%@", collaborationMetadata];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (SLShareableContentInitiatorRequest)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_fileURL);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  CKContainerSetupInfoClass_0 = getCKContainerSetupInfoClass_0();
  v9 = NSStringFromSelector(sel_containerSetupInfo);
  v10 = [coderCopy decodeObjectOfClass:CKContainerSetupInfoClass_0 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_collaborationMetadata);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = [(SLShareableContentInitiatorRequest *)self initWithFileURL:v7 containerSetupInfo:v10 collaborationMetadata:v13];
  return v14;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  fileURL = [(SLShareableContentInitiatorRequest *)self fileURL];
  v6 = NSStringFromSelector(sel_fileURL);
  [coderCopy encodeObject:fileURL forKey:v6];

  containerSetupInfo = [(SLShareableContentInitiatorRequest *)self containerSetupInfo];
  v8 = NSStringFromSelector(sel_containerSetupInfo);
  [coderCopy encodeObject:containerSetupInfo forKey:v8];

  collaborationMetadata = [(SLShareableContentInitiatorRequest *)self collaborationMetadata];
  v9 = NSStringFromSelector(sel_collaborationMetadata);
  [coderCopy encodeObject:collaborationMetadata forKey:v9];
}

- (SLShareableContentInitiatorRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_fileURL);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  CKContainerSetupInfoClass_0 = getCKContainerSetupInfoClass_0();
  v9 = NSStringFromSelector(sel_containerSetupInfo);
  v10 = [coderCopy decodeObjectOfClass:CKContainerSetupInfoClass_0 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_collaborationMetadata);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = [(SLShareableContentInitiatorRequest *)self initWithFileURL:v7 containerSetupInfo:v10 collaborationMetadata:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fileURL = [(SLShareableContentInitiatorRequest *)self fileURL];
  v6 = NSStringFromSelector(sel_fileURL);
  [coderCopy encodeObject:fileURL forKey:v6];

  containerSetupInfo = [(SLShareableContentInitiatorRequest *)self containerSetupInfo];
  v8 = NSStringFromSelector(sel_containerSetupInfo);
  [coderCopy encodeObject:containerSetupInfo forKey:v8];

  collaborationMetadata = [(SLShareableContentInitiatorRequest *)self collaborationMetadata];
  v9 = NSStringFromSelector(sel_collaborationMetadata);
  [coderCopy encodeObject:collaborationMetadata forKey:v9];
}

@end