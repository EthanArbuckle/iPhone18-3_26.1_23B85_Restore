@interface UIAccessibilityLocationDescriptor(AXAdditions)
- (BOOL)matchesDictionaryRepresentation:()AXAdditions;
- (id)dictionaryRepresentation;
@end

@implementation UIAccessibilityLocationDescriptor(AXAdditions)

- (id)dictionaryRepresentation
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(self, "view")}];
  [self point];
  valuePtr[0] = v3;
  valuePtr[1] = v4;
  v5 = AXValueCreate(kAXValueTypeCGPoint, valuePtr);
  attributedName = [self attributedName];
  v7 = objc_opt_new();
  v8 = *MEMORY[0x1E6988CE8];
  v17[0] = v2;
  v9 = *MEMORY[0x1E6988CE0];
  v16[0] = v8;
  v16[1] = v9;
  v10 = CFAutorelease(v5);
  v16[2] = *MEMORY[0x1E6988CB8];
  v17[1] = v10;
  v17[2] = attributedName;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v7 addEntriesFromDictionary:v11];
  _auxiliaryDataAsDictionaryRepresentation = [self _auxiliaryDataAsDictionaryRepresentation];
  if (_auxiliaryDataAsDictionaryRepresentation)
  {
    [v7 addEntriesFromDictionary:_auxiliaryDataAsDictionaryRepresentation];
  }

  v13 = [v7 copy];

  return v13;
}

- (BOOL)matchesDictionaryRepresentation:()AXAdditions
{
  v4 = a3;
  attributedName = [self attributedName];
  string = [attributedName string];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6988CB8]];
  attributedString = [v7 attributedString];
  string2 = [attributedString string];
  v10 = [string isEqualToString:string2];

  if (v10)
  {
    view = [self view];
    v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6988CE8]];
    v13 = [v12 unsignedLongLongValue] == view;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end