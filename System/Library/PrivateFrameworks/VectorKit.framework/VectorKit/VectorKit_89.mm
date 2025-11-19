float std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,0>(float *a1, float *a2, float *a3, float *a4)
{
  v4 = a2[4];
  v5 = a1 + 4;
  v6 = a3 + 4;
  result = a3[4];
  if (v4 >= a1[4])
  {
    if (result < v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      result = a2[4];
      a2[4] = a3[4];
      a3[4] = result;
      if (a2[4] < *v5)
      {
        v11 = *a1;
        *a1 = *a2;
        *a2 = v11;
        v9 = (a1 + 4);
        v12 = (a2 + 4);
LABEL_10:
        v16 = *v9;
        *v9 = *v12;
        *v12 = v16;
        result = *v6;
      }
    }
  }

  else
  {
    if (result < v4)
    {
      v8 = *a1;
      *a1 = *a3;
      *a3 = v8;
      v9 = (a1 + 4);
LABEL_9:
      v12 = (a3 + 4);
      goto LABEL_10;
    }

    v13 = *a1;
    *a1 = *a2;
    *a2 = v13;
    v14 = a1[4];
    a1[4] = a2[4];
    a2[4] = v14;
    result = *v6;
    if (*v6 < v14)
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      v9 = (a2 + 4);
      goto LABEL_9;
    }
  }

  if (a4[4] < result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    *&v17 = a3[4];
    a3[4] = a4[4];
    *(a4 + 4) = v17;
    result = a3[4];
    if (result < a2[4])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      *&v18 = a2[4];
      a2[4] = a3[4];
      *(a3 + 4) = v18;
      result = a2[4];
      if (result < *v5)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
        result = a1[4];
        a1[4] = a2[4];
        a2[4] = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v14 = (a1 + 40);
      v15 = *(a1 + 40);
      v16 = (a2 - 8);
      v17 = *(a2 - 8);
      v18 = (a1 + 24);
      v19 = (a2 - 24);
      v20 = (a1 + 16);
      v21 = *(a1 + 16);
      if (v15 >= v21)
      {
        if (v17 >= v15)
        {
          return 1;
        }

        v31 = *v18;
        *v18 = *v19;
        *v19 = v31;
        LODWORD(v31) = *v14;
        *v14 = *v16;
        *v16 = v31;
        if (*v14 >= *v20)
        {
          return 1;
        }

        v32 = *a1;
        *a1 = *v18;
        *v18 = v32;
      }

      else
      {
        if (v17 >= v15)
        {
          v35 = *a1;
          *a1 = *v18;
          *v18 = v35;
          *(a1 + 16) = v15;
          *(a1 + 40) = v21;
          if (*v16 >= v21)
          {
            return 1;
          }

          v36 = *v18;
          *v18 = *v19;
          *v19 = v36;
          v20 = (a1 + 40);
        }

        else
        {
          v22 = *a1;
          *a1 = *v19;
          *v19 = v22;
        }

        v14 = (a2 - 8);
      }

      v37 = *v20;
      *v20 = *v14;
      *v14 = v37;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if (*(a2 - 8) < *(a1 + 88))
        {
          v6 = *(a1 + 72);
          *(a1 + 72) = *(a2 - 24);
          *(a2 - 24) = v6;
          LODWORD(v6) = *(a1 + 88);
          *(a1 + 88) = *(a2 - 8);
          *(a2 - 8) = v6;
          v7 = *(a1 + 88);
          v8 = *(a1 + 64);
          if (v7 < v8)
          {
            v9 = *(a1 + 48);
            *(a1 + 48) = *(a1 + 72);
            *(a1 + 72) = v9;
            *(a1 + 64) = v7;
            *(a1 + 88) = v8;
            v10 = *(a1 + 40);
            if (v7 < v10)
            {
              v11 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 48);
              *(a1 + 48) = v11;
              *(a1 + 40) = v7;
              *(a1 + 64) = v10;
              v12 = *(a1 + 16);
              if (v7 < v12)
              {
                v13 = *a1;
                *a1 = *(a1 + 24);
                *(a1 + 24) = v13;
                *(a1 + 16) = v7;
                *(a1 + 40) = v12;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 8) < *(a1 + 16))
    {
      v5 = *a1;
      *a1 = *(a2 - 24);
      *(a2 - 24) = v5;
      LODWORD(v5) = *(a1 + 16);
      *(a1 + 16) = *(a2 - 8);
      *(a2 - 8) = v5;
    }

    return 1;
  }

LABEL_17:
  v23 = (a1 + 40);
  v24 = *(a1 + 40);
  v25 = a1 + 48;
  v26 = (a1 + 24);
  v27 = (a1 + 16);
  v28 = *(a1 + 16);
  v29 = *(a1 + 64);
  if (v24 < v28)
  {
    if (v29 >= v24)
    {
      v38 = *a1;
      *a1 = *v26;
      *v26 = v38;
      *(a1 + 16) = v24;
      *(a1 + 40) = v28;
      if (v29 >= v28)
      {
        goto LABEL_35;
      }

      v39 = *v26;
      *v26 = *v25;
      *v25 = v39;
      v27 = (a1 + 40);
    }

    else
    {
      v30 = *a1;
      *a1 = *v25;
      *v25 = v30;
    }

    v23 = (a1 + 64);
    goto LABEL_34;
  }

  if (v29 < v24)
  {
    v33 = *v26;
    *v26 = *v25;
    *v25 = v33;
    *v23 = v29;
    *(a1 + 64) = v24;
    if (v29 < v28)
    {
      v34 = *a1;
      *a1 = *v26;
      *v26 = v34;
LABEL_34:
      *v27 = v29;
      *v23 = v28;
    }
  }

LABEL_35:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *(v40 + 16);
    if (v43 < *(v25 + 16))
    {
      v48 = *v40;
      v44 = v41;
      while (1)
      {
        v45 = a1 + v44;
        *(v45 + 72) = *(a1 + v44 + 48);
        *(v45 + 88) = *(a1 + v44 + 64);
        if (v44 == -48)
        {
          break;
        }

        v44 -= 24;
        if (v43 >= *(v45 + 40))
        {
          v46 = a1 + v44 + 72;
          goto LABEL_43;
        }
      }

      v46 = a1;
LABEL_43:
      *v46 = v48;
      *(v46 + 16) = v43;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v25 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::vector<geo::PolylineCoordinate>::resize(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = (v2 - *result) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      result[1] = v3 + 8 * a2;
    }
  }

  else
  {
    v5 = a2 - v4;
    v6 = result[2];
    if (v5 > (v6 - v2) >> 3)
    {
      if (!(a2 >> 61))
      {
        v7 = v6 - v3;
        v8 = (v6 - v3) >> 2;
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v9);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = &v2[v5];
    do
    {
      *v2++ = 0xBF80000000000000;
    }

    while (v2 != v10);
    result[1] = v10;
  }

  return result;
}

uint64_t non-virtual thunk tomd::MuninRoadLabel::collidesWithObject(md::MuninRoadLabel *this, const md::CollisionObject *a2)
{
  result = *(this + 4);
  if (result)
  {
    return (*(*result + 472))(result, a2);
  }

  return result;
}

void non-virtual thunk tomd::MuninRoadLabel::~MuninRoadLabel(md::MuninRoadLabel *this)
{
  md::MuninRoadLabel::~MuninRoadLabel((this - 40));

  JUMPOUT(0x1B8C62190);
}

{
  md::MuninRoadLabel::~MuninRoadLabel((this - 40));
}

void md::MuninRoadLabel::~MuninRoadLabel(md::MuninRoadLabel *this)
{
  *this = &unk_1F2A041F0;
  *(this + 5) = &unk_1F2A04230;
  if (*(this + 355) == 1)
  {
    *(*(this + 41) + 285) = 1;
  }

  atomic_fetch_add(md::MuninRoadLabel::_totalLabels, 0xFFFFFFFF);
  v2 = *(this + 71);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 69);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 63);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 42);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 39);
  *(this + 39) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 13);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 11);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  *this = &unk_1F2A3C020;
  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

{
  md::MuninRoadLabel::~MuninRoadLabel(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MuninRoadLabel::collidesWithObject(md::MuninRoadLabel *this, const md::CollisionObject *a2)
{
  result = *(this + 9);
  if (result)
  {
    return (*(*result + 472))(result, a2);
  }

  return result;
}

uint64_t md::MuninRoadLabel::setCollisionResult(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 320) = *(a2 + 1);
  v3 = a2[1];
  v4 = v3 ^ 1;
  result = *(a1 + 24);
  if (result)
  {
    if (!a2[1])
    {
      result = (*(*result + 32))(result, a1, *(a1 + 36));
      v6 = (a1 + 300);
      if (*(a1 + 300) == v4)
      {
        goto LABEL_25;
      }

      *v6 = v4;
      goto LABEL_16;
    }

    if (*a2 == 1)
    {
      *(a1 + 494) = 21;
    }
  }

  v6 = (a1 + 300);
  if (*(a1 + 300) == v4)
  {
    goto LABEL_25;
  }

  *v6 = v4;
  if ((v3 & 1) == 0)
  {
LABEL_16:
    if (*(a1 + 299) != 1 || (v3 & 1) != 0)
    {
      goto LABEL_25;
    }

    v9 = byte_1B3417E90[*(a1 + 493) + 12];
    atomic_load((a1 + 298));
    if (v9 == 255)
    {
      v9 = *(a1 + 493);
    }

    else
    {
      *(a1 + 493) = v9;
      *(a1 + 494) = 37;
    }

    if (v9 == 2)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v7 = *a2;
  if ((v7 & 1) == 0)
  {
    *(a1 + 301) = 1;
  }

  if (*(a1 + 493) == 2)
  {
    atomic_load((a1 + 298));
    if (v7)
    {
      v8 = 21;
    }

    else
    {
      v8 = 20;
    }

    *(a1 + 493) = 1;
    *(a1 + 494) = v8;
LABEL_22:
    *(a1 + 299) = 0;
LABEL_23:
    v10 = atomic_load((a1 + 353));
    if ((v10 & 1) == 0)
    {
      *(a1 + 356) = 2 * (*(a1 + 493) == 2);
    }
  }

LABEL_25:
  if (*v6 == 1)
  {
    result = *(a1 + 72);
    if (result)
    {
      v11 = *(*result + 456);

      return v11();
    }
  }

  return result;
}

uint64_t md::MuninRoadLabelCollisionItem::placementCandidate(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(v1 + 72);
  if (v2)
  {
    (*(*v2 + 448))(v2);
  }

  return v1 + 40;
}

uint64_t md::MuninRoadLabelCollisionItem::collidesWithObject(md::MuninRoadLabelCollisionItem *this, const md::CollisionObject *a2)
{
  result = *(*(this + 7) + 72);
  if (result)
  {
    return (*(*result + 472))(result, a2);
  }

  return result;
}

int32x2_t *md::MuninRoadLabel::setActive(int32x2_t *this, int a2)
{
  if (this[38].u8[0] != a2)
  {
    v2 = this;
    this[38].i8[0] = a2;
    if ((a2 & 1) == 0)
    {
      this = this[3];
      if (this)
      {
        this = md::LabelDedupingGroup::removeLabel(this, v2);
        v2[3] = 0;
      }

      v2[43] = vdup_n_s32(0xC2C80000);
      if (v2[44].i8[3] == 1)
      {
        *(*&v2[41] + 285) = 1;
        v2[44].i8[3] = 0;
      }
    }
  }

  return this;
}

_BYTE *md::MuninRoadLabel::failForStaging(_BYTE *result, char a2)
{
  v2 = byte_1B3417E90[result[493] + 6];
  atomic_load(result + 298);
  if (v2 == 255)
  {
    v2 = result[493];
  }

  else
  {
    result[493] = v2;
    result[494] = a2;
  }

  if (v2 != 2)
  {
    result[299] = 0;
  }

  v3 = atomic_load(result + 353);
  if ((v3 & 1) == 0)
  {
    result[356] = 2 * (result[493] == 2);
  }

  return result;
}

void md::MuninRoadLabel::updateStateMachineForDisplay(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a4)
  {
    v5 = ((0x27u >> (a2 - 3)) & 1) != 0 ? 0x80808050508uLL >> (8 * ((a2 - 3) & 0x1Fu)) : a2;
    v6 = (a2 - 3) <= 5 ? v5 : a2;
    if ((*(a4 + 3416) & 1) == 0)
    {
      LOBYTE(a2) = v6;
    }
  }

  v7 = byte_1B3417EAE[4 * a2 + *(a1 + 538)];
  atomic_load((a1 + 298));
  if (v7 == 255)
  {
    v7 = *(a1 + 538);
  }

  else
  {
    *(a1 + 538) = v7;
    *(a1 + 539) = a3;
  }

  if (v7 == 3)
  {
    v8 = 1.0;
    v9 = 280;
  }

  else
  {
    if (v7)
    {
      goto LABEL_18;
    }

    v8 = 0.0;
    v9 = 288;
  }

  *(a1 + 264) = v8;
  *(a1 + 268) = (*(a1 + v9))();
LABEL_18:
  v10 = *(a1 + 538);
  if (v10 == 1)
  {
    v14 = *(a1 + 560);
    v15 = 0.4;
    if (v14 && *(v14 + 8) != 0.0)
    {
      v15 = *(v14 + 8);
    }

    md::LabelValueAnimation::setShowAnimation(a1 + 264, 0, 3, 0, v15);
    v13 = 280;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v11 = *(a1 + 560);
    v12 = 0.4;
    if (v11)
    {
      if (*(v11 + 12) != 0.0)
      {
        v12 = *(v11 + 12);
      }
    }

    md::LabelValueAnimation::setHideAnimation(a1 + 264, 0, 3, 0, v12);
    v13 = 288;
  }

  *(a1 + 268) = (*(a1 + v13))(*(a1 + 264));
}

void std::__shared_ptr_emplace<md::OcclusionQuery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A47FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MuninRoadLabel::debugString(md::MuninRoadLabel *this, md::LabelManager *a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v50);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "RoadLabel:\n", 11);
  if (*(a2 + 120) != 0.0 || *(a2 + 121) != 0.0)
  {
    v6 = v50;
    *(&v50 + *(v50 - 24) + 8) = *(&v50 + *(v50 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v52[0].__locale_ + *(v6 - 24)) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Offset: elev=", 15);
    v7 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, " nrml=", 6);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "\n", 1);
  }

  *(&v52[0].__locale_ + *(v50 - 24)) = 2;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Zoom: Cur=", 12);
  v9 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, " Min=", 5);
  v10 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, " Max=", 5);
  std::ostream::operator<<();
  *(&v52[0].__locale_ + *(v50 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, ", Dist=", 7);
  v11 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "\n", 1);
  if (*(a2 + 540))
  {
    *(&v52[0].__locale_ + *(v50 - 24)) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  PerspScale: Mode=", 19);
    v12 = MEMORY[0x1B8C61C80](&v50, *(a2 + 540));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, " Value=", 7);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "\n", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Staging: State=", 17);
  v14 = *(a2 + 493);
  if (v14 > 2)
  {
    v15 = "<NONE>";
  }

  else
  {
    v15 = off_1E7B39578[v14];
  }

  v16 = strlen(v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v15, v16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, " Outcome=", 9);
  md::stringFromLabelOutcome(&v59, *(a2 + 494));
  if ((v61 & 0x80u) == 0)
  {
    v17 = &v59;
  }

  else
  {
    v17 = v59;
  }

  if ((v61 & 0x80u) == 0)
  {
    v18 = v61;
  }

  else
  {
    v18 = v60;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v17, v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "\n", 1);
  if (v61 < 0)
  {
    operator delete(v59);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Display: State=", 17);
  v19 = *(a2 + 538);
  if (v19 > 3)
  {
    v20 = "<NONE>";
  }

  else
  {
    v20 = off_1E7B39590[v19];
  }

  v21 = strlen(v20);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v20, v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, " Outcome=", 9);
  md::stringFromLabelOutcome(&v59, *(a2 + 539));
  if ((v61 & 0x80u) == 0)
  {
    v22 = &v59;
  }

  else
  {
    v22 = v59;
  }

  if ((v61 & 0x80u) == 0)
  {
    v23 = v61;
  }

  else
  {
    v23 = v60;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v22, v23);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, " isDisplayLabel=", 16);
  v24 = MEMORY[0x1B8C61C80](&v50, *(a2 + 302));
  v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, " isActiveForDisplay=", 20);
  v26 = MEMORY[0x1B8C61C80](v25, *(a2 + 303));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, "\n", 1);
  if (v61 < 0)
  {
    operator delete(v59);
  }

  v27 = *(a2 + 10);
  if (v27 && *(v27 + 125) == 1 && *(v27 + 136) != 255)
  {
    v28 = md::LabelStyle::textStyleGroup(v27, 0);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Style: ", 9);
    v29 = *(v28 + 95);
    if (v29 >= 0)
    {
      v30 = v28 + 72;
    }

    else
    {
      v30 = *(v28 + 72);
    }

    if (v29 >= 0)
    {
      v31 = *(v28 + 95);
    }

    else
    {
      v31 = *(v28 + 80);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v30, v31);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/", 1);
    *(&v52[0].__locale_ + *(v50 - 24)) = 2;
    std::ostream::operator<<();
    if (*(v28 + 96) != 0.0)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/", 1);
      std::ostream::operator<<();
    }

    if (*(v28 + 109) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/up", 3);
    }

    if (*(v28 + 110) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/down", 5);
    }

    if (*(v28 + 111) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/title", 6);
    }

    if (*(v28 + 108) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/ri", 3);
    }

    if (*(v28 + 112) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/sc", 3);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "    font:", 9);
    md::FontOptions::debugString(&v59, (v28 + 72), *[*(a3 + 96) grlFontManager]);
    if ((v61 & 0x80u) == 0)
    {
      v32 = &v59;
    }

    else
    {
      v32 = v59;
    }

    if ((v61 & 0x80u) == 0)
    {
      v33 = v61;
    }

    else
    {
      v33 = v60;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v32, v33);
    v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "\n", 1);
    if (v61 < 0)
    {
      v35 = v59;
      v36 = mdm::zone_mallocator::instance(v34);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v36, v35);
    }
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "No Style\n", 9);
  }

  v37 = *(a2 + 40);
  if (v37 && *(v37 + 52) == 4)
  {
    v38 = *(v37 + 56);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Collided with '", 17);
    md::LabelFeature::debugName(&v59, *(v38 + 8));
    v39 = (v61 & 0x80u) == 0 ? &v59 : v59;
    v40 = (v61 & 0x80u) == 0 ? v61 : v60;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v39, v40);
    v41 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "'\n", 2);
    if (v61 < 0)
    {
      v42 = v59;
      v43 = mdm::zone_mallocator::instance(v41);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v43, v42);
    }
  }

  if (*(a2 + 8))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "\n", 1);
    (*(**(a2 + 8) + 800))(&v59);
    v44 = (v61 & 0x80u) == 0 ? &v59 : v59;
    v45 = (v61 & 0x80u) == 0 ? v61 : v60;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v44, v45);
    if (v61 < 0)
    {
      operator delete(v59);
    }
  }

  if ((v57 & 0x10) != 0)
  {
    v47 = v56;
    if (v56 < v53)
    {
      v56 = v53;
      v47 = v53;
    }

    locale = v52[4].__locale_;
  }

  else
  {
    if ((v57 & 8) == 0)
    {
      v46 = 0;
      *(this + 23) = 0;
      goto LABEL_90;
    }

    locale = v52[1].__locale_;
    v47 = v52[3].__locale_;
  }

  v46 = v47 - locale;
  if ((v47 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v46 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v46;
  if (v46)
  {
    memmove(this, locale, v46);
  }

LABEL_90:
  *(this + v46) = 0;
  v50 = *MEMORY[0x1E69E54E8];
  *(&v50 + *(v50 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v51 = MEMORY[0x1E69E5548] + 16;
  if (v55 < 0)
  {
    operator delete(__p);
  }

  v51 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v52);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v58);
}

void sub_1B2E2B49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  a9 = *MEMORY[0x1E69E54E8];
  *(&a9 + *(a9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a10 = MEMORY[0x1E69E5548] + 16;
  if (a23 < 0)
  {
    operator delete(__p);
  }

  a10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a11);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a26);
  _Unwind_Resume(a1);
}

uint64_t md::MuninRoadLabel::debugDraw(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 72);
  if (result)
  {
    v5 = (*(*result + 256))(result);
    *(a2 + 8) = *v5;
    *(a2 + 12) = *(v5 + 4);
    v6.n128_f32[0] = ggl::DebugConsole::drawRectangle(a2, (v5 + 8));
    v7 = *(**(a1 + 72) + 776);

    return v7(v6);
  }

  return result;
}

uint64_t md::ARSceneLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *a2, gdc::Camera **a3, md::SceneContext *a4)
{
  v5 = *a3;
  md::SceneStateManager::clear(*(a1 + 536));
  v6 = gdc::Camera::cameraFrame(v5);
  v7 = *(a1 + 320);
  v8 = *(a1 + 160);
  v103 = *(a1 + 400);
  v101 = a1;
  v9 = *(a1 + 240);
  v10 = *v6;
  v11 = v6[1];
  v12 = *v6 * 0.5;
  v13 = tan(v12 + 0.785398163);
  v14 = v11 * 0.159154943 + 0.5;
  v15 = log(v13) * 0.159154943 + 0.5;
  v16 = cos(v10 + v10) * -559.82 + 111132.92;
  v17 = v16 + cos(v10 * 4.0) * 1.175;
  v18 = v17 + cos(v10 * 6.0) * -0.0023;
  v19 = tan(v12 + 0.78103484);
  v20 = log(v19);
  v21 = tan(v12 + 0.789761487);
  *&v22 = fabs((log(v21) - v20) * 0.159154943) / v18;
  v120.f64[0] = v14;
  v120.f64[1] = v15;
  v121 = *&v22 * v7;
  *&v22 = *&v22 * v8;
  v23 = 1 << v9;
  v24 = (1 << v9);
  v25 = vcvtmd_s64_f64((v15 - *&v22) * v24);
  v26 = v23 + ~vcvtmd_s64_f64((*&v22 + v15) * v23);
  memset(v105, 0, sizeof(v105));
  v106 = 1065353216;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  if (v26 <= ((1 << v9) + ~v25))
  {
    v27 = 0;
    v28 = 0;
    v29 = vcvtmd_s64_f64((v14 - *&v22) * v24);
    v30 = vcvtmd_s64_f64((*&v22 + v14) * v24);
    v31 = v23 - v25;
    do
    {
      v32 = v29;
      if (v29 <= v30)
      {
        do
        {
          *(&v22 + 1) = v118;
          v33 = *(&v117 + 1);
          if (v118 == *(&v117 + 1))
          {
            v34 = 0;
          }

          else
          {
            v34 = 16 * (v118 - *(&v117 + 1)) - 1;
          }

          v35 = v27 + v28;
          if (v34 == v35)
          {
            std::deque<geo::QuadTile>::__add_back_capacity(&v117);
            v28 = v119;
            v33 = *(&v117 + 1);
            v35 = *(&v119 + 1) + v119;
          }

          v36 = *(v33 + ((v35 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v35 & 0x7F);
          *v36 = -1;
          *(v36 + 1) = v9;
          *(v36 + 4) = v26;
          *(v36 + 8) = v32;
          *(v36 + 16) = 0;
          *(v36 + 24) = 1;
          v27 = ++*(&v119 + 1);
          ++v32;
        }

        while (v30 + 1 != v32);
      }

      ++v26;
    }

    while (v26 != v31);
    if (v27)
    {
      do
      {
        v37 = (*(*(&v117 + 1) + ((v119 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v119 & 0x7F));
        v38 = v37[1];
        *&v22 = *(v37 + 4);
        v104 = v22;
        v39 = *v37;
        v40 = *(v37 + 2);
        v41 = v37[24];
        *&v119 = v119 + 1;
        *(&v119 + 1) = v27 - 1;
        if (v119 >= 0x100)
        {
          operator delete(**(&v117 + 1));
          *(&v117 + 1) += 8;
          *&v119 = v119 - 128;
        }

        if (v38 >= v103 || (v42 = 1.0 / (1 << v38), v122.f64[0] = v42 * SDWORD1(v104), v122.f64[1] = v42 * ((1 << v38) + ~v104), *&v123 = v122.f64[0] + v42, v124 = v122.f64[1] + v42, !gm::Box<double,2>::intersects<int,void>(&v122, &v120)))
        {
          if (v41)
          {
            v52 = (((v39 - 0x61C8864680B583EBLL) << 6) - 0x61C8864680B583EBLL + ((v39 - 0x61C8864680B583EBLL) >> 2) + v38) ^ (v39 - 0x61C8864680B583EBLL);
            v53 = (v104 - 0x61C8864680B583EBLL + (v52 << 6) + (v52 >> 2)) ^ v52;
            v40 = (SDWORD1(v104) - 0x61C8864680B583EBLL + (v53 << 6) + (v53 >> 2)) ^ v53;
          }

          v54 = *(&v105[0] + 1);
          if (!*(&v105[0] + 1))
          {
            goto LABEL_49;
          }

          v55 = vcnt_s8(*(v105 + 8));
          v55.i16[0] = vaddlv_u8(v55);
          v56 = v55.u32[0];
          if (v55.u32[0] > 1uLL)
          {
            v57 = v40;
            if (v40 >= *(&v105[0] + 1))
            {
              v57 = v40 % *(&v105[0] + 1);
            }
          }

          else
          {
            v57 = (*(&v105[0] + 1) - 1) & v40;
          }

          v58 = *(*&v105[0] + 8 * v57);
          if (!v58 || (v59 = *v58) == 0)
          {
LABEL_49:
            operator new();
          }

          v60 = *(&v105[0] + 1) - 1;
          v61 = (((v39 - 0x61C8864680B583EBLL) << 6) - 0x61C8864680B583EBLL + ((v39 - 0x61C8864680B583EBLL) >> 2) + v38) ^ (v39 - 0x61C8864680B583EBLL);
          *(&v22 + 1) = *(&v104 + 1);
          v62 = v104;
          v63 = DWORD1(v104);
          v64 = (v104 - 0x61C8864680B583EBLL + (v61 << 6) + (v61 >> 2)) ^ v61;
          v65 = (SDWORD1(v104) - 0x61C8864680B583EBLL + (v64 << 6) + (v64 >> 2)) ^ v64;
          while (1)
          {
            v66 = *(v59 + 1);
            if (v66 == v40)
            {
              if (v59[40] == 1)
              {
                v98 = v60;
                v96 = v63;
                v97 = v62;
                v95 = v65;
                geo::QuadTile::computeHash(v59 + 16);
                v65 = v95;
                v63 = v96;
                v62 = v97;
                v60 = v98;
                v59[40] = 0;
              }

              if (*(v59 + 4) == v40 && v59[16] == v39 && v59[17] == v38 && *(v59 + 5) == v62 && *(v59 + 6) == v63)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v56 > 1)
              {
                if (v66 >= v54)
                {
                  v66 %= v54;
                }
              }

              else
              {
                v66 &= v60;
              }

              if (v66 != v57)
              {
                goto LABEL_49;
              }
            }

            v59 = *v59;
            if (!v59)
            {
              goto LABEL_49;
            }
          }
        }

        BYTE1(v122.f64[0]) = v38;
        *(v122.f64 + 4) = v104;
        LOBYTE(v122.f64[0]) = v39;
        v123 = v40;
        LOBYTE(v124) = v41;
        LOBYTE(v125) = 1;
        v126 = 0;
        *&v128[12] = 0;
        LOBYTE(v127) = v39;
        BYTE1(v127) = v38 + 1;
        *v128 = vadd_s32(*&v104, *&v104);
        while (1)
        {
          v129 = 1;
          BYTE1(v107) = v38;
          *(&v107 + 4) = v104;
          LOBYTE(v107) = v39;
          v108 = v40;
          v109 = v41;
          v110 = 1;
          v111 = 4;
          v112 = 255;
          v113 = 0;
          v114 = 0;
          v115 = 0;
          v116 = 1;
          if (!geo::QuadTileIterator::operator!=(&v122, &v107))
          {
            break;
          }

          v43 = *(&v117 + 1);
          v44 = 16 * (v118 - *(&v117 + 1)) - 1;
          v45 = BYTE1(v127);
          v46 = *v128;
          v47 = v127;
          v48 = *&v128[12];
          v49 = v129;
          if (v118 == *(&v117 + 1))
          {
            v44 = 0;
          }

          v50 = *(&v119 + 1) + v119;
          if (v44 == *(&v119 + 1) + v119)
          {
            std::deque<geo::QuadTile>::__add_back_capacity(&v117);
            v43 = *(&v117 + 1);
            v50 = *(&v119 + 1) + v119;
          }

          v51 = *(v43 + ((v50 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v50 & 0x7F);
          *(v51 + 1) = v45;
          *(v51 + 4) = v46;
          *v51 = v47;
          *(v51 + 16) = v48;
          *(v51 + 24) = v49;
          ++*(&v119 + 1);
          ++v126;
          LOBYTE(v127) = LOBYTE(v122.f64[0]);
          BYTE1(v127) = BYTE1(v122.f64[0]) + v125;
          *v128 = (HIDWORD(v122.f64[0]) << v125) + v126 / (1 << v125);
          *&v128[4] = (LODWORD(v122.f64[1]) << v125) + v126 % (1 << v125);
          *&v128[12] = 0;
        }

LABEL_50:
        v27 = *(&v119 + 1);
      }

      while (*(&v119 + 1));
    }
  }

  std::deque<geo::QuadTile>::~deque[abi:nn200100](&v117);
  v67 = v101[67];
  v68 = *(v67 + 112);
  v69 = *(v67 + 120);
  while (v68 != v69)
  {
    if (!*v68)
    {
      v69 = v68;
      break;
    }

    v68 += 56;
  }

  LODWORD(v122.f64[0]) = 512;
  std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::unordered_set(&v122.f64[1], v105);
  *(v69 + 14) = LODWORD(v122.f64[0]);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__move_assign((v69 + 32), &v122.f64[1]);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v122.f64[1]);
  v71 = v101[58];
  v70 = v101[59];
  while (v71 != v70)
  {
    if (!*v71)
    {
      v70 = v71;
      break;
    }

    v71 += 16;
  }

  v72 = *(*(v70 + 2) + 16);
  if (v72)
  {
    gdc::TileSetSelectionContext::TileSetSelectionContext(&v122, (v69 + 8), (v69 + 28), *(v69 + 13));
    *(v72 + 8) = v122.f64[1];
    if (v72 != &v122)
    {
      *(v72 + 48) = v127;
      std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned short,void *> *>>((v72 + 16), v125);
    }

    *(v72 + 56) = *&v128[4];
    *&v122.f64[0] = &unk_1F2A61128;
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v123);
    md::World::layerDataTypesForSelectionSetType(&v122, *(v101[15] + 152), 0);
    gdc::SelectionContext::setLayerDataTypes(v72, &v122);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v122);
  }

  v73 = *(v101[15] + 24);
  v102 = v69;
  v74 = *(v69 + 13);
  md::LayoutContext::frameState(a2);
  v76 = (*(v75 + 88) * 1000.0);
  gdc::LayerDataManager::requestLayerDataKeys(v73, v101[58], v101[59], 0);
  v107 = 0uLL;
  v108 = 0;
  gdc::LayerDataManager::createDataRequests(v73, v101 + 58, &v107, v76);
  gdc::LayerDataManager::getData(v73, v101[58], v101[59]);
  gdc::LayerDataManager::getFallbackData(v73, v101[58], v101[59]);
  gdc::LayerDataCollector::sortIndexList(v74);
  v77 = grl::LayerMetrics::anchor(*v74);
  if (v77 == v78)
  {
    v79 = 0;
    v80 = 1;
    v81 = 1;
  }

  else
  {
    v82 = v77;
    v83 = v78;
    v79 = 0;
    v81 = 1;
    v80 = 1;
    do
    {
      v84 = gdc::LayerDataCollector::status(v74[3], v74[4], *(v82 + 8), *(v82 + 144));
      if (v84 == 2)
      {
        v79 = 1;
      }

      else
      {
        v85 = *(v82 + 8);
        if (v84 > 1)
        {
          v92 = *(gdc::LayerDataCollector::getData(v74[3], v74[4], v85, *(v82 + 144)) + 8);
          if (v92)
          {
            atomic_fetch_add_explicit((v92 + 8), 1uLL, memory_order_relaxed);
          }

          gdc::LayerDataRequestKey::LayerDataRequestKey(&v122, v82);
          v93 = *(v82 + 112);
          v131 = *(v82 + 116);
          v130 = v93;
          v132 = *(v82 + 128);
          v133 = *(v82 + 136);
          geo::linear_map<unsigned short,std::set<gdc::LayerDataWithWorld>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>,std::vector<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>>::operator[]((v101[67] + 48), *(v82 + 8));
          operator new();
        }

        v86 = v101[61];
        v87 = v101[62];
        if (v86 != v87)
        {
          while (1)
          {
            v88 = *v86;
            if (v88 == v85)
            {
              break;
            }

            ++v86;
            if (v85 < v88 || v86 == v87)
            {
              v86 = v101[62];
              break;
            }
          }
        }

        v90 = v86 == v87;
        v91 = !v90;
        v80 &= v91;
        v81 &= v90;
      }

      v82 += 152;
    }

    while (v82 != v83);
  }

  v102[10] = v79 & 1;
  v102[8] = v81 & 1;
  v102[9] = v81 & 1 & v80;
  *&v122.f64[0] = &v107;
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__destroy_vector::operator()[abi:nn200100](&v122);
  md::RegistryManager::update(v101[16], v101[16] + 696, a4, 0);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v105);
}

void sub_1B2E2C274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51)
{
  a47 = &unk_1F2A61128;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a49);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

BOOL gm::Box<double,2>::intersects<int,void>(float64x2_t *a1, float64x2_t *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = a1[1].f64[v3];
    v5 = a1->f64[v3];
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 >= v5);
  if (v4 < v5)
  {
    return 0;
  }

  v6 = a2[1].f64[0];
  if (v6 == 0.0)
  {
    return 0;
  }

  v7 = vmaxnmq_f64(vsubq_f64(*a2, a1[1]), vsubq_f64(*a1, *a2));
  if (v7.f64[0] >= v6 || v7.f64[1] >= v6)
  {
    return 0;
  }

  result = 1;
  if (v7.f64[0] > 0.0 && v7.f64[1] > 0.0)
  {
    return vaddvq_f64(vmulq_f64(v7, v7)) < v6 * v6;
  }

  return result;
}

void std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(a1);
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<gdc::LayerDataWithWorld,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::set<gdc::LayerDataWithWorld>::set[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::__split_buffer<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__split_buffer<geo::QuadTile *>::emplace_front<geo::QuadTile *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void md::ARSceneLogic::allocateContext(md::ARSceneLogic *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 67);
  v3 = *(this + 68);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = v2;
    a2[1] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  else
  {
    *a2 = v2;
    a2[1] = 0;
  }
}

uint64_t md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x29BDA47DB65B52C8 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
    v9 = v7;
    return (*(*v6 + 160))(v6, a2, &v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = vcnt_s8(a2);
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = 0x1AF456233693CD46;
    if (a2 <= 0x1AF456233693CD46)
    {
      v3 = 0x1AF456233693CD46 % a2;
    }
  }

  else
  {
    v3 = (a2 - 1) & 0x1AF456233693CD46;
  }

  v4 = *(a1 + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == 0x1AF456233693CD46)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= a2)
      {
        v6 %= a2;
      }
    }

    else
    {
      v6 &= a2 - 1;
    }

    if (v6 != v3)
    {
      return 0;
    }

LABEL_16:
    result = 0;
    v5 = *v5;
    if (!v5)
    {
      return result;
    }
  }

  if (v5[2] != 0x1AF456233693CD46)
  {
    goto LABEL_16;
  }

  v8 = v5[5];
  if (*(v8 + 8) == 0x1AF456233693CD46)
  {
    return *(v8 + 32);
  }

  return 0;
}

uint64_t md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x29BDA47DB65B52C8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 152))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x29BDA47DB65B52C8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x29BDA47DB65B52C8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x29BDA47DB65B52C8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

void sub_1B2E2CCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  MEMORY[0x1B8C62190](v10, v11);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::ARSceneContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARSceneContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::ARSceneContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARSceneContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A04468;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    MEMORY[0x1B8C62190](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

void md::ARSceneLogic::~ARSceneLogic(md::ARSceneLogic *this)
{
  md::ARSceneLogic::~ARSceneLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A042F8;
  v2 = *(this + 68);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 61);
  if (v3 != *(this + 63))
  {
    free(v3);
  }

  v5 = (this + 464);
  std::vector<std::pair<unsigned short,std::list<std::unique_ptr<gdc::SelectionContext>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable(this + 384);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 304);
  md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable(this + 224);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 144);
  v4 = *(this + 17);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable(uint64_t a1)
{
  if (*(a1 + 24))
  {
    GEOConfigRemoveBlockListener();
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  atomic_store(0, *(a1 + 32));
  std::__function::__value_func<void ()>::~__value_func[abi:nn200100](a1 + 48);
  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void sub_1B2E2CF14(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()>::~__value_func[abi:nn200100](v1 + 48);
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(uint64_t a1)
{
  if (*(a1 + 24))
  {
    GEOConfigRemoveBlockListener();
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  atomic_store(0, *(a1 + 32));
  std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](a1 + 48);
  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void sub_1B2E2CF9C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](v1 + 48);
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

void *___ZN2md11MonitorableINS_11ConfigValueI20GEOConfigKeyUIntegerjEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNSt3__18functionIFvjEEE_block_invoke(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = result[4];
    if (*v1)
    {
      v3 = *(v2 + 16);
      if (*v2)
      {
        v4 = *(v2 + 8) == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        *(v2 + 16) = GEOConfigGetUInteger();
      }

      result = *(v2 + 72);
      if (result)
      {
        v5 = v3;
        return (*(*result + 48))(result, &v5);
      }
    }
  }

  return result;
}

uint64_t ___ZN2md11MonitorableINS_11ConfigValueI18GEOConfigKeyDoubledEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNSt3__18functionIFvdEEE_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 32);
    if (*v1)
    {
      v3 = v2[2];
      if (*v2)
      {
        v4 = *(v2 + 1) == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        GEOConfigGetDouble();
        *(v2 + 2) = v5;
      }

      result = *(v2 + 9);
      if (result)
      {

        return std::function<void ()(double)>::operator()(result, v3);
      }
    }
  }

  return result;
}

void md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

mdm::zone_mallocator *md::RouteAnnotationLabelFeature::populateStyleQueries(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0;
  if ((*(*a1 + 496))(a1) && (*(*a1 + 488))(a1, 0))
  {
    operator new();
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1 + 41);
  v2 = a1[37];
  if (v2 != a1[38])
  {
    v3 = *v2;
    if (v3)
    {
      [v3 attributes];
    }

    else
    {
      memset(v6, 0, sizeof(v6));
    }

    (*(*a1 + 560))(a1, v6);
    _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](&v5, 0);
}

void sub_1B2E2D528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  MEMORY[0x1B8C62190](v10, 0x1012C40B602C572);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<FeatureStyleAttributes>>(uint64_t a1, void *a2)
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

void sub_1B2E2D9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  v53 = 0;
  while (1)
  {
    if (*(v51 + v53 + 119) < 0)
    {
      operator delete(*(v51 + v53 + 96));
    }

    v53 -= 64;
    if (v53 == -128)
    {
      if (a35 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t md::RouteAnnotationLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v44);
  md::LabelFeature::debugString(a1, a2, a3, a4, __p);
  if (v43 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v43 >= 0)
  {
    v11 = HIBYTE(v43);
  }

  else
  {
    v11 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, v10, v11);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "RouteAnnotation:\n", 17);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "  CollisionPriority:", 20);
  v12 = MEMORY[0x1B8C61C80](&v44, *(a1 + 396));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "  RouteOffsetInMeters:", 22);
  v13 = MEMORY[0x1B8C61C60](&v44, *(a1 + 368));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "  DistanceFromUser:", 19);
  v14 = (*(**(*(a2 + 168) + 32) + 72))(*(*(a2 + 168) + 32));
  v15 = MEMORY[0x1B8C61C60](&v44, vabdd_f64(v14, *(a1 + 368)));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "  facingAzimuth:", 16);
  v40 = a5;
  v16 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, "\n", 1);
  v18 = *(a1 + 296);
  v17 = *(a1 + 304);
  if (v18 != v17)
  {
    v19 = 1;
    do
    {
      v20 = *v18;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "  TrafficFeature ", 17);
      v21 = MEMORY[0x1B8C61CB0](&v44, v19);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, "\n", 1);
      v22 = [v20 trafficFeatureType];
      switch(v22)
      {
        case 1:
          v23 = v20;
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    CameraType: ", 16);
          v24 = +[VKTrafficCameraFeature stringForTrafficCameraType:](VKTrafficCameraFeature, "stringForTrafficCameraType:", [v23 type]);
          std::string::basic_string[abi:nn200100]<0>(&v41, [v24 UTF8String]);
          v31 = std::string::append(&v41, "\n", 1uLL);
          v32 = v31->__r_.__value_.__r.__words[2];
          *__p = *&v31->__r_.__value_.__l.__data_;
          v43 = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          if (v43 >= 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          if (v43 >= 0)
          {
            v28 = HIBYTE(v43);
          }

          else
          {
            v28 = __p[1];
          }

          break;
        case 2:
          v23 = v20;
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    SignalType: ", 16);
          v24 = +[VKTrafficSignalFeature stringForTrafficSignalType:](VKTrafficSignalFeature, "stringForTrafficSignalType:", [v23 type]);
          std::string::basic_string[abi:nn200100]<0>(&v41, [v24 UTF8String]);
          v29 = std::string::append(&v41, "\n", 1uLL);
          v30 = v29->__r_.__value_.__r.__words[2];
          *__p = *&v29->__r_.__value_.__l.__data_;
          v43 = v30;
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          if (v43 >= 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          if (v43 >= 0)
          {
            v28 = HIBYTE(v43);
          }

          else
          {
            v28 = __p[1];
          }

          break;
        case 4:
          v23 = v20;
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    UserReportedIncidentType: ", 30);
          v24 = +[VKTrafficIncidentFeature stringForIncidentType:](VKTrafficIncidentFeature, "stringForIncidentType:", [v23 type]);
          std::string::basic_string[abi:nn200100]<0>(&v41, [v24 UTF8String]);
          v25 = std::string::append(&v41, "\n", 1uLL);
          v26 = v25->__r_.__value_.__r.__words[2];
          *__p = *&v25->__r_.__value_.__l.__data_;
          v43 = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          if (v43 >= 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          if (v43 >= 0)
          {
            v28 = HIBYTE(v43);
          }

          else
          {
            v28 = __p[1];
          }

          break;
        default:
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    Type: ", 10);
          v23 = +[VKTrafficFeature stringForFeatureType:](VKTrafficFeature, "stringForFeatureType:", [v20 trafficFeatureType]);
          std::string::basic_string[abi:nn200100]<0>(&v41, [v23 UTF8String]);
          v35 = std::string::append(&v41, "\n", 1uLL);
          v36 = v35->__r_.__value_.__r.__words[2];
          *__p = *&v35->__r_.__value_.__l.__data_;
          v43 = v36;
          v35->__r_.__value_.__l.__size_ = 0;
          v35->__r_.__value_.__r.__words[2] = 0;
          v35->__r_.__value_.__r.__words[0] = 0;
          if (v43 >= 0)
          {
            v37 = __p;
          }

          else
          {
            v37 = __p[0];
          }

          if (v43 >= 0)
          {
            v38 = HIBYTE(v43);
          }

          else
          {
            v38 = __p[1];
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, v37, v38);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }

          goto LABEL_37;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, v27, v28);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

LABEL_37:
      if ([v20 isGrouped])
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    GroupItemVerticalDisplayOrder: ", 35);
        v33 = MEMORY[0x1B8C61C90](&v44, [v20 groupItemVerticalDisplayOrder]);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, "\n", 1);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    GroupItemHorizontalDisplayOrder: ", 37);
        v34 = MEMORY[0x1B8C61C90](&v44, [v20 groupItemHorizontalDisplayOrder]);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, "\n", 1);
      }

      ++v18;
      ++v19;
    }

    while (v18 != v17);
  }

  std::ostringstream::str[abi:nn200100](v40, &v44);
  v44 = *MEMORY[0x1E69E54E8];
  *(&v44 + *(v44 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v45 = MEMORY[0x1E69E5548] + 16;
  if (v47 < 0)
  {
    operator delete(v46[7].__locale_);
  }

  v45 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v46);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v48);
}

void sub_1B2E2E1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  a23 = *MEMORY[0x1E69E54E8];
  *(&a23 + *(a23 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a24 = MEMORY[0x1E69E5548] + 16;
  if (a37 < 0)
  {
    operator delete(__p);
  }

  a24 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a25);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a40);
  _Unwind_Resume(a1);
}

void md::RouteAnnotationLabelFeature::~RouteAnnotationLabelFeature(md::RouteAnnotationLabelFeature *this)
{
  *this = &unk_1F2A04490;
  v3 = (this + 328);
  std::vector<std::shared_ptr<FeatureStyleAttributes>,geo::allocator_adapter<std::shared_ptr<FeatureStyleAttributes>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 296);
  std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 264);
  std::vector<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelFeature::~LabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04490;
  v3 = (this + 328);
  std::vector<std::shared_ptr<FeatureStyleAttributes>,geo::allocator_adapter<std::shared_ptr<FeatureStyleAttributes>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 296);
  std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 264);
  std::vector<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelFeature::~LabelFeature(this);
}

void std::vector<std::shared_ptr<FeatureStyleAttributes>,geo::allocator_adapter<std::shared_ptr<FeatureStyleAttributes>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<FeatureStyleAttributes>>(v5, v3);
  }
}

void std::vector<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      v5 = a1;
      v6 = v3 - 3;
      v7 = v3 - 3;
      v8 = v3 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        a1 = (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v4 = **v5;
    }

    v1[1] = v2;
    v11 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v11, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(uint64_t a1, void *a2)
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

void *geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1F2A04738;
  a1[1] = v3;
  return a1;
}

uint64_t std::vector<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKTrafficFeature * {__strong}&,geo::memory_management_mode const&>(void *a1, void **a2)
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
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v28 = a1 + 3;
  if (v6)
  {
    v7 = mdm::zone_mallocator::instance(a1);
    v8 = pthread_rwlock_rdlock((v7 + 32));
    if (v8)
    {
      geo::read_write_lock::logFailure(v8, "read lock", v9);
    }

    v10 = malloc_type_zone_malloc(*v7, 24 * v6, 0x81040B49F1EBBuLL);
    atomic_fetch_add((v7 + 24), 1u);
    geo::read_write_lock::unlock((v7 + 32));
  }

  else
  {
    v10 = 0;
  }

  *(&v27 + 1) = &v10[3 * v6];
  v11 = geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v10[3 * v2], *a2);
  *&v27 = v11 + 3;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a1 - v13;
  v15 = v11 + v14;
  if (*a1 != v13)
  {
    v16 = *a1;
    v17 = v11 + v14;
    do
    {
      v18 = geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v17, v16);
      v16 += 24;
      v17 = v18 + 24;
    }

    while (v16 != v13);
    v19 = v12;
    v20 = v12;
    do
    {
      v21 = *v20;
      v20 += 3;
      (*v21)(v12);
      v19 += 3;
      v12 = v20;
    }

    while (v20 != v13);
  }

  v22 = *a1;
  *a1 = v15;
  v23 = a1[2];
  v25 = v27;
  *(a1 + 1) = v27;
  *&v27 = v22;
  *(&v27 + 1) = v23;
  v26[0] = v22;
  v26[1] = v22;
  std::__split_buffer<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(v26);
  return v25;
}

uint64_t std::__split_buffer<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 3);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = mdm::zone_mallocator::instance(i);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v6, v5);
  }

  return a1;
}

uint64_t geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = off_1F2A04738;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A04738;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A04738;

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v60 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 3);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2 - 24, a1))
        {
          v21 = a1;
          v20 = a2 - 24;
          goto LABEL_67;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a2 - 24);
      return;
    }

    if (v10 == 4)
    {
      break;
    }

    if (v10 == 5)
    {
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24);
      return;
    }

LABEL_10:
    if (v9 <= 575)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v23 = a1 + 24;
          if (a1 + 24 != a2)
          {
            v24 = 0;
            v25 = a1;
            do
            {
              v26 = v25;
              v25 = v23;
              if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v23, v26))
              {
                v27 = a2;
                geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, v25);
                v28 = v24;
                while (1)
                {
                  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + v28 + 24, a1 + v28);
                  if (!v28)
                  {
                    break;
                  }

                  v29 = md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, a1 + v28 - 24);
                  v28 -= 24;
                  if (!v29)
                  {
                    v30 = a1 + v28 + 24;
                    goto LABEL_79;
                  }
                }

                v30 = a1;
LABEL_79:
                geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v30, &v58);
                v58 = off_1F2A04738;

                a2 = v27;
              }

              v23 = v25 + 24;
              v24 += 24;
            }

            while (v25 + 24 != a2);
          }
        }
      }

      else if (a1 != a2)
      {
        v54 = a1 + 24;
        if (a1 + 24 != a2)
        {
          do
          {
            v55 = v54;
            if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v54, a1))
            {
              geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, v55);
              do
              {
                geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + 24, a1);
                a1 -= 24;
              }

              while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, a1));
              geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + 24, &v58);
              v58 = off_1F2A04738;
            }

            v54 = v55 + 24;
            a1 = v55;
          }

          while (v55 + 24 != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v31 = v11 >> 1;
        v32 = v11 >> 1;
        v56 = a2;
        do
        {
          v33 = v32;
          if (v31 >= v32)
          {
            v34 = (2 * v32) | 1;
            v35 = a1 + 24 * v34;
            if (2 * v32 + 2 < v10 && md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 24 * v34, v35 + 24))
            {
              v35 += 24;
              v34 = 2 * v33 + 2;
            }

            v36 = a1 + 24 * v33;
            if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v35, v36))
            {
              geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, a1 + 24 * v33);
              do
              {
                v37 = v35;
                geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v36, v35);
                if (v31 < v34)
                {
                  break;
                }

                v38 = (2 * v34) | 1;
                v35 = a1 + 24 * v38;
                v34 = 2 * v34 + 2;
                if (v34 >= v10)
                {
                  v34 = v38;
                }

                else if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 24 * v38, v35 + 24))
                {
                  v35 += 24;
                }

                else
                {
                  v34 = v38;
                }

                v36 = v37;
              }

              while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v35, &v58));
              geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v37, &v58);
              v58 = off_1F2A04738;

              a2 = v56;
            }
          }

          v32 = v33 - 1;
        }

        while (v33);
        v39 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
        do
        {
          geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v57, a1);
          v40 = 0;
          v41 = a1;
          do
          {
            v42 = v41 + 24 * v40;
            v43 = v42 + 24;
            v44 = (2 * v40) | 1;
            v45 = 2 * v40 + 2;
            if (v45 < v39)
            {
              v46 = v42 + 48;
              if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v42 + 24, v42 + 48))
              {
                v43 = v46;
                v44 = v45;
              }
            }

            geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v41, v43);
            v41 = v43;
            v40 = v44;
          }

          while (v44 <= ((v39 - 2) >> 1));
          v47 = a2 - 24;
          if (v43 == a2 - 24)
          {
            v48 = a2 - 24;
            geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v43, v57);
          }

          else
          {
            geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v43, v47);
            v48 = a2 - 24;
            geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v47, v57);
            v49 = v43 - a1 + 24;
            if (v49 >= 25)
            {
              v50 = (-2 - 0x5555555555555555 * (v49 >> 3)) >> 1;
              v51 = a1 + 24 * v50;
              if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v51, v43))
              {
                geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, v43);
                do
                {
                  v52 = v51;
                  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v43, v51);
                  if (!v50)
                  {
                    break;
                  }

                  v50 = (v50 - 1) >> 1;
                  v51 = a1 + 24 * v50;
                  v43 = v52;
                }

                while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v51, &v58));
                geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v52, &v58);
                v58 = off_1F2A04738;
              }
            }
          }

          v57[0] = off_1F2A04738;

          a2 = v48;
        }

        while (v39-- > 2);
      }

      return;
    }

    v12 = a1 + 24 * (v10 >> 1);
    if (v9 < 0xC01)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1 + 24 * (v10 >> 1), a1, a2 - 24);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24 * (v10 >> 1), a2 - 24);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1 + 24, v12 - 24, a2 - 48);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1 + 48, v12 + 24, a2 - 72);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(v12 - 24, a1 + 24 * (v10 >> 1), v12 + 24);
      geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, a1);
      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, a1 + 24 * (v10 >> 1));
      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + 24 * (v10 >> 1), &v58);
      v58 = off_1F2A04738;
    }

    --a3;
    if ((a4 & 1) != 0 || md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 - 24, a1))
    {
      geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, a1);
      v13 = a1;
      do
      {
        v13 += 24;
      }

      while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v13, &v58));
      v14 = a2;
      if (v13 - 24 == a1)
      {
        v14 = a2;
        do
        {
          if (v13 >= v14)
          {
            break;
          }

          v14 -= 24;
        }

        while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v14, &v58));
      }

      else
      {
        do
        {
          v14 -= 24;
        }

        while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v14, &v58));
      }

      if (v13 >= v14)
      {
        v8 = v13;
      }

      else
      {
        v15 = v14;
        v8 = v13;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(v8, v15);
          do
          {
            v8 += 24;
          }

          while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v8, &v58));
          do
          {
            v15 -= 24;
          }

          while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v15, &v58));
        }

        while (v8 < v15);
      }

      if (v8 - 24 != a1)
      {
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, v8 - 24);
      }

      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v8 - 24, &v58);
      v58 = off_1F2A04738;

      if (v13 < v14)
      {
        goto LABEL_38;
      }

      v16 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>(a1, v8 - 24);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>(v8, a2))
      {
        a2 = v8 - 24;
        if (!v16)
        {
          goto LABEL_2;
        }

        return;
      }

      if (!v16)
      {
LABEL_38:
        std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,false>(a1, v8 - 24, a3, a4 & 1);
        goto LABEL_57;
      }
    }

    else
    {
      geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, a1);
      if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, a2 - 24))
      {
        v8 = a1;
        do
        {
          v8 += 24;
        }

        while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, v8));
      }

      else
      {
        v17 = a1 + 24;
        do
        {
          v8 = v17;
          if (v17 >= a2)
          {
            break;
          }

          v18 = md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, v17);
          v17 = v8 + 24;
        }

        while (!v18);
      }

      v19 = a2;
      if (v8 < a2)
      {
        v19 = a2;
        do
        {
          v19 -= 24;
        }

        while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, v19));
      }

      while (v8 < v19)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(v8, v19);
        do
        {
          v8 += 24;
        }

        while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, v8));
        do
        {
          v19 -= 24;
        }

        while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, v19));
      }

      if (v8 - 24 != a1)
      {
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, v8 - 24);
      }

      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v8 - 24, &v58);
      v58 = off_1F2A04738;

LABEL_57:
      a4 = 0;
    }
  }

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a1 + 48);
  if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2 - 24, a1 + 48))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1 + 48, a2 - 24);
    if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 48, a1 + 24))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1 + 24, a1 + 48);
      if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 24, a1))
      {
        v20 = a1 + 24;
        v21 = a1;
LABEL_67:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(v21, v20);
      }
    }
  }
}

BOOL md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = [v4 groupItemVerticalDisplayOrder];
  v6 = [*(a2 + 8) groupItemVerticalDisplayOrder];

  v7 = *(a1 + 8);
  v8 = v7;
  if (v5 == v6)
  {
    v9 = [v7 groupItemHorizontalDisplayOrder];
    v10 = [*(a2 + 8) groupItemHorizontalDisplayOrder];

    v11 = *(a1 + 8);
    v8 = v11;
    if (v9 == v10)
    {
      v12 = [v11 collisionPriority];
      v13 = [*(a2 + 8) collisionPriority];
    }

    else
    {
      v12 = [v11 groupItemHorizontalDisplayOrder];
      v13 = [*(a2 + 8) groupItemHorizontalDisplayOrder];
    }
  }

  else
  {
    v12 = [v7 groupItemVerticalDisplayOrder];
    v13 = [*(a2 + 8) groupItemVerticalDisplayOrder];
  }

  v14 = v12 > v13;

  return v14;
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x1E69E9840];
  geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v4, a1);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, a2);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a2, v4);
  v4[0] = off_1F2A04738;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2, a1);
  v7 = md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a3, a2);
  if (v6)
  {
    if (v7)
    {
      v8 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1, a2);
      if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a3, a2))
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a2, a3);
    if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2, a1))
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(v8, v9);
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a2, a3);
  if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a3, a4);
    if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a3, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a2, a3);
      if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1, a2);
      }
    }
  }

  if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a5, a4))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a4, a5);
    if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a4, a3))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a3, a4);
      if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a3, a2))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a2, a3);
        if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2, a1))
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>(uint64_t a1, uint64_t a2)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a2 - 24);
        return 1;
      case 4:
        v15 = a2 - 24;
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a1 + 48);
        if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v15, a1 + 48))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1 + 48, v15);
        if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 48, a1 + 24))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1 + 24, a1 + 48);
        if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 24, a1))
        {
          return 1;
        }

        v7 = a1 + 24;
        v6 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 24;
      if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2 - 24, a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(v6, v7);
      }

      return 1;
    }
  }

  v8 = a1 + 48;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a1 + 48);
  v9 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v9, v8))
    {
      geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v17, v9);
      v12 = v10;
      while (1)
      {
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + v12 + 72, a1 + v12 + 48);
        if (v12 == -48)
        {
          break;
        }

        v13 = md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v17, a1 + v12 + 24);
        v12 -= 24;
        if (!v13)
        {
          v14 = a1 + v12 + 72;
          goto LABEL_20;
        }
      }

      v14 = a1;
LABEL_20:
      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v14, v17);
      ++v11;
      v17[0] = off_1F2A04738;

      if (v11 == 8)
      {
        return v9 + 24 == a2;
      }
    }

    v8 = v9;
    v10 += 24;
    v9 += 24;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t md::FlyoverRouteElevationSource::elevationForCoordinate(uint64_t a1, double *a2, void *a3)
{
  v4 = a2;
  if (*(a1 + 104) != 1)
  {
    if (*(a1 + 24) != 1)
    {
      goto LABEL_49;
    }

    v24 = a2[2];
    v25 = +[VKSharedResourcesManager sharedResources];
    Undulation = md::GeoidModel::getUndulation([v25 undulationModel], *v4, v4[1]);
    v27 = *&Undulation;
    if (!HIDWORD(Undulation))
    {
      v27 = 0.0;
    }

    *&v3 = v27 + v24;

    v28 = 0x100000000;
    return v28 & 0xFF00000000 | LODWORD(v3);
  }

  v5 = a3[5];
  v44 = a3 + 6;
  if (v5 == a3 + 6)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v6 = *(v5 + 25);
    v3 = v4[1];
    v7 = tan(*v4 * 0.00872664626 + 0.785398163);
    v8 = log(v7);
    v9 = a3[1];
    if (v9)
    {
      v10 = (1 << v6);
      v11 = vcvtmd_s64_f64((v3 * 0.00277777778 + 0.5) * v10);
      v12 = (1 << v6) + ~vcvtmd_s64_f64((v8 * 0.159154943 + 0.5) * v10);
      v13 = (v12 - 0x61C8864680B583EBLL + (((v6 + 0x53A3C687B1BC605ALL) ^ 0x9E3779B97F4A7D14) << 6) + (((v6 + 0x53A3C687B1BC605ALL) ^ 0x9E3779B97F4A7D14) >> 2)) ^ (v6 + 0x53A3C687B1BC605ALL) ^ 0x9E3779B97F4A7D14;
      v14 = (v11 - 0x61C8864680B583EBLL + (v13 << 6) + (v13 >> 2)) ^ v13;
      v15 = vcnt_s8(v9);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v15.u32[0];
      if (v15.u32[0] > 1uLL)
      {
        v17 = (v11 - 0x61C8864680B583EBLL + (v13 << 6) + (v13 >> 2)) ^ v13;
        if (v14 >= *&v9)
        {
          v17 = v14 % *&v9;
        }
      }

      else
      {
        v17 = (*&v9 - 1) & v14;
      }

      v18 = *(*a3 + 8 * v17);
      if (v18)
      {
        v19 = *v18;
        if (*v18)
        {
          break;
        }
      }
    }

LABEL_25:
    v21 = v5[1];
    if (v21)
    {
      do
      {
        v22 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v5[2];
        v23 = *v22 == v5;
        v5 = v22;
      }

      while (!v23);
    }

    v5 = v22;
    v4 = a2;
    if (v22 == v44)
    {
      goto LABEL_49;
    }
  }

  while (1)
  {
    v20 = *(v19 + 1);
    if (v14 == v20)
    {
      break;
    }

    if (v16 > 1)
    {
      if (v20 >= *&v9)
      {
        v20 %= *&v9;
      }
    }

    else
    {
      v20 &= *&v9 - 1;
    }

    if (v20 != v17)
    {
      goto LABEL_25;
    }

LABEL_24:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  if (v19[40] == 1)
  {
    geo::QuadTile::computeHash(v19 + 16);
    v19[40] = 0;
  }

  if (*(v19 + 4) != v14 || v19[16] != 255 || v19[17] != v6 || *(v19 + 5) != v12 || *(v19 + 6) != v11)
  {
    goto LABEL_24;
  }

  v30 = *(v19 + 6);
  v29 = *(v19 + 7);
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = 1;
  if (v30)
  {
    v32 = 1 << *(v30 + 169);
    v33 = 1.0 / v32;
    v34 = v33 * (v32 + ~*(v30 + 172));
    v47 = v33 * *(v30 + 176);
    v48 = v34;
    v35 = &v47;
    v49[0] = v47 + v33;
    v49[1] = v34 + v33;
    v36 = a2[1];
    v3 = a2[2];
    v37 = tan(*a2 * 0.00872664626 + 0.785398163);
    v40.n128_f64[0] = log(v37);
    v38 = 0;
    v39 = v36 * 0.00277777778 + 0.5;
    v40.n128_f64[0] = v40.n128_f64[0] * 0.159154943 + 0.5;
    v46[0] = v39;
    v46[1] = v40.n128_f64[0];
    v46[2] = v3;
    while (v39 >= *v35 && v39 < v49[v38])
    {
      v41 = v31;
      v31 = 0;
      v39 = v40.n128_f64[0];
      v35 = &v48;
      v38 = 1;
      if ((v41 & 1) == 0)
      {
        v28 = (*(*v30 + 56))(v30, v46, 1, v40, v40.n128_f64[0]);
        v31 = 0;
        LODWORD(v3) = v28;
        if (v29)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      }
    }

    v28 = 0;
    v31 = 1;
    if (!v29)
    {
      goto LABEL_48;
    }

LABEL_47:
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  else
  {
    v28 = 0;
    if (v29)
    {
      goto LABEL_47;
    }
  }

LABEL_48:
  if (v31)
  {
LABEL_49:
    v28 = 0;
    LODWORD(v3) &= 0xFFFFFF00;
  }

  return v28 & 0xFF00000000 | LODWORD(v3);
}

void sub_1B2E2FF68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::FlyoverRouteElevationSource::~FlyoverRouteElevationSource(md::FlyoverRouteElevationSource *this)
{
  md::FlyoverRouteElevationSource::~FlyoverRouteElevationSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04B28;
  v2 = *(this + 26);
  if (v2 != *(this + 28))
  {
    free(v2);
  }

  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::~__hash_table(this + 168);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 88);
  *this = &unk_1F2A21C48;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 8);
}

void md::RouteElevationSource::~RouteElevationSource(md::RouteElevationSource *this)
{
  *this = &unk_1F2A21C48;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 8);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A21C48;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 8);
}

void md::StandardRouteElevationSource::~StandardRouteElevationSource(md::StandardRouteElevationSource *this)
{
  *this = &unk_1F2A21C48;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 8);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A21C48;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 8);
}

void sub_1B2E303E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void md::mun::MeshResourceFetcher::expireResource(md::mun::MeshResourceFetcher *this, const gdc::ResourceKey *a2)
{
  v4 = v3;
  v5 = [MEMORY[0x1E69A2610] modernLoader];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2md3mun19MeshResourceFetcher14expireResourceERKN3gdc11ResourceKeyE_block_invoke;
  v6[3] = &__block_descriptor_48_e733_B24__0r___GEOTileKey_b7b1_____GEOStandardTileKey_b40b6b26b26b14b4b4___GEOGloriaQuadIDTileKey_b6b64b14b4______b10b10b12____b10b22_I____GEORegionalResourceKey_b32b8b6b8b8b1b57___GEOSputnikMetadataKey_b32b24b14b8b42___GEOFlyoverKey_b6b26b26b8b24b14b8b8___GEOTransitLineSelectionKey_b6b25b25b64___GEOPolygonSelectionKey_b6b25b25b64___GEORoadSelectionKey_b6b25b25b64___GEOContourLinesKey_b6b26b26b4b8b50___GEOTileOverlayKey_b6b26b26b8b32b16b6___GEOIdentifiedResourceKey_QCCb1b39___GEOMuninMeshKey_b64b32b16b5b3___GEOVisualLocalizationTrackKey_SCb16b6b26b26b22___GEOVisualLocalizationMetadataKey_b6b9b25b6b26b26b22___GEOVisualLocalizationDataKey_QCb5b21b21b1___GEOS2TileKey_b6b26b26b3b14b4b4b37___GEOLiveTileKey_b6b26b26b14b4b4b4b36___8d16l;
  v6[4] = v2;
  v6[5] = v4;
  [v5 expireTilesWithPredicate:v6];
}

uint64_t anonymous namespace::tileKeyFromResourceKey(_anonymous_namespace_ *this, const gdc::ResourceKey *a2)
{
  gdc::ResourceKey::keyData(v4, this);
  v2 = v4[0];
  gdc::ResourceKey::getUInt64(v4[0], 0);
  gdc::ResourceKey::getUInt64(v2, 1u);
  gdc::ResourceKey::getUInt64(v2, 2u);
  gdc::ResourceKey::getUInt64(v2, 3u);
  if (v2 != v4[2])
  {
    free(v2);
  }

  return GEOMuninMeshTileKeyMake();
}

void md::mun::MeshResourceFetcher::cancelAllResources(md::mun::MeshResourceFetcher *this)
{
  v2 = [MEMORY[0x1E69A2610] modernLoader];
  [v2 cancelAllForClientSynchronous:*(this + 76)];
}

void md::mun::MeshResourceFetcher::cancelResource(md::mun::MeshResourceFetcher *this, const gdc::ResourceKey *a2)
{
  v5 = [MEMORY[0x1E69A2610] modernLoader];
  [v5 cancelKey:&v6 forClient:*(this + 76)];
}

void md::mun::MeshResourceFetcher::cancelResources(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E69A2610] modernLoader];
  for (i = *(a2 + 16); i; i = *i)
  {
    v6 = i[3];
    v12 = i[2];
    v13[0] = v16;
    v13[1] = v16;
    v14 = v16;
    v15 = 32;
    geo::small_vector_base<unsigned char>::append<unsigned char const*>(v13, v6, i[4]);
    v16[4] = i[11];
    v17 = *(i + 6);
    v10 = 0;
    v11 = 0;
    v11 = v8;
    v9 = *(a1 + 608);
    [v4 cancelKey:&v10 forClient:v9];

    if (v13[0] != v14)
    {
      free(v13[0]);
    }
  }
}

void md::mun::MeshResourceFetcher::fetchResources(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v21 = a4;
  v6 = *(a2 + 16);
  if (v6)
  {
    do
    {
      v7 = *(v6 + 24);
      v38 = *(v6 + 16);
      v39 = v43;
      v40 = v43;
      v41 = v43;
      v42 = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(&v39, v7, *(v6 + 32));
      v44 = *(v6 + 88);
      v45 = *(v6 + 96);
      v8 = *(v6 + 112);
      *&v37 = 0;
      *(&v37 + 1) = 0;
      *(&v37 + 1) = v10;
      v11 = v45;
      if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
      }

      v12 = GEOGetVectorKitResourceLoadingLog_log;
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 134219264;
        v47 = *(&v37 + 1);
        v48 = 1024;
        v49 = *(&v37 + 9);
        v50 = 1024;
        v51 = *(&v37 + 13);
        v52 = 1024;
        v53 = *(&v37 + 15) & 0x1F;
        v54 = 1024;
        v55 = *(&v37 + 15) >> 5;
        v56 = 2048;
        v57 = *(&v45 + 1);
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ResourceFetch", "pointId=%llu buildId=%d bucketId=%d cameraId=%d lod=%d parent_signpost=%llu", buf, 0x2Eu);
      }

      gdc::ResourceFetcher::willStartLoading(a1);
      v14 = a1[76];
      md::GEOResourceFetcher::willLoadGEOKey(a1, &v37, v14, &v38);
      [MEMORY[0x1E69A2610] modernLoader];
      v24 = v22 = v6;
      v23 = HIDWORD(v38);
      v15 = qos_class_self();
      v16 = v45;
      v17 = a1[79];
      v18 = *(a3 + 16);
      md::LabelExternalPointFeature::incident(v18);
      objc_claimAutoreleasedReturnValue();
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3321888768;
      v25[2] = ___ZN2md3mun19MeshResourceFetcher14fetchResourcesERKNSt3__113unordered_mapIN3gdc11ResourceKeyEyNS4_15ResourceKeyHashENS2_8equal_toIS5_EENS2_9allocatorINS2_4pairIKS5_yEEEEEEPN3geo9TaskQueueEPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke;
      v25[3] = &unk_1F2A04BF0;
      v28 = a1;
      v29 = v11;
      v19 = v14;
      v26 = v19;
      v30 = v8;
      v31 = v38;
      v32[0] = v35;
      v32[1] = v35;
      v33 = v35;
      v34 = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(v32, v39, v40);
      v35[4] = v44;
      v36 = v45;
      v27 = v21;
      [v24 loadKey:&v37 priority:v23 forClient:v19 options:3 reason:1 qos:v15 signpostID:v16 auditToken:v17 callbackQ:v18 beginNetwork:0 callback:v25];

      if (v32[0] != v33)
      {
        free(v32[0]);
      }

      if (v39 != v41)
      {
        free(v39);
      }

      v6 = *v22;
    }

    while (*v22);
  }
}

void ___ZN2md3mun19MeshResourceFetcher14fetchResourcesERKNSt3__113unordered_mapIN3gdc11ResourceKeyEyNS4_15ResourceKeyHashENS2_8equal_toIS5_EENS2_9allocatorINS2_4pairIKS5_yEEEEEEPN3geo9TaskQueueEPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke(uint64_t a1, const _GEOTileKey *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v10 = a5;
  v11 = a6;
  v12 = *(a1 + 48);
  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v13 = GEOGetVectorKitResourceLoadingLog_log;
  v14 = v13;
  v15 = *(a1 + 56);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v14, OS_SIGNPOST_INTERVAL_END, v15, "ResourceFetch", &unk_1B3514CAA, buf, 2u);
  }

  md::GEOResourceFetcher::didLoadGEOKey(v12, a2, *(a1 + 32));
  v24 = 0;
  if (v19)
  {
    v16 = [v19 decodedRepresentation];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v23 = v10;
      v18 = [v19 readDataWithError:&v23];
      v23;
    }

    v24 = v18;
  }

  v22 = 0;
  memset(buf, 0, sizeof(buf));
  v21 = 0;
  std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>();
}

void sub_1B2E313BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a30 == 1 && a19 != a21)
  {
    free(a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_72c23_ZTSN3gdc11ResourceKeyE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 != *(a1 + 96))
  {
    free(v2);
  }
}

__n128 __copy_helper_block_ea8_72c23_ZTSN3gdc11ResourceKeyE(void *a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  a1[10] = a1 + 14;
  v4 = a1 + 10;
  a1[9] = v3;
  a1[11] = a1 + 14;
  a1[12] = a1 + 14;
  a1[13] = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(a1 + 10, *(a2 + 80), *(a2 + 88));
  v4[8] = *(a2 + 144);
  result = *(a2 + 152);
  *(v4 + 9) = result;
  return result;
}

uint64_t gdc::Error::Error(uint64_t a1, uint64_t a2, char *__s, __int128 *a4)
{
  *a1 = a2;
  v6 = (a1 + 32);
  std::string::basic_string[abi:nn200100]<0>((a1 + 8), __s);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    v6->__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  return a1;
}

void sub_1B2E315E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<gdc::DataObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4EAC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::mun::MeshResourceFetcher::~MeshResourceFetcher(md::mun::MeshResourceFetcher *this)
{
  md::mun::MeshResourceFetcher::~MeshResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04B58;
  v2 = [MEMORY[0x1E69A2610] modernLoader];
  [v2 cancelAllForClient:*(this + 76)];

  v3 = [MEMORY[0x1E69A2610] modernLoader];
  [v3 closeForClient:*(this + 76)];

  *(this + 78) = &unk_1F2A2FB88;
  *(this + 75) = &unk_1F2A3D108;

  *this = off_1F2A2FAE8;
  std::__hash_table<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>,std::__unordered_map_equal<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::equal_to<std::pair<_GEOTileKey,void *>>,md::UniqueKeyHasher,true>,std::allocator<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>>>::~__hash_table(this + 560);
  std::mutex::~mutex((this + 496));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this + 456);

  gdc::ResourceFetcher::~ResourceFetcher(this);
}

void sub_1B2E317C4(_Unwind_Exception *a1)
{
  v3 = v2;

  *(v1 + 624) = &unk_1F2A2FB88;
  *(v1 + 600) = &unk_1F2A3D108;

  *v1 = off_1F2A2FAE8;
  std::__hash_table<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>,std::__unordered_map_equal<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::equal_to<std::pair<_GEOTileKey,void *>>,md::UniqueKeyHasher,true>,std::allocator<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>>>::~__hash_table(v1 + 560);
  std::mutex::~mutex((v1 + 496));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v1 + 456);
  gdc::ResourceFetcher::~ResourceFetcher(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>,std::__unordered_map_equal<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::equal_to<std::pair<_GEOTileKey,void *>>,md::UniqueKeyHasher,true>,std::allocator<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[6];
      if (v4 != v2[8])
      {
        free(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__shared_ptr_emplace<md::TextureResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A04DA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void **md::MCDecoder<md::mun::MuninMCMeshResource>::decode@<X0>(void ***a1@<X2>, void *a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  result = *a1;
  if (*a1)
  {
    v5 = (*(*result + 4))(result);
    v6 = (*(**a1 + 3))();
    result = mc_scene_decode(v5, v6);
    if (result)
    {
      v7 = result;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      if (result[5])
      {
        v8 = 0;
        do
        {
          v9 = (v7[4] + 24 * v8);
          v10 = v9[2];
          if (v10)
          {
            v11 = *(v10 + 8);
            if (v11)
            {
              LOBYTE(v34[7]) = 0;
              memset(v34, 0, 17);
              v30 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v11 length:*(v10 + 4) freeWhenDone:0];
              std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>();
            }
          }

          v12 = v31;
          v13 = v32;
          v14 = &v32[-v31] >> 4;
          v15 = *v9;
          if (v14 <= *v9)
          {
            v16 = v15 + 1;
            v17 = v16 - v14;
            if (v16 <= v14)
            {
              if (v16 < v14)
              {
                v20 = (v31 + 16 * v16);
                while (v13 != v20)
                {
                  v21 = *(v13 - 1);
                  if (v21)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
                  }

                  v13 -= 16;
                }

                v32 = v20;
              }
            }

            else
            {
              if (v17 > (v33 - v32) >> 4)
              {
                if (!(v16 >> 60))
                {
                  *&v34[2] = &v31;
                  v18 = v33 - v31;
                  if ((v33 - v31) >> 3 > v16)
                  {
                    v16 = v18 >> 3;
                  }

                  if (v18 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v19 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v19 = v16;
                  }

                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v19);
                }

                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              bzero(v32, 16 * v17);
              v32 += 16 * v17;
            }

            v15 = *v9;
            v12 = v31;
          }

          v22 = (v12 + 16 * v15);
          v23 = v22[1];
          *v22 = 0;
          v22[1] = 0;
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v23);
          }

          ++v8;
        }

        while (v8 < v7[5]);
      }

      v24 = (*(**a1 + 4))();
      v25 = (*(**a1 + 3))();
      no_copy = mc_container_create_read_no_copy("MCP4", v24, v25);
      if (no_copy)
      {
        v27 = no_copy;
        for (i = 0; ; ++i)
        {
          if (i >= *(v27 + 16))
          {
            goto LABEL_41;
          }

          if (mc_container_get_chapter_info(v27, i, &v29) && v29 == 5 && mc_container_decode_la_data_chapter(v27, i, v34))
          {
            break;
          }
        }

        memcpy(__dst, v34 + 1, sizeof(__dst));
LABEL_41:
        mc_container_free(v27);
      }

      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1B2E31E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, char a16)
{
  shared_weak_owners = v16[1].__shared_weak_owners_;
  if (shared_weak_owners != v16[2].__shared_owners_)
  {
    free(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v19);
  a13 = &a16;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a13);
  _Unwind_Resume(a1);
}

void md::mun::MuninMCMeshResource::~MuninMCMeshResource(void ***this)
{
  md::mun::MuninMCMeshResource::~MuninMCMeshResource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04D80;
  mc_scene_free(this[19]);
  v3 = (this + 115);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = this[2];
  if (v2 != this[4])
  {
    free(v2);
  }
}

void std::__shared_ptr_emplace<md::mun::MuninMCMeshResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A04D48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MCDecoder<md::mun::MuninMCMeshResource>::~MCDecoder(uint64_t a1)
{
  *a1 = &unk_1F2A04D20;
  *(a1 + 8) = &unk_1F2A34758;
  *(a1 + 16) = &unk_1F2A59028;

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MCDecoder<md::mun::MuninMCMeshResource>::~MCDecoder(uint64_t a1)
{
  *a1 = &unk_1F2A04D20;
  *(a1 + 8) = &unk_1F2A34758;
  *(a1 + 16) = &unk_1F2A59028;

  return a1;
}

void std::__shared_ptr_emplace<md::MCDecoder<md::mun::MuninMCMeshResource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A04CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::C3mResourceDecoder<md::mun::MuninMeshResource>::decode@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X2>, void *a3@<X8>)
{
  result = *a2;
  if (*a2 && (a2[112] & 1) != 0)
  {
    v7 = (*(*result + 32))(result);
    v8 = (*(**a2 + 24))();
    geo::c3m::loadFromChunk(v22, a1 + 72, v7, v8, v9, v10, v11);
    if (v22[0])
    {
      memset(v21, 0, sizeof(v21));
      std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(v21, 0x4EC4EC4EC4EC4EC5 * ((v24 - v23) >> 3));
      v12 = v23;
      for (i = v24; v12 != i; v12 += 104)
      {
        v14 = *v12;
        if ((v14 - 4) < 2 || v14 == 2)
        {
          v16 = *(v12 + 1);
          if (*(v12 + 2) - v16 == 32)
          {
            v20 = 0;
            v18 = 0uLL;
            v19 = 0;
            [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:**v16 length:(*v16)[1] - **v16 freeWhenDone:0];
            objc_claimAutoreleasedReturnValue();
            std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>();
          }
        }

        else if (!*v12)
        {
          v17 = *(v12 + 1);
          if (*(v12 + 2) - v17 == 32)
          {
            v20 = 0;
            v18 = 0uLL;
            v19 = 0;
            [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:**v17 length:(*v17)[1] - **v17 freeWhenDone:0];
            objc_claimAutoreleasedReturnValue();
            std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>();
          }
        }

        v18 = 0uLL;
        std::vector<std::shared_ptr<gdc::Resource>>::push_back[abi:nn200100](v21, &v18);
        if (*(&v18 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v18 + 1));
        }
      }

      operator new();
    }

    *a3 = 0;
    a3[1] = 0;
    return geo::optional<geo::c3m::Model>::~optional(v22);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_1B2E32544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  geo::small_vector_base<geo::c3m::Mesh>::~small_vector_base(&v31[11].__shared_weak_owners_);
  shared_weak_owners = v31[1].__shared_weak_owners_;
  if (shared_weak_owners != v31[2].__shared_owners_)
  {
    free(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v31);
  operator delete(v34);
  a13 = &a28;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a13);
  geo::optional<geo::c3m::Model>::~optional(&a31);
  _Unwind_Resume(a1);
}

uint64_t geo::optional<geo::c3m::Model>::~optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::~small_vector_base((a1 + 328));
    geo::small_vector_base<geo::c3m::Mesh>::~small_vector_base((a1 + 112));
    *a1 = 0;
  }

  return a1;
}

char **geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::~small_vector_base(char **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      geo::small_vector_base<geo::c3m::TextureData>::~small_vector_base((v2 + 8));
      v2 += 104;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2 != a1[2])
  {
    free(v2);
  }

  return a1;
}

uint64_t *geo::small_vector_base<geo::c3m::Mesh>::~small_vector_base(uint64_t *a1)
{
  geo::small_vector_base<geo::c3m::Mesh>::runDestructors(*a1, a1[1]);
  if (*a1 != a1[2])
  {
    free(*a1);
  }

  return a1;
}

void geo::small_vector_base<geo::c3m::Mesh>::runDestructors(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 152);
      if (v4)
      {
        *(v3 + 160) = v4;
        operator delete(v4);
      }

      v5 = *(v3 + 128);
      if (v5)
      {
        *(v3 + 136) = v5;
        operator delete(v5);
      }

      v6 = *(v3 + 104);
      if (v6)
      {
        *(v3 + 112) = v6;
        operator delete(v6);
      }

      v7 = *(v3 + 80);
      if (v7)
      {
        *(v3 + 88) = v7;
        operator delete(v7);
      }

      if (*v3 != *(v3 + 16))
      {
        free(*v3);
      }

      v3 += 184;
    }

    while (v3 != a2);
  }
}

uint64_t geo::small_vector_base<geo::c3m::TextureData>::~small_vector_base(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v4 = v2[1];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2 != *(a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void geo::small_vector_base<geo::c3m::Mesh>::append<geo::c3m::Mesh const*>(void **a1, char *a2, char *a3)
{
  v4 = a2;
  v5 = a1;
  v38 = a3 - a2;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 - *a1;
  v10 = 0xD37A6F4DE9BD37A7 * (v9 >> 3);
  if (0xD37A6F4DE9BD37A7 * ((a3 - a2) >> 3) > v6 - v10)
  {
    v11 = v10 - 0x2C8590B21642C859 * ((a3 - a2) >> 3);
    v12 = a1[2];
    v13 = (1 << -__clz(v6 + 1));
    if (v6 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    if (v14 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    v16 = malloc_type_malloc(184 * v15, 0x1030040E47C81F6uLL);
    v17 = *v5;
    v18 = v5[1];
    if (*v5 != v18)
    {
      v19 = v16;
      do
      {
        v20 = v19 + 4;
        *v19 = (v19 + 4);
        v19[1] = (v19 + 4);
        v19[2] = (v19 + 4);
        v21 = *(v17 + 2);
        v19[3] = *(v17 + 3);
        v22 = *v17;
        if (*v17 == v21)
        {
          v19[1] = (v20 + *(v17 + 1) - v22);
          v24 = *(v17 + 1);
          while (v22 != v24)
          {
            v25 = *v22;
            v20[2] = *(v22 + 2);
            *v20 = v25;
            v20 += 3;
            v22 = (v22 + 24);
          }
        }

        else
        {
          v23 = *(v17 + 1);
          *v19 = v22;
          v19[1] = v23;
          *v17 = 0uLL;
          *(v17 + 1) = 0uLL;
        }

        v19[10] = 0;
        v19[11] = 0;
        v19[12] = 0;
        *(v19 + 5) = *(v17 + 5);
        v19[12] = *(v17 + 12);
        *(v17 + 10) = 0;
        *(v17 + 11) = 0;
        *(v17 + 12) = 0;
        v19[13] = 0;
        v19[14] = 0;
        v19[15] = 0;
        *(v19 + 13) = *(v17 + 104);
        v19[15] = *(v17 + 15);
        *(v17 + 13) = 0;
        *(v17 + 14) = 0;
        *(v17 + 15) = 0;
        v19[16] = 0;
        v19[17] = 0;
        v19[18] = 0;
        *(v19 + 8) = *(v17 + 8);
        v19[18] = *(v17 + 18);
        *(v17 + 16) = 0;
        *(v17 + 17) = 0;
        *(v17 + 18) = 0;
        v19[19] = 0;
        v19[20] = 0;
        v19[21] = 0;
        *(v19 + 19) = *(v17 + 152);
        v19[21] = *(v17 + 21);
        *(v17 + 19) = 0;
        *(v17 + 20) = 0;
        *(v17 + 21) = 0;
        v19[22] = *(v17 + 22);
        v19 += 23;
        v17 += 184;
      }

      while (v17 != v18);
      v17 = *v5;
      v18 = v5[1];
    }

    geo::small_vector_base<geo::c3m::Mesh>::runDestructors(v17, v18);
    if (v8 != v12)
    {
      free(*v5);
    }

    v7 = (v16 + v9);
    *v5 = v16;
    v5[1] = v16 + v9;
    v5[3] = v15;
  }

  if (v4 != a3)
  {
    v37 = v5;
    do
    {
      v26 = v7 + 4;
      *v7 = v7 + 4;
      v7[1] = v7 + 4;
      v7[2] = v7 + 4;
      v7[3] = 2;
      v28 = *v4;
      v27 = *(v4 + 1);
      v29 = v27 - *v4;
      v30 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
      if (v30 >= 3)
      {
        if (v30 <= 4)
        {
          v31 = 4;
        }

        else
        {
          v31 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
        }

        v26 = malloc_type_malloc(24 * v31, 0x1000040504FFAC1uLL);
        v32 = *v7;
        v33 = v7[1];
        if (*v7 != v33)
        {
          v34 = v26;
          do
          {
            v35 = *v32;
            v34[2] = *(v32 + 2);
            *v34 = v35;
            v34 += 3;
            v32 = (v32 + 24);
          }

          while (v32 != v33);
        }

        *v7 = v26;
        v7[1] = v26;
        v7[3] = v31;
      }

      if (v28 != v27)
      {
        do
        {
          v36 = *v28;
          v26[2] = *(v28 + 2);
          *v26 = v36;
          v26 += 3;
          v28 = (v28 + 24);
        }

        while (v28 != v27);
        v26 = v7[1];
      }

      v7[1] = v26 + v29;
      std::vector<gm::Matrix<float,3,1>>::vector[abi:nn200100](v7 + 10, v4 + 10);
      std::vector<gm::Matrix<float,2,1>>::vector[abi:nn200100](v7 + 13, v4 + 13);
      std::vector<md::CommandBufferLocation>::vector[abi:nn200100](v7 + 16, v4 + 16);
      std::vector<md::CommandBufferLocation>::vector[abi:nn200100](v7 + 19, v4 + 19);
      v7[22] = *(v4 + 22);
      v4 += 184;
      v7 += 23;
    }

    while (v4 != a3);
    v5 = v37;
    v7 = v37[1];
  }

  v5[1] = v7 + v38;
}

void sub_1B2E32B1C(_Unwind_Exception *exception_object)
{
  if (*v1 != *(v1 + 16))
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::append<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = a3 - a2;
  v7 = 0x4EC4EC4EC4EC4EC5 * ((a3 - a2) >> 3);
  v8 = *(a1 + 8);
  v9 = 0x4EC4EC4EC4EC4EC5 * ((v8 - *a1) >> 3);
  if (v7 > *(a1 + 24) - v9)
  {
    geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::grow(a1, v9 + v7);
    v8 = *(v5 + 8);
  }

  if (v4 != v3)
  {
    v26 = v6;
    v27 = v5;
    v28 = v3;
    do
    {
      *v8 = *v4;
      v10 = (v8 + 40);
      *(v8 + 8) = v8 + 40;
      *(v8 + 16) = v8 + 40;
      *(v8 + 24) = v8 + 40;
      *(v8 + 32) = 2;
      v12 = *(v4 + 8);
      v11 = *(v4 + 16);
      v13 = v11 - v12;
      v14 = (v11 - v12) >> 5;
      if (v14 >= 3)
      {
        if (v14 <= 4)
        {
          v15 = 4;
        }

        else
        {
          v15 = (v11 - v12) >> 5;
        }

        v16 = malloc_type_malloc(32 * v15, 0x10200402C28E7A6uLL);
        v10 = v16;
        v17 = *(v8 + 8);
        v18 = *(v8 + 16);
        if (v17 != v18)
        {
          v19 = v16;
          do
          {
            *v19 = *v17;
            *v17 = 0;
            *(v17 + 8) = 0;
            v20 = *(v17 + 16);
            v19[24] = *(v17 + 24);
            *(v19 + 2) = v20;
            v19 += 32;
            v17 += 32;
          }

          while (v17 != v18);
          v22 = *(v8 + 8);
          v21 = *(v8 + 16);
          while (v22 != v21)
          {
            v23 = *(v22 + 8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }

            v22 += 32;
          }
        }

        *(v8 + 8) = v10;
        *(v8 + 16) = v10;
        *(v8 + 32) = v15;
        v3 = v28;
      }

      if (v12 != v11)
      {
        do
        {
          v24 = *(v12 + 8);
          *v10 = *v12;
          v10[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          v25 = *(v12 + 16);
          *(v10 + 24) = *(v12 + 24);
          v10[2] = v25;
          v12 += 32;
          v10 += 4;
        }

        while (v12 != v11);
        v10 = *(v8 + 16);
      }

      *(v8 + 16) = v10 + v13;
      v4 += 104;
      v8 += 104;
    }

    while (v4 != v3);
    v6 = v26;
    v5 = v27;
    v8 = *(v27 + 8);
  }

  *(v5 + 8) = v8 + v6;
}

void geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::grow(void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(104 * v9, 0x10200409A70330CuLL);
  v11 = v10;
  v12 = *a1;
  v13 = a1[1];
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      *v14 = *v12;
      v15 = v14 + 40;
      *(v14 + 1) = v14 + 40;
      v16 = *(v12 + 1);
      *(v14 + 2) = v14 + 40;
      *(v14 + 3) = v14 + 40;
      v17 = *(v12 + 3);
      *(v14 + 4) = *(v12 + 4);
      if (v16 == v17)
      {
        *(v14 + 2) = &v15[*(v12 + 2) - v16];
        v19 = *(v12 + 2);
        while (v16 != v19)
        {
          *v15 = *v16;
          *v16 = 0;
          *(v16 + 8) = 0;
          v20 = *(v16 + 16);
          v15[24] = *(v16 + 24);
          *(v15 + 2) = v20;
          v15 += 32;
          v16 += 32;
        }
      }

      else
      {
        v18 = *(v12 + 2);
        *(v14 + 1) = v16;
        *(v14 + 2) = v18;
        *(v12 + 8) = 0uLL;
        *(v12 + 24) = 0uLL;
      }

      v14 += 104;
      v12 += 104;
    }

    while (v12 != v13);
    v21 = *a1;
    v22 = a1[1];
    while (v21 != v22)
    {
      geo::small_vector_base<geo::c3m::TextureData>::~small_vector_base((v21 + 8));
      v21 += 104;
    }
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  a1[1] = &v11[v4 - v3];
  a1[3] = v9;
}

void md::mun::MuninMeshResource::~MuninMeshResource(md::mun::MuninMeshResource *this)
{
  md::mun::MuninMeshResource::~MuninMeshResource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04CC8;
  geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::~small_vector_base(this + 59);
  geo::small_vector_base<geo::c3m::Mesh>::~small_vector_base(this + 32);
  v2 = *(this + 2);
  if (v2 != *(this + 4))
  {
    free(v2);
  }
}

void std::__shared_ptr_emplace<md::mun::MuninMeshResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A04C90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::C3mResourceDecoder<md::mun::MuninMeshResource>::~C3mResourceDecoder(uint64_t a1)
{
  md::C3mResourceDecoder<md::mun::MuninMeshResource>::~C3mResourceDecoder(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::C3mResourceDecoder<md::mun::MuninMeshResource>::~C3mResourceDecoder(uint64_t a1)
{
  *a1 = &unk_1F2A04C68;
  std::mutex::~mutex((a1 + 112));
  std::__hash_table<std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,std::__unordered_map_hasher<huffman_params_t,std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,geo::c3m::HuffmanParamsHash,geo::c3m::HuffmanParamsEquals,true>,std::__unordered_map_equal<huffman_params_t,std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,geo::c3m::HuffmanParamsEquals,geo::c3m::HuffmanParamsHash,true>,std::allocator<std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>>>::~__hash_table(a1 + 72);
  *(a1 + 40) = &unk_1F2A34780;
  *(a1 + 48) = &unk_1F2A59028;

  *(a1 + 8) = &unk_1F2A34758;
  *(a1 + 16) = &unk_1F2A59028;

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,std::__unordered_map_hasher<huffman_params_t,std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,geo::c3m::HuffmanParamsHash,geo::c3m::HuffmanParamsEquals,true>,std::__unordered_map_equal<huffman_params_t,std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,geo::c3m::HuffmanParamsEquals,geo::c3m::HuffmanParamsHash,true>,std::allocator<std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      geo::c3m::EdgebreakerDecodeTable::~EdgebreakerDecodeTable(v2 + 4);
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

void std::__shared_ptr_emplace<md::C3mResourceDecoder<md::mun::MuninMeshResource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A04C30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LegacyTrafficRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(a1 + 49) - *(a1 + 48) + 1), (a1 + 368), 0);
  *(a1 + 364) = result - *(a1 + 48);
  return result;
}

void md::LegacyTrafficRenderLayer::layout(md::LegacyTrafficRenderLayer *this, const md::LayoutContext *a2)
{
  v2 = this;
  v161 = *MEMORY[0x1E69E9840];
  v3 = *(this + 44);
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v4 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 384));
  if (v4)
  {
    v5 = *(*(v4 + 16) + 8 * *(v2 + 385));
  }

  else
  {
    v5 = 0;
  }

  ggl::CommandBuffer::clearRenderItems(v5);
  v123 = v5;
  *(v5 + 32) = 0;
  v120 = *(v2 + 91);
  v148[0] = &unk_1F2A2F200;
  v149 = v148;
  v6 = *(a2 + 1);
  v7 = gdc::Context::get<md::GeometryContext>(v6);
  v115 = md::LayoutContext::get<md::SceneContext>(v6);
  v125 = v2;
  v119 = v7;
  if (v7)
  {
    if (md::SceneStateManager::isFinishedLoadingRequiredLayers(*v115))
    {
      v8 = *(v2 + 48);
      v9 = *(v2 + 49);
      *(v2 + 360) = v8 != v9;
      if (v8 == v9)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(v2 + 360) = 1;
    }

    v10 = *(v2 + 44);
    v11 = v2;
    v13 = v10[14];
    v12 = v10[15];
    v14 = *(v11 + 34);
    v15 = *(v11 + 35);
    if (v14 == v15)
    {
      v124 = v10;
    }

    else
    {
      do
      {
        v16 = *v14;
        if (!v149 || std::function<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::operator()(v149, *v14))
        {
          v17 = *(v16 + 392);
          FillRect = grl::IconMetricsRenderResult::getFillRect(v17);
          v19 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v115 + 1, FillRect);
          if (v19)
          {
            v20 = (*(v19 + 17) - *(v19 + 16)) >> 5;
            if (v17[168] == 255)
            {
              v13 += v20;
            }

            else
            {
              v12 += v20;
            }
          }
        }

        ++v14;
      }

      while (v14 != v15);
      v124 = *(v125 + 44);
    }

    v21 = gdc::ToCoordinateSystem(v119[320]);
    v22 = 128;
    if (v21)
    {
      v22 = 144;
    }

    v23 = *&v119[v22 + 8];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v122 = v23;
    if (v13 > (v124[8] - v124[7]) >> 3)
    {
      __asm { FMOV            V0.4S, #1.0 }

      operator new();
    }

    if (v12 > (v124[11] - v124[10]) >> 3)
    {
      operator new();
    }

    v29 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v30 = md::LayoutContext::cameraType(a2);
    v31 = *(v29 + 888);
    v138 = *(v29 + 872);
    v139 = v31;
    v32 = *(v29 + 920);
    v140 = *(v29 + 904);
    v141 = v32;
    v33 = *(v29 + 824);
    v134 = *(v29 + 808);
    v135 = v33;
    v34 = *(v29 + 856);
    v136 = *(v29 + 840);
    v137 = v34;
    v35 = *(v125 + 34);
    v114 = *(v125 + 35);
    if (v35 != v114)
    {
      v36 = v30;
      do
      {
        v116 = v35;
        v37 = *v35;
        if (!v149 || (std::function<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::operator()(v149, *v35) & 1) != 0)
        {
          v38 = *(v37 + 392);
          v39 = grl::IconMetricsRenderResult::getFillRect(v38);
          v40 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v115 + 1, v39);
          if (v40)
          {
            v41 = *(v40 + 16);
            v121 = *(v40 + 17);
            if (v121 != v41)
            {
              v118 = v37;
              do
              {
                v42 = *(v125 + 44);
                if (*(*(v37 + 392) + 168) != 255)
                {
                  v43 = v42[15];
                  v44 = v124[10];
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v132, *(*(**(v44 + 8 * v43) + 136) + 32));
                  v45 = (*(**(v37 + 392) + 32))(*(v37 + 392));
                  v46 = 0;
                  v47 = v133 + 32;
                  do
                  {
                    *(v47 + v46) = *(v45 + v46);
                    v46 += 4;
                  }

                  while (v46 != 12);
                  v48 = (*(**(v37 + 392) + 32))(*(v37 + 392));
                  v49 = 0;
                  v50 = v133 + 48;
                  do
                  {
                    *(v50 + v49) = *(v48 + 12 + v49);
                    v49 += 4;
                  }

                  while (v49 != 12);
                  *(*(v44 + 8 * v43) + 32) = **(v125 + 44);
                  *(*(v44 + 8 * v43) + 40) = **(v44 + 8 * v43);
                  v51 = *(v44 + 8 * v43);
                  *(v51 + 56) = 0;
                  *(v51 + 48) = v120 + *(v38 + 169);
                  memset(&v126[8], 0, 32);
                  v127 = 0u;
                  v128 = 0u;
                  memset(&v129[8], 0, 32);
                  *v126 = 0x3FF0000000000000;
                  *&v126[40] = 0x3FF0000000000000;
                  *v129 = 0x3FF0000000000000;
                  *&v129[40] = 0x3FF0000000000000;
                  md::GeometryContext::transformConstantData(0.0, 0.0, &v150, v119, (v38 + 168), v36, -1);
                }

                v52 = v42[14];
                v53 = v124[7];
                *(*(v53 + 8 * v52) + 32) = *v42;
                *(*(v53 + 8 * v52) + 40) = **(v53 + 8 * v52);
                v54 = *(v53 + 8 * v52);
                *(v54 + 56) = 0;
                v55 = *(v38 + 169);
                *(v54 + 48) = v120 + v55;
                if (gdc::ToCoordinateSystem(v36))
                {
                  v56 = *(v38 + 176);
                  v57 = 1.0 / (1 << v55);
                  v58 = (1 << v55) + ~*(v38 + 172);
                  *&v144 = v57 * v56;
                  *(&v144 + 1) = v57 * v58;
                  *&v145 = v57 + v56 * v57;
                  *(&v145 + 1) = v57 + v58 * v57;
                  gdc::GlobeTileUtils::boundsFromMercatorRect(&v150, &v144, 0.0, 0.0);
                  geo::OrientedBox<double,3u,double,double>::toMatrix(v126, &v150);
                  md::GeometryContext::transformConstantData(0.0, 0.0, &v144, v119, (v38 + 168), v36, -1);
                }

                v59 = 1 << *(v41 + 1);
                v60 = 1.0 / v59;
                v61 = v60 * *(v41 + 8);
                v62 = v60 * (v59 + ~*(v41 + 4));
                memset(&v126[8], 0, 32);
                v127 = 0u;
                v128 = 0u;
                *v126 = v60;
                *&v126[40] = v60;
                *v129 = *&v60;
                *&v129[16] = v61;
                *&v129[24] = v62;
                *&v129[32] = xmmword_1B33B0740;
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*v54 + 136), *(*v54 + 232), v42[1], v42[2]);
                v23 = v122;
                v63 = 0;
                v64 = &v134;
                v37 = v118;
                do
                {
                  v65 = 0;
                  v66 = v126;
                  do
                  {
                    v67 = 0;
                    v68 = 0.0;
                    v69 = v64;
                    do
                    {
                      v70 = *v69;
                      v69 += 4;
                      v68 = v68 + *&v66[v67] * v70;
                      v67 += 8;
                    }

                    while (v67 != 32);
                    *(&v150 + 4 * v65++ + v63) = v68;
                    v66 += 32;
                  }

                  while (v65 != 4);
                  ++v63;
                  v64 = (v64 + 8);
                }

                while (v63 != 4);
                v71 = 0;
                v72 = &v150;
                do
                {
                  v74 = *v72;
                  v73 = *(v72 + 2);
                  v72 += 4;
                  *(&v144 + v71) = vcvt_hight_f32_f64(vcvt_f32_f64(v74), v73);
                  v71 += 16;
                }

                while (v71 != 64);
                v75 = ggl::DataAccess<ggl::Tile::View>::DataAccess(&v150, **(**(v53 + 8 * v52) + 136), 1);
                v76 = v153;
                *v153 = v144;
                v76[1] = v145;
                v76[2] = v146;
                v76[3] = v147;
                ggl::BufferMemory::~BufferMemory(v75);
                ggl::CommandBuffer::pushRenderItem(v123, (*(v53 + 8 * v52) + 8));
                ++*(*(v125 + 44) + 112);
                v41 += 32;
              }

              while (v41 != v121);
            }
          }
        }

        v35 = v116 + 1;
      }

      while (v116 + 1 != v114);
    }

    v2 = v125;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }

LABEL_53:
  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::~__value_func[abi:nn200100](v148);
  *(v123 + 4) = *(v2 + 46);
  v77 = *(*(a2 + 3) + 1) < *(*(a2 + 3) + 2);
  v78 = *(v2 + 360);
  md::RibbonLayoutContext::RibbonLayoutContext(v126, a2);
  *&v129[32] = 0uLL;
  memset_pattern16(&v130, &unk_1B33B2570, 0x10uLL);
  v131[21] = 0;
  *v131 = 0;
  *&v131[8] = 0;
  *&v131[15] = 0;
  BYTE8(v127) = v77 | *(v125 + 360);
  v131[16] = **(a2 + 93);
  v131[17] = 1;
  v131[18] = v77 & ~v78 & 1;
  v79 = *(v125 + 34);
  for (i = *(v125 + 35); v79 != i; v79 += 8)
  {
    v81 = *(*v79 + 392);
    if (v81)
    {
      v82 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
      v83 = 0;
      v84 = 1 << *(v81 + 169);
      v85 = (v84 + ~*(v81 + 172));
      v86 = 1.0 / v84;
      v87 = v86 * *(v81 + 176);
      v157 = 0;
      v155 = 0;
      v154 = 0u;
      v153 = 0u;
      v152 = 0u;
      v151 = 0u;
      v150 = v86;
      *&v153 = v86;
      v156 = v86;
      v88 = v82 + 101;
      v158 = v87;
      v159 = v86 * v85;
      v160 = xmmword_1B33B0740;
      do
      {
        v89 = 0;
        v90 = &v150;
        do
        {
          v91 = 0;
          v92 = 0.0;
          v93 = v88;
          do
          {
            v94 = *v93;
            v93 += 4;
            v92 = v92 + v90[v91++] * v94;
          }

          while (v91 != 4);
          *(&v134 + 4 * v89++ + v83) = v92;
          v90 += 4;
        }

        while (v89 != 4);
        ++v83;
        ++v88;
      }

      while (v83 != 4);
      v95 = 0;
      v96 = &v134;
      do
      {
        v98 = *v96;
        v97 = v96[1];
        v96 += 2;
        *(&v144 + v95) = vcvt_hight_f32_f64(vcvt_f32_f64(v98), v97);
        v95 += 16;
      }

      while (v95 != 64);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v134, *(v81 + 728), 1);
      v99 = *(&v136 + 1);
      **(&v136 + 1) = v144;
      *(v99 + 16) = v145;
      *(v99 + 32) = v146;
      *(v99 + 48) = v147;
      v100 = v82[471] * v82[173] / (v82[171] * v86);
      *(v99 + 64) = v100;
      ggl::BufferMemory::~BufferMemory(&v134);
      v101 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 1));
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v144, *v101, (v81 + 760));
      v102 = +[VKDebugSettings sharedSettings];
      v103 = [v102 loadGreenTraffic];

      v104 = v144;
      if (*(&v144 + 1))
      {
        atomic_fetch_add_explicit((*(&v144 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      md::TrafficMeshStyle::TrafficMeshStyle(v132, v104, *(&v104 + 1), v103);
      if (*(&v104 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v104 + 1));
      }

      v138 = v128;
      v139 = *v129;
      v140 = *&v129[16];
      v134 = *v126;
      v135 = *&v126[16];
      v136 = *&v126[32];
      v137 = v127;
      v105 = *&v129[40];
      if (*&v129[40])
      {
        atomic_fetch_add_explicit((*&v129[40] + 8), 1uLL, memory_order_relaxed);
      }

      v142 = v130;
      *v143 = *v131;
      *&v143[14] = *&v131[14];
      v106 = v144;
      if (*(&v144 + 1))
      {
        atomic_fetch_add_explicit((*(&v144 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v141 = v106;
      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v105);
      }

      v142 = v132[0];
      if (BYTE8(v127) == 1)
      {
        if (v131[18] == 1)
        {
          v107 = *(*(a2 + 3) + 1);
        }

        else
        {
          v107 = *(v81 + 169) + *(v125 + 364);
        }
      }

      else
      {
        v107 = 0;
      }

      BYTE9(v137) = v107;
      v108 = *(v81 + 744);
      if (v108)
      {
        v109 = *(v108 + 160);
        v110 = *(v125 + 47);
        if (!v109 || v109 != v110)
        {
          md::PilledTrafficLayer::setSharedResources(*(v81 + 744), v110);
        }

        md::PilledTrafficLayer::layout(v108, &v134);
        v150 = COERCE_DOUBLE(&unk_1F2A04EC8);
        *&v151 = v123;
        *&v152 = &v150;
        md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::collectRenderItemsForPasses(*(v108 + 8), *(v108 + 16), &v150);
        std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v150);
      }

      v111 = *(v81 + 752);
      if (v111)
      {
        v112 = *(v111 + 168);
        v113 = *(v125 + 47);
        if (!v112 || v112 != v113)
        {
          md::SolidTrafficLayer::setSharedResources(*(v81 + 752), v113);
        }

        md::SolidTrafficLayer::layout(v111, &v134);
        v150 = COERCE_DOUBLE(&unk_1F2A04F10);
        *&v151 = v123;
        *&v152 = &v150;
        md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::collectRenderItemsForPasses(*(v111 + 8), *(v111 + 16), &v150);
        std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v150);
      }

      if (*(&v106 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v106 + 1));
      }

      if (*(&v144 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v144 + 1));
      }
    }
  }

  ggl::CommandBuffer::sortRenderItems(*(v123 + 9), *(v123 + 10));
  if (*&v129[40])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v129[40]);
  }
}

void sub_1B2E34258(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::~__value_func[abi:nn200100](&STACK[0x278]);
  _Unwind_Resume(a1);
}

void md::RouteLineLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 **a3@<X2>, uint64_t a4@<X8>)
{
  v50[3] = *MEMORY[0x1E69E9840];
  gdc::Tiled::tileFromLayerDataKey(&v44, *(a2 + 16));
  v8 = 1.0 / (1 << v45);
  v41 = v8 * v47;
  v42 = v8 * ((1 << v45) + ~v46);
  v43[0] = v41 + v8;
  v43[1] = v42 + v8;
  v40[0] = 0;
  v40[1] = 0;
  v39[2] = v40;
  md::RouteOverlayContainer::overlays(&v48, *(a1 + 600));
  v34 = a3;
  v35 = a2;
  v33 = a4;
  md::RouteOverlayContainer::persistentOverlays(v50, *(a1 + 600));
  v9 = 0;
  while (1)
  {
    v36 = v9;
    v10 = &v48 + v9 + 8;
    v11 = *(&v48 + v9);
    if (v11 != v10)
    {
      do
      {
        v12 = *(v11 + 4);
        v13 = [v12 boundingMapRegion];
        v37 = md::rectFromGEOMapRegion<double>(v13);
        v38 = v14;
        v39[0] = v15;
        v39[1] = v16;

        v17 = 0;
        v18 = &v41;
        v19 = &v37;
        v20 = 1;
        while (v43[v17] > *v19 && *v18 < *&v39[v17])
        {
          v21 = v20;
          v20 = 0;
          v19 = &v38;
          v18 = &v42;
          v17 = 1;
          if ((v21 & 1) == 0)
          {
            for (i = v40[0]; i; i = *v23)
            {
              while (1)
              {
                v23 = i;
                v24 = i[4];
                if (v12 < v24)
                {
                  break;
                }

                if (v24 >= v12)
                {
                  goto LABEL_15;
                }

                i = v23[1];
                if (!i)
                {
                  goto LABEL_14;
                }
              }
            }

LABEL_14:
            operator new();
          }
        }

LABEL_15:

        v25 = *(v11 + 1);
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = *(v11 + 2);
            v27 = *v26 == v11;
            v11 = v26;
          }

          while (!v27);
        }

        v11 = v26;
      }

      while (v26 != v10);
    }

    v9 = v36 + 24;
    if (v36 == 24)
    {
      for (j = 32; j != -16; j -= 24)
      {
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(&v48 + j));
      }

      if (gdc::ResourceKey::getInt32(*(v35 + 16), 4u) == 10)
      {
        v29 = *v34;
        v30 = v34[1];
        v31 = 10;
      }

      else
      {
        v29 = *v34;
        v30 = v34[1];
        v31 = 9;
      }

      gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v48, v31, v29, v30);
      if (v48)
      {
        v32 = *(v48 + 152);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v32);
        }
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v49);
      }

      operator new();
    }
  }
}

void sub_1B2E3489C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  v23 = *(v21 - 144);
  if (v23)
  {
    operator delete(v23);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(a19);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::RouteLineData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A05028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RouteLineLayerDataSource::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  gdc::LayerDataSource::createDebugNode(a1, a2);
  v8 = 15;
  strcpy(&v7, "IsTransitActive");
  gdc::DebugTreeValue::DebugTreeValue(v4, *(a1 + 608));
  gdc::DebugTreeNode::addProperty(a2, &v7, v4);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void md::RouteLineLayerDataSource::constructRequests(uint64_t a1, char **a2, char **a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v3 = a2 == a3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = a2;
    do
    {
      v7 = *(*v5 + 2);
      Int32 = gdc::ResourceKey::getInt32(v7, 4u);
      *&v9 = gdc::Tiled::tileFromLayerDataKey(v24, v7);
      v10 = (*(**(a1 + 24) + 32))(*(a1 + 24), Int32, v9);
      v11 = v10;
      if ((v10 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      v12 = *(a1 + 24);
      v25 = (*(*v12 + 24))(v12, Int32);
      LOBYTE(v26) = v13;
      md::TileAdjustmentHelpers::adjustTileForSizeAndRange(&v17, 0x200u, v11, &v25, v24);
      if (v20 == 1)
      {
        (*(*v12 + 16))(v21, v12, Int32, &v17);
        if (v23)
        {
          v14 = **v5;
          v15 = *(*v5 + 14);
          if ((*(*v5 + 12) & 0x100000000) != 0)
          {
            v16 = *(*v5 + 12);
          }

          else
          {
            v16 = 2147483646;
          }

          v25 = vrev64_s32(v22);
          v26 = v21[1];
          v27 = v21[0];
          gdc::ResourceKey::ResourceKey(&v17, v14, Int32, &v25, 4, v15, v16);
          gdc::LayerDataRequest::request(*v5, &v17, 0);
          if (v18 != v19)
          {
            free(v18);
          }
        }
      }

      else
      {
        v21[0] = 0;
        v23 = 0;
      }

      v5 += 2;
    }

    while (v5 != a3);
  }
}

uint64_t md::RouteLineLayerDataSource::addFallbackData(md::RouteLineLayerDataSource *this, const gdc::SelectionContext *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1);
  v4 = *(this + 608);
  v47[0] = &unk_1F2A05060;
  v5 = v4 == 0;
  v6 = 9;
  if (!v5)
  {
    v6 = 10;
  }

  v47[1] = md::RouteLineData::mapDataKeyFromTile;
  v48 = v6;
  v49 = 0;
  v50 = 0;
  v51 = v47;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v23 = v3;
  gdc::LayerDataCollector::missingData(&v27, v3, *(this + 16));
  v41[0] = v27;
  v41[1] = *v28;
  while (1)
  {
    v40[0] = v29;
    v40[1] = v30;
    if (!gdc::MissingDataIterator::operator!=(v41, v40))
    {
      break;
    }

    v7 = *(*(&v41[0] + 1) + 113);
    v8 = *(*(&v41[0] + 1) + 116);
    v9 = *(*(&v41[0] + 1) + 112);
    v10 = *(*(&v41[0] + 1) + 128);
    v11 = *(*(&v41[0] + 1) + 136);
    gdc::Tiled::tileFromLayerDataKey(v40, *(*(&v41[0] + 1) + 16));
    v12 = 1 << SBYTE1(v40[0]);
    v35[0] = v40[0];
    v36 = (SDWORD1(v40[0]) % v12 + v12) % v12;
    v37 = (SDWORD2(v40[0]) % v12 + v12) % v12;
    v38 = 0;
    v39 = 1;
    v13 = gdc::FallbackCollector::start((this + 616), v35);
    v14 = *(this + 16);
    v15 = *(this + 2);
    v16 = v51;
    if (!v51)
    {
      goto LABEL_8;
    }

    if (v51 != v47)
    {
      v16 = (*(*v51 + 16))(v13);
LABEL_8:
      v46 = v16;
      goto LABEL_10;
    }

    v46 = v45;
    (*(*v51 + 24))(v13);
LABEL_10:
    md::TileAdjustmentHelpers::getFallbackDataForTile(this + 90, v14, v35, v15, v45, this + 616);
    std::__function::__value_func<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::~__value_func[abi:nn200100](v45);
    v31[1] = v7;
    v32 = v8;
    v31[0] = v9;
    v33 = v10;
    v34 = v11;
    gdc::FallbackCollector::collectFallbackData(this + 616, &v42, 1, 0, v31);
    gdc::FallbackCollector::end((this + 616), v17);
    gdc::MissingDataIterator::operator++(v41);
  }

  v18 = v43;
  if (v42 != v43)
  {
    v19 = v42 + 15;
    do
    {
      v20 = *grl::IconMetricsRenderResult::getFillRect(*v19);
      gdc::LayerDataKey::LayerDataKey(v24, (v19 - 11));
      gdc::LayerDataRequestKey::LayerDataRequestKey(&v27, v20, v24);
      gdc::LayerDataCollector::addFallbackData(v23, &v27, v19 - 60, v19);
      if (v28[0] != v29)
      {
        free(v28[0]);
      }

      if (v25 != v26)
      {
        free(v25);
      }

      v21 = v19 + 2;
      v19 += 17;
    }

    while (v21 != v18);
  }

  *&v27 = &v42;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&v27);
  return std::__function::__value_func<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::~__value_func[abi:nn200100](v47);
}

void sub_1B2E34FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = (v21 - 208);
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&a21);
  std::__function::__value_func<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::~__value_func[abi:nn200100](v21 - 152);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<std::__bind<gdc::LayerDataRequestKey (&)(gdc::RequestType,geo::QuadTile const&,unsigned short),std::placeholders::__ph<1> const&,std::placeholders::__ph<3> const&,unsigned short const&>,std::allocator<std::__bind<gdc::LayerDataRequestKey (&)(gdc::RequestType,geo::QuadTile const&,unsigned short),std::placeholders::__ph<1> const&,std::placeholders::__ph<3> const&,unsigned short const&>>,gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A05060;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 22) = 0;
  *(a2 + 18) = 0;
  return result;
}

void md::RouteLineLayerDataSource::~RouteLineLayerDataSource(md::RouteLineLayerDataSource *this)
{
  md::RouteLineLayerDataSource::~RouteLineLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04F58;
  v2 = this + 592;
  *(this + 74) = &unk_1F2A05008;
  v3 = *(this + 75);
  v4 = v3[10];
  if (v4)
  {
    v5 = v3 + 10;
    v6 = v3[10];
    do
    {
      v7 = v6[4];
      v8 = v7 >= v2;
      v9 = v7 < v2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v3 + 10 && v2 >= v5[4])
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (v3[9] == v5)
      {
        v3[9] = v11;
      }

      --v3[11];
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v4, v5);
      operator delete(v5);
    }
  }

  v14 = *(this + 93);
  if (v14)
  {
    *(this + 94) = v14;
    operator delete(v14);
  }

  v15 = *(this + 90);
  if (v15)
  {
    *(this + 91) = v15;
    operator delete(v15);
  }

  geo::Pool<gdc::FallbackNode>::~Pool(this + 672);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 81));

  gdc::LayerDataSource::~LayerDataSource(this);
}

void *std::vector<gm::Matrix<double,2,1>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<gm::Matrix<double,2,1>>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<double>::resize(uint64_t *a1, unint64_t a2)
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

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

uint64_t md::MuninRoadEdgePolyline::pointAtDistance(uint64_t a1, float64x2_t *a2, float64x2_t *a3, double a4)
{
  if (a4 < 0.0)
  {
    return 0;
  }

  if (*(a1 + 48) < a4)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = v6 >> 3;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = 0.0;
  while (1)
  {
    v10 = *(v5 + 8 * v7);
    if (v10 + v9 >= a4)
    {
      break;
    }

    ++v7;
    v9 = v10 + v9;
    if (v8 == v7)
    {
      return 0;
    }
  }

  v12 = (*a1 + 16 * v7);
  *a2 = vmlaq_n_f64(*v12, vsubq_f64(v12[1], *v12), (a4 - v9) / v10);
  if (a3)
  {
    v13 = vsubq_f64(v12[1], *v12);
    *a3 = vmulq_n_f64(v13, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v13, v13))));
  }

  return 1;
}

const md::MuninRoadEdge *md::MuninRoadEdge::MuninRoadEdge(const md::MuninRoadEdge *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, md::MuninJunction *a6, md::MuninJunction *a7)
{
  *a1 = a2;
  *(a1 + 2) = 0;
  v13 = *(a2 + 16);
  v14 = "";
  if (v13 && *v13)
  {
    v14 = *(a2 + 16);
  }

  v15 = strlen(v14);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = v15;
  v17 = a1 + 16;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    v19 = mdm::zone_mallocator::instance(v15);
    v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v19, v18);
    *(a1 + 3) = v16;
    *(a1 + 4) = v18 | 0x8000000000000000;
    *(a1 + 2) = v17;
    goto LABEL_12;
  }

  *(a1 + 39) = v15;
  if (v15)
  {
LABEL_12:
    memmove(v17, v14, v16);
  }

  *(v17 + v16) = 0;
  v20 = a3[1];
  *(a1 + 3) = *a3;
  *(a1 + 4) = v20;
  *(a1 + 10) = a4;
  *(a1 + 11) = a5;
  *(a1 + 12) = a6;
  *(a1 + 13) = a7;
  *(a1 + 112) = 0;
  v21 = *a1;
  if (*(*a1 + 148))
  {
    v22 = *(*a1 + 148) * 0.01;
  }

  else
  {
    v23 = *(v21 + 151);
    if (v23 > 8)
    {
      v22 = 14.8;
    }

    else
    {
      v22 = flt_1B33B4180[v23];
    }
  }

  *(a1 + 2) = v22;
  v24 = *(v21 + 152);
  v26 = v24 == 10 || (v24 - 1) < 3;
  *(a1 + 112) = v26;
  md::MuninJunction::addRoad(a6, a1);
  md::MuninJunction::addRoad(a7, a1);
  return a1;
}

void sub_1B2E355C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  if (*(v10 + 39) < 0)
  {
    v12 = *a10;
    v13 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
  }

  _Unwind_Resume(exception_object);
}

void md::MuninRoadEdge::localizedName(md::MuninRoadEdge *this, std::__shared_weak_count **a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    md::LabelFeature::textFromFeature(&v8, a2, a3, v10, 0);
    v5 = SHIBYTE(v11);
    *this = v8;
    *(this + 2) = v9;
    if (v5 < 0)
    {
      v6 = v10[0];
      v7 = mdm::zone_mallocator::instance(v4);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
    }
  }
}

void sub_1B2E35690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    v20 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v20, a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::MuninRoadEdge::walkEdgeGeometry(uint64_t *a1, int a2, uint64_t a3)
{
  result = *a1;
  if (result)
  {
    if (*(a3 + 24))
    {
      v40 = 0;
      result = geo::codec::multiSectionFeaturePoints(result, 0, &v40);
      v7 = (a1 + 10);
      if (a1[10] <= v40)
      {
        v8 = (a1 + 11);
        if (a1[11] <= v40)
        {
          v9 = result;
          v10 = *a1;
          v11 = *(*a1 + 8);
          if (v11)
          {
            v11 = std::__shared_weak_count::lock(v11);
            v12 = v11;
            if (v11)
            {
              v11 = *v10;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = geo::codec::VectorTile::key(v11);
          v14 = *(v13 + 10);
          v15 = *(v13 + 8);
          v37.f64[0] = *v13;
          LOWORD(v37.f64[1]) = v15;
          BYTE2(v37.f64[1]) = v14;
          v38 = GEOTileKeyMake();
          v39 = v16;
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v12);
          }

          result = GEOMapRectForGEOTileKey();
          v17 = *(MEMORY[0x1E69A1688] + 16);
          v19.f64[1] = v18;
          v21.f64[1] = v20;
          v22 = vdivq_f64(vaddq_f64(v19, v21), v17);
          v23 = 1.0 - v22.f64[1];
          v24 = vdivq_f64(v21, v17);
          v25 = a2 == 0;
          if (a2)
          {
            v26 = v7;
          }

          else
          {
            v26 = v8;
          }

          v27 = *v26;
          if (v25)
          {
            v28 = v7;
          }

          else
          {
            v28 = v8;
          }

          v29 = *v28;
          if (v29 > v27)
          {
            v30 = 1;
          }

          else
          {
            v30 = -1;
          }

          v31 = vsubq_f64(v22, v24);
          v24.f64[1] = v23;
          v35 = v31;
          v36 = v24;
          v32 = v29 + 2 * v30;
          do
          {
            if (v32 == v27 + v30)
            {
              break;
            }

            v37 = vmlaq_f64(v36, vcvtq_f64_f32(*(v9 + 8 * v27)), v35);
            v33 = *(a3 + 24);
            if (!v33)
            {
              v34 = std::__throw_bad_function_call[abi:nn200100]();
              std::__shared_weak_count::__release_shared[abi:nn200100](v30);
              _Unwind_Resume(v34);
            }

            result = (*(*v33 + 48))(v33, &v37);
            v27 += v30;
          }

          while ((result & 1) != 0);
        }
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(gm::Matrix<double,2,1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::MuninRoadEdge::worldPolyline(BOOL,std::vector<gm::Matrix<double,2,1>> &)::$_0,std::allocator<md::MuninRoadEdge::worldPolyline(BOOL,std::vector<gm::Matrix<double,2,1>> &)::$_0>,BOOL ()(gm::Matrix<double,2,1> const&)>::operator()(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 8);
  v4 = v2[1];
  v3 = v2[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *v2) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *v2;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v9);
    }

    *(16 * v6) = *a2;
    v5 = 16 * v6 + 16;
    v10 = *v2;
    v11 = v2[1];
    v12 = 16 * v6 + *v2 - v11;
    if (*v2 != v11)
    {
      v13 = (16 * v6 + *v2 - v11);
      do
      {
        v14 = *v10++;
        *v13++ = v14;
      }

      while (v10 != v11);
      v10 = *v2;
    }

    *v2 = v12;
    v2[1] = v5;
    v2[2] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  v2[1] = v5;
  return 1;
}

uint64_t std::__function::__func<md::MuninRoadEdge::worldPolyline(BOOL,std::vector<gm::Matrix<double,2,1>> &)::$_0,std::allocator<md::MuninRoadEdge::worldPolyline(BOOL,std::vector<gm::Matrix<double,2,1>> &)::$_0>,BOOL ()(gm::Matrix<double,2,1> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A050A8;
  a2[1] = v2;
  return result;
}

long double md::MuninRoadEdge::edgeLengthInMeters(md::MuninRoadEdge *this)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v6[1] = 0;
  v7 = 0.0;
  v6[0] = 0;
  v8[0] = &unk_1F2A050F0;
  v8[1] = v6;
  v8[2] = &v7;
  v8[3] = v8;
  md::MuninRoadEdge::walkEdgeGeometry(this, 1, v8);
  std::__function::__value_func<BOOL ()(gm::Matrix<double,2,1> const&)>::~__value_func[abi:nn200100](v8);
  v2 = v7;
  v3 = exp((*(this + 7) + (*(this + 9) - *(this + 7)) * 0.5) * 6.28318531 + -3.14159265);
  v4 = atan(v3);
  return v2 / geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v4 * 114.591559 + -90.0);
}

void sub_1B2E35BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(gm::Matrix<double,2,1> const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::MuninRoadEdge::edgeLength(void)::$_0,std::allocator<md::MuninRoadEdge::edgeLength(void)::$_0>,BOOL ()(gm::Matrix<double,2,1> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*v2 != 0)
  {
    v3 = vsubq_f64(*a2, *v2);
    **(a1 + 16) = sqrt(vaddvq_f64(vmulq_f64(v3, v3))) + **(a1 + 16);
  }

  *v2 = *a2;
  *(v2 + 8) = *(a2 + 8);
  return 1;
}

__n128 std::__function::__func<md::MuninRoadEdge::edgeLength(void)::$_0,std::allocator<md::MuninRoadEdge::edgeLength(void)::$_0>,BOOL ()(gm::Matrix<double,2,1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A050F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double md::MuninRoadEdge::direction(std::__shared_weak_count **this, int a2)
{
  v3 = *this;
  if (!v3)
  {
    return 0.0;
  }

  result = 0.0;
  if (this[10] != this[11])
  {
    v24[0] = 0;
    v6 = geo::codec::multiSectionFeaturePoints(v3, 0, v24);
    result = 0.0;
    if (this[10] < v24[0])
    {
      result = 0.0;
      if (this[11] < v24[0])
      {
        v7 = v6;
        v8 = *this;
        shared_owners = (*this)->__shared_owners_;
        if (shared_owners)
        {
          shared_owners = std::__shared_weak_count::lock(shared_owners);
          v10 = shared_owners;
          if (shared_owners)
          {
            shared_owners = *v8;
          }
        }

        else
        {
          v10 = 0;
        }

        v11 = geo::codec::VectorTile::key(shared_owners);
        v12 = *(v11 + 8);
        v24[1] = *v11;
        v25 = v12;
        v26 = *(v11 + 10);
        GEOTileKeyMake();
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        GEOMapRectForGEOTileKey();
        v14.f64[1] = v13;
        v15 = vdivq_f64(v14, *(MEMORY[0x1E69A1688] + 16));
        v16 = vmulq_f64(v15, vcvtq_f64_f32(*(&v7->__vftable + this[10])));
        v17 = vmulq_f64(v15, vcvtq_f64_f32(*(&v7->__vftable + this[11])));
        v18 = vsubq_f64(v16, v17);
        v19 = vmulq_f64(v18, v18);
        v20 = vsubq_f64(v17, v16);
        v21 = vmulq_f64(v20, v20);
        if (a2)
        {
          v22 = -1;
        }

        else
        {
          v22 = 0;
        }

        v23 = vdupq_n_s64(v22);
        *&result = *&vmulq_n_f64(vbslq_s8(v23, v20, v18), 1.0 / sqrt(vaddvq_f64(vbslq_s8(v23, v21, v19))));
      }
    }
  }

  return result;
}

void sub_1B2E35E50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *md::RouteLineData::mapDataKeyFromTile@<X0>(unsigned __int8 a1@<W0>, unsigned __int8 *a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = vrev64_s32(*(a2 + 4));
  v4 = *a2;
  v7 = a2[1];
  v8 = v4;
  v9 = a3;
  return gdc::LayerDataRequestKey::LayerDataRequestKey(a4, a1, 15, &v6, 5);
}

void md::RouteLineData::~RouteLineData(md::RouteLineData *this)
{
  md::RouteLineData::~RouteLineData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A05138;
  *(this + 80) = &unk_1F2A05178;
  v2 = *(this + 98);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = (this + 752);
  std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v3);
  std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(*(this + 92));

  md::MapTileData::~MapTileData(this);
}

uint64_t md::TransitTransferAnnotationLabelPart::needsCrossfade(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1[2] + 1304) == 2)
  {
    return 1;
  }

  v5 = a1[72];
  v6 = a1[73];
  if (v5 == v6)
  {
    return 0;
  }

  v10 = v5 + 8;
  do
  {
    result = (*(**(v10 - 8) + 768))(*(v10 - 8), a2, a3, a4);
    if (result)
    {
      break;
    }

    v11 = v10 == v6;
    v10 += 8;
  }

  while (!v11);
  return result;
}

uint64_t md::TransitTransferAnnotationLabelPart::layoutForStaging(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  if (a1[87].i8[0])
  {
    return 17;
  }

  result = md::StackLabelPart::layoutForStaging(a1, a2, a3, a4);
  if (result == 37)
  {
    if (a1[86].i8[7] == 1)
    {
      v6 = a1[2];
      if (*(*&v6 + 1304) != 3)
      {
        v7 = a1[86].u8[6];
        if (~v7 + ((*&a1[73] - *&a1[72]) >> 3) == v7)
        {
          if (a1[86].i8[6])
          {
            v8 = 0;
            for (i = 8 * v7 + 8; ; i += 8)
            {
              v10 = a1[72];
              v11 = *(*&v10 + 8 * v8);
              v12 = *(*&v10 + i);
              v13 = atomic_load((*(v11 + 640) + 143));
              if (v13)
              {
                v14 = atomic_load((*(v12 + 640) + 143));
                if (v14)
                {
                  if (!md::LabelIcon::compareImage(*(v11 + 640), *(v12 + 640)))
                  {
                    v15 = a1[2];
                    if (*(*&v15 + 1304) != 3)
                    {
                      *(*&v15 + 1304) = 2;
                    }

                    a1[87].i8[0] = 1;
                    return 17;
                  }

                  a1[86].i8[7] = 0;
                }
              }

              ++v8;
              result = 37;
              if (v8 >= a1[86].u8[6])
              {
                return result;
              }
            }
          }
        }

        else
        {
          *(*&v6 + 1304) = 3;
          a1[86].i8[7] = 0;
        }
      }
    }

    return 37;
  }

  return result;
}

void md::TransitTransferAnnotationLabelPart::~TransitTransferAnnotationLabelPart(md::TransitTransferAnnotationLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void std::vector<objc_object  {objcproto14VKRouteOverlay}* {__strong}>::push_back[abi:nn200100](void ***a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = v4 - *a1;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *a1;
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

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = (8 * v7);
    v12 = *a2;
    *a2 = 0;
    v13 = *a1;
    v14 = a1[1];
    v15 = *a1 == v14;
    v16 = (v11 + *a1 - v14);
    *v11 = v12;
    v6 = (v11 + 1);
    if (!v15)
    {
      v17 = v13;
      v18 = v16;
      do
      {
        v19 = *v17;
        *v17++ = 0;
        *v18++ = v19;
      }

      while (v17 != v14);
      do
      {
        v20 = *v13++;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v16;
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
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  a1[1] = v6;
}

uint64_t md::StandardRouteOverlayCache::removeOverlay(uint64_t a1, void *a2, int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v38 = v5;
  if (!v5)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    v12 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((a1 + 96), v7);
    if (v12)
    {
      v13 = *(a1 + 104);
      v14 = v12[1];
      v15 = vcnt_s8(v13);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        if (v14 >= *&v13)
        {
          v14 %= *&v13;
        }
      }

      else
      {
        v14 &= *&v13 - 1;
      }

      v22 = *(a1 + 96);
      v23 = *(v22 + 8 * v14);
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23 != v12);
      if (v24 == (a1 + 112))
      {
        goto LABEL_60;
      }

      v25 = v24[1];
      if (v15.u32[0] > 1uLL)
      {
        if (v25 >= *&v13)
        {
          v25 %= *&v13;
        }
      }

      else
      {
        v25 &= *&v13 - 1;
      }

      if (v25 != v14)
      {
LABEL_60:
        if (!*v12)
        {
          goto LABEL_61;
        }

        v27 = *(*v12 + 8);
        if (v15.u32[0] > 1uLL)
        {
          if (v27 >= *&v13)
          {
            v27 %= *&v13;
          }
        }

        else
        {
          v27 &= *&v13 - 1;
        }

        if (v27 != v14)
        {
LABEL_61:
          *(v22 + 8 * v14) = 0;
        }
      }

      v30 = *v12;
      if (*v12)
      {
        v31 = *(v30 + 8);
        if (v15.u32[0] > 1uLL)
        {
          if (v31 >= *&v13)
          {
            v31 %= *&v13;
          }
        }

        else
        {
          v31 &= *&v13 - 1;
        }

        if (v31 != v14)
        {
          *(*(a1 + 96) + 8 * v31) = v24;
          v30 = *v12;
        }
      }

      *v24 = v30;
      *v12 = 0;
      --*(a1 + 120);
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v12);
      goto LABEL_70;
    }

    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v16 = GEOGetVectorKitRouteLog_log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v40 = v7;
    goto LABEL_17;
  }

  v8 = std::__hash_table<std::__hash_value_type<VKPolylineGroupOverlay *,std::shared_ptr<md::RouteLineOverlayGroup>>,std::__unordered_map_hasher<std::shared_ptr,std::__unordered_map_hasher,md::RouteLineOverlayGroup::StandardRouteOverlayCache::pointer_hasher<VKPolylineGroupOverlay>,std::equal_to<std::shared_ptr>,true>,std::__unordered_map_equal<std::shared_ptr,std::__unordered_map_hasher,std::__unordered_map_hasher<std::shared_ptr,std::__unordered_map_hasher,md::RouteLineOverlayGroup::StandardRouteOverlayCache::pointer_hasher<VKPolylineGroupOverlay>,std::equal_to<std::shared_ptr>,true>,std::equal_to,true>,std::allocator<std::__unordered_map_hasher>>::find<std::shared_ptr>((a1 + 136), v7);
  if (!v8)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v16 = GEOGetVectorKitRouteLog_log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v40 = v7;
LABEL_17:
    _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_INFO, "Failed to removed overlay %@. It is isnt being tracked", buf, 0xCu);
LABEL_18:

LABEL_19:
    v17 = 0;
    goto LABEL_81;
  }

  v9 = *(a1 + 144);
  v10 = v8[1];
  v11 = vcnt_s8(v9);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    if (v10 >= *&v9)
    {
      v10 %= *&v9;
    }
  }

  else
  {
    v10 &= *&v9 - 1;
  }

  v18 = *(a1 + 136);
  v19 = *(v18 + 8 * v10);
  do
  {
    v20 = v19;
    v19 = *v19;
  }

  while (v19 != v8);
  if (v20 == (a1 + 152))
  {
    goto LABEL_48;
  }

  v21 = v20[1];
  if (v11.u32[0] > 1uLL)
  {
    if (v21 >= *&v9)
    {
      v21 %= *&v9;
    }
  }

  else
  {
    v21 &= *&v9 - 1;
  }

  if (v21 != v10)
  {
LABEL_48:
    if (!*v8)
    {
      goto LABEL_49;
    }

    v26 = *(*v8 + 8);
    if (v11.u32[0] > 1uLL)
    {
      if (v26 >= *&v9)
      {
        v26 %= *&v9;
      }
    }

    else
    {
      v26 &= *&v9 - 1;
    }

    if (v26 != v10)
    {
LABEL_49:
      *(v18 + 8 * v10) = 0;
    }
  }

  v28 = *v8;
  if (*v8)
  {
    v29 = *(v28 + 8);
    if (v11.u32[0] > 1uLL)
    {
      if (v29 >= *&v9)
      {
        v29 %= *&v9;
      }
    }

    else
    {
      v29 &= *&v9 - 1;
    }

    if (v29 != v10)
    {
      *(*(a1 + 136) + 8 * v29) = v20;
      v28 = *v8;
    }
  }

  *v20 = v28;
  *v8 = 0;
  --*(a1 + 160);
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v8);
  [*(a1 + 8) stopObserving:v7];
LABEL_70:

  std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__erase_unique<objc_object  {objcproto14VKRouteOverlay}*>((a1 + 48), v7);
  if (a3)
  {
    std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__erase_unique<objc_object  {objcproto14VKRouteOverlay}*>((a1 + 72), v7);
  }

  v32 = std::remove[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>,objc_object  {objcproto14VKRouteOverlay}*>(*(a1 + 16), *(a1 + 24), &v38);
  if (*(a1 + 24) != v32)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v33 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = "false";
      v35 = *(a1 + 64);
      v36 = *(a1 + 88);
      if (a3)
      {
        v34 = "true";
      }

      *buf = 138413058;
      v40 = v7;
      v41 = 2080;
      v42 = v34;
      v43 = 1024;
      v44 = v35;
      v45 = 1024;
      v46 = v36;
      _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_INFO, "Removed overlay %@ isPersistent:%s overlaysInViewCount:%d persistentOverlaysCount:%d", buf, 0x22u);
    }

    std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::erase(a1 + 16, v32, *(a1 + 24));
  }

  v17 = 1;
LABEL_81:

  return v17;
}

uint64_t *std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__erase_unique<objc_object  {objcproto14VKRouteOverlay}*>(uint64_t **a1, unint64_t a2)
{
  v4 = (a1 + 1);
  result = a1[1];
  if (result)
  {
    v5 = v4;
    v6 = result;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 == v4 || v5[4] > a2)
    {
      return 0;
    }

    else
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(result, v5);
      operator delete(v5);
      return 1;
    }
  }

  return result;
}

uint64_t std::remove[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>,objc_object  {objcproto14VKRouteOverlay}*>(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while ((geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v3 + 8), a3) & 1) == 0)
    {
      v3 += 24;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 24; i != a2; i += 24)
      {
        if ((geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(i + 8), a3) & 1) == 0)
        {
          geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v3, i);
          v3 += 24;
        }
      }
    }
  }

  return v3;
}

uint64_t std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v7, v4);
        v4 += 24;
        v7 += 24;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    if (v6 != v7)
    {
      v8 = (v6 - 24);
      v9 = v8;
      v10 = v8;
      do
      {
        v11 = *v10;
        v10 -= 3;
        (*v11)(v9);
        v8 -= 3;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = v3;
  v6 = v4;
  if (v6 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

void std::__shared_ptr_emplace<md::RouteLineOverlay>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;

  v3 = *(a1 + 208);
  *(a1 + 208) = 0;

  v4 = *(a1 + 216);
  *(a1 + 216) = 0;

  md::RouteLineDrawAnimation::reset((a1 + 656));
  [*(a1 + 168) setRouteRibbon:0];

  v5 = *(a1 + 696);
  if (v5)
  {
    *(a1 + 704) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 688);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(a1 + 672);
  *(a1 + 672) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 664);
  *(a1 + 664) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 592));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 560));
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr((a1 + 528));
  std::__hash_table<GEOComposedRouteSection * {__strong},std::hash<GEOComposedRouteSection * {__strong}>,std::equal_to<GEOComposedRouteSection * {__strong}>,std::allocator<GEOComposedRouteSection * {__strong}>>::~__hash_table(a1 + 488);
  std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::destroy(*(a1 + 464));
  v9 = *(a1 + 448);
  *(a1 + 448) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedMesh>>::~unique_ptr[abi:nn200100]((a1 + 440));
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::~unique_ptr[abi:nn200100]((a1 + 432));
  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>>::~unique_ptr[abi:nn200100]((a1 + 424));
  v10 = *(a1 + 416);
  *(a1 + 416) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>>::~unique_ptr[abi:nn200100]((a1 + 408));
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::~unique_ptr[abi:nn200100]((a1 + 400));
  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>>::~unique_ptr[abi:nn200100]((a1 + 392));
  v11 = *(a1 + 384);
  *(a1 + 384) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 376);
  *(a1 + 376) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  std::unique_ptr<md::ManeuverPointSet>::~unique_ptr[abi:nn200100]((a1 + 368));
  v13 = *(a1 + 360);
  *(a1 + 360) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a1 + 352);
  *(a1 + 352) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a1 + 344);
  *(a1 + 344) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  std::unique_ptr<md::RouteLineSharedResources>::~unique_ptr[abi:nn200100]((a1 + 336));
  v22 = (a1 + 312);
  std::vector<std::unique_ptr<md::RouteLineArrowLayer>>::__destroy_vector::operator()[abi:nn200100](&v22);
  std::unique_ptr<md::RouteLineArrowSharedResources>::~unique_ptr[abi:nn200100]((a1 + 304));
  v16 = *(a1 + 296);
  *(a1 + 296) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a1 + 280);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = *(a1 + 264);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = *(a1 + 248);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  *(a1 + 160) = &unk_1F2A4BA98;
  v21 = *(a1 + 24);
}

void sub_1B2E374B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 696);
  if (v12)
  {
    *(v10 + 704) = v12;
    operator delete(v12);
  }

  v13 = *(v10 + 688);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = *(v10 + 672);
  *(v10 + 672) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(v10 + 664);
  *(v10 + 664) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v10 + 592));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v10 + 560));
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr((v10 + 528));
  std::__hash_table<GEOComposedRouteSection * {__strong},std::hash<GEOComposedRouteSection * {__strong}>,std::equal_to<GEOComposedRouteSection * {__strong}>,std::allocator<GEOComposedRouteSection * {__strong}>>::~__hash_table(v10 + 488);
  std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::destroy(*(v10 + 464));
  v16 = *(v10 + 448);
  *(v10 + 448) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedMesh>>::~unique_ptr[abi:nn200100]((v10 + 440));
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::~unique_ptr[abi:nn200100]((v10 + 432));
  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>>::~unique_ptr[abi:nn200100]((v10 + 424));
  v17 = *(v10 + 416);
  *(v10 + 416) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>>::~unique_ptr[abi:nn200100]((v10 + 408));
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::~unique_ptr[abi:nn200100]((v10 + 400));
  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>>::~unique_ptr[abi:nn200100]((v10 + 392));
  v18 = *(v10 + 384);
  *(v10 + 384) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v10 + 376);
  *(v10 + 376) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  std::unique_ptr<md::ManeuverPointSet>::~unique_ptr[abi:nn200100]((v10 + 368));
  v20 = *(v10 + 360);
  *(v10 + 360) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(v10 + 352);
  *(v10 + 352) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(v10 + 344);
  *(v10 + 344) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  std::unique_ptr<md::RouteLineSharedResources>::~unique_ptr[abi:nn200100]((v10 + 336));
  a10 = (v10 + 312);
  std::vector<std::unique_ptr<md::RouteLineArrowLayer>>::__destroy_vector::operator()[abi:nn200100](&a10);
  std::unique_ptr<md::RouteLineArrowSharedResources>::~unique_ptr[abi:nn200100]((v10 + 304));
  v23 = *(v10 + 296);
  *(v10 + 296) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(v10 + 288);
  *(v10 + 288) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(v10 + 280);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  v26 = *(v10 + 264);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  v27 = *(v10 + 248);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  *(v10 + 160) = &unk_1F2A4BA98;
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::RouteLineOverlay>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4BAB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::RouteLineOverlayGroup>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 32);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 32));
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  if (v2[8])
  {
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(*(a1 + 88));
    *(a1 + 88) = 0;
    v3 = *(a1 + 80);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(a1 + 72) + 8 * i) = 0;
      }
    }

    *(a1 + 96) = 0;
  }

  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v5 != v6)
  {
    v7 = v5 - 3;
    v8 = v5 - 3;
    v9 = v5 - 3;
    do
    {
      v10 = *v9;
      v9 -= 3;
      (*v10)(v8);
      v7 -= 3;
      v11 = v8 == v6;
      v8 = v9;
    }

    while (!v11);
  }

  *(a1 + 56) = v6;
  objc_storeWeak((a1 + 120), 0);
  v12 = *(a1 + 152);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(a1 + 136);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  objc_destroyWeak((a1 + 120));

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(*(a1 + 88));
  v14 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = *(a1 + 56);
    v17 = *(a1 + 48);
    if (v16 != v15)
    {
      v18 = v16 - 3;
      v19 = v16 - 3;
      v20 = v16 - 3;
      do
      {
        v21 = *v20;
        v20 -= 3;
        (*v21)(v19);
        v18 -= 3;
        v11 = v19 == v15;
        v19 = v20;
      }

      while (!v11);
      v17 = *(a1 + 48);
    }

    *(a1 + 56) = v15;
    operator delete(v17);
  }

  v22 = *v2;

  std::__tree<gdc::LayerDataWithWorld>::destroy(v22);
}

void std::__shared_ptr_emplace<md::RouteLineOverlayGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A055C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::StandardRouteOverlayCache::hasPolylineOverlay(md::StandardRouteOverlayCache *this, VKPolylineOverlay *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 6);
  v5 = this + 56;
  if (v4 != this + 56)
  {
    do
    {
      v6 = *(v4 + 4);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v7 = [(VKPolylineOverlay *)v6 polylines];
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          v9 = *v17;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v17 != v9)
              {
                objc_enumerationMutation(v7);
              }

              if (*(*(&v16 + 1) + 8 * i) == v3)
              {

                goto LABEL_21;
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }
      }

      else if (v6 == v3)
      {
LABEL_21:

        v14 = 1;
        goto LABEL_22;
      }

      v11 = *(v4 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v4 + 2);
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != v5);
  }

  v14 = 0;
LABEL_22:

  return v14;
}

void md::StandardRouteOverlayCache::onPolylineSkippedInGroup(VKPolylineGroupOverlay *this, VKPolylineGroupOverlay *a2, VKPolylineOverlay *a3)
{
  v12 = a3;
  md::StandardRouteOverlayCache::getInternalOverlay(&v13, this, a2);
  v5 = v13;
  if (!v13)
  {
    goto LABEL_17;
  }

  v6 = v12;
  if (!v6)
  {
    if (!v5[15])
    {
      goto LABEL_15;
    }

    v9 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v7 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v5 + 6, v6);
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7[3];
  v9 = v7[4];
  if (!v9)
  {
    if (v5[15] == v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  if (v5[15] != v8)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_11:
    v10 = v5[16];
    v5[15] = v8;
    v5[16] = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    if (!v9)
    {
      goto LABEL_15;
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v9);
LABEL_15:

  v11 = **&this->_focusedPolyline->_selected;
  if (v11)
  {
    v15 = 7;
    md::MapEngine::setNeedsTick(v11, &v15);
  }

LABEL_17:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }
}

void md::StandardRouteOverlayCache::onPolylineFocusedInGroup(md::StandardRouteOverlayCache *this, VKPolylineGroupOverlay *a2, VKPolylineOverlay *a3)
{
  v3 = **(*(this + 5) + 88);
  if (v3)
  {
    v4 = 7;
    md::MapEngine::setNeedsTick(v3, &v4);
  }
}

void md::StandardRouteOverlayCache::onPolylineSelectedInGroup(VKPolylineGroupOverlay *this, VKPolylineGroupOverlay *a2, VKPolylineOverlay *a3)
{
  v14 = a3;
  md::StandardRouteOverlayCache::getInternalOverlay(&v15, this, a2);
  v5 = v15;
  if (!v15)
  {
    goto LABEL_24;
  }

  v6 = *(v15 + 112);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = v14;
  if (!v7)
  {
    v10 = 0;
    v9 = 0;
LABEL_9:
    v11 = v5[13];
    if (v11 != v9)
    {
      if (v11)
      {
        *(v11 + 620) = 0;
      }

      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = v5[14];
      v5[13] = v9;
      v5[14] = v10;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        v9 = v5[13];
      }

      if (v9)
      {
        *(v9 + 620) = 1;
      }
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    goto LABEL_20;
  }

  v8 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v5 + 6, v7);
  if (v8)
  {
    v9 = v8[3];
    v10 = v8[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_9;
  }

LABEL_20:

  v13 = **&this->_focusedPolyline->_selected;
  if (v13)
  {
    v17 = 7;
    md::MapEngine::setNeedsTick(v13, &v17);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

LABEL_24:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void md::StandardRouteOverlayCache::onPolylineRemovedFromGroup(VKPolylineGroupOverlay *this, VKPolylineGroupOverlay *a2, VKPolylineOverlay *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v7 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(VKPolylineGroupOverlay *)v5 polylines];
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    v47 = 2048;
    v48 = [v8 count];
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Removed polyline %@ from polylineGroupOverlay %@. PolylineOverlay count %zu", buf, 0x20u);
  }

  md::StandardRouteOverlayCache::getInternalOverlay(buf, this, v5);
  v9 = *buf;
  if (*buf)
  {
    v10 = v6;
    v45 = v10;
    v11 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v9 + 6, v10);
    if (v11)
    {
      v12 = v11;
      v13 = v11[3];
      v14 = v11[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = v9[1];
      if (v15)
      {
        v16 = (v9 + 1);
        v17 = v9[1];
        do
        {
          v18 = v17[4];
          v19 = v18 >= v13;
          v20 = v18 < v13;
          if (v19)
          {
            v16 = v17;
          }

          v17 = v17[v20];
        }

        while (v17);
        if (v16 != (v9 + 1) && v13 >= v16[4])
        {
          v21 = v16[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            v23 = v16;
            do
            {
              v22 = v23[2];
              v24 = *v22 == v23;
              v23 = v22;
            }

            while (!v24);
          }

          if (*v9 == v16)
          {
            *v9 = v22;
          }

          v9[2] = (v9[2] - 1);
          std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v15, v16);
          v25 = v16[5];
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v25);
          }

          operator delete(v16);
        }
      }

      v26 = v9[7];
      v27 = v12[1];
      v28 = vcnt_s8(v26);
      v28.i16[0] = vaddlv_u8(v28);
      if (v28.u32[0] > 1uLL)
      {
        if (v27 >= *&v26)
        {
          v27 %= *&v26;
        }
      }

      else
      {
        v27 &= *&v26 - 1;
      }

      v29 = v9[6];
      v30 = v29[v27];
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30 != v12);
      if (v31 == v9 + 8)
      {
        goto LABEL_45;
      }

      v32 = v31[1];
      if (v28.u32[0] > 1uLL)
      {
        if (v32 >= *&v26)
        {
          v32 %= *&v26;
        }
      }

      else
      {
        v32 &= *&v26 - 1;
      }

      if (v32 != v27)
      {
LABEL_45:
        if (!*v12)
        {
          goto LABEL_46;
        }

        v33 = *(*v12 + 8);
        if (v28.u32[0] > 1uLL)
        {
          if (v33 >= *&v26)
          {
            v33 %= *&v26;
          }
        }

        else
        {
          v33 &= *&v26 - 1;
        }

        if (v33 != v27)
        {
LABEL_46:
          v29[v27] = 0;
        }
      }

      v34 = *v12;
      if (*v12)
      {
        v35 = *(v34 + 8);
        if (v28.u32[0] > 1uLL)
        {
          if (v35 >= *&v26)
          {
            v35 %= *&v26;
          }
        }

        else
        {
          v35 &= *&v26 - 1;
        }

        if (v35 != v27)
        {
          v9[6][v35] = v31;
          v34 = *v12;
        }
      }

      *v31 = v34;
      *v12 = 0;
      v9[9] = (v9[9] - 1);
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v12);
      v36 = v9[3];
      v37 = v9[4];
      if (v36 != v37)
      {
        while ((geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v36 + 8), &v45) & 1) == 0)
        {
          v36 += 24;
          if (v36 == v37)
          {
            v36 = v37;
            goto LABEL_64;
          }
        }

        if (v36 != v37)
        {
          for (i = v36 + 24; i != v37; i += 24)
          {
            if ((geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(i + 8), &v45) & 1) == 0)
            {
              geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v36, i);
              v36 += 24;
            }
          }
        }
      }

LABEL_64:
      v39 = v9[4];
      if (v39 != v36)
      {
        v40 = v39 - 3;
        v41 = v40;
        v42 = v40;
        do
        {
          v43 = *v42;
          v42 -= 3;
          (*v43)(v41);
          v40 -= 3;
          v24 = v41 == v36;
          v41 = v42;
        }

        while (!v24);
        v9[4] = v36;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      v10 = v45;
    }

    v44 = **&this->_focusedPolyline->_selected;
    if (v44)
    {
      LOBYTE(v45) = 7;
      md::MapEngine::setNeedsTick(v44, &v45);
    }
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
  }
}

void md::StandardRouteOverlayCache::onPolylineAddedToGroup(VKPolylineGroupOverlay *this, VKPolylineGroupOverlay *a2, VKPolylineOverlay *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v7 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(VKPolylineGroupOverlay *)v5 polylines];
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    v12 = 2048;
    v13 = [v8 count];
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Added polyline %@ to polylineGroupOverlay %@. PolylineOverlay count %zu", buf, 0x20u);
  }

  md::StandardRouteOverlayCache::getInternalOverlay(buf, this, v5);
  if (*buf)
  {
    md::RouteLineOverlayGroup::addPolyline(*buf, v6);
    v9 = **&this->_focusedPolyline->_selected;
    if (v9)
    {
      v10 = 7;
      md::MapEngine::setNeedsTick(v9, &v10);
    }
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
  }
}

void ggl::FoggedDiffuseLandmark::LandmarkPipelineState::~LandmarkPipelineState(ggl::FoggedDiffuseLandmark::LandmarkPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup::~LandmarkPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::VenueBuildingFeatureMarker::~VenueBuildingFeatureMarker(md::VenueBuildingFeatureMarker *this)
{
  *this = &unk_1F2A05658;
  v2 = (this + 32);
  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  v5 = v2;
  std::vector<md::VenueLevel>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A05658;
  v2 = (this + 32);
  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  v5 = v2;
  std::vector<md::VenueLevel>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::vector<md::VenueLevel>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 5;
        std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>::__destroy_vector::operator()[abi:nn200100](&v6);
        if (*(v4 - 48) == 1 && *(v4 - 49) < 0)
        {
          operator delete(*(v4 - 9));
        }

        if (*(v4 - 80) == 1 && *(v4 - 81) < 0)
        {
          operator delete(*(v4 - 13));
        }

        if (*(v4 - 112) == 1 && *(v4 - 113) < 0)
        {
          operator delete(*(v4 - 17));
        }

        if (*(v4 - 144) == 1 && *(v4 - 145) < 0)
        {
          operator delete(*(v4 - 21));
        }

        v4 -= 23;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t md::VenueBuilding::VenueBuilding(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    v5 = 0xD37A6F4DE9BD37A7 * ((v4 - *a2) >> 3);
    if (v5 < 0x1642C8590B21643)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueLevel>>(v5);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v8;
  *(a1 + 40) = v7;
  *(a1 + 24) = v6;
  geo::ConvexHull2<double>::ConvexHull2(a1 + 80, (a2 + 80));
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_1B2E38B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<md::VenueLevel>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_1B2E38C58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueComponent>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueLevel>>(unint64_t a1)
{
  if (a1 < 0x1642C8590B21643)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10MarketMaskEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MarketMask>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A427D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A427F8;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A427D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls37SharedMaterialVisibilityOptionsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialVisibilityOptionsHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42FB0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13PrimitiveTypeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PrimitiveType>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41F70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41F90;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41F70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::PrepareSlices::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::PrimitiveType const&,md::ls::SharedMaterialVisibilityOptionsHandle const*,md::ls::RenderableVisibilityOptions const*,md::ls::MarketMask const*>,ecs2::Query<md::ls::UniqueMaterialVisibilityOptionsHandle const&>)::$_0,std::allocator<md::ita::PrepareSlices::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::PrimitiveType const&,md::ls::SharedMaterialVisibilityOptionsHandle const*,md::ls::RenderableVisibilityOptions const*,md::ls::MarketMask const*>,ecs2::Query<md::ls::UniqueMaterialVisibilityOptionsHandle const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::PrimitiveType const&,md::ls::SharedMaterialVisibilityOptionsHandle const*,md::ls::RenderableVisibilityOptions const*,md::ls::MarketMask const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A056E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void md::ImageResourceDecoder::decode(uint64_t a1@<X2>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = *(*a1 + 16);
    md::LabelExternalPointFeature::incident(v3);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v3 = 0;
  }

  if ([v3 length])
  {
    v4 = CGDataProviderCreateWithData(0, [v3 bytes], objc_msgSend(v3, "length"), 0);
    v5 = CGImageSourceCreateWithDataProvider(v4, 0);
    CGImageSourceCreateImageAtIndex(v5, 0, 0);
    CFRelease(v5);
    CGDataProviderRelease(v4);
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1B2E39C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::ImageResource>::__on_zero_shared(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3 != a1[6])
  {

    free(v3);
  }
}

void std::__shared_ptr_emplace<md::ImageResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A057D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::Image>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::Image>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A057A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ImageResourceDecoder::~ImageResourceDecoder(md::ImageResourceDecoder *this)
{
  *this = &unk_1F2A34780;
  *(this + 1) = &unk_1F2A59028;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A34780;
  *(this + 1) = &unk_1F2A59028;
}

uint64_t std::__function::__value_func<void ()(md::RoadPiece const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<long long>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v3 = (v3 - 32);
        std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>>(v6, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

void std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RoadPiece>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RoadPiece>(uint64_t a1, void *a2)
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

void std::__function::__func<md::LabelTrafficTile::LabelTrafficTile(geo::QuadTile const&,geo::codec::VectorTile *,zilch::TrafficSkeletonTile *,md::DynamicTrafficTileList const&)::$_0,std::allocator<md::LabelTrafficTile::LabelTrafficTile(geo::QuadTile const&,geo::codec::VectorTile *,zilch::TrafficSkeletonTile *,md::DynamicTrafficTileList const&)::$_0>,void ()(md::RoadPiece const&)>::operator()(mdm::zone_mallocator *a1, unint64_t *a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  v4 = *a2;
  v91 = 0uLL;
  v92 = 0;
  v5 = mdm::zone_mallocator::instance(a1);
  v6 = pthread_rwlock_rdlock((v5 + 32));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  v8 = malloc_type_zone_malloc(*v5, 0x38uLL, 0x1060040951A3735uLL);
  atomic_fetch_add((v5 + 24), 1u);
  geo::read_write_lock::unlock((v5 + 32));
  *(v8 + 2) = v4;
  v8[48] = v93;
  *(v8 + 24) = v91;
  *(v8 + 5) = v92;
  v91 = 0uLL;
  v92 = 0;
  v10 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
  v11 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v10 >> 47) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  *v8 = 0;
  *(v8 + 1) = v12;
  v13 = *(v3 + 128);
  if (v13)
  {
    v14 = vcnt_s8(v13);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = v12;
      if (v13 <= v12)
      {
        v15 = v12 % v13;
      }
    }

    else
    {
      v15 = (v13 - 1) & v12;
    }

    v16 = *(*(v3 + 120) + 8 * v15);
    if (v16)
    {
      for (i = *v16; i; i = *i)
      {
        v18 = *(i + 1);
        if (v18 == v12)
        {
          if (*(i + 2) == v4)
          {
            std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v8);
            v8 = i;
            goto LABEL_73;
          }
        }

        else
        {
          if (v14.u32[0] > 1uLL)
          {
            if (v18 >= v13)
            {
              v18 %= v13;
            }
          }

          else
          {
            v18 &= v13 - 1;
          }

          if (v18 != v15)
          {
            break;
          }
        }
      }
    }
  }

  v19 = (*(v3 + 160) + 1);
  v20 = *(v3 + 168);
  if (!v13 || (v20 * v13) < v19)
  {
    v21 = 1;
    if (v13 >= 3)
    {
      v21 = (v13 & (v13 - 1)) != 0;
    }

    v22 = v21 | (2 * v13);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    if (v24 == 1)
    {
      v24 = 2;
    }

    else if ((v24 & (v24 - 1)) != 0)
    {
      prime = std::__next_prime(v24);
      v24 = prime;
      v13 = *(v3 + 128);
    }

    if (v24 <= v13)
    {
      if (v24 >= v13)
      {
        goto LABEL_59;
      }

      prime = vcvtps_u32_f32(*(v3 + 160) / *(v3 + 168));
      if (v13 < 3 || (v33 = vcnt_s8(v13), v33.i16[0] = vaddlv_u8(v33), v33.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v34 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v34;
        }
      }

      if (v24 <= prime)
      {
        v24 = prime;
      }

      if (v24 >= v13)
      {
        v13 = *(v3 + 128);
        goto LABEL_59;
      }

      if (!v24)
      {
        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> **,0>((v3 + 120), 0);
        v13 = 0;
        *(v3 + 128) = 0;
        goto LABEL_59;
      }
    }

    v25 = mdm::zone_mallocator::instance(prime);
    v26 = pthread_rwlock_rdlock((v25 + 32));
    if (v26)
    {
      geo::read_write_lock::logFailure(v26, "read lock", v27);
    }

    v28 = malloc_type_zone_malloc(*v25, 8 * v24, 0x2004093837F09uLL);
    atomic_fetch_add((v25 + 24), 1u);
    geo::read_write_lock::unlock((v25 + 32));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> **,0>((v3 + 120), v28);
    v29 = 0;
    *(v3 + 128) = v24;
    do
    {
      *(*(v3 + 120) + 8 * v29++) = 0;
    }

    while (v24 != v29);
    v30 = *(v3 + 144);
    if (v30)
    {
      v31 = v30[1];
      v32 = vcnt_s8(v24);
      v32.i16[0] = vaddlv_u8(v32);
      if (v32.u32[0] > 1uLL)
      {
        if (v31 >= v24)
        {
          v31 %= v24;
        }
      }

      else
      {
        v31 &= v24 - 1;
      }

      *(*(v3 + 120) + 8 * v31) = v3 + 144;
      v35 = *v30;
      if (*v30)
      {
        do
        {
          v36 = v35[1];
          if (v32.u32[0] > 1uLL)
          {
            if (v36 >= v24)
            {
              v36 %= v24;
            }
          }

          else
          {
            v36 &= v24 - 1;
          }

          if (v36 != v31)
          {
            v37 = *(v3 + 120);
            if (!*(v37 + 8 * v36))
            {
              *(v37 + 8 * v36) = v30;
              goto LABEL_55;
            }

            *v30 = *v35;
            *v35 = **(v37 + 8 * v36);
            **(v37 + 8 * v36) = v35;
            v35 = v30;
          }

          v36 = v31;
LABEL_55:
          v30 = v35;
          v35 = *v35;
          v31 = v36;
        }

        while (v35);
      }
    }

    v13 = v24;
  }

LABEL_59:
  v38 = *(v8 + 1);
  v39 = vcnt_s8(v13);
  v39.i16[0] = vaddlv_u8(v39);
  if (v39.u32[0] > 1uLL)
  {
    if (v38 >= v13)
    {
      v38 %= v13;
    }
  }

  else
  {
    v38 &= v13 - 1;
  }

  v40 = *(v3 + 120);
  v41 = *(v40 + 8 * v38);
  if (v41)
  {
    *v8 = *v41;
LABEL_71:
    *v41 = v8;
    goto LABEL_72;
  }

  *v8 = *(v3 + 144);
  *(v3 + 144) = v8;
  *(v40 + 8 * v38) = v3 + 144;
  if (*v8)
  {
    v42 = *(*v8 + 8);
    if (v39.u32[0] > 1uLL)
    {
      if (v42 >= v13)
      {
        v42 %= v13;
      }
    }

    else
    {
      v42 &= v13 - 1;
    }

    v41 = (*(v3 + 120) + 8 * v42);
    goto LABEL_71;
  }

LABEL_72:
  ++*(v3 + 160);
LABEL_73:
  v90 = &v91;
  std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v90);
  v45 = *(v8 + 3);
  v44 = *(v8 + 4);
  v46 = v44 - v45;
  v47 = (v44 - v45) >> 5;
  v48 = a2[1];
  if (v47 <= v48)
  {
    v49 = v48 + 1;
    v50 = v48 + 1 - v47;
    if (v48 + 1 <= v47)
    {
      if (v48 + 1 < v47)
      {
        v66 = (v45 + 32 * v49);
        while (v44 != v66)
        {
          v44 = (v44 - 32);
          std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v44);
        }

        *(v8 + 4) = v66;
      }
    }

    else
    {
      v51 = *(v8 + 5);
      if (v50 <= (v51 - v44) >> 5)
      {
        v67 = (v44 + 32 * v50);
        v68 = 32 * v48 - 32 * v47 + 32;
        do
        {
          *v44 = 0;
          *(v44 + 1) = 0;
          *(v44 + 2) = 0;
          v44 = (v44 + 32);
          v68 -= 32;
        }

        while (v68);
        *(v8 + 4) = v67;
      }

      else
      {
        if (v49 >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v52 = (v51 - v45) >> 4;
        if (v52 <= v49)
        {
          v52 = v48 + 1;
        }

        if ((v51 - v45) >= 0x7FFFFFFFFFFFFFE0)
        {
          v53 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v52;
        }

        v54 = mdm::zone_mallocator::instance(v43);
        v55 = pthread_rwlock_rdlock((v54 + 32));
        if (v55)
        {
          geo::read_write_lock::logFailure(v55, "read lock", v56);
        }

        v57 = malloc_type_zone_malloc(*v54, 32 * v53, 0x20040D2EA512BuLL);
        atomic_fetch_add((v54 + 24), 1u);
        geo::read_write_lock::unlock((v54 + 32));
        v58 = &v46[v57];
        v59 = v45 + 32 * v48 - v44 + 32;
        v60 = &v46[v57];
        do
        {
          *v60 = 0;
          *(v60 + 1) = 0;
          *(v60 + 2) = 0;
          v60 += 32;
          v59 -= 32;
        }

        while (v59);
        v61 = *(v8 + 3);
        v62 = *(v8 + 4) - v61;
        v63 = &v58[-v62];
        v43 = memcpy(&v58[-v62], v61, v62);
        v64 = *(v8 + 3);
        *(v8 + 3) = v63;
        *(v8 + 4) = v57 + 32 * v49;
        *(v8 + 5) = v57 + 32 * v53;
        if (v64)
        {
          v65 = mdm::zone_mallocator::instance(v43);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>>(v65, v64);
        }
      }
    }

    v48 = a2[1];
    v45 = *(v8 + 3);
  }

  v69 = v45 + 32 * v48;
  v70 = *(v69 + 8);
  v71 = *(v69 + 16);
  if (v70 >= v71)
  {
    v74 = (v70 - *v69) >> 5;
    v75 = v74 + 1;
    if ((v74 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v76 = v71 - *v69;
    if (v76 >> 4 > v75)
    {
      v75 = v76 >> 4;
    }

    if (v76 >= 0x7FFFFFFFFFFFFFE0)
    {
      v77 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v77 = v75;
    }

    if (v77)
    {
      v78 = mdm::zone_mallocator::instance(v43);
      v79 = pthread_rwlock_rdlock((v78 + 32));
      if (v79)
      {
        geo::read_write_lock::logFailure(v79, "read lock", v80);
      }

      v81 = malloc_type_zone_malloc(*v78, 32 * v77, 0x106004029F9A71EuLL);
      atomic_fetch_add((v78 + 24), 1u);
      geo::read_write_lock::unlock((v78 + 32));
    }

    else
    {
      v81 = 0;
    }

    v82 = &v81[32 * v74];
    v83 = &v81[32 * v77];
    v84 = *(a2 + 1);
    *v82 = *a2;
    *(v82 + 1) = v84;
    v73 = v82 + 32;
    v85 = *(v69 + 8) - *v69;
    v86 = &v82[-v85];
    v87 = memcpy(&v82[-v85], *v69, v85);
    v88 = *v69;
    *v69 = v86;
    *(v69 + 8) = v73;
    *(v69 + 16) = v83;
    if (v88)
    {
      v89 = mdm::zone_mallocator::instance(v87);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RoadPiece>(v89, v88);
    }
  }

  else
  {
    v72 = *(a2 + 1);
    *v70 = *a2;
    v70[1] = v72;
    v73 = v70 + 2;
  }

  *(v69 + 8) = v73;
}

uint64_t std::__function::__func<md::LabelTrafficTile::LabelTrafficTile(geo::QuadTile const&,geo::codec::VectorTile *,zilch::TrafficSkeletonTile *,md::DynamicTrafficTileList const&)::$_0,std::allocator<md::LabelTrafficTile::LabelTrafficTile(geo::QuadTile const&,geo::codec::VectorTile *,zilch::TrafficSkeletonTile *,md::DynamicTrafficTileList const&)::$_0>,void ()(md::RoadPiece const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A05830;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<md::LabelTrafficTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A058B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::AnchorLogic,md::AnchorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}