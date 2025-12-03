@interface SFCollaborationCloudSharingResult
- (SFCollaborationCloudSharingResult)initWithCoder:(id)coder;
- (SFCollaborationCloudSharingResult)initWithCollaborationItemIdentifier:(id)identifier sharingURL:(id)l share:(id)share existingShare:(BOOL)existingShare error:(id)error mailResult:(id)result;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCollaborationCloudSharingResult

- (SFCollaborationCloudSharingResult)initWithCollaborationItemIdentifier:(id)identifier sharingURL:(id)l share:(id)share existingShare:(BOOL)existingShare error:(id)error mailResult:(id)result
{
  identifierCopy = identifier;
  lCopy = l;
  shareCopy = share;
  errorCopy = error;
  resultCopy = result;
  if (!identifierCopy)
  {
    [SFCollaborationCloudSharingResult initWithCollaborationItemIdentifier:a2 sharingURL:self share:? existingShare:? error:? mailResult:?];
  }

  v24.receiver = self;
  v24.super_class = SFCollaborationCloudSharingResult;
  v18 = [(SFCollaborationCloudSharingResult *)&v24 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    collaborationItemIdentifier = v18->_collaborationItemIdentifier;
    v18->_collaborationItemIdentifier = v19;

    objc_storeStrong(&v18->_sharingURL, l);
    objc_storeStrong(&v18->_share, share);
    v18->_existingShare = existingShare;
    objc_storeStrong(&v18->_error, error);
    objc_storeStrong(&v18->_mailResult, result);
  }

  return v18;
}

- (SFCollaborationCloudSharingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collaborationItemIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingURL"];
  v7 = [coderCopy decodeObjectOfClass:getCKShareClass() forKey:@"share"];
  v8 = [coderCopy decodeBoolForKey:@"existingShare"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mailResult"];

  v11 = [(SFCollaborationCloudSharingResult *)self initWithCollaborationItemIdentifier:v5 sharingURL:v6 share:v7 existingShare:v8 error:v9 mailResult:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  collaborationItemIdentifier = self->_collaborationItemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:collaborationItemIdentifier forKey:@"collaborationItemIdentifier"];
  [coderCopy encodeObject:self->_sharingURL forKey:@"sharingURL"];
  [coderCopy encodeObject:self->_share forKey:@"share"];
  [coderCopy encodeBool:self->_existingShare forKey:@"existingShare"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
  [coderCopy encodeObject:self->_mailResult forKey:@"mailResult"];
}

- (void)initWithCollaborationItemIdentifier:(uint64_t)a1 sharingURL:(uint64_t)a2 share:existingShare:error:mailResult:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SFCollaborationCloudSharingRequest.m" lineNumber:42 description:@"collaborationItemIdentifier is nil."];
}

@end