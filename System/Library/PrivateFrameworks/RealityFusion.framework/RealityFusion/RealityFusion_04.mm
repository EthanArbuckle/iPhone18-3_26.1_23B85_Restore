void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[7];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      RESharedPtr<REAsset>::~RESharedPtr(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>::reset[abi:ne200100](v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>::reset[abi:ne200100](uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return RECollisionMeshDestroy();
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2))
  {
    goto LABEL_18;
  }

  return v10;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((v2 + 10));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

rf::data_flow::Room *std::__optional_copy_base<rf::data_flow::Room,false>::__optional_copy_base[abi:ne200100](rf::data_flow::Room *this, const rf::data_flow::Room *a2)
{
  *this = 0;
  *(this + 912) = 0;
  if (*(a2 + 912) == 1)
  {
    rf::data_flow::Room::Room(this, a2);
    *(this + 912) = 1;
  }

  return this;
}

void sub_2618037B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 912) == 1)
  {
    rf::data_flow::Room::~Room(v1);
  }

  _Unwind_Resume(exception_object);
}

rf::data_flow::Room *rf::data_flow::Room::Room(rf::data_flow::Room *this, const rf::data_flow::Room *a2)
{
  v4 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v4;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v7;
  *(this + 2) = v5;
  *(this + 3) = v6;
  v8 = *(a2 + 13);
  *(this + 12) = *(a2 + 12);
  *(this + 13) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  rf::data_flow::RoomMesh::RoomMesh(this + 112, a2 + 112);
  std::__optional_copy_base<rf::data_flow::RoomMesh,false>::__optional_copy_base[abi:ne200100](this + 304, a2 + 304);
  std::__optional_copy_base<rf::data_flow::RoomMesh,false>::__optional_copy_base[abi:ne200100](this + 504, a2 + 504);
  std::__optional_copy_base<rf::data_flow::RoomMesh,false>::__optional_copy_base[abi:ne200100](this + 704, a2 + 704);
  return this;
}

void sub_261803860(_Unwind_Exception *a1)
{
  std::optional<rf::data_flow::RoomMesh>::~optional(v1 + 504);
  std::optional<rf::data_flow::RoomMesh>::~optional(v1 + 304);
  rf::data_flow::RoomMesh::~RoomMesh((v1 + 112));
  v3 = *(v1 + 104);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<rf::data_flow::RoomMesh>::~optional(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    if (*(a1 + 184) == 1)
    {
    }

    if (*(a1 + 152) == 1)
    {
    }

    if (*(a1 + 120) == 1)
    {
    }

    if (*(a1 + 88) == 1)
    {
    }

    if (*(a1 + 56) == 1)
    {
    }

    if (*(a1 + 24) == 1)
    {
    }
  }

  return a1;
}

uint64_t rf::data_flow::RoomMesh::RoomMesh(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = 1;
  }

  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = 1;
  }

  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = 1;
  }

  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = 1;
  }

  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = 1;
  }

  return a1;
}

_BYTE *std::__optional_copy_base<rf::data_flow::RoomMesh,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[192] = 0;
  if (*(a2 + 192) == 1)
  {
    rf::data_flow::RoomMesh::RoomMesh(a1, a2);
    a1[192] = 1;
  }

  return a1;
}

void sub_261803AE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 192) == 1)
  {
    rf::data_flow::RoomMesh::~RoomMesh(v1);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::RoomMesh::~RoomMesh(id *this)
{
  if (*(this + 184) == 1)
  {
  }

  if (*(this + 152) == 1)
  {
  }

  if (*(this + 120) == 1)
  {
  }

  if (*(this + 88) == 1)
  {
  }

  if (*(this + 56) == 1)
  {
  }

  if (*(this + 24) == 1)
  {
  }
}

uint64_t rf::data_flow::Room::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v9 = *(a2 + 96);
  v8 = *(a2 + 104);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 104);
  *(a1 + 96) = v9;
  *(a1 + 104) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>((a1 + 112), a2 + 112);
  std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>((a1 + 144), a2 + 144);
  std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>((a1 + 176), a2 + 176);
  std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>((a1 + 208), a2 + 208);
  std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>((a1 + 240), a2 + 240);
  std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>((a1 + 272), a2 + 272);
  std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::RoomMesh,false> const&>((a1 + 304), a2 + 304);
  std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::RoomMesh,false> const&>((a1 + 504), a2 + 504);
  std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::RoomMesh,false> const&>((a1 + 704), a2 + 704);
  return a1;
}

__n128 std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>(id *location, uint64_t a2)
{
  if (*(location + 24) == *(a2 + 24))
  {
    if (*(location + 24))
    {
      objc_storeStrong(location, *a2);
      result = *(a2 + 8);
      *(location + 1) = result;
    }
  }

  else if (*(location + 24))
  {

    *(location + 24) = 0;
  }

  else
  {
    *location = *a2;
    result = *(a2 + 8);
    *(location + 1) = result;
    *(location + 24) = 1;
  }

  return result;
}

void std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::RoomMesh,false> const&>(id *location, uint64_t a2)
{
  if (*(location + 192) == *(a2 + 192))
  {
    if (*(location + 192))
    {
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>(location, a2);
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>(location + 4, a2 + 32);
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>(location + 8, a2 + 64);
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>(location + 12, a2 + 96);
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>(location + 16, a2 + 128);

      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<rf::data_flow::MeshBuffer,false> const&>(location + 20, a2 + 160);
    }
  }

  else if (*(location + 192))
  {
    if (*(location + 184) == 1)
    {
    }

    if (*(location + 152) == 1)
    {
    }

    if (*(location + 120) == 1)
    {
    }

    if (*(location + 88) == 1)
    {
    }

    if (*(location + 56) == 1)
    {
    }

    if (*(location + 24) == 1)
    {
    }

    *(location + 192) = 0;
  }

  else
  {
    rf::data_flow::RoomMesh::RoomMesh(location, a2);
    *(location + 192) = 1;
  }
}

uint64_t *RESharedPtr<REAsset>::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *a2;
    RERetain();
  }

  v5 = *a1;
  *a1 = v3;
  if (v5)
  {
    RERelease();
  }

  return a1;
}

void rf::data_flow::consumer::UpdateData::~UpdateData(rf::data_flow::consumer::UpdateData *this)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::~__hash_table(this + 1128);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 1088);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 1048);
  std::__hash_table<std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::Matrix4x4<float>>>>::~__hash_table(this + 1008);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 968);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 928);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 888);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 848);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 808);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 768);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 728);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 688);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 648);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 608);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::~__hash_table(this + 568);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 528);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 488);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 448);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 408);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 368);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>>>::~__hash_table(this + 328);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 288);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 248);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 208);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 168);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 128);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 88);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 48);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 8);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::Matrix4x4<float>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::Matrix4x4<float>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::Matrix4x4<float>>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>>>::__deallocate_node(id *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

BOOL std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  result = rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2);
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

BOOL std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::SceneObject const>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,rf::data_flow::SceneObject const&>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  result = rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2);
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

BOOL std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::EnvironmentProbe const>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe const&>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  result = rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2);
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

BOOL std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID,rf::data_flow::Room const&>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  result = rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2);
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      RESharedPtr<REAsset>::~RESharedPtr(v1 + 6);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>::reset[abi:ne200100](v1 + 6);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void rf::ARStateData::SinceLastData::~SinceLastData(rf::ARStateData::SinceLastData *this)
{
  std::__hash_table<std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::Matrix4x4<float>>>>::~__hash_table(this + 1048);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 1008);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 968);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::~__hash_table(this + 920);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 880);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 840);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 800);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 760);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 720);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 680);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 640);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 600);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 560);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 520);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::~__hash_table(this + 480);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 440);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 400);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 360);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 320);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 280);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 240);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>>>::~__hash_table(this + 200);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::unique_ptr<RECollisionMesh,rf::RECollisionMeshDeleter>>>>::__deallocate_node(*(this + 22));
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>>>::__deallocate_node(*(this + 17));
  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 80);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 40);

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this);
}

void rf::ARStateData::~ARStateData(rf::ARStateData *this)
{
  rf::data_flow::consumer::UpdateData::~UpdateData((this + 2816));
  rf::ARStateData::SinceLastData::~SinceLastData((this + 1712));
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::~__hash_table(this + 1672);
  v2 = (this + 1648);
  std::vector<rf::ARStateData::AllowedPersistentAnchorsGroup>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 1632) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 1360);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 1296);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 1256);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::~__hash_table(this + 1216);
  if (*(this + 1200) == 1)
  {
    rf::data_flow::Room::~Room(this + 36);
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::~__hash_table(this + 248);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 208);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>>>::~__hash_table(this + 160);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::~__hash_table(this + 80);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 40);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this);
}

void std::vector<rf::ARStateData::AllowedPersistentAnchorsGroup>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v4 - 48);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void rf::anonymous namespace::tryGetCurrentMesh(void *a1, uint64_t a2, uint64_t a3, std::mutex *this)
{
  v8[0] = &this[1].__m_.__sig;
  v8[1] = &this->__m_.__sig;
  std::mutex::lock(this);

  std::mutex::unlock(this);
}

void ___ZZN2rf7ARState15updateMeshAssetERNS_17LockedARStateDataERKNSt3__113unordered_mapINS_9data_flow6RFUUIDENS3_10shared_ptrINS5_8consumer4MeshEEENS6_4HashENS6_8EqualityENS3_9allocatorINS3_4pairIKS6_SA_EEEEEEP14REAssetManagerENK3__0clEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  std::mutex::lock((v4 + 16));
  v5 = *(a1 + 56);
  v13[0] = *(a1 + 40);
  v13[1] = v5;
  v14[0] = a2;
  v12 = 0;
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,RESharedPtr<REAsset>>>((v4 + 1912), v13);
  RESharedPtr<REAsset>::~RESharedPtr(v14);
  RESharedPtr<REAsset>::~RESharedPtr(&v12);
  v6 = *(a1 + 72);
  if (*(v6 + 360) == 1)
  {
    RESharedPtr<REGeomModelDescriptor>::~RESharedPtr((v6 + 352));
    *(v6 + 360) = 0;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    if (!*(a1 + 64))
    {
      if (*(a1 + 56))
      {
        v10 = *(a1 + 40);
      }

      else
      {
        v10 = (a1 + 40);
      }

      *(a1 + 64) = ((*v10 >> 2) + (*v10 << 6) + v10[1] + 2654435769) ^ *v10;
    }

    v7 = *(a1 + 88);
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    if (!*(a1 + 64))
    {
      if (*(a1 + 56))
      {
        v11 = *(a1 + 40);
      }

      else
      {
        v11 = (a1 + 40);
      }

      *(a1 + 64) = ((*v11 >> 2) + (*v11 << 6) + v11[1] + 2654435769) ^ *v11;
    }

    v8 = *(a1 + 88);
    kdebug_trace();
  }

  std::mutex::unlock((v4 + 16));
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __copy_helper_block_ea8_72c55_ZTSNSt3__110shared_ptrIN2rf9data_flow8consumer4MeshEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_72c55_ZTSNSt3__110shared_ptrIN2rf9data_flow8consumer4MeshEEE(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t *std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::ARState::updateAnchorDefinitions(rf::LockedARStateData &,REScene *)::$_0>,std::identity>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      v4 = *v3;
      Object = RECustomComponentGetObject();
      REComponentGetEntity();
      RENetworkComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        if (!RENetworkComponentIsAuthoritative())
        {
          break;
        }
      }

      if ((*(Object + 21) & 1) == 0 && *(Object + 20) != 1)
      {
        break;
      }

      if (++v3 == v2)
      {
        return v2;
      }
    }

    return v3;
  }

  return v2;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 256);
  if (*(result + 256) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_287408D68[v4])(v6);
    }
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<0ul,rf::data_flow::CustomAnchor,rf::data_flow::CustomAnchor>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 256))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v5 = *a3;
    v6 = a3[2];
    *(a1 + 16) = a3[1];
    *(a1 + 32) = v6;
    *a1 = v5;
    v7 = a3[3];
    v8 = a3[4];
    v9 = a3[5];
    *(a1 + 89) = *(a3 + 89);
    *(a1 + 64) = v8;
    *(a1 + 80) = v9;
    *(a1 + 48) = v7;
    v10 = *(a3 + 14);
    *(a3 + 14) = 0;
    *(a1 + 112) = v10;
    *(a1 + 128) = a3[8];
    result = a3[9];
    v12 = a3[10];
    v13 = a3[12];
    *(a1 + 176) = a3[11];
    *(a1 + 192) = v13;
    *(a1 + 144) = result;
    *(a1 + 160) = v12;
    *(a1 + 256) = 0;
  }

  else
  {
    v15 = *a3;
    v16 = a3[2];
    *(a2 + 16) = a3[1];
    *(a2 + 32) = v16;
    *a2 = v15;
    v17 = a3[3];
    v18 = a3[4];
    v19 = a3[5];
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v18;
    *(a2 + 80) = v19;
    *(a2 + 48) = v17;
    v20 = *(a3 + 14);
    *(a3 + 14) = 0;
    v21 = *(a2 + 112);
    *(a2 + 112) = v20;

    *(a2 + 128) = a3[8];
    result = a3[9];
    v22 = a3[10];
    v23 = a3[12];
    *(a2 + 176) = a3[11];
    *(a2 + 192) = v23;
    *(a2 + 144) = result;
    *(a2 + 160) = v22;
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<1ul,rf::data_flow::PlaneAnchor,rf::data_flow::PlaneAnchor>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 256) == 1)
  {
    v5 = *a3;
    v6 = a3[2];
    *(a2 + 16) = a3[1];
    *(a2 + 32) = v6;
    *a2 = v5;
    v7 = a3[3];
    v8 = a3[4];
    v9 = a3[5];
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v8;
    *(a2 + 80) = v9;
    *(a2 + 48) = v7;
    v10 = *(a3 + 14);
    *(a3 + 14) = 0;
    v11 = *(a2 + 112);
    *(a2 + 112) = v10;

    v12 = a3[9];
    *(a2 + 128) = a3[8];
    *(a2 + 144) = v12;
    v13 = a3[10];
    v14 = a3[11];
    v15 = a3[12];
    *(a2 + 208) = *(a3 + 26);
    *(a2 + 176) = v14;
    *(a2 + 192) = v15;
    *(a2 + 160) = v13;

    result.n128_u64[0] = _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a2 + 216, (a3 + 216)).n128_u64[0];
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v18 = *a3;
    v19 = a3[2];
    *(a1 + 16) = a3[1];
    *(a1 + 32) = v19;
    *a1 = v18;
    v20 = a3[3];
    v21 = a3[4];
    v22 = a3[5];
    *(a1 + 89) = *(a3 + 89);
    *(a1 + 64) = v21;
    *(a1 + 80) = v22;
    *(a1 + 48) = v20;
    v23 = *(a3 + 14);
    *(a3 + 14) = 0;
    *(a1 + 112) = v23;
    v24 = a3[9];
    *(a1 + 128) = a3[8];
    *(a1 + 144) = v24;
    v25 = a3[10];
    v26 = a3[12];
    v27 = *(a3 + 26);
    *(a1 + 176) = a3[11];
    *(a1 + 192) = v26;
    *(a1 + 160) = v25;
    *(a1 + 208) = v27;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    result = *(a3 + 216);
    *(a1 + 216) = result;
    *(a1 + 232) = *(a3 + 29);
    *(a3 + 27) = 0;
    *(a3 + 28) = 0;
    *(a3 + 29) = 0;
    *(a1 + 256) = 1;
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<2ul,rf::data_flow::ImageAnchor,rf::data_flow::ImageAnchor>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 256) == 2)
  {
    v5 = *a3;
    v6 = a3[2];
    *(a2 + 16) = a3[1];
    *(a2 + 32) = v6;
    *a2 = v5;
    v7 = a3[3];
    v8 = a3[4];
    v9 = a3[5];
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v8;
    *(a2 + 80) = v9;
    *(a2 + 48) = v7;
    v10 = *(a3 + 14);
    *(a3 + 14) = 0;
    v11 = *(a2 + 112);
    *(a2 + 112) = v10;

    *(a2 + 128) = *(a3 + 128);
    if (*(a2 + 159) < 0)
    {
      operator delete(*(a2 + 136));
    }

    v12 = *(a3 + 136);
    *(a2 + 152) = *(a3 + 19);
    *(a2 + 136) = v12;
    *(a3 + 159) = 0;
    *(a3 + 136) = 0;
    if (*(a2 + 183) < 0)
    {
      operator delete(*(a2 + 160));
    }

    v13 = a3[10];
    *(a2 + 176) = *(a3 + 22);
    *(a2 + 160) = v13;
    *(a3 + 183) = 0;
    *(a3 + 160) = 0;
    result = a3[12];
    *(a2 + 192) = result;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v16 = *a3;
    v17 = a3[2];
    *(a1 + 16) = a3[1];
    *(a1 + 32) = v17;
    *a1 = v16;
    v18 = a3[3];
    v19 = a3[4];
    v20 = a3[5];
    *(a1 + 89) = *(a3 + 89);
    *(a1 + 64) = v19;
    *(a1 + 80) = v20;
    *(a1 + 48) = v18;
    v21 = *(a3 + 14);
    *(a3 + 14) = 0;
    *(a1 + 112) = v21;
    *(a1 + 128) = *(a3 + 128);
    v22 = *(a3 + 136);
    *(a1 + 152) = *(a3 + 19);
    *(a1 + 136) = v22;
    *(a3 + 18) = 0;
    *(a3 + 19) = 0;
    *(a3 + 17) = 0;
    v23 = a3[10];
    *(a1 + 176) = *(a3 + 22);
    *(a1 + 160) = v23;
    *(a3 + 21) = 0;
    *(a3 + 22) = 0;
    *(a3 + 20) = 0;
    result = a3[12];
    *(a1 + 192) = result;
    *(a1 + 256) = 2;
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<3ul,rf::data_flow::ObjectAnchor,rf::data_flow::ObjectAnchor>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 256) == 3)
  {
    v5 = *a3;
    v6 = a3[2];
    *(a2 + 16) = a3[1];
    *(a2 + 32) = v6;
    *a2 = v5;
    v7 = a3[3];
    v8 = a3[4];
    v9 = a3[5];
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v8;
    *(a2 + 80) = v9;
    *(a2 + 48) = v7;
    v10 = *(a3 + 14);
    *(a3 + 14) = 0;
    v11 = *(a2 + 112);
    *(a2 + 112) = v10;

    if (*(a2 + 151) < 0)
    {
      operator delete(*(a2 + 128));
    }

    v12 = a3[8];
    *(a2 + 144) = *(a3 + 18);
    *(a2 + 128) = v12;
    *(a3 + 151) = 0;
    *(a3 + 128) = 0;
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    v13 = *(a3 + 152);
    *(a2 + 168) = *(a3 + 21);
    *(a2 + 152) = v13;
    *(a3 + 175) = 0;
    *(a3 + 152) = 0;
    result = a3[11];
    v15 = a3[12];
    v16 = a3[14];
    *(a2 + 208) = a3[13];
    *(a2 + 224) = v16;
    *(a2 + 176) = result;
    *(a2 + 192) = v15;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v18 = *a3;
    v19 = a3[2];
    *(a1 + 16) = a3[1];
    *(a1 + 32) = v19;
    *a1 = v18;
    v20 = a3[3];
    v21 = a3[4];
    v22 = a3[5];
    *(a1 + 89) = *(a3 + 89);
    *(a1 + 64) = v21;
    *(a1 + 80) = v22;
    *(a1 + 48) = v20;
    v23 = *(a3 + 14);
    *(a3 + 14) = 0;
    *(a1 + 112) = v23;
    v24 = a3[8];
    *(a1 + 144) = *(a3 + 18);
    *(a1 + 128) = v24;
    *(a3 + 17) = 0;
    *(a3 + 18) = 0;
    *(a3 + 16) = 0;
    v25 = *(a3 + 152);
    *(a1 + 168) = *(a3 + 21);
    *(a1 + 152) = v25;
    *(a3 + 20) = 0;
    *(a3 + 21) = 0;
    *(a3 + 19) = 0;
    result = a3[11];
    v26 = a3[12];
    v27 = a3[14];
    *(a1 + 208) = a3[13];
    *(a1 + 224) = v27;
    *(a1 + 176) = result;
    *(a1 + 192) = v26;
    *(a1 + 256) = 3;
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<4ul,rf::data_flow::FaceAnchor,rf::data_flow::FaceAnchor>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 256) == 4)
  {
    v5 = *a3;
    v6 = a3[2];
    *(a2 + 16) = a3[1];
    *(a2 + 32) = v6;
    *a2 = v5;
    v7 = a3[3];
    v8 = a3[4];
    v9 = a3[5];
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v8;
    *(a2 + 80) = v9;
    *(a2 + 48) = v7;
    v10 = *(a3 + 14);
    *(a3 + 14) = 0;
    v11 = *(a2 + 112);
    *(a2 + 112) = v10;

    v12 = a3[8];
    v13 = a3[9];
    v14 = a3[11];
    *(a2 + 160) = a3[10];
    *(a2 + 176) = v14;
    *(a2 + 128) = v12;
    *(a2 + 144) = v13;
    result = a3[12];
    v16 = a3[13];
    v17 = a3[15];
    *(a2 + 224) = a3[14];
    *(a2 + 240) = v17;
    *(a2 + 192) = result;
    *(a2 + 208) = v16;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v19 = *a3;
    v20 = a3[2];
    *(a1 + 16) = a3[1];
    *(a1 + 32) = v20;
    *a1 = v19;
    v21 = a3[3];
    v22 = a3[4];
    v23 = a3[5];
    *(a1 + 89) = *(a3 + 89);
    *(a1 + 64) = v22;
    *(a1 + 80) = v23;
    *(a1 + 48) = v21;
    v24 = *(a3 + 14);
    *(a3 + 14) = 0;
    *(a1 + 112) = v24;
    v25 = a3[8];
    v26 = a3[9];
    v27 = a3[11];
    *(a1 + 160) = a3[10];
    *(a1 + 176) = v27;
    *(a1 + 128) = v25;
    *(a1 + 144) = v26;
    result = a3[12];
    v28 = a3[13];
    v29 = a3[15];
    *(a1 + 224) = a3[14];
    *(a1 + 240) = v29;
    *(a1 + 192) = result;
    *(a1 + 208) = v28;
    *(a1 + 256) = 4;
  }

  return result;
}

float std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<5ul,rf::data_flow::BodyAnchor,rf::data_flow::BodyAnchor>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 256) == 5)
  {
    v5 = *a3;
    v6 = a3[2];
    *(a2 + 16) = a3[1];
    *(a2 + 32) = v6;
    *a2 = v5;
    v7 = a3[3];
    v8 = a3[4];
    v9 = a3[5];
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v8;
    *(a2 + 80) = v9;
    *(a2 + 48) = v7;
    v10 = *(a3 + 14);
    *(a3 + 14) = 0;
    v11 = *(a2 + 112);
    *(a2 + 112) = v10;

    result = *(a3 + 32);
    *(a2 + 128) = result;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v14 = *a3;
    v15 = a3[2];
    *(a1 + 16) = a3[1];
    *(a1 + 32) = v15;
    *a1 = v14;
    v16 = a3[3];
    v17 = a3[4];
    v18 = a3[5];
    *(a1 + 89) = *(a3 + 89);
    *(a1 + 64) = v17;
    *(a1 + 80) = v18;
    *(a1 + 48) = v16;
    v19 = *(a3 + 14);
    *(a3 + 14) = 0;
    *(a1 + 112) = v19;
    result = *(a3 + 32);
    *(a1 + 128) = result;
    *(a1 + 256) = 5;
  }

  return result;
}

void std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F1)
  {
    std::allocator<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 256);
  if (*(result + 256) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_287408D98[v4])(v6);
    }
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<0ul,rf::data_flow::CustomAnchor,rf::data_flow::CustomAnchor const&>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 256))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v5 = *a3;
    v6 = a3[2];
    *(a1 + 16) = a3[1];
    *(a1 + 32) = v6;
    *a1 = v5;
    v7 = a3[3];
    v8 = a3[4];
    v9 = a3[5];
    *(a1 + 89) = *(a3 + 89);
    *(a1 + 64) = v8;
    *(a1 + 80) = v9;
    *(a1 + 48) = v7;
    *(a1 + 112) = *(a3 + 14);
    *(a1 + 128) = a3[8];
    result = a3[9];
    v11 = a3[10];
    v12 = a3[12];
    *(a1 + 176) = a3[11];
    *(a1 + 192) = v12;
    *(a1 + 144) = result;
    *(a1 + 160) = v11;
    *(a1 + 256) = 0;
  }

  else
  {
    v14 = *a3;
    v15 = a3[2];
    *(a2 + 16) = a3[1];
    *(a2 + 32) = v15;
    *a2 = v14;
    v16 = a3[3];
    v17 = a3[4];
    v18 = a3[5];
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v17;
    *(a2 + 80) = v18;
    *(a2 + 48) = v16;
    objc_storeStrong((a2 + 112), *(a3 + 14));
    *(a2 + 128) = a3[8];
    result = a3[9];
    v19 = a3[10];
    v20 = a3[12];
    *(a2 + 176) = a3[11];
    *(a2 + 192) = v20;
    *(a2 + 144) = result;
    *(a2 + 160) = v19;
  }

  return result;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<1ul,rf::data_flow::PlaneAnchor,rf::data_flow::PlaneAnchor const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 256) == 1)
  {
    v5 = *a3;
    v6 = *(a3 + 32);
    *(a2 + 16) = *(a3 + 16);
    *(a2 + 32) = v6;
    *a2 = v5;
    v7 = *(a3 + 48);
    v8 = *(a3 + 64);
    v9 = *(a3 + 80);
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v8;
    *(a2 + 80) = v9;
    *(a2 + 48) = v7;
    objc_storeStrong((a2 + 112), *(a3 + 112));
    v10 = *(a3 + 144);
    *(a2 + 128) = *(a3 + 128);
    *(a2 + 144) = v10;
    v11 = *(a3 + 160);
    v12 = *(a3 + 176);
    v13 = *(a3 + 192);
    *(a2 + 208) = *(a3 + 208);
    *(a2 + 176) = v12;
    *(a2 + 192) = v13;
    *(a2 + 160) = v11;
    if (a2 != a3)
    {
      v14 = *(a3 + 216);
      v15 = *(a3 + 224);

      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l((a2 + 216), v14, v15, (v15 - v14) >> 4);
    }
  }

  else
  {
    v17[0] = a1;
    v17[1] = a3;
    *&v11 = std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<1ul,rf::data_flow::PlaneAnchor,rf::data_flow::PlaneAnchor const&>(std::__variant_detail::__alt<1ul,rf::data_flow::PlaneAnchor> &,rf::data_flow::PlaneAnchor const&)::{unnamed type#1}::operator()(v17);
  }

  return *&v11;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<1ul,rf::data_flow::PlaneAnchor,rf::data_flow::PlaneAnchor const&>(std::__variant_detail::__alt<1ul,rf::data_flow::PlaneAnchor> &,rf::data_flow::PlaneAnchor const&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v5 = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  *&v10[9] = *(v2 + 89);
  v9 = *(v2 + 64);
  *v10 = *(v2 + 80);
  v8 = *(v2 + 48);
  v11 = *(v2 + 112);
  v12 = *(v2 + 128);
  v13 = *(v2 + 144);
  v15 = *(v2 + 176);
  v16 = *(v2 + 192);
  v14 = *(v2 + 160);
  v17 = *(v2 + 208);
  v18 = 0uLL;
  v19 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v18, *(v2 + 216), *(v2 + 224), (*(v2 + 224) - *(v2 + 216)) >> 4);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  *(v1 + 16) = v6;
  *(v1 + 32) = v7;
  *v1 = v5;
  *(v1 + 89) = *&v10[9];
  *(v1 + 64) = v9;
  *(v1 + 80) = *v10;
  *(v1 + 48) = v8;
  *(v1 + 112) = v11;
  *(v1 + 128) = v12;
  *(v1 + 144) = v13;
  *(v1 + 208) = v17;
  *(v1 + 176) = v15;
  *(v1 + 192) = v16;
  *(v1 + 160) = v14;
  result = *&v18;
  *(v1 + 216) = v18;
  *(v1 + 232) = v19;
  *(v1 + 256) = 1;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<2ul,rf::data_flow::ImageAnchor,rf::data_flow::ImageAnchor const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 256) == 2)
  {
    v5 = *a3;
    v6 = *(a3 + 32);
    *(a2 + 16) = *(a3 + 16);
    *(a2 + 32) = v6;
    *a2 = v5;
    v7 = *(a3 + 48);
    v8 = *(a3 + 64);
    v9 = *(a3 + 80);
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v8;
    *(a2 + 80) = v9;
    *(a2 + 48) = v7;
    objc_storeStrong((a2 + 112), *(a3 + 112));
    *(a2 + 128) = *(a3 + 128);
    std::string::operator=((a2 + 136), (a3 + 136));
    std::string::operator=((a2 + 160), (a3 + 160));
    v10 = *(a3 + 192);
    *(a2 + 192) = v10;
  }

  else
  {
    v12[0] = a1;
    v12[1] = a3;
    *&v10 = std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<2ul,rf::data_flow::ImageAnchor,rf::data_flow::ImageAnchor const&>(std::__variant_detail::__alt<2ul,rf::data_flow::ImageAnchor> &,rf::data_flow::ImageAnchor const&)::{unnamed type#1}::operator()(v12);
  }

  return *&v10;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<2ul,rf::data_flow::ImageAnchor,rf::data_flow::ImageAnchor const&>(std::__variant_detail::__alt<2ul,rf::data_flow::ImageAnchor> &,rf::data_flow::ImageAnchor const&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v9 = *v2;
  v10 = *(v2 + 16);
  v11 = *(v2 + 32);
  *&v14[9] = *(v2 + 89);
  v13 = *(v2 + 64);
  *v14 = *(v2 + 80);
  v12 = *(v2 + 48);
  v15 = *(v2 + 112);
  v16 = *(v2 + 128);
  if (*(v2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *(v2 + 136), *(v2 + 144));
  }

  else
  {
    v3 = *(v2 + 136);
    v17.__r_.__value_.__r.__words[2] = *(v2 + 152);
    *&v17.__r_.__value_.__l.__data_ = v3;
  }

  if (*(v2 + 183) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(v2 + 160), *(v2 + 168));
  }

  else
  {
    v4 = *(v2 + 160);
    v18.__r_.__value_.__r.__words[2] = *(v2 + 176);
    *&v18.__r_.__value_.__l.__data_ = v4;
  }

  *v19 = *(v2 + 192);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  *(v1 + 16) = v10;
  *(v1 + 32) = v11;
  *v1 = v9;
  *(v1 + 89) = *&v14[9];
  *(v1 + 64) = v13;
  *(v1 + 80) = *v14;
  *(v1 + 48) = v12;
  *(v1 + 112) = v15;
  *(v1 + 128) = v16;
  v5 = *&v17.__r_.__value_.__l.__data_;
  *(v1 + 152) = *(&v17.__r_.__value_.__l + 2);
  *(v1 + 136) = v5;
  v6 = *&v18.__r_.__value_.__l.__data_;
  *(v1 + 176) = *(&v18.__r_.__value_.__l + 2);
  *(v1 + 160) = v6;
  result = v19[0];
  *(v1 + 192) = *v19;
  *(v1 + 256) = 2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261806464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<3ul,rf::data_flow::ObjectAnchor,rf::data_flow::ObjectAnchor const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 256) == 3)
  {
    v5 = *a3;
    v6 = *(a3 + 32);
    *(a2 + 16) = *(a3 + 16);
    *(a2 + 32) = v6;
    *a2 = v5;
    v7 = *(a3 + 48);
    v8 = *(a3 + 64);
    v9 = *(a3 + 80);
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v8;
    *(a2 + 80) = v9;
    *(a2 + 48) = v7;
    objc_storeStrong((a2 + 112), *(a3 + 112));
    std::string::operator=((a2 + 128), (a3 + 128));
    std::string::operator=((a2 + 152), (a3 + 152));
    v10 = *(a3 + 208);
    v11 = *(a3 + 224);
    v13 = *(a3 + 176);
    v12 = *(a3 + 192);
    *(a2 + 208) = v10;
    *(a2 + 224) = v11;
    *(a2 + 176) = v13;
    *(a2 + 192) = v12;
  }

  else
  {
    v15[0] = a1;
    v15[1] = a3;
    *&v10 = std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<3ul,rf::data_flow::ObjectAnchor,rf::data_flow::ObjectAnchor const&>(std::__variant_detail::__alt<3ul,rf::data_flow::ObjectAnchor> &,rf::data_flow::ObjectAnchor const&)::{unnamed type#1}::operator()(v15).n128_u64[0];
  }

  return *&v10;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<3ul,rf::data_flow::ObjectAnchor,rf::data_flow::ObjectAnchor const&>(std::__variant_detail::__alt<3ul,rf::data_flow::ObjectAnchor> &,rf::data_flow::ObjectAnchor const&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v14 = *v2;
  v15 = *(v2 + 16);
  v16 = *(v2 + 32);
  *&v19[9] = *(v2 + 89);
  v18 = *(v2 + 64);
  *v19 = *(v2 + 80);
  v17 = *(v2 + 48);
  v20 = *(v2 + 112);
  if (*(v2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(v2 + 128), *(v2 + 136));
  }

  else
  {
    v3 = *(v2 + 128);
    v21.__r_.__value_.__r.__words[2] = *(v2 + 144);
    *&v21.__r_.__value_.__l.__data_ = v3;
  }

  if (*(v2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *(v2 + 152), *(v2 + 160));
  }

  else
  {
    v4 = *(v2 + 152);
    v22.__r_.__value_.__r.__words[2] = *(v2 + 168);
    *&v22.__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(v2 + 176);
  v6 = *(v2 + 192);
  v7 = *(v2 + 224);
  v25 = *(v2 + 208);
  v26 = v7;
  v23 = v5;
  v24 = v6;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  *(v1 + 16) = v15;
  *(v1 + 32) = v16;
  *v1 = v14;
  *(v1 + 89) = *&v19[9];
  *(v1 + 64) = v18;
  *(v1 + 80) = *v19;
  *(v1 + 48) = v17;
  *(v1 + 112) = v20;
  v8 = *&v21.__r_.__value_.__l.__data_;
  *(v1 + 144) = *(&v21.__r_.__value_.__l + 2);
  *(v1 + 128) = v8;
  v9 = *&v22.__r_.__value_.__l.__data_;
  *(v1 + 168) = *(&v22.__r_.__value_.__l + 2);
  *(v1 + 152) = v9;
  result = v23;
  v11 = v24;
  v12 = v26;
  *(v1 + 208) = v25;
  *(v1 + 224) = v12;
  *(v1 + 176) = result;
  *(v1 + 192) = v11;
  *(v1 + 256) = 3;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2618066AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<4ul,rf::data_flow::FaceAnchor,rf::data_flow::FaceAnchor const&>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 256) == 4)
  {
    v5 = *a3;
    v6 = a3[2];
    *(a2 + 16) = a3[1];
    *(a2 + 32) = v6;
    *a2 = v5;
    v7 = a3[3];
    v8 = a3[4];
    v9 = a3[5];
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v8;
    *(a2 + 80) = v9;
    *(a2 + 48) = v7;
    objc_storeStrong((a2 + 112), *(a3 + 14));
    v10 = a3[8];
    v11 = a3[9];
    v12 = a3[11];
    *(a2 + 160) = a3[10];
    *(a2 + 176) = v12;
    *(a2 + 128) = v10;
    *(a2 + 144) = v11;
    result = a3[12];
    v14 = a3[13];
    v15 = a3[15];
    *(a2 + 224) = a3[14];
    *(a2 + 240) = v15;
    *(a2 + 192) = result;
    *(a2 + 208) = v14;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v17 = *a3;
    v18 = a3[2];
    *(a1 + 16) = a3[1];
    *(a1 + 32) = v18;
    *a1 = v17;
    v19 = a3[3];
    v20 = a3[4];
    v21 = a3[5];
    *(a1 + 89) = *(a3 + 89);
    *(a1 + 64) = v20;
    *(a1 + 80) = v21;
    *(a1 + 48) = v19;
    *(a1 + 112) = *(a3 + 14);
    v22 = a3[8];
    v23 = a3[9];
    v24 = a3[11];
    *(a1 + 160) = a3[10];
    *(a1 + 176) = v24;
    *(a1 + 128) = v22;
    *(a1 + 144) = v23;
    result = a3[12];
    v25 = a3[13];
    v26 = a3[15];
    *(a1 + 224) = a3[14];
    *(a1 + 240) = v26;
    *(a1 + 192) = result;
    *(a1 + 208) = v25;
    *(a1 + 256) = 4;
  }

  return result;
}

float std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<5ul,rf::data_flow::BodyAnchor,rf::data_flow::BodyAnchor const&>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 256) == 5)
  {
    v5 = *a3;
    v6 = a3[2];
    *(a2 + 16) = a3[1];
    *(a2 + 32) = v6;
    *a2 = v5;
    v7 = a3[3];
    v8 = a3[4];
    v9 = a3[5];
    *(a2 + 89) = *(a3 + 89);
    *(a2 + 64) = v8;
    *(a2 + 80) = v9;
    *(a2 + 48) = v7;
    objc_storeStrong((a2 + 112), *(a3 + 14));
    result = *(a3 + 32);
    *(a2 + 128) = result;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v12 = *a3;
    v13 = a3[2];
    *(a1 + 16) = a3[1];
    *(a1 + 32) = v13;
    *a1 = v12;
    v14 = a3[3];
    v15 = a3[4];
    v16 = a3[5];
    *(a1 + 89) = *(a3 + 89);
    *(a1 + 64) = v15;
    *(a1 + 80) = v16;
    *(a1 + 48) = v14;
    *(a1 + 112) = *(a3 + 14);
    result = *(a3 + 32);
    *(a1 + 128) = result;
    *(a1 + 256) = 5;
  }

  return result;
}

uint64_t std::pair<unsigned long const,rf::data_flow::RoomManagementClient>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(a1 + 152);
  std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(a1 + 16);
  return a1;
}

void rf::data_flow::RoomManagementClient::~RoomManagementClient(void **this)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((this + 18));
  std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100]((this + 9));
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((this + 1));
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2))
  {
    goto LABEL_18;
  }

  return v10;
}

void sub_261806C58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2))
  {
    goto LABEL_18;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>> const&>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2))
  {
    goto LABEL_18;
  }

  return v10;
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v2 + 6));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

BOOL std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>> const&>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  result = rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2);
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

void sub_2618074E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      rf::data_flow::Room::~Room(v2 + 6);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      rf::data_flow::Room::~Room(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
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
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

void sub_261807804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_26180797C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v4 + v7 + v13;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v13 + v5 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v6 + v8 + v19;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v31 + v29 + v40 + v30;
        v22 = __ROR8__(v31 + v29 + v40, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * ((v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v5);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,re::Matrix4x4<float>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,MDLMesh * {__strong}>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v8 = *a2;
  *a2 = 0;
  v9 = *a1;
  *a1 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v12 = a2[2];
  v11 = a2 + 2;
  v10 = v12;
  v13 = *(v11 - 1);
  *(a1 + 16) = v12;
  *(a1 + 8) = v13;
  *(v11 - 1) = 0;
  v14 = v11[1];
  *(a1 + 24) = v14;
  *(a1 + 32) = *(v11 + 4);
  if (v14)
  {
    v15 = *(v10 + 8);
    v16 = *(a1 + 8);
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v15 >= v16)
      {
        v15 %= v16;
      }
    }

    else
    {
      v15 &= v16 - 1;
    }

    *(*a1 + 8 * v15) = a1 + 16;
    *v11 = 0;
    v11[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::Matrix4x4<float>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::Matrix4x4<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::Matrix4x4<float>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((v2 + 21));
      std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100]((v2 + 12));
      if (*(v2 + 95) < 0)
      {
        operator delete(v2[9]);
      }

      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

BOOL std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,RESharedPtr<REAsset>>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  result = rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2);
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

void sub_261808B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REAsset>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2))
  {
    goto LABEL_18;
  }

  return v10;
}

void sub_261808DD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(a2 + 168);
    std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](a2 + 96);
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(a2 + 32);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::RoomManagementClient>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void RFClientMeshReconstructionServiceCreate()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C47A0 != -1)
  {
    dispatch_once(&qword_2810C47A0, &__block_literal_global_3);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

_BYTE *RFClientMeshReconstructionServiceSetPhysicsEnabled(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  rf::data_flow::consumer::ClientMeshReconstructionConsumer::setCollisionEnabled((v3 + 8), a2);

  return rf::data_flow::consumer::ClientMeshReconstructionConsumer::setRigidbodyEnabled((v3 + 8), a2);
}

uint64_t RFClientMeshReconstructionServiceUpdateByDeltaTime(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 16);
  ECSManagerNullable = RESceneGetECSManagerNullable();
  if (ECSManagerNullable)
  {
    ECSManagerNullable = REECSManagerGetServiceLocator();
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v9 = a3;
  v10 = ECSManagerNullable;
  v11 = v7;
  v12 = a2;
  v13 = 1;
  v14 = 0;
  return (*(*(v5 + 8) + 16))(v5 + 8, &v9);
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer32ClientMeshReconstructionConsumerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_12[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::ClientMeshReconstructionConsumer]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C47A8 = 0u;
  xmmword_2810C47B8 = 0u;
  xmmword_2810C47C8 = 0u;
  unk_2810C47D8 = 0u;
  xmmword_2810C47E8 = 0u;
  unk_2810C47F8 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C47A8 + 1) = p_dst;
  *&xmmword_2810C47B8 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::ClientMeshReconstructionConsumer>>::initCallback;
  *&xmmword_2810C47C8 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::ClientMeshReconstructionConsumer>>::finalizeCallback;
  qword_2810C47E0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::ClientMeshReconstructionConsumer>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C47E8 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::ClientMeshReconstructionConsumer>>::copyDebugDescriptionCallback;
  _MergedGlobals_4 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261809B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::ClientMeshReconstructionConsumer>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::ClientMeshReconstructionConsumer>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    rf::data_flow::consumer::ClientMeshReconstructionConsumer::~ClientMeshReconstructionConsumer((v2 + 8));

    JUMPOUT(0x26670D060);
  }

  return result;
}

void RFDebugServiceCreate()
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v10 = 0;
  v11 = 0;
  LOBYTE(__p) = 0;
  v13 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v14 = 3;
  v15 = 0;
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C4810 != -1)
  {
    dispatch_once(&qword_2810C4810, &__block_literal_global_4);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void sub_261809D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  MEMORY[0x26670D060](v23, v22);
  if ((a22 & 1) != 0 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t RFDebugServiceUpdateByDeltaTime(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 16);
  RESceneGetECSManagerNullable();
  v7 = a3;
  ServiceLocator = REECSManagerGetServiceLocator();
  v9 = 1;
  v10 = a2;
  v11 = 1;
  v12 = 0;
  return (*(*(v5 + 16) + 16))(v5 + 16, &v7);
}

double RFDebugServiceSetMeshVisualizationEnabled(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  *(v2 + 56) = a2;
  result = *(v2 + 60);
  *(v2 + 248) = result;
  *(v2 + 1792) = 1;
  return result;
}

uint64_t RFDebugServiceSetMeshVisualizationMode(uint64_t result, int a2)
{
  v2 = *(result + 16);
  v3 = *(v2 + 68);
  if (v3 == 2)
  {
    if (*(v2 + 60) == a2)
    {
      v5 = *(v2 + 64);
    }

    else
    {
      *(v2 + 60) = a2;
      v5 = *(v2 + 64);
      *(v2 + 248) = a2;
      *(v2 + 252) = v5;
      *(v2 + 1792) = 1;
    }

    if (v5 != a2)
    {
      *(v2 + 64) = a2;
      v4 = a2;
      goto LABEL_13;
    }
  }

  else
  {
    if (v3 == 1)
    {
      if (*(v2 + 64) == a2)
      {
        return result;
      }

      *(v2 + 64) = a2;
      v4 = *(v2 + 60);
      goto LABEL_13;
    }

    if (!*(v2 + 68) && *(v2 + 60) != a2)
    {
      *(v2 + 60) = a2;
      v4 = a2;
      a2 = *(v2 + 64);
LABEL_13:
      *(v2 + 248) = v4;
      *(v2 + 252) = a2;
      *(v2 + 1792) = 1;
    }
  }

  return result;
}

uint64_t RFDebugServiceGetMeshVisualizationMode(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(v1 + 68);
  if (v2 == 2)
  {
    return *(v1 + 60);
  }

  if (v2 != 1)
  {
    if (*(v1 + 68))
    {
      return result;
    }

    return *(v1 + 60);
  }

  return *(v1 + 64);
}

uint64_t RFDebugServiceSetMeshVisualizationSolidMode(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 60) != a2)
  {
    *(v2 + 60) = a2;
    v3 = *(v2 + 64);
    *(v2 + 248) = a2;
    *(v2 + 252) = v3;
    *(v2 + 1792) = 1;
  }

  return result;
}

uint64_t RFDebugServiceSetMeshVisualizationWireMode(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 64) != a2)
  {
    *(v2 + 64) = a2;
    *(v2 + 248) = *(v2 + 60);
    *(v2 + 252) = a2;
    *(v2 + 1792) = 1;
  }

  return result;
}

uint64_t RFDebugServiceSetMeshVisualizationFillMode(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *(v2 + 68) = a2;
  if (a2 == 2)
  {
    v5 = *(v2 + 60);
    v4 = *(v2 + 64);
    if (v5)
    {
      if (v5 == v4)
      {
        return result;
      }

      *(v2 + 64) = v5;
      v4 = v5;
    }

    else
    {
      if (!v4)
      {
        return result;
      }

      *(v2 + 60) = v4;
      v5 = v4;
    }

    goto LABEL_21;
  }

  if (a2 == 1)
  {
    v6 = *(v2 + 60);
    v5 = *(v2 + 64);
    if (v5)
    {
      if (!v6)
      {
        return result;
      }
    }

    else
    {
      if (!v6)
      {
        return result;
      }

      *(v2 + 64) = v6;
      v5 = v6;
    }

    v4 = 0;
    *(v2 + 60) = 0;
LABEL_21:
    *(v2 + 248) = v4;
    *(v2 + 252) = v5;
    *(v2 + 1792) = 1;
    return result;
  }

  if (a2)
  {
    return result;
  }

  v4 = *(v2 + 60);
  v3 = *(v2 + 64);
  if (v4)
  {
    if (!v3)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (v3)
  {
    *(v2 + 60) = v3;
    v4 = v3;
LABEL_20:
    v5 = 0;
    *(v2 + 64) = 0;
    goto LABEL_21;
  }

  return result;
}

int8x16_t RFDebugServiceSetMeshVisualizationSolidConstantModeColor(uint64_t a1, float32x4_t a2)
{
  __asm { FMOV            V2.4S, #1.0 }

  result = vbicq_s8(vbslq_s8(vcgtq_f32(a2, _Q2), _Q2, a2), vcltzq_f32(a2));
  *(*(a1 + 16) + 288) = result;
  return result;
}

int8x16_t RFDebugServiceSetMeshVisualizationWireConstantModeColor(uint64_t a1, float32x4_t a2)
{
  __asm { FMOV            V2.4S, #1.0 }

  result = vbicq_s8(vbslq_s8(vcgtq_f32(a2, _Q2), _Q2, a2), vcltzq_f32(a2));
  *(*(a1 + 16) + 304) = result;
  return result;
}

float RFDebugServiceSetMeshVisualizationClassificationColor(uint64_t a1, int a2, __n128 a3)
{
  v3 = *(a1 + 16);
  v5 = a3;
  return rf::ColorPalette::setColor((v3 + 336), a2, &v5, a3.n128_f32[0]);
}

__n128 RFDebugServiceGetMeshVisualizationClassificationColor(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 336);
  v4 = (*(v2 + 344) - v3) >> 4 <= a2 || a2 <= 0;
  v5 = v2 + 368;
  if (!v4)
  {
    v5 = v3 + 16 * a2;
  }

  return *v5;
}

uint64_t RFDebugServiceSetMeshVisualizationClassificationsVisibility(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  result = rf::ColorPalette::setColorVisibility(v3 + 416, a2);
  *(v3 + 496) = ((-1 << ((*(v3 + 424) - *(v3 + 416)) >> 4)) ^ a2) == -1;
  return result;
}

uint64_t RFDebugServiceGetMeshVisualizationClassificationsVisibility(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 472);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(result) = 0;
  v5 = *(v1 + 464);
  do
  {
    result = (((*(v5 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3) & 1) << v3) | result;
    ++v3;
  }

  while (v2 != v3);
  return result;
}

float RFDebugServiceSetMeshVisualizationMaterialColor(uint64_t a1, int a2, __n128 a3)
{
  v3 = *(a1 + 16);
  v5 = a3;
  return rf::ColorPalette::setColor((v3 + 336), a2, &v5, a3.n128_f32[0]);
}

__n128 RFDebugServiceGetMeshVisualizationMaterialColor(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 336);
  v4 = (*(v2 + 344) - v3) >> 4 <= a2 || a2 <= 0;
  v5 = v2 + 368;
  if (!v4)
  {
    v5 = v3 + 16 * a2;
  }

  return *v5;
}

uint64_t RFDebugServiceSetMeshVisualizationMaterialsVisibility(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  result = rf::ColorPalette::setColorVisibility(v3 + 336, a2);
  *(v3 + 497) = ((-1 << ((*(v3 + 344) - *(v3 + 336)) >> 4)) ^ a2) == -1;
  return result;
}

uint64_t RFDebugServiceGetMeshVisualizationMaterialsVisibility(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 392);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(result) = 0;
  v5 = *(v1 + 384);
  do
  {
    result = (((*(v5 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3) & 1) << v3) | result;
    ++v3;
  }

  while (v2 != v3);
  return result;
}

double RFDebugServiceSetPRRMeshVisualizationEnabled(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  *(v2 + 69) = a2;
  result = *(v2 + 72);
  *(v2 + 568) = result;
  *(v2 + 1793) = 1;
  return result;
}

uint64_t RFDebugServiceSetPRRMeshVisualizationSolidMode(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 72) != a2)
  {
    *(v2 + 72) = a2;
    v3 = *(v2 + 76);
    *(v2 + 568) = a2;
    *(v2 + 572) = v3;
    *(v2 + 1793) = 1;
  }

  return result;
}

uint64_t RFDebugServiceSetPRRMeshVisualizationWireMode(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 76) != a2)
  {
    *(v2 + 76) = a2;
    *(v2 + 568) = *(v2 + 72);
    *(v2 + 572) = a2;
    *(v2 + 1793) = 1;
  }

  return result;
}

int8x16_t RFDebugServiceSetPRRMeshVisualizationSolidConstantModeColor(uint64_t a1, float32x4_t a2)
{
  __asm { FMOV            V2.4S, #1.0 }

  result = vbicq_s8(vbslq_s8(vcgtq_f32(a2, _Q2), _Q2, a2), vcltzq_f32(a2));
  *(*(a1 + 16) + 608) = result;
  return result;
}

int8x16_t RFDebugServiceSetPRRMeshVisualizationWireConstantModeColor(uint64_t a1, float32x4_t a2)
{
  __asm { FMOV            V2.4S, #1.0 }

  result = vbicq_s8(vbslq_s8(vcgtq_f32(a2, _Q2), _Q2, a2), vcltzq_f32(a2));
  *(*(a1 + 16) + 624) = result;
  return result;
}

float RFDebugServiceSetPRRMeshVisualizationClassificationColor(uint64_t a1, int a2, __n128 a3)
{
  v3 = *(a1 + 16);
  v5 = a3;
  return rf::ColorPalette::setColor((v3 + 656), a2, &v5, a3.n128_f32[0]);
}

__n128 RFDebugServiceGetPRRMeshVisualizationClassificationColor(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 656);
  v4 = (*(v2 + 664) - v3) >> 4 <= a2 || a2 <= 0;
  v5 = v2 + 688;
  if (!v4)
  {
    v5 = v3 + 16 * a2;
  }

  return *v5;
}

uint64_t RFDebugServiceSetPRRMeshVisualizationClassificationsVisibility(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  result = rf::ColorPalette::setColorVisibility(v3 + 736, a2);
  *(v3 + 816) = ((-1 << ((*(v3 + 744) - *(v3 + 736)) >> 4)) ^ a2) == -1;
  return result;
}

uint64_t RFDebugServiceGetPRRMeshVisualizationClassificationsVisibility(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 792);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(result) = 0;
  v5 = *(v1 + 784);
  do
  {
    result = (((*(v5 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3) & 1) << v3) | result;
    ++v3;
  }

  while (v2 != v3);
  return result;
}

float RFDebugServiceSetPRRMeshVisualizationMaterialColor(uint64_t a1, int a2, __n128 a3)
{
  v3 = *(a1 + 16);
  v5 = a3;
  return rf::ColorPalette::setColor((v3 + 656), a2, &v5, a3.n128_f32[0]);
}

__n128 RFDebugServiceGetPRRMeshVisualizationMaterialColor(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 656);
  v4 = (*(v2 + 664) - v3) >> 4 <= a2 || a2 <= 0;
  v5 = v2 + 688;
  if (!v4)
  {
    v5 = v3 + 16 * a2;
  }

  return *v5;
}

uint64_t RFDebugServiceSetPRRMeshVisualizationMaterialsVisibility(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  result = rf::ColorPalette::setColorVisibility(v3 + 656, a2);
  *(v3 + 817) = ((-1 << ((*(v3 + 664) - *(v3 + 656)) >> 4)) ^ a2) == -1;
  return result;
}

uint64_t RFDebugServiceGetPRRMeshVisualizationMaterialsVisibility(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 712);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(result) = 0;
  v5 = *(v1 + 704);
  do
  {
    result = (((*(v5 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3) & 1) << v3) | result;
    ++v3;
  }

  while (v2 != v3);
  return result;
}

void RFDebugServiceSetRoomVisualizationEnabled(uint64_t a1, std::string::value_type a2)
{
  v2 = *(a1 + 16);
  v2[3].__r_.__value_.__s.__data_[16] = a2;
  v2[74].__r_.__value_.__s.__data_[18] = 1;
  __p.__r_.__value_.__s.__data_[0] = 0;
  v4 = 0;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(v2 + 4, &__p);
  if (v4 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26180A638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RFDebugServiceSetRoomVisualizationClient(uint64_t a1, char *__s)
{
  v3 = *(a1 + 16);
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v4;
  if (v4)
  {
    memcpy(&__p, __s, v4);
  }

  __p.__r_.__value_.__s.__data_[v5] = 0;
  v7 = 1;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(v3 + 4, &__p);
  if (v7 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26180A758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RFDebugServiceSetRoomVisualizationMode(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 128) != a2)
  {
    *(v2 + 128) = a2;
    *(v2 + 1794) = 1;
  }

  return result;
}

uint64_t RFDebugServiceSetRoomVisualizationCurrentRoomOnly(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 132) != a2)
  {
    *(v2 + 132) = a2;
  }

  return result;
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer19DebugOptionConsumerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_13[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::DebugOptionConsumer]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4818 = 0u;
  xmmword_2810C4828 = 0u;
  xmmword_2810C4838 = 0u;
  unk_2810C4848 = 0u;
  xmmword_2810C4858 = 0u;
  unk_2810C4868 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4818 + 1) = p_dst;
  *&xmmword_2810C4828 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::DebugOptionConsumer>>::initCallback;
  *&xmmword_2810C4838 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::DebugOptionConsumer>>::finalizeCallback;
  qword_2810C4850 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::DebugOptionConsumer>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4858 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::DebugOptionConsumer>>::copyDebugDescriptionCallback;
  _MergedGlobals_5 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_26180A984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::DebugOptionConsumer>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::DebugOptionConsumer>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    rf::data_flow::consumer::DebugOptionConsumer::~DebugOptionConsumer((v2 + 16));

    JUMPOUT(0x26670D060);
  }

  return result;
}

uint64_t rf::data_flow::consumer::AtmospherePlacementConsumer::AtmospherePlacementConsumer(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_287408E18;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = *(a2 + 10);
  v7 = *a2;
  v8 = a2[1];
  *(a1 + 128) = 850045863;
  v9 = a1 + 128;
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 104) = v6;
  *(a1 + 112) = 0;
  *(a1 + 117) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1065353216;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = xmmword_26185DD00;
  *(a1 + 272) = xmmword_26185DD10;
  *(a1 + 288) = xmmword_26185DD20;
  *(a1 + 304) = xmmword_26185E1B0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 320) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = dispatch_group_create();
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);
  *(v9 + 240) = dispatch_queue_create("RoomExtentComputeQueue", v11);

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.recalibrateIntervalUpdate");
  v12 = rf::UserDefaults::floatValue(&v35, __p);
  if ((v12 & 0x100000000) == 0)
  {
    LODWORD(v12) = *(a1 + 68);
  }

  *(a1 + 68) = v12;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.recalibrateIntervalNoUpdate");
  v13 = rf::UserDefaults::floatValue(&v35, __p);
  if ((v13 & 0x100000000) == 0)
  {
    LODWORD(v13) = *(a1 + 64);
  }

  *(a1 + 64) = v13;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.minimalRoomExtentCenterDifference");
  v14 = rf::UserDefaults::floatValue(&v35, __p);
  if ((v14 & 0x100000000) == 0)
  {
    LODWORD(v14) = *(a1 + 76);
  }

  *(a1 + 76) = v14;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.minimalRoomExtentExtentDifference");
  v15 = rf::UserDefaults::floatValue(&v35, __p);
  if ((v15 & 0x100000000) == 0)
  {
    LODWORD(v15) = *(a1 + 80);
  }

  *(a1 + 80) = v15;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.minimalRoomExtentOrientationDifference");
  v16 = rf::UserDefaults::floatValue(&v35, __p);
  if ((v16 & 0x100000000) == 0)
  {
    LODWORD(v16) = *(a1 + 84);
  }

  *(a1 + 84) = v16;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.minimalRoomExtentHeightDifference");
  v17 = rf::UserDefaults::floatValue(&v35, __p);
  if ((v17 & 0x100000000) == 0)
  {
    LODWORD(v17) = *(a1 + 88);
  }

  *(a1 + 88) = v17;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.openSkyCrossfadeDuration");
  v18 = rf::UserDefaults::floatValue(&v35, __p);
  if ((v18 & 0x100000000) == 0)
  {
    LODWORD(v18) = *(a1 + 72);
  }

  *(a1 + 72) = v18;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.openSkyOutdoorCeilingOffset");
  v19 = rf::UserDefaults::floatValue(&v35, __p);
  if ((v19 & 0x100000000) == 0)
  {
    LODWORD(v19) = *(a1 + 96);
  }

  *(a1 + 96) = v19;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.openSkyCombinedExtentRatioThreshold");
  v20 = rf::UserDefaults::floatValue(&v35, __p);
  if ((v20 & 0x100000000) == 0)
  {
    LODWORD(v20) = *(a1 + 104);
  }

  *(a1 + 104) = v20;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.lowestWallOffset");
  v21 = rf::UserDefaults::floatValue(&v35, __p);
  if ((v21 & 0x100000000) == 0)
  {
    LODWORD(v21) = *(a1 + 36);
  }

  *(a1 + 36) = v21;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.highestWallOffset");
  v22 = rf::UserDefaults::floatValue(&v35, __p);
  if ((v22 & 0x100000000) == 0)
  {
    LODWORD(v22) = *(a1 + 40);
  }

  *(a1 + 40) = v22;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.openSkyDefaultBoundsType");
  v23 = rf::UserDefaults::intValue(&v35, __p);
  v25 = v24;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
    if ((v25 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if ((v25 & 1) == 0)
  {
    goto LABEL_78;
  }

  if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_78;
    }

    v26 = 257;
  }

  else
  {
    v26 = 256;
  }

  *(a1 + 92) = v26;
LABEL_78:
  std::string::basic_string[abi:ne200100]<0>(v33, "");
  rf::UserDefaults::UserDefaults(&v35, v33);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.environment.openSkyCombinedExtentEstimationMode");
  v27 = rf::UserDefaults::intValue(&v35, __p);
  v29 = v28;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v35);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if ((v29 & 1) != 0 && v27 < 5)
  {
    *(a1 + 100) = v27;
  }

  return a1;
}

void sub_26180B114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  rf::UserDefaults::~UserDefaults((v23 - 40));
  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v21 + 192);
  std::mutex::~mutex(v22);
  _Unwind_Resume(a1);
}

void rf::data_flow::consumer::AtmospherePlacementConsumer::useRFRoomExtentFeatureFlagEnabled(rf::data_flow::consumer::AtmospherePlacementConsumer *this)
{
  if ((atomic_load_explicit(&qword_2810C4880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C4880))
  {
    _MergedGlobals_6 = _os_feature_enabled_impl();

    __cxa_guard_release(&qword_2810C4880);
  }
}

void rf::data_flow::consumer::AtmospherePlacementConsumer::calibrate(rf *a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    v7 = v3;
    v8 = v4;
    v5 = rf::realityFusionLogObject(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2617CB000, v5, OS_LOG_TYPE_INFO, "AtmospherePlacementConsumer: Skipping calibration, not needed for Atmosphere", v6, 2u);
    }
  }

  else
  {

    rf::data_flow::consumer::AtmospherePlacementConsumer::useRFRoomExtentFeatureFlagEnabled(a1);
  }
}

void rf::data_flow::consumer::AtmospherePlacementConsumer::~AtmospherePlacementConsumer(rf::data_flow::consumer::AtmospherePlacementConsumer *this)
{
  rf::data_flow::consumer::AtmospherePlacementConsumer::~AtmospherePlacementConsumer(this);

  JUMPOUT(0x26670D060);
}

{

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(this + 192);
  std::mutex::~mutex(this + 2);
}

uint64_t rf::data_flow::consumer::VFXCollisionConsumer::consumeLatestUpdate(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32) != 1 || *(a2 + 16) != 1)
  {
    return result;
  }

  v2 = result;
  v3 = *(a2 + 24);
  REVFXSceneComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  v6 = ComponentsOfClass;
  v7 = v5;
  *__p = 0u;
  v158 = 0u;
  v159 = 1065353216;
  if (v5)
  {
    v8 = 8 * v5;
    v9 = ComponentsOfClass;
    while ((MEMORY[0x26670CD30](*v9) & 1) == 0)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v9 = ComponentsOfClass;
  }

  v10 = (v6 + 8 * v7);
  if (v10 == v9)
  {
    goto LABEL_30;
  }

  do
  {
    v11 = 0x9DDFEA08EB382D69 * ((8 * (*v9 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*v9));
    v12 = 0x9DDFEA08EB382D69 * (HIDWORD(*v9) ^ (v11 >> 47) ^ v11);
    v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
    if (!__p[1])
    {
      goto LABEL_26;
    }

    v14 = vcnt_s8(__p[1]);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
      if (v13 >= __p[1])
      {
        v15 = v13 % __p[1];
      }
    }

    else
    {
      v15 = v13 & (__p[1] - 1);
    }

    v16 = *(__p[0] + v15);
    if (!v16 || (v17 = *v16) == 0)
    {
LABEL_26:
      operator new();
    }

    while (1)
    {
      v18 = v17[1];
      if (v18 == v13)
      {
        break;
      }

      if (v14.u32[0] > 1uLL)
      {
        if (v18 >= __p[1])
        {
          v18 %= __p[1];
        }
      }

      else
      {
        v18 &= __p[1] - 1;
      }

      if (v18 != v15)
      {
        goto LABEL_26;
      }

LABEL_25:
      v17 = *v17;
      if (!v17)
      {
        goto LABEL_26;
      }
    }

    if (v17[2] != *v9)
    {
      goto LABEL_25;
    }

    do
    {
      if (++v9 == v10)
      {
        goto LABEL_30;
      }
    }

    while ((MEMORY[0x26670CD30](*v9) & 1) == 0);
  }

  while (v9 != v10);
LABEL_30:
  v19 = v2 + 4;
  v20 = 0x9DDFEA08EB382D69 * ((8 * (v3 & 0x1FFFFFFF) + 8) ^ HIDWORD(v3));
  v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v3) ^ (v20 >> 47) ^ v20);
  v22 = 0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47));
  v23 = v2[5];
  if (*(&v158 + 1))
  {
    if (!*&v23)
    {
      goto LABEL_51;
    }

    v24 = vcnt_s8(v23);
    v24.i16[0] = vaddlv_u8(v24);
    if (v24.u32[0] > 1uLL)
    {
      v25 = 0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47));
      if (v22 >= *&v23)
      {
        v25 = v22 % *&v23;
      }
    }

    else
    {
      v25 = (*&v23 - 1) & v22;
    }

    v28 = *(*v19 + 8 * v25);
    if (!v28 || (v29 = *v28) == 0)
    {
LABEL_51:
      operator new();
    }

    while (1)
    {
      v30 = v29[1];
      if (v30 == v22)
      {
        if (v29[2] == v3)
        {
          v152 = v2[2];
          std::mutex::lock(v152);
          v36 = v29 + 3;
          v37 = v158;
          if (v158)
          {
            v38 = 0;
            v39 = 0;
LABEL_69:
            v40 = v29[4];
            if (!*&v40)
            {
              goto LABEL_85;
            }

            v41 = v37[2];
            v42 = 0x9DDFEA08EB382D69 * ((8 * (v41 & 0x1FFFFFFF) + 8) ^ HIDWORD(v41));
            v43 = 0x9DDFEA08EB382D69 * (HIDWORD(v41) ^ (v42 >> 47) ^ v42);
            v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
            v45 = vcnt_s8(v40);
            v45.i16[0] = vaddlv_u8(v45);
            if (v45.u32[0] > 1uLL)
            {
              v46 = v44;
              if (v44 >= *&v40)
              {
                v46 = v44 % *&v40;
              }
            }

            else
            {
              v46 = v44 & (*&v40 - 1);
            }

            v47 = *(*v36 + 8 * v46);
            if (!v47 || (v48 = *v47) == 0)
            {
LABEL_85:
              *__n = 0u;
              v155 = 0u;
              v156 = 1065353216;
              if ((v39 & 1) != 0 || (v38 = *&v152[2].__m_.__opaque[24]) == 0)
              {
                if (v38)
                {
                  goto LABEL_92;
                }
              }

              else
              {
                do
                {
                  if (*(v38 + 76) == 1)
                  {
                    break;
                  }

                  v38 = *v38;
                }

                while (v38);
                if (!v38)
                {
                  goto LABEL_99;
                }

LABEL_92:
                if (*(v38 + 76) != 1)
                {
                  std::__throw_bad_variant_access[abi:ne200100]();
                }

                v50 = v38;
                while (1)
                {
                  v51 = 0;
                  v52 = v37[2];
                  v54 = *(v50 + 14);
                  v53 = *(v50 + 15);
                  v55 = *(v50 + 5);
                  v56 = *(v50 + 6);
                  v57 = *(v50 + 7);
                  v58 = *(v50 + 8);
                  v59 = *(v50 + 12);
                  v60 = *(v50 + 13);
                  v160 = *(v50 + 11);
                  v161 = v59;
                  v162 = v60;
                  v163 = v54;
                  do
                  {
                    *(&v164 + v51) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, COERCE_FLOAT(*(&v160 + v51))), v56, *(&v160 + v51), 1), v57, *(&v160 + v51), 2), v58, *(&v160 + v51), 3);
                    v51 += 16;
                  }

                  while (v51 != 64);
                  REVFXSceneComponentAddCollisionPlane();
                  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,long long>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,long long>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,long long>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,long long>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&,long long &>(__n, (v50 + 2));
                  v50 = *v50;
                  if (!v50)
                  {
                    break;
                  }

                  while (*(v50 + 76) != 1)
                  {
                    v50 = *v50;
                    if (!v50)
                    {
                      goto LABEL_99;
                    }
                  }
                }
              }

LABEL_99:
              v61 = v37[2];
              v62 = 0x9DDFEA08EB382D69 * ((8 * (v61 & 0x1FFFFFFF) + 8) ^ HIDWORD(v61));
              v63 = 0x9DDFEA08EB382D69 * (HIDWORD(v61) ^ (v62 >> 47) ^ v62);
              v64 = 0x9DDFEA08EB382D69 * (v63 ^ (v63 >> 47));
              v153 = v29[4];
              if (!*&v153)
              {
                goto LABEL_115;
              }

              v65 = vcnt_s8(v153);
              v65.i16[0] = vaddlv_u8(v65);
              if (v65.u32[0] > 1uLL)
              {
                v66 = 0x9DDFEA08EB382D69 * (v63 ^ (v63 >> 47));
                if (v64 >= *&v153)
                {
                  v66 = v64 % *&v153;
                }
              }

              else
              {
                v66 = v64 & (*&v153 - 1);
              }

              v67 = *(*v36 + 8 * v66);
              if (!v67 || (v68 = *v67) == 0)
              {
LABEL_115:
                operator new();
              }

              while (1)
              {
                v69 = v68[1];
                if (v69 == v64)
                {
                  if (v68[2] == v61)
                  {
                    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(__n);
                    v39 = 1;
                    goto LABEL_116;
                  }
                }

                else
                {
                  if (v65.u32[0] > 1uLL)
                  {
                    if (v69 >= *&v153)
                    {
                      v69 %= *&v153;
                    }
                  }

                  else
                  {
                    v69 &= *&v153 - 1;
                  }

                  if (v69 != v66)
                  {
                    goto LABEL_115;
                  }
                }

                v68 = *v68;
                if (!v68)
                {
                  goto LABEL_115;
                }
              }
            }

            while (1)
            {
              v49 = v48[1];
              if (v49 == v44)
              {
                if (v48[2] == v41)
                {
LABEL_116:
                  v37 = *v37;
                  if (!v37)
                  {
                    break;
                  }

                  goto LABEL_69;
                }
              }

              else
              {
                if (v45.u32[0] > 1uLL)
                {
                  if (v49 >= *&v40)
                  {
                    v49 %= *&v40;
                  }
                }

                else
                {
                  v49 &= *&v40 - 1;
                }

                if (v49 != v46)
                {
                  goto LABEL_85;
                }
              }

              v48 = *v48;
              if (!v48)
              {
                goto LABEL_85;
              }
            }
          }

          v71 = v29 + 5;
          v70 = v29[5];
          if (!v70)
          {
            goto LABEL_236;
          }

          v72 = v29 + 3;
          while (2)
          {
            if (__p[1])
            {
              v73 = v70[2];
              v74 = 0x9DDFEA08EB382D69 * ((8 * (v73 & 0x1FFFFFFF) + 8) ^ HIDWORD(v73));
              v75 = 0x9DDFEA08EB382D69 * (HIDWORD(v73) ^ (v74 >> 47) ^ v74);
              v76 = 0x9DDFEA08EB382D69 * (v75 ^ (v75 >> 47));
              v77 = vcnt_s8(__p[1]);
              v77.i16[0] = vaddlv_u8(v77);
              if (v77.u32[0] > 1uLL)
              {
                v78 = v76;
                if (v76 >= __p[1])
                {
                  v78 = v76 % __p[1];
                }
              }

              else
              {
                v78 = v76 & (__p[1] - 1);
              }

              v79 = *(__p[0] + v78);
              if (v79)
              {
                for (i = *v79; i; i = *i)
                {
                  v81 = i[1];
                  if (v76 == v81)
                  {
                    if (i[2] == v73)
                    {
                      v91 = *v70;
                      goto LABEL_162;
                    }
                  }

                  else
                  {
                    if (v77.u32[0] > 1uLL)
                    {
                      if (v81 >= __p[1])
                      {
                        v81 %= __p[1];
                      }
                    }

                    else
                    {
                      v81 &= __p[1] - 1;
                    }

                    if (v81 != v78)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v82 = v29[4];
            v83 = v70[1];
            v84 = vcnt_s8(v82);
            v84.i16[0] = vaddlv_u8(v84);
            if (v84.u32[0] > 1uLL)
            {
              if (v83 >= *&v82)
              {
                v83 %= *&v82;
              }
            }

            else
            {
              v83 &= *&v82 - 1;
            }

            v91 = *v70;
            v85 = *(*v72 + 8 * v83);
            do
            {
              v86 = v85;
              v85 = *v85;
            }

            while (v85 != v70);
            if (v86 == v71)
            {
              goto LABEL_271;
            }

            v87 = v86[1];
            if (v84.u32[0] > 1uLL)
            {
              if (v87 >= *&v82)
              {
                v87 %= *&v82;
              }
            }

            else
            {
              v87 &= *&v82 - 1;
            }

            v88 = *v70;
            if (v87 == v83)
            {
LABEL_154:
              if (v88)
              {
                goto LABEL_155;
              }
            }

            else
            {
LABEL_271:
              if (!v91)
              {
                goto LABEL_153;
              }

              v89 = v91[1];
              if (v84.u32[0] > 1uLL)
              {
                if (v89 >= *&v82)
                {
                  v89 %= *&v82;
                }
              }

              else
              {
                v89 &= *&v82 - 1;
              }

              v88 = *v70;
              if (v89 != v83)
              {
LABEL_153:
                *(*v72 + 8 * v83) = 0;
                v88 = *v70;
                goto LABEL_154;
              }

LABEL_155:
              v90 = v88[1];
              if (v84.u32[0] > 1uLL)
              {
                if (v90 >= *&v82)
                {
                  v90 %= *&v82;
                }
              }

              else
              {
                v90 &= *&v82 - 1;
              }

              if (v90 != v83)
              {
                *(*v72 + 8 * v90) = v86;
                v88 = *v70;
              }
            }

            *v86 = v88;
            *v70 = 0;
            --v29[6];
            v164.n128_u64[0] = v70;
            v164.n128_u64[1] = (v29 + 3);
            v165.n128_u8[0] = 1;
            *(v165.n128_u32 + 1) = 0;
            v165.n128_u32[1] = 0;
            std::unique_ptr<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>>>>::~unique_ptr[abi:ne200100](&v164);
LABEL_162:
            v70 = v91;
            if (!v91)
            {
              v92 = *v71;
              if (v92)
              {
                v93 = 0;
                m = 0;
                j = 0;
                k = 0;
                do
                {
                  if ((v93 & 1) == 0)
                  {
                    for (j = *&v152[52].__m_.__opaque[48]; j; j = *j)
                    {
                      if (*(j[6] + 256) == 1)
                      {
                        break;
                      }
                    }
                  }

                  if (j)
                  {
                    v97 = j[6];
                    if (*(v97 + 256) != 1)
                    {
                      std::__throw_bad_variant_access[abi:ne200100]();
                    }

                    v98 = j;
LABEL_172:
                    if (!std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v92 + 3, (v98 + 2)))
                    {
                      v99 = 0;
                      v101 = *(v97 + 176);
                      v100 = *(v97 + 192);
                      v102 = *(v97 + 32);
                      v103 = *(v97 + 48);
                      v104 = *(v97 + 64);
                      v105 = *(v97 + 80);
                      v106 = *(v97 + 144);
                      v107 = *(v97 + 160);
                      v108 = v92[2];
                      v160 = *(v97 + 128);
                      v161 = v106;
                      v162 = v107;
                      v163 = v101;
                      do
                      {
                        *(&v164 + v99) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v160 + v99))), v103, *(&v160 + v99), 1), v104, *(&v160 + v99), 2), v105, *(&v160 + v99), 3);
                        v99 += 16;
                      }

                      while (v99 != 64);
                      v164.n128_u64[0] = REVFXSceneComponentAddCollisionPlane();
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,long long>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,long long>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,long long>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,long long>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&,long long &>(v92 + 3, (v98 + 2));
                    }

                    while (1)
                    {
                      v98 = *v98;
                      if (!v98)
                      {
                        break;
                      }

                      v97 = v98[6];
                      if (*(v97 + 256) == 1)
                      {
                        goto LABEL_172;
                      }
                    }
                  }

                  if ((v93 & 1) == 0)
                  {
                    for (k = *v152[54].__m_.__opaque; k; k = *k)
                    {
                      if (*(k + 76) == 1)
                      {
                        break;
                      }
                    }
                  }

                  if (k)
                  {
                    v109 = k;
LABEL_185:
                    v110 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v92 + 3, (v109 + 2));
                    if (v110)
                    {
                      MEMORY[0x26670CD40](v92[2], v110[6]);
                      v111 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v92 + 3, (v109 + 2));
                      if (v111)
                      {
                        v112 = v92[4];
                        v113 = v111[1];
                        v114 = vcnt_s8(v112);
                        v114.i16[0] = vaddlv_u8(v114);
                        if (v114.u32[0] > 1uLL)
                        {
                          if (v113 >= *&v112)
                          {
                            v113 %= *&v112;
                          }
                        }

                        else
                        {
                          v113 &= *&v112 - 1;
                        }

                        v115 = *v111;
                        v116 = v92[3];
                        v117 = *(v116 + 8 * v113);
                        do
                        {
                          v118 = v117;
                          v117 = *v117;
                        }

                        while (v117 != v111);
                        if (v118 == v92 + 5)
                        {
                          goto LABEL_204;
                        }

                        v119 = v118[1];
                        if (v114.u32[0] > 1uLL)
                        {
                          if (v119 >= *&v112)
                          {
                            v119 %= *&v112;
                          }
                        }

                        else
                        {
                          v119 &= *&v112 - 1;
                        }

                        if (v119 == v113)
                        {
LABEL_206:
                          if (v115)
                          {
                            v120 = *(v115 + 8);
                            goto LABEL_208;
                          }
                        }

                        else
                        {
LABEL_204:
                          if (!v115)
                          {
                            goto LABEL_205;
                          }

                          v120 = *(v115 + 8);
                          if (v114.u32[0] > 1uLL)
                          {
                            v121 = *(v115 + 8);
                            if (v120 >= *&v112)
                            {
                              v121 = v120 % *&v112;
                            }
                          }

                          else
                          {
                            v121 = v120 & (*&v112 - 1);
                          }

                          if (v121 != v113)
                          {
LABEL_205:
                            *(v116 + 8 * v113) = 0;
                            v115 = *v111;
                            goto LABEL_206;
                          }

LABEL_208:
                          if (v114.u32[0] > 1uLL)
                          {
                            if (v120 >= *&v112)
                            {
                              v120 %= *&v112;
                            }
                          }

                          else
                          {
                            v120 &= *&v112 - 1;
                          }

                          if (v120 != v113)
                          {
                            *(v92[3] + 8 * v120) = v118;
                            v115 = *v111;
                          }
                        }

                        *v118 = v115;
                        *v111 = 0;
                        --v92[6];
                        operator delete(v111);
                      }
                    }

                    while (1)
                    {
                      v109 = *v109;
                      if (!v109)
                      {
                        break;
                      }

                      if (*(v109 + 76) == 1)
                      {
                        goto LABEL_185;
                      }
                    }
                  }

                  if ((v93 & 1) == 0)
                  {
                    for (m = *&v152[53].__m_.__opaque[24]; m; m = *m)
                    {
                      if (*(m[6] + 256) == 1)
                      {
                        break;
                      }
                    }
                  }

                  if (m)
                  {
                    v122 = m[6];
                    if (*(v122 + 256) != 1)
                    {
                      std::__throw_bad_variant_access[abi:ne200100]();
                    }

                    v123 = m;
LABEL_225:
                    v124 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v92 + 3, (v123 + 2));
                    v125 = 0;
                    if (v124)
                    {
                      v126 = v124[6];
                      v128 = *(v122 + 176);
                      v127 = *(v122 + 192);
                      v129 = *(v122 + 32);
                      v130 = *(v122 + 48);
                      v131 = *(v122 + 64);
                      v132 = *(v122 + 80);
                      v133 = *(v122 + 144);
                      v134 = *(v122 + 160);
                      v135 = v92[2];
                      v160 = *(v122 + 128);
                      v161 = v133;
                      v162 = v134;
                      v163 = v128;
                      do
                      {
                        *(&v164 + v125) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, COERCE_FLOAT(*(&v160 + v125))), v130, *(&v160 + v125), 1), v131, *(&v160 + v125), 2), v132, *(&v160 + v125), 3);
                        v125 += 16;
                      }

                      while (v125 != 64);
                      MEMORY[0x26670CD50](v135, v126, v127, v164, v165, v166, v167);
                    }

                    else
                    {
                      v137 = *(v122 + 176);
                      v136 = *(v122 + 192);
                      v138 = *(v122 + 32);
                      v139 = *(v122 + 48);
                      v140 = *(v122 + 64);
                      v141 = *(v122 + 80);
                      v142 = *(v122 + 144);
                      v143 = *(v122 + 160);
                      v144 = v92[2];
                      v160 = *(v122 + 128);
                      v161 = v142;
                      v162 = v143;
                      v163 = v137;
                      do
                      {
                        *(&v164 + v125) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v138, COERCE_FLOAT(*(&v160 + v125))), v139, *(&v160 + v125), 1), v140, *(&v160 + v125), 2), v141, *(&v160 + v125), 3);
                        v125 += 16;
                      }

                      while (v125 != 64);
                      v164.n128_u64[0] = REVFXSceneComponentAddCollisionPlane();
                      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,long long>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,long long>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,long long>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,long long>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&,long long &>(v92 + 3, (v123 + 2));
                    }

                    while (1)
                    {
                      v123 = *v123;
                      if (!v123)
                      {
                        break;
                      }

                      v122 = v123[6];
                      if (*(v122 + 256) == 1)
                      {
                        goto LABEL_225;
                      }
                    }
                  }

                  v92 = *v92;
                  v93 = 1;
                }

                while (v92);
              }

LABEL_236:
              std::mutex::unlock(v152);
              return std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(__p);
            }

            continue;
          }
        }
      }

      else
      {
        if (v24.u32[0] > 1uLL)
        {
          if (v30 >= *&v23)
          {
            v30 %= *&v23;
          }
        }

        else
        {
          v30 &= *&v23 - 1;
        }

        if (v30 != v25)
        {
          goto LABEL_51;
        }
      }

      v29 = *v29;
      if (!v29)
      {
        goto LABEL_51;
      }
    }
  }

  if (v23)
  {
    v26 = vcnt_s8(v23);
    v26.i16[0] = vaddlv_u8(v26);
    if (v26.u32[0] > 1uLL)
    {
      v27 = 0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47));
      if (v22 >= *&v23)
      {
        v27 = v22 % *&v23;
      }
    }

    else
    {
      v27 = (*&v23 - 1) & v22;
    }

    v31 = *v19;
    v32 = *(*v19 + 8 * v27);
    if (v32)
    {
      v33 = *v32;
      if (v33)
      {
        v34 = *&v23 - 1;
        do
        {
          v35 = v33[1];
          if (v35 == v22)
          {
            if (v33[2] == v3)
            {
              v145 = v33[1];
              if (v26.u32[0] > 1uLL)
              {
                if (v145 >= *&v23)
                {
                  v145 %= *&v23;
                }
              }

              else
              {
                v145 &= v34;
              }

              v146 = *(v31 + 8 * v145);
              do
              {
                v147 = v146;
                v146 = *v146;
              }

              while (v146 != v33);
              if (v147 == v2 + 6)
              {
                goto LABEL_256;
              }

              v148 = v147[1];
              if (v26.u32[0] > 1uLL)
              {
                if (v148 >= *&v23)
                {
                  v148 %= *&v23;
                }
              }

              else
              {
                v148 &= v34;
              }

              if (v148 != v145)
              {
LABEL_256:
                if (!*v33)
                {
                  goto LABEL_257;
                }

                v149 = *(*v33 + 8);
                if (v26.u32[0] > 1uLL)
                {
                  if (v149 >= *&v23)
                  {
                    v149 %= *&v23;
                  }
                }

                else
                {
                  v149 &= v34;
                }

                if (v149 != v145)
                {
LABEL_257:
                  *(v31 + 8 * v145) = 0;
                }
              }

              v150 = *v33;
              if (*v33)
              {
                v151 = *(v150 + 8);
                if (v26.u32[0] > 1uLL)
                {
                  if (v151 >= *&v23)
                  {
                    v151 %= *&v23;
                  }
                }

                else
                {
                  v151 &= v34;
                }

                if (v151 != v145)
                {
                  *(*v19 + 8 * v151) = v147;
                  v150 = *v33;
                }
              }

              *v147 = v150;
              *v33 = 0;
              --v2[7];
              v164.n128_u64[0] = v33;
              v164.n128_u64[1] = (v2 + 4);
              v165.n128_u8[0] = 1;
              *(v165.n128_u32 + 1) = 0;
              v165.n128_u32[1] = 0;
              std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,void *>>>>::~unique_ptr[abi:ne200100](&v164);
              return std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(__p);
            }
          }

          else
          {
            if (v26.u32[0] > 1uLL)
            {
              if (v35 >= *&v23)
              {
                v35 %= *&v23;
              }
            }

            else
            {
              v35 &= v34;
            }

            if (v35 != v27)
            {
              return std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(__p);
            }
          }

          v33 = *v33;
        }

        while (v33);
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(__p);
}

void sub_26180CDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::mutex *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  operator delete(v27);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

void rf::data_flow::consumer::VFXCollisionConsumer::~VFXCollisionConsumer(rf::data_flow::consumer::VFXCollisionConsumer *this)
{
  *this = &unk_287408E60;
  std::__hash_table<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>>>::~__hash_table(this + 32);
}

{
  *this = &unk_287408E60;
  std::__hash_table<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>>>::~__hash_table(this + 32);

  JUMPOUT(0x26670D060);
}

uint64_t std::__hash_table<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,long long>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,long long>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,long long>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,long long>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&,long long &>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  result = rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2);
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t RFAnchorGetIdentifierPtr(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 272);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_287408E98[v2])(&v5, v1 + 16);
}

uint64_t RFAnchorGetIdentifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5 = &v6;
  v6 = a2;
  v3 = *(v2 + 272);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v7 = &v5;
  return (off_287408EC8[v3])(&v7, v2 + 16);
}

uint64_t RFAnchorSetIdentifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5 = &v6;
  v6 = a2;
  v3 = *(v2 + 272);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v7 = &v5;
  return (off_287408EF8[v3])(&v7, v2 + 16);
}

uint64_t RFAnchorGetType(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v5, *(a1 + 16) + 16);
  if (v6 == 5)
  {
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  if (v6 >= 5)
  {
    v2 = v1;
  }

  else
  {
    v2 = v6;
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t RFAnchorGetARAnchor(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 272);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_287408F28[v2])(&v5, v1 + 16);
}

CFStringRef RFAnchorCopyDescription(uint64_t a1)
{
  v4[35] = *MEMORY[0x277D85DE8];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v4, *(a1 + 16) + 16);
  DebugDescriptionForAnchor = rf::helpers::getDebugDescriptionForAnchor(v4);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
  v2 = *MEMORY[0x277D85DE8];
  return DebugDescriptionForAnchor;
}

uint64_t RFAnchorGetTrackable(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v5, *(a1 + 16) + 16);
  v1 = v6;
  v2 = v6 < 6;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2 & (0x34u >> v1);
}

uint64_t RFAnchorGetTracked(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 272);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_287408F58[v2])(&v5, v1 + 16);
}

uint64_t RFAnchorSetTracked(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v5 = a2;
  v3 = *(v2 + 272);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = &v5;
  return (off_287408F88[v3])(&v6, v2 + 16);
}

__n128 RFAnchorGetTransform(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v7, *(a1 + 16) + 16);
  if (v8 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = &v5;
  *&v1 = (off_287408FB8[v8])(&v6, v7);
  v4 = v1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v7);
  v2 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t RFAnchorSetTransform(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = *(a1 + 16);
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v6 = *(v5 + 272);
  if (v6 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9 = v8;
  return (off_287408FE8[v6])(&v9, v5 + 16);
}

uint64_t RFAnchorGetAlignment(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 272);
  if (v2 == 1)
  {
    v3 = *(v1 + 224);
    if (v3 == 1)
    {
      LOBYTE(v2) = 2;
    }

    if (v3 == 2)
    {
      return -1;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    return -1;
  }
}

void RFAnchorSetAlignment(rf *a1, int a2)
{
  v4 = *(a1 + 2);
  if (*(v4 + 272) == 1)
  {
    switch(a2)
    {
      case 255:
        v7 = v2;
        v8 = v3;
        v5 = rf::realityFusionLogObject(a1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *v6 = 0;
          _os_log_error_impl(&dword_2617CB000, v5, OS_LOG_TYPE_ERROR, "RFAnchorSetAlignment: Setting the classification with kREAnchoringAlignmentAny", v6, 2u);
        }

        break;
      case 2:
        *(v4 + 224) = 1;
        break;
      case 1:
        *(v4 + 224) = 0;
        break;
    }
  }
}

uint64_t RFAnchorGetClassification(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v4, *(a1 + 16) + 16);
  if (v6 == 1 && (v5 - 1) <= 4)
  {
    v1 = qword_2618626A0[v5 - 1];
  }

  else
  {
    v1 = -1;
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void RFAnchorSetClassification(rf *a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  if (*(v4 + 272) == 1)
  {
    if (a2 > 3)
    {
      switch(a2)
      {
        case 4:
          v5 = 3;
          goto LABEL_18;
        case 8:
          v5 = 4;
          goto LABEL_18;
        case 16:
          v5 = 5;
          goto LABEL_18;
      }
    }

    else
    {
      switch(a2)
      {
        case -1:
          v8 = v2;
          v9 = v3;
          v6 = rf::realityFusionLogObject(a1);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *v7 = 0;
            _os_log_error_impl(&dword_2617CB000, v6, OS_LOG_TYPE_ERROR, "RFAnchorSetClassification: Setting the classification with kREAnchoringClassificationAny", v7, 2u);
          }

          break;
        case 1:
          v5 = 1;
          goto LABEL_18;
        case 2:
          v5 = 2;
LABEL_18:
          *(v4 + 228) = v5;
          break;
      }
    }
  }
}

__n128 RFAnchorGetCenter(uint64_t a1)
{
  v1 = *(a1 + 16);
  result.n128_u64[0] = 0;
  if (v1[17].n128_u32[0] == 1)
  {
    return v1[12];
  }

  return result;
}

__n128 RFAnchorSetCenter(uint64_t a1, __n128 result)
{
  v2 = *(a1 + 16);
  if (*(v2 + 272) == 1)
  {
    result.n128_u32[3] = 1.0;
    *(v2 + 144) = xmmword_26185DD00;
    *(v2 + 160) = xmmword_26185DD10;
    *(v2 + 176) = xmmword_26185DD20;
    *(v2 + 192) = result;
  }

  return result;
}

__n128 RFAnchorGetExtent(uint64_t a1)
{
  v1 = *(a1 + 16);
  result.n128_u64[0] = 0;
  if (v1[17].n128_u32[0] == 1)
  {
    return v1[13];
  }

  return result;
}

uint64_t RFAnchorSetExtent(uint64_t result, __n128 a2)
{
  v2 = *(result + 16);
  if (v2[17].n128_u32[0] == 1)
  {
    v2[13] = a2;
  }

  return result;
}

CFStringRef RFAnchorCopyReferenceName(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 272);
  if (v2 == 3)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = (v1 + 144);
    if (*(v1 + 167) < 0)
    {
LABEL_6:
      v4 = *v4;
    }
  }

  else
  {
    if (v2 != 2)
    {
      v4 = "";
      v3 = 0;
      return CFStringCreateWithCString(v3, v4, 0x8000100u);
    }

    v3 = *MEMORY[0x277CBECE8];
    v4 = (v1 + 152);
    if (*(v1 + 175) < 0)
    {
      goto LABEL_6;
    }
  }

  return CFStringCreateWithCString(v3, v4, 0x8000100u);
}

void RFAnchorSetReferenceName(uint64_t a1, const __CFString *a2)
{
  v2 = *(a1 + 16);
  applesauce::CF::details::CFString_get_value<true>(a2, &__str);
  v3 = *(v2 + 272);
  if (v3 == 2)
  {
    v4 = 152;
  }

  else
  {
    if (v3 != 3)
    {
      goto LABEL_6;
    }

    v4 = 144;
  }

  std::string::operator=((v2 + v4), &__str);
LABEL_6:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_26180DB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RFAnchorCopyReferenceGroup(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 272);
  if (v2 == 3)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = (v1 + 168);
    if (*(v1 + 191) < 0)
    {
LABEL_6:
      v4 = *v4;
    }
  }

  else
  {
    if (v2 != 2)
    {
      v4 = "";
      v3 = 0;
      return CFStringCreateWithCString(v3, v4, 0x8000100u);
    }

    v3 = *MEMORY[0x277CBECE8];
    v4 = (v1 + 176);
    if (*(v1 + 199) < 0)
    {
      goto LABEL_6;
    }
  }

  return CFStringCreateWithCString(v3, v4, 0x8000100u);
}

void RFAnchorSetReferenceGroup(uint64_t a1, const __CFString *a2)
{
  v2 = *(a1 + 16);
  applesauce::CF::details::CFString_get_value<true>(a2, &__str);
  v3 = *(v2 + 272);
  if (v3 == 2)
  {
    v4 = 176;
  }

  else
  {
    if (v3 != 3)
    {
      goto LABEL_6;
    }

    v4 = 168;
  }

  std::string::operator=((v2 + v4), &__str);
LABEL_6:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_26180DC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RFAnchorCreateCustom(__int128 *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v36 = *MEMORY[0x277D85DE8];
  LOBYTE(v25) = 0;
  *(&v25 + 1) = 0;
  uuid_clear(uu);
  v26 = a2;
  v27 = a3;
  v28 = a4;
  *v29 = a5;
  *&v29[16] = 16842752;
  v29[24] = 0;
  v30 = 0;
  LOBYTE(v31) = 0;
  BYTE8(v32) = 0;
  *&v33 = 0;
  uuid_clear(&v31 + 8);
  BYTE8(v33) = 0;
  BYTE8(v35) = 0;
  LOBYTE(v12) = 0;
  *(&v12 + 1) = 0;
  uuid_clear(v11);
  v6 = *a1;
  v15 = v28;
  v16[0] = *v29;
  *(v16 + 9) = *&v29[9];
  *uu = v6;
  v25 = v12;
  *v11 = v6;
  v13 = v26;
  v14 = v27;
  v17 = v30;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v18 = v31;
  v19 = v32;
  v23 = 0;
  rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>&>();
}

void sub_26180DD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void RFAnchorCreatePlane(uint64_t a1, __n128 a2, float32x4_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v39 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = 16842752;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = xmmword_26185DD00;
  v31 = xmmword_26185DD10;
  v8 = a6;
  v8.n128_u32[3] = 1.0;
  v32 = xmmword_26185DD20;
  v33 = v8;
  v34 = a7;
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      v9 = 1;
      goto LABEL_13;
    }

    if (a1 == 2)
    {
      v9 = 2;
      goto LABEL_13;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        v9 = 3;
        goto LABEL_13;
      case 8:
        v9 = 4;
        goto LABEL_13;
      case 16:
        v9 = 5;
        goto LABEL_13;
    }
  }

  v9 = 0;
LABEL_13:
  v38 = 0;
  __p = 0;
  v37 = 0;
  v10 = vmulq_f32(a3, xmmword_26185DD10);
  v35 = __PAIR64__(v9, fabsf(v10.f32[2] + vaddv_f32(*v10.f32)) <= 0.70711);
  memset(v17, 0, 24);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(v17, 0, 0, 0);
  v18 = 1;
  rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>&>();
}

void sub_26180DFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a23);
  rf::data_flow::PlaneAnchor::~PlaneAnchor(&a57);
  _Unwind_Resume(a1);
}

void RFAnchorCreateImage(char *a1, char *a2, char a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v37 = *MEMORY[0x277D85DE8];
  LOBYTE(v27) = 0;
  *(&v27 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  v28 = a4;
  v29 = a5;
  v30 = a6;
  *v31 = a7;
  *&v31[16] = 0;
  v31[18] = 1;
  v31[19] = a3;
  *&v31[20] = 0;
  v31[24] = 0;
  v32 = 0;
  v33 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  std::string::basic_string[abi:ne200100]<0>(&__s, a1);
  v36 = 0u;
  v18 = v30;
  v19[0] = *v31;
  *(v19 + 9) = *&v31[9];
  v14 = *uu;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v20 = v32;
  v21 = v33;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = __p;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = __s;
  }

  v24 = v36;
  v25 = 2;
  rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>&>();
}

void sub_26180E1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  rf::data_flow::ImageAnchor::~ImageAnchor(&a56);
  _Unwind_Resume(a1);
}

void rf::data_flow::ImageAnchor::~ImageAnchor(void **this)
{
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }
}

void RFAnchorCreateObject(char *a1, char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v39 = *MEMORY[0x277D85DE8];
  LOBYTE(v27) = 0;
  *(&v27 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  v28 = a3;
  v29 = a4;
  v30 = a5;
  *v31 = a6;
  *&v31[16] = 16842752;
  *&v31[20] = 0;
  v31[24] = 0;
  v32 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v33, a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, a1);
  LOBYTE(v36) = 0;
  *(&v36 + 1) = 0;
  uuid_clear(&v35);
  v37 = 0u;
  v38 = 0u;
  v16 = v30;
  v17[0] = *v31;
  *(v17 + 9) = *&v31[9];
  v12 = *uu;
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v18 = v32;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v33;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  v21 = v35;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = 3;
  rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>&>();
}

void sub_26180E488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  rf::data_flow::ObjectAnchor::~ObjectAnchor(&a56);
  _Unwind_Resume(a1);
}

void rf::data_flow::ObjectAnchor::~ObjectAnchor(void **this)
{
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }
}

void RFAnchorCreateCamera(rf::helpers *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = rf::helpers::kCameraIdentifier(a1);
  v6 = v5[1];
  v24 = *v5;
  v25 = v6;
  *v26 = a5;
  *&v26[16] = 16842752;
  v26[24] = 0;
  LOBYTE(v27) = 0;
  BYTE8(v28) = 0;
  *&v29 = 0;
  uuid_clear(&v27 + 8);
  BYTE8(v29) = 0;
  BYTE8(v31) = 0;
  v15 = a4;
  v16[0] = a5;
  *(v16 + 9) = *&v26[9];
  v11 = v24;
  v12 = v25;
  v13 = a2;
  v14 = a3;
  v17 = 0;
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v18 = v27;
  v19 = v28;
  v23 = 0;
  rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>&>();
}

void sub_26180E688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void RFAnchorCreateBody(rf::helpers *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = rf::helpers::kBodyIdentifier(a1);
  v6 = v5[1];
  v24 = *v5;
  v25 = v6;
  *v26 = a5;
  *&v26[16] = 16842752;
  v26[24] = 0;
  LOBYTE(v27) = 0;
  BYTE8(v28) = 0;
  *&v29 = 0;
  uuid_clear(&v27 + 8);
  BYTE8(v29) = 0;
  BYTE8(v31) = 0;
  v15 = a4;
  v16[0] = a5;
  *(v16 + 9) = *&v26[9];
  v11 = v24;
  v12 = v25;
  v13 = a2;
  v14 = a3;
  v17 = 0;
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v18 = v27;
  v19 = v28;
  v23 = 0;
  rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>&>();
}

void sub_26180E7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void RFAnchorCreate(_OWORD *a1, uint64_t a2, uint64_t a3, __n128 a4, float32x4_t a5, __n128 a6, __n128 a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *uu = 0u;
  v15 = 0u;
  uuid_clear(uu);
  v16 = xmmword_26185DD00;
  v17 = xmmword_26185DD10;
  v18 = xmmword_26185DD20;
  v19 = xmmword_26185E1B0;
  *&v20 = 16842752;
  BYTE8(v20) = 0;
  *&v21 = 0;
  LOBYTE(v22) = 0;
  BYTE8(v23) = 0;
  *&v24 = 0;
  uuid_clear(&v22 + 8);
  BYTE8(v24) = 0;
  BYTE8(v26) = 0;
  v27 = 0;
  rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>&>();
}

void sub_26180E94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void anonymous namespace::createAnchor(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, __n128 a5, float32x4_t a6, __n128 a7, __n128 a8)
{
  v81 = *MEMORY[0x277D85DE8];
  LOBYTE(v69) = 0;
  *(&v69 + 1) = 0;
  uuid_clear(uu);
  *uu = *a2;
  if (a3 <= 2)
  {
    if (!a3)
    {
      v70 = *uu;
      v71 = v69;
      v72 = a5;
      v73 = a6;
      v74 = a7;
      *v75 = a8;
      *&v75[16] = 16842752;
      *&v75[20] = 0;
      v75[24] = 0;
      v76 = 0;
      v77[0] = 0;
      v77[24] = 0;
      *&v77[32] = 0;
      uuid_clear(&v77[8]);
      v77[40] = 0;
      BYTE8(v79) = 0;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<0ul,rf::data_flow::CustomAnchor,rf::data_flow::CustomAnchor>(a1, a1, &v70);

      goto LABEL_63;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v56 = *uu;
        v57 = v69;
        v58 = a5;
        v59 = a6;
        v60 = a7;
        *v61 = a8;
        *&v61[16] = 16842752;
        *&v61[20] = 0;
        v61[24] = 0;
        obj = 0;
        v63[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v63[8], "");
        std::string::basic_string[abi:ne200100]<0>(&v63[32], "");
        v65 = 0u;
        if (*(a1 + 256) == 2)
        {
          v12 = *v61;
          *(a1 + 64) = v60;
          *(a1 + 80) = v12;
          *(a1 + 89) = *&v61[9];
          v13 = v57;
          *a1 = v56;
          *(a1 + 16) = v13;
          v14 = v59;
          *(a1 + 32) = v58;
          *(a1 + 48) = v14;
          objc_storeStrong((a1 + 112), obj);
          *(a1 + 128) = v63[0];
          std::string::operator=((a1 + 136), &v63[8]);
          std::string::operator=((a1 + 160), &v63[32]);
          *(a1 + 192) = v65;
        }

        else
        {
          v74 = v60;
          *v75 = *v61;
          *&v75[9] = *&v61[9];
          v70 = v56;
          v71 = v57;
          v72 = v58;
          v73 = v59;
          v76 = obj;
          v77[0] = v63[0];
          if ((v63[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v77[8], *&v63[8], *&v63[16]);
          }

          else
          {
            *&v77[8] = *&v63[8];
            *&v77[24] = *&v63[24];
          }

          if (SBYTE7(v64) < 0)
          {
            std::string::__init_copy_ctor_external(&v77[32], *&v63[32], *&v63[40]);
          }

          else
          {
            *&v77[32] = *&v63[32];
            *&v78 = v64;
          }

          v79 = v65;
          std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
          v26 = *v75;
          *(a1 + 64) = v74;
          *(a1 + 80) = v26;
          *(a1 + 89) = *&v75[9];
          v27 = v71;
          *a1 = v70;
          *(a1 + 16) = v27;
          v28 = v73;
          *(a1 + 32) = v72;
          *(a1 + 48) = v28;
          *(a1 + 112) = v76;
          *(a1 + 128) = v77[0];
          *(a1 + 136) = *&v77[8];
          *(a1 + 152) = *&v77[24];
          *(a1 + 160) = *&v77[32];
          *(a1 + 176) = v78;
          *(a1 + 192) = v79;
          *(a1 + 256) = 2;
        }

        if (SBYTE7(v64) < 0)
        {
          operator delete(*&v63[32]);
        }

        if ((v63[31] & 0x80000000) != 0)
        {
          operator delete(*&v63[8]);
        }
      }

      goto LABEL_63;
    }

    v56 = *uu;
    v57 = v69;
    v58 = a5;
    v59 = a6;
    v60 = a7;
    *v61 = a8;
    *&v61[16] = 16842752;
    *&v61[20] = 0;
    v61[24] = 0;
    obj = 0;
    *v63 = xmmword_26185DD00;
    *&v63[16] = xmmword_26185DD10;
    v21 = v50;
    HIDWORD(v21) = 1.0;
    *&v63[32] = xmmword_26185DD20;
    v64 = v21;
    v65 = v51;
    if (a4 <= 3)
    {
      if (a4 == 1)
      {
        v22 = 1;
        goto LABEL_56;
      }

      if (a4 == 2)
      {
        v22 = 2;
        goto LABEL_56;
      }
    }

    else
    {
      switch(a4)
      {
        case 4:
          v22 = 3;
          goto LABEL_56;
        case 8:
          v22 = 4;
          goto LABEL_56;
        case 16:
          v22 = 5;
LABEL_56:
          v67 = 0uLL;
          v66[1] = 0;
          v35 = vmulq_f32(a6, xmmword_26185DD10);
          HIDWORD(v66[0]) = v22;
          LODWORD(v66[0]) = fabsf(v35.f32[2] + vaddv_f32(*v35.f32)) <= 0.70711;
          if (*(a1 + 256) == 1)
          {
            v36 = *v61;
            *(a1 + 64) = v60;
            *(a1 + 80) = v36;
            *(a1 + 89) = *&v61[9];
            v37 = v57;
            *a1 = v56;
            *(a1 + 16) = v37;
            v38 = v59;
            *(a1 + 32) = v58;
            *(a1 + 48) = v38;
            objc_storeStrong((a1 + 112), 0);
            v39 = v64;
            *(a1 + 160) = *&v63[32];
            *(a1 + 176) = v39;
            *(a1 + 192) = v65;
            *(a1 + 208) = v66[0];
            v40 = *&v63[16];
            *(a1 + 128) = *v63;
            *(a1 + 144) = v40;
            if (&v56 != a1)
            {
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l((a1 + 216), v66[1], v67, (v67 - v66[1]) >> 4);
            }
          }

          else
          {
            v74 = v60;
            *v75 = *v61;
            *&v75[9] = *&v61[9];
            v70 = v56;
            v71 = v57;
            v72 = v58;
            v73 = v59;
            v76 = 0;
            *&v77[32] = *&v63[32];
            v78 = v64;
            v79 = v65;
            *v77 = *v63;
            *&v77[16] = *&v63[16];
            *v80 = v66[0];
            *&v80[16] = 0uLL;
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v80[8], v66[1], v67, (v67 - v66[1]) >> 4);
            std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
            v41 = *&v80[24];
            *(a1 + 112) = v76;
            v42 = *v75;
            *(a1 + 64) = v74;
            *(a1 + 80) = v42;
            *(a1 + 89) = *&v75[9];
            v43 = v71;
            *a1 = v70;
            *(a1 + 16) = v43;
            v44 = v73;
            *(a1 + 32) = v72;
            *(a1 + 48) = v44;
            v45 = *&v77[16];
            *(a1 + 128) = *v77;
            *(a1 + 144) = v45;
            v46 = *&v77[32];
            v47 = v78;
            v48 = v79;
            *(a1 + 208) = *v80;
            *(a1 + 176) = v47;
            *(a1 + 192) = v48;
            *(a1 + 160) = v46;
            *(a1 + 216) = *&v80[8];
            *(a1 + 232) = v41;
            *(a1 + 256) = 1;
          }

          if (v66[1])
          {
            *&v67 = v66[1];
            operator delete(v66[1]);
          }

          goto LABEL_63;
      }
    }

    v22 = 0;
    goto LABEL_56;
  }

  switch(a3)
  {
    case 3:
      v56 = *uu;
      v57 = v69;
      v58 = a5;
      v59 = a6;
      v60 = a7;
      *v61 = a8;
      *&v61[16] = 16842752;
      *&v61[20] = 0;
      v61[24] = 0;
      obj = 0;
      std::string::basic_string[abi:ne200100]<0>(v63, "");
      std::string::basic_string[abi:ne200100]<0>(&v63[24], "");
      LOBYTE(v65) = 0;
      *(&v65 + 1) = 0;
      uuid_clear(&v64);
      *v66 = 0u;
      v67 = 0u;
      if (*(a1 + 256) == 3)
      {
        v16 = *v61;
        *(a1 + 64) = v60;
        *(a1 + 80) = v16;
        *(a1 + 89) = *&v61[9];
        v17 = v57;
        *a1 = v56;
        *(a1 + 16) = v17;
        v18 = v59;
        *(a1 + 32) = v58;
        *(a1 + 48) = v18;
        objc_storeStrong((a1 + 112), obj);
        std::string::operator=((a1 + 128), v63);
        std::string::operator=((a1 + 152), &v63[24]);
        v19 = v65;
        *(a1 + 176) = v64;
        *(a1 + 192) = v19;
        v20 = v67;
        *(a1 + 208) = *v66;
        *(a1 + 224) = v20;
      }

      else
      {
        v74 = v60;
        *v75 = *v61;
        *&v75[9] = *&v61[9];
        v70 = v56;
        v71 = v57;
        v72 = v58;
        v73 = v59;
        v76 = obj;
        if ((v63[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v77, *v63, *&v63[8]);
        }

        else
        {
          *v77 = *v63;
          *&v77[16] = *&v63[16];
        }

        if ((v63[47] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&v77[24], *&v63[24], *&v63[32]);
        }

        else
        {
          *&v77[24] = *&v63[24];
          *&v77[40] = *&v63[40];
        }

        v78 = v64;
        v79 = v65;
        *v80 = *v66;
        *&v80[16] = v67;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v29 = *v75;
        *(a1 + 64) = v74;
        *(a1 + 80) = v29;
        *(a1 + 89) = *&v75[9];
        v30 = v71;
        *a1 = v70;
        *(a1 + 16) = v30;
        v31 = v73;
        *(a1 + 32) = v72;
        *(a1 + 48) = v31;
        *(a1 + 112) = v76;
        v32 = *v77;
        *(a1 + 144) = *&v77[16];
        *(a1 + 128) = v32;
        *(a1 + 168) = *&v77[40];
        *(a1 + 152) = *&v77[24];
        v33 = v79;
        *(a1 + 176) = v78;
        *(a1 + 192) = v33;
        v34 = *&v80[16];
        *(a1 + 208) = *v80;
        *(a1 + 224) = v34;
        *(a1 + 256) = 3;
      }

      if ((v63[47] & 0x80000000) != 0)
      {
        operator delete(*&v63[24]);
      }

      if ((v63[23] & 0x80000000) != 0)
      {
        operator delete(*v63);
      }

      break;
    case 4:
      v70 = *uu;
      v71 = v69;
      if (*(a1 + 256) == 4)
      {
        v23 = v69;
        *a1 = *uu;
        *(a1 + 16) = v23;
        *(a1 + 32) = a5;
        *(a1 + 48) = a6;
        *(a1 + 64) = a7;
        *(a1 + 80) = a8;
        *(a1 + 96) = 16842752;
        *(a1 + 104) = 0;
        objc_storeStrong((a1 + 112), 0);
        *(a1 + 224) = 0u;
        *(a1 + 240) = 0u;
        *(a1 + 192) = 0u;
        *(a1 + 208) = 0u;
        *(a1 + 160) = 0u;
        *(a1 + 176) = 0u;
        *(a1 + 128) = 0u;
        *(a1 + 144) = 0u;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v25 = v71;
        *a1 = v70;
        *(a1 + 16) = v25;
        *(a1 + 32) = a5;
        *(a1 + 48) = a6;
        *(a1 + 64) = a7;
        *(a1 + 80) = a8;
        *(a1 + 96) = 16842752;
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        *(a1 + 128) = 0u;
        *(a1 + 144) = 0u;
        *(a1 + 160) = 0u;
        *(a1 + 176) = 0u;
        *(a1 + 192) = 0u;
        *(a1 + 208) = 0u;
        *(a1 + 224) = 0u;
        *(a1 + 240) = 0u;
        *(a1 + 256) = 4;
      }

      break;
    case 5:
      v70 = *uu;
      v71 = v69;
      if (*(a1 + 256) == 5)
      {
        v15 = v69;
        *a1 = *uu;
        *(a1 + 16) = v15;
        *(a1 + 32) = a5;
        *(a1 + 48) = a6;
        *(a1 + 64) = a7;
        *(a1 + 80) = a8;
        *(a1 + 96) = 16842752;
        *(a1 + 104) = 0;
        objc_storeStrong((a1 + 112), 0);
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v24 = v71;
        *a1 = v70;
        *(a1 + 16) = v24;
        *(a1 + 32) = a5;
        *(a1 + 48) = a6;
        *(a1 + 64) = a7;
        *(a1 + 80) = a8;
        *(a1 + 96) = 16842752;
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        *(a1 + 256) = 5;
      }

      *(a1 + 128) = 1065353216;
      break;
  }

LABEL_63:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_26180F288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  rf::data_flow::ObjectAnchor::~ObjectAnchor(&a21);
  _Unwind_Resume(a1);
}

void RFAnchorUpdate(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, float32x4_t a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v27 = *MEMORY[0x277D85DE8];
  v24[0] = a4;
  v24[1] = a5;
  v24[2] = a6;
  v24[3] = a7;
  v11 = *(a1 + 16);
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (*(v11 + 272) == 1)
        {
          goto LABEL_18;
        }
      }

      else if (a2 == 2 && *(v11 + 272) == 2)
      {
        goto LABEL_18;
      }
    }

    else if (!*(v11 + 272))
    {
      goto LABEL_18;
    }

LABEL_13:
    rf::helpers::getRFUUIDFromAnchor(v11 + 16, v25);
    if (v26)
    {
      v12 = v25[0];
    }

    else
    {
      v12 = v25;
    }

    goto LABEL_37;
  }

  if (a2 == 3)
  {
    if (*(v11 + 272) == 3)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (a2 == 4)
  {
    if (*(v11 + 272) == 4)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (a2 != 5 || *(v11 + 272) != 5)
  {
    goto LABEL_13;
  }

LABEL_18:
  v23 = v24;
  v25[0] = &v23;
  (off_287409018[a2])(v25, v11 + 16);
  if (a2 == 1)
  {
    if (*(v11 + 272) != 1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v13 = a8;
    v13.n128_u32[3] = 1.0;
    *(v11 + 144) = xmmword_26185DD00;
    *(v11 + 160) = xmmword_26185DD10;
    *(v11 + 176) = xmmword_26185DD20;
    *(v11 + 192) = v13;
    *(v11 + 208) = a9;
    if (a3 <= 3)
    {
      if (a3 == 1)
      {
        v14 = 1;
        goto LABEL_36;
      }

      if (a3 == 2)
      {
        v14 = 2;
        goto LABEL_36;
      }
    }

    else
    {
      switch(a3)
      {
        case 4:
          v14 = 3;
          goto LABEL_36;
        case 8:
          v14 = 4;
          goto LABEL_36;
        case 16:
          v14 = 5;
LABEL_36:
          v15 = vmulq_f32(*(v11 + 64), xmmword_26185DD10);
          *(v11 + 224) = fabsf(v15.f32[2] + vaddv_f32(*v15.f32)) <= 0.70711;
          *(v11 + 228) = v14;
          goto LABEL_37;
      }
    }

    v14 = 0;
    goto LABEL_36;
  }

LABEL_37:
  v16 = *MEMORY[0x277D85DE8];
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ****a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ***a1;
  v7.n128_u8[0] = 0;
  v7.n128_u64[1] = 0;
  uuid_clear(&v6);
  v6 = *v3;
  result = v7;
  *a2 = v6;
  *(a2 + 16) = result;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ****a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ***a1;
  v7.n128_u8[0] = 0;
  v7.n128_u64[1] = 0;
  uuid_clear(&v6);
  v6 = *v3;
  result = v7;
  *a2 = v6;
  *(a2 + 16) = result;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ****a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ***a1;
  v7.n128_u8[0] = 0;
  v7.n128_u64[1] = 0;
  uuid_clear(&v6);
  v6 = *v3;
  result = v7;
  *a2 = v6;
  *(a2 + 16) = result;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ****a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ***a1;
  v7.n128_u8[0] = 0;
  v7.n128_u64[1] = 0;
  uuid_clear(&v6);
  v6 = *v3;
  result = v7;
  *a2 = v6;
  *(a2 + 16) = result;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ****a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ***a1;
  v7.n128_u8[0] = 0;
  v7.n128_u64[1] = 0;
  uuid_clear(&v6);
  v6 = *v3;
  result = v7;
  *a2 = v6;
  *(a2 + 16) = result;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ****a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ***a1;
  v7.n128_u8[0] = 0;
  v7.n128_u64[1] = 0;
  uuid_clear(&v6);
  v6 = *v3;
  result = v7;
  *a2 = v6;
  *(a2 + 16) = result;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__n128 **a1, __n128 *a2)
{
  result = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  a2[2] = result;
  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__n128 **a1, __n128 *a2)
{
  result = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  a2[2] = result;
  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__n128 **a1, __n128 *a2)
{
  result = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  a2[2] = result;
  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__n128 **a1, __n128 *a2)
{
  result = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  a2[2] = result;
  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__n128 **a1, __n128 *a2)
{
  result = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  a2[2] = result;
  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorSetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__n128 **a1, __n128 *a2)
{
  result = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  a2[2] = result;
  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorUpdate::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t **a1, _OWORD *a2)
{
  v2 = **a1;
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  a2[2] = *v2;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorUpdate::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t **a1, _OWORD *a2)
{
  v2 = **a1;
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  a2[2] = *v2;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorUpdate::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t **a1, _OWORD *a2)
{
  v2 = **a1;
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  a2[2] = *v2;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorUpdate::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t **a1, _OWORD *a2)
{
  v2 = **a1;
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  a2[2] = *v2;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorUpdate::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t **a1, _OWORD *a2)
{
  v2 = **a1;
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  a2[2] = *v2;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorUpdate::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t **a1, _OWORD *a2)
{
  v2 = **a1;
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  a2[2] = *v2;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  return result;
}

void *rf::data_flow::provider::ARKitDataProvider::ARKitDataProvider(void *a1, id *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287409058;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = *a2;
  a1[6] = 0;
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

  v5 = dispatch_queue_create("RFARServiceDelegate", v4);
  v6 = a1[4];
  a1[4] = v5;

  v7 = dispatch_group_create();
  v8 = a1[3];
  a1[3] = v7;

  return a1;
}

void rf::data_flow::provider::ARKitDataProvider::~ARKitDataProvider(rf::data_flow::provider::ARKitDataProvider *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    v3 = *(this + 3);
    *(this + 3) = 0;
  }

  v4 = *(this + 4);
  *(this + 4) = 0;

  [*(this + 5) pause];
  [*(this + 5) _removeObserver:*(this + 6)];
  v5 = *(this + 5);
  *(this + 5) = 0;

  v6 = *(this + 6);
  *(this + 6) = 0;
}

{
  rf::data_flow::provider::ARKitDataProvider::~ARKitDataProvider(this);

  JUMPOUT(0x26670D060);
}

void rf::data_flow::provider::ARKitDataProvider::setARSession(rf::data_flow::provider::ARKitDataProvider *this, ARSession *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = (this + 40);
  if (*(this + 5) != v4)
  {
    v19 = 0;
    v20 = 0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 1065353216;
    v27 = 0;
    v47 = 0;
    v58 = 0;
    v59 = 0;
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v52 = 0;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    v60 = 1;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v6 = *(this + 1);
    if (v6)
    {
      rf::Session::consumeInputFromProvider(v6, &v8);
    }

    rf::data_flow::provider::InputData::~InputData(&v8);
    if (*v5)
    {
      [*v5 _removeObserver:{*(this + 6), v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18}];
    }

    objc_storeStrong(this + 5, a2);
    [*(this + 5) _addObserver:*(this + 6)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_26180FFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  rf::data_flow::provider::InputData::~InputData(&a9);

  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::provider::ARKitDataProvider::setSession(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = a2;
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = objc_alloc_init(RFARSessionObserver);
    v5 = *(a1 + 48);
    *(a1 + 48) = v4;

    [*(a1 + 48) setDispatchGroup:*(a1 + 24)];
    [*(a1 + 48) setBackgroundComputeQueue:*(a1 + 32)];
    [*(a1 + 40) _addObserver:*(a1 + 48)];
    v3 = *(a1 + 48);
  }

  v8[0] = &unk_287409098;
  v8[1] = a1;
  v8[3] = v8;
  [v3 setCallback:v8];
  result = std::__function::__value_func<void ()(rf::data_flow::provider::InputData &&)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2618100C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(rf::data_flow::provider::InputData &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<rf::data_flow::provider::ARKitDataProvider::setSession(rf::Session *)::$_0,std::allocator<rf::data_flow::provider::ARKitDataProvider::setSession(rf::Session *)::$_0>,void ()(rf::data_flow::provider::InputData &&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287409098;
  a2[1] = v2;
  return result;
}

void std::__function::__func<rf::data_flow::provider::ARKitDataProvider::setSession(rf::Session *)::$_0,std::allocator<rf::data_flow::provider::ARKitDataProvider::setSession(rf::Session *)::$_0>,void ()(rf::data_flow::provider::InputData &&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 8);
  if (v2)
  {
    rf::Session::consumeInputFromProvider(v2, a2);
  }
}

uint64_t std::__function::__func<rf::data_flow::provider::ARKitDataProvider::setSession(rf::Session *)::$_0,std::allocator<rf::data_flow::provider::ARKitDataProvider::setSession(rf::Session *)::$_0>,void ()(rf::data_flow::provider::InputData &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::provider::InputData &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__int128 *rf::helpers::kCameraIdentifier(rf::helpers *this)
{
  {
    byte_2810C5048 = 0;
    qword_2810C5050 = 0;
    uuid_clear(&rf::helpers::kCameraIdentifier(void)::_kCameraIdentifier);
  }

  if (rf::helpers::kCameraIdentifier(void)::once != -1)
  {
    dispatch_once(&rf::helpers::kCameraIdentifier(void)::once, &__block_literal_global_5);
  }

  return &rf::helpers::kCameraIdentifier(void)::_kCameraIdentifier;
}

double ___ZN2rf7helpers17kCameraIdentifierEv_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  LOBYTE(v3) = 0;
  *(&v3 + 1) = 0;
  uuid_clear(uu);
  *uu = 1;
  result = *&v3;
  rf::helpers::kCameraIdentifier(void)::_kCameraIdentifier = *uu;
  *&byte_2810C5048 = v3;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

__int128 *rf::helpers::kBodyIdentifier(rf::helpers *this)
{
  {
    byte_2810C5098 = 0;
    qword_2810C50A0 = 0;
    uuid_clear(&rf::helpers::kBodyIdentifier(void)::_kBodyIdentifier);
  }

  if (rf::helpers::kBodyIdentifier(void)::once != -1)
  {
    dispatch_once(&rf::helpers::kBodyIdentifier(void)::once, &__block_literal_global_2);
  }

  return &rf::helpers::kBodyIdentifier(void)::_kBodyIdentifier;
}

double ___ZN2rf7helpers15kBodyIdentifierEv_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  LOBYTE(v3) = 0;
  *(&v3 + 1) = 0;
  uuid_clear(uu);
  *uu = 2;
  result = *&v3;
  rf::helpers::kBodyIdentifier(void)::_kBodyIdentifier = *uu;
  *&byte_2810C5098 = v3;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

__int128 *rf::helpers::kHeadIdentifier(rf::helpers *this)
{
  {
    byte_2810C5070 = 0;
    qword_2810C5078 = 0;
    uuid_clear(&rf::helpers::kHeadIdentifier(void)::_kHeadIdentifier);
  }

  if (rf::helpers::kHeadIdentifier(void)::once != -1)
  {
    dispatch_once(&rf::helpers::kHeadIdentifier(void)::once, &__block_literal_global_4);
  }

  return &rf::helpers::kHeadIdentifier(void)::_kHeadIdentifier;
}

double ___ZN2rf7helpers15kHeadIdentifierEv_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  LOBYTE(v3) = 0;
  *(&v3 + 1) = 0;
  uuid_clear(uu);
  *uu = 1;
  result = *&v3;
  rf::helpers::kHeadIdentifier(void)::_kHeadIdentifier = *uu;
  *&byte_2810C5070 = v3;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void *rf::helpers::getMutableCameraAnchor(rf::helpers *a1)
{
  rf::helpers::kCameraIdentifier(a1);
  v2 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(a1, &rf::helpers::kCameraIdentifier(void)::_kCameraIdentifier);
  if (*(v2 + 76))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  return v2 + 6;
}

void *rf::helpers::getCameraAnchor(rf::helpers *a1)
{
  rf::helpers::kCameraIdentifier(a1);
  v2 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a1, &rf::helpers::kCameraIdentifier(void)::_kCameraIdentifier);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (*(v2 + 76))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  return v2 + 6;
}

uint64_t rf::helpers::getBaseAnchorProperties(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorIZN2rf7helpers23getBaseAnchorPropertiesERKNS_7variantIJNS6_9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEEE3__0EEJRKNS0_6__implIJSA_SB_SC_SD_SE_SF_EEEEEEDcOT_DpOT0____fmatrix[v1])(&v4, a1);
}

uint64_t rf::helpers::getRFUUIDFromAnchor@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  uuid_clear(a2);
  v6 = a2;
  v4 = *(a1 + 256);
  if (v4 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v7 = &v6;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorIZN2rf7helpers19getRFUUIDFromAnchorERKNS_7variantIJNS6_9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEEE3__0EEJRKNS0_6__implIJSA_SB_SC_SD_SE_SF_EEEEEEDcOT_DpOT0____fmatrix[v4])(&v7, a1);
}

uint64_t rf::helpers::getSourceFromAnchor(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorIZN2rf7helpers19getSourceFromAnchorERKNS_7variantIJNS6_9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEEE3__0EEJRKNS0_6__implIJSA_SB_SC_SD_SE_SF_EEEEEEDcOT_DpOT0____fmatrix[v1])(&v4, a1);
}

_BYTE *rf::helpers::getDebugDescriptionForClassification@<X0>(_DWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1 - 1;
  if (v4 > 0xC)
  {
    v5 = &str_18;
  }

  else
  {
    v5 = off_279AED038[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

void rf::helpers::getDebugDescriptionForAnchorType(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v8 = *MEMORY[0x277D85DE8];
        v5 = "Object";
        goto LABEL_15;
      case 4:
        v13 = *MEMORY[0x277D85DE8];
        v5 = "Face";
        goto LABEL_15;
      case 5:
        v6 = *MEMORY[0x277D85DE8];
        v5 = "Body";
        goto LABEL_15;
    }

LABEL_10:
    v7 = *MEMORY[0x277D85DE8];
    v5 = "Custom";
    goto LABEL_15;
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v4 = *MEMORY[0x277D85DE8];
      v5 = "Image";
LABEL_15:

      std::string::basic_string[abi:ne200100]<0>(a2, v5);
      return;
    }

    goto LABEL_10;
  }

  v19 = a1[4];
  *v20 = a1[5];
  *&v20[9] = *(a1 + 89);
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v21 = *(a1 + 14);
  v24 = a1[10];
  v25 = a1[11];
  v26 = a1[12];
  v22 = a1[8];
  v23 = a1[9];
  v10 = *(a1 + 27);
  v27 = *(a1 + 26);
  __p = 0;
  v11 = *(a1 + 28);
  v29 = 0;
  v30 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, v10, v11, (v11 - v10) >> 4);
  if ((HIDWORD(v27) - 1) >= 0xD)
  {
    v12 = "Plane";
  }

  else
  {
    v12 = off_279AED0A0[HIDWORD(v27) - 1];
  }

  std::string::basic_string[abi:ne200100]<0>(a2, v12);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  v14 = *MEMORY[0x277D85DE8];
}

CFStringRef rf::helpers::getDebugDescriptionForAnchor(uint64_t a1)
{
  v23[4] = *MEMORY[0x277D85DE8];
  rf::helpers::getDebugDescriptionForAnchorType(a1, &__p);
  if ((v19 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (p_p)
  {
    if ((v19 & 0x80u) == 0)
    {
      v3 = v19;
    }

    else
    {
      v3 = v18;
    }

    v22 = CFStringCreateWithBytes(0, p_p, v3, 0x8000100u, 0);
    if (!v22)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if ((v19 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = 0;
    if ((v19 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p);
    }
  }

  v4 = *(a1 + 256);
  if (v4 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  __p = &v16;
  (off_287409208[v4])(v23, &__p, a1);
  rf::data_flow::RFUUID::string(v23, &__p);
  if ((v19 & 0x80u) == 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  if (v5)
  {
    if ((v19 & 0x80u) == 0)
    {
      v6 = v19;
    }

    else
    {
      v6 = v18;
    }

    v21 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    if (!v21)
    {
      v13 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v13, "Could not construct");
      __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if ((v19 & 0x80) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = 0;
    if ((v19 & 0x80) != 0)
    {
LABEL_21:
      operator delete(__p);
    }
  }

  v7 = *(a1 + 256);
  if (v7 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *&v16 = &v15;
  (off_287409238[v7])(&__p, &v16, a1);
  *v14 = v20;
  v16 = 0u;
  v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<translation=(%f %f %f) rotation=(%0.2f° %0.2f° %0.2f°)>", v14[0], v14[1], v14[2], ((*&v16 * 180.0) * 0.31831), ((*(&v16 + 1) * 180.0) * 0.31831), ((*(&v16 + 2) * 180.0) * 0.31831));
  applesauce::CF::make_StringRef(&v15, v21, v8, v22);
  v9 = v15;
  CFRelease(v8);
  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_261810CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v26 - 88));
  if (a26 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef((v26 - 80));
  _Unwind_Resume(a1);
}

void re::anonymous namespace::matrixToEulerXYZ<re::Matrix4x4<float>,float>(float *a1, float *a2)
{
  v4 = a1[8];
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  if (v4 < -1.0)
  {
    v4 = -1.0;
  }

  a2[1] = asinf(v4);
  if (fabsf(a1[8]) >= 0.9999)
  {
    *a2 = atan2f(a1[6], a1[5]);
    v5 = 0.0;
  }

  else
  {
    *a2 = atan2f(-a1[9], a1[10]);
    v5 = atan2f(-a1[4], *a1);
  }

  a2[2] = v5;
}

CFTypeID applesauce::CF::make_StringRef@<X0>(CFStringRef *a1@<X8>, ...)
{
  va_start(va, a1);
  v4 = CFStringCreateWithFormatAndArguments(0, 0, @"%@: %@ - %@", va);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a1 = v4;
  v5 = CFGetTypeID(v4);
  result = CFStringGetTypeID();
  if (v5 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_261810F08(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t rf::helpers::getTrackedFromAnchor(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorIZN2rf7helpers20getTrackedFromAnchorERKNS_7variantIJNS6_9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEEE3__0EEJRKNS0_6__implIJSA_SB_SC_SD_SE_SF_EEEEEEDcOT_DpOT0____fmatrix[v1])(&v4, a1);
}

__n128 rf::helpers::planeCenterAndRotationToCenterTransform@<Q0>(__int128 *a1@<X0>, _OWORD *a2@<X8>, float a3@<S0>)
{
  v5 = vrsqrte_f32(1065353216);
  v6 = vmul_f32(v5, vrsqrts_f32(1065353216, vmul_f32(v5, v5)));
  v22 = vmulq_n_f32(xmmword_26185DD10, vmul_f32(v6, vrsqrts_f32(1065353216, vmul_f32(v6, v6))).f32[0]);
  v7 = vmuls_lane_f32(v22.f32[1], *v22.f32, 1);
  v8 = vmuls_lane_f32(v22.f32[2], v22, 2);
  v9 = vmuls_lane_f32(v22.f32[0], *v22.f32, 1);
  v10 = vmuls_lane_f32(v22.f32[0], v22, 2);
  v11 = vmuls_lane_f32(v22.f32[1], v22, 2);
  v12 = __sincosf_stret(a3);
  v13 = vmulq_f32(v22, v22).f32[0];
  v14 = vmuls_lane_f32(v12.__sinval, *v22.f32, 1);
  v15 = vmuls_lane_f32(v12.__sinval, v22, 2);
  v16 = v14 + (v10 * (1.0 - v12.__cosval));
  HIDWORD(v17) = 0;
  *&v17 = v13 + (v12.__cosval * (1.0 - v13));
  *(&v17 + 1) = v15 + (v9 * (1.0 - v12.__cosval));
  HIDWORD(v19) = 0;
  *(&v17 + 2) = -(v14 - (v10 * (1.0 - v12.__cosval)));
  *&v18 = -(v15 - (v9 * (1.0 - v12.__cosval)));
  *(&v18 + 1) = v7 + (v12.__cosval * (1.0 - v7));
  *(&v18 + 1) = COERCE_UNSIGNED_INT((v12.__sinval * v22.f32[0]) + (v11 * (1.0 - v12.__cosval)));
  *&v19 = v16;
  *(&v19 + 1) = -((v12.__sinval * v22.f32[0]) - (v11 * (1.0 - v12.__cosval)));
  *(&v19 + 2) = v8 + (v12.__cosval * (1.0 - v8));
  *a2 = v17;
  a2[1] = v18;
  v20 = *a1;
  HIDWORD(v20) = 1.0;
  a2[2] = v19;
  a2[3] = v20;
  result.n128_u64[0] = v19;
  result.n128_u32[2] = DWORD2(v19);
  return result;
}

uint64_t rf::helpers::isWorldAnchoringType()
{
  result = REAnchoringComponentGetDescriptorType();
  if (result != 1)
  {
    return REAnchoringComponentGetDescriptorType() == 13;
  }

  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getBaseAnchorProperties(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getBaseAnchorProperties(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getBaseAnchorProperties(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getBaseAnchorProperties(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getBaseAnchorProperties(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getBaseAnchorProperties(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getRFUUIDFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(void **a1, uint64_t a2)
{
  v2 = **a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getRFUUIDFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(void **a1, uint64_t a2)
{
  v2 = **a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getRFUUIDFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(void **a1, uint64_t a2)
{
  v2 = **a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getRFUUIDFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(void **a1, uint64_t a2)
{
  v2 = **a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getRFUUIDFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(void **a1, uint64_t a2)
{
  v2 = **a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getRFUUIDFromAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(void **a1, uint64_t a2)
{
  v2 = **a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::helpers::getDebugDescriptionForAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}