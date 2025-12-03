@interface NSCoder(_DUIVisibleDroppedItemVectorCoding)
- (void)_uikit_decodeSPVector3DForKey:()_DUIVisibleDroppedItemVectorCoding;
- (void)_uikit_encodeSPVector3D:()_DUIVisibleDroppedItemVectorCoding forKey:;
@end

@implementation NSCoder(_DUIVisibleDroppedItemVectorCoding)

- (void)_uikit_encodeSPVector3D:()_DUIVisibleDroppedItemVectorCoding forKey:
{
  v13[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AD98];
  v7 = *a3;
  v8 = a4;
  v9 = [v6 numberWithDouble:v7];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:{a3[1], v9}];
  v13[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3[2]];
  v13[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  [self encodeObject:v12 forKey:v8];
}

- (void)_uikit_decodeSPVector3DForKey:()_DUIVisibleDroppedItemVectorCoding
{
  v5 = a2;
  v16 = [self decodeArrayOfObjectsOfClass:objc_opt_class() forKey:v5];

  v6 = v16;
  if (v16 && (v7 = [v16 count] == 3, v6 = v16, v7))
  {
    v8 = [v16 objectAtIndexedSubscript:0];
    [v8 doubleValue];
    v10 = v9;
    v11 = [v16 objectAtIndexedSubscript:1];
    [v11 doubleValue];
    v13 = v12;
    v14 = [v16 objectAtIndexedSubscript:2];
    [v14 doubleValue];
    *a3 = v10;
    a3[1] = v13;
    a3[2] = v15;
    a3[3] = 0;

    v6 = v16;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }
}

@end