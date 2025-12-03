@interface NSString(SXAXAdditions)
- (id)sxaxAttributedStringWithLowPitchPrefix:()SXAXAdditions;
@end

@implementation NSString(SXAXAdditions)

- (id)sxaxAttributedStringWithLowPitchPrefix:()SXAXAdditions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v11[1] = self;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v11 count:2];
  v6 = [v5 componentsJoinedByString:{@", "}];

  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v6];
  v8 = [v4 length];

  [v7 sxaxApplyLowerPitchTokenToRange:{0, v8}];
  v9 = [v7 copy];

  return v9;
}

@end