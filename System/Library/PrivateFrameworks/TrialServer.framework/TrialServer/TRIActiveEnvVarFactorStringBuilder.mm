@interface TRIActiveEnvVarFactorStringBuilder
+ (id)_levelAsString:(id)string;
+ (id)stringForFactorLevel:(id)level;
@end

@implementation TRIActiveEnvVarFactorStringBuilder

+ (id)_levelAsString:(id)string
{
  stringCopy = string;
  factor = [stringCopy factor];
  type = [factor type];

  switch(type)
  {
    case 13:
      v10 = MEMORY[0x277CCACA8];
      level = [stringCopy level];
      stringValue = [v10 stringWithFormat:@"%lld", objc_msgSend(level, "longValue")];
      goto LABEL_9;
    case 11:
      level = [stringCopy level];
      stringValue = [level stringValue];
LABEL_9:
      v11 = stringValue;

      goto LABEL_11;
    case 10:
      level = [stringCopy level];
      bOOLeanValue = [level BOOLeanValue];
      v8 = @"0";
      if (bOOLeanValue)
      {
        v8 = @"1";
      }

      stringValue = v8;
      goto LABEL_9;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (id)stringForFactorLevel:(id)level
{
  levelCopy = level;
  if (!levelCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActiveEnvVarFactorStringBuilder.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"factorLevel"}];
  }

  v6 = [self _levelAsString:levelCopy];
  factor = [levelCopy factor];
  namespaceName = [factor namespaceName];

  factor2 = [levelCopy factor];
  name = [factor2 name];

  v11 = 0;
  if (namespaceName && name && v6)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@=%@", namespaceName, name, v6];
  }

  return v11;
}

@end