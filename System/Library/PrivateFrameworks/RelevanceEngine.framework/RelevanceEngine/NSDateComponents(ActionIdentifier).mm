@interface NSDateComponents(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation NSDateComponents(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  if ([self year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    re_actionIdentifierHashValue = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "year")}];
    re_actionIdentifierHashValue = [v3 re_actionIdentifierHashValue];
  }

  if ([self month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    re_actionIdentifierHashValue2 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "month")}];
    re_actionIdentifierHashValue2 = [v5 re_actionIdentifierHashValue];
  }

  if ([self day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    re_actionIdentifierHashValue3 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "day")}];
    re_actionIdentifierHashValue3 = [v7 re_actionIdentifierHashValue];
  }

  if ([self hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    re_actionIdentifierHashValue4 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "hour")}];
    re_actionIdentifierHashValue4 = [v9 re_actionIdentifierHashValue];
  }

  if ([self minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    re_actionIdentifierHashValue5 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "minute")}];
    re_actionIdentifierHashValue5 = [v11 re_actionIdentifierHashValue];
  }

  if ([self second] == 0x7FFFFFFFFFFFFFFFLL)
  {
    re_actionIdentifierHashValue6 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "second")}];
    re_actionIdentifierHashValue6 = [v13 re_actionIdentifierHashValue];
  }

  return re_actionIdentifierHashValue2 ^ re_actionIdentifierHashValue ^ re_actionIdentifierHashValue3 ^ re_actionIdentifierHashValue4 ^ re_actionIdentifierHashValue5 ^ re_actionIdentifierHashValue6;
}

@end