@interface PSANEChainedBufferStream
+ (id)aneStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (PSANEChainedBufferStream)init;
- (PSANEChainedBufferStream)initWithCoder:(id)a3;
- (__IOSurface)allocateIOSurfaceRefArray;
- (void)dealloc;
- (void)deallocateIOSurfaceRefArray;
- (void)encodeWithCoder:(id)a3;
- (void)setAllocator:(id)a3;
- (void)setNumberOfBufferSet:(unsigned int)a3 numberOfSurfaceInSet:(unsigned int)a4 metadataSurfaceIndex:(unsigned int)a5;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PSANEChainedBufferStream;
  [(PSResourceStream *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_metadataSurfaceIndex forKey:@"metadataSurfaceIndex"];
  [v4 encodeInt32:self->_firstEventValue forKey:@"firstEventValue"];
  [v4 encodeInt32:self->_numberOfSurfaceInSet forKey:@"numberOfSurfaceInSet"];
  [v4 encodeInt32:self->_numberOfBufferSet forKey:@"numberOfBufferSet"];
  [v4 encodeInt32:self->_eventPort forKey:@"eventPort"];
}

- (PSANEChainedBufferStream)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PSANEChainedBufferStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:10];
    v6->_metadataSurfaceIndex = [v4 decodeInt32ForKey:@"metadataSurfaceIndex"];
    v6->_firstEventValue = [v4 decodeInt32ForKey:@"firstEventValue"];
    v6->_numberOfSurfaceInSet = [v4 decodeInt32ForKey:@"numberOfSurfaceInSet"];
    v6->_numberOfBufferSet = [v4 decodeInt32ForKey:@"numberOfBufferSet"];
    v6->_eventPort = [v4 decodeInt32ForKey:@"eventPort"];
    v7 = v6;
  }

  return v6;
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

+ (id)aneStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PSANEChainedBufferStream);
  [(PSResourceStream *)v6 setKey:v5];
  [(PSResourceStream *)v6 setOptions:a4->storage_mode, a4->creation_mode];

  return v6;
}

- (void)setNumberOfBufferSet:(unsigned int)a3 numberOfSurfaceInSet:(unsigned int)a4 metadataSurfaceIndex:(unsigned int)a5
{
  self->_metadataSurfaceIndex = a5;
  self->_numberOfSurfaceInSet = a4;
  self->_numberOfBufferSet = a3;
}

- (void)setAllocator:(id)a3
{
  v4 = MEMORY[0x25F8CC5B0](a3, a2);
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

- (BOOL)validate:(id *)a3
{
  if ([(PSResourceStream *)self resourceClass]!= 10)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (!a3)
    {
      goto LABEL_23;
    }

LABEL_22:
    *a3 = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v9];
    goto LABEL_23;
  }

  v5 = [(PSResourceStream *)self key];

  if (!v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
    if (!a3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  [(PSResourceStream *)self options];
  if (!v6)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
    if (!a3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if ([(PSResourceStream *)self options]== 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
    if (!a3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (![(PSANEChainedBufferStream *)self numberOfBufferSet])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"numberOfBufferSet is zero for this stream"];
    if (!a3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (![(PSANEChainedBufferStream *)self numberOfSurfaceInSet])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"numberOfSurfaceInSet is zero for this stream"];
    if (!a3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v7 = [(PSANEChainedBufferStream *)self metadataSurfaceIndex];
  if (v7 < [(PSANEChainedBufferStream *)self numberOfSurfaceInSet])
  {
    return 1;
  }
  v9 = ;
  if (a3)
  {
    goto LABEL_22;
  }

LABEL_23:

  return 0;
}

@end