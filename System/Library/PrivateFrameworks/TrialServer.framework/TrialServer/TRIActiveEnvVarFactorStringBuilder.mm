@interface TRIActiveEnvVarFactorStringBuilder
+ (id)_levelAsString:(id)a3;
+ (id)stringForFactorLevel:(id)a3;
@end

@implementation TRIActiveEnvVarFactorStringBuilder

+ (id)_levelAsString:(id)a3
{
  v3 = a3;
  v4 = [v3 factor];
  v5 = [v4 type];

  switch(v5)
  {
    case 13:
      v10 = MEMORY[0x277CCACA8];
      v6 = [v3 level];
      v9 = [v10 stringWithFormat:@"%lld", objc_msgSend(v6, "longValue")];
      goto LABEL_9;
    case 11:
      v6 = [v3 level];
      v9 = [v6 stringValue];
LABEL_9:
      v11 = v9;

      goto LABEL_11;
    case 10:
      v6 = [v3 level];
      v7 = [v6 BOOLeanValue];
      v8 = @"0";
      if (v7)
      {
        v8 = @"1";
      }

      v9 = v8;
      goto LABEL_9;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (id)stringForFactorLevel:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"TRIActiveEnvVarFactorStringBuilder.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"factorLevel"}];
  }

  v6 = [a1 _levelAsString:v5];
  v7 = [v5 factor];
  v8 = [v7 namespaceName];

  v9 = [v5 factor];
  v10 = [v9 name];

  v11 = 0;
  if (v8 && v10 && v6)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@=%@", v8, v10, v6];
  }

  return v11;
}

@end