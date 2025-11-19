__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::CameraCollisionPathDebug>(ecs2::Entity,md::CameraCollisionPathDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A446B0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 68) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::CollisionTrianglesDebug>(ecs2::Entity,md::CollisionTrianglesDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>(void)::metadata;
  v57 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::CollisionTrianglesDebug>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 == -1 && v13 == 0)
  {
    v16 = *(v7 + 40);
    v15 = *(v7 + 48);
    if (v16 >= v15)
    {
      v18 = *(v7 + 32);
      v19 = (v16 - v18) >> 2;
      if ((v19 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v15 - v18;
      v21 = v20 >> 1;
      if (v20 >> 1 <= (v19 + 1))
      {
        v21 = v19 + 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v22 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
      }

      *(4 * v19) = v4;
      v17 = 4 * v19 + 4;
      v23 = *(v7 + 32);
      v24 = *(v7 + 40) - v23;
      v25 = (4 * v19 - v24);
      memcpy(v25, v23, v24);
      v26 = *(v7 + 32);
      *(v7 + 32) = v25;
      *(v7 + 40) = v17;
      *(v7 + 48) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v16 = v4;
      v17 = (v16 + 1);
    }

    *(v7 + 40) = v17;
    v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
    *v12 = v4;
    v12[1] = v27;
    v28 = v27 >> 6;
    v30 = *(v7 + 56);
    v29 = *(v7 + 64);
    if (v27 >> 6 >= (v29 - v30) >> 3)
    {
      v54 = v27;
      v55 = v5;
      v31 = v28 + 1;
      v32 = v28 + 1 - ((v29 - v30) >> 3);
      v33 = *(v7 + 72);
      v56 = v29 - v30;
      if (v32 > (v33 - v29) >> 3)
      {
        v34 = v33 - v30;
        v35 = (v33 - v30) >> 2;
        if (v35 <= v31)
        {
          v35 = v28 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        if (!(v36 >> 61))
        {
          operator new();
        }

        goto LABEL_59;
      }

      v37 = 0;
      v38 = (v32 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v39 = vdupq_n_s64(v38);
      do
      {
        v40 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(vdupq_n_s64(v37), xmmword_1B33B0560)));
        if (v40.i8[0])
        {
          *(v29 + 8 * v37) = 0;
        }

        if (v40.i8[4])
        {
          *(v29 + 8 * v37 + 8) = 0;
        }

        v37 += 2;
      }

      while (v38 - ((v32 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v37);
      *(v7 + 64) = v29 + 8 * v32;
      v41 = *(v7 + 80);
      v42 = *(v7 + 88);
      v43 = (v42 - v41) >> 4;
      if (v43 <= v28)
      {
        v27 = v31 - v43;
        v44 = *(v7 + 96);
        if (v27 > (v44 - v42) >> 4)
        {
          v45 = v44 - v41;
          v46 = v45 >> 3;
          if (v45 >> 3 <= v31)
          {
            v46 = v28 + 1;
          }

          if (v45 >= 0x7FFFFFFFFFFFFFF0)
          {
            v47 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v46;
          }

          if (!(v47 >> 60))
          {
            operator new();
          }

LABEL_59:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(v7 + 88), 16 * v27);
        *(v7 + 88) = v42 + 16 * v27;
        LOBYTE(v27) = v54;
      }

      else if (v31 < v43)
      {
        *(v7 + 88) = v41 + 16 * v31;
      }

      v30 = *(v7 + 56);
      v5 = v55;
      if (v56 < *(v7 + 64) - v30)
      {
        operator new();
      }
    }

    v48 = (*(v30 + 8 * v28) + 24 * (v27 & 0x3F));
    *v48 = 0;
    v48[1] = 0;
    v48[2] = 0;
    *v48 = *(a1 + 8);
    v48[2] = *(a1 + 24);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v49 = *(v7 + 152);
    v50 = *(v7 + 160);
    while (v49 != v50)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), v4);
      v49 += 32;
    }

    goto LABEL_57;
  }

  v51 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
  v52 = *v51;
  if (*v51)
  {
    *(v51 + 8) = v52;
    operator delete(v52);
    *v51 = 0;
    *(v51 + 8) = 0;
    *(v51 + 16) = 0;
  }

  *v51 = *(a1 + 8);
  *(v51 + 16) = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
LABEL_57:
  v53 = *(v57 + 41016) + (v4 >> 16 << 6);
  *(v53 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>();
  *(v57 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>(void)::metadata) = *(v57 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::CollisionTrianglesDebug>(ecs2::Entity,md::CollisionTrianglesDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::CollisionTrianglesDebug>(ecs2::Entity,md::CollisionTrianglesDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::CollisionTrianglesDebug>(ecs2::Entity,md::CollisionTrianglesDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A445E0;
  result = std::vector<md::CollisionTriangleDebug>::vector[abi:nn200100](a2 + 1, (a1 + 8));
  a2[4] = *(a1 + 32);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::CollisionTrianglesDebug>(ecs2::Entity,md::CollisionTrianglesDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A445E0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::CollisionTrianglesDebug>(ecs2::Entity,md::CollisionTrianglesDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A445E0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::CollisionTriangleDebug>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__n128 std::__function::__func<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_1,std::allocator<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_1>,void ()(md::CameraCollisionResolutionRequest const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A44598;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::CameraCollisionVolumeDebug>(ecs2::Entity,md::CameraCollisionVolumeDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>(void)::metadata;
  v60 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::CameraCollisionVolumeDebug>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (a1 + 8);
  v13 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    v54 = 0;
    v55 = *(*(v7 + 56) + ((v14 >> 3) & 0x1FF8)) + 40 * (v14 & 0x3F);
    do
    {
      *(v55 + v54) = *(v12 + v54);
      v54 += 8;
    }

    while (v54 != 24);
    *(v55 + 24) = *(a1 + 32);
    *(v55 + 32) = *(a1 + 40);
    goto LABEL_56;
  }

  v17 = *(v7 + 40);
  v16 = *(v7 + 48);
  if (v17 >= v16)
  {
    v19 = *(v7 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = v4;
    v18 = 4 * v20 + 4;
    v24 = *(v7 + 32);
    v25 = *(v7 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v7 + 32);
    *(v7 + 32) = v26;
    *(v7 + 40) = v18;
    *(v7 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = v4;
    v18 = (v17 + 1);
  }

  *(v7 + 40) = v18;
  v28 = ((v18 - *(v7 + 32)) >> 2) - 1;
  *v13 = v4;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v7 + 56);
  v30 = *(v7 + 64);
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v57 = v28;
    v58 = v5;
    v32 = v29 + 1;
    v33 = v29 + 1 - ((v30 - v31) >> 3);
    v34 = *(v7 + 72);
    v59 = v30 - v31;
    if (v33 > (v34 - v30) >> 3)
    {
      v35 = v34 - v31;
      v36 = (v34 - v31) >> 2;
      if (v36 <= v32)
      {
        v36 = v29 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_58;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v30 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v30 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v30 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v29)
    {
      v28 = v32 - v44;
      v45 = *(v7 + 96);
      if (v28 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v29 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_58:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v28);
      *(v7 + 88) = v43 + 16 * v28;
      LOBYTE(v28) = v57;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v31 = *(v7 + 56);
    v5 = v58;
    if (v59 < *(v7 + 64) - v31)
    {
      operator new();
    }
  }

  v49 = *(v31 + 8 * v29) + 40 * (v28 & 0x3F);
  v50 = *v12;
  v51 = v12[1];
  *(v49 + 32) = *(v12 + 4);
  *v49 = v50;
  *(v49 + 16) = v51;
  v52 = *(v7 + 152);
  v53 = *(v7 + 160);
  while (v52 != v53)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
    v52 += 32;
  }

LABEL_56:
  v56 = *(v60 + 41016) + (v4 >> 16 << 6);
  *(v56 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>();
  *(v60 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>(void)::metadata) = *(v60 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::CameraCollisionVolumeDebug>(ecs2::Entity,md::CameraCollisionVolumeDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A44440;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 52) = 0;
  return result;
}

void std::__function::__func<gdc::CollisionMeshNode<double,float>::collide(std::function<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1},std::allocator<gdc::CollisionMeshNode<double,float>::collide(std::function<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1}>,void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 24);
  if (v2)
  {
    **(a1 + 8) |= (*(*v2 + 48))(v2);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<gdc::CollisionMeshNode<double,float>::collide(std::function<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1},std::allocator<gdc::CollisionMeshNode<double,float>::collide(std::function<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1}>,void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::destroy_deallocate(v3);
  }
}

__n128 std::__function::__func<gdc::CollisionMeshNode<double,float>::collide(std::function<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1},std::allocator<gdc::CollisionMeshNode<double,float>::collide(std::function<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1}>,void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A44270;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#2},std::allocator<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#2}>,BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v154 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 88);
  v135 = *a2;
  v9 = *(a2 + 16);
  v137 = *a3;
  v10 = *(a3 + 16);
  v136 = v9;
  v138 = v10;
  v139 = *a4;
  v140 = *(a4 + 16);
  if (**(a1 + 8) == 1)
  {
    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = *(a2 + 16);
    v147 = *a2;
    *v148 = v13;
    *&v148[8] = 0x3FF0000000000000;
    v14 = gm::operator*<double,4,4,1>(v11, &v147);
    v16 = v15;
    v18 = v17;
    v19 = *(a3 + 16);
    v141 = *a3;
    v142 = v19;
    v143 = 0x3FF0000000000000;
    v20 = gm::operator*<double,4,4,1>(v11, &v141);
    v22 = v21;
    v24 = v23;
    v25 = *(a4 + 16);
    v128 = *a4;
    v129 = v25;
    v130 = 1.0;
    v26 = gm::operator*<double,4,4,1>(v11, &v128);
    v29 = **(a1 + 32);
    v30 = v12[1];
    v31 = v12[2];
    if (v30 >= v31)
    {
      v33 = 0x2E8BA2E8BA2E8BA3 * ((v30 - *v12) >> 3);
      v34 = v33 + 1;
      if ((v33 + 1) > 0x2E8BA2E8BA2E8BALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v35 = 0x2E8BA2E8BA2E8BA3 * ((v31 - *v12) >> 3);
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      if (v35 >= 0x1745D1745D1745DLL)
      {
        v36 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::CollisionTriangleDebug>>(v36);
      }

      v37 = 88 * v33;
      *v37 = v14;
      *(v37 + 8) = v16;
      *(v37 + 16) = v18;
      *(v37 + 24) = v20;
      *(v37 + 32) = v22;
      *(v37 + 40) = v24;
      *(v37 + 48) = v26;
      *(v37 + 56) = v27;
      *(v37 + 64) = v28;
      *(v37 + 80) = v29;
      v32 = 88 * v33 + 88;
      v38 = *v12;
      v39 = v12[1];
      v40 = v37 + *v12 - v39;
      if (*v12 != v39)
      {
        v41 = v40;
        do
        {
          v42 = v38[1];
          *v41 = *v38;
          *(v41 + 16) = v42;
          v43 = v38[2];
          v44 = v38[3];
          v45 = v38[4];
          *(v41 + 80) = *(v38 + 10);
          *(v41 + 48) = v44;
          *(v41 + 64) = v45;
          *(v41 + 32) = v43;
          v38 = (v38 + 88);
          v41 += 88;
        }

        while (v38 != v39);
        v38 = *v12;
      }

      *v12 = v40;
      v12[1] = v32;
      v12[2] = 0;
      if (v38)
      {
        operator delete(v38);
      }
    }

    else
    {
      *v30 = v14;
      *(v30 + 8) = v16;
      *(v30 + 16) = v18;
      *(v30 + 24) = v20;
      *(v30 + 32) = v22;
      *(v30 + 40) = v24;
      *(v30 + 48) = v26;
      *(v30 + 56) = v27;
      *(v30 + 64) = v28;
      v32 = v30 + 88;
      *(v30 + 80) = v29;
    }

    v12[1] = v32;
  }

  v46 = *(a1 + 40);
  geo::NoTriangleCache<double,3>::data(&v147, &v135, &v137, &v139);
  if (v150)
  {
    return 0;
  }

  gm::Plane3<double>::Plane3(&v128, &v135, &v137, &v139);
  v47 = 0;
  v48 = 0.0;
  do
  {
    v48 = v48 + *(&v128 + v47) * *(v46 + v47);
    v47 += 8;
  }

  while (v47 != 24);
  v49 = v130 + v48;
  v50 = *(v46 + 24);
  if (fabs(v49) > v50)
  {
    return 0;
  }

  for (i = 0; i != 24; i += 8)
  {
    *&v148[i - 16] = *(&v128 + i) * v49;
  }

  v52 = 0;
  v141 = v147;
  v142 = *v148;
  do
  {
    *&v148[v52 - 16] = *(v46 + v52) - *(&v141 + v52);
    v52 += 8;
  }

  while (v52 != 24);
  v53 = v147;
  v54 = *v148;
  v126 = v147;
  v127 = *v148;
  geo::NoTriangleCache<double,3>::data(&v141, &v135, &v137, &v139);
  if ((v146 & 1) == 0 && *&v53 >= v144 && *&v53 < v145[2])
  {
    v56 = 0;
    v57 = v145;
    while (v56 != 2)
    {
      v58 = v56;
      v59 = *(&v126 + v56 + 1);
      if (v59 >= *v57)
      {
        v60 = v57[3];
        ++v57;
        ++v56;
        if (v59 < v60)
        {
          continue;
        }
      }

      if (v58 < 2)
      {
        goto LABEL_49;
      }

      break;
    }

    v131 = v53;
    v132 = v54;
    geo::NoTriangleCache<double,3>::data(&v147, &v135, &v137, &v139);
    if (v150)
    {
      goto LABEL_39;
    }

    for (j = 0; j != 24; j += 8)
    {
      *(&v133 + j) = *(&v131 + j) - *(&v135 + j);
    }

    v63 = 0;
    v64 = 0.0;
    do
    {
      v64 = v64 + *&v148[v63 - 16] * *(&v133 + v63);
      v63 += 8;
    }

    while (v63 != 24);
    v65 = 0;
    v66 = 0.0;
    do
    {
      v66 = v66 + *&v148[v65 + 8] * *(&v133 + v65);
      v65 += 8;
    }

    while (v65 != 24);
    v67 = -(v152 * v66 - v153 * v64) * v149;
    v68 = -(v152 * v64 - v151 * v66) * v149;
    if (v68 + v67 <= 1.0 && v67 >= 0.0 && v68 >= 0.0)
    {
LABEL_39:
      v116 = v126;
      v61 = v127;
      goto LABEL_79;
    }
  }

LABEL_49:
  for (k = 0; k != 24; k += 8)
  {
    *&v148[k - 16] = *(&v126 + k) - *(v46 + k);
  }

  v70 = 0;
  v71 = 0.0;
  do
  {
    v71 = v71 + *&v148[v70 - 16] * *&v148[v70 - 16];
    v70 += 8;
  }

  while (v70 != 24);
  v72 = 0;
  v73 = v50 * v50;
  v141 = v126;
  v142 = v127;
  v121 = 0.0;
  v122 = 0.0;
  do
  {
    *&v148[v72 - 16] = *(&v141 + v72) - *(&v135 + v72);
    v72 += 8;
  }

  while (v72 != 24);
  v74 = 0;
  v133 = v147;
  v134 = *v148;
  v75 = 0.0;
  do
  {
    v75 = v75 + *(&v133 + v74) * *(&v133 + v74);
    v74 += 8;
  }

  while (v74 != 24);
  v76 = 0;
  v123 = v75;
  do
  {
    *&v148[v76 - 16] = *(&v141 + v76) - *(&v137 + v76);
    v76 += 8;
  }

  while (v76 != 24);
  v77 = 0;
  v131 = v147;
  v132 = *v148;
  v78 = 0.0;
  do
  {
    v78 = v78 + *(&v131 + v77) * *(&v131 + v77);
    v77 += 8;
  }

  while (v77 != 24);
  v79 = 0;
  v122 = v78;
  do
  {
    *&v148[v79 - 16] = *(&v141 + v79) - *(&v139 + v79);
    v79 += 8;
  }

  while (v79 != 24);
  v80 = 0;
  v124 = v147;
  v125 = *v148;
  v81 = 0.0;
  do
  {
    v81 = v81 + *(&v124 + v80) * *(&v124 + v80);
    v80 += 8;
  }

  while (v80 != 24);
  v82 = v73 - v71;
  v121 = v81;
  v83 = _ZZN3geo9Intersect26triangleSphereIntersectionINS_8TriangleIdLi3ENS_15NoTriangleCacheIdLi3EEEEEEEbRKT_RKN2gm6SphereINS6_9PrecisionELi3ENSt3__19enable_ifIXsr3std17is_floating_pointISB_EE5valueEvEEEEPNS9_6MatrixISB_Li3ELi1EEEENKUlRKNSI_IdLi3ELi1EEESN_SN_RKdPSL_E_clESN_SN_SN_SP_SQ_(&v135, &v137, &v133, &v123, v120, v73 - v71);
  v84 = _ZZN3geo9Intersect26triangleSphereIntersectionINS_8TriangleIdLi3ENS_15NoTriangleCacheIdLi3EEEEEEEbRKT_RKN2gm6SphereINS6_9PrecisionELi3ENSt3__19enable_ifIXsr3std17is_floating_pointISB_EE5valueEvEEEEPNS9_6MatrixISB_Li3ELi1EEEENKUlRKNSI_IdLi3ELi1EEESN_SN_RKdPSL_E_clESN_SN_SN_SP_SQ_(&v137, &v139, &v131, &v122, v119, v82);
  v85 = _ZZN3geo9Intersect26triangleSphereIntersectionINS_8TriangleIdLi3ENS_15NoTriangleCacheIdLi3EEEEEEEbRKT_RKN2gm6SphereINS6_9PrecisionELi3ENSt3__19enable_ifIXsr3std17is_floating_pointISB_EE5valueEvEEEEPNS9_6MatrixISB_Li3ELi1EEEENKUlRKNSI_IdLi3ELi1EEESN_SN_RKdPSL_E_clESN_SN_SN_SP_SQ_(&v139, &v135, &v124, &v121, v118, v82);
  v86 = v83 == 1.79769313e308 && v84 == 1.79769313e308;
  if (v86 && v85 == 1.79769313e308)
  {
    return 0;
  }

  if (v84 < v83 && v84 < v85)
  {
    v88 = v119;
  }

  else
  {
    v88 = v118;
  }

  if (v83 < v84 && v83 < v85)
  {
    v89 = v120;
  }

  else
  {
    v89 = v88;
  }

  v116 = *v89;
  v61 = *(v89 + 2);
LABEL_79:
  v117 = v61;
  gm::Plane3<double>::Plane3(&v128, a2, a3, a4);
  v90 = 0;
  v91 = *(a1 + 48);
  v92 = &v147;
  do
  {
    v93 = 0;
    v94 = v91;
    do
    {
      v95 = *v94;
      v94 += 4;
      *(v92 + v93) = v95;
      v93 += 8;
    }

    while (v93 != 32);
    ++v90;
    v92 += 2;
    ++v91;
  }

  while (v90 != 4);
  v141 = v128;
  v142 = v129;
  v143 = 0;
  *&v131 = gm::operator*<double,4,4,1>(&v147, &v141);
  *(&v131 + 1) = v96;
  v132 = v97;
  *&v133 = gm::Matrix<double,3,1>::normalized<int,void>(&v131);
  *(&v133 + 1) = v98;
  v134 = v99;
  v100 = gm::Matrix<double,3,1>::distanceToPoint<int,void>(&v116, *(a1 + 56));
  v101 = *(v46 + 24);
  v102 = **(a1 + 64);
  v103 = *(a1 + 24);
  v147 = v116;
  *v148 = v117;
  *&v148[8] = 0x3FF0000000000000;
  *&v116 = gm::operator*<double,4,4,1>(v103, &v147);
  *(&v116 + 1) = v104;
  v117 = v105;
  v106 = (v100 - v101) / v102;
  if (v106 >= 0.0)
  {
    v109 = 0;
    v147 = v133;
    *v148 = v134;
    v110 = 0.0;
    do
    {
      v110 = v110 + *(&v133 + v109) * *(&v116 + v109);
      v109 += 8;
    }

    while (v109 != 24);
    v111 = 0;
    *&v148[8] = -v110;
    v112 = 0.0;
    do
    {
      v112 = v112 + *&v148[v111 - 16] * *(*(a1 + 72) + v111);
      v111 += 8;
    }

    while (v111 != 24);
    v107 = v112 < v110;
  }

  else
  {
    v107 = 1;
  }

  v113 = *(a1 + 80);
  if (*(v113 + 72) == 1)
  {
    v114 = **(a1 + 32);
    if (*(v113 + 64) > v114 || v106 >= *(v113 + 56))
    {
      return 1;
    }

    *v113 = v116;
    *(v113 + 16) = v117;
    *(v113 + 24) = v133;
    *(v113 + 40) = v134;
    *(v113 + 48) = v107;
    *(v113 + 56) = v106;
    *(v113 + 64) = v114;
  }

  else
  {
    v115 = **(a1 + 32);
    *v148 = v117;
    v147 = v116;
    *&v148[8] = v133;
    *&v148[24] = v134;
    *v113 = v116;
    *(v113 + 16) = *v148;
    *(v113 + 32) = *&v148[16];
    *(v113 + 48) = v107;
    *(v113 + 56) = v106;
    *(v113 + 64) = v115;
    *(v113 + 72) = 1;
  }

  if (**(a1 + 8) == 1)
  {
    ecs2::ExecutionTaskContext::createEntity(*(*v8 + 8));
    operator new();
  }

  return 1;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::CameraCollision>(ecs2::Entity,md::CameraCollision &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>(void)::metadata;
  v63 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::CameraCollision>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = a1 + 8;
  v13 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    v55 = 0;
    v56 = *(*(v7 + 56) + ((v14 >> 3) & 0x1FF8)) + 72 * (v14 & 0x3F);
    do
    {
      *(v56 + v55) = *(v12 + v55);
      v55 += 8;
    }

    while (v55 != 24);
    for (i = 0; i != 24; i += 8)
    {
      *(v56 + 24 + i) = *(a1 + 32 + i);
    }

    v58 = *(a1 + 56);
    *(v56 + 64) = *(a1 + 72);
    *(v56 + 48) = v58;
    goto LABEL_58;
  }

  v17 = *(v7 + 40);
  v16 = *(v7 + 48);
  if (v17 >= v16)
  {
    v19 = *(v7 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = v4;
    v18 = 4 * v20 + 4;
    v24 = *(v7 + 32);
    v25 = *(v7 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v7 + 32);
    *(v7 + 32) = v26;
    *(v7 + 40) = v18;
    *(v7 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = v4;
    v18 = (v17 + 1);
  }

  *(v7 + 40) = v18;
  v28 = ((v18 - *(v7 + 32)) >> 2) - 1;
  *v13 = v4;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v7 + 56);
  v30 = *(v7 + 64);
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v60 = v28;
    v61 = v5;
    v32 = v29 + 1;
    v33 = v29 + 1 - ((v30 - v31) >> 3);
    v34 = *(v7 + 72);
    v62 = v30 - v31;
    if (v33 > (v34 - v30) >> 3)
    {
      v35 = v34 - v31;
      v36 = (v34 - v31) >> 2;
      if (v36 <= v32)
      {
        v36 = v29 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_60;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v30 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v30 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v30 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v29)
    {
      v28 = v32 - v44;
      v45 = *(v7 + 96);
      if (v28 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v29 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_60:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v28);
      *(v7 + 88) = v43 + 16 * v28;
      LOBYTE(v28) = v60;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v31 = *(v7 + 56);
    v5 = v61;
    if (v62 < *(v7 + 64) - v31)
    {
      operator new();
    }
  }

  v49 = *(v31 + 8 * v29) + 72 * (v28 & 0x3F);
  *v49 = *v12;
  v50 = *(v12 + 16);
  v51 = *(v12 + 32);
  v52 = *(v12 + 48);
  *(v49 + 64) = *(v12 + 64);
  *(v49 + 32) = v51;
  *(v49 + 48) = v52;
  *(v49 + 16) = v50;
  v53 = *(v7 + 152);
  v54 = *(v7 + 160);
  while (v53 != v54)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
    v53 += 32;
  }

LABEL_58:
  v59 = *(v63 + 41016) + (v4 >> 16 << 6);
  *(v59 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>();
  *(v63 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>(void)::metadata) = *(v63 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::CameraCollision>(ecs2::Entity,md::CameraCollision &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A44348;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 84) = 0;
  return result;
}

uint64_t geo::NoTriangleCache<double,3>::data(uint64_t result, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v4 = 0;
  v29 = *MEMORY[0x1E69E9840];
  do
  {
    *(&v23 + v4) = *(a3 + v4) - *(a2 + v4);
    v4 += 8;
  }

  while (v4 != 24);
  v5 = 0;
  v21 = v23;
  v22 = v24;
  do
  {
    *(&v23 + v5) = *(a4 + v5) - *(a2 + v5);
    v5 += 8;
  }

  while (v5 != 24);
  v6 = 0;
  v19 = v23;
  v20 = v24;
  v7 = 0.0;
  do
  {
    v7 = v7 + *(&v21 + v6) * *(&v21 + v6);
    v6 += 8;
  }

  while (v6 != 24);
  v8 = 0;
  v9 = 0.0;
  do
  {
    v9 = v9 + *(&v19 + v8) * *(&v21 + v8);
    v8 += 8;
  }

  while (v8 != 24);
  v10 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + *(&v19 + v10) * *(&v19 + v10);
    v10 += 8;
  }

  while (v10 != 24);
  v12 = 0;
  v13 = *a2;
  v24 = *(a2 + 2);
  v23 = v13;
  v25 = *a3;
  v26 = *(a3 + 2);
  v27 = *a4;
  v28 = *(a4 + 2);
  *(result + 48) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(result + 64) = xmmword_1B33B0520;
  *(result + 80) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  do
  {
    for (i = 0; i != 24; i += 8)
    {
      v15 = result + i;
      v16 = *(&v23 + v12 + i);
      *(v15 + 48) = fmin(v16, *(result + i + 48));
      *(v15 + 72) = fmax(*(result + i + 72), v16);
    }

    v12 += 24;
  }

  while (v12 != 72);
  v17 = -(v9 * v9 - v11 * v7);
  v18 = v17 == 0.0;
  if (v17 != 0.0)
  {
    v17 = 1.0 / v17;
  }

  *result = v21;
  *(result + 16) = v22;
  *(result + 24) = v19;
  *(result + 40) = v20;
  *(result + 96) = v17;
  *(result + 104) = v18;
  *(result + 112) = v7;
  *(result + 120) = v9;
  *(result + 128) = v11;
  return result;
}

double _ZZN3geo9Intersect26triangleSphereIntersectionINS_8TriangleIdLi3ENS_15NoTriangleCacheIdLi3EEEEEEEbRKT_RKN2gm6SphereINS6_9PrecisionELi3ENSt3__19enable_ifIXsr3std17is_floating_pointISB_EE5valueEvEEEEPNS9_6MatrixISB_Li3ELi1EEEENKUlRKNSI_IdLi3ELi1EEESN_SN_RKdPSL_E_clESN_SN_SN_SP_SQ_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  for (i = 0; i != 24; i += 8)
  {
    *(&v26 + i) = *(a2 + i) - *(a1 + i);
  }

  v8 = 0;
  v24 = v26;
  v25 = v27;
  v9 = 0.0;
  do
  {
    v9 = v9 + *(a3 + v8) * *(&v24 + v8);
    v8 += 8;
  }

  while (v8 != 24);
  if (v9 > 0.0)
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v11 = v11 + *(&v24 + v10) * *(&v24 + v10);
      v10 += 8;
    }

    while (v10 != 24);
    v12 = sqrt(v11);
    v13 = v9 / v12;
    if (v9 / v12 < v12)
    {
      result = *a4 - v13 * v13;
      if (result <= a6)
      {
        if (a5)
        {
          for (j = 0; j != 24; j += 8)
          {
            *(&v26 + j) = *(&v24 + j) * (1.0 / v12);
          }

          v16 = 0;
          v20 = v26;
          v21 = v27;
          do
          {
            *(&v26 + v16) = *(&v20 + v16) * v13;
            v16 += 8;
          }

          while (v16 != 24);
          v17 = 0;
          v22 = v26;
          v23 = v27;
          do
          {
            *(&v26 + v17) = *(&v22 + v17) + *(a1 + v17);
            v17 += 8;
          }

          while (v17 != 24);
          v18 = v27;
          *a5 = v26;
          *(a5 + 16) = v18;
        }

        return result;
      }
    }

    return 1.79769313e308;
  }

  result = *a4;
  if (*a4 > a6)
  {
    return 1.79769313e308;
  }

  if (a5)
  {
    for (k = 0; k != 24; k += 8)
    {
      *(a5 + k) = *(a1 + k);
    }

    return *a4;
  }

  return result;
}

__n128 std::__function::__func<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#2},std::allocator<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#2}>,BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A44300;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

__n128 std::__function::__func<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Box<double,3> const&)#1},std::allocator<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Box<double,3> const&)#1}>,BOOL ()(gm::Box<double,3> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A442B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1},std::allocator<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1}>,void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::operator()(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v4 = *(a1 + 8);
  v20 = *a2;
  *v21 = *(a2 + 2);
  *&v21[8] = *a3;
  *&v21[24] = *(a3 + 16);
  v22 = *a4;
  *&v23 = *(a4 + 2);
  v5 = v4[1];
  v6 = v4[2];
  if (v5 >= v6)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *v4) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x333333333333333)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *v4) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x199999999999999)
    {
      v11 = 0x333333333333333;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::Triangle<double,3,geo::NoTriangleCache<double,3>>>>(v11);
    }

    v12 = 80 * v8;
    *(v12 + 48) = v22;
    *(v12 + 64) = v23;
    *(v12 + 16) = *v21;
    *(v12 + 32) = *&v21[16];
    *v12 = v20;
    v7 = 80 * v8 + 80;
    v13 = *v4;
    v14 = v4[1];
    v15 = (v12 + *v4 - v14);
    if (*v4 != v14)
    {
      v16 = v15;
      do
      {
        *v16 = *v13;
        v17 = v13[1];
        v18 = v13[2];
        v19 = v13[4];
        v16[3] = v13[3];
        v16[4] = v19;
        v16[1] = v17;
        v16[2] = v18;
        v13 += 5;
        v16 += 5;
      }

      while (v13 != v14);
      v13 = *v4;
    }

    *v4 = v15;
    v4[1] = v7;
    v4[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5[2] = *&v21[16];
    v5[3] = v22;
    v5[4] = v23;
    *v5 = v20;
    v5[1] = *v21;
    v7 = (v5 + 5);
  }

  v4[1] = v7;
}

uint64_t std::__function::__func<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1},std::allocator<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1}>,void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A441E0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0,std::allocator<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0>,md::CameraCollisionResolution ()(md::CameraCollisionResolutionRequest const&,unsigned long &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A44168;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void md::Logic<md::StandardLogic,md::StandardLogicContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t md::Logic<md::StandardLogic,md::StandardLogicContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFFA06A69D924B0E8 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext>(*(a2 + 8));
    v8[1] = v7;
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::StandardLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::StandardLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A449C0;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C4093837F09);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::StandardLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A449C0;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C4093837F09);
  }

  return a1;
}

void md::StandardLogic::~StandardLogic(md::StandardLogic *this)
{
  md::StandardLogic::~StandardLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A44850;
  std::unique_ptr<md::TrafficSharedResources>::reset[abi:nn200100](this + 15, 0);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void ggl::StandardLibrary::~StandardLibrary(ggl::StandardLibrary *this)
{
  ggl::ShaderLibrary::~ShaderLibrary(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardLibraryBundleMTLData::~StandardLibraryBundleMTLData(ggl::StandardLibraryBundleMTLData *this)
{
  ggl::MTLBundleShaderLibraryData::~MTLBundleShaderLibraryData(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Label::DeviceBufferTextureSize>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Label::DeviceBufferTextureSize>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44A28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

mdm::zone_mallocator *std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__append(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  result = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - result >= a2)
  {
    if (a2)
    {
      v13 = (result + a2);
      bzero(result, a2);
      result = v13;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v7 = result - *a1;
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v5 - *a1;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v21[4] = a1 + 24;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v14 = &v7[v12];
    v15 = v12 + v10;
    v16 = &v14[a2];
    bzero(v14, a2);
    v17 = *(a1 + 8);
    v18 = &v14[*a1 - v17];
    memcpy(v18, *a1, v17 - *a1);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v16;
    v20 = *(a1 + 16);
    *(a1 + 16) = v15;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    return std::__split_buffer<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator> &>::~__split_buffer(v21);
  }

  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelRenderDescriptor *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Icon::WaypointPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::WaypointPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<ggl::Icon::WaypointPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A45718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Icon::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A456A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Icon::MaskedIconPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::MaskedIconPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<ggl::Icon::MaskedIconPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A455D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Icon::ShadowPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::ShadowPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<ggl::Icon::ShadowPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A45510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Icon::IconPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::IconPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<ggl::Icon::IconPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A45448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Glyph::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A453D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<ggl::GlyphWithNormalHalo::DefaultPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::RaymarchPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::RaymarchPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::LowPrecisionPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::LowPrecisionPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::DefaultPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::DefaultPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SDFGlyph::SuperSamplePipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SDFGlyph::SuperSamplePipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SDFGlyph::HaloPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SDFGlyph::HaloPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SDFGlyph::DefaultPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SDFGlyph::DefaultPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<ggl::ColorGlyphWithNormalHalo::DefaultPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Glyph3d::RaymarchPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44DD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Glyph3d::LowPrecisionHaloPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44D98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Glyph3d::LowPrecisionPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Glyph3d::DefaultPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SDFGlyph::SuperSamplePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44CF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SDFGlyph::HaloPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44CB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SDFGlyph::DefaultPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44C80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Glyph::Options>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Glyph::Options>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44C28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Label::Options>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Label::Options>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44BD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Label::ViewCommon>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Label::ViewCommon>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44B78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Label::ViewInScreenSpace>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Label::ViewInScreenSpace>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44B20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Label::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Label::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A44AC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Texture2DLoadItem>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 80 * a2, 0x106004084B8EF3AuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<ggl::Texture2DLoadItem,ggl::zone_mallocator>,ggl::Texture2DLoadItem*>(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = a3 + 48;
    v6 = v4;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      *(v5 - 20) = *(v6 + 28);
      *(v5 - 48) = v7;
      *(v5 - 32) = v8;
      v9 = std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::__value_func[abi:nn200100](v5, (v6 + 3));
      v6 += 5;
      v5 = v9 + 80;
    }

    while (v6 != a2);
    do
    {
      result = std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100]((v4 + 3));
      v4 += 5;
    }

    while (v4 != a2);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::Icon::ShadowPipelineSetup *,geo::allocator_adapter<ggl::Icon::ShadowPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::ShadowPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Icon::ShadowPipelineSetup *,geo::allocator_adapter<ggl::Icon::ShadowPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *ggl::FragmentedPool<ggl::Icon::MaskedIconPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::MaskedIconPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::Icon::MaskedIconPipelineSetup *,geo::allocator_adapter<ggl::Icon::MaskedIconPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::Icon::WaypointPipelineSetup>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v9 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v9 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::Icon::WaypointPipelineSetup *,geo::allocator_adapter<ggl::Icon::WaypointPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v9);
  v10 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v10);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<ggl::Icon::WaypointPipelineSetup *,geo::allocator_adapter<ggl::Icon::WaypointPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v7, v8);
}

ggl::zone_mallocator *std::vector<ggl::Icon::WaypointPipelineSetup *,geo::allocator_adapter<ggl::Icon::WaypointPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::WaypointPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Icon::WaypointPipelineSetup *,geo::allocator_adapter<ggl::Icon::WaypointPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t ggl::FragmentedPool<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return ggl::FragmentedPool<ggl::Glyph3d::DefaultPipelineSetup>::pop(v7);
}

uint64_t ggl::FragmentedPool<ggl::Glyph3d::DefaultPipelineSetup>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::Glyph3d::DefaultPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::DefaultPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return ggl::FragmentedPool<ggl::Glyph3d::LowPrecisionHaloPipelineSetup>::pop(v7);
}

uint64_t ggl::FragmentedPool<ggl::Glyph3d::LowPrecisionHaloPipelineSetup>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return ggl::FragmentedPool<ggl::Glyph3d::LowPrecisionPipelineSetup>::pop(v7);
}

uint64_t ggl::FragmentedPool<ggl::Glyph3d::LowPrecisionPipelineSetup>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::Glyph3d::LowPrecisionPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return ggl::FragmentedPool<ggl::Glyph3d::RaymarchPipelineSetup>::pop(v7);
}

uint64_t ggl::FragmentedPool<ggl::Glyph3d::RaymarchPipelineSetup>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::Glyph3d::RaymarchPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::RaymarchPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return md::LabelRenderer::createSDFPipelineSetup(v7);
}

uint64_t md::LabelRenderer::createSDFPipelineSetup(uint64_t a1, int a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v10 = *(a1 + 16 * *(a1 + 1540) + 1552);
  if (!v10)
  {
    v10 = *(a1 + 1872);
  }

  v11 = *(a1 + 16 * *(a1 + 1684) + 1696);
  if (v11)
  {
    if (a2)
    {
LABEL_5:
      v12 = *(a1 + 384);
      v13 = v12[1];
      if (v13 == *v12)
      {
        v19 = v12[11];
        if (!v19)
        {
          goto LABEL_49;
        }

        v14 = (*(*v19 + 48))(v19);
        v55 = v14;
      }

      else
      {
        v14 = *(v13 - 8);
        v55 = v14;
        v12[1] = v13 - 8;
      }

      std::vector<ggl::SDFGlyph::HaloPipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::HaloPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v12 + 4), &v55);
      v56 = v14;
      v20 = v12[15];
      if (v20)
      {
        goto LABEL_24;
      }

LABEL_49:
      v54 = std::__throw_bad_function_call[abi:nn200100]();
      return std::function<ggl::RenderItem * ()(void)>::operator()(v54);
    }
  }

  else
  {
    v11 = *(a1 + 1888);
    if (a2)
    {
      goto LABEL_5;
    }
  }

  if (a3)
  {
    v15 = *(a1 + 392);
    v16 = v15[1];
    if (v16 == *v15)
    {
      v21 = v15[11];
      if (!v21)
      {
        goto LABEL_49;
      }

      v14 = (*(*v21 + 48))(v21);
      v55 = v14;
    }

    else
    {
      v14 = *(v16 - 8);
      v55 = v14;
      v15[1] = v16 - 8;
    }

    std::vector<ggl::SDFGlyph::SuperSamplePipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::SuperSamplePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v15 + 4), &v55);
    v56 = v14;
    v20 = v15[15];
    if (v20)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

  v17 = *(a1 + 376);
  v18 = v17[1];
  if (v18 == *v17)
  {
    v22 = v17[11];
    if (!v22)
    {
      goto LABEL_49;
    }

    v14 = (*(*v22 + 48))(v22);
    v55 = v14;
  }

  else
  {
    v14 = *(v18 - 8);
    v55 = v14;
    v17[1] = v18 - 8;
  }

  std::vector<ggl::SDFGlyph::DefaultPipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::DefaultPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v17 + 4), &v55);
  v56 = v14;
  v20 = v17[15];
  if (!v20)
  {
    goto LABEL_49;
  }

LABEL_24:
  (*(*v20 + 48))(v20, &v56);
  v23 = v14[17];
  *(v23 + 88) = 0;
  v24 = *(a1 + 1408);
  *(v23 + 80) = v24;
  v25 = v14[29];
  v26 = *(a1 + 1416);
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v27 = *(v25 + 88);
  *(v25 + 80) = v24;
  *(v25 + 88) = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  v28 = v14[17];
  v28[1] = 0;
  v29 = *(a1 + 1376);
  *v28 = v29;
  v30 = v14[29];
  v31 = *(a1 + 1384);
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = v30[1];
  *v30 = v29;
  v30[1] = v31;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = v14[17];
  *(v33 + 24) = 0;
  v34 = *a4;
  *(v33 + 16) = *a4;
  v35 = v14[29];
  v36 = a4[1];
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  v37 = *(v35 + 24);
  *(v35 + 16) = v34;
  *(v35 + 24) = v36;
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  v38 = v14[17];
  *(v38 + 56) = 0;
  v39 = *(a1 + 1496);
  *(v38 + 48) = v39;
  v40 = v14[29];
  v41 = *(a1 + 1504);
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  v42 = *(v40 + 56);
  *(v40 + 48) = v39;
  *(v40 + 56) = v41;
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  *(v14[21] + 16) = v10;
  *(v14[21] + 8) = v11;
  v43 = v14[17];
  *(v43 + 40) = 0;
  v44 = *(a1 + 1640);
  *(v43 + 32) = v44;
  v45 = v14[29];
  v46 = *(a1 + 1648);
  if (v46)
  {
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }

  v47 = *(v45 + 40);
  *(v45 + 32) = v44;
  *(v45 + 40) = v46;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  v48 = v14[17];
  *(v48 + 72) = 0;
  v49 = *a5;
  *(v48 + 64) = *a5;
  v50 = v14[29];
  v51 = a5[1];
  if (v51)
  {
    atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
  }

  v52 = *(v50 + 72);
  *(v50 + 64) = v49;
  *(v50 + 72) = v51;
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  *v14[21] = a6;
  return v14;
}

ggl::zone_mallocator *std::function<ggl::RenderItem * ()(void)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return std::vector<ggl::SDFGlyph::DefaultPipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::DefaultPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v4, v5);
  }
}

ggl::zone_mallocator *std::vector<ggl::SDFGlyph::DefaultPipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::DefaultPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SDFGlyph::DefaultPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::SDFGlyph::DefaultPipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::DefaultPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::SDFGlyph::SuperSamplePipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::SuperSamplePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SDFGlyph::SuperSamplePipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::SDFGlyph::SuperSamplePipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::SuperSamplePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::SDFGlyph::HaloPipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::HaloPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SDFGlyph::HaloPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::SDFGlyph::HaloPipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::HaloPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Glyph3d::RaymarchPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::RaymarchPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::RaymarchPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Glyph3d::RaymarchPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::RaymarchPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Glyph3d::LowPrecisionPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::LowPrecisionPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Glyph3d::LowPrecisionPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Glyph3d::DefaultPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::DefaultPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glyph3d::DefaultPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Glyph3d::DefaultPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::DefaultPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelRenderDescriptor *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelRenderDescriptor *,geo::allocator_adapter<md::LabelRenderDescriptor *,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelRenderDescriptor *>(v5, v4);
  }

  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::GlyphMeshDescriptor>::remove(void *a1, uint64_t a2)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v15 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 40 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    *v6 = *(v7 - 40);
    v8 = v6 + 8;
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::__value_func[abi:nn200100](v16, v7 - 32);
    if ((v6 + 8) != v16)
    {
      v9 = v17;
      v10 = *(v6 + 32);
      if (v17 == v16)
      {
        if (v10 == v8)
        {
          (*(*v17 + 24))();
          (*(*v17 + 32))(v17);
          v17 = 0;
          (*(**(v6 + 32) + 24))(*(v6 + 32), v16);
          (*(**(v6 + 32) + 32))(*(v6 + 32));
          *(v6 + 32) = 0;
          v17 = v16;
          (*(v18[0] + 24))(v18, v6 + 8);
          (*(v18[0] + 32))(v18);
        }

        else
        {
          (*(*v17 + 24))();
          (*(*v17 + 32))(v17);
          v17 = *(v6 + 32);
        }

        *(v6 + 32) = v8;
      }

      else if (v10 == v8)
      {
        (*(*v10 + 24))(*(v6 + 32), v16);
        (*(**(v6 + 32) + 32))(*(v6 + 32));
        *(v6 + 32) = v17;
        v17 = v16;
      }

      else
      {
        v17 = *(v6 + 32);
        *(v6 + 32) = v9;
      }
    }

    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::~__value_func[abi:nn200100](v16);
    v11 = a1[11];
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::~__value_func[abi:nn200100](v11 - 32);
    a1[11] = v11 - 40;
    v12 = a1[28];
    if (v12)
    {
      v13 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v12[6], v13, &v15, 1);
        v12 = *v12;
      }

      while (v12);
    }
  }

  return v5 != v4;
}

uint64_t gdc::ComponentStorageWrapper<md::GlyphMeshDescriptor>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::GlyphMeshDescriptor>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t md::LabelRenderer::initShadowhMeshes(md::LabelRenderData &,md::LabelLayoutContext const&)::$_0::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  if (v4)
  {
    v6 = a2;
    result = (*(*v4 + 48))(v4, a2, *a1);
    v8 = a1[1];
    v9 = *(v6 + 38);
    if (*(v6 + 38))
    {
      v10 = *(v8 + 4);
      v11 = *(v8 + 5);
      v12 = 256 - v10;
      if (v12 >= v9)
      {
        v12 = 0;
      }

      v13 = v10 + v12;
      *(v8 + 4) = v10 + v12 + v9;
      *(v8 + 5) = v11 + v9;
      v14 = (v8[3] + 16 * (v10 + v12));
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = *(v6 + 39);
    if (*(v6 + 39))
    {
      v16 = *(v8 + 8);
      v17 = *(v8 + 9);
      v18 = 256 - v16;
      if (v18 >= v15)
      {
        v18 = 0;
      }

      v19 = v16 + v18;
      *(v8 + 8) = v16 + v18 + v15;
      *(v8 + 9) = v17 + v15;
      v20 = (v8[5] + 4 * (v16 + v18));
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    v21 = *a1;
    if (*a3 == 1)
    {
      v22 = v79;
      result = gm::operator*<double,4,4,4>(v79, a1[2] + 92, v21[5]);
      for (i = 0; i != 4; ++i)
      {
        v25 = *v22;
        v24 = v22[1];
        v22 += 2;
        v78[i] = vcvt_hight_f32_f64(vcvt_f32_f64(v25), v24);
      }

      v26 = v78[1];
      *v14 = v78[0];
      v14[1] = v26;
      v27 = v78[3];
      v14[2] = v78[2];
      v14[3] = v27;
      v14 += 4;
    }

    *v14 = *(v21 + 7);
    *v20 = *(v21 + 8);
    if (*(v6 + 40))
    {
      v28 = 0;
      v29 = 0;
      v30 = *a1[1] + (*(v6 + 46) << 7);
      v77 = v30 + 120;
      v76 = v30 + 116;
      v31 = fminf(fmaxf(*(*a1 + 6) * 255.0, 0.0), 255.0);
      v75 = v30 + 112;
      v74 = v30 + 88;
      v73 = v30 + 84;
      v72 = v30 + 80;
      v71 = v30 + 56;
      v70 = v30 + 52;
      v32 = v30 + 48;
      v33 = v30 + 24;
      v34 = v30 + 20;
      v35 = v30 + 16;
      v36 = 12;
      v37 = 24;
      v38 = 36;
      do
      {
        result = v6;
        v39 = 0;
        v40 = v29 << 7;
        v41 = (v77 + (v29 << 7));
        v42 = (v75 + (v29 << 7));
        v43 = v73 + (v29 << 7);
        v44 = (v71 + (v29 << 7));
        v45 = (v32 + (v29 << 7));
        v46 = v34 + (v29 << 7);
        v47 = a1;
        v48 = **a1;
        v49 = v48 + 56 * v29;
        v50 = fmaxf(*(v49 + 48) * 32.0, 0.0);
        v51 = fmaxf(*(v49 + 52) * 32.0, 0.0);
        do
        {
          *(v30 + v39) = *(v48 + v28 + v39);
          v39 += 4;
        }

        while (v39 != 12);
        v52 = fminf(v50, 65535.0);
        v53 = fminf(v51, 65535.0);
        v54 = (v35 + v40);
        *v54 = v52;
        v55 = v76 + v40;
        v56 = (v72 + v40);
        v54[1] = v53;
        v57 = (v33 + v40);
        *v46 = v31;
        *(v46 + 1) = 100;
        *(v46 + 3) = 0;
        *v57 = v13;
        v57[1] = v19;
        v58 = (v48 + v36);
        for (j = 8; j != 11; ++j)
        {
          v60 = *v58++;
          *(v30 + 4 * j) = v60;
        }

        v61 = v70 + v40;
        *v45 = v52;
        v45[1] = v53;
        *v61 = v31;
        *(v61 + 1) = 100;
        *(v61 + 3) = 1;
        *v44 = v13;
        v62 = (v48 + v37);
        v63 = 16;
        v44[1] = v19;
        do
        {
          v64 = *v62++;
          *(v30 + 4 * v63++) = v64;
        }

        while (v63 != 19);
        v65 = (v74 + v40);
        *v56 = v52;
        v56[1] = v53;
        *v43 = v31;
        *(v43 + 1) = 100;
        *(v43 + 3) = 2;
        *v65 = v13;
        v66 = (v48 + v38);
        v67 = 24;
        v65[1] = v19;
        do
        {
          v68 = *v66++;
          *(v30 + 4 * v67++) = v68;
        }

        while (v67 != 27);
        *v42 = v52;
        v42[1] = v53;
        *v55 = v31;
        *(v55 + 1) = 100;
        *(v55 + 3) = 3;
        *v41 = v13;
        v41[1] = v19;
        ++v29;
        v30 += 128;
        v28 += 56;
        v6 = result;
        v36 += 56;
        v37 += 56;
        v38 += 56;
        a1 = v47;
      }

      while (v29 < *(result + 40));
    }
  }

  else
  {
    v69 = std::__throw_bad_function_call[abi:nn200100]();
    return gdc::ComponentStorageWrapper<md::ShadowMeshDescriptor>::contains(v69);
  }

  return result;
}

BOOL gdc::ComponentStorageWrapper<md::ShadowMeshDescriptor>::remove(void *a1, uint64_t a2)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v15 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 40 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    *v6 = *(v7 - 40);
    v8 = v6 + 8;
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::__value_func[abi:nn200100](v16, v7 - 32);
    if ((v6 + 8) != v16)
    {
      v9 = v17;
      v10 = *(v6 + 32);
      if (v17 == v16)
      {
        if (v10 == v8)
        {
          (*(*v17 + 24))();
          (*(*v17 + 32))(v17);
          v17 = 0;
          (*(**(v6 + 32) + 24))(*(v6 + 32), v16);
          (*(**(v6 + 32) + 32))(*(v6 + 32));
          *(v6 + 32) = 0;
          v17 = v16;
          (*(v18[0] + 24))(v18, v6 + 8);
          (*(v18[0] + 32))(v18);
        }

        else
        {
          (*(*v17 + 24))();
          (*(*v17 + 32))(v17);
          v17 = *(v6 + 32);
        }

        *(v6 + 32) = v8;
      }

      else if (v10 == v8)
      {
        (*(*v10 + 24))(*(v6 + 32), v16);
        (*(**(v6 + 32) + 32))(*(v6 + 32));
        *(v6 + 32) = v17;
        v17 = v16;
      }

      else
      {
        v17 = *(v6 + 32);
        *(v6 + 32) = v9;
      }
    }

    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::~__value_func[abi:nn200100](v16);
    v11 = a1[11];
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::~__value_func[abi:nn200100](v11 - 32);
    a1[11] = v11 - 40;
    v12 = a1[28];
    if (v12)
    {
      v13 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v12[6], v13, &v15, 1);
        v12 = *v12;
      }

      while (v12);
    }
  }

  return v5 != v4;
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t gdc::ComponentStorageWrapper<md::ShadowMeshDescriptor>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::ShadowMeshDescriptor>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**,0>(void *a1, void *a2, void *a3, void *a4, void *a5, unsigned int (**a6)(void))
{
  std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(a1, a2, a3, a4, a6);
  result = (*a6)(*a5, *a4);
  if (result)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    result = (*a6)(*a4, *a3);
    if (result)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      result = (*a6)(*a3, *a2);
      if (result)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        result = (*a6)(*a2, *a1);
        if (result)
        {
          v16 = *a1;
          *a1 = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

uint64_t std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**,md::LabelRenderDescriptor**>(uint64_t result, void *a2, void *a3, unsigned int (**a4)(void, void))
{
  if (result != a2)
  {
    v6 = a2;
    v7 = result;
    v8 = (a2 - result) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (result + 8 * v9);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**>(v7, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        result = (*a4)(*v12, *v7);
        if (result)
        {
          v13 = *v12;
          *v12 = *v7;
          *v7 = v13;
          result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**>(v7, a4, v8, v7);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = v6;
        v15 = 0;
        v30 = *v7;
        v16 = v7;
        do
        {
          v17 = &v16[v15];
          v18 = v17 + 1;
          v19 = (2 * v15) | 1;
          v20 = 2 * v15 + 2;
          if (v20 >= v8)
          {
            v15 = (2 * v15) | 1;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            result = (*a4)(*(v21 - 1), v22);
            if (result)
            {
              v18 = v21;
              v15 = v20;
            }

            else
            {
              v15 = v19;
            }
          }

          *v16 = *v18;
          v16 = v18;
        }

        while (v15 <= (v8 - 2) / 2);
        v6 = v14 - 1;
        if (v18 == v14 - 1)
        {
          *v18 = v30;
        }

        else
        {
          *v18 = *v6;
          *v6 = v30;
          v23 = (v18 - v7 + 8) >> 3;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (!v24)
          {
            v26 = v25 >> 1;
            v27 = &v7[v25 >> 1];
            result = (*a4)(*v27, *v18);
            if (result)
            {
              v28 = *v18;
              do
              {
                v29 = v27;
                *v18 = *v27;
                if (!v26)
                {
                  break;
                }

                v26 = (v26 - 1) >> 1;
                v27 = &v7[v26];
                result = (*a4)(*v27, v28);
                v18 = v29;
              }

              while ((result & 1) != 0);
              *v29 = v28;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }
  }

  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**,0>(void *a1, void *a2, void *a3, uint64_t (**a4)(void))
{
  v8 = (*a4)(*a2, *a1);
  result = (*a4)(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      result = (*a4)(*a3);
      if (result)
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (result)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    result = (*a4)(*a2, *a1);
    if (result)
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRenderDescriptor **,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

md::LabelMapTile *md::LabelMapTile::LabelMapTile(md::LabelMapTile *this, const geo::QuadTile *a2)
{
  md::LabelMapTileBase::LabelMapTileBase(this, a2);
  *(v4 + 80) = 0u;
  *v4 = &unk_1F2A45828;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  __asm { FMOV            V1.2D, #1.0 }

  *(v4 + 112) = _Q1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0x10000;
  *(v4 + 384) = 0;
  *(v4 + 392) = 0u;
  *(v4 + 440) = 0;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0u;
  *(v4 + 288) = 0u;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 352) = 0u;
  *(v4 + 368) = 0;
  *(v4 + 416) = v4 + 424;
  *(v4 + 424) = 0;
  *(v4 + 504) = 0u;
  *(v4 + 464) = 0u;
  *(v4 + 480) = 0u;
  *(v4 + 448) = 0u;
  *(v4 + 496) = v4 + 504;
  *(v4 + 520) = 0;
  *(v4 + 536) = 0u;
  *(v4 + 528) = v4 + 536;
  *(v4 + 552) = -1;
  if (*a2 == 255)
  {
    v10 = exp((*(this + 7) + (*(this + 9) - *(this + 7)) * 0.5) * 6.28318531 + -3.14159265);
    v11 = atan(v10);
    v12 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v11 * 114.591559 + -90.0);
    *(this + 14) = v12;
    *(this + 15) = 1.0 / (v12 * v12);
  }

  return this;
}

void std::vector<std::shared_ptr<md::LabelMapTileCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTileCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMapTileCommand>>(v5, v3);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMapTileCommand>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void md::LabelMapTile::~LabelMapTile(md::LabelMapTile *this)
{
  *this = &unk_1F2A45828;
  v2 = *(this + 18);
  if (v2)
  {
    std::mutex::lock(*(this + 18));
    sig = v2[1].__m_.__sig;
    if (sig)
    {
      (*(*sig + 16))(sig, this);
    }

    std::mutex::unlock(v2);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 67));
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(this + 63));
  v4 = *(this + 61);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 59);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 57);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(*(this + 53));
  v13 = (this + 384);
  std::vector<std::shared_ptr<md::LabelMapTileCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTileCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = (this + 352);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v7 = *(this + 43);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  for (i = 328; i != 168; i -= 16)
  {
    v9 = *(this + i);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  v10 = *(this + 21);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 19);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(this + 11);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1B322A17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  std::mutex::unlock(v12);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 536));
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v10 + 504));
  v14 = *(v10 + 488);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(v10 + 472);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *(v10 + 456);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(*(v10 + 424));
  a10 = v10 + 384;
  std::vector<std::shared_ptr<md::LabelMapTileCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTileCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = v10 + 352;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v17 = *(v10 + 344);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v18 = 328;
  while (1)
  {
    v19 = *(v10 + v18);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    v18 -= 16;
    if (v18 == 168)
    {
      v20 = *(v10 + 168);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }

      v21 = *(v10 + 152);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      }

      v22 = *(v10 + 88);
      if (v22)
      {
        std::__shared_weak_count::__release_weak(v22);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_1B322A398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *p_shared_weak_owners)
{
  p_shared_weak_owners = &v10[8].__shared_weak_owners_;
  std::vector<md::LabelLineCollidableItem,geo::allocator_adapter<md::LabelLineCollidableItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&p_shared_weak_owners);
  std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v14);
  std::vector<gm::Matrix<double,3,1>,geo::allocator_adapter<gm::Matrix<double,3,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v13);
  std::vector<geo::Geocentric<double>,geo::allocator_adapter<geo::Geocentric<double>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v12);
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v11);
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void sub_1B322A614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, mdm::zone_mallocator *a10, mdm::zone_mallocator *a11, uint64_t *p_shared_weak_owners)
{
  p_shared_weak_owners = &v12[8].__shared_weak_owners_;
  std::vector<md::LabelLineCollidableItem,geo::allocator_adapter<md::LabelLineCollidableItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&p_shared_weak_owners);
  std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v14);
  std::vector<gm::Matrix<double,3,1>,geo::allocator_adapter<gm::Matrix<double,3,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v13);
  std::vector<geo::Geocentric<double>,geo::allocator_adapter<geo::Geocentric<double>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a10);
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a11);
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelMapTileCollisionInfo>::__on_zero_shared(uint64_t a1)
{
  v2 = a1 + 208;
  std::vector<md::LabelLineCollidableItem,geo::allocator_adapter<md::LabelLineCollidableItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 160));
  std::vector<gm::Matrix<double,3,1>,geo::allocator_adapter<gm::Matrix<double,3,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 128));
  std::vector<geo::Geocentric<double>,geo::allocator_adapter<geo::Geocentric<double>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 96));

  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 64));
}

void std::__shared_ptr_emplace<md::LabelMapTileCollisionInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A45858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelMapTile::enumerateLineFeatures(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v18 = 117440770;
  v4 = a1 + 176;
  do
  {
    v5 = *(v4 + 16 * *(&v18 + v3));
    if (v5)
    {
      v6 = *(v5 + 40);
      v7 = (v5 + 48);
      if (v6 != (v5 + 48))
      {
        do
        {
          v8 = v6[5];
          if (v8)
          {
            v9 = std::__shared_weak_count::lock(v8);
            if (v9)
            {
              v10 = v9;
              if (v6[4])
              {
                v16 = v6[4];
                v17 = v9;
                atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
                v11 = *(a2 + 24);
                if (!v11)
                {
                  v15 = std::__throw_bad_function_call[abi:nn200100]();
                  if (v17)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
                  }

                  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
                  _Unwind_Resume(v15);
                }

                (*(*v11 + 48))(v11, &v16);
                if (v17)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v17);
                }
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v10);
            }
          }

          v12 = v6[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v6[2];
              v14 = *v13 == v6;
              v6 = v13;
            }

            while (!v14);
          }

          v6 = v13;
        }

        while (v13 != v7);
      }
    }

    ++v3;
  }

  while (v3 != 4);
}

void md::LabelMapTile::enumeratePhysicalLineFeatures(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 104);
    v3 = (a1 + 112);
    if (v2 != (a1 + 112))
    {
      do
      {
        v5 = v2[5];
        if (v5)
        {
          v6 = std::__shared_weak_count::lock(v5);
          if (v6)
          {
            v7 = v6;
            if (v2[4])
            {
              v13 = v2[4];
              v14 = v6;
              atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
              v8 = *(a2 + 24);
              if (!v8)
              {
                v12 = std::__throw_bad_function_call[abi:nn200100]();
                if (v14)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
                }

                std::__shared_weak_count::__release_shared[abi:nn200100](v7);
                _Unwind_Resume(v12);
              }

              (*(*v8 + 48))(v8, &v13);
              if (v14)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v14);
              }
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v7);
          }
        }

        v9 = v2[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v2[2];
            v11 = *v10 == v2;
            v2 = v10;
          }

          while (!v11);
        }

        v2 = v10;
      }

      while (v10 != v3);
    }
  }
}

_OWORD *std::vector<std::shared_ptr<md::LabelMapTileCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTileCommand>,mdm::zone_mallocator>>::__emplace_back_slow_path<std::shared_ptr<md::LabelMapTileCommand>>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = (*(a1 + 1) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = *(a1 + 2) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    v8 = mdm::zone_mallocator::instance(a1);
    v9 = pthread_rwlock_rdlock((v8 + 32));
    if (v9)
    {
      geo::read_write_lock::logFailure(v9, "read lock", v10);
    }

    v11 = malloc_type_zone_malloc(*v8, 16 * v7, 0x20040A4A59CD2uLL);
    atomic_fetch_add((v8 + 24), 1u);
    geo::read_write_lock::unlock((v8 + 32));
  }

  else
  {
    v11 = 0;
  }

  v12 = &v11[16 * v2];
  v13 = &v11[16 * v7];
  *v12 = *a2;
  v14 = v12 + 16;
  *a2 = 0;
  *(a2 + 8) = 0;
  v15 = *(a1 + 1) - *a1;
  v16 = &v12[-v15];
  v17 = memcpy(&v12[-v15], *a1, v15);
  v18 = *a1;
  *a1 = v16;
  *(a1 + 1) = v14;
  *(a1 + 2) = v13;
  if (v18)
  {
    v19 = mdm::zone_mallocator::instance(v17);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMapTileCommand>>(v19, v18);
  }

  return v14;
}

void std::__shared_ptr_emplace<md::LabelMapTileCommand>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A45890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0,std::allocator<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0>,void ()(md::LabelManager *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0,std::allocator<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0>,void ()(md::LabelManager *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A458C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0,std::allocator<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0>,void ()(md::LabelManager *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A458C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0,std::allocator<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0>,void ()(md::LabelManager *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A458C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0,std::allocator<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0>,void ()(md::LabelManager *)>::destroy(uint64_t a1)
{
  for (i = 168; i != 8; i -= 16)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

uint64_t std::__function::__func<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0,std::allocator<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0>,void ()(md::LabelManager *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A45910;
  a2[1] = v2;
  for (i = 2; i != 22; i += 2)
  {
    v4 = *(result + i * 8);
    *&a2[i] = v4;
    if (*(&v4 + 1))
    {
      atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void std::__function::__func<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0,std::allocator<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0>,void ()(md::LabelManager *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A45910;
  v2 = 21;
  while (1)
  {
    v3 = a1[v2];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v2 -= 2;
    if (v2 == 1)
    {

      JUMPOUT(0x1B8C62190);
    }
  }
}

void *std::__function::__func<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0,std::allocator<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0>,void ()(md::LabelManager *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A45910;
  for (i = 21; i != 1; i -= 2)
  {
    v3 = a1[i];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  return a1;
}

void std::__function::__func<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0,std::allocator<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0>,void ()(md::LabelManager *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0,std::allocator<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0>,void ()(md::LabelManager *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A45958;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0,std::allocator<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0>,void ()(md::LabelManager *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A45958;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0,std::allocator<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0>,void ()(md::LabelManager *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A45958;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

char *std::__function::__func<md::LabelMapTile::setCustomFeatures(std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&)::$_0,std::allocator<std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&>,void ()(md::LabelManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A459A0;
  *(a2 + 8) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = *(a1 + 40);
  return std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::LabelFeature>*,std::shared_ptr<md::LabelFeature>*>((a2 + 16), *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 4);
}

char *std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::LabelFeature>*,std::shared_ptr<md::LabelFeature>*>(char *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](result, a4);
    for (i = *(v6 + 1); a2 != a3; i += 2)
    {
      v8 = a2[1];
      *i = *a2;
      i[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
    }

    *(v6 + 1) = i;
  }

  return result;
}

void std::__function::__func<md::LabelMapTile::setCustomFeatures(std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&)::$_0,std::allocator<std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&>,void ()(md::LabelManager *)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A459A0;
  v1 = (a1 + 16);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelMapTile::setCustomFeatures(std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&)::$_0,std::allocator<std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&>,void ()(md::LabelManager *)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A459A0;
  v3 = (a1 + 16);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  return a1;
}

void ggl::TexturedSolidRibbon::PipelineSetup::~PipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::GridLogic,md::GridContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t std::function<BOOL ()(void)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return std::function<float ()(void)>::operator()(v4);
  }
}

uint64_t std::function<float ()(void)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return md::GridLogic::defaultStrokeColor(v4);
  }
}

double md::GridLogic::defaultStrokeColor(md::GridLogic *a1, unsigned int a2, int a3, int a4)
{
  if (a2 > 0xA)
  {
    return *&v5;
  }

  if (((1 << a2) & 0x49E) != 0)
  {
    {
      v10 = a1;
      a1 = v10;
      if (v6)
      {
        geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::GridLogic::_defaultSatelliteStrokeColor(void)::_defaultSatelliteStrokeLinearColor, &kDefaultSatelliteStrokeColor);
        a1 = v10;
      }
    }

    v4 = &md::GridLogic::_defaultSatelliteStrokeColor(void)::_defaultSatelliteStrokeLinearColor;
LABEL_5:
    v5 = *v4;
    *a1 = *v4;
    return *&v5;
  }

  if (((1 << a2) & 0x261) == 0)
  {
    goto LABEL_13;
  }

  if (a3 == 1)
  {
    {
      v11 = a1;
      a1 = v11;
      if (v7)
      {
        geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::GridLogic::_defaultStandardDarkStrokeColor(void)::_defaultStandardDarkStrokeLinearColor, &kDefaultStandardDarkStrokeColor);
        a1 = v11;
      }
    }

    v4 = &md::GridLogic::_defaultStandardDarkStrokeColor(void)::_defaultStandardDarkStrokeLinearColor;
    goto LABEL_5;
  }

  if (a3)
  {
    return *&v5;
  }

  if (a4 == 2)
  {
    {
      v12 = a1;
      a1 = v12;
      if (v8)
      {
        geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::GridLogic::_defaultExploreStrokeColor(void)::_defaultExploreStrokeLinearColor, &kDefaultExploreStrokeColor);
        a1 = v12;
      }
    }

    v4 = &md::GridLogic::_defaultExploreStrokeColor(void)::_defaultExploreStrokeLinearColor;
    goto LABEL_5;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return *&v5;
    }

LABEL_13:

    *&v5 = md::GridLogic::_defaultMutedStrokeColor(a1);
    return *&v5;
  }

  *&v5 = md::GridLogic::_defaultDrivingStrokeColor(a1);
  return *&v5;
}

double md::GridLogic::_defaultMutedStrokeColor(md::GridLogic *this)
{
  {
    v3 = this;
    this = v3;
    if (v2)
    {
      geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::GridLogic::_defaultMutedStrokeColor(void)::_defaultMutedStrokeLinearColor, &kDefaultMutedStrokeColor);
      this = v3;
    }
  }

  result = *&md::GridLogic::_defaultMutedStrokeColor(void)::_defaultMutedStrokeLinearColor;
  *this = md::GridLogic::_defaultMutedStrokeColor(void)::_defaultMutedStrokeLinearColor;
  return result;
}

double md::GridLogic::_defaultStandardDarkBackgroundColor(md::GridLogic *this)
{
  {
    v3 = this;
    this = v3;
    if (v2)
    {
      geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::GridLogic::_defaultStandardDarkBackgroundColor(void)::_defaultStandardDarkBackgroundLinearColor, &kDefaultStandardDarkBackgroundColor);
      this = v3;
    }
  }

  result = *&md::GridLogic::_defaultStandardDarkBackgroundColor(void)::_defaultStandardDarkBackgroundLinearColor;
  *this = md::GridLogic::_defaultStandardDarkBackgroundColor(void)::_defaultStandardDarkBackgroundLinearColor;
  return result;
}

__n128 std::__function::__func<md::GridLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>::ResolvedDependencies const&,md::GridContext &)::$_0,std::allocator<md::GridLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>::ResolvedDependencies const&,md::GridContext &)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A45BB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::Logic<md::GridLogic,md::GridContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x336A901A15BB7353 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>::resolveDependencies(*(a2 + 8));
    v8[1] = v7;
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::GridContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::GridContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A45BF8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1000C4017623181);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::GridContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A45BF8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4017623181);
  }

  return a1;
}

void md::GridLogic::~GridLogic(md::GridLogic *this)
{
  md::GridLogic::~GridLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A45A40;
  if (*(this + 216) == 1)
  {
    std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](this + 184);
  }

  if (*(this + 176) == 1)
  {
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](this + 144);
  }

  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t md::PolygonTileData::estimatedCost(md::PolygonTileData *this)
{
  v2 = *(this + 95);
  v3 = *(this + 96);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8);
      v4 += [v5 estimatedCost];

      v2 += 24;
    }

    while (v2 != v3);
  }

  for (i = *(this + 98); i != *(this + 99); i += 8)
  {
    v7 = *(*i + 16);
    v8 = *v7;
    if (*(**(**v7 + 64) + 48) != *(**(**v7 + 64) + 40))
    {
      v11 = v7[1];
      while (v8 != v11)
      {
        v12 = **(*v8 + 64);
        if (v12)
        {
          v12 = *(v12 + 48) - *(v12 + 40);
        }

        v13 = *(*v8 + 96);
        if (v13)
        {
          v12 = *(v13 + 48) + v12 - *(v13 + 40);
        }

        v4 += v12;
        v8 += 8;
      }
    }

    v9 = *(*i + 24);
    v10 = *v9;
    if (*(**(**v9 + 64) + 48) != *(**(**v9 + 64) + 40))
    {
      v14 = v9[1];
      while (v10 != v14)
      {
        v15 = **(*v10 + 64);
        if (v15)
        {
          v15 = *(v15 + 48) - *(v15 + 40);
        }

        v16 = *(*v10 + 96);
        if (v16)
        {
          v15 = *(v16 + 48) + v15 - *(v16 + 40);
        }

        v4 += v15;
        v10 += 8;
      }
    }
  }

  return v4;
}

void md::PolygonTileData::~PolygonTileData(md::PolygonTileData *this)
{
  md::PolygonTileData::~PolygonTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A45C80;
  *(this + 80) = &unk_1F2A45CC8;
  std::__hash_table<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::~__hash_table(this + 808);
  v2 = (this + 784);
  std::vector<std::unique_ptr<md::CoastlineGroup>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 760);
  std::vector<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v2);
  *this = &unk_1F2A45C20;
  *(this + 80) = &unk_1F2A45C68;
  v2 = (this + 728);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);

  md::MapTileData::~MapTileData(this);
}

uint64_t md::BasePolygonTileData::BasePolygonTileData(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t *a5, uint64_t a6)
{
  v9 = md::MapTileData::MapTileData(a1, a2, a6, a5, 1);
  *v9 = &unk_1F2A45C20;
  v9[80] = &unk_1F2A45C68;
  v9[91] = 0;
  v9[93] = 0;
  v9[92] = 0;
  std::vector<std::shared_ptr<gdc::Resource>>::__init_with_size[abi:nn200100]<std::shared_ptr<gdc::Resource>*,std::shared_ptr<gdc::Resource>*>((v9 + 91), *a3, a3[1], (a3[1] - *a3) >> 4);
  *(a1 + 752) = a4;
  return a1;
}

_BYTE *anonymous namespace::intersectView(_BYTE *result, uint64_t a2, uint64_t a3, double a4, __n128 a5)
{
  v5 = *(a2 + 176);
  v102 = *(a2 + 184);
  if (v5 == v102)
  {
    goto LABEL_71;
  }

  v6 = a3;
  v92 = result;
  v7 = 0.0;
  v97 = 0;
  v98 = 0;
  v99 = 1.79769313e308;
  v93 = 0.0;
  v94 = 0;
  v95 = 0.0;
  v96 = 0;
  v101 = a3 + 24;
  do
  {
    geo::RigidTransform<double,float>::inverse(v114, (v5 + 6), v7, a5);
    v8 = geo::RigidTransform<double,float>::operator*(v114, v6);
    v9 = 0;
    *v113 = v8;
    v113[1] = v10;
    v113[2] = v11;
    do
    {
      v12 = *(v101 + 8 * v9);
      *(&v127 + v9++) = v12;
    }

    while (v9 != 3);
    v15 = gm::Quaternion<float>::operator*(&v115, &v127);
    v16 = v13;
    v17 = v14;
    for (i = 0; i != 3; ++i)
    {
      v19 = *&v113[i];
      *(&v127 + i) = v19;
    }

    v110 = v127;
    v111 = v128;
    *v112 = v15;
    *&v112[1] = v13;
    *&v112[2] = v14;
    v108 = 0;
    v109 = 0;
    v106 = 0;
    v107 = 0;
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(&v127, **(*v5 + 64), 0, (*(**(*v5 + 64) + 48) - *(**(*v5 + 64) + 40)) / *(**(*v5 + 64) + 8), 0, 0, 0);
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(&v124, *(*v5 + 96), 0, (*(*(*v5 + 96) + 48) - *(*(*v5 + 96) + 40)) / *(*(*v5 + 96) + 8), 0, 0, 0);
    v20 = v5;
    v21 = v5[4];
    v105 = v20;
    v22 = v20[5];
    if (v21 >= v22)
    {
      ggl::BufferMemory::~BufferMemory(&v124);
      ggl::BufferMemory::~BufferMemory(&v127);
      v81 = v105;
    }

    else
    {
      v23 = v126;
      v24 = 0;
      v25 = v130;
      v26 = 3.4028e38;
      v27 = 0;
      v28 = 0.0;
      v103 = v126;
      v104 = v20[5];
      do
      {
        v29 = 0;
        v30 = (v23 + 2 * v21);
        v31 = (v25 + 32 * *v30);
        v122 = *v31;
        v32 = v30[1];
        v33 = v30[2];
        v123 = *(v31 + 2);
        v34 = (v25 + 32 * v32);
        v120 = *v34;
        v121 = *(v34 + 2);
        v35 = (v25 + 32 * v33);
        v118 = *v35;
        v119 = *(v35 + 2);
        do
        {
          *&v145[v29] = *(&v122 + v29) - *(&v110 + v29);
          v29 += 4;
        }

        while (v29 != 12);
        v36 = 0;
        v37 = *v145;
        v38 = *&v145[8];
        v143 = *v145;
        v144 = *&v145[8];
        do
        {
          *&v145[v36] = *(&v120 + v36) - *(&v110 + v36);
          v36 += 4;
        }

        while (v36 != 12);
        v39 = 0;
        v40 = *v145;
        v41 = *&v145[8];
        v141 = *v145;
        v142 = *&v145[8];
        do
        {
          *&v145[v39] = *(&v118 + v39) - *(&v110 + v39);
          v39 += 4;
        }

        while (v39 != 12);
        v42 = 0;
        v139 = *v145;
        v140 = *&v145[8];
        v43 = -((v15 * *&v145[8]) - (v17 * *v145));
        *v145 = -((v17 * *&v145[4]) - (v16 * *&v145[8]));
        *&v145[4] = v43;
        *&v145[8] = -((v16 * *&v139) - (v15 * *(&v139 + 1)));
        v44 = 0.0;
        do
        {
          v44 = v44 + (*(&v141 + v42) * *&v145[v42]);
          v42 += 4;
        }

        while (v42 != 12);
        if (v44 >= 0.0)
        {
          v45 = 0;
          *v145 = -((v17 * *(&v37 + 1)) - (v16 * v38));
          *&v145[4] = -((v15 * v38) - (v17 * *&v37));
          *&v145[8] = -((v16 * *&v37) - (v15 * *(&v37 + 1)));
          v46 = 0.0;
          do
          {
            v46 = v46 + (*(&v139 + v45) * *&v145[v45]);
            v45 += 4;
          }

          while (v45 != 12);
          if (v46 >= 0.0)
          {
            v47 = 0;
            *v145 = -((v17 * *(&v40 + 1)) - (v16 * v41));
            *&v145[4] = -((v15 * v41) - (v17 * *&v40));
            *&v145[8] = -((v16 * *&v40) - (v15 * *(&v40 + 1)));
            v48 = 0.0;
            do
            {
              v48 = v48 + (*(&v143 + v47) * *&v145[v47]);
              v47 += 4;
            }

            while (v47 != 12);
            if (v48 >= 0.0)
            {
              v49 = (v46 + v44) + v48;
              if (v49 > 0.0)
              {
                v50 = 0;
                v51 = 1.0 / v49;
                v52 = v51 * v44;
                do
                {
                  *&v145[v50] = v52 * *(&v122 + v50);
                  v50 += 4;
                }

                while (v50 != 12);
                v53 = 0;
                v135 = *v145;
                v136 = *&v145[8];
                do
                {
                  *&v145[v53] = (v51 * v46) * *(&v120 + v53);
                  v53 += 4;
                }

                while (v53 != 12);
                v54 = 0;
                v133 = *v145;
                v134 = *&v145[8];
                do
                {
                  *&v145[v54] = *(&v133 + v54) + *(&v135 + v54);
                  v54 += 4;
                }

                while (v54 != 12);
                v55 = 0;
                v56 = v51 * v48;
                v137 = *v145;
                v138 = *&v145[8];
                do
                {
                  *&v145[v55] = v56 * *(&v118 + v55);
                  v55 += 4;
                }

                while (v55 != 12);
                v57 = 0;
                v131 = *v145;
                v132 = *&v145[8];
                do
                {
                  *&v145[v57] = *(&v131 + v57) + *(&v137 + v57);
                  v57 += 4;
                }

                while (v57 != 12);
                v58 = 0;
                v116 = *v145;
                v117 = *&v145[8];
                do
                {
                  *&v145[v58] = *(&v116 + v58) - *(&v110 + v58);
                  v58 += 4;
                }

                while (v58 != 12);
                v141 = *v145;
                v142 = *&v145[8];
                *v145 = gm::Matrix<float,3,1>::normalized<int,void>(&v141);
                *&v145[4] = v59;
                *&v145[8] = v60;
                v61 = gm::Matrix<float,3,1>::normalized<int,void>(v112);
                v62 = 0;
                v143 = __PAIR64__(v63, LODWORD(v61));
                v144 = v64;
                v65 = 0.0;
                do
                {
                  v65 = v65 + (*(&v143 + v62) * *&v145[v62]);
                  v62 += 4;
                }

                while (v62 != 12);
                v66 = 0;
                v67 = fmaxf(fminf(v65, 1.0), -1.0);
                do
                {
                  *&v145[v66] = *(&v110 + v66) - *(&v116 + v66);
                  v66 += 4;
                }

                while (v66 != 12);
                v68 = 0;
                v69 = 0.0;
                do
                {
                  v69 = v69 + (*&v145[v68] * *&v145[v68]);
                  v68 += 4;
                }

                while (v68 != 12);
                if (acosf(v67) < 1.57079633 && v69 < v26)
                {
                  v71 = 0;
                  v108 = v116;
                  v109 = v117;
                  do
                  {
                    *&v145[v71] = *(&v120 + v71) - *(&v122 + v71);
                    v71 += 4;
                  }

                  while (v71 != 12);
                  v72 = 0;
                  v73 = *v145;
                  v74 = *&v145[4];
                  do
                  {
                    *&v145[v72] = *(&v118 + v72) - *(&v122 + v72);
                    v72 += 4;
                  }

                  while (v72 != 12);
                  v75.i32[0] = vdup_lane_s32(*&v145[4], 1).u32[0];
                  v75.i32[1] = *v145;
                  v76.i32[0] = vdup_lane_s32(v74, 1).u32[0];
                  v76.f32[1] = v73;
                  v77 = -((*v145 * *v74.i32) - (*&v145[4] * v73));
                  *v145 = vmla_f32(vneg_f32(vmul_f32(*&v145[4], v76)), v74, v75);
                  *&v145[8] = v77;
                  v28 = gm::Matrix<float,3,1>::normalized<int,void>(v145);
                  v27 = v78;
                  v24 = v79;
                  v26 = v69;
                }

                v23 = v103;
                v22 = v104;
              }
            }
          }
        }

        v21 += 3;
      }

      while (v21 < v22);
      v106 = __PAIR64__(v27, LODWORD(v28));
      v107 = v24;
      ggl::BufferMemory::~BufferMemory(&v124);
      ggl::BufferMemory::~BufferMemory(&v127);
      LODWORD(v7) = 2139095039;
      v6 = a3;
      if (v26 >= 3.4028e38)
      {
        v81 = v105;
      }

      else
      {
        v80 = 0;
        v81 = v105;
        do
        {
          *(&v127 + v80) = *(&v110 + v80) - *(&v108 + v80);
          v80 += 4;
        }

        while (v80 != 12);
        v82 = 0;
        a5.n128_u32[1] = HIDWORD(v127);
        v83 = 0.0;
        do
        {
          a5.n128_u32[0] = *(&v127 + v82);
          v83 = v83 + (a5.n128_f32[0] * a5.n128_f32[0]);
          v82 += 4;
        }

        while (v82 != 12);
        v84 = v83;
        v7 = v99;
        if (v99 > v84)
        {
          for (j = 0; j != 3; ++j)
          {
            *(&v127 + j) = *(&v108 + j);
          }

          v95 = geo::RigidTransform<double,float>::operator*((v105 + 6), &v127);
          v96 = v86;
          v97 = v87;
          v88 = gm::Quaternion<float>::operator*((v105 + 9), &v106);
          v89 = 0;
          v124 = __PAIR64__(a5.n128_u32[0], LODWORD(v88));
          v125 = v90;
          do
          {
            *(&v127 + v89) = *(&v124 + v89);
            ++v89;
          }

          while (v89 != 3);
          a5.n128_u64[0] = v127;
          v98 = v127;
          v99 = v84;
          v7 = v129;
          v93 = v129;
          v94 = v128;
        }
      }
    }

    v5 = v81 + 11;
  }

  while (v5 != v102);
  result = v92;
  if (v99 >= 1.79769313e308)
  {
LABEL_71:
    v91 = 0;
    *result = 0;
  }

  else
  {
    *v92 = v95;
    v92[1] = v96;
    v92[2] = v97;
    v92[3] = v98;
    v91 = 1;
    v92[4] = v94;
    *(v92 + 5) = v93;
  }

  result[48] = v91;
  return result;
}

void md::Logic<md::mun::MuninLogic,md::mun::MuninContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext,md::ElevationContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::mun::MuninLogic::nearestRoadPoint(float64x2_t *a1, uint64_t *a2, uint64_t *a3, float64x2_t *a4)
{
  LOBYTE(a1->f64[0]) = 0;
  if (a2 == a3)
  {
    v12 = 0;
  }

  else
  {
    v7 = a2;
    v8 = exp(a4->f64[1] * 6.28318531 + -3.14159265);
    v9 = atan(v8);
    v10 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v9 * 114.591559 + -90.0);
    v12 = 0;
    v13 = v10 * 250.0;
    v14 = *a4;
    v15 = 1.79769313e308;
    do
    {
      v16 = *v7;
      v17 = *(*v7 + 728);
      v18 = *(*v7 + 736);
      if (v17 == v18)
      {
        goto LABEL_25;
      }

      v19 = 0;
      v20 = 1 << *(v16 + 169);
      v21 = v20;
      v23 = v16 + 172;
      v22 = *(v16 + 176);
      v24 = v20 + ~*(v16 + 172);
      v25 = 3.4028e38;
      v26 = 1.0 / v20;
      v27 = v13 * v21 * (v13 * v21);
      v28.i64[0] = *(v23 + 4);
      v28.i64[1] = v24;
      v29 = vcvt_f32_f64(vmulq_n_f64(vmlsq_lane_f64(v14, vcvtq_f64_s64(v28), 1.0 / v21, 0), v21));
      v30 = 0.0;
      do
      {
        v31 = *v17;
        v32 = v17[1];
        v33 = v17[2];
        v34 = v17[3];
        v35 = ((v33 * (v29.f32[0] - *v17)) + (v34 * (v29.f32[1] - v32))) / ((v33 * v33) + (v34 * v34));
        if (v35 >= 0.0)
        {
          if (v35 <= 1.0)
          {
            v31 = v31 + (v35 * v33);
            v32 = v32 + (v35 * v34);
          }

          else
          {
            v31 = v33 + v31;
            v32 = v34 + v32;
          }
        }

        v36 = ((v31 - v29.f32[0]) * (v31 - v29.f32[0])) + ((v32 - v29.f32[1]) * (v32 - v29.f32[1]));
        if (v27 > v36 && v36 < v25)
        {
          v19 = 1;
          v30 = v31;
          v11 = v32;
          v25 = ((v31 - v29.f32[0]) * (v31 - v29.f32[0])) + ((v32 - v29.f32[1]) * (v32 - v29.f32[1]));
        }

        v17 += 4;
      }

      while (v17 != v18);
      if ((v19 & 1) == 0 || ((v38.f64[0] = v26 * (v30 + v22), v38.f64[1] = (v11 + v24) * v26, v39 = vsubq_f64(v14, v38), vaddvq_f64(vmulq_f64(v39, v39)) >= v15) ? (v40 = 0.0) : (v40 = 1.0), v15 <= v40))
      {
LABEL_25:
        v40 = v15;
      }

      else if (v12 == 1 || (v12 & 1) == 0)
      {
        *a1 = v38;
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      v7 += 2;
      v15 = v40;
    }

    while (v7 != a3);
  }

  LOBYTE(a1[1].f64[0]) = v12;
}

uint64_t std::__function::__value_func<void ()(VKMuninAvailability)>::operator()[abi:nn200100](uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return md::Logic<md::mun::MuninLogic,md::mun::MuninContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext,md::ElevationContext>,gdc::TypeList<>>>::frequency(v4);
  }
}

uint64_t md::Logic<md::mun::MuninLogic,md::mun::MuninContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext,md::ElevationContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x8EA84A1BD3791AFALL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext,md::ElevationContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext,md::ElevationContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::mun::MuninContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::mun::MuninContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A45E50;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::mun::MuninContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A45E50;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::mun::MuninLogic::~MuninLogic(md::mun::MuninLogic *this)
{
  md::mun::MuninLogic::~MuninLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A45CE0;
  v2 = (this + 160);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::__function::__value_func<void ()(VKMuninAvailability)>::~__value_func[abi:nn200100](this + 120);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void ggl::BuildingShadow::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::ARLabelLayer::layout(md::ARLabelLayer *this, const md::LayoutContext *a2)
{
  std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::clear(this + 48);
  v4 = gdc::Context::context<md::ARSceneContext>(*(a2 + 1));
  v6 = *(*v4 + 112);
  v5 = *(*v4 + 120);
  if (v6 != v5)
  {
    while (*v6)
    {
      v6 += 56;
      if (v6 == v5)
      {
        goto LABEL_6;
      }
    }

    v5 = v6;
  }

LABEL_6:
  v7 = *(v5 + 10);
  if (v7)
  {
    if (std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>>>::find<geo::QuadTile>(this + 16, (v7 + 16)))
    {
      std::__list_imp<geo::MarkedLRUCache<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::CacheEntry,std::allocator<geo::MarkedLRUCache<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::CacheEntry const&>();
    }

    std::allocate_shared[abi:nn200100]<md::StandardLabelMapTile,std::allocator<md::StandardLabelMapTile>,geo::QuadTile const&,0>();
  }

  v8 = *(this + 23);

  md::LabelManager::layout(v8, a2, this + 48);
}

void sub_1B322D0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  operator delete(v26);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a25);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  _Unwind_Resume(a1);
}

void md::ARLabelLayer::~ARLabelLayer(md::ARLabelLayer *this)
{
  md::ARLabelLayer::~ARLabelLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A45ED0;
  v2 = *(this + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 128);
  std::__list_imp<std::pair<geo::QuadTile,md::TerrainTileMesh>>::clear(this + 13);
  std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__deallocate_node(*(this + 9));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 48));
  *this = &unk_1F2A16858;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t md::RouteLineSupport::onRouteContextStateDidChange(uint64_t this, VKRouteContext *a2)
{
  if (a2)
  {
    v2 = this;
    this = [*(this + 24) resetNotificationsForObserverType:2];
    *(v2 + 274) = 1;
  }

  return this;
}

uint64_t md::RouteLineSupport::updateRouteLine(uint64_t this, VKRouteLine *a2)
{
  v3[4] = *MEMORY[0x1E69E9840];
  if ((*(this + 279) & 1) == 0)
  {
    *(this + 279) = 1;
    v2 = *(this + 8);
    v3[0] = &unk_1F2A460C8;
    v3[1] = this;
    v3[3] = v3;
    md::LabelManager::queueCommand(v2, 70, 1, v3);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
  }

  return this;
}

void sub_1B322D378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::RouteLineSupport::updateRouteLine(VKRouteLine *)::$_0,std::allocator<md::RouteLineSupport::updateRouteLine(VKRouteLine *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  md::RouteLineSupport::clearRouteLabelFeatures(v1);
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 424);
    if (v3)
    {
      v4 = v2;
      v5 = [v4 routeInfo];
      v6 = [v5 route];
      v7 = (*(*v3 + 56))(v3, v6);

      v8 = *(v1 + 280);
      v9 = *(v1 + 24);
      v10 = [v9 routeInfo];
      md::LabelRouteLine::buildRoutelineFeatures(v8, v7, v10);

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v11 = [*(v1 + 24) alternateRoutes];
      v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v12)
      {
        v13 = *v40;
        do
        {
          v14 = 0;
          v15 = v7;
          do
          {
            if (*v40 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v39 + 1) + 8 * v14);
            v17 = *(v1 + 424);
            v18 = [v16 route];
            v7 = (*(*v17 + 56))(v17, v18);

            md::LabelRouteLine::buildRoutelineFeatures(*(v1 + 280), v7, v16);
            ++v14;
            v15 = v7;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v12);
      }

      atomic_load((*(v1 + 8) + 3426));
      v19 = *(v1 + 288);
      if (v19 != *(v1 + 296))
      {
        v20 = *(v19 + 8);
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      v21 = *(v1 + 24);
      v22 = [v21 routeInfo];
      v23 = [v22 route];
      v24 = v23;
      v25 = *(v1 + 352);
      if (v25)
      {
        while (1)
        {
          while (1)
          {
            v26 = v25;
            v27 = v25[4];
            if (v23 >= v27)
            {
              break;
            }

            v25 = *v26;
            v28 = v26;
            if (!*v26)
            {
              goto LABEL_22;
            }
          }

          if (v27 >= v23)
          {
            break;
          }

          v25 = v26[1];
          if (!v25)
          {
            v28 = v26 + 1;
            goto LABEL_22;
          }
        }

        v32 = v26;
      }

      else
      {
        v28 = (v1 + 352);
        v26 = (v1 + 352);
LABEL_22:
        v29 = mdm::zone_mallocator::instance(v23);
        v30 = pthread_rwlock_rdlock((v29 + 32));
        if (v30)
        {
          geo::read_write_lock::logFailure(v30, "read lock", v31);
        }

        v32 = malloc_type_zone_malloc(*v29, 0x30uLL, 0x10E0040BB890D76uLL);
        atomic_fetch_add((v29 + 24), 1u);
        geo::read_write_lock::unlock((v29 + 32));
        v32[4] = v24;
        *(v32 + 40) = 0;
        *v32 = 0;
        v32[1] = 0;
        v32[2] = v26;
        *v28 = v32;
        v33 = **(v1 + 344);
        v34 = v32;
        if (v33)
        {
          *(v1 + 344) = v33;
          v34 = *v28;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(v1 + 352), v34);
        v24 = 0;
        ++*(v1 + 368);
      }

      *(v32 + 40) = 1;

      md::LabelFeatureStyler::styleExternalFeatures(*(*(v1 + 8) + 296), (v1 + 312));
      v35 = *(v1 + 8);
      *(v35 + 3034) = 1;
      v36 = atomic_load((v35 + 3053));
      if (v36)
      {
        v37 = *(v35 + 136);
        if (v37)
        {
          v38 = *(v37 + 56);
          if (v38)
          {
            std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v38, v35, 9);
          }
        }
      }
    }
  }

  *(v1 + 279) = 0;
}

void sub_1B322D8D0(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v5 + 32));

  _Unwind_Resume(a1);
}

void md::RouteLineSupport::clearRouteLabelFeatures(md::RouteLineSupport *this)
{
  v2 = this + 352;
  std::__tree<std::__value_type<GEOComposedRoute * {__strong},BOOL>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},BOOL>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},BOOL>,mdm::zone_mallocator>>::destroy(*(this + 44));
  *(this + 46) = 0;
  *(this + 43) = v2;
  *(this + 44) = 0;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 36);

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 39);
}

void md::LabelRouteLine::buildRoutelineFeatures(uint64_t a1, void *a2, void *a3)
{
  v140 = *MEMORY[0x1E69E9840];
  v103 = a2;
  v97 = a3;
  v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v4 = [v97 travelDirectionAnnotations];
  v5 = [v4 countByEnumeratingWithState:&v120 objects:v134 count:16];
  if (v5)
  {
    v6 = *v121;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v121 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v102 addObject:*(*(&v120 + 1) + 8 * i)];
      }

      v5 = [v4 countByEnumeratingWithState:&v120 objects:v134 count:16];
    }

    while (v5);
  }

  if (![v102 count])
  {
    v8 = [v97 routeNameAnnotations];
    v9 = [v8 count] == 0;

    if (!v9)
    {
      v10 = [VKRouteRangeAnnotationInfo alloc];
      v11 = [v97 route];
      v12 = [v11 startRouteCoordinate];
      v13 = [v97 route];
      v14 = -[VKRouteRangeAnnotationInfo initWithEtaDescription:start:end:](v10, "initWithEtaDescription:start:end:", 0, v12, [v13 endRouteCoordinate]);

      [v102 addObject:v14];
    }
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v102;
  v98 = [obj countByEnumeratingWithState:&v116 objects:v133 count:16];
  if (v98)
  {
    v99 = 0;
    v95 = *v117;
    for (j = *v117; ; j = *v117)
    {
      if (j != v95)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v116 + 1) + 8 * v99);
      v110 = [v16 start];
      v17 = [v16 end];
      v132 = v110;
      v131 = v17;
      v18 = v97;
      v115 = 0uLL;
      v114 = 0;
      v129 = 0;
      v130 = 0uLL;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v104 = v18;
      v105 = [v18 routeNameAnnotations];
      v19 = [v105 countByEnumeratingWithState:&v125 objects:&__dst count:16];
      v20 = *(&v110 + 1);
      v101 = v16;
      if (v19)
      {
        v107 = *v126;
        do
        {
          v108 = v19;
          for (k = 0; k != v108; ++k)
          {
            if (*v126 != v107)
            {
              objc_enumerationMutation(v105);
            }

            v22 = *(*(&v125 + 1) + 8 * k);
            v23 = [v22 start];
            if (v17 <= v23 && (v17 != v23 || *(&v17 + 1) < *(&v23 + 1)))
            {
              continue;
            }

            v25 = [v22 end];
            if (v110 >= v25 && (v110 != v25 || *(&v110 + 1) > *(&v25 + 1)))
            {
              continue;
            }

            v27 = [v22 etaDescription];
            v28 = [v27 shieldText];

            if (v28)
            {
              v29 = [v22 etaDescription];
              v109 = [v29 shieldText];
            }

            else
            {
              v109 &= 0xFFFFFFFFFFFFFF00;
            }

            v30 = [v22 etaDescription];
            v31 = [v30 etaText];
            v32 = [v22 etaDescription];
            v33 = [v32 shieldType];
            v34 = [v22 start];
            v113 = v34;
            if (v110 < v34 || v110 == v34 && *(&v110 + 1) < *(&v34 + 1))
            {
              v35 = &v113;
            }

            else
            {
              v35 = &v132;
            }

            v36 = [v22 end];
            v124 = v36;
            if (v17 > v36 || v17 == v36 && *(&v17 + 1) > *(&v36 + 1))
            {
              v37 = &v124;
            }

            else
            {
              v37 = &v131;
            }

            v38 = v115;
            if (v115 >= *(&v115 + 1))
            {
              v41 = 0x6DB6DB6DB6DB6DB7 * ((v115 - v114) >> 3) + 1;
              if (v41 > 0x492492492492492)
              {
                goto LABEL_145;
              }

              if (0xDB6DB6DB6DB6DB6ELL * ((*(&v115 + 1) - v114) >> 3) > v41)
              {
                v41 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v115 + 1) - v114) >> 3);
              }

              if ((0x6DB6DB6DB6DB6DB7 * ((*(&v115 + 1) - v114) >> 3)) >= 0x249249249249249)
              {
                v42 = 0x492492492492492;
              }

              else
              {
                v42 = v41;
              }

              v139 = &v114;
              if (v42)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<md::RoadNameWithRange>>(v42);
              }

              v43 = 8 * ((v115 - v114) >> 3);
              v136 = 0;
              v137 = v43;
              v138 = v43;
              *v43 = v31;
              *(v43 + 8) = 1;
              *(v43 + 16) = 0;
              *(v43 + 24) = 0;
              if (v28)
              {
                *(v43 + 16) = v109;
                *(v43 + 24) = 1;
              }

              *(v43 + 32) = v33;
              *(v43 + 36) = 1;
              v44 = *v37;
              *(v43 + 40) = *v35;
              *(v43 + 48) = v44;
              *&v138 = v138 + 56;
              v45 = v114 + v137 - v115;
              std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::RoadNameWithRange>,md::RoadNameWithRange*>(v114, v115, v45);
              v46 = v114;
              v47 = *(&v115 + 1);
              v114 = v45;
              v106 = v138;
              v115 = v138;
              *&v138 = v46;
              *(&v138 + 1) = v47;
              v136 = v46;
              v137 = v46;
              std::__split_buffer<md::RoadNameWithRange>::~__split_buffer(&v136);
              v40 = v106;
            }

            else
            {
              *v115 = v31;
              *(v38 + 8) = 1;
              *(v38 + 16) = 0;
              *(v38 + 24) = 0;
              if (v28)
              {
                *(v38 + 16) = v109;
                *(v38 + 24) = 1;
              }

              *(v38 + 32) = v33;
              *(v38 + 36) = 1;
              v39 = *v37;
              *(v38 + 40) = *v35;
              *(v38 + 48) = v39;
              v40 = v38 + 56;
            }

            *&v115 = v40;

            if (v28)
            {
            }
          }

          v19 = [v105 countByEnumeratingWithState:&v125 objects:&__dst count:16];
        }

        while (v19);
      }

      if (v114 == v115)
      {
        break;
      }

      std::__introsort<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,false>(v114, v115, 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v115 - v114) >> 3)), 1);
      v48 = v114;
      v49 = v115;
      for (m = v110; v48 != v49; v20 = *(&m + 1))
      {
        if (m != *(v48 + 40) || vabds_f32(v20, *(v48 + 44)) >= 0.00000011921)
        {
          v51 = v130;
          if (v130 >= *(&v130 + 1))
          {
            v53 = 0x6DB6DB6DB6DB6DB7 * ((v130 - v129) >> 3);
            v54 = v53 + 1;
            if ((v53 + 1) > 0x492492492492492)
            {
              goto LABEL_145;
            }

            if (0xDB6DB6DB6DB6DB6ELL * ((*(&v130 + 1) - v129) >> 3) > v54)
            {
              v54 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v130 + 1) - v129) >> 3);
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((*(&v130 + 1) - v129) >> 3)) >= 0x249249249249249)
            {
              v55 = 0x492492492492492;
            }

            else
            {
              v55 = v54;
            }

            v139 = &v129;
            if (v55)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::RoadNameWithRange>>(v55);
            }

            v56 = 8 * ((v130 - v129) >> 3);
            v136 = 0;
            v137 = v56;
            *(&v138 + 1) = 0;
            *v56 = 0;
            *(v56 + 8) = 0;
            *(v56 + 16) = 0;
            *(v56 + 24) = 0;
            *(v56 + 32) = 0;
            *(v56 + 36) = 0;
            *(v56 + 40) = m;
            *(v56 + 48) = *(v48 + 40);
            *&v138 = 56 * v53 + 56;
            v57 = &v129[7 * v53] - v130;
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::RoadNameWithRange>,md::RoadNameWithRange*>(v129, v130, &v129[v56 / 8] - v130);
            v58 = v129;
            v59 = *(&v130 + 1);
            v129 = v57;
            v111 = v138;
            v130 = v138;
            *&v138 = v58;
            *(&v138 + 1) = v59;
            v136 = v58;
            v137 = v58;
            std::__split_buffer<md::RoadNameWithRange>::~__split_buffer(&v136);
            v52 = v111;
          }

          else
          {
            *v130 = 0;
            *(v51 + 8) = 0;
            *(v51 + 16) = 0;
            *(v51 + 24) = 0;
            *(v51 + 32) = 0;
            *(v51 + 36) = 0;
            *(v51 + 40) = m;
            *(v51 + 48) = *(v48 + 40);
            v52 = v51 + 56;
          }

          *&v130 = v52;
        }

        m = *(v48 + 48);
        v48 += 56;
      }

      v60 = m;
      if (m != v131)
      {
        v61 = v130;
LABEL_86:
        if (v61 < *(&v130 + 1))
        {
          *v61 = 0;
          *(v61 + 8) = 0;
          *(v61 + 16) = 0;
          *(v61 + 24) = 0;
          *(v61 + 32) = 0;
          *(v61 + 36) = 0;
          v64 = v131;
          *(v61 + 40) = m;
          *(v61 + 48) = v64;
          v61 += 56;
          goto LABEL_107;
        }

        v65 = 0x6DB6DB6DB6DB6DB7 * ((v61 - v129) >> 3) + 1;
        if (v65 > 0x492492492492492)
        {
          goto LABEL_145;
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((*(&v130 + 1) - v129) >> 3) > v65)
        {
          v65 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v130 + 1) - v129) >> 3);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((*(&v130 + 1) - v129) >> 3)) >= 0x249249249249249)
        {
          v66 = 0x492492492492492;
        }

        else
        {
          v66 = v65;
        }

        v139 = &v129;
        if (v66)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::RoadNameWithRange>>(v66);
        }

        v69 = 8 * ((v61 - v129) >> 3);
        v136 = 0;
        v137 = v69;
        *(&v138 + 1) = 0;
        *v69 = 0;
        *(v69 + 8) = 0;
        *(v69 + 16) = 0;
        *(v69 + 24) = 0;
        *(v69 + 32) = 0;
        *(v69 + 36) = 0;
        v70 = v131;
        *(v69 + 40) = v60;
        goto LABEL_106;
      }

      v61 = v130;
      if (vabds_f32(v20, *(&v131 + 1)) >= 0.00000011921)
      {
        goto LABEL_86;
      }

LABEL_108:
      v74 = v129;
      v75 = v61 - v129;
      if ((v61 - v129) >= 1)
      {
        v76 = v115;
        if (*(&v115 + 1) - v115 >= v75)
        {
          if (v61 != v129)
          {
            v79 = 0;
            do
            {
              v80 = (v76 + v79);
              *v80 = 0;
              v80[8] = 0;
              if (*(v74 + v79 + 8) == 1)
              {
                *(v76 + v79) = *(v74 + v79);
                v80[8] = 1;
              }

              v80[16] = 0;
              v80[24] = 0;
              if (*(v74 + v79 + 24) == 1)
              {
                *(v80 + 2) = *(v74 + v79 + 16);
                v80[24] = 1;
              }

              v81 = v76 + v79;
              v82 = *(v74 + v79 + 32);
              *(v81 + 48) = *(v74 + v79 + 48);
              *(v81 + 32) = v82;
              v79 += 56;
            }

            while (v74 + v79 != v61);
            v76 += v79;
          }

          *&v115 = v76;
        }

        else
        {
          v77 = 0x6DB6DB6DB6DB6DB7 * ((v115 - v114) >> 3) + 0x6DB6DB6DB6DB6DB7 * (v75 >> 3);
          if (v77 > 0x492492492492492)
          {
LABEL_145:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((*(&v115 + 1) - v114) >> 3) > v77)
          {
            v77 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v115 + 1) - v114) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((*(&v115 + 1) - v114) >> 3)) >= 0x249249249249249)
          {
            v78 = 0x492492492492492;
          }

          else
          {
            v78 = v77;
          }

          v139 = &v114;
          if (v78)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<md::RoadNameWithRange>>(v78);
          }

          v83 = 0;
          v84 = 8 * ((v115 - v114) >> 3);
          v136 = 0;
          v137 = v84;
          v138 = v84;
          do
          {
            v85 = (v84 + v83);
            *v85 = 0;
            v85[8] = 0;
            if (*(v74 + v83 + 8) == 1)
            {
              *v85 = *(v74 + v83);
              v85[8] = 1;
            }

            v85[16] = 0;
            v85[24] = 0;
            if (*(v74 + v83 + 24) == 1)
            {
              *(v85 + 2) = *(v74 + v83 + 16);
              v85[24] = 1;
            }

            v86 = v84 + v83;
            v87 = *(v74 + v83 + 32);
            *(v86 + 48) = *(v74 + v83 + 48);
            *(v86 + 32) = v87;
            v83 += 56;
          }

          while (v75 != v83);
          *&v138 = v84 + v75;
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::RoadNameWithRange>,md::RoadNameWithRange*>(v76, v115, v84 + v75);
          *&v138 = v138 + v115 - v76;
          *&v115 = v76;
          v88 = v114 + v137 - v76;
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::RoadNameWithRange>,md::RoadNameWithRange*>(v114, v76, v88);
          v89 = v114;
          v90 = *(&v115 + 1);
          v114 = v88;
          v115 = v138;
          *&v138 = v89;
          *(&v138 + 1) = v90;
          v136 = v89;
          v137 = v89;
          std::__split_buffer<md::RoadNameWithRange>::~__split_buffer(&v136);
        }
      }

      v136 = &v129;
      std::vector<md::RoadNameWithRange>::__destroy_vector::operator()[abi:nn200100](&v136);

      v92 = v114;
      v91 = v115;
      v100 = v115;
      while (v92 != v91)
      {
        if ((*(v92 + 8) & 1) != 0 || ([v101 etaDescription], v93 = objc_claimAutoreleasedReturnValue(), v94 = v93 == 0, v93, !v94))
        {
          _ZNSt3__115allocate_sharedB8nn200100IN2md24LabelExternalRoadFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        v92 += 56;
        v91 = v100;
      }

      __dst = &v114;
      std::vector<md::RoadNameWithRange>::__destroy_vector::operator()[abi:nn200100](&__dst);
      if (++v99 >= v98)
      {
        v98 = [obj countByEnumeratingWithState:&v116 objects:v133 count:16];
        if (!v98)
        {
          goto LABEL_144;
        }

        v99 = 0;
      }
    }

    v62 = v130;
    if (v130 < *(&v130 + 1))
    {
      *v130 = 0;
      *(v62 + 8) = 0;
      *(v62 + 16) = 0;
      *(v62 + 24) = 0;
      *(v62 + 32) = 0;
      *(v62 + 36) = 0;
      v63 = v131;
      *(v62 + 40) = v110;
      *(v62 + 48) = v63;
      v61 = v62 + 56;
LABEL_107:
      *&v130 = v61;
      goto LABEL_108;
    }

    v67 = 0x6DB6DB6DB6DB6DB7 * ((v130 - v129) >> 3) + 1;
    if (v67 > 0x492492492492492)
    {
      goto LABEL_145;
    }

    if (0xDB6DB6DB6DB6DB6ELL * ((*(&v130 + 1) - v129) >> 3) > v67)
    {
      v67 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v130 + 1) - v129) >> 3);
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((*(&v130 + 1) - v129) >> 3)) >= 0x249249249249249)
    {
      v68 = 0x492492492492492;
    }

    else
    {
      v68 = v67;
    }

    v139 = &v129;
    if (v68)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::RoadNameWithRange>>(v68);
    }

    v69 = 8 * ((v130 - v129) >> 3);
    v136 = 0;
    v137 = v69;
    *(&v138 + 1) = 0;
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 36) = 0;
    v70 = v131;
    *(v69 + 40) = v110;
LABEL_106:
    *(v69 + 48) = v70;
    *&v138 = v69 + 56;
    v71 = &v129[v69 / 8] - v130;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::RoadNameWithRange>,md::RoadNameWithRange*>(v129, v130, v71);
    v72 = v129;
    v73 = *(&v130 + 1);
    v129 = v71;
    v112 = v138;
    v130 = v138;
    *&v138 = v72;
    *(&v138 + 1) = v73;
    v136 = v72;
    v137 = v72;
    std::__split_buffer<md::RoadNameWithRange>::~__split_buffer(&v136);
    v61 = v112;
    goto LABEL_107;
  }

LABEL_144:
}

void std::vector<md::RoadNameWithRange>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        std::__destroy_at[abi:nn200100]<md::RoadNameWithRange,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<md::RoadNameWithRange,0>(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
  }

  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v158 = a2 - 56;
  m = a1;
  while (1)
  {
    a1 = m;
    v9 = a2 - m;
    v10 = 0x6DB6DB6DB6DB6DB7 * ((a2 - m) >> 3);
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return;
    }

    if (v10 == 2)
    {
      v70 = *(a2 - 16);
      v71 = *(a1 + 40);
      if (v70 >= v71 && (v70 != v71 || *(a2 - 12) >= *(a1 + 44)))
      {
        return;
      }

      v69 = a1;
      v68 = a2 - 56;
      goto LABEL_135;
    }

LABEL_9:
    if (v9 <= 1343)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v72 = (a1 + 56);
          if (a1 + 56 != a2)
          {
            v73 = 0;
            v74 = a1;
            do
            {
              v75 = v74;
              v74 = v72;
              v76 = *(v75 + 96);
              v77 = *(v75 + 40);
              if (v76 < v77 || v76 == v77 && *(v75 + 100) < *(v75 + 44))
              {
                LOBYTE(v165) = 0;
                v166 = 0;
                if (*(v75 + 64) == 1)
                {
                  v78 = *v74;
                  *v74 = 0;
                  v165 = v78;
                  v166 = 1;
                }

                LOBYTE(v167) = 0;
                v168 = 0;
                if (*(v75 + 80) == 1)
                {
                  v79 = *(v75 + 72);
                  *(v75 + 72) = 0;
                  v167 = v79;
                  v168 = 1;
                }

                v169 = *(v75 + 88);
                v170 = *(v75 + 104);
                v80 = DWORD2(v169);
                v81 = *(&v169 + 3);
                for (i = v73; ; i -= 56)
                {
                  v83 = a1 + i;
                  std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a1 + i + 56, (a1 + i));
                  v84 = a1 + i + 16;
                  std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v83 + 72, (v83 + 16));
                  *(v83 + 88) = *(v83 + 32);
                  *(v83 + 104) = *(v83 + 48);
                  if (!i)
                  {
                    break;
                  }

                  v85 = *(v83 - 16);
                  if (v80 >= v85)
                  {
                    if (v80 != v85)
                    {
                      v75 = a1 + i;
                      v86 = a1 + i + 32;
                      v84 = a1 + i + 16;
                      goto LABEL_162;
                    }

                    if (v81 >= *(a1 + i - 12))
                    {
                      goto LABEL_161;
                    }
                  }

                  v75 -= 56;
                }

                v75 = a1;
LABEL_161:
                v86 = v83 + 32;
LABEL_162:
                std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v75, &v165);
                std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v84, &v167);
                v87 = v169;
                *(v86 + 16) = v170;
                *v86 = v87;
                if (v168 == 1)
                {
                }

                if (v166 == 1)
                {
                }
              }

              v72 = v74 + 7;
              v73 += 56;
            }

            while (v74 + 7 != a2);
          }
        }
      }

      else if (a1 != a2)
      {
        v143 = a1 + 56;
        if (a1 + 56 != a2)
        {
          v144 = a1 + 88;
          do
          {
            v145 = a1;
            a1 = v143;
            v146 = *(v145 + 96);
            v147 = *(v145 + 40);
            if (v146 < v147 || v146 == v147 && *(v145 + 100) < *(v145 + 44))
            {
              LOBYTE(v165) = 0;
              v166 = 0;
              if (*(v145 + 64) == 1)
              {
                v148 = *a1;
                *a1 = 0;
                v165 = v148;
                v166 = 1;
              }

              LOBYTE(v167) = 0;
              v168 = 0;
              if (*(v145 + 80) == 1)
              {
                v149 = *(v145 + 72);
                *(v145 + 72) = 0;
                v167 = v149;
                v168 = 1;
              }

              v169 = *(v145 + 88);
              v170 = *(v145 + 104);
              v150 = DWORD2(v169);
              v151 = *(&v169 + 3);
              for (j = v144; ; j -= 56)
              {
                v153 = j - 88;
                std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(j - 32, (j - 88));
                v154 = j - 72;
                std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(j - 16, (j - 72));
                *j = *(j - 56);
                *(j + 16) = *(j - 40);
                v155 = *(j - 104);
                if (v150 >= v155 && (v150 != v155 || v151 >= *(j - 100)))
                {
                  break;
                }
              }

              v156 = j - 56;
              std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v153, &v165);
              std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v154, &v167);
              v157 = v169;
              *(v156 + 16) = v170;
              *v156 = v157;
              if (v168 == 1)
              {
              }

              if (v166 == 1)
              {
              }
            }

            v143 = a1 + 56;
            v144 += 56;
          }

          while (a1 + 56 != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v88 = v11 >> 1;
        v89 = v11 >> 1;
        do
        {
          v90 = v89;
          if (v88 >= v89)
          {
            v91 = (2 * v89) | 1;
            v92 = a1 + 56 * v91;
            if (2 * v90 + 2 < v10)
            {
              v93 = *(v92 + 40);
              v94 = *(v92 + 96);
              if (v93 < v94 || v93 == v94 && *(v92 + 44) < *(v92 + 100))
              {
                v92 += 56;
                v91 = 2 * v90 + 2;
              }
            }

            v95 = a1 + 56 * v90;
            v96 = *(v92 + 40);
            v97 = *(v95 + 40);
            if (v96 >= v97 && (v96 != v97 || *(v92 + 44) >= *(v95 + 44)))
            {
              LOBYTE(v165) = 0;
              v166 = 0;
              if (*(v95 + 8) == 1)
              {
                v98 = *v95;
                *v95 = 0;
                v165 = v98;
                v166 = 1;
              }

              LOBYTE(v167) = 0;
              v168 = 0;
              if (*(v95 + 24) == 1)
              {
                v99 = *(v95 + 16);
                *(v95 + 16) = 0;
                v167 = v99;
                v168 = 1;
              }

              v100 = *(v95 + 32);
              v170 = *(v95 + 48);
              v169 = v100;
              v101 = DWORD2(v100);
              v102 = *(&v100 + 3);
              while (1)
              {
                v103 = v92;
                std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v95, v92);
                std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v95 + 16, (v103 + 16));
                v104 = *(v103 + 32);
                *(v95 + 48) = *(v103 + 48);
                *(v95 + 32) = v104;
                if (v88 < v91)
                {
                  break;
                }

                v105 = 2 * v91;
                v91 = (2 * v91) | 1;
                v92 = a1 + 56 * v91;
                v106 = v105 + 2;
                if (v106 < v10)
                {
                  v107 = *(v92 + 40);
                  v108 = *(v92 + 96);
                  if (v107 < v108 || v107 == v108 && *(v92 + 44) < *(v92 + 100))
                  {
                    v92 += 56;
                    v91 = v106;
                  }
                }

                v109 = *(v92 + 40);
                if (v109 < v101)
                {
                  break;
                }

                v95 = v103;
                if (v109 == v101)
                {
                  v95 = v103;
                  if (*(v92 + 44) < v102)
                  {
                    break;
                  }
                }
              }

              std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v103, &v165);
              std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v103 + 16, &v167);
              v110 = v169;
              *(v103 + 48) = v170;
              *(v103 + 32) = v110;
              if (v168 == 1)
              {
              }

              if (v166 == 1)
              {
              }
            }
          }

          v89 = v90 - 1;
        }

        while (v90);
        v111 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 3);
        do
        {
          LOBYTE(v159) = 0;
          v160 = 0;
          if (*(a1 + 8) == 1)
          {
            v112 = *a1;
            *a1 = 0;
            v159 = v112;
            v160 = 1;
          }

          LOBYTE(v161) = 0;
          v162 = 0;
          if (*(a1 + 24) == 1)
          {
            v113 = *(a1 + 16);
            *(a1 + 16) = 0;
            v161 = v113;
            v162 = 1;
          }

          v114 = 0;
          v115 = *(a1 + 32);
          v164 = *(a1 + 48);
          v163 = v115;
          v116 = a1;
          do
          {
            v117 = v116;
            v118 = v116 + 56 * v114;
            v116 = v118 + 56;
            v119 = 2 * v114;
            v114 = (2 * v114) | 1;
            v120 = v119 + 2;
            if (v120 < v111)
            {
              v121 = *(v118 + 96);
              v122 = *(v118 + 152);
              if (v121 < v122 || v121 == v122 && *(v118 + 100) < *(v118 + 156))
              {
                v116 = v118 + 112;
                v114 = v120;
              }
            }

            std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v117, v116);
            std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v117 + 16, (v116 + 16));
            v123 = *(v116 + 32);
            *(v117 + 48) = *(v116 + 48);
            *(v117 + 32) = v123;
          }

          while (v114 <= ((v111 - 2) >> 1));
          v124 = a2 - 56;
          if (v116 == a2 - 56)
          {
            std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v116, &v159);
            std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v116 + 16, &v161);
            v141 = v163;
            *(v116 + 48) = v164;
            *(v116 + 32) = v141;
          }

          else
          {
            std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v116, (a2 - 56));
            std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v116 + 16, (a2 - 40));
            v125 = *(a2 - 24);
            *(v116 + 48) = *(a2 - 8);
            *(v116 + 32) = v125;
            std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a2 - 56, &v159);
            std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a2 - 40, &v161);
            v126 = v163;
            *(a2 - 8) = v164;
            *(a2 - 24) = v126;
            v127 = v116 - a1 + 56;
            if (v127 >= 57)
            {
              v128 = (0x6DB6DB6DB6DB6DB7 * (v127 >> 3) - 2) >> 1;
              v129 = a1 + 56 * v128;
              v130 = *(v129 + 40);
              v131 = *(v116 + 40);
              if (v130 < v131 || v130 == v131 && *(v129 + 44) < *(v116 + 44))
              {
                LOBYTE(v165) = 0;
                v166 = 0;
                if (*(v116 + 8) == 1)
                {
                  v132 = *v116;
                  *v116 = 0;
                  v165 = v132;
                  v166 = 1;
                }

                LOBYTE(v167) = 0;
                v168 = 0;
                if (*(v116 + 24) == 1)
                {
                  v133 = *(v116 + 16);
                  *(v116 + 16) = 0;
                  v167 = v133;
                  v168 = 1;
                }

                v134 = *(v116 + 32);
                v170 = *(v116 + 48);
                v169 = v134;
                v135 = DWORD2(v134);
                v136 = *(&v134 + 3);
                while (1)
                {
                  v137 = v129;
                  std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v116, v129);
                  std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v116 + 16, (v137 + 16));
                  v138 = *(v137 + 32);
                  *(v116 + 48) = *(v137 + 48);
                  *(v116 + 32) = v138;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = a1 + 56 * v128;
                  v139 = *(v129 + 40);
                  v116 = v137;
                  if (v139 >= v135)
                  {
                    if (v139 != v135)
                    {
                      break;
                    }

                    v116 = v137;
                    if (*(v129 + 44) >= v136)
                    {
                      break;
                    }
                  }
                }

                std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v137, &v165);
                std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v137 + 16, &v167);
                v140 = v169;
                *(v137 + 48) = v170;
                *(v137 + 32) = v140;
                if (v168 == 1)
                {
                }

                if (v166 == 1)
                {
                }
              }
            }
          }

          if (v162 == 1)
          {
          }

          if (v160 == 1)
          {
          }

          a2 = v124;
        }

        while (v111-- > 2);
      }

      return;
    }

    v12 = a1 + 56 * (v10 >> 1);
    if (v9 < 0x1C01)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(v12, a1, v158);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(a1, v12, v158);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(a1 + 56, v12 - 56, a2 - 112);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(a1 + 112, v12 + 56, a2 - 168);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(v12 - 56, v12, v12 + 56);
      LOBYTE(v165) = 0;
      v166 = 0;
      if (*(a1 + 8) == 1)
      {
        v13 = *a1;
        *a1 = 0;
        v165 = v13;
        v166 = 1;
      }

      LOBYTE(v167) = 0;
      v168 = 0;
      if (*(a1 + 24) == 1)
      {
        v14 = *(a1 + 16);
        *(a1 + 16) = 0;
        v167 = v14;
        v168 = 1;
      }

      v15 = *(a1 + 32);
      v170 = *(a1 + 48);
      v169 = v15;
      std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a1, v12);
      std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a1 + 16, (v12 + 16));
      v16 = *(v12 + 32);
      *(a1 + 48) = *(v12 + 48);
      *(a1 + 32) = v16;
      std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v12, &v165);
      std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v12 + 16, &v167);
      v17 = v169;
      *(v12 + 48) = v170;
      *(v12 + 32) = v17;
      if (v168 == 1)
      {
      }

      if (v166 == 1)
      {
      }
    }

    --a3;
    if ((a4 & 1) != 0 || (v18 = *(a1 - 16), v19 = *(a1 + 40), v18 < v19) || v18 == v19 && *(a1 - 12) < *(a1 + 44))
    {
      LOBYTE(v165) = 0;
      v166 = 0;
      if (*(a1 + 8) == 1)
      {
        v20 = *a1;
        *a1 = 0;
        v165 = v20;
        v166 = 1;
      }

      LOBYTE(v167) = 0;
      v168 = 0;
      if (*(a1 + 24) == 1)
      {
        v21 = *(a1 + 16);
        *(a1 + 16) = 0;
        v167 = v21;
        v168 = 1;
      }

      v22 = *(a1 + 32);
      v170 = *(a1 + 48);
      v169 = v22;
      v23 = DWORD2(v22);
      v24 = *(&v22 + 3);
      for (k = a1 + 56; ; k += 56)
      {
        v26 = *(k + 40);
        if (v26 >= DWORD2(v22) && (v26 != DWORD2(v22) || *(k + 44) >= *(&v169 + 3)))
        {
          break;
        }
      }

      if (k - 56 == a1)
      {
        v29 = a2;
        if (k < a2)
        {
          v31 = *(a2 - 16);
          v29 = a2 - 56;
          if (v31 >= DWORD2(v22))
          {
            v28 = a2 - 72;
            v29 = a2 - 56;
            while (1)
            {
              v40 = v28 + 16;
              if (v31 == DWORD2(v22))
              {
                if (*(v28 + 60) < *(&v169 + 3) || k >= v40)
                {
                  break;
                }
              }

              else if (k >= v40)
              {
                goto LABEL_39;
              }

              v29 -= 56;
              v42 = *v28;
              v28 -= 56;
              v31 = v42;
              if (v42 < DWORD2(v22))
              {
                goto LABEL_39;
              }
            }
          }
        }
      }

      else
      {
        v27 = *(a2 - 16);
        v28 = a2 - 72;
        v29 = a2 - 56;
        if (v27 >= DWORD2(v22))
        {
          do
          {
            if (v27 == DWORD2(v22) && *(v28 + 60) < *(&v169 + 3))
            {
              break;
            }

            v30 = *v28;
            v28 -= 56;
            v27 = v30;
          }

          while (v30 >= DWORD2(v22));
LABEL_39:
          v29 = v28 + 16;
        }
      }

      m = k;
      if (k < v29)
      {
        v32 = v29;
        m = k;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(m, v32);
          do
          {
            do
            {
              m += 56;
              v33 = *(m + 40);
            }

            while (v33 < v23);
          }

          while (v33 == v23 && *(m + 44) < v24);
          v34 = *(v32 - 16);
          if (v34 >= v23)
          {
            v35 = v32 - 72;
            do
            {
              if (v34 == v23 && *(v35 + 60) < v24)
              {
                break;
              }

              v36 = *v35;
              v35 -= 56;
              v34 = v36;
            }

            while (v36 >= v23);
            v32 = v35 + 16;
          }

          else
          {
            v32 -= 56;
          }
        }

        while (m < v32);
      }

      if (m - 56 != a1)
      {
        std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a1, (m - 56));
        std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a1 + 16, (m - 40));
        v37 = *(m - 24);
        *(a1 + 48) = *(m - 8);
        *(a1 + 32) = v37;
      }

      std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(m - 56, &v165);
      std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(m - 40, &v167);
      v38 = v169;
      *(m - 8) = v170;
      *(m - 24) = v38;
      if (v168 == 1)
      {
      }

      if (v166 == 1)
      {
      }

      if (k < v29)
      {
        goto LABEL_65;
      }

      v39 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *>(a1, m - 56);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *>(m, a2))
      {
        a2 = m - 56;
        if (!v39)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v39)
      {
LABEL_65:
        std::__introsort<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,false>(a1, m - 56, a3, a4 & 1);
        goto LABEL_66;
      }
    }

    else
    {
      LOBYTE(v165) = 0;
      v166 = 0;
      if (*(a1 + 8) == 1)
      {
        v43 = *a1;
        *a1 = 0;
        v165 = v43;
        v166 = 1;
      }

      LOBYTE(v167) = 0;
      v168 = 0;
      if (*(a1 + 24) == 1)
      {
        v44 = *(a1 + 16);
        *(a1 + 16) = 0;
        v167 = v44;
        v168 = 1;
      }

      v45 = *(a1 + 32);
      v170 = *(a1 + 48);
      v169 = v45;
      v46 = DWORD2(v45);
      v47 = *(a2 - 16);
      if (DWORD2(v45) < v47 || DWORD2(v169) == v47 && *(&v169 + 3) < *(a2 - 12))
      {
        v48 = *(a1 + 96);
        if (DWORD2(v45) >= LODWORD(v48))
        {
          v50 = (a1 + 152);
          do
          {
            if (DWORD2(v45) == LODWORD(v48) && *(&v169 + 3) < *(v50 - 13))
            {
              break;
            }

            v51 = *v50;
            v50 += 14;
            v48 = v51;
          }

          while (DWORD2(v45) >= LODWORD(v51));
          m = (v50 - 24);
        }

        else
        {
          m = a1 + 56;
        }
      }

      else
      {
        for (m = a1 + 56; m < a2; m += 56)
        {
          v49 = *(m + 40);
          if (DWORD2(v45) < v49 || DWORD2(v45) == v49 && *(&v169 + 3) < *(m + 44))
          {
            break;
          }
        }
      }

      v52 = a2;
      if (m < a2)
      {
        for (n = a2 - 72; DWORD2(v45) < v47 || DWORD2(v45) == v47 && *(&v169 + 3) < *(n + 60); n -= 56)
        {
          v54 = *n;
          v47 = v54;
        }

        v52 = n + 16;
      }

      if (m < v52)
      {
        v55 = *(&v169 + 3);
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(m, v52);
          v56 = *(m + 96);
          if (v46 >= LODWORD(v56))
          {
            v57 = (m + 152);
            do
            {
              if (v46 == LODWORD(v56) && v55 < *(v57 - 13))
              {
                break;
              }

              v58 = *v57;
              v57 += 14;
              v56 = v58;
            }

            while (v46 >= LODWORD(v58));
            m = (v57 - 24);
          }

          else
          {
            m += 56;
          }

          do
          {
            do
            {
              v52 -= 56;
              v59 = *(v52 + 40);
            }

            while (v46 < v59);
          }

          while (v46 == v59 && v55 < *(v52 + 44));
        }

        while (m < v52);
      }

      if (m - 56 != a1)
      {
        std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a1, (m - 56));
        std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a1 + 16, (m - 40));
        v60 = *(m - 24);
        *(a1 + 48) = *(m - 8);
        *(a1 + 32) = v60;
      }

      std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(m - 56, &v165);
      std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(m - 40, &v167);
      v61 = v169;
      *(m - 8) = v170;
      *(m - 24) = v61;
      if (v168 == 1)
      {
      }

      if (v166 == 1)
      {
      }

LABEL_66:
      a4 = 0;
    }
  }

  if (v10 == 3)
  {

    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(a1, a1 + 56, v158);
    return;
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(a1, a1 + 56, a1 + 112, a1 + 168, v158);
      return;
    }

    goto LABEL_9;
  }

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(a1, a1 + 56, a1 + 112);
  v62 = *(a2 - 16);
  v63 = *(a1 + 152);
  if (v62 < v63 || v62 == v63 && *(a2 - 12) < *(a1 + 156))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a1 + 112, v158);
    v64 = *(a1 + 152);
    v65 = *(a1 + 96);
    if (v64 < v65 || v64 == v65 && *(a1 + 156) < *(a1 + 100))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a1 + 56, a1 + 112);
      v66 = *(a1 + 96);
      v67 = *(a1 + 40);
      if (v66 < v67 || v66 == v67 && *(a1 + 100) < *(a1 + 44))
      {
        v68 = a1 + 56;
        v69 = a1;
LABEL_135:

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(v69, v68);
      }
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::RoadNameWithRange>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<md::RoadNameWithRange>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::__destroy_at[abi:nn200100]<md::RoadNameWithRange,0>(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::RoadNameWithRange>,md::RoadNameWithRange*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = 0;
    do
    {
      v6 = (a3 + v5);
      *v6 = 0;
      v6[8] = 0;
      if (*(a1 + v5 + 8) == 1)
      {
        v7 = *(a1 + v5);
        *(a1 + v5) = 0;
        *(a3 + v5) = v7;
        v6[8] = 1;
      }

      v6[16] = 0;
      v6[24] = 0;
      if (*(a1 + v5 + 24) == 1)
      {
        v8 = *(a1 + v5 + 16);
        *(a1 + v5 + 16) = 0;
        *(v6 + 2) = v8;
        v6[24] = 1;
      }

      v9 = a3 + v5;
      v10 = *(a1 + v5 + 32);
      *(v9 + 48) = *(a1 + v5 + 48);
      *(v9 + 32) = v10;
      v5 += 56;
    }

    while (a1 + v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::RoadNameWithRange,0>(v4);
      v4 += 56;
    }

    while (v4 != a2);
  }
}

void std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a2;
      *a2 = 0;
      v4 = *a1;
      *a1 = v3;
    }
  }

  else if (*(a1 + 8))
  {

    *(a1 + 8) = 0;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *a1 = v5;
    *(a1 + 8) = 1;
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(uint64_t a1, uint64_t a2)
{
  LOBYTE(v8) = 0;
  v9 = 0;
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    *a1 = 0;
    v8 = v4;
    v9 = 1;
  }

  LOBYTE(v10) = 0;
  v11 = 0;
  if (*(a1 + 24) == 1)
  {
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
    v10 = v5;
    v11 = 1;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a1, a2);
  std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a1 + 16, (a2 + 16));
  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a2, &v8);
  std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a2 + 16, &v10);
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  if (v11 == 1)
  {
  }

  if (v9 == 1)
  {
    v7 = v8;
  }
}

float std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 40);
  v7 = *(a1 + 40);
  if (v6 < v7 || v6 == v7 && (result = *(a2 + 44), result < *(a1 + 44)))
  {
    v8 = *(a3 + 40);
    if (v8 >= v6 && (v8 != v6 || *(a3 + 44) >= *(a2 + 44)))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a1, a2);
      v14 = *(a3 + 40);
      v15 = *(a2 + 40);
      if (v14 >= v15)
      {
        if (v14 != v15)
        {
          return result;
        }

        result = *(a3 + 44);
        if (result >= *(a2 + 44))
        {
          return result;
        }
      }

      a1 = a2;
    }

    v13 = a3;
    goto LABEL_14;
  }

  v10 = *(a3 + 40);
  if (v10 < v6 || v10 == v6 && (result = *(a3 + 44), result < *(a2 + 44)))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a2, a3);
    v11 = *(a2 + 40);
    v12 = *(v5 + 40);
    if (v11 < v12 || v11 == v12 && (result = *(a2 + 44), result < *(v5 + 44)))
    {
      a1 = v5;
      v13 = a2;
LABEL_14:

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a1, v13);
    }
  }

  return result;
}

float std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(a1, a2, a3);
  v11 = *(a4 + 40);
  v12 = *(a3 + 40);
  if (v11 < v12 || v11 == v12 && (result = *(a4 + 44), result < *(a3 + 44)))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a3, a4);
    v13 = *(a3 + 40);
    v14 = *(a2 + 40);
    if (v13 < v14 || v13 == v14 && (result = *(a3 + 44), result < *(a2 + 44)))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a2, a3);
      v15 = *(a2 + 40);
      v16 = *(a1 + 40);
      if (v15 < v16 || v15 == v16 && (result = *(a2 + 44), result < *(a1 + 44)))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a1, a2);
      }
    }
  }

  v17 = *(a5 + 40);
  v18 = *(a4 + 40);
  if (v17 < v18 || v17 == v18 && (result = *(a5 + 44), result < *(a4 + 44)))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a4, a5);
    v19 = *(a4 + 40);
    v20 = *(a3 + 40);
    if (v19 < v20 || v19 == v20 && (result = *(a4 + 44), result < *(a3 + 44)))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a3, a4);
      v21 = *(a3 + 40);
      v22 = *(a2 + 40);
      if (v21 < v22 || v21 == v22 && (result = *(a3 + 44), result < *(a2 + 44)))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a2, a3);
        v23 = *(a2 + 40);
        v24 = *(a1 + 40);
        if (v23 < v24 || v23 == v24 && (result = *(a2 + 44), result < *(a1 + 44)))
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a1, a2);
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *>(uint64_t a1, uint64_t a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 16);
        v6 = *(a1 + 40);
        if (v5 >= v6 && (v5 != v6 || *(a2 - 12) >= *(a1 + 44)))
        {
          return 1;
        }

        v7 = a2 - 56;
        goto LABEL_41;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(a1, a1 + 56, a2 - 56);
      return 1;
    case 4:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(a1, a1 + 56, a1 + 112);
      v25 = *(a2 - 16);
      v26 = *(a1 + 152);
      if (v25 >= v26 && (v25 != v26 || *(a2 - 12) >= *(a1 + 156)))
      {
        return 1;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a1 + 112, a2 - 56);
      v27 = *(a1 + 152);
      v28 = *(a1 + 96);
      if (v27 >= v28 && (v27 != v28 || *(a1 + 156) >= *(a1 + 100)))
      {
        return 1;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a1 + 56, a1 + 112);
      v29 = *(a1 + 96);
      v30 = *(a1 + 40);
      if (v29 >= v30 && (v29 != v30 || *(a1 + 100) >= *(a1 + 44)))
      {
        return 1;
      }

      v7 = a1 + 56;
LABEL_41:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadNameWithRange *&,md::RoadNameWithRange *&>(a1, v7);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56);
      return 1;
  }

LABEL_11:
  v8 = a1 + 112;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRouteLine::roadNamesForSection(VKRouteInfo const*,geo::PolylineCoordinate,geo::PolylineCoordinate)::$_0 &,md::RoadNameWithRange *,0>(a1, a1 + 56, a1 + 112);
  v9 = a1 + 168;
  v10 = 1;
  if (a1 + 168 != a2)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(v9 + 40);
      v14 = *(v8 + 40);
      if (v13 < v14 || v13 == v14 && *(v9 + 44) < *(v8 + 44))
      {
        LOBYTE(v32) = 0;
        v33 = 0;
        if (*(v9 + 8) == 1)
        {
          v15 = *v9;
          *v9 = 0;
          v32 = v15;
          v33 = 1;
        }

        LOBYTE(v34) = 0;
        v35 = 0;
        if (*(v9 + 24) == 1)
        {
          v16 = *(v9 + 16);
          *(v9 + 16) = 0;
          v34 = v16;
          v35 = 1;
        }

        v36 = *(v9 + 32);
        v37 = *(v9 + 48);
        v17 = DWORD2(v36);
        v18 = *(&v36 + 3);
        for (i = v11; ; i -= 56)
        {
          v20 = a1 + i;
          std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(a1 + i + 168, (a1 + i + 112));
          v21 = a1 + i + 128;
          std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v20 + 184, (v20 + 128));
          *(v20 + 200) = *(v20 + 144);
          *(v20 + 216) = *(v20 + 160);
          if (i == -112)
          {
            v8 = a1;
LABEL_28:
            v24 = v20 + 144;
            goto LABEL_30;
          }

          v22 = *(v20 + 96);
          if (v17 >= v22)
          {
            if (v17 != v22)
            {
              goto LABEL_28;
            }

            v23 = a1 + i;
            if (v18 >= *(a1 + i + 100))
            {
              break;
            }
          }

          v8 -= 56;
        }

        v8 = v23 + 112;
        v24 = v23 + 144;
        v21 = v23 + 128;
LABEL_30:
        std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v8, &v32);
        std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(v21, &v34);
        *v24 = v36;
        *(v24 + 16) = v37;
        if (v35 == 1)
        {
        }

        if (v33 == 1)
        {
        }

        if (++v12 == 8)
        {
          return v9 + 56 == a2;
        }
      }

      v8 = v9;
      v11 += 56;
      v9 += 56;
      if (v9 == a2)
      {
        return 1;
      }
    }
  }

  return v10;
}

uint64_t std::__function::__func<md::RouteLineSupport::updateRouteLine(VKRouteLine *)::$_0,std::allocator<md::RouteLineSupport::updateRouteLine(VKRouteLine *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A460C8;
  a2[1] = v2;
  return result;
}

void sub_1B3231CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKRouteLineObserverForExternalFeatures;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void getSortedArrayOfRoutes(VKRouteContext *a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v3 = [v43 alternateRoutes];
  v4 = [v3 count];
  v5 = [v43 routeInfo];
  v6 = v5;
  if (v5)
  {
    ++v4;
  }

  a1->super.isa = 0;
  a1->_routeInfo = 0;
  *&a1->_useType = 0;
  if (v4)
  {
    if (v4 >> 61)
    {
      goto LABEL_43;
    }

    v7 = mdm::zone_mallocator::instance(v5);
    v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GEOComposedRoute * {__strong}>(v7, v4);
    a1->super.isa = v8;
    v9 = (v8 + 8 * v4);
    *&a1->_useType = v9;
    bzero(v8, 8 * v4);
    a1->_routeInfo = v9;
  }

  v10 = [v43 routeInfo];

  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = [v43 routeInfo];
  v12 = [v11 route];
  v13 = v12;
  routeInfo = a1->_routeInfo;
  v14 = *&a1->_useType;
  if (routeInfo >= v14)
  {
    v17 = (routeInfo - a1->super.isa) >> 3;
    if (!((v17 + 1) >> 61))
    {
      v18 = v14 - a1->super.isa;
      v19 = v18 >> 2;
      if (v18 >> 2 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      p_inspectedSegmentIndex = &a1->_inspectedSegmentIndex;
      if (v20)
      {
        v21 = mdm::zone_mallocator::instance(v12);
        v22 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GEOComposedRoute * {__strong}>(v21, v20);
      }

      else
      {
        v22 = 0;
      }

      v23 = &v22[8 * v17];
      v48 = v22;
      v49 = v23;
      v51 = &v22[8 * v20];
      *v23 = v13;
      v50 = v23 + 1;
      std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(a1, &v48);
      p_route = a1->_routeInfo;
      std::__split_buffer<GEOComposedRoute * {__strong},geo::allocator_adapter<GEOComposedRoute * {__strong},mdm::zone_mallocator> &>::~__split_buffer(&v48);
      goto LABEL_19;
    }

LABEL_43:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  routeInfo->super.isa = v12;
  p_route = &routeInfo->_route;
LABEL_19:
  a1->_routeInfo = p_route;

LABEL_20:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = [v43 alternateRoutes];
  v25 = [v24 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v25)
  {
    v26 = *v45;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = [*(*(&v44 + 1) + 8 * i) route];
        v29 = v28;
        v31 = a1->_routeInfo;
        v30 = *&a1->_useType;
        if (v31 >= v30)
        {
          v33 = (v31 - a1->super.isa) >> 3;
          if ((v33 + 1) >> 61)
          {
            goto LABEL_43;
          }

          v34 = v30 - a1->super.isa;
          v35 = v34 >> 2;
          if (v34 >> 2 <= (v33 + 1))
          {
            v35 = v33 + 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v36 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v35;
          }

          p_inspectedSegmentIndex = &a1->_inspectedSegmentIndex;
          if (v36)
          {
            v37 = mdm::zone_mallocator::instance(v28);
            v38 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GEOComposedRoute * {__strong}>(v37, v36);
          }

          else
          {
            v38 = 0;
          }

          v39 = &v38[8 * v33];
          v48 = v38;
          v49 = v39;
          v51 = &v38[8 * v36];
          *v39 = v29;
          v50 = v39 + 1;
          std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(a1, &v48);
          v32 = a1->_routeInfo;
          std::__split_buffer<GEOComposedRoute * {__strong},geo::allocator_adapter<GEOComposedRoute * {__strong},mdm::zone_mallocator> &>::~__split_buffer(&v48);
        }

        else
        {
          v31->super.isa = v28;
          v32 = &v31->_route;
        }

        a1->_routeInfo = v32;
      }

      v25 = [v24 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v25);
  }

  v40 = a1->_routeInfo;
  v41 = 126 - 2 * __clz((v40 - a1->super.isa) >> 3);
  if (v40 == a1->super.isa)
  {
    v42 = 0;
  }

  else
  {
    v42 = v41;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,false>(a1->super.isa, v40, v42, 1);
}

void sub_1B32320B8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v18 = v17;

  std::vector<GEOComposedRoute * {__strong},geo::allocator_adapter<GEOComposedRoute * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::vector<GEOComposedRoute * {__strong},geo::allocator_adapter<GEOComposedRoute * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GEOComposedRoute * {__strong}>(v7, v4);
  }
}

void md::RouteLineSupport::resolveCurrentRouteLeg(md::RouteLineSupport *this)
{
  *(this + 31) = 0;
  v1 = *(this + 3);
  if (v1)
  {
    v3 = v1;
    v4 = [v3 routeInfo];
    v6 = [v4 route];

    LODWORD(v3) = *(this + 59);
    if (v3 < [v6 pointCount])
    {
      v5 = [v6 legIndexForStepIndex:{objc_msgSend(v6, "stepIndexForPointIndex:", *(this + 59))}];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(this + 31) = v5;
      }
    }
  }
}

uint64_t std::vector<geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__emplace_back_slow_path<VKRouteLine * {__strong},geo::memory_management_mode const&>(uint64_t *a1, void **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v22 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = 24 * v2;
  geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v6, *a2);
  v21 = (v6 + 24);
  v7 = *a1;
  v8 = a1[1];
  v9 = v6 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v9;
    do
    {
      v12 = geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v11, v10);
      v10 += 24;
      v11 = v12 + 24;
    }

    while (v10 != v8);
    v13 = v7;
    v14 = v7;
    do
    {
      v15 = *v14;
      v14 += 3;
      (*v15)(v7);
      v13 += 3;
      v7 = v14;
    }

    while (v14 != v8);
  }

  v16 = *a1;
  *a1 = v9;
  v17 = a1[2];
  v19 = v21;
  *(a1 + 1) = v21;
  *&v21 = v16;
  *(&v21 + 1) = v17;
  v20[0] = v16;
  v20[1] = v16;
  std::__split_buffer<geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(v20);
  return v19;
}

uint64_t std::vector<geo::_retain_ptr<VKRouteLineObserverForExternalFeatures * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__emplace_back_slow_path<VKRouteLineObserverForExternalFeatures * {__strong},geo::memory_management_mode const&>(uint64_t *a1, id *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v25 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = 24 * v2;
  *(&v24 + 1) = 0;
  v7 = *a2;
  *v6 = &unk_1F2A45FE0;
  *(v6 + 8) = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = 24 * v2 - (v9 - *a1);
  *&v24 = 24 * v2 + 24;
  if (v9 != v8)
  {
    v11 = 24 * v2 - 8 * (v9 - v8);
    v12 = v8;
    v13 = v10;
    v14 = v10;
    do
    {
      *v14 = &unk_1F2A45FE0;
      v14 += 3;
      v13[1] = 0;
      objc_storeStrong(v13 + 1, v12[1]);
      v15 = v12[1];
      v12[1] = 0;

      v12 += 3;
      v11 += 24;
      v13 = v14;
    }

    while (v12 != v9);
    v16 = v8;
    v17 = v8;
    do
    {
      v18 = *v17;
      v17 += 3;
      (*v18)(v8);
      v16 += 3;
      v8 = v17;
    }

    while (v17 != v9);
  }

  v19 = *a1;
  *a1 = v10;
  v20 = a1[2];
  v22 = v24;
  *(a1 + 1) = v24;
  *&v24 = v19;
  *(&v24 + 1) = v20;
  v23[0] = v19;
  v23[1] = v19;
  std::__split_buffer<geo::_retain_ptr<VKRouteLineObserverForExternalFeatures * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(v23);
  return v22;
}

uint64_t std::__split_buffer<geo::_retain_ptr<VKRouteLineObserverForExternalFeatures * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void geo::_retain_ptr<VKRouteLineObserverForExternalFeatures * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A45FE0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKRouteLineObserverForExternalFeatures * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A45FE0;

  return a1;
}

uint64_t std::__split_buffer<geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GEOComposedRoute * {__strong}>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GEOComposedRoute * {__strong}>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x80040B8603338uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<GEOComposedRoute * {__strong},geo::allocator_adapter<GEOComposedRoute * {__strong},mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GEOComposedRoute * {__strong}>(v5, v4);
  }

  return a1;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(void **a1, void **a2, void **a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = *a3;
  if (*a2 >= *a1)
  {
    if (v8 >= v6)
    {
      return;
    }

    *a2 = 0;
    v12 = *a3;
    *a3 = 0;
    v13 = *a2;
    *a2 = v12;

    v14 = *a3;
    *a3 = v6;

    v15 = *a1;
    if (*a2 >= *a1)
    {
      return;
    }

    *a1 = 0;
    v16 = *a2;
    *a2 = 0;
    v17 = *a1;
    *a1 = v16;

    v11 = *a2;
    *a2 = v15;
  }

  else
  {
    *a1 = 0;
    if (v8 >= v6)
    {
      v18 = *a2;
      *a2 = 0;
      v19 = *a1;
      *a1 = v18;

      v20 = *a2;
      *a2 = v7;

      v21 = *a2;
      if (*a3 >= *a2)
      {
        return;
      }

      *a2 = 0;
      v22 = *a3;
      *a3 = 0;
      v23 = *a2;
      *a2 = v22;

      v11 = *a3;
      *a3 = v21;
    }

    else
    {
      v9 = *a3;
      *a3 = 0;
      v10 = *a1;
      *a1 = v9;

      v11 = *a3;
      *a3 = v7;
    }
  }
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(void **a1, void **a2, void **a3, void **a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(a1, a2, a3);
  v8 = *a3;
  if (*a4 < *a3)
  {
    *a3 = 0;
    v9 = *a4;
    *a4 = 0;
    v10 = *a3;
    *a3 = v9;

    v11 = *a4;
    *a4 = v8;

    v12 = *a2;
    if (*a3 < *a2)
    {
      *a2 = 0;
      v13 = *a3;
      *a3 = 0;
      v14 = *a2;
      *a2 = v13;

      v15 = *a3;
      *a3 = v12;

      v16 = *a1;
      if (*a2 < *a1)
      {
        *a1 = 0;
        v17 = *a2;
        *a2 = 0;
        v18 = *a1;
        *a1 = v17;

        v19 = *a2;
        *a2 = v16;
      }
    }
  }
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(void **a1, void **a2, void **a3, void **a4, void **a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(a1, a2, a3, a4);
  v10 = *a4;
  if (*a5 < *a4)
  {
    *a4 = 0;
    v11 = *a5;
    *a5 = 0;
    v12 = *a4;
    *a4 = v11;

    v13 = *a5;
    *a5 = v10;

    v14 = *a3;
    if (*a4 < *a3)
    {
      *a3 = 0;
      v15 = *a4;
      *a4 = 0;
      v16 = *a3;
      *a3 = v15;

      v17 = *a4;
      *a4 = v14;

      v18 = *a2;
      if (*a3 < *a2)
      {
        *a2 = 0;
        v19 = *a3;
        *a3 = 0;
        v20 = *a2;
        *a2 = v19;

        v21 = *a3;
        *a3 = v18;

        v22 = *a1;
        if (*a2 < *a1)
        {
          *a1 = 0;
          v23 = *a2;
          *a2 = 0;
          v24 = *a1;
          *a1 = v23;

          v25 = *a2;
          *a2 = v22;
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*>(void **a1, void **a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *a1;
        if (*(a2 - 1) < *a1)
        {
          *a1 = 0;
          v6 = *(a2 - 1);
          *(a2 - 1) = 0;
          v7 = *a1;
          *a1 = v6;

          v8 = *(a2 - 1);
          *(a2 - 1) = v5;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v9 = (a1 + 2);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(a1, a1 + 1, a1 + 2);
  v10 = (a1 + 3);
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *v10;
    v14 = *v9;
    if (*v10 < *v9)
    {
      *v10 = 0;
      v15 = v11;
      while (1)
      {
        v16 = (a1 + v15);
        v17 = *(a1 + v15 + 24);
        v16[2] = 0;
        v16[3] = v14;

        if (v15 == -16)
        {
          break;
        }

        v14 = v16[1];
        v15 -= 8;
        if (v13 >= v14)
        {
          v18 = (a1 + v15 + 24);
          goto LABEL_19;
        }
      }

      v18 = a1;
LABEL_19:
      v19 = *v18;
      *v18 = v13;

      if (++v12 == 8)
      {
        return v10 + 1 == a2;
      }
    }

    v9 = v10;
    v11 += 8;
    if (++v10 == a2)
    {
      return 1;
    }
  }
}

void md::RouteLineSupport::setRouteUserOffset(md::RouteLineSupport *this, const PolylineCoordinate *a2)
{
  if (a2->index != *(this + 59) || vabds_f32(a2->offset, *(this + 60)) >= 0.00000011921)
  {
    *(this + 236) = *a2;
    md::RouteLineSupport::resolveCurrentRouteLeg(this);
  }
}

void md::RouteLineSupport::generateWaypointFeatures(id *this)
{
  v31[16] = *MEMORY[0x1E69E9840];
  v2 = this[3];
  v30 = 0;
  v28 = v29;
  v29[0] = 0;
  v26 = v2;
  v3 = [v2 routeInfo];
  v27 = v3;
  if (!v3)
  {
    v11 = 0;
    v12 = (this + 9);
    if (!this[9])
    {
      v13 = 0;
      goto LABEL_35;
    }

    v13 = 0;
    goto LABEL_25;
  }

  v4 = this[6];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = this + 6;
  do
  {
    v6 = *(v4 + 4);
    v7 = v6 >= v3;
    v8 = v6 < v3;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 == this + 6 || v3 < v5[4])
  {
LABEL_10:
    v9 = [v26 routeInfo];
    v31[0] = &v27;
    std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::__emplace_unique_key_args<VKRouteInfo * {__strong},std::piecewise_construct_t const&,std::tuple<VKRouteInfo * const {__strong}&>,std::tuple<>>(&v28, v27, v31);
    v10 = v9;
    operator new();
  }

  v31[0] = &v27;
  v23 = std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::__emplace_unique_key_args<VKRouteInfo * {__strong},std::piecewise_construct_t const&,std::tuple<VKRouteInfo * const {__strong}&>,std::tuple<>>(&v28, v3, v31);
  v24 = *(v5 + 5);
  v5[5] = 0;
  v5[6] = 0;
  v25 = v23[6];
  *(v23 + 5) = v24;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__vdeallocate(v23 + 7);
  *(v23 + 7) = *(v5 + 7);
  v23[9] = v5[9];
  v5[7] = 0;
  v5[8] = 0;
  v5[9] = 0;
  std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__vdeallocate(v23 + 11);
  *(v23 + 11) = *(v5 + 11);
  v23[13] = v5[13];
  v5[11] = 0;
  v5[12] = 0;
  v5[13] = 0;
  v31[0] = &v27;
  v14 = std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::__emplace_unique_key_args<VKRouteInfo * {__strong},std::piecewise_construct_t const&,std::tuple<VKRouteInfo * const {__strong}&>,std::tuple<>>(&v28, v27, v31);
  v11 = v14[5];
  v13 = v14[6];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = (this + 9);
  if (this[9] != v11)
  {
    if (v11)
    {
      if (v11[49])
      {
        v15 = v11[48];
        v11[49] = 0;
        if (v15 == 1)
        {
          md::WaypointStore::updateWaypointsForSelection(v11);
        }
      }

      if (v11[48])
      {
        v16 = v11[49];
        v11[48] = 0;
        if (v16 == 1)
        {
          md::WaypointStore::updateWaypointsForSelection(v11);
        }
      }
    }

    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_25:
    v17 = this[10];
    this[9] = v11;
    this[10] = v13;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      v11 = *v12;
    }

    if (v11)
    {
      v18 = *(this + 278);
      if (v11[49] != v18)
      {
        v19 = v11[48];
        v11[49] = v18;
        if (v19 == 1)
        {
          md::WaypointStore::updateWaypointsForSelection(v11);
          v11 = *v12;
        }
      }

      if ((v11[48] & 1) == 0)
      {
        v11[48] = 1;
        if (v11[49] == 1)
        {
          md::WaypointStore::updateWaypointsForSelection(v11);
        }
      }
    }
  }

LABEL_35:
  v20 = (this + 6);
  std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::destroy(this[6]);
  v21 = v29[0];
  this[5] = v28;
  this[6] = v21;
  v22 = v30;
  this[8] = v30;
  if (!v22)
  {
    this[5] = v20;
    if (!v13)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  *(v21 + 2) = v20;
  v28 = v29;
  v29[0] = 0;
  v30 = 0;
  if (v13)
  {
LABEL_37:
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

LABEL_38:

  std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::destroy(v29[0]);
}

void sub_1B3233B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char *a50)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](a24);

  std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::destroy(a50);
  _Unwind_Resume(a1);
}

void md::RouteLineSupport::updateWaypointFeatureIDs(md::RouteLineSupport *this)
{
  std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::clear(this + 120);
  v2 = *(this + 5);
  if (v2 != (this + 48))
  {
    do
    {
      v3 = *(v2 + 7);
      v4 = *(v2 + 8);
      while (v3 != v4)
      {
        v6 = *v3;
        v5 = v3[1];
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (((*(*v6 + 336))(v6) & 1) == 0)
        {
          if ((*(*v6 + 176))(v6))
          {
            v7 = (*(*v6 + 176))(v6);
            LOBYTE(v12) = 4;
            *(&v12 + 1) = v7;
            std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::__emplace_unique_key_args<md::LabelFeatureID,md::LabelFeatureID>(this + 30, 4u, v7, &v12);
          }

          if ((*(*v6 + 168))(v6))
          {
            v8 = (*(*v6 + 168))(v6);
            LOBYTE(v12) = 3;
            *(&v12 + 1) = v8;
            std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::__emplace_unique_key_args<md::LabelFeatureID,md::LabelFeatureID>(this + 30, 3u, v8, &v12);
          }
        }

        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v3 += 2;
      }

      v9 = *(v2 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != (this + 48));
  }

  ++*(this + 64);
}

void sub_1B3233F24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::RouteLineSupport::updateWaypointProximities(id *this)
{
  v58 = *MEMORY[0x1E69E9840];
  if (md::RouteLineSupport::didCurrentWaypointChange(this))
  {
    v2 = this[3];
    v3 = [v2 currentWaypoint];
    v4 = this[33];
    this[33] = v3;

    v5 = this[3];
    *(this + 272) = [v5 currentWaypointProximity];
  }

  v44 = [this[3] routeInfo];
  v6 = *(v43 + 40);
  if (v6 == (v43 + 48))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      if (v6[4] == v44)
      {
        v8 = *(v43 + 264);
        if (*(v43 + 272) == 2)
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v8 = 0;
        v9 = 1;
      }

      v10 = v6[5];
      v47 = v8;
      v11 = *(v10 + 64);
      v12 = 0.0;
      if (!v11)
      {
        goto LABEL_18;
      }

      v13 = v10 + 64;
      do
      {
        v14 = *(v11 + 32);
        v15 = v14 >= v47;
        v16 = v14 < v47;
        if (v15)
        {
          v13 = v11;
        }

        v11 = *(v11 + 8 * v16);
      }

      while (v11);
      if (v13 != v10 + 64 && *(v13 + 32) <= v47)
      {
        v17 = *(v13 + 40);
        v12 = *(v13 + 44);
      }

      else
      {
LABEL_18:
        v17 = 0;
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v18 = [*(v10 + 24) waypoints];
      v45 = v6;
      v46 = v7;
      v19 = [v18 countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v19)
      {
        v20 = *v53;
        do
        {
          v21 = 0;
          do
          {
            if (*v53 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v52 + 1) + 8 * v21);
            v23 = [v22 polylineCoordinate];
            if (v17 <= v23 && (v17 == v23 ? (v24 = v12 <= *(&v23 + 1)) : (v24 = 1), v24))
            {
              v25 = [v22 polylineCoordinate];
              if (v17 == v25 && vabds_f32(*(&v25 + 1), v12) < 0.00000011921)
              {
                v26 = v9;
              }

              else
              {
                v26 = 1;
              }
            }

            else
            {
              v26 = 3;
            }

            if ([v22 when] != v26)
            {
              if (v26 == 3 || [v22 when] == 3)
              {
                *(v10 + 50) = 1;
              }

              [v22 setWhen:v26];
            }

            ++v21;
          }

          while (v19 != v21);
          v27 = [v18 countByEnumeratingWithState:&v52 objects:v57 count:16];
          v19 = v27;
        }

        while (v27);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v28 = [*(v10 + 24) anchorpoints];
      v29 = [v28 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v29)
      {
        v30 = *v49;
        do
        {
          v31 = 0;
          do
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v48 + 1) + 8 * v31);
            v33 = [v32 polylineCoordinate];
            if (v17 <= v33 && (v17 == v33 ? (v34 = v12 <= *(&v33 + 1)) : (v34 = 1), v34))
            {
              v35 = [v32 polylineCoordinate];
              if (v17 == v35 && vabds_f32(*(&v35 + 1), v12) < 0.00000011921)
              {
                v36 = v9;
              }

              else
              {
                v36 = 1;
              }
            }

            else
            {
              v36 = 3;
            }

            if ([v32 when] != v36)
            {
              [v32 setWhen:v36];
              *(v10 + 50) = 1;
            }

            ++v31;
          }

          while (v29 != v31);
          v37 = [v28 countByEnumeratingWithState:&v48 objects:v56 count:16];
          v29 = v37;
        }

        while (v37);
      }

      v38 = v45[1];
      v39 = v45;
      if (v38)
      {
        do
        {
          v40 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v40 = v39[2];
          v41 = *v40 == v39;
          v39 = v40;
        }

        while (!v41);
      }

      v7 = *(v45[5] + 50) | v46;
      v6 = v40;
    }

    while (v40 != (v43 + 48));
  }

  return v7 & 1;
}