@interface WFFilePathLocation
+ (Class)supportedClassForURL:(id)l;
+ (id)locationWithSerializedRepresentation:(id)representation;
@end

@implementation WFFilePathLocation

+ (id)locationWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [representationCopy objectForKey:@"relativeSubpath"];
    v6 = [[self alloc] initWithRelativeSubpath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (Class)supportedClassForURL:(id)l
{
  v11[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__WFFilePathLocation_supportedClassForURL___block_invoke;
  v9[3] = &unk_1E837E1B8;
  v10 = lCopy;
  v5 = lCopy;
  v6 = [v4 if_firstObjectPassingTest:v9];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end