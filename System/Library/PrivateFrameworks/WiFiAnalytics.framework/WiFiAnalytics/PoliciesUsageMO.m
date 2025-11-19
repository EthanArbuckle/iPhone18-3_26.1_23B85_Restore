@interface PoliciesUsageMO
+ (id)predicateForPolicyUsageForTimeSpan:(unint64_t)a3 forEntity:(id)a4;
@end

@implementation PoliciesUsageMO

+ (id)predicateForPolicyUsageForTimeSpan:(unint64_t)a3 forEntity:(id)a4
{
  v19[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AB28];
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"policyType == %@", @"updateTopUsedByUsage"];
  v19[0] = v8;
  v9 = MEMORY[0x1E696AE18];
  v10 = [WADeviceAnalyticsClient timeSpanToString:a3];
  v11 = [v9 predicateWithFormat:@"timeSpan == %@", v10];
  v19[1] = v11;
  v12 = MEMORY[0x1E696AE18];
  v13 = [v7 name];

  v14 = [v12 predicateWithFormat:@"object == %@", v13];
  v19[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v16 = [v5 andPredicateWithSubpredicates:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end