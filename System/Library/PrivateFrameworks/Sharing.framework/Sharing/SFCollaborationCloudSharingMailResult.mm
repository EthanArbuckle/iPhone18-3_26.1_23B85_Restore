@interface SFCollaborationCloudSharingMailResult
- (SFCollaborationCloudSharingMailResult)initWithCoder:(id)coder;
- (SFCollaborationCloudSharingMailResult)initWithSubject:(id)subject body:(id)body containerID:(id)d canEdit:(id)edit allowOthersToInvite:(id)invite error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCollaborationCloudSharingMailResult

- (SFCollaborationCloudSharingMailResult)initWithSubject:(id)subject body:(id)body containerID:(id)d canEdit:(id)edit allowOthersToInvite:(id)invite error:(id)error
{
  subjectCopy = subject;
  bodyCopy = body;
  dCopy = d;
  editCopy = edit;
  inviteCopy = invite;
  errorCopy = error;
  v26.receiver = self;
  v26.super_class = SFCollaborationCloudSharingMailResult;
  v19 = [(SFCollaborationCloudSharingMailResult *)&v26 init];
  if (v19)
  {
    v20 = [subjectCopy copy];
    subject = v19->_subject;
    v19->_subject = v20;

    v22 = [bodyCopy copy];
    body = v19->_body;
    v19->_body = v22;

    objc_storeStrong(&v19->_containerID, d);
    objc_storeStrong(&v19->_canEdit, edit);
    objc_storeStrong(&v19->_allowOthersToInvite, invite);
    objc_storeStrong(&v19->_error, error);
  }

  return v19;
}

- (SFCollaborationCloudSharingMailResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
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
  v9 = [coderCopy decodeObjectOfClass:v7 forKey:@"containerID"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"canEdit"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowOthersToInvite"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v13 = [(SFCollaborationCloudSharingMailResult *)self initWithSubject:v5 body:v6 containerID:v9 canEdit:v10 allowOthersToInvite:v11 error:v12];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  subject = self->_subject;
  coderCopy = coder;
  [coderCopy encodeObject:subject forKey:@"subject"];
  [coderCopy encodeObject:self->_body forKey:@"body"];
  [coderCopy encodeObject:self->_containerID forKey:@"containerID"];
  [coderCopy encodeObject:self->_canEdit forKey:@"canEdit"];
  [coderCopy encodeObject:self->_allowOthersToInvite forKey:@"allowOthersToInvite"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
}

@end