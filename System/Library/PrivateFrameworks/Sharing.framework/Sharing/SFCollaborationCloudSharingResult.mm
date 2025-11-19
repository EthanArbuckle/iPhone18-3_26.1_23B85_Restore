@interface SFCollaborationCloudSharingResult
- (SFCollaborationCloudSharingResult)initWithCoder:(id)a3;
- (SFCollaborationCloudSharingResult)initWithCollaborationItemIdentifier:(id)a3 sharingURL:(id)a4 share:(id)a5 existingShare:(BOOL)a6 error:(id)a7 mailResult:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCollaborationCloudSharingResult

- (SFCollaborationCloudSharingResult)initWithCollaborationItemIdentifier:(id)a3 sharingURL:(id)a4 share:(id)a5 existingShare:(BOOL)a6 error:(id)a7 mailResult:(id)a8
{
  v14 = a3;
  v23 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  if (!v14)
  {
    [SFCollaborationCloudSharingResult initWithCollaborationItemIdentifier:a2 sharingURL:self share:? existingShare:? error:? mailResult:?];
  }

  v24.receiver = self;
  v24.super_class = SFCollaborationCloudSharingResult;
  v18 = [(SFCollaborationCloudSharingResult *)&v24 init];
  if (v18)
  {
    v19 = [v14 copy];
    collaborationItemIdentifier = v18->_collaborationItemIdentifier;
    v18->_collaborationItemIdentifier = v19;

    objc_storeStrong(&v18->_sharingURL, a4);
    objc_storeStrong(&v18->_share, a5);
    v18->_existingShare = a6;
    objc_storeStrong(&v18->_error, a7);
    objc_storeStrong(&v18->_mailResult, a8);
  }

  return v18;
}

- (SFCollaborationCloudSharingResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collaborationItemIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingURL"];
  v7 = [v4 decodeObjectOfClass:getCKShareClass() forKey:@"share"];
  v8 = [v4 decodeBoolForKey:@"existingShare"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mailResult"];

  v11 = [(SFCollaborationCloudSharingResult *)self initWithCollaborationItemIdentifier:v5 sharingURL:v6 share:v7 existingShare:v8 error:v9 mailResult:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  collaborationItemIdentifier = self->_collaborationItemIdentifier;
  v5 = a3;
  [v5 encodeObject:collaborationItemIdentifier forKey:@"collaborationItemIdentifier"];
  [v5 encodeObject:self->_sharingURL forKey:@"sharingURL"];
  [v5 encodeObject:self->_share forKey:@"share"];
  [v5 encodeBool:self->_existingShare forKey:@"existingShare"];
  [v5 encodeObject:self->_error forKey:@"error"];
  [v5 encodeObject:self->_mailResult forKey:@"mailResult"];
}

- (void)initWithCollaborationItemIdentifier:(uint64_t)a1 sharingURL:(uint64_t)a2 share:existingShare:error:mailResult:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SFCollaborationCloudSharingRequest.m" lineNumber:42 description:@"collaborationItemIdentifier is nil."];
}

@end