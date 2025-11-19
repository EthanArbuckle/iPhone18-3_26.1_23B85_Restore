@interface NSAttributeDictionaryEnumerator
- (NSAttributeDictionaryEnumerator)initWithAttributeDictionary:(id)a3;
- (id)nextObject;
- (void)dealloc;
@end

@implementation NSAttributeDictionaryEnumerator

- (id)nextObject
{
  nextElement = self->nextElement;
  dictionary = self->dictionary;
  if (nextElement == dictionary->numElements)
  {
    return 0;
  }

  self->nextElement = nextElement + 1;
  return dictionary->elements[nextElement].key;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSAttributeDictionaryEnumerator;
  [(NSAttributeDictionaryEnumerator *)&v3 dealloc];
}

- (NSAttributeDictionaryEnumerator)initWithAttributeDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSAttributeDictionaryEnumerator;
  v4 = [(NSAttributeDictionaryEnumerator *)&v6 init];
  if (v4)
  {
    v4->dictionary = a3;
    v4->nextElement = 0;
  }

  return v4;
}

@end