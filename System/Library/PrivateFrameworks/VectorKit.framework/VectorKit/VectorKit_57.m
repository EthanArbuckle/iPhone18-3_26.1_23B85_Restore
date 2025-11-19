uint64_t ecs2::addComponent<md::ls::PipelineState>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A17670;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A17670;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A175A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PipelineState>(ecs2::Entity,md::ls::PipelineState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A17670;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t md::LabelLineCollidableItem::collidesWithObject(md::LabelLineCollidableItem *this, const md::CollisionObject *a2)
{
  v2 = a2;
  if (*(this + 216) == 0 || (*(a2 + 200) & *(this + 256)) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 21);
  if (*(this + 28))
  {
    v5 = (this + 56);
    if (v4)
    {
      return md::CollisionObject::circlesCollideWithCircles(v5, a2);
    }

    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if (v4)
  {
    a2 = (this + 56);
    v5 = v2;
    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if ((*(this + 252) & 1) != 0 || *(a2 + 196) == 1)
  {
    return md::CollisionObject::rectsCollideWithRectsOBB((this + 56), a2);
  }

  else
  {
    return md::CollisionObject::rectsCollideWithRects((this + 56), a2);
  }
}

BOOL md::CollisionObject::rectsCollideWithRectsOBB(md::CollisionObject *this, const md::CollisionObject *a2)
{
  v2 = *(a2 + 44);
  if (v2)
  {
    v3 = 0;
    v4 = *(a2 + 2);
    v5 = -*(&v4 + 1);
    LODWORD(v6) = HIDWORD(*(this + 2));
    LODWORD(v7) = *(this + 2);
    v8 = *(a2 + 23);
    v9 = 8 * *(a2 + 199) + 12;
    v10 = 1;
    while (!*(this + 44))
    {
LABEL_13:
      v10 = ++v3 < v2;
      if (v3 == v2)
      {
        return 0;
      }
    }

    v11 = (v8 + 24 * v3);
    v12 = *(this + 23);
    v13 = *v11;
    v14 = v11[1];
    v15 = &v11[2 * *(this + 199)];
    v16 = v15[2];
    v17 = v15[3];
    v18 = fabsf(-(((v17 * v5) * v6) - ((v17 * *&v4) * v7))) + fabsf(-(((v16 * *&v4) * v6) - ((v16 * *(&v4 + 1)) * v7)));
    v19 = (v12 + v9);
    v20 = fabsf(((v16 * *&v4) * v7) + ((v16 * *(&v4 + 1)) * v6)) + fabsf(((v17 * v5) * v7) + ((v17 * *&v4) * v6));
    v21 = *(this + 44);
    while (1)
    {
      v22 = v13 - *v12;
      v23 = v14 - v12[1];
      v24 = *(v19 - 1);
      if (fabsf((v22 * v7) + (v23 * v6)) <= (v20 + v24))
      {
        v25 = *v19;
        if (fabsf(-((v22 * v6) - (v23 * v7))) <= (v18 + *v19))
        {
          if (*(this + 2) == v4)
          {
            break;
          }

          v26 = v24 * v7;
          v27 = v24 * v6;
          v28 = v25 * -v6;
          v29 = v25 * v7;
          v30 = fabsf((v22 * *&v4) + (v23 * *(&v4 + 1)));
          v31 = fabsf(-((v22 * *(&v4 + 1)) - (v23 * *&v4)));
          v32 = (fabsf(-((v26 * *(&v4 + 1)) - (v27 * *&v4))) + v17) + fabsf(-((v28 * *(&v4 + 1)) - (v29 * *&v4)));
          if (v30 <= ((fabsf((v26 * *&v4) + (v27 * *(&v4 + 1))) + v16) + fabsf((v28 * *&v4) + (v29 * *(&v4 + 1)))) && v31 <= v32)
          {
            break;
          }
        }
      }

      v19 += 6;
      v12 += 6;
      if (!--v21)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    return 0;
  }

  return v10;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PipelineState>(ecs2::Entity,md::ls::PipelineState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineState>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineState>();
    unk_1EB83D920 = 0xB160D04D0F4A35A4;
    qword_1EB83D928 = "md::ls::PipelineState]";
    qword_1EB83D930 = 21;
  }
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 8);
    if ((result + 8) != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = *v6;
        result = v6[1];
        v6 = v4;
        if (result != v7)
        {
          result = (*(*result + 80))(result);
          if (result)
          {
            v8 = *v6;
            v9 = v5;
            while (1)
            {
              v10 = v9;
              v11 = (v3 + v9);
              v11[1] = *v11;
              if (!v10)
              {
                break;
              }

              if (v8 != *(v11 - 1))
              {
                result = (*(*v8 + 80))(v8);
                v9 = v10 - 8;
                if (result)
                {
                  continue;
                }
              }

              v12 = (v3 + v10);
              goto LABEL_12;
            }

            v12 = v3;
LABEL_12:
            *v12 = v8;
          }
        }

        v4 = v6 + 1;
        v5 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__function::__func<md::ita::MarkPipelineDataRequirements::operator()(ecs2::Query<md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::MarkPipelineDataRequirements::operator()(ecs2::Query<md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v84 = *MEMORY[0x1E69E9840];
  Pipeline = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a6);
  PipelineDataSet = md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a6);
  v10 = ecs2::ExecutionTaskContext::currentEntity(PipelineDataSet);
  v74[0] = 0;
  v75 = -1;
  v11 = gdc::typeIndex<DaVinci::AmbientTexture>();
  if (md::requiredTextureForPipeline(v11, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12428;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12428;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v12 = gdc::typeIndex<DaVinci::AridityTexture>();
  if (md::requiredTextureForPipeline(v12, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12520;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12520;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v13 = gdc::typeIndex<DaVinci::DiffuseTexture>();
  if (md::requiredTextureForPipeline(v13, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A125F0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A125F0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v14 = gdc::typeIndex<DaVinci::EmissiveTexture>();
  if (md::requiredTextureForPipeline(v14, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A126C0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A126C0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v15 = gdc::typeIndex<DaVinci::Gradient1Texture>();
  if (md::requiredTextureForPipeline(v15, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12790;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12790;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v16 = gdc::typeIndex<DaVinci::Gradient2Texture>();
  if (md::requiredTextureForPipeline(v16, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12860;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12860;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v17 = gdc::typeIndex<DaVinci::OcclusionTexture>();
  if (md::requiredTextureForPipeline(v17, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12930;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12930;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v18 = gdc::typeIndex<DaVinci::OverlayTexture>();
  if (md::requiredTextureForPipeline(v18, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12A00;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12A00;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v19 = gdc::typeIndex<DaVinci::RouteMaskTexture>();
  if (md::requiredTextureForPipeline(v19, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12AD0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12AD0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v20 = gdc::typeIndex<DaVinci::ShadowTexture>();
  if (md::requiredTextureForPipeline(v20, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12BA0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12BA0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v21 = gdc::typeIndex<DaVinci::StyleIndexTexture>();
  if (md::requiredTextureForPipeline(v21, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12C70;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12C70;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v22 = gdc::typeIndex<DaVinci::StyleTexture>();
  if (md::requiredTextureForPipeline(v22, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12D40;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12D40;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v23 = gdc::typeIndex<DaVinci::TemperatureTexture>();
  if (md::requiredTextureForPipeline(v23, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12E10;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12E10;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v24 = gdc::typeIndex<DaVinci::TexTexture>();
  if (md::requiredTextureForPipeline(v24, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12EE0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12EE0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v25 = gdc::typeIndex<Flyover::AtmosphereTexture>();
  if (md::requiredTextureForPipeline(v25, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12FB0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12FB0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v26 = gdc::typeIndex<Flyover::DiffuseTexture>();
  if (md::requiredTextureForPipeline(v26, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13080;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13080;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v27 = gdc::typeIndex<Flyover::NightTexture>();
  v28 = md::requiredTextureForPipeline(v27, Pipeline, PipelineDataSet, v74);
  if (v28)
  {
    v77 = &unk_1F2A13150;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13150;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    v28 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v29 = ecs2::ExecutionTaskContext::currentEntity(v28);
  v74[0] = 0;
  v75 = -1;
  v30 = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>();
  if (md::requiredDeviceDataForPipeline(v30, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13220;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v29 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13220;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v31 = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>();
  if (md::requiredDeviceDataForPipeline(v31, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A132F0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v29 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A132F0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v32 = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>();
  if (md::requiredDeviceDataForPipeline(v32, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A133C0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v29 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A133C0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v33 = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>();
  v34 = md::requiredDeviceDataForPipeline(v33, Pipeline, PipelineDataSet, v74);
  if (v34)
  {
    v77 = &unk_1F2A13490;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v29 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13490;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    v34 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v35 = ecs2::ExecutionTaskContext::currentEntity(v34);
  v74[0] = 0;
  v75 = -1;
  v36 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>();
  if (md::requiredDataForPipeline(v36, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13560;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13560;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v37 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>();
  if (md::requiredDataForPipeline(v37, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13630;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13630;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v38 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>();
  if (md::requiredDataForPipeline(v38, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13700;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13700;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v39 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>();
  if (md::requiredDataForPipeline(v39, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A137D0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A137D0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v40 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>();
  if (md::requiredDataForPipeline(v40, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A138A0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A138A0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v41 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>();
  if (md::requiredDataForPipeline(v41, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13970;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13970;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v42 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>();
  if (md::requiredDataForPipeline(v42, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13A40;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13A40;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v43 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>();
  if (md::requiredDataForPipeline(v43, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13B10;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13B10;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v44 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>();
  if (md::requiredDataForPipeline(v44, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13BE0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13BE0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v45 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>();
  if (md::requiredDataForPipeline(v45, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13CB0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13CB0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v46 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>();
  if (md::requiredDataForPipeline(v46, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13D80;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13D80;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v47 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>();
  if (md::requiredDataForPipeline(v47, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13E50;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13E50;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v48 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>();
  if (md::requiredDataForPipeline(v48, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13F20;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13F20;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v49 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Style>>();
  if (md::requiredDataForPipeline(v49, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13FF0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13FF0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v50 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>();
  if (md::requiredDataForPipeline(v50, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A140C0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A140C0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v51 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>();
  if (md::requiredDataForPipeline(v51, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14190;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14190;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v52 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>();
  if (md::requiredDataForPipeline(v52, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14260;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14260;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v53 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>();
  if (md::requiredDataForPipeline(v53, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14330;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14330;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v54 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>();
  if (md::requiredDataForPipeline(v54, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14400;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14400;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v55 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>();
  if (md::requiredDataForPipeline(v55, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A144D0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A144D0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v56 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>();
  if (md::requiredDataForPipeline(v56, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A145A0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A145A0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v57 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>();
  if (md::requiredDataForPipeline(v57, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14670;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14670;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v58 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>();
  if (md::requiredDataForPipeline(v58, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14740;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14740;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v59 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>();
  if (md::requiredDataForPipeline(v59, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14810;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14810;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v60 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>();
  if (md::requiredDataForPipeline(v60, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A148E0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A148E0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v61 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Clipping>>();
  if (md::requiredDataForPipeline(v61, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A149B0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A149B0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v62 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>();
  if (md::requiredDataForPipeline(v62, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14A80;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14A80;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v63 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>();
  if (md::requiredDataForPipeline(v63, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14B50;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14B50;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v64 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Transform>>();
  if (md::requiredDataForPipeline(v64, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14C20;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14C20;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v65 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::View>>();
  if (md::requiredDataForPipeline(v65, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14CF0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14CF0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v66 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>();
  if (md::requiredDataForPipeline(v66, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14DC0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14DC0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v67 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>();
  if (md::requiredDataForPipeline(v67, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14E90;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14E90;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v68 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>();
  if (md::requiredDataForPipeline(v68, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14F60;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14F60;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v69 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>();
  if (md::requiredDataForPipeline(v69, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A15030;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A15030;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v70 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>();
  if (md::requiredDataForPipeline(v70, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A15100;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A15100;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v71 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>();
  if (md::requiredDataForPipeline(v71, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A151D0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A151D0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v72 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>();
  result = md::requiredDataForPipeline(v72, Pipeline, PipelineDataSet, v74);
  if (result)
  {
    v77 = &unk_1F2A152A0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A152A0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  return result;
}

uint64_t gdc::typeIndex<DaVinci::AmbientTexture>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::AmbientTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[484];
}

uint64_t md::requiredTextureForPipeline(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a3, a1))
  {
    {
      if (v13)
      {
        md::typeToIntMap(v13);
        md::requiredTextureForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap = &md::typeToIntMap(void)::typeToIntMap;
      }
    }

    v7 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(md::requiredTextureForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap, a1);
    if (!v7)
    {
      abort();
    }

    v8 = *(v7 + 6);
    v9 = *(v7 + 7);
    if (v8 != -1)
    {
      *a4 = ggl::PipelineSetup::canSetTextureV(*(a2 + 16), v8, (a4 + 4));
    }

    if (v9 == -1)
    {
      canSetTextureF = *(a4 + 1);
    }

    else
    {
      canSetTextureF = ggl::PipelineSetup::canSetTextureF(*(a2 + 16), v9, (a4 + 8));
      *(a4 + 1) = canSetTextureF;
    }

    v11 = *a4 | canSetTextureF;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

BOOL ggl::PipelineSetup::canSetTextureF(ggl::PipelineSetup *this, uint64_t a2, int *a3)
{
  if (this && (v3 = *(*(*(this + 6) + 72) + 24), (v4 = *(v3 + 72)) != 0))
  {
    v5 = *(v3 + 64);
    while (v5[1] != a2)
    {
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_6:
    v6 = -1;
  }

  *a3 = v6;
  return v6 >= 0;
}

BOOL ggl::PipelineSetup::canSetTextureV(ggl::PipelineSetup *this, uint64_t a2, int *a3)
{
  if (this && (v3 = *(*(*(this + 6) + 72) + 8), (v4 = *(v3 + 72)) != 0))
  {
    v5 = *(v3 + 64);
    while (v5[1] != a2)
    {
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_6:
    v6 = -1;
  }

  *a3 = v6;
  return v6 >= 0;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12428;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::CompositeLabeler::updateOcclusionQueries(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 136))(v3);
  }

  return this;
}

void md::MapNavLabeler::updateOcclusionQueries(id *this)
{
  if ((*(*this + 45))(this))
  {
    v2 = [this[7] activeSigns];
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        v5 = *v3;
        if (*(*v3 + 24) == 1 && (*(v5 + 26) & 1) == 0)
        {
          v6 = *(this[3] + 45);
          v7 = *(v5 + 8);
          if (!v7)
          {
            std::allocate_shared[abi:nn200100]<md::OcclusionQuery,std::allocator<md::OcclusionQuery>,md::LabelType,md::LabelFeatureType,0>();
          }

          v8 = atomic_load((v7 + 286));
          if (v8)
          {
            *(v5 + 24) = 0;
            *(v5 + 26) = 1;
            md::OcclusionTest::setupAntennaeTest(**(v5 + 8), v5 + 328, 0);
            md::OcclusionManager::addQuery(v6, (v5 + 8));
          }
        }

        v3 += 2;
      }

      while (v3 != v4);
    }
  }
}

uint64_t gdc::typeIndex<DaVinci::AridityTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::AridityTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[116];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12520;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::MapStandardLabeler::updateOcclusionQueries(md::MapStandardLabeler *this)
{
  v31 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v32 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v2 = *(this + 3);
  v3 = *(v2 + 424);
  v4 = *(v3 + 1232);
  _ZF = *(v2 + 3376) != 1 || v4 == 0;
  if (_ZF || (v6 = *(v4 + 272)) == 0)
  {
    v17 = 0;
  }

  else
  {
    v7.f64[0] = geo::ConvexHull2<double>::boundingBox(*(v6 + 64), *(v6 + 72));
    v9.f64[1] = v8;
    v7.f64[1] = v10;
    v11 = vsubq_f64(v9, v7);
    v12 = vmulq_f64(vmaxnmq_f64(v11, 0), vdupq_n_s64(0x3FF3333340000000uLL));
    __asm { FMOV            V3.2D, #0.5 }

    v31 = vmlaq_f64(v7, _Q3, vsubq_f64(v11, v12));
    v32 = vaddq_f64(v31, v12);
    v17 = 1;
  }

  v18 = *(this + 9);
  v19 = *(this + 10);
  if (v18 != v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = *(v3 + 424);
    while (1)
    {
      v23 = *v18;
      if (*(*v18 + 482) == 1)
      {
        v24 = *(v23 + 1298);
        if (!*(v23 + 1298))
        {
          goto LABEL_23;
        }

        if (v24 == 1)
        {
          if (v17 && *(v23 + 1290) - 2 <= 7)
          {
            v25 = 0;
            v26 = *(v23 + 616);
            v27 = &v31;
            v28 = 1;
            while (v26 >= v27->f64[0] && v26 < v32.f64[v25])
            {
              v29 = v28;
              v28 = 0;
              v26 = *(v23 + 624);
              v27 = &v31.f64[1];
              v25 = 1;
              if ((v29 & 1) == 0)
              {
                v24 = 2;
                goto LABEL_22;
              }
            }
          }

          if (v22 <= 15.0)
          {
LABEL_23:
            *(v23 + 485) = 2;
            *(v23 + 480) = 0;
            *(v23 + 482) = 0;
            v21 = 1;
            *(v23 + 1372) = 0;
            goto LABEL_24;
          }

          v24 = 1;
        }

LABEL_22:
        md::Label::submitOcclusionQuery(v23, *(*(this + 3) + 360), *(*(this + 3) + 424), v24);
        v20 = 1;
      }

LABEL_24:
      v18 += 2;
      if (v18 == v19)
      {
        if (!(v20 & 1 | ((v21 & 1) == 0)))
        {
          v30 = *(this + 3);
          *(v30 + 3038) = 1;
          *(v30 + 3040) = 1;

          md::LabelManager::setNeedsLayout(v30, 1);
        }

        return;
      }
    }
  }
}

void md::Label::submitOcclusionQuery(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(a1 + 483) & 1) == 0)
  {
    v6 = (a1 + 456);
    v7 = *(a1 + 456);
    if (!v7)
    {
      v39[0] = *(a1 + 1290);
      v39[15] = *(a1 + 1291);
      std::allocate_shared[abi:nn200100]<md::OcclusionQuery,std::allocator<md::OcclusionQuery>,md::LabelType,md::LabelFeatureType,0>();
    }

    v8 = atomic_load((v7 + 286));
    if (v8)
    {
      *(a1 + 480) = 0;
      *(a1 + 483) = 1;
      *(a1 + 484) = *(a1 + 1372);
      if (a4 <= 1)
      {
        if (!a4)
        {
          return;
        }

        if (a4 == 1)
        {
          md::OcclusionTest::setupAntennaeTest(**(a1 + 456), a1 + 616, *(a1 + 257));
        }

        goto LABEL_36;
      }

      switch(a4)
      {
        case 2:
          v33 = *(a1 + 264);
          if (!v33)
          {
            v33 = *(a1 + 272);
          }

          (*(*v33 + 888))(v33, *v6, a3);
          goto LABEL_36;
        case 3:
          if ((*(a1 + 164) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:nn200100]();
            gdc::typeIndex<DaVinci::DiffuseTexture>();
            return;
          }

          v34 = **(a1 + 456);
          *v34 = 3;
          geo::small_vector_base<gm::Matrix<double,3,1>>::resize((v34 + 80));
          v35 = 0;
          v36 = *(v34 + 80);
          do
          {
            *(v36 + v35) = *(a1 + 616 + v35);
            v35 += 8;
          }

          while (v35 != 24);
          for (i = 0; i != 12; i += 4)
          {
            *(v34 + 184 + i) = *(a1 + 152 + i);
          }

          *(v34 + 196) = 1088421888;
          v31 = v34 + 8;
          v32 = 1;
          break;
        case 4:
          v9 = *(a1 + 264);
          if (!v9)
          {
            v9 = *(a1 + 272);
          }

          v10 = (*(*v9 + 256))(v9);
          v11.i64[0] = *(a1 + 688);
          v12 = gm::Box<float,2>::operator-(v10, v11);
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = 20.0;
          if ((*(**(a1 + 8) + 72))(*(a1 + 8)) || (v19 = 30.0, (*(**(a1 + 8) + 352))(*(a1 + 8))))
          {
            v20 = *(a1 + 780);
            if (v20 != 0.0)
            {
              v19 = v20 * 0.5;
            }
          }

          v21 = **(a1 + 456);
          v22 = a1 + 616;
          v23 = gm::Matrix<double,3,1>::normalized<int,void>(v22);
          v24 = 0;
          *v38 = v23;
          v38[1] = v25;
          v38[2] = v26;
          do
          {
            v27 = *&v38[v24];
            *&v39[4 * v24++] = v27;
          }

          while (v24 != 3);
          *v21 = 4;
          *(v21 + 237) = 1;
          geo::small_vector_base<gm::Matrix<double,3,1>>::resize((v21 + 80));
          v28 = 0;
          v29 = *(v21 + 80);
          do
          {
            *(v29 + v28) = *(v22 + v28);
            v28 += 8;
          }

          while (v28 != 24);
          for (j = 0; j != 12; j += 4)
          {
            *(v21 + 184 + j) = *&v39[j];
          }

          *(v21 + 196) = v19;
          *(v21 + 200) = v12;
          *(v21 + 204) = v14;
          *(v21 + 208) = v16;
          *(v21 + 212) = v18;
          *(v21 + 239) = 4;
          v31 = v21 + 8;
          v32 = 5;
          break;
        default:
LABEL_36:

          md::OcclusionManager::addQuery(a2, v6);
          return;
      }

      geo::small_vector_base<md::OcclusionProbe>::resize(v31, v32);
      goto LABEL_36;
    }
  }
}

uint64_t gdc::typeIndex<DaVinci::DiffuseTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::DiffuseTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[114];
}

uint64_t gdc::typeIndex<DaVinci::EmissiveTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::EmissiveTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[110];
}

void md::OcclusionTest::setupAntennaeTest(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = 1;
  geo::small_vector_base<gm::Matrix<double,3,1>>::resize((a1 + 80));
  v6 = 0;
  v7 = *(a1 + 80);
  do
  {
    *(v7 + v6) = *(a2 + v6);
    v6 += 8;
  }

  while (v6 != 24);
  geo::small_vector_base<md::OcclusionProbe>::resize(a1 + 8, 1uLL);
  *(a1 + 232) = 1065353216;
  *(a1 + 236) = a3;
}

void geo::small_vector_base<gm::Matrix<double,3,1>>::resize(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3) > 1)
  {
    goto LABEL_2;
  }

  if (v3 == v2)
  {
    if (!a1[3])
    {
      geo::small_vector_base<gm::Matrix<double,3,1>>::grow(a1, 1uLL);
      v2 = *a1;
    }

LABEL_2:
    a1[1] = v2 + 24;
  }
}

void md::OcclusionManager::addQuery(uint64_t a1, __int128 *a2)
{
  v2 = **a2;
  v3 = *(*a2 + 8);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v4 += (*(v2 + 16) - *(v2 + 8)) >> 3;
      v2 += 248;
    }

    while (v2 != v3);
    if (v4)
    {
      v5 = atomic_load((*a2 + 286));
      if (v5)
      {
        v6 = *a2;
        if (!*(*a2 + 282))
        {
          *(v6 + 282) = 1;
          atomic_store(0, v6 + 286);
          *(*a2 + 285) = 0;
          std::vector<std::shared_ptr<md::OcclusionQuery>,geo::allocator_adapter<std::shared_ptr<md::OcclusionQuery>,mdm::zone_mallocator>>::emplace_back<std::shared_ptr<md::OcclusionQuery> const&>((a1 + 16), a2);
        }
      }
    }
  }
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A126C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::vector<std::shared_ptr<md::OcclusionQuery>,geo::allocator_adapter<std::shared_ptr<md::OcclusionQuery>,mdm::zone_mallocator>>::emplace_back<std::shared_ptr<md::OcclusionQuery> const&>(mdm::zone_mallocator *a1, __int128 *a2)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(a1);
      v13 = pthread_rwlock_rdlock((v12 + 32));
      if (v13)
      {
        geo::read_write_lock::logFailure(v13, "read lock", v14);
      }

      v15 = malloc_type_zone_malloc(*v12, 16 * v11, 0x20040A4A59CD2uLL);
      atomic_fetch_add((v12 + 24), 1u);
      geo::read_write_lock::unlock((v12 + 32));
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[16 * v8];
    v17 = *a2;
    *v16 = *a2;
    if (*(&v17 + 1))
    {
      atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v18 = &v15[16 * v11];
    v7 = v16 + 16;
    v19 = *(a1 + 1) - *a1;
    v20 = &v16[-v19];
    v21 = memcpy(&v16[-v19], *a1, v19);
    v22 = *a1;
    *a1 = v20;
    *(a1 + 1) = v7;
    *(a1 + 2) = v18;
    if (v22)
    {
      v23 = mdm::zone_mallocator::instance(v21);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::OcclusionQuery>>(v23, v22);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 1) = v7;
}

uint64_t gdc::typeIndex<DaVinci::Gradient1Texture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::Gradient1Texture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[108];
}

void geo::small_vector_base<md::OcclusionProbe>::resize(uint64_t a1, unint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = &v4[-*a1];
  if (v6 >> 3 <= a2)
  {
    if (v6 >> 3 >= a2)
    {
      return;
    }

    v8 = *(a1 + 24);
    if (v8 >= a2)
    {
      v13 = *a1;
    }

    else
    {
      v9 = *(a1 + 16);
      v10 = (1 << -__clz(v8 + 1));
      if (v8 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v10 = 1;
      }

      if (v10 <= a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = v10;
      }

      v12 = malloc_type_malloc(8 * v11, 0x100004090D0E795uLL);
      v13 = v12;
      v14 = *a1;
      v15 = *(a1 + 8);
      if (*a1 != v15)
      {
        v16 = v12;
        do
        {
          v17 = *v14++;
          *v16++ = v17;
        }

        while (v14 != v15);
      }

      if (v5 != v9)
      {
        free(*a1);
      }

      *a1 = v13;
      v4 = v13 + v6;
      *(a1 + 24) = v11;
    }

    v7 = &v13[a2];
    if (v4 != v7)
    {
      v18 = 0;
      v19 = (v7 - v4 - 8) >> 3;
      v20 = vdupq_n_s64(v19);
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(vdupq_n_s64(v18), xmmword_1B33B0560)));
        if (v21.i8[0])
        {
          *&v4[8 * v18] = 0xFFFFFFFFLL;
        }

        if (v21.i8[4])
        {
          *&v4[8 * v18 + 8] = 0xFFFFFFFFLL;
        }

        v18 += 2;
      }

      while (((v19 + 2) & 0x3FFFFFFFFFFFFFFELL) != v18);
    }
  }

  else
  {
    v7 = &v5[a2];
  }

  *(a1 + 8) = v7;
}

uint64_t ggl::DaVinci::GroundDepthPipelineSetup::deviceDataIsEnabled(ggl::DaVinci::GroundDepthPipelineSetup *this, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = *(*(this + 2) + 316);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12790;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t ggl::DaVinci::GroundDepthPipelineSetup::constantDataIsEnabled(ggl::DaVinci::GroundDepthPipelineSetup *this, unint64_t a2)
{
  if (a2 < 2)
  {
    v2 = 1;
  }

  else if (a2 == 3)
  {
    v2 = *(*(this + 2) + 336);
  }

  else if (a2 == 2)
  {
    v2 = *(*(this + 2) + 335);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t gdc::typeIndex<DaVinci::Gradient2Texture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::Gradient2Texture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[106];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12860;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::OcclusionTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::OcclusionTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[104];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12930;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::OverlayTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::OverlayTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[112];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12A00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::RouteMaskTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::RouteMaskTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[102];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12AD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::ShadowTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::ShadowTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[118];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12BA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::StyleIndexTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::StyleIndexTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[100];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12C70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::StyleTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::StyleTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[120];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12D40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::TemperatureTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::TemperatureTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[98];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12E10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::TexTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::TexTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[122];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12EE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<Flyover::AtmosphereTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<Flyover::AtmosphereTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[92];
}

uint64_t gdc::typeIndex<Flyover::DiffuseTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<Flyover::DiffuseTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[94];
}

uint64_t gdc::typeIndex<Flyover::NightTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<Flyover::NightTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[96];
}

uint64_t md::requiredDeviceDataForPipeline(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a3, a1))
  {
    {
      if (v13)
      {
        md::typeToIntMap(v13);
        md::requiredDeviceDataForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap = &md::typeToIntMap(void)::typeToIntMap;
      }
    }

    v7 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(md::requiredDeviceDataForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap, a1);
    if (!v7)
    {
      abort();
    }

    v8 = *(v7 + 6);
    v9 = *(v7 + 7);
    if (v8 != -1)
    {
      *a4 = ggl::PipelineSetup::canSetDeviceV(*(a2 + 16), v8, (a4 + 4));
    }

    if (v9 == -1)
    {
      canSetDeviceF = *(a4 + 1);
    }

    else
    {
      canSetDeviceF = ggl::PipelineSetup::canSetDeviceF(*(a2 + 16), v9, (a4 + 8));
      *(a4 + 1) = canSetDeviceF;
    }

    v11 = *a4 | canSetDeviceF;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[194];
}

BOOL ggl::PipelineSetup::canSetDeviceV(ggl::PipelineSetup *this, uint64_t a2, int *a3)
{
  if (this && (v3 = *(*(*(this + 6) + 72) + 8), (v4 = *(v3 + 56)) != 0))
  {
    v5 = *(v3 + 48);
    while (v5[1] != a2)
    {
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_6:
    v6 = -1;
  }

  *a3 = v6;
  return v6 >= 0;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13220;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[196];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A132F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[190];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A133C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[192];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13490;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::requiredDataForPipeline(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a3, a1))
  {
    {
      if (v13)
      {
        md::typeToIntMap(v13);
        md::requiredDataForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap = &md::typeToIntMap(void)::typeToIntMap;
      }
    }

    v7 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(md::requiredDataForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap, a1);
    if (!v7)
    {
      abort();
    }

    v8 = *(v7 + 6);
    v9 = *(v7 + 7);
    if (v8 != -1)
    {
      *a4 = ggl::PipelineSetup::canSetConstantV(*(a2 + 16), v8, (a4 + 4));
    }

    if (v9 == -1)
    {
      canSetConstantF = *(a4 + 1);
    }

    else
    {
      canSetConstantF = ggl::PipelineSetup::canSetConstantF(*(a2 + 16), v9, (a4 + 8));
      *(a4 + 1) = canSetConstantF;
    }

    v11 = *a4 | canSetConstantF;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[128];
}

BOOL ggl::PipelineSetup::canSetConstantF(ggl::PipelineSetup *this, uint64_t a2, int *a3)
{
  if (this && (v3 = *(*(*(this + 6) + 72) + 24), (v4 = *(v3 + 40)) != 0))
  {
    v5 = *(v3 + 32);
    while (v5[1] != a2)
    {
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_6:
    v6 = -1;
  }

  *a3 = v6;
  return v6 >= 0;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13560;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[138];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13630;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[160];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13700;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[148];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A137D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[156];
}

BOOL ggl::PipelineSetup::canSetConstantV(ggl::PipelineSetup *this, uint64_t a2, int *a3)
{
  if (this && (v3 = *(*(*(this + 6) + 72) + 8), (v4 = *(v3 + 40)) != 0))
  {
    v5 = *(v3 + 32);
    while (v5[1] != a2)
    {
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_6:
    v6 = -1;
  }

  *a3 = v6;
  return v6 >= 0;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A138A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[164];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13970;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[154];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13A40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[162];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13B10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[152];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13BE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[132];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13CB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[170];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13D80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[142];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13E50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[168];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13F20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Style>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Style>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[134];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13FF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[146];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A140C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::minVisibility(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 264))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 264))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  if (v7 < v5)
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[140];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14190;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[144];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14260;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[166];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14330;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[130];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14400;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t md::MaterialResourceStore::createMaterialHandle(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v85 = a2;
  *&v86 = a3;
  v6 = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>((a1 + 368), &v85);
  if (v6)
  {
    v7 = v6[4];
    if (v7)
    {
      return v7;
    }
  }

  v86 = 0uLL;
  v85 = a2;
  v87 = 0;
  v8 = *(a1 + 248);
  v9 = *(a1 + 232);
  if (*(a1 + 224) == v9)
  {
    v7 = ((*(a1 + 256) - v8) >> 3) | 0x100000000;
    v88 = v7;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 248, &v88);
  }

  else
  {
    v7 = *(v8 + 8 * *(v9 - 8));
    *(a1 + 232) = v9 - 8;
  }

  v88 = v7;
  v10 = v7 >> 6;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  if (v10 >= (v12 - v11) >> 3)
  {
    v13 = v10 + 1;
    v14 = v10 + 1 - ((v12 - v11) >> 3);
    v15 = *(a1 + 40);
    if (v14 > (v15 - v12) >> 3)
    {
      v16 = v15 - v11;
      if (v16 >> 2 > v13)
      {
        v13 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v13;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v17);
    }

    bzero(*(a1 + 32), 8 * v14);
    *(a1 + 32) = v12 + 8 * v14;
    v11 = *(a1 + 24);
  }

  v18 = *(v11 + 8 * v10);
  if (!v18)
  {
    operator new();
  }

  v19 = (v18 + 16 * (v7 & 0x3F));
  if (*v19 == -1 && v19[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 48, &v88);
    v21 = ((*(a1 + 56) - *(a1 + 48)) >> 3) - 1;
    *v19 = HIDWORD(v7);
    v19[1] = v21;
    v22 = v21 & 0x3F;
    v23 = (*(*(a1 + 72) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 72), v21)) + 24 * v22);
    *v23 = vdupq_n_s64(1uLL);
    v23[1].i16[0] = 1;
    v24 = v21 >> 6;
    v26 = *(a1 + 120);
    v25 = *(a1 + 128);
    v84 = v21 >> 6;
    if (v21 >> 6 >= (v25 - v26) >> 3)
    {
      v27 = v24 + 1;
      v28 = v24 + 1 - ((v25 - v26) >> 3);
      v29 = *(a1 + 136);
      v82 = v25 - v26;
      if (v28 > (v29 - v25) >> 3)
      {
        v30 = v29 - v26;
        v31 = (v29 - v26) >> 2;
        if (v31 <= v27)
        {
          v31 = v24 + 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          v32 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        if (!(v32 >> 61))
        {
          operator new();
        }

        goto LABEL_121;
      }

      v33 = 0;
      v34 = (v28 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v35 = vdupq_n_s64(v34);
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v33), xmmword_1B33B0560)));
        if (v36.i8[0])
        {
          *(v25 + 8 * v33) = 0;
        }

        if (v36.i8[4])
        {
          *(v25 + 8 * v33 + 8) = 0;
        }

        v33 += 2;
      }

      while (v34 - ((v28 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v33);
      *(a1 + 128) = v25 + 8 * v28;
      v37 = *(a1 + 144);
      v38 = *(a1 + 152);
      v39 = (v38 - v37) >> 4;
      if (v39 <= v24)
      {
        v40 = v27 - v39;
        v41 = *(a1 + 160);
        if (v40 > (v41 - v38) >> 4)
        {
          v42 = v41 - v37;
          v43 = v42 >> 3;
          if (v42 >> 3 <= v27)
          {
            v43 = v27;
          }

          if (v42 >= 0x7FFFFFFFFFFFFFF0)
          {
            v44 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v43;
          }

          if (!(v44 >> 60))
          {
            operator new();
          }

          goto LABEL_121;
        }

        bzero(*(a1 + 152), 16 * v40);
        *(a1 + 152) = v38 + 16 * v40;
        v24 = v84;
      }

      else if (v27 < v39)
      {
        *(a1 + 152) = v37 + 16 * v27;
      }

      v26 = *(a1 + 120);
      if (v82 < *(a1 + 128) - v26)
      {
        operator new();
      }
    }

    v45 = *(v26 + 8 * v24) + 24 * v22;
    *v45 = v85;
    *(v45 + 8) = v86;
    v86 = 0uLL;
    v47 = *(a1 + 168);
    v46 = *(a1 + 176);
    if (v24 < (v46 - v47) >> 3)
    {
LABEL_80:
      *(*(v47 + 8 * v24) + 8 * v22) = v87;
      goto LABEL_81;
    }

    v83 = v46 - v47;
    v48 = v24 + 1;
    v49 = v24 + 1 - ((v46 - v47) >> 3);
    v50 = *(a1 + 184);
    if (v49 > (v50 - v46) >> 3)
    {
      v51 = v50 - v47;
      v52 = (v50 - v47) >> 2;
      if (v52 <= v48)
      {
        v52 = v24 + 1;
      }

      if (v51 >= 0x7FFFFFFFFFFFFFF8)
      {
        v53 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v52;
      }

      if (!(v53 >> 61))
      {
        operator new();
      }

      goto LABEL_121;
    }

    v54 = 0;
    v55 = (v49 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v56 = vdupq_n_s64(v55);
    do
    {
      v57 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(vdupq_n_s64(v54), xmmword_1B33B0560)));
      if (v57.i8[0])
      {
        *(v46 + 8 * v54) = 0;
      }

      if (v57.i8[4])
      {
        *(v46 + 8 * v54 + 8) = 0;
      }

      v54 += 2;
    }

    while (v55 - ((v49 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v54);
    *(a1 + 176) = v46 + 8 * v49;
    v58 = *(a1 + 192);
    v59 = *(a1 + 200);
    v60 = (v59 - v58) >> 4;
    if (v60 > v24)
    {
      if (v48 < v60)
      {
        *(a1 + 200) = v58 + 16 * v48;
      }

      goto LABEL_78;
    }

    v61 = v48 - v60;
    v62 = *(a1 + 208);
    if (v61 <= (v62 - v59) >> 4)
    {
      bzero(*(a1 + 200), 16 * v61);
      *(a1 + 200) = v59 + 16 * v61;
      v24 = v84;
LABEL_78:
      v47 = *(a1 + 168);
      if (v83 < *(a1 + 176) - v47)
      {
        operator new();
      }

      goto LABEL_80;
    }

    v63 = v62 - v58;
    v64 = v63 >> 3;
    if (v63 >> 3 <= v48)
    {
      v64 = v48;
    }

    if (v63 >= 0x7FFFFFFFFFFFFFF0)
    {
      v65 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v65 = v64;
    }

    if (!(v65 >> 60))
    {
      operator new();
    }

LABEL_121:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_81:
  v66 = (&a2[8 * v3 - 0xE44323405AC1F58] - 0x3A3AA7D820E2E4E6) ^ (v3 - 0x61C8864680B583EBLL);
  v67 = (v66 << 6) + HIBYTE(v3) + (v66 >> 2);
  v68 = (v67 - 0x61C8864680B583EBLL) ^ v66;
  v69 = *(a1 + 376);
  if (!*&v69)
  {
    goto LABEL_99;
  }

  v70 = vcnt_s8(v69);
  v70.i16[0] = vaddlv_u8(v70);
  if (v70.u32[0] > 1uLL)
  {
    v71 = (v67 - 0x61C8864680B583EBLL) ^ v66;
    if (v68 >= *&v69)
    {
      v71 = v68 % *&v69;
    }
  }

  else
  {
    v71 = v68 & (*&v69 - 1);
  }

  v72 = *(*(a1 + 368) + 8 * v71);
  if (!v72 || (v73 = *v72) == 0)
  {
LABEL_99:
    operator new();
  }

  while (1)
  {
    v74 = v73[1];
    if (v74 == v68)
    {
      break;
    }

    if (v70.u32[0] > 1uLL)
    {
      if (v74 >= *&v69)
      {
        v74 %= *&v69;
      }
    }

    else
    {
      v74 &= *&v69 - 1;
    }

    if (v74 != v71)
    {
      goto LABEL_99;
    }

LABEL_98:
    v73 = *v73;
    if (!v73)
    {
      goto LABEL_99;
    }
  }

  if (v73[2] != a2 || __PAIR64__(*(v73 + 25), *(v73 + 24)) != __PAIR64__(HIBYTE(v3), v3))
  {
    goto LABEL_98;
  }

  v73[4] = v7;
  v75 = *(a1 + 416);
  if (!*&v75)
  {
    goto LABEL_117;
  }

  v76 = vcnt_s8(v75);
  v76.i16[0] = vaddlv_u8(v76);
  if (v76.u32[0] > 1uLL)
  {
    v77 = v7;
    if (v7 >= *&v75)
    {
      v77 = v7 % *&v75;
    }
  }

  else
  {
    v77 = (*&v75 - 1) & v7;
  }

  v78 = *(*(a1 + 408) + 8 * v77);
  if (!v78 || (v79 = *v78) == 0)
  {
LABEL_117:
    operator new();
  }

  while (2)
  {
    v80 = v79[1];
    if (v80 != v7)
    {
      if (v76.u32[0] > 1uLL)
      {
        if (v80 >= *&v75)
        {
          v80 %= *&v75;
        }
      }

      else
      {
        v80 &= *&v75 - 1;
      }

      if (v80 != v77)
      {
        goto LABEL_117;
      }

      goto LABEL_116;
    }

    if (v79[2] != v7)
    {
LABEL_116:
      v79 = *v79;
      if (!v79)
      {
        goto LABEL_117;
      }

      continue;
    }

    break;
  }

  v79[3] = a2;
  *(v79 + 16) = v3;
  if (*(&v86 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v86 + 1));
  }

  return v7;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[158];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A144D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[136];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A145A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[488];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14670;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[126];
}

uint64_t md::MaterialResourceStore::disconnect<geo::handle<md::MaterialIDStorage>>(void *a1, unint64_t a2)
{
  result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 2, a2);
  if (result != a1[7])
  {
    v4 = (*(a1[9] + ((((result - a1[6]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - a1[6]) >> 3) & 0x3F));
    v5 = v4[1];
    if (!v5 || (v6 = v5 - 1, (v4[1] = v6) == 0))
    {
      *v4 = 0;
    }
  }

  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14740;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ecs2::addComponent<md::ls::RampMaterialData>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  operator new();
}

void ecs2::addComponent<md::ls::TexturesToDisconnect>(uint64_t a1, uint64_t a2, void *a3)
{
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  operator new();
}

void sub_1B2BA0664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[124];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14810;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t ecs2::addComponent<md::ls::PendingDeletion>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1A470;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A1A470;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F29E5AD0[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PendingDeletion>(ecs2::Entity,md::ls::PendingDeletion &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1A470;
  a2[1] = *(result + 8);
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[258];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A148E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Clipping>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Clipping>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[174];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A149B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[178];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14A80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RampMaterialData>(ecs2::Entity,md::ls::RampMaterialData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RampMaterialData>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(a1 + 24);
    v57 = (*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F));
    *v57 = *(a1 + 8);
    v57[1] = v56;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = (*(v30 + 8 * v28) + 32 * (v27 & 0x3F));
  v5 = v59;
  v52 = *(a1 + 24);
  *v51 = *(a1 + 8);
  v51[1] = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata) = *(a2 + 4096);
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[108];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14B50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata;
  v57 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TexturesToDisconnect>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>();
  *(v57 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata) = *(v57 + 4096);
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Transform>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Transform>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[172];
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TexturesToDisconnect>();
    unk_1EB83CD60 = 0x9A2CF0F3E5B1FB4ELL;
    qword_1EB83CD68 = "md::ls::TexturesToDisconnect]";
    qword_1EB83CD70 = 28;
  }
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14C20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::View>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::View>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[176];
}

void *std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType const&>(void *result, unint64_t a2)
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

void ecs2::BasicRegistry<void>::add<md::ls::PendingDeletion>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(a1);
  v6 = v5;
  v7 = a2 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v7 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata) = *(a1 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14CF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingDeletion>();
    *algn_1EB83D698 = 0x34ACED59D994E35ELL;
    qword_1EB83D6A0 = "md::ls::PendingDeletion]";
    qword_1EB83D6A8 = 23;
  }
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[150];
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_1,std::allocator<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_1>,BOOL ()(md::RouteRangeAnnotationRequest const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F1138;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14DC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[180];
}

ecs2::ExecutionTaskContext *std::__function::__func<md::ita::PrepareGradientParametersConstantDataHandle::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::RampMaterialData const&,md::ls::ColorRampDataHandle &>)::$_0,std::allocator<md::ita::PrepareGradientParametersConstantDataHandle::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::RampMaterialData const&,md::ls::ColorRampDataHandle &>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::RampMaterialData const&,md::ls::ColorRampDataHandle &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  result = md::VKMRenderResourcesStore::getColorRampData(**(a1 + 8), *a5);
  if (result)
  {
    if (*(result + 80) == 1)
    {
      ecs2::ExecutionTaskContext::currentEntity(result);
      operator new();
    }
  }

  return result;
}

void md::MaterialTextureManager::colorRampTexturesFromMaterial(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = *a4;
  if (!*a4)
  {
    return;
  }

  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v27 = v10;
  v28 = a3;
  v11 = std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,std::__unordered_map_hasher<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyHash,md::MaterialTextureManager::ColorRampKeyEqual,true>,std::__unordered_map_equal<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyEqual,md::MaterialTextureManager::ColorRampKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>>>::find<md::MaterialTextureManager::ColorRampKey>((a2 + 240), v10, a3);
  if (v11)
  {
    v13 = v11[4];
    v12 = v11[5];
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    *a1 = v13;
    *(a1 + 8) = v12;
    goto LABEL_18;
  }

  (*(**a4 + 1056))(v25, a3);
  if (v26)
  {
    LOBYTE(v23[0]) = 0;
    v24 = 0;
    goto LABEL_11;
  }

  (*(**a4 + 576))(v23, a3);
  if (v26)
  {
LABEL_11:
    std::allocate_shared[abi:nn200100]<md::ColorRampTexture,std::allocator<md::ColorRampTexture>,unsigned int const&,float const&,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>> &,md::SharedResourcesManager *&,0>();
  }

  if (v24 == 1)
  {
    std::allocate_shared[abi:nn200100]<md::ColorRampTexture,std::allocator<md::ColorRampTexture>,unsigned int const&,float const&,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>> &,md::SharedResourcesManager *&,0>();
  }

  v14 = std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,std::__unordered_map_hasher<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyHash,md::MaterialTextureManager::ColorRampKeyEqual,true>,std::__unordered_map_equal<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyEqual,md::MaterialTextureManager::ColorRampKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>>>::__emplace_unique_key_args<md::MaterialTextureManager::ColorRampKey,std::piecewise_construct_t const&,std::tuple<md::MaterialTextureManager::ColorRampKey const&>,std::tuple<>>((a2 + 240), v27, v28);
  v15 = v14[5];
  v14[4] = 0;
  v14[5] = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v24 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v23);
  }

  if (v26 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v25);
  }

LABEL_18:
  v17 = *(*a4 + 32);
  v16 = *(*a4 + 40);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v27 = v17;
    v28 = a3;
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  else
  {
    v27 = *(*a4 + 32);
    v28 = a3;
  }

  v18 = std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,std::__unordered_map_hasher<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyHash,md::MaterialTextureManager::ColorRampKeyEqual,true>,std::__unordered_map_equal<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyEqual,md::MaterialTextureManager::ColorRampKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>>>::find<md::MaterialTextureManager::ColorRampKey>((a2 + 240), v17, a3);
  if (v18)
  {
    v20 = v18[4];
    v19 = v18[5];
    if (v19)
    {
      atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
    }

    *(a1 + 16) = v20;
    *(a1 + 24) = v19;
    return;
  }

  (*(**a4 + 1064))(v25, a3);
  if (v26)
  {
    LOBYTE(v23[0]) = 0;
    v24 = 0;
    goto LABEL_28;
  }

  (*(**a4 + 584))(v23, a3);
  if (v26)
  {
LABEL_28:
    std::allocate_shared[abi:nn200100]<md::ColorRampTexture,std::allocator<md::ColorRampTexture>,unsigned int const&,float const&,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>> &,md::SharedResourcesManager *&,0>();
  }

  if (v24 == 1)
  {
    std::allocate_shared[abi:nn200100]<md::ColorRampTexture,std::allocator<md::ColorRampTexture>,unsigned int const&,float const&,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>> &,md::SharedResourcesManager *&,0>();
  }

  v21 = std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,std::__unordered_map_hasher<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyHash,md::MaterialTextureManager::ColorRampKeyEqual,true>,std::__unordered_map_equal<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyEqual,md::MaterialTextureManager::ColorRampKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>>>::__emplace_unique_key_args<md::MaterialTextureManager::ColorRampKey,std::piecewise_construct_t const&,std::tuple<md::MaterialTextureManager::ColorRampKey const&>,std::tuple<>>((a2 + 240), v17, a3);
  v22 = v21[5];
  v21[4] = 0;
  v21[5] = 0;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v24 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v23);
  }

  if (v26 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v25);
  }
}

void sub_1B2BA2554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a16 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a11);
  }

  if (a25 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a18);
  }

  v27 = 24;
  while (1)
  {
    v28 = *(v25 + v27);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    v27 -= 16;
    if (v27 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[498];
}

uint64_t **std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,std::__unordered_map_hasher<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyHash,md::MaterialTextureManager::ColorRampKeyEqual,true>,std::__unordered_map_equal<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyEqual,md::MaterialTextureManager::ColorRampKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>>>::find<md::MaterialTextureManager::ColorRampKey>(void *a1, uint64_t *a2, unsigned __int8 a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (&a2[8 * a3 - 0xC3910C8D016B07DLL] + (a3 >> 2) - 3) ^ a3;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (&a2[8 * a3 - 0xC3910C8D016B07DLL] + (a3 >> 2) - 3) ^ a3;
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = v4 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (result[2] == a2 && *(result + 24) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[188];
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[182];
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[186];
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[184];
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(void)::metadata) = *(a2 + 4096);
}

uint64_t mre::GGLResourceStore::insertTexture(uint64_t a1, uint64_t a2, int a3, int a4)
{
  std::__shared_mutex_base::lock((a1 + 104));
  if (a2)
  {
    v8 = *(a2 + 68) | (*(a2 + 64) << 32);
    v24 = *(a2 + 80);
    v25 = v8;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v23[0] = a2;
  v23[1] = a2;
  v26 = a3;
  if (a4)
  {
    v9 = util::id_pool<mre::TextureHandle>::pop((a1 + 600));
    v27 = v9;
    LOBYTE(v28) = v10;
    v21 = vdupq_n_s64(1uLL);
    LOWORD(v22) = 0;
    v11 = ecs2::sparse_set<mre::TextureHandle,64ul>::insert(a1 + 440, &v27);
    if (v12)
    {
      v13 = (v11 - *(a1 + 472)) >> 4;
      v29 = v23;
      v14 = *(*(a1 + 496) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 496), v13)) + 24 * (v13 & 0x3F);
      *v14 = v21;
      *(v14 + 16) = v22;
      v15 = v29;
      v16 = *(*(a1 + 544) + 8 * ecs2::pool<mre::TextureStorage,64ul>::page_at_index((a1 + 544), v13)) + 40 * (v13 & 0x3F);
      v17 = v15[4];
      v18 = *(v15 + 1);
      *v16 = *v15;
      *(v16 + 16) = v18;
      *(v16 + 32) = v17;
    }
  }

  else
  {
    v9 = util::id_pool<mre::TextureHandle>::pop((a1 + 648));
    v27 = v9;
    LOBYTE(v28) = a3 == 0;
    if (a3)
    {
      v19 = a1 + 696;
    }

    else
    {
      v19 = a1 + 800;
    }

    ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::insert(&v21, v19, &v27, v23);
  }

  std::__shared_mutex_base::unlock((a1 + 104));
  return v9;
}

uint64_t util::id_pool<mre::TextureHandle>::pop(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    v4 = a1[3];
    v5 = a1[4];
    BYTE8(v7) = 0;
    v3 = ((v5 - v4) >> 4) | 0x100000000;
    *&v7 = v3;
    std::vector<md::VKMRenderResourcesStore::group_handle>::emplace_back<md::VKMRenderResourcesStore::group_handle const&>((a1 + 3), &v7);
  }

  else
  {
    v2 = a1[3] + 16 * *(v1 - 8);
    v3 = *v2;
    *&v7 = *v2;
    BYTE8(v7) = *(v2 + 8);
    a1[1] = v1 - 8;
  }

  return v3;
}

uint64_t ecs2::sparse_set<mre::TextureHandle,64ul>::insert(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a2 >> 6;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v5 >= (v7 - v6) >> 3)
  {
    v8 = v5 + 1;
    v9 = v5 + 1 - ((v7 - v6) >> 3);
    v10 = *(a1 + 24);
    if (v9 > (v10 - v7) >> 3)
    {
      v11 = v10 - v6;
      if (v11 >> 2 > v8)
      {
        v8 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v8;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v12);
    }

    bzero(*(a1 + 16), 8 * v9);
    *(a1 + 16) = v7 + 8 * v9;
    v6 = *(a1 + 8);
  }

  v13 = *(v6 + 8 * v5);
  if (!v13)
  {
    operator new();
  }

  v14 = (v13 + 16 * (v4 & 0x3F));
  v15 = v14[1];
  if (*v14 == -1 && v15 == 0)
  {
    std::vector<md::VKMRenderResourcesStore::group_handle>::emplace_back<md::VKMRenderResourcesStore::group_handle const&>(a1 + 32, a2);
    v17 = *(a1 + 32);
    v15 = ((*(a1 + 40) - v17) >> 4) - 1;
    *v14 = *(a2 + 1);
    v14[1] = v15;
  }

  else
  {
    v17 = *(a1 + 32);
  }

  return v17 + 16 * v15;
}

unint64_t ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::insert(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = ecs2::sparse_set<mre::TextureHandle,64ul>::insert(a2, a3);
  v9 = v8;
  v10 = result - *(a2 + 32);
  v11 = v10 >> 4;
  if (v8)
  {
    result = ecs2::pool<mre::TextureStorage,64ul>::page_at_index((a2 + 56), v11);
    v12 = *(*(a2 + 56) + 8 * result) + 40 * ((v10 >> 4) & 0x3F);
    v13 = *(a4 + 32);
    v14 = *(a4 + 16);
    *v12 = *a4;
    *(v12 + 16) = v14;
    *(v12 + 32) = v13;
  }

  *a1 = v11;
  *(a1 + 8) = a2 + 56;
  *(a1 + 16) = v9;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(void)::metadata) = *(a2 + 4096);
}

unint64_t ecs2::pool<mre::TextureStorage,64ul>::page_at_index(uint64_t *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  if (a2 >> 6 < v5 >> 3)
  {
    return v2;
  }

  v7 = v2 + 1;
  v8 = v2 + 1 - (v5 >> 3);
  v9 = a1[2];
  if (v8 > (v9 - v3) >> 3)
  {
    v10 = v9 - v4;
    v11 = (v9 - v4) >> 2;
    if (v11 <= v7)
    {
      v11 = v2 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (!(v12 >> 61))
    {
      operator new();
    }

    goto LABEL_32;
  }

  v13 = 0;
  v14 = (v8 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v15 = vdupq_n_s64(v14);
  do
  {
    v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v13), xmmword_1B33B0560)));
    if (v16.i8[0])
    {
      *(v3 + 8 * v13) = 0;
    }

    if (v16.i8[4])
    {
      *(v3 + 8 * v13 + 8) = 0;
    }

    v13 += 2;
  }

  while (v14 - ((v8 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v13);
  a1[1] = v3 + 8 * v8;
  v17 = a1[3];
  v18 = a1[4];
  v19 = (v18 - v17) >> 4;
  if (v19 <= v2)
  {
    v21 = v7 - v19;
    v22 = a1[5];
    if (v21 > (v22 - v18) >> 4)
    {
      v23 = v22 - v17;
      v24 = v23 >> 3;
      if (v23 >> 3 <= v7)
      {
        v24 = v2 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF0)
      {
        v25 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 60))
      {
        operator new();
      }

LABEL_32:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[4], 16 * v21);
    v20 = v18 + 16 * v21;
  }

  else
  {
    if (v7 >= v19)
    {
      goto LABEL_29;
    }

    v20 = v17 + 16 * v7;
  }

  a1[4] = v20;
LABEL_29:
  if (v5 < (a1[1] - *a1))
  {
    operator new();
  }

  return v2;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::metadata) = *(a2 + 4096);
}

unsigned __int16 *geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>>::operator[](uint64_t *a1, unsigned __int16 a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  while (*v5 != a2)
  {
    v5 += 48;
    if (v5 == v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 == v4)
  {
LABEL_7:
    v30 = 1065353216;
    v31 = a2;
    memset(v32, 0, sizeof(v32));
    memset(v29, 0, sizeof(v29));
    v33 = 1065353216;
    if (v3 == v4)
    {
      goto LABEL_13;
    }

    v5 = v3;
    while (*v5 != a2)
    {
      v5 += 48;
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    if (v5 == v4)
    {
LABEL_13:
      v6 = a1[2];
      if (v4 >= v6)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 4);
        v9 = v8 + 1;
        if (v8 + 1 > 0x555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v3) >> 4);
        if (2 * v10 > v9)
        {
          v9 = 2 * v10;
        }

        if (v10 >= 0x2AAAAAAAAAAAAAALL)
        {
          v11 = 0x555555555555555;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>>(v11);
        }

        *(48 * v8) = a2;
        v7 = 48 * v8 + 48;
        std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>::unordered_map(48 * v8 + 8, v32);
        v13 = *a1;
        v12 = a1[1];
        v14 = 48 * v8 - (v12 - *a1);
        if (v12 != *a1)
        {
          v15 = 0;
          v16 = -16 * ((v12 - *a1) >> 4) + 48 * v8;
          do
          {
            v17 = v13 + v15;
            v18 = v16 + v15;
            v19 = *(v13 + v15);
            v20 = *(v13 + v15 + 8);
            v21 = *(v13 + v15 + 16);
            *(v17 + 8) = 0;
            *(v18 + 8) = v20;
            *(v18 + 16) = v21;
            *(v17 + 16) = 0;
            v22 = *(v13 + v15 + 32);
            v23 = *(v13 + v15 + 40);
            v24 = *(v13 + v15 + 24);
            *v18 = v19;
            *(v16 + v15 + 24) = v24;
            *(v18 + 32) = v22;
            *(v18 + 40) = v23;
            if (v22)
            {
              v25 = *(v24 + 8);
              v26 = *(v18 + 16);
              if ((v26 & (v26 - 1)) != 0)
              {
                if (v25 >= v26)
                {
                  v25 %= v26;
                }
              }

              else
              {
                v25 &= v26 - 1;
              }

              *(v20 + 8 * v25) = v16 + v15 + 24;
              *(v13 + v15 + 24) = 0;
              *(v13 + v15 + 32) = 0;
            }

            v15 += 48;
          }

          while (v13 + v15 != v12);
          do
          {
            std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>>>::~__hash_table(v13 + 8);
            v13 += 48;
          }

          while (v13 != v12);
        }

        v27 = *a1;
        *a1 = v14;
        a1[1] = v7;
        a1[2] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v4 = a2;
        v7 = (v4 + 48);
        std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>::unordered_map((v4 + 8), v32);
      }

      a1[1] = v7;
      v5 = (v7 - 48);
    }

    std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>>>::~__hash_table(v32);
    std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>>>::~__hash_table(v29);
  }

  return (v5 + 8);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::metadata) = *(a2 + 4096);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 16);
    v6 = *(i + 9);
    v7 = (v6 - 0x61C8864680B583EBLL + ((v5 - 0x61C8864680B583EBLL) << 6) + ((v5 - 0x61C8864680B583EBLL) >> 2)) ^ (v5 - 0x61C8864680B583EBLL);
    v8 = &i[11][8 * v7 - 0xC3910C8D016B07DLL] + (v7 >> 2) - 3;
    v9 = v8 ^ v7;
    v10 = *(a1 + 8);
    if (!*&v10)
    {
      goto LABEL_20;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = v8 ^ v7;
      if (v9 >= *&v10)
      {
        v13 = v9 % *&v10;
      }
    }

    else
    {
      v13 = (*&v10 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v13);
    if (!v14 || (v15 = *v14) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v16 = v15[1];
      if (v16 == v9)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v10)
        {
          v16 %= *&v10;
        }
      }

      else
      {
        v16 &= *&v10 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_20;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    if (*(v15 + 16) != v5 || *(v15 + 9) != v6 || !gdc::GenericKey::operator==((v15 + 3), (i + 3)))
    {
      goto LABEL_19;
    }
  }

  return a1;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(a2);
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
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
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

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::metadata) = *(a2 + 4096);
}