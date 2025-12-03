@interface NSString(CHCSVAdditions)
- (id)componentsSeparatedByDelimiter:()CHCSVAdditions options:error:;
@end

@implementation NSString(CHCSVAdditions)

- (id)componentsSeparatedByDelimiter:()CHCSVAdditions options:error:
{
  v8 = [self dataUsingEncoding:4];
  v9 = [MEMORY[0x1E695DF48] inputStreamWithData:v8];
  v10 = _CHCSVParserParse(v9, a4, a3, a5);

  return v10;
}

@end