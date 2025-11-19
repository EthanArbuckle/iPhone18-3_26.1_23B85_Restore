@interface PSObjectStream
+ (id)objectStreamWithKey:(char *)a3 allocator:(id)a4 deallocator:(id)a5;
+ (id)objectStreamWithKey:(id)a3 withClass:(Class)a4;
+ (id)objectStreamWithResourceKey:(id)a3 allocator:(id)a4 deallocator:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (PSObjectStream)init;
- (PSObjectStream)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = PSObjectStream;
  [(PSResourceStream *)&v3 encodeWithCoder:a3];
}

- (PSObjectStream)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PSObjectStream;
  return [(PSResourceStream *)&v4 initWithCoder:a3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = PSObjectStream;
    if ([(PSResourceStream *)&v13 isEqual:v6])
    {
      retainableAllocator = self->_retainableAllocator;
      v8 = [(PSObjectStream *)v6 retainableAllocator];
      if (retainableAllocator == v8)
      {
        retainableDeallocator = self->_retainableDeallocator;
        v11 = [(PSObjectStream *)v6 retainableDeallocator];
        v9 = retainableDeallocator == v11;
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

+ (id)objectStreamWithKey:(char *)a3 allocator:(id)a4 deallocator:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a3];
  v10 = [PSObjectStream objectStreamWithResourceKey:v9 allocator:v7 deallocator:v8];

  return v10;
}

+ (id)objectStreamWithResourceKey:(id)a3 allocator:(id)a4 deallocator:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PSObjectStream);
  [(PSResourceStream *)v10 setKey:v7];
  v11 = MEMORY[0x25F8CC5B0](v8);
  retainableAllocator = v10->_retainableAllocator;
  v10->_retainableAllocator = v11;

  v13 = MEMORY[0x25F8CC5B0](v9);
  retainableDeallocator = v10->_retainableDeallocator;
  v10->_retainableDeallocator = v13;

  [(PSResourceStream *)v10 setOptions:1, 2];

  return v10;
}

+ (id)objectStreamWithKey:(id)a3 withClass:(Class)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PSObjectStream_objectStreamWithKey_withClass___block_invoke;
  v6[3] = &__block_descriptor_40_e48___NSArray_24__0___PSResourceStreamProtocol__8Q16lu32l8;
  v6[4] = a4;
  v4 = [PSObjectStream objectStreamWithResourceKey:a3 allocator:v6 deallocator:0];

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

- (BOOL)validate:(id *)a3
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
            if (a3)
            {
LABEL_22:
              *a3 = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v7];
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
              if (a3)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Only allocation mode (options.creation_mode) supported for object stream"];
              if (a3)
              {
                goto LABEL_22;
              }
            }
          }
        }

        else
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
          if (a3)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
        if (a3)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
      if (a3)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (a3)
    {
      goto LABEL_22;
    }
  }

  return 0;
}

@end