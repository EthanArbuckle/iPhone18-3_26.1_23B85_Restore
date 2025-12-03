@interface SXJSONObjectMerger
- (SXJSONObjectMerger)initWithClassProvider:(id)provider exclusionKeys:(id)keys;
- (SXJSONObjectMerger)initWithObjectClass:(Class)class exclusionKeys:(id)keys;
- (id)appendKey:(id)key keyPath:(id)path;
- (id)mergeDictionary:(id)dictionary withDictionary:(id)withDictionary keyPath:(id)path;
- (id)mergeObjects:(id)objects;
- (id)replaceLastKeyOfKeyPath:(id)path withKey:(id)key;
- (void)addTransformer:(id)transformer keyPath:(id)path;
- (void)removeTransformerForKeyPath:(id)path;
- (void)transformObject:(id)object otherObject:(id)otherObject transformer:(id)transformer key:(id)key keyPath:(id)path dictionary:(id)dictionary;
@end

@implementation SXJSONObjectMerger

- (SXJSONObjectMerger)initWithObjectClass:(Class)class exclusionKeys:(id)keys
{
  keysCopy = keys;
  v7 = [[SXJSONObjectMergerClassProvider alloc] initWithObjectClass:class];
  v8 = [(SXJSONObjectMerger *)self initWithClassProvider:v7 exclusionKeys:keysCopy];

  return v8;
}

- (SXJSONObjectMerger)initWithClassProvider:(id)provider exclusionKeys:(id)keys
{
  providerCopy = provider;
  keysCopy = keys;
  v16.receiver = self;
  v16.super_class = SXJSONObjectMerger;
  v9 = [(SXJSONObjectMerger *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_classProvider, provider);
    v11 = [keysCopy copy];
    exclusionKeys = v10->_exclusionKeys;
    v10->_exclusionKeys = v11;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    transformers = v10->_transformers;
    v10->_transformers = dictionary;
  }

  return v10;
}

- (id)mergeObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count] == 1)
  {
    firstObject = [objectsCopy firstObject];
  }

  else
  {
    reverseObjectEnumerator = [objectsCopy reverseObjectEnumerator];
    dictionary = [MEMORY[0x1E695DF20] dictionary];
    nextObject = [reverseObjectEnumerator nextObject];
    jSONRepresentation = [nextObject JSONRepresentation];

    if (jSONRepresentation)
    {
      do
      {
        v10 = [(SXJSONObjectMerger *)self mergeDictionary:dictionary withDictionary:jSONRepresentation keyPath:&stru_1F532F6C0];

        nextObject2 = [reverseObjectEnumerator nextObject];
        jSONRepresentation2 = [nextObject2 JSONRepresentation];

        jSONRepresentation = jSONRepresentation2;
        dictionary = v10;
      }

      while (jSONRepresentation2);
    }

    else
    {
      v10 = dictionary;
    }

    firstObject2 = [objectsCopy firstObject];
    specificationVersion = [firstObject2 specificationVersion];

    firstObject = [objc_alloc(-[SXJSONObjectMergerClassProviding classForObject:specVersion:](self->_classProvider classForObject:v10 specVersion:{specificationVersion)), "initWithJSONObject:andVersion:", v10, specificationVersion}];
  }

  return firstObject;
}

- (void)addTransformer:(id)transformer keyPath:(id)path
{
  transformerCopy = transformer;
  pathCopy = path;
  if (transformerCopy && [pathCopy length])
  {
    [(NSMutableDictionary *)self->_transformers setObject:transformerCopy forKey:pathCopy];
  }
}

- (void)removeTransformerForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    [(NSMutableDictionary *)self->_transformers removeObjectForKey:pathCopy];
  }
}

- (id)mergeDictionary:(id)dictionary withDictionary:(id)withDictionary keyPath:(id)path
{
  pathCopy = path;
  withDictionaryCopy = withDictionary;
  v10 = [dictionary mutableCopy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__SXJSONObjectMerger_mergeDictionary_withDictionary_keyPath___block_invoke;
  v16[3] = &unk_1E8500050;
  v16[4] = self;
  v17 = pathCopy;
  v11 = v10;
  v18 = v11;
  v12 = pathCopy;
  [withDictionaryCopy enumerateKeysAndObjectsUsingBlock:v16];

  [v11 removeObjectsForKeys:self->_exclusionKeys];
  v13 = v18;
  v14 = v11;

  return v11;
}

void __61__SXJSONObjectMerger_mergeDictionary_withDictionary_keyPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) appendKey:v11 keyPath:*(a1 + 40)];
  v7 = [*(a1 + 48) objectForKey:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [*(a1 + 32) mergeDictionary:v7 withDictionary:v5 keyPath:v6];
LABEL_7:
      v9 = v8;
      [*(a1 + 48) setObject:v8 forKey:v11];

      goto LABEL_8;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 arrayByAddingObjectsFromArray:v7];
      goto LABEL_7;
    }
  }

LABEL_8:
  v10 = [*(*(a1 + 32) + 24) objectForKey:v6];
  if (v10)
  {
    [*(a1 + 32) transformObject:v7 otherObject:v5 transformer:v10 key:v11 keyPath:*(a1 + 40) dictionary:*(a1 + 48)];
  }

  else if (!v7)
  {
    [*(a1 + 48) setObject:v5 forKey:v11];
  }
}

- (void)transformObject:(id)object otherObject:(id)otherObject transformer:(id)transformer key:(id)key keyPath:(id)path dictionary:(id)dictionary
{
  keyCopy = key;
  pathCopy = path;
  dictionaryCopy = dictionary;
  transformerCopy = transformer;
  otherObjectCopy = otherObject;
  objectCopy = object;
  v19 = [transformerCopy transformKey:keyCopy];
  v20 = [transformerCopy transformObject:objectCopy otherObject:otherObjectCopy];

  v21 = [dictionaryCopy objectForKey:v19];
  if ([v19 isEqualToString:keyCopy])
  {
    if (v20)
    {
      [dictionaryCopy setObject:v20 forKey:keyCopy];
    }
  }

  else if (v21)
  {
    v22 = [(SXJSONObjectMerger *)self appendKey:v19 keyPath:pathCopy];
    v23 = [(NSMutableDictionary *)self->_transformers objectForKey:v22];
    if (v23)
    {
      [(SXJSONObjectMerger *)self transformObject:v21 otherObject:v20 transformer:v23 key:v19 keyPath:v22 dictionary:dictionaryCopy];
    }
  }

  else if (v20)
  {
    [dictionaryCopy setObject:v20 forKey:v19];
    [dictionaryCopy removeObjectForKey:keyCopy];
  }
}

- (id)appendKey:(id)key keyPath:(id)path
{
  keyCopy = key;
  pathCopy = path;
  string = [MEMORY[0x1E696AD60] string];
  if ([pathCopy length])
  {
    [string appendString:pathCopy];
  }

  if ([pathCopy length] && objc_msgSend(keyCopy, "length"))
  {
    [string appendString:@"."];
  }

  if ([keyCopy length])
  {
    [string appendString:keyCopy];
  }

  v8 = [string copy];

  return v8;
}

- (id)replaceLastKeyOfKeyPath:(id)path withKey:(id)key
{
  pathCopy = path;
  keyCopy = key;
  array = [MEMORY[0x1E695DF70] array];
  if ([pathCopy length])
  {
    v8 = [pathCopy componentsSeparatedByString:@"."];
    [array addObjectsFromArray:v8];
  }

  if ([array count])
  {
    [array replaceObjectAtIndex:objc_msgSend(array withObject:{"count") - 1, keyCopy}];
  }

  else if ([keyCopy length])
  {
    [array addObject:keyCopy];
  }

  v9 = [array componentsJoinedByString:@"."];

  return v9;
}

@end