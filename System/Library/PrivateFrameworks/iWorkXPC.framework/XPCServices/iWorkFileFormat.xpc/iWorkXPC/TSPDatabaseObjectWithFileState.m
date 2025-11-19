@interface TSPDatabaseObjectWithFileState
- (id)fileURL;
@end

@implementation TSPDatabaseObjectWithFileState

- (id)fileURL
{
  packageURL = self->_packageURL;
  fileState = self->_fileState;
  v8[0] = @"data";
  v8[1] = fileState;
  v4 = [NSArray arrayWithObjects:v8 count:2];
  v5 = [NSString pathWithComponents:v4];
  v6 = [(NSURL *)packageURL URLByAppendingPathComponent:v5];

  return v6;
}

@end