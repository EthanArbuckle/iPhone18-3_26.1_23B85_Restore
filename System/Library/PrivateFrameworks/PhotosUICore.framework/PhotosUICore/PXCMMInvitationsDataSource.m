@interface PXCMMInvitationsDataSource
- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)invitationForObjectID:(id)a3;
- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXCMMInvitationsDataSource

- (id)invitationForObjectID:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationsDataSourceManager.m" lineNumber:111 description:{@"Method %s is a responsibility of subclass %@", "-[PXCMMInvitationsDataSource invitationForObjectID:]", v8}];

  abort();
}

- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationsDataSourceManager.m" lineNumber:107 description:{@"Method %s is a responsibility of subclass %@", "-[PXCMMInvitationsDataSource objectIDAtItemIndexPath:]", v7}];

  abort();
}

- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v6[0] = *&a3->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXCMMInvitationsDataSource *)self objectAtIndexPath:v6];

  return v4;
}

@end