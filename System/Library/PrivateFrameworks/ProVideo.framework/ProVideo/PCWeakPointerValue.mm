@interface PCWeakPointerValue
+ (id)arrayFromWeakPointerValueArray:(id)array;
+ (id)setFromWeakPointerValueSet:(id)set;
+ (id)valueWithNonretainedObject:(id)object;
+ (id)valueWithPointer:(void *)pointer;
+ (id)weakPointerValueArrayFromArray:(id)array;
+ (id)weakPointerValueSetFromSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (PCWeakPointerValue)initWithNonretainedObject:(id)object;
- (PCWeakPointerValue)initWithPointer:(void *)pointer;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation PCWeakPointerValue

- (PCWeakPointerValue)initWithNonretainedObject:(id)object
{
  v7.receiver = self;
  v7.super_class = PCWeakPointerValue;
  v4 = [(PCWeakPointerValue *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_pointerValue = object;
    objc_storeWeak(&v4->_zeroingWeakValue, object);
    v5->_hasZeroingWeakReference = 1;
  }

  return v5;
}

- (PCWeakPointerValue)initWithPointer:(void *)pointer
{
  v5.receiver = self;
  v5.super_class = PCWeakPointerValue;
  result = [(PCWeakPointerValue *)&v5 init];
  if (result)
  {
    result->_pointerValue = pointer;
    result->_zeroingWeakValue = 0;
  }

  return result;
}

- (void)dealloc
{
  if (self->_hasZeroingWeakReference)
  {
    objc_storeWeak(&self->_zeroingWeakValue, 0);
  }

  v3.receiver = self;
  v3.super_class = PCWeakPointerValue;
  [(PCWeakPointerValue *)&v3 dealloc];
}

+ (id)valueWithNonretainedObject:(id)object
{
  v3 = [objc_alloc(objc_opt_class()) initWithNonretainedObject:object];

  return v3;
}

+ (id)valueWithPointer:(void *)pointer
{
  v3 = [objc_alloc(objc_opt_class()) initWithPointer:pointer];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  v5 = objc_opt_class();
  return v5 == objc_opt_class() && self->_pointerValue == *(equal + 1);
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[PCWeakPointerValue allocWithZone:?], "initWithNonretainedObject:", [(PCWeakPointerValue *)self nonretainedObjectValue]];
  *(result + 1) = self->_pointerValue;
  return result;
}

+ (id)weakPointerValueArrayFromArray:(id)array
{
  v15 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [array countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(array);
        }

        [array addObject:{+[PCWeakPointerValue valueWithNonretainedObject:](PCWeakPointerValue, "valueWithNonretainedObject:", *(*(&v10 + 1) + 8 * v8++))}];
      }

      while (v6 != v8);
      v6 = [array countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return array;
}

+ (id)arrayFromWeakPointerValueArray:(id)array
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [array countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(array);
        }

        nonretainedObjectValue = [*(*(&v11 + 1) + 8 * v8) nonretainedObjectValue];
        if (nonretainedObjectValue)
        {
          [array addObject:nonretainedObjectValue];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [array countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

+ (id)weakPointerValueSetFromSet:(id)set
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [set countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(set);
        }

        [v4 addObject:{+[PCWeakPointerValue valueWithNonretainedObject:](PCWeakPointerValue, "valueWithNonretainedObject:", *(*(&v10 + 1) + 8 * v8++))}];
      }

      while (v6 != v8);
      v6 = [set countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)setFromWeakPointerValueSet:(id)set
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [set countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(set);
        }

        nonretainedObjectValue = [*(*(&v11 + 1) + 8 * v8) nonretainedObjectValue];
        if (nonretainedObjectValue)
        {
          [v4 addObject:nonretainedObjectValue];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [set countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

@end