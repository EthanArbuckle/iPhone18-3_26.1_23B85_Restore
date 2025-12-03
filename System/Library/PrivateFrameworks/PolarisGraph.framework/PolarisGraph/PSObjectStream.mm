@interface PSObjectStream
+ (id)objectStreamWithKey:(char *)key allocator:(id)allocator deallocator:(id)deallocator;
+ (id)objectStreamWithKey:(id)key withClass:(Class)class;
+ (id)objectStreamWithResourceKey:(id)key allocator:(id)allocator deallocator:(id)deallocator;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (PSObjectStream)init;
- (PSObjectStream)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSObjectStream

- (PSObjectStream)init
{
  v5.receiver = self;
  v5.super_class = PSObjectStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:2];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = PSObjectStream;
  [(PSResourceStream *)&v3 encodeWithCoder:coder];
}

- (PSObjectStream)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PSObjectStream;
  return [(PSResourceStream *)&v4 initWithCoder:coder];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = PSObjectStream;
    if ([(PSResourceStream *)&v13 isEqual:v6])
    {
      retainableAllocator = self->_retainableAllocator;
      retainableAllocator = [(PSObjectStream *)v6 retainableAllocator];
      if (retainableAllocator == retainableAllocator)
      {
        retainableDeallocator = self->_retainableDeallocator;
        retainableDeallocator = [(PSObjectStream *)v6 retainableDeallocator];
        v9 = retainableDeallocator == retainableDeallocator;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)objectStreamWithKey:(char *)key allocator:(id)allocator deallocator:(id)deallocator
{
  allocatorCopy = allocator;
  deallocatorCopy = deallocator;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
  v10 = [PSObjectStream objectStreamWithResourceKey:v9 allocator:allocatorCopy deallocator:deallocatorCopy];

  return v10;
}

+ (id)objectStreamWithResourceKey:(id)key allocator:(id)allocator deallocator:(id)deallocator
{
  keyCopy = key;
  allocatorCopy = allocator;
  deallocatorCopy = deallocator;
  v10 = objc_alloc_init(PSObjectStream);
  [(PSResourceStream *)v10 setKey:keyCopy];
  v11 = MEMORY[0x25F8CC5B0](allocatorCopy);
  retainableAllocator = v10->_retainableAllocator;
  v10->_retainableAllocator = v11;

  v13 = MEMORY[0x25F8CC5B0](deallocatorCopy);
  retainableDeallocator = v10->_retainableDeallocator;
  v10->_retainableDeallocator = v13;

  [(PSResourceStream *)v10 setOptions:1, 2];

  return v10;
}

+ (id)objectStreamWithKey:(id)key withClass:(Class)class
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PSObjectStream_objectStreamWithKey_withClass___block_invoke;
  v6[3] = &__block_descriptor_40_e48___NSArray_24__0___PSResourceStreamProtocol__8Q16lu32l8;
  v6[4] = class;
  v4 = [PSObjectStream objectStreamWithResourceKey:key allocator:v6 deallocator:0];

  return v4;
}

id __48__PSObjectStream_objectStreamWithKey_withClass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  if (a3)
  {
    v6 = 0;
    do
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_new();
      [v5 setObject:v8 atIndexedSubscript:v6];

      ++v6;
    }

    while (a3 != v6);
  }

  return v5;
}

- (BOOL)validate:(id *)validate
{
  if ([(PSResourceStream *)self resourceClass]== 2)
  {
    v5 = [(PSResourceStream *)self key];

    if (v5)
    {
      [(PSResourceStream *)self options];
      if (v6)
      {
        if ([(PSResourceStream *)self options])
        {
          if ([(PSResourceStream *)self options]== 2)
          {
            v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"X-process sharing mode (options.storage_mode) not supported for object stream"];
            if (validate)
            {
LABEL_22:
              *validate = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v7];
            }
          }

          else
          {
            [(PSResourceStream *)self options];
            if (v8 == 2)
            {
              if (self->_retainableAllocator)
              {
                return 1;
              }

              v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Allocator required"];
              if (validate)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Only allocation mode (options.creation_mode) supported for object stream"];
              if (validate)
              {
                goto LABEL_22;
              }
            }
          }
        }

        else
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
          if (validate)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
        if (validate)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
      if (validate)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (validate)
    {
      goto LABEL_22;
    }
  }

  return 0;
}

@end