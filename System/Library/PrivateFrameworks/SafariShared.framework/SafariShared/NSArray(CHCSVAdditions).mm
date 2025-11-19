@interface NSArray(CHCSVAdditions)
+ (id)arrayWithContentsOfDelimitedURL:()CHCSVAdditions options:delimiter:error:;
- (id)CSVString;
@end

@implementation NSArray(CHCSVAdditions)

+ (id)arrayWithContentsOfDelimitedURL:()CHCSVAdditions options:delimiter:error:
{
  v9 = a3;
  if (!v9)
  {
    +[NSArray(CHCSVAdditions) arrayWithContentsOfDelimitedURL:options:delimiter:error:];
  }

  v10 = [MEMORY[0x1E695DF48] inputStreamWithURL:v9];
  v11 = _CHCSVParserParse(v10, a4, a5, a6);

  return v11;
}

- (id)CSVString
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFC0] outputStreamToMemory];
  v3 = [[CHCSVWriter alloc] initWithOutputStream:v2 encoding:4 delimiter:44];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&unk_1F3A9D350, v13}])
        {
          [(CHCSVWriter *)v3 writeLineOfFields:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(CHCSVWriter *)v3 closeStream];
  v10 = [v2 propertyForKey:*MEMORY[0x1E695DA30]];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v10 encoding:4];

  return v11;
}

+ (void)arrayWithContentsOfDelimitedURL:()CHCSVAdditions options:delimiter:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"fileURL" object:? file:? lineNumber:? description:?];
}

@end