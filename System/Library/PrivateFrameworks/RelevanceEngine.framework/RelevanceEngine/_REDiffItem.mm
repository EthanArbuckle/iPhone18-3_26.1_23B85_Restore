@interface _REDiffItem
+ (id)itemWithObject:(id)a3 index:(unint64_t)a4 comparator:(id)a5 hashGenerator:(id)a6;
- (BOOL)isEqual:(id)a3;
@end

@implementation _REDiffItem

+ (id)itemWithObject:(id)a3 index:(unint64_t)a4 comparator:(id)a5 hashGenerator:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = objc_alloc_init(_REDiffItem);
  object = v12->_object;
  v12->_object = v9;
  v14 = v9;

  v12->_index = a4;
  v15 = MEMORY[0x22AABC5E0](v11);

  comparator = v12->_comparator;
  v12->_comparator = v15;

  v17 = MEMORY[0x22AABC5E0](v10);
  hashGenerator = v12->_hashGenerator;
  v12->_hashGenerator = v17;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_REDiffItem *)v4 object];
      object = self->_object;
      v7 = (*(self->_comparator + 2))();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end