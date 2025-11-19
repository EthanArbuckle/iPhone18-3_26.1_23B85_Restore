@interface PCWeakPointerValue
+ (id)arrayFromWeakPointerValueArray:(id)a3;
+ (id)setFromWeakPointerValueSet:(id)a3;
+ (id)valueWithNonretainedObject:(id)a3;
+ (id)valueWithPointer:(void *)a3;
+ (id)weakPointerValueArrayFromArray:(id)a3;
+ (id)weakPointerValueSetFromSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PCWeakPointerValue)initWithNonretainedObject:(id)a3;
- (PCWeakPointerValue)initWithPointer:(void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation PCWeakPointerValue

- (PCWeakPointerValue)initWithNonretainedObject:(id)a3
{
  v7.receiver = self;
  v7.super_class = PCWeakPointerValue;
  v4 = [(PCWeakPointerValue *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_pointerValue = a3;
    objc_storeWeak(&v4->_zeroingWeakValue, a3);
    v5->_hasZeroingWeakReference = 1;
  }

  return v5;
}

- (PCWeakPointerValue)initWithPointer:(void *)a3
{
  v5.receiver = self;
  v5.super_class = PCWeakPointerValue;
  result = [(PCWeakPointerValue *)&v5 init];
  if (result)
  {
    result->_pointerValue = a3;
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

+ (id)valueWithNonretainedObject:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithNonretainedObject:a3];

  return v3;
}

+ (id)valueWithPointer:(void *)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithPointer:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v5 = objc_opt_class();
  return v5 == objc_opt_class() && self->_pointerValue == *(a3 + 1);
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[PCWeakPointerValue allocWithZone:?], "initWithNonretainedObject:", [(PCWeakPointerValue *)self nonretainedObjectValue]];
  *(result + 1) = self->_pointerValue;
  return result;
}

+ (id)weakPointerValueArrayFromArray:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(a3);
        }

        [v4 addObject:{+[PCWeakPointerValue valueWithNonretainedObject:](PCWeakPointerValue, "valueWithNonretainedObject:", *(*(&v10 + 1) + 8 * v8++))}];
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)arrayFromWeakPointerValueArray:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) nonretainedObjectValue];
        if (v9)
        {
          [v4 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)weakPointerValueSetFromSet:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(a3);
        }

        [v4 addObject:{+[PCWeakPointerValue valueWithNonretainedObject:](PCWeakPointerValue, "valueWithNonretainedObject:", *(*(&v10 + 1) + 8 * v8++))}];
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)setFromWeakPointerValueSet:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) nonretainedObjectValue];
        if (v9)
        {
          [v4 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

@end