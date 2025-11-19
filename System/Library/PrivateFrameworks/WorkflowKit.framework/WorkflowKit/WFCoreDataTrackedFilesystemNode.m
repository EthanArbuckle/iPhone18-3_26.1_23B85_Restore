@interface WFCoreDataTrackedFilesystemNode
- (id)descriptor;
@end

@implementation WFCoreDataTrackedFilesystemNode

- (id)descriptor
{
  v3 = [WFTrackedFilesystemNode alloc];
  v4 = [(WFCoreDataTrackedFilesystemNode *)self identifier];
  v5 = [(WFCoreDataTrackedFilesystemNode *)self bookmark];
  v6 = [(WFCoreDataTrackedFilesystemNode *)self filesList];
  v7 = [(WFCoreDataTrackedFilesystemNode *)self isDirectory];
  v8 = [(WFCoreDataTrackedFilesystemNode *)self ignoringSubfolders];
  v9 = [(WFCoreDataTrackedFilesystemNode *)self triggers];
  v10 = [(WFTrackedFilesystemNode *)v3 initWithIdentifier:v4 bookmark:v5 fileData:v6 isDirectory:v7 ignoringSubfolders:v8 triggersData:v9];

  return v10;
}

@end