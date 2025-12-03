@interface PSOpaqueStream
+ (id)opaqueStreamWithKey:(char *)key allocator:(void *)allocator deallocator:(void *)deallocator;
+ (id)opaqueStreamWithResourceKey:(id)key allocator:(void *)allocator deallocator:(void *)deallocator;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (PSOpaqueStream)init;
- (PSOpaqueStream)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSOpaqueStream

- (PSOpaqueStream)init
{
  v5.receiver = self;
  v5.super_class = PSOpaqueStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:3];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = PSOpaqueStream;
  [(PSResourceStream *)&v3 encodeWithCoder:coder];
}

- (PSOpaqueStream)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PSOpaqueStream;
  return [(PSResourceStream *)&v4 initWithCoder:coder];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v11.receiver = self;
    v11.super_class = PSOpaqueStream;
    if ([(PSResourceStream *)&v11 isEqual:v6]&& (allocator = self->_allocator, allocator == [(PSOpaqueStream *)v6 allocator]))
    {
      deallocator = self->_deallocator;
      v8 = deallocator == [(PSOpaqueStream *)v6 deallocator];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)opaqueStreamWithKey:(char *)key allocator:(void *)allocator deallocator:(void *)deallocator
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
  v8 = [PSOpaqueStream opaqueStreamWithResourceKey:v7 allocator:allocator deallocator:deallocator];

  return v8;
}

+ (id)opaqueStreamWithResourceKey:(id)key allocator:(void *)allocator deallocator:(void *)deallocator
{
  keyCopy = key;
  v8 = objc_alloc_init(PSOpaqueStream);
  [(PSResourceStream *)v8 setKey:keyCopy];
  v8->_allocator = allocator;
  v8->_deallocator = deallocator;
  [(PSResourceStream *)v8 setOptions:1, 2];

  return v8;
}

- (BOOL)validate:(id *)validate
{
  if ([(PSResourceStream *)self resourceClass]== 3)
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
            v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"X-process sharing mode (options.storage_mode) not supported for opaque stream"];
            if (validate)
            {
LABEL_23:
              *validate = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v7];
            }
          }

          else
          {
            [(PSResourceStream *)self options];
            if (v8 == 2)
            {
              if (self->_allocator && self->_deallocator)
              {
                return 1;
              }

              v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Allocator and Deallocator required"];
              if (validate)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Only allocation mode (options.creation_mode) supported for opaque stream"];
              if (validate)
              {
                goto LABEL_23;
              }
            }
          }
        }

        else
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
          if (validate)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
        if (validate)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
      if (validate)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (validate)
    {
      goto LABEL_23;
    }
  }

  return 0;
}

@end