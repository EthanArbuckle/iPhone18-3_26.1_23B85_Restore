@interface GPBAutocreatedDictionary
- (GPBAutocreatedDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation GPBAutocreatedDictionary

- (void)dealloc
{
  if (self->_autocreator)
  {
    sub_10033C8AC();
  }

  v3.receiver = self;
  v3.super_class = GPBAutocreatedDictionary;
  [(GPBAutocreatedDictionary *)&v3 dealloc];
}

- (GPBAutocreatedDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v10.receiver = self;
  v10.super_class = GPBAutocreatedDictionary;
  v8 = [(GPBAutocreatedDictionary *)&v10 init];
  if (v8)
  {
    v8->_dictionary = [[NSMutableDictionary alloc] initWithObjects:objects forKeys:keys count:count];
  }

  return v8;
}

- (id)keyEnumerator
{
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    dictionary = objc_alloc_init(NSMutableDictionary);
    self->_dictionary = dictionary;
  }

  return [(NSMutableDictionary *)dictionary keyEnumerator];
}

- (void)setObject:(id)object forKey:(id)key
{
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    dictionary = objc_alloc_init(NSMutableDictionary);
    self->_dictionary = dictionary;
  }

  [(NSMutableDictionary *)dictionary setObject:object forKey:key];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  dictionary = self->_dictionary;
  if (dictionary)
  {

    return [(NSMutableDictionary *)dictionary copyWithZone:zone];
  }

  else
  {
    v7 = [NSMutableDictionary allocWithZone:zone, v3];

    return [(NSMutableDictionary *)v7 init];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  dictionary = self->_dictionary;
  if (dictionary)
  {

    return [(NSMutableDictionary *)dictionary mutableCopyWithZone:zone];
  }

  else
  {
    v7 = [NSMutableDictionary allocWithZone:zone, v3];

    return [(NSMutableDictionary *)v7 init];
  }
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    dictionary = objc_alloc_init(NSMutableDictionary);
    self->_dictionary = dictionary;
  }

  [(NSMutableDictionary *)dictionary setObject:object forKeyedSubscript:subscript];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

@end