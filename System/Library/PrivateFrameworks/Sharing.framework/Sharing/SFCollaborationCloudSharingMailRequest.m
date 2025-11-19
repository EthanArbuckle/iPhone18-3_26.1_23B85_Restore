@interface SFCollaborationCloudSharingMailRequest
- (SFCollaborationCloudSharingMailRequest)initWithCloudSharingRequest:(id)a3 result:(id)a4;
- (SFCollaborationCloudSharingMailRequest)initWithCoder:(id)a3;
- (SFCollaborationCloudSharingMailRequest)initWithCollaborationItemIdentifier:(id)a3 options:(id)a4 fileOrFolderURL:(id)a5 share:(id)a6 setupInfo:(id)a7 sharingURL:(id)a8 appName:(id)a9 appIconData:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCollaborationCloudSharingMailRequest

- (SFCollaborationCloudSharingMailRequest)initWithCollaborationItemIdentifier:(id)a3 options:(id)a4 fileOrFolderURL:(id)a5 share:(id)a6 setupInfo:(id)a7 sharingURL:(id)a8 appName:(id)a9 appIconData:(id)a10
{
  v32 = a3;
  v17 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a7;
  v28 = a8;
  v18 = a9;
  v19 = a10;
  v33.receiver = self;
  v33.super_class = SFCollaborationCloudSharingMailRequest;
  v20 = v17;
  v21 = [(SFCollaborationCloudSharingMailRequest *)&v33 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_collaborationItemIdentifier, a3);
    v23 = [v20 copy];
    options = v22->_options;
    v22->_options = v23;

    objc_storeStrong(&v22->_fileOrFolderURL, a5);
    objc_storeStrong(&v22->_share, a6);
    objc_storeStrong(&v22->_setupInfo, a7);
    objc_storeStrong(&v22->_sharingURL, a8);
    v25 = [v18 copy];
    appName = v22->_appName;
    v22->_appName = v25;

    objc_storeStrong(&v22->_appIconData, a10);
  }

  return v22;
}

- (SFCollaborationCloudSharingMailRequest)initWithCloudSharingRequest:(id)a3 result:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 collaborationItemIdentifier];
  v9 = [v7 options];
  v10 = [v7 fileOrFolderURL];
  v11 = [v6 share];
  v12 = [v7 setupInfo];
  v13 = [v6 sharingURL];

  v14 = [v7 appName];
  v15 = [v7 appIconData];

  v16 = [(SFCollaborationCloudSharingMailRequest *)self initWithCollaborationItemIdentifier:v8 options:v9 fileOrFolderURL:v10 share:v11 setupInfo:v12 sharingURL:v13 appName:v14 appIconData:v15];
  return v16;
}

- (SFCollaborationCloudSharingMailRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collaborationItemIdentifier"];
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
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"options"];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileOrFolderURL"];
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
  v15 = [v4 decodeObjectOfClass:v13 forKey:@"share"];
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
  v18 = [v4 decodeObjectOfClass:v16 forKey:@"setupInfo"];
  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingURL"];
  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appIconData"];
  v22 = [(SFCollaborationCloudSharingMailRequest *)self initWithCollaborationItemIdentifier:v5 options:v11 fileOrFolderURL:v12 share:v15 setupInfo:v18 sharingURL:v19 appName:v20 appIconData:v21];

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  collaborationItemIdentifier = self->_collaborationItemIdentifier;
  v5 = a3;
  [v5 encodeObject:collaborationItemIdentifier forKey:@"collaborationItemIdentifier"];
  [v5 encodeObject:self->_options forKey:@"options"];
  [v5 encodeObject:self->_fileOrFolderURL forKey:@"fileOrFolderURL"];
  [v5 encodeObject:self->_share forKey:@"share"];
  [v5 encodeObject:self->_setupInfo forKey:@"setupInfo"];
  [v5 encodeObject:self->_sharingURL forKey:@"sharingURL"];
  [v5 encodeObject:self->_appName forKey:@"appName"];
  [v5 encodeObject:self->_appIconData forKey:@"appIconData"];
}

@end