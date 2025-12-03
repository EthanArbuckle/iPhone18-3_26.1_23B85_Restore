@interface SFCollaborationCloudSharingRequest
- (SFCollaborationCloudSharingRequest)initWithCoder:(id)coder;
- (SFCollaborationCloudSharingRequest)initWithCollaborationItemIdentifier:(id)identifier options:(id)options fileOrFolderURL:(id)l share:(id)share setupInfo:(id)info phoneNumbers:(id)numbers emailAddresses:(id)addresses activityType:(id)self0 appName:(id)self1 appIconData:(id)self2 optionsChanged:(BOOL)self3;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCollaborationCloudSharingRequest

- (SFCollaborationCloudSharingRequest)initWithCollaborationItemIdentifier:(id)identifier options:(id)options fileOrFolderURL:(id)l share:(id)share setupInfo:(id)info phoneNumbers:(id)numbers emailAddresses:(id)addresses activityType:(id)self0 appName:(id)self1 appIconData:(id)self2 optionsChanged:(BOOL)self3
{
  identifierCopy = identifier;
  optionsCopy = options;
  obj = l;
  lCopy = l;
  shareCopy = share;
  infoCopy = info;
  numbersCopy = numbers;
  addressesCopy = addresses;
  typeCopy = type;
  nameCopy = name;
  dataCopy = data;
  v44.receiver = self;
  v44.super_class = SFCollaborationCloudSharingRequest;
  v24 = [(SFCollaborationCloudSharingRequest *)&v44 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    collaborationItemIdentifier = v24->_collaborationItemIdentifier;
    v24->_collaborationItemIdentifier = v25;

    v27 = [optionsCopy copy];
    options = v24->_options;
    v24->_options = v27;

    objc_storeStrong(&v24->_fileOrFolderURL, obj);
    objc_storeStrong(&v24->_share, share);
    objc_storeStrong(&v24->_setupInfo, info);
    v29 = [numbersCopy copy];
    phoneNumbers = v24->_phoneNumbers;
    v24->_phoneNumbers = v29;

    v31 = [addressesCopy copy];
    emailAddresses = v24->_emailAddresses;
    v24->_emailAddresses = v31;

    v33 = [typeCopy copy];
    activityType = v24->_activityType;
    v24->_activityType = v33;

    v35 = [nameCopy copy];
    appName = v24->_appName;
    v24->_appName = v35;

    objc_storeStrong(&v24->_appIconData, data);
    v24->_optionsChanged = changed;
  }

  return v24;
}

- (SFCollaborationCloudSharingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collaborationItemIdentifier"];
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

  selfCopy = self;
  v32 = v5;
  v9 = v8;
  _Block_object_dispose(&v38, 8);
  v10 = [v6 setWithObjects:{v7, v8, 0}];
  v29 = [coderCopy decodeObjectOfClasses:v10 forKey:@"options"];

  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileOrFolderURL"];
  v27 = [coderCopy decodeObjectOfClass:getCKShareClass() forKey:@"share"];
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
  v26 = [coderCopy decodeObjectOfClass:v11 forKey:@"setupInfo"];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v25 = [coderCopy decodeObjectOfClasses:v15 forKey:@"phoneNumbers"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"emailAddresses"];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appIconData"];
  LOBYTE(v24) = [coderCopy decodeBoolForKey:@"optionsChanged"];
  v31 = [(SFCollaborationCloudSharingRequest *)selfCopy initWithCollaborationItemIdentifier:v32 options:v29 fileOrFolderURL:v28 share:v27 setupInfo:v26 phoneNumbers:v25 emailAddresses:v19 activityType:v20 appName:v21 appIconData:v22 optionsChanged:v24];

  return v31;
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
  [coderCopy encodeObject:self->_phoneNumbers forKey:@"phoneNumbers"];
  [coderCopy encodeObject:self->_emailAddresses forKey:@"emailAddresses"];
  [coderCopy encodeObject:self->_activityType forKey:@"activityType"];
  [coderCopy encodeObject:self->_appName forKey:@"appName"];
  [coderCopy encodeObject:self->_appIconData forKey:@"appIconData"];
  [coderCopy encodeBool:self->_optionsChanged forKey:@"optionsChanged"];
}

@end