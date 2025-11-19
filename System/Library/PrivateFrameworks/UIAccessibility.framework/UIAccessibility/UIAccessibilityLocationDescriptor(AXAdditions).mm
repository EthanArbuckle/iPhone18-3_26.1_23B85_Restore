@interface UIAccessibilityLocationDescriptor(AXAdditions)
- (BOOL)matchesDictionaryRepresentation:()AXAdditions;
- (id)dictionaryRepresentation;
@end

@implementation UIAccessibilityLocationDescriptor(AXAdditions)

- (id)dictionaryRepresentation
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a1, "view")}];
  [a1 point];
  valuePtr[0] = v3;
  valuePtr[1] = v4;
  v5 = AXValueCreate(kAXValueTypeCGPoint, valuePtr);
  v6 = [a1 attributedName];
  v7 = objc_opt_new();
  v8 = *MEMORY[0x1E6988CE8];
  v17[0] = v2;
  v9 = *MEMORY[0x1E6988CE0];
  v16[0] = v8;
  v16[1] = v9;
  v10 = CFAutorelease(v5);
  v16[2] = *MEMORY[0x1E6988CB8];
  v17[1] = v10;
  v17[2] = v6;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v7 addEntriesFromDictionary:v11];
  v12 = [a1 _auxiliaryDataAsDictionaryRepresentation];
  if (v12)
  {
    [v7 addEntriesFromDictionary:v12];
  }

  v13 = [v7 copy];

  return v13;
}

- (BOOL)matchesDictionaryRepresentation:()AXAdditions
{
  v4 = a3;
  v5 = [a1 attributedName];
  v6 = [v5 string];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6988CB8]];
  v8 = [v7 attributedString];
  v9 = [v8 string];
  v10 = [v6 isEqualToString:v9];

  if (v10)
  {
    v11 = [a1 view];
    v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6988CE8]];
    v13 = [v12 unsignedLongLongValue] == v11;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end