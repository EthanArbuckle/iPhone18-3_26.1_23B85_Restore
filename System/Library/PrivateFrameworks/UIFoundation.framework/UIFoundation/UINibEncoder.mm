@interface UINibEncoder
+ (BOOL)archiveRootObject:(id)object toFile:(id)file;
+ (id)archivedDataWithRootObject:(id)object;
- (BOOL)object:(id)object encodesAsMemberAndWithCoderOfClass:(Class)class;
- (BOOL)shouldUniqueObjectByValue:(id)value;
- (Class)encodedClassForObject:(id)object;
- (id)assignObjectIDForObject:(id)object;
- (id)encodedClassNameForObject:(id)object;
- (id)initForWritingWithMutableData:(id)data;
- (id)nextGenericKey;
- (id)replacementObjectForObject:(id)object forKey:(id)key;
- (int64_t)versionForClassName:(id)name;
- (void)dealloc;
- (void)encodeArrayOfDoubles:(double *)doubles count:(int64_t)count forKey:(id)key;
- (void)encodeArrayOfFloats:(float *)floats count:(int64_t)count forKey:(id)key;
- (void)encodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(const void *)at;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeBycopyObject:(id)object;
- (void)encodeByrefObject:(id)object;
- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key;
- (void)encodeBytes:(const void *)bytes length:(unint64_t)length;
- (void)encodeCGAffineTransform:(CGAffineTransform *)transform forKey:(id)key;
- (void)encodeCGPoint:(CGPoint)point forKey:(id)key;
- (void)encodeCGRect:(CGRect)rect forKey:(id)key;
- (void)encodeCGSize:(CGSize)size forKey:(id)key;
- (void)encodeConditionalObject:(id)object;
- (void)encodeConditionalObject:(id)object forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeInt32:(int)int32 forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeInt:(int)int forKey:(id)key;
- (void)encodeInteger:(int64_t)integer forKey:(id)key;
- (void)encodeObject:(id)object;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)encodeRootObject:(id)object;
- (void)encodeUIEdgeInsets:(UIEdgeInsets)insets forKey:(id)key;
- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at;
- (void)encodeValuesOfObjCTypes:(const char *)types;
- (void)finishEncoding;
- (void)serializeArray:(id)array;
- (void)serializeDictionary:(id)dictionary;
- (void)serializeObject:(id)object;
- (void)serializeSet:(id)set;
@end

@implementation UINibEncoder

- (id)initForWritingWithMutableData:(id)data
{
  v12.receiver = self;
  v12.super_class = UINibEncoder;
  v4 = [(UINibEncoder *)&v12 init];
  if (v4)
  {
    v4->data = data;
    memset(&keyCallBacks, 0, sizeof(keyCallBacks));
    UIRetainedIdentityKeyDictionaryCallbacks(&keyCallBacks);
    memset(&valueCallBacks, 0, sizeof(valueCallBacks));
    UIRetainedIdentityValueDictionaryCallbacks(&valueCallBacks);
    v4->objectsToObjectIDs = CFDictionaryCreateMutable(0, 0, &keyCallBacks, MEMORY[0x1E695E9E8]);
    v4->objectIDsToObjects = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], &valueCallBacks);
    v4->replacements = CFDictionaryCreateMutable(0, 0, &keyCallBacks, &valueCallBacks);
    v4->values = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    memset(&callBacks, 0, sizeof(callBacks));
    UIRetainedIdentitySetCallbacks(&callBacks);
    v4->encodedObjects = CFSetCreateMutable(0, 0, &callBacks);
    memset(&v8, 0, sizeof(v8));
    UIRetainedIdentityArrayCallbacks(&v8);
    v4->encodedOrderedObjects = CFArrayCreateMutable(0, 0, &v8);
    memset(&v7, 0, sizeof(v7));
    UIRetainedValueUniquingSetCallbacks(&v7);
    v4->objectsUniquedByValue = CFSetCreateMutable(0, 0, &v7);
    v4->objectsReplacedWithNil = CFSetCreateMutable(0, 0, &callBacks);
    v4->_unorderedCollectionSortingEnabled = 1;
    v5 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    CFSetAddValue(v4->encodedObjects, v5);
    CFArrayAppendValue(v4->encodedOrderedObjects, v5);
    v4->recursiveState.currentObjectID = UINibArchiveIndexFromNumber([(UINibEncoder *)v4 assignObjectIDForObject:v5]);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->objectsToObjectIDs);
  CFRelease(self->objectIDsToObjects);
  CFRelease(self->values);
  CFRelease(self->replacements);
  CFRelease(self->encodedObjects);
  CFRelease(self->encodedOrderedObjects);
  CFRelease(self->objectsReplacedWithNil);

  CFRelease(self->objectsUniquedByValue);
  v3.receiver = self;
  v3.super_class = UINibEncoder;
  [(UINibEncoder *)&v3 dealloc];
}

- (id)assignObjectIDForObject:(id)object
{
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->nextObjectID];
  CFDictionarySetValue(self->objectsToObjectIDs, object, v5);
  CFDictionarySetValue(self->objectIDsToObjects, v5, object);
  ++self->nextObjectID;
  return v5;
}

- (Class)encodedClassForObject:(id)object
{
  result = [object classForKeyedArchiver];
  if (!result)
  {

    return objc_opt_class();
  }

  return result;
}

- (id)encodedClassNameForObject:(id)object
{
  v4 = [(UINibEncoder *)self encodedClassForObject:object];

  return [(UINibEncoder *)self encodedClassNameForClass:v4];
}

- (BOOL)object:(id)object encodesAsMemberAndWithCoderOfClass:(Class)class
{
  if ([object classForKeyedArchiver] != class)
  {
    return 0;
  }

  return [(UINibEncoder *)self object:object encodesWithCoderFromClass:class];
}

- (BOOL)shouldUniqueObjectByValue:(id)value
{
  if ([(UINibEncoder *)self object:value encodesAsMemberAndWithCoderOfClass:objc_opt_class()])
  {
    return 1;
  }

  v6 = objc_opt_class();

  return [(UINibEncoder *)self object:value encodesAsMemberAndWithCoderOfClass:v6];
}

- (id)replacementObjectForObject:(id)object forKey:(id)key
{
  if (!CFSetContainsValue(self->objectsReplacedWithNil, object) && !CFDictionaryContainsKey(self->replacements, object))
  {
    if ([(UINibEncoder *)self objectIDForObject:object])
    {
      return object;
    }

    if ([(UINibEncoder *)self shouldUniqueObjectByValue:object])
    {
      Value = CFSetGetValue(self->objectsUniquedByValue, object);
      if (Value)
      {
        goto LABEL_12;
      }

      CFSetAddValue(self->objectsUniquedByValue, object);
    }

    Value = [object replacementObjectForCoder:self];
    if (!Value)
    {
LABEL_19:
      CFSetAddValue(self->objectsReplacedWithNil, object);
      return 0;
    }

LABEL_12:
    v9 = Value;
    if (!self->delegate || ((v11 = objc_opt_respondsToSelector(), objectIDsToObjects = self->objectIDsToObjects, v13 = UINumberWithNibArchiveIndex(self->recursiveState.currentObjectID), v14 = CFDictionaryGetValue(objectIDsToObjects, v13), delegate = self->delegate, (v11 & 1) == 0) ? (v16 = [delegate nibCoder:self willEncodeObject:{v9, v14}]) : (v16 = objc_msgSend(delegate, "nibCoder:willEncodeObject:forObject:forKey:", self, v9, v14, key)), (v9 = v16) != 0))
    {
      CFDictionarySetValue(self->replacements, object, v9);
      if (![(UINibEncoder *)self objectIDForObject:v9])
      {
        [(UINibEncoder *)self assignObjectIDForObject:v9];
      }

      return v9;
    }

    goto LABEL_19;
  }

  replacements = self->replacements;

  return CFDictionaryGetValue(replacements, object);
}

- (void)serializeArray:(id)array
{
  v14 = *MEMORY[0x1E69E9840];
  [(UINibEncoder *)self encodeBool:1 forKey:@"NSInlinedValue"];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [array countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(array);
        }

        [(UINibEncoder *)self encodeObject:*(*(&v9 + 1) + 8 * v8++) forKey:@"UINibEncoderEmptyKey"];
      }

      while (v6 != v8);
      v6 = [array countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)serializeDictionary:(id)dictionary
{
  v16 = *MEMORY[0x1E69E9840];
  allKeys = [dictionary allKeys];
  if ([(UINibEncoder *)self isUnorderedCollectionSortingEnabled]&& UIAreObjectsSortableForEncoding(allKeys))
  {
    allKeys = [allKeys sortedArrayUsingSelector:sel_compare_];
  }

  [(UINibEncoder *)self encodeBool:1 forKey:@"NSInlinedValue"];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [(UINibEncoder *)self encodeObject:v10 forKey:@"UINibEncoderEmptyKey"];
        -[UINibEncoder encodeObject:forKey:](self, "encodeObject:forKey:", [dictionary objectForKey:v10], @"UINibEncoderEmptyKey");
      }

      v7 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)serializeSet:(id)set
{
  v14 = *MEMORY[0x1E69E9840];
  allObjects = [set allObjects];
  if ([(UINibEncoder *)self isUnorderedCollectionSortingEnabled]&& UIAreObjectsSortableForEncoding(allObjects))
  {
    allObjects = [allObjects sortedArrayUsingSelector:sel_compare_];
  }

  [(UINibEncoder *)self encodeBool:1 forKey:@"NSInlinedValue"];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        [(UINibEncoder *)self encodeObject:*(*(&v9 + 1) + 8 * v8++) forKey:@"UINibEncoderEmptyKey"];
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)serializeObject:(id)object
{
  if ([(UINibEncoder *)self object:object encodesWithCoderFromClass:objc_opt_class()])
  {

    [(UINibEncoder *)self serializeArray:object];
  }

  else if ([(UINibEncoder *)self object:object encodesWithCoderFromClass:objc_opt_class()])
  {

    [(UINibEncoder *)self serializeDictionary:object];
  }

  else if ([(UINibEncoder *)self object:object encodesWithCoderFromClass:objc_opt_class()])
  {

    [(UINibEncoder *)self serializeSet:object];
  }

  else
  {

    [object encodeWithCoder:self];
  }
}

+ (id)archivedDataWithRootObject:(id)object
{
  data = [MEMORY[0x1E695DF88] data];
  v6 = [[self alloc] initForWritingWithMutableData:data];
  [v6 encodeObject:object forKey:@"object"];
  [v6 finishEncoding];
  return data;
}

+ (BOOL)archiveRootObject:(id)object toFile:(id)file
{
  v5 = [self archivedDataWithRootObject:object];

  return [v5 writeToFile:file atomically:1];
}

- (void)finishEncoding
{
  v37 = *MEMORY[0x1E69E9840];
  memset(&keyCallBacks, 0, sizeof(keyCallBacks));
  UIRetainedIdentityKeyDictionaryCallbacks(&keyCallBacks);
  v3 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, MEMORY[0x1E695E9E8]);
  Value = CFDictionaryGetValue(self->objectIDsToObjects, [MEMORY[0x1E696AD98] numberWithLongLong:0]);
  CFDictionarySetValue(v3, Value, [MEMORY[0x1E696AD98] numberWithInteger:0]);
  memset(v36, 0, 512);
  Count = CFArrayGetCount(self->encodedOrderedObjects);
  if (Count < 0x81)
  {
    v6 = v36;
  }

  else
  {
    v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  encodedOrderedObjects = self->encodedOrderedObjects;
  v38.length = CFArrayGetCount(encodedOrderedObjects);
  v38.location = 0;
  CFArrayGetValues(encodedOrderedObjects, v38, v6);
  v32 = 88;
  v8 = CFArrayGetCount(self->encodedOrderedObjects);
  if (v8 >= 1)
  {
    v9 = v8;
    v10 = 1;
    v11 = v6;
    do
    {
      if (*v11 != Value)
      {
        v12 = v10 + 1;
        CFDictionarySetValue(v3, *v11, [MEMORY[0x1E696AD98] numberWithInteger:?]);
        v10 = v12;
      }

      ++v11;
      --v9;
    }

    while (v9);
  }

  v34 = v6;
  v13 = CFArrayGetCount(self->values);
  if (v13 >= 1)
  {
    v14 = v13;
    for (i = 0; i != v14; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->values, i);
      v17 = ValueAtIndex;
      if (ValueAtIndex[20] == 10)
      {
        v18 = CFDictionaryGetValue(self->objectIDsToObjects, [MEMORY[0x1E696AD98] numberWithLongLong:*(ValueAtIndex + 6)]);
        if (CFSetContainsValue(self->encodedObjects, v18))
        {
          v19 = CFDictionaryGetValue(v3, v18);
          v20 = UINibArchiveIndexFromNumber(v19);
        }

        else
        {
          v20 = 0;
          v17[20] = 9;
        }

        *(v17 + 3) = v20;
      }

      v21 = CFDictionaryGetValue(self->objectIDsToObjects, [MEMORY[0x1E696AD98] numberWithLongLong:{*(v17 + 4), v32}]);
      if (!v21)
      {
        [UINibEncoder finishEncoding];
      }

      v22 = CFDictionaryGetValue(v3, v21);
      if (!v22)
      {
        [UINibEncoder finishEncoding];
      }

      *(v17 + 4) = UINibArchiveIndexFromNumber(v22);
    }
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v25 = CFArrayGetCount(*(&self->super.super.isa + v33));
  if (v25 >= 1)
  {
    v26 = v25;
    v27 = v6;
    do
    {
      v28 = *v27;
      v29 = [(UINibEncoder *)self encodedClassForObject:*v27];
      v30 = [(UINibEncoder *)self encodedClassNameForClass:v29];
      [dictionary setObject:v30 forKey:{CFDictionaryGetValue(v3, v28)}];
      if (![dictionary2 objectForKey:v30])
      {
        classFallbacksForKeyedArchiver = [(objc_class *)v29 classFallbacksForKeyedArchiver];
        if ([classFallbacksForKeyedArchiver count])
        {
          [dictionary2 setObject:classFallbacksForKeyedArchiver forKey:v30];
        }
      }

      ++v27;
      --v26;
    }

    while (v26);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  CFRelease(v3);
  UIWriteArchiveToData(self->data, 1, dictionary, dictionary2, self->values, @"UINibEncoderEmptyKey");
}

- (int64_t)versionForClassName:(id)name
{
  v3 = NSClassFromString(name);
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(objc_class *)v3 version];
}

- (void)encodeObject:(id)object forKey:(id)key
{
  if (object && (v7 = [(UINibEncoder *)self replacementObjectForObject:object forKey:key]) != 0)
  {
    v8 = v7;
    v9 = [(UINibEncoder *)self objectIDForObject:v7];
    if (!v9)
    {
      [UINibEncoder encodeObject:a2 forKey:self];
    }

    if (!CFSetContainsValue(self->encodedObjects, v8))
    {
      CFSetAddValue(self->encodedObjects, v8);
      CFArrayAppendValue(self->encodedOrderedObjects, v8);
      [(UINibEncoder *)self appendValue:[UINibCoderValue nibValueForObjectReference:UINibArchiveIndexFromNumber(v9) key:key scope:self->recursiveState.currentObjectID]];
      recursiveState = self->recursiveState;
      self->recursiveState = 0;
      self->recursiveState.currentObjectID = UINibArchiveIndexFromNumber(v9);
      [(UINibEncoder *)self serializeObject:v8];
      self->recursiveState = recursiveState;
      return;
    }

    v10 = [UINibCoderValue nibValueForObjectReference:UINibArchiveIndexFromNumber(v9) key:key scope:self->recursiveState.currentObjectID];
  }

  else
  {
    v10 = [UINibCoderValue nibValueRepresentingNilReferenceForKey:key scope:self->recursiveState.currentObjectID];
  }

  [(UINibEncoder *)self appendValue:v10];
}

- (void)encodeConditionalObject:(id)object forKey:(id)key
{
  if (!object)
  {
    goto LABEL_9;
  }

  if ([(UINibEncoder *)self shouldUniqueObjectByValue:?])
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    if (![v8 stringWithFormat:@"This coder does not support conditional encoding of %@.", NSStringFromClass(v9)])
    {
      [UINibEncoder encodeConditionalObject:a2 forKey:self];
    }
  }

  v10 = [(UINibEncoder *)self replacementObjectForObject:object forKey:key];
  if (v10)
  {
    v11 = v10;
    v12 = [(UINibEncoder *)self objectIDForObject:v10];
    if (!v12)
    {
      v12 = [(UINibEncoder *)self assignObjectIDForObject:v11];
    }

    v13 = [UINibCoderValue nibValueForObjectReference:UINibArchiveIndexFromNumber(v12) key:key scope:self->recursiveState.currentObjectID];
  }

  else
  {
LABEL_9:
    v13 = [UINibCoderValue nibValueRepresentingNilReferenceForKey:key scope:self->recursiveState.currentObjectID];
  }

  [(UINibEncoder *)self appendValue:v13];
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  v5 = [UINibCoderValue nibValueForBoolean:bool key:key scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeInt:(int)int forKey:(id)key
{
  v5 = [UINibCoderValue nibValueForInteger:int key:key scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeInt32:(int)int32 forKey:(id)key
{
  v5 = [UINibCoderValue nibValueForInteger:int32 key:key scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  v5 = [UINibCoderValue nibValueForInteger:int64 key:key scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeInteger:(int64_t)integer forKey:(id)key
{
  v5 = [UINibCoderValue nibValueForInteger:integer key:key scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  v5 = [UINibCoderValue nibValueForFloat:key key:self->recursiveState.currentObjectID scope:?];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  v5 = [UINibCoderValue nibValueForDouble:key key:self->recursiveState.currentObjectID scope:double];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key
{
  v6 = [UINibCoderValue nibValueForBytes:bytes length:length key:key scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v6];
}

- (void)encodeArrayOfDoubles:(double *)doubles count:(int64_t)count forKey:(id)key
{
  data = [MEMORY[0x1E695DF88] data];
  v12 = 7;
  [data appendBytes:&v12 length:1];
  if (count >= 1)
  {
    do
    {
      v10 = *doubles++;
      v11 = v10;
      [data appendBytes:&v11 length:8];
      --count;
    }

    while (count);
  }

  -[UINibEncoder encodeBytes:length:forKey:](self, "encodeBytes:length:forKey:", [data bytes], objc_msgSend(data, "length"), key);
}

- (void)encodeArrayOfFloats:(float *)floats count:(int64_t)count forKey:(id)key
{
  data = [MEMORY[0x1E695DF88] data];
  v12 = 6;
  [data appendBytes:&v12 length:1];
  if (count >= 1)
  {
    do
    {
      v10 = *floats++;
      v11 = v10;
      [data appendBytes:&v11 length:4];
      --count;
    }

    while (count);
  }

  -[UINibEncoder encodeBytes:length:forKey:](self, "encodeBytes:length:forKey:", [data bytes], objc_msgSend(data, "length"), key);
}

- (void)encodeCGPoint:(CGPoint)point forKey:(id)key
{
  v5 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  [(UINibEncoder *)self encodeArrayOfCGFloats:&pointCopy count:2 forKey:key];
}

- (void)encodeCGSize:(CGSize)size forKey:(id)key
{
  v5 = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  [(UINibEncoder *)self encodeArrayOfCGFloats:&sizeCopy count:2 forKey:key];
}

- (void)encodeCGRect:(CGRect)rect forKey:(id)key
{
  v5 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  [(UINibEncoder *)self encodeArrayOfCGFloats:&rectCopy count:4 forKey:key];
}

- (void)encodeCGAffineTransform:(CGAffineTransform *)transform forKey:(id)key
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v4;
  v5[2] = *&transform->tx;
  [(UINibEncoder *)self encodeArrayOfCGFloats:v5 count:6 forKey:key];
}

- (void)encodeUIEdgeInsets:(UIEdgeInsets)insets forKey:(id)key
{
  v5 = *MEMORY[0x1E69E9840];
  insetsCopy = insets;
  [(UINibEncoder *)self encodeArrayOfCGFloats:&insetsCopy count:4 forKey:key];
}

- (id)nextGenericKey
{
  v2 = MEMORY[0x1E696AEC0];
  nextAnonymousKey = self->recursiveState.nextAnonymousKey;
  self->recursiveState.nextAnonymousKey = nextAnonymousKey + 1;
  return [v2 stringWithFormat:@"$%ld", nextAnonymousKey];
}

- (void)encodeObject:(id)object
{
  nextGenericKey = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeObject:object forKey:nextGenericKey];
}

- (void)encodeRootObject:(id)object
{
  nextGenericKey = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeObject:object forKey:nextGenericKey];
}

- (void)encodeBycopyObject:(id)object
{
  nextGenericKey = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeObject:object forKey:nextGenericKey];
}

- (void)encodeByrefObject:(id)object
{
  nextGenericKey = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeObject:object forKey:nextGenericKey];
}

- (void)encodeConditionalObject:(id)object
{
  nextGenericKey = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeConditionalObject:object forKey:nextGenericKey];
}

- (void)encodeValuesOfObjCTypes:(const char *)types
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];

  [currentHandler handleFailureInMethod:a2 object:self file:@"UINibEncoder.m" lineNumber:512 description:&stru_1F01AD578];
}

- (void)encodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(const void *)at
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];

  [currentHandler handleFailureInMethod:a2 object:self file:@"UINibEncoder.m" lineNumber:516 description:&stru_1F01AD578];
}

- (void)encodeBytes:(const void *)bytes length:(unint64_t)length
{
  nextGenericKey = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeBytes:bytes length:length forKey:nextGenericKey];
}

- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at
{
  if (strlen(type) != 1)
  {
    [UINibEncoder encodeValueOfObjCType:at:];
  }

  v7 = *type;
  if (v7 <= 0x63)
  {
    if (*type > 0x3Fu)
    {
      if (v7 != 64)
      {
        if (v7 != 66)
        {
          goto LABEL_37;
        }

        v10 = *at;
        nextGenericKey = [(UINibEncoder *)self nextGenericKey];

        [(UINibEncoder *)self encodeBool:v10 forKey:nextGenericKey];
        return;
      }

      v9 = *at;
    }

    else
    {
      if (v7 == 42)
      {
        v13 = *at;
        v14 = strlen(v13);
        nextGenericKey2 = [(UINibEncoder *)self nextGenericKey];

        [(UINibEncoder *)self encodeBytes:v13 length:v14 + 1 forKey:nextGenericKey2];
        return;
      }

      if (v7 != 58)
      {
        goto LABEL_37;
      }

      v9 = NSStringFromSelector(*at);
    }

    nextGenericKey3 = [(UINibEncoder *)self nextGenericKey];

    [(UINibEncoder *)self encodeObject:v9 forKey:nextGenericKey3];
    return;
  }

  if (*type > 0x68u)
  {
    switch(v7)
    {
      case 'i':
        v8 = *at;
        goto LABEL_33;
      case 'q':
        v8 = *at;
        goto LABEL_33;
      case 's':
        v8 = *at;
LABEL_33:
        nextGenericKey4 = [(UINibEncoder *)self nextGenericKey];

        [(UINibEncoder *)self encodeInteger:v8 forKey:nextGenericKey4];
        return;
    }

LABEL_37:
    [UINibEncoder encodeValueOfObjCType:at:];
  }

  if (v7 == 100)
  {
    v12 = *at;
  }

  else
  {
    if (v7 != 102)
    {
      goto LABEL_37;
    }

    v12 = *at;
  }

  nextGenericKey5 = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeDouble:nextGenericKey5 forKey:v12];
}

- (uint64_t)encodeObject:(uint64_t)a1 forKey:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"UINibEncoder.m" lineNumber:357 description:@"This should have been assigned in replacementObjectForObject:forKey:"];
}

@end