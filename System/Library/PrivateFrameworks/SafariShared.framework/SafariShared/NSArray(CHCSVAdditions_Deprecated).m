@interface NSArray(CHCSVAdditions_Deprecated)
+ (id)arrayWithContentsOfCSVFile:()CHCSVAdditions_Deprecated;
+ (id)arrayWithContentsOfCSVFile:()CHCSVAdditions_Deprecated delimiter:;
+ (id)arrayWithContentsOfCSVFile:()CHCSVAdditions_Deprecated options:;
+ (id)arrayWithContentsOfCSVFile:()CHCSVAdditions_Deprecated options:delimiter:;
+ (id)arrayWithContentsOfCSVFile:()CHCSVAdditions_Deprecated options:delimiter:error:;
@end

@implementation NSArray(CHCSVAdditions_Deprecated)

+ (id)arrayWithContentsOfCSVFile:()CHCSVAdditions_Deprecated
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v3 = [a1 arrayWithContentsOfDelimitedURL:v2 options:0 delimiter:44 error:0];

  return v3;
}

+ (id)arrayWithContentsOfCSVFile:()CHCSVAdditions_Deprecated delimiter:
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v7 = [a1 arrayWithContentsOfDelimitedURL:v6 options:0 delimiter:a4 error:0];

  return v7;
}

+ (id)arrayWithContentsOfCSVFile:()CHCSVAdditions_Deprecated options:
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v7 = [a1 arrayWithContentsOfDelimitedURL:v6 options:a4 delimiter:44 error:0];

  return v7;
}

+ (id)arrayWithContentsOfCSVFile:()CHCSVAdditions_Deprecated options:delimiter:
{
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v9 = [a1 arrayWithContentsOfDelimitedURL:v8 options:a4 delimiter:a5 error:0];

  return v9;
}

+ (id)arrayWithContentsOfCSVFile:()CHCSVAdditions_Deprecated options:delimiter:error:
{
  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v11 = [a1 arrayWithContentsOfDelimitedURL:v10 options:a4 delimiter:a5 error:a6];

  return v11;
}

@end