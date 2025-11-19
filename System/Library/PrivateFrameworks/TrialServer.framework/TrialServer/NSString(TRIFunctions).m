@interface NSString(TRIFunctions)
- (id)tri_assignmentProbabilityWithSeed:()TRIFunctions;
@end

@implementation NSString(TRIFunctions)

- (id)tri_assignmentProbabilityWithSeed:()TRIFunctions
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", a1, v5];
  v7 = [v6 UTF8String];

  if (!v7)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"TRIExpressionCategories.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"charString"}];
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  v9 = [v8 mutableBytes];
  if (!v9)
  {
    v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v16);
  }

  v10 = v9;
  v11 = strlen(v7);
  CC_SHA256(v7, v11, v10);
  v12 = veorq_s8(*v10, v10[1]);
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:{(*&veor_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) % 0x3E8) / 10.0}];

  return v13;
}

@end