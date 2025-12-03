@interface _PASSqliteNSDictionaryCursor
- (BOOL)currentIndexedRowSatisfiesConstraints;
- (void)applyKeyConstraint:(int)constraint withArgument:(id)argument;
- (void)finalizeConstraints;
- (void)setCollection:(id)collection;
- (void)stepIndexedRow;
@end

@implementation _PASSqliteNSDictionaryCursor

- (void)stepIndexedRow
{
  nextObject = [(NSEnumerator *)self->_keysEnumerator nextObject];
  currentKey = self->_currentKey;
  self->_currentKey = nextObject;

  if (self->_currentKey)
  {
    v5 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:?];
  }

  else
  {
    v5 = 0;
  }

  currentValue = self->_currentValue;
  self->_currentValue = v5;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)currentIndexedRowSatisfiesConstraints
{
  currentIndexedKey = [(_PASSqliteNSDictionaryCursor *)self currentIndexedKey];
  null = [MEMORY[0x1E695DFB0] null];

  if (currentIndexedKey == null)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteCollections.m" lineNumber:1255 description:{@"Invalid parameter not satisfying: %@", @"[self currentIndexedKey] != [NSNull null]"}];
  }

  v8.receiver = self;
  v8.super_class = _PASSqliteNSDictionaryCursor;
  return [(_PASSqliteCollectionsCursor *)&v8 currentIndexedRowSatisfiesConstraints];
}

- (void)finalizeConstraints
{
  dictionary = self->_dictionary;
  if (dictionary && [(NSDictionary *)dictionary count])
  {
    if ([(NSDictionary *)self->_dictionary count]== 1)
    {
      allKeys = [(NSDictionary *)self->_dictionary allKeys];
      firstObject = [allKeys firstObject];
      currentKey = self->_currentKey;
      self->_currentKey = firstObject;

      v7 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:self->_currentKey];
      currentValue = self->_currentValue;
      self->_currentValue = v7;

      MEMORY[0x1EEE66BB8]();
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      keyEnumerator = [(NSDictionary *)self->_dictionary keyEnumerator];
      keysEnumerator = self->_keysEnumerator;
      self->_keysEnumerator = keyEnumerator;

      [(_PASSqliteNSDictionaryCursor *)self stepIndexedRow];

      objc_autoreleasePoolPop(v9);
    }
  }
}

- (void)applyKeyConstraint:(int)constraint withArgument:(id)argument
{
  argumentCopy = argument;
  if (constraint != 72)
  {
    if (constraint == 71)
    {
      currentKey = self->_currentKey;
      self->_currentKey = 0;

      currentValue = self->_currentValue;
      self->_currentValue = 0;

      v10 = 24;
      goto LABEL_8;
    }

    if (constraint != 2)
    {
      goto LABEL_16;
    }
  }

  v8 = self->_currentKey;
  if (!v8)
  {
    p_dictionary = &self->_dictionary;
    dictionary = self->_dictionary;
    if (dictionary)
    {
      v15 = [(NSDictionary *)dictionary objectForKeyedSubscript:argumentCopy];
      v16 = self->_currentValue;
      self->_currentValue = v15;

      if (v15)
      {
        objc_storeStrong(&self->_currentKey, argument);
        goto LABEL_15;
      }

      v17 = self->_currentKey;
    }

    else
    {
      v17 = 0;
    }

    self->_currentKey = 0;

    v18 = self->_currentValue;
    self->_currentValue = 0;

    goto LABEL_15;
  }

  if ([v8 isEqual:argumentCopy])
  {
    goto LABEL_16;
  }

  v9 = self->_currentKey;
  self->_currentKey = 0;

  v10 = 48;
LABEL_8:
  p_dictionary = (self + v10);
LABEL_15:
  v19 = *p_dictionary;
  *p_dictionary = 0;

LABEL_16:

  MEMORY[0x1EEE66BB8]();
}

- (void)setCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy count])
  {
    v6 = objc_autoreleasePoolPush();
    objc_storeStrong(&self->_dictionary, collection);
    objc_autoreleasePoolPop(v6);
  }

  v7.receiver = self;
  v7.super_class = _PASSqliteNSDictionaryCursor;
  [(_PASSqliteCollectionsCursor *)&v7 setCollection:collectionCopy];
}

@end