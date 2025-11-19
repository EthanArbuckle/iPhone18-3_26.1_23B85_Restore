uint64_t ps_prm_opts_set_forwarding_count(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 80) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v4 = ps_prm_opts_set_forwarding_count_cold_1(v6);
    return ps_prm_opts_set_data_size(v4, v5);
  }

  return result;
}

uint64_t ps_prm_opts_set_data_size(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_data_size_cold_1(v5);
    return ps_prm_opts_set_iosurface_width(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_iosurface_width(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_iosurface_width_cold_1(v5);
    return ps_prm_opts_set_iosurface_height(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_iosurface_height(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 148) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_iosurface_height_cold_1(v5);
    return ps_prm_opts_set_iosurface_pixelformat(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_iosurface_pixelformat(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 152) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_iosurface_pixelformat_cold_1(v5);
    return ps_prm_opts_set_iosurface_properties(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_iosurface_properties(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 160) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_iosurface_properties_cold_1(v5);
    return ps_prm_opts_set_iosurface_allocator(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_iosurface_allocator(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 168) = a2;
    *(result + 176) = a3;
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v5 = ps_prm_opts_set_iosurface_allocator_cold_1(v6);
    return ps_prm_opts_set_cvpixelbuffer_width(v5);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvpixelbuffer_width(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_cvpixelbuffer_width_cold_1(v5);
    return ps_prm_opts_set_cvpixelbuffer_height(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvpixelbuffer_height(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 148) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_cvpixelbuffer_height_cold_1(v5);
    return ps_prm_opts_set_cvpixelbuffer_pixelformat(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvpixelbuffer_pixelformat(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 152) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_cvpixelbuffer_pixelformat_cold_1(v5);
    return ps_prm_opts_set_cvpixelbuffer_properties(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvpixelbuffer_properties(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 160) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_cvpixelbuffer_properties_cold_1(v5);
    return ps_prm_opts_set_cvpixelbuffer_allocator(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvpixelbuffer_allocator(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 176) = a2;
    *(result + 184) = a3;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v5 = ps_prm_opts_set_cvpixelbuffer_allocator_cold_1(v7);
    return ps_prm_opts_set_cvpixelbuffer_metadata_iosurface_properties(v5, v6);
  }

  return result;
}

CFTypeRef ps_prm_opts_set_cvpixelbuffer_metadata_iosurface_properties(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    result = CFRetain(cf);
    *(a1 + 168) = cf;
  }

  else
  {
    v5 = ps_prm_opts_set_cvpixelbuffer_metadata_iosurface_properties_cold_1(v6, cf);
    return ps_prm_opts_set_cvdatabuffer_width(v5);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvdatabuffer_width(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_cvdatabuffer_width_cold_1(v5);
    return ps_prm_opts_set_cvdatabuffer_height(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvdatabuffer_height(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 148) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_cvdatabuffer_height_cold_1(v5);
    return ps_prm_opts_set_cvdatabuffer_pixelformat(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvdatabuffer_pixelformat(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 152) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_cvdatabuffer_pixelformat_cold_1(v5);
    return ps_prm_opts_set_cvdatabuffer_allocator(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvdatabuffer_allocator(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 168) = a2;
    *(result + 176) = a3;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v5 = ps_prm_opts_set_cvdatabuffer_allocator_cold_1(v7);
    return ps_prm_opts_set_cvdatabuffer_metadata_iosurface_properties(v5, v6);
  }

  return result;
}

CFTypeRef ps_prm_opts_set_cvdatabuffer_metadata_iosurface_properties(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    result = CFRetain(cf);
    *(a1 + 160) = cf;
  }

  else
  {
    v5 = ps_prm_opts_set_cvdatabuffer_metadata_iosurface_properties_cold_1(v6, cf);
    return ps_prm_opts_set_jasperbuffer_width(v5);
  }

  return result;
}

uint64_t ps_prm_opts_set_jasperbuffer_width(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_jasperbuffer_width_cold_1(v5);
    return ps_prm_opts_set_jasperbuffer_height(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_jasperbuffer_height(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 148) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_jasperbuffer_height_cold_1(v5);
    return ps_prm_opts_set_jasperbuffer_pixelformat(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_jasperbuffer_pixelformat(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 152) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v4 = ps_prm_opts_set_jasperbuffer_pixelformat_cold_1(v6);
    return ps_prm_opts_set_jasperbuffer_metadata_iosurface_properties(v4, v5);
  }

  return result;
}

CFTypeRef ps_prm_opts_set_jasperbuffer_metadata_iosurface_properties(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    result = CFRetain(cf);
    *(a1 + 160) = cf;
  }

  else
  {
    v5 = ps_prm_opts_set_jasperbuffer_metadata_iosurface_properties_cold_1(v6, cf);
    return ps_prm_opts_set_pearlbuffer_width(v5);
  }

  return result;
}

_DWORD *ps_prm_opts_set_pearlbuffer_width(_DWORD *result, int a2, int a3, int a4, int a5)
{
  if (result)
  {
    result[36] = a2;
    result[37] = a3;
    result[38] = a4;
    result[39] = a5;
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v7 = ps_prm_opts_set_pearlbuffer_width_cold_1(v8);
    return ps_prm_opts_set_pearlbuffer_height(v7);
  }

  return result;
}

_DWORD *ps_prm_opts_set_pearlbuffer_height(_DWORD *result, int a2, int a3, int a4, int a5)
{
  if (result)
  {
    result[40] = a2;
    result[41] = a3;
    result[42] = a4;
    result[43] = a5;
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v7 = ps_prm_opts_set_pearlbuffer_height_cold_1(v8);
    return ps_prm_opts_set_pearlbuffer_pixelformat(v7);
  }

  return result;
}

_DWORD *ps_prm_opts_set_pearlbuffer_pixelformat(_DWORD *result, int a2, int a3, int a4, int a5)
{
  if (result)
  {
    result[44] = a2;
    result[45] = a3;
    result[46] = a4;
    result[47] = a5;
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v7 = ps_prm_opts_set_pearlbuffer_pixelformat_cold_1(v8);
    return ps_prm_opts_set_pearlbuffer_has_attachments(v7);
  }

  return result;
}

uint64_t ps_prm_opts_set_pearlbuffer_has_attachments(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 192) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    has_attachments_cold_1 = ps_prm_opts_set_pearlbuffer_has_attachments_cold_1(v5);
    return ps_prm_opts_set_pearlbuffer_properties(has_attachments_cold_1);
  }

  return result;
}

void *ps_prm_opts_set_pearlbuffer_properties(void *result, uint64_t a2)
{
  if (result)
  {
    result[25] = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v4 = ps_prm_opts_set_pearlbuffer_properties_cold_1(v6);
    return ps_prm_opts_set_pearlbuffer_metadata_iosurface_properties(v4, v5);
  }

  return result;
}

CFTypeRef ps_prm_opts_set_pearlbuffer_metadata_iosurface_properties(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    result = CFRetain(cf);
    *(a1 + 208) = cf;
  }

  else
  {
    v5 = ps_prm_opts_set_pearlbuffer_metadata_iosurface_properties_cold_1(v6, cf);
    return ps_prm_opts_set_matting_params(v5);
  }

  return result;
}

uint64_t ps_prm_opts_set_matting_params(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    *(result + 184) = 1;
    *(result + 168) = a2;
    *(result + 176) = a3;
    *(result + 192) = a4;
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v6 = ps_prm_opts_set_matting_params_cold_1(v8);
    return ps_prm_opts_set_resource_avail_context(v6, v7);
  }

  return result;
}

uint64_t ps_prm_opts_set_resource_avail_context(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_resource_avail_context_cold_1(v5);
    return ps_prm_opts_set_object_stream(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_object_stream(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_object_stream_cold_1(v5);
    return ps_prm_opts_set_opaque_stream(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_opaque_stream(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_opaque_stream_cold_1(v5);
    return ps_prm_opts_set_fastpath_stream(v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_fastpath_stream(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 152) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_fastpath_stream_cold_1(v5);
    return ps_prm_opts_get_resource_key(v4);
  }

  return result;
}

uint64_t ps_prm_opts_get_resource_key(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  v6 = v1;
  v7 = v2;
  resource_key_cold_1 = ps_prm_opts_get_resource_key_cold_1(v5);
  return ps_prm_opts_get_resource_class(resource_key_cold_1);
}

uint64_t ps_prm_opts_get_resource_class(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 40);
  }

  v6 = v1;
  v7 = v2;
  resource_class_cold_1 = ps_prm_opts_get_resource_class_cold_1(v5);
  return ps_prm_opts_get_return_capacity(resource_class_cold_1);
}

uint64_t ps_prm_opts_get_return_capacity(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 48);
  }

  v6 = v1;
  v7 = v2;
  return_capacity_cold_1 = ps_prm_opts_get_return_capacity_cold_1(v5);
  return ps_prm_opts_get_forwarding_count(return_capacity_cold_1);
}

uint64_t ps_prm_opts_get_forwarding_count(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 80);
  }

  v6 = v1;
  v7 = v2;
  forwarding_count_cold_1 = ps_prm_opts_get_forwarding_count_cold_1(v5);
  return ps_prm_opts_get_writer_depth(forwarding_count_cold_1);
}

uint64_t ps_prm_opts_get_writer_depth(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 72);
  }

  v7 = v1;
  v8 = v2;
  writer_depth_cold_1 = ps_prm_opts_get_writer_depth_cold_1(v6);
  return ps_prm_opts_set_resource_metadata_type(writer_depth_cold_1, v5);
}

uint64_t ps_prm_opts_set_resource_metadata_type(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 108) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_prm_opts_set_resource_metadata_type_cold_1(v5);
    return ps_prm_opts_get_resource_metadata_type(v4);
  }

  return result;
}

uint64_t ps_prm_opts_get_resource_metadata_type(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 108);
  }

  v6 = v1;
  v7 = v2;
  resource_metadata_type_cold_1 = ps_prm_opts_get_resource_metadata_type_cold_1(v5);
  return ps_prm_opts_get_reader_depth(resource_metadata_type_cold_1);
}

uint64_t ps_prm_opts_get_reader_depth(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 68);
  }

  v6 = v1;
  v7 = v2;
  reader_depth_cold_1 = ps_prm_opts_get_reader_depth_cold_1(v5);
  return ps_prm_opts_set_ane_chained_stream(reader_depth_cold_1);
}

uint64_t ps_prm_opts_set_ane_chained_stream(uint64_t result, uint64_t a2, int a3, unsigned int a4, int a5, int a6)
{
  if (result)
  {
    if (*(result + 40) == 10)
    {
      v6 = *(result + 72);
      *(result + 156) = a3;
      *(result + 160) = v6;
      *(result + 176) = a5;
      *(result + 168) = a4;
      *(result + 152) = a6;
      *(result + 144) = a2;
      return result;
    }
  }

  else
  {
    ps_prm_opts_set_ane_chained_stream_cold_2(v11);
  }

  v7 = ps_prm_opts_set_ane_chained_stream_cold_1(v11);
  return ps_prm_get_iosurface_count(v7, v8, v9, v10);
}

uint64_t ps_prm_opts_set_camera_cvpixelbuffer(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (result)
  {
    if (*(result + 40) == 7)
    {
      *(result + 144) = a2;
      *(result + 148) = a3;
      *(result + 152) = a6;
      *(result + 160) = a4;
      *(result + 176) = a5;
      return result;
    }
  }

  else
  {
    ps_prm_opts_set_camera_cvpixelbuffer_cold_2(v7);
  }

  v6 = ps_prm_opts_set_camera_cvpixelbuffer_cold_1(v7);
  return ps_prm_opts_set_camera_cvpixelbuffer_superframe(v6);
}

uint64_t ps_prm_opts_set_camera_cvpixelbuffer_superframe(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (result)
  {
    if (*(result + 40) == 7)
    {
      *(result + 144) = a2;
      *(result + 148) = a3;
      *(result + 152) = a6;
      *(result + 160) = a4;
      *(result + 176) = a5;
      *(result + 184) = a7;
      *(result + 192) = a8;
      *(result + 200) = a9;
      *(result + 208) = a10;
      *(result + 216) = a11;
      *(result + 224) = a12;
      *(result + 232) = a13;
      *(result + 240) = a14;
      *(result + 248) = a15;
      return result;
    }
  }

  else
  {
    ps_prm_opts_set_camera_cvpixelbuffer_superframe_cold_2(v16);
  }

  v15 = ps_prm_opts_set_camera_cvpixelbuffer_superframe_cold_1(v16);
  return ps_prm_opts_set_camera_cvdatabuffer(v15);
}

uint64_t ps_prm_opts_set_camera_cvdatabuffer(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (result)
  {
    if (*(result + 40) == 8)
    {
      *(result + 144) = a2;
      *(result + 148) = a3;
      *(result + 152) = a6;
      *(result + 160) = a4;
      *(result + 176) = a5;
      return result;
    }
  }

  else
  {
    ps_prm_opts_set_camera_cvdatabuffer_cold_2(v7);
  }

  v6 = ps_prm_opts_set_camera_cvdatabuffer_cold_1(v7);
  return ps_prm_opts_set_camera_jasperbuffer(v6);
}

uint64_t ps_prm_opts_set_camera_jasperbuffer(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (result)
  {
    if (*(result + 40) == 9)
    {
      *(result + 144) = a2;
      *(result + 148) = a3;
      *(result + 152) = a6;
      *(result + 160) = a4;
      *(result + 176) = a5;
      return result;
    }
  }

  else
  {
    ps_prm_opts_set_camera_jasperbuffer_cold_2(v7);
  }

  v6 = ps_prm_opts_set_camera_jasperbuffer_cold_1(v7);
  return ps_prm_opts_set_camera_pearlbuffer(v6);
}

uint64_t ps_prm_opts_set_camera_pearlbuffer(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (result)
  {
    if (*(result + 40) == 11)
    {
      *(result + 144) = a2;
      *(result + 148) = a3;
      *(result + 152) = a9;
      *(result + 160) = a4;
      *(result + 168) = a5;
      *(result + 176) = a6;
      *(result + 184) = a7;
      *(result + 200) = a8;
      return result;
    }
  }

  else
  {
    ps_prm_opts_set_camera_pearlbuffer_cold_2(v11);
  }

  v9 = ps_prm_opts_set_camera_pearlbuffer_cold_1(v11);
  return ps_prm_opts_set_fastpath_data_type(v9, v10);
}

PSResourceManager *PSResourceManager::registerThreadCreator(PSResourceManager *this, void (*a2)(const char *, void *, _opaque_pthread_t **, void *(*)(void *), void *), void *a3)
{
  *(this + 26) = a2;
  *(this + 27) = a3;
  return this;
}

const void **PSResourceManager::getWriterInstanceForKey(PSResourceManager *this, char *a2)
{
  std::mutex::lock((this + 144));
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(this + 13, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    v4 = v4[5];
  }

  std::mutex::unlock((this + 144));
  return v4;
}

void sub_25EAB3BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v15 + 144));
  _Unwind_Resume(a1);
}

uint64_t PSResourceManager::PSResourceManager(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 850045863;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 850045863;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = a3 == 1;
  if (a3 == 2)
  {
LABEL_9:
    v7 = *MEMORY[0x277D85DE8];
    return a1;
  }

  *(a1 + 352) = ps_create_comms_server();
  v4 = getprogname();
  if (v4)
  {
    snprintf(__str, 0x80uLL, "com.apple.%s.local_res_fact", v4);
    if (MEMORY[0x25F8C8F10](__str))
    {
      v5 = __PSResourceManagerLogSharedInstance();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "PSResourceManager";
        v12 = 2080;
        v13 = __str;
        _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEBUG, "%s: Local Resource Factory %s already exists. PRM will suffix pid before creating local resource factory..", buf, 0x16u);
      }

      getpid();
      snprintf((a1 + 224), 0x80uLL, "com.apple.%s_%s_%d.local_res_fact");
    }

    else
    {
      snprintf((a1 + 224), 0x80uLL, "%s");
    }

    v6 = *(a1 + 352);
    *(a1 + 360) = ps_buffer_create_local_factory();
    goto LABEL_9;
  }

  *buf = 0;
  asprintf(buf, "proc_name = null");
  v9 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    *__str = 136315394;
    v15 = "PSResourceManager";
    v16 = 1024;
    v17 = 65;
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d proc_name = null", __str, 0x12u);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PSResourceManagerLogSharedInstance();
    PSResourceManager::PSResourceManager(v10);
  }

  else
  {
    usleep(0x1E8480u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

void PSResourceManager::~PSResourceManager(PSResourceManager *this)
{
  v2 = *(this + 45);
  ps_buffer_delete_factory();
  v3 = *(this + 44);
  ps_delete_comms_server();
  std::mutex::~mutex((this + 144));
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 104);
  std::mutex::~mutex((this + 40));

  std::__hash_table<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>>>::~__hash_table(this);
}

uint64_t PSResourceManager::createReaderInstance(PSResourceManager *this, PSResourceManagerOptions *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a2 + 6);
      v5 = *(a2 + 7);
      v7 = *(a2 + 5);
      v8 = *(a2 + 15);
      v9 = *(a2 + 10);
      buf[0] = 136381699;
      *&buf[1] = v5;
      v23 = 1024;
      LODWORD(v24) = v7;
      WORD2(v24) = 1024;
      *(&v24 + 6) = v6;
      WORD5(v24) = 1024;
      HIDWORD(v24) = v8;
      v25 = 1024;
      v26 = v9;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEBUG, "Creating reader instance with opts: key (%{private}s), cls (%d), capacity (%d), storage_mode (%d) fwd_count (%d)", buf, 0x24u);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, *(a2 + 7));
    if (*(a2 + 105) == 1)
    {
      if (*(a2 + 106) == 1)
      {
        operator new();
      }

      operator new();
    }

    v10 = *(a2 + 5);
    if (v10 == 10)
    {
      operator new();
    }

    if (v10 != 12)
    {
      operator new();
    }

    v11 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a2 + 7);
      buf[0] = 136315395;
      *&buf[1] = "createReaderInstance";
      v23 = 2081;
      *&v24 = v12;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "%s creating fast path reader for key %{private}s", buf, 0x16u);
    }

    v13 = *(a2 + 7);
    if (!strncmp(v13, "compass.compass200", 0x12uLL))
    {
      if (*(this + 368) == 1)
      {
        operator new();
      }

      v20 = 0;
      asprintf(&v20, "ERROR! Unsupported fastpath resource: %s", v13);
      v17 = __PSResourceManagerLogSharedInstance();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = *(a2 + 7);
        buf[0] = 136315650;
        *&buf[1] = "createReaderInstance";
        v23 = 1024;
        LODWORD(v24) = 150;
        WORD2(v24) = 2080;
        *(&v24 + 6) = v18;
        _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_FAULT, "%s:%d ERROR! Unsupported fastpath resource: %s", buf, 0x1Cu);
      }

      if (!OSLogFlushBuffers())
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (!strncmp(v13, "accessory-tracking.", 0x13uLL))
      {
        operator new();
      }

      v20 = 0;
      asprintf(&v20, "ERROR! Unsupported fastpath resource: %s", v13);
      v15 = __PSResourceManagerLogSharedInstance();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = *(a2 + 7);
        buf[0] = 136315650;
        *&buf[1] = "createReaderInstance";
        v23 = 1024;
        LODWORD(v24) = 174;
        WORD2(v24) = 2080;
        *(&v24 + 6) = v16;
        _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_FAULT, "%s:%d ERROR! Unsupported fastpath resource: %s", buf, 0x1Cu);
      }

      if (!OSLogFlushBuffers())
      {
LABEL_27:
        usleep(0x1E8480u);
LABEL_29:
        result = abort_with_reason();
        goto LABEL_30;
      }
    }

    v19 = __PSResourceManagerLogSharedInstance();
    PSResourceManager::createReaderInstance(v19);
    goto LABEL_29;
  }

  result = PSResourceManager::createReaderInstance(buf);
LABEL_30:
  __break(1u);
  return result;
}

void sub_25EAB4508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSResourceManager::deleteReaderInstance(PSResourceManager *this, PRMReaderInstance *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    PSResourceManager::deleteReaderInstance(__p);
    __break(1u);
  }

  Key = PRMReaderInstance::getKey(a2);
  std::string::basic_string[abi:ne200100]<0>(&v18, Key);
  std::mutex::lock((this + 40));
  std::string::basic_string[abi:ne200100]<0>(__p, Key);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(this, __p);
  v6 = v5;
  if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_14:
    v11 = __PSResourceManagerLogSharedInstance();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *__p = 136315650;
    *&__p[4] = "deleteReaderInstance";
    v21 = 2048;
    v22 = a2;
    v23 = 2080;
    v24 = Key;
    v12 = "%s:Did not find entry for PRMReaderInstance %p with key %s";
LABEL_18:
    _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, v12, __p, 0x20u);
    goto LABEL_19;
  }

  operator delete(*__p);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = v6[5];
  v7 = v6[6];
  if (v8 != v7)
  {
    v9 = v6[5];
    while (*v9 != a2)
    {
      ++v9;
      ++v8;
      if (v9 == v7)
      {
        v8 = v6[6];
        break;
      }
    }
  }

  if (v7 == v8)
  {
    v11 = __PSResourceManagerLogSharedInstance();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *__p = 136315650;
    *&__p[4] = "deleteReaderInstance";
    v21 = 2080;
    v22 = Key;
    v23 = 2048;
    v24 = a2;
    v12 = "%s:key %s exists but didn't find PRMReaderInstance %p";
    goto LABEL_18;
  }

  v10 = (v7 - (v8 + 1));
  if (v7 != v8 + 1)
  {
    memmove(v8, v8 + 1, v7 - (v8 + 1));
  }

  v6[6] = &v10[v8];
LABEL_19:
  v13 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *__p = 136380675;
    *&__p[4] = Key;
    _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEBUG, "Deleting reader instance for key %{private}s", __p, 0xCu);
  }

  v14 = (*(*a2 + 32))(a2);
  (*(*v14 + 24))(v14, a2);
  if (PRMReader::isInitialized(v14))
  {
    v15 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      RefCount = PRMReader::getRefCount(v14);
      *__p = 136315394;
      *&__p[4] = "deleteReaderInstance";
      v21 = 1024;
      LODWORD(v22) = RefCount;
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_ERROR, "%s:expected the reader to have been deinitialized, refCount=%d", __p, 0x12u);
    }
  }

  else
  {
    (*(*v14 + 8))(v14);
  }

  std::mutex::unlock((this + 40));
  if (v19 < 0)
  {
    operator delete(v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_25EAB4918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::mutex::unlock((v21 + 40));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

PRMWriterInstance *PSResourceManager::createWriterInstance(PSResourceManager *this, PSResourceManagerOptions *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    PSResourceManager::createWriterInstance(buf);
    __break(1u);
  }

  v4 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 6);
    v5 = *(a2 + 7);
    v7 = *(a2 + 5);
    v8 = *(a2 + 15);
    v9 = *(a2 + 16);
    v10 = *(a2 + 17);
    v11 = *(a2 + 18);
    *buf = 136382211;
    *&buf[4] = v5;
    v21 = 1024;
    v22 = v7;
    v23 = 1024;
    v24 = v6;
    v25 = 1025;
    v26 = v8;
    v27 = 1024;
    v28 = v9;
    v29 = 1024;
    v30 = v10;
    v31 = 1024;
    v32 = v11;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEBUG, "Creating writer instance with opts: key (%{private}s), cls (%d), capacity (%d), storage_mode (%{private}d), creation_mode (%d), reader_depth (%d), writer_depth (%d)", buf, 0x30u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, *(a2 + 7));
  std::mutex::lock((this + 144));
  if (!std::__hash_table<std::__hash_value_type<std::string,PRMWriterInstance *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PRMWriterInstance *>>>::find<std::string>(this + 13, buf))
  {
    v15 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a2 + 7);
      *v19 = 136380675;
      *&v19[4] = v16;
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_DEBUG, "Creating a PBS writer for key %{private}s", v19, 0xCu);
    }

    *(a2 + 15);
    if (*(a2 + 105))
    {
      operator new();
    }

    if (*(a2 + 5) == 12)
    {
      operator new();
    }

    operator new();
  }

  v12 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a2 + 7);
    *v19 = 136380675;
    *&v19[4] = v13;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "Found existing writer for key %{private}s, returning immediately", v19, 0xCu);
  }

  *v19 = buf;
  v14 = std::__hash_table<std::__hash_value_type<std::string,PRMWriterInstance *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PRMWriterInstance *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 13, buf)[5];
  PRMWriterInstance::incrementRefCount(v14);
  std::mutex::unlock((this + 144));
  if (SHIBYTE(v24) < 0)
  {
    operator delete(*buf);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_25EAB4C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  MEMORY[0x25F8C7C50](v19, 0x10F3C4081794B78);
  std::mutex::unlock((v18 + 144));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void PSResourceManager::deleteWriterInstance(PSResourceManager *this, PRMWriterInstance *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    PSResourceManager::deleteWriterInstance(__p);
    __break(1u);
  }

  if (!PRMWriterInstance::decrementRefCount(a2))
  {
    Key = PRMWriterInstance::getKey(a2);
    std::string::basic_string[abi:ne200100]<0>(__p, Key);
    v5 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136380675;
      v10 = Key;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEBUG, "Deleting writer for key %{private}s", buf, 0xCu);
    }

    (*(*a2 + 8))(a2);
    std::mutex::lock((this + 144));
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__erase_unique<std::string>(this + 13, __p);
    std::mutex::unlock((this + 144));
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_25EAB4E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock((v15 + 144));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t PSResourceManager::createActionTaker(PSResourceManager *this, char *a2, void (*a3)(void *, unint64_t), void *a4, void (*a5)(void *), void *a6)
{
  if (!PSResourceManager::getWriterInstanceForKey(this, a2))
  {
    ReaderForKey = PSResourceManager::getReaderForKey(this, a2);
    if (!ReaderForKey)
    {
LABEL_12:
      PSResourceManager::createActionTaker(&v19, a2);
      goto LABEL_13;
    }

    ListenerThread = PRMReader::getListenerThread(ReaderForKey);
    if (!ListenerThread)
    {
LABEL_13:
      v17 = PSResourceManager::createActionTaker(&v19, a2);
      return PSResourceManager::getReaderForKey(v17, v18);
    }

    ActionTakerManager = PSListenerThread::getActionTakerManager(ListenerThread);
    if (ActionTakerManager)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  WriterInstanceForKey = PSResourceManager::getWriterInstanceForKey(this, a2);
  if (!WriterInstanceForKey)
  {
LABEL_11:
    PSResourceManager::createActionTaker(&v19, a2);
    goto LABEL_12;
  }

  ActionTakerManager = PRMWriterInstance::getActionTakerManager(WriterInstanceForKey);
  if (!ActionTakerManager)
  {
LABEL_10:
    PSResourceManager::createActionTaker(&v19, a2);
    goto LABEL_11;
  }

LABEL_4:

  return PSActionTakerManager::createActionTaker(ActionTakerManager, a3, a4, a5, a6);
}

uint64_t PSResourceManager::getReaderForKey(PSResourceManager *this, char *a2)
{
  std::mutex::lock((this + 40));
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(this, __p);
  v5 = v4;
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  v6 = *(v5 + 40);
  if (*(v5 + 48) == v6)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*(**v6 + 32))();
  }

LABEL_8:
  std::mutex::unlock((this + 40));
  return v5;
}

uint64_t PSResourceManager::deleteActionTaker(PSResourceManager *this, PSActionTaker *a2)
{
  if (!a2)
  {
    PSResourceManager::deleteActionTaker(v6);
    goto LABEL_7;
  }

  ActionTakerManager = PSActionTaker::getActionTakerManager(a2);
  if (!ActionTakerManager)
  {
LABEL_7:
    v5 = PSResourceManager::deleteActionTaker(v6);
    return PSResourceManager::getThreadCreatorFunc(v5);
  }

  return PSActionTakerManager::requestRemoveActionTaker(ActionTakerManager, a2);
}

uint64_t PSResourceManager::getIOSurfaceCount(PSResourceManager *this, PRMWriterInstance *a2, PRMReaderInstance *a3, const char *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *MEMORY[0x277D85DE8];

    return PRMWriterInstance::getIOSurfaceCount(a2);
  }

  else if (a3)
  {
    v6 = *(*(*(*a3 + 32))(a3) + 72);
    v7 = *MEMORY[0x277D85DE8];

    return v6();
  }

  else
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "getIOSurfaceCount";
      v13 = 2080;
      v14 = a4;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "%s: reader/writer instance nil for key (%s)", &v11, 0x16u);
    }

    v10 = *MEMORY[0x277D85DE8];
    return 0xFFFFFFFFLL;
  }
}

PRMWriterInstance *PSResourceManager::getIOSurfaces(PSResourceManager *this, PRMWriterInstance *a2, PRMReaderInstance *a3, const char *a4, PRMWriterInstance **a5)
{
  if (a2)
  {

    return PRMWriterInstance::getIOSurfaces(a2, a5);
  }

  else
  {
    if (!a3)
    {
      PSResourceManager::getIOSurfaces(&v9, a4);
    }

    v7 = (*(*a3 + 32))(a3);
    v8 = *(*v7 + 80);

    return v8(v7, a5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<PRMReaderInstance *>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<PRMReaderInstance *>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25EAB55D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<PRMReaderInstance *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<PRMReaderInstance *>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PRMReaderInstance *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **std::__hash_table<std::__hash_value_type<std::string,PRMWriterInstance *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PRMWriterInstance *>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PRMWriterInstance *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PRMWriterInstance *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,PRMWriterInstance *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PRMWriterInstance *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25EAB5A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAB5B4C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_6(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x1Cu);
}

uint64_t ps_prm_allocate_retained_nsobject_array(void *a1, unsigned int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = a1;
  v6 = [v5 retainableAllocator];

  if (!v6)
  {
    ps_prm_allocate_retained_nsobject_array_cold_3(buf, v5);
    goto LABEL_10;
  }

  v7 = [v5 retainableAllocator];
  v8 = a2;
  v6 = (v7)[2](v7, v5, a2);

  if (!v6)
  {
LABEL_10:
    ps_prm_allocate_retained_nsobject_array_cold_2(buf, v5);
    goto LABEL_11;
  }

  if ([v6 count] == a2)
  {
    v9 = malloc_type_calloc(a2, 8uLL, 0x80040B8603338uLL);
    if (!v9)
    {
      ps_prm_allocate_retained_nsobject_array_cold_1(buf);
    }

    v10 = v9;
    if (a2)
    {
      v11 = 0;
      do
      {
        v10[v11++] = [v6 objectAtIndexedSubscript:v11];
      }

      while (v8 != v11);
    }

    objc_autoreleasePoolPop(v4);
    v12 = *MEMORY[0x277D85DE8];
    return v10;
  }

LABEL_11:
  v23 = 0;
  v14 = [v5 key];
  asprintf(&v23, "NSObject allocator returned an incorrect count for key %s. Expected: %d, received: %lu", [v14 UTF8String], a2, objc_msgSend(v6, "count"));

  v15 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v16 = [v5 key];
    v17 = [v16 UTF8String];
    v18 = [v6 count];
    *buf = 136316162;
    v25 = "ps_prm_allocate_retained_nsobject_array";
    v26 = 1024;
    v27 = 48;
    v28 = 2080;
    v29 = v17;
    v30 = 1024;
    v31 = a2;
    v32 = 2048;
    v33 = v18;
    _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_FAULT, "%s:%d NSObject allocator returned an incorrect count for key %s. Expected: %d, received: %lu", buf, 0x2Cu);
  }

  v19 = OSLogFlushBuffers();
  if (v19)
  {
    v20 = v19;
    v21 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "ps_prm_allocate_retained_nsobject_array";
      v26 = 1024;
      v27 = v20;
      _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v22 = abort_with_reason();
  return ps_prm_allocate_opaque_array(v22);
}

uint64_t ps_prm_allocate_opaque_array(void *a1, unsigned int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = a1;
  if (![v6 allocator])
  {
    ps_prm_allocate_opaque_array_cold_3(buf, v6);
    goto LABEL_10;
  }

  v7 = a2;
  v8 = ([v6 allocator])(v6, a2);
  if (!v8)
  {
LABEL_10:
    ps_prm_allocate_opaque_array_cold_2(buf, v6);
    goto LABEL_11;
  }

  v2 = v8;
  if ([v8 count] == a2)
  {
    v9 = malloc_type_calloc(a2, 8uLL, 0x80040B8603338uLL);
    if (!v9)
    {
      ps_prm_allocate_opaque_array_cold_1(buf);
    }

    v10 = v9;
    if (a2)
    {
      v11 = 0;
      do
      {
        v10[v11] = [v2 pointerAtIndex:v11];
        ++v11;
      }

      while (v7 != v11);
    }

    objc_autoreleasePoolPop(v5);
    v12 = *MEMORY[0x277D85DE8];
    return v10;
  }

LABEL_11:
  v23 = 0;
  v14 = [v6 key];
  asprintf(&v23, "Opaque allocator returned an incorrect count for key %s. Expected: %d, received: %lu", [v14 UTF8String], a2, objc_msgSend(v2, "count"));

  v15 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v16 = [v6 key];
    v17 = [v16 UTF8String];
    v18 = [v2 count];
    *buf = 136316162;
    v25 = "ps_prm_allocate_opaque_array";
    v26 = 1024;
    v27 = 99;
    v28 = 2080;
    v29 = v17;
    v30 = 1024;
    v31 = a2;
    v32 = 2048;
    v33 = v18;
    _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_FAULT, "%s:%d Opaque allocator returned an incorrect count for key %s. Expected: %d, received: %lu", buf, 0x2Cu);
  }

  v19 = OSLogFlushBuffers();
  if (v19)
  {
    v20 = v19;
    v21 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "ps_prm_allocate_opaque_array";
      v26 = 1024;
      v27 = v20;
      _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v22 = abort_with_reason();
  return ps_prm_deallocate_retained_nsobject_array(v22);
}

void ps_prm_deallocate_retained_nsobject_array(void *a1, void **a2, unsigned int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = a3;
    v8 = a2;
    do
    {
      v9 = *v8;
      v10 = [a1 retainableDeallocator];

      if (v10)
      {
        v11 = [a1 retainableDeallocator];
        (v11)[2](v11, v9);
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  free(a2);

  objc_autoreleasePoolPop(v6);
}

void ps_prm_deallocate_opaque_array(void *a1, uint64_t *a2, unsigned int a3)
{
  v6 = objc_autoreleasePoolPush();
  if ([a1 deallocator])
  {
    if (a3)
    {
      v7 = a3;
      v8 = a2;
      do
      {
        v9 = *v8++;
        ([a1 deallocator])(v9);
        --v7;
      }

      while (v7);
    }

    free(a2);

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    ps_prm_deallocate_opaque_array_cold_1(&v10, a1);
    OUTLINED_FUNCTION_0_4();
  }
}

uint64_t __ps_frame_history_notify_start_frame_data_block_invoke(uint64_t a1)
{
  result = ps_util_mat_to_mct(*(a1 + 32));
  v3 = *(a1 + 40);
  if ((*(v3 + 68) & 1) == 0)
  {
    *(v3 + 68) = 1;
    *v3 = *(a1 + 48);
    *(v3 + 16) = result;
  }

  v4 = *(a1 + 56);
  *v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  *(v4 + 8) = result;
  *(v4 + 16) = v5;
  v6 = *(a1 + 72);
  if (!v6)
  {
    v6 = *(v3 + 56);
  }

  *(v4 + 48) = v6;
  *(v4 + 56) = *(a1 + 64);
  return result;
}

uint64_t __ps_frame_history_notify_end_frame_data_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 32) = v2;
  result = ps_util_mat_to_mct(v2);
  v4 = *(a1 + 32);
  *(v4 + 24) = result;
  if (*(a1 + 52) == 1)
  {
    *(v4 + 44) = 1;
    *(v4 + 40) = *(a1 + 48);
  }

  return result;
}

uint64_t __PolarisGSMLogSharedInstance()
{
  if (__PolarisGSMLogSharedInstance_onceToken != -1)
  {
    __PolarisGSMLogSharedInstance_cold_1();
  }

  return sharedInstance_2;
}

char *ps_gsm_create_local()
{
  (MEMORY[0x28223BE20])();
  v49 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 0x40000000;
  v31[2] = __ps_gsm_create_local_block_invoke;
  v31[3] = &unk_279A48A68;
  v31[4] = &v44;
  gst_container = ps_gsm_create_gst_container(0x400uLL, v31);
  v23 = v1;
  v24 = gst_container;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 0x40000000;
  v30[2] = __ps_gsm_create_local_block_invoke_2;
  v30[3] = &unk_279A48A90;
  v30[4] = &v40;
  source_container = ps_gsm_create_source_container(0x400uLL, v30);
  v3 = v2;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 0x40000000;
  v29[2] = __ps_gsm_create_local_block_invoke_3;
  v29[3] = &unk_279A48AB8;
  v29[4] = &v36;
  v4 = ps_gsm_create_source_container(0x400uLL, v29);
  v6 = v5;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 0x40000000;
  v28[2] = __ps_gsm_create_local_block_invoke_4;
  v28[3] = &unk_279A48AE0;
  v28[4] = &v32;
  shared_trigger_container = ps_gsm_create_shared_trigger_container(0x80uLL, v28);
  v9 = v8;
  v10 = 0;
  v11 = MEMORY[0x277D85F48];
  do
  {
    v12 = semaphore_create(*v11, &v48[v10++], 0, 0);
  }

  while (v10 != 1024);
  MEMORY[0x28223BE20](v12);
  for (i = 0; i != 128; ++i)
  {
    semaphore_create(*v11, &v21[i], 0, 0);
  }

  v15 = v41[3];
  v16 = v37[3];
  v17 = v33[3];
  v25[0] = v45[3];
  v25[1] = v15;
  v25[2] = v16;
  v25[3] = v17;
  v26 = xmmword_25EB77780;
  v27 = 0;
  gsm = ps_gsm_create_gsm(0, v24, v23, source_container, v3, v4, v6, v14, shared_trigger_container, v9, 1024, v48, 128, v21, v25);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  v19 = *MEMORY[0x277D85DE8];
  return gsm;
}

char *ps_gsm_create_gsm(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int *a12, uint64_t a13, int *a14, uint64_t a15)
{
  v19 = a13;
  v20 = a11;
  v21 = malloc_type_calloc(1uLL, 4 * a11 + 4792, 0xA3847D15uLL);
  v22 = v21;
  *v21 = a1;
  v24 = *(a15 + 16);
  v23 = *(a15 + 32);
  v25 = *(a15 + 48);
  *(v21 + 8) = *a15;
  *(v21 + 40) = v23;
  *(v21 + 24) = v24;
  *(v21 + 7) = v25;
  *(v21 + 8) = a2;
  *(v21 + 9) = a3;
  *(v21 + 10) = a4;
  *(v21 + 11) = a5;
  *(v21 + 12) = a6;
  *(v21 + 13) = a7;
  *(v21 + 14) = a9;
  *(v21 + 15) = a10;
  if (a11)
  {
    v27 = v21 + 168;
    do
    {
      v28 = *a12++;
      *v27++ = v28;
      --v20;
    }

    while (v20);
  }

  if (a13)
  {
    v30 = v21 + 4264;
    do
    {
      v31 = *a14++;
      *v30++ = v31;
      --v19;
    }

    while (v19);
  }

  v32 = *MEMORY[0x277CBECE8];
  v33 = MEMORY[0x277CBF138];
  v34 = MEMORY[0x277CBF150];
  *(v21 + 19) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1024, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v22 + 20) = CFDictionaryCreateMutable(v32, 1024, v33, v34);
  *(v22 + 598) = 0;
  v22[4776] = PLSSettingsEnableFastTransition();
  return v22;
}

char *ps_gsm_create_shared(unint64_t a1, unint64_t a2)
{
  if (a1 >= 0x401)
  {
    ps_gsm_create_shared_cold_1();
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 0x40000000;
  v30[2] = __ps_gsm_create_shared_block_invoke;
  v30[3] = &unk_279A48B08;
  v30[4] = &v43;
  gst_container = ps_gsm_create_gst_container(a1, v30);
  v24 = v4;
  v25 = gst_container;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 0x40000000;
  v29[2] = __ps_gsm_create_shared_block_invoke_2;
  v29[3] = &unk_279A48B30;
  v29[4] = &v39;
  source_container = ps_gsm_create_source_container(a2, v29);
  v7 = v6;
  v8 = 0;
  v9 = 0;
  if (PLSSettingsEnableFastTransition())
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 0x40000000;
    v28[2] = __ps_gsm_create_shared_block_invoke_3;
    v28[3] = &unk_279A48B58;
    v28[4] = &v31;
    v9 = ps_gsm_create_source_container(a2, v28);
    v8 = v10;
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 0x40000000;
  v27[2] = __ps_gsm_create_shared_block_invoke_4;
  v27[3] = &unk_279A48B80;
  v27[4] = &v35;
  shared_trigger_container = ps_gsm_create_shared_trigger_container(0x80uLL, v27);
  v13 = v12;
  semaphore_array = ps_buffer_create_semaphore_array();
  v15 = ps_buffer_get_semaphore_array();
  v16 = ps_buffer_create_semaphore_array();
  v17 = ps_buffer_get_semaphore_array();
  v18 = v40[3];
  v19 = v32[3];
  v20 = v36[3];
  v26[0] = v44[3];
  v26[1] = v18;
  v26[2] = v19;
  v26[3] = v20;
  v26[4] = semaphore_array;
  v26[5] = v16;
  v26[6] = 0;
  gsm = ps_gsm_create_gsm(1, v25, v24, source_container, v7, v9, v8, v21, shared_trigger_container, v13, 1024, v15, 128, v17, v26);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  return gsm;
}

void *__ps_gsm_create_shared_block_invoke(uint64_t a1, size_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = ps_buffer_create_serial_data_writer();
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = ps_buffer_get_serial_data_write_buffer();
  bzero(v5, a2);
  return v5;
}

void *__ps_gsm_create_shared_block_invoke_2(uint64_t a1, size_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = ps_buffer_create_serial_data_writer();
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = ps_buffer_get_serial_data_write_buffer();
  bzero(v5, a2);
  return v5;
}

void *__ps_gsm_create_shared_block_invoke_3(uint64_t a1, size_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = ps_buffer_create_serial_data_writer();
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = ps_buffer_get_serial_data_write_buffer();
  bzero(v5, a2);
  return v5;
}

void *__ps_gsm_create_shared_block_invoke_4(uint64_t a1, size_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = ps_buffer_create_serial_data_writer();
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = ps_buffer_get_serial_data_write_buffer();
  bzero(v5, a2);
  return v5;
}

char *ps_gsm_map_shared()
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  serial_data_reader = ps_buffer_create_serial_data_reader();
  ps_buffer_get_serial_data_read_buffer();
  ps_gsm_map_gst_container();
  v30 = v1;
  v31 = v0;
  v2 = ps_buffer_create_serial_data_reader();
  ps_buffer_get_serial_data_read_buffer();
  ps_gsm_map_gst_container();
  v27 = v4;
  v28 = v3;
  if (PLSSettingsEnableFastTransition())
  {
    v5 = ps_buffer_create_serial_data_reader();
    ps_buffer_get_serial_data_read_buffer();
    ps_gsm_map_gst_container();
    v25 = v7;
    v26 = v6;
  }

  else
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 0x40000000;
    v33[2] = __ps_gsm_map_shared_block_invoke;
    v33[3] = &unk_279A48BA8;
    v33[4] = &v34;
    source_container = ps_gsm_create_source_container(0x400uLL, v33);
    v25 = v9;
    v26 = source_container;
    v5 = 0;
  }

  v10 = ps_buffer_create_serial_data_reader();
  ps_buffer_get_serial_data_read_buffer();
  ps_gsm_map_shared_trigger_container();
  v12 = v11;
  v14 = v13;
  v15 = ps_buffer_map_semaphore_array();
  semaphore_count = ps_buffer_get_semaphore_count();
  semaphore_array = ps_buffer_get_semaphore_array();
  v18 = ps_buffer_map_semaphore_array();
  v19 = ps_buffer_get_semaphore_count();
  v20 = ps_buffer_get_semaphore_array();
  v21 = v35[3];
  v32[0] = serial_data_reader;
  v32[1] = v2;
  v32[2] = v21;
  v32[3] = v5;
  v32[4] = v10;
  v32[5] = v15;
  v32[6] = v18;
  gsm = ps_gsm_create_gsm(2, v31, v30, v28, v27, v26, v25, v22, v12, v14, semaphore_count, semaphore_array, v19, v20, v32);
  ps_gsm_update_source_name_cache(gsm, 1);
  _Block_object_dispose(&v34, 8);
  return gsm;
}

void ps_gsm_remove_gsm(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2)
  {
    v13 = *(a1 + 1);
    ps_buffer_destroy_serial_data_reader();
    v14 = *(a1 + 2);
    ps_buffer_destroy_serial_data_reader();
    if (PLSSettingsEnableFastTransition())
    {
      v15 = *(a1 + 4);
      ps_buffer_destroy_serial_data_reader();
    }

    else
    {
      free(*(a1 + 3));
    }

    v16 = *(a1 + 5);
    ps_buffer_destroy_serial_data_reader();
    v17 = *(a1 + 6);
    ps_buffer_destroy_semaphore_array();
    v18 = *(a1 + 7);
LABEL_20:
    ps_buffer_destroy_semaphore_array();
    goto LABEL_21;
  }

  if (v2 == 1)
  {
    v7 = *(a1 + 1);
    ps_buffer_destroy_serial_data_writer();
    v8 = *(a1 + 2);
    ps_buffer_destroy_serial_data_writer();
    if (PLSSettingsEnableFastTransition())
    {
      v9 = *(a1 + 3);
      ps_buffer_destroy_serial_data_writer();
    }

    v10 = *(a1 + 4);
    ps_buffer_destroy_serial_data_writer();
    v11 = *(a1 + 5);
    ps_buffer_destroy_semaphore_array();
    v12 = *(a1 + 6);
    goto LABEL_20;
  }

  if (!*a1)
  {
    free(*(a1 + 1));
    free(*(a1 + 2));
    free(*(a1 + 3));
    free(*(a1 + 4));
    v3 = MEMORY[0x277D85F48];
    if (*(a1 + 5))
    {
      v4 = 0;
      do
      {
        semaphore_destroy(*v3, *&a1[4 * v4++ + 168]);
      }

      while (v4 < *(a1 + 5));
    }

    if (*(a1 + 6))
    {
      v5 = 0;
      do
      {
        semaphore_destroy(*v3, *&a1[4 * v5++ + 4264]);
      }

      while (v5 < *(a1 + 6));
    }

    if (a1[128])
    {
      v6 = *(a1 + 18);
      if (v6)
      {
        _Block_release(v6);
        *(a1 + 18) = 0;
      }
    }
  }

LABEL_21:
  CFRelease(*(a1 + 19));
  CFRelease(*(a1 + 20));

  free(a1);
}

unint64_t *ps_gsm_handle_process_death(unint64_t *a1, int a2)
{
  ps_gsm_gst_handle_process_death(a1, a2);
  ps_gsm_source_handle_process_death(a1, a2);

  return ps_gsm_shared_trigger_handle_process_death(a1, a2);
}

void *ps_gsm_set_deterministic_replay(uint64_t a1, void *aBlock)
{
  atomic_store(0, (a1 + 136));
  *(a1 + 128) = 1;
  result = _Block_copy(aBlock);
  *(a1 + 144) = result;
  return result;
}

uint64_t ps_gsm_gst_notify_complete(uint64_t result)
{
  if (*(result + 128) == 1)
  {
    return ps_gsm_gst_notify_complete_cold_1(result);
  }

  return result;
}

uint64_t ps_gsm_gst_notify_start(uint64_t result)
{
  if (*(result + 128) == 1)
  {
    atomic_fetch_add((result + 136), 1uLL);
  }

  return result;
}

uint64_t ps_gsm_wait_on_sem(semaphore_t a1, mach_timespec_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  result = semaphore_timedwait(a1, a2);
  if (result)
  {
    if (result == 49)
    {
      result = 2;
    }

    else
    {
      if (result != 37)
      {
        ps_gsm_wait_on_sem_cold_1(&v5, result);
      }

      v4 = __PolarisGSMLogSharedInstance();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315650;
        v6 = "ps_gsm_wait_on_sem";
        v7 = 1024;
        v8 = 37;
        v9 = 2080;
        v10 = mach_error_string(37);
        _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "%s: semaphore_timedwait failed because it was terminated: code %d (%s)", &v5, 0x1Cu);
      }

      sleep(0x3Cu);
      result = 1;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void ps_gsm_signal_sem()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x25F8C9890]();
  if (v0)
  {
    if (v0 != 37)
    {
      ps_gsm_signal_sem_cold_1(&v3, v0);
    }

    v2 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = "ps_gsm_signal_sem";
      v5 = 1024;
      v6 = 37;
      v7 = 2080;
      v8 = mach_error_string(37);
      _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_ERROR, "%s: semaphore_signal failed because it was terminated: code %d (%s)", &v3, 0x1Cu);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
}

char *OUTLINED_FUNCTION_1_6(void *a1, mach_error_t error_value)
{
  *a1 = 0;

  return mach_error_string(error_value);
}

void OUTLINED_FUNCTION_2_6(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x2Cu);
}

void ps_gsm_remove_waiter_async(uint64_t a1, int *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  populateRemoveWaiterInfo(v4, 4uLL, *a2);
  xpc_session_send_message(*(a1 + 4784), v4);

  xpc_release(v4);
}

uint64_t ps_gsm_create_gst_internal(uint64_t a1, unsigned int a2, const char *a3, int a4, uint64_t a5, int a6, char *a7, char *a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v56 = *MEMORY[0x277D85DE8];
  v20 = __PolarisGSMLogSharedInstance();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316674;
    v43 = "ps_gsm_create_gst_internal";
    v44 = 1024;
    v45 = a2;
    v46 = 2080;
    v47 = a3;
    v48 = 1024;
    v49 = a4;
    v50 = 1024;
    v51 = a6;
    v52 = 1024;
    v53 = a9;
    v54 = 1024;
    v55 = HIDWORD(a9);
    _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_DEBUG, "%s pid %d graph name %s num sources %u group synced %u stride %u offset %u", buf, 0x34u);
  }

  started = ps_gsm_start_gst_reservation(a1, a2, a4);
  if (!started)
  {
    v36 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v43 = a3;
      v37 = "GST (%s) reservation failed, returning NULL";
LABEL_24:
      _os_log_impl(&dword_25EA3A000, v36, OS_LOG_TYPE_ERROR, v37, buf, 0xCu);
    }

LABEL_25:
    v22 = 0;
LABEL_26:
    v39 = *MEMORY[0x277D85DE8];
    return v22;
  }

  v22 = started;
  ps_gsm_init_gst(a1, started, a3, a4, a5, a6, a7, a8, a9);
  if (!a10)
  {
LABEL_7:
    if (a4 < 1)
    {
LABEL_13:
      v33 = **(a1 + 64);
      ps_util_assert_less_than_equal_unsigned(v33);
      ps_reservation_complete(*(a1 + 64) + 8, v33, *v22);
      v34 = __PolarisGSMLogSharedInstance();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *v22;
        *buf = 136315394;
        v43 = (v22 + 16);
        v44 = 1024;
        v45 = v35;
        _os_log_impl(&dword_25EA3A000, v34, OS_LOG_TYPE_DEFAULT, "Reserved GST (%s) on idx (%d)", buf, 0x12u);
      }

      goto LABEL_26;
    }

    v24 = 0;
    v25 = a4;
    while (1)
    {
      v26 = v22 + 4 * v24;
      v27 = *(v26 + 148);
      v28 = a8[v24];
      v29 = *v22;
      v30 = atomic_load((v22 + 8));
      v31 = ps_gsm_add_gst_to_source(a1, v28, v27, v29, v24, v30 & 0xFFFFFFFFFFLL);
      v32 = __PolarisGSMLogSharedInstance();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v43 = a3;
        v44 = 1024;
        v45 = v31;
        _os_log_impl(&dword_25EA3A000, v32, OS_LOG_TYPE_DEBUG, "Add GST (%s) to Source - Idx %d", buf, 0x12u);
      }

      if (v31 >= 0x40)
      {
        break;
      }

      *(v26 + 212) = v31;
      if (v25 == ++v24)
      {
        goto LABEL_13;
      }
    }

    if (a10)
    {
      ps_gsm_shared_trigger_remove_reservation(a1, *(v22 + 1202), *(v22 + 1200));
    }

    ps_gsm_clear_gst_reservation(a1, v22);
    v36 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v43 = a3;
      v37 = "Ran out of space in the source array that contains GST (%s), clearing reservation and returning NULL";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (a11)
  {
    *(v22 + 1192) = a12;
    v23 = ps_gsm_shared_trigger_add_reservation(a1, a11, *v22, (v22 + 1200), (v22 + 1202));
    *(v22 + 1184) = v23;
    if ((v23 & 1) == 0)
    {
      v38 = __PolarisGSMLogSharedInstance();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v43 = a3;
        _os_log_impl(&dword_25EA3A000, v38, OS_LOG_TYPE_ERROR, "GST (%s) Unable to add to Shared Trigger", buf, 0xCu);
      }

      ps_gsm_clear_gst_reservation(a1, v22);
      goto LABEL_25;
    }

    goto LABEL_7;
  }

  gst_internal_cold_1 = ps_gsm_create_gst_internal_cold_1(buf, v22);
  return ps_gsm_create_gst_with_cadence(gst_internal_cold_1);
}

uint64_t ps_gsm_start_gst_reservation(uint64_t a1, unsigned int a2, char a3)
{
  v4 = (a2 | (atomic_fetch_add((*(a1 + 64) + 136), 1u) << 32) | (0xFFFFFF0000000000 << a3) & 0xFFFF0000000000) ^ 0x1FFFF0000000000;
  v5 = **(a1 + 64);
  ps_util_assert_less_than_equal_unsigned(v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __ps_gsm_start_gst_reservation_block_invoke;
  v10[3] = &__block_descriptor_tmp_15;
  v11 = v5;
  v10[4] = a1;
  v10[5] = v4;
  v6 = ps_reservation_retry(v10);
  if (v6 != -1)
  {
    return *(a1 + 72) + 1320 * v6;
  }

  v8 = __PolarisGSMLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "No free slot found for adding GST", v9, 2u);
  }

  return 0;
}

uint64_t ps_gsm_init_gst(uint64_t a1, int *a2, const char *a3, int a4, uint64_t a5, char a6, char *a7, char *a8, uint64_t a9)
{
  v48 = *MEMORY[0x277D85DE8];
  __strlcpy_chk();
  a2[36] = a4;
  if (a4 <= 0)
  {
    v24 = a4;
  }

  else
  {
    v33 = a3;
    v15 = a2 + 53;
    v16 = a2 + 69;
    v17 = a4;
    v34 = a4;
    v18 = a5;
    v19 = a5;
    do
    {
      v20 = *a8;
      if (a5)
      {
        v21 = ps_gsm_source_index(a1, v20, v18);
        v15[23] = *(v18 + 128);
        v22 = *(v18 + 132);
      }

      else
      {
        v21 = ps_gsm_source_index(a1, v20, a7);
        v22 = 0;
        v15[23] = 0;
      }

      v15[39] = v22;
      if (v21 == -1)
      {
        v37 = 0;
        asprintf(&v37, "%s GST (%s) Unable to find source name %s in source name cache", "ps_gsm_init_gst", v33, v18);
        v29 = __PolarisGSMLogSharedInstance();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *buf = 136316162;
          v39 = "ps_gsm_init_gst";
          v40 = 1024;
          v41 = 272;
          v42 = 2080;
          v43 = "ps_gsm_init_gst";
          v44 = 2080;
          v45 = v33;
          v46 = 2080;
          v47 = v19;
          _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_FAULT, "%s:%d %s GST (%s) Unable to find source name %s in source name cache", buf, 0x30u);
        }

        v30 = OSLogFlushBuffers();
        if (v30)
        {
          v31 = v30;
          v32 = __PolarisGSMLogSharedInstance();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v39 = "ps_gsm_init_gst";
            v40 = 1024;
            v41 = v31;
            _os_log_impl(&dword_25EA3A000, v32, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
          }
        }

        else
        {
          usleep(0x1E8480u);
        }

        abort_with_reason();
      }

      *(v15 - 16) = v21;
      *v15++ = 64;
      *(a2 + 432) = a6;
      *(a2 + 55) = a9;
      v23 = *a8++;
      *v16++ = v23;
      v19 += 136;
      v18 += 136;
      a7 += 128;
      --v17;
    }

    while (v17);
    v24 = v34;
  }

  *(a2 + 37) = (~(-1 << v24) << 48) | 0x8000000000000000;
  atomic_store(0, a2 + 147);
  for (i = 112; i != 294; i += 2)
  {
    atomic_store(0x8000000000000000, &a2[i]);
  }

  *(a2 + 1184) = 0;
  a2[300] = -1;
  ps_gsm_gst_command_queue_init((a2 + 302));
  *(a2 + 1312) = *(a1 + 4776);
  result = MEMORY[0x25F8C98A0](*(a1 + 4 * *a2 + 168));
  v27 = atomic_load(a2 + 1);
  atomic_store(v27 | 0x400000000000000, a2 + 1);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *ps_gsm_clear_gst_reservation(uint64_t a1, uint64_t a2)
{
  v4 = **(a1 + 64);
  ps_util_assert_less_than_equal_unsigned(v4);
  v5 = *a2;
  v6 = (*(a1 + 64) + 8);

  return ps_reservation_clear(v6, v4, v5, (a2 + 8));
}

void ps_gsm_gst_handle_source_death(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x400)
  {
    v9[1] = v2;
    v9[2] = v3;
    v8 = ps_gsm_gst_handle_source_death_cold_1(v9, a2);
    ps_util_assert_less_than_equal_unsigned(v8);
  }

  else
  {
    v4 = (*(a1 + 72) + 1320 * a2);
    if ((atomic_load_explicit(v4 + 147, memory_order_acquire) & 0x4000000000000) != 0)
    {
      if (*(v4 + 1184) == 1)
      {
        v5 = *(v4 + 601);
        v6 = *(v4 + 600);

        ps_gsm_shared_trigger_handle_source_death(a1, v5, v6);
      }

      else
      {
        v7 = *(a1 + 4 * *v4 + 168);

        ps_gsm_signal_sem();
      }
    }
  }
}

unint64_t ps_util_assert_less_than_equal_unsigned(unint64_t result)
{
  if (result >= 0x401)
  {
    v4[1] = v1;
    v4[2] = v2;
    v3 = ps_util_assert_less_than_equal_unsigned_cold_1(v4, result);
    return __ps_gsm_start_gst_reservation_block_invoke(v3);
  }

  return result;
}

void ps_gsm_request_waiter_sequenced_teardown(uint64_t a1, atomic_ullong *a2)
{
  explicit = atomic_load_explicit(a2 + 147, memory_order_acquire);
  do
  {
    v3 = explicit;
    atomic_compare_exchange_strong(a2 + 147, &explicit, explicit & 0xE001FFFFFFFFFFFFLL | 0x6000000000000);
  }

  while (explicit != v3);
  if ((v3 & 0x4000000000000) == 0)
  {
    if (*(a2 + 1184) == 1)
    {
      v5 = ps_gsm_request_waiter_sequenced_teardown_cold_1(&v6, a2);
      ps_gsm_gst_trigger_set_stride(v5);
    }

    else
    {
      v4 = *(a1 + 4 * *a2 + 168);

      ps_gsm_signal_sem();
    }
  }
}

unint64_t *ps_gsm_gst_trigger_set_stride(unint64_t *result, unint64_t a2)
{
  if (a2 >= 0x3FF)
  {
    v6[1] = v2;
    v6[2] = v3;
    ps_gsm_gst_trigger_set_stride_cold_1(v6, a2);
    return ps_gsm_remove_gst(v4, v5);
  }

  else
  {
    *result = *result & 0xE007FFFFFFFFFFFFLL | (a2 << 51);
  }

  return result;
}

uint64_t ps_gsm_remove_gst(unint64_t *a1, uint64_t a2)
{
  explicit = atomic_load_explicit((a2 + 8), memory_order_acquire);
  if (*(a2 + 144) >= 1)
  {
    v5 = 0;
    v6 = a2 + 276;
    do
    {
      ps_gsm_request_gst_removal_from_source(a1, *(v6 + v5) != 0, *(v6 + 4 * v5 - 128), *(v6 + 4 * v5 - 64), explicit & 0xFFFFFFFFFFLL);
      ++v5;
    }

    while (v5 < *(a2 + 144));
  }

  ps_gsm_request_waiter_removal(a1, a2);
  return 0;
}

void ps_gsm_request_waiter_removal(uint64_t a1, atomic_ullong *a2)
{
  explicit = atomic_load_explicit(a2 + 147, memory_order_acquire);
  do
  {
    v5 = explicit;
    atomic_compare_exchange_strong(a2 + 147, &explicit, explicit | 0x5000000000000);
  }

  while (explicit != v5);
  if (*(a2 + 1184) == 1)
  {
    ps_gsm_shared_trigger_terminate_reservation(a1, *(a2 + 601), *(a2 + 600));
    if ((v5 & 0x4000000000000) == 0)
    {
      v6 = *(a2 + 601);
      v7 = *(a2 + 600);

      ps_gsm_shared_trigger_signal(a1, v6, v7);
    }
  }

  else if ((v5 & 0x4000000000000) == 0)
  {
    v8 = *(a1 + 4 * *a2 + 168);

    ps_gsm_signal_sem();
  }
}

unint64_t *ps_gsm_remove_gst_reference(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = (a2 + 8);
  explicit = atomic_load_explicit((a2 + 8), memory_order_acquire);
  while ((explicit & 0xFFFFFFFFFFLL) == a3)
  {
    if (explicit == (a3 & 0xFFFFFFFFFFLL | a4 | 0x400000000000000))
    {
      if (*(a2 + 1184) == 1)
      {
        ps_gsm_shared_trigger_remove_reservation(result, *(a2 + 1202), *(a2 + 1200));
      }

      v10 = *v5[8];
      ps_util_assert_less_than_equal_unsigned(v10);
      v11 = *a2;
      v12 = (v5[8] + 8);

      return ps_reservation_clear(v12, v10, v11, v6);
    }

    v8 = explicit;
    atomic_compare_exchange_strong(v6, &v8, explicit & ~a4);
    v9 = v8 == explicit;
    explicit = v8;
    if (v9)
    {
      return result;
    }
  }

  return result;
}

unint64_t *ps_gsm_remove_source_from_gst(unint64_t *a1, int a2, int a3, uint64_t a4)
{
  ps_util_assert_less_than_signed(a2, 1024);
  ps_util_assert_less_than_signed(a3, 16);
  v8 = a1[9] + 1320 * a2;

  return ps_gsm_remove_gst_reference(a1, v8, a4, (1 << a3) << 40);
}

uint64_t ps_util_assert_less_than_signed(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (result >= a2)
  {
    v4 = result;
    v9 = 0;
    asprintf(&v9, "Out of bounds assert error (%llud>= %lld)", result, a2);
    v5 = __PSUtilitiesLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v11 = "ps_util_assert_less_than_signed";
      v12 = 1024;
      v13 = 213;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = a2;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d Out of bounds assert error (%llud>= %lld)", buf, 0x26u);
    }

    v6 = OSLogFlushBuffers();
    if (v6)
    {
      v7 = v6;
      v8 = __PSUtilitiesLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "ps_util_assert_less_than_signed";
        v12 = 1024;
        v13 = v7;
        _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_gsm_notify_legacy_gst(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = a3;
  v7 = (*(a1 + 72) + 1320 * a2);
  v8 = &v7[a3];
  v9 = v8[76];
  v10 = v8[92];
  v11 = *(v7 + 432);
  v12 = *(v7 + 37);
  v13 = v7[36];
  ps_gsm_get_source_name(a1, *(v7 + a3 + 276), v8[37]);
  v14 = a4 & 0xFFFFFFFFFFFFLL;
  if (v9)
  {
    v15 = v14 == 0xFFFFFFFFFFFELL;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && v14 / v10 % v9)
  {
    v39 = *(a1 + 128);
    goto LABEL_47;
  }

  if (v11)
  {
    v16 = a4 & 0xFFFFFFFFFFFFLL;
    LOBYTE(v17) = 1;
    if (v16 != 0xFFFFFFFFFFFFLL)
    {
      v18 = &v7[2 * (v16 - 91 * ((v16 * 0x2D02D02D02D02D1uLL) >> 64)) + 112];
      v19 = atomic_load(v18);
      v20 = (1 << v5);
      v21 = v20 << 48;
      v22 = v12 | v16;
      v23 = v16 & 0xFFFFFFFFFFFFLL | (v20 << 48) | 0x8000000000000000;
      v24 = 0xFFFFFFFFFFFFLL;
      while ((v19 & 0xFFFFFFFFFFFFLL) <= v16)
      {
        v25 = v19 | v21;
        if (v22 == (v19 | v21))
        {
          v25 = 0x8000000000000000;
        }

        if ((v19 & 0xFFFFFFFFFFFFLL) < v16)
        {
          v25 = v23;
        }

        v26 = (v19 & 0xFFFFFFFFFFFFLL) >= v16 && v22 == (v19 | v21);
        if (v26)
        {
          v24 = v16;
        }

        v27 = v19;
        atomic_compare_exchange_strong(v18, &v27, v25);
        v15 = v27 == v19;
        v19 = v27;
        if (v15)
        {
          if (!v26)
          {
            break;
          }

          v43 = 0;
          explicit = atomic_load_explicit(v7 + 147, memory_order_acquire);
          v29 = v24 & 0xFFFFFFFFFFFFLL;
          do
          {
            v30 = explicit;
            v31 = (explicit >> 49) & 1;
            if (v16 == 0xFFFFFFFFFFFELL)
            {
              LODWORD(v31) = 1;
            }

            if (v31)
            {
              v32 = 0x2000000000000;
            }

            else
            {
              v32 = 0;
            }

            v43 = v29 | explicit & 0xFFF9000000000000 | v32 | 0x4000000000000;
            ps_gsm_gst_trigger_set_stride(&v43, v10 * v9);
            atomic_compare_exchange_strong(v7 + 147, &explicit, v43);
          }

          while (explicit != v30);
          v17 = (v30 >> 50) & 1;
          if ((v30 & 0x4000000000000) == 0)
          {
            ps_gsm_gst_notify_start(a1);
            if (*(v7 + 1184) == 1)
            {
              ps_gsm_shared_trigger_signal(a1, *(v7 + 601), *(v7 + 600));
            }

            else
            {
              v42 = *(a1 + 4 * *v7 + 168);
              ps_gsm_signal_sem();
            }
          }

          goto LABEL_46;
        }
      }

LABEL_43:
      LOBYTE(v17) = 1;
    }
  }

  else
  {
    LOBYTE(v17) = 1;
    atomic_fetch_or(v7 + 56, (1 << v5) << 48);
    v33 = v12;
    atomic_compare_exchange_strong(v7 + 56, &v33, 0x8000000000000000);
    if (v33 == v12)
    {
      v34 = a4 & 0xFFFFFFFFFFFFLL;
      v35 = atomic_load_explicit(v7 + 147, memory_order_acquire);
      if (v13 != 1)
      {
        v34 = 0xFFFFFFFFFFFFLL;
      }

      do
      {
        v36 = v35;
        v37 = (v35 >> 49) & 1;
        if (v34 == 0xFFFFFFFFFFFELL)
        {
          LODWORD(v37) = 1;
        }

        if (v37)
        {
          v38 = 0x2000000000000;
        }

        else
        {
          v38 = 0;
        }

        atomic_compare_exchange_strong(v7 + 147, &v35, v35 & 0xE001000000000000 | v34 | v38 | 0x4000000000000);
      }

      while (v35 != v36);
      if ((v36 & 0x4000000000000) == 0)
      {
        ps_gsm_gst_notify_start(a1);
        if (*(v7 + 1184) == 1)
        {
          ps_gsm_shared_trigger_signal(a1, *(v7 + 601), *(v7 + 600));
        }

        else
        {
          v40 = *(a1 + 4 * *v7 + 168);
          ps_gsm_signal_sem();
        }

        LOBYTE(v17) = 0;
        goto LABEL_46;
      }

      goto LABEL_43;
    }
  }

LABEL_46:
  v39 = v17 & *(a1 + 128);
LABEL_47:
  if (v39)
  {
    return 3758097112;
  }

  else
  {
    return 0;
  }
}

uint64_t ps_gsm_notify_gst(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6 = (*(a1 + 72) + 1320 * a2);
  if (*(v6 + 110))
  {
    v7 = a4 & 0xFFFFFFFFFFFFLL;
    should_be_recorded = ps_gsm_gst_frameid_should_be_recorded(*(a1 + 72) + 1320 * a2, a4 & 0xFFFFFFFFFFFFLL);
    if (v7 != 0xFFFFFFFFFFFELL && !should_be_recorded)
    {
      goto LABEL_20;
    }

    explicit = atomic_load_explicit(&v6[v7 - 91 * ((v7 * 0x2D02D02D02D02D1uLL) >> 64) + 56], memory_order_acquire);
    v10 = explicit & 0xFFFFFFFFFFFFLL;
    if ((explicit & 0xFFFFFFFFFFFFLL) <= v7)
    {
      v13 = (1 << a3);
      v14 = v13 << 48;
      v15 = v7 & 0xFFFFFFFFFFFFLL | (v13 << 48) | 0x8000000000000000;
      v16 = explicit;
      do
      {
        v11 = explicit | v14;
        if (v10 < v7)
        {
          v11 = v15;
        }

        atomic_compare_exchange_strong(&v6[v7 - 91 * ((v7 * 0x2D02D02D02D02D1uLL) >> 64) + 56], &v16, v11);
        if (v16 == explicit)
        {
          break;
        }

        v10 = v16 & 0xFFFFFFFFFFFFLL;
        explicit = v16;
      }

      while ((v16 & 0xFFFFFFFFFFFFLL) <= v7);
    }

    else
    {
      v11 = 0;
    }

    if (v11 == (v6[37] | v7))
    {
      ps_gsm_gst_did_trigger_so_execute_gst_commands_upto_frameid(v6, v7);
      v21 = 0;
      v17 = atomic_load_explicit(v6 + 147, memory_order_acquire);
      do
      {
        v18 = v17;
        v21 = v7 | v17 & 0xFFFF000000000000 | 0x4000000000000;
        ps_gsm_gst_trigger_set_stride(&v21, *(v6 + 110));
        atomic_compare_exchange_strong(v6 + 147, &v17, v21);
      }

      while (v17 != v18);
      v19 = (v18 >> 50) & 1;
      if ((v18 & 0x4000000000000) == 0)
      {
        ps_gsm_gst_notify_start(a1);
        if (*(v6 + 1184) == 1)
        {
          ps_gsm_shared_trigger_signal(a1, *(v6 + 601), *(v6 + 600));
        }

        else
        {
          v20 = *(a1 + 4 * *v6 + 168);
          ps_gsm_signal_sem();
        }
      }
    }

    else
    {
LABEL_20:
      LOBYTE(v19) = 1;
    }

    if ((v19 & *(a1 + 128)) != 0)
    {
      return 3758097112;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return ps_gsm_notify_legacy_gst(a1, a2, a3, a4);
  }
}

uint64_t ps_gsm_wait_gst(unint64_t *a1, atomic_ullong *a2, unint64_t *a3, mach_timespec_t a4)
{
  v8 = a1 + 21;
  while (*(a2 + 1184) != 1)
  {
    v9 = a4;
    v10 = ps_gsm_wait_on_sem(*(v8 + *a2), v9);
    if (v10)
    {
      goto LABEL_14;
    }

    *a3 = *a3 & 0xFC00000000000000 | 0xFFFFFFFFFFFFLL;
    explicit = atomic_load_explicit(a2 + 147, memory_order_acquire);
    do
    {
      v12 = explicit;
      atomic_compare_exchange_strong(a2 + 147, &explicit, explicit & 0xFFFB000000000000 | 0xFFFFFFFFFFFFLL);
    }

    while (explicit != v12);
    if ((v12 & 0x1000000000000) != 0)
    {
      ps_gsm_wait_gst_cold_1(a1, a2, &v16);
      return v16;
    }

    if ((v12 & 0x2000000000000) != 0)
    {
      ps_gsm_wait_gst_cold_2(a3, v12);
      return 0;
    }

    if ((v12 & 0xFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFLL)
    {
      v13 = 0;
      *a3 = (v12 >> 3) & 0x3FF000000000000 | v12 & 0xFFFFFFFFFFFFLL | *a3 & 0xFC00000000000000;
      return v13;
    }

    if ((a2[54] & 1) == 0)
    {
      return 0;
    }
  }

  v10 = ps_gsm_wait_gst_cold_3(&v15, a2);
LABEL_14:
  if (v10 == 1)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

unint64_t *ps_gsm_create_gst_container(unint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))(a2, 1320 * a1 + 144);
  *v3 = a1;
  ps_reservation_init_mask(v3 + 1, a1);
  if (a1)
  {
    v4 = 0;
    v5 = xmmword_25EB77790;
    v6 = vdupq_n_s64(a1 - 1);
    v7 = xmmword_25EB77120;
    v8 = vdupq_n_s64(4uLL);
    v9 = v3;
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v6, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v9 + 36) = v4;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v9 + 366) = v4 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v6, *&v5))).i32[1])
      {
        *(v9 + 696) = v4 + 2;
        *(v9 + 1026) = v4 + 3;
      }

      v4 += 4;
      v5 = vaddq_s64(v5, v8);
      v7 = vaddq_s64(v7, v8);
      v9 += 660;
    }

    while (((a1 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
  }

  return v3;
}

uint64_t ps_gsm_print_gst_to_buffer(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v120 = a2;
  v119 = a3;
  v118 = *(a1 + 432);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "Name: %s group-synced:%d\n", a4, a5, a6, a7, a8, a1 + 16);
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\nToken:\n", v10, v11, v12, v13, v14, v111);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\tpid: %u\n", v15, v16, v17, v18, v19, explicit);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\tcounter: %u\n", v20, v21, v22, v23, v24, SBYTE4(explicit));
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\tnonce: %llu\n", v25, v26, v27, v28, v29, explicit);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\tsources: %0x\n", v30, v31, v32, v33, v34, SBYTE5(explicit));
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\twaiter: %u\n", v35, v36, v37, v38, v39, HIBYTE(explicit) & 1);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\nInit complete: %d\n", v40, v41, v42, v43, v44, (explicit & 0x400000000000000) != 0);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\nSources:\n", v45, v46, v47, v48, v49, v112);
  if (*(a1 + 144) >= 1)
  {
    v55 = 0;
    v56 = (a1 + 212);
    do
    {
      ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\tglobal_source_index: %u\n", v50, v51, v52, v53, v54, *(v56 - 16));
      ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\tlocal_gst_index: %u\n", v57, v58, v59, v60, v61, *v56);
      ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\tdown sample: %u\n", v62, v63, v64, v65, v66, v56[23]);
      ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\tstride: %u\n", v67, v68, v69, v70, v71, v56[39]);
      ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\n", v72, v73, v74, v75, v76, v114);
      ++v55;
      ++v56;
    }

    while (v55 < *(a1 + 144));
  }

  v77 = atomic_load_explicit((a1 + 1176), memory_order_acquire);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\nTrigger:\n", v50, v51, v52, v53, v54, v113);
  if ((v77 & 0xFFFFFFFFFFFFLL) == 0xFFFFFFFFFFFFLL)
  {
    v83 = "\ttag: TAG_READ\n";
  }

  else
  {
    v115 = v77;
    v83 = "\ttag: %llu\n";
  }

  ps_gsm_print_gst_data_to_buffer(&v120, &v119, v83, v78, v79, v80, v81, v82, v115);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\tshould_exit: %d\n", v84, v85, v86, v87, v88, BYTE6(v77) & 1);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\tsequenced_teardown: %d\n", v89, v90, v91, v92, v93, (v77 & 0x2000000000000) != 0);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\tsem_signaled: %d\n", v94, v95, v96, v97, v98, (v77 & 0x4000000000000) != 0);
  ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\nReady sources:\n", v99, v100, v101, v102, v103, v116);
  for (i = 0; i != 91; ++i)
  {
    atomic_load_explicit((a1 + 448 + 8 * i), memory_order_acquire);
    ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\t%d: tag: %llu ready: %0x", v104, v105, v106, v107, v108, i);
  }

  return ps_gsm_print_gst_data_to_buffer(&v120, &v119, "\n", v104, v105, v106, v107, v108, v117);
}

unint64_t ps_gsm_gst_handle_process_death(uint64_t a1, int a2)
{
  v4 = **(a1 + 64);
  result = ps_util_assert_less_than_equal_unsigned(v4);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = *(a1 + 72) + 1320 * i;
      explicit = atomic_load_explicit((v7 + 8), memory_order_acquire);
      while (1)
      {
        v9 = explicit;
        if (explicit != a2)
        {
          break;
        }

        atomic_compare_exchange_strong((v7 + 8), &explicit, explicit | 0x200000000000000);
        if (explicit == v9)
        {
          ps_gsm_gst_handle_death(a1, v7);
          result = ps_gsm_remove_gst_reference(a1, v7, v9 & 0xFFFFFFFFFFLL, 0x200000000000000);
          break;
        }
      }
    }
  }

  return result;
}

unint64_t *ps_gsm_gst_handle_death(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = __PolarisGSMLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v16 = 136315394;
    v17 = a2 + 16;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Handling death for GST (%s) on idx (%d)", &v16, 0x12u);
  }

  explicit = atomic_load_explicit((a2 + 8), memory_order_acquire);
  if ((explicit & 0x400000000000000) != 0)
  {
    v8 = atomic_load((a2 + 8));
    result = ps_gsm_remove_gst_reference(a1, a2, v8 & 0xFFFFFFFFFFLL, 0x100000000000000);
    if (*(a2 + 144) >= 1)
    {
      v9 = 0;
      do
      {
        v10 = a2 + 4 * v9;
        gst_in_source = *(v10 + 212);
        v12 = *(v10 + 148);
        v13 = *(a2 + v9 + 276);
        if (gst_in_source == 64 && (gst_in_source = ps_gsm_find_gst_in_source(a1, v12, explicit & 0xFFFFFFFFFFLL), gst_in_source == 64))
        {
          result = ps_gsm_remove_source_from_gst(a1, *a2, v9, explicit & 0xFFFFFFFFFFLL);
        }

        else if (v13)
        {
          if (v13 != 1)
          {
            ps_gsm_gst_handle_death_cold_1(v13, &v16);
          }

          result = ps_gsm_request_gst_removal_from_source(a1, 1, v12, gst_in_source, explicit & 0xFFFFFFFFFFLL);
        }

        else
        {
          result = ps_gsm_remove_source_from_gst(a1, *a2, v9, explicit & 0xFFFFFFFFFFLL);
          if (*(a1 + 4776) == 1)
          {
            v14 = *(a1 + 104) + 672 * v12;
            result = ps_reservation_clear((v14 + 152), 0x40uLL, gst_in_source, (v14 + 8 * gst_in_source + 160));
          }
        }

        ++v9;
      }

      while (v9 < *(a2 + 144));
    }
  }

  else
  {
    result = ps_gsm_clear_gst_reservation(a1, a2);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_gsm_gst_process_execution_for_shared_trigger(unint64_t *a1, unsigned int a2, void *a3, unint64_t *a4)
{
  v4 = a1[9] + 1320 * a2;
  *a3 = *(v4 + 1192);
  *a4 |= 0xFFFFFFFFFFFFuLL;
  explicit = atomic_load_explicit((v4 + 1176), memory_order_acquire);
  do
  {
    v6 = explicit;
    atomic_compare_exchange_strong((v4 + 1176), &explicit, explicit & 0xFFFB000000000000 | 0xFFFFFFFFFFFFLL);
  }

  while (explicit != v6);
  if ((v6 & 0x1000000000000) != 0)
  {
    ps_gsm_wait_gst_cold_1(a1, v4, &v8);
    return v8;
  }

  else if ((v6 & 0xFFFFFFFFFFFFLL) == 0xFFFFFFFFFFFFLL)
  {
    if (*(v4 + 432))
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *a4 = (v6 >> 3) & 0x3FF000000000000 | v6 & 0xFFFFFFFFFFFFLL | *a4 & 0xFC00000000000000;
  }

  return result;
}

uint64_t ps_gsm_get_gst(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x400)
  {
    ps_gsm_get_gst_cold_1();
  }

  return *(a1 + 72) + 1320 * a2;
}

uint64_t ps_gsm_get_gst_index(int *a1)
{
  result = *a1;
  if (result >= 1024)
  {
    ps_gsm_get_gst_index_cold_1();
  }

  return result;
}

uint64_t ps_gsm_print_gst_data_to_buffer(char **a1, _DWORD *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = vsnprintf(*a1, *a2, a3, &a9);
  if (result < 1 || *a2 <= result)
  {
    *a2 = 0;
  }

  else
  {
    *a2 -= result;
    *a1 += result;
  }

  return result;
}

unint64_t *OUTLINED_FUNCTION_5_3(unint64_t *a1, uint64_t a2)
{
  v3 = atomic_load((a2 + 8));

  return ps_gsm_remove_gst_reference(a1, a2, v3 & 0xFFFFFFFFFFLL, 0x100000000000000);
}

void OUTLINED_FUNCTION_6_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

uint64_t ps_gsm_gst_command_queue_init(uint64_t result)
{
  if (!result)
  {
    ps_gsm_gst_command_queue_init_cold_1();
  }

  atomic_store(0, (result + 96));
  return result;
}

BOOL ps_gsm_gst_frameid_should_be_recorded(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xFFFFFFFFFFFFLL)
  {
    ps_gsm_gst_frameid_should_be_recorded_cold_1();
  }

  explicit = atomic_load_explicit((a1 + 1304), memory_order_acquire);
  while ((explicit & 0xFFFFFFFFFFFFLL) <= a2)
  {
    v3 = explicit & 0xFFFF000000000000 | (a2 + 1);
    v4 = explicit;
    atomic_compare_exchange_strong((a1 + 1304), &v4, v3);
    v5 = v4 == explicit;
    explicit = v4;
    if (v5)
    {
      explicit = v3;
      break;
    }
  }

  v6 = *(a1 + 440);
  v7 = (explicit >> 50) & 7;
  if (v7)
  {
    v9 = -v7;
    for (i = v7 + HIWORD(explicit) - 1; ; --i)
    {
      v11 = a1 + 1208 + 24 * (i & 3);
      if (*v11 == 1 && *(v11 + 8) <= a2)
      {
        break;
      }

      if (__CFADD__(v9++, 1))
      {
        return a2 % v6 == HIDWORD(v6);
      }
    }

    v6 = *(v11 + 16);
  }

  return a2 % v6 == HIDWORD(v6);
}

uint64_t ps_gsm_gst_change_cadence_on_next_valid_frame_id_for_cadence(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 1312) == 1)
  {
    return ps_gsm_gst_schedule_stride_change_command(a1, 0, a2);
  }

  else
  {
    return -1;
  }
}

uint64_t ps_gsm_gst_schedule_stride_change_command(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a2 >= 0xFFFFFFFFFFFFLL)
  {
    ps_gsm_gst_schedule_stride_change_command_cold_2();
  }

  v3 = a3;
  v6 = a1 + 1208;
  explicit = atomic_load_explicit((a1 + 1304), memory_order_acquire);
  v8 = HIDWORD(a3);
  while ((explicit & 0x1C000000000000) != 0x10000000000000)
  {
    v9 = explicit & 0xFFFFFFFFFFFFLL;
    if ((explicit & 0xFFFFFFFFFFFFLL) <= a2)
    {
      v9 = a2;
    }

    if (HIDWORD(a3) >= a3)
    {
      ps_gsm_gst_schedule_stride_change_command_cold_1();
    }

    v10 = v9 % a3;
    if (v10 != v8)
    {
      v11 = v9 + v8;
      if (v10 >= v8)
      {
        v11 += a3;
      }

      v9 = v11 - v10;
    }

    v12 = v9 & 0xFFFFFFFFFFFFLL;
    v13 = v6 + 24 * ((BYTE6(explicit) + (explicit >> 50)) & 3);
    *v13 = 1;
    *(v13 + 8) = v9 & 0xFFFFFFFFFFFFLL;
    *(v13 + 16) = a3;
    v14 = explicit;
    atomic_compare_exchange_strong((a1 + 1304), &v14, (explicit + 0x4000000000000) & 0x1C000000000000 | explicit & 0xFFE3000000000000 | (v9 + 1) & 0xFFFFFFFFFFFFLL);
    v15 = v14 == explicit;
    explicit = v14;
    if (v15)
    {
      v16 = __PolarisGSMLogSharedInstance();
      if (os_signpost_enabled(v16))
      {
        v17 = *(a1 + 440);
        v21 = 136316419;
        *v22 = a1 + 16;
        *&v22[8] = 2048;
        *&v22[10] = v12;
        v23 = 1025;
        v24 = v17;
        v25 = 1025;
        v26 = HIDWORD(v17);
        v27 = 1025;
        v28 = v3;
        v29 = 1025;
        v30 = v8;
        _os_signpost_emit_unreliably_with_name_impl();
      }

      goto LABEL_18;
    }
  }

  v18 = __PolarisGSMLogSharedInstance();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v21 = 67109376;
    *v22 = 1;
    *&v22[4] = 2048;
    *&v22[6] = a2;
    _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_ERROR, "Command Queue Full: Request (command=%d, frameid=%lld)", &v21, 0x12u);
  }

  v12 = -1;
LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t ps_gsm_gst_change_cadence_at_or_after_frame_id(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*(a1 + 1312) == 1)
  {
    return ps_gsm_gst_schedule_stride_change_command(a1, a2, a3);
  }

  else
  {
    return -1;
  }
}

uint64_t ps_gsm_gst_did_trigger_so_execute_gst_commands_upto_frameid(uint64_t result, unint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (HIWORD(a2))
  {
    ps_gsm_gst_did_trigger_so_execute_gst_commands_upto_frameid_cold_1();
  }

  v2 = atomic_load((result + 1304));
  if ((v2 & 0x1C000000000000) != 0)
  {
    v4 = result + 1208;
    v5 = *(result + 440);
    explicit = atomic_load_explicit((result + 1304), memory_order_acquire);
    while (*(v4 + 24 * (HIWORD(explicit) & 3) + 8) <= a2)
    {
      v13 = v5;
      v14 = a2;
      v15 = result;
      v12 = explicit;
      do
      {
        ps_gsm_gst_command_queue_execute_queue_entry(v15, v4 + 24 * (HIWORD(explicit) & 3));
        v7 = explicit + 0x1000000000000;
        v8 = ((explicit + 0x1C000000000000) & 0x1C000000000000) == 0;
        explicit = (explicit + 0x1000000000000) & 0x3000000000000 | explicit & 0xFFE0FFFFFFFFFFFFLL | (explicit + 0x1C000000000000) & 0x1C000000000000;
      }

      while (!v8 && *(v4 + 24 * (HIWORD(v7) & 3) + 8) <= v14);
      a2 = v14;
      result = v15;
      v9 = v12;
      v10 = v12;
      atomic_compare_exchange_strong((v15 + 1304), &v10, explicit);
      explicit = v10;
      v5 = v13;
      if (v10 == v9)
      {
        if (*(v15 + 440) != v13)
        {
          v11 = __PolarisGSMLogSharedInstance();
          result = os_signpost_enabled(v11);
          if (result)
          {
            v16 = *(v15 + 440);
            result = _os_signpost_emit_unreliably_with_name_impl();
          }
        }

        break;
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_gsm_gst_command_queue_execute_queue_entry(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    if (*a2 != 1)
    {
      ps_gsm_gst_command_queue_execute_queue_entry_cold_1();
    }

    *(result + 440) = *(a2 + 16);
  }

  return result;
}

unint64_t *ps_gsm_create_shared_trigger_container(unint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))(a2, 312 * a1 + 16);
  ps_reservation_init_mask(v3, a1);
  if (a1)
  {
    v4 = 0;
    v5 = xmmword_25EB777B0;
    v6 = xmmword_25EB777C0;
    v7 = xmmword_25EB77790;
    v8 = vdupq_n_s64(a1 - 1);
    v9 = xmmword_25EB77120;
    v10 = vdupq_n_s64(8uLL);
    v11 = v3;
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v8, v9));
      if (vuzp1_s8(vuzp1_s16(v12, *v5.i8), *v5.i8).u8[0])
      {
        *(v11 + 8) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(v12, *&v5), *&v5).i8[1])
      {
        *(v11 + 164) = v4 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v8, *&v7))), *&v5).i8[2])
      {
        *(v11 + 320) = v4 | 2;
        *(v11 + 476) = v4 | 3;
      }

      v13 = vmovn_s64(vcgeq_u64(v8, v6));
      if (vuzp1_s8(*&v5, vuzp1_s16(v13, *&v5)).i32[1])
      {
        *(v11 + 632) = v4 | 4;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v13, *&v5)).i8[5])
      {
        *(v11 + 788) = v4 | 5;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v8, *&v5)))).i8[6])
      {
        *(v11 + 944) = v4 | 6;
        *(v11 + 1100) = v4 | 7;
      }

      v4 += 8;
      v6 = vaddq_s64(v6, v10);
      v7 = vaddq_s64(v7, v10);
      v9 = vaddq_s64(v9, v10);
      v5 = vaddq_s64(v5, v10);
      v11 += 312;
    }

    while (((a1 + 7) & 0xFFFFFFFFFFFFFFF8) != v4);
  }

  return v3;
}

uint64_t ps_gsm_shared_trigger_terminate_reservation(uint64_t a1, unsigned int a2, unsigned int a3)
{
  ps_util_assert_less_than_unsigned(a2, 0x80uLL);
  ps_util_assert_less_than_unsigned(a3, 0x40uLL);
  v6 = *(a1 + 120) + 312 * a2 + 160;

  return ps_reservation_set_mask_value_at_index(v6, a3, 1);
}

unint64_t ps_util_assert_less_than_unsigned(unint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (result >= a2)
  {
    v4 = result;
    v9 = 0;
    asprintf(&v9, "Out of bounds assert error (%llu >= %llu)", result, a2);
    v5 = __PSUtilitiesLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v11 = "ps_util_assert_less_than_unsigned";
      v12 = 1024;
      v13 = 192;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = a2;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d Out of bounds assert error (%llu >= %llu)", buf, 0x26u);
    }

    v6 = OSLogFlushBuffers();
    if (v6)
    {
      v7 = v6;
      v8 = __PSUtilitiesLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "ps_util_assert_less_than_unsigned";
        v12 = 1024;
        v13 = v7;
        _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void ps_gsm_shared_trigger_signal(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x80)
  {
    ps_gsm_shared_trigger_signal_cold_2();
  }

  if (a3 >= 0x40)
  {
    ps_gsm_shared_trigger_signal_cold_1();
  }

  v3 = (*(a1 + 120) + 312 * a2);
  explicit = atomic_load_explicit(v3 + 18, memory_order_acquire);
  v5 = 1 << a3;
  do
  {
    v6 = explicit;
    v7 = explicit | v5;
    if (explicit < 0)
    {
      v7 = (explicit | v5) & 0x7FFFFFFFFFFFFFFFLL;
    }

    atomic_compare_exchange_strong(v3 + 18, &explicit, v7);
  }

  while (explicit != v6);
  if (v6 < 0)
  {
    v8 = *(a1 + 4 * *v3 + 4264);

    ps_gsm_signal_sem();
  }
}

void ps_gsm_shared_trigger_get_available_index(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 160);
  v4 = (a2 + 152);
  while (1)
  {
    explicit = atomic_load_explicit(v3, memory_order_acquire);
    v6 = atomic_load_explicit(v4, memory_order_acquire);
    v7 = atomic_load_explicit((a2 + 144), memory_order_acquire);
    if (!v7)
    {
      break;
    }

    v8 = v7 & explicit;
    if ((v7 & explicit) != 0)
    {
      first_bit_from_offset = ps_reservation_get_first_bit_from_offset(v7 & explicit, 0x40uLL, 0);
      if (first_bit_from_offset != -1)
      {
        goto LABEL_9;
      }
    }

    if ((v7 & v6) != 0)
    {
      first_bit_from_offset = ps_reservation_get_first_bit_from_offset(v7 & v6, 0x40uLL, *(a2 + 304));
      if (first_bit_from_offset != -1)
      {
        goto LABEL_9;
      }
    }

    v10 = v6;
    atomic_compare_exchange_strong(v4, &v10, v7);
    if (v10 != v6)
    {
      first_bit_from_offset = ps_gsm_shared_trigger_get_available_index_cold_2(&v17, a2);
LABEL_9:
      v11 = first_bit_from_offset;
      do
      {
        if ((v7 & (1 << first_bit_from_offset)) == 0)
        {
          available_index_cold_1 = ps_gsm_shared_trigger_get_available_index_cold_1(&v17, a2);
          ps_gsm_shared_trigger_remove_reservation(available_index_cold_1, v15, v16);
          return;
        }

        v12 = v7;
        atomic_compare_exchange_strong((a2 + 144), &v12, v7 & ~(1 << first_bit_from_offset));
        v13 = v12 == v7;
        v7 = v12;
      }

      while (!v13);
      if (v8)
      {
        ps_reservation_set_mask_value_at_index(v3, first_bit_from_offset, 0);
      }

      else
      {
        ps_reservation_set_mask_value_at_index(v4, first_bit_from_offset, 0);
        *(a2 + 304) = v11;
      }

      return;
    }
  }
}

void ps_gsm_shared_trigger_remove_reservation(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  ps_util_assert_less_than_unsigned(a2, 0x80uLL);
  ps_util_assert_less_than_unsigned(a3, 0x40uLL);
  v6 = (*(a1 + 120) + 312 * a2);
  if ((atomic_load_explicit(v6 + 21, memory_order_acquire) >> a3))
  {
    v7 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = v6 + 1;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "Shared Trigger (%s) Could not repair. The shared trigger will go out of commission.", &v17, 0xCu);
    }

LABEL_14:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  explicit = atomic_load_explicit(v6 + 17, memory_order_acquire);
  ps_reservation_set_mask_value_at_index((v6 + 18), a3, 0);
  ps_reservation_remove(v6 + 21, 0x40uLL, a3);
  do
  {
    v9 = explicit;
    if ((explicit & 0xFF00000000) != 0)
    {
      v10 = explicit & 0xFFFFFF00FFFFFFFFLL | (((explicit + 0xFF00000000) >> 32) << 32);
    }

    else
    {
      v10 = explicit;
    }

    atomic_compare_exchange_strong(v6 + 17, &explicit, v10);
  }

  while (explicit != v9);
  v11 = v9 & 0x10000000000;
  if ((v10 & 0xFF00000000) != 0 || v11 == 0)
  {
    goto LABEL_14;
  }

  v14 = *(a1 + 112);
  v15 = *v6;
  v16 = *MEMORY[0x277D85DE8];

  ps_reservation_clear(v14, 0x80uLL, v15, v6 + 17);
}

unint64_t *ps_gsm_remove_shared_trigger(unint64_t *result, atomic_ullong *a2)
{
  v2 = a2 + 17;
  explicit = atomic_load_explicit(a2 + 17, memory_order_acquire);
  do
  {
    v4 = explicit;
    atomic_compare_exchange_strong(v2, &explicit, explicit | 0x10000000000);
  }

  while (explicit != v4);
  if ((v4 & 0xFF00000000) == 0)
  {
    return ps_reservation_clear(result[14], 0x80uLL, *a2, v2);
  }

  return result;
}

uint64_t ps_gsm_shared_trigger_add_reservation(uint64_t a1, uint64_t a2, __int16 a3, _WORD *a4, _WORD *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  *a4 = -1;
  *a5 = -1;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __ps_gsm_shared_trigger_add_reservation_block_invoke;
  v17[3] = &__block_descriptor_tmp_16;
  v17[4] = a2;
  v9 = ps_reservation_retry(v17);
  if (v9 == -1)
  {
    v14 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = a2 + 2;
      _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_ERROR, "Shared Trigger (%s) Out of reservation spots", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    explicit = atomic_load_explicit((a2 + 136), memory_order_acquire);
    while (1)
    {
      v11 = 0;
      if (!explicit || (explicit & 0x10000000000) != 0)
      {
        break;
      }

      v12 = explicit;
      atomic_compare_exchange_strong((a2 + 136), &v12, (explicit + 0x100000000) & 0xFF00000000 | explicit & 0xFFFFFE00FFFFFFFFLL);
      v13 = v12 == explicit;
      explicit = v12;
      if (v13)
      {
        *(a2 + 2 * v9 + 176) = a3;
        *a4 = v9;
        *a5 = *a2;
        v11 = 1;
        break;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

unint64_t *ps_gsm_shared_trigger_handle_process_death(unint64_t *result, int a2)
{
  v3 = result;
  v4 = 136;
  v5 = 128;
  do
  {
    v6 = (v3[15] + v4);
    if (atomic_load_explicit(v6, memory_order_acquire) == a2)
    {
      result = ps_gsm_remove_shared_trigger(v3, v6 - 17);
    }

    v4 += 312;
    --v5;
  }

  while (v5);
  return result;
}

unint64_t *ps_gsm_create_shared_trigger_internal(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __ps_gsm_create_shared_trigger_internal_block_invoke;
  v11[3] = &__block_descriptor_tmp_6;
  v11[4] = a1;
  v11[5] = a3;
  v5 = ps_reservation_retry(v11);
  if (v5 == -1)
  {
    v8 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = a2;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "Shared Trigger (%s) No free slot available reserving a new shared trigger", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v6 = v5;
    ps_reservation_complete(*(a1 + 112), 0x80uLL, v5);
    v7 = (*(a1 + 120) + 312 * v6);
    atomic_store(0, v7 + 18);
    atomic_store(0, v7 + 19);
    atomic_store(0, v7 + 20);
    atomic_store(0x3FFFFFFFFFFFFFFFuLL, v7 + 21);
    *(v7 + 152) = 0;
    if (a2)
    {
      __strlcpy_chk();
    }

    MEMORY[0x25F8C98A0](*(a1 + 4 * *v7 + 4264));
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ps_gsm_wait_shared_trigger(uint64_t result, atomic_ullong *a2, void *a3, unint64_t *a4, mach_timespec_t a5)
{
  v9 = result;
  v10 = result + 4264;
  v11 = (a2 + 22);
LABEL_2:
  while (2)
  {
    explicit = atomic_load_explicit(a2 + 18, memory_order_acquire);
    do
    {
      if ((explicit & 0x4000000000000000) != 0)
      {
        LOBYTE(result) = 2;
        return result;
      }

      if ((explicit & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        ps_gsm_shared_trigger_get_available_index(result, a2);
        if (result == 63 || (v16 = result, result == -1))
        {
          ps_gsm_wait_shared_trigger_cold_1(&v18, a2);
        }

        if (((atomic_load_explicit(a2 + 21, memory_order_acquire) >> result) & 1) == 0)
        {
          v17 = v11[result];
          if (v17 != 0xFFFF)
          {
            result = ps_gsm_gst_process_execution_for_shared_trigger(v9, v17, a3, a4);
            if (result != 2)
            {
              if (result == 1)
              {
                v11[v16] = -1;
              }

              return result;
            }
          }
        }

        goto LABEL_2;
      }

      v13 = explicit;
      atomic_compare_exchange_strong(a2 + 18, &v13, 0x8000000000000000);
      v14 = v13 == explicit;
      explicit = v13;
    }

    while (!v14);
    v15 = a5;
    result = ps_gsm_wait_on_sem(*(v10 + 4 * *a2), v15);
    if (!result)
    {
      continue;
    }

    break;
  }

  if (result == 1)
  {
    LOBYTE(result) = 3;
  }

  else
  {
    LOBYTE(result) = 2;
  }

  return result;
}

void ps_gsm_shared_trigger_handle_source_death(uint64_t a1, unsigned int a2, unsigned int a3)
{
  ps_util_assert_less_than_unsigned(a2, 0x80uLL);
  ps_util_assert_less_than_unsigned(a3, 0x40uLL);
  v6 = (*(a1 + 120) + 312 * a2);
  ps_reservation_set_mask_value_at_index((v6 + 72), a3, 1);
  v7 = *(a1 + 4 * *v6 + 4264);

  ps_gsm_signal_sem();
}

void ps_gsm_shared_trigger_remove_waiter(uint64_t a1, unsigned __int16 *a2)
{
  ps_reservation_set_mask_value_at_index((a2 + 72), 62, 1);
  v4 = *(a1 + 4 * *a2 + 4264);

  ps_gsm_signal_sem();
}

uint64_t ps_gsm_get_shared_trigger(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x80)
  {
    ps_gsm_get_shared_trigger_cold_1();
  }

  return *(a1 + 120) + 312 * a2;
}

void ps_gsm_finish_clear_gst_async(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = xpc_dictionary_create(0, 0, 0);
  populateSourceInfo(v6, 3uLL, *a2, a3, *(a2 + 144));
  v7 = xpc_session_send_message(*(a1 + 4784), v6);
  if (v7)
  {
    v8 = xpc_rich_error_copy_description(v7);
    v9 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = v8;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "Failed to send an XPC message for graphsAddedRemoved to polarisd, aborting! Error = %s", &v11, 0xCu);
    }

    free(v8);
  }

  xpc_release(v6);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t ps_gsm_source_index(uint64_t a1, int a2, char *cStr)
{
  v5 = 152;
  if (!a2)
  {
    v5 = 160;
  }

  v6 = *(a1 + v5);
  v7 = CFStringCreateWithCStringNoCopy(0, cStr, 0x8000100u, *MEMORY[0x277CBED00]);
  if (!CFDictionaryContainsKey(v6, v7))
  {
    ps_gsm_update_source_name_cache(a1, a2);
  }

  valuePtr = 0;
  if (CFDictionaryContainsKey(v6, v7))
  {
    Value = CFDictionaryGetValue(v6, v7);
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  else
  {
    valuePtr = -1;
  }

  CFRelease(v7);
  return valuePtr;
}

void ps_gsm_update_source_name_cache(uint64_t a1, int a2)
{
  v2 = 88;
  if (!a2)
  {
    v2 = 104;
  }

  v3 = 80;
  if (!a2)
  {
    v3 = 96;
  }

  v4 = 152;
  if (!a2)
  {
    v4 = 160;
  }

  v5 = *(a1 + v4);
  v6 = *(a1 + v3);
  v7 = *v6;
  v18 = v6 + 1;
  v8 = *(a1 + v2);
  ps_util_assert_less_than_equal_unsigned_0(*v6);
  v9 = 0;
  v10 = *MEMORY[0x277CBED00];
  do
  {
    explicit = atomic_load_explicit(&v18[v9], memory_order_acquire);
    if (explicit != -1)
    {
      v12 = ~explicit;
      v13 = v9 << 6;
      do
      {
        v14 = __clz(__rbit64(v12));
        valuePtr = v13 | v14;
        if (v7 <= (v13 | v14))
        {
          break;
        }

        v15 = CFStringCreateWithCStringNoCopy(0, (v8 + 672 * (v13 | v14) + 16), 0x8000100u, v10);
        if (!CFDictionaryContainsKey(v5, v15))
        {
          v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFDictionaryAddValue(v5, v15, v16);
          CFRelease(v16);
        }

        CFRelease(v15);
        v12 &= ~(1 << v14);
      }

      while (v12);
    }
  }

  while (v9++ != (v7 - 1) >> 6);
}

unint64_t ps_util_assert_less_than_equal_unsigned_0(unint64_t result)
{
  if (result >= 0x401)
  {
    v3[1] = v1;
    v3[2] = v2;
    ps_util_assert_less_than_equal_unsigned_cold_1_0(v3, result);
  }

  return result;
}

uint64_t ps_gsm_add_gst_to_source(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v31 = *MEMORY[0x277D85DE8];
  ps_util_assert_less_than_signed(a3, 1024);
  ps_util_assert_less_than_signed(a4, 1024);
  ps_util_assert_less_than_signed(a5, 16);
  v12 = 88;
  if (!a2)
  {
    v12 = 104;
  }

  v13 = *(a1 + v12) + 672 * a3;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 0x40000000;
  v18[2] = __ps_gsm_add_gst_to_source_block_invoke;
  v18[3] = &__block_descriptor_tmp_17;
  v18[4] = v13;
  v18[5] = a6 & 0xFFFFFFFFFFLL | ((a4 & 0x3FF) << 40) & 0xFFC3FFFFFFFFFFFFLL | ((a5 & 0xF) << 50);
  v14 = ps_reservation_retry(v18);
  if (v14 == -1)
  {
    v15 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v20 = v13 + 16;
      v21 = 1024;
      v22 = a3;
      v23 = 1024;
      v24 = a4;
      v25 = 1024;
      v26 = a5;
      v27 = 2048;
      v28 = a6;
      v29 = 1024;
      v30 = -1;
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_ERROR, "No free slot found for adding trigger to source (%s) - global source idx %d gst idx %d, local source idx (%d), nonce (%llu), free_slot (%d)", buf, 0x2Eu);
    }
  }

  else
  {
    ps_reservation_complete(v13 + 152, 0x40uLL, v14);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

unint64_t *ps_gsm_request_gst_removal_from_source(unint64_t *a1, int a2, int a3, int a4, uint64_t a5)
{
  ps_util_assert_less_than_signed(a3, 1024);
  result = ps_util_assert_less_than_signed(a4, 64);
  v11 = 11;
  if (!a2)
  {
    v11 = 13;
  }

  v12 = a1[v11] + 672 * a3;
  explicit = atomic_load_explicit((v12 + 160 + 8 * a4), memory_order_acquire);
  while ((explicit & 0xFFFFFFFFFFLL) == a5)
  {
    if ((explicit & 0x80000000000000) != 0)
    {
      v14 = 0x100000000000000;
    }

    else
    {
      v14 = 0x40000000000000;
    }

    v15 = v14 | explicit;
    v16 = explicit;
    atomic_compare_exchange_strong((v12 + 160 + 8 * a4), &v16, v15);
    v17 = v16 == explicit;
    explicit = v16;
    if (v17)
    {
      if ((v15 & 0x40000000000000) != 0)
      {

        return ps_gsm_finish_clear_gst(a1, v12, a4);
      }

      return result;
    }
  }

  return result;
}

unint64_t *ps_gsm_finish_clear_gst(unint64_t *a1, uint64_t a2, int a3)
{
  v5 = (a2 + 8 * a3 + 160);
  explicit = atomic_load_explicit(v5, memory_order_acquire);
  ps_gsm_remove_source_from_gst(a1, (explicit >> 40) & 0x3FF, (explicit >> 50) & 0xF, explicit & 0xFFFFFFFFFFLL);

  return ps_reservation_clear((a2 + 152), 0x40uLL, a3, v5);
}

uint64_t ps_gsm_create_source(uint64_t a1, int a2, char *a3)
{
  v6 = getpid();

  return ps_gsm_create_source_internal(a1, a2, a3, v6);
}

uint64_t ps_gsm_create_source_internal(uint64_t a1, int a2, char *a3, int a4)
{
  v6 = a2;
  v28 = *MEMORY[0x277D85DE8];
  v7 = 152;
  if (!a2)
  {
    v7 = 160;
  }

  v8 = 88;
  if (!a2)
  {
    v8 = 104;
  }

  v9 = 80;
  if (!a2)
  {
    v9 = 96;
  }

  v10 = *(a1 + v9);
  v11 = *(a1 + v8);
  v12 = *(a1 + v7);
  v13 = ps_gsm_source_index(a1, a2, a3);
  valuePtr = v13;
  if (v13 == -1)
  {
    v17 = *v10;
    v15 = (v10 + 4);
    v16 = v17;
    ps_util_assert_less_than_equal_unsigned_0(v17);
    v18 = ps_reservation_start(v15, v17, v11 + 8, 672, a4);
    valuePtr = v18;
    if (v18 == -1)
    {
      v22 = __PolarisGSMLogSharedInstance();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = a3;
        _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_ERROR, "No free slot found for adding source - key %s", buf, 0xCu);
      }

      v14 = 0;
    }

    else
    {
      v14 = v11 + 672 * v18;
      __strlcpy_chk();
      v19 = 0;
      *(v14 + 144) = v6;
      atomic_store(0xFFFFFFFFFFFFFFFFLL, (v14 + 152));
      do
      {
        atomic_store(0, (v14 + 160 + v19));
        v19 += 8;
      }

      while (v19 != 512);
      v20 = CFStringCreateWithCString(0, a3, 0x8000100u);
      v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v12, v20, v21);
      CFRelease(v21);
      CFRelease(v20);
      ps_reservation_complete(v15, v16, *v14);
    }
  }

  else
  {
    v14 = v11 + 672 * v13;
    atomic_store(a4, (v14 + 8));
  }

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t ps_gsm_remove_source(uint64_t a1, uint64_t a2)
{
  explicit = atomic_load_explicit((a2 + 152), memory_order_acquire);
  if (explicit == -1)
  {
    return 0;
  }

  v3 = ~explicit;
  while (1)
  {
    v4 = __clz(__rbit64(v3));
    if ((atomic_load_explicit((a2 + 160 + 8 * v4), memory_order_acquire) & 0x100000000000000) != 0)
    {
      break;
    }

    v3 &= ~(1 << v4);
    if (!v3)
    {
      return 0;
    }
  }

  v5 = 3758097084;
  v7 = __PolarisGSMLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "ps_gsm_remove_source called with gst_map.removal_requested still pending", v8, 2u);
  }

  return v5;
}

uint64_t ps_gsm_notify(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  ps_gsm_gst_notify_start(a1);
  explicit = atomic_load_explicit((a2 + 152), memory_order_acquire);
  if (explicit != -1)
  {
    v7 = ~explicit;
    do
    {
      v8 = __clz(__rbit64(v7));
      v9 = (a2 + 160 + 8 * v8);
      v10 = atomic_load_explicit(v9, memory_order_acquire);
      while (v10)
      {
        v11 = v10;
        if ((v10 & 0x240000000000000) != 0)
        {
          break;
        }

        atomic_compare_exchange_strong(v9, &v10, v10 | 0x80000000000000);
        if (v10 == v11)
        {
          if ((atomic_load_explicit((a1[10] + 136), memory_order_acquire) & 1) == 0)
          {
            ps_gsm_notify_gst(a1, (v11 >> 40) & 0x3FF, (v11 >> 50) & 0xF, a3);
          }

          v12 = atomic_load_explicit(v9, memory_order_acquire);
          while ((v12 & 0x100000000000000) == 0)
          {
            if ((v12 & 0x80000000000000) == 0)
            {
              ps_gsm_notify_cold_1();
            }

            v13 = v12;
            atomic_compare_exchange_strong(v9, &v13, v12 & 0xFE7FFFFFFFFFFFFFLL);
            v14 = v13 == v12;
            v12 = v13;
            if (v14)
            {
              goto LABEL_21;
            }
          }

          if (a1[598])
          {
            v15 = v12;
            do
            {
              atomic_compare_exchange_strong(v9, &v15, v12 | 0x200000000000000);
              v14 = v15 == v12;
              v12 = v15;
            }

            while (!v14);
            ps_gsm_finish_clear_gst_async(a1, a2, v8);
          }

          else
          {
            ps_gsm_finish_clear_gst(a1, a2, v8);
          }

          break;
        }
      }

LABEL_21:
      v7 &= ~(1 << v8);
    }

    while (v7);
  }

  return ps_gsm_gst_notify_complete(a1);
}

uint64_t ps_gsm_create_source_container(unint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))(a2, 672 * a1 + 144);
  *v3 = a1;
  atomic_store(0, (v3 + 136));
  ps_reservation_init_mask((v3 + 8), a1);
  if (a1)
  {
    v4 = 0;
    v5 = (v3 + 296);
    do
    {
      *(v5 - 38) = v4;
      ps_reservation_init_mask(v5, 0x40uLL);
      ++v4;
      v5 += 84;
    }

    while (a1 != v4);
  }

  return v3;
}

uint64_t ps_gsm_get_source_name(uint64_t a1, int a2, int a3)
{
  v3 = 88;
  if (!a2)
  {
    v3 = 104;
  }

  return *(a1 + v3) + 672 * a3 + 16;
}

uint64_t ps_gsm_find_gst_in_source(uint64_t a1, int a2, uint64_t a3)
{
  ps_util_assert_less_than_signed(a2, 1024);
  v6 = 0;
  v7 = *(a1 + 88) + 672 * a2;
  while ((atomic_load_explicit((v7 + 160 + 8 * v6), memory_order_acquire) & 0xFFFFFFFFFFLL) != a3)
  {
    if (++v6 == 64)
    {
      return v6;
    }
  }

  ps_reservation_complete(v7 + 152, 0x40uLL, v6);
  return v6;
}

void ps_gsm_source_handle_process_death(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 80);
  ps_util_assert_less_than_equal_unsigned_0(v4);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(a1 + 88) + 672 * i;
      if (atomic_load_explicit((v6 + 8), memory_order_acquire) == a2)
      {
        v7 = __PolarisGSMLogSharedInstance();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *v6;
          *buf = 136315394;
          v18 = v6 + 16;
          v19 = 1024;
          v20 = v8;
          _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "Handling death for source (%s) on idx (%d)", buf, 0x12u);
        }

        for (j = 0; j != 64; ++j)
        {
          v10 = (v6 + 160 + 8 * j);
          if (atomic_load(v10))
          {
            explicit = atomic_load_explicit(v10, memory_order_acquire);
            do
            {
              v13 = explicit;
              atomic_compare_exchange_strong(v10, &explicit, explicit & 0xFF7FFFFFFFFFFFFFLL);
            }

            while (explicit != v13);
            v14 = __PolarisGSMLogSharedInstance();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *v6;
              *buf = 136315650;
              v18 = v6 + 16;
              v19 = 1024;
              v20 = v15;
              v21 = 1024;
              v22 = (v13 >> 40) & 0x3FF;
              _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "Handling death for source (%s) on idx (%d), for gst (%d)", buf, 0x18u);
            }

            ps_gsm_gst_handle_source_death(a1, (v13 >> 40) & 0x3FF);
            if ((v13 & 0x100000000000000) != 0)
            {
              ps_gsm_finish_clear_gst(a1, v6, j);
            }
          }
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t ps_gsm_get_source(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 >= 0x400)
  {
    ps_gsm_get_source_cold_2();
  }

  if (a3)
  {
    if (a3 != 1)
    {
      ps_gsm_get_source_cold_1();
    }

    v3 = 88;
  }

  else
  {
    v3 = 104;
  }

  return *(a1 + v3) + 672 * a2;
}

uint64_t _liveness_get_node_address(uint64_t a1, int a2)
{
  if (a2 == -1 || (a2 & 0x7FFFFFFu) >= *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return a1 + (16 * *(a1 + 12)) + 16 * (a2 & 0x7FFFFFF);
  }
}

uint64_t _liveness_get_node_metadata_address(uint64_t a1, int a2)
{
  if (a2 == -1 || (a2 & 0x7FFFFFFu) >= *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return a1 + (16 * *(a1 + 16)) + 400 * (a2 & 0x7FFFFFF);
  }
}

void ps_liveness_init(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __ps_liveness_init_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &gClientLiveness;
  if (xmmword_27FD12828 != -1)
  {
    dispatch_once(&xmmword_27FD12828, block);
  }

  atomic_fetch_add(&xmmword_27FD12818 + 3, 1u);
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = &xmmword_27FD12808 + 8;
  }

  _liveness_cleanup_session_by_name(v2, 2);
  v3 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    v7 = a1;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEBUG, "Liveness: initalized (session=%{public}s)\n", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __ps_liveness_init_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  **(a1 + 32) = ps_buffer_create_serial_data_reader();
  if (!**(a1 + 32))
  {
    v24 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28[0]) = 0;
      _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_ERROR, "Liveness: Can't access SDR, disabling\n", v28, 2u);
    }

    *(*(a1 + 32) + 8) = 0;
    goto LABEL_9;
  }

  *(*(a1 + 32) + 8) = ps_buffer_get_serial_data_read_buffer();
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    v5 = *(v3 + 8);
    *(*(a1 + 32) + 16) = ps_buffer_get_serial_data_read_buffer();
    v6 = *(a1 + 32);
    v7 = *v6;
    v8 = *(v6[1] + 12);
    v6[3] = ps_buffer_get_serial_data_read_buffer();
    v9 = *(a1 + 32);
    v10 = *v9;
    v11 = *(v9[1] + 16);
    v9[4] = ps_buffer_get_serial_data_read_buffer();
    v12 = *(a1 + 32);
    v13 = *v12;
    v14 = *(v12[1] + 20);
    v12[7] = ps_buffer_get_serial_data_read_buffer();
    v15 = *(a1 + 32);
    v16 = *v15;
    v17 = *(v15[1] + 24);
    v15[5] = ps_buffer_get_serial_data_read_buffer();
    v18 = *(a1 + 32);
    v19 = *v18;
    v20 = *(v18[1] + 28);
    v18[6] = ps_buffer_get_serial_data_read_buffer();
    v21 = getpid();
    v22 = *(a1 + 32);
    v22[11].numer = v21;
    mach_timebase_info(v22 + 8);
    memset(v28, 0, sizeof(v28));
    if (proc_pidinfo(*(*(a1 + 32) + 88), 13, 0, v28, 64) == 64)
    {
      *(*(a1 + 32) + 88);
    }

    __strlcpy_chk();
    v23 = *(a1 + 32);
    atomic_store(0, (v23 + 148));
    atomic_store(1u, (v23 + 92));
LABEL_9:
    v25 = *MEMORY[0x277D85DE8];
    return;
  }

  v26 = __ps_liveness_init_block_invoke_cold_1(v28);
  _liveness_cleanup_session_by_name(v26, v27);
}

void _liveness_cleanup_session_by_name(const char *a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (qword_27FD127D0)
  {
    v4 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v9) = 136315138;
      *(&v9 + 4) = a1;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEBUG, "Liveness: cleaning session name %s\n", &v9, 0xCu);
    }

    if (a1)
    {
      v9 = 0uLL;
      if (*(qword_27FD127D0 + 32))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = atomic_load((xmmword_27FD127E8 + v5));
          if (v7 && !strcmp((xmmword_27FD127E8 + v5 + 88), a1))
          {
            _liveness_cleanup_session_by_name_cold_1(v6, &v9, v7, a2);
          }

          ++v6;
          v5 += 400;
        }

        while (v6 < *(qword_27FD127D0 + 32));
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ps_liveness_destroy(const char *a1)
{
  v1 = qword_27FD127D0;
  if (qword_27FD127D0)
  {
    v2 = &gClientLiveness;
  }

  else
  {
    v2 = 0;
  }

  if (qword_27FD127D0)
  {
    if (!a1)
    {
      a1 = &xmmword_27FD12808 + 8;
    }

    _liveness_cleanup_session_by_name(a1, 8);
    v3 = &xmmword_27FD12818 + 12;
  }

  else
  {
    v3 = 92;
  }

  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 2)
  {
    v4 = *v2;
    v5 = &xmmword_27FD12838 + 8;
    *v2 = 0;
    if (!v1)
    {
      v5 = 120;
    }

    v6 = *v5;
    *v5 = 0;
    if (v4)
    {
      ps_buffer_destroy_serial_data_reader();
      ps_buffer_destroy_semaphore_array();
    }

    qword_27FD12858 = 0;
    xmmword_27FD12838 = 0u;
    *&qword_27FD12848 = 0u;
    xmmword_27FD12808 = 0u;
    xmmword_27FD12818 = 0u;
    xmmword_27FD127E8 = 0u;
    xmmword_27FD127F8 = 0u;
    gClientLiveness = 0u;
    xmmword_27FD127D8 = 0u;
    xmmword_27FD12828 = 0u;
    v7 = 96;
    if (v1)
    {
      v7 = &xmmword_27FD12828;
    }

    *v7 = 0;
    v8 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEBUG, "Liveness: destroyed\n", v9, 2u);
    }
  }
}

double ps_liveness_disable_global_access()
{
  v0 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_25EA3A000, v0, OS_LOG_TYPE_DEBUG, "Liveness: globally disabled\n", v2, 2u);
  }

  qword_27FD12858 = 0;
  result = 0.0;
  xmmword_27FD12838 = 0u;
  *&qword_27FD12848 = 0u;
  xmmword_27FD12818 = 0u;
  xmmword_27FD12828 = 0u;
  xmmword_27FD127F8 = 0u;
  xmmword_27FD12808 = 0u;
  xmmword_27FD127D8 = 0u;
  xmmword_27FD127E8 = 0u;
  gClientLiveness = 0u;
  return result;
}

uint64_t ps_liveness_node_allocate()
{
  if (!qword_27FD127D0)
  {
    return 0xFFFFFFFFLL;
  }

  v0 = xmmword_27FD127D8;
  v1 = ps_ringbuffer_allocate();
  LODWORD(v2) = 0;
  *v1 = SDWORD2(xmmword_27FD12818);
  v3 = atomic_load(v0);
  do
  {
    if (!v3)
    {
      while (1)
      {
        v2 = (v2 + 1);
        if (v2 >= *(qword_27FD127D0 + 36))
        {
          goto LABEL_15;
        }

        v3 = atomic_load((v0 + 8 * v2));
        if (v3)
        {
          v4 = v2;
          goto LABEL_8;
        }
      }
    }

    v4 = v2;
LABEL_8:
    v5 = __clz(__rbit64(v3));
    v6 = v3;
    atomic_compare_exchange_strong((v0 + 8 * v4), &v6, v3 & ~(1 << v5));
    _ZF = v6 == v3;
    v3 = v6;
  }

  while (!_ZF);
  v8 = v5 | (v2 << 6);
  if (v8 >= *(qword_27FD127D0 + 32))
  {
LABEL_15:
    v20 = 0xFFFFFFFFLL;
    *(v1 + 8) = -1;
    goto LABEL_16;
  }

  v9 = atomic_fetch_add((*(&xmmword_27FD127F8 + 1) + 4 * v8), 1u) + 1;
  v10 = (*(&v0 + 1) + 16 * v8);
  v11 = *v10;
  _X2 = -1;
  do
  {
    _X7 = v10[1];
    __asm { CASPAL          X6, X7, X2, X3, [X10] }

    _ZF = _X6 == v11;
    v11 = _X6;
  }

  while (!_ZF);
  _X10 = qword_27FD127D0 + 40;
  __asm { LDUMAX          W11, W10, [X10] }

  v20 = v8 | (v9 << 27) | 0x80000000;
  *(v1 + 8) = v9;
LABEL_16:
  ps_ringbuffer_close_allocation_with_aux();
  return v20;
}

uint64_t ps_liveness_node_free(int a1)
{
  v1 = 0;
  v27 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) == 0 || !qword_27FD127D0)
  {
    goto LABEL_16;
  }

  if (a1 == -1)
  {
LABEL_15:
    v1 = 0;
    goto LABEL_16;
  }

  v2 = a1 & 0x7FFFFFF;
  if (v2 >= *(qword_27FD127D0 + 32))
  {
    snprintf(buf, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_node_free", a1);
    if (qword_27FD127D0 && strlen(buf))
    {
      v16 = ps_ringbuffer_allocate();
      *v16 = SDWORD2(xmmword_27FD12818);
      strlcpy((v16 + 8), buf, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_15;
  }

  v3 = ps_ringbuffer_allocate();
  v4 = atomic_load((xmmword_27FD127E8 + 400 * v2));
  *v3 = v4;
  *(v3 + 8) = 1;
  *(v3 + 12) = *(xmmword_27FD127E8 + 400 * v2 + 116);
  LODWORD(v4) = atomic_load((*(&xmmword_27FD127F8 + 1) + 4 * v2));
  *(v3 + 16) = v4;
  __strlcpy_chk();
  __strlcpy_chk();
  strlcpy((v3 + 104), (xmmword_27FD127E8 + 400 * v2 + 88), 0x10uLL);
  *(v3 + 20) = *(xmmword_27FD127E8 + 400 * v2 + 108);
  ps_ringbuffer_close_allocation();
  if (v2 < *(qword_27FD127D0 + 32))
  {
    v5 = (qword_27FD127D0 + (16 * *(qword_27FD127D0 + 12)) + 16 * v2);
    v6 = *v5;
    _X2 = -1;
    do
    {
      _X5 = v5[1];
      __asm { CASPAL          X4, X5, X2, X3, [X8] }

      _ZF = _X4 == v6;
      v6 = _X4;
    }

    while (!_ZF);
  }

  v14 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = xmmword_27FD127E8 + 400 * v2;
    *buf = 67109890;
    v20 = v2;
    v21 = 2082;
    v22 = v15 + 8;
    v23 = 2082;
    v24 = v15 + 72;
    v25 = 2082;
    v26 = v15 + 88;
    _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "Liveness: node %08x deleted (key=%{public}s, aux=%{public}s, session=%{public}s)\n", buf, 0x26u);
  }

  v1 = 1;
LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t ps_liveness_node_set_base_info(int a1, int a2, _BYTE *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) == 0 || a1 == -1 || !qword_27FD127D0)
  {
    goto LABEL_2;
  }

  v5 = a1 & 0x7FFFFFF;
  if (v5 >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "_liveness_is_node_valid_and_initializing", a1);
    if (qword_27FD127D0 && strlen(__str))
    {
      v20 = ps_ringbuffer_allocate();
      *v20 = SDWORD2(xmmword_27FD12818);
      strlcpy((v20 + 8), __str, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_2;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  if (_X2 != -1 || (v14 = atomic_load((*(&xmmword_27FD127F8 + 1) + 4 * v5)), a2))
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  v15 = -2128831035;
  if (a3)
  {
    v16 = *a3;
    v17 = -2128831035;
    if (*a3)
    {
      v18 = a3 + 1;
      do
      {
        v17 = 16777619 * (v17 ^ v16);
        v19 = *v18++;
        v16 = v19;
      }

      while (v19);
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = [MEMORY[0x277CCAC38] processInfo];
  v22 = [v21 processName];
  v23 = [v22 UTF8String];
  if (v23)
  {
    v24 = *v23;
    if (*v23)
    {
      v25 = v23 + 1;
      do
      {
        v15 = 16777619 * (v15 ^ v24);
        v26 = *v25++;
        v24 = v26;
      }

      while (v26);
    }
  }

  else
  {
    v15 = 0;
  }

  __strlcpy_chk();
  *(xmmword_27FD127E8 + 400 * v5 + 72) = 0u;
  __strlcpy_chk();
  v27 = xmmword_27FD127E8 + 400 * v5;
  *(v27 + 104) = v15;
  *(v27 + 108) = v17;
  *(v27 + 112) = 0;
  *(v27 + 116) = v14;
  *&v28 = -1;
  *(&v28 + 1) = -1;
  *(v27 + 120) = v28;
  *(v27 + 160) = 0u;
  *(v27 + 208) = xmmword_25EB777F0;
  v29 = mach_absolute_time();
  v30 = xmmword_27FD127E8 + 400 * v5;
  *(v30 + 176) = v29;
  *(v30 + 184) = 0u;
  v32 = xmmword_27FD12808;
  v31 = DWORD1(xmmword_27FD12808);
  *(v30 + 360) = 4000000000u * DWORD1(xmmword_27FD12808) / xmmword_27FD12808;
  *(v30 + 368) = 20000000000 * v31 / v32;
  *(v30 + 376) = 1000000000 * v31 / v32;
  *(v30 + 392) = 0;
  *(v30 + 144) = 0u;
  *(v30 + 136) = -1;
  atomic_store(SDWORD2(xmmword_27FD12818), v30);
  result = 1;
LABEL_3:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_liveness_node_set_aux_string(int a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) == 0 || a1 == -1 || !qword_27FD127D0)
  {
    goto LABEL_2;
  }

  v4 = a1 & 0x7FFFFFF;
  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "_liveness_is_node_valid_and_initializing", a1);
    if (qword_27FD127D0 && strlen(__str))
    {
      v14 = ps_ringbuffer_allocate();
      *v14 = SDWORD2(xmmword_27FD12818);
      strlcpy((v14 + 8), __str, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_2;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  if (_X2 != -1 || (v12 = atomic_load((xmmword_27FD127E8 + 400 * v4))) == 0)
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  v13 = xmmword_27FD127E8 + 400 * v4;
  if (a2)
  {
    __strlcpy_chk();
  }

  else
  {
    *(v13 + 72) = 0;
    *(v13 + 80) = 0;
  }

  result = 1;
LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_liveness_node_set_session(int a1, _BYTE *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) == 0 || a1 == -1 || !qword_27FD127D0)
  {
    goto LABEL_2;
  }

  v4 = a1 & 0x7FFFFFF;
  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "_liveness_is_node_valid_and_initializing", a1);
    if (qword_27FD127D0 && strlen(__str))
    {
      v20 = ps_ringbuffer_allocate();
      *v20 = SDWORD2(xmmword_27FD12818);
      strlcpy((v20 + 8), __str, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_2;
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  if (_X0 != -1 || (v13 = atomic_load((xmmword_27FD127E8 + 400 * v4))) == 0)
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  if (a2)
  {
    v14 = 2166136261;
    __strlcpy_chk();
    v15 = *a2;
    if (*a2)
    {
      v16 = a2 + 1;
      do
      {
        v14 = 16777619 * (v14 ^ v15);
        v17 = *v16++;
        v15 = v17;
      }

      while (v17);
    }

    v18 = xmmword_27FD127E8 + 400 * v4;
    *(v18 + 104) = v14;
    v19 = SDWORD2(xmmword_27FD12818) | (v14 << 32);
  }

  else
  {
    __strlcpy_chk();
    v19 = SDWORD2(xmmword_27FD12818);
    v18 = xmmword_27FD127E8 + 400 * v4;
  }

  atomic_store(v19, v18);
  result = 1;
LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_liveness_node_set_deadlines(int a1, unint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 == -1 || !qword_27FD127D0)
  {
LABEL_10:
    result = 0;
    goto LABEL_13;
  }

  v3 = a1 & 0x7FFFFFF;
  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_node_set_deadlines", a1);
    if (qword_27FD127D0 && strlen(__str))
    {
      v12 = ps_ringbuffer_allocate();
      *v12 = SDWORD2(xmmword_27FD12818);
      strlcpy((v12 + 8), __str, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_10;
  }

  v6 = xmmword_27FD12808;
  v5 = DWORD1(xmmword_27FD12808);
  v7 = xmmword_27FD127E8;
  v8 = xmmword_27FD127E8 + 400 * v3;
  *(v8 + 120) = DWORD1(xmmword_27FD12808) * a3 / xmmword_27FD12808;
  *(v8 + 128) = a2;
  if (a2)
  {
    v9 = 0x3B9ACA00 / a2;
    *(v7 + 400 * v3 + 376) = 10 * v5 * (0x3B9ACA00 / a2) / v6;
    v10 = ps_util_ns_to_mach_time(0x2540BE400uLL);
    v11 = xmmword_27FD127E8;
    *(xmmword_27FD127E8 + 400 * v3 + 216) = v10;
    if (a2 > 0xA)
    {
      *(v11 + 400 * v3 + 392) = 0;
    }

    else
    {
      *(v11 + 400 * v3 + 392) = (((720575941 * v9) >> 32) >> 24) + 1;
    }
  }

  result = 1;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_liveness_node_set_qos(int a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1 < 0 && a1 != -1 && qword_27FD127D0)
  {
    v4 = a1 & 0x7FFFFFF;
    if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
    {
      snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "_liveness_is_node_valid_and_initializing", a1);
      if (qword_27FD127D0 && strlen(__str))
      {
        v13 = ps_ringbuffer_allocate();
        *v13 = SDWORD2(xmmword_27FD12818);
        strlcpy((v13 + 8), __str, 0x200uLL);
        ps_ringbuffer_close_allocation();
      }
    }

    else
    {
      _X2 = 0;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X9] }

      if (_X2 == -1)
      {
        if (atomic_load((xmmword_27FD127E8 + 400 * v4)))
        {
          *(xmmword_27FD127E8 + 400 * v4 + 160) = a2;
          result = 1;
          goto LABEL_3;
        }
      }
    }
  }

  result = 0;
LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_liveness_node_set_startup_idle_timeout(int a1, uint64_t a2)
{
  result = 0;
  v16 = *MEMORY[0x277D85DE8];
  if (a1 < 0 && qword_27FD127D0)
  {
    if (a1 != -1)
    {
      v4 = a1 & 0x7FFFFFF;
      if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
      {
        snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "_liveness_is_node_valid_and_initializing", a1);
        if (qword_27FD127D0 && strlen(__str))
        {
          v13 = ps_ringbuffer_allocate();
          *v13 = SDWORD2(xmmword_27FD12818);
          strlcpy((v13 + 8), __str, 0x200uLL);
          ps_ringbuffer_close_allocation();
        }
      }

      else
      {
        _X2 = 0;
        _X3 = 0;
        __asm { CASPAL          X2, X3, X2, X3, [X8] }

        if (_X2 == -1)
        {
          if (atomic_load((xmmword_27FD127E8 + 400 * v4)))
          {
            *(xmmword_27FD127E8 + 400 * v4 + 360) = DWORD1(xmmword_27FD12808) * a2 / xmmword_27FD12808;
            result = 1;
            goto LABEL_12;
          }
        }
      }
    }

    result = 0;
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_liveness_node_set_runtime_hung_timeout(int a1, uint64_t a2)
{
  result = 0;
  v16 = *MEMORY[0x277D85DE8];
  if (a1 < 0 && qword_27FD127D0)
  {
    if (a1 != -1)
    {
      v4 = a1 & 0x7FFFFFF;
      if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
      {
        snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "_liveness_is_node_valid_and_initializing", a1);
        if (qword_27FD127D0 && strlen(__str))
        {
          v13 = ps_ringbuffer_allocate();
          *v13 = SDWORD2(xmmword_27FD12818);
          strlcpy((v13 + 8), __str, 0x200uLL);
          ps_ringbuffer_close_allocation();
        }
      }

      else
      {
        _X2 = 0;
        _X3 = 0;
        __asm { CASPAL          X2, X3, X2, X3, [X8] }

        if (_X2 == -1)
        {
          if (atomic_load((xmmword_27FD127E8 + 400 * v4)))
          {
            *(xmmword_27FD127E8 + 400 * v4 + 376) = DWORD1(xmmword_27FD12808) * a2 / xmmword_27FD12808;
            result = 1;
            goto LABEL_12;
          }
        }
      }
    }

    result = 0;
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ps_liveness_node_finalize(int a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!qword_27FD127D0)
  {
    v6 = 0;
    goto LABEL_21;
  }

  if ((a1 & 0x80000000) == 0 || a1 == -1)
  {
    goto LABEL_3;
  }

  v21 = a1 & 0x7FFFFFF;
  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(buf, 0x200uLL, "(%s) Node %x: out of range", "_liveness_is_node_valid_and_initializing", a1);
    if (qword_27FD127D0 && strlen(buf))
    {
      v28 = ps_ringbuffer_allocate();
      *v28 = SDWORD2(xmmword_27FD12818);
      strlcpy((v28 + 8), buf, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_3;
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  if (_X0 != -1)
  {
LABEL_3:
    v4 = -1;
    goto LABEL_4;
  }

  if (atomic_load((xmmword_27FD127E8 + 400 * v21)))
  {
    v4 = v21;
  }

  else
  {
    v4 = -1;
  }

LABEL_4:
  v5 = ps_ringbuffer_allocate();
  v6 = v4 != -1;
  if (v4 == -1)
  {
    __strlcpy_chk();
    __strlcpy_chk();
    strlcpy((v5 + 104), &xmmword_27FD12808 + 8, 0x10uLL);
    *(v5 + 16) = 0;
    *(v5 + 12) = a1;
    *v5 = SDWORD2(xmmword_27FD12818);
    ps_ringbuffer_close_allocation();
  }

  else
  {
    __strlcpy_chk();
    __strlcpy_chk();
    strlcpy((v5 + 104), (xmmword_27FD127E8 + 400 * v4 + 88), 0x10uLL);
    *(v5 + 12) = *(xmmword_27FD127E8 + 400 * v4 + 116);
    v7 = atomic_load((*(&xmmword_27FD127F8 + 1) + 4 * v4));
    *(v5 + 16) = v7;
    v8 = xmmword_27FD127E8 + 400 * v4;
    *(v5 + 20) = *(v8 + 108);
    v9 = atomic_load(v8);
    *v5 = v9;
    ps_ringbuffer_close_allocation();
    if (a2)
    {
      ps_liveness_node_finalize_cold_1(v4, v4);
    }

    else
    {
      *(xmmword_27FD127E8 + 400 * v4 + 192) = mach_absolute_time();
      if (v4 < *(qword_27FD127D0 + 32))
      {
        _X0 = 0;
        v11 = (qword_27FD127D0 + (16 * *(qword_27FD127D0 + 12)) + 16 * v4);
        v12 = *v11;
        do
        {
          _X5 = v11[1];
          __asm { CASPAL          X4, X5, X0, X1, [X8] }

          _ZF = _X4 == v12;
          v12 = _X4;
        }

        while (!_ZF);
      }
    }

    v19 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = xmmword_27FD127E8 + 400 * v4;
      *buf = 67109890;
      v30 = v4;
      v31 = 2082;
      v32 = v20 + 8;
      v33 = 2082;
      v34 = v20 + 72;
      v35 = 2082;
      v36 = v20 + 88;
      _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_DEFAULT, "Liveness: node %08x finalized (key=%{public}s, aux=%{public}s, session=%{public}s)\n", buf, 0x26u);
    }
  }

LABEL_21:
  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t ps_liveness_node_start_execution(int a1, unint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  ps_liveness_reset_deadline_if_needed(a1, a2);
  result = 0;
  if (a1 < 0 && qword_27FD127D0)
  {
    if (a1 != -1)
    {
      v4 = a1 & 0x7FFFFFF;
      if ((a1 & 0x7FFFFFFu) < *(qword_27FD127D0 + 32))
      {
        v5 = xmmword_27FD127E8;
        *(v5 + 400 * v4 + 168) = mach_absolute_time();
        result = 1;
        goto LABEL_10;
      }

      snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_node_start_execution", a1);
      if (qword_27FD127D0 && strlen(__str))
      {
        v6 = ps_ringbuffer_allocate();
        *v6 = SDWORD2(xmmword_27FD12818);
        strlcpy((v6 + 8), __str, 0x200uLL);
        ps_ringbuffer_close_allocation();
      }
    }

    result = 0;
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_liveness_node_end_execution(int a1)
{
  result = 0;
  v24 = *MEMORY[0x277D85DE8];
  if (a1 < 0 && qword_27FD127D0)
  {
    if (a1 != -1)
    {
      v3 = a1 & 0x7FFFFFF;
      if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
      {
        snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_node_end_execution", a1);
        if (qword_27FD127D0 && strlen(__str))
        {
          v21 = ps_ringbuffer_allocate();
          *v21 = SDWORD2(xmmword_27FD12818);
          strlcpy((v21 + 8), __str, 0x200uLL);
          ps_ringbuffer_close_allocation();
        }
      }

      else
      {
        v4 = xmmword_27FD127E8;
        v5 = xmmword_27FD127F8;
        v6 = mach_absolute_time();
        _X2 = 0;
        _X3 = 0;
        v9 = v4 + 400 * v3;
        v10 = 0xFFFFFFFFLL;
        if (v6 - *(v9 + 168) < 0xFFFFFFFF)
        {
          v10 = v6 - *(v9 + 168);
        }

        v11 = *(v9 + 120);
        __asm { CASPAL          X2, X3, X2, X3, [X11] }

        while (_X2 != -1)
        {
          if (v10 <= (_X2 >> 4))
          {
            v17 = _X2;
          }

          else
          {
            v17 = _X2 & 0xFFFFFFF00000000FLL | (16 * v10);
          }

          _X0 = v17 & 0xFFFFFFFFFLL | (v10 << 36);
          _X5 = 0;
          __asm { CASPAL          X4, X5, X0, X1, [X12] }

          _ZF = _X4 == _X2;
          _X2 = _X4;
          if (_ZF)
          {
            result = 1;
            atomic_fetch_and((v5 + 8 * (v3 >> 6)), ~(1 << a1));
            goto LABEL_19;
          }
        }
      }
    }

    result = 0;
  }

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_liveness_schedule_reset_deadline_at_frameid(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v28 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) == 0 || !qword_27FD127D0)
  {
    goto LABEL_12;
  }

  if (a1 == -1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(buf, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_schedule_reset_deadline_at_frameid", a1);
    if (qword_27FD127D0 && strlen(buf))
    {
      v17 = ps_ringbuffer_allocate();
      *v17 = SDWORD2(xmmword_27FD12818);
      strlcpy((v17 + 8), buf, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_11;
  }

  _X4 = 0;
  _X5 = 0;
  v7 = (xmmword_27FD127E8 + 400 * (a1 & 0x7FFFFFF));
  __asm { CASPAL          X4, X5, X4, X5, [X8] }

  v7[18] = a3;
  v7[19] = a4;
  v7[17] = a2;
  v13 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v7[17];
    v14 = v7[18];
    v16 = v7[16];
    *buf = 134284291;
    v21 = v15;
    v22 = 2081;
    v23 = v7 + 1;
    v24 = 2049;
    v25 = v14;
    v26 = 2049;
    v27 = v16;
    _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEFAULT, "PSLiveness - reset at %{private}llu for %{private}s to %{private}llu from %{private}llu", buf, 0x2Au);
  }

  v4 = 1;
LABEL_12:
  v18 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t ps_liveness_get_node_count(int a1)
{
  if (!qword_27FD127D0)
  {
    return 0;
  }

  if (a1)
  {
    return *(qword_27FD127D0 + 32);
  }

  return atomic_load((qword_27FD127D0 + 40));
}

_DWORD *ps_liveness_enable_history(_DWORD *result, int a2)
{
  v2 = result[1];
  if (a2)
  {
    result[1] = v2 | 1;
  }

  else
  {
    result[1] = v2 & 0xFFFFFFFE;
    v3 = result[8];
    if (v3)
    {
      _X22 = 0;
      v5 = 0;
      v6 = result + (16 * result[3]);
      do
      {
        _X1 = 0;
        __asm { CASPAL          X0, X1, X22, X23, [X8] }

        ++v5;
      }

      while (v3 != v5);
    }
  }

  return result;
}

uint64_t ps_liveness_enable_ringbuffer_logging_all(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = *(result + 4) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t ps_liveness_enable_ringbuffer_logging_node(uint64_t result, int a2, int a3)
{
  if ((a2 & 0x7FFFFFFu) < *(result + 32))
  {
    v3 = result + (16 * *(result + 16)) + 400 * (a2 & 0x7FFFFFF);
    *(v3 + 112) = *(v3 + 112) & 0xFFFFFFFE | a3;
  }

  return result;
}

uint64_t ps_liveness_get_client_node_by_name(int a1, _BYTE *a2, const char *a3)
{
  if (qword_27FD127D0)
  {
    return _liveness_get_node_by_name(a1, a2, a3, 0, SDWORD2(xmmword_27FD12818));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _liveness_get_node_by_name(int a1, _BYTE *a2, const char *a3, const char *a4, uint64_t a5)
{
  v59 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if ((a1 & 0x80000000) == 0)
    {
LABEL_47:
      v38 = 0xFFFFFFFFLL;
      goto LABEL_48;
    }

    v7 = (a1 & 0x7FFFFFF) + 1;
  }

  else
  {
    v7 = 0;
  }

  if (!qword_27FD127D0)
  {
    goto LABEL_47;
  }

  if (a2)
  {
    v8 = -2128831035;
    v9 = *a2;
    if (*a2)
    {
      v10 = 1;
      do
      {
        v8 = 16777619 * (v8 ^ v9);
        v9 = a2[v10++];
      }

      while (v9);
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = ps_ringbuffer_allocate();
  *v11 = a5;
  *(v11 + 16) = -1;
  *(v11 + 20) = v8;
  v41 = a1;
  *(v11 + 8) = 0;
  *(v11 + 12) = a1;
  __strlcpy_chk();
  __strlcpy_chk();
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = "NULL";
  }

  strlcpy((v11 + 104), v12, 0x10uLL);
  v13 = *(qword_27FD127D0 + 32);
  if (v7 >= v13)
  {
LABEL_44:
    ps_ringbuffer_close_allocation();
    v37 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110146;
      v50 = v41;
      v51 = 2082;
      v52 = a2;
      v53 = 2082;
      v54 = a3;
      v55 = 2082;
      v56 = a4;
      v57 = 2048;
      v58 = a5;
      _os_log_impl(&dword_25EA3A000, v37, OS_LOG_TYPE_ERROR, "Liveness: node not found (start=%08x, name=%{public}s, aux=%{public}s, session=%{public}s, client=%llx)\n", buf, 0x30u);
    }

    goto LABEL_47;
  }

  _X2 = 0;
  v15 = v7;
  v43 = *(&xmmword_27FD127F8 + 1);
  v44 = a3;
  v16 = xmmword_27FD127E8 + 400 * v7 + 72;
  v17 = 0;
  while (1)
  {
    v18 = atomic_load((v16 - 72));
    _X1 = v17;
    __asm { CASPAL          X0, X1, X2, X3, [X8] }

    v24 = v17 + 1;
    v25 = _X0 != -1 || v24 > 4;
    v26 = (1 << v24) & 0x19;
    _ZF = v25 || v26 == 0;
    if (_ZF && v18 != 0)
    {
      v29 = atomic_load((v43 + 4 * v15));
      v48 = v29;
      if (v8)
      {
        v47 = v8 != *(v16 + 36);
      }

      else
      {
        v47 = 0;
      }

      v30 = _X2;
      v31 = v17;
      v32 = *(v16 + 44);
      if (a3)
      {
        LOBYTE(a3) = strcmp(a3, v16) != 0;
      }

      v33 = a4;
      if (a4)
      {
        v33 = strcmp((v11 + 104), (v16 + 16)) != 0;
      }

      _X2 = v30;
      v17 = v31;
      v34 = !a5 || a5 == v18;
      v35 = !v34;
      v36 = (v48 != v32) | v47 | a3;
      a3 = v44;
      if ((v36 & 1) == 0 && !v33 && !v35)
      {
        break;
      }
    }

    ++v15;
    v16 += 400;
    if (v13 == v15)
    {
      goto LABEL_44;
    }
  }

  v38 = v15 | (v48 << 27) | 0x80000000;
  *(v11 + 16) = v38;
  ps_ringbuffer_close_allocation();
LABEL_48:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t ps_liveness_node_get_status(int a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!qword_27FD127D0)
  {
    goto LABEL_9;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  if (a1 == -1 || !qword_27FD127D0)
  {
LABEL_9:
    result = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_node_get_status", a1);
    if (qword_27FD127D0 && strlen(__str))
    {
      v12 = ps_ringbuffer_allocate();
      *v12 = SDWORD2(xmmword_27FD12818);
      strlcpy((v12 + 8), __str, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_9;
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  result = 0;
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_liveness_node_get_name(int a1, char *__dst, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1 == -1 || !qword_27FD127D0)
  {
LABEL_17:
    _X23 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v3 = a1 & 0x7FFFFFF;
  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_node_get_name", a1);
    if (qword_27FD127D0 && strlen(__str))
    {
      v19 = ps_ringbuffer_allocate();
      *v19 = SDWORD2(xmmword_27FD12818);
      strlcpy((v19 + 8), __str, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_17;
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  _X22 = 0;
  _X23 = 0;
  if (a3 >= 0x40)
  {
    v14 = 64;
  }

  else
  {
    v14 = a3;
  }

  __asm { CASPAL          X22, X23, X22, X23, [X11] }

  v16 = xmmword_27FD127E8 + 400 * v3;
  while (1)
  {
    if (__dst)
    {
      strlcpy(__dst, (v16 + 8), v14);
    }

    if (_X22 == -1)
    {
      break;
    }

    _X1 = 0;
    __asm { CASPAL          X0, X1, X22, X23, [X24] }

    _ZF = _X0 == _X22;
    _X22 = _X0;
    if (_ZF)
    {
      _X23 = 0;
      break;
    }
  }

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return _X23;
}

uint64_t ps_liveness_node_get_aux_string(int a1, char *__dst, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1 == -1 || !qword_27FD127D0)
  {
LABEL_17:
    _X23 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v3 = a1 & 0x7FFFFFF;
  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_node_get_aux_string", a1);
    if (qword_27FD127D0 && strlen(__str))
    {
      v19 = ps_ringbuffer_allocate();
      *v19 = SDWORD2(xmmword_27FD12818);
      strlcpy((v19 + 8), __str, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_17;
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  _X22 = 0;
  _X23 = 0;
  if (a3 >= 0x40)
  {
    v14 = 64;
  }

  else
  {
    v14 = a3;
  }

  __asm { CASPAL          X22, X23, X22, X23, [X11] }

  v16 = xmmword_27FD127E8 + 400 * v3;
  while (1)
  {
    if (__dst)
    {
      strlcpy(__dst, (v16 + 72), v14);
    }

    if (_X22 == -1)
    {
      break;
    }

    _X1 = 0;
    __asm { CASPAL          X0, X1, X22, X23, [X24] }

    _ZF = _X0 == _X22;
    _X22 = _X0;
    if (_ZF)
    {
      _X23 = 0;
      break;
    }
  }

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return _X23;
}

uint64_t ps_liveness_node_get_session_name(int a1, char *__dst, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1 == -1 || !qword_27FD127D0)
  {
LABEL_17:
    _X23 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v3 = a1 & 0x7FFFFFF;
  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_node_get_session_name", a1);
    if (qword_27FD127D0 && strlen(__str))
    {
      v19 = ps_ringbuffer_allocate();
      *v19 = SDWORD2(xmmword_27FD12818);
      strlcpy((v19 + 8), __str, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_17;
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  _X22 = 0;
  _X23 = 0;
  if (a3 >= 0x40)
  {
    v14 = 64;
  }

  else
  {
    v14 = a3;
  }

  __asm { CASPAL          X22, X23, X22, X23, [X11] }

  v16 = xmmword_27FD127E8 + 400 * v3;
  while (1)
  {
    if (__dst)
    {
      strlcpy(__dst, (v16 + 88), v14);
    }

    if (_X22 == -1)
    {
      break;
    }

    _X1 = 0;
    __asm { CASPAL          X0, X1, X22, X23, [X24] }

    _ZF = _X0 == _X22;
    _X22 = _X0;
    if (_ZF)
    {
      _X23 = 0;
      break;
    }
  }

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return _X23;
}

uint64_t _liveness_node_get_data(int a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1 == -1 || !qword_27FD127D0)
  {
LABEL_14:
    _X5 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "_liveness_node_get_data", a1);
    if (qword_27FD127D0 && strlen(__str))
    {
      v16 = ps_ringbuffer_allocate();
      *v16 = SDWORD2(xmmword_27FD12818);
      strlcpy((v16 + 8), __str, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_14;
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X8] }

  _X4 = 0;
  _X5 = 0;
  v12 = xmmword_27FD127E8 + 400 * (a1 & 0x7FFFFFF);
  __asm { CASPAL          X4, X5, X4, X5, [X11] }

  while (1)
  {
    if (a3)
    {
      *a3 = *(v12 + a2);
    }

    if (_X4 == -1)
    {
      break;
    }

    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X9] }

    _ZF = _X6 == _X4;
    _X4 = _X6;
    if (_ZF)
    {
      _X5 = 0;
      break;
    }
  }

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
  return _X5;
}

uint64_t ps_liveness_node_get_relative_deadline(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 120, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_max_execution_time(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 320, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_avg_execution_time(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 312, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_creation_time(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 176, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_paused_time(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 184, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_un_paused_time(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 192, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_last_execute_time(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 168, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_last_idle_time(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 208, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_watchdog_update_time(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 232, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_watchdog_last_seen_execute_time(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 384, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_watchdog_start_up_idle_time_out(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 360, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_watchdog_resume_idle_time_out(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 368, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_watchdog_hung_time_out(int a1, unint64_t *a2)
{
  v4 = 0;
  result = _liveness_node_get_data(a1, 376, &v4);
  if (a2)
  {
    *a2 = v4 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
  }

  return result;
}

uint64_t ps_liveness_node_get_tag(int a1, unint64_t *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1 == -1 || !qword_27FD127D0)
  {
LABEL_14:
    _X3 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  v2 = a1 & 0x7FFFFFF;
  if (v2 >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_node_get_tag", a1);
    if (qword_27FD127D0 && strlen(__str))
    {
      v22 = ps_ringbuffer_allocate();
      *v22 = SDWORD2(xmmword_27FD12818);
      strlcpy((v22 + 8), __str, 0x200uLL);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_14;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X11] }

  v13 = _X2 == -1;
  v14 = (xmmword_27FD127E8 + 400 * v2 + 224);
  v15 = (*(&xmmword_27FD127F8 + 1) + 4 * v2);
  while (1)
  {
    v16 = atomic_load(v14);
    if (a2)
    {
      v17 = atomic_load(v15);
      *a2 = v16 | (v17 << 48);
    }

    if (v13)
    {
      break;
    }

    if ((v16 & 1) == 0)
    {
      _X4 = 0;
      _X5 = 0;
      __asm { CASPAL          X4, X5, X4, X5, [X9] }

      if (_X4 == _X2)
      {
        _X3 = 0;
        break;
      }
    }

    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X9] }

    v13 = _X2 == -1;
  }

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
  return _X3;
}

uint64_t ps_liveness_start_hung_node_monitor(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  ps_liveness_init(0);
  if (!qword_27FD127D0)
  {
    ps_liveness_destroy(0);
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  qword_27FD12848 = a2;
  unk_27FD12850 = a3;
  objc_storeStrong(&xmmword_27FD12828 + 1, a1);
  if (!atomic_load(&qword_27FD12858 + 1))
  {
    *(&xmmword_27FD12838 + 1) = ps_buffer_map_semaphore_array();
    semaphore_array = ps_buffer_get_semaphore_array();
    ps_buffer_get_semaphore_count();
    LODWORD(xmmword_27FD12838) = *semaphore_array;
    atomic_store(1u, &qword_27FD12858 + 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __ps_liveness_start_hung_node_monitor_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = &gClientLiveness;
    dispatch_async(*(&xmmword_27FD12828 + 1), block);
    goto LABEL_6;
  }

  v8 = 0xFFFFFFFFLL;
LABEL_7:

  return v8;
}

void __ps_liveness_start_hung_node_monitor_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v50 = *(v1 + 48);
  *(v1 + 144) = MEMORY[0x25F8C8180]();
  if (!atomic_load((v1 + 148)))
  {
    goto LABEL_62;
  }

  v46 = v1 + 72;
  *&v2 = 136446210;
  v45 = v2;
  v53 = v1;
  while (1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = MEMORY[0x25F8C98D0](*(v1 + 112));
    context = v4;
    if (v5)
    {
      break;
    }

    if (!atomic_load((v1 + 148)))
    {
      goto LABEL_61;
    }

    v8 = atomic_load((*(v1 + 8) + 40));
    *buf = 0u;
    v58 = 0u;
    v56 = 32;
    if (sysctlbyname("kern.stackshot_stats", buf, &v56, 0, 0))
    {
      v9 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v59 = 136315138;
        *&v59[4] = "ps_liveness_get_last_stackshot_stats";
        v10 = v9;
        v11 = "%s: Unable to query sysctl 'kern.stackshot_stats'";
LABEL_16:
        _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_ERROR, v11, v59, 0xCu);
      }
    }

    else
    {
      if (v56 == 32)
      {
        v54 = ps_util_mach_time_to_ns(*buf);
        v12 = ps_util_mach_time_to_ns(*&buf[8]);
        goto LABEL_18;
      }

      v9 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v59 = 136315138;
        *&v59[4] = "ps_liveness_get_last_stackshot_stats";
        v10 = v9;
        v11 = "%s: Unable to query sysctl 'kern.stackshot_stats', wrong size";
        goto LABEL_16;
      }
    }

    v54 = 0;
    v12 = 0;
LABEL_18:
    if (v8 + 63 >= 0x40)
    {
      v13 = 0;
      v51 = (v8 + 63) >> 6;
      if (v54)
      {
        v14 = v12 > v54;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v55 = v15;
      v48 = 100 * (v12 - v54);
      v49 = v12 - v54;
      while (1)
      {
        v52 = v13;
        v16 = atomic_load((v50 + 8 * v13));
        if (v16)
        {
          break;
        }

LABEL_55:
        v13 = v52 + 1;
        if (v52 + 1 == v51)
        {
          goto LABEL_56;
        }
      }

      v17 = v13 << 6;
      while (2)
      {
        v18 = __clz(__rbit64(v16));
        if (!ps_liveness_node_get_status(v17 | v18))
        {
          v56 = 0;
          while (1)
          {
            ps_liveness_node_get_tag(v17 | v18, &v56);
            v19 = v56;
            *buf = 0;
            _liveness_node_get_data(v17 | v18, 168, buf);
            v20 = *buf;
            v22 = xmmword_27FD12808;
            v21 = DWORD1(xmmword_27FD12808);
            *buf = 0;
            _liveness_node_get_data(v17 | v18, 384, buf);
            v23 = *buf;
            v24 = xmmword_27FD12808;
            v25 = DWORD1(xmmword_27FD12808);
            if (ps_liveness_node_get_tag(v17 | v18, &v56))
            {
              break;
            }

            if (v19 == v56)
            {
              v26 = v20 * v22;
              v27 = v20 * v22 / v21;
              v28 = v23 * v24 / v25 == v27;
              goto LABEL_34;
            }
          }

          v28 = 0;
          v26 = v20 * v22;
          v27 = v20 * v22 / v21;
LABEL_34:
          ps_liveness_node_get_name(v17 | v18, buf, 0x40u);
          *v59 = 0;
          _liveness_node_get_data(v17 | v18, 176, v59);
          if (v55)
          {
            v29 = *v59 * xmmword_27FD12808 / DWORD1(xmmword_27FD12808);
            v30 = mach_absolute_time();
            v31 = ps_util_mach_time_to_ns(v30);
            if (v26 >= v21)
            {
              v32 = v27;
            }

            else
            {
              v32 = v29;
            }

            if (v32 <= v54)
            {
              v33 = v31 - v32;
              if (v31 == v32)
              {
                v34 = 0;
              }

              else
              {
                v34 = v48 / v33;
              }

              v36 = [PLSSettings currentSettings:v45];
              v37 = [v36 stackShotDurationPctForGraphHang];

              v38 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                *v59 = 134218496;
                *&v59[4] = v49;
                v60 = 2048;
                v61 = v33;
                v62 = 2048;
                v63 = v34;
                _os_log_impl(&dword_25EA3A000, v38, OS_LOG_TYPE_DEBUG, "stackShotDurationNs %llu graphHangDurationNs %llu stackShotPct %llu", v59, 0x20u);
              }

              if (v34 > v37)
              {
                v39 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  *v59 = 136315394;
                  *&v59[4] = "ps_liveness_stackshot_duration_exceeds_threshold";
                  v60 = 2080;
                  v61 = buf;
                  _os_log_impl(&dword_25EA3A000, v39, OS_LOG_TYPE_ERROR, "%s: Graph [%s] hang could be due to the stackshot in progress. Not taking any action.", v59, 0x16u);
                }

                goto LABEL_54;
              }
            }

            if (!v28)
            {
              goto LABEL_54;
            }

LABEL_53:
            (*(v53 + 128))(v17 | v18, *(v53 + 136));
            goto LABEL_54;
          }

          v35 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *v59 = 136315138;
            *&v59[4] = "ps_liveness_graph_hang_caused_by_stackshot";
            _os_log_impl(&dword_25EA3A000, v35, OS_LOG_TYPE_DEBUG, "%s: Last stackshot stats not available or invalid", v59, 0xCu);
          }

          if (v28)
          {
            goto LABEL_53;
          }
        }

LABEL_54:
        v16 &= ~(1 << v18);
        if (!v16)
        {
          goto LABEL_55;
        }

        continue;
      }
    }

LABEL_56:
    objc_autoreleasePoolPop(context);
    v1 = v53;
    if (!atomic_load((v53 + 148)))
    {
      goto LABEL_62;
    }
  }

  if (v5 == 49)
  {
    v6 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = v45;
      *&buf[4] = v46;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "Liveness : %{public}s - Hung Monitor : Sem Wait Timedout\n", buf, 0xCu);
    }

    goto LABEL_56;
  }

  v41 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    *buf = v45;
    *&buf[4] = v46;
    _os_log_impl(&dword_25EA3A000, v41, OS_LOG_TYPE_DEBUG, "Liveness : %{public}s - Hung Monitor : Sem Wait Error exiting ..\n", buf, 0xCu);
  }

LABEL_61:
  objc_autoreleasePoolPop(v4);
LABEL_62:
  v42 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = v1 + 72;
    _os_log_impl(&dword_25EA3A000, v42, OS_LOG_TYPE_DEFAULT, "Liveness : %{public}s - Exiting Hung Node Monitor\n", buf, 0xCu);
  }

  atomic_store(0, (v1 + 148));
  v43 = *(v1 + 104);
  *(v1 + 104) = 0;

  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  ps_liveness_destroy(0);
  v44 = *MEMORY[0x277D85DE8];
}

void ps_liveness_stop_hung_node_monitor()
{
  v1 = &qword_27FD12858 + 4;
  v0 = qword_27FD127D0;
  if (!qword_27FD127D0)
  {
    v1 = 148;
  }

  if (atomic_load(v1))
  {
    atomic_store(0, v1);
    v3 = v0 == 0;
    v4 = 112;
    if (!v3)
    {
      v4 = &xmmword_27FD12838;
    }

    v5 = *v4;
    v6 = &qword_27FD12858;
    if (v3)
    {
      v6 = 144;
    }

    v7 = *v6;
    JUMPOUT(0x25F8C98B0);
  }
}

void OUTLINED_FUNCTION_0_5(uint64_t a1, uint64_t a2, uint64_t _X2)
{
  _X5 = a2;
  __asm { CASPAL          X4, X5, X2, X3, [X8] }
}

size_t OUTLINED_FUNCTION_2_7(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char __source)
{
  *a1 = *(v14 + 48);
  v16 = (a1 + 1);

  return strlcpy(v16, &__source, 0x200uLL);
}

uint64_t OUTLINED_FUNCTION_3_8()
{
  v2 = *v0;

  return ps_ringbuffer_allocate();
}

uint64_t OUTLINED_FUNCTION_4_5@<X0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void ps_liveness_server_init_state(int a1, int a2)
{
  v2 = a1 + 63;
  v3 = (a1 + 63) & 0xFFFFFFC0;
  v4 = (v3 >> 3) + 15;
  v5 = (v4 >> 4) + 5;
  v26 = (a1 + 63) & 0xFFFFFC0;
  v6 = v5 + v26;
  v27 = ((a1 + 63) >> 2) & 0xFFFFFF0;
  v7 = v5 + v26 + v27 + ((25 * v3) & 0xFFFFFFF);
  v8 = v7 + ((((a2 + 63) & 0xFFFFFFC0) + 16399) >> 4);
  gLiveness = ps_buffer_create_serial_data_writer();
  if (gLiveness)
  {
    v9 = ps_buffer_get_serial_data_write_buffer();
    _X2 = 0;
    qword_27FD12868 = v9;
    *v9 = v8 + (v4 >> 4);
    *(v9 + 4) = 0x500000002;
    *(v9 + 12) = v5;
    *(v9 + 16) = v6 + v27;
    *(v9 + 20) = v6;
    *(v9 + 24) = v7;
    *(v9 + 28) = v8;
    *(v9 + 32) = v3;
    *(v9 + 36) = v2 >> 6;
    atomic_store(0, (v9 + 48));
    atomic_store(0, (v9 + 56));
    atomic_store(0, (v9 + 40));
    v11 = *(v9 + 64);
    v12 = *(v9 + 72);
    do
    {
      _X1 = v12;
      __asm { CASPAL          X0, X1, X2, X3, [X8] }

      _ZF = _X0 == v11;
      v11 = _X0;
    }

    while (!_ZF);
    dword_27FD128C8 = 0;
    dword_27FD128A8 = 1;
    qword_27FD12870 = ps_buffer_get_serial_data_write_buffer();
    v19 = *(qword_27FD12868 + 12);
    qword_27FD12878 = ps_buffer_get_serial_data_write_buffer();
    v20 = *(qword_27FD12868 + 16);
    qword_27FD12880 = ps_buffer_get_serial_data_write_buffer();
    v21 = *(qword_27FD12868 + 20);
    qword_27FD12898 = ps_buffer_get_serial_data_write_buffer();
    v22 = *(qword_27FD12868 + 24);
    ps_buffer_get_serial_data_write_buffer();
    qword_27FD12888 = ps_ringbuffer_create_inplace();
    v23 = *(qword_27FD12868 + 28);
    qword_27FD12890 = ps_buffer_get_serial_data_write_buffer();
    qword_27FD128C0 = ps_buffer_create_semaphore_array();
    dword_27FD128B8 = *ps_buffer_get_semaphore_array();
    memset(qword_27FD12870, 255, v4 & 0x3FFFFFF0);
    memset(qword_27FD12878, 255, (16 * v26));
    bzero(qword_27FD12880, 400 * v3);
    bzero(qword_27FD12898, 16 * v27);
    v24 = qword_27FD12890;

    bzero(v24, v4 & 0x3FFFFFF0);
  }

  else
  {
    inited = ps_liveness_server_init_state_cold_1(&v28);
    ps_liveness_server_init(inited);
  }
}

uint64_t ps_liveness_server_init(int a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  ps_liveness_server_init_state(a1, a2);
  qword_27FD128D0 = pbs_ringbuffer_get_shared_error_log();
  memset(v10, 0, sizeof(v10));
  v9 = 0u;
  v8 = 0u;
  v7 = 799564724;
  v2 = os_workgroup_attr_set_interval_type();
  if (v2)
  {
    ps_liveness_server_init_cold_1(&v6, v2);
    goto LABEL_6;
  }

  qword_27FD128B0 = os_workgroup_interval_create_with_workload_id();
  if (!qword_27FD128B0)
  {
LABEL_6:
    inited = ps_liveness_server_init_cold_3(&v6);
LABEL_7:
    ps_liveness_server_init_cold_2(&v7, inited);
  }

  inited = pthread_create_with_workgroup_np();
  if (inited)
  {
    goto LABEL_7;
  }

  result = ps_death_notifier_register_callback_for_death_notification();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _liveness_watchdog_thread(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = "Liveness watchdog";
  v3 = pthread_setname_np("Liveness watchdog");
  if (v3)
  {
    v4 = v3;
    v5 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "Liveness watchdog";
      v42 = 1024;
      v43 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "pthread_setname_np failed with name %s and return code %d", buf, 0x12u);
    }
  }

  mach_absolute_time();
  v38 = 0;
  v39 = mach_absolute_time();
  info = 0;
  mach_timebase_info(&info);
  v8 = _liveness_mach_time_converter(&info, 0x5F5E100uLL, v6, v7);
  v9 = 0xC80uLL % *MEMORY[0x277D85FA0];
  if (v9)
  {
    v10 = *MEMORY[0x277D85FA0] - v9 + 3200;
  }

  else
  {
    v10 = 3200;
  }

  v11 = malloc_type_aligned_alloc(*MEMORY[0x277D85FA0], v10, 0x1000040451B5BE8uLL);
  *(a1 + 120) = v11;
  if (!v11)
  {
    _liveness_watchdog_thread_cold_2(buf);
    goto LABEL_23;
  }

  v2 = v11;
  bzero(v11, v10);
  if (mlock(v2, v10))
  {
LABEL_23:
    v36 = 0;
    v29 = __error();
    v30 = strerror(*v29);
    asprintf(&v36, "Failed to mlock %s (addr%p size=%zu)\n", v30, v2, v10);
    v31 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v41 = "_liveness_watchdog_thread";
      v42 = 1024;
      v43 = 624;
      v44 = 2080;
      v45 = v36;
      _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_FAULT, "%s:%d %s", buf, 0x1Cu);
    }

    v32 = OSLogFlushBuffers();
    if (v32)
    {
      v33 = v32;
      v34 = _polarisdLogSharedInstance();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "_liveness_watchdog_thread";
        v42 = 1024;
        v43 = v33;
        _os_log_impl(&dword_25EA3A000, v34, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v35 = abort_with_reason();
    return _liveness_death_notifier_callback(v35);
  }

  if (_liveness_set_pthread_rt_annotation(&info))
  {
    _liveness_watchdog_thread_cold_1(buf);
  }

  v12 = 0;
  while (*(a1 + 72))
  {
    mach_get_times();
    v13 = mach_absolute_time();
    _liveness_watchdog_process(a1, *&info);
    v14 = mach_absolute_time();
    ps_util_mach_time_to_ns(v14 - v13);
    _X0 = v38;
    v16 = &v2[16 * v12];
    v17 = *v16;
    v18 = *(v16 + 1);
    do
    {
      _X5 = *(v16 + 1);
      __asm { CASPAL          X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v17;
      v17 = _X4;
    }

    while (!_ZF);
    if (v12 == 199)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    ++*(a1 + 104);
    v25 = v39 + v8;
    atomic_store(v39 + v8, (a1 + 136));
    if (mach_wait_until(v25) == 14)
    {
      v26 = _polarisdLogSharedInstance();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v26, OS_LOG_TYPE_ERROR, "ret = KERN_ABORTED, exiting RT Liveness thread...", buf, 2u);
      }

      break;
    }
  }

  munlock(v2, v10);
  free(v2);
  *(a1 + 120) = 0;
  v27 = *MEMORY[0x277D85DE8];
  return 0;
}

void _liveness_death_notifier_callback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a4[4];
  v8 = atomic_load((a4[1] + 40));
  v9 = _polarisdLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    *&buf[4] = a2;
    *&buf[12] = 2080;
    *&buf[14] = a3;
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "Liveness Process Death Handler: pid %llu (%s) is dead; Removing all associated nodes\n", buf, 0x16u);
  }

  if (v8)
  {
    _X4 = 0;
    v11 = 0;
    _X26 = -1;
    v39 = v8;
    v40 = a2;
    do
    {
      v13 = a4[3] + 16 * v11;
      _X1 = 0;
      __asm { CASPAL          X0, X1, X4, X5, [X8] }

      do
      {
        if (_X0 == -1)
        {
          break;
        }

        _X3 = 0;
        __asm { CASPAL          X2, X3, X0, X1, [X8] }

        _ZF = _X2 == _X0;
        _X0 = _X2;
      }

      while (!_ZF);
      v22 = (v7 + 400 * v11);
      v23 = atomic_load(v22);
      if (a2 == v23)
      {
        v24 = v7;
        v26 = a4[3];
        v25 = a4[4];
        v27 = a4[7];
        *buf = 0;
        *&buf[8] = 0;
        v28 = a4[5];
        v29 = ps_ringbuffer_allocate();
        v30 = v25 + 400 * v11;
        v31 = atomic_load(v30);
        *v29 = v31;
        *(v29 + 8) = 1;
        *(v29 + 12) = *(v30 + 116);
        LODWORD(v31) = atomic_load((v27 + 4 * v11));
        *(v29 + 16) = v31;
        __strlcpy_chk();
        __strlcpy_chk();
        strlcpy((v29 + 104), (v30 + 88), 0x10uLL);
        *(v29 + 20) = *(v30 + 108);
        ps_ringbuffer_close_allocation();
        v32 = (v26 + 16 * v11);
        v33 = *v32;
        do
        {
          _X3 = v32[1];
          __asm { CASPAL          X2, X3, X26, X27, [X8] }

          _ZF = _X2 == v33;
          v33 = _X2;
        }

        while (!_ZF);
        atomic_fetch_and((a4[6] + 8 * ((v11 >> 6) & 0x1FFFFF)), ~(1 << v11));
        v36 = _polarisdLogSharedInstance();
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
        v7 = v24;
        v8 = v39;
        a2 = v40;
        _X4 = 0;
        if (v37)
        {
          *buf = 67109890;
          *&buf[4] = v11;
          *&buf[8] = 2082;
          *&buf[10] = v22 + 1;
          *&buf[18] = 2082;
          *&buf[20] = v22 + 9;
          v42 = 2082;
          v43 = v22 + 11;
          _os_log_impl(&dword_25EA3A000, v36, OS_LOG_TYPE_ERROR, "Liveness Process Death Handler: node %08x marked for deletion  (key=%{public}s, aux=%{public}s, session=%{public}s)\n", buf, 0x26u);
          _X4 = 0;
        }
      }

      ++v11;
    }

    while (v11 != v8);
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t ps_liveness_server_destroy()
{
  ps_death_notifier_unregister_callback_for_death_notification();
  dword_27FD128A8 = 0;
  pthread_join(qword_27FD128A0, 0);
  if (qword_27FD128B0)
  {
    os_workgroup_cancel(qword_27FD128B0);

    qword_27FD128B0 = 0;
  }

  ps_buffer_destroy_serial_data_writer();

  return ps_buffer_destroy_semaphore_array();
}

uint64_t _liveness_watchdog_process(uint64_t a1, uint64_t a2)
{
  _X0 = 0;
  _X1 = 0;
  v71 = *MEMORY[0x277D85DE8];
  v58 = *(a1 + 24);
  v57 = *(a1 + 32);
  atomic_fetch_add((*(a1 + 8) + 56), 1uLL);
  v6 = *(a1 + 8);
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  atomic_load((v6 + 56));
  ps_ringbuffer_allocate_closed();
  v12 = mach_absolute_time();
  v13 = atomic_load((*(a1 + 8) + 40));
  v14 = *(a1 + 8);
  atomic_store(v12, (v14 + 48));
  *(a1 + 128) = 0;
  if (v13)
  {
    _X26 = 0;
    v59 = 0;
    v52 = 0;
    v53 = a2;
    v16 = HIDWORD(a2);
    v17 = 0;
    v54 = v12;
    v55 = a1;
    v56 = v13;
    while (1)
    {
      v18 = v17++;
      _X0 = 0;
      _X1 = 0;
      __asm { CASPAL          X0, X1, X0, X1, [X8] }

      do
      {
        v22 = _X0;
        if (_X0 == -1)
        {
          ++v59;
          goto LABEL_27;
        }

        __asm { CASPAL          X0, X1, X26, X27, [X8] }
      }

      while (_X0 != v22);
      v23 = v57 + 400 * v18;
      atomic_fetch_add((v23 + 224), 1uLL);
      if (v22)
      {
        break;
      }

      v29 = *(v23 + 240);
      if (!v29)
      {
        v61 = *(v23 + 108);
        __strlcpy_chk();
        v70 = *(v23 + 104);
        __strlcpy_chk();
        *(a1 + 128) = 3;
        v30 = *(a1 + 112);
        pbs_ringbufferlogger_shared_write_decode_data();
        v29 = *(v23 + 240);
      }

      v31 = v29 + 1;
      *(v23 + 240) = v29 + 1;
      *(v23 + 208) = v12;
      v32 = *(a1 + 8) + 64;
      _X24 = 0;
      _X25 = 0;
      __asm { CASPAL          X24, X25, X24, X25, [X8] }

      if (mach_absolute_time() >= _X24 && v31 > *(v23 + 392))
      {
        v36 = *(v23 + 168);
        if (v36)
        {
          v37 = 376;
          if (*(v23 + 192) <= v36)
          {
            v38 = *(v23 + 168);
          }

          else
          {
            v37 = 368;
            v38 = *(v23 + 192);
          }
        }

        else
        {
          v38 = *(v23 + 176);
          v37 = 360;
        }

        v12 = v54;
        a1 = v55;
        v40 = v54 - v38;
        if (v54 - v38 >= *(v23 + v37) + *(v23 + v37) * *(v23 + 336))
        {
          v51 = v38;
          v63 = *(v23 + 108);
          v65 = *(v23 + 104);
          v68 = *(v23 + 240);
          atomic_load(v23);
          pbs_ringbuffer_get_shared_error_log();
          pbs_ringbufferlogger_shared_write();
          v41 = v40;
          *(v23 + 344) = v40;
          v13 = v56;
          if (*(v23 + 352) == 1 && *(v23 + 216) <= v41)
          {
            *(v55 + 128) = 1;
            v62 = vrev64_s32(*(v23 + 104));
            atomic_load(v23);
            v66 = *(v23 + 160);
            v69 = *(v23 + 344);
            pbs_ringbufferlogger_shared_write();
            *(v23 + 352) = 0;
          }

          ++HIDWORD(v52);
          if (*(v23 + 160) <= 1uLL)
          {
            atomic_fetch_or((*(v55 + 48) + 8 * ((v18 >> 6) & 0x1FFFFF)), 1 << v18);
            ++*(v23 + 336);
            *(v23 + 384) = *(v23 + 168);
            LODWORD(v52) = v52 + 1;
            v42 = *(v55 + 40);
            v50 = ps_ringbuffer_allocate();
            v43 = atomic_load(v23);
            *v50 = v43;
            *(v50 + 8) = *(v23 + 160);
            *(v50 + 16) = v51;
            __strlcpy_chk();
            strlcpy((v50 + 88), (v23 + 88), 0x10uLL);
            ps_ringbuffer_close_allocation();
          }
        }

        else
        {
          v13 = v56;
        }

        *(v23 + 240) = 0;
        goto LABEL_11;
      }

      atomic_fetch_add((v23 + 224), 1uLL);
      v12 = v54;
      a1 = v55;
      v13 = v56;
LABEL_27:
      if (v17 == v13)
      {
        v14 = *(a1 + 8);
        v45 = v52;
        v44 = HIDWORD(v52);
        v46 = v59;
        goto LABEL_39;
      }
    }

    if (*(v23 + 352) == 1 && *(v23 + 344))
    {
      *(a1 + 128) = 1;
      v60 = vrev64_s32(*(v23 + 104));
      atomic_load(v23);
      v64 = *(v23 + 160);
      v67 = *(v23 + 344);
      pbs_ringbufferlogger_shared_write();
    }

    *(v23 + 240) = 0;
    *(v23 + 336) = 0;
    *(v23 + 344) = 0;
    *(v23 + 352) = 1;
LABEL_11:
    v24 = *(v23 + 232);
    *(v23 + 232) = v12;
    v25 = *(v23 + 264);
    v26.i64[0] = 255;
    v26.i64[1] = 255;
    v27 = vandq_s8(vshlq_u64(vdupq_n_s64(0), xmmword_25EB77810), v26);
    *(v23 + 272) = v27;
    *(v23 + 248) = vaddq_s64(*(v23 + 248), v27);
    *(v23 + 264) = v25;
    *(v23 + 304) = 0;
    *(v23 + 312) = v22 >> 36;
    *(v23 + 320) = (v22 >> 4);
    v28 = *(v23 + 296);
    if (v28 >= 1.0)
    {
      *(v23 + 328) = *(v23 + 288);
      *(v23 + 288) = 0;
      *(v23 + 296) = 0;
    }

    else
    {
      *(v23 + 296) = ((v12 - v24) * v53) / v16 / 1000000000.0 + v28;
      *(v23 + 288) += v27.i64[1];
    }

    atomic_fetch_add((v23 + 224), 1uLL);
    if (*(*(a1 + 8) + 4) & 2) != 0 || (*(v23 + 112))
    {
      v39 = ps_ringbuffer_allocate();
      *v39 = v22;
      *(v39 + 8) = 0;
      *(v39 + 24) = *(v23 + 116);
      *(v39 + 16) = *(v23 + 168);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_27;
  }

  v45 = 0;
  v44 = 0;
  v46 = 0;
LABEL_39:
  atomic_load((v14 + 56));
  v47 = ps_ringbuffer_allocate();
  *(v47 + 40) = v45;
  if (v45)
  {
    MEMORY[0x25F8C98A0](*(a1 + 88));
  }

  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *v47 = v13;
  *(v47 + 4) = v46;
  *(v47 + 8) = 0;
  *(v47 + 12) = v44;
  ps_ringbuffer_close_allocation();
  *(a1 + 128) = 4;
  v48 = *MEMORY[0x277D85DE8];
  return v12;
}

void ps_liveness_server_pause_liveness()
{
  if (qword_27FD12868)
  {
    _X0 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X0, X1, [X9] }

    do
    {
      _X5 = 0;
      __asm { CASPAL          X4, X5, X0, X1, [X9] }

      _ZF = _X4 == _X2;
      _X2 = _X4;
    }

    while (!_ZF);
    v9 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "Polaris Liveness monitoring is PAUSED.", v10, 2u);
    }
  }
}

void ps_liveness_server_resume_liveness()
{
  if (qword_27FD12868)
  {
    info = 0;
    mach_timebase_info(&info);
    mach_absolute_time();
    _liveness_mach_time_converter(&info, 0x2540BE400uLL, v0, v1);
    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }
  }
}

uint64_t ps_liveness_log_decode_init()
{
  pbs_ringbuffer_declare_format_string();

  return pbs_ringbuffer_declare_format_string();
}

void OUTLINED_FUNCTION_1_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 0x1Cu);
}

uint64_t __PSSGLogSharedInstance()
{
  if (__PSSGLogSharedInstance_onceToken != -1)
  {
    __PSSGLogSharedInstance_cold_1();
  }

  return __PSSGLogSharedInstance_sharedInstance;
}

uint64_t __PSSysHealthLogSharedInstance()
{
  if (__PSSysHealthLogSharedInstance_onceToken != -1)
  {
    __PSSysHealthLogSharedInstance_cold_1();
  }

  return sharedInstance_3;
}

id PSSH::getProcessMonitorConfigDict(PSSH *this)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = PSSH::getProcessMonitorConfigDict(void)::configDict;
  if (PSSH::getProcessMonitorConfigDict(void)::configDict)
  {
    goto LABEL_31;
  }

  size = 0;
  if (sysctlbyname("kern.bootargs", 0, &size, 0, 0) || (v9 = malloc_type_malloc(size, 0x100004077774924uLL)) == 0 || sysctlbyname("kern.bootargs", v9, &size, 0, 0))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    free(v9);
    if ([v2 containsString:@"polaris_systemhealth=0"])
    {
      v10 = __PSSysHealthLogSharedInstance();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v33 = "getConfigKey";
        v34 = 2112;
        v35 = PSSH::DISABLE_CONFIG_KEY;
        _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "%s() boot-args : %@", buf, 0x16u);
      }

      v11 = PSSH::DISABLE_CONFIG_KEY;
LABEL_42:
      v12 = v11;
      goto LABEL_24;
    }

    if ([v2 containsString:@"polaris_systemhealth=1"])
    {
      v29 = __PSSysHealthLogSharedInstance();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v33 = "getConfigKey";
        v34 = 2112;
        v35 = PSSH::PROFILE_1_CONFIG_KEY;
        _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_DEFAULT, "%s() boot-args : %@", buf, 0x16u);
      }

      v11 = PSSH::PROFILE_1_CONFIG_KEY;
      goto LABEL_42;
    }

    if ([v2 containsString:@"polaris_systemhealth=2"])
    {
      v30 = __PSSysHealthLogSharedInstance();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v33 = "getConfigKey";
        v34 = 2112;
        v35 = PSSH::PROFILE_2_CONFIG_KEY;
        _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, "%s() boot-args : %@", buf, 0x16u);
      }

      v11 = PSSH::PROFILE_2_CONFIG_KEY;
      goto LABEL_42;
    }
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.polaris"];
  v4 = [v3 stringForKey:@"systemHealthConfig"];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_20;
  }

  if ([v4 isEqualToString:PSSH::PROFILE_1_CONFIG_KEY])
  {
    v6 = __PSSysHealthLogSharedInstance();
    v7 = &PSSH::PROFILE_1_CONFIG_KEY;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "getConfigKey";
      v34 = 2112;
      v35 = PSSH::PROFILE_1_CONFIG_KEY;
      v8 = "%s() defaults write : %@";
LABEL_22:
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (![v5 isEqualToString:PSSH::PROFILE_2_CONFIG_KEY])
  {
    if ([v5 isEqualToString:PSSH::DISABLE_CONFIG_KEY])
    {
      v6 = __PSSysHealthLogSharedInstance();
      v7 = &PSSH::DISABLE_CONFIG_KEY;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v33 = "getConfigKey";
        v34 = 2112;
        v35 = PSSH::DISABLE_CONFIG_KEY;
        v8 = "%s() defaults write : %@";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

LABEL_20:
    v6 = __PSSysHealthLogSharedInstance();
    v7 = &PSSH::DEFAULT_CONFIG;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "getConfigKey";
      v34 = 2112;
      v35 = PSSH::DEFAULT_CONFIG;
      v8 = "%s() Build default : %@";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v6 = __PSSysHealthLogSharedInstance();
  v7 = &PSSH::PROFILE_2_CONFIG_KEY;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "getConfigKey";
    v34 = 2112;
    v35 = PSSH::PROFILE_2_CONFIG_KEY;
    v8 = "%s() defaults write : %@";
    goto LABEL_22;
  }

LABEL_23:

  v12 = *v7;
LABEL_24:

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 resourcePath];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/PolarisSystemHealth.plist", v14];
  v16 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v15;
    v18 = [v15 UTF8String];
    v19 = v12;
    v20 = [(__CFString *)v12 UTF8String];
    *buf = 136315650;
    v33 = "getProcessMonitorConfigDict";
    v34 = 2080;
    v35 = v18;
    v36 = 2080;
    v37 = v20;
    _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_DEFAULT, "%s() reading config file from %s. using %s config", buf, 0x20u);
  }

  v21 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v15];
  v22 = [v21 objectForKeyedSubscript:v12];
  v23 = PSSH::getProcessMonitorConfigDict(void)::configDict;
  PSSH::getProcessMonitorConfigDict(void)::configDict = v22;

  if (!PSSH::getProcessMonitorConfigDict(void)::configDict)
  {
    v24 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = v15;
      v26 = [v15 UTF8String];
      *buf = 136315394;
      v33 = "getProcessMonitorConfigDict";
      v34 = 2080;
      v35 = v26;
      _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_ERROR, "%s() Failed reading config file from %s.", buf, 0x16u);
    }
  }

  v1 = PSSH::getProcessMonitorConfigDict(void)::configDict;
LABEL_31:
  v27 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t PSSH::getProcessDeathParams(uint64_t a1, uint64_t *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = PSSH::getProcessConfig(a1);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:PSSH::MINIMAL_DEATH_INTERVAL_KEY];
    *a2 = [v6 intValue];

    v7 = [v5 objectForKey:PSSH::DEATH_COUNT_THRESHOLD_KEY];
    a2[1] = [v7 intValue];

    v8 = [v5 objectForKey:PSSH::PAUSE_SYSTEM_ACTION_DURATION_KEY];
    a2[5] = [v8 intValue];

    v9 = [v5 objectForKey:PSSH::ENABLE_APPLE_PAY_LOCK_KEY];

    if (v9)
    {
      v10 = [v5 objectForKey:PSSH::ENABLE_APPLE_PAY_LOCK_KEY];
      *(a2 + 48) = [v10 BOOLValue];
    }

    else
    {
      *(a2 + 48) = 1;
    }

    v14 = [v5 objectForKey:PSSH::DEATH_PST_TRANSITION_KEY];

    if (v14)
    {
      v15 = [v5 objectForKey:PSSH::DEATH_PST_TRANSITION_KEY];
      MEMORY[0x25F8C7A80](a2 + 2, [v15 UTF8String]);
    }

    else
    {
      MEMORY[0x25F8C7A80](a2 + 2, "");
    }

    PSSH::getKillDaemonList(v5, __s1);
    std::vector<std::string>::__vdeallocate((a2 + 7));
    *(a2 + 7) = *__s1;
    a2[9] = *&__s1[16];
    memset(__s1, 0, 24);
    *v34 = __s1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v34);
    v11 = __PSSysHealthLogSharedInstance();
    if (os_signpost_enabled(v11))
    {
      if (*(a1 + 23) >= 0)
      {
        v16 = a1;
      }

      else
      {
        v16 = *a1;
      }

      v29 = *a2;
      v31 = a2[1];
      if (*(a2 + 39) >= 0)
      {
        v17 = a2 + 2;
      }

      else
      {
        v17 = a2[2];
      }

      v18 = a2[5];
      v30 = *(a2 + 48);
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      memset(__s1, 0, sizeof(__s1));
      v19 = a2[7];
      v20 = a2[8];
      if (v19 != v20)
      {
        v21 = 199;
        do
        {
          if (*(v19 + 23) < 0)
          {
            v22 = *v19;
            strncat(__s1, *v19, v21);
          }

          else
          {
            strncat(__s1, v19, v21);
            v22 = v19;
          }

          v23 = strlen(v22);
          v24 = v21 > v23;
          v25 = v21 - v23;
          if (!v24)
          {
            break;
          }

          strncat(__s1, ", ", v25);
          if (v25 < 3)
          {
            break;
          }

          v21 = v25 - 2;
          v19 += 24;
        }

        while (v19 != v20);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, __s1);
      if (v33 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      *v34 = 136316930;
      *&v34[4] = "getProcessDeathParams";
      v35 = 2080;
      v36 = v16;
      v37 = 2048;
      v38 = v29;
      v39 = 2048;
      v40 = v31;
      v41 = 2080;
      v42 = v17;
      v43 = 2048;
      v44 = v18;
      v45 = 1024;
      v46 = v30;
      v47 = 2080;
      v48 = v26;
      _os_signpost_emit_unreliably_with_name_impl();
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = 0;
  }

  else
  {
    v11 = __PSSysHealthLogSharedInstance();
    v12 = 3758097136;
    if (os_signpost_enabled(v11))
    {
      if (*(a1 + 23) >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      *__s1 = 136315394;
      *&__s1[4] = "getProcessDeathParams";
      *&__s1[12] = 2080;
      *&__s1[14] = v13;
      _os_signpost_emit_unreliably_with_name_impl();
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

id PSSH::getProcessConfig(uint64_t *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithCString:v1 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v3 = PSSH::getProcessMonitorConfigDict(v2);
  v4 = [v3 objectForKey:PSSH::PROCESS_MONITOR_CONFIG_KEY];
  [v4 allKeys];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hasPrefix:{v2, v14}])
        {
          v11 = [v4 objectForKey:v10];

          v6 = v11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

void PSSH::getKillDaemonList(PSSH *this@<X0>, uint64_t a2@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v28 = this;
  v4 = [(PSSH *)v28 objectForKey:PSSH::KILL_DAEMON_LIST_KEY];
  v5 = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v4)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v6)
    {
      v7 = *v33;
      v8 = v5;
      do
      {
        v9 = 0;
        do
        {
          if (*v33 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v32 + 1) + 8 * v9);
          v11 = v10;
          std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);
          v13 = *(a2 + 8);
          v12 = *(a2 + 16);
          if (v13 >= v12)
          {
            v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a2) >> 3);
            v16 = v15 + 1;
            if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
            }

            v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a2) >> 3);
            if (2 * v17 > v16)
            {
              v16 = 2 * v17;
            }

            if (v17 >= 0x555555555555555)
            {
              v18 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v18 = v16;
            }

            v36.__end_cap_.__value_ = a2;
            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v18);
            }

            v19 = 24 * v15;
            v20 = *__p;
            *(v19 + 16) = v31;
            *v19 = v20;
            __p[1] = 0;
            v31 = 0;
            __p[0] = 0;
            v21 = 24 * v15 + 24;
            v22 = *(a2 + 8) - *a2;
            v23 = 24 * v15 - v22;
            memcpy((v19 - v22), *a2, v22);
            v24 = *a2;
            *a2 = v23;
            *(a2 + 8) = v21;
            v25 = *(a2 + 16);
            *(a2 + 16) = 0;
            v36.__end_ = v24;
            v36.__end_cap_.__value_ = v25;
            v36.__first_ = v24;
            v36.__begin_ = v24;
            std::__split_buffer<std::string>::~__split_buffer(&v36);
            v26 = SHIBYTE(v31);
            *(a2 + 8) = v21;
            v5 = v8;
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v14 = *__p;
            *(v13 + 16) = v31;
            *v13 = v14;
            *(a2 + 8) = v13 + 24;
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v6);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_25EAC1B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

BOOL PSSH::processHasDeathParams(uint64_t *a1)
{
  v1 = PSSH::getProcessConfig(a1);
  v2 = v1 != 0;

  return v2;
}

uint64_t PSSH::getGraphRecoveryAction(const char *a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v10 = MEMORY[0x277CCACA8];
  v11 = *(a2 + 23);
  v12 = *a2;
  v13 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v11 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = v12;
  }

  v15 = [v10 stringWithCString:v14 encoding:v13];
  v16 = PSSH::getProcessMonitorConfigDict(v15);
  v17 = [v16 objectForKeyedSubscript:PSSH::SYSTEM_ACTION_CONFIG_KEY];
  v18 = [v17 objectForKey:PSSH::WAIT_BEFORE_KILL_KEY];

  if (v18)
  {
    if (ps_util_is_internal_build())
    {
      v19 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.polaris"];
      v20 = [v19 integerForKey:@"waitTimeBeforeKillMs"];
    }

    else
    {
      v19 = [v17 objectForKey:PSSH::WAIT_BEFORE_KILL_KEY];
      v20 = [v19 integerValue];
    }

    *a4 = v20;

    v21 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a4;
      v42 = 136315394;
      v43 = "getGraphRecoveryAction";
      v44 = 2048;
      v45 = v22;
      _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEBUG, "%s() waitTimeBeforeKillMs: %llu", &v42, 0x16u);
    }
  }

  v23 = [v17 objectForKey:v9];
  v24 = v23 == 0;

  if (v24)
  {
    v34 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = v9;
      v36 = [v9 UTF8String];
      v42 = 136315394;
      v43 = "getGraphRecoveryAction";
      v44 = 2080;
      v45 = v36;
      _os_log_impl(&dword_25EA3A000, v34, OS_LOG_TYPE_DEBUG, "%s() sessionName %s config not found", &v42, 0x16u);
    }

    GraphDefaultAction = PSSH::getGraphDefaultAction(v17, a3);
  }

  else
  {
    v25 = [v17 objectForKeyedSubscript:v9];
    v26 = [v25 objectForKey:v15];
    v27 = v26 == 0;

    if (v27)
    {
      v37 = __PSSysHealthLogSharedInstance();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = v15;
        v39 = [(PSSH *)v15 UTF8String];
        v42 = 136315394;
        v43 = "getGraphRecoveryAction";
        v44 = 2080;
        v45 = v39;
        _os_log_impl(&dword_25EA3A000, v37, OS_LOG_TYPE_DEBUG, "%s() graphName %s config not found", &v42, 0x16u);
      }

      GraphDefaultAction = PSSH::getGraphDefaultAction(v17, a3);
    }

    else
    {
      v28 = [v25 objectForKeyedSubscript:v15];
      GraphDefaultAction = PSSH::parseGraphActionStr(v28, a3);

      if (!GraphDefaultAction)
      {
        v30 = __PSSysHealthLogSharedInstance();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          if (a1[23] >= 0)
          {
            v31 = a1;
          }

          else
          {
            v31 = *a1;
          }

          if (*(a2 + 23) >= 0)
          {
            v32 = a2;
          }

          else
          {
            v32 = *a2;
          }

          v33 = *a3;
          v42 = 136315650;
          v43 = v31;
          v44 = 2080;
          v45 = v32;
          v46 = 1024;
          v47 = v33;
          _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, "getGraphRecoveryAction() sessionName=[%s] graphName=[%s] recoveryAction=%d", &v42, 0x1Cu);
        }

        GraphDefaultAction = 0;
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
  return GraphDefaultAction;
}

uint64_t PSSH::getGraphDefaultAction(void *a1, int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 objectForKey:PSSH::GRAPH_HANG_DEFAULT_ACTION_KEY];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:PSSH::GRAPH_HANG_DEFAULT_ACTION_KEY];
    v6 = PSSH::parseGraphActionStr(v5, a2);
  }

  else
  {
    v7 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "getGraphDefaultAction";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "%s() default graph hang key not found", &v10, 0xCu);
    }

    v6 = 3758097136;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t PSSH::parseGraphActionStr(void *a1, int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if ([v3 isEqualToString:@"KillProcess"])
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"Panic"])
  {
    v4 = 0;
    v5 = 1;
LABEL_7:
    *a2 = v5;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"Ignore"])
  {
    v4 = 0;
    v5 = 2;
    goto LABEL_7;
  }

  v6 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "parseGraphActionStr";
    v11 = 2080;
    v12 = [v3 UTF8String];
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "%s() action %s not familiar", &v9, 0x16u);
  }

  v4 = 3758097136;
LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t PSSH::checkIsPanicEnabled(PSSH *this, BOOL *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = PSSH::getProcessMonitorConfigDict(this);
  v4 = [v3 objectForKey:PSSH::SYSTEM_ACTION_CONFIG_KEY];
  v5 = [v4 objectForKey:PSSH::ENABLE_PANIC_KEY];

  if (v5)
  {
    v6 = [v4 objectForKey:PSSH::ENABLE_PANIC_KEY];
    *this = [v6 BOOLValue];

    v7 = 0;
  }

  else
  {
    v8 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "checkIsPanicEnabled";
      v13 = 2080;
      v14 = [PSSH::ENABLE_PANIC_KEY UTF8String];
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "%s() [%s] key not found", &v11, 0x16u);
    }

    v7 = 3758097136;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t PSSH::isKillDaemon(PSSH *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = PSSH::getProcessMonitorConfigDict(a1);
  v2 = [v24 objectForKey:PSSH::PROCESS_MONITOR_CONFIG_KEY];
  v25 = v2;
  [v2 allKeys];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v3)
  {
    v4 = *v30;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v30 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v6 = [v2 objectForKey:*(*(&v29 + 1) + 8 * v5)];
      PSSH::getKillDaemonList(v6, &v27);
      v8 = v27;
      v7 = v28;
      if (v27 == v28)
      {
        v18 = 0;
        v19 = 1;
      }

      else
      {
        v9 = *(a1 + 23);
        v10 = v9 >= 0 ? *(a1 + 23) : *(a1 + 1);
        v11 = v9 >= 0 ? a1 : *a1;
        while (1)
        {
          v12 = *(v8 + 23);
          v13 = v12 >= 0 ? *(v8 + 23) : *(v8 + 8);
          v14 = v12 >= 0 ? v8 : *v8;
          v15 = v13 >= v10 ? v10 : v13;
          v16 = memcmp(v11, v14, v15);
          if (v13 == v10 && v16 == 0)
          {
            break;
          }

          v8 += 24;
          if (v8 == v7)
          {
            v18 = 0;
            v19 = 1;
            v2 = v25;
            goto LABEL_35;
          }
        }

        v2 = v25;
        v20 = __PSSysHealthLogSharedInstance();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 23) >= 0)
          {
            v21 = a1;
          }

          else
          {
            v21 = *a1;
          }

          *buf = 136315394;
          *&buf[4] = "isKillDaemon";
          v34 = 2080;
          v35 = v21;
          _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_DEFAULT, "%s() process [%s] is a killDaemon", buf, 0x16u);
        }

        v19 = 0;
        v18 = 1;
      }

LABEL_35:
      *buf = &v27;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);

      if (!v19)
      {
        break;
      }

      if (++v5 == v3)
      {
        v3 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    v18 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

id ps_syshealth_print_graph(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  __strlcpy_chk();
  __strlcpy_chk();
  snprintf(__str, 0x28uLL, "%4s(%2u) | %4s(%2u) | %4s(%2u)", off_279A48CA8[*(a1 + 352)], *(a1 + 356), off_279A48CA8[*(a1 + 353)], *(a1 + 360), off_279A48CA8[*(a1 + 354)], *(a1 + 364));
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%60s %30s %16llu %16llu %16llu %40s\n", v7, v6, *(a1 + 328), *(a1 + 344), *(a1 + 336), __str];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t _liveness_set_pthread_rt_annotation(unsigned int *a1)
{
  v1 = 1000000 * a1[1] / *a1;
  v5[0] = 0;
  v5[1] = v1;
  v5[2] = 500 * v1;
  v5[3] = 0;
  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  return thread_policy_set(v3, 2u, v5, 4u);
}

unint64_t _liveness_mach_time_converter(_DWORD *a1, unint64_t a2, double a3, double a4)
{
  LODWORD(a3) = *a1;
  LODWORD(a4) = a1[1];
  return (a2 / (*&a3 / *&a4));
}

IOSurfaceRef iosurfaceAllocator(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 4);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B88], [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v1]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A28], [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A70], [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3]);
  v5 = IOSurfaceCreate(Mutable);
  if (!v5)
  {
    NSLog(&cfstr_FailedToAlloca_6.isa);
    if (!Mutable)
    {
      return v5;
    }

    goto LABEL_3;
  }

  if (Mutable)
  {
LABEL_3:
    CFRelease(Mutable);
  }

  return v5;
}

void *ps_buffer_writer_init(uint64_t a1, uint64_t a2)
{
  result = malloc_type_calloc(1uLL, 0xB0uLL, 0x1020040D222AFE8uLL);
  if (result)
  {
    result[16] = a1;
    *(result + 34) = -1;
    result[18] = a2;
  }

  else
  {
    inited = ps_buffer_writer_init_cold_1(&v6);
    return ps_buffer_writer_setkey(inited);
  }

  return result;
}

uint64_t ps_buffer_writer_create_resource(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  source = ps_gsm_create_source(*(a1 + 144), 1, a1);
  *(a1 + 152) = source;
  if (!source)
  {
    ps_buffer_writer_create_resource_cold_3(buf, a1);
  }

  if (*(a1 + 128))
  {
    *(a1 + 160) = ps_buffer_create_group_writer();
    v3 = *(a1 + 168);
    v4 = *(v3 + 24);
    if ((v4 - 8) < 2)
    {
      v7 = *(v3 + 32);
      MEMORY[0x25F8C8D90]();
      goto LABEL_10;
    }

    if (v4 == 4)
    {
      v12 = *(v3 + 32);
      MEMORY[0x25F8C8DB0]();
      v8 = *(a1 + 160);
      v9 = 8;
      goto LABEL_18;
    }

    if (v4 == 7)
    {
      v5 = *(v3 + 32);
      MEMORY[0x25F8C8DA0]();
LABEL_10:
      v8 = *(a1 + 160);
      v9 = 90112;
LABEL_18:
      MEMORY[0x25F8C8900](v8, v9);
      MEMORY[0x25F8C8C70](*(a1 + 160));
LABEL_29:
      v22 = *MEMORY[0x277D85DE8];
      return 0;
    }

    goto LABEL_32;
  }

  v6 = *(a1 + 168);
  if (*(v6 + 88) > 1u)
  {
    ps_buffer_writer_create_resource_cold_2(buf, a1);
LABEL_32:
    ps_buffer_writer_create_resource_cold_1(buf);
    goto LABEL_33;
  }

  v10 = *(v6 + 92);
  switch(v10)
  {
    case 0:
      v11 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v32 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/Polaris/RealityCamera/BufferResource/PSBufferWriter.m";
        v33 = 2080;
        *v34 = "ps_buffer_writer_create_resource";
        *&v34[8] = 1024;
        *&v34[10] = 335;
        _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "%s:%s:%d - Constructing a Surface camera stream writer", buf, 0x1Cu);
      }

      goto LABEL_28;
    case 2:
      v13 = *(v6 + 16);
      v11 = __PLSLogSharedInstance();
      v14 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v13 == 11)
      {
        if (v14)
        {
          *buf = 136315650;
          v32 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/Polaris/RealityCamera/BufferResource/PSBufferWriter.m";
          v33 = 2080;
          *v34 = "ps_buffer_writer_create_resource";
          *&v34[8] = 1024;
          *&v34[10] = 313;
          _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "%s:%s:%d - Constructing a Pearl camera stream writer", buf, 0x1Cu);
        }
      }

      else if (v14)
      {
        *buf = 136315650;
        v32 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/Polaris/RealityCamera/BufferResource/PSBufferWriter.m";
        v33 = 2080;
        *v34 = "ps_buffer_writer_create_resource";
        *&v34[8] = 1024;
        *&v34[10] = 324;
        _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "%s:%s:%d - Constructing a ISP camera stream writer", buf, 0x1Cu);
      }

      goto LABEL_28;
    case 1:
      v11 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v32 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/Polaris/RealityCamera/BufferResource/PSBufferWriter.m";
        v33 = 2080;
        *v34 = "ps_buffer_writer_create_resource";
        *&v34[8] = 1024;
        *&v34[10] = 303;
        _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "%s:%s:%d: Constructing a FIFO camera stream writer", buf, 0x1Cu);
      }

LABEL_28:

      v15 = *(a1 + 168);
      v16 = v15[20];
      v17 = *v15;
      v18 = v15[1];
      v20 = v15[2];
      v19 = v15[3];
      *(a1 + 160) = ps_buffer_create_camera_stream_writer_with_capacity();
      v21 = ps_liveness_node_allocate();
      *(a1 + 136) = v21;
      ps_liveness_node_set_base_info(v21, 0, a1);
      ps_liveness_node_set_aux_string(*(a1 + 136), "CamStream");
      ps_liveness_node_set_deadlines(*(a1 + 136), *(*(a1 + 168) + 40), 0x3B9ACA00uLL / *(*(a1 + 168) + 40));
      ps_liveness_node_finalize(*(a1 + 136), 0);
      goto LABEL_29;
  }

LABEL_33:
  v30 = 0;
  asprintf(&v30, "%s:%s:%d - The camera attribute that is being used to construct the camera stream writer is being passed an unknown stream type: %d", "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/Polaris/RealityCamera/BufferResource/PSBufferWriter.m", "ps_buffer_writer_create_resource", 346, v10);
  v24 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    v25 = *(*(a1 + 168) + 92);
    *buf = 136316418;
    v32 = "ps_buffer_writer_create_resource";
    v33 = 1024;
    *v34 = 346;
    *&v34[4] = 2080;
    *&v34[6] = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/Polaris/RealityCamera/BufferResource/PSBufferWriter.m";
    v35 = 2080;
    v36 = "ps_buffer_writer_create_resource";
    v37 = 1024;
    v38 = 346;
    v39 = 1024;
    v40 = v25;
    _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_FAULT, "%s:%d %s:%s:%d - The camera attribute that is being used to construct the camera stream writer is being passed an unknown stream type: %d", buf, 0x32u);
  }

  v26 = OSLogFlushBuffers();
  if (v26)
  {
    v27 = v26;
    v28 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "ps_buffer_writer_create_resource";
      v33 = 1024;
      *v34 = v27;
      _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v29 = abort_with_reason();
  return cvdataBufferAllocator_0(v29);
}

uint64_t cvdataBufferAllocator_0(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  v5 = *a1 * v3;
  v6 = !is_mul_ok(*a1, v3);
  v7 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    *buf = 136316162;
    v24 = "cvdataBufferAllocator";
    v25 = 2048;
    v26 = v8;
    v27 = 2048;
    v28 = v9;
    v29 = 2048;
    v30 = v5;
    v31 = 1024;
    v32 = v10;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "PSCVDataBufferResource in %s width=%lu height=%lu allocSize=%llu pixelFormat=%#x\n", buf, 0x30u);
  }

  if (v6)
  {
    cvdataBufferAllocator_cold_2_0(a1, v4);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2948], [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A70], [MEMORY[0x277CCABB0] numberWithUnsignedInt:v2]);
    v12 = IOSurfaceCreate(Mutable);
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC4B50], *MEMORY[0x277CBED28]);
      v14 = CVDataBufferCreateWithIOSurface();
      if (v14)
      {
        v19 = v14;
        v20 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v24) = v19;
          v21 = "failed to create CV Data Buffer for resource ret=%d";
LABEL_19:
          _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_ERROR, v21, buf, 8u);
        }
      }

      else
      {
        v15 = CVDataBufferIncrementUseCountForCategory();
        if (!v15)
        {
          goto LABEL_7;
        }

        v22 = v15;
        v20 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v24) = v22;
          v21 = "failed to increment category 1 use count for CV Data Buffer ret=%d";
          goto LABEL_19;
        }
      }

LABEL_7:
      CFRelease(v13);
      if (!Mutable)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    cvdataBufferAllocator_cold_1_0();
    if (Mutable)
    {
LABEL_8:
      CFRelease(Mutable);
    }
  }

LABEL_9:
  v16 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v24 = 0;
    _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_DEBUG, "PSCVDataBufferResource in cvdataBufferAllocator dataBufferRef=%p\n", buf, 0xCu);
  }

  result = 0;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void ps_buffer_writer_camerastream_install_bufferpool(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1[16])
  {
LABEL_2:
    v2 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = a1[20];
  ps_buffer_camera_stream_writer_start();
  v6 = a1[21];
  v7 = *(v6 + 2);
  if (v7 == 11)
  {
    v8 = *v6;
LABEL_11:
    if (a2)
    {
      v12 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315650;
        v16 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/Polaris/RealityCamera/BufferResource/PSBufferWriter.m";
        v17 = 2080;
        v18 = "ps_buffer_writer_camerastream_install_bufferpool";
        v19 = 1024;
        v20 = 413;
        _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "%s:%s:%d - Installing surfaces for a CVPixelBuffer Writer", &v15, 0x1Cu);
      }

      v13 = a1[20];
      ps_buffer_camera_stream_writer_install_cvpixelbufferbackingsurfaces();
    }

    goto LABEL_2;
  }

  v9 = *(v6 + 3) + (*(v6 + 2) + *(v6 + 1)) * *(v6 + 10) + *v6;
  if ((v7 - 8) < 2)
  {
    v10 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315650;
      v16 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/Polaris/RealityCamera/BufferResource/PSBufferWriter.m";
      v17 = 2080;
      v18 = "ps_buffer_writer_camerastream_install_bufferpool";
      v19 = 1024;
      v20 = 421;
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEBUG, "%s:%s:%d - Installing surfaces for a CVDataBuffer Writer", &v15, 0x1Cu);
    }

    if (a2)
    {
      v11 = a1[20];
      ps_buffer_camera_stream_writer_install_cvdatabufferbackingsurfaces();
    }

    goto LABEL_2;
  }

  if (v7 == 7)
  {
    goto LABEL_11;
  }

  v14 = ps_buffer_writer_camerastream_install_bufferpool_cold_1(&v15);
  ps_buffer_writer_camerastream_install_metadata_bufferpool(v14);
}