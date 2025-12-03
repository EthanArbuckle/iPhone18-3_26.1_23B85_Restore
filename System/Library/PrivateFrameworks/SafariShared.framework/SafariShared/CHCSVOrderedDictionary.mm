@interface CHCSVOrderedDictionary
- (BOOL)isEqual:(id)equal;
- (CHCSVOrderedDictionary)initWithCoder:(id)coder;
- (CHCSVOrderedDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (CHCSVOrderedDictionary)initWithObjects:(id)objects forKeys:(id)keys;
- (id)objectAtIndex:(unint64_t)index;
@end

@implementation CHCSVOrderedDictionary

- (CHCSVOrderedDictionary)initWithObjects:(id)objects forKeys:(id)keys
{
  objectsCopy = objects;
  keysCopy = keys;
  v16.receiver = self;
  v16.super_class = CHCSVOrderedDictionary;
  v8 = [(CHCSVOrderedDictionary *)&v16 init];
  if (v8)
  {
    v9 = [keysCopy copy];
    keys = v8->_keys;
    v8->_keys = v9;

    v11 = [objectsCopy copy];
    values = v8->_values;
    v8->_values = v11;

    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8->_values forKeys:v8->_keys];
    dictionary = v8->_dictionary;
    v8->_dictionary = v13;
  }

  return v8;
}

- (CHCSVOrderedDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:objects count:count];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:keys count:count];
  v10 = [(CHCSVOrderedDictionary *)self initWithObjects:v8 forKeys:v9];

  return v10;
}

- (CHCSVOrderedDictionary)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CHCSVOrderedDictionary;
  return [(CHCSVOrderedDictionary *)&v4 initWithCoder:coder];
}

- (id)objectAtIndex:(unint64_t)index
{
  v4 = [(NSArray *)self->_keys objectAtIndex:index];
  v5 = [(CHCSVOrderedDictionary *)self objectForKey:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = CHCSVOrderedDictionary;
  if ([(CHCSVOrderedDictionary *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [equalCopy isEqual:self->_keys];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end