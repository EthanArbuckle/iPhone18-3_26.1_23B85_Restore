void *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<BOOL>(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      while (1)
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v13 = *v10;
          v11 = v10 + 2;
          v12 = v13;
          v14 = v13 + 120 * *(v11 + a2);
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v14, 0x3Eu) != *(v14 + 12))
          {
            break;
          }
        }

        v8 += 8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      if (a2 >= 0x17)
      {
        v15 = 23;
      }

      else
      {
        v15 = a2;
      }

      v16 = v12 + 120 * *(v11 + v15);
      v17 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v16 + 24), 0x3Eu);
      if (v17 != *(v16 + 36))
      {
        v18 = *(v16 + 24);
        v19 = *(v16 + 32);
        return (v18 + v19 + v17);
      }

      return &gss::PropertySetValueHelper<gss::ScenePropertyID,BOOL>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
    }

LABEL_13:
    v20 = *(v5 + 72);
    if (v20)
    {
      v22 = a2 >= 0x17 ? 23 : a2;
      v23 = *v20 + 120 * *(v20 + v22 + 16);
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v23, 0x3Eu) != *(v23 + 12))
      {
        v17 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v23 + 24), 0x3Eu);
        if (v17 != *(v23 + 36))
        {
          v18 = *(v23 + 24);
          v19 = *(v23 + 32);
          return (v18 + v19 + v17);
        }

        return &gss::PropertySetValueHelper<gss::ScenePropertyID,BOOL>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return &gss::defaultValueForKey<gss::ScenePropertyID,BOOL>(gss::ScenePropertyID)::_defaultValue;
}

unint64_t *md::SimpleBuffer<md::LabelCollisionItemBase *,2000ul>::push_back(unint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  if (*result < v5 || v5 > 2 * v4)
  {
    goto LABEL_8;
  }

  v6 = 2 * v4;
  if ((v6 | 1uLL) > 0x7D0)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 2000;
  }

  v8 = (1 << -__clz(v7 - 1));
  result = malloc_type_realloc(result[2], 8 * v8, 0x2004093837F09uLL);
  if (result)
  {
    v3[1] = v8;
    v3[2] = result;
    v4 = *v3;
LABEL_8:
    *(v3[2] + 8 * v4) = *a2;
    *v3 = v4 + 1;
  }

  return result;
}

void *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<int>(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      while (1)
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10 + 120 * *(v10 + a2 + 16);
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11, 0x42u) != *(v11 + 12))
          {
            break;
          }
        }

        v8 += 8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      return gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<int>(v10, 0x42u, a2);
    }

    else
    {
LABEL_11:
      v13 = *(v5 + 72);

      return gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<int>(v13, 66, a2, a4);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::ScenePropertyID,int>(66);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, int a4)
{
  v7 = result;
  while (2)
  {
    v8 = &a2[-1].i64[1];
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 3;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3uLL:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v9, v9 + 1, &a2[-1].i64[1]);
              case 4uLL:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v9, v9 + 1, v9 + 2, &a2[-1].i64[1]);
              case 5uLL:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v9, v9 + 1, v9 + 2, v9 + 3, &a2[-1].i64[1]);
            }
          }

          else
          {
            if (v10 == 2)
            {
              result = *v8;
              if (*v8 != *v9)
              {
                result = (*(*result + 80))(result);
                if (result)
                {
                  v30 = *v9;
                  *v9 = *v8;
                  *v8 = v30;
                }
              }

              return result;
            }

            if (v10 < 2)
            {
              return result;
            }
          }

          if (v10 <= 23)
          {
            if (a4)
            {

              return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(v9, a2->i64);
            }

            else if (v9 != a2)
            {
              while (&v7->u64[1] != a2)
              {
                v31 = v7;
                v7 = (v7 + 8);
                result = v31[1];
                if (result != *v31)
                {
                  result = (*(*result + 80))(result);
                  if (result)
                  {
                    v32 = v7->i64[0];
                    do
                    {
                      v33 = v31;
                      v31[1] = *v31;
                      v34 = *--v31;
                      if (v32 == v34)
                      {
                        break;
                      }

                      result = (*(*v32 + 80))(v32);
                    }

                    while ((result & 1) != 0);
                    *v33 = v32;
                  }
                }
              }
            }

            return result;
          }

          if (!a3)
          {

            return std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,md::LabelCollisionItemBase **>(v9, a2->i64, a2->i64);
          }

          v13 = v10 >> 1;
          v14 = &v9[v10 >> 1];
          if (v10 >= 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v7->i64, &v7->i64[v10 >> 1], &a2[-1].i64[1]);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(&v7->i64[1], v14 - 1, a2[-1].i64);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v7[1].i64, &v7->i64[v13 + 1], &a2[-2].i64[1]);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v14 - 1, v14, &v7->i64[v13 + 1]);
            v35 = v7->i64[0];
            v7->i64[0] = *v14;
            *v14 = v35;
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(&v7->i64[v10 >> 1], v7->i64, &a2[-1].i64[1]);
          }

          --a3;
          if (a4)
          {
            break;
          }

          v15 = v7[-1].i64[1];
          if (v15 != v7->i64[0] && ((*(*v15 + 80))(v15) & 1) != 0)
          {
            break;
          }

          result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollisionItemBase **,md::LabelCollider::collideItems(void)::$_0 &>(v7->i64, a2->i64);
          v9 = result;
          a4 = 0;
        }

        v16 = &v7->i64[1];
        v17 = v7->i64[0];
        v36 = a4;
        do
        {
          v18 = v16;
          if (*v16 == v17)
          {
            break;
          }

          v19 = (*(**v16 + 80))(*v16, v17);
          v16 = &v18->i64[1];
        }

        while ((v19 & 1) != 0);
        v20 = (v18 - 8);
        i = &a2[-1].i64[1];
        if (&v18[-1].u64[1] == v7)
        {
          i = a2;
          if (v18 < a2)
          {
            for (i = &a2[-1].i64[1]; ; --i)
            {
              if (*i == v17)
              {
                if (v18 >= i)
                {
                  break;
                }
              }

              else
              {
                v11 = (*(**i + 80))(*i, v17);
                if (v18 >= i || (v11 & 1) != 0)
                {
                  break;
                }
              }
            }
          }
        }

        else
        {
          while (*i == v17 || ((*(**i + 80))(*i, v17) & 1) == 0)
          {
            --i;
          }
        }

        if (v18 < i)
        {
          v21 = v18;
          v22 = i;
          do
          {
            v23 = *v21;
            *v21 = *v22;
            *v22 = v23;
            v24 = v21 + 1;
            do
            {
              v21 = v24;
              if (*v24 == v17)
              {
                break;
              }

              v25 = (*(**v24 + 80))(*v24, v17);
              v24 = v21 + 1;
            }

            while ((v25 & 1) != 0);
            v20 = (v21 - 1);
            do
            {
              do
              {
                v27 = *--v22;
                v26 = v27;
              }

              while (v27 == v17);
            }

            while (((*(*v26 + 80))(v26, v17) & 1) == 0);
          }

          while (v21 < v22);
        }

        if (v20 != v7)
        {
          v7->i64[0] = v20->i64[0];
        }

        v20->i64[0] = v17;
        v28 = v18 >= i;
        a4 = v36;
        if (v28)
        {
          break;
        }

LABEL_43:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,false>(v7, v20, a3, v36 & 1);
        a4 = 0;
        v9 = &v20->i64[1];
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(v7, v20);
      v9 = &v20->i64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(&v20->u64[1], a2);
      if (result)
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_43;
      }
    }

    a2 = v20;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *a2;
  if (*a2 == *a1 || (v7 = (*(*v6 + 80))(v6), v6 = *v4, (v7 & 1) == 0))
  {
    result = *a3;
    if (*a3 != v6)
    {
      result = (*(*result + 80))(result, v6);
      if (result)
      {
        v9 = *v4;
        *v4 = *a3;
        *a3 = v9;
        result = *v4;
        if (*v4 != *v5)
        {
          result = (*(*result + 80))(result);
          if (result)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    if (*a3 != v6)
    {
      result = (*(**a3 + 80))(*a3, *v4);
      if (result)
      {
        v4 = a3;
LABEL_14:
        v11 = *v5;
        *v5 = *v4;
        *v4 = v11;
        return result;
      }

      v6 = *v4;
    }

    v10 = *v5;
    *v5 = v6;
    *v4 = v10;
    result = *a3;
    if (*a3 != v10)
    {
      result = (*(*result + 80))(result);
      v5 = v4;
      v4 = a3;
      if (result)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t md::LabelCollisionItem::outranksItem(md::LabelCollisionItem *this, const md::LabelCollisionItemBase *a2)
{
  v2 = *(a2 + 52);
  if (v2 != 4)
  {
    LOBYTE(v2) = *(this + 52) <= v2;
    return v2 & 1;
  }

  v3 = *(this + 7);
  v4 = *(this + 64);
  v5 = *(a2 + 7);
  v6 = *(a2 + 64);
  v7 = atomic_load((v3 + 1328));
  v8 = atomic_load((v5 + 1328));
  if ((v8 ^ v7))
  {
    LOBYTE(v2) = atomic_load((v3 + 1328));
    return v2 & 1;
  }

  v10 = *(v3 + 24);
  v11 = *(v5 + 24);
  if (v10)
  {
    if (v10 == v11)
    {
      v27 = v4 > v6;
      if (v4 == v6)
      {
        v28 = *(v3 + 32) >= *(v5 + 32);
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    v12 = *(v10 + 72);
    if (v12)
    {
      v3 = v12;
    }
  }

  if (v11)
  {
    v13 = *(v11 + 72);
    if (v13)
    {
      v5 = v13;
    }
  }

  if (v4 == 1)
  {
    v14 = 748;
  }

  else
  {
    v14 = 744;
    if (*(v3 + 1336))
    {
      v14 = 748;
    }
  }

  v15 = *(v3 + v14);
  if (v6 == 1)
  {
    v16 = 748;
  }

  else
  {
    v16 = 744;
    if (*(v5 + 1336))
    {
      v16 = 748;
    }
  }

  v17 = *(v5 + v16);
  v18 = v15 < v17;
  if (v15 != v17)
  {
    goto LABEL_38;
  }

  v19 = *(v3 + 752);
  v20 = *(v5 + 752);
  v18 = v19 < v20;
  if (v19 != v20)
  {
    goto LABEL_38;
  }

  v21 = *(v3 + 764);
  v22 = *(v5 + 764);
  v18 = v21 < v22;
  if (v21 != v22)
  {
    goto LABEL_38;
  }

  v23 = *(v3 + 60);
  v24 = *(v5 + 60);
  v18 = v23 < v24;
  if (v23 != v24)
  {
    goto LABEL_38;
  }

  v25 = *(v3 + 1303);
  v26 = *(v5 + 1303);
  v27 = v25 > v26;
  if (v25 != v26)
  {
LABEL_32:
    LOBYTE(v2) = v27;
    return v2 & 1;
  }

  if (*(v3 + 1365))
  {
    if (!*(v5 + 1365))
    {
      LOBYTE(v2) = 1;
      return v2 & 1;
    }

    v2 = *(v3 + 1340);
    if (v2 != *(v5 + 1340))
    {
      return v2 & 1;
    }
  }

  else if (*(v5 + 1365))
  {
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  v29 = *(v3 + 196);
  v30 = *(v5 + 196);
  v18 = v29 < v30;
  if (v29 != v30)
  {
LABEL_38:
    LOBYTE(v2) = v18;
    return v2 & 1;
  }

  v31 = (*(**(v3 + 8) + 480))(*(v3 + 8), 0);
  v32 = (*(**(v5 + 8) + 480))();
  LOBYTE(v2) = v31 != 0;
  if (!(v31 | v32))
  {
    goto LABEL_48;
  }

  if (v31)
  {
    v33 = v32 == 0;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::compare(v31, v32);
    if (v34)
    {
      v2 = v34 >> 31;
      return v2 & 1;
    }

LABEL_48:
    v28 = v3 >= v5;
LABEL_29:
    LOBYTE(v2) = !v28;
  }

  return v2 & 1;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1, a2, a3);
  result = *a4;
  if (*a4 != *a3)
  {
    result = (*(*result + 80))(result);
    if (result)
    {
      v9 = *a3;
      *a3 = *a4;
      *a4 = v9;
      result = *a3;
      if (*a3 != *a2)
      {
        result = (*(*result + 80))(result);
        if (result)
        {
          v10 = *a2;
          *a2 = *a3;
          *a3 = v10;
          result = *a2;
          if (*a2 != *a1)
          {
            result = (*(*result + 80))(result);
            if (result)
            {
              v11 = *a1;
              *a1 = *a2;
              *a2 = v11;
            }
          }
        }
      }
    }
  }

  return result;
}

float32x2_t *md::LabelCollider::collideItems(float32x2_t *this, md::LabelCollisionItemBase **a2, uint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = 0;
    v7 = this + 12;
    v8 = this + 13;
    while (1)
    {
      v9 = a2[v6];
      v10 = (*(*v9 + 104))(v9);
      if (!v10)
      {
        goto LABEL_6;
      }

      v11 = v10;
      this = (*(*v10 + 120))(v10);
      if ((this & 1) == 0)
      {
        break;
      }

LABEL_20:
      if (++v6 == a3)
      {
        return this;
      }
    }

    md::LabelCollider::removeItemFromGrid(v5, v11);
LABEL_6:
    v33 = 256;
    v34 = 0;
    v12 = (*(*v9 + 88))(v9);
    if (v12 && (v13 = v12, v14 = (*(*v9 + 96))(v9), (*(*v13 + 24))(v13, v14)))
    {
      LOBYTE(v33) = 1;
      this = (*(*v9 + 72))(v9, &v33);
    }

    else
    {
      v15 = (*(*v9 + 112))(v9);
      v16 = (*(*v9 + 56))(v9, *v5, v5);
      if (v16)
      {
        v17 = 1;
        do
        {
          if (!md::LabelCollider::collideCandidate(v5, v9, v16, &v33))
          {
            break;
          }

          if (v15 & 1 | ((v33 & 0x100) == 0))
          {
            break;
          }

          v16 = (*(*v9 + 64))(v9, v17, &v33, *v5, v5);
          v17 = (v17 + 1);
        }

        while (v16);
      }

      if (HIBYTE(v33) == 1 && (*(*v9 + 32))(v9) && (*(*v9 + 40))(v9))
      {
        v16 = (*(*v9 + 56))(v9, *v5, v5);
        HIBYTE(v33) = 0;
        v34 = 0;
      }

      this = (*(*v9 + 72))(v9, &v33);
      if ((v33 & 0x100) == 0)
      {
        v18 = 0;
        v19 = 0;
        v35 = v9;
        do
        {
          v20 = v8->i32[v19];
          v21 = v7->i32[v19];
          if (v18)
          {
            break;
          }

          v18 = 1;
          v19 = 1;
        }

        while (v20 >= v21);
        if (v20 >= v21)
        {
          *(v9 + 10) = 0;
          v23 = *(v5 + 25);
          v24 = *(v5 + 27);
          if (v23 <= v24)
          {
            v25 = *(v5 + 11);
            v26 = *(v5 + 7) + 24 * (*(v5 + 24) + v25 * v23);
            v27 = *(v5 + 26);
            do
            {
              if (v7->i32[0] <= v27)
              {
                v29 = v7->i32[0] - 1;
                v30 = v26;
                do
                {
                  v32 = v30;
                  v31 = v29;
                  md::SimpleBuffer<md::LabelCollidableItem *,20ul>::push_back(v30, &v35);
                  v30 = v32 + 3;
                  v27 = v8->i32[0];
                  v29 = v31 + 1;
                }

                while (v31 + 1 < v8->i32[0]);
                v25 = *(v5 + 11);
                v24 = *(v5 + 27);
              }

              v26 += 24 * v25;
            }

            while (v23++ < v24);
          }
        }

        this = (*(*v16 + 16))(v16);
        *&v22 = vmul_f32(vsub_f32(this[1], *this), 0x3F0000003F000000);
        *(&v22 + 1) = vadd_f32(*&v22, *this);
        *(v9 + 8) = v22;
        *(v9 + 3) = 1065353216;
      }
    }

    goto LABEL_20;
  }

  return this;
}

uint64_t md::LabelCollisionItem::reserveSpaceItem(md::LabelCollisionItem *this)
{
  if (*(this + 64))
  {
    return 0;
  }

  v1 = *(this + 7);
  if (*(v1 + 1335) == 1)
  {
    md::Label::updateReserveSpaceCollisionItem(*(this + 7));
  }

  return *(v1 + 336);
}

uint64_t md::LabelCollisionItem::placementCandidate(md::LabelCollisionItem *this, md::LabelManager *a2, md::LabelCollider *a3)
{
  v3 = *(this + 7);
  if (*(this + 64) == 1)
  {
    return *(v3 + 344);
  }

  v6 = *(v3 + 288);
  if (v6)
  {
    (*(*v6 + 448))(v6);
  }

  if (*(a2 + 3664) != 1 || (*(**(*(a2 + 21) + 32) + 8))(*(*(a2 + 21) + 32)))
  {
    return v3 + 40;
  }

  v7 = *(v3 + 264);
  v8 = *(v3 + 288);
  v9 = !v7 || v8 == v7;
  if (!v9 || ((*(*v8 + 552))(v8) & 1) == 0 && ((*(**(v3 + 288) + 568))(*(v3 + 288)) & 1) == 0)
  {
    return v3 + 40;
  }

  v21 = 150994944;
  v22 = 0;
  if (!(*(**(v3 + 288) + 576))(*(v3 + 288), a2, a3, *(v3 + 328), &v21))
  {
    return v3 + 40;
  }

  v10 = *(v3 + 312);
  v11 = *(v3 + 313);
  v12 = *(v3 + 315);
  *(v3 + 321) = v22;
  *(v3 + 317) = v21;
  (*(**(v3 + 288) + 608))(&v20);
  v13 = v20;
  v20 = 0;
  v14 = *(v3 + 1320);
  *(v3 + 1320) = v13;
  if (v14)
  {
    std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v14);
    v15 = v20;
    v20 = 0;
    if (v15)
    {
      std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v15);
    }
  }

  if (*(v3 + 288))
  {
    *(v3 + 288) = 0;
    *(v3 + 1335) = 1;
  }

  LOWORD(v20) = 257;
  BYTE2(v20) = 1;
  md::Label::layoutForStaging(v3, a2, 0, &v20);
  v16 = *(v3 + 1320);
  *(v3 + 1320) = 0;
  if (v16)
  {
    std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v16);
  }

  if ((*(v3 + 1378) & 1) == 0)
  {
    if (*(v3 + 1334) & 1) != 0 || (v19 = atomic_load((v3 + 1328)), (v19))
    {
      *(v3 + 317) = v10;
      *(v3 + 318) = v11;
      *(v3 + 319) = 0;
      *(v3 + 320) = v12;
      LOWORD(v20) = 257;
      BYTE2(v20) = 1;
      md::Label::layoutForStaging(v3, a2, 0, &v20);
    }
  }

  if (*(v3 + 1378) != 1 || (v17 = *(v3 + 288)) != 0 && ((*(*v17 + 448))(v17), (*(v3 + 1378) & 1) == 0))
  {
    v3 = 0;
  }

  if (v3)
  {
    return v3 + 40;
  }

  else
  {
    return 0;
  }
}

uint64_t md::CompositeLabelPart::collisionWillStart(uint64_t this)
{
  v1 = *(this + 576);
  v2 = *(this + 584);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 448))(v3);
  }

  return this;
}

uint64_t md::CaptionedIconLabelPart::collisionWillStart(uint64_t this)
{
  v1 = this;
  v2 = *(this + 576);
  v3 = *(this + 584);
  while (v2 != v3)
  {
    v4 = *v2++;
    this = (*(*v4 + 448))(v4);
  }

  if (v1[947] == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v1[954];
  }

  v1[953] = v5 & 1;
  v1[931] = 0;
  return this;
}

uint64_t md::CaptionedIconLabelPart::shouldSnapToDefaultPlacement(md::CaptionedIconLabelPart *this)
{
  if (*(this + 956) == 1)
  {
    v1 = *(this + 957);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t md::LabelCollider::collideCandidate(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  *(a1 + 96) = xmmword_1B33B21B0;
  v8 = (a1 + 96);
  v9 = (a1 + 104);
  v10 = (*(*a3 + 16))(a3);
  v11 = 0;
  v12 = 0;
  v54 = *v10;
  *(a4 + 8) = 0;
  v13 = &v54;
  do
  {
    v14 = *(&v54 + v12 + 2);
    v15 = *v13;
    if (v11)
    {
      break;
    }

    v11 = 1;
    v13 = &v54 + 1;
    v12 = 1;
  }

  while (v14 >= v15);
  if (v14 < v15)
  {
    goto LABEL_5;
  }

  if (*(a1 + 92) == 1)
  {
    v17 = 0;
    v18 = &v54;
    v19 = 1;
    while (*v18 >= *(a1 + 12 + 4 * v17) && *(&v54 + v17 + 2) <= *(a1 + 20 + 4 * v17))
    {
      v20 = v19;
      v19 = 0;
      v18 = &v54 + 1;
      v17 = 1;
      if ((v20 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_5;
  }

LABEL_11:
  *&v21 = vmul_f32(vsub_f32(*(&v54 + 8), *&v54), 0x3F0000003F000000);
  v49 = vadd_f32(*&v21, *&v54);
  v50 = v21;
  *(&v21 + 1) = v49;
  v52 = v21;
  v53 = 1065353216;
  v22 = md::LabelCollider::rectToGridRect(a1, &v52);
  v24 = 0;
  v25 = 0;
  v26 = HIDWORD(v22);
  *(a1 + 96) = v22;
  v27 = HIDWORD(v23);
  *(a1 + 104) = v23;
  do
  {
    v28 = v9[v25];
    v29 = v8[v25];
    if (v24)
    {
      break;
    }

    v24 = 1;
    v25 = 1;
  }

  while (v28 >= v29);
  if (v28 < v29)
  {
LABEL_5:
    result = 0;
    *(a4 + 1) = 1;
    return result;
  }

  *(a1 + 112) = 0;
  ++*(a1 + 88);
  if (SHIDWORD(v22) <= SHIDWORD(v23))
  {
    v47 = v5;
    v48 = a4;
    v34 = *(a1 + 44);
    v35 = *(a1 + 56) + 24 * (v22 + v34 * HIDWORD(v22));
    v51 = v8;
    do
    {
      v36 = *v8;
      v37 = v35;
      if (v36 <= v23)
      {
        do
        {
          if (*v37)
          {
            v38 = v37[2];
            v39 = 8 * *v37;
            do
            {
              v40 = *v38;
              *&v52 = v40;
              v41 = *(a1 + 88);
              if (v40[10] != v41 && (a2[9] & v40[8]) != 0 && (a2[12] & v40[11]) == 0 && (a2[11] & v40[12]) == 0)
              {
                v40[10] = v41;
                md::SimpleBuffer<md::LabelCollidableItem *,20ul>::push_back((a1 + 112), &v52);
              }

              ++v38;
              v39 -= 8;
            }

            while (v39);
            LODWORD(v23) = *v9;
          }

          v37 += 3;
          v42 = v36++ < v23;
        }

        while (v42);
        v34 = *(a1 + 44);
        LODWORD(v27) = *(a1 + 108);
      }

      v35 += 24 * v34;
      v42 = v26 < v27;
      LODWORD(v26) = v26 + 1;
      v8 = v51;
    }

    while (v42);
    v43 = *(a1 + 112);
    v31 = *(a1 + 128);
    v30 = &v31[v43];
    if (v43)
    {
      v32 = 126 - 2 * __clz(v43);
      v5 = v47;
      a4 = v48;
      goto LABEL_18;
    }

    v5 = v47;
    a4 = v48;
  }

  else
  {
    v30 = *(a1 + 128);
    v31 = v30;
  }

  v32 = 0;
LABEL_18:
  std::__introsort<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,false>(v31, v30, v32, 1);
  *&v52 = v50;
  *(&v52 + 1) = v49;
  v53 = 1065353216;
  *(a4 + 1) = 0;
  v33 = *(a1 + 112);
  if (v33)
  {
    v44 = *(a1 + 128);
    v45 = 8 * v33;
    while (1)
    {
      v46 = *v44;
      if (gm::OBRect<float>::intersectsUsingInset(*v44 + 1, &v52))
      {
        if ((*(*v5 + 24))(v5, v46))
        {
          break;
        }
      }

      ++v44;
      v45 -= 8;
      if (!v45)
      {
        return 1;
      }
    }

    *(a4 + 1) = 1;
    *(a4 + 8) = v46;
  }

  return 1;
}

unint64_t *std::__introsort<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,false>(unint64_t *a1, unint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2 - 1;
  result = a1;
LABEL_2:
  v9 = a3 - 1;
  while (1)
  {
    v10 = a2 - result;
    if (v10 < 2)
    {
      return result;
    }

    a1 = result;
    if (v10 <= 3)
    {
      break;
    }

    if (v10 == 5)
    {
      result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(result, result + 1, result + 2, result + 3);
      v16 = a1[3];
      v17 = *(*v7 + 52);
      v18 = *(v16 + 52);
      v19 = v17 == v18;
      v20 = v17 < v18;
      if (v19)
      {
        v20 = *v7 < v16;
      }

      if (v20)
      {
        a1[3] = *v7;
        *v7 = v16;
        v22 = a1[2];
        v21 = a1[3];
        v23 = *(v21 + 52);
        v24 = *(v22 + 52);
        v19 = v23 == v24;
        v25 = v23 < v24;
        if (v19)
        {
          v25 = v21 < v22;
        }

        if (v25)
        {
          a1[2] = v21;
          a1[3] = v22;
          v26 = a1[1];
          v27 = *(v26 + 52);
          v19 = v23 == v27;
          v28 = v23 < v27;
          if (v19)
          {
            v28 = v21 < v26;
          }

          if (v28)
          {
            a1[1] = v21;
            a1[2] = v26;
            v29 = *a1;
            v30 = *(*a1 + 52);
            v19 = v23 == v30;
            v31 = v23 < v30;
            if (v19)
            {
              v31 = v21 < *a1;
            }

            if (v31)
            {
              *a1 = v21;
              a1[1] = v29;
            }
          }
        }
      }

      return result;
    }

    if (v10 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(result, result + 1, result + 2, a2 - 1);
    }

LABEL_43:
    if (v10 <= 23)
    {
      if (a4)
      {
        if (result != a2)
        {
          v45 = result + 1;
          if (result + 1 != a2)
          {
            v46 = 8;
            v47 = result;
            do
            {
              v49 = *v47;
              v48 = v47[1];
              v47 = v45;
              v50 = *(v48 + 52);
              v51 = *(v49 + 52);
              v19 = v50 == v51;
              v52 = v50 < v51;
              if (v19)
              {
                v52 = v48 < v49;
              }

              if (v52)
              {
                v53 = v46;
                while (1)
                {
                  *(result + v53) = v49;
                  v54 = v53 - 8;
                  if (v53 == 8)
                  {
                    break;
                  }

                  v49 = *(result + v53 - 16);
                  v55 = *(v49 + 52);
                  v56 = v48 < v49;
                  v19 = v50 == v55;
                  v57 = v50 < v55;
                  if (!v19)
                  {
                    v56 = v57;
                  }

                  v53 = v54;
                  if (!v56)
                  {
                    v58 = (result + v54);
                    goto LABEL_58;
                  }
                }

                v58 = result;
LABEL_58:
                *v58 = v48;
              }

              v45 = v47 + 1;
              v46 += 8;
            }

            while (v47 + 1 != a2);
          }
        }
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(result, a2);
      }

      return result;
    }

    if (v9 == -1)
    {

      return std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,md::LabelCollidableItem**>(result, a2, a2);
    }

    v61 = v9;
    v62 = v10 >> 1;
    v63 = &result[v10 >> 1];
    if (v10 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(&result[v10 >> 1], result, a2 - 1);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(result, v63, a2 - 1);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(a1 + 1, v63 - 1, a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(a1 + 2, &a1[v62 + 1], a2 - 3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(v63 - 1, v63, &a1[v62 + 1]);
      v64 = *a1;
      *a1 = *v63;
      *v63 = v64;
    }

    if ((a4 & 1) == 0)
    {
      v65 = *(a1 - 1);
      v66 = *(v65 + 52);
      v67 = *(*a1 + 52);
      v68 = v65 < *a1;
      if (v66 != v67)
      {
        v68 = v66 < v67;
      }

      if (!v68)
      {
        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollidableItem **,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem *,20ul> &)::$_0 &>(a1, a2);
        a4 = 0;
        a3 = v61;
        goto LABEL_2;
      }
    }

    v69 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollidableItem **,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem *,20ul> &)::$_0 &>(a1, a2);
    if ((v70 & 1) == 0)
    {
      v73 = v69;
LABEL_81:
      std::__introsort<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,false>(a1, v73, v61, a4 & 1);
      a3 = v61;
      a4 = 0;
      result = v73 + 1;
      goto LABEL_2;
    }

    v71 = v69;
    v72 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(a1, v69);
    v73 = v71;
    v74 = v71 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(v74, a2);
    if (result)
    {
      a2 = v73;
      a3 = v61;
      if (v72)
      {
        return result;
      }

      goto LABEL_1;
    }

    v9 = v61 - 1;
    result = v74;
    if (!v72)
    {
      goto LABEL_81;
    }
  }

  if (v10 == 2)
  {
    v11 = *v7;
    v12 = *result;
    v13 = *(*v7 + 52);
    v14 = *(*result + 52);
    v15 = v13 >= v14;
    if (v13 == v14)
    {
      v15 = v11 >= v12;
    }

    if (!v15)
    {
      *result = v11;
      *v7 = v12;
    }

    return result;
  }

  if (v10 != 3)
  {
    goto LABEL_43;
  }

  v32 = *result;
  v33 = result[1];
  v34 = *(v33 + 52);
  v35 = *(*result + 52);
  v36 = v34 < v35;
  if (v34 == v35)
  {
    v36 = v33 < *result;
  }

  v37 = *v7;
  v38 = *(*v7 + 52);
  v19 = v38 == v34;
  v39 = v38 < v34;
  if (v19)
  {
    v39 = *v7 < v33;
  }

  if (v36)
  {
    if (v39)
    {
      *result = v37;
LABEL_33:
      *v7 = v32;
      return result;
    }

    *result = v33;
    result[1] = v32;
    v59 = *(*v7 + 52);
    v19 = v59 == v35;
    v60 = v59 < v35;
    if (v19)
    {
      v60 = *v7 < v32;
    }

    if (v60)
    {
      result[1] = *v7;
      goto LABEL_33;
    }
  }

  else if (v39)
  {
    result[1] = v37;
    *v7 = v33;
    v41 = *result;
    v40 = result[1];
    v42 = *(v40 + 52);
    v43 = *(*result + 52);
    v19 = v42 == v43;
    v44 = v42 < v43;
    if (v19)
    {
      v44 = v40 < *result;
    }

    if (v44)
    {
      *result = v40;
      result[1] = v41;
    }
  }

  return result;
}

uint64_t md::LabelCollisionItem::setCollisionResult(uint64_t a1, uint64_t a2)
{
  *(a1 + 65) = *(a2 + 1);
  result = (*(*a1 + 112))(a1);
  if (!result || *(a1 + 65) == 1)
  {
    v5 = *(a1 + 56);

    return md::Label::setCollisionResult(v5, a2);
  }

  return result;
}

uint64_t md::Label::setCollisionResult(uint64_t a1, uint64_t a2)
{
  *(a1 + 352) = *(a2 + 8);
  v4 = *(a2 + 1);
  v5 = *(a1 + 24);
  if (v5)
  {
    if (v4)
    {
      if (*a2 == 1)
      {
        *(a1 + 845) = 21;
      }
    }

    else
    {
      (*(*v5 + 32))(v5, a1, 0);
    }
  }

  v6 = v4 ^ 1;
  if (*(a1 + 1373) == 1 && *(a1 + 288) == *(a1 + 264))
  {
    *(a1 + 1373) = 0;
    *(a1 + 1338) = 0;
  }

  if (*(a1 + 1379) != v6)
  {
    *(a1 + 1379) = v6;
    if ((v4 & 1) == 0 && *(a1 + 1378) == 1)
    {
      md::Label::updateStateMachineForStaging(a1, 4, 37);
    }
  }

  result = *(a1 + 288);
  if (result)
  {
    result = (*(*result + 456))(result, v4 ^ 1u);
  }

  if ((*(a1 + 1379) & 1) == 0)
  {
    v8 = *a2 ? 21 : 20;
    if (*(a1 + 844) == 2 || *(a1 + 845) != v8)
    {

      return md::Label::updateStateMachineForStaging(a1, 6, v8);
    }
  }

  return result;
}

uint64_t md::CaptionedIconLabelPart::setCollisionResult(uint64_t this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 576);
  v5 = *(this + 584);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = (*(*v6 + 456))(v6, a2);
  }

  if (a2)
  {
    v7 = *(v3 + 953);
    *(v3 + 680) = v7;
    if (*(*(v3 + 16) + 1348) == 1)
    {
      *(v3 + 954) = v7;
    }
  }

  return this;
}

BOOL DetermineJunctionVisibility(VKLabelNavJunction *a1, md::NavContext *a2, double a3)
{
  v5 = a1;
  if (((*(**(a2 + 2) + 416))(*(a2 + 2)) & 1) != 0 || (v7 = [(VKLabelNavJunction *)v5 routeOffset], v8 = *(*(*(a2 + 1) + 168) + 32), v9 = (*(*v8 + 64))(v8), *v9 <= v7) && (*v9 == v7 ? (v10 = *(v9 + 4) <= *(&v7 + 1)) : (v10 = 1), v10))
  {
    v6 = 1;
  }

  else
  {
    v11 = *(a2 + 4);
    v12 = *(v11 + 96) * 6.28318531;
    v13 = exp(*(v11 + 104) * 6.28318531 + -3.14159265);
    atan(v13);
    v14 = fmod(v12, 6.28318531);
    fmod(v14 + 6.28318531, 6.28318531);
    v15 = [(VKLabelNavJunction *)v5 mercatorCoordinate];
    v16 = [(VKLabelNavJunction *)v5 mercatorCoordinate];
    v17 = *v15 * 6.28318531;
    v18 = exp(*(v16 + 8) * 6.28318531 + -3.14159265);
    atan(v18);
    v19 = fmod(v17, 6.28318531);
    fmod(v19 + 6.28318531, 6.28318531);
    GEOCalculateDistance();
    v6 = v20 <= a3;
  }

  return v6;
}

uint64_t md::CompositeLabelPart::setCollisionResult(uint64_t this, uint64_t a2)
{
  v2 = *(this + 576);
  for (i = *(this + 584); v2 != i; this = (*(*v5 + 456))(v5, a2))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL gm::OBRect<float>::intersectsUsingInset(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1->f32[0];
  if (a1->f32[0] <= 0.0)
  {
    return 0;
  }

  v3 = a1->f32[1];
  if (v3 <= 0.0)
  {
    return 0;
  }

  v4 = a2->f32[0];
  if (a2->f32[0] <= 0.0)
  {
    return 0;
  }

  v5 = a2->f32[1];
  if (v5 <= 0.0)
  {
    return 0;
  }

  v6 = vsub_f32(a2[1], a1[1]);
  if (*&a1[2] == *&a2[2])
  {
    if (fabsf(v6.f32[0]) <= (v4 + v2))
    {
      v16 = fabsf(v6.f32[1]);
      return v16 <= (v5 + v3);
    }

    return 0;
  }

  v7 = a2[2].f32[0];
  v8 = a2[2].f32[1];
  v9 = a1[2].f32[0];
  v10 = a1[2].f32[1];
  v11 = -(v5 * v8);
  if (fabsf((v9 * v6.f32[0]) + (v10 * v6.f32[1])) > ((fabsf((v9 * (v7 * v4)) + (v10 * (v8 * v4))) + v2) + fabsf((v11 * v9) + (v10 * (v7 * v5)))))
  {
    return 0;
  }

  if (fabsf(-((v10 * v6.f32[0]) - (v9 * v6.f32[1]))) > ((fabsf(-((v10 * (v7 * v4)) - ((v8 * v4) * v9))) + v3) + fabsf(-((v10 * v11) - (v9 * (v7 * v5))))))
  {
    return 0;
  }

  v12 = v9 * v2;
  v13 = v10 * v2;
  v14 = -(v3 * v10);
  v15 = v9 * v3;
  if (fabsf((v7 * v6.f32[0]) + (v8 * v6.f32[1])) > ((fabsf((v12 * v7) + (v13 * v8)) + v4) + fabsf((v15 * v8) + (v14 * v7))))
  {
    return 0;
  }

  v16 = fabsf(-((v8 * v6.f32[0]) - (v7 * v6.f32[1])));
  v5 = fabsf(-((v12 * v8) - (v13 * v7))) + v5;
  v3 = fabsf(-((v14 * v8) - (v15 * v7)));
  return v16 <= (v5 + v3);
}

uint64_t md::CaptionedIconLabelPart::collidesWithItem(md::CaptionedIconLabelPart *this, float32x2_t *a2, uint64_t a3)
{
  if (*(this + 925) == 1 && (*(*(this + 2) + 1347) & 1) == 0)
  {
    if (md::LabelPart::partCollidesWithItem(**(this + 72), a2, a3))
    {
      v6 = *(this + 2);
      if ((*(v6 + 1334) & 1) == 0)
      {
        v7 = atomic_load((v6 + 1328));
        if ((v7 & 1) == 0)
        {
          return 1;
        }
      }
    }

    v8 = (*(***(this + 72) + 216))(**(this + 72));
    if (v8 != 255 && !*(this + v8 + 792))
    {
      *(this + 953) = 1;
    }
  }

  if (*(this + 926) != 1 || (*(this + 953) & 1) != 0)
  {
    return 0;
  }

  result = md::LabelPart::partCollidesWithItem(*(*(this + 72) + 8 * *(this + 925)), a2, a3);
  if (result)
  {
    if (*(this + 955))
    {
      return 1;
    }

    result = 1;
    if (*(this + 947) == 1)
    {
      *(this + 953) = 1;
      return 0;
    }
  }

  return result;
}

uint64_t md::LabelPart::partCollidesWithItem(uint64_t a1, float32x2_t *a2, uint64_t a3)
{
  v6 = (*(*a1 + 256))(a1);
  v7 = vmul_f32(vsub_f32(v6[1], *v6), 0x3F0000003F000000);
  v8 = vadd_f32(v7, *v6);
  v11[0] = v7;
  v11[1] = v8;
  v11[2] = 1065353216;
  result = gm::OBRect<float>::intersectsUsingInset(a2 + 1, v11);
  if (result)
  {
    v10 = *(*a1 + 464);

    return v10(a1, a2, a3);
  }

  return result;
}

void md::NavLabel::layoutForStagingWithNavContext(md::NavLabel *this, md::NavContext *a2)
{
  v2 = *(this + 38);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 640);
  if (!v3)
  {
    return;
  }

  v4 = atomic_load((v3 + 144));
  if ((v4 & 1) == 0)
  {
    return;
  }

  *(this + 315) = 0;
  v7 = 0.0;
  if ((*(this + 312) & 1) == 0)
  {
    if (*(this + 20))
    {
      v8 = *(this + 19);
      v100 = *(this + 136);
    }

    else
    {
      if (a2)
      {
        v9 = md::NavContext::worldPoint(*(*(a2 + 3) + 8), this + 14, *(*(a2 + 3) + 52));
      }

      else
      {
        v9 = 0.0;
        v10 = 0;
        v8 = 0;
      }

      *&v100 = v9;
      *(&v100 + 1) = v10;
    }

    v11 = 0;
    v101 = v8;
    v12 = *(a2 + 3);
    v13 = 864;
    do
    {
      v14 = 0;
      v15 = 0.0;
      v16 = v13;
      do
      {
        v15 = v15 + *(&v100 + v14) * *(v12 + v16);
        v14 += 8;
        v16 += 32;
      }

      while (v14 != 24);
      v96.f64[v11] = *(v12 + 864 + 8 * v11 + 96) + v15;
      ++v11;
      v13 += 8;
    }

    while (v11 != 4);
    __asm { FMOV            V1.2D, #1.0 }

    *(this + 44) = vcvt_f32_f64(vmulq_f64(v96, vdivq_f64(_Q1, vdupq_lane_s64(v98, 0))));
    v96 = xmmword_1B33B0710;
    v97 = 0.0;
    v99 = 0;
    v102.i8[0] = 0;
    v103 = 0;
    md::LabelLayoutContext::evaluateWorldPoint(v12, &v100, &v102, 1, 0, &v96, 1.0);
    if (v99 == 1)
    {
      return;
    }

    v7 = *v96.f64;
    *(this + 43) = v101;
    *(this + 328) = v100;
    v21 = v97;
    *(this + 54) = v21;
  }

  if (*(this + 10) && (*(*this + 32))(this) != 4)
  {
    v27 = *(this + 10);
    v28 = *(this + 11);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v96, v27, v28);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    v29 = v99;
    if ((v99 & 1) == 0)
    {
      v23 = 0;
      goto LABEL_74;
    }

    *(this + 12) = 0;
    v30 = (this + 96);
    *(this + 104) = 0;
    if (v7 >= 0x17)
    {
      v31 = 23;
    }

    else
    {
      v31 = v7;
    }

    *(this + 104) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*&v96.f64[0] + 24), 343, v31, 2, 0);
    LOBYTE(v100) = 1;
    v32 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(*(*&v96.f64[0] + 24), 132, v31, 2, &v100);
    if (v100)
    {
      v23 = v32;
    }

    else
    {
      v23 = 10;
    }

    v33 = (*(*this + 32))(this);
    if (v33 >= 3)
    {
      if (v33 == 3)
      {
        if (*(this + 312) == 1)
        {
          goto LABEL_40;
        }

        v35 = *(*&v96.f64[0] + 24);
        v36 = 220;
        goto LABEL_48;
      }

      if (v33 != 6)
      {
        *(this + 314) = 0;
        goto LABEL_50;
      }
    }

    if (*(this + 312) == 1)
    {
LABEL_40:
      v34 = *(this + 313);
LABEL_49:
      *(this + 314) = v34 & 1;
LABEL_50:
      v37 = *(this + 10);
      v38 = *(v37 + 16);
      if (!v38 || (v39 = std::__shared_weak_count::lock(v38)) == 0)
      {
        *v30 = 1.0;
        goto LABEL_72;
      }

      v40 = v39;
      if (!*(v37 + 8))
      {
        *v30 = 1.0;
LABEL_71:
        std::__shared_weak_count::__release_shared[abi:nn200100](v40);
LABEL_72:
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(222, 2, *(*&v96.f64[0] + 24), 0);
        *(this + 25) = v48;
        if (v99)
        {
          (*(**&v96.f64[0] + 56))(*&v96.f64[0]);
        }

LABEL_74:
        if (v98)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v98);
        }

        if (*&v96.f64[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&v96.f64[1]);
        }

        if ((v29 & 1) == 0)
        {
          return;
        }

        goto LABEL_79;
      }

      v41 = *(this + 10);
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = std::__shared_weak_count::lock(v42);
        if (v43)
        {
          v44 = *(v41 + 8);
LABEL_63:
          LOBYTE(v100) = 0;
          v102.i8[0] = 0;
          v45 = 1.0;
          v46 = *(v44 + 520);
          if (v46)
          {
            gss::ClientStyleState<gss::PropertyID>::queryNightMode(v46, &v100, &v102);
            v47 = v102.i8[0];
            if (v100 == 1)
            {
              v45 = gss::StylesheetManager<gss::PropertyID>::nightShieldBrightnessForMapMode(v44);
              if ((v47 & 1) == 0)
              {
                v45 = v45 + ((1.0 - v45) * *(*(v44 + 520) + 272));
              }
            }

            else if (v102.i8[0])
            {
              v45 = ((gss::StylesheetManager<gss::PropertyID>::nightShieldBrightnessForMapMode(v44) + -1.0) * *(*(v44 + 520) + 272)) + 1.0;
            }
          }

          *v30 = v45;
          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v43);
          }

          goto LABEL_71;
        }
      }

      else
      {
        v43 = 0;
      }

      v44 = 0;
      goto LABEL_63;
    }

    v35 = *(*&v96.f64[0] + 24);
    v36 = 221;
LABEL_48:
    v34 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v35, v36, v31, 2u, 0);
    goto LABEL_49;
  }

  if (*(this + 8) && (*(*this + 32))(this) == 4)
  {
    md::LabelStyle::setZoom(*(this + 8), v7);
    v22 = *(this + 8);
    v23 = v22[240];
    LOBYTE(v24) = v22[112];
    v25 = v24;
    if (v7 >= v25)
    {
      LOBYTE(v25) = v22[113];
      v26 = v7 <= LODWORD(v25);
    }

    else
    {
      v26 = 0;
    }

    *(this + 314) = v26;
  }

  else
  {
    if ((*(*this + 32))(this) == 4 || *(this + 10) && !*(this + 8))
    {
      (*(*this + 32))(this);
    }

    v23 = 0;
    *(this + 314) = 0;
  }

LABEL_79:
  *&v96.f64[0] = vadd_f32(*(this + 320), *(this + 352));
  (*(**(this + 38) + 960))(*(this + 38), this + 96);
  v49 = *(this + 38);
  v49[556] = 4 * v23;
  (*(*v49 + 968))();
  *(this + 90) = (*(**(this + 38) + 272))();
  *(this + 91) = v50;
  *(this + 92) = v51;
  *(this + 93) = v52;
  if ((*(*this + 32))(this) == 6)
  {
    v53 = 0;
    v54 = 0;
    v55 = *(a2 + 4);
    v56 = v55 + 48;
    v57 = v55 + 56;
    while (*(v57 + 4 * v54) > *(this + v54 + 90))
    {
      v58 = *(v56 + 4 * v54);
      v59 = *(this + v54 + 92);
      v54 = 1;
      v60 = (v58 < v59) & ~v53;
      v53 = 1;
      if ((v60 & 1) == 0)
      {
        _NF = v58 < v59;
        goto LABEL_84;
      }
    }
  }

  else
  {
    v63 = *(this + 92) - *(this + 90);
    v64 = *(this + 74);
    v65 = *(this + 38);
    v66 = *(v65 + 640);
    if (v66 && (v67 = atomic_load((v66 + 143)), (v67 & 1) != 0))
    {
      v68 = (*(**(v65 + 640) + 24))(*(v65 + 640));
    }

    else
    {
      v68 = 0;
    }

    v69 = v63 * 0.5;
    v70 = v63 * v64;
    v71 = *(this + 90);
    v72 = *(this + 92) - v71;
    v73 = *(a2 + 4);
    v74 = v73 + 48;
    v75 = v73 + 56;
    v76 = 0;
    v77 = 0;
    if (v68)
    {
      v78 = (v71 + v69) + (v72 * 0.5);
      v79 = v78 - v70;
      while (1)
      {
        v80 = v78;
        if (v78 < *(v74 + 4 * v77))
        {
          break;
        }

        v81 = *(v75 + 4 * v77);
        v77 = 1;
        v82 = (v78 < v81) & ~v76;
        v76 = 1;
        v78 = *(this + 91) + ((*(this + 93) - *(this + 91)) * 0.5);
        if ((v82 & 1) == 0)
        {
          if (v80 < v81)
          {
            v83 = 0;
            v84 = 0;
            while (1)
            {
              v85 = v79;
              if (v79 < *(v74 + 4 * v84))
              {
                break;
              }

              v86 = *(v75 + 4 * v84);
              v84 = 1;
              v87 = (v79 < v86) & ~v83;
              v83 = 1;
              v79 = *(this + 91) + ((*(this + 93) - *(this + 91)) * 0.5);
              if ((v87 & 1) == 0)
              {
                goto LABEL_110;
              }
            }
          }

          break;
        }
      }
    }

    else
    {
      v88 = (v71 - v69) + (v72 * 0.5);
      v89 = v88 + v70;
      while (1)
      {
        v90 = v88;
        if (v88 < *(v74 + 4 * v77))
        {
          break;
        }

        v91 = *(v75 + 4 * v77);
        v77 = 1;
        v92 = (v88 < v91) & ~v76;
        v76 = 1;
        v88 = *(this + 91) + ((*(this + 93) - *(this + 91)) * 0.5);
        if ((v92 & 1) == 0)
        {
          if (v90 < v91)
          {
            v93 = 0;
            v94 = 0;
            while (1)
            {
              v85 = v89;
              if (v89 < *(v74 + 4 * v94))
              {
                break;
              }

              v86 = *(v75 + 4 * v94);
              v94 = 1;
              v95 = (v89 < v86) & ~v93;
              v93 = 1;
              v89 = *(this + 91) + ((*(this + 93) - *(this + 91)) * 0.5);
              if ((v95 & 1) == 0)
              {
LABEL_110:
                _NF = v85 < v86;
LABEL_84:
                v62 = _NF;
                goto LABEL_105;
              }
            }
          }

          break;
        }
      }
    }
  }

  v62 = 0;
LABEL_105:
  *(this + 315) = v62;
}

void sub_1B2B8B4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, char a13)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  if (a13 == 1)
  {
    (*(*a9 + 56))(a9);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

double md::NavContext::worldPoint(char a1, double *a2, float a3)
{
  v3 = a3;
  result = *a2;
  if ((a1 & 1) == 0)
  {
    v5 = a2[2] * v3;
    v6 = result * 6.28318531;
    v7 = exp(a2[1] * 6.28318531 + -3.14159265);
    v8 = atan(v7) * 2.0 + -1.57079633;
    v9 = fmod(v6, 6.28318531);
    v10 = fmod(v9 + 6.28318531, 6.28318531) + -3.14159265;
    v11 = __sincos_stret(v8);
    return (6378137.0 / sqrt(v11.__sinval * v11.__sinval * -0.00669437999 + 1.0) + v5) * v11.__cosval * __sincos_stret(v10).__cosval;
  }

  return result;
}

uint64_t md::LabelCollisionItem::collidesWithObject(md::LabelCollisionItem *this, const md::CollisionObject *a2)
{
  v2 = *(this + 7);
  if (*(this + 64) == 1)
  {
    v5 = *(v2 + 344);
    if (v5)
    {
      return (*(*v5 + 32))(v5, a2);
    }
  }

  else
  {
    v3 = *(v2 + 288);
    if (v3)
    {
      return (*(*v3 + 472))(v3, a2);
    }
  }

  return 0;
}

uint64_t md::CaptionedIconLabelPart::collidesWithObject(md::CaptionedIconLabelPart *this, const md::CollisionObject *a2)
{
  if (*(this + 925) == 1 && ((*(***(this + 72) + 848))(**(this + 72), a2) & 1) != 0)
  {
    return 1;
  }

  if (*(this + 926) != 1 || (*(this + 680) & 1) != 0)
  {
    return 0;
  }

  v4 = *(**(*(this + 72) + 8 * *(this + 925)) + 848);

  return v4();
}

uint64_t md::LabelPart::partCollidesWithObject(md::LabelPart *this, const md::CollisionObject *a2)
{
  v4 = (*(*this + 256))(this);
  v5 = 0;
  v6 = 1;
  do
  {
    if (*(v4 + 8 + 4 * v5) <= *(a2 + v5 + 20) || *(v4 + 4 * v5) >= *(a2 + v5 + 22))
    {
      return 0;
    }

    v7 = v6;
    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v8 = *(*this + 472);

  return v8(this, a2);
}

void md::LabelLayoutContext::computeZoomAtPoint(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6)
{
  v9 = 0;
  v10 = 136;
  if (a4)
  {
    v10 = 112;
  }

  v11 = a1 + v10;
  do
  {
    *(&v42 + v9) = *(a2 + v9) - *(v11 + v9);
    v9 += 8;
  }

  while (v9 != 24);
  v12 = 0;
  v13 = a1 + 160;
  v14 = 0.0;
  do
  {
    v14 = v14 + *(&v42 + v12) * *(v13 + v12);
    v12 += 8;
  }

  while (v12 != 24);
  if (a3 > 1 || (v15 = v14, *(a1 + 15) == 1))
  {
    v16 = 0;
    v17 = 0.0;
    do
    {
      v17 = v17 + *(&v42 + v16) * *(&v42 + v16);
      v16 += 8;
    }

    while (v16 != 24);
    v15 = sqrt(v17);
  }

  v18 = v15 / a6;
  *(a5 + 16) = v15;
  *(a5 + 24) = v15 / a6;
  if (*(a1 + 1273) == 1 && (v19 = *(a1 + 1276), v20 = *(a1 + 1280), v19 > v20))
  {
    v21 = v14 < *(a1 + 256) - *(a1 + 256) * v20 / v19 || v14 > *(a1 + 256) * v20 / v19 + *(a1 + 256);
  }

  else
  {
    v21 = v14 < *(a1 + 272) || v14 > *(a1 + 280);
  }

  *(a5 + 32) = v21;
  if ((*(a1 + 16) & 1) != 0 || !v21)
  {
    v22 = *(a1 + 264);
    v23 = *(a1 + 256) / v14;
    *(a5 + 12) = v23;
    v24 = *(a1 + 8);
    if (v24 == 1)
    {
      gm::Matrix<double,3,1>::normalized<int,void>(&v42);
    }

    else
    {
      v26 = 0;
      v27 = 0.0;
      do
      {
        v27 = v27 + *(a2 + v26) * *(a2 + v26);
        v26 += 8;
      }

      while (v26 != 24);
      if (sqrt(v27) <= 0.001)
      {
        v40 = *(a1 + 208);
        v41 = *(a1 + 224);
      }

      else
      {
        *&v40 = gm::Matrix<double,3,1>::normalized<int,void>(a2);
        *(&v40 + 1) = v28;
        v41 = v29;
      }

      v30 = 0;
      v25 = 0.0;
      do
      {
        v25 = v25 + *(&v40 + v30) * *(v13 + v30);
        v30 += 8;
      }

      while (v30 != 24);
    }

    v31 = v25 + 1.0;
    v32 = 0.0;
    v33 = fminf(fmaxf(v31, 0.0), 1.0);
    *(a5 + 4) = v33;
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v37 = *(a1 + 428);
          v38 = log2(v22 * v14);
          v32 = v37 - v38;
          if ((v24 & 1) == 0)
          {
            v32 = *(a1 + 296) + v32;
          }

          if ((*(a1 + 15) & 1) == 0 && v33 > 0.8)
          {
            v32 = fmaxf(v32 + log2f(fmaxf(1.0 - v33, 0.01)), 0.0);
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      if ((a3 - 2) < 4)
      {
        v34 = v18;
        if (a3 > 3)
        {
          if (a3 != 4)
          {
            if (a3 == 5)
            {
              v32 = (logf(fmaxf(220.0 / v34, 0.1) + -1.0) * -5.0) + 25.0;
            }

            goto LABEL_49;
          }

          v35 = log2f(fmaxf(v34 + -3.0, 1.0));
          v36 = 3.1063;
          goto LABEL_48;
        }

        if (a3 != 2)
        {
          v35 = log2f(fmaxf(v34 + -3.0, 1.0));
          v36 = 1.7095;
LABEL_48:
          v32 = v35 * v36;
          goto LABEL_49;
        }

        v32 = log2f(fmaxf(v34, 1.0));
LABEL_49:
        v39 = floor((v32 * 100.0) + 0.5) * 0.01;
        *a5 = fmaxf(v39, 0.0);
        return;
      }

      if (a3 != 6)
      {
        goto LABEL_49;
      }
    }

    v32 = *(a1 + 32);
    goto LABEL_49;
  }
}

BOOL md::LabelSpacingDedupingGroup::isResolved(md::LabelSpacingDedupingGroup *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (a2 >= ((*(this + 2) - v2) >> 3))
  {
    return 0;
  }

  v4 = *(this + 5);
  v3 = *(this + 6);
  if (v4 == v3)
  {
    return 0;
  }

  v5 = *(this + 24);
  v6 = v4 + 8;
  do
  {
    v7 = vsub_f32(*(*(v2 + 8 * a2) + 688), *(*(v6 - 8) + 688));
    v7.f32[0] = vaddv_f32(vmul_f32(v7, v7));
    result = v7.f32[0] < v5;
    v9 = v7.f32[0] < v5 || v6 == v3;
    v6 += 8;
  }

  while (!v9);
  return result;
}

mdm::zone_mallocator *md::LabelDedupingGroup::addResolvedLabel(mdm::zone_mallocator *this, md::LabelBase *a2)
{
  v3 = this;
  v5 = *(this + 6);
  v4 = *(this + 7);
  if (v5 >= v4)
  {
    v7 = *(this + 5);
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

    v21[4] = this + 64;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(this);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBase *>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v8];
    v15 = &v13[8 * v11];
    *v14 = a2;
    v6 = v14 + 8;
    v16 = *(v3 + 5);
    v17 = *(v3 + 6) - v16;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v16, v17);
    v19 = *(v3 + 5);
    *(v3 + 5) = v18;
    *(v3 + 6) = v6;
    v20 = *(v3 + 7);
    *(v3 + 7) = v15;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    this = std::__split_buffer<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator> &>::~__split_buffer(v21);
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(v3 + 6) = v6;
  return this;
}

void *gss::CartoStyle<gss::PropertyID>::hasValueForKeyAtZ(void *result, unsigned __int16 a2, unsigned int a3)
{
  if (result)
  {
    v3 = *result + 120 * *(result + a3 + 16);
    return (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v3, a2) != *(v3 + 12));
  }

  return result;
}

uint64_t md::LabelPart::collidesWithObject(md::LabelPart *this, const md::CollisionObject *a2)
{
  if (*(this + 232) == 0 || (*(a2 + 200) & *(this + 272)) != 0)
  {
    return 0;
  }

  v3 = *(a2 + 21);
  if (*(this + 30))
  {
    v4 = (this + 72);
    if (v3)
    {
      return md::CollisionObject::circlesCollideWithCircles(v4, a2);
    }

    else
    {
      return md::CollisionObject::circlesCollideWithRects(v4, a2);
    }
  }

  else if (v3)
  {
    return md::CollisionObject::circlesCollideWithRects(a2, (this + 72));
  }

  else if ((*(this + 268) & 1) != 0 || *(a2 + 196) == 1)
  {
    return md::CollisionObject::rectsCollideWithRectsOBB((this + 72), a2);
  }

  else
  {
    return md::CollisionObject::rectsCollideWithRects((this + 72), a2);
  }
}

BOOL md::CollisionObject::circlesCollideWithCircles(md::CollisionObject *this, const md::CollisionObject *a2)
{
  v2 = *(a2 + 44);
  if (v2)
  {
    v3 = 0;
    v4 = 1;
    while (1)
    {
      v5 = (*(a2 + 23) + 24 * v3);
      v6 = v5[*(this + 199) + 1].f32[0];
      if (v6 > 0.0)
      {
        v7 = *(this + 44);
        if (v7)
        {
          break;
        }
      }

LABEL_9:
      v4 = ++v3 < v2;
      if (v3 == v2)
      {
        return 0;
      }
    }

    v8 = *(this + 23);
    while (1)
    {
      v9 = v8[*(a2 + 199) + 1].f32[0];
      if (v9 > 0.0)
      {
        v10 = vsub_f32(*v8, *v5);
        if (vaddv_f32(vmul_f32(v10, v10)) < ((v9 + v6) * (v9 + v6)))
        {
          break;
        }
      }

      v8 += 3;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

float md::NavRoadSignLabelPart::updateWithNavLabelStyle(uint64_t a1, uint64_t a2)
{
  md::NavLabelPart::updateWithNavLabelStyle(a1, a2);
  result = *(a2 + 4);
  *(a1 + 596) = result;
  return result;
}

uint64_t md::LabelCollisionItem::nextPlacementCandidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 56);
  if ((*(**(v8 + 288) + 544))(*(v8 + 288)))
  {
    v20 = 150994944;
    v21 = 0;
    if ((*(**(v8 + 288) + 584))(*(v8 + 288), a4, a5, *(v8 + 328), a3, &v20))
    {
      if (__PAIR64__(BYTE1(v20), v20) == __PAIR64__(*(v8 + 313), *(v8 + 312)) && HIBYTE(v20) == *(v8 + 315) && (HIBYTE(v20) != 10 || v21 == *(v8 + 316)))
      {
        return v8 + 40;
      }

      (*(**(v8 + 288) + 608))(&v19);
      v9 = v19;
      v19 = 0;
      v10 = *(v8 + 1320);
      *(v8 + 1320) = v9;
      if (v10)
      {
        std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v10);
        v11 = v19;
        v19 = 0;
        if (v11)
        {
          std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v11);
        }
      }

      (*(**(v8 + 288) + 456))(*(v8 + 288), 0);
      if (*(v8 + 288))
      {
        *(v8 + 288) = 0;
        *(v8 + 1335) = 1;
      }

      v12 = *(v8 + 312);
      v13 = *(v8 + 313);
      v14 = *(v8 + 315);
      *(v8 + 321) = v21;
      *(v8 + 317) = v20;
      LOWORD(v19) = 257;
      BYTE2(v19) = 1;
      md::Label::layoutForStaging(v8, a4, 0, &v19);
      v15 = *(v8 + 1320);
      *(v8 + 1320) = 0;
      if (v15)
      {
        std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v15);
      }

      if ((*(v8 + 1378) & 1) == 0)
      {
        if (*(v8 + 1334) & 1) != 0 || (v18 = atomic_load((v8 + 1328)), (v18))
        {
          *(v8 + 317) = v12;
          *(v8 + 318) = v13;
          *(v8 + 319) = 0;
          *(v8 + 320) = v14;
          LOWORD(v19) = 257;
          BYTE2(v19) = 1;
          md::Label::layoutForStaging(v8, a4, 0, &v19);
        }
      }

      if (*(v8 + 1378) == 1)
      {
        v16 = *(v8 + 288);
        if (v16)
        {
          (*(*v16 + 448))(v16);
        }

        return v8 + 40;
      }
    }
  }

  return 0;
}

uint64_t md::NavLabelPart::updateWithNavLabelStyle(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != *(result + 832))
  {
    v3 = result;
    *(result + 832) = v2;
    *(result + 565) = v2 != 0;
    if (v2)
    {
      operator new();
    }

    result = *(result + 840);
    *(v3 + 840) = 0;
    if (result)
    {

      JUMPOUT(0x1B8C62190);
    }
  }

  return result;
}

__n128 md::NavLabelPart::layoutForStagingWithNavContext(uint64_t a1, uint64_t a2, _DWORD *a3, __n128 result)
{
  v4 = *(a1 + 640);
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = a1 + 72;
    do
    {
      v11 = *(a1 + 80 + 4 * v9);
      v12 = *(v10 + 4 * v9);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v11 >= v12);
    if (v11 < v12)
    {
      v13 = atomic_load((v4 + 144));
      if (v13)
      {
        v14 = *(v4 + 64);
      }

      else
      {
        v14 = xmmword_1B33B0730;
      }

      v20[0] = v14;
      md::CollisionObject::resetWithRects((a1 + 72), 1u);
      md::CollisionObject::addRect(v10, v20);
    }

    *(a1 + 280) = *a3;
    *(a1 + 284) = a3[1];
    *(a1 + 104) = *a3;
    *(a1 + 108) = a3[1];
    md::CollisionObject::setupShapeData(v10);
    if (*(a1 + 565) == 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 1;
      md::LabelPart::generateModelMatrixForMeshPositioningMode(v20, &v17, *(a2 + 24), a1 + 848, *(a1 + 830), 1, *(a1 + 832), *(*(a1 + 32) + 24), *(*(a1 + 32) + 20));
      v15 = 0;
      v16 = *(a1 + 840);
      do
      {
        result = v20[v15];
        *(v16 + v15 * 16) = result;
        ++v15;
      }

      while (v15 != 8);
    }
  }

  return result;
}

uint64_t md::CaptionedIconLabelPart::supportsAlternatePlacements(uint64_t a1, unsigned int a2)
{
  if (a2 <= 1 && *(a1 + 926) == 1)
  {
    if (*(a1 + 800) == *(a1 + 808))
    {
      v2 = *(a1 + 947);
      if (v2 != 1)
      {
        LOBYTE(v2) = *(a1 + 794);
      }
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t md::CaptionedIconLabelPart::collideIconPart(md::CaptionedIconLabelPart *this, const md::LabelManager *a2, md::LabelCollider *a3, md::LabelCollidableItem *a4)
{
  if ((*(this + 931) & 1) == 0)
  {
    *(this + 931) = 1;
    if (*(this + 925) == 1)
    {
      v5 = *(this + 2);
      if ((v5[1347] & 1) == 0)
      {
        v7 = **(this + 72);
        if (v5[1334] & 1) != 0 || (v8 = atomic_load(v5 + 1328), (v8))
        {
          v9 = *(a2 + 53);
          *&v10 = (*(*v7 + 272))(**(this + 72));
          v11 = 0;
          v12 = 0;
          v31.i64[0] = __PAIR64__(v13, v10);
          v14 = &v31;
          v31.i64[1] = __PAIR64__(v16, v15);
          do
          {
            if (v14->f32[0] < *(v9 + 1104 + 4 * v12))
            {
              *(this + 932) = 1;
              return *(this + 932);
            }

            v17 = v31.f32[v12 + 2];
            v18 = *(v9 + 1112 + 4 * v12);
            v19 = v11 | (v17 > v18);
            v11 = 1;
            v14 = &v31.i32[1];
            v12 = 1;
          }

          while ((v19 & 1) == 0);
          *(this + 932) = v17 > v18;
          if (v17 > v18)
          {
            return *(this + 932);
          }
        }

        else
        {
          v31.i64[0] = &unk_1F2A5BC08;
          v31.i64[1] = v7;
          v32 = 0;
          v30 = 1;
          v20 = md::LabelCollider::collideCandidate(a3, a4, &v31, &v29);
          v21 = v30 | ~v20;
          *(this + 932) = v30 & 1 | ((v20 & 1) == 0);
          if (v21)
          {
            return *(this + 932);
          }
        }

        v22 = (*(*v7 + 272))(v7);
        v31.i64[0] = __PAIR64__(v23, v22.u32[0]);
        v31.i64[1] = __PAIR64__(v25, v24);
        v22.i64[0] = *(this + 35);
        *(this + 218) = gm::Box<float,2>::operator-(&v31, v22);
        *(this + 219) = v26;
        *(this + 220) = v27;
        *(this + 221) = v28;
        return *(this + 932);
      }
    }

    *(this + 932) = 0;
    *(this + 872) = 0u;
  }

  return *(this + 932);
}

uint64_t md::CaptionedIconLabelPart::findAlternatePlacement(md::CaptionedIconLabelPart *a1, uint64_t a2, md::LabelCollider *a3, md::LabelCollidableItem *a4, uint64_t a5, uint64_t a6)
{
  if ((md::CaptionedIconLabelPart::collideIconPart(a1, a2, a3, a4) & 1) == 0)
  {
    if (*(a2 + 3664) == 1 && ((*(**(*(a2 + 168) + 32) + 8))(*(*(a2 + 168) + 32)) & 1) == 0)
    {
      v11 = (*(*a1 + 568))(a1);
      if (md::CaptionedIconLabelPart::tryAlternatePlacements(a1, v11, 0, 0, a2, a3, a4, a6))
      {
        return 1;
      }
    }

    v12 = *(a1 + 947);
    if (v12 == 1)
    {
      goto LABEL_12;
    }

    if (v12 == 2)
    {
      v13 = *(a1 + 2);
      if (*(v13 + 1334))
      {
        goto LABEL_13;
      }

      v14 = atomic_load((v13 + 1328));
      if (v14)
      {
        goto LABEL_13;
      }

      if (*(a1 + 947) == 2 && *(a1 + 794) == 1)
      {
        (*(***(a1 + 72) + 224))(**(a1 + 72), *(a1 + 795));
LABEL_12:
        *(a1 + 953) = 1;
LABEL_13:
        v15 = *(a1 + 208);
        *(a6 + 4) = *(a1 + 836);
        *a6 = v15;
        return 1;
      }
    }
  }

  return 0;
}

uint64_t md::RoadSignLabelIcon::isIconRTL(id *this)
{
  v1 = this[20];
  v2 = *([v1 textMetrics] + 137);

  return v2;
}

uint64_t md::LabelCollisionItem::isAlwaysVisible(md::LabelCollisionItem *this)
{
  v1 = *(this + 7);
  if (*(v1 + 1334))
  {
    v2 = 1;
  }

  else
  {
    v2 = atomic_load((v1 + 1328));
  }

  return v2 & 1;
}

BOOL md::CurvedTextLabelPart::supportsAlternatePlacements(uint64_t a1, unsigned int a2, uint64_t a3)
{
  result = 0;
  if (a2 <= 1 && *(a1 + 1492) == 2)
  {
    if (*(a1 + 1485) != 8)
    {
      return 0;
    }

    v5 = *(a3 + 8);
    v6 = v5[52];
    if ((v6 & 0xFFFFFFFD) != 1)
    {
      return 0;
    }

    result = 1;
    if (v6 == 3 && (*(a3 + 1) & 1) != 0)
    {
      v7 = (*(*v5 + 48))(*(a3 + 8));
      if ((v8 & 1) == 0)
      {
        return 1;
      }

      v9 = *(a1 + 1024);
      v10 = 16;
      if (*(v9 + 197))
      {
        v10 = 24;
      }

      return fabsf((*(v9 + v10) * *&v7) + (*(v9 + v10 + 4) * *(&v7 + 1))) >= 0.8;
    }
  }

  return result;
}

uint64_t md::CollisionObject::circlesCollideWithRects(md::CollisionObject *this, const md::CollisionObject *a2)
{
  v2 = *(a2 + 44);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a2 + 199);
  v5 = *(this + 199);
  v6 = *(this + 44);
  v7 = *(a2 + 23);
  v8 = *(this + 44);
  do
  {
    v9 = (v7 + 24 * v3);
    v10 = v9[v5 + 1];
    v11 = vneg_f32(v10);
    v28 = v11;
    v29 = v10;
    if (v8)
    {
      v12 = 0;
      do
      {
        v13 = (*(this + 23) + 24 * v12);
        v14 = v13[v4 + 1].f32[0];
        if (v14 > 0.0)
        {
          v15 = vsub_f32(*v13, *v9);
          if (*(a2 + 196) == 1)
          {
            v16 = vmul_n_f32(v15, *(a2 + 4));
            v17 = vrev64_s32(vmul_n_f32(v15, *(a2 + 5)));
            v18 = vsub_f32(v16, v17);
            v15.i32[0] = vadd_f32(v16, v17).u32[0];
            v15.i32[1] = v18.i32[1];
          }

          v19 = 0;
          v20 = &v28;
          v21 = 1;
          while (v29.f32[v19] >= *v20)
          {
            v23 = v21;
            v21 = 0;
            v20 = &v28 + 1;
            v19 = 1;
            if ((v23 & 1) == 0)
            {
              v24 = vmaxnm_f32(vsub_f32(v15, v10), vsub_f32(v11, v15));
              if (v24.f32[0] < v14 && v24.f32[1] < v14)
              {
                if (v24.f32[0] <= 0.0)
                {
                  return 1;
                }

                v24.f32[0] = vaddv_f32(vmul_f32(v24, v24));
                v26 = v14 * v14;
                if (v24.f32[1] <= 0.0 || v24.f32[0] < v26)
                {
                  return 1;
                }
              }

              break;
            }
          }
        }

        ++v12;
      }

      while (v12 < v6);
      v8 = v6;
    }

    ++v3;
  }

  while (v3 < v2);
  return 0;
}

unint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 52);
  v7 = *(*result + 52);
  v8 = v6 < v7;
  if (v6 == v7)
  {
    v8 = *a2 < *result;
  }

  v9 = *a3;
  v10 = *(*a3 + 52);
  v11 = v10 == v6;
  v12 = v10 < v6;
  if (v11)
  {
    v12 = *a3 < v4;
  }

  if (v8)
  {
    if (v12)
    {
      *result = v9;
LABEL_17:
      *a3 = v5;
      v4 = v5;
      goto LABEL_19;
    }

    *result = v4;
    *a2 = v5;
    v4 = *a3;
    v17 = *(*a3 + 52);
    v11 = v17 == v7;
    v18 = v17 < v7;
    if (v11)
    {
      v18 = *a3 < v5;
    }

    if (v18)
    {
      *a2 = v4;
      goto LABEL_17;
    }
  }

  else if (v12)
  {
    *a2 = v9;
    *a3 = v4;
    v13 = *result;
    v14 = *(*a2 + 52);
    v15 = *(*result + 52);
    v11 = v14 == v15;
    v16 = v14 < v15;
    if (v11)
    {
      v16 = *a2 < *result;
    }

    if (v16)
    {
      *result = *a2;
      *a2 = v13;
      v4 = *a3;
    }
  }

  else
  {
    v4 = *a3;
  }

LABEL_19:
  v19 = *(*a4 + 52);
  v20 = *(v4 + 52);
  v11 = v19 == v20;
  v21 = v19 < v20;
  if (v11)
  {
    v21 = *a4 < v4;
  }

  if (v21)
  {
    *a3 = *a4;
    *a4 = v4;
    v22 = *a2;
    v23 = *(*a3 + 52);
    v24 = *(*a2 + 52);
    v11 = v23 == v24;
    v25 = v23 < v24;
    if (v11)
    {
      v25 = *a3 < *a2;
    }

    if (v25)
    {
      *a2 = *a3;
      *a3 = v22;
      v26 = *result;
      v27 = *(*a2 + 52);
      v28 = *(*result + 52);
      v11 = v27 == v28;
      v29 = v27 < v28;
      if (v11)
      {
        v29 = *a2 < *result;
      }

      if (v29)
      {
        *result = *a2;
        *a2 = v26;
      }
    }
  }

  return result;
}

uint64_t md::CaptionedIconLabelPart::tryAlternatePlacements(uint64_t a1, char a2, int a3, char a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  LOBYTE(v9) = a2;
  v74 = *MEMORY[0x1E69E9840];
  v64 = 256;
  v65 = 0;
  v11 = *(*(a1 + 576) + 8 * *(a1 + 925));
  v60 = v11[3];
  v67 = &unk_1F2A5BC40;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v73 = 0;
  v66[4] = &v71;
  v12 = mdm::zone_mallocator::instance(a1);
  v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::CollisionObject>(v12, 2);
  std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>,md::CollisionObject*>(0, 0, v13);
  v14 = v68;
  v15 = v70;
  v68 = v13;
  v69 = v13;
  v70 = v13 + 52;
  v66[2] = v14;
  v66[3] = v15;
  v66[0] = v14;
  v66[1] = v14;
  std::__split_buffer<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator> &>::~__split_buffer(v66);
  v17 = *(a1 + 800);
  v18 = *(a1 + 808);
  if (v17 != v18)
  {
    v19 = a4;
    while ((v9 & 1) != 0 || (v19 & 1) == 0 && (v17[2] & 1) != 0)
    {
LABEL_59:
      v9 = 0;
LABEL_60:
      v17 += 5;
      if (v17 == v18)
      {
        goto LABEL_68;
      }
    }

    v20 = *v17;
    v22 = v20 == 3 || v20 == 100;
    if ((v20 - 2) >= 2)
    {
      if (v20 == 5)
      {
        v26 = md::CaptionedIconLabelPart::evaluateFeatureNormalTextPosition(*(a1 + 16), *(a5 + 424), v16);
      }

      else
      {
        v26 = v17[3];
      }
    }

    else
    {
      v23 = *(*(a5 + 424) + 472) + v17[4];
      v24 = ((v23 + 32) >> 5) & 6;
      v25 = (v23 + 16) >> 5;
      if (*(a1 + 856) == 1)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }
    }

    v27 = v17[1];
    if (v27 != 16 || (v26 != 6 ? (v27 = 1) : (v27 = 8), v26 != 2))
    {
      if (v27 > 7)
      {
        if (v27 != 8)
        {
          goto LABEL_41;
        }

        v28 = &diagonalDownLabelAnchors;
        goto LABEL_36;
      }

      if (v27 == 1)
      {
LABEL_30:
        v29 = md::CaptionedIconLabelPart::textAlignmentForPosition(a1, v26, v27);
        LODWORD(v30) = md::CaptionedIconLabelPart::textOriginOffsetForPosition(a1, 0, v26, v22, v27, (a1 + 872), (v60 + 72), v11).u32[0];
        v32 = v31;
        v66[0] = 1065353216;
        if ((v27 & 0xC) != 0)
        {
          v33 = 0.57358;
          v34 = 0.81915;
          if (v27 != 4)
          {
            if (v27 == 8)
            {
              v33 = -0.57358;
              v34 = 0.81915;
            }

            else
            {
              v34 = 1.0;
              v33 = 0.0;
            }
          }

          v66[0] = __PAIR64__(LODWORD(v33), LODWORD(v34));
        }

        else
        {
          v34 = 1.0;
          v33 = 0.0;
        }

        v39 = *(a5 + 424);
        if (*(v39 + 18) == 1)
        {
          v40 = *(v39 + 464);
          v41 = *(v39 + 468);
          *v66 = -((v33 * v41) - (v40 * v34));
          *(v66 + 1) = (v41 * v34) + (v33 * v40);
          v42 = v41 * v32;
          v32 = (v40 * v32) + (v41 * v30);
          v30 = -(v42 - (v40 * v30));
        }

        v44 = v68;
          ;
        }

        v69 = v44;
        v73 = 0;
        (*(*v11 + 592))(v11, &v67, v26, *(a1 + 930), v29, v66, *(a1 + 280) + v30, *(a1 + 284) + v32);
        v19 = a4;
        if (*(a1 + 960) == 1)
        {
          if ((v73 & 0x100) == 0)
          {
            HIBYTE(v73) = 1;
            v72 = xmmword_1B33B0730;
            v51 = v68;
            v52 = v69;
            while (v51 != v52)
            {
              v53 = 0;
              v54 = 1;
              do
              {
                *(&v72 + v53) = fminf(*(v51 + v53 + 12), *(&v72 + v53));
                v55 = v54;
                *(&v72 + v53 + 2) = fmaxf(*(&v72 + v53 + 2), *(v51 + v53 + 14));
                v53 = 1;
                v54 = 0;
              }

              while ((v55 & 1) != 0);
              v51 += 26;
            }
          }

          v45 = 0;
          v46 = *(a5 + 424);
          v47 = v46 + 1136;
          v48 = v46 + 1144;
          v49 = 1;
          while (*(&v72 + v45) >= *(v47 + 4 * v45) && *(&v72 + v45 + 2) <= *(v48 + 4 * v45))
          {
            v50 = v49;
            v49 = 0;
            v45 = 1;
            if ((v50 & 1) == 0)
            {
              goto LABEL_56;
            }
          }
        }

        else
        {
LABEL_56:
          if (md::LabelCollider::collideCandidate(a6, a7, &v67, &v64) && (v64 & 0x100) == 0)
          {
            v57 = *v17;
            *(a8 + 4) = v17[4];
            *a8 = v57;
            v9 = 1;
            goto LABEL_68;
          }
        }

        if (a3)
        {
          goto LABEL_67;
        }

        goto LABEL_59;
      }

      if (v27 != 4)
      {
        goto LABEL_41;
      }
    }

    v27 = 4;
    v28 = &diagonalUpLabelAnchors;
LABEL_36:
    v35 = &v28[2 * v26];
    v36 = *v35;
    v37 = v35[1];
    if (v36)
    {
      v38 = v37 == 0;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
LABEL_41:
      v9 = 0;
      if (a3)
      {
        goto LABEL_68;
      }

      goto LABEL_60;
    }

    goto LABEL_30;
  }

LABEL_67:
  v9 = 0;
LABEL_68:
  v67 = &unk_1F2A5BC40;
  v66[0] = &v68;
  std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v66);
  return v9;
}

void sub_1B2B8D1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__split_buffer<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 208;
    md::CollisionObject::~CollisionObject((i - 208));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::CollisionObject>(v5, v4);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>,md::CollisionObject*>(void **a1, __n128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      md::CollisionObject::CollisionObject(a3, v6);
      v6 += 13;
      a3 += 208;
    }

    while (v6 != a2);
    do
    {
      md::CollisionObject::~CollisionObject(v5);
      v5 += 26;
    }

    while (v5 != a2);
  }
}

uint64_t md::HorizontalTextLabelPart::populateCollisionObjects(float32x2_t *a1, uint64_t a2, float a3, float a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v13 = a2 + 8;
  std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::resize(a2 + 8, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 16) - *(a2 + 8)) >> 4) + 1);
  v14 = *(v13 + 8);
  v15 = *a8;
  *(v14 - 192) = *a8;
  *(v14 - 188) = *(a8 + 4);
  *(v14 - 12) = fabsf(v15 + -1.0) > 0.000001;
  v16 = a1[29];
  if (v16)
  {
    v17 = a1[31].u32[0];
  }

  else
  {
    v17 = 0;
  }

  v18 = &a1[1];
  v19 = vld1_dup_f32(v18);
  *(v14 - 112) = vadd_f32(a1[21], v19);
  md::CollisionObject::resetWithRects((v14 - 208), v17);
  if (v17)
  {
    v20 = *&v16 + 8;
    do
    {
      v21 = *v20 - *(v20 - 8);
      if (a7 == 1)
      {
        v22 = a1[130].f32[0] * -0.5;
      }

      else if (a7 == 2)
      {
        v22 = -(v21 + (a1[130].f32[0] * -0.5));
      }

      else
      {
        v22 = v21 * -0.5;
      }

      v23 = *(v20 - 4);
      v24 = *(v20 + 4);
      *v26 = v22;
      v26[1] = v23;
      *&v26[2] = v22 + v21;
      v26[3] = v24;
      md::CollisionObject::addRect(v14 - 208, v26);
      v20 += 16;
      --v17;
    }

    while (v17);
  }

  *(v14 - 176) = a3;
  *(v14 - 172) = a4;

  return md::CollisionObject::setupShapeData(v14 - 208);
}

void std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = v4 - *a1;
  v7 = 0x4EC4EC4EC4EC4EC5 * (v6 >> 4);
  v8 = a2 >= v7;
  v9 = a2 - v7;
  if (v9 != 0 && v8)
  {
    v10 = *(a1 + 16);
    if (0x4EC4EC4EC4EC4EC5 * ((v10 - v4) >> 4) >= v9)
    {
      v22 = v4 + 208 * v9;
      do
      {
        *v4 = xmmword_1B33B0730;
        *(v4 + 16) = 1065353216;
        *(v4 + 24) = 1065353216;
        *(v4 + 36) = 0;
        *(v4 + 28) = 0;
        *(v4 + 44) = 0;
        *(v4 + 48) = xmmword_1B33B0730;
        *(v4 + 64) = xmmword_1B33B0730;
        *(v4 + 80) = xmmword_1B33B0730;
        *(v4 + 96) = xmmword_1B33B0720;
        *(v4 + 152) = 0;
        *(v4 + 112) = 0;
        *(v4 + 120) = 0;
        *(v4 + 128) = 0;
        *(v4 + 160) = 0uLL;
        *(v4 + 176) = 0uLL;
        *(v4 + 185) = 0uLL;
        v4 += 208;
      }

      while (v4 != v22);
      *(a1 + 8) = v22;
    }

    else
    {
      if (a2 > 0x13B13B13B13B13BLL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v11 = 0x4EC4EC4EC4EC4EC5 * ((v10 - v5) >> 4);
      v12 = 2 * v11;
      if (2 * v11 <= a2)
      {
        v12 = a2;
      }

      if (v11 >= 0x9D89D89D89D89DLL)
      {
        v13 = 0x13B13B13B13B13BLL;
      }

      else
      {
        v13 = v12;
      }

      v25 = a1 + 24;
      v14 = mdm::zone_mallocator::instance(v4);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::CollisionObject>(v14, v13);
      *(&v24 + 1) = &v15[208 * v13];
      v16 = &v15[v6];
      do
      {
        *v16 = xmmword_1B33B0730;
        *(v16 + 2) = 1065353216;
        *(v16 + 6) = 1065353216;
        *(v16 + 36) = 0;
        *(v16 + 28) = 0;
        *(v16 + 11) = 0;
        *(v16 + 3) = xmmword_1B33B0730;
        *(v16 + 4) = xmmword_1B33B0730;
        *(v16 + 5) = xmmword_1B33B0730;
        *(v16 + 6) = xmmword_1B33B0720;
        v16[152] = 0;
        *(v16 + 14) = 0;
        *(v16 + 15) = 0;
        v16[128] = 0;
        *(v16 + 10) = 0uLL;
        *(v16 + 11) = 0uLL;
        *(v16 + 185) = 0uLL;
        v16 += 208;
      }

      while (v16 != &v15[208 * a2]);
      *&v24 = &v15[208 * a2];
      v17 = *(a1 + 8);
      v18 = &v15[v6 + *a1 - v17];
      std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>,md::CollisionObject*>(*a1, v17, v18);
      v19 = *a1;
      *a1 = v18;
      v20 = *(a1 + 16);
      *(a1 + 8) = v24;
      *&v24 = v19;
      *(&v24 + 1) = v20;
      v23[0] = v19;
      v23[1] = v19;
      std::__split_buffer<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator> &>::~__split_buffer(v23);
    }
  }

  else if (!v8)
  {
    v21 = &v5[26 * a2];
    while (v4 != v21)
    {
      md::CollisionObject::~CollisionObject((v4 - 208));
    }

    *(a1 + 8) = v21;
  }
}

uint64_t md::MultiCollisionObjectPlacementCandidate::collisionBounds(md::MultiCollisionObjectPlacementCandidate *this)
{
  if ((*(this + 72) & 1) == 0)
  {
    *(this + 40) = xmmword_1B33B0730;
    *(this + 72) = 1;
    v1 = *(this + 1);
    for (i = *(this + 2); v1 != i; v1 += 208)
    {
      v3 = 0;
      v4 = 1;
      do
      {
        *(this + v3 + 10) = fminf(*(v1 + 80 + 4 * v3), *(this + v3 + 10));
        v5 = v4;
        *(this + v3 + 12) = fmaxf(*(this + v3 + 12), *(v1 + 88 + 4 * v3));
        v3 = 1;
        v4 = 0;
      }

      while ((v5 & 1) != 0);
    }
  }

  return this + 40;
}

uint64_t md::MultiCollisionObjectPlacementCandidate::collidesWithItem(uint64_t a1, float32x2_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    v5 = v2[10];
    v7[0] = vmul_f32(vsub_f32(v2[11], v5), 0x3F0000003F000000);
    v7[1] = vadd_f32(v7[0], v5);
    v7[2] = 1065353216;
    if (gm::OBRect<float>::intersectsUsingInset(a2 + 1, v7) && ((*(*a2 + 16))(a2, v2) & 1) != 0)
    {
      break;
    }

    v2 += 26;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

BOOL md::CollisionObject::rectsCollideWithRects(md::CollisionObject *this, const md::CollisionObject *a2)
{
  v2 = *(a2 + 44);
  if (v2)
  {
    v3 = 0;
    v4 = *(a2 + 23);
    v5 = 2 * *(a2 + 199);
    v6 = 1;
    while (!*(this + 44))
    {
LABEL_8:
      v6 = ++v3 < v2;
      if (v3 == v2)
      {
        return 0;
      }
    }

    v7 = (v4 + 24 * v3);
    v8 = *(this + 23);
    v9 = &v7[2 * *(this + 199)];
    v11 = v9[2];
    v10 = v9 + 2;
    v12 = v11;
    v13 = *(this + 44);
    while (vabds_f32(*v8, *v7) >= (v12 + v8[v5 + 2]) || vabds_f32(v8[1], v7[1]) >= (v10[1] + v8[v5 + 3]))
    {
      v8 += 6;
      if (!--v13)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

void md::CollisionObject::~CollisionObject(void **this)
{
  free(this[20]);
  free(this[21]);
  free(this[23]);
}

void std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        md::CollisionObject::~CollisionObject(v4 - 26);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::CollisionObject>(v6, v5);
  }
}

float **geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::find(void *a1, float a2)
{
  v4 = *a1;
  v2 = (a1 + 1);
  v3 = v4;
  if (v4 != v2)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      v7 = v6[1];
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
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      ++v5;
      v6 = v8;
    }

    while (v8 != v2);
    do
    {
      v10 = v5 >> 1;
      v11 = v3;
      if (v5 >= 2)
      {
        v12 = v5 >> 1;
        v13 = v3;
        do
        {
          v14 = *(v13 + 1);
          if (v14)
          {
            do
            {
              v11 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v11 = *(v13 + 2);
              v9 = *v11 == v13;
              v13 = v11;
            }

            while (!v9);
          }

          v13 = v11;
          v16 = v12-- <= 1;
        }

        while (!v16);
      }

      if (v11[8] <= a2)
      {
        v15 = *(v11 + 1);
        if (v15)
        {
          do
          {
            v3 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v3 = *(v11 + 2);
            v9 = *v3 == v11;
            v11 = v3;
          }

          while (!v9);
        }

        v10 = v5 + ~v10;
      }

      v5 = v10;
    }

    while (v10);
  }

  if (v2 == v3)
  {
    return v2;
  }

  v16 = *(v3 + 7) > a2 || *(v3 + 8) <= a2;
  if (v16)
  {
    return v2;
  }

  return v3;
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100](std::__shared_weak_count *result, __int128 *a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = (shared_owners - result->__vftable) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = shared_weak_owners - result->__vftable;
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

    v23 = result + 1;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::NavLabel>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
    v17 = v3->__shared_owners_ - v3->__vftable;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v3->__vftable, v17);
    v19 = v3->__vftable;
    v3->__vftable = v18;
    v3->__shared_owners_ = v7;
    v20 = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v16;
    v21.__shared_weak_owners_ = v19;
    v22 = v20;
    v21.__vftable = v19;
    v21.__shared_owners_ = v19;
    result = std::__split_buffer<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *shared_owners = *a2;
    *(shared_owners + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = shared_owners + 16;
  }

  v3->__shared_owners_ = v7;
  return result;
}

uint64_t *std::unique_ptr<md::VenueLogicContext>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
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
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::~__hash_table(v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B2B8E4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a10);

  _Unwind_Resume(a1);
}

std::__shared_weak_count *geo::codec::multiSectionFeaturePointsWithElevation(std::__shared_weak_count *result, unint64_t a2, void *a3, void *a4)
{
  if (!result)
  {
    v13 = 0;
    goto LABEL_14;
  }

  if (LODWORD(result[4].__vftable) <= a2)
  {
LABEL_11:
    v13 = 0;
    result = 0;
LABEL_14:
    *a4 = v13;
    return result;
  }

  v6 = a4;
  v7 = result;
  result = geo::codec::vertexPoolForFeature(result);
  if (!result)
  {
    v13 = 0;
    a4 = v6;
    goto LABEL_14;
  }

  shared_owners = result[1].__shared_owners_;
  if (shared_owners)
  {
    a4 = v6;
    v9 = HIDWORD(v7[3].__shared_weak_owners_) + a2;
    if (result[1].__shared_weak_owners_ > v9)
    {
      v10 = *(shared_owners + 16 * v9);
      if (v10 < result->__shared_weak_owners_)
      {
        v11 = result;
        result = (result->__shared_owners_ + 8 * v10);
        if (a3)
        {
          v12 = v11[1].__vftable;
          if (v12)
          {
            *a3 = v12 + 4 * v10;
          }
        }

        v13 = *(shared_owners + 16 * v9 + 8);
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t ggl::DaVinci::RibbonPipelineSetup::textureIsEnabled(ggl::DaVinci::RibbonPipelineSetup *this, uint64_t a2)
{
  v2 = 1;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 315);
      return v2 & 1;
    }

    if (a2 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = *(*(this + 2) + 309);
      return v2 & 1;
    }

LABEL_7:
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::RibbonPipelineSetup::constantDataIsEnabled(ggl::DaVinci::RibbonPipelineSetup *this, unint64_t a2)
{
  if (a2 > 0xA)
  {
    v2 = 0;
  }

  else if (((1 << a2) & 0x3BF) != 0)
  {
    v2 = 1;
  }

  else if (a2 == 6)
  {
    v2 = *(*(this + 2) + 335);
  }

  else
  {
    v2 = *(*(this + 2) + 315);
  }

  return v2 & 1;
}

char *std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__vallocate[abi:nn200100](ggl::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = ggl::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Texture *>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[8 * a2];
  return result;
}

void ggl::MPSBlur::encode(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (*(a1 + 49))
  {
    v7 = objc_alloc(getMPSImageTentClass());
    v8 = *(a2 + 104);
    v9 = [v7 initWithDevice:v8 kernelWidth:*(a1 + 48) kernelHeight:*(a1 + 48)];
    v11 = (a1 + 64);
    v10 = *(a1 + 64);
LABEL_5:
    *v11 = v9;

    [*v11 setEdgeMode:1];
    [*v11 setOptions:2];
    goto LABEL_6;
  }

  v11 = (a1 + 56);
  if (!*(a1 + 56))
  {
    v12 = objc_alloc(getMPSImageGaussianBlurClass());
    v8 = *(a2 + 104);
    LOBYTE(v13) = *(a1 + 48);
    *&v14 = v13;
    v9 = [v12 initWithDevice:v8 sigma:v14];
    v10 = *v11;
    goto LABEL_5;
  }

LABEL_6:
  v15 = ggl::MetalTextureResource::texture(*(a1 + 72), v5);
  v16 = [v15 pixelFormat];
  v17 = v16;
  if (v16 == 81)
  {
    v18 = 80;
  }

  else
  {
    v18 = v16;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___ZN3ggl7MPSBlur6encodeEPNS_11MetalDeviceEPU27objcproto16MTLCommandBuffer11objc_object_block_invoke;
  v24[3] = &__block_descriptor_40_e73____MTLTexture__32__0__MPSKernel_8___MTLCommandBuffer__16___MTLTexture__24l;
  v24[4] = v18;
  v19 = MEMORY[0x1B8C62DA0](v24);
  for (i = 0; i < [v15 arrayLength]; ++i)
  {
    if (v17 == 81 || [v15 textureType] != 2)
    {
      v21 = [v15 newTextureViewWithPixelFormat:v18 textureType:2 levels:0 slices:1, i, 1];
    }

    else
    {
      v21 = v15;
    }

    v23 = v21;
    if (*(a1 + 49))
    {
      v22 = 64;
    }

    else
    {
      v22 = 56;
    }

    [*(a1 + v22) encodeToCommandBuffer:v6 inPlaceTexture:&v23 fallbackCopyAllocator:v19];
  }
}

float32x2_t md::LabelMapTileCollisionInfo::pointsToScreen(md::LabelMapTileCollisionInfo *this, md::LabelManager *a2, uint64_t a3, double a4)
{
  v6 = this;
  *&result = *(a3 + 52) * a4;
  if (vabdd_f64(*(a2 + 22), *&result) <= 0.00999999978)
  {
    v9 = *(a2 + 13);
    v8 = *(a2 + 14);
  }

  else
  {
    *(a2 + 22) = *&result;
    v9 = *(a2 + 13);
    v8 = *(a2 + 14);
    if (*(a2 + 168))
    {
      if (v8 != v9)
      {
        v35 = *(a2 + 14);
        v10 = 0;
        v11 = *(a2 + 9);
        v37 = *(a2 + 5);
        if (0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3) <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
        }

        do
        {
          for (i = 0; i != 3; ++i)
          {
            *(&v41 + i * 8) = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i] * *(v11 + i * 8);
          }

          v14 = gm::Matrix<double,3,1>::normalized<int,void>(&v41);
          v15 = 0;
          *v38 = v14;
          v38[1] = v16;
          v38[2] = v17;
          v18 = *(a2 + 22) * *(v37 + 4 * v10);
          do
          {
            *(&v41 + v15 * 8) = v18 * *&v38[v15];
            ++v15;
          }

          while (v15 != 3);
          v19 = 0;
          v39 = v41;
          v40 = v42;
          do
          {
            *(&v41 + v19) = *(&v39 + v19) + *(v11 + v19);
            v19 += 8;
          }

          while (v19 != 24);
          result = v42;
          v20 = v9 + 24 * v10;
          *v20 = v41;
          *(v20 + 16) = *&result;
          ++v10;
          v11 += 24;
        }

        while (v10 != v12);
        v8 = v35;
        v6 = this;
      }
    }

    else if (v8 != v9)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
      v22 = *(a2 + 5);
      if (v21 <= 1)
      {
        v21 = 1;
      }

      v23 = 16;
      do
      {
        v24 = *v22++;
        *(v9 + v23) = *&result * v24;
        v23 += 24;
        --v21;
      }

      while (v21);
    }
  }

  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  if (v8 != v9)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](v6, v25);
    *(v6 + 1) += 8 * v25;
    v26 = *(a2 + 13);
    v27 = *(a2 + 14);
    if (v27 != v26)
    {
      v28 = 0;
      v29 = *v6;
      v30 = *(a2 + 13);
      v31 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v30) >> 3);
      if (v31 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v31;
      }

      do
      {
        v33.f64[0] = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>((a3 + 864), v26 + v28);
        v33.f64[1] = v34;
        result = vcvt_f32_f64(v33);
        *v29++ = *&result;
        v28 += 24;
        v26 = v30;
        --v32;
      }

      while (v32);
    }
  }

  return result;
}

void std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::shared_ptr<md::NavLabel>*>,std::__wrap_iter<std::shared_ptr<md::NavLabel>*>>(mdm::zone_mallocator *a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  if (a5 > (v10 - v9) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v9 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v10 - v11;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (a2 - v11) >> 4;
    v37 = (a1 + 24);
    if (v14)
    {
      v16 = mdm::zone_mallocator::instance(a1);
      v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::NavLabel>>(v16, v14);
    }

    else
    {
      v17 = 0;
    }

    v25 = &v17[16 * v15];
    v36 = &v17[16 * v14];
    v26 = &v25[16 * a5];
    v27 = v25;
    do
    {
      v28 = a3[1];
      *v27 = *a3;
      v27[1] = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v27 += 2;
      a3 += 2;
    }

    while (v27 != v26);
    memcpy(v26, a2, *(a1 + 1) - a2);
    v29 = *a1;
    v30 = v26 + *(a1 + 1) - a2;
    *(a1 + 1) = a2;
    v31 = a2 - v29;
    v32 = &v25[-(a2 - v29)];
    memcpy(v32, v29, v31);
    v33 = *a1;
    *a1 = v32;
    *(a1 + 1) = v30;
    v34 = *(a1 + 2);
    *(a1 + 2) = v36;
    v35.__shared_weak_owners_ = v33;
    v36 = v34;
    v35.__vftable = v33;
    v35.__shared_owners_ = v33;
    std::__split_buffer<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator> &>::~__split_buffer(&v35);
    return;
  }

  v18 = (v9 - a2) >> 4;
  if (v18 >= a5)
  {
    std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__move_range(a1, a2, v9, &a2[16 * a5]);
    v24 = &a3[2 * a5];
    v23 = a3;
    goto LABEL_20;
  }

  v19 = (a3 + v9 - a2);
  v20 = *(a1 + 1);
  if (v19 != a4)
  {
    v21 = (a3 + v9 - a2);
    v20 = *(a1 + 1);
    do
    {
      v22 = v21[1];
      *v20 = *v21;
      v20[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 2;
      v20 += 2;
    }

    while (v21 != a4);
  }

  *(a1 + 1) = v20;
  if (v18 >= 1)
  {
    std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__move_range(a1, a2, v9, &a2[16 * a5]);
    v23 = a3;
    v24 = v19;
LABEL_20:

    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<md::NavLabel> *,std::shared_ptr<md::NavLabel> *,std::shared_ptr<md::NavLabel> *>(v23, v24, a2);
  }
}

uint64_t md::LabelNavEtaLabeler::layoutForDisplayWithNavContext(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = COERCE_FLOAT(atomic_load((*v4 + 288)));
      if (v6 > 0.0)
      {
        result = (*(**v4 + 24))(*v4, v5, v6);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t md::Label::clearAnimatingPart(md::Label *this)
{
  atomic_load(this + 1330);
  if (*(this + 1162) == 1)
  {
    *(this + 1162) = 0;
    atomic_store(0, this + 1331);
  }

  if (*(this + 1161) == 1)
  {
    *(this + 1161) = 0;
    atomic_store(0, this + 1332);
    *(this + 300) = 0;
    *(this + 301) = (*(this + 153))(0.0);
    md::Label::updateStateMachineForDisplay(this, 8, *(this + 1153), 0);
  }

  v2 = *(this + 37);
  *(this + 37) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(this + 35);
  *(this + 35) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void md::NavLabel::worldPointForDisplay(md::NavLabel *this, const md::NavContext *a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (a2)
    {
      if (!v3[1])
      {
        (*(*v3 + 64))(v7);
        md::AnchorManager::newAnchorAtCoordinate(&v8);
      }
    }

    (*(*v3 + 48))(v3);
  }

  else if (a2)
  {
    v4 = *(a2 + 3);
    v5 = *(v4 + 52);
    v6 = *(v4 + 8);

    md::NavContext::worldPoint(v6, this + 14, v5);
  }
}

__n128 md::NavLabelPart::layoutForDisplayWithNavContext(uint64_t a1, uint64_t a2, _DWORD *a3, float *a4, __n128 result)
{
  v5 = *(a1 + 640);
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    v12 = (a1 + 760);
    *(a1 + 714) = *(a1 + 556);
    v13 = a1 + 312;
    do
    {
      v14 = *(a1 + 320 + 4 * v11);
      v15 = *(v13 + 4 * v11);
      if (v10)
      {
        break;
      }

      v10 = 1;
      v11 = 1;
    }

    while (v14 >= v15);
    if (v14 < v15)
    {
      v16 = atomic_load((v5 + 144));
      if (v16)
      {
        v17 = *(v5 + 64);
      }

      else
      {
        v17 = xmmword_1B33B0730;
      }

      *v31 = v17;
      md::CollisionObject::resetWithRects((a1 + 312), 1u);
      md::CollisionObject::addRect(v13, v31);
    }

    *(a1 + 520) = *a3;
    *(a1 + 524) = a3[1];
    *(a1 + 344) = *a3;
    *(a1 + 348) = a3[1];
    md::CollisionObject::setupShapeData(v13);
    v18 = atomic_load((*(a1 + 640) + 143));
    if ((v18 & 1) == 0)
    {
      if ((*(a1 + 565) & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    v19 = *(a1 + 640);
    v20 = atomic_load((v19 + 144));
    if (v20)
    {
      v21 = *(v19 + 48);
    }

    else
    {
      v21 = xmmword_1B33B0730;
    }

    *v31 = v21;
    v22 = *(a1 + 565);
    if (*(a1 + 565))
    {
      v23 = a4;
    }

    else
    {
      v23 = (a1 + 520);
    }

    gm::Box<float,2>::operator+=(v31, v23);
    *&v24 = *&v31[2];
    *&v25 = *v31;
    result.n128_u64[0] = __PAIR64__(v31[1], v31[2]);
    *(&v25 + 1) = __PAIR64__(v31[1], v31[2]);
    *(&v24 + 1) = __PAIR64__(v31[3], v31[0]);
    *v12 = v25;
    v12[1] = v24;
    if (v22 == 1)
    {
LABEL_20:
      v28 = 0;
      v29 = 0;
      v30 = 1;
      md::LabelPart::generateModelMatrixForMeshPositioningMode(v31, &v28, *(a2 + 24), *(a1 + 32) + 32, *(a1 + 830), 1, *(a1 + 872), *(*(a1 + 32) + 72), *(*(a1 + 32) + 68));
      v26 = 0;
      v27 = *(a1 + 880);
      do
      {
        result = *&v31[v26];
        *(v27 + v26 * 4) = result;
        v26 += 4;
      }

      while (v26 != 32);
    }
  }

  return result;
}

void geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::insert(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = v5;
  v8[0] = v9;
  v8[1] = v9;
  v8[2] = v9;
  v8[3] = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(v8, v4, a2[2]);
  v9[4] = a2[9];
  v10 = *(a2 + 5);
  v6 = a2[13];
  v11 = a2[12];
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  if (std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((a1 + 24), &v7))
  {
    std::__list_imp<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry const&>();
  }

  std::__list_imp<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry const&>();
}

uint64_t md::NavLabel::animateLabel(uint64_t this, float a2)
{
  v2 = *(this + 380);
  v3 = COERCE_FLOAT(atomic_load((this + 288)));
  if (v2 == 1)
  {
    if (v3 > 0.0)
    {
      v4 = a2 * 2.5;
      v5 = *(this + 288);
      do
      {
        v6 = v5;
        v7 = v5;
        atomic_compare_exchange_strong((this + 288), &v7, COERCE_UNSIGNED_INT(v5 - v4));
        v5 = v7;
      }

      while (LODWORD(v7) != LODWORD(v6));
      v8 = COERCE_FLOAT(atomic_load((this + 288)));
      if (v8 <= 0.0)
      {
        v9 = 0;
LABEL_14:
        atomic_store(v9, (this + 288));
        *(this + 292) = 0;
      }
    }
  }

  else if (v3 < 1.0)
  {
    v10 = *(*(this + 304) + 640);
    if (v10)
    {
      v11 = atomic_load((v10 + 143));
      if (v11)
      {
        v12 = a2 * 2.5;
        v13 = *(this + 288);
        do
        {
          v14 = v13;
          v15 = v13;
          atomic_compare_exchange_strong((this + 288), &v15, COERCE_UNSIGNED_INT(v13 + v12));
          v13 = v15;
        }

        while (LODWORD(v15) != LODWORD(v14));
        v16 = COERCE_FLOAT(atomic_load((this + 288)));
        if (v16 >= 1.0)
        {
          v9 = 1065353216;
          goto LABEL_14;
        }
      }
    }
  }

  return this;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<gdc::ResourceKey,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3 != __p[5])
    {
      free(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t md::MapNavLabeler::needsLayout(id *this)
{
  if (*(*this + 45))(this) && ([this[7] needsLayout])
  {
    return 1;
  }

  if (this[13] && *(this[90] + 3) && *(this + 712) == 1)
  {
    *(this + 712) = 0;
    return 1;
  }

  return 0;
}

void std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::erase(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != a2);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
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

  if (v7 != v3)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v8 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
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

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *a2;
    }
  }

  *v6 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<gdc::ResourceKey,void *>>>::operator()[abi:nn200100](1, a2);
}

float md::WorldSpaceLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, __int32 *a4, __int32 *a5)
{
  if (*(a1 + 565) == 1)
  {
    md::LabelPart::generateModelMatrixForMeshPositioningMode(v14, *(a1 + 16) + 152, a2 + 432, *(a1 + 16) + 408, *(a1 + 633), 1, *(a1 + 632), *(*(a1 + 32) + 72), *(*(a1 + 32) + 68));
    v10 = 0;
    v11 = *(a1 + 640);
    do
    {
      *(v11 + v10) = *&v14[v10];
      v10 += 16;
    }

    while (v10 != 128);
  }

  if (md::CompositeLabelPart::layoutForDisplay(a1, a2, a3, a4, a5) == 37)
  {
    v13 = *(**(a1 + 576) + 24);
    *(a1 + 392) = *(v13 + 392);
    *(a1 + 396) = *(v13 + 396);
    *(a1 + 400) = *(v13 + 400);
    result = *(v13 + 404);
    *(a1 + 404) = result;
  }

  return result;
}

uint64_t md::CompositeLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, __int32 *a4, __int32 *a5)
{
  v9 = a1[72];
  v10 = a1[73];
  if (v9 == v10)
  {
LABEL_5:
    for (i = xmmword_1B33B0730; v9 != v10; ++v9)
    {
      v13 = 0;
      v14 = *(*v9 + 24);
      v15 = v14 + 312;
      v16 = v14 + 320;
      p_i = &i;
      v18 = 1;
      do
      {
        v19 = v18;
        *p_i = fminf(*(v15 + 4 * v13), *p_i);
        *(&i + v13 + 2) = fmaxf(*(&i + v13 + 2), *(v16 + 4 * v13));
        p_i = &i + 1;
        v13 = 1;
        v18 = 0;
      }

      while ((v19 & 1) != 0);
    }

    md::CollisionObject::setLocalBounds(&a1[39], &i);
    a1[68].i32[0] = *a5;
    a1[68].i32[1] = a5[1];
    a1[65].i32[0] = *a4;
    a1[65].i32[1] = a4[1];
    a1[43].i32[0] = *a4;
    a1[43].i32[1] = a4[1];
    md::CollisionObject::setupShapeData(&a1[39]);
    if (a1[70].i8[5])
    {
      a1[53] = (*(*a1 + 144))(a1);
    }

    md::CompositeLabelPart::updateAnimationForDisplay(a1, a3);
    return 37;
  }

  else
  {
    while (1)
    {
      result = (*(**v9 + 120))(*v9, a2, a3, a4, a5);
      if (result != 37)
      {
        break;
      }

      if (++v9 == v10)
      {
        v9 = a1[72];
        v10 = a1[73];
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t RouteAnnotationIconLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  if (*(a2 + 441))
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  (*(*a1 + 824))(a1, v10);
  md::IconLabelPart::layoutForDisplay(a1, a2, a3, a4, a5);
  return 37;
}

uint64_t md::IconLabelPart::setRenderPass(uint64_t result, char a2)
{
  *(result + 557) = a2;
  *(result + 712) = a2;
  return result;
}

float md::CollisionObject::setLocalBounds(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    free(v4);
    *(a1 + 160) = 0;
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    free(v5);
    *(a1 + 168) = 0;
  }

  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

float md::CompositeLabelPart::updateAnimationForDisplay(float32x2_t *a1, uint64_t a2)
{
  if (a1[76].i8[4] == 1)
  {
    a1[76].i8[4] = 0;
  }

  if (a1[78].i8[0] == 1)
  {
    a1[78].i8[0] = 0;
  }

  if (a2)
  {
    v2 = *(a2 + 24);
    v3 = *(a2 + 32);
    if (0x8E38E38E38E38E39 * ((v3 - v2) >> 4) <= a1[70].u8[3])
    {
      if (v2 == v3 || (*(a2 + 89) & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v2 += 18 * a1[70].u8[3];
    }

    if (v2)
    {
      v4 = v2[9];
      if (v4)
      {
        result = fmaxf(fminf(v2[10].f32[0] + (*(**&v4 + 32 * *(*&v4 + 32) + 8) * (v2[10].f32[1] - v2[10].f32[0])), 1.0), 0.0);
        a1[76].f32[0] = result;
        a1[76].i8[4] = 1;
      }

      v6 = v2[11];
      if (v6)
      {
        result = *(**&v6 + 32 * *(*&v6 + 32) + 8);
        a1[77] = vmla_n_f32(v2[12], vsub_f32(v2[13], v2[12]), result);
        a1[78].i8[0] = 1;
      }
    }
  }

  return result;
}

uint64_t md::NavLabel::pushToRenderModel(uint64_t result)
{
  v1 = COERCE_FLOAT(atomic_load((result + 288)));
  v2 = *(result + 304);
  if (v2)
  {
    v3 = *(v2 + 640);
    if (v3)
    {
      v4 = atomic_load((v3 + 143));
      if ((v4 & 1) != 0 && (*(result + 272) * v1) > 0.0)
      {
        return (*(**(result + 304) + 128))();
      }
    }
  }

  return result;
}

float md::CompositeLabelPart::pixelBoundsForDisplay(md::CompositeLabelPart *this)
{
  v18 = xmmword_1B33B0730;
  v1 = *(this + 72);
  v2 = *(this + 73);
  if (v1 == v2)
  {
    return 3.4028e38;
  }

  do
  {
    v3 = (*(**v1 + 264))(*v1);
    v4 = 0;
    v15 = v3;
    v16 = v5;
    v17[0] = v6;
    v17[1] = v7;
    v8 = &v18;
    v9 = &v15;
    v10 = 1;
    do
    {
      v11 = v10;
      v12 = *v9;
      v13 = *v8;
      *(&v18 + v4 + 2) = fmaxf(*(&v18 + v4 + 2), *&v17[v4]);
      *v8 = fminf(v12, v13);
      v9 = &v16;
      v8 = &v18 + 1;
      v4 = 1;
      v10 = 0;
    }

    while ((v11 & 1) != 0);
    ++v1;
  }

  while (v1 != v2);
  return *&v18;
}

uint64_t md::CompositeLabelPart::pushToRenderModel(uint64_t result, uint64_t a2, float a3)
{
  if (*(result + 612) == 1)
  {
    a3 = *(result + 608);
  }

  v5 = *(result + 576);
  v6 = *(result + 584);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = (*(*v7 + 128))(v7, a2, a3);
  }

  return result;
}

uint64_t non-virtual thunk tomd::MapNavLabeler::computeRoutePositionForPOI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 424);
  v6[0] = &unk_1F29EFAF8;
  v6[1] = v3;
  v6[2] = a1 - 8;
  v6[3] = v4;
  v6[4] = a1 + 128;
  return [*(a1 + 48) computeRoutePositionForPOIAtPixel:a2 currentPosition:a3 context:v6];
}

uint64_t gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    return a1[11];
  }

  else
  {
    return a1[10] + 40 * ((v3 - a1[7]) >> 3);
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::LayerDataIndexLessThan &,gdc::LayerDataIndex *>(uint64_t a1, uint64_t a2)
{
  v4 = 0x86BCA1AF286BCA1BLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        break;
      case 4:
        v19 = (a1 + 152);
        v20 = (a1 + 304);
        v21 = a2 - 152;
        {
          std::swap[abi:nn200100]<gdc::LayerDataIndex>(a1 + 304, v21);
          {
            gdc::LayerDataRequestKey::LayerDataRequestKey(v28, a1 + 152);
            v22 = (a1 + 264);
            *&v34[4] = *(a1 + 268);
            *v34 = *(a1 + 264);
            *&v34[16] = *(a1 + 280);
            v34[24] = *(a1 + 288);
            v35 = *(a1 + 296);
            *(a1 + 152) = *(a1 + 304);
            *(a1 + 160) = *(a1 + 312);
            geo::small_vector_base<unsigned char>::copy((a1 + 168), (a1 + 320), (a1 + 200));
            v23 = *(a1 + 400);
            *(a1 + 232) = *(a1 + 384);
            *(a1 + 248) = v23;
            *(a1 + 264) = *(a1 + 416);
            *(a1 + 273) = *(a1 + 425);
            *(a1 + 296) = *(a1 + 448);
            *(a1 + 304) = v28[0];
            *(a1 + 312) = v29;
            if (v28 != v20)
            {
              geo::small_vector_base<unsigned char>::copy((a1 + 320), v30, (a1 + 352));
            }

            v24 = v33;
            *(a1 + 384) = v32;
            *(a1 + 400) = v24;
            *(a1 + 416) = *v34;
            *(a1 + 425) = *&v34[9];
            *(a1 + 448) = v35;
            if (v30[0] != v31)
            {
              free(v30[0]);
            }

            {
              gdc::LayerDataRequestKey::LayerDataRequestKey(v28, a1);
              *&v34[4] = *(a1 + 116);
              *v34 = *(a1 + 112);
              *&v34[16] = *(a1 + 128);
              v34[24] = *(a1 + 136);
              v35 = *(a1 + 144);
              *a1 = *(a1 + 152);
              *(a1 + 8) = *(a1 + 160);
              geo::small_vector_base<unsigned char>::copy((a1 + 16), (a1 + 168), (a1 + 48));
              v25 = *(a1 + 248);
              *(a1 + 80) = *(a1 + 232);
              *(a1 + 96) = v25;
              *(a1 + 112) = *v22;
              *(a1 + 121) = *(a1 + 273);
              *(a1 + 144) = *(a1 + 296);
              *(a1 + 152) = v28[0];
              *(a1 + 160) = v29;
              if (v28 != v19)
              {
                geo::small_vector_base<unsigned char>::copy((a1 + 168), v30, (a1 + 200));
              }

              v26 = v33;
              *(a1 + 232) = v32;
              *(a1 + 248) = v26;
              *v22 = *v34;
              *(a1 + 273) = *&v34[9];
              *(a1 + 296) = v35;
              if (v30[0] != v31)
              {
                free(v30[0]);
              }
            }
          }
        }

        return 1;
      case 5:
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 152;
    {
      std::swap[abi:nn200100]<gdc::LayerDataIndex>(a1, v5);
    }

    return 1;
  }

LABEL_11:
  v6 = a1 + 304;
  v7 = a1 + 456;
  if (a1 + 456 == a2)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v28, v7);
      *&v34[4] = *(v7 + 116);
      *v34 = *(v7 + 112);
      *&v34[16] = *(v7 + 128);
      v34[24] = *(v7 + 136);
      v35 = *(v7 + 144);
      v10 = v8;
      while (1)
      {
        v11 = v10;
        v12 = a1 + v10;
        *(v12 + 456) = *(a1 + v10 + 304);
        *(v12 + 464) = *(a1 + v10 + 312);
        geo::small_vector_base<unsigned char>::copy((a1 + v10 + 472), (a1 + v10 + 320), (a1 + v10 + 504));
        v13 = *(v12 + 400);
        *(v12 + 536) = *(v12 + 384);
        *(v12 + 552) = v13;
        v14 = (v12 + 416);
        *(v12 + 568) = *(v12 + 416);
        *(v12 + 577) = *(v12 + 425);
        *(v12 + 600) = *(v12 + 448);
        if (v11 == -304)
        {
          break;
        }

        v10 = v11 - 152;
        if ((v15 & 1) == 0)
        {
          v16 = a1 + v10 + 456;
          v14 = (a1 + v11 + 416);
          v17 = (a1 + v11 + 400);
          goto LABEL_19;
        }
      }

      v17 = (v12 + 400);
      v16 = a1;
LABEL_19:
      *v16 = v28[0];
      *(v16 + 8) = v29;
      if (v16 != v28)
      {
        geo::small_vector_base<unsigned char>::copy((v16 + 16), v30, (v16 + 48));
      }

      *(v16 + 80) = v32;
      v18 = *v34;
      *v17 = v33;
      *(v14 + 9) = *&v34[9];
      *v14 = v18;
      *(v16 + 144) = v35;
      if (v30[0] != v31)
      {
        free(v30[0]);
      }

      if (++v9 == 8)
      {
        return v7 + 152 == a2;
      }
    }

    v6 = v7;
    v8 += 152;
    v7 += 152;
    if (v7 == a2)
    {
      return 1;
    }
  }
}

void util::id_pool<geo::handle<md::AssociationItem>>::push(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 24);
  if (a2 < ((*(a1 + 32) - v4) >> 3))
  {
    v5 = *(v4 + 8 * a2);
    if (!((v5 ^ a2) >> 32))
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = a2;
      *(v4 + 8 * a2) = v5 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100](a1, v6);
    }
  }
}

uint64_t ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(void *a1, void *a2)
{
  v2 = *(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3FLL);
  *(a1[4] + 8 * *(v2 + 8)) = *(a1[5] - 8);
  v3 = a1[4];
  v4 = a1[5];
  *(*(a1[1] + 8 * (*(v4 - 8) >> 6)) + 16 * (*(v4 - 8) & 0x3FLL) + 8) = *(v2 + 8);
  a1[5] = v4 - 8;
  *v2 = xmmword_1B33B06D0;
  return v3;
}

void std::__hash_table<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::__unordered_map_hasher<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,md::ColorStyleCacheKeyHasher,std::equal_to<md::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::equal_to<md::ColorStyleCacheKey>,md::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>>>::__erase_unique<md::ColorStyleCacheKey>(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::__unordered_map_hasher<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,md::ColorStyleCacheKeyHasher,std::equal_to<md::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::equal_to<md::ColorStyleCacheKey>,md::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>>>::find<md::ColorStyleCacheKey>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

void std::__hash_table<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::__unordered_map_hasher<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::hash<geo::handle<md::MaterialIDStorage>>,std::equal_to<geo::handle<md::MaterialIDStorage>>,true>,std::__unordered_map_equal<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::equal_to<geo::handle<md::MaterialIDStorage>>,std::hash<geo::handle<md::MaterialIDStorage>>,true>,std::allocator<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>>>::__erase_unique<geo::handle<md::MaterialIDStorage>>(void *a1, unint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,64ul>::sparse_ptr_with_check(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 6;
  if (v3 >= (a2 - a1) >> 3)
  {
    return 0;
  }

  v4 = *(a1 + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  v5 = (v4 + 16 * (a3 & 0x3F));
  if (*v5 == HIDWORD(a3))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23PassRouteLineDescriptorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassRouteLineDescriptor>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>(void)::metadata) = *(v3 + 4096);
}

uint64_t md::RouteAnnotationLabelFeature::updateDynamicStyling(md::RouteAnnotationLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  v6 = (*(**(*(a2 + 21) + 32) + 96))(*(*(a2 + 21) + 32), this + 360, a3);
  v7 = *(this + 37);
  if (*(this + 38) == v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = v6;
  v11 = HIBYTE(v6);
  v12 = v6;
  do
  {
    v13 = *(v7 + 8 * v9);
    if ([v13 shouldUpdateStyle])
    {
LABEL_4:
      v8 = 1;
      goto LABEL_5;
    }

    v14 = [v13 routeLegWhen];
    if (HIBYTE(v14) == v11 && (v14 & 0x100) != 0)
    {
      if (v10 != v14)
      {
        goto LABEL_4;
      }
    }

    else if (HIBYTE(v14) != v11)
    {
      goto LABEL_4;
    }

LABEL_5:
    v3 = v3 & 0xFFFFFFFFFFFF0000 | v12;
    [v13 setRouteLegWhen:v3];
    [v13 setShouldUpdateStyle:0];

    ++v9;
    v7 = *(this + 37);
  }

  while (v9 < (*(this + 38) - v7) >> 3);
  if (v8)
  {
    (*(*this + 552))(this, a2);
  }

  return 0;
}

uint64_t md::CompositeLabelPart::layoutForStaging(md::CompositeLabelPart *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(this + 72);
  v6 = *(this + 73);
  if (v5 == v6)
  {
LABEL_4:
    v11 = 37;
  }

  else
  {
    while (1)
    {
      v10 = (*(**v5 + 80))(*v5, a2, a3, a4);
      if (v10 != 37)
      {
        break;
      }

      if (++v5 == v6)
      {
        goto LABEL_4;
      }
    }

    v11 = v10;
  }

  md::CompositeLabelPart::updateCompositeStagingState(this);
  return v11;
}

uint64_t md::WorldSpaceLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = md::CompositeLabelPart::layoutForStaging(a1, a2, a3, a4);
  if (v5 == 37)
  {
    v6 = (*(***(a1 + 576) + 256))(**(a1 + 576));
    *(a1 + 152) = *v6;
    *(a1 + 156) = v6[1];
    *(a1 + 160) = v6[2];
    *(a1 + 164) = v6[3];
  }

  return v5;
}

void md::CompositeLabelPart::updateCompositeStagingState(md::CompositeLabelPart *this)
{
  v2 = xmmword_1B33B0730;
  v19 = xmmword_1B33B0730;
  v20 = xmmword_1B33B0730;
  v3 = *(this + 72);
  v4 = *(this + 73);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = (*(**v3 + 256))(*v3);
      v7 = 0;
      v8 = &v20;
      v9 = 1;
      do
      {
        v10 = v9;
        *v8 = fminf(*(v6 + 4 * v7), *v8);
        *(&v20 + v7 + 2) = fmaxf(*(&v20 + v7 + 2), *(v6 + 8 + 4 * v7));
        v8 = &v20 + 1;
        v7 = 1;
        v9 = 0;
      }

      while ((v10 & 1) != 0);
      v11 = 0;
      v12 = *(v5 + 24);
      v13 = v12 + 72;
      v14 = v12 + 80;
      v15 = &v19;
      v16 = 1;
      do
      {
        v17 = v16;
        *v15 = fminf(*(v13 + 4 * v11), *v15);
        *(&v19 + v11 + 2) = fmaxf(*(&v19 + v11 + 2), *(v14 + 4 * v11));
        v15 = &v19 + 1;
        v11 = 1;
        v16 = 0;
      }

      while ((v17 & 1) != 0);
      ++v3;
    }

    while (v3 != v4);
    v2 = v20;
  }

  v18 = v2;
  md::CollisionObject::setLocalBounds(this + 72, &v19);
  *(this + 152) = v18;
  if (*(this + 565))
  {
    *(this + 23) = (*(*this + 136))(this);
  }
}

uint64_t md::WorldSpaceLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 && (*(a1 + 634) & 1) == 0 && *(**(a1 + 32) + 253) != *(a1 + 631))
  {
    return 1;
  }

  v7 = *(a1 + 576);
  v8 = *(a1 + 584);
  if (v7 == v8)
  {
    return 0;
  }

  v9 = v7 + 8;
  do
  {
    result = (*(**(v9 - 8) + 768))(*(v9 - 8), a2, a3, a4);
    if (result)
    {
      break;
    }

    v11 = v9 == v8;
    v9 += 8;
  }

  while (!v11);
  return result;
}

void md::LabelMapTileCollisionInfo::addItemsToCollider(md::LabelMapTileCollisionInfo *this, md::LabelManager *a2, md::LabelCollider *a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  if (*(this + 23) != *(this + 24))
  {
    md::LabelMapTileCollisionInfo::pointsToScreen(v33, this, *(a2 + 53), *(*(a2 + 29) + 64));
    v6 = *(this + 23);
    v7 = *(this + 24);
    if (v6 != v7)
    {
      v8 = *(a2 + 44) * *(this + 8);
      v9 = v6 + 136;
      do
      {
        v10 = *(v9 + 128);
        v11 = *(v33[0] + 8 * v10);
        v12 = vsub_f32(*(v33[0] + 8 * (v10 + 1)), v11);
        v13 = vmul_f32(v12, v12);
        *v13.i32 = sqrtf(vaddv_f32(v13));
        v14 = COERCE_DOUBLE(vdiv_f32(v12, vdup_lane_s32(v13, 0)));
        if (*v13.i32 > 0.0)
        {
          v15 = v14;
        }

        else
        {
          v15 = COERCE_DOUBLE(1065353216);
        }

        *&v31 = *v13.i32 * 0.5;
        *(&v31 + 1) = v8;
        v16 = vmla_f32(v11, 0x3F0000003F000000, v12);
        *(&v31 + 1) = v16;
        v32 = v15;
        if (!*(v9 + 96))
        {
          md::CollisionObject::resetWithRects((v9 - 80), 1u);
          *(v9 + 96) = 1;
          *(v9 + 116) = 1;
          v16 = *(&v31 + 8);
          v15 = v32;
        }

        *(v9 - 64) = v15;
        v17 = *(v9 + 80);
        v30 = v31;
        v18 = vneg_f32(*&v31);
        v19 = v31;
        *v17 = v18;
        v17[1] = v19;
        *(v9 - 80) = v18.i32[0];
        *(v9 - 76) = v17->i32[1];
        *(v9 - 72) = v17[1].i32[0];
        *(v9 - 68) = v17[1].i32[1];
        *(v9 - 48) = v16;
        v20 = gm::OBRect<float>::axisAlignedBoundingRect(&v31);
        *v9 = v20;
        *(v9 + 4) = v21;
        *(v9 + 8) = v22;
        *(v9 + 12) = v23;
        *(v9 - 32) = v20;
        *(v9 - 28) = v21;
        *(v9 - 24) = v22;
        *(v9 - 20) = v23;
        v24 = *(v9 + 104);
        *&v25 = v30;
        *(&v25 + 1) = v30;
        *(v24 + 8) = v25;
        *v24 = *(v9 - 48);
        *(v24 + 4) = *(v9 - 44);
        *(v9 - 128) = v31;
        *(v9 - 112) = v15;
        v26 = v9 + 136;
        v9 += 272;
      }

      while (v26 != v7);
      v27 = *(this + 23);
      if (*(this + 24) != v27)
      {
        v28 = 0;
        v29 = 0;
        do
        {
          md::LabelCollider::addCollidableItem(a3, (v27 + v28));
          ++v29;
          v27 = *(this + 23);
          v28 += 272;
        }

        while (v29 < 0xF0F0F0F0F0F0F0F1 * ((*(this + 24) - v27) >> 4));
      }
    }

    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v33);
  }
}

char *std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,2,1>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[8 * a2];
  return result;
}

void std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,2,1>>(v2, v1);
  }
}

uint64_t md::RouteAnnotationDedupingGroup::prepareForCollision(md::RouteAnnotationDedupingGroup *this, md::LabelManager *a2)
{
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    while (((*(**v4 + 16))() & 1) != 0)
    {
      ++v4;
LABEL_4:
      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    v6 = v5 - 1;
    while (v6 != v4)
    {
      v5 = v6;
      v7 = *v6--;
      if ((*(*v7 + 16))(v7))
      {
        v8 = *v4;
        *v4++ = *v5;
        *v5 = v8;
        goto LABEL_4;
      }
    }
  }

  v5 = v4;
LABEL_11:
  v9 = *(this + 1);
  v10 = (*(**(*(a2 + 21) + 32) + 8))(*(*(a2 + 21) + 32));
  v11 = 126 - 2 * __clz((v5 - v9) >> 3);
  if (v10)
  {
    *&v42[0] = a2;
    if (v5 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(v9->i64, v5, v42, v12, 1);
    memset(v42, 0, sizeof(v42));
    v43 = 1065353216;
    if (v5 != v9)
    {
      v13 = v9;
      do
      {
        v15 = (v13 + 1);
        v14 = *v13;
        if (std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v42, *v13))
        {
          v16 = 1;
        }

        else
        {
          v16 = v5 == v15;
        }

        if (!v16)
        {
          do
          {
            v44 = *v15;
            v17 = v44;
            v18 = (*(*v14 + 24))(v14);
            v19 = (*(*v17 + 24))(v17);
            v20 = 0;
            v21 = 1;
            while (*(v18 + 8 + 4 * v20) > *(v19 + 4 * v20) && *(v18 + 4 * v20) < *(v19 + 8 + 4 * v20))
            {
              v22 = v21;
              v21 = 0;
              v20 = 1;
              if ((v22 & 1) == 0)
              {
                std::__hash_table<md::LabelBase *,std::hash<md::LabelBase *>,std::equal_to<md::LabelBase *>,std::allocator<md::LabelBase *>>::__emplace_unique_key_args<md::LabelBase *,md::LabelBase *&>(v42, v17);
                break;
              }
            }

            ++v15;
          }

          while (v15 != v5);
        }

        ++v13;
      }

      while (v13 != v5);
    }

    v44 = a2;
    std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,false>(v9->i64, v5, &v44, v12, 1);
    v44 = v42;
    if (v5 != v9)
    {
      while (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v42, v9->i64[0]))
      {
        v9 = (v9 + 8);
        if (v9 == v5)
        {
          goto LABEL_51;
        }
      }

      v25 = (v5 - 1);
      while (1)
      {
        v26 = v25 - v9;
        if (v25 == v9)
        {
          break;
        }

        v27 = v25;
        v28 = *v25--;
        if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v42, v28))
        {
          v29 = v26 >> 3;
          v30 = (v26 >> 3) + 1;
          if (v29 < 3)
          {
            v31 = 0;
            v36 = 0;
          }

          else
          {
            if (v30 >= 0xFFFFFFFFFFFFFFFLL)
            {
              v31 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v30;
            }

            v32 = MEMORY[0x1E69E5398];
            while (1)
            {
              v33 = operator new(8 * v31, v32);
              if (v33)
              {
                break;
              }

              v34 = v31 >> 1;
              v35 = v31 > 1;
              v31 >>= 1;
              if (!v35)
              {
                v36 = 0;
                v31 = v34;
                goto LABEL_49;
              }
            }

            v36 = v33;
          }

LABEL_49:
          std::__stable_partition_impl<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,std::__wrap_iter<md::LabelBase **>,long,std::pair<md::LabelBase **,long>>(v9, v27, &v44, v30, v36, v31);
          if (v36)
          {
            operator delete(v36);
          }

          break;
        }
      }
    }

LABEL_51:
    result = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v42);
  }

  else
  {
    if (v5 == v9)
    {
      v23 = 0;
    }

    else
    {
      v23 = v11;
    }

    result = std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,false>(v9, v5, v23, 1);
  }

  v37 = *(this + 2);
  v38 = *(this + 1);
  if (v38 != v37)
  {
    v39 = 0;
    v40 = *(this + 1);
    do
    {
      v41 = *v40++;
      *(v41 + 32) = v39++;
    }

    while (v40 != v37);
    *(this + 9) = *v38;
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  i = a2 - 1;
  v304 = a2 - 1;
  v307 = a2;
  v300 = a2 - 3;
  v301 = a2 - 2;
  j = a1;
  while (1)
  {
    v10 = j;
    v11 = v307;
    v12 = v307 - v10;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10, v10 + 1, i, a3);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10, v10 + 1, v10 + 2, i, a3);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10, v10 + 1, v10 + 2, v10 + 3, i, a3);
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v141 = *(*i + 8);
        v142 = *(*v10 + 8);
        v143 = (*(*v141 + 656))(v141);
        v144 = (*(*v142 + 656))(v142);
        if (v143 == v144)
        {
          v145 = *(*(*a3 + 168) + 32);
          v146 = (*(*v145 + 72))(v145);
          v147 = vabdd_f64(v146, (*(*v141 + 648))(v141));
          v148 = *(*(*a3 + 168) + 32);
          v149 = (*(*v148 + 72))(v148);
          v150 = (*(*v142 + 648))(v142);
          v151 = v304;
          if (v147 >= vabdd_f64(v149, v150))
          {
            return;
          }
        }

        else
        {
          v275 = (*(*v141 + 656))(v141);
          v276 = (*(*v142 + 656))(v142);
          v151 = v304;
          if (v275 <= v276)
          {
            return;
          }
        }

        v277 = *v10;
        *v10 = *v151;
        *v151 = v277;
        return;
      }
    }

    v309 = v10;
    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v10 == v307)
      {
        return;
      }

      v180 = (v12 - 2) >> 1;
      v305 = v180;
      v311 = v307 - v10;
      while (1)
      {
        v181 = v180;
        if (v305 < v180)
        {
          goto LABEL_166;
        }

        v182 = (2 * v180) | 1;
        v183 = &v309[v182];
        if (2 * v180 + 2 >= v12)
        {
          goto LABEL_146;
        }

        v184 = *(*v183 + 8);
        v185 = *(v183[1] + 8);
        v186 = (*(*v184 + 656))(v184);
        if (v186 == (*(*v185 + 656))(v185))
        {
          break;
        }

        v192 = (*(*v184 + 656))(v184);
        if (v192 > (*(*v185 + 656))(v185))
        {
          goto LABEL_145;
        }

LABEL_146:
        v193 = *(*v183 + 8);
        v194 = *(v309[v181] + 8);
        v195 = (*(*v193 + 656))(v193);
        if (v195 == (*(*v194 + 656))(v194))
        {
          v196 = *(*(*a3 + 168) + 32);
          v197 = (*(*v196 + 72))(v196);
          v198 = vabdd_f64(v197, (*(*v193 + 648))(v193));
          v199 = *(*(*a3 + 168) + 32);
          v200 = (*(*v199 + 72))(v199);
          v201 = (*(*v194 + 648))(v194);
          v12 = v311;
          if (v198 < vabdd_f64(v200, v201))
          {
            goto LABEL_166;
          }
        }

        else
        {
          v202 = (*(*v193 + 656))(v193);
          v203 = (*(*v194 + 656))(v194);
          v12 = v311;
          if (v202 > v203)
          {
            goto LABEL_166;
          }
        }

        v303 = v309[v181];
        v309[v181] = *v183;
        if (v305 < v182)
        {
          v204 = v183;
          goto LABEL_165;
        }

        while (1)
        {
          v205 = 2 * v182;
          v182 = (2 * v182) | 1;
          v204 = &v309[v182];
          v206 = v205 + 2;
          if (v205 + 2 >= v12)
          {
            goto LABEL_158;
          }

          v207 = *(*v204 + 8);
          v208 = *(v204[1] + 8);
          v209 = (*(*v207 + 656))(v207);
          if (v209 != (*(*v208 + 656))(v208))
          {
            v215 = (*(*v207 + 656))(v207);
            if (v215 <= (*(*v208 + 656))(v208))
            {
              goto LABEL_158;
            }

LABEL_157:
            ++v204;
            v182 = v206;
            goto LABEL_158;
          }

          v210 = *(*(*a3 + 168) + 32);
          v211 = (*(*v210 + 72))(v210);
          v212 = vabdd_f64(v211, (*(*v207 + 648))(v207));
          v213 = *(*(*a3 + 168) + 32);
          v214 = (*(*v213 + 72))(v213);
          if (v212 < vabdd_f64(v214, (*(*v208 + 648))(v208)))
          {
            goto LABEL_157;
          }

LABEL_158:
          v216 = *(*v204 + 8);
          v217 = *(v303 + 8);
          v218 = (*(*v216 + 656))(v216);
          if (v218 == (*(*v217 + 656))(v217))
          {
            v219 = *(*(*a3 + 168) + 32);
            v220 = (*(*v219 + 72))(v219);
            v221 = vabdd_f64(v220, (*(*v216 + 648))(v216));
            v222 = *(*(*a3 + 168) + 32);
            v223 = (*(*v222 + 72))(v222);
            if (v221 < vabdd_f64(v223, (*(*v217 + 648))(v217)))
            {
              break;
            }

            goto LABEL_162;
          }

          v224 = (*(*v216 + 656))(v216);
          if (v224 > (*(*v217 + 656))(v217))
          {
            break;
          }

LABEL_162:
          *v183 = *v204;
          v183 = v204;
          v12 = v311;
          if (v305 < v182)
          {
            goto LABEL_165;
          }
        }

        v204 = v183;
        v12 = v311;
LABEL_165:
        *v204 = v303;
LABEL_166:
        v180 = v181 - 1;
        if (!v181)
        {
          v226 = v307;
          v225 = v309;
          while (1)
          {
            v227 = 0;
            v306 = *v225;
            v308 = v226;
            v228 = (v12 - 2) >> 1;
            v312 = v228;
            do
            {
              v229 = v225;
              v230 = &v225[v227];
              v225 = v230 + 1;
              v231 = 2 * v227;
              v227 = (2 * v227) | 1;
              v232 = v231 + 2;
              if (v231 + 2 >= v12)
              {
                goto LABEL_175;
              }

              v233 = v12;
              v235 = v230[2];
              v234 = v230 + 2;
              v236 = *(*(v234 - 1) + 8);
              v237 = *(v235 + 8);
              v238 = (*(*v236 + 656))(v236);
              if (v238 != (*(*v237 + 656))(v237))
              {
                v245 = (*(*v236 + 656))(v236);
                v246 = (*(*v237 + 656))(v237);
                v12 = v233;
                v228 = v312;
                if (v245 <= v246)
                {
                  goto LABEL_175;
                }

LABEL_174:
                v225 = v234;
                v227 = v232;
                goto LABEL_175;
              }

              v239 = *(*(*a3 + 168) + 32);
              v240 = (*(*v239 + 72))(v239);
              v241 = vabdd_f64(v240, (*(*v236 + 648))(v236));
              v242 = *(*(*a3 + 168) + 32);
              v243 = (*(*v242 + 72))(v242);
              v244 = (*(*v237 + 648))(v237);
              v12 = v233;
              v228 = v312;
              if (v241 < vabdd_f64(v243, v244))
              {
                goto LABEL_174;
              }

LABEL_175:
              *v229 = *v225;
            }

            while (v227 <= v228);
            v226 = v308 - 1;
            if (v225 == v308 - 1)
            {
              *v225 = v306;
              goto LABEL_191;
            }

            *v225 = *v226;
            *v226 = v306;
            v247 = (v225 - v309 + 8) >> 3;
            v248 = v247 - 2;
            if (v247 < 2)
            {
              goto LABEL_191;
            }

            v313 = v12;
            v249 = v248 >> 1;
            v250 = &v309[v248 >> 1];
            v251 = *(*v250 + 8);
            v252 = *(*v225 + 8);
            v253 = (*(*v251 + 656))(v251);
            if (v253 == (*(*v252 + 656))(v252))
            {
              v254 = *(*(*a3 + 168) + 32);
              v255 = (*(*v254 + 72))(v254);
              v256 = vabdd_f64(v255, (*(*v251 + 648))(v251));
              v257 = *(*(*a3 + 168) + 32);
              v258 = (*(*v257 + 72))(v257);
              v259 = (*(*v252 + 648))(v252);
              v12 = v313;
              if (v256 >= vabdd_f64(v258, v259))
              {
                goto LABEL_191;
              }
            }

            else
            {
              v260 = (*(*v251 + 656))(v251);
              v261 = (*(*v252 + 656))(v252);
              v12 = v313;
              if (v260 <= v261)
              {
                goto LABEL_191;
              }
            }

            v262 = *v225;
            *v225 = *v250;
            if (v248 >= 2)
            {
              do
              {
                v264 = v249 - 1;
                v249 = (v249 - 1) >> 1;
                v263 = &v309[v249];
                v265 = *(*v263 + 8);
                v266 = *(v262 + 8);
                v267 = (*(*v265 + 656))(v265);
                if (v267 == (*(*v266 + 656))(v266))
                {
                  v268 = *(*(*a3 + 168) + 32);
                  v269 = (*(*v268 + 72))(v268);
                  v270 = vabdd_f64(v269, (*(*v265 + 648))(v265));
                  v271 = *(*(*a3 + 168) + 32);
                  v272 = (*(*v271 + 72))(v271);
                  if (v270 >= vabdd_f64(v272, (*(*v266 + 648))(v266)))
                  {
                    goto LABEL_184;
                  }
                }

                else
                {
                  v273 = (*(*v265 + 656))(v265);
                  if (v273 <= (*(*v266 + 656))(v266))
                  {
                    goto LABEL_184;
                  }
                }

                *v250 = *v263;
                v250 = &v309[v249];
              }

              while (v264 > 1);
            }

            else
            {
LABEL_184:
              v263 = v250;
            }

            *v263 = v262;
            v12 = v313;
LABEL_191:
            v274 = v12-- <= 2;
            v225 = v309;
            if (v274)
            {
              return;
            }
          }
        }
      }

      v187 = *(*(*a3 + 168) + 32);
      v188 = (*(*v187 + 72))(v187);
      v189 = vabdd_f64(v188, (*(*v184 + 648))(v184));
      v190 = *(*(*a3 + 168) + 32);
      v191 = (*(*v190 + 72))(v190);
      if (v189 >= vabdd_f64(v191, (*(*v185 + 648))(v185)))
      {
        goto LABEL_146;
      }

LABEL_145:
      ++v183;
      v182 = 2 * v181 + 2;
      goto LABEL_146;
    }

    v13 = v12 >> 1;
    v14 = &v10[v12 >> 1];
    if (v12 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(&v10[v12 >> 1], v10, i, a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10, &v10[v12 >> 1], i, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10 + 1, v14 - 1, v301, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10 + 2, &v10[v13 + 1], v300, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v14 - 1, v14, &v10[v13 + 1], a3);
      v15 = *v10;
      *v10 = *v14;
      *v14 = v15;
    }

    --a4;
    if (a5)
    {
      goto LABEL_27;
    }

    v16 = *(*(v10 - 1) + 8);
    v17 = *(*v10 + 8);
    v18 = (*(*v16 + 656))(v16);
    if (v18 != (*(*v17 + 656))(v17))
    {
      v43 = (*(*v16 + 656))(v16);
      v24 = v307;
      if (v43 <= (*(*v17 + 656))(v17))
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }

    v19 = *(*(*a3 + 168) + 32);
    v20 = (*(*v19 + 72))(v19);
    v21 = vabdd_f64(v20, (*(*v16 + 648))(v16));
    v22 = *(*(*a3 + 168) + 32);
    v23 = (*(*v22 + 72))(v22);
    v24 = v307;
    if (v21 < vabdd_f64(v23, (*(*v17 + 648))(v17)))
    {
LABEL_27:
      v310 = a4;
      v44 = v10 + 1;
      v45 = *v10;
      while (1)
      {
        v46 = *(*v44 + 8);
        v47 = *(v45 + 8);
        v48 = (*(*v46 + 656))(v46);
        if (v48 != (*(*v47 + 656))(v47))
        {
          break;
        }

        v49 = *(*(*a3 + 168) + 32);
        v50 = (*(*v49 + 72))(v49);
        v51 = vabdd_f64(v50, (*(*v46 + 648))(v46));
        v52 = *(*(*a3 + 168) + 32);
        v53 = (*(*v52 + 72))(v52);
        if (v51 >= vabdd_f64(v53, (*(*v47 + 648))(v47)))
        {
          goto LABEL_33;
        }

LABEL_32:
        ++v44;
      }

      v54 = (*(*v46 + 656))(v46);
      if (v54 > (*(*v47 + 656))(v47))
      {
        goto LABEL_32;
      }

LABEL_33:
      v55 = v44 - 1;
      if (v44 - 1 != v10)
      {
        while (1)
        {
          v56 = *(*i + 8);
          v57 = *(v45 + 8);
          v58 = (*(*v56 + 656))(v56);
          if (v58 == (*(*v57 + 656))(v57))
          {
            v59 = *(*(*a3 + 168) + 32);
            v60 = (*(*v59 + 72))(v59);
            v61 = vabdd_f64(v60, (*(*v56 + 648))(v56));
            v62 = *(*(*a3 + 168) + 32);
            v63 = (*(*v62 + 72))(v62);
            if (v61 < vabdd_f64(v63, (*(*v57 + 648))(v57)))
            {
              goto LABEL_48;
            }
          }

          else
          {
            v64 = (*(*v56 + 656))(v56);
            if (v64 > (*(*v57 + 656))(v57))
            {
              goto LABEL_48;
            }
          }

          --i;
        }
      }

      i = v307;
      if (v44 < v307)
      {
        for (i = v304; ; --i)
        {
          v65 = *(*i + 8);
          v66 = *(v45 + 8);
          v67 = (*(*v65 + 656))(v65);
          if (v67 == (*(*v66 + 656))(v66))
          {
            v68 = *(*(*a3 + 168) + 32);
            v69 = (*(*v68 + 72))(v68);
            v70 = (*(*v65 + 648))(v65);
            v71 = *(*(*a3 + 168) + 32);
            v72 = (*(*v71 + 72))(v71);
            (*(*v66 + 648))(v66);
            if (v44 >= i || vabdd_f64(v69, v70) < vabdd_f64(v72, v73))
            {
              break;
            }
          }

          else
          {
            v74 = (*(*v65 + 656))(v65);
            v75 = (*(*v66 + 656))(v66);
            if (v44 >= i || v74 > v75)
            {
              break;
            }
          }
        }
      }

LABEL_48:
      if (v44 >= i)
      {
        goto LABEL_62;
      }

      v76 = v44;
      v77 = i;
      while (2)
      {
        v78 = *v76;
        *v76 = *v77;
        v76 += 8;
        *v77 = v78;
        while (2)
        {
          v79 = *(*v76 + 8);
          v80 = *(v45 + 8);
          v81 = (*(*v79 + 656))(v79);
          if (v81 == (*(*v80 + 656))(v80))
          {
            v82 = *(*(*a3 + 168) + 32);
            v83 = (*(*v82 + 72))(v82);
            v84 = vabdd_f64(v83, (*(*v79 + 648))(v79));
            v85 = *(*(*a3 + 168) + 32);
            v86 = (*(*v85 + 72))(v85);
            if (v84 >= vabdd_f64(v86, (*(*v80 + 648))(v80)))
            {
              break;
            }

            goto LABEL_55;
          }

          v87 = (*(*v79 + 656))(v79);
          if (v87 > (*(*v80 + 656))(v80))
          {
LABEL_55:
            v76 += 8;
            continue;
          }

          break;
        }

        v55 = (v76 - 8);
        do
        {
          while (1)
          {
            v88 = *--v77;
            v89 = *(v88 + 8);
            v90 = *(v45 + 8);
            v91 = (*(*v89 + 656))(v89);
            if (v91 != (*(*v90 + 656))(v90))
            {
              break;
            }

            v92 = *(*(*a3 + 168) + 32);
            v93 = (*(*v92 + 72))(v92);
            v94 = vabdd_f64(v93, (*(*v89 + 648))(v89));
            v95 = *(*(*a3 + 168) + 32);
            v96 = (*(*v95 + 72))(v95);
            if (v94 < vabdd_f64(v96, (*(*v90 + 648))(v90)))
            {
              goto LABEL_61;
            }
          }

          v97 = (*(*v89 + 656))(v89);
        }

        while (v97 <= (*(*v90 + 656))(v90));
LABEL_61:
        if (v76 < v77)
        {
          continue;
        }

        break;
      }

LABEL_62:
      a1 = v309;
      if (v55 != v309)
      {
        *v309 = *v55;
      }

      *v55 = v45;
      v98 = v44 >= i;
      i = v304;
      a4 = v310;
      if (v98)
      {
        v99 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **>(v309, v55, a3);
        j = v55 + 1;
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **>(v55 + 1, v307, a3))
        {
          a2 = v55;
          if (v99)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v99)
        {
          goto LABEL_68;
        }
      }

      else
      {
LABEL_68:
        std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(v309, v55, a3, v310, a5 & 1);
        a5 = 0;
        j = v55 + 1;
      }
    }

    else
    {
LABEL_17:
      v25 = *v10;
      v26 = *(*v10 + 8);
      v27 = *(*i + 8);
      v28 = (*(*v26 + 656))(v26);
      if (v28 == (*(*v27 + 656))(v27))
      {
        v29 = *(*(*a3 + 168) + 32);
        v30 = (*(*v29 + 72))(v29);
        v31 = vabdd_f64(v30, (*(*v26 + 648))(v26));
        v32 = *(*(*a3 + 168) + 32);
        v33 = (*(*v32 + 72))(v32);
        if (v31 < vabdd_f64(v33, (*(*v27 + 648))(v27)))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v100 = (*(*v26 + 656))(v26);
        if (v100 > (*(*v27 + 656))(v27))
        {
LABEL_70:
          for (j = v309 + 1; ; ++j)
          {
            v101 = *(v25 + 8);
            v102 = *(*j + 8);
            v103 = (*(*v101 + 656))(v101);
            if (v103 == (*(*v102 + 656))(v102))
            {
              v104 = *(*(*a3 + 168) + 32);
              v105 = (*(*v104 + 72))(v104);
              v106 = vabdd_f64(v105, (*(*v101 + 648))(v101));
              v107 = *(*(*a3 + 168) + 32);
              v108 = (*(*v107 + 72))(v107);
              if (v106 < vabdd_f64(v108, (*(*v102 + 648))(v102)))
              {
                goto LABEL_76;
              }
            }

            else
            {
              v109 = (*(*v101 + 656))(v101);
              if (v109 > (*(*v102 + 656))(v102))
              {
LABEL_76:
                v24 = v307;
                goto LABEL_77;
              }
            }
          }
        }
      }

      for (j = v309 + 1; j < v24; ++j)
      {
        v34 = *(v25 + 8);
        v35 = *(*j + 8);
        v36 = (*(*v34 + 656))(v34);
        if (v36 == (*(*v35 + 656))(v35))
        {
          v37 = *(*(*a3 + 168) + 32);
          v38 = (*(*v37 + 72))(v37);
          v39 = vabdd_f64(v38, (*(*v34 + 648))(v34));
          v40 = *(*(*a3 + 168) + 32);
          v41 = (*(*v40 + 72))(v40);
          if (v39 < vabdd_f64(v41, (*(*v35 + 648))(v35)))
          {
            goto LABEL_76;
          }
        }

        else
        {
          v42 = (*(*v34 + 656))(v34);
          if (v42 > (*(*v35 + 656))(v35))
          {
            goto LABEL_76;
          }
        }

        v24 = v307;
      }

LABEL_77:
      k = v24;
      if (j >= v24)
      {
        goto LABEL_93;
      }

      for (k = i; ; --k)
      {
        v111 = *(v25 + 8);
        v112 = *(*k + 8);
        v113 = (*(*v111 + 656))(v111);
        if (v113 == (*(*v112 + 656))(v112))
        {
          break;
        }

        v119 = (*(*v111 + 656))(v111);
        if (v119 <= (*(*v112 + 656))(v112))
        {
          goto LABEL_93;
        }

LABEL_83:
        ;
      }

      v114 = *(*(*a3 + 168) + 32);
      v115 = (*(*v114 + 72))(v114);
      v116 = vabdd_f64(v115, (*(*v111 + 648))(v111));
      v117 = *(*(*a3 + 168) + 32);
      v118 = (*(*v117 + 72))(v117);
      if (v116 < vabdd_f64(v118, (*(*v112 + 648))(v112)))
      {
        goto LABEL_83;
      }

LABEL_93:
      while (j < k)
      {
        v120 = *j;
        *j++ = *k;
        *k = v120;
        while (1)
        {
          v121 = *(v25 + 8);
          v122 = *(*j + 8);
          v123 = (*(*v121 + 656))(v121);
          if (v123 == (*(*v122 + 656))(v122))
          {
            break;
          }

          v129 = (*(*v121 + 656))(v121);
          if (v129 > (*(*v122 + 656))(v122))
          {
            goto LABEL_91;
          }

LABEL_89:
          ++j;
        }

        v124 = *(*(*a3 + 168) + 32);
        v125 = (*(*v124 + 72))(v124);
        v126 = vabdd_f64(v125, (*(*v121 + 648))(v121));
        v127 = *(*(*a3 + 168) + 32);
        v128 = (*(*v127 + 72))(v127);
        if (v126 >= vabdd_f64(v128, (*(*v122 + 648))(v122)))
        {
          goto LABEL_89;
        }

        do
        {
LABEL_91:
          while (1)
          {
            v131 = *--k;
            v132 = *(v25 + 8);
            v133 = *(v131 + 8);
            v134 = (*(*v132 + 656))(v132);
            if (v134 == (*(*v133 + 656))(v133))
            {
              break;
            }

            v130 = (*(*v132 + 656))(v132);
            if (v130 <= (*(*v133 + 656))(v133))
            {
              goto LABEL_93;
            }
          }

          v135 = *(*(*a3 + 168) + 32);
          v136 = (*(*v135 + 72))(v135);
          v137 = vabdd_f64(v136, (*(*v132 + 648))(v132));
          v138 = *(*(*a3 + 168) + 32);
          v139 = (*(*v138 + 72))(v138);
        }

        while (v137 < vabdd_f64(v139, (*(*v133 + 648))(v133)));
      }

      v140 = j - 1;
      if (j - 1 != v309)
      {
        *v309 = *v140;
      }

      a5 = 0;
      *v140 = v25;
    }
  }

  v152 = v10 + 1;
  v154 = v10 == v307 || v152 == v307;
  if ((a5 & 1) == 0)
  {
    if (v154)
    {
      return;
    }

    while (1)
    {
      v278 = v10;
      v10 = v152;
      v279 = *(v278[1] + 8);
      v280 = *(*v278 + 8);
      v281 = (*(*v279 + 656))(v279);
      if (v281 == (*(*v280 + 656))(v280))
      {
        v282 = *(*(*a3 + 168) + 32);
        v283 = (*(*v282 + 72))(v282);
        v284 = vabdd_f64(v283, (*(*v279 + 648))(v279));
        v285 = *(*(*a3 + 168) + 32);
        v286 = (*(*v285 + 72))(v285);
        if (v284 >= vabdd_f64(v286, (*(*v280 + 648))(v280)))
        {
          goto LABEL_207;
        }
      }

      else
      {
        v287 = (*(*v279 + 656))(v279);
        if (v287 <= (*(*v280 + 656))(v280))
        {
          goto LABEL_207;
        }
      }

      v288 = *v10;
      do
      {
        while (1)
        {
          v289 = v278;
          v278[1] = *v278;
          v290 = *--v278;
          v291 = *(v288 + 8);
          v292 = *(v290 + 8);
          v293 = (*(*v291 + 656))(v291);
          if (v293 != (*(*v292 + 656))(v292))
          {
            break;
          }

          v294 = *(*(*a3 + 168) + 32);
          v295 = (*(*v294 + 72))(v294);
          v296 = vabdd_f64(v295, (*(*v291 + 648))(v291));
          v297 = *(*(*a3 + 168) + 32);
          v298 = (*(*v297 + 72))(v297);
          if (v296 >= vabdd_f64(v298, (*(*v292 + 648))(v292)))
          {
            goto LABEL_206;
          }
        }

        v299 = (*(*v291 + 656))(v291);
      }

      while (v299 > (*(*v292 + 656))(v292));
LABEL_206:
      *v289 = v288;
LABEL_207:
      v152 = v10 + 1;
      if (v10 + 1 == v307)
      {
        return;
      }
    }
  }

  if (v154)
  {
    return;
  }

  v155 = 0;
  v156 = v10;
  while (2)
  {
    v157 = v156;
    v156 = v152;
    v158 = *(v157[1] + 8);
    v159 = *(*v157 + 8);
    v160 = (*(*v158 + 656))(v158);
    if (v160 == (*(*v159 + 656))(v159))
    {
      v161 = *(*(*a3 + 168) + 32);
      v162 = (*(*v161 + 72))(v161);
      v163 = vabdd_f64(v162, (*(*v158 + 648))(v158));
      v164 = *(*(*a3 + 168) + 32);
      v165 = (*(*v164 + 72))(v164);
      if (v163 >= vabdd_f64(v165, (*(*v159 + 648))(v159)))
      {
        goto LABEL_135;
      }
    }

    else
    {
      v166 = (*(*v158 + 656))(v158);
      if (v166 <= (*(*v159 + 656))(v159))
      {
        goto LABEL_135;
      }
    }

    v167 = v10;
    v168 = v157[1];
    v157[1] = *v157;
    v169 = v167;
    if (v157 == v167)
    {
      goto LABEL_134;
    }

    v170 = v155;
    while (2)
    {
      v171 = *(v168 + 8);
      v172 = *(*(v309 + v170 - 8) + 8);
      v173 = (*(*v171 + 656))(v171);
      if (v173 == (*(*v172 + 656))(v172))
      {
        v174 = *(*(*a3 + 168) + 32);
        v175 = (*(*v174 + 72))(v174);
        v176 = vabdd_f64(v175, (*(*v171 + 648))(v171));
        v177 = *(*(*a3 + 168) + 32);
        v178 = (*(*v177 + 72))(v177);
        if (v176 >= vabdd_f64(v178, (*(*v172 + 648))(v172)))
        {
          v169 = (v309 + v170);
          goto LABEL_133;
        }

LABEL_130:
        --v157;
        *(v309 + v170) = *(v309 + v170 - 8);
        v170 -= 8;
        if (!v170)
        {
          v169 = v309;
          goto LABEL_133;
        }

        continue;
      }

      break;
    }

    v179 = (*(*v171 + 656))(v171);
    if (v179 > (*(*v172 + 656))(v172))
    {
      goto LABEL_130;
    }

    v169 = v157;
LABEL_133:
    v11 = v307;
LABEL_134:
    *v169 = v168;
    v10 = v309;
LABEL_135:
    v152 = v156 + 1;
    v155 += 8;
    if (v156 + 1 != v11)
    {
      continue;
    }

    break;
  }
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v8 = *(*a2 + 8);
  v9 = *(*a1 + 8);
  v10 = (*(*v8 + 656))(v8);
  if (v10 == (*(*v9 + 656))(v9))
  {
    v11 = *(*(*a4 + 168) + 32);
    v12 = (*(*v11 + 72))(v11);
    v13 = vabdd_f64(v12, (*(*v8 + 648))(v8));
    v14 = *(*(*a4 + 168) + 32);
    v15 = (*(*v14 + 72))(v14);
    if (v13 >= vabdd_f64(v15, (*(*v9 + 648))(v9)))
    {
      goto LABEL_3;
    }

LABEL_7:
    v25 = *(*a3 + 8);
    v26 = *(*v6 + 8);
    v27 = (*(*v25 + 656))(v25);
    if (v27 == (*(*v26 + 656))(v26))
    {
      v28 = *(*(*a4 + 168) + 32);
      v29 = (*(*v28 + 72))(v28);
      v30 = vabdd_f64(v29, (*(*v25 + 648))(v25));
      v31 = *(*(*a4 + 168) + 32);
      v32 = (*(*v31 + 72))(v31);
      if (v30 >= vabdd_f64(v32, (*(*v26 + 648))(v26)))
      {
LABEL_9:
        v33 = *v7;
        *v7 = *v6;
        *v6 = v33;
        v34 = *(*a3 + 8);
        v35 = *(v33 + 8);
        v36 = (*(*v34 + 656))(v34);
        if (v36 == (*(*v35 + 656))(v35))
        {
          v37 = *(*(*a4 + 168) + 32);
          v38 = (*(*v37 + 72))(v37);
          v39 = vabdd_f64(v38, (*(*v34 + 648))(v34));
          v40 = *(*(*a4 + 168) + 32);
          v41 = (*(*v40 + 72))(v40);
          v42 = vabdd_f64(v41, (*(*v35 + 648))(v35));
          v7 = v6;
          v6 = a3;
          goto LABEL_14;
        }

        v53 = (*(*v34 + 656))(v34);
        v54 = (*(*v35 + 656))(v35);
        v7 = v6;
        v6 = a3;
LABEL_20:
        if (v53 <= v54)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v52 = (*(*v25 + 656))(v25);
      if (v52 <= (*(*v26 + 656))(v26))
      {
        goto LABEL_9;
      }
    }

    v6 = a3;
    goto LABEL_21;
  }

  v24 = (*(*v8 + 656))(v8);
  if (v24 > (*(*v9 + 656))(v9))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(*a3 + 8);
  v17 = *(*v6 + 8);
  v18 = (*(*v16 + 656))(v16);
  if (v18 == (*(*v17 + 656))(v17))
  {
    v19 = *(*(*a4 + 168) + 32);
    v20 = (*(*v19 + 72))(v19);
    v21 = vabdd_f64(v20, (*(*v16 + 648))(v16));
    v22 = *(*(*a4 + 168) + 32);
    v23 = (*(*v22 + 72))(v22);
    if (v21 >= vabdd_f64(v23, (*(*v17 + 648))(v17)))
    {
      return;
    }
  }

  else
  {
    v43 = (*(*v16 + 656))(v16);
    if (v43 <= (*(*v17 + 656))(v17))
    {
      return;
    }
  }

  v44 = *v6;
  *v6 = *a3;
  *a3 = v44;
  v45 = *(*v6 + 8);
  v46 = *(*v7 + 8);
  v47 = (*(*v45 + 656))(v45);
  if (v47 != (*(*v46 + 656))(v46))
  {
    v53 = (*(*v45 + 656))(v45);
    v54 = (*(*v46 + 656))(v46);
    goto LABEL_20;
  }

  v48 = *(*(*a4 + 168) + 32);
  v49 = (*(*v48 + 72))(v48);
  v39 = vabdd_f64(v49, (*(*v45 + 648))(v45));
  v50 = *(*(*a4 + 168) + 32);
  v51 = (*(*v50 + 72))(v50);
  v42 = vabdd_f64(v51, (*(*v46 + 648))(v46));
LABEL_14:
  if (v39 < v42)
  {
LABEL_21:
    v55 = *v7;
    *v7 = *v6;
    *v6 = v55;
  }
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(*a2 + 8);
  v9 = *(*a1 + 8);
  v10 = *(*(*a4 + 168) + 32);
  v11 = (*(*v10 + 72))(v10);
  v12 = vabdd_f64(v11, (*(*v8 + 648))(v8));
  v13 = *(*(*a4 + 168) + 32);
  v14 = (*(*v13 + 72))(v13);
  v15 = vabdd_f64(v14, (*(*v9 + 648))(v9));
  v16 = *(*a3 + 8);
  v17 = *(*a2 + 8);
  v18 = *(*(*a4 + 168) + 32);
  v19 = (*(*v18 + 72))(v18);
  v20 = vabdd_f64(v19, (*(*v16 + 648))(v16));
  v21 = *(*(*a4 + 168) + 32);
  v22 = (*(*v21 + 72))(v21);
  v23 = vabdd_f64(v22, (*(*v17 + 648))(v17));
  if (v12 >= v15)
  {
    if (v20 < v23)
    {
      v25 = *a2;
      *a2 = *a3;
      *a3 = v25;
      v26 = *(*a2 + 8);
      v27 = *(*a1 + 8);
      v28 = *(*(*a4 + 168) + 32);
      v29 = (*(*v28 + 72))(v28);
      LODWORD(v26) = vabdd_f64(v29, (*(*v26 + 648))(v26));
      v30 = *(*(*a4 + 168) + 32);
      v31 = (*(*v30 + 72))(v30);
      if (v26 < vabdd_f64(v31, (*(*v27 + 648))(v27)))
      {
        v32 = *a1;
        *a1 = *a2;
        *a2 = v32;
      }
    }
  }

  else
  {
    v24 = *a1;
    if (v20 >= v23)
    {
      *a1 = *a2;
      *a2 = v24;
      v33 = *(*a3 + 8);
      v34 = *(v24 + 8);
      v35 = *(*(*a4 + 168) + 32);
      v36 = (*(*v35 + 72))(v35);
      LODWORD(v33) = vabdd_f64(v36, (*(*v33 + 648))(v33));
      v37 = *(*(*a4 + 168) + 32);
      v38 = (*(*v37 + 72))(v37);
      if (v33 >= vabdd_f64(v38, (*(*v34 + 648))(v34)))
      {
        return;
      }

      v24 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v24;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  while (2)
  {
    v240 = a2 - 1;
    v243 = a2;
    v236 = a2 - 3;
    v237 = a2 - 2;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v10 = v9;
          v11 = a2 - v9;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v9, v9 + 1, v240, a3);
                return;
              case 4:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v9, v9 + 1, v9 + 2, v240, a3);
                return;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v9, v9 + 1, v9 + 2, v9 + 3, v240, a3);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              v119 = *(*v240 + 8);
              v120 = *(*v9 + 8);
              v121 = *(*(*a3 + 168) + 32);
              v122 = (*(*v121 + 72))(v121);
              v123 = vabdd_f64(v122, (*(*v119 + 648))(v119));
              v124 = *(*(*a3 + 168) + 32);
              v125 = (*(*v124 + 72))(v124);
              if (v123 < vabdd_f64(v125, (*(*v120 + 648))(v120)))
              {
                v126 = *v9;
                *v9 = *v240;
                *v240 = v126;
              }

              return;
            }
          }

          if (v11 <= 23)
          {
            v127 = v9 + 1;
            v129 = v9 == a2 || v127 == a2;
            if (a5)
            {
              if (!v129)
              {
                v130 = 0;
                v131 = v9;
                do
                {
                  v133 = *v131;
                  v132 = v131[1];
                  v131 = v127;
                  v134 = *(v132 + 8);
                  v135 = *(v133 + 8);
                  v136 = *(*(*a3 + 168) + 32);
                  v137 = (*(*v136 + 72))(v136);
                  v138 = vabdd_f64(v137, (*(*v134 + 648))(v134));
                  v139 = *(*(*a3 + 168) + 32);
                  v140 = (*(*v139 + 72))(v139);
                  if (v138 < vabdd_f64(v140, (*(*v135 + 648))(v135)))
                  {
                    v141 = *v131;
                    v142 = v130;
                    while (1)
                    {
                      *(v9 + v142 + 8) = *(v9 + v142);
                      if (!v142)
                      {
                        break;
                      }

                      v143 = *(v141 + 8);
                      v144 = *(*(v9 + v142 - 8) + 8);
                      v145 = *(*(*a3 + 168) + 32);
                      v146 = (*(*v145 + 72))(v145);
                      LODWORD(v143) = vabdd_f64(v146, (*(*v143 + 648))(v143));
                      v147 = *(*(*a3 + 168) + 32);
                      v148 = (*(*v147 + 72))(v147);
                      v142 -= 8;
                      if (v143 >= vabdd_f64(v148, (*(*v144 + 648))(v144)))
                      {
                        v149 = (v9 + v142 + 8);
                        goto LABEL_82;
                      }
                    }

                    v149 = v9;
LABEL_82:
                    *v149 = v141;
                  }

                  v127 = v131 + 1;
                  v130 += 8;
                }

                while (v131 + 1 != a2);
              }
            }

            else if (!v129)
            {
              do
              {
                v217 = *v10;
                v218 = v10[1];
                v10 = v127;
                v219 = *(v218 + 8);
                v220 = *(v217 + 8);
                v221 = *(*(*a3 + 168) + 32);
                v222 = (*(*v221 + 72))(v221);
                v223 = vabdd_f64(v222, (*(*v219 + 648))(v219));
                v224 = *(*(*a3 + 168) + 32);
                v225 = (*(*v224 + 72))(v224);
                if (v223 < vabdd_f64(v225, (*(*v220 + 648))(v220)))
                {
                  v226 = *v10;
                  v227 = v10;
                  do
                  {
                    v228 = v227;
                    v229 = *--v227;
                    *v228 = v229;
                    v230 = *(v226 + 8);
                    v231 = *(*(v228 - 2) + 8);
                    v232 = *(*(*a3 + 168) + 32);
                    v233 = (*(*v232 + 72))(v232);
                    LODWORD(v230) = vabdd_f64(v233, (*(*v230 + 648))(v230));
                    v234 = *(*(*a3 + 168) + 32);
                    v235 = (*(*v234 + 72))(v234);
                  }

                  while (v230 < vabdd_f64(v235, (*(*v231 + 648))(v231)));
                  *v227 = v226;
                }

                v127 = v10 + 1;
              }

              while (v10 + 1 != a2);
            }

            return;
          }

          v246 = v9;
          if (!a4)
          {
            if (v9 != a2)
            {
              v150 = (v11 - 2) >> 1;
              v241 = v150;
              do
              {
                v151 = v150;
                if (v241 >= v150)
                {
                  v152 = (2 * v150) | 1;
                  v153 = &v10[v152];
                  if (2 * v150 + 2 < v11)
                  {
                    v154 = *(*v153 + 8);
                    v155 = *(v153[1] + 8);
                    v156 = *(*(*a3 + 168) + 32);
                    v157 = (*(*v156 + 72))(v156);
                    LODWORD(v154) = vabdd_f64(v157, (*(*v154 + 648))(v154));
                    v158 = *(*(*a3 + 168) + 32);
                    v159 = (*(*v158 + 72))(v158);
                    if (v154 < vabdd_f64(v159, (*(*v155 + 648))(v155)))
                    {
                      ++v153;
                      v152 = 2 * v151 + 2;
                    }
                  }

                  v160 = &v10[v151];
                  v161 = *(*v153 + 8);
                  v162 = *(*v160 + 8);
                  v163 = *(*(*a3 + 168) + 32);
                  v164 = (*(*v163 + 72))(v163);
                  v165 = vabdd_f64(v164, (*(*v161 + 648))(v161));
                  v166 = *(*(*a3 + 168) + 32);
                  v167 = (*(*v166 + 72))(v166);
                  if (v165 >= vabdd_f64(v167, (*(*v162 + 648))(v162)))
                  {
                    v239 = v151;
                    v168 = *v160;
                    do
                    {
                      v169 = v153;
                      *v160 = *v153;
                      if (v241 < v152)
                      {
                        break;
                      }

                      v170 = (2 * v152) | 1;
                      v153 = &v246[v170];
                      if (2 * v152 + 2 < v11)
                      {
                        v171 = *(*v153 + 8);
                        v172 = *(v153[1] + 8);
                        v173 = *(*(*a3 + 168) + 32);
                        v174 = (*(*v173 + 72))(v173);
                        LODWORD(v171) = vabdd_f64(v174, (*(*v171 + 648))(v171));
                        v175 = *(*(*a3 + 168) + 32);
                        v176 = (*(*v175 + 72))(v175);
                        if (v171 < vabdd_f64(v176, (*(*v172 + 648))(v172)))
                        {
                          ++v153;
                          v170 = 2 * v152 + 2;
                        }
                      }

                      v177 = *(*v153 + 8);
                      v178 = *(v168 + 8);
                      v179 = *(*(*a3 + 168) + 32);
                      v180 = (*(*v179 + 72))(v179);
                      LODWORD(v177) = vabdd_f64(v180, (*(*v177 + 648))(v177));
                      v181 = *(*(*a3 + 168) + 32);
                      v182 = (*(*v181 + 72))(v181);
                      v160 = v169;
                      v152 = v170;
                    }

                    while (v177 >= vabdd_f64(v182, (*(*v178 + 648))(v178)));
                    *v169 = v168;
                    v10 = v246;
                    v151 = v239;
                  }
                }

                v150 = v151 - 1;
              }

              while (v151);
              v183 = v243;
              do
              {
                v184 = 0;
                v242 = *v10;
                v244 = v183;
                v185 = v10;
                do
                {
                  v186 = &v185[v184];
                  v187 = v186 + 1;
                  v188 = (2 * v184) | 1;
                  v189 = 2 * v184 + 2;
                  if (v189 >= v11)
                  {
                    v184 = (2 * v184) | 1;
                  }

                  else
                  {
                    v191 = v186[2];
                    v190 = v186 + 2;
                    v192 = *(*(v190 - 1) + 8);
                    v193 = *(v191 + 8);
                    v194 = *(*(*a3 + 168) + 32);
                    v195 = (*(*v194 + 72))(v194);
                    LODWORD(v192) = vabdd_f64(v195, (*(*v192 + 648))(v192));
                    v196 = *(*(*a3 + 168) + 32);
                    v197 = (*(*v196 + 72))(v196);
                    if (v192 >= vabdd_f64(v197, (*(*v193 + 648))(v193)))
                    {
                      v184 = v188;
                    }

                    else
                    {
                      v187 = v190;
                      v184 = v189;
                    }
                  }

                  *v185 = *v187;
                  v185 = v187;
                }

                while (v184 <= ((v11 - 2) >> 1));
                v183 = v244 - 1;
                if (v187 == v244 - 1)
                {
                  *v187 = v242;
                  v10 = v246;
                }

                else
                {
                  *v187 = *v183;
                  *v183 = v242;
                  v10 = v246;
                  v198 = (v187 - v246 + 8) >> 3;
                  v199 = v198 < 2;
                  v200 = v198 - 2;
                  if (!v199)
                  {
                    v201 = v200 >> 1;
                    v202 = &v246[v200 >> 1];
                    v203 = *(*v202 + 8);
                    v204 = *(*v187 + 8);
                    v205 = *(*(*a3 + 168) + 32);
                    v206 = (*(*v205 + 72))(v205);
                    LODWORD(v203) = vabdd_f64(v206, (*(*v203 + 648))(v203));
                    v207 = *(*(*a3 + 168) + 32);
                    v208 = (*(*v207 + 72))(v207);
                    if (v203 < vabdd_f64(v208, (*(*v204 + 648))(v204)))
                    {
                      v245 = v244 - 1;
                      v209 = *v187;
                      do
                      {
                        v210 = v202;
                        *v187 = *v202;
                        if (!v201)
                        {
                          break;
                        }

                        v201 = (v201 - 1) >> 1;
                        v202 = &v246[v201];
                        v211 = *(*v202 + 8);
                        v212 = *(v209 + 8);
                        v213 = *(*(*a3 + 168) + 32);
                        v214 = (*(*v213 + 72))(v213);
                        LODWORD(v211) = vabdd_f64(v214, (*(*v211 + 648))(v211));
                        v215 = *(*(*a3 + 168) + 32);
                        v216 = (*(*v215 + 72))(v215);
                        v187 = v210;
                      }

                      while (v211 < vabdd_f64(v216, (*(*v212 + 648))(v212)));
                      *v210 = v209;
                      v183 = v245;
                    }
                  }
                }

                v199 = v11-- <= 2;
              }

              while (!v199);
            }

            return;
          }

          v12 = &v9[v11 >> 1];
          if (v11 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(&v10[v11 >> 1], v10, v240, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v10, &v10[v11 >> 1], v240, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v10 + 1, v12 - 1, v237, a3);
            v13 = &v10[(v11 >> 1) + 1];
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v246 + 2, v13, v236, a3);
            v10 = v246;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v12 - 1, v12, v13, a3);
            v14 = *v246;
            *v246 = *v12;
            *v12 = v14;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v15 = *(*(v10 - 1) + 8);
          v16 = *(*v10 + 8);
          v17 = *(*(*a3 + 168) + 32);
          v18 = (*(*v17 + 72))(v17);
          v19 = vabdd_f64(v18, (*(*v15 + 648))(v15));
          v20 = *(*(*a3 + 168) + 32);
          v21 = (*(*v20 + 72))(v20);
          if (v19 < vabdd_f64(v21, (*(*v16 + 648))(v16)))
          {
            break;
          }

          v9 = v10;
          v68 = *v10;
          v69 = *(v68 + 8);
          v70 = *(*v240 + 8);
          v71 = *(*(*a3 + 168) + 32);
          v72 = (*(*v71 + 72))(v71);
          v73 = vabdd_f64(v72, (*(*v69 + 648))(v69));
          v74 = *(*(*a3 + 168) + 32);
          v75 = (*(*v74 + 72))(v74);
          if (v73 >= vabdd_f64(v75, (*(*v70 + 648))(v70)))
          {
            v84 = v9 + 1;
            do
            {
              v9 = v84;
              if (v84 >= v243)
              {
                break;
              }

              ++v84;
              v85 = *(v68 + 8);
              v86 = *(*v9 + 8);
              v87 = *(*(*a3 + 168) + 32);
              v88 = (*(*v87 + 72))(v87);
              v89 = vabdd_f64(v88, (*(*v85 + 648))(v85));
              v90 = *(*(*a3 + 168) + 32);
              v91 = (*(*v90 + 72))(v90);
            }

            while (v89 >= vabdd_f64(v91, (*(*v86 + 648))(v86)));
          }

          else
          {
            do
            {
              v76 = v9[1];
              ++v9;
              v77 = *(v68 + 8);
              v78 = *(v76 + 8);
              v79 = *(*(*a3 + 168) + 32);
              v80 = (*(*v79 + 72))(v79);
              v81 = vabdd_f64(v80, (*(*v77 + 648))(v77));
              v82 = *(*(*a3 + 168) + 32);
              v83 = (*(*v82 + 72))(v82);
            }

            while (v81 >= vabdd_f64(v83, (*(*v78 + 648))(v78)));
          }

          v92 = v243;
          if (v9 < v243)
          {
            v92 = v243;
            do
            {
              v93 = *--v92;
              v94 = *(v68 + 8);
              v95 = *(v93 + 8);
              v96 = *(*(*a3 + 168) + 32);
              v97 = (*(*v96 + 72))(v96);
              v98 = vabdd_f64(v97, (*(*v94 + 648))(v94));
              v99 = *(*(*a3 + 168) + 32);
              v100 = (*(*v99 + 72))(v99);
            }

            while (v98 < vabdd_f64(v100, (*(*v95 + 648))(v95)));
          }

          while (v9 < v92)
          {
            v101 = *v9;
            *v9 = *v92;
            *v92 = v101;
            do
            {
              v102 = v9[1];
              ++v9;
              v103 = *(v68 + 8);
              v104 = *(v102 + 8);
              v105 = *(*(*a3 + 168) + 32);
              v106 = (*(*v105 + 72))(v105);
              v107 = vabdd_f64(v106, (*(*v103 + 648))(v103));
              v108 = *(*(*a3 + 168) + 32);
              v109 = (*(*v108 + 72))(v108);
            }

            while (v107 >= vabdd_f64(v109, (*(*v104 + 648))(v104)));
            do
            {
              v110 = *--v92;
              v111 = *(v68 + 8);
              v112 = *(v110 + 8);
              v113 = *(*(*a3 + 168) + 32);
              v114 = (*(*v113 + 72))(v113);
              v115 = vabdd_f64(v114, (*(*v111 + 648))(v111));
              v116 = *(*(*a3 + 168) + 32);
              v117 = (*(*v116 + 72))(v116);
            }

            while (v115 < vabdd_f64(v117, (*(*v112 + 648))(v112)));
          }

          v118 = v9 - 1;
          a2 = v243;
          if (v9 - 1 != v246)
          {
            *v246 = *v118;
          }

          a5 = 0;
          *v118 = v68;
        }

        v22 = *v10;
        v23 = v10;
        do
        {
          v24 = v23;
          v25 = v23[1];
          ++v23;
          v26 = *(v25 + 8);
          v27 = *(v22 + 8);
          v28 = *(*(*a3 + 168) + 32);
          v29 = (*(*v28 + 72))(v28);
          v30 = vabdd_f64(v29, (*(*v26 + 648))(v26));
          v31 = *(*(*a3 + 168) + 32);
          v32 = (*(*v31 + 72))(v31);
        }

        while (v30 < vabdd_f64(v32, (*(*v27 + 648))(v27)));
        if (v24 == v10)
        {
          a2 = v243;
          do
          {
            if (v23 >= a2)
            {
              break;
            }

            v41 = *--a2;
            v42 = *(v41 + 8);
            v43 = *(v22 + 8);
            v44 = *(*(*a3 + 168) + 32);
            v45 = (*(*v44 + 72))(v44);
            v46 = vabdd_f64(v45, (*(*v42 + 648))(v42));
            v47 = *(*(*a3 + 168) + 32);
            v48 = (*(*v47 + 72))(v47);
          }

          while (v46 >= vabdd_f64(v48, (*(*v43 + 648))(v43)));
        }

        else
        {
          do
          {
            v33 = *--a2;
            v34 = *(v33 + 8);
            v35 = *(v22 + 8);
            v36 = *(*(*a3 + 168) + 32);
            v37 = (*(*v36 + 72))(v36);
            v38 = vabdd_f64(v37, (*(*v34 + 648))(v34));
            v39 = *(*(*a3 + 168) + 32);
            v40 = (*(*v39 + 72))(v39);
          }

          while (v38 >= vabdd_f64(v40, (*(*v35 + 648))(v35)));
        }

        if (v23 < a2)
        {
          v49 = v23;
          v50 = a2;
          do
          {
            v51 = *v49;
            *v49 = *v50;
            *v50 = v51;
            do
            {
              v24 = v49;
              v52 = v49[1];
              ++v49;
              v53 = *(v52 + 8);
              v54 = *(v22 + 8);
              v55 = *(*(*a3 + 168) + 32);
              v56 = (*(*v55 + 72))(v55);
              LODWORD(v53) = vabdd_f64(v56, (*(*v53 + 648))(v53));
              v57 = *(*(*a3 + 168) + 32);
              v58 = (*(*v57 + 72))(v57);
            }

            while (v53 < vabdd_f64(v58, (*(*v54 + 648))(v54)));
            do
            {
              v59 = *--v50;
              v60 = *(v59 + 8);
              v61 = *(v22 + 8);
              v62 = *(*(*a3 + 168) + 32);
              v63 = (*(*v62 + 72))(v62);
              LODWORD(v60) = vabdd_f64(v63, (*(*v60 + 648))(v60));
              v64 = *(*(*a3 + 168) + 32);
              v65 = (*(*v64 + 72))(v64);
            }

            while (v60 >= vabdd_f64(v65, (*(*v61 + 648))(v61)));
          }

          while (v49 < v50);
        }

        a1 = v246;
        if (v24 != v246)
        {
          *v246 = *v24;
        }

        *v24 = v22;
        v66 = v23 >= a2;
        a2 = v243;
        if (v66)
        {
          break;
        }

LABEL_36:
        std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,false>(v246, v24, a3, a4, a5 & 1);
        a5 = 0;
        v9 = v24 + 1;
      }

      v67 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **>(v246, v24, a3);
      v9 = v24 + 1;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **>(v24 + 1, v243, a3))
      {
        break;
      }

      if (!v67)
      {
        goto LABEL_36;
      }
    }

    a2 = v24;
    if (!v67)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1, a2, a3);
  if (*a4 != *a3)
  {
    if ((*(**a4 + 80))(*a4))
    {
      v10 = *a3;
      *a3 = *a4;
      *a4 = v10;
      if (*a3 != *a2)
      {
        if ((*(**a3 + 80))(*a3))
        {
          v11 = *a2;
          *a2 = *a3;
          *a3 = v11;
          if (*a2 != *a1)
          {
            if ((*(**a2 + 80))(*a2))
            {
              v12 = *a1;
              *a1 = *a2;
              *a2 = v12;
            }
          }
        }
      }
    }
  }

  result = *a5;
  if (*a5 != *a4)
  {
    result = (*(*result + 80))(result);
    if (result)
    {
      v14 = *a4;
      *a4 = *a5;
      *a5 = v14;
      result = *a4;
      if (*a4 != *a3)
      {
        result = (*(*result + 80))(result);
        if (result)
        {
          v15 = *a3;
          *a3 = *a4;
          *a4 = v15;
          result = *a3;
          if (*a3 != *a2)
          {
            result = (*(*result + 80))(result);
            if (result)
            {
              v16 = *a2;
              *a2 = *a3;
              *a3 = v16;
              result = *a2;
              if (*a2 != *a1)
              {
                result = (*(*result + 80))(result);
                if (result)
                {
                  v17 = *a1;
                  *a1 = *a2;
                  *a2 = v17;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t md::LineTextWithAuxLabelPart::prepareForDisplay(md::LineTextWithAuxLabelPart *this, md::LabelManager *a2)
{
  v4 = *(this + 659);
  *(this + 691) = v4;
  if (v4 == 1)
  {
    (*(***(this + 72) + 104))(**(this + 72), a2);
  }

  (*(**(*(this + 72) + 8) + 104))(*(*(this + 72) + 8), a2);
  (*(**(this + 80) + 24))(*(this + 80), this + 672);
  (*(**(*(this + 72) + 8) + 408))();
  v5 = *(this + 72);
  if (v4)
  {
    v6 = *v5;
    v7 = *(this + 657);
    *(this + 689) = v7;
    (*(*v6 + 400))(v6, 1, v7);
    v6[1349] = *(this + 712);
    (*(**(*(this + 72) + 8) + 368))();
    v8 = *(**(*(this + 72) + 8) + 400);

    return v8();
  }

  else
  {
    v10 = *(**(v5 + 8) + 368);

    return v10();
  }
}

uint64_t md::MultipleShieldLabelPart::prepareForDisplay(uint64_t this, md::LabelManager *a2)
{
  v2 = this;
  v3 = *(this + 576);
  for (i = *(this + 584); v3 != i; this = (*(*v6 + 104))(v6, a2))
  {
    v6 = *v3++;
  }

  if ((*(v2 + 662) & 1) == 0)
  {
    v7 = *(**(v2 + 632) + 24);

    return v7();
  }

  return this;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NeedsFunctionConstantsUpdate>(ecs2::Entity,md::ls::NeedsFunctionConstantsUpdate &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A175E0;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NeedsFunctionConstantsUpdate>(ecs2::Entity,md::ls::NeedsFunctionConstantsUpdate &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata) = *(a2 + 4096);
}

float md::TrafficIncidentIconLabelPart::updateWithStyle(md::TrafficIncidentIconLabelPart *this, md::LabelManager *a2)
{
  md::ImageLabelPart::updateWithStyle(this, a2);
  v3 = *(this + 2);
  atomic_load((v3 + 1328));
  v4 = (*(**(v3 + 8) + 568))();
  v5 = *v4;
  v6 = *(*v4 + 296);
  if (!v6)
  {
    v7 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v4, 0);
    v6 = *v7;
    *(v5 + 296) = *v7;
  }

  result = *(v6 + 24);
  *(this + 143) = result;
  return result;
}

unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, uint64_t a3)
{
  *&v4[12] = *(a3 + 24);
  *&v4[8] = *(a3 + 19);
  *v4 = *(a3 + 11);
  return md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(a1, a2, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), BYTE1(*(a3 + 6)), BYTE2(*(a3 + 6)), HIBYTE(*(a3 + 6)), v4[0], v4[1], v4[2], v4[3], *&v4[4], *(a3 + 32), *(a3 + 10), *(a3 + 33), v5[0], v5[1], v5[2]);
}

unint64_t md::VKMRenderResourcesStore::createPipelineStateItem(uint64_t a1, uint64_t *a2, unsigned __int8 a3, char a4, uint8x8_t a5)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        md::DaVinciPipelineStateManager<ggl::DaVinci::LinearDepthPipelineState,std::shared_ptr<ggl::LinearDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v54, (*(a1 + 14192) + 952), a2, a5);
        goto LABEL_21;
      }

      if (a3 == 7)
      {
        md::DaVinciPipelineStateManager<ggl::DaVinci::PackedLinearDepthPipelineState,std::shared_ptr<ggl::PackedLinearDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v54, (*(a1 + 14192) + 1088), a2, a5);
        goto LABEL_21;
      }
    }

    else
    {
      if (a3 == 4)
      {
        md::DaVinciPipelineStateManager<ggl::DaVinci::RibbonPipelineState,std::shared_ptr<ggl::DaVinciRibbonShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v54, *(a1 + 14192) + 680, a2);
        goto LABEL_21;
      }

      if (a3 == 5)
      {
        md::DaVinciPipelineStateManager<ggl::DaVinci::DecalPipelineState,std::shared_ptr<ggl::DaVinciDecalShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v54, *(a1 + 14192) + 816, a2);
        goto LABEL_21;
      }
    }

LABEL_23:
    v8 = 0;
    v52 = 0uLL;
    goto LABEL_24;
  }

  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      md::DaVinciPipelineStateManager<ggl::DaVinci::GroundDepthPipelineState,std::shared_ptr<ggl::DaVinciGroundDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v54, *(a1 + 14192) + 272, a2);
      goto LABEL_21;
    }

    if (a3 == 3)
    {
      md::DaVinciPipelineStateManager<ggl::DaVinci::GroundShadowMapPipelineState,std::shared_ptr<ggl::DaVinciGroundShadowMapShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v54, *(a1 + 14192) + 544, a2);
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    md::DaVinciPipelineStateManager<ggl::DaVinci::GroundNonCompressedPipelineState,std::shared_ptr<ggl::DaVinciGroundNotCompressedShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v54, *(a1 + 14192) + 136, a2);
  }

  else
  {
    v7 = *(a1 + 14192);
    if ((a4 & 1) == 0)
    {
      v7 += 408;
    }

    md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v54, v7, a2);
  }

LABEL_21:
  v52 = v54;
  v8 = v54.i64[1];
  if (v54.i64[1])
  {
    v9 = 0;
    atomic_fetch_add_explicit((v54.i64[1] + 8), 1uLL, memory_order_relaxed);
    goto LABEL_25;
  }

LABEL_24:
  v9 = 1;
LABEL_25:
  v10 = *(a1 + 736);
  v11 = *(a1 + 752);
  if (*(a1 + 728) == v10)
  {
    v12 = ((*(a1 + 760) - v11) >> 3) | 0x100000000;
    v54.i64[0] = v12;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 752, &v54);
  }

  else
  {
    v12 = *(v11 + 8 * *(v10 - 8));
    *(a1 + 736) = v10 - 8;
  }

  v53 = v12;
  v54 = vdupq_n_s64(1uLL);
  LOWORD(v55) = 1;
  v13 = v12 >> 6;
  v14 = *(a1 + 584);
  v15 = *(a1 + 576);
  if (v13 >= (v14 - v15) >> 3)
  {
    v16 = v13 + 1;
    v17 = v13 + 1 - ((v14 - v15) >> 3);
    v18 = *(a1 + 592);
    if (v17 > (v18 - v14) >> 3)
    {
      v19 = v18 - v15;
      if (v19 >> 2 > v16)
      {
        v16 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v16;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v20);
    }

    bzero(*(a1 + 584), 8 * v17);
    *(a1 + 584) = v14 + 8 * v17;
    v15 = *(a1 + 576);
  }

  v21 = *(v15 + 8 * v13);
  if (!v21)
  {
    operator new();
  }

  v22 = (v21 + 16 * (v12 & 0x3F));
  if (*v22 == -1 && v22[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 600, &v53);
    v24 = ((*(a1 + 608) - *(a1 + 600)) >> 3) - 1;
    *v22 = HIDWORD(v12);
    v22[1] = v24;
    v56 = &v52;
    v25 = v24 & 0x3F;
    v26 = *(*(a1 + 624) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 624), v24)) + 24 * v25;
    *v26 = v54;
    *(v26 + 16) = v55;
    v27 = v56;
    v28 = v24 >> 6;
    v29 = *(a1 + 680);
    v30 = *(a1 + 672);
    if (v24 >> 6 >= (v29 - v30) >> 3)
    {
      v49 = v56;
      v50 = v24 >> 6;
      v51 = v29 - v30;
      v31 = v28 + 1;
      v32 = v28 + 1 - ((v29 - v30) >> 3);
      v33 = *(a1 + 688);
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

        goto LABEL_78;
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
      *(a1 + 680) = v29 + 8 * v32;
      v41 = *(a1 + 704);
      v42 = *(a1 + 696);
      v43 = (v41 - v42) >> 4;
      if (v43 <= v28)
      {
        v44 = v31 - v43;
        v45 = *(a1 + 712);
        if (v44 > (v45 - v41) >> 4)
        {
          v46 = v45 - v42;
          v47 = v46 >> 3;
          if (v46 >> 3 <= v31)
          {
            v47 = v31;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF0)
          {
            v47 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v47 >> 60))
          {
            operator new();
          }

LABEL_78:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(a1 + 704), 16 * v44);
        *(a1 + 704) = v41 + 16 * v44;
        v28 = v50;
      }

      else if (v31 < v43)
      {
        *(a1 + 704) = v42 + 16 * v31;
      }

      v30 = *(a1 + 672);
      v27 = v49;
      if (v51 < *(a1 + 680) - v30)
      {
        operator new();
      }
    }

    *(*(v30 + 8 * v28) + 16 * v25) = *v27;
    v27->i64[0] = 0;
    v27->i64[1] = 0;
  }

  if (v52.i64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52.i64[1]);
  }

  if ((v9 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  return v12;
}

void sub_1B2B989C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<md::ita::CreatePipelineStates::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*>)::$_0,std::allocator<md::ita::CreatePipelineStates::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*)>::operator()(uint64_t a1, uint8x8_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5, uint64_t a6, unint64_t **a7)
{
  v8 = *a7;
  v9 = *(a1 + 16);
  PipelineStateItem = md::VKMRenderResourcesStore::createPipelineStateItem(**(a1 + 8), a4, *a5, 1, a2);
  v11 = PipelineStateItem;
  if (v8)
  {
    PipelineStateItem = md::VKMRenderResourcesStore::_disconnect<geo::handle<md::PipelineStateItem>>(**(a1 + 8), *v8);
  }

  v12 = *v9;
  v13 = ecs2::ExecutionTaskContext::currentEntity(PipelineStateItem);

  return ecs2::addComponent<md::ls::PipelineState>(v12, v13, v11);
}

unint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollidableItem **,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem *,20ul> &)::$_0 &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 52);
  v4 = a1;
  do
  {
    v5 = v4;
    v7 = v4[1];
    ++v4;
    v6 = v7;
    v8 = *(v7 + 52);
    v9 = v7 < v2;
    v10 = v8 == v3;
    v11 = v8 < v3;
    if (v10)
    {
      v11 = v9;
    }
  }

  while (v11);
  if (v5 == a1)
  {
    do
    {
      if (v4 >= a2)
      {
        break;
      }

      v16 = *--a2;
      v17 = *(v16 + 52);
      v18 = v16 < v2;
      v10 = v17 == v3;
      v19 = v17 < v3;
      if (!v10)
      {
        v18 = v19;
      }
    }

    while (!v18);
  }

  else
  {
    do
    {
      v12 = *--a2;
      v13 = *(v12 + 52);
      v14 = v12 < v2;
      v10 = v13 == v3;
      v15 = v13 < v3;
      if (!v10)
      {
        v14 = v15;
      }
    }

    while (!v14);
  }

  if (v4 < a2)
  {
    v20 = *a2;
    v21 = v4;
    v22 = a2;
    do
    {
      *v21 = v20;
      *v22 = v6;
      do
      {
        v5 = v21;
        v23 = v21[1];
        ++v21;
        v6 = v23;
        v24 = *(v23 + 52);
        v25 = v23 < v2;
        v10 = v24 == v3;
        v26 = v24 < v3;
        if (v10)
        {
          v26 = v25;
        }
      }

      while (v26);
      do
      {
        v27 = *--v22;
        v20 = v27;
        v28 = *(v27 + 52);
        v29 = v27 < v2;
        v10 = v28 == v3;
        v30 = v28 < v3;
        if (v10)
        {
          v30 = v29;
        }
      }

      while (!v30);
    }

    while (v21 < v22);
  }

  if (v5 != a1)
  {
    *a1 = *v5;
  }

  *v5 = v2;
  return v5;
}

unint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(*a2 + 52);
  v6 = *(*result + 52);
  v7 = v5 < v6;
  if (v5 == v6)
  {
    v7 = *a2 < *result;
  }

  v8 = *a3;
  v9 = *(*a3 + 52);
  v10 = v9 == v5;
  v11 = v9 < v5;
  if (v10)
  {
    v11 = *a3 < v3;
  }

  if (v7)
  {
    if (v11)
    {
      *result = v8;
LABEL_17:
      *a3 = v4;
      return result;
    }

    *result = v3;
    *a2 = v4;
    v16 = *(*a3 + 52);
    v10 = v16 == v6;
    v17 = v16 < v6;
    if (v10)
    {
      v17 = *a3 < v4;
    }

    if (v17)
    {
      *a2 = *a3;
      goto LABEL_17;
    }
  }

  else if (v11)
  {
    *a2 = v8;
    *a3 = v3;
    v12 = *result;
    v13 = *(*a2 + 52);
    v14 = *(*result + 52);
    v10 = v13 == v14;
    v15 = v13 < v14;
    if (v10)
    {
      v15 = *a2 < *result;
    }

    if (v15)
    {
      *result = *a2;
      *a2 = v12;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(unint64_t *a1, unint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v27 = *a1;
        v28 = a1[1];
        v29 = *(v28 + 52);
        v30 = *(*a1 + 52);
        v31 = v29 < v30;
        if (v29 == v30)
        {
          v31 = v28 < *a1;
        }

        v32 = *(a2 - 1);
        v33 = *(v32 + 52);
        v9 = v33 == v29;
        v34 = v33 < v29;
        if (v9)
        {
          v34 = v32 < v28;
        }

        if (!v31)
        {
          if (v34)
          {
            a1[1] = v32;
            *(a2 - 1) = v28;
            v49 = *a1;
            v48 = a1[1];
            v50 = *(v48 + 52);
            v51 = *(*a1 + 52);
            v9 = v50 == v51;
            v52 = v50 < v51;
            if (v9)
            {
              v52 = v48 < *a1;
            }

            if (v52)
            {
              *a1 = v48;
              a1[1] = v49;
            }
          }

          return 1;
        }

        if (v34)
        {
          *a1 = v32;
        }

        else
        {
          *a1 = v28;
          a1[1] = v27;
          v68 = *(a2 - 1);
          v69 = *(v68 + 52);
          v9 = v69 == v30;
          v70 = v69 < v30;
          if (v9)
          {
            v70 = v68 < v27;
          }

          if (!v70)
          {
            return 1;
          }

          a1[1] = v68;
        }

        *(a2 - 1) = v27;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        break;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v11 = *(a2 - 1);
        v12 = a1[3];
        v13 = *(v11 + 52);
        v14 = *(v12 + 52);
        v9 = v13 == v14;
        v15 = v13 < v14;
        if (v9)
        {
          v15 = v11 < v12;
        }

        if (v15)
        {
          a1[3] = v11;
          *(a2 - 1) = v12;
          v17 = a1[2];
          v16 = a1[3];
          v18 = *(v16 + 52);
          v19 = *(v17 + 52);
          v9 = v18 == v19;
          v20 = v18 < v19;
          if (v9)
          {
            v20 = v16 < v17;
          }

          if (v20)
          {
            a1[2] = v16;
            a1[3] = v17;
            v21 = a1[1];
            v22 = *(v21 + 52);
            v9 = v18 == v22;
            v23 = v18 < v22;
            if (v9)
            {
              v23 = v16 < v21;
            }

            if (v23)
            {
              a1[1] = v16;
              a1[2] = v21;
              v24 = *a1;
              v25 = *(*a1 + 52);
              v9 = v18 == v25;
              v26 = v18 < v25;
              if (v9)
              {
                v26 = v16 < *a1;
              }

              if (v26)
              {
                *a1 = v16;
                a1[1] = v24;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = *(v5 + 52);
    v8 = *(*a1 + 52);
    v9 = v7 == v8;
    v10 = v7 < v8;
    if (v9)
    {
      v10 = v5 < *a1;
    }

    if (v10)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_31:
  v36 = a1 + 2;
  v35 = a1[2];
  v37 = a1[1];
  v38 = *a1;
  v39 = *(v37 + 52);
  v40 = *(*a1 + 52);
  v41 = v39 < v40;
  if (v39 == v40)
  {
    v41 = v37 < *a1;
  }

  v42 = *(v35 + 52);
  v43 = v35 < v37;
  v9 = v42 == v39;
  v44 = v42 < v39;
  if (!v9)
  {
    v43 = v44;
  }

  if (v41)
  {
    v45 = a1;
    v46 = a1 + 2;
    if (!v43)
    {
      *a1 = v37;
      a1[1] = v38;
      v9 = v42 == v40;
      v47 = v42 < v40;
      if (v9)
      {
        v47 = v35 < v38;
      }

      v45 = a1 + 1;
      v46 = a1 + 2;
      if (!v47)
      {
        goto LABEL_52;
      }
    }

LABEL_51:
    *v45 = v35;
    *v46 = v38;
    goto LABEL_52;
  }

  if (v43)
  {
    a1[1] = v35;
    *v36 = v37;
    v9 = v42 == v40;
    v53 = v42 < v40;
    if (v9)
    {
      v53 = v35 < v38;
    }

    v45 = a1;
    v46 = a1 + 1;
    if (v53)
    {
      goto LABEL_51;
    }
  }

LABEL_52:
  v54 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v55 = 0;
  for (i = 24; ; i += 8)
  {
    v57 = *v54;
    v58 = *v36;
    v59 = *(*v54 + 52);
    v60 = *(v58 + 52);
    v9 = v59 == v60;
    v61 = v59 < v60;
    if (v9)
    {
      v61 = *v54 < v58;
    }

    if (v61)
    {
      v62 = i;
      while (1)
      {
        *(a1 + v62) = v58;
        v63 = v62 - 8;
        if (v62 == 8)
        {
          break;
        }

        v58 = *(a1 + v62 - 16);
        v64 = *(v58 + 52);
        v65 = v57 < v58;
        v9 = v59 == v64;
        v66 = v59 < v64;
        if (!v9)
        {
          v65 = v66;
        }

        v62 = v63;
        if (!v65)
        {
          v67 = (a1 + v63);
          goto LABEL_64;
        }
      }

      v67 = a1;
LABEL_64:
      *v67 = v57;
      if (++v55 == 8)
      {
        break;
      }
    }

    v36 = v54++;
    if (v54 == a2)
    {
      return 1;
    }
  }

  return v54 + 1 == a2;
}

unint64_t *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    while (result + 1 != a2)
    {
      v3 = *result;
      v2 = result[1];
      ++result;
      v4 = *(v2 + 52);
      v5 = *(v3 + 52);
      v6 = v4 == v5;
      v7 = v4 < v5;
      if (v6)
      {
        v7 = v2 < v3;
      }

      if (v7)
      {
        v8 = result;
        do
        {
          *v8 = v3;
          v3 = *(v8 - 2);
          v9 = *(v3 + 52);
          v6 = v4 == v9;
          v10 = v4 < v9;
          if (v6)
          {
            v10 = v2 < v3;
          }

          --v8;
        }

        while (v10);
        *v8 = v2;
      }
    }
  }

  return result;
}