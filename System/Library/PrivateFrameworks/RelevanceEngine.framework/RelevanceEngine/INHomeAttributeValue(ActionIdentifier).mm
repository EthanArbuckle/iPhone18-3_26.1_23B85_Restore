@interface INHomeAttributeValue(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INHomeAttributeValue(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  type = [self type];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "unit")}];
  re_actionIdentifierHashValue = [v3 re_actionIdentifierHashValue];
  if (type <= 2)
  {
    if (type == 1)
    {
      stringValue = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "BOOLValue")}];
      goto LABEL_13;
    }

    if (type != 2)
    {
      goto LABEL_14;
    }

    v7 = MEMORY[0x277CCABB0];
    [self doubleValue];
    stringValue = [v7 numberWithDouble:?];
LABEL_13:
    v9 = stringValue;
    re_actionIdentifierHashValue ^= [stringValue re_actionIdentifierHashValue];

    goto LABEL_14;
  }

  switch(type)
  {
    case 3:
      stringValue = [self stringValue];
      goto LABEL_13;
    case 4:
      v5 = MEMORY[0x277CCABB0];
      integerValue = [self integerValue];
      goto LABEL_11;
    case 5:
      v5 = MEMORY[0x277CCABB0];
      integerValue = [self limitValue];
LABEL_11:
      stringValue = [v5 numberWithInteger:integerValue];
      goto LABEL_13;
  }

LABEL_14:

  return re_actionIdentifierHashValue;
}

@end