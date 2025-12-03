@interface PSANEChainedBufferStream
+ (id)aneStreamWithResourceKey:(id)key options:(ps_resource_options *)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (PSANEChainedBufferStream)init;
- (PSANEChainedBufferStream)initWithCoder:(id)coder;
- (__IOSurface)allocateIOSurfaceRefArray;
- (void)dealloc;
- (void)deallocateIOSurfaceRefArray;
- (void)encodeWithCoder:(id)coder;
- (void)setAllocator:(id)allocator;
- (void)setNumberOfBufferSet:(unsigned int)set numberOfSurfaceInSet:(unsigned int)inSet metadataSurfaceIndex:(unsigned int)index;
@end

@implementation PSANEChainedBufferStream

- (PSANEChainedBufferStream)init
{
  v5.receiver = self;
  v5.super_class = PSANEChainedBufferStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:10];
  }

  return v3;
}

- (void)dealloc
{
  iosurfaceref_array = self->_iosurfaceref_array;
  if (iosurfaceref_array)
  {
    free(iosurfaceref_array);
  }

  v4.receiver = self;
  v4.super_class = PSANEChainedBufferStream;
  [(PSANEChainedBufferStream *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PSANEChainedBufferStream;
  [(PSResourceStream *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_metadataSurfaceIndex forKey:@"metadataSurfaceIndex"];
  [coderCopy encodeInt32:self->_firstEventValue forKey:@"firstEventValue"];
  [coderCopy encodeInt32:self->_numberOfSurfaceInSet forKey:@"numberOfSurfaceInSet"];
  [coderCopy encodeInt32:self->_numberOfBufferSet forKey:@"numberOfBufferSet"];
  [coderCopy encodeInt32:self->_eventPort forKey:@"eventPort"];
}

- (PSANEChainedBufferStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PSANEChainedBufferStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:10];
    v6->_metadataSurfaceIndex = [coderCopy decodeInt32ForKey:@"metadataSurfaceIndex"];
    v6->_firstEventValue = [coderCopy decodeInt32ForKey:@"firstEventValue"];
    v6->_numberOfSurfaceInSet = [coderCopy decodeInt32ForKey:@"numberOfSurfaceInSet"];
    v6->_numberOfBufferSet = [coderCopy decodeInt32ForKey:@"numberOfBufferSet"];
    v6->_eventPort = [coderCopy decodeInt32ForKey:@"eventPort"];
    v7 = v6;
  }

  return v6;
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
    v10.receiver = self;
    v10.super_class = PSANEChainedBufferStream;
    if ([(PSResourceStream *)&v10 isEqual:v6])
    {
      eventPort = self->_eventPort;
      v8 = eventPort == [(PSANEChainedBufferStream *)v6 eventPort];
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

+ (id)aneStreamWithResourceKey:(id)key options:(ps_resource_options *)options
{
  keyCopy = key;
  v6 = objc_alloc_init(PSANEChainedBufferStream);
  [(PSResourceStream *)v6 setKey:keyCopy];
  [(PSResourceStream *)v6 setOptions:options->storage_mode, options->creation_mode];

  return v6;
}

- (void)setNumberOfBufferSet:(unsigned int)set numberOfSurfaceInSet:(unsigned int)inSet metadataSurfaceIndex:(unsigned int)index
{
  self->_metadataSurfaceIndex = index;
  self->_numberOfSurfaceInSet = inSet;
  self->_numberOfBufferSet = set;
}

- (void)setAllocator:(id)allocator
{
  v4 = MEMORY[0x25F8CC5B0](allocator, a2);
  allocator = self->_allocator;
  self->_allocator = v4;

  MEMORY[0x2821F96F8]();
}

- (__IOSurface)allocateIOSurfaceRefArray
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_calloc(self->_numberOfSurfaceInSet * self->_numberOfBufferSet, 8uLL, 0x2004093837F09uLL);
  self->_iosurfaceref_array = v3;
  if (v3)
  {
    numberOfBufferSet = self->_numberOfBufferSet;
    v5 = (*(self->_allocator + 2))();
    v6 = v5;
    if (v5)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v5;
      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v7)
      {
        v8 = 0;
        v20 = *v27;
        do
        {
          v9 = 0;
          v21 = v7;
          do
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v26 + 1) + 8 * v9);
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v11 = v10;
            v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v12)
            {
              v13 = *v23;
              do
              {
                v14 = 0;
                v15 = v8;
                do
                {
                  if (*v23 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  self->_iosurfaceref_array[v15++] = *(*(&v22 + 1) + 8 * v14++);
                  ++v8;
                }

                while (v12 != v14);
                v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v12);
            }

            ++v9;
          }

          while (v9 != v21);
          v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v7);
      }

      iosurfaceref_array = self->_iosurfaceref_array;
    }

    else
    {
      iosurfaceref_array = 0;
    }
  }

  else
  {
    iosurfaceref_array = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return iosurfaceref_array;
}

- (void)deallocateIOSurfaceRefArray
{
  iosurfaceref_array = self->_iosurfaceref_array;
  if (iosurfaceref_array)
  {
    free(iosurfaceref_array);
    self->_iosurfaceref_array = 0;
  }
}

- (BOOL)validate:(id *)validate
{
  if ([(PSResourceStream *)self resourceClass]!= 10)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (!validate)
    {
      goto LABEL_23;
    }

LABEL_22:
    *validate = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v9];
    goto LABEL_23;
  }

  v5 = [(PSResourceStream *)self key];

  if (!v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
    if (!validate)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  [(PSResourceStream *)self options];
  if (!v6)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
    if (!validate)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if ([(PSResourceStream *)self options]== 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
    if (!validate)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (![(PSANEChainedBufferStream *)self numberOfBufferSet])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"numberOfBufferSet is zero for this stream"];
    if (!validate)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (![(PSANEChainedBufferStream *)self numberOfSurfaceInSet])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"numberOfSurfaceInSet is zero for this stream"];
    if (!validate)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  metadataSurfaceIndex = [(PSANEChainedBufferStream *)self metadataSurfaceIndex];
  if (metadataSurfaceIndex < [(PSANEChainedBufferStream *)self numberOfSurfaceInSet])
  {
    return 1;
  }
  v9 = ;
  if (validate)
  {
    goto LABEL_22;
  }

LABEL_23:

  return 0;
}

@end