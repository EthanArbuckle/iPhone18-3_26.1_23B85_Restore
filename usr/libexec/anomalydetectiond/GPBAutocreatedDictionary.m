@interface GPBAutocreatedDictionary
- (GPBAutocreatedDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
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

- (GPBAutocreatedDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = GPBAutocreatedDictionary;
  v8 = [(GPBAutocreatedDictionary *)&v10 init];
  if (v8)
  {
    v8->_dictionary = [[NSMutableDictionary alloc] initWithObjects:a3 forKeys:a4 count:a5];
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

- (void)setObject:(id)a3 forKey:(id)a4
{
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    dictionary = objc_alloc_init(NSMutableDictionary);
    self->_dictionary = dictionary;
  }

  [(NSMutableDictionary *)dictionary setObject:a3 forKey:a4];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  dictionary = self->_dictionary;
  if (dictionary)
  {

    return [(NSMutableDictionary *)dictionary copyWithZone:a3];
  }

  else
  {
    v7 = [NSMutableDictionary allocWithZone:a3, v3];

    return [(NSMutableDictionary *)v7 init];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  dictionary = self->_dictionary;
  if (dictionary)
  {

    return [(NSMutableDictionary *)dictionary mutableCopyWithZone:a3];
  }

  else
  {
    v7 = [NSMutableDictionary allocWithZone:a3, v3];

    return [(NSMutableDictionary *)v7 init];
  }
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    dictionary = objc_alloc_init(NSMutableDictionary);
    self->_dictionary = dictionary;
  }

  [(NSMutableDictionary *)dictionary setObject:a3 forKeyedSubscript:a4];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

@end