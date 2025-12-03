@interface NSAttributedString(SXAdditions)
- (id)stringByTruncatingToLength:()SXAdditions options:;
- (uint64_t)tokenCountWithEnumerationOptions:()SXAdditions maxTokenCount:outLimitLength:;
@end

@implementation NSAttributedString(SXAdditions)

- (uint64_t)tokenCountWithEnumerationOptions:()SXAdditions maxTokenCount:outLimitLength:
{
  if (a5)
  {
    *a5 = [self length];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  string = [self string];
  v10 = [self length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__NSAttributedString_SXAdditions__tokenCountWithEnumerationOptions_maxTokenCount_outLimitLength___block_invoke;
  v13[3] = &unk_1E84FFC68;
  v13[4] = &v14;
  v13[5] = a4;
  v13[6] = a5;
  [string enumerateSubstringsInRange:0 options:v10 usingBlock:{a3, v13}];

  v11 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v11;
}

- (id)stringByTruncatingToLength:()SXAdditions options:
{
  if ([self length] <= a3)
  {
    selfCopy = self;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    string = [self string];
    v8 = [self length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__NSAttributedString_SXAdditions__stringByTruncatingToLength_options___block_invoke;
    v12[3] = &unk_1E84FFC90;
    v12[4] = &v13;
    v12[5] = a3;
    [string enumerateSubstringsInRange:0 options:v8 usingBlock:{a4, v12}];

    v9 = v14[3];
    if (!v9)
    {
      v14[3] = a3;
      v9 = a3;
    }

    selfCopy = [self attributedSubstringFromRange:{0, v9}];
    _Block_object_dispose(&v13, 8);
  }

  return selfCopy;
}

@end