@interface SFCollaborationCloudSharingMailResult
- (SFCollaborationCloudSharingMailResult)initWithCoder:(id)a3;
- (SFCollaborationCloudSharingMailResult)initWithSubject:(id)a3 body:(id)a4 containerID:(id)a5 canEdit:(id)a6 allowOthersToInvite:(id)a7 error:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCollaborationCloudSharingMailResult

- (SFCollaborationCloudSharingMailResult)initWithSubject:(id)a3 body:(id)a4 containerID:(id)a5 canEdit:(id)a6 allowOthersToInvite:(id)a7 error:(id)a8
{
  v14 = a3;
  v15 = a4;
  v25 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = SFCollaborationCloudSharingMailResult;
  v19 = [(SFCollaborationCloudSharingMailResult *)&v26 init];
  if (v19)
  {
    v20 = [v14 copy];
    subject = v19->_subject;
    v19->_subject = v20;

    v22 = [v15 copy];
    body = v19->_body;
    v19->_body = v22;

    objc_storeStrong(&v19->_containerID, a5);
    objc_storeStrong(&v19->_canEdit, a6);
    objc_storeStrong(&v19->_allowOthersToInvite, a7);
    objc_storeStrong(&v19->_error, a8);
  }

  return v19;
}

- (SFCollaborationCloudSharingMailResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v7 = getCKContainerIDClass_softClass;
  v19 = getCKContainerIDClass_softClass;
  if (!getCKContainerIDClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getCKContainerIDClass_block_invoke;
    v15[3] = &unk_1E788A938;
    v15[4] = &v16;
    __getCKContainerIDClass_block_invoke(v15);
    v7 = v17[3];
  }

  v8 = v7;
  _Block_object_dispose(&v16, 8);
  v9 = [v4 decodeObjectOfClass:v7 forKey:@"containerID"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"canEdit"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowOthersToInvite"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v13 = [(SFCollaborationCloudSharingMailResult *)self initWithSubject:v5 body:v6 containerID:v9 canEdit:v10 allowOthersToInvite:v11 error:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  subject = self->_subject;
  v5 = a3;
  [v5 encodeObject:subject forKey:@"subject"];
  [v5 encodeObject:self->_body forKey:@"body"];
  [v5 encodeObject:self->_containerID forKey:@"containerID"];
  [v5 encodeObject:self->_canEdit forKey:@"canEdit"];
  [v5 encodeObject:self->_allowOthersToInvite forKey:@"allowOthersToInvite"];
  [v5 encodeObject:self->_error forKey:@"error"];
}

@end