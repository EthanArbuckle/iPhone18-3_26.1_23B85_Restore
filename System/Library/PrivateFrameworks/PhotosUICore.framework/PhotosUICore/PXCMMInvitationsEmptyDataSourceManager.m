@interface PXCMMInvitationsEmptyDataSourceManager
- (id)createInitialDataSource;
@end

@implementation PXCMMInvitationsEmptyDataSourceManager

- (id)createInitialDataSource
{
  v2 = objc_alloc_init(PXCMMInvitationsEmptyDataSource);

  return v2;
}

@end