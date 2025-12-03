@interface _REDiffItem
+ (id)itemWithObject:(id)object index:(unint64_t)index comparator:(id)comparator hashGenerator:(id)generator;
- (BOOL)isEqual:(id)equal;
@end

@implementation _REDiffItem

+ (id)itemWithObject:(id)object index:(unint64_t)index comparator:(id)comparator hashGenerator:(id)generator
{
  objectCopy = object;
  generatorCopy = generator;
  comparatorCopy = comparator;
  v12 = objc_alloc_init(_REDiffItem);
  object = v12->_object;
  v12->_object = objectCopy;
  v14 = objectCopy;

  v12->_index = index;
  v15 = MEMORY[0x22AABC5E0](comparatorCopy);

  comparator = v12->_comparator;
  v12->_comparator = v15;

  v17 = MEMORY[0x22AABC5E0](generatorCopy);
  hashGenerator = v12->_hashGenerator;
  v12->_hashGenerator = v17;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object = [(_REDiffItem *)equalCopy object];
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