@interface PXCMMInvitationsDataSource
- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)invitationForObjectID:(id)d;
- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXCMMInvitationsDataSource

- (id)invitationForObjectID:(id)d
{
  dCopy = d;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMInvitationsDataSourceManager.m" lineNumber:111 description:{@"Method %s is a responsibility of subclass %@", "-[PXCMMInvitationsDataSource invitationForObjectID:]", v8}];

  abort();
}

- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)path
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMInvitationsDataSourceManager.m" lineNumber:107 description:{@"Method %s is a responsibility of subclass %@", "-[PXCMMInvitationsDataSource objectIDAtItemIndexPath:]", v7}];

  abort();
}

- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXCMMInvitationsDataSource *)self objectAtIndexPath:v6];

  return v4;
}

@end