@interface INHomeAttributeValue(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INHomeAttributeValue(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v2 = [a1 type];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "unit")}];
  v4 = [v3 re_actionIdentifierHashValue];
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "BOOLValue")}];
      goto LABEL_13;
    }

    if (v2 != 2)
    {
      goto LABEL_14;
    }

    v7 = MEMORY[0x277CCABB0];
    [a1 doubleValue];
    v8 = [v7 numberWithDouble:?];
LABEL_13:
    v9 = v8;
    v4 ^= [v8 re_actionIdentifierHashValue];

    goto LABEL_14;
  }

  switch(v2)
  {
    case 3:
      v8 = [a1 stringValue];
      goto LABEL_13;
    case 4:
      v5 = MEMORY[0x277CCABB0];
      v6 = [a1 integerValue];
      goto LABEL_11;
    case 5:
      v5 = MEMORY[0x277CCABB0];
      v6 = [a1 limitValue];
LABEL_11:
      v8 = [v5 numberWithInteger:v6];
      goto LABEL_13;
  }

LABEL_14:

  return v4;
}

@end