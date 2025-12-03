@interface PSResourceWrapper
- (id).cxx_construct;
- (void)dealloc;
- (void)setData_deallocator_map:(void *)data_deallocator_map;
- (void)setObject_deallocator_map:(void *)object_deallocator_map;
- (void)setOpaque_deallocator_map:(void *)opaque_deallocator_map;
@end

@implementation PSResourceWrapper

- (void)dealloc
{
  item_count = ps_resource_get_item_count(self + 8, a2);
  if (item_count)
  {
    v4 = 0;
    while (1)
    {
      v5 = ps_resource_get_class(self + 8);
      if (v5 > 4)
      {
        break;
      }

      if (v5 > 2)
      {
        if (v5 != 3)
        {
          goto LABEL_20;
        }

        v20[0] = ps_resource::get_object((self + 8));
        v14 = std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::find<void *>(self + 63, v20);
        if (!v14)
        {
          v17 = v20[0];
LABEL_30:
          free(v17);
          goto LABEL_31;
        }

        (v14[3])(v20[0]);
      }

      else
      {
        if (v5 != 1)
        {
          if (v5 != 2)
          {
LABEL_33:
            __assert_rtn("[PSResourceWrapper dealloc]", "PSTestEngine.mm", 270, "false && resource must have a valid/supported data class");
          }

          v20[0] = ps_resource::get_object((self + 8));
          v9 = std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::find<objc_object * {__strong}>(self + 58, v20);
          if (v9)
          {
            (*(v9[3] + 16))();
          }

          goto LABEL_31;
        }

        data_item = ps_resource_get_data_item(self + 8, v4);
        bytes = ps_resource_data_get_bytes(data_item);
        v12 = std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::find<void *>(self + 68, &bytes);
        v13 = v12;
        if (!v12)
        {
          v17 = bytes;
          goto LABEL_30;
        }

        (*(v12[3] + 16))();
        std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::remove(self + 68, v13, v20);
        std::unique_ptr<std::__hash_node<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,void *>>>>::~unique_ptr[abi:nn200100](v20);
      }

LABEL_31:
      if (++v4 == item_count)
      {
        goto LABEL_32;
      }
    }

    if (v5 > 6)
    {
      switch(v5)
      {
        case 7:
          pixelbuffer = ps_resource::get_pixelbuffer((self + 8), v4);
          CVPixelBufferRelease(pixelbuffer);
          break;
        case 8:
          databuffer = ps_resource::get_databuffer((self + 8));
          CFRelease(databuffer);
          break;
        case 9:
          jasperbuffer_ptr = ps_resource::get_jasperbuffer_ptr((self + 8));
          v7 = (jasperbuffer_ptr + 48);
          v8 = 4;
          do
          {
            CFRelease(*(v7 - 5));
            if (*(jasperbuffer_ptr + 40) < 2u)
            {
              CFRelease(*v7);
            }

            ++v7;
            --v8;
          }

          while (v8);
          break;
        default:
          goto LABEL_33;
      }

      goto LABEL_31;
    }

LABEL_20:
    object = ps_resource::get_object((self + 8));
    CFRelease(object);
    goto LABEL_31;
  }

LABEL_32:
  ps_resource::clear((self + 8));
  v18.receiver = self;
  v18.super_class = PSResourceWrapper;
  [(PSResourceWrapper *)&v18 dealloc];
}

- (void)setObject_deallocator_map:(void *)object_deallocator_map
{
  v4 = (self + 464);
  if (v4 != object_deallocator_map)
  {
    *(self + 124) = *(object_deallocator_map + 8);
    std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,void *> *>>(v4, *(object_deallocator_map + 2), 0);
  }
}

- (void)setOpaque_deallocator_map:(void *)opaque_deallocator_map
{
  v4 = (self + 504);
  if (v4 != opaque_deallocator_map)
  {
    *(self + 134) = *(opaque_deallocator_map + 8);
    std::__hash_table<std::__hash_value_type<void *,void (*)(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void (*)(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void (*)(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void (*)(void *)>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<void *,void (*)(void *)>,void *> *>>(v4, *(opaque_deallocator_map + 2), 0);
  }
}

- (void)setData_deallocator_map:(void *)data_deallocator_map
{
  v4 = (self + 544);
  if (v4 != data_deallocator_map)
  {
    *(self + 144) = *(data_deallocator_map + 8);
    std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,void *> *>>(v4, *(data_deallocator_map + 2), 0);
  }
}

- (id).cxx_construct
{
  v5[1] = *MEMORY[0x277D85DE8];
  *(self + 2) = 0;
  *(self + 35) = 0;
  v5[0] = 1;
  std::vector<ps_resource_item_status>::vector[abi:nn200100](self + 36, v5, 1uLL);
  *(self + 424) = 0u;
  *(self + 440) = 0u;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 312) = 0u;
  *(self + 29) = 0u;
  *(self + 30) = 0u;
  *(self + 124) = 1065353216;
  *(self + 504) = 0u;
  *(self + 520) = 0u;
  *(self + 134) = 1065353216;
  *(self + 34) = 0u;
  *(self + 35) = 0u;
  *(self + 144) = 1065353216;
  v3 = *MEMORY[0x277D85DE8];
  return self;
}

@end