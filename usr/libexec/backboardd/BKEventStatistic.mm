@interface BKEventStatistic
+ (BKEventStatistic)statisticWithLabel:(id)label;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)reset;
@end

@implementation BKEventStatistic

- (void)reset
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_associatedStatistics;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) reset];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->_needsLogging = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() statisticWithLabel:self->_label];
  objc_storeStrong((v4 + 24), self->_associatedStatistics);
  *(v4 + 9) = self->_needsLogging;
  return v4;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v5 = [(NSArray *)self->_associatedStatistics bs_filter:&stru_1000FC220];
  if ([v5 count])
  {
    v6 = objc_opt_class();
    v7 = formatterCopy;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100070810;
    v10[3] = &unk_1000FC248;
    v11 = v7;
    [v9 appendCollection:v5 withName:0 itemBlock:v10];
  }
}

+ (BKEventStatistic)statisticWithLabel:(id)label
{
  labelCopy = label;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setLabel:labelCopy];

  return v4;
}

@end