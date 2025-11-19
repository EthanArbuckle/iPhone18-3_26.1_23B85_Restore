@interface PSResourceHeap
- (PSResourceHeap)init;
- (id)getResourceWrapper:(id)a3;
- (void)addResource:(id)a3 bytes:(void *)a4 size:(unint64_t)a5 timestamp:(unint64_t)a6;
- (void)addResource:(id)a3 bytes:(void *)a4 size:(unint64_t)a5 timestamp:(unint64_t)a6 withDeallocator:(id)a7;
- (void)addResource:(id)a3 dataBuffer:(__CVBuffer *)a4 timestamp:(unint64_t)a5;
- (void)addResource:(id)a3 mtlBuffer:(id)a4 timestamp:(unint64_t)a5;
- (void)addResource:(id)a3 mtlTexture:(id)a4 timestamp:(unint64_t)a5;
- (void)addResource:(id)a3 object:(id)a4 timestamp:(unint64_t)a5;
- (void)addResource:(id)a3 object:(id)a4 timestamp:(unint64_t)a5 deallocator:(id)a6;
- (void)addResource:(id)a3 opaquePointer:(void *)a4 timestamp:(unint64_t)a5 deallocator:(void *)a6;
- (void)addResource:(id)a3 pixelBuffer:(__CVBuffer *)a4 timestamp:(unint64_t)a5;
- (void)addResource:(id)a3 surface:(__IOSurface *)a4 timestamp:(unint64_t)a5;
- (void)createAndAddResource:(id)a3 timestamp:(unint64_t)a4;
- (void)dealloc;
- (void)getResource:(id)a3;
- (void)removeResourceKey:(id)a3;
- (void)replaceResource:(id)a3 bytes:(void *)a4 size:(unint64_t)a5 timestamp:(unint64_t)a6 withDeallocator:(id)a7;
- (void)replaceResource:(id)a3 dataBuffer:(__CVBuffer *)a4 timestamp:(unint64_t)a5;
- (void)replaceResource:(id)a3 object:(id)a4 timestamp:(unint64_t)a5 deallocator:(id)a6;
- (void)replaceResource:(id)a3 opaquePointer:(void *)a4 timestamp:(unint64_t)a5 deallocator:(void *)a6;
- (void)replaceResource:(id)a3 pixelBuffer:(__CVBuffer *)a4 timestamp:(unint64_t)a5;
- (void)replaceResource:(id)a3 surface:(__IOSurface *)a4 timestamp:(unint64_t)a5;
@end

@implementation PSResourceHeap

- (PSResourceHeap)init
{
  v8.receiver = self;
  v8.super_class = PSResourceHeap;
  v2 = [(PSResourceHeap *)&v8 init];
  if (v2)
  {
    v3 = MTLCreateSystemDefaultDevice();
    mtlDevice = v2->_mtlDevice;
    v2->_mtlDevice = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    resources = v2->_resources;
    v2->_resources = v5;
  }

  return v2;
}

- (void)removeResourceKey:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_resources objectForKey:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_resources removeObjectForKey:v5];
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  while ([(NSMutableDictionary *)self->_resources count])
  {
    memset(v7, 0, sizeof(v7));
    v3 = self->_resources;
    if ([(NSMutableDictionary *)v3 countByEnumeratingWithState:v7 objects:v8 count:16])
    {
      v4 = **(&v7[0] + 1);
      [(PSResourceHeap *)self removeResourceKey:v4];
    }
  }

  v6.receiver = self;
  v6.super_class = PSResourceHeap;
  [(PSResourceHeap *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addResource:(id)a3 bytes:(void *)a4 size:(unint64_t)a5 timestamp:(unint64_t)a6 withDeallocator:(id)a7
{
  v12 = a3;
  v20[0] = a4;
  v13 = a7;
  if (v13)
  {
    v14 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:v12];
    if (!v14)
    {
      v14 = objc_alloc_init(PSResourceWrapper);
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    v15 = MEMORY[0x25F8CC5B0](v13);
    v20[2] = v20;
    v16 = std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>([(PSResourceWrapper *)v14 data_deallocator_map], v20);
    v17 = v16[3];
    v16[3] = v15;

    a4 = v20[0];
  }

  v18 = [(PSResourceHeap *)self addResource:v12 bytes:a4 size:a5 timestamp:a6];

  return v18;
}

- (void)addResource:(id)a3 bytes:(void *)a4 size:(unint64_t)a5 timestamp:(unint64_t)a6
{
  v10 = a3;
  v11 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v11 forKeyedSubscript:v10];
  }

  v12 = [(PSResourceWrapper *)v11 resource];
  ps_resource::set_valid(v12, 1);
  count = ps_resource::get_count(v12);
  if (!count)
  {
    ps_resource::set_key(v12, [v10 UTF8String]);
    ps_resource::set_class(v12, 1);
  }

  ps_resource::resize(v12, count + 1);
  ps_resource::set_timestamp(v12, count, a6);
  ps_resource::set_data(v12, count, a4, a5);

  return v12;
}

- (void)replaceResource:(id)a3 bytes:(void *)a4 size:(unint64_t)a5 timestamp:(unint64_t)a6 withDeallocator:(id)a7
{
  v12 = a3;
  v13 = a7;
  [(PSResourceHeap *)self removeResourceKey:v12];
  v14 = [(PSResourceHeap *)self addResource:v12 bytes:a4 size:a5 timestamp:a6 withDeallocator:v13];

  return v14;
}

- (void)addResource:(id)a3 object:(id)a4 timestamp:(unint64_t)a5 deallocator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v19[0] = v11;
  v12 = a6;
  if (v12)
  {
    v13 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:v10];
    if (!v13)
    {
      v13 = objc_alloc_init(PSResourceWrapper);
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    v14 = MEMORY[0x25F8CC5B0](v12);
    v19[2] = v19;
    v15 = std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__emplace_unique_key_args<objc_object * {__strong},std::piecewise_construct_t const&,std::tuple<objc_object * const {__strong}&>,std::tuple<>>([(PSResourceWrapper *)v13 object_deallocator_map], v19);
    v16 = v15[3];
    v15[3] = v14;

    v11 = v19[0];
  }

  v17 = [(PSResourceHeap *)self addResource:v10 object:v11 timestamp:a5];

  return v17;
}

- (void)addResource:(id)a3 object:(id)a4 timestamp:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:v8];
  if (!v10)
  {
    v10 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v10 forKeyedSubscript:v8];
  }

  v11 = [(PSResourceWrapper *)v10 resource];
  ps_resource::set_valid(v11, 1);
  count = ps_resource::get_count(v11);
  if (!count)
  {
    ps_resource::set_key(v11, [v8 UTF8String]);
    ps_resource::set_class(v11, 2);
  }

  ps_resource::resize(v11, count + 1);
  ps_resource::set_timestamp(v11, count, a5);
  v13 = v9;
  ps_resource::set_object(v11, count, v13);

  return v11;
}

- (void)replaceResource:(id)a3 object:(id)a4 timestamp:(unint64_t)a5 deallocator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [(PSResourceHeap *)self removeResourceKey:v10];
  v13 = [(PSResourceHeap *)self addResource:v10 object:v11 timestamp:a5 deallocator:v12];

  return v13;
}

- (void)addResource:(id)a3 opaquePointer:(void *)a4 timestamp:(unint64_t)a5 deallocator:(void *)a6
{
  v10 = a3;
  v15[0] = a4;
  v11 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v11 forKeyedSubscript:v10];
  }

  v12 = [(PSResourceWrapper *)v11 resource];
  ps_resource::set_valid(v12, 1);
  count = ps_resource::get_count(v12);
  if (!count)
  {
    ps_resource::set_key(v12, [v10 UTF8String]);
    ps_resource::set_class(v12, 3);
  }

  ps_resource::resize(v12, count + 1);
  ps_resource::set_timestamp(v12, count, a5);
  ps_resource::set_object(v12, count, a4);
  v15[2] = v15;
  std::__hash_table<std::__hash_value_type<void *,void (*)(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void (*)(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void (*)(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void (*)(void *)>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>([(PSResourceWrapper *)v11 opaque_deallocator_map], v15)[3] = a6;

  return v12;
}

- (void)replaceResource:(id)a3 opaquePointer:(void *)a4 timestamp:(unint64_t)a5 deallocator:(void *)a6
{
  v10 = a3;
  [(PSResourceHeap *)self removeResourceKey:v10];
  v11 = [(PSResourceHeap *)self addResource:v10 opaquePointer:a4 timestamp:a5 deallocator:a6];

  return v11;
}

- (void)addResource:(id)a3 dataBuffer:(__CVBuffer *)a4 timestamp:(unint64_t)a5
{
  v8 = a3;
  v9 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v9 forKeyedSubscript:v8];
  }

  v10 = [(PSResourceWrapper *)v9 resource];
  ps_resource::set_valid(v10, 1);
  count = ps_resource::get_count(v10);
  if (!count)
  {
    ps_resource::set_key(v10, [v8 UTF8String]);
    ps_resource::set_class(v10, 8);
  }

  ps_resource::resize(v10, count + 1);
  ps_resource::set_timestamp(v10, count, a5);
  v12 = CFRetain(a4);
  ps_resource::set_databuffer(v10, count, v12, 0);

  return v10;
}

- (void)replaceResource:(id)a3 dataBuffer:(__CVBuffer *)a4 timestamp:(unint64_t)a5
{
  v8 = a3;
  [(PSResourceHeap *)self removeResourceKey:v8];
  v9 = [(PSResourceHeap *)self addResource:v8 dataBuffer:a4 timestamp:a5];

  return v9;
}

- (void)addResource:(id)a3 surface:(__IOSurface *)a4 timestamp:(unint64_t)a5
{
  v8 = a3;
  v9 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v9 forKeyedSubscript:v8];
  }

  v10 = [(PSResourceWrapper *)v9 resource];
  ps_resource::set_valid(v10, 1);
  count = ps_resource::get_count(v10);
  if (!count)
  {
    ps_resource::set_key(v10, [v8 UTF8String]);
    ps_resource::set_class(v10, 4);
  }

  ps_resource::resize(v10, count + 1);
  ps_resource::set_timestamp(v10, count, a5);
  v12 = CFRetain(a4);
  ps_resource::set_object(v10, count, v12);

  return v10;
}

- (void)replaceResource:(id)a3 surface:(__IOSurface *)a4 timestamp:(unint64_t)a5
{
  v8 = a3;
  [(PSResourceHeap *)self removeResourceKey:v8];
  v9 = [(PSResourceHeap *)self addResource:v8 surface:a4 timestamp:a5];

  return v9;
}

- (void)addResource:(id)a3 pixelBuffer:(__CVBuffer *)a4 timestamp:(unint64_t)a5
{
  v8 = a3;
  v9 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v9 forKeyedSubscript:v8];
  }

  v10 = [(PSResourceWrapper *)v9 resource];
  ps_resource::set_valid(v10, 1);
  count = ps_resource::get_count(v10);
  if (!count)
  {
    ps_resource::set_key(v10, [v8 UTF8String]);
    ps_resource::set_class(v10, 7);
  }

  ps_resource::resize(v10, count + 1);
  ps_resource::set_timestamp(v10, count, a5);
  v12 = CVPixelBufferRetain(a4);
  ps_resource::set_pixelbuffer(v10, count, v12, 0);

  return v10;
}

- (void)replaceResource:(id)a3 pixelBuffer:(__CVBuffer *)a4 timestamp:(unint64_t)a5
{
  v8 = a3;
  [(PSResourceHeap *)self removeResourceKey:v8];
  v9 = [(PSResourceHeap *)self addResource:v8 pixelBuffer:a4 timestamp:a5];

  return v9;
}

- (void)addResource:(id)a3 mtlBuffer:(id)a4 timestamp:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:v8];
  if (!v10)
  {
    v10 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v10 forKeyedSubscript:v8];
  }

  v11 = [(PSResourceWrapper *)v10 resource];
  ps_resource::set_valid(v11, 1);
  count = ps_resource::get_count(v11);
  if (!count)
  {
    ps_resource::set_key(v11, [v8 UTF8String]);
    ps_resource::set_class(v11, 5);
  }

  ps_resource::resize(v11, count + 1);
  ps_resource::set_timestamp(v11, count, a5);
  v13 = v9;
  ps_resource::set_object(v11, count, v13);

  return v11;
}

- (void)addResource:(id)a3 mtlTexture:(id)a4 timestamp:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:v8];
  if (!v10)
  {
    v10 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v10 forKeyedSubscript:v8];
  }

  v11 = [(PSResourceWrapper *)v10 resource];
  ps_resource::set_valid(v11, 1);
  count = ps_resource::get_count(v11);
  if (!count)
  {
    ps_resource::set_key(v11, [v8 UTF8String]);
    ps_resource::set_class(v11, 6);
  }

  ps_resource::resize(v11, count + 1);
  ps_resource::set_timestamp(v11, count, a5);
  v13 = v9;
  ps_resource::set_object(v11, count, v13);

  return v11;
}

- (void)getResource:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 resource];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getResourceWrapper:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:a3];

  return v3;
}

- (void)createAndAddResource:(id)a3 timestamp:(unint64_t)a4
{
  v60[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 resourceClass];
  if (v7 <= 4)
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v15 = v6;
        v16 = [v15 key];
        v21 = -[PSResourceHeap addResource:bytes:size:timestamp:withDeallocator:](self, "addResource:bytes:size:timestamp:withDeallocator:", v16, malloc_type_calloc(1uLL, [v15 length], 0xF8391D15uLL), objc_msgSend(v15, "length"), a4, &__block_literal_global_4);
LABEL_24:

        goto LABEL_25;
      }

      if (v7 != 2)
      {
        goto LABEL_41;
      }

      v15 = v6;
      v16 = [v15 key];
      v17 = [v15 retainableAllocator];
      v18 = (v17)[2](v17, v15, 1);
      v19 = [v18 objectAtIndexedSubscript:0];
      v20 = [v15 retainableDeallocator];
      v21 = [(PSResourceHeap *)self addResource:v16 object:v19 timestamp:a4 deallocator:v20];

LABEL_23:
      goto LABEL_24;
    }

    if (v7 != 3)
    {
      v22 = v6;
      v23 = [v22 ioSurfaceProperties];
      if (v23)
      {
        v24 = [v22 ioSurfaceProperties];
      }

      else
      {
        v59[0] = *MEMORY[0x277CD2B88];
        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "width")}];
        v60[0] = v43;
        v59[1] = *MEMORY[0x277CD2A28];
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "height")}];
        v60[1] = v44;
        v59[2] = *MEMORY[0x277CD2A70];
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v22, "pixelFormat")}];
        v60[2] = v45;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];
      }

      v46 = IOSurfaceCreate(v24);
      if (!v46)
      {
        __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", 677, "surface != NULL");
      }

      v47 = [v22 key];
      v21 = [(PSResourceHeap *)self addResource:v47 surface:v46 timestamp:a4];

      CFRelease(v46);
      goto LABEL_25;
    }

    v15 = v6;
    v16 = [v15 key];
    v17 = ([v15 allocator])(v15, 1);
    v27 = -[PSResourceHeap addResource:opaquePointer:timestamp:deallocator:](self, "addResource:opaquePointer:timestamp:deallocator:", v16, [v17 pointerAtIndex:0], a4, objc_msgSend(v15, "deallocator"));
LABEL_22:
    v21 = v27;
    goto LABEL_23;
  }

  if (v7 <= 6)
  {
    if (v7 == 5)
    {
      v15 = v6;
      v16 = -[MTLDevice newBufferWithLength:options:](self->_mtlDevice, "newBufferWithLength:options:", [v15 length], objc_msgSend(0, "resourceOptions"));
      if (!v16)
      {
        __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", 687, "mtlBuffer != NULL");
      }

      v17 = [v15 key];
      v27 = [(PSResourceHeap *)self addResource:v17 mtlBuffer:v16 timestamp:a4];
    }

    else
    {
      v15 = v6;
      mtlDevice = self->_mtlDevice;
      v26 = [v15 mtlTextureDescriptor];
      v16 = [(MTLDevice *)mtlDevice newTextureWithDescriptor:v26];

      if (!v16)
      {
        __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", 696, "mtlTexture != NULL");
      }

      v17 = [v15 key];
      v27 = [(PSResourceHeap *)self addResource:v17 mtlTexture:v16 timestamp:a4];
    }

    goto LABEL_22;
  }

  if (v7 != 7)
  {
    if (v7 == 8)
    {
      v36 = v6;
      cf = 0;
      v55[0] = *MEMORY[0x277CD2B88];
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "width")}];
      v56[0] = v37;
      v55[1] = *MEMORY[0x277CD2A28];
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "height")}];
      v56[1] = v38;
      v55[2] = *MEMORY[0x277CD2A70];
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v36, "pixelFormat")}];
      v56[2] = v39;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];

      v41 = IOSurfaceCreate(v40);
      if (v41)
      {
        v42 = *MEMORY[0x277CBECE8];
        CVDataBufferCreateWithIOSurface();
        CFRelease(v41);
        v48 = "dataBuffer != NULL";
        v49 = 725;
      }

      else
      {
        v48 = "surface != NULL";
        v49 = 722;
      }

      __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", v49, v48);
    }

    if (v7 == 9)
    {
      v8 = v6;
      cf = 0;
      v53[0] = *MEMORY[0x277CD2B88];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "width")}];
      v54[0] = v9;
      v53[1] = *MEMORY[0x277CD2A28];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "height")}];
      v54[1] = v10;
      v53[2] = *MEMORY[0x277CD2A70];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "pixelFormat")}];
      v54[2] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];

      v13 = IOSurfaceCreate(v12);
      if (v13)
      {
        v14 = *MEMORY[0x277CBECE8];
        CVDataBufferCreateWithIOSurface();
        CFRelease(v13);
        v50 = "dataBuffer != NULL";
        v51 = 743;
      }

      else
      {
        v50 = "surface != NULL";
        v51 = 740;
      }

      __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", v51, v50);
    }

LABEL_41:
    __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", 749, "false && Missing/unsupported resource class");
  }

  v30 = v6;
  cf = 0;
  v31 = [v30 width];
  v32 = [v30 height];
  v33 = [v30 pixelFormat];
  v57 = *MEMORY[0x277CC4DE8];
  v58 = MEMORY[0x277CBEC10];
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v31, v32, v33, v34, &cf))
  {
    __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", 707, "success == kCVReturnSuccess");
  }

  v35 = [v30 key];
  v21 = [(PSResourceHeap *)self addResource:v35 pixelBuffer:cf timestamp:a4];

  CVPixelBufferRelease(cf);
LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

@end