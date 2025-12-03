@interface WiFiUsageLQMModes
- (WiFiUsageLQMModes)initWithValue:(id)value andOccurrences:(id)occurrences;
@end

@implementation WiFiUsageLQMModes

- (WiFiUsageLQMModes)initWithValue:(id)value andOccurrences:(id)occurrences
{
  valueCopy = value;
  occurrencesCopy = occurrences;
  v9 = occurrencesCopy;
  selfCopy = 0;
  if (valueCopy && occurrencesCopy)
  {
    v13.receiver = self;
    v13.super_class = WiFiUsageLQMModes;
    v11 = [(WiFiUsageLQMModes *)&v13 init];
    objc_storeStrong(&v11->_value, value);
    objc_storeStrong(&v11->_occurrences, occurrences);
    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

@end