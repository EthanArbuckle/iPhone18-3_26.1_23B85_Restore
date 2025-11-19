@interface PSOpaqueStream
+ (id)opaqueStreamWithKey:(char *)a3 allocator:(void *)a4 deallocator:(void *)a5;
+ (id)opaqueStreamWithResourceKey:(id)a3 allocator:(void *)a4 deallocator:(void *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (PSOpaqueStream)init;
- (PSOpaqueStream)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = PSOpaqueStream;
  [(PSResourceStream *)&v3 encodeWithCoder:a3];
}

- (PSOpaqueStream)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PSOpaqueStream;
  return [(PSResourceStream *)&v4 initWithCoder:a3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

+ (id)opaqueStreamWithKey:(char *)a3 allocator:(void *)a4 deallocator:(void *)a5
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a3];
  v8 = [PSOpaqueStream opaqueStreamWithResourceKey:v7 allocator:a4 deallocator:a5];

  return v8;
}

+ (id)opaqueStreamWithResourceKey:(id)a3 allocator:(void *)a4 deallocator:(void *)a5
{
  v7 = a3;
  v8 = objc_alloc_init(PSOpaqueStream);
  [(PSResourceStream *)v8 setKey:v7];
  v8->_allocator = a4;
  v8->_deallocator = a5;
  [(PSResourceStream *)v8 setOptions:1, 2];

  return v8;
}

- (BOOL)validate:(id *)a3
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
            if (a3)
            {
LABEL_23:
              *a3 = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v7];
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
              if (a3)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Only allocation mode (options.creation_mode) supported for opaque stream"];
              if (a3)
              {
                goto LABEL_23;
              }
            }
          }
        }

        else
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
          if (a3)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
        if (a3)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
      if (a3)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (a3)
    {
      goto LABEL_23;
    }
  }

  return 0;
}

@end