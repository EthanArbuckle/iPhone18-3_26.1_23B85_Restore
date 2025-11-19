unint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(*a2 + 20);
  v6 = *(*result + 20);
  if (v5 != v6)
  {
    if (v5 >= v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    v13 = *a3;
    v14 = *(*a3 + 20);
    if (v14 == v5)
    {
      v15 = *(v13 + 32);
      v16 = *(v3 + 32);
      if (v15 == v16)
      {
        if (v13 >= v3)
        {
          goto LABEL_12;
        }
      }

      else if (v15 <= v16)
      {
LABEL_12:
        *result = v3;
        *a2 = v4;
        v17 = *a3;
        v18 = *(*a3 + 20);
        if (v18 == v6)
        {
          v19 = *(v17 + 32);
          v20 = *(v4 + 32);
          if (v19 == v20)
          {
            if (v17 >= v4)
            {
              return result;
            }
          }

          else if (v19 <= v20)
          {
            return result;
          }
        }

        else if (v18 >= v6)
        {
          return result;
        }

        *a2 = v17;
LABEL_35:
        *a3 = v4;
        return result;
      }
    }

    else if (v14 >= v5)
    {
      goto LABEL_12;
    }

    *result = v13;
    goto LABEL_35;
  }

  v7 = *(v3 + 32);
  v8 = *(v4 + 32);
  if (v7 == v8)
  {
    if (v3 >= v4)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (v7 > v8)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = *a3;
  v10 = *(*a3 + 20);
  if (v10 == v5)
  {
    v11 = *(v9 + 32);
    v12 = *(v3 + 32);
    if (v11 == v12)
    {
      if (v9 >= v3)
      {
        return result;
      }
    }

    else if (v11 <= v12)
    {
      return result;
    }
  }

  else if (v10 >= v5)
  {
    return result;
  }

  *a2 = v9;
  *a3 = v3;
  v21 = *a2;
  v22 = *result;
  v23 = *(*a2 + 20);
  v24 = *(*result + 20);
  if (v23 != v24)
  {
    if (v23 >= v24)
    {
      return result;
    }

    goto LABEL_37;
  }

  v25 = *(v21 + 32);
  v26 = *(v22 + 32);
  if (v25 == v26)
  {
    if (v21 < v22)
    {
LABEL_37:
      *result = v21;
      *a2 = v22;
    }
  }

  else if (v25 > v26)
  {
    goto LABEL_37;
  }

  return result;
}

unint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  v13 = *(*a4 + 20);
  v14 = *(*a3 + 20);
  if (v13 == v14)
  {
    v15 = *(v11 + 32);
    v16 = *(v12 + 32);
    if (v15 == v16)
    {
      if (v11 >= v12)
      {
        goto LABEL_21;
      }
    }

    else if (v15 <= v16)
    {
      goto LABEL_21;
    }
  }

  else if (v13 >= v14)
  {
    goto LABEL_21;
  }

  *a3 = v11;
  *a4 = v12;
  v17 = *a3;
  v18 = *a2;
  v19 = *(*a3 + 20);
  v20 = *(*a2 + 20);
  if (v19 == v20)
  {
    v21 = *(v17 + 32);
    v22 = *(v18 + 32);
    if (v21 == v22)
    {
      if (v17 >= v18)
      {
        goto LABEL_21;
      }
    }

    else if (v21 <= v22)
    {
      goto LABEL_21;
    }
  }

  else if (v19 >= v20)
  {
    goto LABEL_21;
  }

  *a2 = v17;
  *a3 = v18;
  v23 = *a2;
  v24 = *a1;
  v25 = *(*a2 + 20);
  v26 = *(*a1 + 20);
  if (v25 != v26)
  {
    if (v25 >= v26)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v27 = *(v23 + 32);
  v28 = *(v24 + 32);
  if (v27 != v28)
  {
    if (v27 <= v28)
    {
      goto LABEL_21;
    }

LABEL_20:
    *a1 = v23;
    *a2 = v24;
    goto LABEL_21;
  }

  if (v23 < v24)
  {
    goto LABEL_20;
  }

LABEL_21:
  v29 = *a5;
  v30 = *a4;
  v31 = *(*a5 + 20);
  v32 = *(*a4 + 20);
  if (v31 == v32)
  {
    v33 = *(v29 + 32);
    v34 = *(v30 + 32);
    if (v33 == v34)
    {
      if (v29 >= v30)
      {
        return result;
      }
    }

    else if (v33 <= v34)
    {
      return result;
    }
  }

  else if (v31 >= v32)
  {
    return result;
  }

  *a4 = v29;
  *a5 = v30;
  v35 = *a4;
  v36 = *a3;
  v37 = *(*a4 + 20);
  v38 = *(*a3 + 20);
  if (v37 == v38)
  {
    v39 = *(v35 + 32);
    v40 = *(v36 + 32);
    if (v39 == v40)
    {
      if (v35 >= v36)
      {
        return result;
      }
    }

    else if (v39 <= v40)
    {
      return result;
    }
  }

  else if (v37 >= v38)
  {
    return result;
  }

  *a3 = v35;
  *a4 = v36;
  v41 = *a3;
  v42 = *a2;
  v43 = *(*a3 + 20);
  v44 = *(*a2 + 20);
  if (v43 == v44)
  {
    v45 = *(v41 + 32);
    v46 = *(v42 + 32);
    if (v45 == v46)
    {
      if (v41 >= v42)
      {
        return result;
      }
    }

    else if (v45 <= v46)
    {
      return result;
    }
  }

  else if (v43 >= v44)
  {
    return result;
  }

  *a2 = v41;
  *a3 = v42;
  v47 = *a2;
  v48 = *a1;
  v49 = *(*a2 + 20);
  v50 = *(*a1 + 20);
  if (v49 == v50)
  {
    v51 = *(v47 + 32);
    v52 = *(v48 + 32);
    if (v51 == v52)
    {
      if (v47 >= v48)
      {
        return result;
      }
    }

    else if (v51 <= v52)
    {
      return result;
    }
  }

  else if (v49 >= v50)
  {
    return result;
  }

  *a1 = v47;
  *a2 = v48;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **>(unint64_t *a1, unint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(a1, a1 + 1, a1 + 2);
        v26 = *(a2 - 1);
        v27 = a1[2];
        v28 = *(v26 + 20);
        v29 = *(v27 + 20);
        if (v28 == v29)
        {
          v30 = *(v26 + 32);
          v31 = *(v27 + 32);
          if (v30 == v31)
          {
            if (v26 >= v27)
            {
              return 1;
            }
          }

          else if (v30 <= v31)
          {
            return 1;
          }
        }

        else if (v28 >= v29)
        {
          return 1;
        }

        a1[2] = v26;
        *(a2 - 1) = v27;
        v34 = a1[1];
        v33 = a1[2];
        v35 = *(v33 + 20);
        v36 = *(v34 + 20);
        if (v35 == v36)
        {
          v37 = *(v33 + 32);
          v38 = *(v34 + 32);
          if (v37 == v38)
          {
            if (v33 >= v34)
            {
              return 1;
            }
          }

          else if (v37 <= v38)
          {
            return 1;
          }
        }

        else if (v35 >= v36)
        {
          return 1;
        }

        a1[1] = v33;
        a1[2] = v34;
        v39 = *a1;
        v40 = *(*a1 + 20);
        if (v35 == v40)
        {
          v41 = *(v33 + 32);
          v42 = *(v39 + 32);
          if (v41 == v42)
          {
            if (v33 >= v39)
            {
              return 1;
            }
          }

          else if (v41 <= v42)
          {
            return 1;
          }
        }

        else if (v35 >= v40)
        {
          return 1;
        }

        *a1 = v33;
        a1[1] = v39;
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }

LABEL_13:
    v11 = (a1 + 2);
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(a1, a1 + 1, a1 + 2);
    v12 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *v12;
      v16 = *v11;
      v17 = *(*v12 + 20);
      v18 = *(*v11 + 20);
      if (v17 == v18)
      {
        v19 = *(v15 + 32);
        v20 = *(v16 + 32);
        if (v19 == v20)
        {
          if (v15 >= v16)
          {
            goto LABEL_33;
          }
        }

        else if (v19 <= v20)
        {
          goto LABEL_33;
        }
      }

      else if (v17 >= v18)
      {
        goto LABEL_33;
      }

      *v12 = v16;
      v21 = v13;
      do
      {
        v22 = *(a1 + v21 + 8);
        v23 = *(v22 + 20);
        if (v17 == v23)
        {
          v24 = *(v15 + 32);
          v25 = *(v22 + 32);
          if (v24 == v25)
          {
            if (v15 >= v22)
            {
              goto LABEL_32;
            }
          }

          else if (v24 <= v25)
          {
            v11 = a1 + v21 + 16;
            goto LABEL_32;
          }
        }

        else if (v17 >= v23)
        {
          goto LABEL_32;
        }

        v11 -= 8;
        *(a1 + v21 + 16) = v22;
        v21 -= 8;
      }

      while (v21 != -16);
      v11 = a1;
LABEL_32:
      *v11 = v15;
      if (++v14 == 8)
      {
        return v12 + 1 == a2;
      }

LABEL_33:
      v11 = v12;
      v13 += 8;
      if (++v12 == a2)
      {
        return 1;
      }
    }
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_13;
  }

  v5 = *(a2 - 1);
  v6 = *a1;
  v7 = *(v5 + 20);
  v8 = *(*a1 + 20);
  if (v7 != v8)
  {
    if (v7 >= v8)
    {
      return 1;
    }

    goto LABEL_45;
  }

  v9 = *(v5 + 32);
  v10 = *(v6 + 32);
  if (v9 != v10)
  {
    if (v9 <= v10)
    {
      return 1;
    }

    goto LABEL_45;
  }

  if (v5 < v6)
  {
LABEL_45:
    *a1 = v5;
    *(a2 - 1) = v6;
  }

  return 1;
}

BOOL md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(unint64_t a1, unint64_t a2)
{
  v4 = (*(*a1 + 56))(a1);
  v5 = *(md::LabelPoint::geocentricPoint(v4) + 1);
  v6 = (*(*a2 + 56))(a2);
  if (v5 == *(md::LabelPoint::geocentricPoint(v6) + 1))
  {
    return a1 < a2;
  }

  v8 = (*(*a1 + 56))(a1);
  v9 = *(md::LabelPoint::geocentricPoint(v8) + 1);
  v10 = (*(*a2 + 56))(a2);
  return v9 < *(md::LabelPoint::geocentricPoint(v10) + 1);
}

{
  v4 = (*(*a1 + 56))(a1);
  v5 = *(md::LabelPoint::mercatorPoint(v4) + 8);
  v6 = (*(*a2 + 56))(a2);
  if (v5 == *(md::LabelPoint::mercatorPoint(v6) + 8))
  {
    return a1 < a2;
  }

  v8 = (*(*a1 + 56))(a1);
  v9 = *(md::LabelPoint::mercatorPoint(v8) + 8);
  v10 = (*(*a2 + 56))(a2);
  return v9 < *(md::LabelPoint::mercatorPoint(v10) + 8);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1);
  v9 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, *a2);
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
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, v10))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1);
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

{
  v8 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1);
  v9 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, *a2);
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
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, v10))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1);
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **>(uint64_t a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 8), *a1);
        v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *(a1 + 8));
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
          if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), v15))
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
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v6 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = *(a1 + 8);
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v7, v9))
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

    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v10, v12))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 8), *a1);
  v17 = (a1 + 16);
  v18 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 16), *(a1 + 8));
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
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v24, v19))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v21, v23))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v25, *v17))
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
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v28, *(v30 + 8)))
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

{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 8), *a1);
        v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *(a1 + 8));
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
          if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), v15))
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
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v6 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = *(a1 + 8);
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v7, v9))
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

    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v10, v12))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 8), *a1);
  v17 = (a1 + 16);
  v18 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 16), *(a1 + 8));
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
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v24, v19))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v21, v23))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v25, *v17))
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
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v28, *(v30 + 8)))
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

BOOL md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(unint64_t a1, unint64_t a2)
{
  v4 = (*(*a1 + 56))(a1);
  v5 = *md::LabelPoint::geocentricPoint(v4);
  v6 = (*(*a2 + 56))(a2);
  if (v5 == *md::LabelPoint::geocentricPoint(v6))
  {
    return a1 < a2;
  }

  v8 = (*(*a1 + 56))(a1);
  v9 = *md::LabelPoint::geocentricPoint(v8);
  v10 = (*(*a2 + 56))(a2);
  return v9 < *md::LabelPoint::geocentricPoint(v10);
}

{
  v4 = (*(*a1 + 56))(a1);
  v5 = *md::LabelPoint::mercatorPoint(v4);
  v6 = (*(*a2 + 56))(a2);
  if (v5 == *md::LabelPoint::mercatorPoint(v6))
  {
    return a1 < a2;
  }

  v8 = (*(*a1 + 56))(a1);
  v9 = *md::LabelPoint::mercatorPoint(v8);
  v10 = (*(*a2 + 56))(a2);
  return v9 < *md::LabelPoint::mercatorPoint(v10);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1);
  v9 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, *a2);
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
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, v10))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1);
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

{
  v8 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1);
  v9 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, *a2);
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
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, v10))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1);
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **>(uint64_t a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 8), *a1);
        v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *(a1 + 8));
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
          if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), v15))
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
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v6 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = *(a1 + 8);
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v7, v9))
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

    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v10, v12))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 8), *a1);
  v17 = (a1 + 16);
  v18 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 16), *(a1 + 8));
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
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v24, v19))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v21, v23))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v25, *v17))
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
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v28, *(v30 + 8)))
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

{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 8), *a1);
        v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *(a1 + 8));
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
          if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), v15))
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
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v6 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = *(a1 + 8);
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v7, v9))
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

    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v10, v12))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 8), *a1);
  v17 = (a1 + 16);
  v18 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 16), *(a1 + 8));
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
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v24, v19))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v21, v23))
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
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v25, *v17))
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
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v28, *(v30 + 8)))
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

uint64_t std::__function::__value_func<BOOL ()(md::LabelLineResolvedPosition const&,double)>::~__value_func[abi:nn200100](uint64_t a1)
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

double metricsForPositionType(int a1, double *a2)
{
  result = 0.0;
  if (a1 > 3)
  {
    if (a1 <= 6)
    {
      if ((a1 - 4) < 2)
      {
        return a2[6];
      }

      if (a1 == 6)
      {
        return a2[4];
      }

      return result;
    }

    if (a1 == 7)
    {
      v3 = a2[3];
      v4 = a2[4];
    }

    else
    {
      if (a1 != 8)
      {
        return result;
      }

      v3 = a2[6];
      v4 = a2[3];
    }

    return v4 + v3;
  }

  switch(a1)
  {
    case 1:
      return a2[3];
    case 2:
      v3 = a2[3];
      v4 = a2[5];
      return v4 + v3;
    case 3:
      return a2[5];
  }

  return result;
}

uint64_t std::function<BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(uint64_t a1, uint64_t a2, double a3)
{
  v7 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return md::LineLabelPlacer::addPositionIfValid(v4, v5, v6);
}

double md::LineLabelPlacer::addPositionIfValid(uint64_t a1, uint64_t a2, md::LabelLineResolvedPosition *this, int a4, int a5, unsigned int a6, double a7)
{
  v7 = this;
  if (!a5)
  {
    goto LABEL_39;
  }

  if (*(*this + 152))
  {
    goto LABEL_3;
  }

  if (a5 > 4)
  {
    if (a5 <= 6)
    {
      if (a5 == 5)
      {
        md::LabelLineResolvedPosition::ensureValidLinePosition(this, a7);
        if (md::LabelLinePosition::travelDirection(v7) >= 2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        md::LabelLineResolvedPosition::ensureValidLinePosition(this, a7);
        if ((md::LabelLinePosition::hasAnnotation(v7) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_3;
    }

    if (a5 == 7)
    {
      md::LabelLineResolvedPosition::ensureValidLinePosition(this, a7);
      if (md::LabelLinePosition::hasAnnotation(v7))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (a5 != 8)
      {
        goto LABEL_39;
      }

      md::LabelLineResolvedPosition::ensureValidLinePosition(this, a7);
      if (md::LabelLinePosition::travelDirection(v7) < 2)
      {
        goto LABEL_3;
      }
    }

LABEL_54:
    md::LabelLineResolvedPosition::ensureValidLinePosition(v7, a7);
    if (md::LabelLinePosition::textIndex(v7) == 255)
    {
      goto LABEL_39;
    }

    goto LABEL_3;
  }

  if (a5 > 2)
  {
    if (a5 == 3)
    {
      md::LabelLineResolvedPosition::ensureValidLinePosition(this, a7);
      if ((md::LabelLinePosition::hasShield(v7) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      md::LabelLineResolvedPosition::ensureValidLinePosition(this, a7);
      if (md::LabelLinePosition::travelDirection(v7) - 1 >= 2)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_3;
  }

  if (a5 == 1)
  {
    goto LABEL_54;
  }

  if (a5 != 2)
  {
    goto LABEL_39;
  }

  md::LabelLineResolvedPosition::ensureValidLinePosition(this, a7);
  if ((md::LabelLinePosition::hasShield(v7) & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_3:
  v14 = *(a2 + 32);
  if (v14 == (a2 + 40))
  {
    goto LABEL_29;
  }

  v34 = a1;
  v15 = 0;
  v16 = 1.79769313e308;
  do
  {
    v17 = v14[5];
    if (v17[9] == a5)
    {
      v18 = (*(*v17 + 80))(v14[5]);
      v19 = v17[45];
      if (v17[45])
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 == 2)
      {
        v20 = 0;
      }

      if (v18)
      {
        v19 = v20;
      }

      if (v19 == a4)
      {
        if (a5 != 1 || (v21 = (*(*v14[5] + 200))(v14[5]), md::LabelLineResolvedPosition::ensureValidLinePosition(v21, v22), LODWORD(v21) = md::LabelLinePosition::textIndex(v21), md::LabelLineResolvedPosition::ensureValidLinePosition(v7, v23), v21 == md::LabelLinePosition::textIndex(v7)))
        {
          v24 = (*(*v14[5] + 56))(v14[5]);
          v25 = *&md::LabelPoint::vectorToPoint((v7 + 104), v24, *(*a2 + 159));
          v26 = 0;
          v35[0] = v25;
          v35[1] = v27;
          v35[2] = v28;
          v29 = 0.0;
          do
          {
            v29 = v29 + *&v35[v26] * *&v35[v26];
            ++v26;
          }

          while (v26 != 3);
          if (v29 < v16)
          {
            v15 = v14[5];
            v16 = v29;
          }
        }
      }
    }

    v30 = v14[1];
    if (v30)
    {
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      do
      {
        v31 = v14[2];
        v32 = *v31 == v14;
        v14 = v31;
      }

      while (!v32);
    }

    v14 = v31;
  }

  while (v31 != (a2 + 40));
  a1 = v34;
  if (!v15 || sqrt(v16) >= a7)
  {
LABEL_29:
    ++*(a2 + 64);
    operator new();
  }

  md::RoadPosition::setValidAtZoom(v15, a6, 1);
  *(v15 + 11) = 1;
  v7 = (*(*v15 + 200))(v15);
LABEL_39:

  *&result = md::LabelLineResolvedPosition::LabelLineResolvedPosition(a1, v7).n128_u64[0];
  return result;
}

void sub_1B306BFA8(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v1 + 32));
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LineLabelPlacer::createPlacements(unsigned char,md::RoadMetricsEntry const*,md::LabelManager *,BOOL,BOOL)::$_0,std::allocator<md::LineLabelPlacer::createPlacements(unsigned char,md::RoadMetricsEntry const*,md::LabelManager *,BOOL,BOOL)::$_0>,BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(uint64_t a1, uint64_t a2, double *a3)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v4 = *a3;
  v5 = md::LabelPoint::mercatorPoint((a2 + 104));
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = *v7;
  v9 = v7[1];
  if (*v7 == v9)
  {
LABEL_6:
    v12 = v7[2];
    if (v9 >= v12)
    {
      v15 = v9 - v8;
      v16 = v15 + 1;
      if ((v15 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v12 - v8;
      if (v17 >> 3 > v16)
      {
        v16 = v17 >> 3;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v18);
      }

      *(16 * v15) = *v6;
      v13 = 16 * v15 + 16;
      v19 = *v7;
      v20 = v7[1];
      v21 = 16 * v15 + *v7 - v20;
      if (*v7 != v20)
      {
        v22 = (16 * v15 + *v7 - v20);
        do
        {
          v23 = *v19++;
          *v22++ = v23;
        }

        while (v19 != v20);
        v19 = *v7;
      }

      *v7 = v21;
      v7[1] = v13;
      v7[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v9 = *v5;
      v13 = &v9[1];
    }

    result = 0;
    v7[1] = v13;
  }

  else
  {
    v10 = *v7;
    while (1)
    {
      v11 = vsubq_f64(*v5, *v10);
      if (vaddvq_f64(vmulq_f64(v11, v11)) < v4)
      {
        return 1;
      }

      if (++v10 == v9)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<md::LineLabelPlacer::createPlacements(unsigned char,md::RoadMetricsEntry const*,md::LabelManager *,BOOL,BOOL)::$_0,std::allocator<md::LineLabelPlacer::createPlacements(unsigned char,md::RoadMetricsEntry const*,md::LabelManager *,BOOL,BOOL)::$_0>,BOOL ()(md::LabelLineResolvedPosition const&,double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2A340;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void ggl::HillshadeFillMask::CompressedMeshPipelineSetup::~CompressedMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *std::__hash_table<md::ComposedRoadEdge const*,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,std::allocator<md::ComposedRoadEdge const*>>::__emplace_unique_key_args<md::ComposedRoadEdge const*,md::ComposedRoadEdge const* const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *std::vector<gm::Range<double>>::__assign_with_size[abi:nn200100]<gm::Range<double>*,gm::Range<double>*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<gm::Matrix<double,2,1>>::__vallocate[abi:nn200100](v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<md::mun::CollectionPoint const*>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void std::vector<double>::shrink_to_fit(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = *(a1 + 16) - *a1;
  v5 = v2 - *a1;
  if (v4 > v5)
  {
    if (v2 != v3)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v5 >> 3);
    }

    v7 = 0;
    if (v4 >> 3)
    {
      v8 = 8 * (v5 >> 3);
      v9 = *(a1 + 8) - v3;
      v10 = v8 - v9;
      memcpy((v8 - v9), v3, v9);
      v7 = *a1;
      *a1 = v10;
      *(a1 + 8) = v8;
      *(a1 + 16) = 0;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void *std::__hash_table<md::ComposedRoadEdge const*,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,std::allocator<md::ComposedRoadEdge const*>>::__emplace_unique_key_args<md::ComposedRoadEdge const*,md::ComposedRoadEdge const*&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::__emplace_unique_key_args<md::ComposedRoadEdge const*,std::piecewise_construct_t const&,std::tuple<md::ComposedRoadEdge const* const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1B306CE6C(_Unwind_Exception *a1)
{
  v3 = v1[13];
  if (v3)
  {
    v1[14] = v3;
    operator delete(v3);
  }

  v4 = v1[10];
  if (v4)
  {
    v1[11] = v4;
    operator delete(v4);
  }

  v5 = v1[7];
  if (v5)
  {
    v1[8] = v5;
    operator delete(v5);
  }

  v6 = v1[4];
  if (v6)
  {
    v1[5] = v6;
    operator delete(v6);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<md::MuninJunction const*,md::MuninJunctionZInfo>,std::__unordered_map_hasher<md::MuninJunction const*,std::__hash_value_type<md::MuninJunction const*,md::MuninJunctionZInfo>,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,true>,std::__unordered_map_equal<md::MuninJunction const*,std::__hash_value_type<md::MuninJunction const*,md::MuninJunctionZInfo>,std::equal_to<md::MuninJunction const*>,std::hash<md::MuninJunction const*>,true>,std::allocator<std::__hash_value_type<md::MuninJunction const*,md::MuninJunctionZInfo>>>::__emplace_unique_key_args<md::MuninJunction const*,std::piecewise_construct_t const&,std::tuple<md::MuninJunction const* const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<md::MuninJunction const*,md::JunctionOrphanReason>,std::__unordered_map_hasher<md::MuninJunction const*,std::__hash_value_type<md::MuninJunction const*,md::JunctionOrphanReason>,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,true>,std::__unordered_map_equal<md::MuninJunction const*,std::__hash_value_type<md::MuninJunction const*,md::JunctionOrphanReason>,std::equal_to<md::MuninJunction const*>,std::hash<md::MuninJunction const*>,true>,std::allocator<std::__hash_value_type<md::MuninJunction const*,md::JunctionOrphanReason>>>::__emplace_unique_key_args<md::MuninJunction const*,std::piecewise_construct_t const&,std::tuple<md::MuninJunction const* const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void SampleDeterminablityTracker::trackSample(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a2 == 2)
  {
    if (*a1 == 1)
    {
      v13 = *(a3 + 8);
      v12 = *(a3 + 16);
      if (v13 >= v12)
      {
        v27 = *a3;
        v28 = v13 - *a3;
        v29 = v28 >> 4;
        v30 = (v28 >> 4) + 1;
        if (v30 >> 60)
        {
          goto LABEL_65;
        }

        v31 = v12 - v27;
        if (v31 >> 3 > v30)
        {
          v30 = v31 >> 3;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF0)
        {
          v32 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v32);
        }

        v47 = 16 * v29;
        *v47 = *(a1 + 8);
        *(v47 + 8) = a5;
        v14 = 16 * v29 + 16;
        memcpy(0, v27, v28);
        v48 = *a3;
        *a3 = 0;
        *(a3 + 8) = v14;
        *(a3 + 16) = 0;
        if (v48)
        {
          operator delete(v48);
        }
      }

      else
      {
        *v13 = *(a1 + 8);
        *(v13 + 8) = a5;
        v14 = v13 + 16;
      }

      *(a3 + 8) = v14;
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    if (*(a1 + 1))
    {
      return;
    }

    *(a1 + 1) = 1;
    goto LABEL_63;
  }

  if (a2 != 1)
  {
    if (*a1 == 1)
    {
      v16 = *(a3 + 8);
      v15 = *(a3 + 16);
      if (v16 >= v15)
      {
        v33 = *a3;
        v34 = v16 - *a3;
        v35 = v34 >> 4;
        v36 = (v34 >> 4) + 1;
        if (v36 >> 60)
        {
          goto LABEL_65;
        }

        v37 = v15 - v33;
        if (v37 >> 3 > v36)
        {
          v36 = v37 >> 3;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v38);
        }

        v49 = 16 * v35;
        *v49 = *(a1 + 8);
        *(v49 + 8) = a5;
        v17 = 16 * v35 + 16;
        memcpy(0, v33, v34);
        v50 = *a3;
        *a3 = 0;
        *(a3 + 8) = v17;
        *(a3 + 16) = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        *v16 = *(a1 + 8);
        *(v16 + 8) = a5;
        v17 = v16 + 16;
      }

      *(a3 + 8) = v17;
      *a1 = 0;
      *(a1 + 8) = 0;
      return;
    }

    if (*(a1 + 1) != 1)
    {
      return;
    }

    v19 = *(a4 + 8);
    v18 = *(a4 + 16);
    if (v19 >= v18)
    {
      v39 = *a4;
      v40 = v19 - *a4;
      v41 = v40 >> 4;
      v42 = (v40 >> 4) + 1;
      if (v42 >> 60)
      {
        goto LABEL_65;
      }

      v43 = v18 - v39;
      if (v43 >> 3 > v42)
      {
        v42 = v43 >> 3;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF0)
      {
        v44 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v44);
      }

      v51 = 16 * v41;
      *v51 = *(a1 + 16);
      *(v51 + 8) = a5;
      v20 = 16 * v41 + 16;
      memcpy(0, v39, v40);
      v52 = *a4;
      *a4 = 0;
      *(a4 + 8) = v20;
      *(a4 + 16) = 0;
      if (v52)
      {
        operator delete(v52);
      }
    }

    else
    {
      *v19 = *(a1 + 16);
      *(v19 + 8) = a5;
      v20 = v19 + 16;
    }

    *(a4 + 8) = v20;
    *(a1 + 1) = 0;
LABEL_63:
    *(a1 + 16) = a5;
    return;
  }

  if (*(a1 + 1) != 1)
  {
    goto LABEL_50;
  }

  v10 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v10 >= v9)
  {
    v21 = *a4;
    v22 = v10 - *a4;
    v23 = v22 >> 4;
    v24 = (v22 >> 4) + 1;
    if (!(v24 >> 60))
    {
      v25 = v9 - v21;
      if (v25 >> 3 > v24)
      {
        v24 = v25 >> 3;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF0)
      {
        v26 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v26);
      }

      v45 = 16 * v23;
      *v45 = *(a1 + 16);
      *(v45 + 8) = a5;
      v11 = 16 * v23 + 16;
      memcpy(0, v21, v22);
      v46 = *a4;
      *a4 = 0;
      *(a4 + 8) = v11;
      *(a4 + 16) = 0;
      if (v46)
      {
        operator delete(v46);
      }

      goto LABEL_49;
    }

LABEL_65:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v10 = *(a1 + 16);
  *(v10 + 8) = a5;
  v11 = v10 + 16;
LABEL_49:
  *(a4 + 8) = v11;
  *(a1 + 1) = 0;
  *(a1 + 16) = 0;
LABEL_50:
  if ((*a1 & 1) == 0)
  {
    *(a1 + 8) = a5;
  }
}

void *md::FrameGraphPassBuilder::addAttachmentInput(md::FrameGraphPassBuilder *this, md::FrameGraphLogicalResource *a2)
{
  result = std::__tree<md::FrameGraphLogicalResource *,md::FrameGraphLogicalResourceLessThan,std::allocator<md::FrameGraphLogicalResource *>>::__find_equal<md::FrameGraphLogicalResource *>(this + 80, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_1B306DF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B306E0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B306E1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B306F77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_72c39_ZTSN3geo12Coordinate3DINS_7RadiansEdEE(__n128 *a1, __n128 *a2)
{
  a1[4].n128_u64[1] = a2[4].n128_u64[1];
  result = a2[5];
  a1[5] = result;
  return result;
}

void sub_1B3070170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B3070F98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<geo::Coordinate2D<geo::Radians,double>>::__emplace_back_slow_path<geo::Coordinate2D<geo::Radians,double>>(uint64_t a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(16 * v6) = *a2;
  if (v3 != v4)
  {
    v10 = v3;
    v11 = (16 * v6 + v3 - v4);
    do
    {
      *v11 = *v10;
      v11[1] = *(v10 + 1);
      v10 += 16;
      v11 += 2;
    }

    while (v10 != v4);
  }

  *a1 = 16 * v6 + v3 - v4;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

void sub_1B3071F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  objc_destroyWeak(v38);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B30722CC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B30723E0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_40c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE96c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  result = *(a2 + 144);
  *(a1 + 144) = result;
  return result;
}

double __copy_helper_block_ea8_88c39_ZTSN3geo12Coordinate2DINS_7RadiansEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = *(a2 + 88);
  result = *(a2 + 96);
  *(a1 + 96) = result;
  return result;
}

void sub_1B3073F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_1B30743C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_1B3074A8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B307504C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>>(uint64_t a1, void *a2)
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

void sub_1B30765C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a29, 8);
  std::vector<RouteJunctionInfo,geo::allocator_adapter<RouteJunctionInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a35);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__26788(uint64_t a1, __n128 *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2[4].n128_u8[8];
  result = a2[3];
  *(a1 + 48) = result;
  *(a1 + 64) = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 __Block_byref_object_copy__18_26791(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,false>(uint64_t a1, float *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = (a2 - 4);
  i = a1;
  while (1)
  {
    a1 = i;
    v11 = (a2 - i) >> 4;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(i, (i + 16), (a2 - 4), a5);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(i, i + 16, i + 32, (a2 - 4), a5);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(i, i + 16, i + 32, i + 48, (a2 - 4), a5);
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
        v58 = *v9 >= *i;
        if (*v9 == *i)
        {
          v59 = *(a2 - 3);
          v60 = *(i + 4);
          if (vabds_f32(v59, v60) >= 0.00000011921)
          {
            if (v59 >= v60)
            {
              return;
            }

            goto LABEL_273;
          }

          v58 = *(a2 - 1) >= *(i + 8);
        }

        if (v58)
        {
          return;
        }

LABEL_273:
        v135 = *i;
        *i = *v9;
        *v9 = v135;
        return;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return;
      }

      v76 = (v11 - 2) >> 1;
      v77 = v76;
      while (1)
      {
        v78 = v77;
        if (v76 < v77)
        {
          goto LABEL_213;
        }

        v79 = (2 * v77) | 1;
        v80 = i + 16 * v79;
        if (2 * v78 + 2 >= v11)
        {
          goto LABEL_187;
        }

        v81 = *(v80 + 16);
        v82 = *v80 >= v81;
        if (*v80 == v81)
        {
          v83 = *(v80 + 4);
          v84 = *(v80 + 20);
          if (vabds_f32(v83, v84) >= 0.00000011921)
          {
            if (v83 >= v84)
            {
              goto LABEL_187;
            }

LABEL_186:
            v80 += 16;
            v79 = 2 * v78 + 2;
            goto LABEL_187;
          }

          v82 = *(v80 + 8) >= *(v80 + 24);
        }

        if (!v82)
        {
          goto LABEL_186;
        }

LABEL_187:
        v85 = i + 16 * v78;
        v86 = *v85;
        if (*v80 == *v85)
        {
          v87 = *(v80 + 4);
          v88 = *(v85 + 4);
          if (vabds_f32(v87, v88) >= 0.00000011921)
          {
            if (v87 < v88)
            {
              goto LABEL_213;
            }
          }

          else if (*(v80 + 8) < *(v85 + 8))
          {
            goto LABEL_213;
          }
        }

        else
        {
          if (*v80 < v86)
          {
            goto LABEL_213;
          }

          v88 = *(v85 + 4);
        }

        v89 = *(v85 + 8);
        do
        {
          while (1)
          {
            *v85 = *v80;
            if (v76 < v79)
            {
              goto LABEL_212;
            }

            v85 = v80;
            v90 = 2 * v79;
            v79 = (2 * v79) | 1;
            v80 = i + 16 * v79;
            v91 = v90 + 2;
            if (v91 < v11)
            {
              v92 = *(v80 + 16);
              v93 = *v80 >= v92;
              if (*v80 != v92)
              {
                goto LABEL_200;
              }

              v94 = *(v80 + 4);
              v95 = *(v80 + 20);
              if (vabds_f32(v94, v95) < 0.00000011921)
              {
                v93 = *(v80 + 8) >= *(v80 + 24);
LABEL_200:
                if (v93)
                {
                  goto LABEL_202;
                }

LABEL_201:
                v80 += 16;
                v79 = v91;
                goto LABEL_202;
              }

              if (v94 < v95)
              {
                goto LABEL_201;
              }
            }

LABEL_202:
            v96 = *v80 >= v86;
            if (*v80 == v86)
            {
              break;
            }

LABEL_205:
            if (!v96)
            {
              goto LABEL_211;
            }
          }

          v97 = *(v80 + 4);
          if (vabds_f32(v97, v88) < 0.00000011921)
          {
            v96 = *(v80 + 8) >= v89;
            goto LABEL_205;
          }
        }

        while (v97 >= v88);
LABEL_211:
        v80 = v85;
LABEL_212:
        *v80 = v86;
        *(v80 + 4) = v88;
        *(v80 + 8) = v89;
LABEL_213:
        v77 = v78 - 1;
        if (!v78)
        {
LABEL_217:
          v98 = 0;
          v134 = *i;
          v99 = i;
          while (1)
          {
            v100 = v99;
            v101 = v99 + 16 * v98;
            v99 = v101 + 16;
            v102 = 2 * v98;
            v98 = (2 * v98) | 1;
            v103 = v102 + 2;
            if (v103 < v11)
            {
              v104 = *(v101 + 32);
              v105 = *(v101 + 16);
              v106 = v105 >= v104;
              if (v105 == v104)
              {
                v107 = *(v101 + 20);
                v108 = *(v101 + 36);
                if (vabds_f32(v107, v108) >= 0.00000011921)
                {
                  if (v107 >= v108)
                  {
                    goto LABEL_224;
                  }

LABEL_223:
                  v99 = v101 + 32;
                  v98 = v103;
                  goto LABEL_224;
                }

                v106 = *(v101 + 24) >= *(v101 + 40);
              }

              if (!v106)
              {
                goto LABEL_223;
              }
            }

LABEL_224:
            *v100 = *v99;
            if (v98 > (v11 - 2) / 2)
            {
              a2 -= 4;
              if (v99 == a2)
              {
                *v99 = v134;
                goto LABEL_250;
              }

              *v99 = *a2;
              *a2 = v134;
              v109 = (v99 - i + 16) >> 4;
              v110 = v109 - 2;
              if (v109 < 2)
              {
                goto LABEL_250;
              }

              v111 = v110 >> 1;
              v112 = (i + 16 * (v110 >> 1));
              v113 = *v99;
              if (*v112 == *v99)
              {
                v114 = v112[1];
                v115 = *(v99 + 4);
                if (vabds_f32(v114, v115) >= 0.00000011921)
                {
                  if (v114 >= v115)
                  {
                    goto LABEL_250;
                  }
                }

                else if (*(v112 + 1) >= *(v99 + 8))
                {
                  goto LABEL_250;
                }
              }

              else
              {
                if (*v112 >= v113)
                {
                  goto LABEL_250;
                }

                v115 = *(v99 + 4);
              }

              v116 = *(v99 + 8);
              *v99 = *v112;
              if (v110 < 2)
              {
                goto LABEL_249;
              }

              while (2)
              {
                v117 = v112;
                v118 = v111 - 1;
                v111 = (v111 - 1) >> 1;
                v112 = (i + 16 * v111);
                v119 = *v112 >= v113;
                if (*v112 != v113)
                {
LABEL_242:
                  if (v119)
                  {
                    break;
                  }

                  goto LABEL_246;
                }

                v120 = v112[1];
                if (vabds_f32(v120, v115) < 0.00000011921)
                {
                  v119 = *(v112 + 1) >= v116;
                  goto LABEL_242;
                }

                if (v120 < v115)
                {
LABEL_246:
                  *v117 = *v112;
                  if (v118 <= 1)
                  {
                    goto LABEL_249;
                  }

                  continue;
                }

                break;
              }

              v112 = v117;
LABEL_249:
              *v112 = v113;
              v112[1] = v115;
              *(v112 + 1) = v116;
LABEL_250:
              if (v11-- <= 2)
              {
                return;
              }

              goto LABEL_217;
            }
          }
        }
      }
    }

    v12 = v11 >> 1;
    v13 = (i + 16 * (v11 >> 1));
    if (v11 < 0x81)
    {
      a5 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1 + 16 * (v11 >> 1), a1, (a2 - 4), a5);
    }

    else
    {
      v14 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, (a1 + 16 * (v11 >> 1)), (a2 - 4), a5);
      v15 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1 + 16, v13 - 4, (a2 - 8), v14);
      v16 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1 + 32, (a1 + 16 + 16 * v12), (a2 - 12), v15);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>((v13 - 4), v13, a1 + 16 + 16 * v12, v16);
      v131 = *a1;
      *a1 = *v13;
      a5 = v131;
      *v13 = v131;
    }

    --a3;
    if (a4)
    {
      v17 = *a1;
      goto LABEL_23;
    }

    v17 = *(a1 - 16);
    v18 = *a1;
    if (v17 == *a1)
    {
      v19 = *(a1 - 12);
      a5.n128_u32[0] = *(a1 + 4);
      if (vabds_f32(v19, a5.n128_f32[0]) >= 0.00000011921)
      {
        if (v19 >= a5.n128_f32[0])
        {
          goto LABEL_80;
        }

        goto LABEL_23;
      }

      if (*(a1 - 8) < *(a1 + 8))
      {
        goto LABEL_23;
      }

LABEL_80:
      v40 = *(a1 + 8);
      v41 = *v9;
      v42 = v18 >= *v9;
      if (v18 != *v9)
      {
        goto LABEL_83;
      }

      v43 = *(a2 - 3);
      if (vabds_f32(a5.n128_f32[0], v43) < 0.00000011921)
      {
        v42 = v40 >= *(a2 - 1);
LABEL_83:
        if (!v42)
        {
          goto LABEL_84;
        }

        goto LABEL_93;
      }

      if (a5.n128_f32[0] < v43)
      {
LABEL_84:
        for (i = a1 + 16; ; i += 16)
        {
          v44 = v18 >= *i;
          if (v18 != *i)
          {
            goto LABEL_88;
          }

          v45 = *(i + 4);
          if (vabds_f32(a5.n128_f32[0], v45) < 0.00000011921)
          {
            break;
          }

          if (a5.n128_f32[0] < v45)
          {
            goto LABEL_102;
          }

LABEL_91:
          ;
        }

        v44 = v40 >= *(i + 8);
LABEL_88:
        if (!v44)
        {
          goto LABEL_102;
        }

        goto LABEL_91;
      }

LABEL_93:
      for (i = a1 + 16; i < a2; i += 16)
      {
        v46 = v18 >= *i;
        if (v18 != *i)
        {
          goto LABEL_98;
        }

        v47 = *(i + 4);
        if (vabds_f32(a5.n128_f32[0], v47) < 0.00000011921)
        {
          v46 = v40 >= *(i + 8);
LABEL_98:
          if (!v46)
          {
            break;
          }

          continue;
        }

        if (a5.n128_f32[0] < v47)
        {
          break;
        }
      }

LABEL_102:
      j = a2;
      if (i < a2)
      {
        for (j = a2 - 4; ; j -= 4)
        {
          v49 = v18 >= v41;
          if (v18 != v41)
          {
            goto LABEL_107;
          }

          v50 = j[1];
          if (vabds_f32(a5.n128_f32[0], v50) < 0.00000011921)
          {
            break;
          }

          if (a5.n128_f32[0] >= v50)
          {
            goto LABEL_126;
          }

LABEL_111:
          v51 = *(j - 4);
          v41 = v51;
        }

        v49 = v40 >= *(j + 1);
LABEL_107:
        if (v49)
        {
          goto LABEL_126;
        }

        goto LABEL_111;
      }

LABEL_126:
      if (i < j)
      {
        v133 = *i;
        *i = *j;
        *j = v133;
        do
        {
          while (1)
          {
            v52 = *(i + 16);
            i += 16;
            v53 = v18 >= v52;
            if (v18 == v52)
            {
              break;
            }

LABEL_116:
            if (!v53)
            {
              goto LABEL_121;
            }
          }

          v54 = *(i + 4);
          if (vabds_f32(a5.n128_f32[0], v54) < 0.00000011921)
          {
            v53 = v40 >= *(i + 8);
            goto LABEL_116;
          }
        }

        while (a5.n128_f32[0] >= v54);
        while (1)
        {
LABEL_121:
          v55 = *(j - 4);
          j -= 4;
          v56 = v18 >= v55;
          if (v18 == v55)
          {
            v57 = j[1];
            if (vabds_f32(a5.n128_f32[0], v57) >= 0.00000011921)
            {
              if (a5.n128_f32[0] >= v57)
              {
                goto LABEL_126;
              }

              continue;
            }

            v56 = v40 >= *(j + 1);
          }

          if (v56)
          {
            goto LABEL_126;
          }
        }
      }

      if (i - 16 != a1)
      {
        *a1 = *(i - 16);
      }

      a4 = 0;
      *(i - 16) = v18;
      *(i - 12) = a5.n128_u32[0];
      *(i - 8) = v40;
    }

    else
    {
      if (v17 >= v18)
      {
        a5.n128_u32[0] = *(a1 + 4);
        goto LABEL_80;
      }

      v17 = *a1;
LABEL_23:
      a5.n128_u32[0] = *(a1 + 4);
      v20 = *(a1 + 8);
      for (k = a1 + 16; ; k += 16)
      {
        v22 = *k >= v17;
        if (*k != v17)
        {
          goto LABEL_27;
        }

        v23 = *(k + 4);
        if (vabds_f32(v23, a5.n128_f32[0]) >= 0.00000011921)
        {
          break;
        }

        v22 = *(k + 8) >= v20;
LABEL_27:
        if (v22)
        {
          goto LABEL_32;
        }

LABEL_31:
        ;
      }

      if (v23 < a5.n128_f32[0])
      {
        goto LABEL_31;
      }

LABEL_32:
      m = a2 - 4;
      if (k - 16 != a1)
      {
        while (2)
        {
          v25 = *m >= v17;
          if (*m == v17)
          {
            v26 = m[1];
            if (vabds_f32(v26, a5.n128_f32[0]) < 0.00000011921)
            {
              v25 = *(m + 1) >= v20;
              goto LABEL_36;
            }

            if (v26 < a5.n128_f32[0])
            {
              goto LABEL_56;
            }
          }

          else
          {
LABEL_36:
            if (!v25)
            {
              goto LABEL_56;
            }
          }

          m -= 4;
          continue;
        }
      }

      m = a2;
      if (k < a2)
      {
        for (m = a2 - 4; ; m -= 4)
        {
          v27 = *m >= v17;
          if (*m != v17)
          {
            goto LABEL_45;
          }

          v28 = m[1];
          if (vabds_f32(v28, a5.n128_f32[0]) < 0.00000011921)
          {
            break;
          }

          if (v28 < a5.n128_f32[0] || k >= m)
          {
            goto LABEL_56;
          }

LABEL_55:
          ;
        }

        v27 = *(m + 1) >= v20;
LABEL_45:
        if (!v27 || k >= m)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

LABEL_56:
      i = k;
      if (k >= m)
      {
        goto LABEL_73;
      }

      i = k;
      v31 = m;
      do
      {
        v132 = *i;
        *i = *v31;
        *v31 = v132;
        do
        {
          while (1)
          {
            v32 = *(i + 16);
            i += 16;
            v33 = v32 >= v17;
            if (v32 == v17)
            {
              break;
            }

LABEL_62:
            if (v33)
            {
              goto LABEL_68;
            }
          }

          v34 = *(i + 4);
          if (vabds_f32(v34, a5.n128_f32[0]) < 0.00000011921)
          {
            v33 = *(i + 8) >= v20;
            goto LABEL_62;
          }
        }

        while (v34 < a5.n128_f32[0]);
        do
        {
          while (1)
          {
LABEL_68:
            v35 = *(v31 - 16);
            v31 -= 16;
            v36 = v35 >= v17;
            if (v35 != v17)
            {
              goto LABEL_71;
            }

            v37 = *(v31 + 4);
            if (vabds_f32(v37, a5.n128_f32[0]) < 0.00000011921)
            {
              break;
            }

            if (v37 < a5.n128_f32[0])
            {
              goto LABEL_72;
            }
          }

          v36 = *(v31 + 8) >= v20;
LABEL_71:
          ;
        }

        while (v36);
LABEL_72:
        ;
      }

      while (i < v31);
LABEL_73:
      if (i - 16 != a1)
      {
        *a1 = *(i - 16);
      }

      *(i - 16) = v17;
      *(i - 12) = a5.n128_u32[0];
      *(i - 8) = v20;
      if (k < m)
      {
LABEL_78:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,false>(a1, i - 16, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v38 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *>(a1, i - 16, a5);
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *>(i, a2, v39))
        {
          a2 = (i - 16);
          if (v38)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v38)
        {
          goto LABEL_78;
        }
      }
    }
  }

  v61 = (i + 16);
  v63 = i == a2 || v61 == a2;
  if ((a4 & 1) == 0)
  {
    if (v63)
    {
      return;
    }

    while (1)
    {
      v122 = a1;
      a1 = v61;
      v123 = *(v122 + 16);
      if (v123 == *v122)
      {
        v124 = *(v122 + 20);
        v125 = *(v122 + 4);
        if (vabds_f32(v124, v125) < 0.00000011921)
        {
          if (*(v122 + 24) >= *(v122 + 8))
          {
            goto LABEL_270;
          }

LABEL_261:
          v126 = *(v122 + 24);
          while (1)
          {
LABEL_262:
            v127 = v122;
            *(v122 + 16) = *v122;
            v128 = *(v122 - 16);
            v122 -= 16;
            v129 = v123 >= v128;
            if (v123 != v128)
            {
              goto LABEL_265;
            }

            v130 = *(v127 - 12);
            if (vabds_f32(v124, v130) < 0.00000011921)
            {
              break;
            }

            if (v124 >= v130)
            {
LABEL_269:
              *v127 = v123;
              *(v127 + 4) = v124;
              *(v127 + 8) = v126;
              goto LABEL_270;
            }
          }

          v129 = v126 >= *(v127 - 8);
LABEL_265:
          if (v129)
          {
            goto LABEL_269;
          }

          goto LABEL_262;
        }

        if (v124 < v125)
        {
          goto LABEL_261;
        }
      }

      else if (v123 < *v122)
      {
        v124 = *(v122 + 20);
        goto LABEL_261;
      }

LABEL_270:
      v61 = (a1 + 16);
      if ((a1 + 16) == a2)
      {
        return;
      }
    }
  }

  if (v63)
  {
    return;
  }

  v64 = 0;
  v65 = i;
  while (2)
  {
    v66 = v65;
    v65 = v61;
    v67 = *(v66 + 4);
    if (v67 == *v66)
    {
      v68 = *(v66 + 5);
      v69 = *(v66 + 1);
      if (vabds_f32(v68, v69) >= 0.00000011921)
      {
        if (v68 >= v69)
        {
          goto LABEL_176;
        }
      }

      else if (*(v66 + 3) >= *(v66 + 1))
      {
        goto LABEL_176;
      }
    }

    else
    {
      if (v67 >= *v66)
      {
        goto LABEL_176;
      }

      v68 = *(v66 + 5);
    }

    v70 = *(v66 + 3);
    *v65 = *v66;
    v71 = i;
    if (v66 == i)
    {
      goto LABEL_175;
    }

    v72 = v64;
    while (2)
    {
      v73 = (i + v72);
      v74 = *(i + v72 - 16);
      if (v67 != v74)
      {
        if (v67 >= v74)
        {
          v71 = i + v72;
          goto LABEL_175;
        }

        goto LABEL_172;
      }

      v75 = *(v73 - 3);
      if (vabds_f32(v68, v75) < 0.00000011921)
      {
        if (v70 >= *(i + v72 - 8))
        {
          break;
        }

        goto LABEL_172;
      }

      if (v68 < v75)
      {
LABEL_172:
        --v66;
        *v73 = *(i + v72 - 16);
        v72 -= 16;
        if (!v72)
        {
          v71 = i;
          goto LABEL_175;
        }

        continue;
      }

      break;
    }

    v71 = v66;
LABEL_175:
    *v71 = v67;
    *(v71 + 4) = v68;
    *(v71 + 8) = v70;
LABEL_176:
    v61 = (v65 + 1);
    v64 += 16;
    if (v65 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

void std::vector<RouteJunctionInfo,geo::allocator_adapter<RouteJunctionInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<RouteJunctionInfo>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<RouteJunctionInfo>(uint64_t a1, void *a2)
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

uint64_t VectorTileMapper::mapNodeJunctionToTile(geo::MapNode **a1, uint64_t a2)
{
  v4 = geo::MapNode::tile(*a1);
  v5 = v4;
  if (v4)
  {
    [v4 vectorTilePtr];
    v6 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }

  else
  {
    v6 = 0;
  }

  if (!geo::codec::TileKeyEquals((a2 + 4), (v6 + 4)) || *a2 != *v6)
  {
    return 0;
  }

  result = geo::MapNode::junction(*a1);
  if (!result)
  {
    return result;
  }

  v8 = result - *(v6 + 696);
  if (*(a2 + 704) > (v8 >> 5))
  {
    return *(a2 + 696) + v8;
  }

  else
  {
    return 0;
  }
}

void std::vector<RouteJunctionInfo,geo::allocator_adapter<RouteJunctionInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *a1, _OWORD *a2)
{
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(a1);
      v12 = pthread_rwlock_rdlock((v11 + 32));
      if (v12)
      {
        geo::read_write_lock::logFailure(v12, "read lock", v13);
      }

      v14 = malloc_type_zone_malloc(*v11, 16 * v10, 0x10200405730B0C9uLL);
      atomic_fetch_add((v11 + 24), 1u);
      geo::read_write_lock::unlock((v11 + 32));
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[16 * v7];
    v16 = &v14[16 * v10];
    *v15 = *a2;
    v6 = v15 + 16;
    v17 = *(a1 + 1) - *a1;
    v18 = &v15[-v17];
    v19 = memcpy(&v15[-v17], *a1, v17);
    v20 = *a1;
    *a1 = v18;
    *(a1 + 1) = v6;
    *(a1 + 2) = v16;
    if (v20)
    {
      v21 = mdm::zone_mallocator::instance(v19);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<RouteJunctionInfo>(v21, v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 1) = v6;
}

__n128 std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(uint64_t a1, int *a2, uint64_t a3, __n128 result)
{
  v4 = *a2;
  v5 = *a2 >= *a1;
  if (*a2 != *a1)
  {
LABEL_4:
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    v10 = *a3 >= v4;
    if (*a3 == v4)
    {
      result.n128_u32[0] = *(a3 + 4);
      v11 = *(a2 + 1);
      if (vabds_f32(result.n128_f32[0], v11) >= 0.00000011921)
      {
        if (result.n128_f32[0] >= v11)
        {
          return result;
        }

        goto LABEL_25;
      }

      v10 = *(a3 + 8) >= *(a2 + 1);
    }

    if (v10)
    {
      return result;
    }

LABEL_25:
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    v14 = *a2 >= *a1;
    if (*a2 == *a1)
    {
      result.n128_u32[0] = a2[1];
      v15 = *(a1 + 4);
      if (vabds_f32(result.n128_f32[0], v15) >= 0.00000011921)
      {
        if (result.n128_f32[0] >= v15)
        {
          return result;
        }

        goto LABEL_35;
      }

      v14 = *(a2 + 1) >= *(a1 + 8);
    }

    if (v14)
    {
      return result;
    }

LABEL_35:
    result = *a1;
    *a1 = *a2;
    *a2 = result;
    return result;
  }

  result.n128_u32[0] = a2[1];
  v6 = *(a1 + 4);
  if (vabds_f32(result.n128_f32[0], v6) < 0.00000011921)
  {
    v5 = *(a2 + 1) >= *(a1 + 8);
    goto LABEL_4;
  }

  if (result.n128_f32[0] >= v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  v7 = *a3 >= v4;
  if (*a3 != v4)
  {
    goto LABEL_8;
  }

  v8 = *(a3 + 4);
  v9 = *(a2 + 1);
  if (vabds_f32(v8, v9) < 0.00000011921)
  {
    v7 = *(a3 + 8) >= *(a2 + 1);
LABEL_8:
    if (!v7)
    {
LABEL_9:
      result = *a1;
      *a1 = *a3;
LABEL_33:
      *a3 = result;
      return result;
    }

    goto LABEL_18;
  }

  if (v8 < v9)
  {
    goto LABEL_9;
  }

LABEL_18:
  result = *a1;
  *a1 = *a2;
  *a2 = result;
  v12 = *a3 >= *a2;
  if (*a3 == *a2)
  {
    result.n128_u32[0] = *(a3 + 4);
    v13 = *(a2 + 1);
    if (vabds_f32(result.n128_f32[0], v13) >= 0.00000011921)
    {
      if (result.n128_f32[0] >= v13)
      {
        return result;
      }

      goto LABEL_32;
    }

    v12 = *(a3 + 8) >= *(a2 + 1);
  }

  if (!v12)
  {
LABEL_32:
    result = *a2;
    *a2 = *a3;
    goto LABEL_33;
  }

  return result;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  result.n128_u64[0] = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, a2, a3, a5).n128_u64[0];
  v10 = *a4 >= *a3;
  if (*a4 != *a3)
  {
LABEL_4:
    if (v10)
    {
      return result;
    }

    goto LABEL_8;
  }

  result.n128_u32[0] = *(a4 + 4);
  v11 = *(a3 + 4);
  if (vabds_f32(result.n128_f32[0], v11) < 0.00000011921)
  {
    v10 = *(a4 + 8) >= *(a3 + 8);
    goto LABEL_4;
  }

  if (result.n128_f32[0] >= v11)
  {
    return result;
  }

LABEL_8:
  result = *a3;
  *a3 = *a4;
  *a4 = result;
  v12 = *a3 >= *a2;
  if (*a3 != *a2)
  {
    goto LABEL_11;
  }

  result.n128_u32[0] = *(a3 + 4);
  v13 = *(a2 + 4);
  if (vabds_f32(result.n128_f32[0], v13) < 0.00000011921)
  {
    v12 = *(a3 + 8) >= *(a2 + 8);
LABEL_11:
    if (v12)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (result.n128_f32[0] >= v13)
  {
    return result;
  }

LABEL_15:
  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v14 = *a2 >= *a1;
  if (*a2 != *a1)
  {
    goto LABEL_18;
  }

  result.n128_u32[0] = *(a2 + 4);
  v15 = *(a1 + 4);
  if (vabds_f32(result.n128_f32[0], v15) < 0.00000011921)
  {
    v14 = *(a2 + 8) >= *(a1 + 8);
LABEL_18:
    if (v14)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (result.n128_f32[0] >= v15)
  {
    return result;
  }

LABEL_19:
  result = *a1;
  *a1 = *a2;
  *a2 = result;
  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  result.n128_u64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v12 = *a5 >= *a4;
  if (*a5 != *a4)
  {
LABEL_4:
    if (v12)
    {
      return result;
    }

    goto LABEL_8;
  }

  result.n128_u32[0] = *(a5 + 4);
  v13 = *(a4 + 4);
  if (vabds_f32(result.n128_f32[0], v13) < 0.00000011921)
  {
    v12 = *(a5 + 8) >= *(a4 + 8);
    goto LABEL_4;
  }

  if (result.n128_f32[0] >= v13)
  {
    return result;
  }

LABEL_8:
  result = *a4;
  *a4 = *a5;
  *a5 = result;
  v14 = *a4 >= *a3;
  if (*a4 != *a3)
  {
    goto LABEL_11;
  }

  result.n128_u32[0] = *(a4 + 4);
  v15 = *(a3 + 4);
  if (vabds_f32(result.n128_f32[0], v15) < 0.00000011921)
  {
    v14 = *(a4 + 8) >= *(a3 + 8);
LABEL_11:
    if (v14)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (result.n128_f32[0] >= v15)
  {
    return result;
  }

LABEL_15:
  result = *a3;
  *a3 = *a4;
  *a4 = result;
  v16 = *a3 >= *a2;
  if (*a3 != *a2)
  {
    goto LABEL_18;
  }

  result.n128_u32[0] = *(a3 + 4);
  v17 = *(a2 + 4);
  if (vabds_f32(result.n128_f32[0], v17) < 0.00000011921)
  {
    v16 = *(a3 + 8) >= *(a2 + 8);
LABEL_18:
    if (v16)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (result.n128_f32[0] >= v17)
  {
    return result;
  }

LABEL_22:
  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v18 = *a2 >= *a1;
  if (*a2 != *a1)
  {
    goto LABEL_25;
  }

  result.n128_u32[0] = *(a2 + 4);
  v19 = *(a1 + 4);
  if (vabds_f32(result.n128_f32[0], v19) < 0.00000011921)
  {
    v18 = *(a2 + 8) >= *(a1 + 8);
LABEL_25:
    if (v18)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (result.n128_f32[0] >= v19)
  {
    return result;
  }

LABEL_26:
  result = *a1;
  *a1 = *a2;
  *a2 = result;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = (a2 - a1) >> 4;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, (a1 + 16), a2 - 16, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, a1 + 16, a1 + 32, a2 - 16, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16, a3);
        return 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      v6 = (a2 - 16);
      v7 = *(a2 - 16);
      v8 = v7 >= *a1;
      if (v7 == *a1)
      {
        v9 = *(a2 - 12);
        v10 = *(a1 + 4);
        if (vabds_f32(v9, v10) >= 0.00000011921)
        {
          if (v9 >= v10)
          {
            return 1;
          }

          goto LABEL_40;
        }

        v8 = *(a2 - 8) >= *(a1 + 8);
      }

      if (v8)
      {
        return 1;
      }

LABEL_40:
      v23 = *a1;
      *a1 = *v6;
      *v6 = v23;
      return 1;
    }
  }

  v11 = a1 + 32;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, (a1 + 16), a1 + 32, a3);
  v12 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (2)
  {
    v15 = *v12;
    if (*v12 == *v11)
    {
      v16 = *(v12 + 4);
      v17 = *(v11 + 4);
      if (vabds_f32(v16, v17) >= 0.00000011921)
      {
        if (v16 >= v17)
        {
          goto LABEL_36;
        }
      }

      else if (*(v12 + 8) >= *(v11 + 8))
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v15 >= *v11)
      {
        goto LABEL_36;
      }

      v16 = *(v12 + 4);
    }

    v18 = *(v12 + 8);
    *v12 = *v11;
    v19 = v13;
    while (1)
    {
      v20 = *(a1 + v19 + 16);
      v21 = v15 >= v20;
      if (v15 != v20)
      {
        goto LABEL_28;
      }

      v22 = *(a1 + v19 + 20);
      if (vabds_f32(v16, v22) < 0.00000011921)
      {
        v21 = v18 >= *(a1 + v19 + 24);
LABEL_28:
        if (v21)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      if (v16 >= v22)
      {
        break;
      }

LABEL_32:
      v11 -= 16;
      *(a1 + v19 + 32) = *(a1 + v19 + 16);
      v19 -= 16;
      if (v19 == -32)
      {
        v11 = a1;
        goto LABEL_35;
      }
    }

    v11 = a1 + v19 + 32;
LABEL_35:
    *v11 = v15;
    *(v11 + 4) = v16;
    *(v11 + 8) = v18;
    if (++v14 != 8)
    {
LABEL_36:
      v11 = v12;
      v13 += 16;
      v12 += 16;
      if (v12 == a2)
      {
        return 1;
      }

      continue;
    }

    return v12 + 16 == a2;
  }
}

void sub_1B3078080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, mdm::zone_mallocator *a14)
{
  std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::__deallocate_node(a14);
  if (a11)
  {
    v16 = mdm::zone_mallocator::instance(v15);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *>(v16, a11);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::find<GeoCodecsConnectivityJunction *>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= a2)
          {
            v10 %= a2;
          }
        }

        else
        {
          v10 &= a2 - 1;
        }

        if (v10 != v7)
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

void *std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::__emplace_unique_key_args<GeoCodecsConnectivityJunction *,std::piecewise_construct_t const&,std::tuple<GeoCodecsConnectivityJunction * const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == a2)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v14 = mdm::zone_mallocator::instance(a1);
  v15 = pthread_rwlock_rdlock((v14 + 32));
  if (v15)
  {
    geo::read_write_lock::logFailure(v15, "read lock", v16);
  }

  i = malloc_type_zone_malloc(*v14, 0x20uLL, 0x106004009C49B2EuLL);
  atomic_fetch_add((v14 + 24), 1u);
  geo::read_write_lock::unlock((v14 + 32));
  *i = 0;
  i[1] = v8;
  i[2] = **a3;
  i[3] = 0;
  v18 = (*(a1 + 5) + 1);
  v19 = a1[12];
  if (!v9 || (v19 * v9) < v18)
  {
    v20 = 1;
    if (v9 >= 3)
    {
      v20 = (v9 & (v9 - 1)) != 0;
    }

    v21 = v20 | (2 * v9);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    if (v23 == 1)
    {
      v23 = 2;
    }

    else if ((v23 & (v23 - 1)) != 0)
    {
      prime = std::__next_prime(v23);
      v23 = prime;
    }

    v9 = *(a1 + 1);
    if (v23 > v9)
    {
      goto LABEL_32;
    }

    if (v23 < v9)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v9 < 3 || (v32 = vcnt_s8(v9), v32.i16[0] = vaddlv_u8(v32), v32.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v33 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v33;
        }
      }

      if (v23 <= prime)
      {
        v23 = prime;
      }

      if (v23 >= v9)
      {
        v9 = *(a1 + 1);
      }

      else
      {
        if (v23)
        {
LABEL_32:
          v24 = mdm::zone_mallocator::instance(prime);
          v25 = pthread_rwlock_rdlock((v24 + 32));
          if (v25)
          {
            geo::read_write_lock::logFailure(v25, "read lock", v26);
          }

          v27 = malloc_type_zone_malloc(*v24, 8 * v23, 0x2004093837F09uLL);
          atomic_fetch_add((v24 + 24), 1u);
          geo::read_write_lock::unlock((v24 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> **,0>(a1, v27);
          v28 = 0;
          *(a1 + 1) = v23;
          do
          {
            *(*a1 + 8 * v28++) = 0;
          }

          while (v23 != v28);
          v29 = *(a1 + 3);
          if (v29)
          {
            v30 = v29[1];
            v31 = vcnt_s8(v23);
            v31.i16[0] = vaddlv_u8(v31);
            if (v31.u32[0] > 1uLL)
            {
              if (v30 >= v23)
              {
                v30 %= v23;
              }
            }

            else
            {
              v30 &= v23 - 1;
            }

            *(*a1 + 8 * v30) = a1 + 6;
            v34 = *v29;
            if (*v29)
            {
              do
              {
                v35 = v34[1];
                if (v31.u32[0] > 1uLL)
                {
                  if (v35 >= v23)
                  {
                    v35 %= v23;
                  }
                }

                else
                {
                  v35 &= v23 - 1;
                }

                if (v35 != v30)
                {
                  v36 = *a1;
                  if (!*(*a1 + 8 * v35))
                  {
                    *(v36 + 8 * v35) = v29;
                    goto LABEL_56;
                  }

                  *v29 = *v34;
                  *v34 = **(v36 + 8 * v35);
                  **(v36 + 8 * v35) = v34;
                  v34 = v29;
                }

                v35 = v30;
LABEL_56:
                v29 = v34;
                v34 = *v34;
                v30 = v35;
              }

              while (v34);
            }
          }

          v9 = v23;
          goto LABEL_60;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> **,0>(a1, 0);
        v9 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_60:
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v37 = *a1;
  v38 = *(*a1 + 8 * v3);
  if (v38)
  {
    *i = *v38;
LABEL_73:
    *v38 = i;
    goto LABEL_74;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v37 + 8 * v3) = a1 + 6;
  if (*i)
  {
    v39 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v39 >= v9)
      {
        v39 %= v9;
      }
    }

    else
    {
      v39 &= v9 - 1;
    }

    v38 = (*a1 + 8 * v39);
    goto LABEL_73;
  }

LABEL_74:
  ++*(a1 + 5);
  return i;
}

void sub_1B3078618(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  v5 = mdm::zone_mallocator::instance(v4);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *>>(v5, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::__deallocate_node(mdm::zone_mallocator *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = mdm::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *>>(v3, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *>>(uint64_t a1, void *a2)
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

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *>(v3, v2);
  }
}

void sub_1B3079004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  a16 = &a39;
  std::vector<std::pair<std::string,VKLabelNavJunction * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a16);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,VKLabelNavJunction * {__strong}>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 32;
        std::__destroy_at[abi:nn200100]<std::pair<std::string,VKLabelNavJunction * {__strong}>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string,VKLabelNavJunction * {__strong}>,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

std::string *std::pair<std::string,VKLabelNavJunction * {__strong}>::pair[abi:nn200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  return this;
}

uint64_t std::__split_buffer<std::pair<std::string,VKLabelNavJunction * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__destroy_at[abi:nn200100]<std::pair<std::string,VKLabelNavJunction * {__strong}>,0>(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B307A5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, std::__shared_weak_count *a57)
{
  if (a57)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a57);
  }

  _Unwind_Resume(a1);
}

void sub_1B307AC34(_Unwind_Exception *a1)
{
  *(v2 - 96) = v1;

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<GEORoadEdge * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A6E8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEORoadEdge * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A6E8;

  return a1;
}

uint64_t std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
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

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 3)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
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

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
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

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[5];
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, void *a2)
{
  if (a1)
  {
    a1 = a2[3];
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
    }
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>>(v3, a2);
}

void sub_1B307E514(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  v69 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v69, v67);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
  }

  md::NavLabel::~NavLabel(v63);

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v64);
  }

  std::__shared_weak_count::~__shared_weak_count(v61);
  operator delete(v70);

  if (a60 < 0)
  {
    v72 = mdm::zone_mallocator::instance(v71);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v72, a55);
  }

  if (a53 < 0)
  {
    v73 = mdm::zone_mallocator::instance(v71);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v73, a48);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a33);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v60);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::NavCurrentRoadSign>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2A668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B307EC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  _Unwind_Resume(a1);
}

void sub_1B308014C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24)
{
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(a17);
  if (a14)
  {
    v27 = mdm::zone_mallocator::instance(v26);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(v27, a14);
  }

  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(a24);
  if (a21)
  {
    v29 = mdm::zone_mallocator::instance(v28);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(v29, a21);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__erase_unique<std::shared_ptr<md::LabelTile>>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    v6 = vcnt_s8(v2);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
      if (v5 >= *&v2)
      {
        v7 = v5 % *&v2;
      }
    }

    else
    {
      v7 = v5 & (*&v2 - 1);
    }

    v8 = *(*result + 8 * v7);
    if (v8)
    {
      for (i = *v8; i; i = *i)
      {
        v10 = i[1];
        if (v10 == v5)
        {
          if (i[2] == a2)
          {
            return std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::erase(result, i);
          }
        }

        else
        {
          if (v6.u32[0] > 1uLL)
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
            return result;
          }
        }
      }
    }
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x20uLL, 0x10200404161829EuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(uint64_t a1, uint64_t a2)
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

void non-virtual thunk toggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2A838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::PrefilteredLine::PrefilteredLineMesh::~PrefilteredLineMesh(ggl::PrefilteredLine::PrefilteredLineMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PrefilteredLine::PrefilteredLineMesh::~PrefilteredLineMesh(ggl::PrefilteredLine::PrefilteredLineMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::PrefilteredLine::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::PrefilteredLine::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::PrefilteredLine::PrefilteredLinePipelineSetup::~PrefilteredLinePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::SelectedTransitLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v12 = vrev64_s32(*(a2 + 4));
  v13 = *(a2 + 1);
  v14 = [*(a1 + 832) muid];
  v15 = GEOTransitLineSelectionAdditionalInfoMake();
  v16 = v9;
  if ((a4 & 0x100000000) != 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = 2147483646;
  }

  return gdc::ResourceKey::ResourceKey(a5, *(a1 + 592), &v12, 40, a3, v10);
}

void md::SelectedTransitLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v11, *(a1 + 592), *a3, a3[1]);
  if (v11)
  {
    v5 = *(v11 + 152);
    v9 = *(v11 + 144);
    v10 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v8, (a1 + 800));
  memset(__p, 0, sizeof(__p));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], __p);
  atomic_load((a1 + 816));
  v6 = *(a1 + 768);
  operator new();
}

void sub_1B30810F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void md::SelectedTransitLayerDataSource::constructRequests(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v14 = v3;
    v15 = v4;
    v6 = a2;
    do
    {
      v8 = *v6;
      *&v9 = gdc::Tiled::tileFromLayerDataKey(v13, (*v6)[2]);
      if (*(a1 + 832) && *(a1 + 848) > v13[1])
      {
        (*(*a1 + 144))(&v10, a1, *v8, v13, *(v8 + 14), *(v8 + 12) & 0xFFFFFFFFFFLL, v9);
        gdc::LayerDataRequest::request(*v6, &v10, 0);
        if (v11 != v12)
        {
          free(v11);
        }
      }

      v6 += 2;
    }

    while (v6 != a3);
  }
}

void md::SelectedTransitLayerDataSource::~SelectedTransitLayerDataSource(md::SelectedTransitLayerDataSource *this)
{
  *this = &unk_1F2A2A8B0;
  *(this + 103) = &unk_1F2A2A958;

  v2 = *(this + 101);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 99);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2A8B0;
  *(this + 103) = &unk_1F2A2A958;

  v2 = *(this + 101);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 99);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void geo::_retain_ptr<GEOMapItemIdentifier * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A958;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOMapItemIdentifier * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A958;

  return a1;
}

void md::SelectedTransitLayerDataSource::setSelectedLine(gdc::LayerDataStore **this, GEOMapItemIdentifier *a2, int a3)
{
  v10 = a2;
  if (![(GEOMapItemIdentifier *)v10 isEqual:this[104]]|| *(this + 212) != a3)
  {
    gdc::LayerDataStore::clearAllData(this[2]);
    v5 = v10;
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = this[104];
    this[104] = v6;

    *(this + 212) = a3;
  }
}

id initAVCaptureSessionInterruptionReasonKey(void)
{
  if (LoadAVFoundation(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadAVFoundation(void)::loadPredicate, &__block_literal_global_117);
  }

  v0 = dlsym(LoadAVFoundation(void)::frameworkLibrary, "AVCaptureSessionInterruptionReasonKey");
  objc_storeStrong(&constantAVCaptureSessionInterruptionReasonKey, *v0);
  getAVCaptureSessionInterruptionReasonKey = AVCaptureSessionInterruptionReasonKeyFunction;
  v1 = constantAVCaptureSessionInterruptionReasonKey;

  return v1;
}

void ___ZL16LoadAVFoundationv_block_invoke()
{
  LoadAVFoundation(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/AVFoundation.framework/AVFoundation", 2);
  if (!LoadAVFoundation(void)::frameworkLibrary)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/Frameworks/AVFoundation.framework/AVFoundation");
  }
}

void sub_1B3081D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MDARController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B3081F38(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id initAVCaptureSessionWasInterruptedNotification(void)
{
  if (LoadAVFoundation(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadAVFoundation(void)::loadPredicate, &__block_literal_global_117);
  }

  v0 = dlsym(LoadAVFoundation(void)::frameworkLibrary, "AVCaptureSessionWasInterruptedNotification");
  objc_storeStrong(&constantAVCaptureSessionWasInterruptedNotification, *v0);
  getAVCaptureSessionWasInterruptedNotification = AVCaptureSessionWasInterruptedNotificationFunction;
  v1 = constantAVCaptureSessionWasInterruptedNotification;

  return v1;
}

Class initARPositionalTrackingConfiguration(void)
{
  if (LoadARKit(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadARKit(void)::loadPredicate, &__block_literal_global_27012);
  }

  result = objc_getClass("ARPositionalTrackingConfiguration");
  classARPositionalTrackingConfiguration = result;
  getARPositionalTrackingConfigurationClass = ARPositionalTrackingConfigurationFunction;
  return result;
}

Class initARSession(void)
{
  if (LoadARKit(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadARKit(void)::loadPredicate, &__block_literal_global_27012);
  }

  result = objc_getClass("ARSession");
  classARSession = result;
  getARSessionClass = ARSessionFunction;
  return result;
}

void ___ZL9LoadARKitv_block_invoke_27019()
{
  LoadARKit(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/ARKit.framework/ARKit", 2);
  if (!LoadARKit(void)::frameworkLibrary)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/Frameworks/ARKit.framework/ARKit");
  }
}

void ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(v2 + 204) = 1065353216;
  }

  v3 = *(v2 + 184);
  *(v2 + 184) = 0;
}

float ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_13(uint64_t a1, float a2)
{
  result = 1.0 - a2;
  *(*(a1 + 32) + 204) = result;
  return result;
}

void ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(v2 + 204) = 0;
  }

  v3 = *(v2 + 184);
  *(v2 + 184) = 0;
}

void __destroy_helper_block_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN2md16RouteRenderLayer29layoutArrowsAndManeuverPointsERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEfbPN3ggl13CommandBufferE_block_invoke(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 528) = *(a1 + 56) + ((*(*(a1 + 40) + 520) - *(a1 + 56)) * a2);
  v3 = **(*(v2 + 40) + 88);
  if (v3)
  {
    v4 = 7;
    md::MapEngine::setNeedsTick(v3, &v4);
  }
}

void ___ZN2md16RouteRenderLayer29layoutArrowsAndManeuverPointsERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEfbPN3ggl13CommandBufferE_block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(v1 + 528) = *(v1 + 520);
  v3 = *(v1 + 192);
  *(v1 + 192) = 0;

  v4 = **(*(v2 + 40) + 88);
  if (v4)
  {
    v5 = 7;
    md::MapEngine::setNeedsTick(v4, &v5);
  }
}

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(uint64_t result, void *a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v5;
      std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v79, v3);
      if (*(v6 + 272) == 1)
      {
        ggl::Batcher::reset((v6 + 144));
        md::RenderItemPool::reset((v6 + 224));
        std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v80, v79);
        if (*(v6 + 272) == 1)
        {
          memset(&v70, 0, sizeof(v70));
          std::vector<unsigned int>::reserve(&v70, 5uLL);
          end = v70.__end_;
          v65 = v5;
          if (*(v6 + 136))
          {
            if (v70.__end_ >= v70.__end_cap_.__value_)
            {
              begin = v70.__begin_;
              v11 = v70.__end_ - v70.__begin_;
              v12 = v70.__end_ - v70.__begin_;
              v13 = v12 + 1;
              if ((v12 + 1) >> 62)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v14 = v70.__end_cap_.__value_ - v70.__begin_;
              if ((v70.__end_cap_.__value_ - v70.__begin_) >> 1 > v13)
              {
                v13 = v14 >> 1;
              }

              if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v15 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v13;
              }

              if (v15)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v15);
              }

              v16 = (4 * v12);
              *v16 = 0;
              end = v16 + 1;
              memcpy(0, begin, v11);
              v70.__begin_ = 0;
              v70.__end_cap_.__value_ = 0;
              if (begin)
              {
                operator delete(begin);
              }
            }

            else
            {
              *v70.__end_ = 0;
              ++end;
            }

            v70.__end_ = end;
            v17 = *(*(v6 + 8) + 56);
            *(v6 + 40) = v17;
            v18 = *(v17 + 58) == 1;
            v9 = 16;
            if (v18)
            {
              v9 = 32;
            }
          }

          else
          {
            v9 = 16;
          }

          v67 = v9;
          v19 = v70.__begin_;
          if (v70.__begin_ != end)
          {
            v21 = *(v6 + 248);
            v20 = *(v6 + 256);
            if (v21 == v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = 0;
              v66 = *(v6 + 256);
              do
              {
                v23 = *v21;
                if (*(*v21 + 48) == 1)
                {
                  if (*(v23 + 88) != v22)
                  {
                    v68 = v22;
                    if (v22)
                    {
                      v24 = ggl::Batcher::commit((v6 + 144), 0xC8u, v7);
                      if (v24[1] != *v24)
                      {
                        v26 = v70.__begin_;
                        v25 = v70.__end_;
                        if (v70.__begin_ != v70.__end_)
                        {
                          v27 = v24;
                          do
                          {
                            v28 = *v26;
                            v71 = &off_1F2A5D8B8;
                            v29 = v6 + 16 + (v28 << 7);
                            v30 = *(v29 + 8);
                            v31 = *(v29 + 24);
                            v74 = *(v29 + 40);
                            v73 = v31;
                            v72 = v30;
                            v32 = *(v29 + 56);
                            v33 = *(v29 + 72);
                            v34 = *(v29 + 88);
                            v78 = *(v29 + 104);
                            v77 = v34;
                            v76 = v33;
                            v75 = v32;
                            v35 = *(v6 + 232);
                            v36 = v35[1];
                            if (v36 == *(v6 + 240))
                            {
                              v35 = *v35;
                              if (!v35)
                              {
                                v35 = malloc_type_malloc(120 * v36 + 16, 0x1020040EDED9539uLL);
                                *v35 = 0;
                                v35[1] = 0;
                                **(v6 + 232) = v35;
                              }

                              *(v6 + 232) = v35;
                              v36 = v35[1];
                            }

                            v37 = &v35[15 * v36];
                            v35[1] = v36 + 1;
                            v37[2] = &off_1F2A5D8B8;
                            v38 = v72;
                            v39 = v73;
                            *(v37 + 7) = v74;
                            *(v37 + 5) = v39;
                            *(v37 + 3) = v38;
                            v40 = v75;
                            v41 = v76;
                            v42 = v77;
                            *(v37 + 15) = v78;
                            *(v37 + 13) = v42;
                            *(v37 + 11) = v41;
                            *(v37 + 9) = v40;
                            ggl::RenderItem::~RenderItem(&v71);
                            v37[10] = v68;
                            v43 = *v27;
                            v37[13] = *v27;
                            v37[14] = (v27[1] - v43) >> 4;
                            std::function<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v81, v28, (v37 + 2));
                            ++v26;
                          }

                          while (v26 != v25);
                        }
                      }
                    }

                    v23 = *v21;
                    v22 = *(*v21 + 88);
                    v20 = v66;
                  }

                  ggl::Batcher::addRange(v6 + 144, (v23 + v67));
                }

                ++v21;
              }

              while (v21 != v20);
              v19 = v70.__begin_;
            }

            v44 = ggl::Batcher::commit((v6 + 144), 0xC8u, v7);
            if (v44[1] != *v44)
            {
              v45 = v70.__end_;
              if (v19 != v70.__end_)
              {
                v46 = v44;
                v69 = v22;
                do
                {
                  v47 = *v19;
                  v71 = &off_1F2A5D8B8;
                  v48 = v6 + 16 + (v47 << 7);
                  v49 = *(v48 + 8);
                  v50 = *(v48 + 24);
                  v74 = *(v48 + 40);
                  v73 = v50;
                  v72 = v49;
                  v51 = *(v48 + 56);
                  v52 = *(v48 + 72);
                  v53 = *(v48 + 88);
                  v78 = *(v48 + 104);
                  v77 = v53;
                  v76 = v52;
                  v75 = v51;
                  v54 = *(v6 + 232);
                  v55 = v54[1];
                  if (v55 == *(v6 + 240))
                  {
                    v54 = *v54;
                    if (!v54)
                    {
                      v54 = malloc_type_malloc(120 * v55 + 16, 0x1020040EDED9539uLL);
                      *v54 = 0;
                      v54[1] = 0;
                      **(v6 + 232) = v54;
                    }

                    *(v6 + 232) = v54;
                    v55 = v54[1];
                  }

                  v56 = &v54[15 * v55];
                  v54[1] = v55 + 1;
                  v56[2] = &off_1F2A5D8B8;
                  v57 = v72;
                  v58 = v73;
                  *(v56 + 7) = v74;
                  *(v56 + 5) = v58;
                  *(v56 + 3) = v57;
                  v59 = v75;
                  v60 = v76;
                  v61 = v77;
                  *(v56 + 15) = v78;
                  *(v56 + 13) = v61;
                  *(v56 + 11) = v60;
                  *(v56 + 9) = v59;
                  ggl::RenderItem::~RenderItem(&v71);
                  v56[10] = v69;
                  v62 = *v46;
                  v56[13] = *v46;
                  v56[14] = (v46[1] - v62) >> 4;
                  std::function<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v81, v47, (v56 + 2));
                  ++v19;
                }

                while (v19 != v45);
                v19 = v70.__begin_;
              }
            }
          }

          if (v19)
          {
            v70.__end_ = v19;
            operator delete(v19);
          }

          v4 = a2;
          v3 = a3;
          v5 = v65;
        }

        std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v80);
      }

      result = std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v79);
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

void sub_1B308286C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 128);
  std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 160);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B308323C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C62190](v35, 0x1020C40A59E487DLL);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::function<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4);
}

ggl::zone_mallocator *std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(ggl::zone_mallocator *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(result + 1);
  v6 = v4[10];
  v5 = v4[11];
  if (v6 >= v5)
  {
    v8 = v4[9];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
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

    v22[4] = v4 + 12;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(result);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v4[9];
    v18 = v4[10] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v4[9];
    v4[9] = v19;
    v4[10] = v7;
    v21 = v4[11];
    v4[11] = v16;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v4[10] = v7;
  return result;
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2AAB8;
  a2[1] = v2;
  return result;
}

uint64_t __Block_byref_object_copy__27085(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *a1;
    v14 = a1[1];
    v15 = 12 * v7 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = 12 * v7 + *a1 - v14;
      do
      {
        v17 = *v13;
        *(v16 + 8) = v13[2];
        *v16 = v17;
        v16 += 12;
        v13 += 3;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  a1[1] = v6;
}

uint64_t std::__split_buffer<std::unique_ptr<md::RouteLineArrowLayer>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t (****std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteLineArrowRibbon>(v4, v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineArrowBatchKey,std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineArrowBatchKey>,std::equal_to<md::RouteLineArrowBatchKey>,true>,std::__unordered_map_equal<md::RouteLineArrowBatchKey,std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineArrowBatchKey>,std::hash<md::RouteLineArrowBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<md::RouteLineArrowBatchKey const,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,0>((v2 + 2));
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

void std::__destroy_at[abi:nn200100]<std::pair<md::RouteLineArrowBatchKey const,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,0>(uint64_t a1)
{
  v3 = a1 + 16;
  std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::RouteLineArrowBatchKey const,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void md::RouteLineArrowRibbon::~RouteLineArrowRibbon(md::RouteLineArrowRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

unint64_t md::TrafficSkeletonResourceFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a3 + 8);
  gdc::ResourceKey::getInt32(v6, 0);
  gdc::ResourceKey::getInt32(v6, 1u);
  gdc::ResourceKey::getInt32(v6, 2u);
  [v5 size];
  [v5 scale];
  v7 = *(a1 + 712);
  v8 = GEOTileKeyMake();
  if (v7 <= 0x19 && ((1 << v7) & 0x200101C) != 0)
  {
    v9 = 128;
  }

  else
  {
    v9 = (v7 == 26) << 7;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFF7FLL;

  return v9 | v10;
}

void md::TrafficSkeletonResourceFetcher::~TrafficSkeletonResourceFetcher(md::TrafficSkeletonResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TrafficSkeletonTileDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2ABD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MeshSetStorage::prepareStorage(uint64_t this, ResourceAccessor *a2)
{
  if ((*(this + 40) & 1) == 0 && *(this + 32) && *this && *(this + 8))
  {
    v2 = *(this + 16);
    if (v2 != (this + 24))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = v2[4];
        v6 = (v3 + v5[1] - 1) / v5[1] * v5[1];
        v3 = v6 + v5[2];
        v5[4] = v6;
        v5[5] = v3;
        v7 = v5[3] + v4;
        v5[6] = v4;
        v5[7] = v7;
        v8 = v2[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v2[2];
            v10 = *v9 == v2;
            v2 = v9;
          }

          while (!v10);
        }

        v4 = v7;
        v2 = v9;
      }

      while (v9 != (this + 24));
    }

    operator new();
  }

  return this;
}

void std::__shared_ptr_emplace<ggl::BufferData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5CD00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::MeshSetStorage::buildSubVertexData(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if ((*(a2 + 40) & 1) != 0 && a3 && *a3 == a2 && (v5 = a3[1] * a5, v6 = a3[8], v7 = a3[4], v6 + v5 <= (a3[5] - v7)))
  {
    v11[0] = v7 + v6;
    v11[1] = v7 + v6 + v5;
    a3[8] = v6 + v5;
    v8 = *(a2 + 48);
    v12 = a4;
    v9 = a3[14];
    if (v9)
    {
      return (*(*v9 + 48))(a3[14], &v12, v8, v11);
    }

    else
    {
      v10 = std::__throw_bad_function_call[abi:nn200100]();
      return md::MeshSetStorage::buildSubIndexData(v10);
    }
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void *md::MeshSetStorage::buildSubIndexData(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 40))
  {
    if (a3)
    {
      if (*a3 == a2)
      {
        v5 = a3[9];
        v6 = a3[6];
        if (v5 + a5 <= (a3[7] - v6))
        {
          v7 = v6 + v5;
          v8 = v6 + v5 + a5;
          a3[9] = v5 + a5;
          operator new();
        }
      }
    }
  }

  *result = 0;
  result[1] = 0;
  return result;
}

void md::MeshSetStorage::finalize(md::MeshSetStorage *this)
{
  ggl::BufferMemory::BufferMemory(v3);
  ggl::BufferMemory::operator=(this + 80, v3);
  ggl::BufferMemory::~BufferMemory(v3);
  ggl::BufferMemory::BufferMemory(v3);
  ggl::BufferMemory::operator=(this + 128, v3);
  ggl::BufferMemory::~BufferMemory(v3);
  v2 = *(this + 3);
  this = (this + 24);
  std::__tree<gdc::LayerDataWithWorld>::destroy(v2);
  *this = 0;
  *(this + 1) = 0;
  *(this - 1) = this;
}

void md::mun::MuninViewData::~MuninViewData(md::mun::MuninViewData *this)
{
  md::mun::MuninViewData::~MuninViewData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2AC38;
  v2 = *(this + 65);
  if (v2)
  {
    *(this + 66) = v2;
    operator delete(v2);
  }

  v3 = *(this + 60);
  if (v3 != *(this + 62))
  {
    free(v3);
  }

  v5 = (this + 176);
  std::vector<md::mun::MuninViewMesh>::__destroy_vector::operator()[abi:nn200100](&v5);
  *this = &unk_1F2A60328;
  v4 = *(this + 4);
  if (v4 != *(this + 6))
  {
    free(v4);
  }
}

__n128 md::stringFromLabelOutcome(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  switch(a2)
  {
    case 0:
      *(a1 + 23) = 10;
      *(a1 + 8) = 28271;
      v2 = "NoPosition";
      goto LABEL_45;
    case 1:
      *(a1 + 23) = 7;
      *a1 = 1951625038;
      v9 = 1701607796;
      goto LABEL_30;
    case 2:
      *(a1 + 23) = 9;
      *(a1 + 8) = 110;
      v2 = "OffScreen";
      goto LABEL_45;
    case 3:
      *(a1 + 23) = 7;
      *a1 = 1885957187;
      v8 = 28784;
      goto LABEL_27;
    case 4:
      *(a1 + 23) = 9;
      *(a1 + 8) = 118;
      v2 = "HideInNav";
      goto LABEL_45;
    case 5:
      *(a1 + 23) = 9;
      *(a1 + 8) = 101;
      v2 = "DebugHide";
      goto LABEL_45;
    case 6:
      *(a1 + 23) = 7;
      *a1 = 540811386;
      v9 = 1852402976;
      goto LABEL_30;
    case 7:
      *(a1 + 23) = 7;
      *a1 = 540942458;
      v9 = 2019650848;
      goto LABEL_30;
    case 8:
      *(a1 + 23) = 10;
      *(a1 + 8) = 25964;
      v2 = "NotVisible";
      goto LABEL_45;
    case 9:
      *(a1 + 23) = 12;
      *(a1 + 8) = 1684630625;
      v2 = "HikerInvalid";
      goto LABEL_45;
    case 10:
      *(a1 + 23) = 13;
      v5 = "MatrixInvalid";
      goto LABEL_34;
    case 11:
      *(a1 + 23) = 17;
      *(a1 + 16) = 115;
      v3 = "LoadingGlyphInfos";
      goto LABEL_49;
    case 12:
      *(a1 + 23) = 12;
      *(a1 + 8) = 1936680558;
      v2 = "NoGlyphInfos";
      goto LABEL_45;
    case 13:
      *(a1 + 23) = 7;
      *a1 = 1968271182;
      v9 = 1935958389;
      goto LABEL_30;
    case 14:
      *(a1 + 23) = 6;
      *a1 = 1700032334;
      v4 = 29816;
      goto LABEL_32;
    case 15:
      *(a1 + 23) = 14;
      v7 = "LoadingArtwork";
      goto LABEL_38;
    case 16:
      *(a1 + 23) = 9;
      *(a1 + 8) = 107;
      v2 = "NoArtwork";
      goto LABEL_45;
    case 17:
      *(a1 + 23) = 16;
      v3 = "DuplicateArtwork";
      goto LABEL_49;
    case 18:
      *(a1 + 23) = 6;
      *a1 = 1802398027;
      v4 = 25701;
LABEL_32:
      *(a1 + 4) = v4;
      return result;
    case 19:
      *(a1 + 23) = 12;
      *(a1 + 8) = 1684370529;
      v2 = "Extrapolated";
      goto LABEL_45;
    case 20:
      *(a1 + 23) = 8;
      v11 = 0x64696C6C6F43;
      goto LABEL_40;
    case 21:
      *(a1 + 23) = 7;
      *a1 = 1969513796;
      v8 = 28789;
LABEL_27:
      v9 = v8 | 0x64650000;
LABEL_30:
      *(a1 + 3) = v9;
      return result;
    case 22:
      *(a1 + 23) = 8;
      v11 = 0x64756C63634FLL;
LABEL_40:
      v10 = v11 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      goto LABEL_46;
    case 23:
      *(a1 + 23) = 16;
      v3 = "BuildingOccluded";
      goto LABEL_49;
    case 24:
      *(a1 + 23) = 14;
      v7 = "GroundOccluded";
      goto LABEL_38;
    case 25:
      *(a1 + 23) = 22;
      result.n128_u64[0] = *"RequestingExternalMesh";
      qmemcpy(a1, "RequestingExternalMesh", 22);
      return result;
    case 26:
      *(a1 + 23) = 18;
      *(a1 + 16) = 26739;
      v3 = "FailedExternalMesh";
      goto LABEL_49;
    case 27:
      *(a1 + 23) = 12;
      *(a1 + 8) = 1702521171;
      v2 = "ZeroTextSize";
      goto LABEL_45;
    case 28:
      *(a1 + 23) = 10;
      *(a1 + 8) = 28261;
      v2 = "Overridden";
      goto LABEL_45;
    case 29:
      *(a1 + 23) = 9;
      *(a1 + 8) = 101;
      v2 = "SceneHide";
      goto LABEL_45;
    case 30:
      *(a1 + 23) = 14;
      v7 = "DeactivateHide";
      goto LABEL_38;
    case 31:
      *(a1 + 23) = 8;
      v10 = 0x7973754268746150;
      goto LABEL_46;
    case 32:
      *(a1 + 23) = 14;
      v7 = "NotDisplayable";
LABEL_38:
      *a1 = *v7;
      *(a1 + 6) = *(v7 + 6);
      return result;
    case 33:
      *(a1 + 23) = 13;
      v5 = "FeatureHidden";
LABEL_34:
      *a1 = *v5;
      *(a1 + 5) = *(v5 + 5);
      return result;
    case 34:
      *(a1 + 23) = 9;
      *(a1 + 8) = 103;
      v2 = "NotFacing";
LABEL_45:
      v10 = *v2;
LABEL_46:
      *a1 = v10;
      return result;
    case 35:
      *(a1 + 23) = 16;
      v3 = "CurvedUpsideDown";
      goto LABEL_49;
    case 36:
      *(a1 + 23) = 16;
      v3 = "MaxLabelsReached";
LABEL_49:
      result = *v3;
      *a1 = *v3;
      break;
    case 37:
      *(a1 + 23) = 2;
      *a1 = 19279;
      break;
    case 38:
      *(a1 + 23) = 4;
      *a1 = 1701736270;
      break;
    default:
      return result;
  }

  return result;
}

void mre::GGLResourceStore::~GGLResourceStore(mre::GGLResourceStore *this)
{
  mre::GGLResourceStore::~GGLResourceStore(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2AC68;
  v2 = *(this + 119);
  v3 = *(this + 120);
  while (v2 != v3)
  {
    if (!v2[24])
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }
    }

    v2 += 32;
  }

  v4 = *(this + 105) - *(this + 104);
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 4;
    do
    {
      v7 = (*(*(this + 107) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (v5 & 0x3F));
      if (!v7[32] && *v7)
      {
        (*(**v7 + 8))(*v7);
      }

      ++v5;
    }

    while (v6 != v5);
  }

  v8 = *(this + 122);
  if (v8)
  {
    *(this + 123) = v8;
    operator delete(v8);
  }

  v9 = *(this + 119);
  if (v9)
  {
    *(this + 120) = v9;
    operator delete(v9);
  }

  v10 = *(this + 116);
  if (v10)
  {
    *(this + 117) = v10;
    operator delete(v10);
  }

  v11 = *(this + 113);
  if (v11)
  {
    *(this + 114) = v11;
    operator delete(v11);
  }

  ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::~storage(this + 100);
  ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::~storage(this + 87);
  v12 = *(this + 84);
  if (v12)
  {
    *(this + 85) = v12;
    operator delete(v12);
  }

  v13 = *(this + 81);
  if (v13)
  {
    *(this + 82) = v13;
    operator delete(v13);
  }

  *(this + 55) = &unk_1F2A2ACD0;
  v14 = *(this + 78);
  if (v14)
  {
    *(this + 79) = v14;
    operator delete(v14);
  }

  v15 = *(this + 75);
  if (v15)
  {
    *(this + 76) = v15;
    operator delete(v15);
  }

  ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(this + 55);
  std::condition_variable::~condition_variable(this + 8);
  std::condition_variable::~condition_variable(this + 7);
  std::mutex::~mutex((this + 272));
  std::condition_variable::~condition_variable((this + 216));
  std::condition_variable::~condition_variable((this + 168));
  std::mutex::~mutex((this + 104));
  v16 = *(this + 10);
  if (v16)
  {
    do
    {
      v17 = *v16;
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = *(this + 8);
  *(this + 8) = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(this + 5);
  if (v19)
  {
    do
    {
      v20 = *v19;
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = *(this + 3);
  *(this + 3) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(this + 2);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }
}

void *ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A2AD30;
    ;
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<mre::TextureHandle,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A2ACF0;
    ;
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 13));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<mre::TextureHandle,64ul>::~sparse_set(a1);
}

void *ecs2::sparse_set<mre::TextureHandle,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A2AD10;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<mre::TextureHandle,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<mre::TextureHandle,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<mre::TextureHandle,mre::TextureStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A2ACD0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<mre::TextureHandle,mre::TextureStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A2ACD0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(a1);
}

void ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::~storage(void *a1)
{
  ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t mre::GGLResourceStore::getBuffer(uint64_t a1, unint64_t a2)
{
  BufferStorage = mre::GGLResourceStore::getBufferStorage(a1, a2);
  if (BufferStorage)
  {
    return BufferStorage + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mre::GGLResourceStore::getTexture(mre::GGLResourceStore *this, TextureHandle a2, int a3)
{
  if (a3)
  {
    TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(this, a2);
  }

  else
  {
    TextureStorageTracked = mre::GGLResourceStore::getTextureStorage(this, a2, 0);
  }

  if (TextureStorageTracked)
  {
    return TextureStorageTracked + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mre::GGLResourceStore::getBufferDescriptor(uint64_t a1, unint64_t a2)
{
  BufferStorage = mre::GGLResourceStore::getBufferStorage(a1, a2);
  if (BufferStorage)
  {
    return BufferStorage + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t mre::GGLResourceStore::getTextureDescriptor(mre::GGLResourceStore *this, TextureHandle a2)
{
  TextureStorage = mre::GGLResourceStore::getTextureStorage(this, a2, 0);
  if (TextureStorage)
  {
    return TextureStorage + 16;
  }

  else
  {
    return 0;
  }
}

void mre::GGLResourceStore::createTexture()
{
  operator new();
}

{
  operator new();
}

void *std::vector<mre::TextureHandle>::reserve(void *result)
{
  if (result[2] - *result <= 0x3FFuLL)
  {
    operator new();
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::__unordered_map_hasher<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,mre::TextureKeyHasher,std::equal_to<mre::TextureKey>,true>,std::__unordered_map_equal<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::equal_to<mre::TextureKey>,mre::TextureKeyHasher,true>,std::allocator<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>>>::find<mre::TextureKey>(void *a1, uint64_t *a2, unsigned __int8 a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (&a2[8 * a3 - 0xE44323405AC1F58] - 0x3A3AA7D820E2E4E6) ^ (a3 - 0x61C8864680B583EBLL);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (&a2[8 * a3 - 0xE44323405AC1F58] - 0x3A3AA7D820E2E4E6) ^ (a3 - 0x61C8864680B583EBLL);
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

uint64_t md::LabelSettingsStyleCache::muninPointStyle(md::LabelSettingsStyleCache *this)
{
  result = *(this + 2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1B3088294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t overrideValueWithStyle<(gss::PropertyID)346,unsigned int>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x15Au, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(346, 1, *(*a1 + 24));
    *a2 = result;
  }

  return result;
}

uint64_t overrideValueWithStyle<(gss::PropertyID)357,float>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x165u, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(357, 1, *(*a1 + 24), 0);
    *a2 = v5;
  }

  return result;
}

uint64_t overrideValueWithStyle<(gss::PropertyID)359,float>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x167u, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(359, 1, *(*a1 + 24), 0);
    *a2 = v5;
  }

  return result;
}

uint64_t overrideValueWithStyle<(gss::PropertyID)360,float>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x168u, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(360, 1, *(*a1 + 24), 0);
    *a2 = v5;
  }

  return result;
}

uint64_t overrideValueWithStyle<(gss::PropertyID)361,float>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x169u, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(361, 1, *(*a1 + 24), 0);
    *a2 = v5;
  }

  return result;
}

uint64_t md::LabelSettingsStyleCache::muninRoadStyle(md::LabelSettingsStyleCache *this)
{
  v2 = *MEMORY[0x1E69E9840];
  result = *(this + 3);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1B3088914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t overrideValueWithStyle<(gss::PropertyID)347,float>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x15Bu, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(347, 1, *(*a1 + 24), 0);
    *a2 = v5;
  }

  return result;
}

uint64_t md::RoadTileData::estimatedCost(md::RoadTileData *this)
{
  v2 = *(this + 91);
  if (v2)
  {
    v3 = md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::estimatedCost(*(v2 + 32), *(v2 + 40));
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 92);
  if (v4)
  {
    v3 += md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::estimatedCost(*(v4 + 32), *(v4 + 40));
  }

  v5 = *(this + 93);
  if (v5)
  {
    v3 += md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::estimatedCost(*(v5 + 32), *(v5 + 40));
  }

  v6 = *(this + 94);
  if (v6)
  {
    v3 += md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::estimatedCost(*(v6 + 32), *(v6 + 40));
  }

  return v3;
}

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::estimatedCost(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = **(*a1 + 64);
    if (v3)
    {
      v3 = *(v3 + 48) - *(v3 + 40);
    }

    v4 = *(*a1 + 96);
    if (v4)
    {
      v3 = *(v4 + 48) + v3 - *(v4 + 40);
    }

    v2 += v3;
    a1 += 8;
  }

  while (a1 != a2);
  return v2;
}

void md::RoadTileData::~RoadTileData(md::RoadTileData *this)
{
  md::RoadTileData::~RoadTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2AD50;
  *(this + 80) = &unk_1F2A2AD90;
  v2 = *(this + 116);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 114);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v11 = (this + 880);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v11);
  v4 = *(this + 109);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 832));
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::~__hash_table(this + 776);
  v5 = *(this + 96);
  *(this + 96) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 95);
  *(this + 95) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 94);
  *(this + 94) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 93);
  *(this + 93) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 92);
  *(this + 92) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 91);
  *(this + 91) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  md::MapTileData::~MapTileData(this);
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *>(v4, v3);
  }

  return a1;
}

void md::RoadTileData::updateWithContext(uint64_t a1, md::LayoutContext *a2, int a3, uint64_t *a4)
{
  v8 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  v9 = 1 << *(a1 + 169);
  v10 = 1.0 / v9;
  v11 = *(a1 + 172);
  v12 = *(a1 + 176);
  v13 = md::LayoutContext::cameraType(a2);
  if (gdc::ToCoordinateSystem(v13))
  {
    v14 = 1 << *(a1 + 169);
    v15 = *(a1 + 176);
    v16 = 1.0 / v14;
    v17 = v14 + ~*(a1 + 172);
    v49 = v16 * v15;
    *&v50 = v16 * v17;
    *(&v50 + 1) = v16 + v15 * v16;
    *&v51 = v16 + v17 * v16;
    gdc::GlobeTileUtils::boundsFromMercatorRect(v46, &v49, 0.0, 0.0);
    geo::OrientedBox<double,3u,double,double>::toMatrix(&v49, v46);
  }

  else
  {
    v51 = 0u;
    v50 = 0u;
    v53 = 0u;
    v54 = 0u;
    v49 = 1.0 / v9;
    v52 = v49;
    v55 = v49;
    v56 = 0;
    v57 = a3 + v10 * v12;
    v58 = v10 * (v9 + ~v11);
    v59 = xmmword_1B33B0740;
  }

  v18 = 0;
  v19 = v8 + 101;
  do
  {
    v20 = 0;
    v21 = &v49;
    do
    {
      v22 = 0;
      v23 = 0.0;
      v24 = v19;
      do
      {
        v25 = *v24;
        v24 += 4;
        v23 = v23 + v21[v22++] * v25;
      }

      while (v22 != 4);
      *(&v46[2 * v20++] + v18) = v23;
      v21 += 4;
    }

    while (v20 != 4);
    ++v18;
    ++v19;
  }

  while (v18 != 4);
  v26 = 0;
  v27 = v46;
  do
  {
    v29 = *v27;
    v28 = v27[1];
    v27 += 2;
    v48[v26++] = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v28);
  }

  while (v26 != 4);
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v46, *(a1 + 904), 1);
  v30 = v47;
  v31 = v48[1];
  *v47 = v48[0];
  *(v30 + 1) = v31;
  v32 = v48[3];
  *(v30 + 2) = v48[2];
  *(v30 + 3) = v32;
  v33 = v8[471] * v8[173] / (v8[171] * v10);
  v30[16] = v33;
  ggl::BufferMemory::~BufferMemory(v46);
  v34 = *a4;
  ggl::BufferMemory::BufferMemory(v45);
  ggl::ResourceAccessor::accessConstantData(v46, 0, v34, 0);
  ggl::BufferMemory::operator=(v45, v46);
  ggl::BufferMemory::~BufferMemory(v46);
  v35 = *(a1 + 920);
  ggl::BufferMemory::BufferMemory(v44);
  ggl::ResourceAccessor::accessConstantData(v46, 0, v35, 1);
  ggl::BufferMemory::operator=(v44, v46);
  ggl::BufferMemory::~BufferMemory(v46);
  v36 = 0;
  v37 = v45[5];
  v38 = v44[5];
  do
  {
    *(v38 + v36) = *(v37 + v36);
    v36 += 4;
  }

  while (v36 != 16);
  for (i = 0; i != 12; i += 4)
  {
    *(v38 + 16 + i) = *(v37 + 16 + i);
  }

  v40 = 0;
  v41 = v37 + 32;
  v42 = v38 + 32;
  do
  {
    for (j = 0; j != 16; j += 4)
    {
      *(v42 + j) = *(v41 + j);
    }

    ++v40;
    v42 += 16;
    v41 += 16;
  }

  while (v40 != 16);
  ggl::BufferMemory::~BufferMemory(v44);
  ggl::BufferMemory::~BufferMemory(v45);
}

uint64_t md::ARAssetOcclusionMeshLayerDataSource::descriptionForKey@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  UInt64 = gdc::ResourceKey::getUInt64(v4, 0);
  v6 = gdc::ResourceKey::getUInt64(v4, 1u);
  v7 = gdc::ResourceKey::getUInt64(v4, 2u);
  std::ostringstream::basic_ostringstream[abi:nn200100](&v20);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, "gdc::LayerDataRequestKey<Type:", 30);
  v8 = *(a1 + 8);
  if (v8 > 0x51)
  {
    v9 = "<Invalid>";
  }

  else
  {
    v9 = off_1E7B30210[v8];
  }

  v10 = strlen(v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v9, v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, ", Asset ID: ", 12);
  v11 = MEMORY[0x1B8C61CF0](&v20, UInt64);
  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ", Type: ", 8);
  v13 = MEMORY[0x1B8C61C90](v12, v6);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ", UniqueId: ", 12);
  v15 = MEMORY[0x1B8C61CF0](v14, v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, ">", 1);
  if ((v27 & 0x10) != 0)
  {
    v17 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v17 = v23;
    }

    locale = v22[4].__locale_;
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v16 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    locale = v22[1].__locale_;
    v17 = v22[3].__locale_;
  }

  v16 = v17 - locale;
  if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  a2[23] = v16;
  if (v16)
  {
    memmove(a2, locale, v16);
  }

LABEL_17:
  a2[v16] = 0;
  v20 = *MEMORY[0x1E69E54E8];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v28);
}

void sub_1B3089314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 + *(*MEMORY[0x1E69E54E8] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

void md::ARAssetOcclusionMeshLayerDataSource::createLayerData(unsigned __int16 **a1@<X2>, void *a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap(&v8, 28, *a1, a1[1]);
  v5 = v8;
  v4 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  gdc::LayerDataSource::getResourceFromMap(&v8, 42, *a1, a1[1]);
  v7 = v8;
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (v5 | v7)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void sub_1B3089794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::ARAssetOcclusionMeshData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2AE48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ARAssetOcclusionMeshLayerDataSource::constructRequests(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v14, *v4);
      v5 = v15;
      UInt64 = gdc::ResourceKey::getUInt64(v15, 0);
      v7 = gdc::ResourceKey::getUInt64(v5, 1u);
      v8 = **v4;
      v9 = *(*v4 + 112);
      v17[0] = UInt64;
      v17[1] = 0;
      gdc::ResourceKey::ResourceKey(v11, v8, v7, v17, 2, v9);
      v10 = *v4;
      v4 += 2;
      gdc::LayerDataRequest::request(v10, v11, 0);
      if (v12 != v13)
      {
        free(v12);
      }

      if (v15 != v16)
      {
        free(v15);
      }
    }

    while (v4 != a3);
  }
}

void md::ARAssetOcclusionMeshLayerDataSource::~ARAssetOcclusionMeshLayerDataSource(md::ARAssetOcclusionMeshLayerDataSource *this)
{
  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::DaVinciDecalBuilder::DecalDescription>::push_back[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v10 = *a1;
    v11 = &v3[-*a1];
    v12 = 0x6DB6DB6DB6DB6DB7 * (v11 >> 3) + 1;
    if (v12 > 0x492492492492492)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v10) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x249249249249249)
    {
      v14 = 0x492492492492492;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v15 = 8 * (v11 >> 3);
    *v15 = *a2;
    *(v15 + 8) = *(a2 + 4);
    *(v15 + 12) = *(a2 + 12);
    *(v15 + 20) = *(a2 + 5);
    *(v15 + 24) = a2[3];
    *(v15 + 32) = *(a2 + 8);
    *(v15 + 36) = *(a2 + 9);
    *(v15 + 48) = *(a2 + 12);
    v9 = v15 + 56;
    v16 = v15 - v11;
    *(v15 + 40) = a2[5];
    if (v10 != v3)
    {
      v17 = v16;
      do
      {
        v18 = *v10;
        *(v17 + 8) = *(v10 + 4);
        *v17 = v18;
        v19 = *(v10 + 12);
        *(v17 + 20) = *(v10 + 5);
        *(v17 + 12) = v19;
        v20 = *(v10 + 3);
        *(v17 + 32) = *(v10 + 8);
        *(v17 + 24) = v20;
        *(v17 + 36) = *(v10 + 9);
        v21 = *(v10 + 5);
        *(v17 + 48) = *(v10 + 12);
        *(v17 + 40) = v21;
        v10 += 56;
        v17 += 56;
      }

      while (v10 != v3);
      v10 = *a1;
    }

    *a1 = v16;
    a1[1] = v9;
    a1[2] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 4) = *(a2 + 4);
    *v3 = v5;
    v6 = *(a2 + 12);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 12) = v6;
    v7 = a2[3];
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 3) = v7;
    *(v3 + 9) = *(a2 + 9);
    v8 = a2[5];
    *(v3 + 12) = *(a2 + 12);
    *(v3 + 5) = v8;
    v9 = (v3 + 56);
  }

  a1[1] = v9;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<gm::Matrix<float,3,1>>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void md::DaVinciDecalBuilder::buildBatch(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v41 = 0;
  *v40 = 0u;
  v39 = 0;
  __p = 0u;
  v37 = 0;
  *__src = 0u;
  v7 = a4[1] - *a4;
  v8 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
  if (v7)
  {
    if (v8 <= 0x2E8BA2E8BA2E8BALL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecal>>(v8);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::vector<unsigned short>::reserve(v40, 0);
  v9 = 0xB6DB6DB6DB6DB6DCLL * ((a4[1] - *a4) >> 3);
  if (v9 > (v39 - __p) >> 3)
  {
    if (!(v9 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v9);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = (*(&__p + 1) - __p) >> 3;
  if (v10 > (v37 - __src[0]) >> 2)
  {
    if (!(v10 >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = *a4;
  if (*a4 != a4[1])
  {
    v12 = 0;
    v35 = *(*a5 + 1976) + 12 * *(*v11 + 4);
    do
    {
      *(&v45 + v12 * 4) = -*&v11[v12 + 6];
      ++v12;
    }

    while (v12 != 3);
    v21 = v11[9];
    __n = v45;
    v20 = v46;
    v47 = v21;
    v13 = gm::Quaternion<float>::operator*(&v45, (v11 + 3));
    v14 = 0;
    v27[0] = __PAIR64__(v15, LODWORD(v13));
    LODWORD(v27[1]) = v16;
    do
    {
      *(&v28 + v14) = -*(v27 + v14);
      v14 += 4;
    }

    while (v14 != 12);
    v32 = v28;
    v33 = v29;
    *&v17 = __n;
    *(&v17 + 1) = __PAIR64__(v21, v20);
    *v34 = v17;
    gm::Quaternion<float>::toMatrix(&v28, v34);
    gm::Matrix<float,4,4>::Matrix<4,void>(&v45, &v28, &v32);
    for (i = 0; i != 3; ++i)
    {
      *(&v28 + i * 4) = *&v11[i + 10] * 0.5;
    }

    v30 = v28;
    v31 = v29;
    memset(&v43[5], 0, 28);
    *&v43[1] = 0u;
    v43[0] = 1065353216;
    v43[5] = 1065353216;
    v43[10] = 1065353216;
    v44 = xmmword_1B33B0C60;
    v25 = 0;
    v24 = 0u;
    memset(&v23[4], 0, 32);
    v26 = 1065353216;
    *v23 = 0.5 / *&v28;
    *&v23[20] = -0.5 / *(&v28 + 1);
    *(&v24 + 1) = 0.5 / v29;
    gm::operator*<float,4,4,4>(v27, v43, v23);
    gm::operator*<float,4,4,4>(&v28, v27, &v45);
    for (j = 0; j != 12; j += 4)
    {
      *(v27 + j) = -*(&v30 + j);
    }

    memset(v23, 0, 32);
    *&v23[32] = 1065353216;
    v42 = 0;
    operator new();
  }

  operator new();
}

void sub_1B308B464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  v29 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v29;
    operator delete(v29);
  }

  v30 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v30;
    operator delete(v30);
  }

  v31 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v31;
    operator delete(v31);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void std::vector<md::DaVinciDecalBatch>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (v8 + 1 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v10;
    }

    v23 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecalBatch>>(v11);
    }

    v12 = 48 * v8;
    v20 = 0;
    v21 = v12;
    v22 = v12;
    v13 = a2[1];
    *v12 = *a2;
    *(v12 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = a2[2];
    *(v12 + 24) = 0;
    *(v12 + 16) = v14;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    std::vector<md::DaVinciDecal>::__init_with_size[abi:nn200100]<md::DaVinciDecal*,md::DaVinciDecal*>(v12 + 24, a2[3], a2[4], 0x2E8BA2E8BA2E8BA3 * ((a2[4] - a2[3]) >> 3));
    *&v22 = v22 + 48;
    v15 = *(a1 + 8);
    v16 = v21 + *a1 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::DaVinciDecalBatch>,md::DaVinciDecalBatch*>(*a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    v18 = *(a1 + 16);
    v19 = v22;
    *(a1 + 8) = v22;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v20 = v17;
    v21 = v17;
    std::__split_buffer<md::DaVinciDecalBatch>::~__split_buffer(&v20);
    v7 = v19;
  }

  else
  {
    v5 = a2[1];
    *v4 = *a2;
    v4[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = a2[2];
    v4[3] = 0;
    v4[2] = v6;
    v4[4] = 0;
    v4[5] = 0;
    std::vector<md::DaVinciDecal>::__init_with_size[abi:nn200100]<md::DaVinciDecal*,md::DaVinciDecal*>((v4 + 3), a2[3], a2[4], 0x2E8BA2E8BA2E8BA3 * ((a2[4] - a2[3]) >> 3));
    v7 = v4 + 6;
    *(a1 + 8) = v4 + 6;
  }

  *(a1 + 8) = v7;
}

void sub_1B308B704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::__split_buffer<md::DaVinciDecalBatch>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<md::DaVinciDecalBatch>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 6;
        std::__destroy_at[abi:nn200100]<md::DaVinciDecalBatch,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<md::DaVinciDecalBatch,0>(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecalBatch>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<md::DaVinciDecal>::__init_with_size[abi:nn200100]<md::DaVinciDecal*,md::DaVinciDecal*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x2E8BA2E8BA2E8BBLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecal>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::DaVinciDecalBatch>,md::DaVinciDecalBatch*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *v5 = 0;
      v5[1] = 0;
      v6 = v5[2];
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 16) = v6;
      *(a3 + 24) = 0;
      *(a3 + 24) = *(v5 + 3);
      *(a3 + 40) = v5[5];
      v5[3] = 0;
      v5[4] = 0;
      v5[5] = 0;
      v5 += 6;
      a3 += 48;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::DaVinciDecalBatch,0>(v4);
      v4 += 6;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<md::DaVinciDecalBatch>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:nn200100]<md::DaVinciDecalBatch,0>((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecal>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__shared_ptr_emplace<ggl::DaVinci::TexturedPositionCompressedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2AF40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__hash_table<std::__hash_value_type<GeoCodecsDaVinciMesh *,std::shared_ptr<md::TriConnectivity>>,std::__unordered_map_hasher<GeoCodecsDaVinciMesh *,std::__hash_value_type<GeoCodecsDaVinciMesh *,std::shared_ptr<md::TriConnectivity>>,std::hash<GeoCodecsDaVinciMesh *>,std::equal_to<GeoCodecsDaVinciMesh *>,true>,std::__unordered_map_equal<GeoCodecsDaVinciMesh *,std::__hash_value_type<GeoCodecsDaVinciMesh *,std::shared_ptr<md::TriConnectivity>>,std::equal_to<GeoCodecsDaVinciMesh *>,std::hash<GeoCodecsDaVinciMesh *>,true>,std::allocator<std::__hash_value_type<GeoCodecsDaVinciMesh *,std::shared_ptr<md::TriConnectivity>>>>::__emplace_unique_key_args<GeoCodecsDaVinciMesh *,std::piecewise_construct_t const&,std::tuple<GeoCodecsDaVinciMesh * const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1B308BFAC(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::deque<unsigned int>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x400)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(v13);
    }

    result[4] = v8 - 1024;
    v14 = *v5;
    result[1] = v5 + 8;
    result = std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(result, &v14);
    v5 = v3[1];
    v7 = v3[5];
    v9 = v3[4] + v7;
  }

  *(*&v5[(v9 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void sub_1B308C490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<unsigned int>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<md::TriConnectivity>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::TriConnectivity>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2AF78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::DaVinciDecalBuilder::buildBatch(std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,unsigned long long,std::vector<md::DaVinciDecalBuilder::DecalDescription> const&,std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *)::$_0,std::allocator<md::DaVinciDecalBuilder::buildBatch(std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,unsigned long long,std::vector<md::DaVinciDecalBuilder::DecalDescription> const&,std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *)::$_0>,BOOL ()(unsigned int)>::operator()(uint64_t a1, _DWORD *a2)
{
  v3 = 0;
  v105 = *MEMORY[0x1E69E9840];
  v4 = *(**(a1 + 8) + 12) + 3 * *a2;
  v5 = *(**(a1 + 16) + 2048);
  v6 = *(a1 + 32);
  v7 = **(a1 + 24);
  do
  {
    v8 = 0;
    v9 = v7 + 12 * *(v5 + 2 * (v4 + v3));
    v10 = *(v9 + 8);
    *&v97 = *v9;
    *(&v97 + 1) = v10 | 0x3F80000000000000;
    v11 = v6;
    do
    {
      v12 = 0;
      v13 = 0.0;
      do
      {
        v13 = v13 + (*(&v97 + v12) * *(v11 + 4 * v12));
        v12 += 4;
      }

      while (v12 != 16);
      *(&__p + v8++) = v13;
      v11 += 4;
    }

    while (v8 != 4);
    v14 = &v104[3 * v3];
    v15 = v100;
    *v14 = __p;
    v14[2] = v15;
    ++v3;
  }

  while (v3 != 3);
  v16 = 0;
  v97 = xmmword_1B33AFF10;
  v98 = 0x80000000800000;
  v17 = v104;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v19 = (&v97 + i * 4);
      v20 = *&v17[i];
      *v19 = fminf(v20, *(&v97 + i * 4));
      v19[3] = fmaxf(*(&v97 + i * 4 + 12), v20);
    }

    ++v16;
    v17 += 3;
  }

  while (v16 != 3);
  v21 = *(a1 + 40);
  if (v21[3] <= *&v97 || *v21 >= *(&v97 + 3))
  {
LABEL_19:
    result = 0;
    v30 = *(a1 + 48);
    v31 = *v30;
    if (*v30)
    {
      goto LABEL_82;
    }

    v94 = 0;
  }

  else
  {
    v22 = 0;
    v23 = &v98;
    v24 = v21 + 1;
    while (v22 != 2)
    {
      v25 = v22;
      if (v24[3] > *(v23 - 3))
      {
        v26 = *v24++;
        v27 = v26;
        v28 = *v23++;
        ++v22;
        if (v27 < v28)
        {
          continue;
        }
      }

      if (v25 <= 1)
      {
        goto LABEL_19;
      }

      break;
    }

    v94 = 1;
  }

  for (j = 0; j != 3; ++j)
  {
    v33 = *(*(**(a1 + 16) + 2048) + 2 * (v4 + j));
    v96 = *(*(**(a1 + 16) + 2048) + 2 * (v4 + j));
    v34 = *(a1 + 56);
    v35 = v34[1];
    if (v35)
    {
      v36 = vcnt_s8(v35);
      v36.i16[0] = vaddlv_u8(v36);
      if (v36.u32[0] > 1uLL)
      {
        v37 = v33;
        if (*&v35 <= v33)
        {
          v37 = v33 % v34[1];
        }
      }

      else
      {
        v37 = (v35.i32[0] - 1) & v33;
      }

      v38 = *(*v34 + 8 * v37);
      if (v38)
      {
        for (k = *v38; k; k = *k)
        {
          v40 = k[1];
          if (v40 == v33)
          {
            if (*(k + 8) == v33)
            {
              goto LABEL_67;
            }
          }

          else
          {
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
              break;
            }
          }
        }
      }
    }

    v41 = 0;
    v42 = **(a1 + 24) + 12 * v33;
    v44 = *v42;
    v43 = *(v42 + 4);
    v45 = *(v42 + 8);
    v46 = *(a1 + 64);
    *v95 = v44;
    *&v95[1] = v43;
    v95[2] = v45;
    v95[3] = 1065353216;
    do
    {
      v47 = 0;
      v48 = 0.0;
      do
      {
        v48 = v48 + (*&v95[v47] * *(v46 + 1 * v47));
        ++v47;
      }

      while (v47 != 4);
      *(&__p + v41++) = v48;
      v46 += 4;
    }

    while (v41 != 4);
    _KR00_8 = __p;
    v50 = *(a1 + 72);
    v52 = *v50;
    v51 = v50[1];
    __p = &v96;
    v53 = (v44 * 16804.0) | ((v43 * 16804.0) << 16);
    *(std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v34, v33) + 9) = (v51 - v52) >> 3;
    v54 = *(a1 + 72);
    v56 = v54[1];
    v55 = v54[2];
    if (v56 >= v55)
    {
      v58 = (v56 - *v54) >> 3;
      v59 = v58 + 1;
      if ((v58 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v60 = v55 - *v54;
      if (v60 >> 2 > v59)
      {
        v59 = v60 >> 2;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFF8)
      {
        v61 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      v103 = *(a1 + 72);
      if (v61)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v61);
      }

      v62 = (8 * v58);
      __p = 0;
      v100 = v62;
      *v62 = v53;
      v62[1] = v45;
      v101 = 8 * v58 + 8;
      v102 = 0;
      std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(v54, &__p);
      v57 = v54[1];
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v56 = v53;
      v56[1] = v45;
      v57 = v56 + 2;
    }

    __asm
    {
      FCVT            H10, S10
      FCVT            H9, S11
    }

    v54[1] = v57;
    v69 = *(a1 + 80);
    v71 = *(v69 + 8);
    v70 = *(v69 + 16);
    if (v71 >= v70)
    {
      v73 = (v71 - *v69) >> 2;
      v74 = v73 + 1;
      if ((v73 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v75 = v70 - *v69;
      if (v75 >> 1 > v74)
      {
        v74 = v75 >> 1;
      }

      if (v75 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v76 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v76 = v74;
      }

      v103 = *(a1 + 80);
      if (v76)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v76);
      }

      v77 = (4 * v73);
      __p = 0;
      v100 = v77;
      *v77 = _H10;
      *(v77 + 1) = _H9;
      v101 = 4 * v73 + 4;
      v102 = 0;
      _ZNSt3__16vectorIN2gm6MatrixIDF16_Li2ELi1EEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE(v69, &__p);
      v72 = *(v69 + 8);
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v71 = _H10;
      v71[1] = _H9;
      v72 = v71 + 2;
    }

    *(v69 + 8) = v72;
    v34 = *(a1 + 56);
    LOWORD(v33) = v96;
LABEL_67:
    v78 = *(a1 + 88);
    __p = &v96;
    v79 = std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v34, v33);
    v80 = v79;
    v82 = *(v78 + 8);
    v81 = *(v78 + 16);
    if (v82 >= v81)
    {
      v84 = *v78;
      v85 = v82 - *v78;
      v86 = v85 >> 1;
      if (v85 >> 1 <= -2)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v87 = v81 - v84;
      if (v87 <= v86 + 1)
      {
        v88 = v86 + 1;
      }

      else
      {
        v88 = v87;
      }

      if (v87 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v89 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v89 = v88;
      }

      if (v89)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v89);
      }

      v90 = (2 * v86);
      v91 = *(v80 + 9);
      v92 = &v90[-(v85 >> 1)];
      *v90 = v91;
      v83 = v90 + 1;
      memcpy(v92, v84, v85);
      v93 = *v78;
      *v78 = v92;
      *(v78 + 8) = v83;
      *(v78 + 16) = 0;
      if (v93)
      {
        operator delete(v93);
      }
    }

    else
    {
      *v82 = *(v79 + 9);
      v83 = v82 + 1;
    }

    *(v78 + 8) = v83;
  }

  v30 = *(a1 + 48);
  v31 = *v30;
  result = v94;
LABEL_82:
  *v30 = v31 + result;
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

int **_ZNSt3__16vectorIN2gm6MatrixIDF16_Li2ELi1EEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE(int **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = *v2++;
      *v5++ = v6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

__n128 std::__function::__func<md::DaVinciDecalBuilder::buildBatch(std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,unsigned long long,std::vector<md::DaVinciDecalBuilder::DecalDescription> const&,std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *)::$_0,std::allocator<md::DaVinciDecalBuilder::buildBatch(std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,unsigned long long,std::vector<md::DaVinciDecalBuilder::DecalDescription> const&,std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *)::$_0>,BOOL ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2AE80;
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