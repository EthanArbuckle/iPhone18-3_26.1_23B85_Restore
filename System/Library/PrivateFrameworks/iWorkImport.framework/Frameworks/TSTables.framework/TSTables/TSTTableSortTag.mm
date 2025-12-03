@interface TSTTableSortTag
- (TSTTableSortTag)initWithNumberOfSortRules:(unint64_t)rules;
@end

@implementation TSTTableSortTag

- (TSTTableSortTag)initWithNumberOfSortRules:(unint64_t)rules
{
  v17.receiver = self;
  v17.super_class = TSTTableSortTag;
  v8 = [(TSTTableSortTag *)&v17 init];
  if (v8)
  {
    v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
    reorganizeValues = v8->_reorganizeValues;
    v8->_reorganizeValues = v9;

    for (; rules; --rules)
    {
      v11 = v8->_reorganizeValues;
      v12 = objc_opt_new();
      objc_msgSend_addObject_(v11, v13, v12, v14, v15);
    }
  }

  return v8;
}

@end