@interface SFCollaborationCloudSharingRequest
- (SFCollaborationCloudSharingRequest)initWithCoder:(id)a3;
- (SFCollaborationCloudSharingRequest)initWithCollaborationItemIdentifier:(id)a3 options:(id)a4 fileOrFolderURL:(id)a5 share:(id)a6 setupInfo:(id)a7 phoneNumbers:(id)a8 emailAddresses:(id)a9 activityType:(id)a10 appName:(id)a11 appIconData:(id)a12 optionsChanged:(BOOL)a13;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCollaborationCloudSharingRequest

- (SFCollaborationCloudSharingRequest)initWithCollaborationItemIdentifier:(id)a3 options:(id)a4 fileOrFolderURL:(id)a5 share:(id)a6 setupInfo:(id)a7 phoneNumbers:(id)a8 emailAddresses:(id)a9 activityType:(id)a10 appName:(id)a11 appIconData:(id)a12 optionsChanged:(BOOL)a13
{
  v18 = a3;
  v43 = a4;
  obj = a5;
  v42 = a5;
  v41 = a6;
  v40 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v44.receiver = self;
  v44.super_class = SFCollaborationCloudSharingRequest;
  v24 = [(SFCollaborationCloudSharingRequest *)&v44 init];
  if (v24)
  {
    v25 = [v18 copy];
    collaborationItemIdentifier = v24->_collaborationItemIdentifier;
    v24->_collaborationItemIdentifier = v25;

    v27 = [v43 copy];
    options = v24->_options;
    v24->_options = v27;

    objc_storeStrong(&v24->_fileOrFolderURL, obj);
    objc_storeStrong(&v24->_share, a6);
    objc_storeStrong(&v24->_setupInfo, a7);
    v29 = [v19 copy];
    phoneNumbers = v24->_phoneNumbers;
    v24->_phoneNumbers = v29;

    v31 = [v20 copy];
    emailAddresses = v24->_emailAddresses;
    v24->_emailAddresses = v31;

    v33 = [v21 copy];
    activityType = v24->_activityType;
    v24->_activityType = v33;

    v35 = [v22 copy];
    appName = v24->_appName;
    v24->_appName = v35;

    objc_storeStrong(&v24->_appIconData, a12);
    v24->_optionsChanged = a13;
  }

  return v24;
}

- (SFCollaborationCloudSharingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collaborationItemIdentifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v8 = get_SWCollaborationOptionsGroupClass_softClass_0;
  v41 = get_SWCollaborationOptionsGroupClass_softClass_0;
  if (!get_SWCollaborationOptionsGroupClass_softClass_0)
  {
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __get_SWCollaborationOptionsGroupClass_block_invoke_0;
    v36 = &unk_1E788A938;
    v37 = &v38;
    __get_SWCollaborationOptionsGroupClass_block_invoke_0(&v33);
    v8 = v39[3];
  }

  v30 = self;
  v32 = v5;
  v9 = v8;
  _Block_object_dispose(&v38, 8);
  v10 = [v6 setWithObjects:{v7, v8, 0}];
  v29 = [v4 decodeObjectOfClasses:v10 forKey:@"options"];

  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileOrFolderURL"];
  v27 = [v4 decodeObjectOfClass:getCKShareClass() forKey:@"share"];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v11 = getCKContainerSetupInfoClass_softClass_1;
  v41 = getCKContainerSetupInfoClass_softClass_1;
  if (!getCKContainerSetupInfoClass_softClass_1)
  {
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __getCKContainerSetupInfoClass_block_invoke_1;
    v36 = &unk_1E788A938;
    v37 = &v38;
    __getCKContainerSetupInfoClass_block_invoke_1(&v33);
    v11 = v39[3];
  }

  v12 = v11;
  _Block_object_dispose(&v38, 8);
  v26 = [v4 decodeObjectOfClass:v11 forKey:@"setupInfo"];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v25 = [v4 decodeObjectOfClasses:v15 forKey:@"phoneNumbers"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [v4 decodeObjectOfClasses:v18 forKey:@"emailAddresses"];

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appIconData"];
  LOBYTE(v24) = [v4 decodeBoolForKey:@"optionsChanged"];
  v31 = [(SFCollaborationCloudSharingRequest *)v30 initWithCollaborationItemIdentifier:v32 options:v29 fileOrFolderURL:v28 share:v27 setupInfo:v26 phoneNumbers:v25 emailAddresses:v19 activityType:v20 appName:v21 appIconData:v22 optionsChanged:v24];

  return v31;
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
  [v5 encodeObject:self->_phoneNumbers forKey:@"phoneNumbers"];
  [v5 encodeObject:self->_emailAddresses forKey:@"emailAddresses"];
  [v5 encodeObject:self->_activityType forKey:@"activityType"];
  [v5 encodeObject:self->_appName forKey:@"appName"];
  [v5 encodeObject:self->_appIconData forKey:@"appIconData"];
  [v5 encodeBool:self->_optionsChanged forKey:@"optionsChanged"];
}

@end