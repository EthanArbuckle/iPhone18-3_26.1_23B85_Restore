@interface PPLabelStrengthSets
+ (id)labelStrengthSetsWithWeakSet:(id)set strongSet:(id)strongSet;
- (PPLabelStrengthSets)initWithWeakSet:(id)set strongSet:(id)strongSet;
@end

@implementation PPLabelStrengthSets

- (PPLabelStrengthSets)initWithWeakSet:(id)set strongSet:(id)strongSet
{
  setCopy = set;
  strongSetCopy = strongSet;
  v12.receiver = self;
  v12.super_class = PPLabelStrengthSets;
  v9 = [(PPLabelStrengthSets *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_weak, set);
    objc_storeStrong(&v10->_strong, strongSet);
  }

  return v10;
}

+ (id)labelStrengthSetsWithWeakSet:(id)set strongSet:(id)strongSet
{
  strongSetCopy = strongSet;
  setCopy = set;
  v8 = [[self alloc] initWithWeakSet:setCopy strongSet:strongSetCopy];

  return v8;
}

@end