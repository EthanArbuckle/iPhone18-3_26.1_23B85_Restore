@interface WFCoreDataTrackedFilesystemNode
- (id)descriptor;
@end

@implementation WFCoreDataTrackedFilesystemNode

- (id)descriptor
{
  v3 = [WFTrackedFilesystemNode alloc];
  identifier = [(WFCoreDataTrackedFilesystemNode *)self identifier];
  bookmark = [(WFCoreDataTrackedFilesystemNode *)self bookmark];
  filesList = [(WFCoreDataTrackedFilesystemNode *)self filesList];
  isDirectory = [(WFCoreDataTrackedFilesystemNode *)self isDirectory];
  ignoringSubfolders = [(WFCoreDataTrackedFilesystemNode *)self ignoringSubfolders];
  triggers = [(WFCoreDataTrackedFilesystemNode *)self triggers];
  v10 = [(WFTrackedFilesystemNode *)v3 initWithIdentifier:identifier bookmark:bookmark fileData:filesList isDirectory:isDirectory ignoringSubfolders:ignoringSubfolders triggersData:triggers];

  return v10;
}

@end