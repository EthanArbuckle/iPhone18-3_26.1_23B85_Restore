double *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(double *result, double *a2, double *a3)
{
  if (a2 == result)
  {
LABEL_13:
    if (a3 == a2)
    {
      return result;
    }

    v7 = *(a3 + 8);
    if (v7 == *(a2 + 8) && (v7 = *(a3 + 9), v7 == *(a2 + 9)))
    {
      if (a3[2] >= a2[2])
      {
        return result;
      }
    }

    else if ((v7 & 1) == 0)
    {
      return result;
    }

    v8 = *(a2 + 2);
    v9 = *a2;
    v10 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v10;
    *a3 = v9;
    *(a3 + 2) = v8;
    if (a2 == result)
    {
      return result;
    }

    v11 = *(a2 + 8);
    if (v11 == *(result + 8) && (v11 = *(a2 + 9), v11 == *(result + 9)))
    {
      if (a2[2] >= result[2])
      {
        return result;
      }
    }

    else if ((v11 & 1) == 0)
    {
      return result;
    }

LABEL_25:
    v12 = *(result + 2);
    v13 = *result;
    v14 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v14;
    *a2 = v13;
    *(a2 + 2) = v12;
    return result;
  }

  v3 = *(a2 + 8);
  if (v3 == *(result + 8))
  {
    v4 = *(a2 + 9);
    if (v4 == *(result + 9))
    {
      if (a2[2] >= result[2])
      {
        goto LABEL_13;
      }
    }

    else if ((v4 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (a3 == a2)
  {
    goto LABEL_25;
  }

  v5 = *(a3 + 8);
  if (v5 == v3)
  {
    v6 = *(a3 + 9);
    if (v6 == *(a2 + 9))
    {
      if (a3[2] >= a2[2])
      {
        goto LABEL_29;
      }

LABEL_27:
      v15 = *(result + 2);
      v16 = *result;
      v17 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v17;
LABEL_35:
      *a3 = v16;
      *(a3 + 2) = v15;
      return result;
    }

    if (v6)
    {
      goto LABEL_27;
    }
  }

  else if (v5)
  {
    goto LABEL_27;
  }

LABEL_29:
  v18 = *(result + 2);
  v19 = *result;
  v20 = *(a2 + 2);
  *result = *a2;
  *(result + 2) = v20;
  *a2 = v19;
  *(a2 + 2) = v18;
  v21 = *(a3 + 8);
  if (v21 != *(a2 + 8) || (v21 = *(a3 + 9), v21 != *(a2 + 9)))
  {
    if ((v21 & 1) == 0)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (a3[2] < a2[2])
  {
LABEL_34:
    v15 = *(a2 + 2);
    v16 = *a2;
    v22 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v22;
    goto LABEL_35;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1, a2, a3);
  if (a4 != a3)
  {
    v11 = *(a4 + 8);
    if (v11 == *(a3 + 8) && (v11 = *(a4 + 9), v11 == *(a3 + 9)))
    {
      result.n128_u64[0] = *(a4 + 16);
      if (result.n128_f64[0] >= *(a3 + 16))
      {
        goto LABEL_20;
      }
    }

    else if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }

    v12 = *(a3 + 16);
    result = *a3;
    v13 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v13;
    *a4 = result;
    *(a4 + 16) = v12;
    if (a3 == a2)
    {
      goto LABEL_20;
    }

    v14 = *(a3 + 8);
    if (v14 == *(a2 + 8) && (v14 = *(a3 + 9), v14 == *(a2 + 9)))
    {
      result.n128_u64[0] = *(a3 + 16);
      if (result.n128_f64[0] >= *(a2 + 16))
      {
        goto LABEL_20;
      }
    }

    else if ((v14 & 1) == 0)
    {
      goto LABEL_20;
    }

    v15 = *(a2 + 16);
    result = *a2;
    v16 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v16;
    *a3 = result;
    *(a3 + 16) = v15;
    if (a2 == a1)
    {
      goto LABEL_20;
    }

    v17 = *(a2 + 8);
    if (v17 == *(a1 + 8) && (v17 = *(a2 + 9), v17 == *(a1 + 9)))
    {
      result.n128_u64[0] = *(a2 + 16);
      if (result.n128_f64[0] >= *(a1 + 16))
      {
        goto LABEL_20;
      }
    }

    else if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }

    v18 = *(a1 + 16);
    result = *a1;
    v19 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v19;
    *a2 = result;
    *(a2 + 16) = v18;
  }

LABEL_20:
  if (a5 == a4)
  {
    return result;
  }

  v20 = *(a5 + 8);
  if (v20 == *(a4 + 8) && (v20 = *(a5 + 9), v20 == *(a4 + 9)))
  {
    result.n128_u64[0] = *(a5 + 16);
    if (result.n128_f64[0] >= *(a4 + 16))
    {
      return result;
    }
  }

  else if ((v20 & 1) == 0)
  {
    return result;
  }

  v21 = *(a4 + 16);
  result = *a4;
  v22 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 16) = v22;
  *a5 = result;
  *(a5 + 16) = v21;
  if (a4 == a3)
  {
    return result;
  }

  v23 = *(a4 + 8);
  if (v23 == *(a3 + 8) && (v23 = *(a4 + 9), v23 == *(a3 + 9)))
  {
    result.n128_u64[0] = *(a4 + 16);
    if (result.n128_f64[0] >= *(a3 + 16))
    {
      return result;
    }
  }

  else if ((v23 & 1) == 0)
  {
    return result;
  }

  v24 = *(a3 + 16);
  result = *a3;
  v25 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v25;
  *a4 = result;
  *(a4 + 16) = v24;
  if (a3 == a2)
  {
    return result;
  }

  v26 = *(a3 + 8);
  if (v26 == *(a2 + 8) && (v26 = *(a3 + 9), v26 == *(a2 + 9)))
  {
    result.n128_u64[0] = *(a3 + 16);
    if (result.n128_f64[0] >= *(a2 + 16))
    {
      return result;
    }
  }

  else if ((v26 & 1) == 0)
  {
    return result;
  }

  v27 = *(a2 + 16);
  result = *a2;
  v28 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v28;
  *a3 = result;
  *(a3 + 16) = v27;
  if (a2 == a1)
  {
    return result;
  }

  v29 = *(a2 + 8);
  if (v29 != *(a1 + 8) || (v29 = *(a2 + 9), v29 != *(a1 + 9)))
  {
    if ((v29 & 1) == 0)
    {
      return result;
    }

    goto LABEL_44;
  }

  result.n128_u64[0] = *(a2 + 16);
  if (result.n128_f64[0] < *(a1 + 16))
  {
LABEL_44:
    v30 = *(a1 + 16);
    result = *a1;
    v31 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v31;
    *a2 = result;
    *(a2 + 16) = v30;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1, (a1 + 24), (a2 - 24));
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24);
        return 1;
      }

      goto LABEL_14;
    }

    v17 = (a1 + 48);
    v18 = (a2 - 24);
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1, (a1 + 24), (a1 + 48));
    if (v18 == v17)
    {
      return 1;
    }

    v19 = *(a2 - 16);
    if (v19 == *(a1 + 56) && (v19 = *(a2 - 15), v19 == *(a1 + 57)))
    {
      if (*(a2 - 8) >= *(a1 + 64))
      {
        return 1;
      }
    }

    else if ((v19 & 1) == 0)
    {
      return 1;
    }

    v23 = *(a1 + 64);
    v24 = *v17;
    v25 = *(a2 - 8);
    *v17 = *v18;
    *(a1 + 64) = v25;
    *v18 = v24;
    *(a2 - 8) = v23;
    v26 = *(a1 + 56);
    if (v26 == *(a1 + 32) && (v26 = *(a1 + 57), v26 == *(a1 + 33)))
    {
      if (*(a1 + 64) >= *(a1 + 40))
      {
        return 1;
      }
    }

    else if ((v26 & 1) == 0)
    {
      return 1;
    }

    v27 = *(a1 + 40);
    v28 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v28;
    *(a1 + 64) = v27;
    v29 = *(a1 + 32);
    if (v29 == *(a1 + 8) && (v29 = *(a1 + 33), v29 == *(a1 + 9)))
    {
      if (*(a1 + 40) >= *(a1 + 16))
      {
        return 1;
      }
    }

    else if ((v29 & 1) == 0)
    {
      return 1;
    }

    v31 = *(a1 + 16);
    v32 = *a1;
    *a1 = *(a1 + 24);
    *(a1 + 16) = *(a1 + 40);
    *(a1 + 24) = v32;
    *(a1 + 40) = v31;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = (a2 - 24);
    if (a2 - 24 == a1)
    {
      return 1;
    }

    v6 = *(a2 - 16);
    if (v6 == *(a1 + 8) && (v6 = *(a2 - 15), v6 == *(a1 + 9)))
    {
      if (*(a2 - 8) >= *(a1 + 16))
      {
        return 1;
      }
    }

    else if ((v6 & 1) == 0)
    {
      return 1;
    }

    v20 = *(a1 + 16);
    v21 = *a1;
    v22 = *(a2 - 8);
    *a1 = *v5;
    *(a1 + 16) = v22;
    *v5 = v21;
    *(a2 - 8) = v20;
    return 1;
  }

LABEL_14:
  v7 = a1 + 48;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1, (a1 + 24), (a1 + 48));
  v8 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (2)
  {
    v11 = *(v8 + 8);
    if (v11 == *(v7 + 8))
    {
      v12 = *(v8 + 9);
      if (v12 == *(v7 + 9))
      {
        if (*(v8 + 16) >= *(v7 + 16))
        {
          goto LABEL_35;
        }
      }

      else if ((v12 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (!*(v8 + 8))
      {
        goto LABEL_35;
      }

      v12 = *(v8 + 9);
    }

    v13 = *v8;
    v33 = *(v8 + 10);
    v34 = *(v8 + 14);
    v14 = *(v8 + 16);
    *(v8 + 16) = *(v7 + 16);
    *v8 = *v7;
    v15 = v9;
    while (1)
    {
      v16 = a1 + v15;
      if (v11 != *(a1 + v15 + 32))
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      if (v12 == *(v16 + 33))
      {
        if (v14 >= *(a1 + v15 + 40))
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      if ((v12 & 1) == 0)
      {
        break;
      }

LABEL_31:
      v7 -= 24;
      *(v16 + 48) = *(v16 + 24);
      *(v16 + 64) = *(v16 + 40);
      v15 -= 24;
      if (v15 == -48)
      {
        v7 = a1;
        goto LABEL_34;
      }
    }

    v7 = a1 + v15 + 48;
LABEL_34:
    *v7 = v13;
    *(v7 + 8) = v11;
    *(v7 + 9) = v12;
    *(v7 + 10) = v33;
    *(v7 + 14) = v34;
    *(v7 + 16) = v14;
    if (++v10 != 8)
    {
LABEL_35:
      v7 = v8;
      v9 += 24;
      v8 += 24;
      if (v8 == a2)
      {
        return 1;
      }

      continue;
    }

    return v8 + 24 == a2;
  }
}

float ___ZN2md10VenueLogic22_runExtrusionAnimationEv_block_invoke(uint64_t a1, float a2)
{
  result = *(a1 + 40) + ((*(a1 + 44) - *(a1 + 40)) * a2);
  *(*(a1 + 32) + 492) = result;
  return result;
}

float ___ZN2md10VenueLogic22_runExtrusionAnimationEv_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    result = *(a1 + 40);
    *(*(a1 + 32) + 492) = result;
  }

  return result;
}

void std::function<void ()(VKAnimation *)>::operator()(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v4);
  }

  (*(*v3 + 48))(v3, &v5);
}

uint64_t md::Logic<md::VenueLogic,md::VenueLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x4927EB92E562CC46 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::SceneContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::VenueLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::VenueLogicContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::VenueLogicContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::VenueLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0E968;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(v2 + 304);
    v3 = *(v2 + 120);
    if (v3)
    {
      *(v2 + 128) = v3;
      operator delete(v3);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 80);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 40);
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v4, 0x10F0C40EC263EC2);
  }

  return a1;
}

uint64_t md::VenueLogic::didBecomeInactive(md::VenueLogic *this)
{
  *(this + 568) = 0u;
  result = *(this + 90);
  if (result)
  {
    v2 = 0;
    v3 = 0;
    return (*(*result + 48))(result, &v3, &v2);
  }

  return result;
}

void md::VenueLogic::~VenueLogic(md::VenueLogic *this)
{
  md::VenueLogic::~VenueLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0E7F8;
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](this + 888);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](this + 856);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this + 824);
  std::__function::__value_func<void ()(VKAnimation *)>::~__value_func[abi:nn200100](this + 792);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this + 760);
  std::__function::__value_func<void ()(md::Venue const*)>::~__value_func[abi:nn200100](this + 728);
  std::__function::__value_func<void ()(md::Venue const*,md::VenueBuilding const*)>::~__value_func[abi:nn200100](this + 696);
  *(this + 83) = &unk_1F2A3EF58;

  *(this + 80) = &unk_1F2A3EF58;
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(*(this + 77));
  v2 = *(this + 75);
  *(this + 75) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(this + 512);
  v3 = *(this + 41);
  if (v3)
  {
    *(this + 42) = v3;
    operator delete(v3);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 288);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 248);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::~__hash_table(this + 208);
  if (*(this + 23))
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 23);
    operator delete(*(this + 23));
  }

  std::mutex::~mutex((this + 120));
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

double md::VenueLogicContext::getVenueLevelElevation(md::VenueLogicContext *this, uint64_t a2, unsigned __int16 a3, int a4)
{
  md::VenueLogicContext::buildingElevation(this, a2, a4);
  if (v9)
  {
    v10 = (this + 16);
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v11 = v10[3];
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v12 != v13)
      {
        while (v12[3] != a2)
        {
          v12 += 15;
          if (v12 == v13)
          {
            v12 = v13;
            break;
          }
        }
      }

      if (v12 != v13)
      {
        if (v12)
        {
          v14 = *v12;
          v15 = v12[1];
          while (v14 != v15)
          {
            if (*(v14 + 8) == a3)
            {
              if (*(v14 + 168) == 1)
              {
                v16 = 1.0;
                if (a4)
                {
                  v16 = *(this + 73);
                }

                return v16 * *(v14 + 176);
              }

              return result;
            }

            v14 += 184;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t md::VenueLogicContext::buildingElevation(md::VenueLogicContext *this, uint64_t a2, int a3)
{
  v3 = (this + 16);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = v3[3];
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v5 != v6)
    {
      while (*(v5 + 24) != a2)
      {
        v5 += 120;
        if (v5 == v6)
        {
          v5 = v6;
          break;
        }
      }
    }

    if (v5 != v6)
    {
      if (v5 && *(v5 + 104) == 1)
      {
        v7 = 1.0;
        if (a3)
        {
          v7 = *(this + 73);
        }

        *&result = v7 * *(v5 + 112);
        return result;
      }

      break;
    }
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v9 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_ERROR, "Building couldn't be found to determine elevation. Verify the code and the data, file a bug for data team if necessary.", v10, 2u);
  }

  *&result = 0.0;
  return result;
}

uint64_t md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(md::VenueLogicContext *this, uint64_t a2)
{
  v2 = (this + 16);
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      return v2;
    }

    v3 = v2[3];
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    if (v5 != v4)
    {
      while (*(v5 + 24) != a2)
      {
        v5 += 120;
        if (v5 == v4)
        {
          v5 = v4;
          break;
        }
      }
    }

    if (v5 != v4)
    {
      if (v5)
      {
        v6 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 5, *(v5 + 24));
        v2 = v6 + 3;
        if (!v6)
        {
          v2 = (v5 + 56);
        }

        LOWORD(v2) = *v2;
      }

      else
      {
        LOWORD(v2) = 0;
      }

      return v2;
    }
  }
}

uint64_t ___ZN2md10VenueLogic23setBaseMapDimmingFactorEfbd_block_invoke(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  *(v2 + 488) = *(a1 + 40) + ((*(a1 + 44) - *(a1 + 40)) * a2);
  result = *(v2 + 848);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t ___ZN2md10VenueLogic23setBaseMapDimmingFactorEfbd_block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    *(v2 + 488) = *(result + 40);
    result = *(v2 + 848);
    if (result)
    {
      return (*(*result + 48))();
    }
  }

  return result;
}

void md::Logic<md::LightingLogic,md::LightingLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

__n128 std::__function::__func<md::LightingLogic::_calculateShadowProjectionBounds(md::CameraContext const&,md::SceneContext const&,gm::Matrix<double,4,4> const&,gm::Box<double,3> &)::$_0::operator() const(gdc::LayerDataWithWorld const&)::{lambda(gm::Matrix<float,3,1> const&)#1},std::allocator<md::LightingLogic::_calculateShadowProjectionBounds(md::CameraContext const&,md::SceneContext const&,gm::Matrix<double,4,4> const&,gm::Box<double,3> &)::$_0::operator() const(gdc::LayerDataWithWorld const&)::{lambda(gm::Matrix<float,3,1> const&)#1}>,void ()(gm::Matrix<float,3,1>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A0EA48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<int>(void *a1, int a2, unsigned int a3, _BYTE *a4)
{
  if (a3 >= 0x17)
  {
    v7 = 23;
  }

  else
  {
    v7 = a3;
  }

  if (gss::CartoStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(a1, a2, v7))
  {
    v8 = *a1 + 120 * *(a1 + v7 + 16);
    v9 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v8 + 48), a2);
    if (v9 == *(v8 + 60))
    {
      return &gss::PropertySetValueHelper<gss::ScenePropertyID,int>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
    }

    else
    {
      return (*(v8 + 48) + *(v8 + 56) + 4 * v9);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::ScenePropertyID,int>(a2);
  }
}

void *gss::CartoStyle<gss::ScenePropertyID>::valueForKey<std::string>(unsigned __int8 ***a1, _BYTE *a2)
{
  if (!a1 || (v4 = *a1, geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*a1, 0x48u) == *(v4 + 6)))
  {
    if (a2)
    {
      *a2 = 0;
    }

    return &gss::defaultValueForKey<gss::ScenePropertyID,std::string>(gss::ScenePropertyID)::_defaultValue;
  }

  else
  {

    return gss::PropertySetValueHelper<gss::ScenePropertyID,std::string>::value(v4);
  }
}

void geo::_retain_ptr<NSCalendar * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A0ECE0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSCalendar * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A0ECE0;

  return a1;
}

__n128 _ZNKSt3__110__function6__funcIZN2md13LightingLogic29runBeforeLayoutAtVariableRateERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_17StyleLogicContextENS2_12SceneContextENS2_16ElevationContextENS2_15SettingsContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_20LightingLogicContextEE3__0NS_9allocatorISN_EEFvNS2_17StyleManagerEventEEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A0ED48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

_BYTE *md::Logic<md::LightingLogic,md::LightingLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x41E8D6E445F4145 && (v4 = *(a3 + 32)) != 0)
  {
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>(v8, *(a2 + 8));
    return (*(*a1 + 160))(a1, a2, v8, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::LightingLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::LightingLogicContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::LightingLogicContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::LightingLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0ED90;
  v2 = a1[4];
  if (v2)
  {
    if (*(v2 + 152) == 1 && *(v2 + 151) < 0)
    {
      operator delete(*(v2 + 128));
    }

    v3 = *(v2 + 72);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = *(v2 + 40);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v2 + 24);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(v2 + 8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    MEMORY[0x1B8C62190](v2, 0x1032C40C7F08773);
  }

  return a1;
}

void md::LightingLogic::createDebugNode(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v16, "LightingLogic");
  gdc::DebugTreeNode::DebugTreeNode(a2, &v16);
  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "Shadow Cache");
  if (a1[416])
  {
    v4 = "On";
  }

  else
  {
    v4 = "Off";
  }

  gdc::DebugTreeValue::DebugTreeValue(v13, v4);
  gdc::DebugTreeNode::addProperty(a2, &v16, v13);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "SSAO Enabled");
  if (a1[225])
  {
    v5 = "On";
  }

  else
  {
    v5 = "Off";
  }

  gdc::DebugTreeValue::DebugTreeValue(v10, v5);
  gdc::DebugTreeNode::addProperty(a2, &v16, v10);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "SSAO Activated");
  if (a1[227])
  {
    v6 = "On";
  }

  else
  {
    v6 = "Off";
  }

  gdc::DebugTreeValue::DebugTreeValue(v7, v6);
  gdc::DebugTreeNode::addProperty(a2, &v16, v7);
  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }
}

void sub_1B2EC8420(_Unwind_Exception *a1)
{
  *(v2 - 72) = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
  *(v2 - 72) = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void md::LightingLogic::didBecomeInactive(md::LightingLogic *this)
{
  *(this + 376) = 0;
  v2 = this + 360;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 45));
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 44) = v2;
}

void md::LightingLogic::~LightingLogic(id *this)
{
  md::LightingLogic::~LightingLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0E990;
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  md::Monitorable<md::Transformable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>>::~Monitorable((this + 60));
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable((this + 50));
  if (*(this + 392) == 1)
  {
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[45]);
  v2 = this[36];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = this[34];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  this[29] = &unk_1F2A0ECE0;

  v4 = this[24];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = this[22];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = this[20];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = this[18];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = this[16];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[13]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[10]);
}

void sub_1B2EC8618(_Unwind_Exception *a1)
{
  md::Monitorable<md::Transformable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>>::~Monitorable(v1 + 480);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 400);
  if (*(v1 + 392) == 1)
  {
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 360));
  v3 = *(v1 + 288);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 272);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(v1 + 232) = &unk_1F2A0ECE0;

  v5 = *(v1 + 192);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 176);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(v1 + 160);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(v1 + 144);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v1 + 128);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t md::Monitorable<md::Transformable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>>::~Monitorable(uint64_t a1)
{
  if (*(a1 + 56))
  {
    GEOConfigRemoveBlockListener();
    v2 = *(a1 + 56);
    *(a1 + 56) = 0;
  }

  atomic_store(0, *(a1 + 64));
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](a1 + 80);
  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__function::__value_func<BOOL ()(BOOL const&)>::~__value_func[abi:nn200100](a1 + 24);
  return a1;
}

void sub_1B2EC8770(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v1 + 80);
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__function::__value_func<BOOL ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 24);
  _Unwind_Resume(a1);
}

void md::LightingLogicContext::defaultLightingConstantData(md::LightingLogicContext *this)
{
  {
    operator new();
  }

  v2 = 0;
  if (atomic_load_explicit(&v2, memory_order_acquire) != -1)
  {
    v4 = &v1;
    v3 = &v4;
    std::__call_once(&v2, &v3, std::__call_once_proxy[abi:nn200100]<std::tuple<md::LightingLogicContext::defaultLightingConstantData(void)::$_0 &&>>);
  }
}

void sub_1B2EC88C8(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<md::LightingLogicContext::defaultLightingConstantData(void)::$_0 &&>>()
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v1, md::LightingLogicContext::defaultLightingConstantData(void)::_defaultLightingConstantData);
  v0 = v2;
  *v2 = 0;
  *(v0 + 2) = COERCE_UNSIGNED_INT(1.0);
  *(v0 + 6) = 0;
  *(v0 + 22) = 0;
  *(v0 + 14) = 0;
  *(v0 + 15) = 0;
  ggl::BufferMemory::~BufferMemory(v1);
}

uint64_t std::__shared_ptr_pointer<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration> *,std::shared_ptr<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>::__shared_ptr_default_delete<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>,ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>,std::allocator<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration> *,std::shared_ptr<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>::__shared_ptr_default_delete<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>,ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>,std::allocator<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t ___ZN2md13LightingLogicC2EPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = GEOConfigGetBOOL();
  *(v1 + 224) = result;
  return result;
}

void ___ZN2md13LightingLogicC2EPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  Integer = GEOConfigGetInteger();

  md::LightingLogic::setFixedDateWithHour(v1, Integer);
}

int16x4_t ___ZN2md11MonitorableINS_13TransformableINS_11ConfigValueI16GEOConfigKeyBOOLbEEEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNSt3__18functionIFvbEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    if (*v1)
    {
      v3 = *(v2 + 17);
      md::Transformable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::update(*(a1 + 32));
      v5 = *(v2 + 104);
      if (v5)
      {

        return std::function<void ()(BOOL)>::operator()(v5, v3);
      }
    }
  }

  return result;
}

void ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0EBD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0EB78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0EB20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0EAE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MeshRenderable::~MeshRenderable(md::MeshRenderable *this)
{
  md::MeshRenderable::~MeshRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3CEF8;
  if (*(this + 176) == 1)
  {
    v2 = *(this + 20);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t md::MeshRenderable::MeshRenderable(uint64_t result, void *a2, char a3, uint64_t *a4)
{
  *result = &unk_1F2A3CEF8;
  *(result + 16) = 0;
  *(result + 8) = a3;
  *(result + 24) = 0;
  *(result + 32) = *a2;
  v4 = a2[1];
  *(result + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 76) = xmmword_1B33AFF10;
  *(result + 48) = 0;
  *(result + 64) = 0;
  *(result + 72) = 1;
  *(result + 92) = 0x80000000800000;
  *(result + 100) = 0;
  *(result + 124) = 0;
  *(result + 128) = 0;
  *(result + 140) = 0;
  *(result + 144) = 1;
  *(result + 146) = 1;
  *(result + 152) = 0;
  *(result + 176) = 0;
  *(result + 184) = 0;
  *(result + 188) = 0;
  *(result + 192) = 0;
  *(result + 196) = 0;
  *(result + 200) = 0;
  *(result + 147) = 0;
  *(result + 204) = atomic_fetch_add(&md::MeshRenderable::generateId(void)::sId, 1u);
  *(result + 208) = 0;
  if (a4)
  {
    v5 = 0;
    v6 = *a4;
    *(result + 208) = *a4;
    *(result + 16) = *(v6 + 16);
    *(result + 72) = *(a4 + 32);
    do
    {
      *(result + 76 + v5) = *(a4 + v5 + 36);
      v5 += 4;
    }

    while (v5 != 12);
    for (i = 0; i != 12; i += 4)
    {
      *(result + 88 + i) = *(a4 + i + 48);
    }

    v8 = *(a4 + 15);
    memset(&v13[1], 0, 44);
    v13[0] = 1065353216;
    v13[4] = 1065353216;
    v13[8] = 1065353216;
    if (fabsf(v8 + -1.0) >= 0.0001)
    {
      goto LABEL_13;
    }

    v9 = 0;
    do
    {
      if (v9 == 11)
      {
        goto LABEL_14;
      }

      v10 = v9 + 1;
      v11 = vabds_f32(*(a4 + v9 + 16), *&v13[v9 + 1]);
      ++v9;
    }

    while (v11 < 0.0001);
    if ((v10 - 1) <= 0xA)
    {
LABEL_13:
      operator new();
    }

LABEL_14:
    v12 = *(a4 + 1);
    *(result + 64) = *(a4 + 24);
    *(result + 48) = v12;
  }

  return result;
}

uint64_t md::MeshRenderable::MeshRenderable(uint64_t a1, char a2, uint64_t *a3, void *a4)
{
  v6 = a4[1];
  v11[0] = *a4;
  v11[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    md::MeshRenderable::MeshRenderable(a1, v11, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  else
  {
    md::MeshRenderable::MeshRenderable(a1, v11, a2, a3);
  }

  v8 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 40);
  *(a1 + 32) = v8;
  *(a1 + 40) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  *(a1 + 148) = 1;
  return a1;
}

md::MeshRenderable *md::MeshRenderable::MeshRenderable(md::MeshRenderable *this, char a2, uint64_t a3, void *a4)
{
  *this = &unk_1F2A3CEF8;
  *(this + 2) = 0;
  *(this + 8) = a2;
  *(this + 3) = 0;
  v5 = a4[1];
  *(this + 4) = *a4;
  *(this + 5) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 72) = 1;
  *(this + 76) = xmmword_1B33AFF10;
  *(this + 92) = 0x80000000800000;
  *(this + 100) = 0;
  *(this + 124) = 0;
  *(this + 128) = 0;
  *(this + 140) = 0;
  *(this + 72) = 1;
  *(this + 146) = 1;
  *(this + 152) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 188) = 0;
  *(this + 96) = 0;
  *(this + 196) = 0;
  *(this + 200) = 0;
  *(this + 147) = 0;
  *(this + 51) = atomic_fetch_add(&md::MeshRenderable::generateId(void)::sId, 1u);
  *(this + 26) = a3;
  *(this + 1) = *(a3 + 16);
  md::MeshRenderable::recalculateBounds(this);
  return this;
}

void md::MuninStorefrontLabelFeature::addElement(md::PointLabelFeature *a1, void **a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 57))
  {
    v5 = *(a1 + 54);
    v6 = a1 + 440;
    if (v5 != a1 + 440)
    {
      do
      {
        md::PointPosition::addElement((v5 + 40), a2);
        v7 = *(v5 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v5 + 2);
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }

      while (v8 != v6);
    }
  }

  else if (*(a1 + 90) != *(a1 + 89))
  {
    v10 = 0;
    v29 = (a1 + 440);
    do
    {
      v11 = md::PointPosition::PointPosition(&v31, a1, a2);
      v38[25] = v10;
      v12 = *(a1 + 116);
      *(a1 + 116) = v12 + 1;
      v13 = *(a1 + 55);
      for (i = v29; ; v13 = *i)
      {
        v15 = i;
        if (!v13)
        {
          break;
        }

        while (1)
        {
          i = v13;
          v16 = *(v13 + 8);
          if (v12 < v16)
          {
            break;
          }

          if (v16 >= v12)
          {
            goto LABEL_27;
          }

          v13 = i[1];
          if (!v13)
          {
            v15 = i + 1;
            goto LABEL_19;
          }
        }
      }

LABEL_19:
      v17 = mdm::zone_mallocator::instance(v11);
      v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(v17);
      v19 = v18;
      v18[8] = v12;
      *(v18 + 6) = 0;
      *(v18 + 7) = 0;
      *(v18 + 5) = 0;
      *(v18 + 64) = v33;
      v20 = v31;
      v21 = v32;
      v22 = v32 - v31;
      if (v32 != v31)
      {
        if ((v22 >> 3) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v23 = mdm::zone_mallocator::instance(v18);
        v24 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>>(v23, v22 >> 3);
        *(v19 + 5) = v24;
        *(v19 + 6) = v24;
        *(v19 + 7) = v24 + v22;
        do
        {
          *v24 = 0;
          v25 = *v20;
          *v24 = *v20;
          if (v25)
          {
            ++*v25;
          }

          ++v20;
          ++v24;
        }

        while (v20 != v21);
        *(v19 + 6) = v24;
      }

      *(v19 + 11) = v35;
      *(v19 + 18) = v34;
      *(v19 + 6) = v36;
      v19[28] = v37[0];
      *(v19 + 115) = *(v37 + 3);
      *(v19 + 30) = *v38;
      *(v19 + 133) = *&v38[13];
      std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(a1 + 54, i, v15, v19);
LABEL_27:
      v30 = &v31;
      std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v30);
      ++v10;
    }

    while ((*(a1 + 90) - *(a1 + 89)) >> 4 > v10);
  }

  if (*a2)
  {
    v26 = (*a2 + 1);
  }

  else
  {
    v26 = 0;
  }

  md::PointLabelFeatureElement::updateText(v26, a1, a3);
  if (*a2)
  {
    v27 = (*a2 + 1);
  }

  else
  {
    v27 = 0;
  }

  md::PointLabelFeatureElement::updateLabelPlacements(v27, a1);
}

void sub_1B2EC9624(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char a12)
{
  v14 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(v14, v12);
  a11 = &a12;
  std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x98uLL, 0x1020040D7756BA3uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>>(uint64_t a1, uint64_t a2)
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

uint64_t md::MuninStorefrontLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v25);
  md::StorefrontLabelFeature::debugString(a1, a2, a3, a4, __p);
  if ((v24 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, v10, v11);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *(a1 + 440);
  if (v12)
  {
    v13 = *a3;
    v14 = a1 + 440;
    do
    {
      v15 = *(v12 + 32);
      v16 = v15 >= v13;
      v17 = v15 < v13;
      if (v16)
      {
        v14 = v12;
      }

      v12 = *(v12 + 8 * v17);
    }

    while (v12);
    if (v14 != a1 + 440 && v13 >= *(v14 + 32))
    {
      *(&v27[0].__locale_ + *(v25 - 24)) = 1;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, " CollectionPoint Distance=", 26);
      v18 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, "\n", 1);
    }
  }

  if ((v32 & 0x10) != 0)
  {
    v20 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v20 = v28;
    }

    locale = v27[4].__locale_;
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v19 = 0;
      a5[23] = 0;
      goto LABEL_31;
    }

    locale = v27[1].__locale_;
    v20 = v27[3].__locale_;
  }

  v19 = v20 - locale;
  if ((v20 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  a5[23] = v19;
  if (v19)
  {
    memmove(a5, locale, v19);
  }

LABEL_31:
  a5[v19] = 0;
  v25 = *MEMORY[0x1E69E54E8];
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v26 = MEMORY[0x1E69E5548] + 16;
  if (v30 < 0)
  {
    operator delete(v29);
  }

  v26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v33);
}

void sub_1B2EC9BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

void md::MuninStorefrontLabelFeature::~MuninStorefrontLabelFeature(md::MuninStorefrontLabelFeature *this)
{
  *this = &unk_1F2A38D00;
  v2 = (this + 712);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
  md::PointLabelFeature::~PointLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A38D00;
  v2 = (this + 712);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);

  md::PointLabelFeature::~PointLabelFeature(this);
}

void std::__shared_ptr_emplace<md::MuninStorefront>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0F0D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<StyleQueryOverride,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>,std::__unordered_map_hasher<StyleQueryOverride,std::__hash_value_type<StyleQueryOverride,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>,anonymous namespace::StyleQueryOverrideHash,std::equal_to<StyleQueryOverride>,true>,std::__unordered_map_equal<StyleQueryOverride,std::__hash_value_type<StyleQueryOverride,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>,std::equal_to<StyleQueryOverride>,anonymous namespace::StyleQueryOverrideHash,true>,std::allocator<std::__hash_value_type<StyleQueryOverride,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = (v1 + 24);
      std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::vector<ggl::Batcher>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v8 = (v4 - 56);
        std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
        v7 = *(v4 - 10);
        if (v7)
        {
          *(v4 - 9) = v7;
          operator delete(v7);
        }

        v4 -= 80;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    ggl::BufferMemory::~BufferMemory((v2 + 128));
    ggl::BufferMemory::~BufferMemory((v2 + 80));
    v3 = *(v2 + 72);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v2 + 24));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__deallocate_node(void *__p)
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
        v1[5] = v3;
        operator delete(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_1B2ECA7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gss::QueryOverrides::QueryOverrides(uint64_t a1, __int16 a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a1, 0x10002u) = a2;
  return a1;
}

uint64_t *std::unordered_map<StyleQueryOverride,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,anonymous namespace::StyleQueryOverrideHash,std::equal_to<StyleQueryOverride>,std::allocator<std::pair<StyleQueryOverride const,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>>::operator[](void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + ((v2 - 0x61C8864680B583EBLL) << 6) + ((v2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v2 - 0x61C8864680B583EBLL);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 + ((v2 - 0x61C8864680B583EBLL) << 6) + ((v2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v2 - 0x61C8864680B583EBLL);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 16) != v2 || *(v9 + 17) != v3)
  {
    goto LABEL_21;
  }

  return (v9 + 3);
}

void sub_1B2ECAAE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

unint64_t FeatureStyleAttributes::hash(FeatureStyleAttributes *this)
{
  v2 = *(this + 33);
  if (*(this + 33))
  {
    v3 = (*this + 4);
    result = 17;
    do
    {
      v5 = ((result << 6) - 0x61C8864680B583EBLL + (result >> 2) + *(v3 - 1)) ^ result;
      result = (*v3 - 0x61C8864680B583EBLL + (v5 << 6) + (v5 >> 2)) ^ v5;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    result = 17;
  }

  v6 = *(this + 32);
  if (*(this + 32))
  {
    v7 = (*(this + 3) + 4);
    do
    {
      v8 = ((result << 6) - 0x61C8864680B583EBLL + (result >> 2) + *(v7 - 1)) ^ result;
      v9 = *v7;
      v7 = (v7 + 12);
      result = (v9 - 0x61C8864680B583EBLL + (v8 << 6) + (v8 >> 2)) ^ v8;
      --v6;
    }

    while (v6);
  }

  return result;
}

void *md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>::finishedWriting(void *a1)
{
  v2 = a1[21];
  if (v2 && *v2 == a1[19])
  {
    *(v2 + 80) = 1;
  }

  v3 = a1[20];
  if (v3)
  {
    md::MeshSetStorage::finalize(v3);
  }

  ggl::BufferMemory::BufferMemory(v5);
  ggl::BufferMemory::operator=((a1 + 6), v5);
  ggl::BufferMemory::~BufferMemory(v5);
  ggl::BufferMemory::BufferMemory(v5);
  ggl::BufferMemory::operator=((a1 + 12), v5);
  ggl::BufferMemory::~BufferMemory(v5);
  return a1 + 3;
}

void std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__deallocate_node(*(a1 + 16));
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

void md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>::createMeshes(unsigned __int16 **a1, int a2, uint64_t a3, uint64_t a4, ResourceAccessor *a5)
{
  v9 = a1[20];
  if (v9)
  {
    md::MeshSetStorage::prepareStorage(v9, a5);
  }

  v13 = a5;
  v11 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    do
    {
      if (*v11 && *(v11 + 1))
      {
        md::MeshSetStorage::buildSubVertexData(&v16, a1[19], a1[21], a3, *v11);
        md::MeshSetStorage::buildSubIndexData(&v15, a1[19], a1[21], a4, *(v11 + 1));
        if (*(&v16 + 1))
        {
          atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      v11 += 4;
    }

    while (v11 != v10);
  }

  v12 = a1[3];
  if (v12 != a1[4])
  {
    ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(v14, **(*v12 + 64), 0, **a1, v13);
    ggl::BufferMemory::operator=((a1 + 6), v14);
    ggl::BufferMemory::~BufferMemory(v14);
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v14, *(*a1[3] + 96), 0, *(*a1 + 1), 1, 1, v13);
    ggl::BufferMemory::operator=((a1 + 12), v14);
    ggl::BufferMemory::~BufferMemory(v14);
  }
}

void sub_1B2ECB2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::PolygonBase::CompressedMeshMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2ECB778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void _setupRenderItemBatcherForCullingMask(void *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  ggl::Batcher::clearRanges(a1);
  for (i = 0; i != 16; ++i)
  {
    if ((a4 >> i))
    {
      v11 = *(a3 + 24 * i);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 24 * i + 8) - v11) >> 3) > a2)
      {
        v12 = (v11 + 24 * a2);
        v13 = *v12;
        v14 = v12[1];
        while (v13 != v14)
        {
          if (std::function<BOOL ()(unsigned long long)>::operator()(*(a5 + 24), *(v13 + 16)))
          {
            ggl::Batcher::addRange(a1, v13);
          }

          v13 += 24;
        }
      }
    }
  }
}

void sub_1B2ECB8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B2ECB9B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B2ECBA74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B2ECBB28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B2ECBBE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>::MeshSet(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ggl::BufferMemory::BufferMemory((a1 + 48));
  ggl::BufferMemory::BufferMemory((a1 + 96));
  *(a1 + 144) = 0;
  *(a1 + 146) = 0u;
  *(a1 + 162) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 152) = a2;
  if (!a2)
  {
    operator new();
  }

  operator new();
}

void sub_1B2ECC08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v11 = *(v9 + 176);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100]((v9 + 160), 0);
  ggl::BufferMemory::~BufferMemory((v9 + 96));
  ggl::BufferMemory::~BufferMemory((v9 + 48));
  a9 = (v9 + 24);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a9);
  v12 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>>::operator=[abi:nn200100]<md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 184) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate((a1 + 24));
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    ggl::BufferMemory::operator=(a1 + 48, a2 + 48);
    ggl::BufferMemory::operator=(a1 + 96, a2 + 96);
    *(a1 + 144) = *(a2 + 144);
    v5 = *(a2 + 160);
    *(a2 + 160) = 0;
    std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100]((a1 + 160), v5);
    v6 = *(a2 + 168);
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    v7 = *(a1 + 176);
    *(a1 + 168) = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    ggl::BufferMemory::BufferMemory(a1 + 48, a2 + 48);
    ggl::BufferMemory::BufferMemory(a1 + 96, a2 + 96);
    *(a1 + 144) = *(a2 + 144);
    v8 = *(a2 + 160);
    *(a2 + 160) = 0;
    *(a1 + 160) = v8;
    *(a1 + 176) = *(a2 + 176);
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a1 + 184) = 1;
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,unsigned int>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__tree<std::shared_ptr<md::MeshSetStorageClient>>::__emplace_unique_key_args<std::shared_ptr<md::MeshSetStorageClient>,std::shared_ptr<md::MeshSetStorageClient>&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<ggl::VertexData> ()(char const*,ggl::BufferData const&,gm::Range<unsigned long> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::shared_ptr<ggl::VertexData> ()(char const*,ggl::BufferData const&,gm::Range<unsigned long> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void non-virtual thunk toggl::VertexDataTyped<ggl::PolygonBase::CompressedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PolygonBase::CompressedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PolygonBase::CompressedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A59AD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::MeshSetStorageClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A57338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2ECC7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void _addRangeToList(uint64_t a1, unsigned int a2, unsigned int a3, __int128 *a4)
{
  v6 = 0;
  v7 = a3;
  v8 = a3 + 1;
  v9 = (a1 + 8);
  v31 = v8;
  do
  {
    if ((a2 >> v6))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*v9 - v10) >> 3);
      if (v12 <= v7)
      {
        v13 = v8;
        v14 = v8 - v12;
        v15 = v9[1];
        if (0xAAAAAAAAAAAAAAABLL * ((v15 - v11) >> 3) < v14)
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * (&v15[-v10] >> 3);
          v17 = 2 * v16;
          if (2 * v16 <= v13)
          {
            v17 = v13;
          }

          if (v16 >= 0x555555555555555)
          {
            v18 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v17;
          }

          if (v18 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_33;
        }

        bzero(*v9, 24 * ((24 * v14 - 24) / 0x18) + 24);
        *v9 = &v11[24 * ((24 * v14 - 24) / 0x18) + 24];
        v10 = *(v9 - 1);
        v8 = v31;
      }

      v19 = v10 + 24 * v7;
      v20 = *(v19 + 8);
      if (v20 != *v19 && *(v20 - 16) == *a4 && *(v20 - 8) == *(a4 + 2))
      {
        *(v20 - 16) = *(a4 + 1);
      }

      else
      {
        v21 = *(v19 + 16);
        if (v20 >= v21)
        {
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *v19) >> 3);
          v25 = v24 + 1;
          if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (0x5555555555555556 * ((v21 - *v19) >> 3) > v25)
          {
            v25 = 0x5555555555555556 * ((v21 - *v19) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v21 - *v19) >> 3) >= 0x555555555555555)
          {
            v26 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v26 = v25;
          }

          if (v26)
          {
            if (v26 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

LABEL_33:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v27 = 24 * v24;
          *v27 = *a4;
          *(v27 + 16) = *(a4 + 2);
          v23 = 24 * v24 + 24;
          v28 = *(v19 + 8) - *v19;
          v29 = 24 * v24 - v28;
          memcpy((v27 - v28), *v19, v28);
          v30 = *v19;
          *v19 = v29;
          *(v19 + 8) = v23;
          *(v19 + 16) = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          v22 = *a4;
          *(v20 + 16) = *(a4 + 2);
          *v20 = v22;
          v23 = v20 + 24;
        }

        *(v19 + 8) = v23;
      }
    }

    ++v6;
    v9 += 3;
  }

  while (v6 != 16);
}

void md::ARBuildingTileData::createDebugNode(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  md::MapTileData::createDebugNode(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(&v25, "ARBuildingTileData");
  v4 = gdc::DebugTreeNode::createChildNode(a2, &v25);
  if (SBYTE7(v26) < 0)
  {
    operator delete(v25);
  }

  std::string::basic_string[abi:nn200100]<0>(&v25, "VerticesProcessed");
  gdc::DebugTreeValue::DebugTreeValue(v22, a1[102]);
  gdc::DebugTreeNode::addProperty(v4, &v25, v22);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v26) < 0)
  {
    operator delete(v25);
  }

  std::string::basic_string[abi:nn200100]<0>(&v25, "Bounds");
  v5 = gdc::Registry::storage<arComponents::LocalBounds>(a1[99]);
  gdc::DebugTreeValue::DebugTreeValue(v19, 0xCF3CF3CF3CF3CF3DLL * ((*(v5 + 88) - *(v5 + 80)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v25, v19);
  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (SBYTE7(v26) < 0)
  {
    operator delete(v25);
  }

  std::vector<gdc::DebugTreeValue>::vector[abi:nn200100](&v17, (a1[104] - a1[103]) >> 3);
  v6 = a1[103];
  v7 = a1[104];
  if (v6 != v7)
  {
    v8 = v18[0];
    do
    {
      v9 = *v6;
      if (v8 >= v18[1])
      {
        v10 = (v8 - v17) >> 6;
        if ((v10 + 1) >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v11 = (v18[1] - v17) >> 5;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if ((v18[1] - v17) >= 0x7FFFFFFFFFFFFFC0)
        {
          v12 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        v27 = &v17;
        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeValue>>(v12);
        }

        *&v25 = 0;
        *(&v25 + 1) = v10 << 6;
        v26 = (v10 << 6);
        gdc::DebugTreeValue::DebugTreeValue(v10 << 6, v9);
        *&v26 = v26 + 64;
        v13 = (*(&v25 + 1) + v17 - v18[0]);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::DebugTreeValue>,gdc::DebugTreeValue*>(v17, v18[0], v13);
        v14 = v17;
        v15 = v18[1];
        v17 = v13;
        v16 = v26;
        *v18 = v26;
        *&v26 = v14;
        *(&v26 + 1) = v15;
        *&v25 = v14;
        *(&v25 + 1) = v14;
        std::__split_buffer<gdc::DebugTreeValue>::~__split_buffer(&v25);
        v8 = v16;
      }

      else
      {
        v8 = (gdc::DebugTreeValue::DebugTreeValue(v8, *v6) + 64);
      }

      v18[0] = v8;
      ++v6;
    }

    while (v6 != v7);
  }

  std::string::basic_string[abi:nn200100]<0>(&v25, "InteriorAsOutsideBuildingIds");
  gdc::DebugTreeNode::addProperty(v4, &v25, &v17);
  if (SBYTE7(v26) < 0)
  {
    operator delete(v25);
  }

  *&v25 = &v17;
  std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&v25);
}

void sub_1B2ECCD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  *(v13 - 128) = &a12;
  std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100]((v13 - 128));
  a12 = (v12 + 72);
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a12);
  a12 = (v12 + 48);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a12);
  if (*(v12 + 47) < 0)
  {
    operator delete(*(v12 + 24));
  }

  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

uint64_t md::ARBuildingTileData::estimatedCost(md::ARBuildingTileData *this)
{
  v1 = *(this + 86);
  if (v1)
  {
    v1 = *(v1 + 40);
  }

  return *(this + 102) + v1;
}

void md::ARBuildingTileData::~ARBuildingTileData(md::ARBuildingTileData *this)
{
  md::ARBuildingTileData::~ARBuildingTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0F110;
  *(this + 80) = &unk_1F2A0F150;
  md::RegistryManager::removeRegistry(*(this + 100), this);
  v2 = *(this + 103);
  if (v2)
  {
    *(this + 104) = v2;
    operator delete(v2);
  }

  v3 = *(this + 101);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 91);
  if (v4)
  {
    *(this + 92) = v4;
    operator delete(v4);
  }

  md::MapTileData::~MapTileData(this);
}

void sub_1B2ECCF18(_Unwind_Exception *a1)
{
  v3 = *(v1 + 103);
  if (v3)
  {
    *(v1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 101);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 91);
  if (v5)
  {
    *(v1 + 92) = v5;
    operator delete(v5);
  }

  md::MapTileData::~MapTileData(v1);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::components::SharedTransformData>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::components::SharedTransformData>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3A680;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1000C40D68FADA9);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::components::SharedTransformData>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3A680;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40D68FADA9);
  }

  return a1;
}

uint64_t gdc::Registry::storage<arComponents::LocalTransform>(uint64_t a1)
{
  v3 = 0x6F871FA174DA9A1FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6F871FA174DA9A1FuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::AssetDataReference>(uint64_t a1)
{
  v3 = 0x8FAA2839ECDE4573;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x8FAA2839ECDE4573);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<arComponents::AssetDataReference>::emplace(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v35);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v18 = a1[10];
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v18) >> 3);
      v20 = v19 + 1;
      if (v19 + 1 > 0x666666666666666)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v18) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x333333333333333)
      {
        v22 = 0x666666666666666;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v23 = 40 * v19;
      v24 = *(a3 + 8);
      *v23 = *a3;
      *(v23 + 8) = v24;
      v25 = *(a3 + 16);
      *(v23 + 16) = v25;
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      }

      *(40 * v19 + 0x18) = *(a3 + 24);
      v11 = v23 + 40;
      v34 = (v23 + 40);
      v27 = a1[10];
      v26 = a1[11];
      v28 = v23 + v27 - v26;
      if (v27 != v26)
      {
        v29 = a1[10];
        v30 = v28;
        do
        {
          *v30 = *v29;
          *(v30 + 8) = *(v29 + 8);
          *(v29 + 8) = 0;
          *(v29 + 16) = 0;
          *(v30 + 24) = *(v29 + 24);
          v29 += 40;
          v30 += 40;
        }

        while (v29 != v26);
        do
        {
          v31 = *(v27 + 16);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v31);
          }

          v27 += 40;
        }

        while (v27 != v26);
      }

      v32 = a1[10];
      a1[10] = v28;
      *(a1 + 11) = v34;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      v9 = *(a3 + 8);
      *v7 = *a3;
      *(v7 + 8) = v9;
      v10 = *(a3 + 16);
      *(v7 + 16) = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      *(v7 + 24) = *(a3 + 24);
      v11 = v7 + 40;
    }

    a1[11] = v11;
    v16 = a1[31];
LABEL_32:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v16, &v35, 1);
    }

    return;
  }

  v12 = a1[10] + 40 * ((v5 - a1[7]) >> 3);
  *v12 = *a3;
  v13 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v14 = *(v12 + 16);
  *(v12 + 8) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(a3 + 24);
  *(v12 + 32) = *(a3 + 32);
  *(v12 + 24) = v15;
  v16 = a1[31];
  if (v12 == a1[11])
  {
    goto LABEL_32;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v16, &v35, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<arComponents::AssetDataReference>::remove(void *a1, uint64_t a2)
{
  v17 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 40 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 32);
    *v6 = *(v7 - 40);
    v9 = *(v7 - 24);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(v6 + 16);
    *(v6 + 8) = v8;
    *(v6 + 16) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = *(v7 - 16);
    *(v6 + 32) = *(v7 - 8);
    *(v6 + 24) = v11;
    v12 = a1[11];
    v13 = *(v12 - 24);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    a1[11] = v12 - 40;
    v14 = a1[28];
    if (v14)
    {
      v15 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v14[6], v15, &v17, 1);
        v14 = *v14;
      }

      while (v14);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::AssetDataReference>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<arComponents::AssetDataReference>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<arComponents::AssetDataReference>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<arComponents::AssetDataReference>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<arComponents::AssetDataReference>::__destroy_vector::operator()[abi:nn200100](&v4);
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

BOOL gdc::ComponentStorageWrapper<arComponents::LocalTransform>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 48 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11] - 48;
    do
    {
      *(v6 + v7) = *(v8 + v7);
      v7 += 4;
    }

    while (v7 != 48);
    a1[11] = v8;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::LocalTransform>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::LocalTransform>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t gdc::ComponentStorageWrapper<arComponents::LocalBounds>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + 168 * ((v3 - a1[7]) >> 3);
  }

  if (v4 == a1[11])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void gdc::ComponentStorageWrapper<arComponents::LocalBounds>::emplace(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v46 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v46);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v22 = a1[10];
      v23 = 0xCF3CF3CF3CF3CF3DLL * ((v8 - v22) >> 3);
      if (v23 + 1 > 0x186186186186186)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = 0xCF3CF3CF3CF3CF3DLL * ((v7 - v22) >> 3);
      v25 = 2 * v24;
      if (2 * v24 <= v23 + 1)
      {
        v25 = v23 + 1;
      }

      if (v24 >= 0xC30C30C30C30C3)
      {
        v26 = 0x186186186186186;
      }

      else
      {
        v26 = v25;
      }

      v50 = a1 + 10;
      if (v26)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<arComponents::LocalBounds>>(v26);
      }

      v33 = 168 * v23;
      v47 = 0;
      v48 = v33;
      v49 = v33;
      v34 = *a3;
      v35 = a3[1];
      *(v33 + 32) = a3[2];
      v37 = a3[4];
      v36 = a3[5];
      v38 = a3[3];
      *(v33 + 96) = *(a3 + 12);
      *(v33 + 64) = v37;
      *(v33 + 80) = v36;
      *(v33 + 48) = v38;
      *v33 = v34;
      *(v33 + 16) = v35;
      std::__optional_copy_base<std::vector<gm::LineSegment<float,3>>,false>::__optional_copy_base[abi:nn200100](v33 + 104, a3 + 104);
      std::__optional_copy_base<geo::ConvexHull2<double>,false>::__optional_copy_base[abi:nn200100]((v33 + 136), a3 + 136);
      *&v49 = v49 + 168;
      v39 = a1[10];
      v40 = a1[11];
      v41 = v48 + v39 - v40;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<arComponents::LocalBounds>,arComponents::LocalBounds*>(v39, v40, v41);
      v42 = a1[10];
      a1[10] = v41;
      v43 = a1[12];
      v45 = v49;
      *(a1 + 11) = v49;
      *&v49 = v42;
      *(&v49 + 1) = v43;
      v47 = v42;
      v48 = v42;
      std::__split_buffer<arComponents::LocalBounds>::~__split_buffer(&v47);
      v14 = v45;
    }

    else
    {
      v9 = *a3;
      v10 = a3[2];
      *(v8 + 16) = a3[1];
      *(v8 + 32) = v10;
      *v8 = v9;
      v11 = a3[3];
      v12 = a3[4];
      v13 = a3[5];
      *(v8 + 96) = *(a3 + 12);
      *(v8 + 64) = v12;
      *(v8 + 80) = v13;
      *(v8 + 48) = v11;
      std::__optional_copy_base<std::vector<gm::LineSegment<float,3>>,false>::__optional_copy_base[abi:nn200100](v8 + 104, a3 + 104);
      std::__optional_copy_base<geo::ConvexHull2<double>,false>::__optional_copy_base[abi:nn200100]((v8 + 136), a3 + 136);
      v14 = v8 + 168;
      a1[11] = v8 + 168;
    }

    a1[11] = v14;
    v31 = a1[31];
LABEL_39:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v31, &v46, 1);
    }

    return;
  }

  v15 = a1[10] + 168 * ((v5 - a1[7]) >> 3);
  v17 = a3[4];
  v16 = a3[5];
  v18 = a3[3];
  *(v15 + 96) = *(a3 + 12);
  *(v15 + 64) = v17;
  *(v15 + 80) = v16;
  *(v15 + 48) = v18;
  v19 = *a3;
  v20 = a3[2];
  *(v15 + 16) = a3[1];
  *(v15 + 32) = v20;
  *v15 = v19;
  if (*(v15 + 128) == *(a3 + 128))
  {
    if (*(v15 + 128))
    {
      v21 = *(v15 + 104);
      if (v21)
      {
        *(v15 + 112) = v21;
        operator delete(v21);
        *(v15 + 104) = 0;
        *(v15 + 112) = 0;
        *(v15 + 120) = 0;
      }

      *(v15 + 104) = *(a3 + 104);
      *(v15 + 120) = *(a3 + 15);
      *(a3 + 13) = 0;
      *(a3 + 14) = 0;
      *(a3 + 15) = 0;
    }
  }

  else if (*(v15 + 128))
  {
    v27 = *(v15 + 104);
    if (v27)
    {
      *(v15 + 112) = v27;
      operator delete(v27);
    }

    *(v15 + 128) = 0;
  }

  else
  {
    *(v15 + 104) = 0;
    *(v15 + 112) = 0;
    *(v15 + 120) = 0;
    *(v15 + 104) = *(a3 + 104);
    *(v15 + 120) = *(a3 + 15);
    *(a3 + 13) = 0;
    *(a3 + 14) = 0;
    *(a3 + 15) = 0;
    *(v15 + 128) = 1;
  }

  v28 = *(v15 + 160);
  if (v28 == *(a3 + 160))
  {
    if (v15 != a3 && v28 != 0)
    {
      std::vector<gm::Matrix<double,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>((v15 + 136), *(a3 + 17), *(a3 + 18), (*(a3 + 18) - *(a3 + 17)) >> 4);
    }
  }

  else if (*(v15 + 160))
  {
    v30 = *(v15 + 136);
    if (v30)
    {
      *(v15 + 144) = v30;
      operator delete(v30);
    }

    *(v15 + 160) = 0;
  }

  else
  {
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    *(v15 + 152) = 0;
    *(v15 + 136) = *(a3 + 136);
    *(v15 + 152) = *(a3 + 19);
    *(a3 + 17) = 0;
    *(a3 + 18) = 0;
    *(a3 + 19) = 0;
    *(v15 + 160) = 1;
  }

  v31 = a1[31];
  if (v15 == a1[11])
  {
    goto LABEL_39;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v31, &v46, 1);
  }
}

void sub_1B2ECDE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 128) == 1)
  {
    v6 = *(v4 + 104);
    if (v6)
    {
      *(v4 + 112) = v6;
      operator delete(v6);
    }
  }

  std::__split_buffer<arComponents::LocalBounds>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<arComponents::LocalBounds>>(unint64_t a1)
{
  if (a1 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__optional_copy_base<std::vector<gm::LineSegment<float,3>>,false>::__optional_copy_base[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    std::vector<gm::LineSegment<float,3>>::vector[abi:nn200100](a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1B2ECDF90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<geo::ConvexHull2<double>,false>::__optional_copy_base[abi:nn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  if (*(a2 + 24) == 1)
  {
    geo::ConvexHull2<double>::ConvexHull2(a1, a2);
    a1[24] = 1;
  }

  return a1;
}

void sub_1B2ECE000(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<arComponents::LocalBounds>,arComponents::LocalBounds*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a3 + 104;
    v6 = a1 + 104;
    do
    {
      v7 = *(v6 - 104);
      v8 = *(v6 - 88);
      *(v5 - 72) = *(v6 - 72);
      *(v5 - 88) = v8;
      *(v5 - 104) = v7;
      v9 = *(v6 - 56);
      v10 = *(v6 - 40);
      v11 = *(v6 - 24);
      *(v5 - 8) = *(v6 - 8);
      *(v5 - 24) = v11;
      *(v5 - 40) = v10;
      *(v5 - 56) = v9;
      *v5 = 0;
      *(v5 + 24) = 0;
      if (*(v6 + 24) == 1)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *v5 = *v6;
        *(v5 + 16) = *(v6 + 16);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v5 + 24) = 1;
      }

      v12 = v6 - 104;
      *(v5 + 32) = 0;
      *(v5 + 56) = 0;
      if (*(v6 + 56) == 1)
      {
        *(v5 + 32) = 0;
        *(v5 + 40) = 0;
        *(v5 + 48) = 0;
        *(v5 + 32) = *(v6 + 32);
        *(v5 + 48) = *(v6 + 48);
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
        *(v6 + 48) = 0;
        *(v5 + 56) = 1;
      }

      v5 += 168;
      v6 += 168;
    }

    while (v12 + 168 != a2);
    do
    {
      std::allocator_traits<std::allocator<arComponents::LocalBounds>>::destroy[abi:nn200100]<arComponents::LocalBounds,void,0>(v4);
      v4 += 168;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<arComponents::LocalBounds>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 168;
    std::allocator_traits<std::allocator<arComponents::LocalBounds>>::destroy[abi:nn200100]<arComponents::LocalBounds,void,0>(i - 168);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<arComponents::LocalBounds>>::destroy[abi:nn200100]<arComponents::LocalBounds,void,0>(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v2 = *(a1 + 136);
    if (v2)
    {
      *(a1 + 144) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 128) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      *(a1 + 112) = v3;

      operator delete(v3);
    }
  }
}

void md::SelectedPolygonTileResourceFetcher::~SelectedPolygonTileResourceFetcher(md::SelectedPolygonTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void md::FlyoverMetaDataRequester::requestDataKeys(md::FlyoverMetaDataRequester *this, const gdc::SelectionContext *a2)
{
  v2 = this;
  v74 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  if (*(a2 + 82) == 1)
  {
    v4 = *(*(a2 + 9) + 24);
    if (v4)
    {
      v49 = v3;
      do
      {
        RegionAreas = md::FlyoverRegionManager::getRegionAreas(**(v2 + 3), (v4 + 2));
        v6 = *RegionAreas;
        v50 = *(RegionAreas + 8);
        v7 = a2;
        if (*RegionAreas != v50)
        {
          do
          {
            v8 = *(*v6 + 120);
            v9 = *(*v6 + 128);
            while (v8 != v9)
            {
              v10 = *(v4 + 17);
              if (*(v8 + 4) <= v10)
              {
                v11 = *(v8 + 8);
                if (v11 >= v10 && v10 + 2 > v11)
                {
                  v13 = v11 + 1;
                  v14 = v11 + 1 - v10;
                  v15 = *(v4 + 5) << v14;
                  v16 = *(v4 + 6) << v14;
                  v17 = *(v7 + 9);
                  v18 = (((((v11 + 1) + 0x53A3C687B1BC605ALL) ^ 0x9E3779B97F4A7D14) << 6) - 0x61C8864680B583EBLL + ((((v11 + 1) + 0x53A3C687B1BC605ALL) ^ 0x9E3779B97F4A7D14) >> 2) + v15) ^ ((v11 + 1) + 0x53A3C687B1BC605ALL) ^ 0x9E3779B97F4A7D14;
                  v19 = v16 - 0x61C8864680B583EBLL + (v18 << 6) + (v18 >> 2);
                  v20 = v19 ^ v18;
                  v21 = v17[2];
                  if (v21)
                  {
                    v22 = vcnt_s8(v21);
                    v22.i16[0] = vaddlv_u8(v22);
                    v23 = v22.u32[0];
                    if (v22.u32[0] > 1uLL)
                    {
                      v24 = v19 ^ v18;
                      if (v20 >= *&v21)
                      {
                        v24 = v20 % *&v21;
                      }
                    }

                    else
                    {
                      v24 = v20 & (*&v21 - 1);
                    }

                    v25 = *(*&v17[1] + 8 * v24);
                    if (v25)
                    {
                      v26 = *v25;
                      if (*v25)
                      {
                        v27 = *&v21 - 1;
                        do
                        {
                          v28 = *(v26 + 1);
                          if (v20 == v28)
                          {
                            if (v26[40] == 1)
                            {
                              v47 = v6;
                              v46 = v16;
                              v45 = v27;
                              geo::QuadTile::computeHash(v26 + 16);
                              v27 = v45;
                              v16 = v46;
                              v6 = v47;
                              v7 = a2;
                              v26[40] = 0;
                            }

                            if (*(v26 + 4) == v20 && v26[16] == 255 && v26[17] == v13 && *(v26 + 5) == v15 && *(v26 + 6) == v16)
                            {
                              goto LABEL_12;
                            }
                          }

                          else
                          {
                            if (v23 > 1)
                            {
                              if (v28 >= *&v21)
                              {
                                v28 %= *&v21;
                              }
                            }

                            else
                            {
                              v28 &= v27;
                            }

                            if (v28 != v24)
                            {
                              break;
                            }
                          }

                          v26 = *v26;
                        }

                        while (v26);
                      }
                    }
                  }

                  v29 = v16;
                  v56 = (v13 | ((~(-1 << v13) + (v15 % (1 << v13) + (1 << v13)) / (1 << v13) * (1 << v13) - (v15 % (1 << v13) + (1 << v13))) << 32));
                  v57 = ((v16 % (1 << v13) + (1 << v13)) % (1 << v13));
                  v30 = v6;
                  FileIndexToLoadForKey = geo::c3mm::C3mmArea::getFileIndexToLoadForKey(*v6, &v56);
                  if (FileIndexToLoadForKey != -1)
                  {
                    v65[1] = v13;
                    *&v65[4] = v15;
                    *&v65[8] = v29;
                    v65[0] = -1;
                    v67 = v20;
                    v68 = 0;
                    BYTE1(v69) = FileIndexToLoadForKey;
                    HIDWORD(v69) = ~(-1 << FileIndexToLoadForKey) - HIDWORD(FileIndexToLoadForKey);
                    v70 = v32;
                    LOBYTE(v69) = -1;
                    v71 = 0;
                    v72 = 1;
                    v73 = *(v30 + 4);
                    std::vector<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair,std::allocator<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair>>::push_back[abi:nn200100](&v62, v65);
                    v7 = a2;
                    v6 = v30;
                    break;
                  }

                  v7 = a2;
                  v6 = v30;
                }
              }

LABEL_12:
              v8 += 12;
            }

            v6 += 3;
          }

          while (v6 != v50);
        }

        v4 = *v4;
        v2 = this;
        v3 = v49;
      }

      while (v4);
    }
  }

  else
  {
    for (i = *(*(a2 + 8) + 24); i; i = *i)
    {
      v34 = *(i + 17);
      v35 = (*(i + 5) % (1 << v34) + (1 << v34)) % (1 << v34);
      v36 = (*(i + 6) % (1 << v34) + (1 << v34)) % (1 << v34);
      LOBYTE(v56) = *(i + 16);
      BYTE1(v56) = v34;
      HIDWORD(v56) = v35;
      LODWORD(v57) = v36;
      v58 = 0;
      v59 = 1;
      v37 = md::FlyoverRegionManager::getRegionAreas(**(v2 + 3), &v56);
      v61[0] = BYTE1(v56) | ((~(-1 << SBYTE1(v56)) - HIDWORD(v56)) << 32);
      v61[1] = v57;
      v38 = *v37;
      v39 = v37[1];
      while (v38 != v39)
      {
        v40 = geo::c3mm::C3mmArea::getFileIndexToLoadForKey(*v38, v61);
        if (v40 != -1)
        {
          *&v65[4] = *(i + 20);
          *v65 = *(i + 8);
          v67 = i[4];
          v68 = *(i + 40);
          BYTE1(v69) = v40;
          HIDWORD(v69) = ~(-1 << v40) - HIDWORD(v40);
          v70 = v41;
          LOBYTE(v69) = -1;
          v71 = 0;
          v72 = 1;
          v73 = *(v38 + 16);
          std::vector<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair,std::allocator<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair>>::push_back[abi:nn200100](&v62, v65);
        }

        v38 += 24;
      }
    }
  }

  v43 = v62;
  v42 = v63;
  if (v62 != v63)
  {
    v44 = v62;
    do
    {
      *v65 = vrev64_s32(*(v44 + 36));
      *&v65[8] = v44[33];
      v66 = 255;
      LODWORD(v67) = *(v44 + 16);
      gdc::GenericKey::GenericKey(&v56, v65, 5);
      v52[0] = v55;
      v52[1] = v55;
      v53 = v55;
      v54 = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(v52, v56, v57);
      v55[4] = v60;
      gdc::LayerDataRequestKey::LayerDataRequestKey(v65, 0, 0x4Cu, v52, -1073741827);
      if (v52[0] != v53)
      {
        free(v52[0]);
      }

      gdc::LayerDataCollector::addDataKey(v3, v65, v44);
      if (v67 != v69)
      {
        free(v67);
      }

      if (v56 != v58)
      {
        free(v56);
      }

      v44 += 72;
    }

    while (v44 != v42);
  }

  if (v43)
  {
    operator delete(v43);
  }
}

void sub_1B2ECE818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair,std::allocator<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair>>::push_back[abi:nn200100](void **a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0x38E38E38E38E38ELL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x1C71C71C71C71C7)
    {
      v9 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 8 * ((v4 - *a1) >> 3);
    std::allocator_traits<std::allocator<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair>>::construct[abi:nn200100]<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair,md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair,void,0>(v10, a2);
    v5 = v10 + 72;
    v11 = *a1;
    v12 = *a1 - v4;
    v13 = (v10 + v12);
    if (*a1 != v4)
    {
      v14 = v10 + v12;
      do
      {
        std::allocator_traits<std::allocator<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair>>::construct[abi:nn200100]<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair,md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair,void,0>(v14, v11);
        v11 += 72;
        v14 += 72;
      }

      while (v11 != v4);
      v11 = *a1;
    }

    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    std::allocator_traits<std::allocator<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair>>::construct[abi:nn200100]<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair,md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair,void,0>(a1[1], a2);
    v5 = (v4 + 72);
  }

  a1[1] = v5;
}

double std::allocator_traits<std::allocator<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair>>::construct[abi:nn200100]<md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair,md::FlyoverMetaDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::TileResourcePair,void,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 4) = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 56) = 0;
  result = *(a2 + 36);
  *(a1 + 36) = result;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void md::FlyoverMetaDataRequester::~FlyoverMetaDataRequester(md::FlyoverMetaDataRequester *this)
{
  *this = &unk_1F2A0F248;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0F248;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

double md::ARAppLocationProvider::update(uint64_t a1, md::LayoutContext *this)
{
  md::LayoutContext::frameState(this);
  result = *(v3 + 72);
  *(a1 + 24) = vmulq_f64(*(v3 + 56), vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  *(a1 + 40) = result;
  return result;
}

void md::LabelClusterBuilder::createClusters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70[5] = *MEMORY[0x1E69E9840];
  std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::vector[abi:nn200100](v69, a2);
  std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::vector[abi:nn200100](v68, a2);
  v5 = 126 - 2 * __clz((*&v69[8] - *v69) >> 3);
  if (*&v69[8] == *v69)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByX &,md::ClusterNode **,false>(*v69, *&v69[8], v6, 1);
  v7 = 126 - 2 * __clz((*&v68[8] - *v68) >> 3);
  if (*&v68[8] == *v68)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByY &,md::ClusterNode **,false>(*v68, *&v68[8], v8, 1);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v9 = (*&v69[8] - *v69) >> 3;
  if (v9 >= 2)
  {
    v10 = *(a1 + 8) * 0.001953125;
    v11 = 0.0;
    do
    {
      v63 = 0;
      v64 = 0;
      v62 = 1.79769313e308;
      md::LabelClusterBuilder::findClosestPair(v69, 0, v9, &v62, &v63, v68);
      if (v63)
      {
        v12 = v64 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        break;
      }

      v13 = v62;
      if (v62 > v10)
      {
        break;
      }

      if (v62 < v11)
      {
        v62 = v11;
        v13 = v11;
      }

      v70[0] = *&v13;
      v14 = *(a3 + 24);
      if (!v14)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      v15 = (*(*v14 + 48))(v14, &v63, v70);
      v61 = v15;
      std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](&v65, &v61);
      v16 = v63;
      v17 = v64;
      v19 = *&v69[8];
      v18 = *v69;
      v20 = (*&v69[8] - *v69) >> 3;
      memset(v70, 0, 24);
      v21 = v20 - 1;
      if (v20 != 1)
      {
        std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](v70, v20 - 1);
        v22 = v70[1];
        bzero(v70[1], 8 * v21);
        v70[1] = &v22[8 * v21];
        v19 = *&v69[8];
        v18 = *v69;
      }

      v23 = v70[0];
      if (v18 == v19)
      {
        v25 = 0;
LABEL_35:
        v23[v25] = v15;
        goto LABEL_36;
      }

      v24 = 0;
      v25 = 0;
      do
      {
        v26 = *v18;
        if (*v18 != v16 && v26 != v17)
        {
          if (v24)
          {
            goto LABEL_28;
          }

          if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v15, *v18))
          {
            v23[v25++] = v15;
LABEL_28:
            v24 = 1;
          }

          else
          {
            v24 = 0;
          }

          v23[v25++] = v26;
        }

        ++v18;
      }

      while (v18 != v19);
      if ((v24 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_36:
      v28 = *&v69[16];
      v29 = *&v70[1];
      v30 = *v69;
      *v69 = v23;
      *v70 = v30;
      *&v69[8] = v29;
      v70[2] = v28;
      std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v70);
      v32 = *&v68[8];
      v31 = *v68;
      v33 = (*&v68[8] - *v68) >> 3;
      memset(v70, 0, 24);
      v34 = v33 - 1;
      if (v33 != 1)
      {
        std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](v70, v33 - 1);
        v35 = v70[1];
        bzero(v70[1], 8 * v34);
        v70[1] = &v35[8 * v34];
        v32 = *&v68[8];
        v31 = *v68;
      }

      v36 = v70[0];
      if (v31 == v32)
      {
        v38 = 0;
LABEL_54:
        v36[v38] = v15;
        goto LABEL_55;
      }

      v37 = 0;
      v38 = 0;
      while (2)
      {
        v39 = *v31;
        if (*v31 != v16 && v39 != v17)
        {
          if (v37)
          {
            goto LABEL_47;
          }

          if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v15, *v31))
          {
            v36[v38++] = v15;
LABEL_47:
            v37 = 1;
          }

          else
          {
            v37 = 0;
          }

          v36[v38++] = v39;
        }

        if (++v31 != v32)
        {
          continue;
        }

        break;
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_54;
      }

LABEL_55:
      v41 = *&v68[16];
      v42 = *&v70[1];
      v43 = *v68;
      *v68 = v36;
      *v70 = v43;
      *&v68[8] = v42;
      v70[2] = v41;
      std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v70);
      v9 = (*&v69[8] - *v69) >> 3;
      v11 = v13;
    }

    while (v9 > 1);
  }

  v44 = (*a1 * 5.0);
  if ((v44 & 0x80000000) == 0)
  {
    v45 = 0;
    v46 = 1;
    do
    {
      v47 = v45;
      v48 = *(a1 + 8);
      v49 = exp2(-(v44 * 0.2)) * (0.001953125 * v48);
      v50 = v45;
      do
      {
        v45 = v50;
        if (v50 >= v66 - v65)
        {
          break;
        }

        v51 = (*(*v65[v50] + 48))(v65[v50]);
        v50 = v45 + 1;
      }

      while (v51 <= v49);
      for (i = v45; i > v47; --i)
      {
        v53 = v65[i - 1];
        if (!v53[80])
        {
          (*(*v53 + 56))(v53, v46 & 1, v44 * 0.2);
        }
      }

      v46 = 0;
    }

    while (v44-- > 0);
  }

  v55 = v65;
  for (j = v66; v55 != j; ++v55)
  {
    if ((*(**v55 + 40))())
    {
      memset(v70, 0, 24);
      (*(**v55 + 16))(*v55, v70, 2, 0);
      v57 = v70[0];
      v58 = v70[1];
      while (v57 != v58)
      {
        v59 = *v57++;
        *(v59 + 8) = 1132199936;
      }

      std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v70);
    }
  }

  std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v65);
  std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v68);
  std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v69);
}

void sub_1B2ECF94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](a1, v5 >> 3);
    v6 = *(a1 + 8);
    memmove(v6, v4, v5);
    *(a1 + 8) = &v6[v5];
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByX &,md::ClusterNode **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = &a2[-1].u64[1];
  v9 = v7;
  v124 = a2;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v8, v9->i64[0]);
      if (result)
      {
        v77 = v9->i64[0];
        v9->i64[0] = *v8;
LABEL_103:
        *v8 = v77;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v80 = &v9->u64[1];
      v82 = v9 == a2 || v80 == a2;
      if (a4)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v9;
          do
          {
            v86 = *v84;
            v85 = v84[1];
            v84 = v80;
            result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v85, v86);
            if (result)
            {
              v87 = *v84;
              v88 = v83;
              while (1)
              {
                *(&v9->i64[1] + v88) = *(v9->i64 + v88);
                if (!v88)
                {
                  break;
                }

                result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v87, *(&v9->u64[-1] + v88));
                v88 -= 8;
                if ((result & 1) == 0)
                {
                  i64 = (&v9->i64[1] + v88);
                  goto LABEL_125;
                }
              }

              i64 = v9->i64;
LABEL_125:
              *i64 = v87;
            }

            v80 = v84 + 1;
            v83 += 8;
          }

          while (v84 + 1 != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v119 = *v7;
          v118 = v7[1];
          v7 = v80;
          result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v118, v119);
          if (result)
          {
            v120 = *v7;
            v121 = v7;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v80 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v90 = v11 >> 1;
        v91 = v11 >> 1;
        do
        {
          v92 = v91;
          if (v90 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = &v7[v93];
            if (2 * v91 + 2 < v10 && md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = &v7[v92];
            result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v90 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = &v7[v98];
                v99 = 2 * v93 + 2;
                if (v99 < v10 && md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = 0;
          v102 = *v7;
          v103 = v7;
          do
          {
            v104 = &v103[v101];
            v105 = v104 + 1;
            v106 = (2 * v101) | 1;
            v107 = 2 * v101 + 2;
            if (v107 >= v10)
            {
              v101 = (2 * v101) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v101 = v107;
              }

              else
              {
                v101 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v101 <= (v10 - 2) / 2);
          if (v105 == --v100)
          {
            *v105 = v102;
          }

          else
          {
            *v105 = *v100;
            *v100 = v102;
            v110 = (v105 - v7 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = &v7[v112 >> 1];
              result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = &v7[v113];
                  result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v10-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v10 >> 1;
    if (v10 < 0x81)
    {
      v16 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v7, v7[v12]);
      v17 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v8, *v7);
      if (v16)
      {
        v18 = v7[v12];
        if (v17)
        {
          v7[v12] = *v8;
          *v8 = v18;
        }

        else
        {
          v7[v12] = *v7;
          *v7 = v18;
          if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v8, v18))
          {
            v30 = *v7;
            *v7 = *v8;
            *v8 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = *v7;
        *v7 = *v8;
        *v8 = v21;
        if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v7, v7[v12]))
        {
          v22 = v7[v12];
          v7[v12] = *v7;
          *v7 = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v7[v12], *v7);
    v14 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v8, v7[v12]);
    if (v13)
    {
      v15 = *v7;
      if (v14)
      {
        *v7 = *v8;
        *v8 = v15;
      }

      else
      {
        *v7 = v7[v12];
        v7[v12] = v15;
        if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v8, v15))
        {
          v23 = v7[v12];
          v7[v12] = *v8;
          *v8 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = v7[v12];
      v7[v12] = *v8;
      *v8 = v19;
      if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v7[v12], *v7))
      {
        v20 = *v7;
        *v7 = v7[v12];
        v7[v12] = v20;
      }
    }

    v24 = v12 - 1;
    v25 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v7[v12 - 1], v7[1]);
    v26 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(a2[-1].u64[0], v7[v12 - 1]);
    if (v25)
    {
      v27 = v7[1];
      if (v26)
      {
        v7[1] = a2[-1].u64[0];
        a2[-1].i64[0] = v27;
      }

      else
      {
        v7[1] = v7[v24];
        v7[v24] = v27;
        if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(a2[-1].u64[0], v27))
        {
          v31 = v7[v24];
          v7[v24] = a2[-1].u64[0];
          a2[-1].i64[0] = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = v7[v24];
      v7[v24] = a2[-1].u64[0];
      a2[-1].i64[0] = v28;
      if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v7[v24], v7[1]))
      {
        v29 = v7[1];
        v7[1] = v7[v24];
        v7[v24] = v29;
      }
    }

    v32 = v12 + 1;
    v33 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v7[v12 + 1], v7[2]);
    v34 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(a2[-2].u64[1], v7[v12 + 1]);
    if (v33)
    {
      v35 = v7[2];
      if (v34)
      {
        v7[2] = a2[-2].u64[1];
        a2[-2].i64[1] = v35;
      }

      else
      {
        v7[2] = v7[v32];
        v7[v32] = v35;
        if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(a2[-2].u64[1], v35))
        {
          v38 = v7[v32];
          v7[v32] = a2[-2].u64[1];
          a2[-2].i64[1] = v38;
        }
      }
    }

    else if (v34)
    {
      v36 = v7[v32];
      v7[v32] = a2[-2].u64[1];
      a2[-2].i64[1] = v36;
      if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v7[v32], v7[2]))
      {
        v37 = v7[2];
        v7[2] = v7[v32];
        v7[v32] = v37;
      }
    }

    v39 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v7[v12], v7[v24]);
    v40 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v7[v32], v7[v12]);
    if (!v39)
    {
      v42 = v7[v12];
      if (!v40)
      {
        goto LABEL_54;
      }

      v43 = v7[v32];
      v7[v12] = v43;
      v7[v32] = v42;
      v44 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v43, v7[v24]);
      v42 = v7[v12];
      if (!v44)
      {
        goto LABEL_54;
      }

      v45 = v7[v24];
      v7[v24] = v42;
      v7[v12] = v45;
      goto LABEL_53;
    }

    v41 = v7[v24];
    if (v40)
    {
      v7[v24] = v7[v32];
      v7[v32] = v41;
      v42 = v7[v12];
    }

    else
    {
      v7[v24] = v7[v12];
      v7[v12] = v41;
      v46 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v7[v32], v41);
      v42 = v7[v12];
      if (v46)
      {
        v45 = v7[v32];
        v7[v12] = v45;
        v7[v32] = v42;
LABEL_53:
        v42 = v45;
      }
    }

LABEL_54:
    v47 = *v7;
    *v7 = v42;
    v7[v12] = v47;
LABEL_55:
    --a3;
    v48 = *v7;
    if ((a4 & 1) != 0 || (v49 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*(v7 - 1), *v7), v48 = *v7, v49))
    {
      v50 = v7;
      do
      {
        v51 = v50;
        v52 = v50[1];
        ++v50;
      }

      while (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v52, v48));
      v53 = a2;
      if (v51 == v7)
      {
        v53 = a2;
        do
        {
          if (v50 >= v53)
          {
            break;
          }

          v55 = *--v53;
        }

        while (!md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v55, v48));
      }

      else
      {
        do
        {
          v54 = *--v53;
        }

        while (!md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v54, v48));
      }

      if (v50 < v53)
      {
        v56 = v50;
        v57 = v53;
        do
        {
          v58 = *v56;
          *v56 = *v57;
          *v57 = v58;
          do
          {
            v51 = v56;
            v59 = v56[1];
            ++v56;
          }

          while (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v59, v48));
          do
          {
            v60 = *--v57;
          }

          while (!md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v60, v48));
        }

        while (v56 < v57);
      }

      if (v51 != v7)
      {
        *v7 = *v51;
      }

      *v51 = v48;
      a2 = v124;
      if (v50 < v53)
      {
        goto LABEL_76;
      }

      v61 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByX &,md::ClusterNode **>(v7, v51);
      v9 = (v51 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByX &,md::ClusterNode **>((v51 + 1), v124);
      if (result)
      {
        a2 = v51;
        if (!v61)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v61)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByX &,md::ClusterNode **,false>(v7, v51, a3, a4 & 1);
        a4 = 0;
        v9 = (v51 + 1);
      }
    }

    else
    {
      result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v7, *v8);
      if (result)
      {
        v9 = v7;
        do
        {
          v62 = v9->u64[1];
          v9 = (v9 + 8);
          result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v48, v62);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v63 = (v7 + 1);
        do
        {
          v9 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v63 = (v63 + 8);
          result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v48, v9->i64[0]);
        }

        while (!result);
      }

      v64 = a2;
      if (v9 < a2)
      {
        v64 = a2;
        do
        {
          v65 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v48, v65);
        }

        while ((result & 1) != 0);
      }

      while (v9 < v64)
      {
        v66 = v9->i64[0];
        v9->i64[0] = v64->i64[0];
        v64->i64[0] = v66;
        do
        {
          v67 = v9->u64[1];
          v9 = (v9 + 8);
        }

        while (!md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v48, v67));
        do
        {
          v68 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v48, v68);
        }

        while ((result & 1) != 0);
      }

      v69 = &v9[-1].u64[1];
      if (&v9[-1].u64[1] != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v48;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByX &,md::ClusterNode **,0>(v9, &v9->u64[1], &v9[1], v8);
    }

    if (v10 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByX &,md::ClusterNode **,0>(v9, &v9->u64[1], &v9[1], &v9[1].u64[1]);
      result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v8, v9[1].u64[1]);
      if (!result)
      {
        return result;
      }

      v70 = v9[1].u64[1];
      v9[1].i64[1] = *v8;
      *v8 = v70;
      result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v9[1].u64[1], v9[1].u64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v9[1].i64[0];
      v71 = v9[1].u64[1];
      v73 = v9->u64[1];
      v9[1].i64[0] = v71;
      v9[1].i64[1] = v72;
      result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v71, v73);
      if (!result)
      {
        return result;
      }

      v75 = v9->i64[1];
      v74 = v9[1].u64[0];
      v76 = v9->i64[0];
      v9->i64[1] = v74;
      v9[1].i64[0] = v75;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v78 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v9->u64[1], v9->i64[0]);
  result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v8, v9->u64[1]);
  if (!v78)
  {
    if (!result)
    {
      return result;
    }

    v117 = v9->u64[1];
    v9->i64[1] = *v8;
    *v8 = v117;
    v76 = v9->i64[0];
    v74 = v9->u64[1];
LABEL_164:
    result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v74, v76);
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v79 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *v8;
    *v8 = v79;
  }

  else
  {
    v9->i64[0] = v9->i64[1];
    v9->i64[1] = v79;
    result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v8, v79);
    if (result)
    {
      v77 = v9->u64[1];
      v9->i64[1] = *v8;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByY &,md::ClusterNode **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = &a2[-1].u64[1];
  v9 = v7;
  v124 = a2;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v8, v9->i64[0]);
      if (result)
      {
        v77 = v9->i64[0];
        v9->i64[0] = *v8;
LABEL_103:
        *v8 = v77;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v80 = &v9->u64[1];
      v82 = v9 == a2 || v80 == a2;
      if (a4)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v9;
          do
          {
            v86 = *v84;
            v85 = v84[1];
            v84 = v80;
            result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v85, v86);
            if (result)
            {
              v87 = *v84;
              v88 = v83;
              while (1)
              {
                *(&v9->i64[1] + v88) = *(v9->i64 + v88);
                if (!v88)
                {
                  break;
                }

                result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v87, *(&v9->u64[-1] + v88));
                v88 -= 8;
                if ((result & 1) == 0)
                {
                  i64 = (&v9->i64[1] + v88);
                  goto LABEL_125;
                }
              }

              i64 = v9->i64;
LABEL_125:
              *i64 = v87;
            }

            v80 = v84 + 1;
            v83 += 8;
          }

          while (v84 + 1 != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v119 = *v7;
          v118 = v7[1];
          v7 = v80;
          result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v118, v119);
          if (result)
          {
            v120 = *v7;
            v121 = v7;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v80 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v90 = v11 >> 1;
        v91 = v11 >> 1;
        do
        {
          v92 = v91;
          if (v90 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = &v7[v93];
            if (2 * v91 + 2 < v10 && md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = &v7[v92];
            result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v90 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = &v7[v98];
                v99 = 2 * v93 + 2;
                if (v99 < v10 && md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = 0;
          v102 = *v7;
          v103 = v7;
          do
          {
            v104 = &v103[v101];
            v105 = v104 + 1;
            v106 = (2 * v101) | 1;
            v107 = 2 * v101 + 2;
            if (v107 >= v10)
            {
              v101 = (2 * v101) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v101 = v107;
              }

              else
              {
                v101 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v101 <= (v10 - 2) / 2);
          if (v105 == --v100)
          {
            *v105 = v102;
          }

          else
          {
            *v105 = *v100;
            *v100 = v102;
            v110 = (v105 - v7 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = &v7[v112 >> 1];
              result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = &v7[v113];
                  result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v10-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v10 >> 1;
    if (v10 < 0x81)
    {
      v16 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v7, v7[v12]);
      v17 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v8, *v7);
      if (v16)
      {
        v18 = v7[v12];
        if (v17)
        {
          v7[v12] = *v8;
          *v8 = v18;
        }

        else
        {
          v7[v12] = *v7;
          *v7 = v18;
          if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v8, v18))
          {
            v30 = *v7;
            *v7 = *v8;
            *v8 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = *v7;
        *v7 = *v8;
        *v8 = v21;
        if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v7, v7[v12]))
        {
          v22 = v7[v12];
          v7[v12] = *v7;
          *v7 = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v7[v12], *v7);
    v14 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v8, v7[v12]);
    if (v13)
    {
      v15 = *v7;
      if (v14)
      {
        *v7 = *v8;
        *v8 = v15;
      }

      else
      {
        *v7 = v7[v12];
        v7[v12] = v15;
        if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v8, v15))
        {
          v23 = v7[v12];
          v7[v12] = *v8;
          *v8 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = v7[v12];
      v7[v12] = *v8;
      *v8 = v19;
      if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v7[v12], *v7))
      {
        v20 = *v7;
        *v7 = v7[v12];
        v7[v12] = v20;
      }
    }

    v24 = v12 - 1;
    v25 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v7[v12 - 1], v7[1]);
    v26 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(a2[-1].u64[0], v7[v12 - 1]);
    if (v25)
    {
      v27 = v7[1];
      if (v26)
      {
        v7[1] = a2[-1].u64[0];
        a2[-1].i64[0] = v27;
      }

      else
      {
        v7[1] = v7[v24];
        v7[v24] = v27;
        if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(a2[-1].u64[0], v27))
        {
          v31 = v7[v24];
          v7[v24] = a2[-1].u64[0];
          a2[-1].i64[0] = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = v7[v24];
      v7[v24] = a2[-1].u64[0];
      a2[-1].i64[0] = v28;
      if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v7[v24], v7[1]))
      {
        v29 = v7[1];
        v7[1] = v7[v24];
        v7[v24] = v29;
      }
    }

    v32 = v12 + 1;
    v33 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v7[v12 + 1], v7[2]);
    v34 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(a2[-2].u64[1], v7[v12 + 1]);
    if (v33)
    {
      v35 = v7[2];
      if (v34)
      {
        v7[2] = a2[-2].u64[1];
        a2[-2].i64[1] = v35;
      }

      else
      {
        v7[2] = v7[v32];
        v7[v32] = v35;
        if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(a2[-2].u64[1], v35))
        {
          v38 = v7[v32];
          v7[v32] = a2[-2].u64[1];
          a2[-2].i64[1] = v38;
        }
      }
    }

    else if (v34)
    {
      v36 = v7[v32];
      v7[v32] = a2[-2].u64[1];
      a2[-2].i64[1] = v36;
      if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v7[v32], v7[2]))
      {
        v37 = v7[2];
        v7[2] = v7[v32];
        v7[v32] = v37;
      }
    }

    v39 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v7[v12], v7[v24]);
    v40 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v7[v32], v7[v12]);
    if (!v39)
    {
      v42 = v7[v12];
      if (!v40)
      {
        goto LABEL_54;
      }

      v43 = v7[v32];
      v7[v12] = v43;
      v7[v32] = v42;
      v44 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v43, v7[v24]);
      v42 = v7[v12];
      if (!v44)
      {
        goto LABEL_54;
      }

      v45 = v7[v24];
      v7[v24] = v42;
      v7[v12] = v45;
      goto LABEL_53;
    }

    v41 = v7[v24];
    if (v40)
    {
      v7[v24] = v7[v32];
      v7[v32] = v41;
      v42 = v7[v12];
    }

    else
    {
      v7[v24] = v7[v12];
      v7[v12] = v41;
      v46 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v7[v32], v41);
      v42 = v7[v12];
      if (v46)
      {
        v45 = v7[v32];
        v7[v12] = v45;
        v7[v32] = v42;
LABEL_53:
        v42 = v45;
      }
    }

LABEL_54:
    v47 = *v7;
    *v7 = v42;
    v7[v12] = v47;
LABEL_55:
    --a3;
    v48 = *v7;
    if ((a4 & 1) != 0 || (v49 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*(v7 - 1), *v7), v48 = *v7, v49))
    {
      v50 = v7;
      do
      {
        v51 = v50;
        v52 = v50[1];
        ++v50;
      }

      while (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v52, v48));
      v53 = a2;
      if (v51 == v7)
      {
        v53 = a2;
        do
        {
          if (v50 >= v53)
          {
            break;
          }

          v55 = *--v53;
        }

        while (!md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v55, v48));
      }

      else
      {
        do
        {
          v54 = *--v53;
        }

        while (!md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v54, v48));
      }

      if (v50 < v53)
      {
        v56 = v50;
        v57 = v53;
        do
        {
          v58 = *v56;
          *v56 = *v57;
          *v57 = v58;
          do
          {
            v51 = v56;
            v59 = v56[1];
            ++v56;
          }

          while (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v59, v48));
          do
          {
            v60 = *--v57;
          }

          while (!md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v60, v48));
        }

        while (v56 < v57);
      }

      if (v51 != v7)
      {
        *v7 = *v51;
      }

      *v51 = v48;
      a2 = v124;
      if (v50 < v53)
      {
        goto LABEL_76;
      }

      v61 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByY &,md::ClusterNode **>(v7, v51);
      v9 = (v51 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByY &,md::ClusterNode **>((v51 + 1), v124);
      if (result)
      {
        a2 = v51;
        if (!v61)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v61)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByY &,md::ClusterNode **,false>(v7, v51, a3, a4 & 1);
        a4 = 0;
        v9 = (v51 + 1);
      }
    }

    else
    {
      result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v7, *v8);
      if (result)
      {
        v9 = v7;
        do
        {
          v62 = v9->u64[1];
          v9 = (v9 + 8);
          result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v48, v62);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v63 = (v7 + 1);
        do
        {
          v9 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v63 = (v63 + 8);
          result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v48, v9->i64[0]);
        }

        while (!result);
      }

      v64 = a2;
      if (v9 < a2)
      {
        v64 = a2;
        do
        {
          v65 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v48, v65);
        }

        while ((result & 1) != 0);
      }

      while (v9 < v64)
      {
        v66 = v9->i64[0];
        v9->i64[0] = v64->i64[0];
        v64->i64[0] = v66;
        do
        {
          v67 = v9->u64[1];
          v9 = (v9 + 8);
        }

        while (!md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v48, v67));
        do
        {
          v68 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v48, v68);
        }

        while ((result & 1) != 0);
      }

      v69 = &v9[-1].u64[1];
      if (&v9[-1].u64[1] != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v48;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByY &,md::ClusterNode **,0>(v9, &v9->u64[1], &v9[1], v8);
    }

    if (v10 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByY &,md::ClusterNode **,0>(v9, &v9->u64[1], &v9[1], &v9[1].u64[1]);
      result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v8, v9[1].u64[1]);
      if (!result)
      {
        return result;
      }

      v70 = v9[1].u64[1];
      v9[1].i64[1] = *v8;
      *v8 = v70;
      result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v9[1].u64[1], v9[1].u64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v9[1].i64[0];
      v71 = v9[1].u64[1];
      v73 = v9->u64[1];
      v9[1].i64[0] = v71;
      v9[1].i64[1] = v72;
      result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v71, v73);
      if (!result)
      {
        return result;
      }

      v75 = v9->i64[1];
      v74 = v9[1].u64[0];
      v76 = v9->i64[0];
      v9->i64[1] = v74;
      v9[1].i64[0] = v75;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v78 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v9->u64[1], v9->i64[0]);
  result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v8, v9->u64[1]);
  if (!v78)
  {
    if (!result)
    {
      return result;
    }

    v117 = v9->u64[1];
    v9->i64[1] = *v8;
    *v8 = v117;
    v76 = v9->i64[0];
    v74 = v9->u64[1];
LABEL_164:
    result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v74, v76);
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v79 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *v8;
    *v8 = v79;
  }

  else
  {
    v9->i64[0] = v9->i64[1];
    v9->i64[1] = v79;
    result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v8, v79);
    if (result)
    {
      v77 = v9->u64[1];
      v9->i64[1] = *v8;
      goto LABEL_103;
    }
  }

  return result;
}

void md::LabelClusterBuilder::findClosestPair(void *a1, unint64_t a2, unint64_t a3, double *a4, void *a5, uint64_t **a6)
{
  v9 = a2;
  v48[4] = *MEMORY[0x1E69E9840];
  v11 = a3 - a2;
  if (a3 - a2 > 4)
  {
    v22 = a2 + (v11 >> 1);
    v23 = *(*a1 + 8 * v22);
    v24 = *md::LabelPoint::mercatorPoint((v23 + 16));
    memset(v48, 0, 24);
    memset(v47, 0, 24);
    std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::reserve(v48, v11 >> 1);
    std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::reserve(v47, v11 - (v11 >> 1));
    v25 = 0;
    do
    {
      v44 = (*a6)[v25];
      if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v44, v23))
      {
        v26 = v48;
      }

      else
      {
        v26 = v47;
      }

      std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](v26, &v44);
      ++v25;
    }

    while (v11 != v25);
    md::LabelClusterBuilder::findClosestPair(a1, a2, v22, a4, a5, v48);
    md::LabelClusterBuilder::findClosestPair(a1, v22, a3, a4, a5, v47);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v27 = *a6;
    v28 = a6[1];
    if (*a6 != v28)
    {
      do
      {
        v43 = *v27;
        if (vabdd_f64(*md::LabelPoint::mercatorPoint((v43 + 16)), v24) < *a4)
        {
          std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](&v44, &v43);
        }

        ++v27;
      }

      while (v27 != v28);
      v29 = v45 - v44;
      if (v45 != v44)
      {
        v30 = 0;
        v31 = v29 >> 3;
        v32 = *a4 * *a4;
        if ((v29 >> 3) <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v29 >> 3;
        }

        do
        {
          v34 = v30++;
          if (v30 < v31)
          {
            v35 = *(v44 + 8 * v34);
            v36 = v30;
            do
            {
              v37 = *(md::LabelPoint::mercatorPoint((*(v44 + 8 * v36) + 16)) + 8);
              if (v37 - *(md::LabelPoint::mercatorPoint((v35 + 16)) + 8) >= *a4)
              {
                break;
              }

              v38 = md::LabelPoint::mercatorPoint((v35 + 16));
              v39 = vsubq_f64(*v38, *md::LabelPoint::mercatorPoint((*(v44 + 8 * v36) + 16)));
              v40 = vaddvq_f64(vmulq_f64(v39, v39));
              if (v40 < v32)
              {
                v41 = *(v44 + 8 * v36);
                *a5 = v35;
                a5[1] = v41;
                *a4 = sqrt(v40);
                v32 = v40;
              }

              ++v36;
            }

            while (v31 != v36);
          }
        }

        while (v30 != v33);
      }
    }

    std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v44);
    std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v47);
    std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v48);
  }

  else if (v11 >= 2)
  {
    v12 = a3 - 1;
    if (a3 - 1 > a2)
    {
      v13 = *a4 * *a4;
      do
      {
        v14 = v9++;
        if (v9 < a3)
        {
          v15 = *(*a1 + 8 * v14);
          v16 = v9;
          do
          {
            v17 = md::LabelPoint::mercatorPoint((v15 + 16));
            v18 = vsubq_f64(*v17, *md::LabelPoint::mercatorPoint((*(*a1 + 8 * v16) + 16)));
            v19 = vaddvq_f64(vmulq_f64(v18, v18));
            if (v19 < v13)
            {
              v20 = *(*a1 + 8 * v16);
              *a5 = v15;
              a5[1] = v20;
              *a4 = sqrt(v19);
              v13 = v19;
            }

            ++v16;
          }

          while (v16 < a3);
        }
      }

      while (v9 != v12);
    }
  }
}

void sub_1B2ED10DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

char *std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ClusterNode *>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[8 * a2];
  return result;
}

BOOL md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(unint64_t a1, unint64_t a2)
{
  v4 = *(md::LabelPoint::mercatorPoint((a1 + 16)) + 8);
  if (v4 == *(md::LabelPoint::mercatorPoint((a2 + 16)) + 8))
  {
    return a1 < a2;
  }

  v6 = *(md::LabelPoint::mercatorPoint((a1 + 16)) + 8);
  return v6 < *(md::LabelPoint::mercatorPoint((a2 + 16)) + 8);
}

BOOL md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(unint64_t a1, unint64_t a2)
{
  v4 = *md::LabelPoint::mercatorPoint((a1 + 16));
  if (v4 == *md::LabelPoint::mercatorPoint((a2 + 16)))
  {
    return a1 < a2;
  }

  v6 = *md::LabelPoint::mercatorPoint((a1 + 16));
  return v6 < *md::LabelPoint::mercatorPoint((a2 + 16));
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByY &,md::ClusterNode **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*a2, *a1);
  v9 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*a3, v10))
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*a2, *a1);
      if (result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByY &,md::ClusterNode **>(uint64_t a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*(a1 + 8), *a1);
        v14 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*(a2 - 1), *(a1 + 8));
        if (v13)
        {
          v15 = *a1;
          if (v14)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v15;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v15;
          if (!md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*(a2 - 1), v15))
          {
            return 1;
          }

          v5 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v14)
        {
          return 1;
        }

        v20 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v20;
        v12 = *a1;
        v10 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByY &,md::ClusterNode **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByY &,md::ClusterNode **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        if (!md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v6 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = *(a1 + 8);
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        if (!md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v7, v9))
        {
          return 1;
        }

        v11 = *(a1 + 8);
        v10 = *(a1 + 16);
        v12 = *a1;
        *(a1 + 8) = v10;
        *(a1 + 16) = v11;
        break;
      default:
        goto LABEL_17;
    }

    if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v10, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*(a1 + 8), *a1);
  v17 = (a1 + 16);
  v18 = md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*(a1 + 16), *(a1 + 8));
  if (v16)
  {
    v19 = *a1;
    if (v18)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v19;
    }

    else
    {
      v24 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v19;
      if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v24, v19))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v18)
  {
    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v23 = *a1;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v21, v23))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if (md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(*v25, *v17))
    {
      v28 = *v25;
      v29 = v26;
      while (1)
      {
        v30 = a1 + v29;
        *(a1 + v29 + 24) = *(a1 + v29 + 16);
        if (v29 == -16)
        {
          break;
        }

        v29 -= 8;
        if (!md::LabelClusterBuilder::ClusterNodeSorterByY::operator()(v28, *(v30 + 8)))
        {
          v31 = (a1 + v29 + 24);
          goto LABEL_40;
        }
      }

      v31 = a1;
LABEL_40:
      *v31 = v28;
      if (++v27 == 8)
      {
        return v25 + 1 == a2;
      }
    }

    v17 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByX &,md::ClusterNode **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*a2, *a1);
  v9 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*a3, v10))
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*a2, *a1);
      if (result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByX &,md::ClusterNode **>(uint64_t a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*(a1 + 8), *a1);
        v14 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*(a2 - 1), *(a1 + 8));
        if (v13)
        {
          v15 = *a1;
          if (v14)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v15;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v15;
          if (!md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*(a2 - 1), v15))
          {
            return 1;
          }

          v5 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v14)
        {
          return 1;
        }

        v20 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v20;
        v12 = *a1;
        v10 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByX &,md::ClusterNode **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelClusterBuilder::ClusterNodeSorterByX &,md::ClusterNode **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        if (!md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v6 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = *(a1 + 8);
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        if (!md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v7, v9))
        {
          return 1;
        }

        v11 = *(a1 + 8);
        v10 = *(a1 + 16);
        v12 = *a1;
        *(a1 + 8) = v10;
        *(a1 + 16) = v11;
        break;
      default:
        goto LABEL_17;
    }

    if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v10, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*(a1 + 8), *a1);
  v17 = (a1 + 16);
  v18 = md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*(a1 + 16), *(a1 + 8));
  if (v16)
  {
    v19 = *a1;
    if (v18)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v19;
    }

    else
    {
      v24 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v19;
      if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v24, v19))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v18)
  {
    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v23 = *a1;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v21, v23))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if (md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(*v25, *v17))
    {
      v28 = *v25;
      v29 = v26;
      while (1)
      {
        v30 = a1 + v29;
        *(a1 + v29 + 24) = *(a1 + v29 + 16);
        if (v29 == -16)
        {
          break;
        }

        v29 -= 8;
        if (!md::LabelClusterBuilder::ClusterNodeSorterByX::operator()(v28, *(v30 + 8)))
        {
          v31 = (a1 + v29 + 24);
          goto LABEL_40;
        }
      }

      v31 = a1;
LABEL_40:
      *v31 = v28;
      if (++v27 == 8)
      {
        return v25 + 1 == a2;
      }
    }

    v17 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

void *md::ARCameraImageRenderLayer::layout(md::ARCameraImageRenderLayer *this, const md::LayoutContext *a2)
{
  v4 = *(this + 12);
  v5 = *(v4 + 4);
  v6 = *(v4 + 5);
  if (v5 != v6)
  {
    do
    {
      v7 = *v5++;
      v63[0].a = v7;
      std::vector<ggl::ARCameraImagePipelineSetup *,geo::allocator_adapter<ggl::ARCameraImagePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v4, v63);
    }

    while (v5 != v6);
    v5 = *(v4 + 4);
    v6 = *(v4 + 5);
  }

  if (v5 != v6)
  {
    *(v4 + 5) = v5;
  }

  md::RenderItemPool::reset(this + 13);
  v8 = *(*(md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), 0) + 16) + 32);
  *(v8 + 32) = *(this + 6);
  v9 = *(a2 + 1);
  v10 = md::LayoutContext::get<md::CameraContext>(v9);
  v11 = gdc::Context::context<md::ARLogicContext>(v9);
  result = gdc::Context::get<md::GeometryContext>(v9);
  if (v11)
  {
    if (v10)
    {
      v15 = result;
      if (result)
      {
        v16 = *(v11 + 72);
        if (v16)
        {
          LODWORD(v14) = *(v16 + 80);
          LODWORD(v13) = *(v16 + 84);
          v17 = v13;
          v18 = v14;
          *(this + 16) = v17 / v14;
          v19 = *(v10 + 944);
          v20 = *(v11 + 8);
          v21 = v19;
          if (v20 > 4 || ((1 << v20) & 0x19) == 0)
          {
            v25 = v17 * v21 <= v18;
            v26 = v18 * v21;
            v27 = v17 / v21;
            if (v25)
            {
              v23 = v26;
            }

            else
            {
              v23 = v17;
            }

            if (v25)
            {
              v24 = v18;
            }

            else
            {
              v24 = v27;
            }
          }

          else
          {
            v23 = v17 * v21;
            v24 = v17;
            if (v17 * v21 >= v18)
            {
              v23 = v18;
              v24 = v18 / v21;
            }
          }

          v28 = v18 * 0.5;
          v29 = v17 * 0.5;
          memset(&v64, 0, sizeof(v64));
          v30 = 0.0;
          if (v20 <= 3)
          {
            v30 = dbl_1B33B4118[v20];
          }

          memset(v63, 0, 48);
          CGAffineTransformMakeScale(v63, 1.0 / v18, 1.0 / v17);
          v65 = v63[0];
          CGAffineTransformTranslate(&v66, &v65, v28, v29);
          v63[0] = v66;
          v65 = v66;
          CGAffineTransformRotate(&v66, &v65, v30);
          v63[0] = v66;
          CGAffineTransformScale(&v64, &v66, v23 * 0.5, v24 * -0.5);
          a = v64.a;
          c = v64.c;
          tx = v64.tx;
          b = v64.b;
          d = v64.d;
          ty = v64.ty;
          v37 = *(this + 10);
          ggl::BufferMemory::BufferMemory(&v66);
          ggl::ResourceAccessor::accessConstantData(v63, 0, v37, 1);
          ggl::BufferMemory::operator=(&v66, v63);
          ggl::BufferMemory::~BufferMemory(v63);
          v38 = v66.ty;
          **&v66.ty = a;
          *(*&v38 + 4) = c;
          *(*&v38 + 8) = tx;
          *(*&v38 + 16) = b;
          *(*&v38 + 20) = d;
          *(*&v38 + 24) = ty;
          ggl::BufferMemory::~BufferMemory(&v66);
          v39 = *(this + 12);
          v40 = v39[1];
          if (v40 == *v39)
          {
            v42 = v39[11];
            if (!v42)
            {
              goto LABEL_43;
            }

            v41 = COERCE_DOUBLE((*(*v42 + 48))(v42));
            v66.a = v41;
          }

          else
          {
            v41 = *(v40 - 8);
            v66.a = v41;
            v39[1] = v40 - 8;
          }

          std::vector<ggl::ARCameraImagePipelineSetup *,geo::allocator_adapter<ggl::ARCameraImagePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v39 + 4), &v66);
          v63[0].a = v41;
          v43 = v39[15];
          if (v43)
          {
            (*(*v43 + 48))(v43, v63);
            **(*&v41 + 168) = v16;
            ggl::RenderItem::RenderItem(v63, *(this + 9), *&v41, 0, "ARCameraImage");
            md::RenderItemPool::construct(this + 104, v63, *(v15 + 64));
            v45 = v44;
            v47 = *(v8 + 80);
            v46 = *(v8 + 88);
            if (v47 < v46)
            {
              *v47 = v44;
              v48 = (v47 + 1);
LABEL_41:
              *(v8 + 80) = v48;
              return ggl::CommandBuffer::sortRenderItems(*(v8 + 72), v48);
            }

            v49 = *(v8 + 72);
            v50 = (v47 - v49) >> 3;
            if (!((v50 + 1) >> 61))
            {
              v51 = v46 - v49;
              v52 = v51 >> 2;
              if (v51 >> 2 <= (v50 + 1))
              {
                v52 = v50 + 1;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF8)
              {
                v53 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v53 = v52;
              }

              *&v66.tx = v8 + 96;
              if (v53)
              {
                v54 = ggl::zone_mallocator::instance(v44);
                v55 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v54, v53);
              }

              else
              {
                v55 = 0;
              }

              v56 = &v55[8 * v50];
              v57 = &v55[8 * v53];
              *v56 = v45;
              v48 = (v56 + 1);
              v58 = *(v8 + 72);
              v59 = *(v8 + 80) - v58;
              v60 = v56 - v59;
              memcpy(v56 - v59, v58, v59);
              v61 = *(v8 + 72);
              *(v8 + 72) = v60;
              *(v8 + 80) = v48;
              v62 = *(v8 + 88);
              *(v8 + 88) = v57;
              v66.c = v61;
              v66.d = v62;
              v66.a = v61;
              v66.b = v61;
              std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(&v66);
              goto LABEL_41;
            }

LABEL_44:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

LABEL_43:
          std::__throw_bad_function_call[abi:nn200100]();
          goto LABEL_44;
        }
      }
    }
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::ARCameraImagePipelineSetup *,geo::allocator_adapter<ggl::ARCameraImagePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARCameraImagePipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::ARCameraImagePipelineSetup *,geo::allocator_adapter<ggl::ARCameraImagePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARCameraImagePipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::ARCameraImagePipelineSetup *,geo::allocator_adapter<ggl::ARCameraImagePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARCameraImagePipelineSetup *>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARCameraImagePipelineSetup *>(uint64_t a1, void *a2)
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

void md::ARCameraImageRenderLayer::~ARCameraImageRenderLayer(void **this)
{
  md::ARCameraImageRenderLayer::~ARCameraImageRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0F2E0;
  md::FrameAllocator<ggl::RenderItem>::reset((this + 13));
  free(this[13]);
  std::unique_ptr<ggl::FragmentedPool<ggl::ARCameraImagePipelineSetup>>::reset[abi:nn200100](this + 12, 0);
  v2 = this[11];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = this[9];
  this[9] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[8];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = this[6];
  this[6] = 0;
  if (v5)
  {
    MEMORY[0x1B8C62190](v5, 0x1000C4049ECCB0CLL);
  }

  *this = &unk_1F2A16858;
  v6 = this[1];
  if (v6)
  {
    this[2] = v6;
    operator delete(v6);
  }
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::ARCameraImagePipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
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

    std::__function::__value_func<void ()(ggl::ARCameraImagePipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::ARCameraImagePipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::ARCameraImagePipelineSetup *,geo::allocator_adapter<ggl::ARCameraImagePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::ARCameraImagePipelineSetup *,geo::allocator_adapter<ggl::ARCameraImagePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::ARCameraImagePipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::ARCameraImagePipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::ARCameraImagePipelineSetup *,geo::allocator_adapter<ggl::ARCameraImagePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARCameraImagePipelineSetup *>(v2, v1);
  }
}

ggl::zone_mallocator *std::vector<ggl::ARCameraImagePipelineSetup *,geo::allocator_adapter<ggl::ARCameraImagePipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARCameraImagePipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::ARCameraImagePipelineSetup *,geo::allocator_adapter<ggl::ARCameraImagePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::ARCameraImageRenderLayer::ARCameraImageRenderLayer(md::CartographicRenderer &,VKSharedResources *)::$_0,std::allocator<md::ARCameraImageRenderLayer::ARCameraImageRenderLayer(md::CartographicRenderer &,VKSharedResources *)::$_0>,ggl::ARCameraImagePipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0F3E0;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<ggl::ARCameraImagePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0F3A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::ARCameraImage::Constants>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::ARCameraImage::Constants>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0F350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelExternalMeshRequest::~LabelExternalMeshRequest(md::LabelExternalMeshRequest *this)
{
  md::LabelExternalMeshRequest::~LabelExternalMeshRequest(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0F470;
  v2 = (this + 96);
  std::mutex::lock((this + 96));
  v3 = *(this + 20);
  if (v3)
  {
    atomic_store(1u, (v3 + 116));
  }

  std::mutex::unlock(v2);
  v4 = *(this + 21);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::mutex::~mutex(v2);
}

void sub_1B2ED2910(_Unwind_Exception *a1)
{
  v4 = *(v2 + 168);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

BOOL md::LabelExternalMeshRequest::fulfillRequest(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 96));
  if (*(a1 + 176) == 4)
  {
    v4 = 0;
  }

  else
  {
    v5 = *a2;
    if (!*a2 || *(v5 + 4) == *(a1 + 12))
    {
      v6 = a2[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = *(a1 + 168);
      *(a1 + 160) = v5;
      *(a1 + 168) = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }

    v8 = *(a1 + 160);
    v4 = v8 != 0;
    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *(a1 + 176) = v9;
  }

  std::mutex::unlock((a1 + 96));
  return v4;
}

id GEOGetVectorKitTextureAtlasLog(void)
{
  if (GEOGetVectorKitTextureAtlasLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitTextureAtlasLog(void)::onceToken, &__block_literal_global_15508);
  }

  v1 = GEOGetVectorKitTextureAtlasLog(void)::log;

  return v1;
}

void ___ZL30GEOGetVectorKitTextureAtlasLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "TextureAtlas");
  v1 = GEOGetVectorKitTextureAtlasLog(void)::log;
  GEOGetVectorKitTextureAtlasLog(void)::log = v0;
}

uint64_t md::LabelTextureAtlasStore::debugString(md::LabelTextureAtlasStore *this, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "TextureAtlases: ", 16);
  v4 = 0;
  v5 = 16;
  do
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "\n", 1);
    v6 = MEMORY[0x1B8C61C80](&v15, v4);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, ":", 1);
    (*(**(a2 + 8 + 8 * v4) + 48))(__p);
    if ((v14 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = __p[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, v7, v8);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    ++v4;
    v5 -= 8;
  }

  while (v5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "\n", 1);
  if ((v22 & 0x10) != 0)
  {
    v10 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v10 = v18;
    }

    locale = v17[4].__locale_;
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v9 = 0;
      *(this + 23) = 0;
      goto LABEL_24;
    }

    locale = v17[1].__locale_;
    v10 = v17[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v9;
  if (v9)
  {
    memmove(this, locale, v9);
  }

LABEL_24:
  *(this + v9) = 0;
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v23);
}

void sub_1B2ED2DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

os_log_t __GEOGetVectorKitVKMuninLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "VKMunin");
  GEOGetVectorKitVKMuninLog_log = result;
  return result;
}

os_log_t __GEOGetVectorKitMaterialLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "Material");
  GEOGetVectorKitMaterialLog_log = result;
  return result;
}

os_log_t __GEOGetVectorKitVKNavCameraLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "VKNavCamera");
  GEOGetVectorKitVKNavCameraLog_log = result;
  return result;
}

os_log_t __GEOGetVectorKitARAnimationLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "ARAnimation");
  GEOGetVectorKitARAnimationLog_log = result;
  return result;
}

os_log_t __GEOGetVectorKitDrapingLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "Draping");
  GEOGetVectorKitDrapingLog_log = result;
  return result;
}

os_log_t __GEOGetVectorKitDrapingFallbackLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "DrapingFallback");
  GEOGetVectorKitDrapingFallbackLog_log = result;
  return result;
}

os_log_t __GEOGetVectorKitStreamingPOILog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "StreamingPOI");
  GEOGetVectorKitStreamingPOILog_log = result;
  return result;
}

void std::__shared_ptr_emplace<ggl::SolidRibbon::PipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TransitLineRibbon::PatternedBasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0F6F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TransitLineRibbon::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0F6B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

double md::LabelLayoutContext::geocentricEyePos(md::LabelLayoutContext *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    return *(this + 17);
  }

  md::LabelLayoutContext::mercatorEyePos(this, 1);
  v2 = v1;
  v4 = v3 * 6.28318531;
  v6 = exp(v5 * 6.28318531 + -3.14159265);
  v7 = atan(v6) * 2.0 + -1.57079633;
  v8 = fmod(v4, 6.28318531);
  v9 = fmod(v8 + 6.28318531, 6.28318531) + -3.14159265;
  v10 = __sincos_stret(v7);
  return (6378137.0 / sqrt(v10.__sinval * v10.__sinval * -0.00669437999 + 1.0) + v2) * v10.__cosval * __sincos_stret(v9).__cosval;
}

float md::LabelLayoutContext::cosUpToEye(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v3 = 1.0;
    v4 = 0.0;
    v5 = 0;
  }

  else
  {
    v4 = gm::Matrix<double,3,1>::normalized<int,void>(a2);
  }

  v6 = 0;
  *v10 = v4;
  v10[1] = v5;
  *&v10[2] = v3;
  do
  {
    *&v10[v6 + 3] = -*(a1 + 160 + v6 * 8);
    ++v6;
  }

  while (v6 != 3);
  v7 = 0;
  v8 = 0.0;
  do
  {
    v8 = v8 + *&v10[v7 + 3] * *&v10[v7];
    ++v7;
  }

  while (v7 != 3);
  return v8;
}

float md::LabelLayoutContext::mercatorPointToPixel(uint64_t a1, double *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2] * *(a1 + 52);
  if (*(a1 + 8))
  {
    v6 = v5 * 0.0000000249532021;
  }

  else
  {
    v7 = v4 * 6.28318531;
    v8 = exp(v3 * 6.28318531 + -3.14159265);
    v9 = atan(v8) * 2.0 + -1.57079633;
    v10 = fmod(v7, 6.28318531);
    v11 = fmod(v10 + 6.28318531, 6.28318531) + -3.14159265;
    v12 = __sincos_stret(v9);
    v13 = 6378137.0 / sqrt(v12.__sinval * v12.__sinval * -0.00669437999 + 1.0);
    v14 = (v13 + v5) * v12.__cosval;
    v15 = __sincos_stret(v11);
    v4 = v14 * v15.__cosval;
    v3 = v14 * v15.__sinval;
    v6 = (v5 + v13 * 0.99330562) * v12.__sinval;
  }

  v16 = 0;
  *v28 = v4;
  *&v28[1] = v3;
  *&v28[2] = v6;
  v17 = (a1 + 864);
  do
  {
    v18 = 0;
    v19 = 0.0;
    v20 = v17;
    do
    {
      v21 = *v20;
      v20 += 4;
      v19 = v19 + *&v28[v18++] * v21;
    }

    while (v18 != 3);
    v29.f64[v16] = *(a1 + 864 + 8 * v16 + 96) + v19;
    ++v16;
    ++v17;
  }

  while (v16 != 4);
  __asm { FMOV            V1.2D, #1.0 }

  return vmulq_f64(v29, vdivq_f64(_Q1, vdupq_lane_s64(v30, 0))).f64[0];
}

float ___ZN2md15FadeEffectBlock3runEPNS_15AnimationRunnerE_block_invoke(uint64_t a1, float a2)
{
  result = 1.0 - a2;
  **(a1 + 32) = result;
  return result;
}

void md::TransitTileData::~TransitTileData(md::TransitTileData *this)
{
  md::TransitTileData::~TransitTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0F748;
  *(this + 80) = &unk_1F2A0F788;
  v2 = *(this + 119);
  for (i = *(this + 120); v2 != i; *(v4 + 64) = 2)
  {
    v4 = *v2;
    v2 += 2;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>>>::~__hash_table(this + 1264);
  v5 = *(this + 156);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 153);
  *(this + 153) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::__tree<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::__map_value_compare<md::PatternedLineKey,std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::less<md::PatternedLineKey>,true>,std::allocator<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>>>::destroy(*(this + 151));
  v7 = *(this + 149);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 147);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 145);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 143);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  std::unique_ptr<md::StyleTexture<md::TransitLineSegment::StylePixel>>::reset[abi:nn200100](this + 141, 0);
  std::unique_ptr<md::StyleTexture<md::TransitLineSegment::StylePixel>>::reset[abi:nn200100](this + 140, 0);
  v11 = *(this + 139);
  *(this + 139) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 138);
  *(this + 138) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 137);
  *(this + 137) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 136);
  *(this + 136) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 135);
  *(this + 135) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 134);
  *(this + 134) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v24 = (this + 1048);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v24);
  v24 = (this + 1024);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v24);
  v24 = (this + 1000);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v24);
  v24 = (this + 976);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v24);
  v24 = (this + 952);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v24);
  std::unique_ptr<md::TransitJunctionManager>::reset[abi:nn200100](this + 118, 0);
  std::__list_imp<md::TransitDisplayConnection>::clear(this + 115);
  v24 = (this + 896);
  std::vector<md::TransitLink>::__destroy_vector::operator()[abi:nn200100](&v24);
  v24 = (this + 872);
  std::vector<md::TransitLine>::__destroy_vector::operator()[abi:nn200100](&v24);
  v17 = *(this + 108);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v18 = *(this + 106);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = *(this + 104);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = *(this + 102);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = *(this + 100);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  *(this + 95) = &unk_1F2A59028;

  v22 = *(this + 94);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  v23 = *(this + 92);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  md::MapTileData::~MapTileData(this);
}

void std::__tree<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::__map_value_compare<md::PatternedLineKey,std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::less<md::PatternedLineKey>,true>,std::allocator<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::__map_value_compare<md::PatternedLineKey,std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::less<md::PatternedLineKey>,true>,std::allocator<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>>>::destroy(*a1);
    std::__tree<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::__map_value_compare<md::PatternedLineKey,std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::less<md::PatternedLineKey>,true>,std::allocator<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>>>::destroy(a1[1]);
    v2 = a1[11];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = a1[9];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = a1[7];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    operator delete(a1);
  }
}

uint64_t *std::unique_ptr<md::StyleTexture<md::TransitLineSegment::StylePixel>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v3)
    {
      MEMORY[0x1B8C62190](v3, 0x1000C40451B5BE8);
    }

    v4 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v5;
      operator delete(v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::unique_ptr<md::TransitJunctionManager>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction const*,std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::hash<GeoCodecsConnectivityJunction const*>,std::equal_to<GeoCodecsConnectivityJunction const*>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction const*,std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::equal_to<GeoCodecsConnectivityJunction const*>,std::hash<GeoCodecsConnectivityJunction const*>,true>,std::allocator<std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>>>::~__hash_table(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__list_imp<md::TransitDisplayConnection>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[8];
        v2[8] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v7 = v2[7];
        v2[7] = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v8 = v2[4];
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::vector<md::TransitLink>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        md::TransitLink::~TransitLink((v4 - 248));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<md::TransitLine>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 104;
        std::__destroy_at[abi:nn200100]<md::TransitLine,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<md::TransitLine,0>(uint64_t a1)
{
  v3 = (a1 + 64);
  std::vector<md::TransitLine::MergeTypeInfo>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction const*,std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::hash<GeoCodecsConnectivityJunction const*>,std::equal_to<GeoCodecsConnectivityJunction const*>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction const*,std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::equal_to<GeoCodecsConnectivityJunction const*>,std::hash<GeoCodecsConnectivityJunction const*>,true>,std::allocator<std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 24));
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 19));
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 14));
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v2[10]);
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v2[7]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void md::TransitTileData::createFeatures(md::TransitTileData *this)
{
  v40[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 91);
  v3 = *(v2 + 1288);
  v4 = geo::codec::VectorTile::coastlinesCount(v3, *(v2 + 1296));
  v5 = (this + 872);
  if (0x4EC4EC4EC4EC4EC5 * ((*(this + 111) - *(this + 109)) >> 3) >= v4)
  {
    v6 = this;
    v32 = this;
    if (!v4)
    {
      v14 = *(this + 91);
      v15 = *(v14 + 1352);
      v16 = geo::codec::VectorTile::transitLinkCount(v15, *(v14 + 1360));
      v17 = (this + 896);
      v18 = v6;
      v33 = v16;
      if (0xEF7BDEF7BDEF7BDFLL * ((v6[114] - v6[112]) >> 3) < v16)
      {
        if (v16 <= 0x108421084210842)
        {
          v39 = (v6 + 112);
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitLink>>(v16);
        }

LABEL_37:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v16)
      {
        v19 = 0;
        v20 = (v6 + 113);
        do
        {
          v34 = v19;
          v21 = v18[113];
          v22 = v18[114];
          if (v21 >= v22)
          {
            v24 = 0xEF7BDEF7BDEF7BDFLL * ((v21 - *v17) >> 3);
            v25 = v24 + 1;
            if (v24 + 1 > 0x108421084210842)
            {
              goto LABEL_37;
            }

            v26 = 0xEF7BDEF7BDEF7BDFLL * ((v22 - *v17) >> 3);
            if (2 * v26 > v25)
            {
              v25 = 2 * v26;
            }

            if (v26 >= 0x84210842108421)
            {
              v27 = 0x108421084210842;
            }

            else
            {
              v27 = v25;
            }

            v39 = v17;
            if (v27)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitLink>>(v27);
            }

            v36 = 0;
            v37 = 248 * v24;
            v38 = 248 * v24;
            md::TransitLink::TransitLink((248 * v24), v15);
            *&v38 = v38 + 248;
            v28 = v37 + *v17 - *v20;
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::TransitLink>,md::TransitLink*>(*v17, *v20, v28);
            v29 = v18[112];
            v18[112] = v28;
            v30 = v18[114];
            __p = v38;
            *v20 = v38;
            *&v38 = v29;
            *(&v38 + 1) = v30;
            v36 = v29;
            v37 = v29;
            std::__split_buffer<md::TransitLink>::~__split_buffer(&v36);
            v23 = __p;
          }

          else
          {
            md::TransitLink::TransitLink(v18[113], v15);
            v23 = (v21 + 248);
            *v20 = v23;
          }

          *v20 = v23;
          v31 = *(v23 - 31);
          if (v31[4])
          {
            v36 = 0;
            v40[0] = 0;
            geo::codec::transitLinkExtractLineInfo(v31, 0, &v36, v40);
            operator new();
          }

          v19 = v34 + 1;
          v15 = (v15 + 184);
          v18 = v32;
          v20 = (v6 + 113);
          v17 = (v6 + 112);
        }

        while (v34 + 1 != v33);
      }

      operator new();
    }

    v7 = *(this + 110);
    v8 = v6[101];
    v9 = v6[111];
    if (v7 < v9)
    {
      md::TransitLine::TransitLine(v7, v3, v6[101], v6[93], v6[94]);
    }

    v10 = 0x4EC4EC4EC4EC4EC5 * ((v7 - *v5) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) <= 0x276276276276276)
    {
      v12 = 0x4EC4EC4EC4EC4EC5 * ((v9 - *v5) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x13B13B13B13B13BLL)
      {
        v13 = 0x276276276276276;
      }

      else
      {
        v13 = v11;
      }

      v39 = v5;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitLine>>(v13);
      }

      v36 = 0;
      v37 = 104 * v10;
      v38 = (104 * v10);
      md::TransitLine::TransitLine(104 * v10, v3, v8, *(v32 + 93), *(v32 + 94));
    }
  }

  else if (v4 <= 0x276276276276276)
  {
    v39 = (this + 872);
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitLine>>(v4);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B2ED8AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v54);
  if (__p)
  {
    operator delete(__p);
  }

  TransitCollapsedNodeSets::~TransitCollapsedNodeSets(&a47);
  if (a27)
  {
    operator delete(a27);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a35);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a37);
  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void ___ZN2md15TransitTileData24createDisplayConnectionsERN3ggl6LoaderE_block_invoke(uint64_t a1, uint64_t a2)
{
  v147 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 1224);
  v3 = *(v2 + 8);
  v110 = *(v2 + 16);
  if (v3 != v110)
  {
    v4 = a2;
    v5 = 1.0;
    do
    {
      v111 = v3;
      v7 = *(*v3 + 376);
      v6 = *(*v3 + 384);
      v113 = v6;
      while (v7 != v6)
      {
        v8 = *v7;
        ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(v135, **((*v7)[11] + 64), **v7, (*v7)[1], v4);
        v9 = v8[2];
        v11 = v8[4];
        v10 = v8[5];
        v114 = v7;
        if (v10 == v11)
        {
          v12 = v8[3];
        }

        else
        {
          if (v11 < v9)
          {
            v9 = v8[4];
          }

          if (v8[3] <= v10)
          {
            v12 = v8[5];
          }

          else
          {
            v12 = v8[3];
          }
        }

        v13 = v135[5];
        v14 = ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v133, *(v8[11] + 96), v9, v12, 1, 1, v4);
        v15 = v8[2];
        v16 = v8[4];
        v130 = 0;
        v131 = 0;
        v132 = 0;
        memset(&__p, 0, sizeof(__p));
        v115 = v8;
        v17 = v8[7];
        v116 = (v8 + 7);
        v18 = v8[8];
        if (v17 != v18)
        {
          v19 = v134 + 2 * v16 - 2 * v9;
          v20 = v134 + 2 * v15 - 2 * v9;
          v117 = v18;
          do
          {
            v21 = *v17;
            *v136 = xmmword_1B33B05A0;
            *&v136[16] = xmmword_1B33B05B0;
            v138 = v13;
            v22 = *(v21 + 16);
            if (v22 == *(v21 + 8))
            {
              v23 = *(v21 + 16);
            }

            else
            {
              v137 = 1;
              md::Ribbons::RibbonWriter<md::Ribbons::PilledTrafficRibbonDescriptor>::eliminateDuplicates(v21, &v130, &__p, &v137);
              v24 = v137;
              if (v137 >= 2)
              {
                v25 = v130;
                begin = __p.__begin_;
                v27 = *v130;
                v28 = 0.0;
                v29 = 1;
                v30 = *v130;
                do
                {
                  v31 = *(v130 + 8 * v29);
                  v32 = vsub_f32(v31, v30);
                  v28 = sqrtf(vaddv_f32(vmul_f32(v32, v32))) + v28;
                  ++v29;
                  v30 = v31;
                }

                while (v137 != v29);
                v33 = v28;
                v34 = v5 / v28;
                if (v33 <= 1.0e-10)
                {
                  v34 = 0.0;
                }

                v120 = v34;
                v35 = sqrtf(((*(v130 + 2) - v27.f32[0]) * (*(v130 + 2) - v27.f32[0])) + ((*(v130 + 3) - v27.f32[1]) * (*(v130 + 3) - v27.f32[1])));
                v36 = 1;
                while (1)
                {
                  v37 = 1;
                  LODWORD(v38) = *v130;
                  LODWORD(v39) = *(v130 + v36);
                  do
                  {
                    v40 = vabds_f32(v39, v38);
                    if ((v37 & 1) == 0)
                    {
                      break;
                    }

                    v37 = 0;
                    LODWORD(v38) = HIDWORD(*v130);
                    LODWORD(v39) = HIDWORD(*(v130 + v36));
                  }

                  while (v40 < 1.0e-10);
                  if (v40 >= 1.0e-10)
                  {
                    break;
                  }

                  if (++v36 == v137)
                  {
                    v41 = 1065353216;
                    goto LABEL_29;
                  }
                }

                v42 = vsub_f32(*(v130 + 8 * v36), v27);
                v41 = vmul_n_f32(v42, v5 / sqrtf(vaddv_f32(vmul_f32(v42, v42))));
LABEL_29:
                v118 = v20;
                v43 = -*&v41.i32[1];
                v139 = *__p.__begin_;
                v140 = v27;
                v144 = 0;
                v142.f32[0] = -*&v41.i32[1];
                v142.i32[1] = v41.i32[0];
                v146 = 0;
                v127 = v41;
                if (*(v21 + 96) == 1)
                {
                  v145 = 1;
                  v44 = vdup_lane_s32(v41, 0);
                  v44.f32[0] = -*&v41.i32[1];
                  *&v141 = vsub_f32(v44, v41);
                  *(&v141 + 2) = *&v41.i32[1] - *v41.i32;
                  *(&v141 + 3) = -(*&v41.i32[1] + *v41.i32);
                  v143 = xmmword_1B33B0570;
                  v124 = -*&v41.i32[1];
                  md::Ribbons::RibbonWriter<md::TransitDisplayConnectionRibbonDescriptor>::writeVertex(&v138, &v139);
                  v43 = v124;
                  v41 = v127;
                }

                v119 = v19;
                v145 = 0;
                *(&v141 + 4) = v41;
                *&v141 = v43;
                *(&v141 + 3) = -*v41.i32;
                v143 = xmmword_1B33B0590;
                md::Ribbons::RibbonWriter<md::TransitDisplayConnectionRibbonDescriptor>::writeVertex(&v138, &v139);
                v45 = v24 - 1;
                if (v24 - 1 < 2)
                {
                  v85 = v127;
                }

                else
                {
                  v46 = 1;
                  v47 = v127;
                  do
                  {
                    v139 = begin[v46];
                    v48 = v25[v46++];
                    v49 = v48.f32[1];
                    v50 = v47;
                    if (v46 < v24)
                    {
                      v51 = v46;
                      while (1)
                      {
                        v52 = 1;
                        v53 = v48.f32[0];
                        LODWORD(v54) = v25[v51];
                        do
                        {
                          v55 = vabds_f32(v54, v53);
                          if ((v52 & 1) == 0)
                          {
                            break;
                          }

                          v52 = 0;
                          v53 = v48.f32[1];
                          LODWORD(v54) = HIDWORD(v25[v51]);
                        }

                        while (v55 < 1.0e-10);
                        if (v55 >= 1.0e-10)
                        {
                          break;
                        }

                        if (++v51 == v24)
                        {
                          v50 = v47;
                          goto LABEL_42;
                        }
                      }

                      v56 = vsub_f32(v25[v51], v48);
                      v50 = vmul_n_f32(v56, v5 / sqrtf(vaddv_f32(vmul_f32(v56, v56))));
                    }

LABEL_42:
                    v57 = &v25[v46];
                    v58 = *v57;
                    v59 = v57[1];
                    v60 = vadd_f32(v50, v47);
                    v61 = vaddv_f32(vmul_f32(v60, v60));
                    if (v61 <= 0.0)
                    {
                      v63 = v47.f32[0];
                      v128 = v47;
                      v122 = v47.f32[1];
                      v66 = v47.f32[1];
                      v65 = v47.f32[0];
                    }

                    else
                    {
                      v62 = v5 / sqrtf(v61);
                      v63 = -(v60.f32[1] * v62);
                      *&v64 = v62 * v60.f32[0];
                      v66 = v47.f32[1];
                      v65 = v47.f32[0];
                      v122 = *&v64;
                      v128 = __PAIR64__(v64, LODWORD(v63));
                    }

                    v123 = v48.f32[0];
                    v125 = v50;
                    v140 = v48;
                    *&v144 = v35;
                    *(&v144 + 1) = v35 * v120;
                    v143 = xmmword_1B33B0590;
                    v121 = v63;
                    v142.f32[0] = v63;
                    v146 = 1;
                    v67 = atan2f(v50.f32[1], v50.f32[0]);
                    v68 = v67 - atan2f(v66, v65);
                    v69 = v68;
                    if (v68 <= 3.14159265)
                    {
                      v70 = 1.0;
                      if (v69 < -3.14159265)
                      {
                        v68 = v69 + 6.28318531;
                      }
                    }

                    else
                    {
                      v68 = v69 + -6.28318531;
                      v70 = 1.0;
                    }

                    v71 = fmaxf(ceilf(fabsf(v68) * 1.2732), v70);
                    if (v71 < 2)
                    {
                      _V1.S[1] = v125.i32[1];
                      _S2 = v122;
                      __asm { FMLA            S0, S2, V1.S[1] }

                      v84 = sqrtf(fmaxf(-((_S0 * _S0) + -1.0), 0.1));
                      v142.f32[1] = v122;
                      *&v141 = v121 / v84;
                      *(&v141 + 1) = v122 / v84;
                      *(&v141 + 2) = -(v121 / v84);
                      *(&v141 + 3) = -(v122 / v84);
                      md::Ribbons::RibbonWriter<md::TransitDisplayConnectionRibbonDescriptor>::writeVertex(&v138, &v139);
                    }

                    else
                    {
                      for (i = 0; i != v71; ++i)
                      {
                        v73 = __sincosf_stret(((i * (1.0 / (v71 + -1.0))) + -0.5) * v68);
                        v74 = vrev64_s32(vmul_n_f32(v128, v73.__sinval));
                        v75 = vmul_n_f32(v128, v73.__cosval);
                        v76.i32[0] = vsub_f32(v75, v74).u32[0];
                        v76.i32[1] = vadd_f32(v75, v74).i32[1];
                        *&v141 = v76;
                        *(&v141 + 1) = vneg_f32(v76);
                        v142 = v76;
                        md::Ribbons::RibbonWriter<md::TransitDisplayConnectionRibbonDescriptor>::writeVertex(&v138, &v139);
                        v146 = 0;
                      }
                    }

                    v85 = v125;
                    v35 = sqrtf(((v58 - v123) * (v58 - v123)) + ((v59 - v49) * (v59 - v49))) + v35;
                    v47 = v125;
                    v5 = 1.0;
                  }

                  while (v46 != v45);
                }

                v86 = v25[v45];
                v87 = v25[v24 - 2];
                v88 = 1;
                v89 = v87.f32[0];
                v90 = v86.f32[0];
                do
                {
                  v91 = vabds_f32(v90, v89);
                  if ((v88 & 1) == 0)
                  {
                    break;
                  }

                  v88 = 0;
                  LODWORD(v89) = HIDWORD(v25[v24 - 2]);
                  LODWORD(v90) = HIDWORD(v25[v45]);
                }

                while (v91 < 1.0e-10);
                v18 = v117;
                v20 = v118;
                v19 = v119;
                if (v91 >= 1.0e-10)
                {
                  v92 = vsub_f32(v86, v87);
                  v85 = vmul_n_f32(v92, v5 / sqrtf(vaddv_f32(vmul_f32(v92, v92))));
                }

                v126 = v85;
                v93 = v85.f32[1];
                *(&v141 + 4) = v85;
                *&v141 = -v85.f32[1];
                *(&v141 + 3) = -v85.f32[0];
                v146 = 0;
                v139 = begin[v24 - 1];
                v140 = v86;
                v142.f32[0] = -v85.f32[1];
                v142.i32[1] = v85.i32[0];
                *&v144 = v35;
                *(&v144 + 1) = v35 * v120;
                v14 = md::Ribbons::RibbonWriter<md::TransitDisplayConnectionRibbonDescriptor>::writeVertex(&v138, &v139);
                if (*(v21 + 97) == 1)
                {
                  v145 = 1;
                  *(&v141 + 4) = vadd_f32(vrev64_s32(v126), v126);
                  *&v141 = *v126.i32 - v93;
                  HIDWORD(v141) = vsub_f32(vdup_lane_s32(v126, 1), v126).u32[0];
                  v143 = *&v136[8];
                  v14 = md::Ribbons::RibbonWriter<md::TransitDisplayConnectionRibbonDescriptor>::writeVertex(&v138, &v139);
                }

                v94 = *(v21 + 8);
                v95 = *(v21 + 16) - v94;
                v96 = v95 >> 1;
                if (v95 >= 4)
                {
                  v97 = 2;
                  if (v96 > 2)
                  {
                    v97 = v96;
                  }

                  v98 = v97 - 1;
                  v99 = *(v21 + 8);
                  v100 = v118;
                  do
                  {
                    *v100 = v99;
                    v101 = v99 + 1;
                    v100[1] = v99 + 1;
                    v102 = v99 + 3;
                    LODWORD(v99) = v99 + 2;
                    v100[2] = v99;
                    v100[3] = v101;
                    v100[4] = v102;
                    v100[5] = v99;
                    v100 += 6;
                    --v98;
                  }

                  while (v98);
                }

                if (*(v21 + 48) != *(v21 + 40))
                {
                  v103 = v96 - *(v21 + 97);
                  v104 = 1;
                  if (*(v21 + 96))
                  {
                    v104 = 2;
                  }

                  if (v103 > v104)
                  {
                    v105 = v94 + 2 * v104;
                    v106 = v119;
                    do
                    {
                      *v106 = v105 - 2;
                      v106[1] = v105;
                      v106 += 2;
                      ++v104;
                      v105 += 2;
                    }

                    while (v103 > v104);
                  }
                }
              }

              v21 = *v17;
              v22 = *(*v17 + 8);
              v23 = *(*v17 + 16);
            }

            v13 += 16 * (v23 - v22);
            v20 += 2 * (*(v21 + 32) - *(v21 + 24));
            v19 += 2 * (*(v21 + 48) - *(v21 + 40));
            ++v17;
          }

          while (v17 != v18);
          v17 = *v116;
        }

        if (v17)
        {
          v107 = v115[8];
          v108 = v17;
          if (v107 != v17)
          {
            do
            {
              std::unique_ptr<md::TransitDisplayConnectionRibbon,mdm::TypeDeleter<md::TransitDisplayConnectionRibbon>>::reset[abi:nn200100](--v107);
            }

            while (v107 != v17);
            v108 = *v116;
          }

          v115[8] = v17;
          v109 = mdm::zone_mallocator::instance(v14);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TransitDisplayConnectionRibbon,mdm::TypeDeleter<md::TransitDisplayConnectionRibbon>>>(v109, v108);
          *v116 = 0;
          v116[1] = 0;
          v116[2] = 0;
        }

        *v116 = 0;
        v116[1] = 0;
        v116[2] = 0;
        v140 = 0;
        *&v141 = 0;
        v139 = 0;
        *v136 = &v139;
        std::vector<std::unique_ptr<md::TransitDisplayConnectionRibbon,mdm::TypeDeleter<md::TransitDisplayConnectionRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TransitDisplayConnectionRibbon,mdm::TypeDeleter<md::TransitDisplayConnectionRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v136);
        if (__p.__begin_)
        {
          operator delete(__p.__begin_);
        }

        v4 = a2;
        if (v130)
        {
          v131 = v130;
          operator delete(v130);
        }

        ggl::BufferMemory::~BufferMemory(v133);
        ggl::BufferMemory::~BufferMemory(v135);
        v7 = v114 + 1;
        v6 = v113;
      }

      v3 = v111 + 8;
    }

    while (v111 + 8 != v110);
  }
}

void sub_1B2ED99CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a46)
  {
    operator delete(a46);
  }

  ggl::BufferMemory::~BufferMemory(&a49);
  ggl::BufferMemory::~BufferMemory(&a55);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<md::TransitDisplayConnectionRibbon,mdm::TypeDeleter<md::TransitDisplayConnectionRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TransitDisplayConnectionRibbon,mdm::TypeDeleter<md::TransitDisplayConnectionRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        std::unique_ptr<md::TransitDisplayConnectionRibbon,mdm::TypeDeleter<md::TransitDisplayConnectionRibbon>>::reset[abi:nn200100](--v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TransitDisplayConnectionRibbon,mdm::TypeDeleter<md::TransitDisplayConnectionRibbon>>>(v6, v4);
  }
}

void std::unique_ptr<md::TransitDisplayConnectionRibbon,mdm::TypeDeleter<md::TransitDisplayConnectionRibbon>>::reset[abi:nn200100](uint64_t (****a1)(void))
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitDisplayConnectionRibbon>(v3, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TransitDisplayConnectionRibbon,mdm::TypeDeleter<md::TransitDisplayConnectionRibbon>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitDisplayConnectionRibbon>(uint64_t a1, void *a2)
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

void non-virtual thunk toggl::VertexDataTyped<ggl::Ribbon::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Ribbon::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Ribbon::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3CB40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Ribbons::RibbonLayer<md::TransitDisplayConnectionRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::TransitDisplayConnectionRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::Ribbons::RibbonLayer<md::TransitDisplayConnectionRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A0F9F0;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[10];
  a1[10] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
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

  v5 = *(*a1 + 8 * v4);
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

  return v6;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned long>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
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

  v5 = *(*a1 + 8 * v4);
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

  return 0;
}

uint64_t *TransitCollapsedNodeSets::join(uint64_t *this, uint64_t a2, uint64_t a3)
{
  v3 = *this;
  v4 = *(*this + 8 * a2);
  do
  {
    v5 = v4;
    v4 = *v4;
  }

  while (v4);
  v6 = v5[1];
  v7 = *(v3 + 8 * a3);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7);
  v9 = v8[1];
  if (v6 != v9)
  {
    v10 = *(v3 + 8 * v6);
    --this[4];
    v11 = *(v3 + 8 * v9);
    v12 = v10[2];
    v13 = v11[2];
    if (v12 >= v13)
    {
      *v11 = v10;
      if (v12 <= v13)
      {
        v10[2] = v12 + 1;
      }
    }

    else
    {
      *v10 = v11;
    }
  }

  return this;
}

void std::vector<md::TransitConnectedNode *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void TransitCollapsedNodeSets::~TransitCollapsedNodeSets(TransitCollapsedNodeSets *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1020C4024DAA5DELL);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 6));
  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<md::TransitOrphanNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TransitParentNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FA48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TransitConnectedNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FA10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitLink>>(unint64_t a1)
{
  if (a1 < 0x108421084210843)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::TransitLink>,md::TransitLink*>(md::TransitLink *a1, md::TransitLink *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    while (1)
    {
      *a3 = *v4;
      v5 = *(v4 + 2);
      *(a3 + 16) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v6 = *(v4 + 4);
      *(a3 + 24) = *(v4 + 3);
      *(a3 + 32) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = *(v4 + 6);
      *(a3 + 40) = *(v4 + 5);
      *(a3 + 48) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      *(a3 + 72) = 0;
      v8 = *(v4 + 7);
      v9 = *(v4 + 8);
      if (v9 != v8)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 5);
        if (v10 < 0x2AAAAAAAAAAAAABLL)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitLink::Section>>(v10);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      *(a3 + 96) = 0;
      v11 = *(v4 + 10);
      v12 = *(v4 + 11);
      v13 = v12 - v11;
      if (v12 != v11)
      {
        if (!((v13 >> 3) >> 61))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v13 >> 3);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(a3 + 104) = 0;
      *(a3 + 112) = 0;
      *(a3 + 120) = 0;
      v15 = *(v4 + 13);
      v14 = *(v4 + 14);
      if (v14 != v15)
      {
        std::vector<ggl::RenderTarget *>::__vallocate[abi:nn200100](a3 + 104, (v14 - v15) >> 3);
      }

      *(a3 + 136) = 0;
      v16 = (a3 + 136);
      *(a3 + 128) = a3 + 136;
      *(a3 + 144) = 0;
      v17 = v4;
      v18 = *(v4 + 16);
      v45 = v17;
      v19 = (v17 + 136);
      if (v18 != (v17 + 136))
      {
        do
        {
          v20 = *v16;
          v21 = (a3 + 136);
          if (*(a3 + 128) == v16)
          {
            goto LABEL_24;
          }

          v22 = *v16;
          v23 = (a3 + 136);
          if (v20)
          {
            do
            {
              v21 = v22;
              v22 = v22[1];
            }

            while (v22);
          }

          else
          {
            do
            {
              v21 = v23[2];
              v24 = *v21 == v23;
              v23 = v21;
            }

            while (v24);
          }

          v25 = v18[4];
          if (v21[4] < v25)
          {
LABEL_24:
            if (v20)
            {
              v26 = v21 + 1;
            }

            else
            {
              v26 = (a3 + 136);
            }
          }

          else
          {
            v26 = (a3 + 136);
            if (v20)
            {
              v26 = (a3 + 136);
              while (1)
              {
                while (1)
                {
                  v29 = v20;
                  v30 = v20[4];
                  if (v25 >= v30)
                  {
                    break;
                  }

                  v20 = *v29;
                  v26 = v29;
                  if (!*v29)
                  {
                    goto LABEL_28;
                  }
                }

                if (v30 >= v25)
                {
                  break;
                }

                v26 = v29 + 1;
                v20 = v29[1];
                if (!v20)
                {
                  goto LABEL_28;
                }
              }
            }
          }

          if (!*v26)
          {
LABEL_28:
            operator new();
          }

          v27 = v18[1];
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = v18[2];
              v24 = *v28 == v18;
              v18 = v28;
            }

            while (!v24);
          }

          v18 = v28;
        }

        while (v28 != v19);
      }

      v31 = *(v45 + 152);
      v32 = *(v45 + 168);
      *(a3 + 176) = 0u;
      *(a3 + 168) = v32;
      *(a3 + 152) = v31;
      *(a3 + 192) = 0u;
      *(a3 + 208) = *(v45 + 52);
      std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a3 + 176, *(v45 + 23));
      v33 = *(v45 + 24);
      if (!v33)
      {
        goto LABEL_63;
      }

      do
      {
        v34 = v33[2];
        v35 = *(a3 + 184);
        if (!*&v35)
        {
          goto LABEL_61;
        }

        v36 = vcnt_s8(v35);
        v36.i16[0] = vaddlv_u8(v36);
        if (v36.u32[0] > 1uLL)
        {
          v37 = v33[2];
          if (v34 >= *&v35)
          {
            v37 = v34 % *&v35;
          }
        }

        else
        {
          v37 = (*&v35 - 1) & v34;
        }

        v38 = *(*(a3 + 176) + 8 * v37);
        if (!v38 || (v39 = *v38) == 0)
        {
LABEL_61:
          operator new();
        }

        while (1)
        {
          v40 = v39[1];
          if (v40 == v34)
          {
            break;
          }

          if (v36.u32[0] > 1uLL)
          {
            if (v40 >= *&v35)
            {
              v40 %= *&v35;
            }
          }

          else
          {
            v40 &= *&v35 - 1;
          }

          if (v40 != v37)
          {
            goto LABEL_61;
          }

LABEL_60:
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_61;
          }
        }

        if (v39[2] != v34)
        {
          goto LABEL_60;
        }

        v33 = *v33;
      }

      while (v33);
LABEL_63:
      v41 = *(v45 + 216);
      *(a3 + 229) = *(v45 + 229);
      *(a3 + 216) = v41;
      v4 = (v45 + 248);
      a3 += 248;
      v42 = a1;
      if ((v45 + 248) == a2)
      {
        do
        {
          md::TransitLink::~TransitLink(v42);
          v42 = (v42 + 248);
        }

        while (v42 != a2);
        return;
      }
    }
  }
}