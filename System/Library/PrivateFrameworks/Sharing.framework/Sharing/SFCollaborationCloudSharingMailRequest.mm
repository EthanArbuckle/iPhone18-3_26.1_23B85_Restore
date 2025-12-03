@interface SFCollaborationCloudSharingMailRequest
- (SFCollaborationCloudSharingMailRequest)initWithCloudSharingRequest:(id)request result:(id)result;
- (SFCollaborationCloudSharingMailRequest)initWithCoder:(id)coder;
- (SFCollaborationCloudSharingMailRequest)initWithCollaborationItemIdentifier:(id)identifier options:(id)options fileOrFolderURL:(id)l share:(id)share setupInfo:(id)info sharingURL:(id)rL appName:(id)name appIconData:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCollaborationCloudSharingMailRequest

- (SFCollaborationCloudSharingMailRequest)initWithCollaborationItemIdentifier:(id)identifier options:(id)options fileOrFolderURL:(id)l share:(id)share setupInfo:(id)info sharingURL:(id)rL appName:(id)name appIconData:(id)self0
{
  identifierCopy = identifier;
  optionsCopy = options;
  lCopy = l;
  shareCopy = share;
  infoCopy = info;
  rLCopy = rL;
  nameCopy = name;
  dataCopy = data;
  v33.receiver = self;
  v33.super_class = SFCollaborationCloudSharingMailRequest;
  v20 = optionsCopy;
  v21 = [(SFCollaborationCloudSharingMailRequest *)&v33 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_collaborationItemIdentifier, identifier);
    v23 = [v20 copy];
    options = v22->_options;
    v22->_options = v23;

    objc_storeStrong(&v22->_fileOrFolderURL, l);
    objc_storeStrong(&v22->_share, share);
    objc_storeStrong(&v22->_setupInfo, info);
    objc_storeStrong(&v22->_sharingURL, rL);
    v25 = [nameCopy copy];
    appName = v22->_appName;
    v22->_appName = v25;

    objc_storeStrong(&v22->_appIconData, data);
  }

  return v22;
}

- (SFCollaborationCloudSharingMailRequest)initWithCloudSharingRequest:(id)request result:(id)result
{
  resultCopy = result;
  requestCopy = request;
  collaborationItemIdentifier = [requestCopy collaborationItemIdentifier];
  options = [requestCopy options];
  fileOrFolderURL = [requestCopy fileOrFolderURL];
  share = [resultCopy share];
  setupInfo = [requestCopy setupInfo];
  sharingURL = [resultCopy sharingURL];

  appName = [requestCopy appName];
  appIconData = [requestCopy appIconData];

  v16 = [(SFCollaborationCloudSharingMailRequest *)self initWithCollaborationItemIdentifier:collaborationItemIdentifier options:options fileOrFolderURL:fileOrFolderURL share:share setupInfo:setupInfo sharingURL:sharingURL appName:appName appIconData:appIconData];
  return v16;
}

- (SFCollaborationCloudSharingMailRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collaborationItemIdentifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v8 = get_SWCollaborationOptionsGroupClass_softClass;
  v32 = get_SWCollaborationOptionsGroupClass_softClass;
  if (!get_SWCollaborationOptionsGroupClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __get_SWCollaborationOptionsGroupClass_block_invoke;
    v27 = &unk_1E788A938;
    v28 = &v29;
    __get_SWCollaborationOptionsGroupClass_block_invoke(&v24);
    v8 = v30[3];
  }

  v9 = v8;
  _Block_object_dispose(&v29, 8);
  v10 = [v6 setWithObjects:{v7, v8, 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"options"];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileOrFolderURL"];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v13 = getCKShareClass_softClass;
  v32 = getCKShareClass_softClass;
  if (!getCKShareClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getCKShareClass_block_invoke;
    v27 = &unk_1E788A938;
    v28 = &v29;
    __getCKShareClass_block_invoke(&v24);
    v13 = v30[3];
  }

  v14 = v13;
  _Block_object_dispose(&v29, 8);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:@"share"];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v16 = getCKContainerSetupInfoClass_softClass;
  v32 = getCKContainerSetupInfoClass_softClass;
  if (!getCKContainerSetupInfoClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getCKContainerSetupInfoClass_block_invoke;
    v27 = &unk_1E788A938;
    v28 = &v29;
    __getCKContainerSetupInfoClass_block_invoke(&v24);
    v16 = v30[3];
  }

  v17 = v16;
  _Block_object_dispose(&v29, 8);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:@"setupInfo"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingURL"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appIconData"];
  v22 = [(SFCollaborationCloudSharingMailRequest *)self initWithCollaborationItemIdentifier:v5 options:v11 fileOrFolderURL:v12 share:v15 setupInfo:v18 sharingURL:v19 appName:v20 appIconData:v21];

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  collaborationItemIdentifier = self->_collaborationItemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:collaborationItemIdentifier forKey:@"collaborationItemIdentifier"];
  [coderCopy encodeObject:self->_options forKey:@"options"];
  [coderCopy encodeObject:self->_fileOrFolderURL forKey:@"fileOrFolderURL"];
  [coderCopy encodeObject:self->_share forKey:@"share"];
  [coderCopy encodeObject:self->_setupInfo forKey:@"setupInfo"];
  [coderCopy encodeObject:self->_sharingURL forKey:@"sharingURL"];
  [coderCopy encodeObject:self->_appName forKey:@"appName"];
  [coderCopy encodeObject:self->_appIconData forKey:@"appIconData"];
}

@end