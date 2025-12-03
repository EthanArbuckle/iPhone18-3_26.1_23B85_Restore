@interface PSTestEngine
- (BOOL)cleanupSourceTasksForGraph:(id)graph output:(id)output cleanupContext:(id)context;
- (BOOL)runGraph:(id)graph withInput:(id)input output:(id)output context:(id)context timestamp:(unint64_t)timestamp;
- (BOOL)setupSourceTasksForGraph:(id)graph withOutput:(id)output context:(id)context cleanupContext:(id)cleanupContext;
- (PSTestEngine)initWithDelegate:(id)delegate;
- (__n128)runGraph:withInput:output:context:timestamp:;
- (id)contextWithInput:(id)input;
- (void)runGraph:withInput:output:context:timestamp:;
@end

@implementation PSTestEngine

- (PSTestEngine)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = PSTestEngine;
  v6 = [(PSTestEngine *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v8 = MTLCreateSystemDefaultDevice();
    mtlDevice = v7->_mtlDevice;
    v7->_mtlDevice = v8;

    newCommandQueue = [(MTLDevice *)v7->_mtlDevice newCommandQueue];
    mtlCommandQueue = v7->_mtlCommandQueue;
    v7->_mtlCommandQueue = newCommandQueue;
  }

  return v7;
}

- (id)contextWithInput:(id)input
{
  v50 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v41 = objc_alloc_init(PSContext);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = inputCopy;
  obj = [inputCopy resources];
  v5 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v5)
  {
    v6 = *v46;
    v40 = vdupq_n_s64(1uLL);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v46 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * i);
        resources = [v4 resources];
        v10 = [resources objectForKeyedSubscript:v8];
        resource = [v10 resource];

        v12 = resource->_class;
        v44 = v40;
        if (v12 <= 4)
        {
          if (v12 > 2)
          {
            if (v12 == 3)
            {
              v18 = objc_alloc_init(PSOpaqueStream);
              [(PSResourceStream *)v18 setKey:v8];
            }

            else
            {
              object = ps_resource::get_object(resource);
              v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:IOSurfaceGetWidth(object)];
              [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x277CD2928]];

              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:IOSurfaceGetHeight(object)];
              [v20 setObject:v22 forKeyedSubscript:*MEMORY[0x277CD28D0]];

              v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:IOSurfaceGetPixelFormat(object)];
              [v20 setObject:v23 forKeyedSubscript:*MEMORY[0x277CD28D8]];

              v18 = [PSIOSurfaceStream ioSurfaceStreamWithResourceKey:v8 options:&v44 properties:v20];
            }
          }

          else if (v12 == 1)
          {
            v43 = 0;
            ps_resource::get_data(resource, 0, &v43);
            v18 = [PSDataStream dataStreamWithResourceKey:v8 options:&v44 length:v43];
            v42 = 0;
            v26 = [(PSOpaqueStream *)v18 validate:&v42];
            v27 = v42;
            if (!v26)
            {
              __assert_rtn("[PSTestEngine contextWithInput:]", "PSTestEngine.mm", 878, "result && failure");
            }
          }

          else
          {
            if (v12 != 2)
            {
LABEL_34:
              __assert_rtn("[PSTestEngine contextWithInput:]", "PSTestEngine.mm", 964, "false && Unsupported replay data type");
            }

            v18 = objc_alloc_init(PSObjectStream);
            [(PSResourceStream *)v18 setKey:v8];
          }
        }

        else if (v12 <= 6)
        {
          if (v12 == 5)
          {
            v24 = ps_resource::get_object(resource);
            v18 = +[PSMTLBufferStream mtlBufferStreamWithResourceKey:options:length:mtlOptions:](PSMTLBufferStream, "mtlBufferStreamWithResourceKey:options:length:mtlOptions:", v8, &v44, [v24 length], objc_msgSend(v24, "resourceOptions"));
          }

          else
          {
            v24 = ps_resource::get_object(resource);
            v25 = [MEMORY[0x277CD7058] textureBufferDescriptorWithPixelFormat:objc_msgSend(v24 width:"pixelFormat") resourceOptions:objc_msgSend(v24 usage:"width"), objc_msgSend(v24, "resourceOptions"), objc_msgSend(v24, "usage")];
            v18 = [PSMTLTextureStream mtlTextureStreamWithResourceKey:v8 options:&v44 descriptor:v25];
          }
        }

        else if (v12 == 7)
        {
          pixelbuffer = ps_resource::get_pixelbuffer(resource, 0);
          IOSurface = CVPixelBufferGetIOSurface(pixelbuffer);
          v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:IOSurfaceGetWidth(IOSurface)];
          [v30 setObject:v31 forKeyedSubscript:*MEMORY[0x277CD2928]];

          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:IOSurfaceGetHeight(IOSurface)];
          [v30 setObject:v32 forKeyedSubscript:*MEMORY[0x277CD28D0]];

          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:IOSurfaceGetPixelFormat(IOSurface)];
          [v30 setObject:v33 forKeyedSubscript:*MEMORY[0x277CD28D8]];

          v18 = [PSCVPixelStream cvPixelStreamWithResourceKey:v8 options:&v44 properties:v30];
        }

        else
        {
          if (v12 == 8)
          {
            ps_resource::get_databuffer(resource);
            v34 = CVDataBufferGetIOSurface();
            Width = IOSurfaceGetWidth(v34);
            Height = IOSurfaceGetHeight(v34);
            v17 = [PSCVDataStream cvDataStreamWithResourceKey:v8 options:&v44 width:Width height:Height pixelFormat:IOSurfaceGetPixelFormat(v34)];
          }

          else
          {
            if (v12 != 9)
            {
              goto LABEL_34;
            }

            v13 = *(ps_resource::get_jasperbuffer_ptr(resource) + 8);
            v14 = CVDataBufferGetIOSurface();
            v15 = IOSurfaceGetWidth(v14);
            v16 = IOSurfaceGetHeight(v14);
            v17 = [PSJasperStream jasperStreamWithResourceKey:v8 options:&v44 width:v15 height:v16 pixelFormat:IOSurfaceGetPixelFormat(v14)];
          }

          v18 = v17;
        }

        [(PSResourceStream *)v18 setFramerate:1];
        [(PSContext *)v41 addResourceStream:v18];
      }

      v5 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v5);
  }

  v37 = *MEMORY[0x277D85DE8];

  return v41;
}

- (BOOL)runGraph:(id)graph withInput:(id)input output:(id)output context:(id)context timestamp:(unint64_t)timestamp
{
  v35 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  input;
  outputCopy = output;
  context;
  if (outputCopy)
  {
    outputCopy;
  }

  else
  {
    objc_alloc_init(PSResourceHeap);
  }

  tasks = [graphCopy tasks];
  v12 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 1065353216;
  v23 = 0u;
  v24 = 0u;
  v25 = 1065353216;
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  while (v12 < [tasks count])
  {
    v13 = [tasks objectAtIndex:v12];
    v31.__r_.__value_.__r.__words[0] = v13;
    v33.__r_.__value_.__r.__words[0] = &v31;
    *(std::__hash_table<std::__hash_value_type<void *,BOOL>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,BOOL>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,BOOL>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,BOOL>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v26, &v31) + 24) = 0;
    outputs = [v13 outputs];
    for (i = 0; i < [outputs count]; ++i)
    {
      v16 = [outputs objectAtIndex:i];
      resourceKey = [v16 resourceKey];
      v18 = resourceKey;
      std::string::basic_string[abi:nn200100]<0>(&v31, [resourceKey UTF8String]);
      v33 = v31;
      memset(&v31, 0, sizeof(v31));
      v34 = v13;
      std::__hash_table<std::__hash_value_type<std::string,PSTask * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSTask * {__strong}>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,PSTask * {__strong}>>(v21, &v33);

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    ++v12;
  }

  v32 = 0;
  operator new();
}

- (BOOL)setupSourceTasksForGraph:(id)graph withOutput:(id)output context:(id)context cleanupContext:(id)cleanupContext
{
  v67 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  outputCopy = output;
  outputCopy2 = output;
  contextCopy = context;
  contextCopy2 = context;
  v56 = graphCopy;
  cleanupContextCopy = cleanupContext;
  resourceHeap = [cleanupContextCopy resourceHeap];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [graphCopy sourceTasks];
  v54 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v54)
  {
    v51 = "false && Missing/unsupported resource class";
    v55 = *v63;
    while (2)
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v63 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v62 + 1) + 8 * i);
        outputs = [v12 outputs];
        v61 = v12;
        if (![v12 resources])
        {
          [outputs count];
          ps_resource_array_create();
        }

        resources = [v12 resources];
        for (j = 0; j < [outputs count]; ++j)
        {
          v16 = [outputs objectAtIndexedSubscript:j];
          resourceKey = [v16 resourceKey];
          v18 = [contextCopy2 resourceStreamForKey:resourceKey];

          if (!v18)
          {
            v45 = [outputs objectAtIndexedSubscript:j];
            resourceKey2 = [v45 resourceKey];
            v47 = resourceKey2;
            printf("Failed to find resource stream for %s. Verify that this resource stream has been added to the context.", [resourceKey2 UTF8String]);

            v44 = 0;
            goto LABEL_36;
          }

          v19 = [resourceHeap createAndAddResource:v18 timestamp:0];
          resource = ps_resource_array_get_resource(resources, j);
          key = ps_resource_get_key(v19);
          ps_resource_set_key(resource, key);
          ps_resource_set_class(resource, [v18 resourceClass]);
          ps_resource_set_item_count(resource, 1);
          item_count = ps_resource_get_item_count(v19, v22);
          if (!v19)
          {
            v29 = 105;
            v50 = "false && Input resource passed is invalid!";
            goto LABEL_39;
          }

          v24 = item_count;
          v25 = ps_resource_get_class(resource);
          if (v25 != ps_resource_get_class(v19))
          {
            v29 = 110;
            v50 = "false && Class for input and output resources is not the same to copy";
LABEL_39:
            v51 = v50;
LABEL_40:
            __assert_rtn("_copy_resource_item", "PSTestEngine.mm", v29, v51);
          }

          v26 = v24 - 1;
          if (ps_resource_is_item_valid(v19, v26))
          {
            ps_resource_set_item_valid(resource, 0, 1);
            timestamp = ps_resource_get_timestamp(v19, v26);
            ps_resource_set_timestamp(resource, 0, timestamp);
            v28 = ps_resource_get_class(v19);
            v29 = 169;
            if (v28 > 3)
            {
              switch(v28)
              {
                case 4:
                  surface_item = ps_resource_get_surface_item(v19, v26);
                  iosurface = ps_resource_surface_get_iosurface(surface_item);
                  if (!iosurface)
                  {
                    v29 = 138;
                    v50 = "false && A surface item must contain an IOSurface";
                    goto LABEL_39;
                  }

                  ps_resource_set_iosurface(resource, 0, iosurface);
                  break;
                case 7:
                  pixelbuffer_item = ps_resource_get_pixelbuffer_item(v19, v26);
                  cvpixelbuffer = ps_resource_pixelbuffer_get_cvpixelbuffer(pixelbuffer_item);
                  metadata = ps_resource_pixelbuffer_get_metadata(pixelbuffer_item);
                  if (!cvpixelbuffer)
                  {
                    v29 = 149;
                    v50 = "false && A surface item must contain a CVPixelBuffer";
                    goto LABEL_39;
                  }

                  ps_resource_set_cvpixelbuffer(resource, 0, cvpixelbuffer, metadata);
                  break;
                case 8:
                  databuffer_item = ps_resource_get_databuffer_item(v19, v26);
                  databuffer = ps_resource_databuffer_get_databuffer(databuffer_item);
                  v34 = ps_resource_databuffer_get_metadata(databuffer_item);
                  if (!databuffer)
                  {
                    v29 = 160;
                    v50 = "false && A surface item must contain a CVDataBuffer";
                    goto LABEL_39;
                  }

                  ps_resource_set_cvdatabuffer(resource, 0, databuffer, v34);
                  break;
                default:
                  goto LABEL_40;
              }
            }

            else if ((v28 - 2) >= 2)
            {
              if (v28 != 1)
              {
                goto LABEL_40;
              }

              data_item = ps_resource_get_data_item(v19, v26);
              bytes = ps_resource_data_get_bytes(data_item);
              length = ps_resource_data_get_length(data_item);
              ps_resource_set_data(resource, 0, bytes, length);
            }

            else
            {
              object_item = ps_resource_get_object_item(v19, v26);
              object = ps_resource_object_get_object(object_item);
              ps_resource_set_object(resource, 0, object);
            }
          }

          ps_resource_set_timestamp(resource, 0, 0);
        }

        if (![v61 sourceTaskData])
        {
          v43 = malloc_type_calloc(1uLL, 0x18uLL, 0x80040D6874129uLL);
          objc_storeStrong(v43 + 2, contextCopy);
          objc_storeStrong(v43, outputCopy);
          objc_storeStrong(v43 + 1, resourceHeap);
          [v61 setResources:resources];
          [v61 setSourceTaskData:v43];
          [v61 setSourceTaskFunction:testengine_source_writer_func];
        }
      }

      v44 = 1;
      v54 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
      if (v54)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v44 = 1;
  }

LABEL_36:

  v48 = *MEMORY[0x277D85DE8];
  return v44;
}

- (BOOL)cleanupSourceTasksForGraph:(id)graph output:(id)output cleanupContext:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  outputCopy = output;
  v25 = graphCopy;
  contextCopy = context;
  resourceHeap = [contextCopy resourceHeap];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [graphCopy sourceTasks];
  v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v28 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        getResources = [v12 getResources];
        if (getResources)
        {
          for (j = 0; j < ps_resource_array_get_count(getResources); ++j)
          {
            resource = ps_resource_array_get_resource(getResources, j);
            key = ps_resource_get_key(resource);
            v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:key];
            [outputCopy removeResourceKey:v17];

            v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:key];
            [resourceHeap removeResourceKey:v18];
          }

          ps_resource_array_free(getResources);
        }

        getSourceTaskData = [v12 getSourceTaskData];
        v20 = getSourceTaskData[2];
        getSourceTaskData[2] = 0;

        v21 = *getSourceTaskData;
        *getSourceTaskData = 0;

        v22 = getSourceTaskData[1];
        getSourceTaskData[1] = 0;

        free(getSourceTaskData);
        [v12 setSourceTaskData:0];
        [v12 setResources:0];
        [v12 setSourceTaskFunction:0];
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

- (__n128)runGraph:withInput:output:context:timestamp:
{
  *a2 = &unk_2870D29C8;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)runGraph:withInput:output:context:timestamp:
{
  v3 = *a2;
  v15 = v3;
  v16 = v3;
  v4 = *(self + 8);
  __p[0] = &v15;
  *(std::__hash_table<std::__hash_value_type<void *,BOOL>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,BOOL>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,BOOL>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,BOOL>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v4, &v15) + 24) = 1;
  inputs = [v3 inputs];
  for (i = 0; i < [inputs count]; ++i)
  {
    v7 = [inputs objectAtIndex:i];
    if ([v7 type] != 2)
    {
      v8 = *(self + 16);
      resolvedResourceKey = [v7 resolvedResourceKey];
      std::string::basic_string[abi:nn200100]<0>(__p, [resolvedResourceKey UTF8String]);
      v10 = std::__hash_table<std::__hash_value_type<std::string,PSTask * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSTask * {__strong}>>>::find<std::string>(v8, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      if (v10)
      {
        v11 = v10[5];
        v12 = *(self + 8);
        v15 = v11;
        __p[0] = &v15;
        if ((std::__hash_table<std::__hash_value_type<void *,BOOL>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,BOOL>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,BOOL>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,BOOL>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v12, &v15)[3] & 1) == 0)
        {
          std::function<void ()(PSTask *)>::operator()(*(self + 24), v11);
        }
      }
    }
  }

  std::vector<PSTask * {__strong}>::push_back[abi:nn200100](*(self + 32), &v16);
}

@end