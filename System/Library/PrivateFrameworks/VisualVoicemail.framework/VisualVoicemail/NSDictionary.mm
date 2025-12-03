@interface NSDictionary
- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error;
@end

@implementation NSDictionary

- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error
{
  fileCopy = file;
  v9 = [NSPropertyListSerialization dataWithPropertyList:self format:100 options:0 error:error];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 writeToFile:fileCopy options:options error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end