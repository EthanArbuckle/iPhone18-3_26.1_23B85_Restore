@interface NSArray
- (BOOL)writeToBinaryFile:(id)a3;
@end

@implementation NSArray

- (BOOL)writeToBinaryFile:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:self format:200 options:0 error:&v9];
  v6 = v5;
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 writeToFile:v4 atomically:1];
  }

  return v7;
}

@end