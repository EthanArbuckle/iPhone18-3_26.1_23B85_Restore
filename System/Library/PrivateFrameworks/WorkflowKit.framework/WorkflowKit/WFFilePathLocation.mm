@interface WFFilePathLocation
+ (Class)supportedClassForURL:(id)a3;
+ (id)locationWithSerializedRepresentation:(id)a3;
@end

@implementation WFFilePathLocation

+ (id)locationWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 objectForKey:@"relativeSubpath"];
    v6 = [[a1 alloc] initWithRelativeSubpath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (Class)supportedClassForURL:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__WFFilePathLocation_supportedClassForURL___block_invoke;
  v9[3] = &unk_1E837E1B8;
  v10 = v3;
  v5 = v3;
  v6 = [v4 if_firstObjectPassingTest:v9];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end