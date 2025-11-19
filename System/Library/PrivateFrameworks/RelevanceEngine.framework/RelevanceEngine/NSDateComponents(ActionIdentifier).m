@interface NSDateComponents(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation NSDateComponents(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  if ([a1 year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "year")}];
    v2 = [v3 re_actionIdentifierHashValue];
  }

  if ([a1 month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "month")}];
    v4 = [v5 re_actionIdentifierHashValue];
  }

  if ([a1 day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "day")}];
    v6 = [v7 re_actionIdentifierHashValue];
  }

  if ([a1 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "hour")}];
    v8 = [v9 re_actionIdentifierHashValue];
  }

  if ([a1 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "minute")}];
    v10 = [v11 re_actionIdentifierHashValue];
  }

  if ([a1 second] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "second")}];
    v12 = [v13 re_actionIdentifierHashValue];
  }

  return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12;
}

@end