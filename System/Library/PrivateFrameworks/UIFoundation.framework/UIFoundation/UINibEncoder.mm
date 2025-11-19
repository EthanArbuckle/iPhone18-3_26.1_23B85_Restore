@interface UINibEncoder
+ (BOOL)archiveRootObject:(id)a3 toFile:(id)a4;
+ (id)archivedDataWithRootObject:(id)a3;
- (BOOL)object:(id)a3 encodesAsMemberAndWithCoderOfClass:(Class)a4;
- (BOOL)shouldUniqueObjectByValue:(id)a3;
- (Class)encodedClassForObject:(id)a3;
- (id)assignObjectIDForObject:(id)a3;
- (id)encodedClassNameForObject:(id)a3;
- (id)initForWritingWithMutableData:(id)a3;
- (id)nextGenericKey;
- (id)replacementObjectForObject:(id)a3 forKey:(id)a4;
- (int64_t)versionForClassName:(id)a3;
- (void)dealloc;
- (void)encodeArrayOfDoubles:(double *)a3 count:(int64_t)a4 forKey:(id)a5;
- (void)encodeArrayOfFloats:(float *)a3 count:(int64_t)a4 forKey:(id)a5;
- (void)encodeArrayOfObjCType:(const char *)a3 count:(unint64_t)a4 at:(const void *)a5;
- (void)encodeBool:(BOOL)a3 forKey:(id)a4;
- (void)encodeBycopyObject:(id)a3;
- (void)encodeByrefObject:(id)a3;
- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5;
- (void)encodeBytes:(const void *)a3 length:(unint64_t)a4;
- (void)encodeCGAffineTransform:(CGAffineTransform *)a3 forKey:(id)a4;
- (void)encodeCGPoint:(CGPoint)a3 forKey:(id)a4;
- (void)encodeCGRect:(CGRect)a3 forKey:(id)a4;
- (void)encodeCGSize:(CGSize)a3 forKey:(id)a4;
- (void)encodeConditionalObject:(id)a3;
- (void)encodeConditionalObject:(id)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeInt32:(int)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeInt:(int)a3 forKey:(id)a4;
- (void)encodeInteger:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)encodeRootObject:(id)a3;
- (void)encodeUIEdgeInsets:(UIEdgeInsets)a3 forKey:(id)a4;
- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4;
- (void)encodeValuesOfObjCTypes:(const char *)a3;
- (void)finishEncoding;
- (void)serializeArray:(id)a3;
- (void)serializeDictionary:(id)a3;
- (void)serializeObject:(id)a3;
- (void)serializeSet:(id)a3;
@end

@implementation UINibEncoder

- (id)initForWritingWithMutableData:(id)a3
{
  v12.receiver = self;
  v12.super_class = UINibEncoder;
  v4 = [(UINibEncoder *)&v12 init];
  if (v4)
  {
    v4->data = a3;
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

- (id)assignObjectIDForObject:(id)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->nextObjectID];
  CFDictionarySetValue(self->objectsToObjectIDs, a3, v5);
  CFDictionarySetValue(self->objectIDsToObjects, v5, a3);
  ++self->nextObjectID;
  return v5;
}

- (Class)encodedClassForObject:(id)a3
{
  result = [a3 classForKeyedArchiver];
  if (!result)
  {

    return objc_opt_class();
  }

  return result;
}

- (id)encodedClassNameForObject:(id)a3
{
  v4 = [(UINibEncoder *)self encodedClassForObject:a3];

  return [(UINibEncoder *)self encodedClassNameForClass:v4];
}

- (BOOL)object:(id)a3 encodesAsMemberAndWithCoderOfClass:(Class)a4
{
  if ([a3 classForKeyedArchiver] != a4)
  {
    return 0;
  }

  return [(UINibEncoder *)self object:a3 encodesWithCoderFromClass:a4];
}

- (BOOL)shouldUniqueObjectByValue:(id)a3
{
  if ([(UINibEncoder *)self object:a3 encodesAsMemberAndWithCoderOfClass:objc_opt_class()])
  {
    return 1;
  }

  v6 = objc_opt_class();

  return [(UINibEncoder *)self object:a3 encodesAsMemberAndWithCoderOfClass:v6];
}

- (id)replacementObjectForObject:(id)a3 forKey:(id)a4
{
  if (!CFSetContainsValue(self->objectsReplacedWithNil, a3) && !CFDictionaryContainsKey(self->replacements, a3))
  {
    if ([(UINibEncoder *)self objectIDForObject:a3])
    {
      return a3;
    }

    if ([(UINibEncoder *)self shouldUniqueObjectByValue:a3])
    {
      Value = CFSetGetValue(self->objectsUniquedByValue, a3);
      if (Value)
      {
        goto LABEL_12;
      }

      CFSetAddValue(self->objectsUniquedByValue, a3);
    }

    Value = [a3 replacementObjectForCoder:self];
    if (!Value)
    {
LABEL_19:
      CFSetAddValue(self->objectsReplacedWithNil, a3);
      return 0;
    }

LABEL_12:
    v9 = Value;
    if (!self->delegate || ((v11 = objc_opt_respondsToSelector(), objectIDsToObjects = self->objectIDsToObjects, v13 = UINumberWithNibArchiveIndex(self->recursiveState.currentObjectID), v14 = CFDictionaryGetValue(objectIDsToObjects, v13), delegate = self->delegate, (v11 & 1) == 0) ? (v16 = [delegate nibCoder:self willEncodeObject:{v9, v14}]) : (v16 = objc_msgSend(delegate, "nibCoder:willEncodeObject:forObject:forKey:", self, v9, v14, a4)), (v9 = v16) != 0))
    {
      CFDictionarySetValue(self->replacements, a3, v9);
      if (![(UINibEncoder *)self objectIDForObject:v9])
      {
        [(UINibEncoder *)self assignObjectIDForObject:v9];
      }

      return v9;
    }

    goto LABEL_19;
  }

  replacements = self->replacements;

  return CFDictionaryGetValue(replacements, a3);
}

- (void)serializeArray:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  [(UINibEncoder *)self encodeBool:1 forKey:@"NSInlinedValue"];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(a3);
        }

        [(UINibEncoder *)self encodeObject:*(*(&v9 + 1) + 8 * v8++) forKey:@"UINibEncoderEmptyKey"];
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)serializeDictionary:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [a3 allKeys];
  if ([(UINibEncoder *)self isUnorderedCollectionSortingEnabled]&& UIAreObjectsSortableForEncoding(v5))
  {
    v5 = [v5 sortedArrayUsingSelector:sel_compare_];
  }

  [(UINibEncoder *)self encodeBool:1 forKey:@"NSInlinedValue"];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [(UINibEncoder *)self encodeObject:v10 forKey:@"UINibEncoderEmptyKey"];
        -[UINibEncoder encodeObject:forKey:](self, "encodeObject:forKey:", [a3 objectForKey:v10], @"UINibEncoderEmptyKey");
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)serializeSet:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a3 allObjects];
  if ([(UINibEncoder *)self isUnorderedCollectionSortingEnabled]&& UIAreObjectsSortableForEncoding(v4))
  {
    v4 = [v4 sortedArrayUsingSelector:sel_compare_];
  }

  [(UINibEncoder *)self encodeBool:1 forKey:@"NSInlinedValue"];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(UINibEncoder *)self encodeObject:*(*(&v9 + 1) + 8 * v8++) forKey:@"UINibEncoderEmptyKey"];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)serializeObject:(id)a3
{
  if ([(UINibEncoder *)self object:a3 encodesWithCoderFromClass:objc_opt_class()])
  {

    [(UINibEncoder *)self serializeArray:a3];
  }

  else if ([(UINibEncoder *)self object:a3 encodesWithCoderFromClass:objc_opt_class()])
  {

    [(UINibEncoder *)self serializeDictionary:a3];
  }

  else if ([(UINibEncoder *)self object:a3 encodesWithCoderFromClass:objc_opt_class()])
  {

    [(UINibEncoder *)self serializeSet:a3];
  }

  else
  {

    [a3 encodeWithCoder:self];
  }
}

+ (id)archivedDataWithRootObject:(id)a3
{
  v5 = [MEMORY[0x1E695DF88] data];
  v6 = [[a1 alloc] initForWritingWithMutableData:v5];
  [v6 encodeObject:a3 forKey:@"object"];
  [v6 finishEncoding];
  return v5;
}

+ (BOOL)archiveRootObject:(id)a3 toFile:(id)a4
{
  v5 = [a1 archivedDataWithRootObject:a3];

  return [v5 writeToFile:a4 atomically:1];
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

  v23 = [MEMORY[0x1E695DF90] dictionary];
  v24 = [MEMORY[0x1E695DF90] dictionary];
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
      [v23 setObject:v30 forKey:{CFDictionaryGetValue(v3, v28)}];
      if (![v24 objectForKey:v30])
      {
        v31 = [(objc_class *)v29 classFallbacksForKeyedArchiver];
        if ([v31 count])
        {
          [v24 setObject:v31 forKey:v30];
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
  UIWriteArchiveToData(self->data, 1, v23, v24, self->values, @"UINibEncoderEmptyKey");
}

- (int64_t)versionForClassName:(id)a3
{
  v3 = NSClassFromString(a3);
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(objc_class *)v3 version];
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  if (a3 && (v7 = [(UINibEncoder *)self replacementObjectForObject:a3 forKey:a4]) != 0)
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
      [(UINibEncoder *)self appendValue:[UINibCoderValue nibValueForObjectReference:UINibArchiveIndexFromNumber(v9) key:a4 scope:self->recursiveState.currentObjectID]];
      recursiveState = self->recursiveState;
      self->recursiveState = 0;
      self->recursiveState.currentObjectID = UINibArchiveIndexFromNumber(v9);
      [(UINibEncoder *)self serializeObject:v8];
      self->recursiveState = recursiveState;
      return;
    }

    v10 = [UINibCoderValue nibValueForObjectReference:UINibArchiveIndexFromNumber(v9) key:a4 scope:self->recursiveState.currentObjectID];
  }

  else
  {
    v10 = [UINibCoderValue nibValueRepresentingNilReferenceForKey:a4 scope:self->recursiveState.currentObjectID];
  }

  [(UINibEncoder *)self appendValue:v10];
}

- (void)encodeConditionalObject:(id)a3 forKey:(id)a4
{
  if (!a3)
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

  v10 = [(UINibEncoder *)self replacementObjectForObject:a3 forKey:a4];
  if (v10)
  {
    v11 = v10;
    v12 = [(UINibEncoder *)self objectIDForObject:v10];
    if (!v12)
    {
      v12 = [(UINibEncoder *)self assignObjectIDForObject:v11];
    }

    v13 = [UINibCoderValue nibValueForObjectReference:UINibArchiveIndexFromNumber(v12) key:a4 scope:self->recursiveState.currentObjectID];
  }

  else
  {
LABEL_9:
    v13 = [UINibCoderValue nibValueRepresentingNilReferenceForKey:a4 scope:self->recursiveState.currentObjectID];
  }

  [(UINibEncoder *)self appendValue:v13];
}

- (void)encodeBool:(BOOL)a3 forKey:(id)a4
{
  v5 = [UINibCoderValue nibValueForBoolean:a3 key:a4 scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeInt:(int)a3 forKey:(id)a4
{
  v5 = [UINibCoderValue nibValueForInteger:a3 key:a4 scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeInt32:(int)a3 forKey:(id)a4
{
  v5 = [UINibCoderValue nibValueForInteger:a3 key:a4 scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v5 = [UINibCoderValue nibValueForInteger:a3 key:a4 scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeInteger:(int64_t)a3 forKey:(id)a4
{
  v5 = [UINibCoderValue nibValueForInteger:a3 key:a4 scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  v5 = [UINibCoderValue nibValueForFloat:a4 key:self->recursiveState.currentObjectID scope:?];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  v5 = [UINibCoderValue nibValueForDouble:a4 key:self->recursiveState.currentObjectID scope:a3];

  [(UINibEncoder *)self appendValue:v5];
}

- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5
{
  v6 = [UINibCoderValue nibValueForBytes:a3 length:a4 key:a5 scope:self->recursiveState.currentObjectID];

  [(UINibEncoder *)self appendValue:v6];
}

- (void)encodeArrayOfDoubles:(double *)a3 count:(int64_t)a4 forKey:(id)a5
{
  v9 = [MEMORY[0x1E695DF88] data];
  v12 = 7;
  [v9 appendBytes:&v12 length:1];
  if (a4 >= 1)
  {
    do
    {
      v10 = *a3++;
      v11 = v10;
      [v9 appendBytes:&v11 length:8];
      --a4;
    }

    while (a4);
  }

  -[UINibEncoder encodeBytes:length:forKey:](self, "encodeBytes:length:forKey:", [v9 bytes], objc_msgSend(v9, "length"), a5);
}

- (void)encodeArrayOfFloats:(float *)a3 count:(int64_t)a4 forKey:(id)a5
{
  v9 = [MEMORY[0x1E695DF88] data];
  v12 = 6;
  [v9 appendBytes:&v12 length:1];
  if (a4 >= 1)
  {
    do
    {
      v10 = *a3++;
      v11 = v10;
      [v9 appendBytes:&v11 length:4];
      --a4;
    }

    while (a4);
  }

  -[UINibEncoder encodeBytes:length:forKey:](self, "encodeBytes:length:forKey:", [v9 bytes], objc_msgSend(v9, "length"), a5);
}

- (void)encodeCGPoint:(CGPoint)a3 forKey:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UINibEncoder *)self encodeArrayOfCGFloats:&v4 count:2 forKey:a4];
}

- (void)encodeCGSize:(CGSize)a3 forKey:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UINibEncoder *)self encodeArrayOfCGFloats:&v4 count:2 forKey:a4];
}

- (void)encodeCGRect:(CGRect)a3 forKey:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UINibEncoder *)self encodeArrayOfCGFloats:&v4 count:4 forKey:a4];
}

- (void)encodeCGAffineTransform:(CGAffineTransform *)a3 forKey:(id)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v4;
  v5[2] = *&a3->tx;
  [(UINibEncoder *)self encodeArrayOfCGFloats:v5 count:6 forKey:a4];
}

- (void)encodeUIEdgeInsets:(UIEdgeInsets)a3 forKey:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UINibEncoder *)self encodeArrayOfCGFloats:&v4 count:4 forKey:a4];
}

- (id)nextGenericKey
{
  v2 = MEMORY[0x1E696AEC0];
  nextAnonymousKey = self->recursiveState.nextAnonymousKey;
  self->recursiveState.nextAnonymousKey = nextAnonymousKey + 1;
  return [v2 stringWithFormat:@"$%ld", nextAnonymousKey];
}

- (void)encodeObject:(id)a3
{
  v5 = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeObject:a3 forKey:v5];
}

- (void)encodeRootObject:(id)a3
{
  v5 = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeObject:a3 forKey:v5];
}

- (void)encodeBycopyObject:(id)a3
{
  v5 = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeObject:a3 forKey:v5];
}

- (void)encodeByrefObject:(id)a3
{
  v5 = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeObject:a3 forKey:v5];
}

- (void)encodeConditionalObject:(id)a3
{
  v5 = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeConditionalObject:a3 forKey:v5];
}

- (void)encodeValuesOfObjCTypes:(const char *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];

  [v5 handleFailureInMethod:a2 object:self file:@"UINibEncoder.m" lineNumber:512 description:&stru_1F01AD578];
}

- (void)encodeArrayOfObjCType:(const char *)a3 count:(unint64_t)a4 at:(const void *)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];

  [v7 handleFailureInMethod:a2 object:self file:@"UINibEncoder.m" lineNumber:516 description:&stru_1F01AD578];
}

- (void)encodeBytes:(const void *)a3 length:(unint64_t)a4
{
  v7 = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeBytes:a3 length:a4 forKey:v7];
}

- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4
{
  if (strlen(a3) != 1)
  {
    [UINibEncoder encodeValueOfObjCType:at:];
  }

  v7 = *a3;
  if (v7 <= 0x63)
  {
    if (*a3 > 0x3Fu)
    {
      if (v7 != 64)
      {
        if (v7 != 66)
        {
          goto LABEL_37;
        }

        v10 = *a4;
        v11 = [(UINibEncoder *)self nextGenericKey];

        [(UINibEncoder *)self encodeBool:v10 forKey:v11];
        return;
      }

      v9 = *a4;
    }

    else
    {
      if (v7 == 42)
      {
        v13 = *a4;
        v14 = strlen(v13);
        v15 = [(UINibEncoder *)self nextGenericKey];

        [(UINibEncoder *)self encodeBytes:v13 length:v14 + 1 forKey:v15];
        return;
      }

      if (v7 != 58)
      {
        goto LABEL_37;
      }

      v9 = NSStringFromSelector(*a4);
    }

    v16 = [(UINibEncoder *)self nextGenericKey];

    [(UINibEncoder *)self encodeObject:v9 forKey:v16];
    return;
  }

  if (*a3 > 0x68u)
  {
    switch(v7)
    {
      case 'i':
        v8 = *a4;
        goto LABEL_33;
      case 'q':
        v8 = *a4;
        goto LABEL_33;
      case 's':
        v8 = *a4;
LABEL_33:
        v18 = [(UINibEncoder *)self nextGenericKey];

        [(UINibEncoder *)self encodeInteger:v8 forKey:v18];
        return;
    }

LABEL_37:
    [UINibEncoder encodeValueOfObjCType:at:];
  }

  if (v7 == 100)
  {
    v12 = *a4;
  }

  else
  {
    if (v7 != 102)
    {
      goto LABEL_37;
    }

    v12 = *a4;
  }

  v17 = [(UINibEncoder *)self nextGenericKey];

  [(UINibEncoder *)self encodeDouble:v17 forKey:v12];
}

- (uint64_t)encodeObject:(uint64_t)a1 forKey:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"UINibEncoder.m" lineNumber:357 description:@"This should have been assigned in replacementObjectForObject:forKey:"];
}

@end