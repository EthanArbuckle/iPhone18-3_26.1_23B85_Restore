@interface PPLabelStrengthSets
+ (id)labelStrengthSetsWithWeakSet:(id)a3 strongSet:(id)a4;
- (PPLabelStrengthSets)initWithWeakSet:(id)a3 strongSet:(id)a4;
@end

@implementation PPLabelStrengthSets

- (PPLabelStrengthSets)initWithWeakSet:(id)a3 strongSet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PPLabelStrengthSets;
  v9 = [(PPLabelStrengthSets *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_weak, a3);
    objc_storeStrong(&v10->_strong, a4);
  }

  return v10;
}

+ (id)labelStrengthSetsWithWeakSet:(id)a3 strongSet:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithWeakSet:v7 strongSet:v6];

  return v8;
}

@end