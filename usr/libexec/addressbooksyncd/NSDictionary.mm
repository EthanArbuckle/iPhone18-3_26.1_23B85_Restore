@interface NSDictionary
- (BOOL)NDTWriteToBinaryFile:(id)file;
- (BOOL)writeToBinaryFile:(id)file;
@end

@implementation NSDictionary

- (BOOL)writeToBinaryFile:(id)file
{
  fileCopy = file;
  v9 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:self format:200 options:0 error:&v9];
  v6 = v5;
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 writeToFile:fileCopy atomically:1];
  }

  return v7;
}

- (BOOL)NDTWriteToBinaryFile:(id)file
{
  fileCopy = file;
  v9 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:self format:200 options:0 error:&v9];
  v6 = v5;
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 writeToFile:fileCopy atomically:1];
  }

  return v7;
}

@end