@interface TRISysctlFactorLevel
- (BOOL)isEqual:(id)equal;
- (TRISysctlFactorLevel)initWithSysctlName:(id)name level:(int64_t)level;
@end

@implementation TRISysctlFactorLevel

- (TRISysctlFactorLevel)initWithSysctlName:(id)name level:(int64_t)level
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = TRISysctlFactorLevel;
  v8 = [(TRISysctlFactorLevel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sysctlName, name);
    v9->_level = level;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    sysctlName = [(TRISysctlFactorLevel *)self sysctlName];
    sysctlName2 = [v7 sysctlName];
    if (sysctlName == sysctlName2 || (-[TRISysctlFactorLevel sysctlName](self, "sysctlName"), v3 = objc_claimAutoreleasedReturnValue(), [v7 sysctlName], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      level = [(TRISysctlFactorLevel *)self level];
      v10 = level == [v7 level];
      if (sysctlName == sysctlName2)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

@end