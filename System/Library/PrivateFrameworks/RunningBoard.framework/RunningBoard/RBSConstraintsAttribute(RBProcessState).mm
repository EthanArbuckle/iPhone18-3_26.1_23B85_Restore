@interface RBSConstraintsAttribute(RBProcessState)
- (uint64_t)allowedWithAttribute:()RBProcessState error:;
- (uint64_t)hasMandatoryAttributes:()RBProcessState error:;
@end

@implementation RBSConstraintsAttribute(RBProcessState)

- (uint64_t)allowedWithAttribute:()RBProcessState error:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([self constraints] & 4) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (a4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D47050];
      v12 = *MEMORY[0x277CCA470];
      v13[0] = @"Constraints not met - assertion has a duration";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *a4 = [v7 errorWithDomain:v8 code:4 userInfo:v9];

      a4 = 0;
    }
  }

  else
  {
    a4 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return a4;
}

- (uint64_t)hasMandatoryAttributes:()RBProcessState error:
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (([self constraints] & 3) == 0)
  {
    goto LABEL_16;
  }

  v23 = a4;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v10 |= [*(*(&v24 + 1) + 8 * i) preventsSuspension];
        objc_opt_class();
        v11 |= objc_opt_isKindOfClass();
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
    LOBYTE(v11) = 0;
  }

  if (([self constraints] & 1) != 0 && (v10 & 1) == 0)
  {
    v14 = v23;
    if (v23)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D47050];
      v30 = *MEMORY[0x277CCA470];
      v31 = @"Constraints not met - assertion does not prevent suspension";
      v17 = MEMORY[0x277CBEAC0];
      v18 = &v31;
      v19 = &v30;
LABEL_19:
      v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
      *v14 = [v15 errorWithDomain:v16 code:4 userInfo:v20];

      v14 = 0;
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if ((([self constraints] & 2) == 0) | v11 & 1)
  {
LABEL_16:
    v14 = 1;
    goto LABEL_20;
  }

  v14 = v23;
  if (v23)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D47050];
    v28 = *MEMORY[0x277CCA470];
    v29 = @"Constraints not met - assertion is not launching";
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v29;
    v19 = &v28;
    goto LABEL_19;
  }

LABEL_20:

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

@end