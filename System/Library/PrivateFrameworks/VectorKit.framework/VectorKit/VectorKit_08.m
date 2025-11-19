void **std::unique_ptr<ggl::FragmentedPool<ggl::SDFGlyph::HaloPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::SDFGlyph::HaloPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::SDFGlyph::HaloPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::SDFGlyph::HaloPipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::HaloPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::SDFGlyph::HaloPipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::HaloPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::SDFGlyph::SuperSamplePipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::SDFGlyph::SuperSamplePipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::SDFGlyph::SuperSamplePipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::SuperSamplePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SDFGlyph::SuperSamplePipelineSetup *>(v5, v4);
  }

  return a1;
}

ggl::zone_mallocator *std::vector<ggl::Glyph3d::DefaultPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::DefaultPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::DefaultPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Glyph3d::DefaultPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::DefaultPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Glyph3d::DefaultPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::Glyph3d::DefaultPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Glyph3d::DefaultPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::DefaultPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::DefaultPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Glyph3d::DefaultPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Glyph3d::DefaultPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Glyph3d::DefaultPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Glyph3d::DefaultPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Glyph3d::DefaultPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::Glyph3d::LowPrecisionPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::LowPrecisionPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Glyph3d::LowPrecisionPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Glyph3d::LowPrecisionPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::LowPrecisionPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Glyph3d::LowPrecisionPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Glyph3d::LowPrecisionPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Glyph3d::LowPrecisionPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Glyph3d::LowPrecisionPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Glyph3d::LowPrecisionPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Glyph3d::LowPrecisionPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::vector<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Glyph3d::LowPrecisionHaloPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Glyph3d::LowPrecisionHaloPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Glyph3d::LowPrecisionHaloPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Glyph3d::LowPrecisionHaloPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::vector<ggl::Glyph3d::RaymarchPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::RaymarchPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::RaymarchPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Glyph3d::RaymarchPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::RaymarchPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Glyph3d::RaymarchPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::RaymarchPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::RaymarchPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Glyph3d::RaymarchPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::Glyph3d::RaymarchPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Glyph3d::RaymarchPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Glyph3d::RaymarchPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Glyph3d::RaymarchPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Glyph3d::RaymarchPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::RaymarchPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Glyph3d::RaymarchPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::RaymarchPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *ggl::FragmentedPool<ggl::GlyphWithNormalHalo::DefaultPipelineSetup>::FragmentedPool(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  v5 = (a1 + 4);
  a1[5] = 0;
  a1[6] = 0;
  v6 = a1 + 8;
  v7 = *(a2 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a2)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    a1[11] = v7;
    goto LABEL_6;
  }

  a1[11] = v6;
  (*(**(a2 + 24) + 24))(*(a2 + 24), v6);
LABEL_6:
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      a1[15] = a1 + 12;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 12);
      goto LABEL_11;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  a1[15] = v8;
LABEL_11:
  a1[16] = 2000;
  std::vector<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::reserve(a1);
  std::vector<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::reserve(v5);
  return a1;
}

void sub_1B27FD760(_Unwind_Exception *a1)
{
  std::__function::__value_func<ggl::GlyphWithNormalHalo::DefaultPipelineSetup * ()(void)>::~__value_func[abi:nn200100](v3);
  std::vector<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelRenderer::LabelRenderer(md::LabelWorldTraits const&,ggl::StandardLibrary const&,ggl::RenderTargetFormat const&,gdc::ServiceLocator &)::$_8,std::allocator<md::LabelRenderer::LabelRenderer(md::LabelWorldTraits const&,ggl::StandardLibrary const&,ggl::RenderTargetFormat const&,gdc::ServiceLocator &)::$_8>,ggl::GlyphWithNormalHalo::DefaultPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A45268;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::GlyphWithNormalHalo::DefaultPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::GlyphWithNormalHalo::DefaultPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::GlyphWithNormalHalo::DefaultPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::GlyphWithNormalHalo::DefaultPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::GlyphWithNormalHalo::DefaultPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ggl::BufferData::~BufferData(std::mutex *this)
{
  this->__m_.__sig = &unk_1F2A5D5A0;
  std::mutex::~mutex(this + 2);
  v3 = *this[1].__m_.__opaque;
  if (v3)
  {
    *&this[1].__m_.__opaque[8] = v3;
    v4 = ggl::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, v3);
  }

  v5 = *&this->__m_.__opaque[24];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

{
  ggl::BufferData::~BufferData(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Glyph::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Glyph::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

ggl::RenderDataHolder *ggl::Icon::IconPipelineState::IconPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11)
{
  {
    v23 = a4;
    v25 = a2;
    v26 = a3;
    a2 = v25;
    a3 = v26;
    a4 = v23;
    if (v24)
    {
      {
        if (v24)
        {
          ggl::MeshTyped<ggl::Icon::DefaultVbo>::typedReflection();
          ggl::Icon::IconPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::Icon::DefaultVbo>::typedReflection(void)::r;
          *algn_1EB8338E8 = &ggl::Icon::pipelineDataIconPipelineDeviceStructs(void)::ref;
          qword_1EB8338F0 = 0;
          {
            ggl::Icon::pipelineDataIconPipelineConstantStructs(void)::ref = ggl::Label::ViewInScreenSpace::reflection(void)::reflection;
            unk_1EB833720 = ggl::Label::DeviceBufferTextureSize::reflection(void)::reflection;
            qword_1EB833728 = ggl::Label::ViewCommon::reflection(void)::reflection;
          }

          qword_1EB8338F8 = &ggl::Icon::pipelineDataIconPipelineConstantStructs(void)::ref;
          unk_1EB833900 = xmmword_1B33B0A70;
        }
      }

      ggl::Icon::IconPipelineState::typedReflection(void)::ref = &ggl::Icon::IconPipelineSetup::typedReflection(void)::ref;
      ggl::IconShader::typedReflection(v24);
      qword_1ED660160 = &ggl::IconShader::typedReflection(void)::ref;
      {
        ggl::Icon::pipelineStateIconPipelineAttributeStructBinding(void)::attr = 0;
        unk_1EB8335E0 = 0;
        qword_1EB8335E8 = "";
        dword_1EB8335F0 = 0;
        qword_1EB8335F8 = &ggl::Icon::pipelineStateIconPipelineAttributeBinding_0(void)::attr;
        unk_1EB833600 = 4;
      }

      qword_1ED660168 = &ggl::Icon::pipelineStateIconPipelineAttributeStructBinding(void)::attr;
      unk_1ED660170 = 1;
      qword_1ED660178 = 0;
      unk_1ED660180 = 2;
      qword_1ED660188 = &ggl::Icon::pipelineStateIconPipelineDeviceStructBinding(void)::ref;
      unk_1ED660190 = 0;
      {
        ggl::Icon::pipelineStateIconPipelineConstantStructBinding(void)::ref = 0;
        unk_1EB833610 = 0;
        qword_1EB833618 = "viewInScreenSpace";
        dword_1EB833620 = 3;
        qword_1EB833628 = &ggl::Icon::pipelineStateIconPipelineConstantViewInScreenSpaceBinding(void)::reflection;
        *algn_1EB833630 = vdupq_n_s64(1uLL);
        qword_1EB833640 = 1;
        unk_1EB833648 = "floatBufferTextureSize";
        dword_1EB833650 = 3;
        qword_1EB833658 = &ggl::Icon::pipelineStateIconPipelineConstantFloatBufferTextureSizeBinding(void)::reflection;
        unk_1EB833660 = xmmword_1B33B0A70;
        qword_1EB833670 = 2;
        unk_1EB833678 = "viewCommon";
        dword_1EB833680 = 3;
        qword_1EB833688 = &ggl::Icon::pipelineStateIconPipelineConstantViewCommonBinding(void)::reflection;
        unk_1EB833690 = 2;
      }

      qword_1ED660198 = &ggl::Icon::pipelineStateIconPipelineConstantStructBinding(void)::ref;
      unk_1ED6601A0 = 3;
      a4 = v23;
      a2 = v25;
      a3 = v26;
    }
  }

  v17 = *a2;
  v16 = a2[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v29 = *a3;
  *&v29[16] = *(a3 + 16);
  *&v29[28] = *(a3 + 28);
  v18 = *(a3 + 44);
  v27 = *a4;
  v28 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::Icon::IconPipelineState::typedReflection(void)::ref;
  *(this + 6) = v17;
  *(this + 7) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v21 = this + i;
    v21[64] = 0;
    *(v21 + 68) = xmmword_1B33B0760;
    *(v21 + 84) = 0;
    *(v21 + 100) = 0;
    *(v21 + 92) = 0;
  }

  *(this + 16) = v27;
  *(this + 17) = v28;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v29;
  *(this + 76) = *&v29[12];
  *(this + 92) = *&v29[28];
  *(this + 108) = v18;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  *this = &unk_1F2A014E0;
  *(this + 304) = a5;
  *(this + 305) = a6;
  *(this + 306) = a7;
  *(this + 307) = a8;
  *(this + 308) = a9;
  *(this + 309) = a10;
  *(this + 310) = a11;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v19);
  *(this + 288) = 1;
  *(this + 377) = 1;
  return this;
}

ggl::zone_mallocator *std::vector<ggl::Icon::IconPipelineSetup *,geo::allocator_adapter<ggl::Icon::IconPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::IconPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Icon::IconPipelineSetup *,geo::allocator_adapter<ggl::Icon::IconPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Icon::IconPipelineSetup *,geo::allocator_adapter<ggl::Icon::IconPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Icon::IconPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Icon::IconPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::Icon::IconPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Icon::IconPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Icon::IconPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Icon::IconPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Icon::IconPipelineSetup *,geo::allocator_adapter<ggl::Icon::IconPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Icon::IconPipelineSetup *,geo::allocator_adapter<ggl::Icon::IconPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::RenderDataHolder *ggl::Icon::ShadowPipelineState::ShadowPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11)
{
  {
    v23 = a4;
    v25 = a2;
    v26 = a3;
    a2 = v25;
    a3 = v26;
    a4 = v23;
    if (v24)
    {
      {
        if (v24)
        {
          ggl::MeshTyped<ggl::Icon::DefaultVbo>::typedReflection();
          ggl::Icon::ShadowPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::Icon::DefaultVbo>::typedReflection(void)::r;
          *algn_1EB8338B8 = &ggl::Icon::pipelineDataShadowPipelineDeviceStructs(void)::ref;
          qword_1EB8338C0 = 0;
          {
            ggl::Icon::pipelineDataShadowPipelineConstantStructs(void)::ref = ggl::Label::ViewInScreenSpace::reflection(void)::reflection;
            unk_1EB833700 = ggl::Label::DeviceBufferTextureSizeB::reflection(void)::reflection;
            qword_1EB833708 = ggl::Label::DeviceBufferTextureSize::reflection(void)::reflection;
            unk_1EB833710 = ggl::Label::ViewCommon::reflection(void)::reflection;
          }

          qword_1EB8338C8 = &ggl::Icon::pipelineDataShadowPipelineConstantStructs(void)::ref;
          *algn_1EB8338D0 = xmmword_1B33B0C40;
        }
      }

      ggl::Icon::ShadowPipelineState::typedReflection(void)::ref = &ggl::Icon::ShadowPipelineSetup::typedReflection(void)::ref;
      ggl::ShadowShader::typedReflection(v24);
      qword_1EB833860 = &ggl::ShadowShader::typedReflection(void)::ref;
      {
        ggl::Icon::pipelineStateShadowPipelineAttributeStructBinding(void)::attr = 0;
        unk_1EB8334F0 = 0;
        qword_1EB8334F8 = "";
        dword_1EB833500 = 0;
        qword_1EB833508 = &ggl::Icon::pipelineStateShadowPipelineAttributeBinding_0(void)::attr;
        unk_1EB833510 = 4;
      }

      qword_1EB833868 = &ggl::Icon::pipelineStateShadowPipelineAttributeStructBinding(void)::attr;
      unk_1EB833870 = 1;
      qword_1EB833878 = 0;
      unk_1EB833880 = 2;
      qword_1EB833888 = &ggl::Icon::pipelineStateShadowPipelineDeviceStructBinding(void)::ref;
      unk_1EB833890 = 0;
      {
        ggl::Icon::pipelineStateShadowPipelineConstantStructBinding(void)::ref = 0;
        unk_1EB833520 = 0;
        qword_1EB833528 = "viewInScreenSpace";
        dword_1EB833530 = 3;
        qword_1EB833538 = &ggl::Icon::pipelineStateShadowPipelineConstantViewInScreenSpaceBinding(void)::reflection;
        unk_1EB833540 = vdupq_n_s64(1uLL);
        qword_1EB833550 = 1;
        unk_1EB833558 = "byteBufferTextureSize";
        dword_1EB833560 = 3;
        qword_1EB833568 = &ggl::Icon::pipelineStateShadowPipelineConstantByteBufferTextureSizeBinding(void)::reflection;
        *algn_1EB833570 = xmmword_1B33B0A70;
        qword_1EB833580 = 2;
        unk_1EB833588 = "floatBufferTextureSize";
        dword_1EB833590 = 3;
        qword_1EB833598 = &ggl::Icon::pipelineStateShadowPipelineConstantFloatBufferTextureSizeBinding(void)::reflection;
        unk_1EB8335A0 = vdupq_n_s64(3uLL);
        qword_1EB8335B0 = 3;
        unk_1EB8335B8 = "viewCommon";
        dword_1EB8335C0 = 3;
        qword_1EB8335C8 = &ggl::Icon::pipelineStateShadowPipelineConstantViewCommonBinding(void)::reflection;
        unk_1EB8335D0 = 2;
      }

      qword_1EB833898 = &ggl::Icon::pipelineStateShadowPipelineConstantStructBinding(void)::ref;
      unk_1EB8338A0 = 4;
      a4 = v23;
      a2 = v25;
      a3 = v26;
    }
  }

  v17 = *a2;
  v16 = a2[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v29 = *a3;
  *&v29[16] = *(a3 + 16);
  *&v29[28] = *(a3 + 28);
  v18 = *(a3 + 44);
  v27 = *a4;
  v28 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::Icon::ShadowPipelineState::typedReflection(void)::ref;
  *(this + 6) = v17;
  *(this + 7) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v21 = this + i;
    v21[64] = 0;
    *(v21 + 68) = xmmword_1B33B0760;
    *(v21 + 84) = 0;
    *(v21 + 100) = 0;
    *(v21 + 92) = 0;
  }

  *(this + 16) = v27;
  *(this + 17) = v28;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v29;
  *(this + 76) = *&v29[12];
  *(this + 92) = *&v29[28];
  *(this + 108) = v18;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  *this = &unk_1F2A015E8;
  *(this + 304) = a5;
  *(this + 305) = a6;
  *(this + 306) = a7;
  *(this + 307) = a8;
  *(this + 308) = a9;
  *(this + 309) = a10;
  *(this + 310) = a11;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v19);
  *(this + 288) = 1;
  *(this + 377) = 1;
  return this;
}

ggl::zone_mallocator *std::vector<ggl::Icon::ShadowPipelineSetup *,geo::allocator_adapter<ggl::Icon::ShadowPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::ShadowPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Icon::ShadowPipelineSetup *,geo::allocator_adapter<ggl::Icon::ShadowPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::LabelRenderer::LabelRenderer(md::LabelWorldTraits const&,ggl::StandardLibrary const&,ggl::RenderTargetFormat const&,gdc::ServiceLocator &)::$_12,std::allocator<md::LabelRenderer::LabelRenderer(md::LabelWorldTraits const&,ggl::StandardLibrary const&,ggl::RenderTargetFormat const&,gdc::ServiceLocator &)::$_12>,ggl::Icon::ShadowPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A45548;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Icon::ShadowPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Icon::ShadowPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Icon::ShadowPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Icon::ShadowPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Icon::ShadowPipelineSetup *,geo::allocator_adapter<ggl::Icon::ShadowPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Icon::ShadowPipelineSetup *,geo::allocator_adapter<ggl::Icon::ShadowPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__func<md::LabelRenderer::LabelRenderer(md::LabelWorldTraits const&,ggl::StandardLibrary const&,ggl::RenderTargetFormat const&,gdc::ServiceLocator &)::$_13,std::allocator<md::LabelRenderer::LabelRenderer(md::LabelWorldTraits const&,ggl::StandardLibrary const&,ggl::RenderTargetFormat const&,gdc::ServiceLocator &)::$_13>,ggl::Icon::MaskedIconPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A45610;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Icon::MaskedIconPipelineSetup *,geo::allocator_adapter<ggl::Icon::MaskedIconPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::MaskedIconPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Icon::MaskedIconPipelineSetup *,geo::allocator_adapter<ggl::Icon::MaskedIconPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Icon::MaskedIconPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Icon::MaskedIconPipelineSetup *,geo::allocator_adapter<ggl::Icon::MaskedIconPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Icon::MaskedIconPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Icon::MaskedIconPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Icon::MaskedIconPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Icon::MaskedIconPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Icon::MaskedIconPipelineSetup *,geo::allocator_adapter<ggl::Icon::MaskedIconPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Icon::MaskedIconPipelineSetup *,geo::allocator_adapter<ggl::Icon::MaskedIconPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Icon::MaskedIconPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Icon::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Icon::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

ggl::zone_mallocator *std::vector<ggl::Icon::WaypointPipelineSetup *,geo::allocator_adapter<ggl::Icon::WaypointPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::WaypointPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Icon::WaypointPipelineSetup *,geo::allocator_adapter<ggl::Icon::WaypointPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Icon::WaypointPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Icon::WaypointPipelineSetup *,geo::allocator_adapter<ggl::Icon::WaypointPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Icon::WaypointPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::Icon::WaypointPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Icon::WaypointPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Icon::WaypointPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Icon::WaypointPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Icon::WaypointPipelineSetup *,geo::allocator_adapter<ggl::Icon::WaypointPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Icon::WaypointPipelineSetup *,geo::allocator_adapter<ggl::Icon::WaypointPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t md::StyleSettingsValueNode::value_as<float>(void *__src, size_t __n)
{
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  v9 = __n;
  if (__n)
  {
    memcpy(&__dst, __src, __n);
  }

  *(&__dst + __n) = 0;
  v7 = 0;
  if (v9 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v4 = strtof(p_dst, &v7);
  v5 = *v7;
  if (v9 < 0)
  {
    operator delete(__dst);
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return LODWORD(v4) | 0x100000000;
  }
}

float std::function<void ()(unsigned long,float)>::operator()(uint64_t a1, uint64_t a2, float a3)
{
  v8 = a2;
  v7 = a3;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v8, &v7);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__func<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_0,std::allocator<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_0>,void ()(unsigned long,float)>::operator()(v4, v5, v6);
  }

  return result;
}

float std::__function::__func<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_0,std::allocator<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_0>,void ()(unsigned long,float)>::operator()(uint64_t a1, void *a2, float *a3)
{
  result = *a3;
  *(*(a1 + 8) + 20 * *a2) = *a3;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long,float)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

float std::__function::__func<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_1,std::allocator<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_1>,void ()(unsigned long,float)>::operator()(uint64_t a1, void *a2, float *a3)
{
  result = *a3;
  *(*(a1 + 8) + 20 * *a2 + 4) = *a3;
  return result;
}

uint64_t std::__function::__func<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_2,std::allocator<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_2>,void ()(unsigned long,float)>::operator()(uint64_t result, void *a2, float *a3)
{
  v3 = *(result + 8) + 20 * *a2;
  v4 = *a3 * 1.4;
  if (*a2 < 2uLL)
  {
    v4 = *a3;
  }

  *(v3 + 8) = *a3;
  *(v3 + 12) = v4;
  return result;
}

float std::__function::__func<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_3,std::allocator<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_3>,void ()(unsigned long,float)>::operator()(uint64_t a1, void *a2, float *a3)
{
  result = *a3;
  *(*(a1 + 8) + 20 * *a2 + 16) = *a3;
  return result;
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::attributesReflection(void)::r = &ggl::CommonMesh::bufferPos4Reflection;
    }

    ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection(void)::r = &ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::attributesReflection(void)::r;
    qword_1ED66A690 = 1;
  }
}

void *ggl::OcclusionLine::OcclusionLinePipelineSetup::OcclusionLinePipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::PipelineSetup(a1, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::PipelineSetup(a1, a2, 0);
  }

  *a1 = &unk_1F29E81B8;
  v7 = a1[17];
  v8 = *a4;
  v9 = a4[1];
  *v7 = *a4;
  v7[1] = 0;
  v10 = a1[29];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v10[1];
  *v10 = v8;
  v10[1] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  return a1;
}

void std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::resize(mdm::zone_mallocator *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = v4 - *a1;
  v6 = v5 >> 2;
  if (a2 <= v5 >> 2)
  {
    if (a2 >= v6)
    {
      return;
    }

    v20 = v3 + 4 * a2;
    goto LABEL_13;
  }

  v7 = a2 - v6;
  v8 = *(a1 + 2);
  if (v7 <= (v8 - v4) >> 2)
  {
    bzero(*(a1 + 1), 4 * v7);
    v20 = v4 + 4 * v7;
LABEL_13:
    *(a1 + 1) = v20;
    return;
  }

  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v9 = v8 - v3;
  v10 = v9 >> 1;
  if (v9 >> 1 <= a2)
  {
    v10 = a2;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  v21[4] = a1 + 24;
  v12 = mdm::zone_mallocator::instance(a1);
  v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v12, v11);
  v14 = *a1;
  v15 = *(a1 + 1) - *a1;
  v16 = &v13[v5];
  v17 = &v13[4 * v11];
  bzero(v16, 4 * v7);
  memcpy(&v16[-v15], v14, v15);
  v18 = *a1;
  *a1 = &v16[-v15];
  *(a1 + 1) = &v16[4 * v7];
  v19 = *(a1 + 2);
  *(a1 + 2) = v17;
  v21[2] = v18;
  v21[3] = v19;
  v21[0] = v18;
  v21[1] = v18;
  std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator> &>::~__split_buffer(v21);
}

mdm::zone_mallocator *std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v5, v4);
  }

  return a1;
}

double md::LabelLayoutContext::LabelLayoutContext(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = *(a2 + 17);
  *(a1 + 15) = 0;
  *(a1 + 9) = 0;
  *(a1 + 23) = 1;
  *(a1 + 28) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1065353216;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 68) = 1065353216;
  *(a1 + 476) = 0;
  result = 0.0;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 457) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 480) = 0x3FF0000000000000;
  *(a1 + 520) = 0x3FF0000000000000;
  *(a1 + 560) = 0x3FF0000000000000;
  *(a1 + 600) = 0x3FF0000000000000;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 608) = 0x3FF0000000000000;
  *(a1 + 648) = 0x3FF0000000000000;
  *(a1 + 688) = 0x3FF0000000000000;
  *(a1 + 728) = 0x3FF0000000000000;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 736) = 0x3FF0000000000000;
  *(a1 + 776) = 0x3FF0000000000000;
  *(a1 + 816) = 0x3FF0000000000000;
  *(a1 + 856) = 0x3FF0000000000000;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 864) = 0x3FF0000000000000;
  *(a1 + 904) = 0x3FF0000000000000;
  *(a1 + 944) = 0x3FF0000000000000;
  *(a1 + 984) = 0x3FF0000000000000;
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 992) = 0x3FF0000000000000;
  *(a1 + 1024) = 0x3FF0000000000000;
  *(a1 + 1056) = 0x3FF0000000000000;
  *(a1 + 1064) = xmmword_1B33B1350;
  *(a1 + 1080) = xmmword_1B33B1360;
  *(a1 + 1096) = xmmword_1B33B1360;
  *(a1 + 1112) = xmmword_1B33B1360;
  *(a1 + 1128) = xmmword_1B33B1360;
  *(a1 + 1144) = 0x80000000800000;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1184) = 1065353216;
  *(a1 + 1188) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1196) = 0;
  *(a1 + 1273) = 0;
  *(a1 + 1276) = 0;
  *(a1 + 1228) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1280) = 1036831949;
  return result;
}

void md::Monitorable<md::ConfigValue<GEOConfigKeyString,std::string>>::Monitorable(uint64_t a1, _OWORD *a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*a1)
  {
    v6 = *(a1 + 8) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    md::ConfigValue<GEOConfigKeyString,std::string>::_update(a1);
  }

  *(a1 + 40) = 0;
  operator new();
}

void sub_1B2800394(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void md::ConfigValue<GEOConfigKeyString,std::string>::_update(uint64_t a1)
{
  v2 = GEOConfigGetString();
  v3 = [v2 UTF8String];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "";
  }

  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  __dst.__r_.__value_.__s.__data_[v6] = 0;
  std::string::operator=((a1 + 16), &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

uint64_t std::__function::__value_func<void ()(std::string)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0>,void ()(std::string)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F29E29D8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::unique_ptr<md::Monitorable<md::ConfigValue<GEOConfigKeyString,std::string>>>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    md::Monitorable<md::ConfigValue<GEOConfigKeyString,std::string>>::~Monitorable(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1>,void ()(std::string)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

const char *gdc::to_string(unsigned int a1)
{
  if (a1 > 5)
  {
    return "<Invalid>";
  }

  else
  {
    return off_1E7B58630[a1];
  }
}

BOOL md::LabelStyleCache::setContentScale(md::LabelStyleCache *this, float a2)
{
  v12 = *MEMORY[0x1E69E9840];
  std::mutex::lock(this);
  v4 = *(this + 38);
  if (v4 != a2)
  {
    *(this + 38) = a2;
    v9 = &unk_1F2A3A140;
    v10 = a2;
    v11 = &v9;
    md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*(this + 33), &v9);
    std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](&v9);
    v6 = &unk_1F2A3A140;
    v7 = a2;
    v8 = &v6;
    md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*(this + 47), &v6);
    std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](&v6);
    md::LabelStyle::setContentScale(*(this + 54), *(this + 38));
  }

  std::mutex::unlock(this);
  return v4 != a2;
}

void sub_1B2800794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](va);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(uint64_t **a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      if (v3[7])
      {
        goto LABEL_14;
      }

      v4 = v3[5];
      if (!v4 || v4->__shared_owners_ == -1)
      {
        goto LABEL_14;
      }

      v8 = 0;
      v5 = std::__shared_weak_count::lock(v4);
      v9 = v5;
      if (v5)
      {
        v8 = v3[4];
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else if (v8)
      {
LABEL_10:
        v6 = *(a2 + 24);
        if (!v6)
        {
          v7 = std::__throw_bad_function_call[abi:nn200100]();
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v9);
          }

          _Unwind_Resume(v7);
        }

        (*(*v6 + 48))(v6, &v8);
        v5 = v9;
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

LABEL_14:
      v3 = *v3;
    }

    while (v3);
  }
}

void md::LabelStyle::setContentScale(md::LabelStyle *this, float a2)
{
  if (*(this + 22) != a2)
  {
    *(this + 22) = a2;
    if (!*this)
    {
      *(this + 70) = 1;
      *(this + 241) = 1;
      *(this + 45) = -1;
      *(this + 250) = 2;
      *(this + 49) = 1065353216;
      *(this + 54) = 2139095039;
      *(this + 228) = 0x4334000000000000;
      *(this + 59) = a2 * 12.0;
      *(this + 142) = 1;
      *(this + 261) = 4;
    }

    md::LabelStyle::invalidateCachedProperties(this);
  }
}

void md::LabelWorldTraits::createLabeler(md::LabelWorldTraits *this, md::LabelManager *a2)
{
  if (a2 <= 2u && a2)
  {
    if (a2 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B2802B44(_Unwind_Exception *a1)
{
  md::ARWalkingLabeler::{unnamed type#4}::~ARWalkingLabeler(v2 + 1976);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 1936);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v5);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 1840);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear((v2 + 1816));
  v6 = *(v2 + 1736);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  *(v2 + 1696) = v4;

  v7 = *(v2 + 1688);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v2 + 1568);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v2 + 1488);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v2 + 1408);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v2 + 1328);
  md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable(v2 + 1248);
  md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable(v2 + 1168);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v2 + 1088);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v2 + 1008);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v2 + 928);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v2 + 848);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v2 + 768);
  md::Monitorable<md::Transformable<md::ConfigValue<GEOConfigKeyDouble,double>>>::~Monitorable(v3);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v2 + 568);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v2 + 488);
  v8 = *(v2 + 464);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  std::unique_ptr<md::LabelExternalMeshModerator>::~unique_ptr[abi:nn200100]((v2 + 448));
  std::unique_ptr<md::ARWalkingSupport>::~unique_ptr[abi:nn200100]((v2 + 440));
  md::StandardLabeler::~StandardLabeler(v2);
  MEMORY[0x1B8C62190](v2, 0x10E1C409E9A8310);
  _Unwind_Resume(a1);
}

md::LabelExternalObjectsModerator **std::unique_ptr<md::LabelExternalObjectsModerator>::~unique_ptr[abi:nn200100](md::LabelExternalObjectsModerator **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::LabelExternalObjectsModerator::~LabelExternalObjectsModerator(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

mdm::zone_mallocator *std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::reserve(mdm::zone_mallocator *result, unint64_t a2)
{
  v4 = *result;
  if (a2 > (*(result + 2) - *result) >> 3)
  {
    v16[9] = v2;
    v16[10] = v3;
    v6 = result;
    v7 = *(result + 1) - v4;
    v16[4] = result + 24;
    v8 = mdm::zone_mallocator::instance(result);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBase *>(v8, a2);
    v10 = &v9[v7];
    v11 = &v9[8 * a2];
    v12 = *(v6 + 1) - *v6;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *v6, v12);
    v14 = *v6;
    *v6 = v13;
    *(v6 + 1) = v10;
    v15 = *(v6 + 2);
    *(v6 + 2) = v11;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    return std::__split_buffer<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator> &>::~__split_buffer(v16);
  }

  return result;
}

md::LabelDedupingGroup *md::RouteAnnotationDedupingGroup::RouteAnnotationDedupingGroup(md::LabelDedupingGroup *a1, unint64_t a2)
{
  v4 = md::LabelDedupingGroup::LabelDedupingGroup(a1);
  *v4 = &unk_1F2A55B10;
  *(v4 + 10) = a2;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::reserve((v4 + 40), a2 & ((a2 >> 1) >> 31));
  return a1;
}

void sub_1B280387C(_Unwind_Exception *a1)
{
  *v1 = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v1 + 5));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v1 + 1));
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__split_buffer<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelBase *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<geo::Cache<unsigned long,geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<unsigned long>,geo::LRUPolicy>>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__list_imp<std::pair<unsigned long,geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::clear(v2 + 6);
    v3 = v2[3];
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = v2[1];
    v2[1] = 0;
    if (v5)
    {
      operator delete(v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *std::unique_ptr<geo::Cache<unsigned long,std::shared_ptr<md::LabelIcon>,std::hash<unsigned long>,geo::LRUPolicy>>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__list_imp<std::pair<unsigned long,std::shared_ptr<md::LabelIcon>>>::clear(v2 + 6);
    v3 = v2[3];
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = v2[1];
    v2[1] = 0;
    if (v5)
    {
      operator delete(v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void **std::unique_ptr<VKLabelNavArtworkCache>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[6];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    std::unique_ptr<md::RoadSignArtworkGenerator>::reset[abi:nn200100](v2 + 2, 0);
    std::unique_ptr<geo::Cache<unsigned long,std::shared_ptr<md::LabelIcon>,std::hash<unsigned long>,geo::LRUPolicy>>::reset[abi:nn200100](v2 + 1, 0);
    std::unique_ptr<geo::Cache<unsigned long,geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<unsigned long>,geo::LRUPolicy>>::reset[abi:nn200100](v2, 0);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *prime, size_t __n)
{
  v2 = prime;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
      v3 = prime;
    }
  }

  v4 = *(v2 + 8);
  if (v3 <= *&v4)
  {
    if (v3 >= *&v4)
    {
      return;
    }

    prime = vcvtps_u32_f32(*(v2 + 5) / *(v2 + 12));
    if (*&v4 < 3uLL || (v11 = vcnt_s8(v4), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      prime = std::__next_prime(prime);
    }

    else
    {
      v12 = 1 << -__clz(prime - 1);
      if (prime >= 2)
      {
        prime = v12;
      }
    }

    if (v3 <= prime)
    {
      v3 = prime;
    }

    if (v3 >= *&v4)
    {
      return;
    }

    if (!v3)
    {
      std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> **,0>(v2, 0);
      *(v2 + 1) = 0;
      return;
    }
  }

  v5 = mdm::zone_mallocator::instance(prime);
  v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(v5, v3);
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> **,0>(v2, v6);
  v7 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v7++) = 0;
  }

  while (v3 != v7);
  v8 = *(v2 + 3);
  if (v8)
  {
    v9 = v8[1];
    v10 = vcnt_s8(v3);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      if (v9 >= v3)
      {
        v9 %= v3;
      }
    }

    else
    {
      v9 &= v3 - 1;
    }

    *(*v2 + 8 * v9) = v2 + 24;
    v13 = *v8;
    if (*v8)
    {
      do
      {
        v14 = v13[1];
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= v3)
          {
            v14 %= v3;
          }
        }

        else
        {
          v14 &= v3 - 1;
        }

        if (v14 != v9)
        {
          v15 = *v2;
          if (!*(*v2 + 8 * v14))
          {
            *(v15 + 8 * v14) = v8;
            goto LABEL_28;
          }

          *v8 = *v13;
          *v13 = **(v15 + 8 * v14);
          **(v15 + 8 * v14) = v13;
          v13 = v8;
        }

        v14 = v9;
LABEL_28:
        v8 = v13;
        v13 = *v13;
        v9 = v14;
      }

      while (v13);
    }
  }
}

uint64_t std::__tree<std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>,std::__map_value_compare<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>,geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>>>::__emplace_unique_key_args<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 8);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v2;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return 0;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::insert(void *result, float *a2)
{
  if (!result[2])
  {
    return std::__tree<std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>,std::__map_value_compare<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>,geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>>>::__emplace_unique_key_args<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>(result, a2[1]);
  }

  v2 = (result + 1);
  if (*result == result + 1)
  {
    v8 = *result;
  }

  else
  {
    v3 = 0;
    v4 = *result;
    do
    {
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      ++v3;
      v4 = v6;
    }

    while (v6 != v2);
    v8 = *result;
    do
    {
      v9 = v3 >> 1;
      v10 = v8;
      if (v3 >= 2)
      {
        v11 = v3 >> 1;
        v12 = v8;
        do
        {
          v13 = *(v12 + 1);
          if (v13)
          {
            do
            {
              v10 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v10 = *(v12 + 2);
              v7 = *v10 == v12;
              v12 = v10;
            }

            while (!v7);
          }

          v12 = v10;
        }

        while (v11-- > 1);
      }

      if (v10[8] < a2[1])
      {
        v15 = *(v10 + 1);
        if (v15)
        {
          do
          {
            v8 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v8 = *(v10 + 2);
            v7 = *v8 == v10;
            v10 = v8;
          }

          while (!v7);
        }

        v9 = v3 + ~v9;
      }

      v3 = v9;
    }

    while (v9);
  }

  if (v2 == v8 || v8[7] >= a2[1])
  {
    if (*result == v8)
    {
      return std::__tree<std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>,std::__map_value_compare<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>,geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>>>::__emplace_unique_key_args<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>(result, a2[1]);
    }

    v16 = *v8;
    if (*v8)
    {
      do
      {
        v17 = v16;
        v16 = *(v16 + 1);
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = *(v8 + 2);
        v7 = *v17 == v8;
        v8 = v17;
      }

      while (v7);
    }

    if (*a2 >= v17[8])
    {
      return std::__tree<std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>,std::__map_value_compare<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>,geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,md::OrientationAction>>>::__emplace_unique_key_args<gm::Range<geo::Unit<geo::RadianUnitDescription,float>>,std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>(result, a2[1]);
    }
  }

  return result;
}

uint64_t *std::unique_ptr<md::LabelNavEtaLabeler>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*(v2 + 680));
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*(v2 + 648));
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*(v2 + 616));
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*(v2 + 584));
    v6 = (v2 + 552);
    std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>::__destroy_vector::operator()[abi:nn200100](&v6);
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v2 + 528));
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v2 + 496));
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,mdm::zone_mallocator>>::destroy(*(v2 + 464));
    std::__tree<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,mdm::zone_mallocator>>::destroy(*(v2 + 424));
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v2 + 392));
    std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::destroy(*(v2 + 360));
    v6 = (v2 + 320);
    std::vector<VKLabelNavRouteEta * {__strong},geo::allocator_adapter<VKLabelNavRouteEta * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
    v6 = (v2 + 288);
    std::vector<VKLabelNavRouteEta * {__strong},geo::allocator_adapter<VKLabelNavRouteEta * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,mdm::zone_mallocator>>::destroy(*(v2 + 264));
    std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 216));
    v6 = (v2 + 184);
    std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
    v6 = (v2 + 152);
    std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
    *(v2 + 112) = &unk_1F2A46000;

    v3 = *(v2 + 80);
    if (v3)
    {
      *(v2 + 88) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      *(v2 + 64) = v4;
      operator delete(v4);
    }

    std::unique_ptr<md::RouteSimplifier>::reset[abi:nn200100]((v2 + 48), 0);
    v5 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(v2 + 16) = &unk_1F2A580E8;

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::CompositeLabeler::addLabeler(md::CompositeLabeler *this, md::Labeler *a2)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v5 >= v4)
  {
    v7 = *(this + 1);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(this);
      v13 = pthread_rwlock_rdlock((v12 + 32));
      if (v13)
      {
        geo::read_write_lock::logFailure(v13, "read lock", v14);
      }

      v15 = malloc_type_zone_malloc(*v12, 8 * v11, 0x2004093837F09uLL);
      atomic_fetch_add((v12 + 24), 1u);
      geo::read_write_lock::unlock((v12 + 32));
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v8];
    v17 = &v15[8 * v11];
    *v16 = a2;
    v6 = v16 + 8;
    v18 = *(this + 1);
    v19 = *(this + 2) - v18;
    v20 = &v16[-v19];
    v21 = memcpy(&v16[-v19], v18, v19);
    v22 = *(this + 1);
    *(this + 1) = v20;
    *(this + 2) = v6;
    *(this + 3) = v17;
    if (v22)
    {
      v23 = mdm::zone_mallocator::instance(v21);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::Labeler *>(v23, v22);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(this + 2) = v6;
}

uint64_t *std::unique_ptr<md::RouteAnnotationSupport>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::__deallocate_node(*(v2 + 200));
    v4 = *(v2 + 176);
    *(v2 + 176) = 0;
    if (v4)
    {
      v5 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *>(v5, v4);
    }

    std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 144));
    if (*(v2 + 112))
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v2 + 112));
      v6 = *(v2 + 112);
      v8 = mdm::zone_mallocator::instance(v7);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::RouteAnnotationLabelFeature>>(v8, v6);
    }

    v10 = v2 + 80;
    std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v10);
    v10 = v2 + 48;
    std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v10);
    v9 = *(v2 + 40);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    *(v2 + 8) = &unk_1F2A436C8;

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::MapNavLabeler::worldTraitsDidChange(md::MapNavLabeler *this)
{
  v1 = *(*(*(this + 3) + 232) + 31);
  if (*(this + 828) != v1)
  {
    *(this + 828) = v1;
    md::LabelNavEtaLabeler::clearETALabels(*(this + 90));
  }
}

void md::LabelManager::updateDebugSettings(std::mutex *this)
{
  v43[9] = *MEMORY[0x1E69E9840];
  v2 = *&this[61].__m_.__opaque[32];
  v3 = *v2;
  if (v3 == 1)
  {
    *v2 = 0;
    {
      {
        std::string::basic_string[abi:nn200100]<0>(md::LabelDebugSettings::updateHideSettings(std::string const&)::defaultLabelHideSettings, "\n    {\n        default:false,\n    }\n    ");
      }
    }

    this[61].__m_.__opaque[28] = 0;
    *&this[61].__m_.__opaque[24] = 0;
    md::StyleSettingsParser::StyleSettingsParser(v43);
  }

  sig = this[62].__m_.__sig;
  if (*sig == 1)
  {
    *sig = 0;
    {
      std::string::basic_string[abi:nn200100]<0>(md::LabelDebugSettings::updateLayoutSettings(std::string const&)::defaultSettings, "\n    {\n        update-interval: {\n            default:{ default:200, gesturing:200, animating:200},\n            navigation:{ default:500, gesturing:200, animating:200},\n            overview:{ default:500, gesturing:200, animating:200},\n        },\n    }\n    ");
    }

    md::LabelDebugSettings::parseLayoutSettings();
  }

  v5 = +[VKDebugSettings sharedSettings];
  LOBYTE(this[57].__m_.__sig) = [v5 layoutContinuously];
  BYTE1(this[57].__m_.__sig) = [v5 labelUpdateMapTilesContinuously];
  BYTE2(this[57].__m_.__sig) = [v5 labelCollisionDisabled] ^ 1;
  BYTE3(this[57].__m_.__sig) = [v5 labelCollideContinuously];
  atomic_store([v5 labelTileDecodeEnabled], &this[57].__m_.__opaque[6]);
  this[57].__m_.__opaque[30] = [v5 disableBackgroundLabelLayout];
  this[57].__m_.__opaque[0] = [v5 paintLabelRoadFeatures];
  this[57].__m_.__opaque[1] = [v5 paintLabelCounts];
  this[57].__m_.__opaque[2] = [v5 showClientStyleAttributes];
  this[57].__m_.__opaque[3] = [v5 showLabelsNavState];
  this[57].__m_.__opaque[4] = [v5 showFlexZoneRanges];
  this[57].__m_.__opaque[7] = [v5 paintLabelCollisionLines];
  this[57].__m_.__opaque[8] = *(*&this[5].__m_.__opaque[8] + 157) ^ 1;
  this[57].__m_.__opaque[9] = [v5 textlessPOIsEnabled];
  [v5 textlessPOIsMinZoom];
  *&this[57].__m_.__opaque[16] = v6;
  this[57].__m_.__opaque[10] = [v5 displayTextureAtlas];
  *&this[57].__m_.__opaque[12] = [v5 textureAtlasPageIndex];
  this[57].__m_.__opaque[11] = [v5 textureAtlasIndex];
  if ([v5 labelFlipAlternatePositionsEnable])
  {
    this[57].__m_.__opaque[8] ^= 1u;
  }

  if ([v5 labelHideLineFeatures])
  {
    v7 = 1;
  }

  else
  {
    v7 = this[61].__m_.__opaque[26];
  }

  this[57].__m_.__opaque[21] = v7 & 1;
  if ([v5 labelHidePointFeatures])
  {
    v8 = 1;
  }

  else
  {
    v8 = this[61].__m_.__opaque[25];
  }

  this[57].__m_.__opaque[22] = v8 & 1;
  if ([v5 labelHidePhysicalFeatures])
  {
    v9 = 1;
  }

  else
  {
    v9 = this[61].__m_.__opaque[27];
  }

  this[57].__m_.__opaque[23] = v9 & 1;
  if ([v5 hideDirectionalArrows])
  {
    v10 = 1;
  }

  else
  {
    v10 = this[61].__m_.__opaque[28];
  }

  this[57].__m_.__opaque[24] = v10 & 1;
  v11 = this[61].__m_.__opaque[24];
  this[57].__m_.__opaque[20] = v11;
  if (this[57].__m_.__opaque[21] & 1) != 0 || (this[57].__m_.__opaque[22])
  {
    v12 = 1;
  }

  else
  {
    v12 = this[57].__m_.__opaque[23] | v10 | v11;
  }

  this[57].__m_.__opaque[25] = v12 & 1;
  this[57].__m_.__opaque[5] = [v5 labelTransitLineCollisionEnabled];
  this[57].__m_.__opaque[26] = [v5 labelHighlightingVerboseLoggingEnabled];
  this[57].__m_.__opaque[27] = [v5 disableOverlayTextConsole];
  this[57].__m_.__opaque[28] = [v5 labelHighlightingTransitFeaturesOnly];
  *&this[57].__m_.__opaque[32] = [v5 debugOverlayOffsetX];
  *&this[57].__m_.__opaque[36] = [v5 debugOverlayOffsetY];
  this[57].__m_.__opaque[41] = [v5 showGRLDebugInfo];
  atomic_store([v5 labelAllowDefaultStyle], &this[57].__m_.__opaque[42]);
  atomic_store([v5 labelUseDefaultStyle], &this[57].__m_.__opaque[43]);
  this[57].__m_.__opaque[46] = [v5 labelAllowDefaultIcon];
  this[57].__m_.__opaque[47] = [v5 labelRingAnimationEnabled];
  this[57].__m_.__opaque[48] = [v5 labelDebugHoverLayers];
  this[57].__m_.__opaque[49] = [v5 labelShowPlaceholderIcons];
  atomic_store(this[60].__m_.__opaque[16], &this[57].__m_.__opaque[44]);
  atomic_store(this[59].__m_.__opaque[0], &this[57].__m_.__opaque[45]);
  this[57].__m_.__opaque[40] = [v5 enableLabelAnimationTuning];
  this[58].__m_.__opaque[6] = [v5 labelPOIUpdatesDisabled];
  if ([v5 shouldOverrideSuperSampleKernelSize])
  {
    [v5 sdfGlyphSuperSampleKernelSize];
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *&this[57].__m_.__opaque[52] = v13;
  LOBYTE(this[58].__m_.__sig) = v14;
  if ([v5 shouldOverrideUpscaleFactor])
  {
    [v5 sdfGlyphShaderUpscaleFactor];
    v16 = v15;
    v17 = 1;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  HIDWORD(this[58].__m_.__sig) = v16;
  this[58].__m_.__opaque[0] = v17;
  this[58].__m_.__opaque[4] = [v5 shouldUseSDFGlyphs];
  this[58].__m_.__opaque[5] = [v5 shouldUseSDFSuperSampling];
  v18 = BYTE6(this[57].__m_.__sig);
  if (v18 != [v5 labelFacingCullDisabled])
  {
    BYTE6(this[57].__m_.__sig) = [v5 labelFacingCullDisabled];
    v3 = 1;
  }

  v19 = BYTE5(this[57].__m_.__sig);
  if (v19 != [v5 labelDedupingDisabled])
  {
    BYTE5(this[57].__m_.__sig) = [v5 labelDedupingDisabled];
    v3 = 1;
  }

  v20 = BYTE4(this[57].__m_.__sig);
  if (v20 != ([v5 labelOcclusionDisabled] ^ 1))
  {
    BYTE4(this[57].__m_.__sig) = [v5 labelOcclusionDisabled] ^ 1;
    v3 = 1;
  }

  v21 = this[57].__m_.__opaque[29];
  if (v21 == [v5 labelAutoOffsetRoadText])
  {
    if (!v3)
    {
      goto LABEL_41;
    }
  }

  else
  {
    this[57].__m_.__opaque[29] = [v5 labelAutoOffsetRoadText];
  }

  md::LabelManager::setNeedsClearScene(this);
LABEL_41:

  v42 = +[VKDebugSettings sharedSettings];
  if (([v42 labelHighlighting] & 1) == 0 && (objc_msgSend(v42, "lockLabelHighlighting") & 1) == 0 && (this[57].__m_.__opaque[27] & 1) == 0)
  {
    (*(**&this[3].__m_.__opaque[40] + 280))(*&this[3].__m_.__opaque[40]);
  }

  (*(**&this[3].__m_.__opaque[40] + 256))(*&this[3].__m_.__opaque[40]);
  v22 = &this[57].__m_.__opaque[52];
  v23 = *this[5].__m_.__opaque;
  v24 = (v23 + 1852);
  sig_low = LOBYTE(this[58].__m_.__sig);
  v26 = *(v23 + 1856);
  if (sig_low == v26 && LOBYTE(this[58].__m_.__sig))
  {
    if (*v22 == *v24)
    {
      goto LABEL_51;
    }
  }

  else if (sig_low == v26)
  {
    goto LABEL_51;
  }

  v27 = *v22;
  *(v23 + 1856) = this[58].__m_.__sig;
  *v24 = v27;
  if (!*(v23 + 1856))
  {
    v24 = &kDefaultSdfGlyphSuperSampleKernelSize;
  }

  _S8 = *v24;
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v43, *(v23 + 992));
  __asm { FCVT            H0, S8 }

  *(v43[5] + 8) = _H0;
  ggl::BufferMemory::~BufferMemory(v43);
LABEL_51:
  v34 = &this[58].__m_.__sig + 1;
  *(v23 + 1861) = this[58].__m_.__opaque[4];
  *(v23 + 1860) = this[58].__m_.__opaque[5];
  v35 = *&this[4].__m_.__opaque[16];
  v36 = (v35 + 68);
  v37 = v35[72];
  v38 = this[58].__m_.__opaque[0];
  if (v37 == v38 && v35[72])
  {
    v37 = *v36;
    v38 = *v34;
  }

  if (v37 != v38)
  {
    v39 = *v34;
    v35[72] = this[58].__m_.__opaque[0];
    *v36 = v39;
    if (!v35[72])
    {
      v36 = MEMORY[0x1E69E5358];
    }

    v40 = *v36;
    v41 = atomic_load((*v35 + 104));
    if (v40 != v41)
    {
      v43[0] = &unk_1F2A0CA68;
      v43[1] = v35;
      v43[3] = v43;
      md::LabelGlyphImageLoader::queueCommand(v35, v43);
    }
  }
}

void ggl::ARDepthMeshShader::typedReflection(ggl::ARDepthMeshShader *this)
{
  {
    if (v1)
    {
      ggl::ARDepthMeshShader::typedReflection(void)::ref = "ARDepthMeshShader";
      ggl::aRDepthMeshShaderVertexFunctionDescriptor(v1);
      qword_1ED65EC08 = &ggl::aRDepthMeshShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65EC10 = -623524230;
      ggl::aRDepthMeshShaderFragmentFunctionDescriptor(v2);
      qword_1ED65EC18 = &ggl::aRDepthMeshShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65EC20 = -409806049;
      qword_1ED65EC28 = ggl::aRDepthMeshShaderShaderConstants(void)::ref;
      unk_1ED65EC30 = 3;
      qword_1ED65EC38 = &ggl::aRDepthMeshShaderShaderTextures(void)::ref;
      unk_1ED65EC40 = 0;
      qword_1ED65EC48 = &ggl::aRDepthMeshShaderShaderSamplers(void)::ref;
      unk_1ED65EC50 = 0;
    }
  }
}

void ggl::ARGroundShadowShader::typedReflection(ggl::ARGroundShadowShader *this)
{
  {
    if (v1)
    {
      ggl::ARGroundShadowShader::typedReflection(void)::ref = "ARGroundShadowShader";
      ggl::aRGroundShadowShaderVertexFunctionDescriptor(v1);
      qword_1ED65EAF8 = &ggl::aRGroundShadowShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65EB00 = 117864070;
      ggl::aRGroundShadowShaderFragmentFunctionDescriptor(v2);
      qword_1ED65EB08 = &ggl::aRGroundShadowShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65EB10 = -1795548175;
      qword_1ED65EB18 = ggl::aRGroundShadowShaderShaderConstants(void)::ref;
      unk_1ED65EB20 = 4;
      qword_1ED65EB28 = &ggl::aRGroundShadowShaderShaderTextures(void)::ref;
      unk_1ED65EB30 = 0;
      qword_1ED65EB38 = &ggl::aRGroundShadowShaderShaderSamplers(void)::ref;
      unk_1ED65EB40 = 0;
    }
  }
}

void ggl::BuildingFlatShader::typedReflection(ggl::BuildingFlatShader *this)
{
  {
    if (v1)
    {
      ggl::BuildingFlatShader::typedReflection(void)::ref = "BuildingFlatShader";
      ggl::buildingFlatShaderVertexFunctionDescriptor(v1);
      qword_1ED66D010 = &ggl::buildingFlatShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D018 = 872130158;
      ggl::buildingFlatShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D020 = &ggl::buildingFlatShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D028 = -2071034820;
      qword_1ED66D030 = ggl::buildingFlatShaderShaderConstants(void)::ref;
      unk_1ED66D038 = 2;
      qword_1ED66D040 = &ggl::buildingFlatShaderShaderTextures(void)::ref;
      unk_1ED66D048 = 0;
      qword_1ED66D050 = &ggl::buildingFlatShaderShaderSamplers(void)::ref;
      unk_1ED66D058 = 0;
    }
  }
}

void ggl::BuildingTopDepthShader::typedReflection(ggl::BuildingTopDepthShader *this)
{
  {
    if (v1)
    {
      ggl::BuildingTopDepthShader::typedReflection(void)::ref = "BuildingTopDepthShader";
      ggl::buildingTopDepthShaderVertexFunctionDescriptor(v1);
      qword_1ED66C048 = &ggl::buildingTopDepthShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C050 = -1091056077;
      ggl::buildingTopDepthShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C058 = &ggl::buildingTopDepthShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C060 = -923614397;
      qword_1ED66C068 = ggl::buildingTopDepthShaderShaderConstants(void)::ref;
      unk_1ED66C070 = 2;
      qword_1ED66C078 = &ggl::buildingTopDepthShaderShaderTextures(void)::ref;
      unk_1ED66C080 = 0;
      qword_1ED66C088 = &ggl::buildingTopDepthShaderShaderSamplers(void)::ref;
      unk_1ED66C090 = 0;
    }
  }
}

void ggl::CircleShader::typedReflection(ggl::CircleShader *this)
{
  {
    if (v1)
    {
      ggl::CircleShader::typedReflection(void)::ref = "CircleShader";
      ggl::circleShaderVertexFunctionDescriptor(v1);
      qword_1ED66DAB8 = &ggl::circleShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66DAC0 = -1190556369;
      ggl::circleShaderFragmentFunctionDescriptor(v2);
      qword_1ED66DAC8 = &ggl::circleShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66DAD0 = -1051686454;
      qword_1ED66DAD8 = ggl::circleShaderShaderConstants(void)::ref;
      unk_1ED66DAE0 = 3;
      qword_1ED66DAE8 = &ggl::circleShaderShaderTextures(void)::ref;
      unk_1ED66DAF0 = 0;
      qword_1ED66DAF8 = &ggl::circleShaderShaderSamplers(void)::ref;
      unk_1ED66DB00 = 0;
    }
  }
}

void ggl::DiffuseBuildingShader::typedReflection(ggl::DiffuseBuildingShader *this)
{
  {
    if (v1)
    {
      ggl::DiffuseBuildingShader::typedReflection(void)::ref = "DiffuseBuildingShader";
      ggl::diffuseBuildingShaderVertexFunctionDescriptor(v1);
      qword_1ED66C440 = &ggl::diffuseBuildingShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C448 = 116142625;
      ggl::diffuseBuildingShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C450 = &ggl::diffuseBuildingShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C458 = 68007356;
      qword_1ED66C460 = ggl::diffuseBuildingShaderShaderConstants(void)::ref;
      unk_1ED66C468 = 7;
      qword_1ED66C470 = ggl::diffuseBuildingShaderShaderTextures(void)::ref;
      unk_1ED66C478 = 1;
      qword_1ED66C480 = &ggl::diffuseBuildingShaderShaderSamplers(void)::ref;
      unk_1ED66C488 = 1;
    }
  }
}

void ggl::DiffuseBuildingTopShader::typedReflection(ggl::DiffuseBuildingTopShader *this)
{
  {
    if (v1)
    {
      ggl::DiffuseBuildingTopShader::typedReflection(void)::ref = "DiffuseBuildingTopShader";
      ggl::diffuseBuildingTopShaderVertexFunctionDescriptor(v1);
      qword_1ED66B9F8 = &ggl::diffuseBuildingTopShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66BA00 = 1112635246;
      ggl::diffuseBuildingTopShaderFragmentFunctionDescriptor(v2);
      qword_1ED66BA08 = &ggl::diffuseBuildingTopShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66BA10 = 1968838612;
      qword_1ED66BA18 = ggl::diffuseBuildingTopShaderShaderConstants(void)::ref;
      unk_1ED66BA20 = 7;
      qword_1ED66BA28 = &ggl::diffuseBuildingTopShaderShaderTextures(void)::ref;
      unk_1ED66BA30 = 0;
      qword_1ED66BA38 = &ggl::diffuseBuildingTopShaderShaderSamplers(void)::ref;
      unk_1ED66BA40 = 0;
    }
  }
}

void ggl::DiffuseLandmarkShader::typedReflection(ggl::DiffuseLandmarkShader *this)
{
  {
    if (v1)
    {
      ggl::DiffuseLandmarkShader::typedReflection(void)::ref = "DiffuseLandmarkShader";
      ggl::diffuseLandmarkShaderVertexFunctionDescriptor(v1);
      qword_1ED66C3E8 = &ggl::diffuseLandmarkShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C3F0 = 638573751;
      ggl::diffuseLandmarkShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C3F8 = &ggl::diffuseLandmarkShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C400 = 1688500156;
      qword_1ED66C408 = ggl::diffuseLandmarkShaderShaderConstants(void)::ref;
      unk_1ED66C410 = 7;
      qword_1ED66C418 = ggl::diffuseLandmarkShaderShaderTextures(void)::ref;
      unk_1ED66C420 = 1;
      qword_1ED66C428 = &ggl::diffuseLandmarkShaderShaderSamplers(void)::ref;
      unk_1ED66C430 = 1;
    }
  }
}

void ggl::FogShader::typedReflection(ggl::FogShader *this)
{
  {
    if (v1)
    {
      ggl::FogShader::typedReflection(void)::ref = "FogShader";
      ggl::fogShaderVertexFunctionDescriptor(v1);
      qword_1ED66A6C8 = &ggl::fogShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66A6D0 = -1272923733;
      ggl::fogShaderFragmentFunctionDescriptor(v2);
      qword_1ED66A6D8 = &ggl::fogShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66A6E0 = -1089786599;
      qword_1ED66A6E8 = ggl::fogShaderShaderConstants(void)::ref;
      unk_1ED66A6F0 = 2;
      qword_1ED66A6F8 = &ggl::fogShaderShaderTextures(void)::ref;
      unk_1ED66A700 = 0;
      qword_1ED66A708 = &ggl::fogShaderShaderSamplers(void)::ref;
      unk_1ED66A710 = 0;
    }
  }
}

void ggl::FoggedDiffuseLandmarkShader::typedReflection(ggl::FoggedDiffuseLandmarkShader *this)
{
  {
    if (v1)
    {
      ggl::FoggedDiffuseLandmarkShader::typedReflection(void)::ref = "FoggedDiffuseLandmarkShader";
      ggl::foggedDiffuseLandmarkShaderVertexFunctionDescriptor(v1);
      qword_1ED66B2D0 = &ggl::foggedDiffuseLandmarkShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B2D8 = -1870035902;
      ggl::foggedDiffuseLandmarkShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B2E0 = &ggl::foggedDiffuseLandmarkShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B2E8 = 1759448324;
      qword_1ED66B2F0 = ggl::foggedDiffuseLandmarkShaderShaderConstants(void)::ref;
      unk_1ED66B2F8 = 7;
      qword_1ED66B300 = ggl::foggedDiffuseLandmarkShaderShaderTextures(void)::ref;
      unk_1ED66B308 = 1;
      qword_1ED66B310 = &ggl::foggedDiffuseLandmarkShaderShaderSamplers(void)::ref;
      unk_1ED66B318 = 1;
    }
  }
}

void ggl::GlowAlphaShader::typedReflection(ggl::GlowAlphaShader *this)
{
  {
    if (v1)
    {
      ggl::GlowAlphaShader::typedReflection(void)::ref = "GlowAlphaShader";
      ggl::glowAlphaShaderVertexFunctionDescriptor(v1);
      qword_1ED66D6B0 = &ggl::glowAlphaShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D6B8 = 744496000;
      ggl::glowAlphaShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D6C0 = &ggl::glowAlphaShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D6C8 = -240940300;
      qword_1ED66D6D0 = ggl::glowAlphaShaderShaderConstants(void)::ref;
      unk_1ED66D6D8 = 3;
      qword_1ED66D6E0 = &ggl::glowAlphaShaderShaderTextures(void)::ref;
      unk_1ED66D6E8 = 0;
      qword_1ED66D6F0 = &ggl::glowAlphaShaderShaderSamplers(void)::ref;
      unk_1ED66D6F8 = 0;
    }
  }
}

void ggl::Glyph3dShader::typedReflection(ggl::Glyph3dShader *this)
{
  {
    if (v1)
    {
      ggl::Glyph3dShader::typedReflection(void)::ref = "Glyph3dShader";
      ggl::glyph3dShaderVertexFunctionDescriptor(v1);
      qword_1ED66D880 = &ggl::glyph3dShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D888 = 1243171896;
      ggl::glyph3dShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D890 = &ggl::glyph3dShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D898 = 682626154;
      qword_1ED66D8A0 = ggl::glyph3dShaderShaderConstants(void)::ref;
      unk_1ED66D8A8 = 6;
      qword_1ED66D8B0 = ggl::glyph3dShaderShaderTextures(void)::ref;
      unk_1ED66D8B8 = 3;
      qword_1ED66D8C0 = ggl::glyph3dShaderShaderSamplers(void)::ref;
      unk_1ED66D8C8 = 3;
    }
  }
}

void ggl::Glyph3dLowPrecisionHaloShader::typedReflection(ggl::Glyph3dLowPrecisionHaloShader *this)
{
  {
    if (v1)
    {
      ggl::Glyph3dLowPrecisionHaloShader::typedReflection(void)::ref = "Glyph3dLowPrecisionHaloShader";
      ggl::glyph3dLowPrecisionHaloShaderVertexFunctionDescriptor(v1);
      qword_1ED66AF50 = &ggl::glyph3dLowPrecisionHaloShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66AF58 = 1680360905;
      ggl::glyph3dLowPrecisionHaloShaderFragmentFunctionDescriptor(v2);
      qword_1ED66AF60 = &ggl::glyph3dLowPrecisionHaloShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66AF68 = 1556826627;
      qword_1ED66AF70 = ggl::glyph3dLowPrecisionHaloShaderShaderConstants(void)::ref;
      unk_1ED66AF78 = 6;
      qword_1ED66AF80 = ggl::glyph3dLowPrecisionHaloShaderShaderTextures(void)::ref;
      unk_1ED66AF88 = 3;
      qword_1ED66AF90 = ggl::glyph3dLowPrecisionHaloShaderShaderSamplers(void)::ref;
      unk_1ED66AF98 = 3;
    }
  }
}

void ggl::Glyph3dRaymarchShader::typedReflection(ggl::Glyph3dRaymarchShader *this)
{
  {
    if (v1)
    {
      ggl::Glyph3dRaymarchShader::typedReflection(void)::ref = "Glyph3dRaymarchShader";
      ggl::glyph3dRaymarchShaderVertexFunctionDescriptor(v1);
      qword_1ED66C270 = &ggl::glyph3dRaymarchShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C278 = 20393884;
      ggl::glyph3dRaymarchShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C280 = &ggl::glyph3dRaymarchShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C288 = 912264779;
      qword_1ED66C290 = ggl::glyph3dRaymarchShaderShaderConstants(void)::ref;
      unk_1ED66C298 = 6;
      qword_1ED66C2A0 = ggl::glyph3dRaymarchShaderShaderTextures(void)::ref;
      unk_1ED66C2A8 = 3;
      qword_1ED66C2B0 = ggl::glyph3dRaymarchShaderShaderSamplers(void)::ref;
      unk_1ED66C2B8 = 3;
    }
  }
}

void ggl::GlyphWithNormalHaloShader::typedReflection(ggl::GlyphWithNormalHaloShader *this)
{
  {
    if (v1)
    {
      ggl::GlyphWithNormalHaloShader::typedReflection(void)::ref = "GlyphWithNormalHaloShader";
      ggl::glyphWithNormalHaloShaderVertexFunctionDescriptor(v1);
      qword_1ED66B6B0 = &ggl::glyphWithNormalHaloShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B6B8 = 1716606755;
      ggl::glyphWithNormalHaloShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B6C0 = &ggl::glyphWithNormalHaloShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B6C8 = 199434836;
      qword_1ED66B6D0 = ggl::glyphWithNormalHaloShaderShaderConstants(void)::ref;
      unk_1ED66B6D8 = 4;
      qword_1ED66B6E0 = ggl::glyphWithNormalHaloShaderShaderTextures(void)::ref;
      unk_1ED66B6E8 = 2;
      qword_1ED66B6F0 = ggl::glyphWithNormalHaloShaderShaderSamplers(void)::ref;
      unk_1ED66B6F8 = 2;
    }
  }
}

void ggl::GradientPolylineOverlayFillShader::typedReflection(ggl::GradientPolylineOverlayFillShader *this)
{
  {
    if (v1)
    {
      ggl::GradientPolylineOverlayFillShader::typedReflection(void)::ref = "GradientPolylineOverlayFillShader";
      ggl::gradientPolylineOverlayFillShaderVertexFunctionDescriptor(v1);
      qword_1ED66A9A8 = &ggl::gradientPolylineOverlayFillShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66A9B0 = 878884475;
      ggl::gradientPolylineOverlayFillShaderFragmentFunctionDescriptor(v2);
      qword_1ED66A9B8 = &ggl::gradientPolylineOverlayFillShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66A9C0 = -1366526507;
      qword_1ED66A9C8 = ggl::gradientPolylineOverlayFillShaderShaderConstants(void)::ref;
      unk_1ED66A9D0 = 4;
      qword_1ED66A9D8 = ggl::gradientPolylineOverlayFillShaderShaderTextures(void)::ref;
      unk_1ED66A9E0 = 1;
      qword_1ED66A9E8 = ggl::gradientPolylineOverlayFillShaderShaderSamplers(void)::ref;
      unk_1ED66A9F0 = 1;
    }
  }
}

void ggl::WaypointShader::typedReflection(ggl::WaypointShader *this)
{
  {
    if (v1)
    {
      ggl::WaypointShader::typedReflection(void)::ref = "WaypointShader";
      ggl::waypointShaderVertexFunctionDescriptor(v1);
      qword_1ED65EE60 = &ggl::waypointShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65EE68 = 1321854991;
      ggl::waypointShaderFragmentFunctionDescriptor(v2);
      qword_1ED65EE70 = &ggl::waypointShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65EE78 = 1762447231;
      qword_1ED65EE80 = ggl::waypointShaderShaderConstants(void)::ref;
      unk_1ED65EE88 = 5;
      qword_1ED65EE90 = ggl::waypointShaderShaderTextures(void)::ref;
      unk_1ED65EE98 = 2;
      qword_1ED65EEA0 = ggl::waypointShaderShaderSamplers(void)::ref;
      unk_1ED65EEA8 = 2;
    }
  }
}

void ggl::LandmarkDepthShader::typedReflection(ggl::LandmarkDepthShader *this)
{
  {
    if (v1)
    {
      ggl::LandmarkDepthShader::typedReflection(void)::ref = "LandmarkDepthShader";
      ggl::landmarkDepthShaderVertexFunctionDescriptor(v1);
      qword_1ED66CA48 = &ggl::landmarkDepthShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66CA50 = 1369970059;
      ggl::landmarkDepthShaderFragmentFunctionDescriptor(v2);
      qword_1ED66CA58 = &ggl::landmarkDepthShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66CA60 = -168885264;
      qword_1ED66CA68 = ggl::landmarkDepthShaderShaderConstants(void)::ref;
      unk_1ED66CA70 = 2;
      qword_1ED66CA78 = &ggl::landmarkDepthShaderShaderTextures(void)::ref;
      unk_1ED66CA80 = 0;
      qword_1ED66CA88 = &ggl::landmarkDepthShaderShaderSamplers(void)::ref;
      unk_1ED66CA90 = 0;
    }
  }
}

void ggl::LandmarkFlatShader::typedReflection(ggl::LandmarkFlatShader *this)
{
  {
    if (v1)
    {
      ggl::LandmarkFlatShader::typedReflection(void)::ref = "LandmarkFlatShader";
      ggl::landmarkFlatShaderVertexFunctionDescriptor(v1);
      qword_1ED66CE38 = &ggl::landmarkFlatShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66CE40 = 1183933787;
      ggl::landmarkFlatShaderFragmentFunctionDescriptor(v2);
      qword_1ED66CE48 = &ggl::landmarkFlatShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66CE50 = 617783530;
      qword_1ED66CE58 = ggl::landmarkFlatShaderShaderConstants(void)::ref;
      unk_1ED66CE60 = 4;
      qword_1ED66CE68 = ggl::landmarkFlatShaderShaderTextures(void)::ref;
      unk_1ED66CE70 = 1;
      qword_1ED66CE78 = &ggl::landmarkFlatShaderShaderSamplers(void)::ref;
      unk_1ED66CE80 = 1;
    }
  }
}

void ggl::OcclusionLineShader::typedReflection(ggl::OcclusionLineShader *this)
{
  {
    if (v1)
    {
      ggl::OcclusionLineShader::typedReflection(void)::ref = "OcclusionLineShader";
      ggl::occlusionLineShaderVertexFunctionDescriptor(v1);
      qword_1ED66C998 = &ggl::occlusionLineShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C9A0 = 2128242188;
      ggl::occlusionLineShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C9A8 = &ggl::occlusionLineShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C9B0 = 1210122888;
      qword_1ED66C9B8 = ggl::occlusionLineShaderShaderConstants(void)::ref;
      unk_1ED66C9C0 = 1;
      qword_1ED66C9C8 = &ggl::occlusionLineShaderShaderTextures(void)::ref;
      unk_1ED66C9D0 = 0;
      qword_1ED66C9D8 = &ggl::occlusionLineShaderShaderSamplers(void)::ref;
      unk_1ED66C9E0 = 0;
    }
  }
}

void ggl::OuterShadowRibbonShader::typedReflection(ggl::OuterShadowRibbonShader *this)
{
  {
    if (v1)
    {
      ggl::OuterShadowRibbonShader::typedReflection(void)::ref = "OuterShadowRibbonShader";
      ggl::outerShadowRibbonShaderVertexFunctionDescriptor(v1);
      qword_1ED66BC08 = &ggl::outerShadowRibbonShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66BC10 = -1698448519;
      ggl::outerShadowRibbonShaderFragmentFunctionDescriptor(v2);
      qword_1ED66BC18 = &ggl::outerShadowRibbonShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66BC20 = -502545077;
      qword_1ED66BC28 = ggl::outerShadowRibbonShaderShaderConstants(void)::ref;
      unk_1ED66BC30 = 3;
      qword_1ED66BC38 = ggl::outerShadowRibbonShaderShaderTextures(void)::ref;
      unk_1ED66BC40 = 1;
      qword_1ED66BC48 = &ggl::outerShadowRibbonShaderShaderSamplers(void)::ref;
      unk_1ED66BC50 = 1;
    }
  }
}

void ggl::MaskingOverlayFillShader::typedReflection(ggl::MaskingOverlayFillShader *this)
{
  {
    if (v1)
    {
      ggl::MaskingOverlayFillShader::typedReflection(void)::ref = "MaskingOverlayFillShader";
      ggl::maskingOverlayFillShaderVertexFunctionDescriptor(v1);
      qword_1ED65E6D8 = &ggl::maskingOverlayFillShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E6E0 = -2116194799;
      ggl::maskingOverlayFillShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E6E8 = &ggl::maskingOverlayFillShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E6F0 = -1181345375;
      qword_1ED65E6F8 = ggl::maskingOverlayFillShaderShaderConstants(void)::ref;
      unk_1ED65E700 = 3;
      qword_1ED65E708 = ggl::maskingOverlayFillShaderShaderTextures(void)::ref;
      unk_1ED65E710 = 1;
      qword_1ED65E718 = ggl::maskingOverlayFillShaderShaderSamplers(void)::ref;
      unk_1ED65E720 = 1;
    }
  }
}

void ggl::MaskingOverlayMaskingShader::typedReflection(ggl::MaskingOverlayMaskingShader *this)
{
  {
    if (v1)
    {
      ggl::MaskingOverlayMaskingShader::typedReflection(void)::ref = "MaskingOverlayMaskingShader";
      ggl::maskingOverlayMaskingShaderVertexFunctionDescriptor(v1);
      qword_1ED65E4F8 = &ggl::maskingOverlayMaskingShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E500 = -726370865;
      ggl::maskingOverlayMaskingShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E508 = &ggl::maskingOverlayMaskingShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E510 = 742944181;
      qword_1ED65E518 = ggl::maskingOverlayMaskingShaderShaderConstants(void)::ref;
      unk_1ED65E520 = 3;
      qword_1ED65E528 = &ggl::maskingOverlayMaskingShaderShaderTextures(void)::ref;
      unk_1ED65E530 = 0;
      qword_1ED65E538 = &ggl::maskingOverlayMaskingShaderShaderSamplers(void)::ref;
      unk_1ED65E540 = 0;
    }
  }
}

void ggl::PatternedRibbonShader::typedReflection(ggl::PatternedRibbonShader *this)
{
  {
    if (v1)
    {
      ggl::PatternedRibbonShader::typedReflection(void)::ref = "PatternedRibbonShader";
      ggl::patternedRibbonShaderVertexFunctionDescriptor(v1);
      qword_1ED66C210 = &ggl::patternedRibbonShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C218 = -1742989807;
      ggl::patternedRibbonShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C220 = &ggl::patternedRibbonShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C228 = -414647954;
      qword_1ED66C230 = ggl::patternedRibbonShaderShaderConstants(void)::ref;
      unk_1ED66C238 = 4;
      qword_1ED66C240 = ggl::patternedRibbonShaderShaderTextures(void)::ref;
      unk_1ED66C248 = 1;
      qword_1ED66C250 = ggl::patternedRibbonShaderShaderSamplers(void)::ref;
      unk_1ED66C258 = 1;
    }
  }
}

void ggl::WriteStencilPatternedRibbonShader::typedReflection(ggl::WriteStencilPatternedRibbonShader *this)
{
  {
    if (v1)
    {
      ggl::WriteStencilPatternedRibbonShader::typedReflection(void)::ref = "WriteStencilPatternedRibbonShader";
      ggl::writeStencilPatternedRibbonShaderVertexFunctionDescriptor(v1);
      qword_1ED66A8F0 = &ggl::writeStencilPatternedRibbonShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66A8F8 = -1000496059;
      ggl::writeStencilPatternedRibbonShaderFragmentFunctionDescriptor(v2);
      qword_1ED66A900 = &ggl::writeStencilPatternedRibbonShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66A908 = 485552095;
      qword_1ED66A910 = ggl::writeStencilPatternedRibbonShaderShaderConstants(void)::ref;
      unk_1ED66A918 = 3;
      qword_1ED66A920 = &ggl::writeStencilPatternedRibbonShaderShaderTextures(void)::ref;
      unk_1ED66A928 = 0;
      qword_1ED66A930 = &ggl::writeStencilPatternedRibbonShaderShaderSamplers(void)::ref;
      unk_1ED66A938 = 0;
    }
  }
}

void ggl::PolygonAnimatableFillShader::typedReflection(ggl::PolygonAnimatableFillShader *this)
{
  {
    if (v1)
    {
      ggl::PolygonAnimatableFillShader::typedReflection(void)::ref = "PolygonAnimatableFillShader";
      ggl::polygonAnimatableFillShaderVertexFunctionDescriptor(v1);
      qword_1ED66B278 = &ggl::polygonAnimatableFillShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B280 = -1465825119;
      ggl::polygonAnimatableFillShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B288 = &ggl::polygonAnimatableFillShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B290 = -1889657960;
      qword_1ED66B298 = ggl::polygonAnimatableFillShaderShaderConstants(void)::ref;
      unk_1ED66B2A0 = 4;
      qword_1ED66B2A8 = ggl::polygonAnimatableFillShaderShaderTextures(void)::ref;
      unk_1ED66B2B0 = 2;
      qword_1ED66B2B8 = ggl::polygonAnimatableFillShaderShaderSamplers(void)::ref;
      unk_1ED66B2C0 = 2;
    }
  }
}

void ggl::PolygonFillShader::typedReflection(ggl::PolygonFillShader *this)
{
  {
    if (v1)
    {
      ggl::PolygonFillShader::typedReflection(void)::ref = "PolygonFillShader";
      ggl::polygonFillShaderVertexFunctionDescriptor(v1);
      qword_1ED66D1D8 = &ggl::polygonFillShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D1E0 = -802074198;
      ggl::polygonFillShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D1E8 = &ggl::polygonFillShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D1F0 = 146870787;
      qword_1ED66D1F8 = ggl::polygonFillShaderShaderConstants(void)::ref;
      unk_1ED66D200 = 3;
      qword_1ED66D208 = ggl::polygonFillShaderShaderTextures(void)::ref;
      unk_1ED66D210 = 1;
      qword_1ED66D218 = &ggl::polygonFillShaderShaderSamplers(void)::ref;
      unk_1ED66D220 = 1;
    }
  }
}

void ggl::PolygonSolidFillS2Shader::typedReflection(ggl::PolygonSolidFillS2Shader *this)
{
  {
    if (v1)
    {
      ggl::PolygonSolidFillS2Shader::typedReflection(void)::ref = "PolygonSolidFillS2Shader";
      ggl::polygonSolidFillS2ShaderVertexFunctionDescriptor(v1);
      qword_1ED65E678 = &ggl::polygonSolidFillS2ShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E680 = 619842591;
      ggl::polygonSolidFillS2ShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E688 = &ggl::polygonSolidFillS2ShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E690 = -2069261964;
      qword_1ED65E698 = ggl::polygonSolidFillS2ShaderShaderConstants(void)::ref;
      unk_1ED65E6A0 = 3;
      qword_1ED65E6A8 = &ggl::polygonSolidFillS2ShaderShaderTextures(void)::ref;
      unk_1ED65E6B0 = 0;
      qword_1ED65E6B8 = &ggl::polygonSolidFillS2ShaderShaderSamplers(void)::ref;
      unk_1ED65E6C0 = 0;
    }
  }
}

void ggl::PolygonStrokeShader::typedReflection(ggl::PolygonStrokeShader *this)
{
  {
    if (v1)
    {
      ggl::PolygonStrokeShader::typedReflection(void)::ref = "PolygonStrokeShader";
      ggl::polygonStrokeShaderVertexFunctionDescriptor(v1);
      qword_1ED66C8E0 = &ggl::polygonStrokeShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C8E8 = 11482704;
      ggl::polygonStrokeShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C8F0 = &ggl::polygonStrokeShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C8F8 = 893665105;
      qword_1ED66C900 = ggl::polygonStrokeShaderShaderConstants(void)::ref;
      unk_1ED66C908 = 3;
      qword_1ED66C910 = ggl::polygonStrokeShaderShaderTextures(void)::ref;
      unk_1ED66C918 = 2;
      qword_1ED66C920 = ggl::polygonStrokeShaderShaderSamplers(void)::ref;
      unk_1ED66C928 = 2;
    }
  }
}

void ggl::HillshadeFillMaskShader::typedReflection(ggl::HillshadeFillMaskShader *this)
{
  {
    if (v1)
    {
      ggl::HillshadeFillMaskShader::typedReflection(void)::ref = "HillshadeFillMaskShader";
      ggl::hillshadeFillMaskShaderVertexFunctionDescriptor(v1);
      qword_1EB841438 = &ggl::hillshadeFillMaskShaderVertexFunctionDescriptor(void)::ref;
      dword_1EB841440 = -1792724435;
      ggl::hillshadeFillMaskShaderFragmentFunctionDescriptor(v2);
      qword_1EB841448 = &ggl::hillshadeFillMaskShaderFragmentFunctionDescriptor(void)::ref;
      dword_1EB841450 = -1464309383;
      qword_1EB841458 = ggl::hillshadeFillMaskShaderShaderConstants(void)::ref;
      unk_1EB841460 = 3;
      qword_1EB841468 = &ggl::hillshadeFillMaskShaderShaderTextures(void)::ref;
      unk_1EB841470 = 0;
      qword_1EB841478 = &ggl::hillshadeFillMaskShaderShaderSamplers(void)::ref;
      unk_1EB841480 = 0;
    }
  }
}

void ggl::PolylineOverlayFillShader::typedReflection(ggl::PolylineOverlayFillShader *this)
{
  {
    if (v1)
    {
      ggl::PolylineOverlayFillShader::typedReflection(void)::ref = "PolylineOverlayFillShader";
      ggl::polylineOverlayFillShaderVertexFunctionDescriptor(v1);
      qword_1ED66B650 = &ggl::polylineOverlayFillShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B658 = 254808542;
      ggl::polylineOverlayFillShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B660 = &ggl::polylineOverlayFillShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B668 = 894316640;
      qword_1ED66B670 = ggl::polylineOverlayFillShaderShaderConstants(void)::ref;
      unk_1ED66B678 = 3;
      qword_1ED66B680 = ggl::polylineOverlayFillShaderShaderTextures(void)::ref;
      unk_1ED66B688 = 1;
      qword_1ED66B690 = ggl::polylineOverlayFillShaderShaderSamplers(void)::ref;
      unk_1ED66B698 = 1;
    }
  }
}

void ggl::PolylineOverlayAlphaShader::typedReflection(ggl::PolylineOverlayAlphaShader *this)
{
  {
    if (v1)
    {
      ggl::PolylineOverlayAlphaShader::typedReflection(void)::ref = "PolylineOverlayAlphaShader";
      ggl::polylineOverlayAlphaShaderVertexFunctionDescriptor(v1);
      qword_1ED66B3E0 = &ggl::polylineOverlayAlphaShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B3E8 = -41415701;
      ggl::polylineOverlayAlphaShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B3F0 = &ggl::polylineOverlayAlphaShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B3F8 = 1780349204;
      qword_1ED66B400 = ggl::polylineOverlayAlphaShaderShaderConstants(void)::ref;
      unk_1ED66B408 = 3;
      qword_1ED66B410 = ggl::polylineOverlayAlphaShaderShaderTextures(void)::ref;
      unk_1ED66B418 = 1;
      qword_1ED66B420 = ggl::polylineOverlayAlphaShaderShaderSamplers(void)::ref;
      unk_1ED66B428 = 1;
    }
  }
}

void ggl::PolylineOverlayAlphaFillShader::typedReflection(ggl::PolylineOverlayAlphaFillShader *this)
{
  {
    if (v1)
    {
      ggl::PolylineOverlayAlphaFillShader::typedReflection(void)::ref = "PolylineOverlayAlphaFillShader";
      ggl::polylineOverlayAlphaFillShaderVertexFunctionDescriptor(v1);
      qword_1ED66ACD0 = &ggl::polylineOverlayAlphaFillShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66ACD8 = 636917398;
      ggl::polylineOverlayAlphaFillShaderFragmentFunctionDescriptor(v2);
      qword_1ED66ACE0 = &ggl::polylineOverlayAlphaFillShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66ACE8 = 2117257512;
      qword_1ED66ACF0 = ggl::polylineOverlayAlphaFillShaderShaderConstants(void)::ref;
      unk_1ED66ACF8 = 3;
      qword_1ED66AD00 = ggl::polylineOverlayAlphaFillShaderShaderTextures(void)::ref;
      unk_1ED66AD08 = 1;
      qword_1ED66AD10 = &ggl::polylineOverlayAlphaFillShaderShaderSamplers(void)::ref;
      unk_1ED66AD18 = 1;
    }
  }
}

void ggl::PrefilteredLineShader::typedReflection(ggl::PrefilteredLineShader *this)
{
  {
    if (v1)
    {
      ggl::PrefilteredLineShader::typedReflection(void)::ref = "PrefilteredLineShader";
      ggl::prefilteredLineShaderVertexFunctionDescriptor(v1);
      qword_1ED66C1B0 = &ggl::prefilteredLineShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C1B8 = -289185046;
      ggl::prefilteredLineShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C1C0 = &ggl::prefilteredLineShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C1C8 = 1197998818;
      qword_1ED66C1D0 = ggl::prefilteredLineShaderShaderConstants(void)::ref;
      unk_1ED66C1D8 = 3;
      qword_1ED66C1E0 = ggl::prefilteredLineShaderShaderTextures(void)::ref;
      unk_1ED66C1E8 = 1;
      qword_1ED66C1F0 = &ggl::prefilteredLineShaderShaderSamplers(void)::ref;
      unk_1ED66C1F8 = 1;
    }
  }
}

void ggl::RouteLineAlphaResetShader::typedReflection(ggl::RouteLineAlphaResetShader *this)
{
  {
    if (v1)
    {
      ggl::RouteLineAlphaResetShader::typedReflection(void)::ref = "RouteLineAlphaResetShader";
      ggl::routeLineAlphaResetShaderVertexFunctionDescriptor(v1);
      qword_1ED66B5F8 = &ggl::routeLineAlphaResetShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B600 = 220503713;
      ggl::routeLineAlphaResetShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B608 = &ggl::routeLineAlphaResetShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B610 = -521221636;
      qword_1ED66B618 = ggl::routeLineAlphaResetShaderShaderConstants(void)::ref;
      unk_1ED66B620 = 4;
      qword_1ED66B628 = &ggl::routeLineAlphaResetShaderShaderTextures(void)::ref;
      unk_1ED66B630 = 0;
      qword_1ED66B638 = &ggl::routeLineAlphaResetShaderShaderSamplers(void)::ref;
      unk_1ED66B640 = 0;
    }
  }
}

void ggl::DottedRouteLineShader::typedReflection(ggl::DottedRouteLineShader *this)
{
  {
    if (v1)
    {
      ggl::DottedRouteLineShader::typedReflection(void)::ref = "DottedRouteLineShader";
      ggl::dottedRouteLineShaderVertexFunctionDescriptor(v1);
      qword_1ED65EA40 = &ggl::dottedRouteLineShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65EA48 = 1004998209;
      ggl::dottedRouteLineShaderFragmentFunctionDescriptor(v2);
      qword_1ED65EA50 = &ggl::dottedRouteLineShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65EA58 = 1319083927;
      qword_1ED65EA60 = ggl::dottedRouteLineShaderShaderConstants(void)::ref;
      unk_1ED65EA68 = 3;
      qword_1ED65EA70 = &ggl::dottedRouteLineShaderShaderTextures(void)::ref;
      unk_1ED65EA78 = 0;
      qword_1ED65EA80 = &ggl::dottedRouteLineShaderShaderSamplers(void)::ref;
      unk_1ED65EA88 = 0;
    }
  }
}

void ggl::SolidRibbonShader::typedReflection(ggl::SolidRibbonShader *this)
{
  {
    if (v1)
    {
      ggl::SolidRibbonShader::typedReflection(void)::ref = "SolidRibbonShader";
      ggl::solidRibbonShaderVertexFunctionDescriptor(v1);
      qword_1ED66D128 = &ggl::solidRibbonShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D130 = 1147081479;
      ggl::solidRibbonShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D138 = &ggl::solidRibbonShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D140 = -1950718859;
      qword_1ED66D148 = ggl::solidRibbonShaderShaderConstants(void)::ref;
      unk_1ED66D150 = 4;
      qword_1ED66D158 = ggl::solidRibbonShaderShaderTextures(void)::ref;
      unk_1ED66D160 = 2;
      qword_1ED66D168 = ggl::solidRibbonShaderShaderSamplers(void)::ref;
      unk_1ED66D170 = 2;
    }
  }
}

void ggl::SolidTrafficShader::typedReflection(ggl::SolidTrafficShader *this)
{
  {
    if (v1)
    {
      ggl::SolidTrafficShader::typedReflection(void)::ref = "SolidTrafficShader";
      ggl::solidTrafficShaderVertexFunctionDescriptor(v1);
      qword_1ED66CD28 = &ggl::solidTrafficShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66CD30 = -86233610;
      ggl::solidTrafficShaderFragmentFunctionDescriptor(v2);
      qword_1ED66CD38 = &ggl::solidTrafficShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66CD40 = 1199314849;
      qword_1ED66CD48 = ggl::solidTrafficShaderShaderConstants(void)::ref;
      unk_1ED66CD50 = 3;
      qword_1ED66CD58 = ggl::solidTrafficShaderShaderTextures(void)::ref;
      unk_1ED66CD60 = 1;
      qword_1ED66CD68 = ggl::solidTrafficShaderShaderSamplers(void)::ref;
      unk_1ED66CD70 = 1;
    }
  }
}

void ggl::SpecularBuildingShader::typedReflection(ggl::SpecularBuildingShader *this)
{
  {
    if (v1)
    {
      ggl::SpecularBuildingShader::typedReflection(void)::ref = "SpecularBuildingShader";
      ggl::specularBuildingShaderVertexFunctionDescriptor(v1);
      qword_1ED66BEE0 = &ggl::specularBuildingShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66BEE8 = 1378262847;
      ggl::specularBuildingShaderFragmentFunctionDescriptor(v2);
      qword_1ED66BEF0 = &ggl::specularBuildingShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66BEF8 = 2016084476;
      qword_1ED66BF00 = ggl::specularBuildingShaderShaderConstants(void)::ref;
      unk_1ED66BF08 = 7;
      qword_1ED66BF10 = ggl::specularBuildingShaderShaderTextures(void)::ref;
      unk_1ED66BF18 = 1;
      qword_1ED66BF20 = &ggl::specularBuildingShaderShaderSamplers(void)::ref;
      unk_1ED66BF28 = 1;
    }
  }
}

void ggl::SpecularBuildingPointyRoofShader::typedReflection(ggl::SpecularBuildingPointyRoofShader *this)
{
  {
    if (v1)
    {
      ggl::SpecularBuildingPointyRoofShader::typedReflection(void)::ref = "SpecularBuildingPointyRoofShader";
      ggl::specularBuildingPointyRoofShaderVertexFunctionDescriptor(v1);
      qword_1ED66AA60 = &ggl::specularBuildingPointyRoofShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66AA68 = 1075938269;
      ggl::specularBuildingPointyRoofShaderFragmentFunctionDescriptor(v2);
      qword_1ED66AA70 = &ggl::specularBuildingPointyRoofShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66AA78 = 6479578;
      qword_1ED66AA80 = ggl::specularBuildingPointyRoofShaderShaderConstants(void)::ref;
      unk_1ED66AA88 = 7;
      qword_1ED66AA90 = &ggl::specularBuildingPointyRoofShaderShaderTextures(void)::ref;
      unk_1ED66AA98 = 0;
      qword_1ED66AAA0 = &ggl::specularBuildingPointyRoofShaderShaderSamplers(void)::ref;
      unk_1ED66AAA8 = 0;
    }
  }
}

void ggl::StandardPostchainCompositeShader::typedReflection(ggl::StandardPostchainCompositeShader *this)
{
  {
    if (v1)
    {
      ggl::StandardPostchainCompositeShader::typedReflection(void)::ref = "StandardPostchainCompositeShader";
      ggl::standardPostchainCompositeShaderVertexFunctionDescriptor(v1);
      qword_1ED65E030 = &ggl::standardPostchainCompositeShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E038 = -1025785955;
      ggl::standardPostchainCompositeShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E040 = &ggl::standardPostchainCompositeShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E048 = -546017374;
      qword_1ED65E050 = ggl::standardPostchainCompositeShaderShaderConstants(void)::ref;
      unk_1ED65E058 = 1;
      qword_1ED65E060 = ggl::standardPostchainCompositeShaderShaderTextures(void)::ref;
      unk_1ED65E068 = 4;
      qword_1ED65E070 = ggl::standardPostchainCompositeShaderShaderSamplers(void)::ref;
      unk_1ED65E078 = 4;
    }
  }
}

void ggl::StandardPostchainFGBlurShader::typedReflection(ggl::StandardPostchainFGBlurShader *this)
{
  {
    if (v1)
    {
      ggl::StandardPostchainFGBlurShader::typedReflection(void)::ref = "StandardPostchainFGBlurShader";
      ggl::standardPostchainFGBlurShaderVertexFunctionDescriptor(v1);
      qword_1ED65E2C0 = &ggl::standardPostchainFGBlurShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E2C8 = 1606938238;
      ggl::standardPostchainFGBlurShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E2D0 = &ggl::standardPostchainFGBlurShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E2D8 = -1236585485;
      qword_1ED65E2E0 = ggl::standardPostchainFGBlurShaderShaderConstants(void)::ref;
      unk_1ED65E2E8 = 1;
      qword_1ED65E2F0 = ggl::standardPostchainFGBlurShaderShaderTextures(void)::ref;
      unk_1ED65E2F8 = 2;
      qword_1ED65E300 = ggl::standardPostchainFGBlurShaderShaderSamplers(void)::ref;
      unk_1ED65E308 = 2;
    }
  }
}

void ggl::TexturedSolidRibbonShader::typedReflection(ggl::TexturedSolidRibbonShader *this)
{
  {
    if (v1)
    {
      ggl::TexturedSolidRibbonShader::typedReflection(void)::ref = "TexturedSolidRibbonShader";
      ggl::texturedSolidRibbonShaderVertexFunctionDescriptor(v1);
      qword_1ED66B438 = &ggl::texturedSolidRibbonShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B440 = 539341652;
      ggl::texturedSolidRibbonShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B448 = &ggl::texturedSolidRibbonShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B450 = -855986832;
      qword_1ED66B458 = ggl::texturedSolidRibbonShaderShaderConstants(void)::ref;
      unk_1ED66B460 = 4;
      qword_1ED66B468 = ggl::texturedSolidRibbonShaderShaderTextures(void)::ref;
      unk_1ED66B470 = 2;
      qword_1ED66B478 = ggl::texturedSolidRibbonShaderShaderSamplers(void)::ref;
      unk_1ED66B480 = 2;
    }
  }
}

void ggl::TransitNodeRGBShader::typedReflection(ggl::TransitNodeRGBShader *this)
{
  {
    if (v1)
    {
      ggl::TransitNodeRGBShader::typedReflection(void)::ref = "TransitNodeRGBShader";
      ggl::transitNodeRGBShaderVertexFunctionDescriptor(v1);
      qword_1ED66C4A0 = &ggl::transitNodeRGBShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C4A8 = 1731520934;
      ggl::transitNodeRGBShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C4B0 = &ggl::transitNodeRGBShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C4B8 = 1640944052;
      qword_1ED66C4C0 = ggl::transitNodeRGBShaderShaderConstants(void)::ref;
      unk_1ED66C4C8 = 1;
      qword_1ED66C4D0 = ggl::transitNodeRGBShaderShaderTextures(void)::ref;
      unk_1ED66C4D8 = 1;
      qword_1ED66C4E0 = &ggl::transitNodeRGBShaderShaderSamplers(void)::ref;
      unk_1ED66C4E8 = 1;
    }
  }
}

void ggl::VenueWallShader::typedReflection(ggl::VenueWallShader *this)
{
  {
    if (v1)
    {
      ggl::VenueWallShader::typedReflection(void)::ref = "VenueWallShader";
      ggl::venueWallShaderVertexFunctionDescriptor(v1);
      qword_1ED66D530 = &ggl::venueWallShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D538 = -2019206028;
      ggl::venueWallShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D540 = &ggl::venueWallShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D548 = 1774965179;
      qword_1ED66D550 = ggl::venueWallShaderShaderConstants(void)::ref;
      unk_1ED66D558 = 4;
      qword_1ED66D560 = ggl::venueWallShaderShaderTextures(void)::ref;
      unk_1ED66D568 = 1;
      qword_1ED66D570 = ggl::venueWallShaderShaderSamplers(void)::ref;
      unk_1ED66D578 = 1;
    }
  }
}

void ggl::VenueWallShadowShader::typedReflection(ggl::VenueWallShadowShader *this)
{
  {
    if (v1)
    {
      ggl::VenueWallShadowShader::typedReflection(void)::ref = "VenueWallShadowShader";
      ggl::venueWallShadowShaderVertexFunctionDescriptor(v1);
      qword_1ED66C0A0 = &ggl::venueWallShadowShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C0A8 = 1170506087;
      ggl::venueWallShadowShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C0B0 = &ggl::venueWallShadowShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C0B8 = -263783391;
      qword_1ED66C0C0 = ggl::venueWallShadowShaderShaderConstants(void)::ref;
      unk_1ED66C0C8 = 2;
      qword_1ED66C0D0 = &ggl::venueWallShadowShaderShaderTextures(void)::ref;
      unk_1ED66C0D8 = 0;
      qword_1ED66C0E0 = &ggl::venueWallShadowShaderShaderSamplers(void)::ref;
      unk_1ED66C0E8 = 0;
    }
  }
}

void ggl::DaVinciTrafficShader::typedReflection(ggl::DaVinciTrafficShader *this)
{
  {
    if (v1)
    {
      ggl::DaVinciTrafficShader::typedReflection(void)::ref = "DaVinciTrafficShader";
      ggl::daVinciTrafficShaderVertexFunctionDescriptor(v1);
      qword_1ED65EA98 = &ggl::daVinciTrafficShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65EAA0 = -353787114;
      ggl::daVinciTrafficShaderFragmentFunctionDescriptor(v2);
      qword_1ED65EAA8 = &ggl::daVinciTrafficShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65EAB0 = 318921311;
      qword_1ED65EAB8 = ggl::daVinciTrafficShaderShaderConstants(void)::ref;
      unk_1ED65EAC0 = 4;
      qword_1ED65EAC8 = ggl::daVinciTrafficShaderShaderTextures(void)::ref;
      unk_1ED65EAD0 = 2;
      qword_1ED65EAD8 = ggl::daVinciTrafficShaderShaderSamplers(void)::ref;
      unk_1ED65EAE0 = 2;
    }
  }
}

void ggl::DaVinciGroundShader::typedReflection(ggl::DaVinciGroundShader *this)
{
  {
    if (v1)
    {
      ggl::DaVinciGroundShader::typedReflection(void)::ref = "DaVinciGroundShader";
      ggl::daVinciGroundShaderVertexFunctionDescriptor(v1);
      qword_1ED66CC18 = &ggl::daVinciGroundShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66CC20 = -1303360423;
      ggl::daVinciGroundShaderFragmentFunctionDescriptor(v2);
      qword_1ED66CC28 = &ggl::daVinciGroundShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66CC30 = 1414966981;
      qword_1ED66CC38 = ggl::daVinciGroundShaderShaderConstants(void)::ref;
      unk_1ED66CC40 = 31;
      qword_1ED66CC48 = ggl::daVinciGroundShaderShaderTextures(void)::ref;
      unk_1ED66CC50 = 13;
      qword_1ED66CC58 = ggl::daVinciGroundShaderShaderSamplers(void)::ref;
      unk_1ED66CC60 = 13;
    }
  }
}

void ggl::DaVinciGroundDepthShader::typedReflection(ggl::DaVinciGroundDepthShader *this)
{
  {
    if (v1)
    {
      ggl::DaVinciGroundDepthShader::typedReflection(void)::ref = "DaVinciGroundDepthShader";
      ggl::daVinciGroundDepthShaderVertexFunctionDescriptor(v1);
      qword_1ED65E730 = &ggl::daVinciGroundDepthShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E738 = -14856825;
      ggl::daVinciGroundDepthShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E740 = &ggl::daVinciGroundDepthShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E748 = 1021983631;
      qword_1ED65E750 = ggl::daVinciGroundDepthShaderShaderConstants(void)::ref;
      unk_1ED65E758 = 4;
      qword_1ED65E760 = &ggl::daVinciGroundDepthShaderShaderTextures(void)::ref;
      unk_1ED65E768 = 0;
      qword_1ED65E770 = &ggl::daVinciGroundDepthShaderShaderSamplers(void)::ref;
      unk_1ED65E778 = 0;
    }
  }
}

void ggl::LinearDepthShader::typedReflection(ggl::LinearDepthShader *this)
{
  {
    if (v1)
    {
      ggl::LinearDepthShader::typedReflection(void)::ref = "LinearDepthShader";
      ggl::linearDepthShaderVertexFunctionDescriptor(v1);
      qword_1ED65EBA8 = &ggl::linearDepthShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65EBB0 = -1316126144;
      ggl::linearDepthShaderFragmentFunctionDescriptor(v2);
      qword_1ED65EBB8 = &ggl::linearDepthShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65EBC0 = -1282741321;
      qword_1ED65EBC8 = ggl::linearDepthShaderShaderConstants(void)::ref;
      unk_1ED65EBD0 = 6;
      qword_1ED65EBD8 = &ggl::linearDepthShaderShaderTextures(void)::ref;
      unk_1ED65EBE0 = 0;
      qword_1ED65EBE8 = &ggl::linearDepthShaderShaderSamplers(void)::ref;
      unk_1ED65EBF0 = 0;
    }
  }
}

void ggl::FlyoverOverlayShader::typedReflection(ggl::FlyoverOverlayShader *this)
{
  {
    if (v1)
    {
      ggl::FlyoverOverlayShader::typedReflection(void)::ref = "FlyoverOverlayShader";
      ggl::flyoverOverlayShaderVertexFunctionDescriptor(v1);
      qword_1ED66C660 = &ggl::flyoverOverlayShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C668 = 1621622274;
      ggl::flyoverOverlayShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C670 = &ggl::flyoverOverlayShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C678 = 678832653;
      qword_1ED66C680 = ggl::flyoverOverlayShaderShaderConstants(void)::ref;
      unk_1ED66C688 = 5;
      qword_1ED66C690 = &ggl::flyoverOverlayShaderShaderTextures(void)::ref;
      unk_1ED66C698 = 1;
      qword_1ED66C6A0 = &ggl::flyoverOverlayShaderShaderSamplers(void)::ref;
      unk_1ED66C6A8 = 1;
    }
  }
}

void ggl::GlobeTexturedShader::typedReflection(ggl::GlobeTexturedShader *this)
{
  {
    if (v1)
    {
      ggl::GlobeTexturedShader::typedReflection(void)::ref = "GlobeTexturedShader";
      ggl::globeTexturedShaderVertexFunctionDescriptor(v1);
      qword_1EB83E1A0 = &ggl::globeTexturedShaderVertexFunctionDescriptor(void)::ref;
      dword_1EB83E1A8 = -458418968;
      ggl::globeTexturedShaderFragmentFunctionDescriptor(v2);
      qword_1EB83E1B0 = &ggl::globeTexturedShaderFragmentFunctionDescriptor(void)::ref;
      dword_1EB83E1B8 = -868696569;
      qword_1EB83E1C0 = ggl::globeTexturedShaderShaderConstants(void)::ref;
      unk_1EB83E1C8 = 3;
      qword_1EB83E1D0 = ggl::globeTexturedShaderShaderTextures(void)::ref;
      unk_1EB83E1D8 = 2;
      qword_1EB83E1E0 = ggl::globeTexturedShaderShaderSamplers(void)::ref;
      unk_1EB83E1E8 = 2;
    }
  }
}

void ggl::endOfWorldShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::endOfWorldShaderVertexFunctionDescriptor(void)::ref = 644630941;
    qword_1ED668E70 = "EndOfWorldShader";
    unk_1ED668E78 = ggl::endOfWorldShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED668E80 = 1;
    unk_1ED668E88 = &ggl::endOfWorldShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED668E90 = 2;
    unk_1ED668E98 = &ggl::endOfWorldShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED668EA0 = 0;
    unk_1ED668EA8 = &ggl::endOfWorldShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED668EB0 = 0;
    unk_1ED668EB8 = &ggl::endOfWorldShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED668EC8 = 0;
    unk_1ED668ED0 = 0;
    qword_1ED668EC0 = 0;
  }
}

void ggl::flyoverPolarShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverPolarShaderFragmentFunctionDescriptor(void)::ref = 0x10D18DA8DLL;
    qword_1EB82F788 = "FlyoverPolarShader";
    unk_1EB82F790 = 0;
    qword_1EB82F798 = 0;
    unk_1EB82F7A0 = &ggl::flyoverPolarShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1EB82F7A8 = 2;
    unk_1EB82F7B0 = &ggl::flyoverPolarShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1EB82F7B8 = 0;
    unk_1EB82F7C0 = &ggl::flyoverPolarShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1EB82F7C8 = 1;
    unk_1EB82F7D0 = &ggl::flyoverPolarShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1EB82F7E0 = 0;
    unk_1EB82F7E8 = 0;
    qword_1EB82F7D8 = 1;
  }
}

void ggl::flyoverBorderRibbonShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverBorderRibbonShaderVertexFunctionDescriptor(void)::ref = 2568452289;
    qword_1ED6650F0 = "FlyoverBorderRibbonShader";
    unk_1ED6650F8 = ggl::flyoverBorderRibbonShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED665100 = 1;
    unk_1ED665108 = &ggl::flyoverBorderRibbonShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED665110 = 5;
    unk_1ED665118 = &ggl::flyoverBorderRibbonShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED665120 = 0;
    unk_1ED665128 = &ggl::flyoverBorderRibbonShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED665130 = 0;
    unk_1ED665138 = &ggl::flyoverBorderRibbonShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED665148 = 0;
    unk_1ED665150 = 0;
    qword_1ED665140 = 0;
  }
}

void ggl::flyoverManeuverShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverManeuverShaderFragmentFunctionDescriptor(void)::ref = 0x1339B4442;
    qword_1ED665E70 = "FlyoverManeuverShader";
    unk_1ED665E78 = 0;
    qword_1ED665E80 = 0;
    unk_1ED665E88 = &ggl::flyoverManeuverShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED665E90 = 1;
    unk_1ED665E98 = &ggl::flyoverManeuverShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED665EA0 = 0;
    unk_1ED665EA8 = &ggl::flyoverManeuverShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED665EB0 = 1;
    unk_1ED665EB8 = &ggl::flyoverManeuverShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED665EC8 = 0;
    unk_1ED665ED0 = 0;
    qword_1ED665EC0 = 1;
  }
}

void ggl::flyoverMorphShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverMorphShaderVertexFunctionDescriptor(void)::ref = 1089334000;
    qword_1ED668570 = "FlyoverMorphShader";
    unk_1ED668578 = ggl::flyoverMorphShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED668580 = 1;
    unk_1ED668588 = &ggl::flyoverMorphShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED668590 = 6;
    unk_1ED668598 = &ggl::flyoverMorphShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6685A0 = 0;
    unk_1ED6685A8 = &ggl::flyoverMorphShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED6685B0 = 1;
    unk_1ED6685B8 = &ggl::flyoverMorphShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6685C8 = 0;
    unk_1ED6685D0 = 0;
    qword_1ED6685C0 = 1;
  }
}

void ggl::flyoverMorphBorderShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverMorphBorderShaderVertexFunctionDescriptor(void)::ref = 1958129500;
    qword_1ED6656C8 = "FlyoverMorphBorderShader";
    unk_1ED6656D0 = ggl::flyoverMorphBorderShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6656D8 = 1;
    unk_1ED6656E0 = &ggl::flyoverMorphBorderShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6656E8 = 6;
    unk_1ED6656F0 = &ggl::flyoverMorphBorderShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6656F8 = 0;
    unk_1ED665700 = &ggl::flyoverMorphBorderShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED665708 = 1;
    unk_1ED665710 = &ggl::flyoverMorphBorderShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED665720 = 0;
    unk_1ED665728 = 0;
    qword_1ED665718 = 1;
  }
}

void ggl::flyoverMorphBorderShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverMorphBorderShaderFragmentFunctionDescriptor(void)::ref = 0x110222FA4;
    qword_1ED6649A0 = "FlyoverMorphBorderShader";
    unk_1ED6649A8 = 0;
    qword_1ED6649B0 = 0;
    unk_1ED6649B8 = &ggl::flyoverMorphBorderShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6649C0 = 3;
    unk_1ED6649C8 = &ggl::flyoverMorphBorderShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6649D0 = 0;
    unk_1ED6649D8 = &ggl::flyoverMorphBorderShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6649E0 = 4;
    unk_1ED6649E8 = &ggl::flyoverMorphBorderShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6649F8 = 0;
    unk_1ED664A00 = 0;
    qword_1ED6649F0 = 4;
  }
}

void ggl::flyoverNightPolarShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverNightPolarShaderFragmentFunctionDescriptor(void)::ref = 0x13A1DA555;
    qword_1EB82F628 = "FlyoverNightPolarShader";
    unk_1EB82F630 = 0;
    qword_1EB82F638 = 0;
    unk_1EB82F640 = &ggl::flyoverNightPolarShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1EB82F648 = 2;
    unk_1EB82F650 = &ggl::flyoverNightPolarShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1EB82F658 = 0;
    unk_1EB82F660 = &ggl::flyoverNightPolarShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1EB82F668 = 2;
    unk_1EB82F670 = &ggl::flyoverNightPolarShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1EB82F680 = 0;
    unk_1EB82F688 = 0;
    qword_1EB82F678 = 2;
  }
}

void ggl::flyoverNightDimShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverNightDimShaderFragmentFunctionDescriptor(void)::ref = 0x155D29F04;
    qword_1ED665D88 = "FlyoverNightDimShader";
    unk_1ED665D90 = 0;
    qword_1ED665D98 = 0;
    unk_1ED665DA0 = &ggl::flyoverNightDimShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED665DA8 = 1;
    unk_1ED665DB0 = &ggl::flyoverNightDimShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED665DB8 = 0;
    unk_1ED665DC0 = &ggl::flyoverNightDimShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED665DC8 = 0;
    unk_1ED665DD0 = &ggl::flyoverNightDimShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED665DE0 = 0;
    unk_1ED665DE8 = 0;
    qword_1ED665DD8 = 0;
  }
}

void ggl::flyoverPostchainCompositeShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverPostchainCompositeShaderFragmentFunctionDescriptor(void)::ref = 0x11EFF1393;
    qword_1ED65B6A8 = "FlyoverPostchainCompositeShader";
    unk_1ED65B6B0 = 0;
    qword_1ED65B6B8 = 0;
    unk_1ED65B6C0 = &ggl::flyoverPostchainCompositeShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65B6C8 = 1;
    unk_1ED65B6D0 = &ggl::flyoverPostchainCompositeShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65B6D8 = 0;
    unk_1ED65B6E0 = &ggl::flyoverPostchainCompositeShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65B6E8 = 4;
    unk_1ED65B6F0 = &ggl::flyoverPostchainCompositeShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65B700 = 0;
    unk_1ED65B708 = 0;
    qword_1ED65B6F8 = 4;
  }
}

void ggl::flyoverPostchainSplitFrameShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverPostchainSplitFrameShaderVertexFunctionDescriptor(void)::ref = 2595229844;
    qword_1ED65B810 = "FlyoverPostchainSplitFrameShader";
    unk_1ED65B818 = ggl::flyoverPostchainSplitFrameShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65B820 = 1;
    unk_1ED65B828 = &ggl::flyoverPostchainSplitFrameShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65B830 = 0;
    unk_1ED65B838 = &ggl::flyoverPostchainSplitFrameShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65B840 = 0;
    unk_1ED65B848 = &ggl::flyoverPostchainSplitFrameShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65B850 = 0;
    unk_1ED65B858 = &ggl::flyoverPostchainSplitFrameShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65B868 = 0;
    unk_1ED65B870 = 0;
    qword_1ED65B860 = 0;
  }
}

void ggl::flyoverPostchainDownsampleCoCShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverPostchainDownsampleCoCShaderFragmentFunctionDescriptor(void)::ref = 0x1E0B0A741;
    qword_1ED65B058 = "FlyoverPostchainDownsampleCoCShader";
    unk_1ED65B060 = 0;
    qword_1ED65B068 = 0;
    unk_1ED65B070 = &ggl::flyoverPostchainDownsampleCoCShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65B078 = 0;
    unk_1ED65B080 = &ggl::flyoverPostchainDownsampleCoCShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65B088 = 0;
    unk_1ED65B090 = &ggl::flyoverPostchainDownsampleCoCShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65B098 = 1;
    unk_1ED65B0A0 = &ggl::flyoverPostchainDownsampleCoCShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65B0B0 = 0;
    unk_1ED65B0B8 = 0;
    qword_1ED65B0A8 = 1;
  }
}

void ggl::flyoverPostchainBGBlurShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverPostchainBGBlurShaderFragmentFunctionDescriptor(void)::ref = 0x12E1F6B56;
    qword_1ED65BC98 = "FlyoverPostchainBGBlurShader";
    unk_1ED65BCA0 = 0;
    qword_1ED65BCA8 = 0;
    unk_1ED65BCB0 = &ggl::flyoverPostchainBGBlurShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65BCB8 = 1;
    unk_1ED65BCC0 = &ggl::flyoverPostchainBGBlurShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65BCC8 = 0;
    unk_1ED65BCD0 = &ggl::flyoverPostchainBGBlurShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65BCD8 = 1;
    unk_1ED65BCE0 = &ggl::flyoverPostchainBGBlurShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65BCF0 = 0;
    unk_1ED65BCF8 = 0;
    qword_1ED65BCE8 = 1;
  }
}

void ggl::flyoverPostchainTentBlurShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverPostchainTentBlurShaderVertexFunctionDescriptor(void)::ref = 2040088791;
    qword_1ED65BBB0 = "FlyoverPostchainTentBlurShader";
    unk_1ED65BBB8 = ggl::flyoverPostchainTentBlurShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65BBC0 = 1;
    unk_1ED65BBC8 = &ggl::flyoverPostchainTentBlurShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65BBD0 = 0;
    unk_1ED65BBD8 = &ggl::flyoverPostchainTentBlurShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65BBE0 = 0;
    unk_1ED65BBE8 = &ggl::flyoverPostchainTentBlurShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65BBF0 = 0;
    unk_1ED65BBF8 = &ggl::flyoverPostchainTentBlurShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65BC08 = 0;
    unk_1ED65BC10 = 0;
    qword_1ED65BC00 = 0;
  }
}

void ggl::flyoverRoadFillTexturedShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverRoadFillTexturedShaderVertexFunctionDescriptor(void)::ref = 2638858822;
    qword_1ED663CE8 = "FlyoverRoadFillTexturedShader";
    unk_1ED663CF0 = ggl::flyoverRoadFillTexturedShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED663CF8 = 1;
    unk_1ED663D00 = &ggl::flyoverRoadFillTexturedShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED663D08 = 4;
    unk_1ED663D10 = &ggl::flyoverRoadFillTexturedShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED663D18 = 0;
    unk_1ED663D20 = &ggl::flyoverRoadFillTexturedShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED663D28 = 0;
    unk_1ED663D30 = &ggl::flyoverRoadFillTexturedShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED663D40 = 0;
    unk_1ED663D48 = 0;
    qword_1ED663D38 = 0;
  }
}

void ggl::flyoverRoadStrokeProceduralShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverRoadStrokeProceduralShaderVertexFunctionDescriptor(void)::ref = 3422672659;
    qword_1ED662CF0 = "FlyoverRoadStrokeProceduralShader";
    unk_1ED662CF8 = ggl::flyoverRoadStrokeProceduralShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED662D00 = 1;
    unk_1ED662D08 = &ggl::flyoverRoadStrokeProceduralShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED662D10 = 4;
    unk_1ED662D18 = &ggl::flyoverRoadStrokeProceduralShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED662D20 = 0;
    unk_1ED662D28 = &ggl::flyoverRoadStrokeProceduralShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED662D30 = 0;
    unk_1ED662D38 = &ggl::flyoverRoadStrokeProceduralShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED662D48 = 0;
    unk_1ED662D50 = 0;
    qword_1ED662D40 = 0;
  }
}

void ggl::flyoverRoadStrokeProceduralShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverRoadStrokeProceduralShaderFragmentFunctionDescriptor(void)::ref = 0x1391D3DD7;
    qword_1ED662868 = "FlyoverRoadStrokeProceduralShader";
    unk_1ED662870 = 0;
    qword_1ED662878 = 0;
    unk_1ED662880 = &ggl::flyoverRoadStrokeProceduralShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED662888 = 3;
    unk_1ED662890 = &ggl::flyoverRoadStrokeProceduralShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED662898 = 0;
    unk_1ED6628A0 = &ggl::flyoverRoadStrokeProceduralShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6628A8 = 0;
    unk_1ED6628B0 = &ggl::flyoverRoadStrokeProceduralShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6628C0 = 0;
    unk_1ED6628C8 = 0;
    qword_1ED6628B8 = 0;
  }
}

void ggl::flyoverRoadStrokeTexturedShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverRoadStrokeTexturedShaderVertexFunctionDescriptor(void)::ref = 2569900702;
    qword_1ED6632E8 = "FlyoverRoadStrokeTexturedShader";
    unk_1ED6632F0 = ggl::flyoverRoadStrokeTexturedShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6632F8 = 1;
    unk_1ED663300 = &ggl::flyoverRoadStrokeTexturedShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED663308 = 5;
    unk_1ED663310 = &ggl::flyoverRoadStrokeTexturedShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED663318 = 0;
    unk_1ED663320 = &ggl::flyoverRoadStrokeTexturedShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED663328 = 0;
    unk_1ED663330 = &ggl::flyoverRoadStrokeTexturedShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED663340 = 0;
    unk_1ED663348 = 0;
    qword_1ED663338 = 0;
  }
}

void ggl::flyoverTrafficShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverTrafficShaderFragmentFunctionDescriptor(void)::ref = 0x1DDA27C9ELL;
    qword_1ED666530 = "FlyoverTrafficShader";
    unk_1ED666538 = 0;
    qword_1ED666540 = 0;
    unk_1ED666548 = &ggl::flyoverTrafficShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED666550 = 3;
    unk_1ED666558 = &ggl::flyoverTrafficShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED666560 = 0;
    unk_1ED666568 = &ggl::flyoverTrafficShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED666570 = 0;
    unk_1ED666578 = &ggl::flyoverTrafficShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED666588 = 0;
    unk_1ED666590 = 0;
    qword_1ED666580 = 0;
  }
}

void ggl::starsShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::starsShaderVertexFunctionDescriptor(void)::ref = 250913437;
    qword_1ED669B18 = "StarsShader";
    unk_1ED669B20 = ggl::starsShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED669B28 = 1;
    unk_1ED669B30 = &ggl::starsShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED669B38 = 1;
    unk_1ED669B40 = &ggl::starsShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED669B48 = 0;
    unk_1ED669B50 = &ggl::starsShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED669B58 = 0;
    unk_1ED669B60 = &ggl::starsShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669B70 = 0;
    unk_1ED669B78 = 0;
    qword_1ED669B68 = 0;
  }
}

void ggl::stenciledAlphaClearShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::stenciledAlphaClearShaderVertexFunctionDescriptor(void)::ref = 3215261823;
    qword_1ED664C68 = "StenciledAlphaClearShader";
    unk_1ED664C70 = ggl::stenciledAlphaClearShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED664C78 = 1;
    unk_1ED664C80 = &ggl::stenciledAlphaClearShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED664C88 = 0;
    unk_1ED664C90 = &ggl::stenciledAlphaClearShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED664C98 = 0;
    unk_1ED664CA0 = &ggl::stenciledAlphaClearShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED664CA8 = 0;
    unk_1ED664CB0 = &ggl::stenciledAlphaClearShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED664CC0 = 0;
    unk_1ED664CC8 = 0;
    qword_1ED664CB8 = 0;
  }
}

void ggl::tileBaseSurfaceShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::tileBaseSurfaceShaderVertexFunctionDescriptor(void)::ref = 1224466613;
    qword_1ED6668C8 = "TileBaseSurfaceShader";
    unk_1ED6668D0 = ggl::tileBaseSurfaceShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6668D8 = 1;
    unk_1ED6668E0 = &ggl::tileBaseSurfaceShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6668E8 = 2;
    unk_1ED6668F0 = &ggl::tileBaseSurfaceShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6668F8 = 0;
    unk_1ED666900 = &ggl::tileBaseSurfaceShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED666908 = 0;
    unk_1ED666910 = &ggl::tileBaseSurfaceShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED666920 = 0;
    unk_1ED666928 = 0;
    qword_1ED666918 = 0;
  }
}

void ggl::tileBaseSurfaceShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::tileBaseSurfaceShaderFragmentFunctionDescriptor(void)::ref = 0x179FD074DLL;
    qword_1ED6659F0 = "TileBaseSurfaceShader";
    unk_1ED6659F8 = 0;
    qword_1ED665A00 = 0;
    unk_1ED665A08 = &ggl::tileBaseSurfaceShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED665A10 = 1;
    unk_1ED665A18 = &ggl::tileBaseSurfaceShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED665A20 = 0;
    unk_1ED665A28 = &ggl::tileBaseSurfaceShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED665A30 = 0;
    unk_1ED665A38 = &ggl::tileBaseSurfaceShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED665A48 = 0;
    unk_1ED665A50 = 0;
    qword_1ED665A40 = 0;
  }
}

void ggl::FlyoverShader::typedReflection(ggl::FlyoverShader *this)
{
  {
    if (v1)
    {
      ggl::FlyoverShader::typedReflection(void)::ref = "FlyoverShader";
      ggl::flyoverShaderVertexFunctionDescriptor(v1);
      qword_1ED66D8E0 = &ggl::flyoverShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D8E8 = -1760760878;
      ggl::flyoverShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D8F0 = &ggl::flyoverShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D8F8 = -996934574;
      qword_1ED66D900 = ggl::flyoverShaderShaderConstants(void)::ref;
      unk_1ED66D908 = 5;
      qword_1ED66D910 = ggl::flyoverShaderShaderTextures(void)::ref;
      unk_1ED66D918 = 2;
      qword_1ED66D920 = ggl::flyoverShaderShaderSamplers(void)::ref;
      unk_1ED66D928 = 2;
    }
  }
}

void ggl::FlyoverPolarShader::typedReflection(ggl::FlyoverPolarShader *this)
{
  {
    if (v1)
    {
      ggl::FlyoverPolarShader::typedReflection(void)::ref = "FlyoverPolarShader";
      ggl::flyoverPolarShaderVertexFunctionDescriptor(v1);
      qword_1EB835DE0 = &ggl::flyoverPolarShaderVertexFunctionDescriptor(void)::ref;
      dword_1EB835DE8 = -1711912381;
      ggl::flyoverPolarShaderFragmentFunctionDescriptor(v2);
      qword_1EB835DF0 = &ggl::flyoverPolarShaderFragmentFunctionDescriptor(void)::ref;
      dword_1EB835DF8 = 219732621;
      qword_1EB835E00 = ggl::flyoverPolarShaderShaderConstants(void)::ref;
      unk_1EB835E08 = 6;
      qword_1EB835E10 = ggl::flyoverPolarShaderShaderTextures(void)::ref;
      unk_1EB835E18 = 2;
      qword_1EB835E20 = ggl::flyoverPolarShaderShaderSamplers(void)::ref;
      unk_1EB835E28 = 2;
    }
  }
}

void ggl::FlyoverNightPolarShader::typedReflection(ggl::FlyoverNightPolarShader *this)
{
  {
    if (v1)
    {
      ggl::FlyoverNightPolarShader::typedReflection(void)::ref = "FlyoverNightPolarShader";
      ggl::flyoverNightPolarShaderVertexFunctionDescriptor(v1);
      qword_1EB834C20 = &ggl::flyoverNightPolarShaderVertexFunctionDescriptor(void)::ref;
      dword_1EB834C28 = -794662868;
      ggl::flyoverNightPolarShaderFragmentFunctionDescriptor(v2);
      qword_1EB834C30 = &ggl::flyoverNightPolarShaderFragmentFunctionDescriptor(void)::ref;
      dword_1EB834C38 = 975021397;
      qword_1EB834C40 = ggl::flyoverNightPolarShaderShaderConstants(void)::ref;
      unk_1EB834C48 = 6;
      qword_1EB834C50 = ggl::flyoverNightPolarShaderShaderTextures(void)::ref;
      unk_1EB834C58 = 3;
      qword_1EB834C60 = ggl::flyoverNightPolarShaderShaderSamplers(void)::ref;
      unk_1EB834C68 = 3;
    }
  }
}

void ggl::blurXShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::blurXShaderFragmentFunctionDescriptor(void)::ref = 0x17348A0C0;
    qword_1ED669710 = "BlurXShader";
    unk_1ED669718 = 0;
    qword_1ED669720 = 0;
    unk_1ED669728 = &ggl::blurXShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED669730 = 0;
    unk_1ED669738 = &ggl::blurXShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED669740 = 0;
    unk_1ED669748 = &ggl::blurXShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED669750 = 1;
    unk_1ED669758 = &ggl::blurXShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669768 = 0;
    unk_1ED669770 = 0;
    qword_1ED669760 = 1;
  }
}

void ggl::blurYShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::blurYShaderFragmentFunctionDescriptor(void)::ref = 0x1CAB37B28;
    qword_1ED6696A0 = "BlurYShader";
    unk_1ED6696A8 = 0;
    qword_1ED6696B0 = 0;
    unk_1ED6696B8 = &ggl::blurYShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6696C0 = 0;
    unk_1ED6696C8 = &ggl::blurYShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6696D0 = 0;
    unk_1ED6696D8 = &ggl::blurYShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6696E0 = 1;
    unk_1ED6696E8 = &ggl::blurYShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6696F8 = 0;
    unk_1ED669700 = 0;
    qword_1ED6696F0 = 1;
  }
}

void ggl::shrinkBlur4XShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::shrinkBlur4XShaderVertexFunctionDescriptor(void)::ref = 3750176327;
    qword_1ED6682A8 = "ShrinkBlur4XShader";
    unk_1ED6682B0 = ggl::shrinkBlur4XShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6682B8 = 1;
    unk_1ED6682C0 = &ggl::shrinkBlur4XShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6682C8 = 0;
    unk_1ED6682D0 = &ggl::shrinkBlur4XShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6682D8 = 0;
    unk_1ED6682E0 = &ggl::shrinkBlur4XShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED6682E8 = 0;
    unk_1ED6682F0 = &ggl::shrinkBlur4XShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED668300 = 0;
    unk_1ED668308 = 0;
    qword_1ED6682F8 = 0;
  }
}

void ggl::vSPassthroughShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::vSPassthroughShaderVertexFunctionDescriptor(void)::ref = 3462500884;
    qword_1ED667998 = "VSPassthroughShader";
    unk_1ED6679A0 = ggl::vSPassthroughShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6679A8 = 1;
    unk_1ED6679B0 = &ggl::vSPassthroughShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6679B8 = 0;
    unk_1ED6679C0 = &ggl::vSPassthroughShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6679C8 = 0;
    unk_1ED6679D0 = &ggl::vSPassthroughShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED6679D8 = 0;
    unk_1ED6679E0 = &ggl::vSPassthroughShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6679F0 = 0;
    unk_1ED6679F8 = 0;
    qword_1ED6679E8 = 0;
  }
}

void ggl::vSSpriteShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::vSSpriteShaderFragmentFunctionDescriptor(void)::ref = 0x139203E25;
    qword_1ED668C28 = "VSSpriteShader";
    unk_1ED668C30 = 0;
    qword_1ED668C38 = 0;
    unk_1ED668C40 = &ggl::vSSpriteShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED668C48 = 0;
    unk_1ED668C50 = &ggl::vSSpriteShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED668C58 = 0;
    unk_1ED668C60 = &ggl::vSSpriteShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED668C68 = 2;
    unk_1ED668C70 = &ggl::vSSpriteShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED668C80 = 0;
    unk_1ED668C88 = 0;
    qword_1ED668C78 = 2;
  }
}

void ggl::VSSpriteShader::typedReflection(ggl::VSSpriteShader *this)
{
  {
    if (v1)
    {
      ggl::VSSpriteShader::typedReflection(void)::ref = "VSSpriteShader";
      ggl::vSSpriteShaderVertexFunctionDescriptor(v1);
      qword_1ED66D710 = &ggl::vSSpriteShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D718 = 392560758;
      ggl::vSSpriteShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D720 = &ggl::vSSpriteShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D728 = 958414373;
      qword_1ED66D730 = ggl::vSSpriteShaderShaderConstants(void)::ref;
      unk_1ED66D738 = 1;
      qword_1ED66D740 = ggl::vSSpriteShaderShaderTextures(void)::ref;
      unk_1ED66D748 = 2;
      qword_1ED66D750 = ggl::vSSpriteShaderShaderSamplers(void)::ref;
      unk_1ED66D758 = 2;
    }
  }
}

uint64_t *std::unique_ptr<md::Device>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v3)
    {
      v4 = v3[9];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v5 = v3[7];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      v6 = v3[5];
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      v7 = v3[3];
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v8 = v3[1];
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      MEMORY[0x1B8C62190](v3, 0x20C40DC3FE9D3);
    }

    v9 = *(v2 + 16);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<md::SharedResourcesManager>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = 3328;
    do
    {
      std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::~__hash_table(v2 + v3 + 264);
      std::condition_variable::~condition_variable((v2 + v3 + 208));
      std::condition_variable::~condition_variable((v2 + v3 + 160));
      std::mutex::~mutex((v2 + v3 + 96));
      v3 -= 208;
    }

    while (v3);
    std::condition_variable::~condition_variable((v2 + 112));
    std::condition_variable::~condition_variable((v2 + 64));
    std::mutex::~mutex(v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t ggl::TextureData2D::TextureData2D(uint64_t a1, int a2, int a3, unsigned int a4, int a5, int a6)
{
  LODWORD(v9) = a3;
  LODWORD(v10) = a2;
  v27 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *a1 = &unk_1F2A5CC28;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  v12 = a4;
  std::vector<unsigned char *,geo::allocator_adapter<unsigned char *,ggl::zone_mallocator>>::resize((a1 + 32), a4);
  MEMORY[0x1EEE9AC00]();
  v14 = &v25[-v13];
  bzero(&v25[-v13], v15);
  v17 = *(a1 + 64);
  if (a4)
  {
    v26 = a6;
    v9 = v9;
    v18 = v14;
    v19 = v12;
    v10 = v10;
    do
    {
      *v18++ = v17;
      v16 = ggl::pixelFormatPixelsSize(a5, v10, v9);
      v17 += v16;
      if (v10 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 >>= 1;
      }

      if (v9 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 >>= 1;
      }

      --v19;
    }

    while (v19);
    *(a1 + 64) = v17;
    a6 = v26;
  }

  if (v17)
  {
    v20 = ggl::zone_mallocator::instance(v16);
    v21 = v20;
    if (a6)
    {
      geo::read_write_lock::read_lock((v20 + 32));
      v22 = malloc_type_zone_calloc(*v21, v17, 1uLL, 0x100004077774924uLL);
      atomic_fetch_add((v21 + 24), 1u);
      geo::read_write_lock::unlock((v21 + 32));
      *(a1 + 24) = v22;
      if (!a4)
      {
        return a1;
      }
    }

    else
    {
      *(a1 + 24) = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v20, v17);
      if (!a4)
      {
        return a1;
      }
    }
  }

  else
  {
    *(a1 + 24) = 0;
    if (!a4)
    {
      return a1;
    }
  }

  v23 = 0;
  do
  {
    *(*(a1 + 32) + v23 * 8) = *(a1 + 24) + v14[v23];
    ++v23;
  }

  while (v12 != v23);
  return a1;
}

void std::vector<unsigned char *,geo::allocator_adapter<unsigned char *,ggl::zone_mallocator>>::resize(ggl::zone_mallocator *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = v4 - *a1;
  v6 = v5 >> 3;
  if (a2 <= v5 >> 3)
  {
    if (a2 >= v6)
    {
      return;
    }

    v22 = v3 + 8 * a2;
    goto LABEL_16;
  }

  v7 = a2 - v6;
  v8 = *(a1 + 2);
  if (v7 <= (v8 - v4) >> 3)
  {
    bzero(*(a1 + 1), 8 * v7);
    v22 = v4 + 8 * v7;
LABEL_16:
    *(a1 + 1) = v22;
    return;
  }

  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v9 = v8 - v3;
  v10 = v9 >> 2;
  if (v9 >> 2 <= a2)
  {
    v10 = a2;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  v12 = ggl::zone_mallocator::instance(a1);
  geo::read_write_lock::read_lock((v12 + 32));
  v13 = malloc_type_zone_malloc(*v12, 8 * v11, 0x10040436913F5uLL);
  atomic_fetch_add((v12 + 24), 1u);
  geo::read_write_lock::unlock((v12 + 32));
  v14 = &v13[v5];
  v15 = &v13[8 * v11];
  bzero(v14, 8 * v7);
  v16 = &v14[8 * v7];
  v17 = *(a1 + 1) - *a1;
  v18 = &v14[-v17];
  v19 = memcpy(&v14[-v17], *a1, v17);
  v20 = *a1;
  *a1 = v18;
  *(a1 + 1) = v16;
  *(a1 + 2) = v15;
  if (v20)
  {
    v21 = ggl::zone_mallocator::instance(v19);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ShaderLibrary::ComputeShaderEntry>(v21, v20);
  }
}

double ggl::Texture::Texture(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  result = 0.0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F2A5CB90;
  *(a1 + 40) = &unk_1F2A5CBB0;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 60) = a4;
  *(a1 + 64) = a5;
  *(a1 + 68) = a6;
  *(a1 + 72) = a7;
  *(a1 + 76) = a8;
  *(a1 + 80) = 0;
  return result;
}

uint64_t ggl::TextureCube::TextureCube(uint64_t result, uint64_t a2, void *a3)
{
  v3 = 0;
  v4 = *(*a2 + 12);
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0u;
  *(result + 48) = "";
  *(result + 56) = 0x100000003;
  *(result + 64) = 0;
  *(result + 68) = v4;
  *(result + 72) = 0x100000001;
  *(result + 80) = 0;
  *result = &unk_1F2A5D4B8;
  *(result + 40) = &unk_1F2A5D4D8;
  *(result + 88) = *(*a2 + 8);
  do
  {
    v5 = *(a2 + v3);
    *(result + v3 + 96) = v5;
    if (*(&v5 + 1))
    {
      atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v3 += 16;
  }

  while (v3 != 96);
  *(result + 192) = 0;
  *(result + 196) = *(*a2 + 16);
  *(result + 200) = 1;
  v6 = a3[1];
  *(result + 208) = *a3;
  *(result + 216) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t ggl::MetalLoader::performWithAccessor(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v2 = *(a2 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<std::__bind<void (ggl::Texture2D::*)(ggl::Texture2DLoadItem const&),ggl::Texture2D*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (ggl::Texture2D::*)(ggl::Texture2DLoadItem const&),ggl::Texture2D*,std::placeholders::__ph<1> const&>>,void ()(ggl::Texture2DLoadItem const&)>::__clone(v4);
}

uint64_t std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::__unordered_map_hasher<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::hash<geo::StringLiteral>,std::equal_to<geo::StringLiteral>,true>,std::__unordered_map_equal<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::equal_to<geo::StringLiteral>,std::hash<geo::StringLiteral>,true>,std::allocator<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>>>::find<geo::StringLiteral>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 12);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 12);
    if (*&v2 <= v4)
    {
      v7 = v4 % v2.i32[0];
    }
  }

  else
  {
    v7 = (v2.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9[1];
      if (v10 == v4)
      {
        if (geo::StringLiteral::operator==((v9 + 2), a2))
        {
          return v9;
        }
      }

      else
      {
        if (v6 > 1)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

uint64_t ggl::Performance::CounterInfo::setDisplayMode(uint64_t result, int a2)
{
  if (*(result + 40))
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  if (*(result + 64) != v2)
  {
    v3 = result;
    v4 = *(result + 48);
    if (v4)
    {
      if (*v4)
      {
        MEMORY[0x1B8C62170](*v4, 0x1000C8000313F17);
      }

      result = MEMORY[0x1B8C62190](v4, 0x20C40960023A9);
      *(v3 + 48) = 0;
    }

    if (v2 == 2)
    {
      operator new();
    }

    *(v3 + 64) = v2;
  }

  return result;
}

void ggl::Texture2D::onImplicitLoadComplete(uint64_t a1)
{
  *(a1 + 129) = 0;
  v2 = *(a1 + 120);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void ggl::Loader::~Loader(ggl::Loader *this)
{
  v2 = *this;
  if (v2)
  {
    v3 = (*(*v2 + 24))(v2);
    v4 = *this;
    *this = 0;
    v7 = v4;
    (*(*v3 + 48))(v3, &v7);
    v5 = v7;
    v7 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *this;
    *this = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }
}

uint64_t ggl::MetalDevice::unvendLoader(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ggl::MetalLoader::~MetalLoader(ggl::MetalLoader *this)
{
  *this = &unk_1F2A5D748;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5D748;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void grl::ResourceProvider::addObserver(uint64_t a1, unint64_t a2)
{
  std::mutex::lock((a1 + 48));
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = *(a1 + 16);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*(a1 + 8) + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
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

  if (v11[2] != a2)
  {
    goto LABEL_17;
  }

  std::mutex::unlock((a1 + 48));
}

void grl::IconManager::setDataPackNumberOfAtlasPages(grl::IconManager *this)
{
  std::__shared_mutex_base::lock_shared((this + 104));
  *(this + 59) = 10;
  v2 = *(this + 12);
  if (v2)
  {
    std::mutex::lock((v2 + 240));
    v3 = *(this + 12);
    v4 = v3 + 80;
    for (i = *(v3 + 88); i != v4; i = *(i + 8))
    {
      grl::codec::IconDataPack::setNumberOfAtlasPages(*(i + 48), 10);
    }

    std::mutex::unlock((v2 + 240));
  }

  std::__shared_mutex_base::unlock_shared((this + 104));
}

uint64_t std::__function::__value_func<void ()(GEOResourceManifestManager *,GEOActiveTileGroup *,GEOActiveTileGroup *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t md::StandardCommandBufferSelector::_getPassID(md::StandardCommandBufferSelector *this, char a2, int a3)
{
  if (a2)
  {
    return 9;
  }

  if ((a3 - 98) > 0x1B)
  {
    return 10;
  }

  return byte_1B34154D5[(a3 - 98)];
}

ggl::RenderQueue *std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](ggl::RenderQueue **a1, ggl::RenderQueue *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::RenderQueue::~RenderQueue(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ggl::RenderQueue::setBufferForLayer(ggl::RenderQueue *this, uint64_t a2, ggl::CommandBuffer *a3)
{
  v6 = a2 + 1;
  v7 = *(this + 13);
  v8 = (this + 104);
  if (v6 > (*(this + 14) - v7) >> 3)
  {
    v10 = 0;
    std::vector<ggl::CommandBuffer *,geo::allocator_adapter<ggl::CommandBuffer *,ggl::zone_mallocator>>::resize((this + 104), v6, &v10);
    v7 = *v8;
  }

  v9 = *(v7 + 8 * a2);
  if (v9)
  {
    *(v9 + 24) = 0;
  }

  if (a3)
  {
    *(a3 + 3) = this;
  }

  *(v7 + 8 * a2) = a3;
}

uint64_t *std::unique_ptr<ggl::MetalBindingManager>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 280);
    if (v3)
    {
      *(v2 + 288) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 256);
    if (v4)
    {
      *(v2 + 264) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 232);
    if (v5)
    {
      *(v2 + 240) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 208);
    if (v6)
    {
      *(v2 + 216) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 184);
    if (v7)
    {
      *(v2 + 192) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 160);
    if (v8)
    {
      *(v2 + 168) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 8);
    if (v9)
    {
      *(v2 + 16) = v9;
      operator delete(v9);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ggl::MetalRenderer::setCommandQueueResetAttempts(ggl::MetalRenderer *this, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (GEOGetGeoGLDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
  }

  v4 = GEOGetGeoGLDefaultLog_log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "Set CommandQueueResetAttempts: %d", v5, 8u);
  }

  *(this + 107) = a2;
}

uint64_t std::__function::__value_func<void ()(double)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ggl::DisplayLink::DisplayLink(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(double)>::__value_func[abi:nn200100](v3, a2);
  ggl::RunLoop::RunLoop(a1, v3);
}

void sub_1B280AC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  v14 = v13;

  v16 = *(v12 + 64);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  ggl::RunLoop::~RunLoop(v12);
  _Unwind_Resume(a1);
}

void ggl::RunLoop::RunLoop(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A5CDE0;
  std::__function::__value_func<void ()(double)>::__value_func[abi:nn200100]((a1 + 1), a2);
  a1[5] = 0;
  a1[6] = 0;
  operator new();
}

void sub_1B280AD38(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::MapEngine::MapEngineDisplayLinkCaller,std::allocator<md::MapEngine::MapEngineDisplayLinkCaller>,void ()(double)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A21E18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void md::DaVinciGroundRenderResources::DaVinciGroundRenderResources(md::DaVinciGroundRenderResources *this, VKSharedResources *a2, const RenderTargetFormat *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  a2;
  md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::DaVinciPipelineStateManager(this);
  *(this + 136) = 0u;
  *(this + 184) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 188) = xmmword_1B33B0760;
  *(this + 204) = 0;
  *(this + 220) = 0;
  *(this + 212) = 0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 66) = 1065353216;
  __p = 0u;
  v5 = 0u;
  v6 = 1065353216;
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__move_assign(this + 232, &__p);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v5);
  if (__p)
  {
    operator delete(__p);
  }

  *(this + 320) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 17) = 0u;
  *(this + 324) = xmmword_1B33B0760;
  *(this + 348) = 0;
  *(this + 356) = 0;
  *(this + 340) = 0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 100) = 1065353216;
  __p = 0u;
  v5 = 0u;
  v6 = 1065353216;
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__move_assign(this + 368, &__p);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v5);
  if (__p)
  {
    operator delete(__p);
  }

  md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::DaVinciPipelineStateManager(this + 408);
  *(this + 592) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 34) = 0u;
  *(this + 596) = xmmword_1B33B0760;
  *(this + 620) = 0;
  *(this + 628) = 0;
  *(this + 612) = 0;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 168) = 1065353216;
  __p = 0u;
  v5 = 0u;
  v6 = 1065353216;
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__move_assign(this + 640, &__p);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v5);
  if (__p)
  {
    operator delete(__p);
  }

  *(this + 728) = 0;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 680) = 0u;
  *(this + 732) = xmmword_1B33B0760;
  *(this + 756) = 0;
  *(this + 764) = 0;
  *(this + 748) = 0;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 202) = 1065353216;
  __p = 0u;
  v5 = 0u;
  v6 = 1065353216;
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__move_assign(this + 776, &__p);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v5);
  if (__p)
  {
    operator delete(__p);
  }

  *(this + 864) = 0;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 51) = 0u;
  *(this + 868) = xmmword_1B33B0760;
  *(this + 892) = 0;
  *(this + 900) = 0;
  *(this + 884) = 0;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 236) = 1065353216;
  __p = 0u;
  v5 = 0u;
  v6 = 1065353216;
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__move_assign(this + 912, &__p);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v5);
  if (__p)
  {
    operator delete(__p);
  }

  *(this + 1000) = 0;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 952) = 0u;
  *(this + 1004) = xmmword_1B33B0760;
  *(this + 1028) = 0;
  *(this + 1036) = 0;
  *(this + 1020) = 0;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 270) = 1065353216;
  __p = 0u;
  v5 = 0u;
  v6 = 1065353216;
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__move_assign(this + 1048, &__p);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v5);
  if (__p)
  {
    operator delete(__p);
  }

  *(this + 1136) = 0;
  *(this + 70) = 0u;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 1140) = xmmword_1B33B0760;
  *(this + 1164) = 0;
  *(this + 1172) = 0;
  *(this + 1156) = 0;
  *(this + 74) = 0u;
  *(this + 75) = 0u;
  *(this + 304) = 1065353216;
  __p = 0u;
  v5 = 0u;
  v6 = 1065353216;
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__move_assign(this + 1184, &__p);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v5);
  if (__p)
  {
    operator delete(__p);
  }

  *(this + 171) = 0;
  *(this + 1336) = 0u;
  *(this + 1352) = 0u;
  *(this + 1304) = 0u;
  *(this + 1320) = 0u;
  *(this + 1272) = 0u;
  *(this + 1288) = 0u;
  *(this + 1240) = 0u;
  *(this + 1256) = 0u;
  *(this + 1224) = 0u;
  *(this + 87) = 0u;
  *(this + 88) = 0u;
  *(this + 89) = 0u;
  *(this + 90) = 0u;
  *(this + 91) = 0u;
  *(this + 92) = 0u;
  *(this + 93) = 0u;
  *(this + 94) = 0u;
  *(this + 95) = 0u;
  *(this + 96) = 0u;
  *(this + 97) = 0u;
  *(this + 98) = 0u;
  *(this + 99) = 0u;
  *(this + 100) = 0u;
  *(this + 202) = 0;
  operator new();
}

void sub_1B280EAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, ggl::RenderDataHolder *a16, ggl::RenderDataHolder *a17, ggl::RenderDataHolder *a18, ggl::RenderDataHolder *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> * ()(void)>::~__value_func[abi:nn200100](v30 + 64);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v31);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v30);
  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *)>::~__value_func[abi:nn200100](&STACK[0x390]);
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> * ()(void)>::~__value_func[abi:nn200100](&STACK[0x3B0]);
  MEMORY[0x1B8C62190](v30, 0x10A0C405CD4001ALL);
  v33 = *(v29 + 2896);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v34 = *(v29 + 2880);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  v35 = *(v29 + 2864);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  v36 = *(v29 + 2848);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  std::__tree<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::__map_value_compare<gss::StyleAttribute,std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::less<gss::StyleAttribute>,true>,std::allocator<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>>>::destroy(*(v29 + 2824));
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(a14);
  v37 = *(v29 + 2744);
  *(v29 + 2744) = 0;
  if (v37)
  {
    MEMORY[0x1B8C62190](v37, 0x1000C4049ECCB0CLL);
  }

  v38 = *a23;
  *a23 = 0;
  if (v38)
  {
    MEMORY[0x1B8C62190](v38, 0x1000C4049ECCB0CLL);
  }

  v39 = *(v29 + 2728);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  v40 = *(v29 + 2712);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  md::FrameAllocator<ggl::RenderItem>::reset(v29 + 2680);
  free(*(v29 + 2680));
  v41 = *(v29 + 2656);
  if (v41)
  {
    *(v29 + 2664) = v41;
    operator delete(v41);
  }

  STACK[0x300] = v29 + 2624;
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x300]);
  v42 = *(v29 + 2600);
  if (v42)
  {
    *(v29 + 2608) = v42;
    operator delete(v42);
  }

  STACK[0x300] = a15;
  std::vector<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>,geo::allocator_adapter<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x300]);
  ggl::RenderDataHolder::~RenderDataHolder(a16);
  ggl::RenderDataHolder::~RenderDataHolder(a17);
  ggl::RenderDataHolder::~RenderDataHolder(a18);
  ggl::RenderDataHolder::~RenderDataHolder(a19);
  v43 = *(v29 + 1696);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  v44 = *(v29 + 1680);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v44);
  }

  v45 = *(v29 + 1664);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  v46 = *(v29 + 1648);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v46);
  }

  v47 = *(v29 + 1632);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  v48 = *(v29 + 1616);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v48);
  }

  v49 = *(v29 + 1600);
  *(v29 + 1600) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *(v29 + 1592);
  *(v29 + 1592) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::PackedLinearDepthPipelineSetup>>::reset[abi:nn200100]((v29 + 1584), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::LinearDepthPipelineSetup>>::reset[abi:nn200100]((v29 + 1576), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>::reset[abi:nn200100]((v29 + 1568), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>::reset[abi:nn200100]((v29 + 1560), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::reset[abi:nn200100]((v29 + 1552), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>::reset[abi:nn200100]((v29 + 1544), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>::reset[abi:nn200100]((v29 + 1536), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>::reset[abi:nn200100]((v29 + 1528), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle>>>::reset[abi:nn200100]((v29 + 1520), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>::reset[abi:nn200100]((v29 + 1512), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>::reset[abi:nn200100]((v29 + 1504), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>::reset[abi:nn200100]((v29 + 1496), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>::reset[abi:nn200100]((v29 + 1488), 0);
  v51 = *(v29 + 1480);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  v52 = *(v29 + 1464);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  v53 = *(v29 + 1448);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  v54 = *(v29 + 1432);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v54);
  }

  v55 = *(v29 + 1416);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  v56 = *(v29 + 1400);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  v57 = *(v29 + 1368);
  *(v29 + 1368) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  v58 = *(v29 + 1360);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v58);
  }

  v59 = *(v29 + 1344);
  *(v29 + 1344) = 0;
  if (v59)
  {
    ggl::ComputeItem::~ComputeItem(v59);
    MEMORY[0x1B8C62190]();
  }

  v60 = *(v29 + 1336);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v60);
  }

  v61 = *(v29 + 1320);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v61);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>::reset[abi:nn200100]((v29 + 1304), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>::reset[abi:nn200100]((v29 + 1296), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>::reset[abi:nn200100]((v29 + 1288), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>::reset[abi:nn200100]((v29 + 1280), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::DecalPipelineSetup>>::reset[abi:nn200100]((v29 + 1272), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::RibbonPipelineSetup>>::reset[abi:nn200100]((v29 + 1264), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GroundShadowMapPipelineSetup>>::reset[abi:nn200100]((v29 + 1256), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GroundDepthPipelineSetup>>::reset[abi:nn200100]((v29 + 1248), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GroundNonCompressedPipelineSetup>>::reset[abi:nn200100]((v29 + 1240), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>>::reset[abi:nn200100]((v29 + 1232), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>>::reset[abi:nn200100](a25, 0);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v29 + 1184);
  v62 = *(v29 + 1096);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v62);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(a26);
  v63 = *(v29 + 960);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v63);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v29 + 912);
  v64 = *(v29 + 824);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v64);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(a27);
  v65 = *(v29 + 688);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v65);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v29 + 640);
  v66 = *(v29 + 552);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v29 + 504);
  v67 = *(v29 + 416);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v29 + 368);
  v68 = *(v29 + 280);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v68);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(a28);
  v69 = *(v29 + 144);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v69);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v29 + 96);
  v70 = *(v29 + 8);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v70);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, __int128 a17, char a18, char a19, unsigned __int8 a20, char a21, char a22, char a23)
{
  v53 = *MEMORY[0x1E69E9840];
  memset(v52, 0, sizeof(v52));
  v33[0] = a3;
  v45 = 0;
  v33[1] = a4;
  v33[2] = a5;
  v33[3] = a6;
  v33[4] = a7;
  v33[5] = a8;
  v33[6] = a9;
  v33[7] = a10;
  v33[8] = a11;
  v33[9] = a12;
  v33[10] = a13;
  v33[11] = a14;
  v33[12] = a15;
  v33[13] = a16;
  v33[14] = a17;
  v34 = BYTE1(a17);
  v35 = BYTE2(a17);
  v36 = BYTE3(a17);
  v37 = BYTE4(a17);
  v38 = *(&a17 + 5);
  v39 = a5 | a6;
  v40 = a17 ^ 1;
  v41 = a11 ^ 1;
  v42 = 0;
  v43 = 0;
  v44 = *(&a17 + 9);
  v46 = *(&a17 + 13);
  v47 = __PAIR16__(a18, HIBYTE(a17));
  v48 = a19;
  v49 = a12 & a17 | BYTE3(a17) | BYTE2(a17);
  v50 = a18 ^ 1;
  v51 = a20;
  result = ggl::packFunctionConstantKey(v33, BYTE5(a17));
  v25 = *(a2 + 104);
  if (!v25)
  {
    goto LABEL_17;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = result;
    if (result >= v25)
    {
      v27 = result % v25;
    }
  }

  else
  {
    v27 = (v25 - 1) & result;
  }

  v28 = *(*(a2 + 96) + 8 * v27);
  if (!v28 || (v29 = *v28) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v30 = v29[1];
    if (v30 == result)
    {
      break;
    }

    if (v26.u32[0] > 1uLL)
    {
      if (v30 >= v25)
      {
        v30 %= v25;
      }
    }

    else
    {
      v30 &= v25 - 1;
    }

    if (v30 != v27)
    {
      goto LABEL_17;
    }

LABEL_16:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_17;
    }
  }

  if (v29[2] != result)
  {
    goto LABEL_16;
  }

  v31 = v29[4];
  *a1 = v29[3];
  a1[1] = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2810A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31)
{
  v34 = v32[4];
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  operator delete(v32);
  std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  _Unwind_Resume(a1);
}

uint64_t ggl::packFunctionConstantKey(ggl *this, const BOOL *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    if (*(this + v2))
    {
      v4 = 1 << v2;
    }

    else
    {
      v4 = 0;
    }

    v3 += v4;
    ++v2;
  }

  while (v2 != 64);
  return v3;
}

void ggl::MeshTyped<ggl::DaVinci::CompressedPositionVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::DaVinci::CompressedPositionVbo>::attributesReflection(void)::r = &ggl::DaVinci::compressedPositionVboReflection;
    }

    ggl::MeshTyped<ggl::DaVinci::CompressedPositionVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DaVinci::CompressedPositionVbo>::attributesReflection(void)::r;
    unk_1ED65D360 = 1;
  }
}

unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::GroundDepthPipelineState,std::shared_ptr<ggl::DaVinciGroundDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, __int128 a17, char a18, char a19, unsigned __int8 a20, char a21, char a22, char a23)
{
  v53 = *MEMORY[0x1E69E9840];
  memset(v52, 0, sizeof(v52));
  v33[0] = a3;
  v45 = 0;
  v33[1] = a4;
  v33[2] = a5;
  v33[3] = a6;
  v33[4] = a7;
  v33[5] = a8;
  v33[6] = a9;
  v33[7] = a10;
  v33[8] = a11;
  v33[9] = a12;
  v33[10] = a13;
  v33[11] = a14;
  v33[12] = a15;
  v33[13] = a16;
  v33[14] = a17;
  v34 = BYTE1(a17);
  v35 = BYTE2(a17);
  v36 = BYTE3(a17);
  v37 = BYTE4(a17);
  v38 = *(&a17 + 5);
  v39 = a5 | a6;
  v40 = a17 ^ 1;
  v41 = a11 ^ 1;
  v42 = 0;
  v43 = 0;
  v44 = *(&a17 + 9);
  v46 = *(&a17 + 13);
  v47 = __PAIR16__(a18, HIBYTE(a17));
  v48 = a19;
  v49 = a12 & a17 | BYTE3(a17) | BYTE2(a17);
  v50 = a18 ^ 1;
  v51 = a20;
  result = ggl::packFunctionConstantKey(v33, BYTE5(a17));
  v25 = *(a2 + 104);
  if (!v25)
  {
    goto LABEL_17;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = result;
    if (result >= v25)
    {
      v27 = result % v25;
    }
  }

  else
  {
    v27 = (v25 - 1) & result;
  }

  v28 = *(*(a2 + 96) + 8 * v27);
  if (!v28 || (v29 = *v28) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v30 = v29[1];
    if (v30 == result)
    {
      break;
    }

    if (v26.u32[0] > 1uLL)
    {
      if (v30 >= v25)
      {
        v30 %= v25;
      }
    }

    else
    {
      v30 &= v25 - 1;
    }

    if (v30 != v27)
    {
      goto LABEL_17;
    }

LABEL_16:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_17;
    }
  }

  if (v29[2] != result)
  {
    goto LABEL_16;
  }

  v31 = v29[4];
  *a1 = v29[3];
  a1[1] = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B28118B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31)
{
  v34 = v32[4];
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  operator delete(v32);
  std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  _Unwind_Resume(a1);
}

void *ggl::ConstantData::ConstantData(uint64_t a1, uint64_t a2, char a3)
{
  result = ggl::BufferData::BufferData(a1, *(a2 + 24), 2, a3, 6, 1);
  *result = &unk_1F2A5D580;
  result[25] = a2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::GroundPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::DaVinci::GroundPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::DaVinci::GroundPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundPipelineSetup *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__func<md::DaVinciGroundRenderResources::DaVinciGroundRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2,std::allocator<md::DaVinciGroundRenderResources::DaVinciGroundRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2>,ggl::DaVinci::GroundNonCompressedPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A31438;
  a2[1] = v2;
  return result;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GroundNonCompressedPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::DaVinci::GroundNonCompressedPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::DaVinci::GroundNonCompressedPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::DaVinciGroundRenderResources::DaVinciGroundRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4,std::allocator<md::DaVinciGroundRenderResources::DaVinciGroundRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4>,ggl::DaVinci::GroundDepthPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A314C8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::GroundDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundDepthPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundDepthPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::DaVinci::GroundDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundDepthPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::GroundShadowMapPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundShadowMapPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundShadowMapPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::DaVinci::GroundShadowMapPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundShadowMapPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::DaVinci::GroundShadowMapPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::DaVinci::GroundShadowMapPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::DaVinci::LinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::LinearDepthPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::LinearDepthPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::DaVinci::LinearDepthPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::LinearDepthPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::DaVinci::LinearDepthPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::PackedLinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::PackedLinearDepthPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::PackedLinearDepthPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::DaVinci::PackedLinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::PackedLinearDepthPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::DaVinciGroundRenderResources::DaVinciGroundRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_10,std::allocator<md::DaVinciGroundRenderResources::DaVinciGroundRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_10>,ggl::DaVinci::PackedLinearDepthPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A31678;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::DaVinci::PackedLinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::PackedLinearDepthPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::PackedLinearDepthPipelineSetup *>(v5, v4);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::DaVinci::RibbonPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::RibbonPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::RibbonPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::DaVinci::RibbonPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> * ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> * ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>(v5, v4);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> * ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ggl::ResourceAccessor::accessBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a6 & 0xFFFFFFFD) == 0 && (*(a3 + 16) & 2) == 0 && atomic_load_explicit(&ggl::ResourceAccessor::accessBuffer(ggl::ResourceAccessor*,ggl::BufferData const*,gm::Range<unsigned long>,ggl::BufferAccess,ggl::BufferSync)::flag, memory_order_acquire) != -1)
  {
    v17 = &v15;
    v16 = &v17;
    std::__call_once(&ggl::ResourceAccessor::accessBuffer(ggl::ResourceAccessor*,ggl::BufferData const*,gm::Range<unsigned long>,ggl::BufferAccess,ggl::BufferSync)::flag, &v16, std::__call_once_proxy[abi:nn200100]<std::tuple<ggl::ResourceAccessor::accessBuffer(ggl::ResourceAccessor*,ggl::BufferData const*,gm::Range<unsigned long>,ggl::BufferAccess,ggl::BufferSync)::$_0 &&>>);
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 33) = a7;
  if (a5 == a4)
  {
    result = 0;
  }

  else if (a2 && *(a3 + 17) != 2)
  {
    result = (*(*a2 + 56))(a2, a3, a4, a5, a6, a7);
  }

  else
  {
    result = *(a3 + 72) + a4;
  }

  *(a1 + 40) = result;
  return result;
}

uint64_t ggl::BufferMemory::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    ggl::ResourceAccessor::_endAccess(v4, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 33));
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 40) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  return a1;
}

uint64_t ggl::ResourceAccessor::_endAccess(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 != a4)
  {
    v7 = a7;
    v8 = a6;
    if (a2 && *(a3 + 17) != 2)
    {
      result = (*(*a2 + 64))(a2, result, a3, a4, a5, a6, a7);
    }

    if (v8 && !v7)
    {
      v13 = *(a3 + 56);
      v12 = *(a3 + 64);
      if (v12 == v13)
      {
        v13 = *(a3 + 80) - *(a3 + 72);
      }

      if (a4 < v13)
      {
        v13 = a4;
      }

      if (v12 <= a5)
      {
        v12 = a5;
      }

      if (v12 == v13)
      {
        v12 = v13 + *(a3 + 80) - *(a3 + 72);
      }

      *(a3 + 56) = v13;
      *(a3 + 64) = v12;
    }
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> * ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>(v5, v4);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Tile::Clipping> *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::Clipping>>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> * ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *ggl::ComputeSetup::ComputeSetup(void *a1, uint64_t *a2)
{
  v2 = a1;
  *a1 = &unk_1F2A5C418;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  a1[9] = 0;
  v3 = (a1 + 9);
  a1[13] = 0;
  v4 = (a1 + 13);
  a1[10] = 0;
  a1[11] = 0;
  a1[14] = 0;
  a1[15] = 0;
  a1[17] = 0;
  v5 = (a1 + 17);
  a1[18] = 0;
  a1[19] = 0;
  v6 = *a2;
  a1[21] = *a2;
  v7 = a2[1];
  a1[22] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = a1[21];
    v9 = a1[1];
    v8 = a1[2];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  a1[23] = 0;
  v10 = *(v6 + 40);
  v11 = v10[4];
  v64 = 0uLL;
  v12 = (v8 - v9) >> 4;
  if (v11 <= v12)
  {
    if (v11 >= v12)
    {
      goto LABEL_21;
    }

    v29 = (v9 + 16 * v11);
    goto LABEL_20;
  }

  v13 = a1[3];
  if (v11 - v12 <= (v13 - v8) >> 4)
  {
    v29 = &v8[2 * (v11 - v12)];
    v30 = 16 * v11 - 16 * v12;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8 += 2;
      v30 -= 16;
    }

    while (v30);
LABEL_20:
    a1[2] = v29;
    goto LABEL_21;
  }

  v60 = (a1 + 13);
  v62 = (a1 + 17);
  if (v11 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v14 = v13 - v9;
  v15 = v14 >> 3;
  if (v14 >> 3 <= v11)
  {
    v15 = v11;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF0)
  {
    v16 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = v15;
  }

  v17 = ggl::zone_mallocator::instance(a1);
  geo::read_write_lock::read_lock((v17 + 32));
  v58 = v16;
  v18 = malloc_type_zone_malloc(*v17, 16 * v16, 0x1020040EDED9539uLL);
  atomic_fetch_add((v17 + 24), 1u);
  geo::read_write_lock::unlock((v17 + 32));
  v19 = (v8 + v18 - v9);
  v20 = &v18[16 * v11];
  v21 = v9 + 16 * v11 - v8;
  v22 = v19;
  do
  {
    *v22++ = v64;
    v21 -= 16;
  }

  while (v21);
  v23 = &v18[16 * v58];
  v24 = v2[1];
  v25 = v2[2] - v24;
  v26 = v19 - v25;
  a1 = memcpy(v19 - v25, v24, v25);
  v27 = v2[1];
  v2[1] = v26;
  v2[2] = v20;
  v2[3] = v23;
  v4 = v60;
  v5 = v62;
  if (v27)
  {
    v28 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture *>(v28, v27);
  }

LABEL_21:
  v31 = v10[6];
  v64 = 0uLL;
  v33 = v2[5];
  v32 = v2[6];
  v34 = (v32 - v33) >> 4;
  if (v31 <= v34)
  {
    if (v31 >= v34)
    {
      goto LABEL_38;
    }

    v52 = (v33 + 16 * v31);
LABEL_37:
    v2[6] = v52;
    goto LABEL_38;
  }

  v35 = v2[7];
  if (v31 - v34 <= (v35 - v32) >> 4)
  {
    v52 = &v32[2 * (v31 - v34)];
    v53 = 16 * v31 - 16 * v34;
    do
    {
      *v32 = 0;
      v32[1] = 0;
      v32 += 2;
      v53 -= 16;
    }

    while (v53);
    goto LABEL_37;
  }

  v61 = v4;
  v63 = v5;
  if (v31 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v36 = v35 - v33;
  v37 = v36 >> 3;
  if (v36 >> 3 <= v31)
  {
    v37 = v31;
  }

  if (v36 >= 0x7FFFFFFFFFFFFFF0)
  {
    v38 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v38 = v37;
  }

  v39 = ggl::zone_mallocator::instance(a1);
  geo::read_write_lock::read_lock((v39 + 32));
  v59 = v38;
  v40 = malloc_type_zone_malloc(*v39, 16 * v38, 0x1020040EDED9539uLL);
  atomic_fetch_add((v39 + 24), 1u);
  geo::read_write_lock::unlock((v39 + 32));
  v41 = (v32 + v40 - v33);
  v42 = &v40[16 * v31];
  v43 = v33 + 16 * v31 - v32;
  v44 = v41;
  do
  {
    *v44++ = v64;
    v43 -= 16;
  }

  while (v43);
  v45 = &v40[16 * v59];
  v46 = v2[5];
  v47 = v2[6] - v46;
  v48 = v41 - v47;
  v49 = memcpy(v41 - v47, v46, v47);
  v50 = v2[5];
  v2[5] = v48;
  v2[6] = v42;
  v2[7] = v45;
  v4 = v61;
  v5 = v63;
  if (v50)
  {
    v51 = ggl::zone_mallocator::instance(v49);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture *>(v51, v50);
  }

LABEL_38:
  v54 = v10[2];
  *&v64 = 0;
  std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::resize(v3, v54, &v64);
  v55 = (v2[6] - v2[5]) >> 4;
  v64 = 0uLL;
  std::vector<std::shared_ptr<ggl::BufferData>,geo::allocator_adapter<std::shared_ptr<ggl::BufferData>,ggl::zone_mallocator>>::resize(v4, v55, &v64);
  v56 = (v2[2] - v2[1]) >> 4;
  v64 = 0uLL;
  std::vector<std::shared_ptr<ggl::BufferData>,geo::allocator_adapter<std::shared_ptr<ggl::BufferData>,ggl::zone_mallocator>>::resize(v5, v56, &v64);
  return v2;
}

void std::vector<std::shared_ptr<ggl::BufferData>,geo::allocator_adapter<std::shared_ptr<ggl::BufferData>,ggl::zone_mallocator>>::resize(ggl::zone_mallocator *a1, unint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = &v6[-*a1];
  v8 = v7 >> 4;
  if (a2 <= v7 >> 4)
  {
    if (a2 < v8)
    {
      v26 = &v5[16 * a2];
      while (v6 != v26)
      {
        v27 = *(v6 - 1);
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v27);
        }

        v6 -= 16;
      }

      *(a1 + 1) = v26;
    }
  }

  else
  {
    v10 = a2 - v8;
    v11 = *(a1 + 2);
    if (v10 <= (v11 - v6) >> 4)
    {
      v28 = &v6[16 * v10];
      do
      {
        v29 = a3[1];
        *v6 = *a3;
        *(v6 + 1) = v29;
        if (v29)
        {
          atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
        }

        v6 += 16;
      }

      while (v6 != v28);
      *(a1 + 1) = v28;
    }

    else
    {
      if (a2 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = v11 - v5;
      v13 = v12 >> 3;
      if (v12 >> 3 <= a2)
      {
        v13 = a2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      v15 = ggl::zone_mallocator::instance(a1);
      geo::read_write_lock::read_lock((v15 + 32));
      v16 = malloc_type_zone_malloc(*v15, 16 * v14, 0x20040A4A59CD2uLL);
      atomic_fetch_add((v15 + 24), 1u);
      geo::read_write_lock::unlock((v15 + 32));
      v17 = &v16[v7];
      v18 = &v16[16 * a2];
      v19 = &v16[v7];
      do
      {
        v20 = a3[1];
        *v19 = *a3;
        *(v19 + 1) = v20;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        v19 += 16;
      }

      while (v19 != v18);
      v21 = *(a1 + 1) - *a1;
      v22 = &v17[-v21];
      v23 = memcpy(&v17[-v21], *a1, v21);
      v24 = *a1;
      *a1 = v22;
      *(a1 + 1) = v18;
      *(a1 + 2) = &v16[16 * v14];
      if (v24)
      {
        v25 = ggl::zone_mallocator::instance(v23);

        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v25, v24);
      }
    }
  }
}

void md::FlyoverRenderResources::FlyoverRenderResources(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 32;
  v6 = malloc_type_malloc(0xF10uLL, 0x1020040EDED9539uLL);
  *v6 = 0u;
  *a1 = v6;
  *(a1 + 8) = v6;
  ggl::RenderDataHolder::RenderDataHolder(a1 + 24);
  *(a1 + 24) = &unk_1F2A5C710;
  *(a1 + 60) = 768;
  *(a1 + 68) = 0;
  *(a1 + 72) = 1;
  *(a1 + 81) = 768;
  *(a1 + 83) = 0u;
  *(a1 + 99) = 0;
  *(a1 + 148) = 0u;
  *(a1 + 212) = 257;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  ggl::RenderDataHolder::RenderDataHolder(a1 + 240);
  *(a1 + 240) = &unk_1F2A5C710;
  *(a1 + 276) = 0xBF80000000000300;
  *(a1 + 284) = -1063256064;
  *(a1 + 288) = 1;
  *(a1 + 296) = 0;
  *(a1 + 298) = 3;
  *(a1 + 299) = 0u;
  *(a1 + 315) = 0;
  *(a1 + 364) = 0u;
  *(a1 + 428) = 257;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  ggl::RenderDataHolder::RenderDataHolder(a1 + 456);
  *(a1 + 456) = &unk_1F2A5C710;
  *(a1 + 492) = 768;
  *(a1 + 500) = 0;
  *(a1 + 504) = 0x20A0000202020100;
  *(a1 + 513) = 768;
  *(a1 + 515) = 0u;
  *(a1 + 531) = 0;
  *(a1 + 580) = 0u;
  *(a1 + 644) = 257;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0;
  ggl::RenderDataHolder::RenderDataHolder(a1 + 672);
  *(a1 + 672) = &unk_1F2A5C710;
  *(a1 + 708) = 768;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0x2000A00000000400;
  *(a1 + 729) = 768;
  *(a1 + 731) = 0u;
  *(a1 + 747) = 0;
  *(a1 + 796) = 0u;
  *(a1 + 860) = 257;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0;
  ggl::RenderDataHolder::RenderDataHolder(a1 + 888);
  *(a1 + 888) = &unk_1F2A5C710;
  *(a1 + 924) = 256;
  *(a1 + 932) = 0;
  *(a1 + 936) = 0xFF0000000000;
  *(a1 + 945) = 768;
  *(a1 + 947) = 0u;
  *(a1 + 963) = 0;
  *(a1 + 1012) = 0u;
  *(a1 + 1076) = 257;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0;
  *(a1 + 80) = 1;
  *(a1 + 944) = 1;
  *(a1 + 728) = 1;
  *(a1 + 512) = 1;
  if (v5)
  {
    [v5 standardCommandBufferSelector];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  v7 = *(*(*(a2 + 32) + 80) + 64);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B2815A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ggl::RenderDataHolder *a10, ggl::RenderDataHolder *a11, ggl::RenderDataHolder *a12, ggl::RenderDataHolder *a13, ggl::RenderDataHolder *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100](v45);
  std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v44);
  std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v43);
  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *)>::~__value_func[abi:nn200100](&a38);
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100](&a42);
  MEMORY[0x1B8C62190](v43, 0x10A0C405CD4001ALL);
  v47 = *(v42 + 1264);
  *(v42 + 1264) = 0;
  if (v47)
  {
    MEMORY[0x1B8C62190](v47, 0x1000C4049ECCB0CLL);
  }

  v48 = *(v42 + 1256);
  *(v42 + 1256) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::reset[abi:nn200100]((v42 + 1248), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::reset[abi:nn200100]((v42 + 1240), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::reset[abi:nn200100]((v42 + 1232), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::reset[abi:nn200100]((v42 + 1224), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::reset[abi:nn200100]((v42 + 1216), 0);
  v49 = *(v42 + 1208);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v49);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::FlyoverNight::FlyoverPolarPipelineSetup>>::reset[abi:nn200100]((v42 + 1192), 0);
  v50 = *(v42 + 1184);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::FlyoverNight::FlyoverPipelineSetup>>::reset[abi:nn200100]((v42 + 1168), 0);
  v51 = *(v42 + 1160);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::Flyover::FlyoverPolarPipelineSetup>>::reset[abi:nn200100]((v42 + 1144), 0);
  v52 = *(v42 + 1136);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::Flyover::FlyoverPipelineSetup>>::reset[abi:nn200100]((v42 + 1120), 0);
  v53 = *(v42 + 1112);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  ggl::RenderDataHolder::~RenderDataHolder(a10);
  ggl::RenderDataHolder::~RenderDataHolder(a11);
  ggl::RenderDataHolder::~RenderDataHolder(a12);
  ggl::RenderDataHolder::~RenderDataHolder(a13);
  ggl::RenderDataHolder::~RenderDataHolder(a14);
  md::FrameAllocator<ggl::RenderItem>::reset(v42);
  free(*v42);

  _Unwind_Resume(a1);
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::attributesReflection(void)::r = &ggl::CommonMesh::bufferPos4UVReflection;
    }

    ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::typedReflection(void)::r = &ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::attributesReflection(void)::r;
    unk_1EB8411C0 = 1;
  }
}

ggl::zone_mallocator *std::vector<ggl::Flyover::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Flyover::FlyoverPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Flyover::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::FlyoverRenderResources::FlyoverRenderResources(md::SharedDeviceResources const&,VKSharedResources *,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::FlyoverRenderResources::FlyoverRenderResources(md::SharedDeviceResources const&,VKSharedResources *,ggl::RenderTargetFormat const&)::$_0>,ggl::Flyover::FlyoverPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1F7E8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Flyover::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Flyover::FlyoverPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Flyover::FlyoverPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Flyover::FlyoverPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Flyover::FlyoverPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Flyover::FlyoverPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Flyover::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Flyover::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Flyover::FlyoverPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ggl::MeshTyped<ggl::FlyoverCommon::PolarVertex>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::FlyoverCommon::PolarVertex>::attributesReflection(void)::r = &ggl::FlyoverCommon::polarVertexReflection;
    }

    ggl::MeshTyped<ggl::FlyoverCommon::PolarVertex>::typedReflection(void)::r = &ggl::MeshTyped<ggl::FlyoverCommon::PolarVertex>::attributesReflection(void)::r;
    qword_1EB83DF08 = 1;
  }
}

uint64_t std::__function::__func<md::FlyoverRenderResources::FlyoverRenderResources(md::SharedDeviceResources const&,VKSharedResources *,ggl::RenderTargetFormat const&)::$_2,std::allocator<md::FlyoverRenderResources::FlyoverRenderResources(md::SharedDeviceResources const&,VKSharedResources *,ggl::RenderTargetFormat const&)::$_2>,ggl::Flyover::FlyoverPolarPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1F8B0;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Flyover::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPolarPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Flyover::FlyoverPolarPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Flyover::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPolarPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Flyover::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPolarPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Flyover::FlyoverPolarPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Flyover::FlyoverPolarPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::Flyover::FlyoverPolarPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::vector<ggl::FlyoverNight::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FlyoverNight::FlyoverPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::FlyoverNight::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::FlyoverRenderResources::FlyoverRenderResources(md::SharedDeviceResources const&,VKSharedResources *,ggl::RenderTargetFormat const&)::$_4,std::allocator<md::FlyoverRenderResources::FlyoverRenderResources(md::SharedDeviceResources const&,VKSharedResources *,ggl::RenderTargetFormat const&)::$_4>,ggl::FlyoverNight::FlyoverPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1F978;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::FlyoverNight::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FlyoverNight::FlyoverPipelineSetup *>(v5, v4);
  }

  return a1;
}

ggl::zone_mallocator *std::vector<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FlyoverNight::FlyoverPolarPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::FlyoverRenderResources::FlyoverRenderResources(md::SharedDeviceResources const&,VKSharedResources *,ggl::RenderTargetFormat const&)::$_6,std::allocator<md::FlyoverRenderResources::FlyoverRenderResources(md::SharedDeviceResources const&,VKSharedResources *,ggl::RenderTargetFormat const&)::$_6>,ggl::FlyoverNight::FlyoverPolarPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1FA40;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FlyoverNight::FlyoverPolarPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::FlyoverNight::FlyoverPolarPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::FlyoverNight::FlyoverPolarPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::FlyoverNight::FlyoverPolarPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::FlyoverNight::FlyoverPolarPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::FlyoverNight::FlyoverPolarPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1B28172BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

ggl::RenderDataHolder *ggl::PolygonSolidFill::MeshPipelineState::MeshPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5)
{
  {
    v14 = a4;
    v16 = a2;
    v17 = a3;
    a2 = v16;
    a3 = v17;
    a4 = v14;
    if (v15)
    {
      {
        if (v15)
        {
          ggl::MeshTyped<ggl::PolygonBase::DefaultVbo>::typedReflection();
          ggl::PolygonSolidFill::MeshPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::PolygonBase::DefaultVbo>::typedReflection(void)::r;
          unk_1EB837930 = &ggl::PolygonSolidFill::pipelineDataMeshPipelineDeviceStructs(void)::ref;
          qword_1EB837938 = 0;
          {
            ggl::PolygonSolidFill::pipelineDataMeshPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
            *algn_1EB837858 = ggl::Tile::Transform::reflection(void)::reflection;
            qword_1EB837860 = ggl::PolygonSolidFill::SolidFill::reflection(void)::reflection;
          }

          qword_1EB837940 = &ggl::PolygonSolidFill::pipelineDataMeshPipelineConstantStructs(void)::ref;
          unk_1EB837948 = xmmword_1B33B0910;
        }
      }

      ggl::PolygonSolidFill::MeshPipelineState::typedReflection(void)::ref = &ggl::PolygonSolidFill::MeshPipelineSetup::typedReflection(void)::ref;
      ggl::PolygonSolidFillShader::typedReflection(v15);
      qword_1ED660AD8 = &ggl::PolygonSolidFillShader::typedReflection(void)::ref;
      {
        ggl::PolygonSolidFill::pipelineStateMeshPipelineAttributeStructBinding(void)::attr = 0;
        *algn_1EB837778 = 0;
        qword_1EB837780 = "";
        dword_1EB837788 = 0;
        qword_1EB837790 = &ggl::PolygonSolidFill::pipelineStateMeshPipelineAttributeBinding_0(void)::attr;
        unk_1EB837798 = 1;
      }

      qword_1ED660AE0 = &ggl::PolygonSolidFill::pipelineStateMeshPipelineAttributeStructBinding(void)::attr;
      *algn_1ED660AE8 = 1;
      qword_1ED660AF0 = 0;
      unk_1ED660AF8 = 0;
      qword_1ED660B00 = &ggl::PolygonSolidFill::pipelineStateMeshPipelineDeviceStructBinding(void)::ref;
      unk_1ED660B08 = 0;
      {
        ggl::PolygonSolidFill::pipelineStateMeshPipelineConstantStructBinding(void)::ref = 0;
        *algn_1EB8377A8 = 0;
        qword_1EB8377B0 = "view";
        dword_1EB8377B8 = 3;
        qword_1EB8377C0 = &ggl::PolygonSolidFill::pipelineStateMeshPipelineConstantViewBinding(void)::reflection;
        unk_1EB8377C8 = xmmword_1B33B0750;
        qword_1EB8377D8 = 1;
        unk_1EB8377E0 = "transform";
        dword_1EB8377E8 = 3;
        qword_1EB8377F0 = &ggl::PolygonSolidFill::pipelineStateMeshPipelineConstantTransformBinding(void)::reflection;
        unk_1EB8377F8 = xmmword_1B33B0A10;
        qword_1EB837808 = 2;
        unk_1EB837810 = "solidFill";
        dword_1EB837818 = 3;
        qword_1EB837820 = &ggl::PolygonSolidFill::pipelineStateMeshPipelineConstantSolidFillBinding(void)::reflection;
        unk_1EB837828 = 5;
      }

      qword_1ED660B10 = &ggl::PolygonSolidFill::pipelineStateMeshPipelineConstantStructBinding(void)::ref;
      *algn_1ED660B18 = 3;
      a4 = v14;
      a2 = v16;
      a3 = v17;
    }
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v20 = *a3;
  *&v20[16] = *(a3 + 16);
  *&v20[28] = *(a3 + 28);
  v9 = *(a3 + 44);
  v18 = *a4;
  v19 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::PolygonSolidFill::MeshPipelineState::typedReflection(void)::ref;
  *(this + 6) = v8;
  *(this + 7) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v12 = this + i;
    v12[64] = 0;
    *(v12 + 68) = xmmword_1B33B0760;
    *(v12 + 84) = 0;
    *(v12 + 100) = 0;
    *(v12 + 92) = 0;
  }

  *(this + 16) = v18;
  *(this + 17) = v19;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v20;
  *(this + 76) = *&v20[12];
  *(this + 92) = *&v20[28];
  *(this + 108) = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = &unk_1F2A29180;
  *(this + 305) = a5;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v10);
  *(this + 288) = 1;
  return this;
}

uint64_t std::__function::__func<md::CartographicTiledRenderResources::CartographicTiledRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::CartographicTiledRenderResources::CartographicTiledRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0>,ggl::PolygonSolidFill::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2F0E0;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result, unint64_t a2)
{
  v4 = *result;
  if (a2 > (*(result + 2) - *result) >> 3)
  {
    v16[9] = v2;
    v16[10] = v3;
    v6 = result;
    v7 = *(result + 1) - v4;
    v16[4] = result + 24;
    v8 = ggl::zone_mallocator::instance(result);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonSolidFill::MeshPipelineSetup *>(v8, a2);
    v10 = &v9[v7];
    v11 = &v9[8 * a2];
    v12 = *(v6 + 1) - *v6;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *v6, v12);
    v14 = *v6;
    *v6 = v13;
    *(v6 + 1) = v10;
    v15 = *(v6 + 2);
    *(v6 + 2) = v11;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    return std::__split_buffer<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v16);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonSolidFill::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::PolygonSolidFill::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::PolygonSolidFill::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void md::VKMRenderResourcesStore::VKMRenderResourcesStore(md::VKMRenderResourcesStore *this, md::DaVinciGroundRenderResources *a2, md::FlyoverRenderResources *a3)
{
  v3 = 0;
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  do
  {
    v4 = this + v3;
    *(v4 + 88) = 0uLL;
    *(v4 + 72) = 0uLL;
    *(v4 + 26) = 1065353216;
    v3 += 40;
  }

  while (v3 != 120);
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 30) = 0;
  *(this + 56) = 1065353216;
  *(this + 29) = this + 240;
  *(this + 31) = 0;
  *(this + 16) = xmmword_1B33B1D40;
  *(this + 34) = 0;
  *(this + 35) = &unk_1F2A21F40;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  operator new();
}

void sub_1B281C60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, void *a63)
{
  v76 = *(v72 + v73);
  if (v76)
  {
    v72[1539] = v76;
    operator delete(v76);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a20);
  v72[1501] = &unk_1F2A23D48;
  v77 = v72[1530];
  if (v77)
  {
    v72[1531] = v77;
    operator delete(v77);
  }

  v78 = v72[1527];
  if (v78)
  {
    v72[1528] = v78;
    operator delete(v78);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(STACK[0x318]);
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> * ()(void)>::~__value_func[abi:nn200100](v74 - 128);
  v72[1447] = a21;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 1496));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a22);
  v72[1447] = a23;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a24);
  v72[1447] = &unk_1F2A23C40;
  v79 = v72[1476];
  if (v79)
  {
    v72[1477] = v79;
    operator delete(v79);
  }

  v80 = v72[1473];
  if (v80)
  {
    v72[1474] = v80;
    operator delete(v80);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(STACK[0x320]);
  v72[1393] = a25;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 1442));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a26);
  v72[1393] = a27;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a28);
  v72[1393] = &unk_1F2A23B38;
  v81 = v72[1422];
  if (v81)
  {
    v72[1423] = v81;
    operator delete(v81);
  }

  v82 = v72[1419];
  if (v82)
  {
    v72[1420] = v82;
    operator delete(v82);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(STACK[0x328]);
  v72[1367] = &unk_1F2A23A30;
  v83 = v72[1390];
  if (v83)
  {
    v72[1391] = v83;
    operator delete(v83);
  }

  v84 = v72[1387];
  if (v84)
  {
    v72[1388] = v84;
    operator delete(v84);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(STACK[0x340]);
  v72[1313] = a29;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 1362));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a30);
  v72[1313] = a31;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a32);
  v72[1313] = &unk_1F2A239B0;
  v85 = v72[1342];
  if (v85)
  {
    v72[1343] = v85;
    operator delete(v85);
  }

  v86 = v72[1339];
  if (v86)
  {
    v72[1340] = v86;
    operator delete(v86);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(STACK[0x348]);
  v72[1259] = a33;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 1308));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a34);
  v72[1259] = a35;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a36);
  v72[1259] = &unk_1F2A238A8;
  v87 = v72[1288];
  if (v87)
  {
    v72[1289] = v87;
    operator delete(v87);
  }

  v88 = v72[1285];
  if (v88)
  {
    v72[1286] = v88;
    operator delete(v88);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(STACK[0x350]);
  v72[1233] = &unk_1F2A237A0;
  v89 = v72[1256];
  if (v89)
  {
    v72[1257] = v89;
    operator delete(v89);
  }

  v90 = v72[1253];
  if (v90)
  {
    v72[1254] = v90;
    operator delete(v90);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(STACK[0x358]);
  v72[1197] = a38;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100](a37);
  v72[1197] = &unk_1F2A23720;
  v91 = v72[1226];
  if (v91)
  {
    v72[1227] = v91;
    operator delete(v91);
  }

  v92 = v72[1223];
  if (v92)
  {
    v72[1224] = v92;
    operator delete(v92);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(*(v74 - 184));
  v72[1171] = &unk_1F2A23638;
  v93 = v72[1194];
  if (v93)
  {
    v72[1195] = v93;
    operator delete(v93);
  }

  v94 = v72[1191];
  if (v94)
  {
    v72[1192] = v94;
    operator delete(v94);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(STACK[0x360]);
  v72[1135] = a40;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> * ()(void)>::~__value_func[abi:nn200100](a39);
  v72[1135] = &unk_1F2A235B8;
  v95 = v72[1164];
  if (v95)
  {
    v72[1165] = v95;
    operator delete(v95);
  }

  v96 = v72[1161];
  if (v96)
  {
    v72[1162] = v96;
    operator delete(v96);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(*(v74 - 176));
  v72[1099] = a42;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100](a41);
  v72[1099] = &unk_1F2A234B0;
  v97 = v72[1128];
  if (v97)
  {
    v72[1129] = v97;
    operator delete(v97);
  }

  v98 = v72[1125];
  if (v98)
  {
    v72[1126] = v98;
    operator delete(v98);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(*(v74 - 168));
  v72[1063] = a44;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100](a43);
  v72[1063] = &unk_1F2A233A8;
  v99 = v72[1092];
  if (v99)
  {
    v72[1093] = v99;
    operator delete(v99);
  }

  v100 = v72[1089];
  if (v100)
  {
    v72[1090] = v100;
    operator delete(v100);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(*(v74 - 160));
  v72[1027] = a46;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100](a45);
  v72[1027] = &unk_1F2A232A0;
  v101 = v72[1056];
  if (v101)
  {
    v72[1057] = v101;
    operator delete(v101);
  }

  v102 = v72[1053];
  if (v102)
  {
    v72[1054] = v102;
    operator delete(v102);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(*(v74 - 152));
  v72[991] = a48;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> * ()(void)>::~__value_func[abi:nn200100](a47);
  v72[991] = &unk_1F2A23198;
  v103 = v72[1020];
  if (v103)
  {
    v72[1021] = v103;
    operator delete(v103);
  }

  v104 = v72[1017];
  if (v104)
  {
    v72[1018] = v104;
    operator delete(v104);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(*(v74 - 144));
  v72[955] = a50;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> * ()(void)>::~__value_func[abi:nn200100](a49);
  v72[955] = &unk_1F2A23090;
  v105 = v72[984];
  if (v105)
  {
    v72[985] = v105;
    operator delete(v105);
  }

  v106 = v72[981];
  if (v106)
  {
    v72[982] = v106;
    operator delete(v106);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(*(v74 - 136));
  v72[929] = &unk_1F2A22FA8;
  v107 = v72[952];
  if (v107)
  {
    v72[953] = v107;
    operator delete(v107);
  }

  v108 = v72[949];
  if (v108)
  {
    v72[950] = v108;
    operator delete(v108);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(STACK[0x368]);
  v72[903] = &unk_1F2A22F28;
  v109 = v72[926];
  if (v109)
  {
    v72[927] = v109;
    operator delete(v109);
  }

  v110 = v72[923];
  if (v110)
  {
    v72[924] = v110;
    operator delete(v110);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(STACK[0x370]);
  v72[877] = &unk_1F2A22EA8;
  v111 = v72[900];
  if (v111)
  {
    v72[901] = v111;
    operator delete(v111);
  }

  v112 = v72[897];
  if (v112)
  {
    v72[898] = v112;
    operator delete(v112);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(STACK[0x378]);
  v72[851] = &unk_1F2A22E28;
  v113 = v72[874];
  if (v113)
  {
    v72[875] = v113;
    operator delete(v113);
  }

  v114 = v72[871];
  if (v114)
  {
    v72[872] = v114;
    operator delete(v114);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(STACK[0x380]);
  v72[825] = &unk_1F2A22DA8;
  v115 = v72[848];
  if (v115)
  {
    v72[849] = v115;
    operator delete(v115);
  }

  v116 = v72[845];
  if (v116)
  {
    v72[846] = v116;
    operator delete(v116);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(STACK[0x388]);
  v72[771] = a51;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 820));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a52);
  v72[771] = a53;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a54);
  v72[771] = &unk_1F2A22D28;
  v117 = v72[800];
  if (v117)
  {
    v72[801] = v117;
    operator delete(v117);
  }

  v118 = v72[797];
  if (v118)
  {
    v72[798] = v118;
    operator delete(v118);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(STACK[0x390]);
  v72[717] = &unk_1F2A22B98;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 766));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a55);
  v72[717] = a57;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a56);
  v72[717] = &unk_1F2A22BD8;
  v119 = v72[746];
  if (v119)
  {
    v72[747] = v119;
    operator delete(v119);
  }

  v120 = v72[743];
  if (v120)
  {
    v72[744] = v120;
    operator delete(v120);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(STACK[0x398]);
  v72[663] = a58;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 712));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a59);
  v72[663] = a60;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a61);
  v72[663] = &unk_1F2A22B18;
  v121 = v72[692];
  if (v121)
  {
    v72[693] = v121;
    operator delete(v121);
  }

  v122 = v72[689];
  if (v122)
  {
    v72[690] = v122;
    operator delete(v122);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(STACK[0x3A0]);
  v72[609] = &unk_1F2A22988;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 658));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a62);
  v72[609] = a64;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a63);
  v72[609] = &unk_1F2A229C8;
  v123 = v72[638];
  if (v123)
  {
    v72[639] = v123;
    operator delete(v123);
  }

  v124 = v72[635];
  if (v124)
  {
    v72[636] = v124;
    operator delete(v124);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(STACK[0x3A8]);
  v72[555] = a65;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 604));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a66);
  v72[555] = a67;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a68);
  v72[555] = &unk_1F2A22908;
  v125 = v72[584];
  if (v125)
  {
    v72[585] = v125;
    operator delete(v125);
  }

  v126 = v72[581];
  if (v126)
  {
    v72[582] = v126;
    operator delete(v126);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(STACK[0x3B8]);
  v72[501] = &unk_1F2A22778;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 550));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a69);
  v72[501] = a71;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a70);
  v72[501] = &unk_1F2A227B8;
  v127 = v72[530];
  if (v127)
  {
    v72[531] = v127;
    operator delete(v127);
  }

  v128 = v72[527];
  if (v128)
  {
    v72[528] = v128;
    operator delete(v128);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(*(v74 - 248));
  v72[447] = a72;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 496));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(STACK[0x200]);
  v72[447] = STACK[0x208];
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(STACK[0x210]);
  v72[447] = &unk_1F2A226F8;
  v129 = v72[476];
  if (v129)
  {
    v72[477] = v129;
    operator delete(v129);
  }

  v130 = v72[473];
  if (v130)
  {
    v72[474] = v130;
    operator delete(v130);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(*(v74 - 240));
  v72[393] = &unk_1F2A22568;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 442));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(STACK[0x218]);
  v72[393] = STACK[0x228];
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(STACK[0x220]);
  v72[393] = &unk_1F2A225A8;
  v131 = v72[422];
  if (v131)
  {
    v72[423] = v131;
    operator delete(v131);
  }

  v132 = v72[419];
  if (v132)
  {
    v72[420] = v132;
    operator delete(v132);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(*(v74 - 232));
  v72[339] = STACK[0x230];
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 388));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(STACK[0x238]);
  v72[339] = STACK[0x240];
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_recycle_pool(STACK[0x248]);
  v72[339] = &unk_1F2A224E8;
  v133 = v72[368];
  if (v133)
  {
    v72[369] = v133;
    operator delete(v133);
  }

  v134 = v72[365];
  if (v134)
  {
    v72[366] = v134;
    operator delete(v134);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(*(v74 - 224));
  v72[285] = &unk_1F2A22358;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 334));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(STACK[0x250]);
  v72[285] = STACK[0x260];
  md::data_recycle_pool<md::CachedKey<md::StyleSSAOKey>>::~data_recycle_pool(STACK[0x258]);
  v72[285] = &unk_1F2A22398;
  v135 = v72[314];
  if (v135)
  {
    v72[315] = v135;
    operator delete(v135);
  }

  v136 = v72[311];
  if (v136)
  {
    v72[312] = v136;
    operator delete(v136);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(*(v74 - 216));
  v72[231] = STACK[0x268];
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 280));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(STACK[0x270]);
  v72[231] = STACK[0x278];
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_recycle_pool(STACK[0x280]);
  v72[231] = &unk_1F2A222D8;
  v137 = v72[260];
  if (v137)
  {
    v72[261] = v137;
    operator delete(v137);
  }

  v138 = v72[257];
  if (v138)
  {
    v72[258] = v138;
    operator delete(v138);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(*(v74 - 208));
  v72[177] = &unk_1F2A22148;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 226));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(STACK[0x288]);
  v72[177] = STACK[0x298];
  md::data_recycle_pool<md::CachedKey<md::StyleCacheKey>>::~data_recycle_pool(STACK[0x290]);
  v72[177] = &unk_1F2A22188;
  v139 = v72[206];
  if (v139)
  {
    v72[207] = v139;
    operator delete(v139);
  }

  v140 = v72[203];
  if (v140)
  {
    v72[204] = v140;
    operator delete(v140);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(*(v74 - 200));
  v72[123] = STACK[0x2A0];
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v72 + 172));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(STACK[0x2A8]);
  v72[123] = STACK[0x2B0];
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_recycle_pool(STACK[0x2B8]);
  v72[123] = &unk_1F2A220C8;
  v141 = v72[152];
  if (v141)
  {
    v72[153] = v141;
    operator delete(v141);
  }

  v142 = v72[149];
  if (v142)
  {
    v72[150] = v142;
    operator delete(v142);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(*(v74 - 192));
  v72[97] = STACK[0x2C0];
  v143 = v72[120];
  if (v143)
  {
    v72[121] = v143;
    operator delete(v143);
  }

  v144 = v72[117];
  if (v144)
  {
    v72[118] = v144;
    operator delete(v144);
  }

  ecs2::group_storage<geo::handle<md::RenderStateItem>,md::Counter,md::RenderStateStorage>::~group_storage(STACK[0x3B0]);
  v72[71] = STACK[0x2C8];
  v145 = v72[94];
  if (v145)
  {
    v72[95] = v145;
    operator delete(v145);
  }

  v146 = v72[91];
  if (v146)
  {
    v72[92] = v146;
    operator delete(v146);
  }

  ecs2::group_storage<geo::handle<md::PipelineStateItem>,md::Counter,md::PipelineStateStorage>::~group_storage(*(v74 - 256));
  v72[35] = STACK[0x2D0];
  std::__function::__value_func<ggl::PipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v72 + 67));
  v72[35] = &unk_1F2A21F00;
  v147 = v72[64];
  if (v147)
  {
    v72[65] = v147;
    operator delete(v147);
  }

  v148 = v72[61];
  if (v148)
  {
    v72[62] = v148;
    operator delete(v148);
  }

  ecs2::group_storage<geo::handle<md::PipelineItem>,md::Counter,md::PipelineStorage,std::unique_ptr<ggl::PipelineSetup>>::~group_storage(STACK[0x2E8]);
  geo::Pool<ggl::RenderItem>::~Pool(STACK[0x2D8]);
  v149 = (v72 + 19);
  v150 = -120;
  do
  {
    v149 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v149) - 40;
    v150 += 40;
  }

  while (v150);
  v151 = v72[8];
  v72[8] = 0;
  if (v151)
  {
    MEMORY[0x1B8C62190](v151, 0x1000C4049ECCB0CLL);
  }

  _Unwind_Resume(a1);
}