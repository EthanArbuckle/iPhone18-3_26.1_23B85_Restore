@interface SBSApplicationService
- (void)deleteSnapshotsForApplicationIdentifier:(id)identifier;
@end

@implementation SBSApplicationService

- (void)deleteSnapshotsForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  client = [(SBSAbstractApplicationService *)self client];
  [client deleteSnapshotsForApplicationIdentifier:identifierCopy];
}

@end