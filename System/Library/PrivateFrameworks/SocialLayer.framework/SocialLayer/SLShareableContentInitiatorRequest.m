@interface SLShareableContentInitiatorRequest
- (NSString)description;
- (SLShareableContentInitiatorRequest)initWithBSXPCCoder:(id)a3;
- (SLShareableContentInitiatorRequest)initWithCoder:(id)a3;
- (SLShareableContentInitiatorRequest)initWithFileURL:(id)a3 containerSetupInfo:(id)a4 collaborationMetadata:(id)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLShareableContentInitiatorRequest

- (SLShareableContentInitiatorRequest)initWithFileURL:(id)a3 containerSetupInfo:(id)a4 collaborationMetadata:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SLShareableContentInitiatorRequest;
  v12 = [(SLShareableContentInitiatorRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileURL, a3);
    objc_storeStrong(&v13->_containerSetupInfo, a4);
    objc_storeStrong(&v13->_collaborationMetadata, a5);
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(SLShareableContentInitiatorRequest *)self fileURL];
  [v3 appendFormat:@" fileURL=%@", v4];

  v5 = [(SLShareableContentInitiatorRequest *)self containerSetupInfo];
  [v3 appendFormat:@" containerSetupInfo=%@", v5];

  v6 = [(SLShareableContentInitiatorRequest *)self collaborationMetadata];
  [v3 appendFormat:@" collaborationMetadata=%@", v6];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (SLShareableContentInitiatorRequest)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_fileURL);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  CKContainerSetupInfoClass_0 = getCKContainerSetupInfoClass_0();
  v9 = NSStringFromSelector(sel_containerSetupInfo);
  v10 = [v4 decodeObjectOfClass:CKContainerSetupInfoClass_0 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_collaborationMetadata);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = [(SLShareableContentInitiatorRequest *)self initWithFileURL:v7 containerSetupInfo:v10 collaborationMetadata:v13];
  return v14;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLShareableContentInitiatorRequest *)self fileURL];
  v6 = NSStringFromSelector(sel_fileURL);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SLShareableContentInitiatorRequest *)self containerSetupInfo];
  v8 = NSStringFromSelector(sel_containerSetupInfo);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(SLShareableContentInitiatorRequest *)self collaborationMetadata];
  v9 = NSStringFromSelector(sel_collaborationMetadata);
  [v4 encodeObject:v10 forKey:v9];
}

- (SLShareableContentInitiatorRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_fileURL);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  CKContainerSetupInfoClass_0 = getCKContainerSetupInfoClass_0();
  v9 = NSStringFromSelector(sel_containerSetupInfo);
  v10 = [v4 decodeObjectOfClass:CKContainerSetupInfoClass_0 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_collaborationMetadata);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = [(SLShareableContentInitiatorRequest *)self initWithFileURL:v7 containerSetupInfo:v10 collaborationMetadata:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLShareableContentInitiatorRequest *)self fileURL];
  v6 = NSStringFromSelector(sel_fileURL);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SLShareableContentInitiatorRequest *)self containerSetupInfo];
  v8 = NSStringFromSelector(sel_containerSetupInfo);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(SLShareableContentInitiatorRequest *)self collaborationMetadata];
  v9 = NSStringFromSelector(sel_collaborationMetadata);
  [v4 encodeObject:v10 forKey:v9];
}

@end