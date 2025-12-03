@interface NSKeyedUnarchiver(PosterFoundation)
+ (id)pf_unarchivedObjectOfClass:()PosterFoundation fromData:classReplacementMap:error:;
+ (id)pf_unarchivedObjectOfClasses:()PosterFoundation fromData:classReplacementMap:error:;
+ (id)pf_unarchivedObjectOfClasses:()PosterFoundation fromData:strict:classReplacementBlock:error:;
@end

@implementation NSKeyedUnarchiver(PosterFoundation)

+ (id)pf_unarchivedObjectOfClass:()PosterFoundation fromData:classReplacementMap:error:
{
  v10 = MEMORY[0x1E695DFD8];
  v11 = a5;
  v12 = a4;
  v13 = [v10 setWithObject:a3];
  v14 = [self pf_unarchivedObjectOfClasses:v13 fromData:v12 classReplacementMap:v11 error:a6];

  return v14;
}

+ (id)pf_unarchivedObjectOfClasses:()PosterFoundation fromData:classReplacementMap:error:
{
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__NSKeyedUnarchiver_PosterFoundation__pf_unarchivedObjectOfClasses_fromData_classReplacementMap_error___block_invoke;
  v14[3] = &unk_1E8189DF8;
  v15 = v10;
  v11 = v10;
  v12 = [self pf_unarchivedObjectOfClasses:a3 fromData:a4 strict:0 classReplacementBlock:v14 error:a6];

  return v12;
}

+ (id)pf_unarchivedObjectOfClasses:()PosterFoundation fromData:strict:classReplacementBlock:error:
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [[self alloc] initForReadingFromData:v13 error:a7];
  [v15 setRequiresSecureCoding:1];
  [v15 setDecodingFailurePolicy:1];
  if (a5)
  {
    [v15 _enableStrictSecureDecodingMode];
  }

  if (v14)
  {
    v14[2](v14, v15);
  }

  v16 = [v15 decodeTopLevelObjectOfClasses:v12 forKey:*MEMORY[0x1E696A508] error:a7];

  return v16;
}

@end