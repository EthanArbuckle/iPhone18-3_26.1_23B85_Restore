@interface NSDictionary
- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5;
@end

@implementation NSDictionary

- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [NSPropertyListSerialization dataWithPropertyList:self format:100 options:0 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 writeToFile:v8 options:a4 error:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end