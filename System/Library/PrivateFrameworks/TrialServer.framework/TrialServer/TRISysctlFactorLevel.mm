@interface TRISysctlFactorLevel
- (BOOL)isEqual:(id)a3;
- (TRISysctlFactorLevel)initWithSysctlName:(id)a3 level:(int64_t)a4;
@end

@implementation TRISysctlFactorLevel

- (TRISysctlFactorLevel)initWithSysctlName:(id)a3 level:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TRISysctlFactorLevel;
  v8 = [(TRISysctlFactorLevel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sysctlName, a3);
    v9->_level = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(TRISysctlFactorLevel *)self sysctlName];
    v9 = [v7 sysctlName];
    if (v8 == v9 || (-[TRISysctlFactorLevel sysctlName](self, "sysctlName"), v3 = objc_claimAutoreleasedReturnValue(), [v7 sysctlName], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v11 = [(TRISysctlFactorLevel *)self level];
      v10 = v11 == [v7 level];
      if (v8 == v9)
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