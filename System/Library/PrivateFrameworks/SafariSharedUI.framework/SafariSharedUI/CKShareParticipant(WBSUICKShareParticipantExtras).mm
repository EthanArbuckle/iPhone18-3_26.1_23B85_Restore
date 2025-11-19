@interface CKShareParticipant(WBSUICKShareParticipantExtras)
- (void)safari_contact;
@end

@implementation CKShareParticipant(WBSUICKShareParticipantExtras)

- (void)safari_contact
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Failed to fetch contact: %{public}@", &v5, 0xCu);
}

@end