uint64_t RBPathRelease(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    return v2();
  }

  return result;
}

uint64_t RB::Symbol::Glyph::Layer::Layer(uint64_t a1, void *a2, void *a3, int a4)
{
  v54 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0u;
  v7 = a1 + 8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x400000000;
  *(a1 + 56) = atomic_fetch_add_explicit(&RB::Symbol::Glyph::Layer::last_unique_id, 1u, memory_order_relaxed) + 1;
  *(a1 + 60) = 1065353216;
  *(a1 + 68) = 2139095040;
  *(a1 + 76) = 1065353216;
  *(a1 + 84) = -3175874560;
  *(a1 + 96) = 0;
  *(a1 + 104) = 73924608;
  *(a1 + 108) &= 0xFCu;
  v8 = (a1 + 24);
  if (objc_opt_respondsToSelector())
  {
    v9 = [a3 tags];
    v10 = v9;
    if (v9)
    {
      v11 = RB::Symbol::GlyphCache::shared(v9);
      v46 = a4;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v12 = [(RB::Symbol::GlyphCache *)v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v12)
      {
        v13 = *v50;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v50 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = RB::Symbol::GlyphCache::intern_locked(v11, *(*(&v49 + 1) + 8 * i));
            v16 = *(a1 + 48);
            if (*(a1 + 52) < v16 + 1)
            {
              RB::vector<RB::Symbol::Tag,4ul,unsigned int>::reserve_slow((v7 + 16), v16 + 1);
              v16 = *(a1 + 48);
            }

            v17 = *(a1 + 40);
            if (!v17)
            {
              v17 = v7 + 16;
            }

            *(v17 + 4 * v16) = v15;
            ++*(a1 + 48);
          }

          v12 = [(RB::Symbol::GlyphCache *)v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v12);
      }

      if (*(a1 + 40))
      {
        v18 = *(a1 + 40);
      }

      else
      {
        v18 = (v7 + 16);
      }

      v19 = *(a1 + 48);
      v20 = 126 - 2 * __clz(v19);
      if (v19)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::Symbol::Tag *,false>(v18, &v18[v19], &v48, v21, 1);
      a4 = v46;
      if (*(a1 + 40))
      {
        v22 = *(a1 + 40);
      }

      else
      {
        v22 = (v7 + 16);
      }

      v23 = *(a1 + 48);
      if (RB::Symbol::tags_contains(v22, v23, 1u))
      {
        *(a1 + 104) |= 2u;
      }

      if (RB::Symbol::tags_contains(v22, v23, 2u))
      {
        *(a1 + 104) |= 4u;
      }

      if (RB::Symbol::tags_contains(v22, v23, 3u) || RB::Symbol::tags_contains(v22, v23, 4u))
      {
        *(a1 + 104) |= 8u;
      }
    }
  }

  if ([a3 referenceShape])
  {
    operator new();
  }

  if ((*(a1 + 107) & 0x30) == 0 && [a3 sublayers])
  {
    operator new();
  }

  v24 = *(a1 + 104) & 0x30000000;
  if (v24)
  {
    if (*(a1 + 40))
    {
      v25 = *(a1 + 40);
    }

    else
    {
      v25 = v8;
    }

    if (RB::Symbol::tags_contains(v25, *(a1 + 48), 1u) && *(a1 + 80) <= 0.0 && (v24 != 0x10000000 || !*(*a1 + 56)))
    {
      RB::Symbol::Glyph::Layer::remove(a1, 1u);
    }

    [a3 valueThreshold];
    *&v26 = v26;
    *(a1 + 68) = LODWORD(v26);
    *(a1 + 72) = [a3 motionGroup];
    [a3 opacity];
    *&v27 = v27;
    *(a1 + 76) = LODWORD(v27);
    if ([a3 isEraserLayer])
    {
      *(a1 + 104) |= 1u;
    }

    if ([a3 alwaysPulses])
    {
      *(a1 + 104) |= 0x40u;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [a3 alwaysRotates])
    {
      *(a1 + 104) |= 0x80u;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [a3 participatesInVariableDraw])
    {
      [a3 variableDrawOffset];
      v29 = v28;
      [a3 variableDrawLength];
      v31 = v29;
      if (v31 >= 0.0)
      {
        *&v32 = v29;
      }

      else
      {
        *&v32 = 0.0;
      }

      if (*&v32 > 1.0)
      {
        *&v32 = 1.0;
      }

      v33 = v30 + v31;
      if (v33 < 0.0)
      {
        v33 = 0.0;
      }

      if (v33 > 1.0)
      {
        v33 = 1.0;
      }

      if (v33 > *&v32)
      {
        *(&v32 + 1) = v33;
        *(a1 + 96) = v32;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      *(a1 + 104) = *(a1 + 104) & 0xBFFFFFFF | (([a2 fillStyle] == 2) << 30);
    }

    if (objc_opt_respondsToSelector())
    {
      *(a1 + 104) = *(a1 + 104) & 0x7FFFFFFF | (([a3 gradientType] == 1) << 31);
    }

    if (objc_opt_respondsToSelector())
    {
      *(a1 + 108) = *(a1 + 108) & 0xFE | [a3 gradientAlignsToLayer];
    }

    if (*(a1 + 76) > 0.0)
    {
      v34 = *(a1 + 104) & 0xFFC3FFFF;
      *(a1 + 104) = v34;
      if ((a4 - 3) < 2)
      {
        v35 = [a3 hierarchyLevel];
        if (v35)
        {
          if (a4 == 3)
          {
            v36 = *(a1 + 104) & 0xFFFC03FF | (v35 << 10);
          }

          else
          {
            v41 = 4;
            if (v35 < 4)
            {
              v41 = v35;
            }

            v36 = (*(a1 + 104) & 0xFFC3FFFF | (v41 << 18)) + 0x100000;
          }

          *(a1 + 104) = v36;
        }

        return a1;
      }

      if (a4 != 2)
      {
        return a1;
      }

      *(a1 + 104) = v34 | 0x240000;
      if (*(a1 + 80) <= 0.0)
      {
        if (objc_opt_respondsToSelector())
        {
          v42 = [a3 fillImage];
          if (v42)
          {
            *(a1 + 104) = *(a1 + 104) & 0xFFC3FFFF | 0x300000;
            RB::cf_ptr<void const*>::operator=((v7 + 8), v42);
            *(a1 + 108) |= 1u;
            return a1;
          }
        }

        v43 = [a3 fillColorName];
        if (*v7 != v43)
        {

          *v7 = v43;
        }

        v38 = [a3 fillColor];
        v44 = *(v7 + 8);
        if (v44 != v38)
        {
          if (v44)
          {
            CFRelease(v44);
          }

          if (v38)
          {
            goto LABEL_83;
          }

          goto LABEL_97;
        }
      }

      else
      {
        v37 = [a3 strokeColorName];
        if (*v7 != v37)
        {

          *v7 = v37;
        }

        v38 = [a3 strokeColor];
        v39 = *(v7 + 8);
        if (v39 != v38)
        {
          if (v39)
          {
            CFRelease(v39);
          }

          if (v38)
          {
LABEL_83:
            v40 = CFRetain(v38);
LABEL_98:
            *(v7 + 8) = v40;
            return a1;
          }

LABEL_97:
          v40 = 0;
          goto LABEL_98;
        }
      }
    }
  }

  return a1;
}

void sub_195D03FE8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 40);
  if (v4)
  {
    free(v4);
  }

  v5 = *(v2 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  _Unwind_Resume(a1);
}

void *RB::Symbol::GlyphCache::intern_locked(RB::Symbol::GlyphCache *this, NSString *a2)
{
  result = RB::UntypedTable::lookup((this + 72), a2, 0);
  if (!result)
  {
    v5 = *(this + 34);
    *(this + 34) = v5 + 1;
    RB::UntypedTable::insert((this + 72), [(NSString *)a2 copy], v5);
    return v5;
  }

  return result;
}

BOOL RB::Symbol::tags_contains(int *a1, unint64_t a2, unsigned int a3)
{
  if (a2 > 8)
  {
    v7 = &a1[a2];
    if (a1 != v7)
    {
      v8 = (4 * a2) >> 2;
      do
      {
        v9 = v8 >> 1;
        v10 = &a1[v8 >> 1];
        v12 = *v10;
        v11 = (v10 + 1);
        v8 += ~(v8 >> 1);
        if (v12 < a3)
        {
          a1 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
      if (a1 != v7)
      {
        return *a1 <= a3;
      }
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = 4 * a2 - 4;
  do
  {
    v4 = *a1++;
    v5 = v4 == a3;
    v6 = v4 == a3 || v3 == 0;
    v3 -= 4;
  }

  while (!v6);
  return v5;
}

unsigned int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::Symbol::Tag *,false>(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v58 = v9 + 1;
      v59 = v9[1];
      v60 = v9 + 2;
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= v62)
      {
        if (v61 >= v59)
        {
          goto LABEL_120;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = v9 + 1;
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = v9 + 2;
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = v9 + 2;
          result = v62;
          if (v61 >= v62)
          {
LABEL_120:
            LODWORD(v59) = v61;
            goto LABEL_121;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        LODWORD(v59) = result;
      }

LABEL_121:
      v77 = *(a2 - 1);
      if (v77 < v59)
      {
        *v60 = v77;
        *(a2 - 1) = v59;
        v78 = *v60;
        v79 = *v58;
        if (v78 < v79)
        {
          v9[1] = v78;
          v9[2] = v79;
          v80 = *v9;
          if (v78 < *v9)
          {
            *v9 = v78;
            v9[1] = v80;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v50 = v9 + 2;
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= v51)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          LODWORD(v51) = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = v9 + 1;
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_129;
          }

          v54 = v51;
          LODWORD(v51) = v49;
          LODWORD(v49) = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = v9 + 2;
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_129;
        }

        v52 = v9 + 1;
        v53 = v9 + 2;
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_129:
          *v52 = v49;
          *v53 = v51;
          LODWORD(v51) = result;
          LODWORD(v49) = v55;
        }
      }

      v82 = v9[3];
      if (v82 >= v49)
      {
        LODWORD(v49) = v9[3];
      }

      else
      {
        v9[2] = v82;
        v9[3] = v49;
        if (v82 < v51)
        {
          *v47 = v82;
          *v50 = v51;
          if (v82 < v54)
          {
            *v9 = v82;
            v9[1] = v54;
          }
        }
      }

      v83 = *(a2 - 1);
      if (v83 >= v49)
      {
        return result;
      }

      v9[3] = v83;
      *(a2 - 1) = v49;
      v84 = v9[2];
      v74 = v9[3];
      if (v74 >= v84)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v84;
      v85 = v9[1];
      if (v74 >= v85)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v85;
LABEL_141:
      v86 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 4) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 4);
                v72 -= 4;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 4);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 4;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v76 = *v8;
          v75 = v8[1];
          v8 = v65;
          if (v75 < v76)
          {
            do
            {
              *v65 = v76;
              v76 = *(v65 - 2);
              --v65;
            }

            while (v75 < v76);
            *v65 = v75;
          }

          v65 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::Symbol::Tag *,RB::Symbol::Tag *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = v13 - 1;
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = v13 + 1;
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Tag *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Tag *,std::__less<void,void> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::Symbol::Tag *>(v9, v41);
    v9 = v41 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::Symbol::Tag *>(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::Symbol::Tag *,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v81 = *(a2 - 1);
    if (v81 >= v44)
    {
      return result;
    }

    v9[1] = v81;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

double RB::BoundsAccumulator::reset(RB::BoundsAccumulator *this)
{
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

int *RB::BoundsAccumulator::add(int *this, const Bounds *a2)
{
  v2 = *(a2 + 8);
  v3 = vclez_s32(v2);
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) != 0)
  {
    return this;
  }

  v4 = vmul_lane_s32(v2, v2, 1).u32[0];
  v5 = *this;
  v6 = this[1];
  v7 = this + 2;
  v8 = this + 18;
  v9 = 0xFFFFFFFFLL;
  v10 = v6;
  do
  {
    if (v10 == v5)
    {
      goto LABEL_40;
    }

    v11 = v5 + (((v10 - 1) * v10) >> 1);
    if (v10 < v5)
    {
      v11 = v10 + (((v5 - 1) * v5) >> 1);
    }

    v12 = &v7[4 * v10];
    v13 = *v12;
    v14 = v12[1];
    v15 = v14 - *v12;
    v16 = v10;
    if (v15 < 1)
    {
      goto LABEL_21;
    }

    v17 = HIDWORD(*a2);
    v18 = vadd_s32(*(a2 + 8), *a2);
    v19 = *a2;
    v21 = v12[2];
    v20 = v12[3];
    if (v13 >= v19)
    {
      v22 = *a2;
    }

    else
    {
      v22 = v13;
    }

    if (v14 <= v18.i32[0])
    {
      v23 = v18.i32[0];
    }

    else
    {
      v23 = v14;
    }

    v24 = v23 - v22;
    if (v21 >= v17)
    {
      v25 = HIDWORD(*a2);
    }

    else
    {
      v25 = v21;
    }

    if (v20 <= v18.i32[1])
    {
      v26 = v18.i32[1];
    }

    else
    {
      v26 = v20;
    }

    v27 = (v26 - v25) * v24 - (v4 + (v20 - v21) * v15);
    if (!v27)
    {
      v16 = v9;
LABEL_21:
      v8[v11] = 0;
      v9 = v16;
      goto LABEL_40;
    }

    if (v20 >= v18.i32[1])
    {
      v20 = v18.i32[1];
    }

    if (v21 > v17)
    {
      v17 = v21;
    }

    v28 = v20 - v17;
    if (v14 >= v18.i32[0])
    {
      v14 = v18.i32[0];
    }

    if (v13 <= v19)
    {
      v13 = *a2;
    }

    v29 = v14 - v13;
    v30 = v28 * v29;
    if (v28 <= 0 || v29 <= 0)
    {
      v32 = 0;
    }

    else
    {
      v32 = v28 * v29;
    }

    v33 = v32 + v27;
    v8[v11] = v33;
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = v30 == v4;
    }

    if (v34)
    {
      this[1] = v10;
      return this;
    }

LABEL_40:
    if (v10 == 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = (v10 + 1);
    }
  }

  while (v10 != v6);
  if (v9 >= 1)
  {
    v35 = &v7[4 * v5];
    *v35 = *a2;
    v35[1] = *(a2 + 1) + *a2;
    v36 = *(a2 + 1);
    v35[2] = v36;
    v35[3] = *(a2 + 3) + v36;
    *this = v9;
    this[1] = v5;
    return this;
  }

  v37 = v5 == 0;
  v38 = 0x40000000;
  v39 = 1;
  v40 = v5;
  do
  {
    v41 = 0;
    do
    {
      if (this[(((v39 - 1) * v39) >> 1) + 18 + v41] < v38)
      {
        v38 = this[(((v39 - 1) * v39) >> 1) + 18 + v41];
        v37 = v41;
        v40 = v39;
      }

      ++v41;
    }

    while (v39 != v41);
    ++v39;
  }

  while (v39 != 4);
  v42 = HIDWORD(*a2);
  v43 = vadd_s32(*(a2 + 8), *a2);
  v44 = *a2;
  v45 = v43.i32[1];
  v46 = v43.i32[0];
  if (v37 == v5)
  {
    v37 = v40;
    goto LABEL_55;
  }

  if (v40 == v5)
  {
LABEL_55:
    v40 = v5;
  }

  else
  {
    v47 = &v7[4 * v5];
    *v47 = v44;
    v47[1] = v43.i32[0];
    v47[2] = v42;
    v47[3] = v43.i32[1];
    v48 = &v7[4 * v40];
    v44 = *v48;
    v46 = v48[1];
    v42 = v48[2];
    v45 = v48[3];
    *v48 = 0;
    *(v48 + 1) = 0;
  }

  v49 = &v7[4 * v37];
  *this = v40;
  v50 = *v49;
  v51 = v49[1];
  if (*v49 > v44)
  {
    *v49 = v44;
    v50 = v44;
  }

  v52 = v49[2];
  if (v51 < v46)
  {
    v49[1] = v46;
    v51 = v46;
  }

  v53 = v49[3];
  if (v52 > v42)
  {
    v49[2] = v42;
    v52 = v42;
  }

  this[1] = v37;
  if (v53 < v45)
  {
    v49[3] = v45;
    v53 = v45;
  }

  v54 = 0;
  this += 5;
  do
  {
    if (v37 != v54)
    {
      v55 = v37 + (((v54 - 1) * v54) >> 1);
      if (v54 < v37)
      {
        v55 = (((v37 - 1) * v37) >> 1) + v54;
      }

      v56 = *(this - 3);
      v57 = *(this - 2);
      if (v57 - v56 < 1)
      {
        v71 = 0;
      }

      else
      {
        v58 = *(this - 1);
        v59 = *this;
        if (v56 >= v50)
        {
          v60 = v50;
        }

        else
        {
          v60 = *(this - 3);
        }

        if (v57 <= v51)
        {
          v61 = v51;
        }

        else
        {
          v61 = *(this - 2);
        }

        v62 = v61 - v60;
        if (v58 >= v52)
        {
          v63 = v52;
        }

        else
        {
          v63 = *(this - 1);
        }

        if (v59 <= v53)
        {
          v64 = v53;
        }

        else
        {
          v64 = *this;
        }

        v65 = (v53 - v52) * (v51 - v50) + (v59 - v58) * (v57 - v56);
        v66 = (v64 - v63) * v62;
        if (v59 >= v53)
        {
          v59 = v53;
        }

        if (v58 <= v52)
        {
          v58 = v52;
        }

        v67 = v59 - v58;
        if (v57 >= v51)
        {
          v57 = v51;
        }

        if (v56 <= v50)
        {
          v56 = v50;
        }

        v68 = v57 - v56;
        if (v67 <= 0 || v68 <= 0)
        {
          v70 = 0;
        }

        else
        {
          v70 = v67 * v68;
        }

        v71 = v66 - v65 + v70;
        if (v66 == v65)
        {
          v71 = 0;
        }
      }

      v8[v55] = v71;
    }

    ++v54;
    this += 4;
  }

  while (v54 != 4);
  return this;
}

void *RB::details::realloc_vector<unsigned int,16ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(16 * a3);
    v6 = v5 >> 4;
    if (*a2 != (v5 >> 4))
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void *RB::vector<RBColor,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,16ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

uint64_t RB::RenderTask::move_children(uint64_t result, uint64_t a2)
{
  while (1)
  {
    v2 = *(a2 + 48);
    if (!v2)
    {
      break;
    }

    v3 = v2[1];
    *(a2 + 48) = *v2;
    if (*(v3 + 40) == a2)
    {
      *(v3 + 40) = result;
    }

    *v2 = *(result + 48);
    *(result + 48) = v2;
  }

  return result;
}

RB::TextureCache *RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_5::__invoke<RB::TextureCache *>(RB::TextureCache *result)
{
  if (result)
  {
    RB::TextureCache::~TextureCache(result);

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::TextureCache::~TextureCache(RB::TextureCache *this)
{
  v2 = this + 80;
  v3 = *(this + 11);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (*(this + 24))
  {
    v5 = 0;
    do
    {
      v6 = *&v4[8 * v5];
      if (v6)
      {
        v7 = v6[2] - 1;
        v6[2] = v7;
        if (!v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      ++v5;
    }

    while (v5 < *(this + 24));
    v3 = *(this + 11);
  }

  if (v3)
  {
    free(v3);
  }

  v8 = this + 48;
  v9 = *(this + 8);
  if (v9)
  {
    v8 = *(this + 8);
  }

  if (*(this + 18))
  {
    v10 = 0;
    v11 = (v8 + 8);
    do
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = v12[2] - 1;
        v12[2] = v13;
        if (!v13)
        {
          (*(*v12 + 8))(v12);
        }
      }

      ++v10;
      v11 += 2;
    }

    while (v10 < *(this + 18));
    v9 = *(this + 8);
  }

  if (v9)
  {
    free(v9);
  }

  v14 = *(this + 5);
  if (v14)
  {
    CFRelease(v14);
  }

  objc_destroyWeak(this + 2);
}

uint64_t RB::Buffer::alloc(id *this, RB::Device *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ([this[3] newBufferWithLength:a2 options:0])
  {
    v3 = RB::verbose_mode(0x100);
    if (v3)
    {
      v4 = RB::misc_log(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6[0] = 67109120;
        v6[1] = (a2 + 512) >> 10;
        _os_log_impl(&dword_195CE8000, v4, OS_LOG_TYPE_INFO, "allocated %d KB buffer", v6, 8u);
      }
    }

    operator new();
  }

  return 0;
}

void *RB::details::realloc_vector<unsigned long,56ul>(void *__src, void *__dst, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 56 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(56 * a5);
    v9 = v8 / 0x38;
    if (v8 / 0x38 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 56 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<RB::SharedSurfaceGroup::allocate_updates(void)::Added,4ul,unsigned long>::reserve_slow(void *__dst, unint64_t a2)
{
  if (*(__dst + 30) + (*(__dst + 30) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 30) + (*(__dst + 30) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,56ul>(*(__dst + 28), __dst, 4uLL, __dst + 30, v3);
  *(__dst + 28) = result;
  return result;
}

BOOL RB::BaseRenderParams::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10))
  {
    return 0;
  }

  if (((*(a2 + 11) ^ *(a1 + 11)) & 0x1F) != 0)
  {
    return 0;
  }

  return ((*(a2 + 11) ^ *(a1 + 11)) & 0x20) == 0;
}

void *RB::details::realloc_vector<unsigned int,48ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 48 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(48 * a5);
    v9 = v8 / 0x30;
    if (*a4 != (v8 / 0x30))
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 48 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<RB::DisplayList::RenderState::DetachedInfo::Element,4ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 51) + (*(__dst + 51) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 51) + (*(__dst + 51) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,48ul>(*(__dst + 24), __dst, 4u, __dst + 51, v3);
  *(__dst + 24) = result;
  return result;
}

void RB::Device::RenderPipelineEntry::Loader::pipeline(RB::Device::RenderPipelineEntry::Loader *this, void *a2)
{
  v3 = *(this + 10);
  if (v3 != a2)
  {

    *(this + 10) = a2;
  }

  RB::Device::RenderPipelineEntry::Loader::finished(this);
}

void RB::Device::RenderPipelineEntry::Loader::finished(RB::Device::RenderPipelineEntry::Loader *this)
{
  v26 = *MEMORY[0x1E69E9840];
  *(this + 28) = 3;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(*(this + 11)))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_195CE8000, v2, OS_SIGNPOST_INTERVAL_END, v3, "BuildPipelineAsync", &unk_195E56109, buf, 2u);
    }
  }

  v4 = RB::verbose_mode(2);
  if (v4)
  {
    v5 = RB::current_time_seconds(v4) - *(this + 13);
    v6 = *(this + 10);
    v8 = RB::misc_log(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (!v9)
      {
        goto LABEL_6;
      }

      v10 = RB::RenderState::name((this + 16));
      v11 = *(this + 6);
      v17 = *(this + 2);
      v18 = v11;
      RB::FormattedRenderState::ID::formatted(&v17, v12, v19);
      *buf = 136315650;
      v21 = v10;
      v22 = 2080;
      v23 = v19;
      v24 = 2048;
      v25 = v5 * 1000.0;
      v13 = "finished building render pipeline %s-%s (%.2f ms)";
    }

    else
    {
      if (!v9)
      {
        goto LABEL_6;
      }

      v14 = RB::RenderState::name((this + 16));
      v15 = *(this + 6);
      v17 = *(this + 2);
      v18 = v15;
      RB::FormattedRenderState::ID::formatted(&v17, v16, v19);
      *buf = 136315650;
      v21 = v14;
      v22 = 2080;
      v23 = v19;
      v24 = 2048;
      v25 = v5 * 1000.0;
      v13 = "failed building render pipeline %s-%s (%.2f ms)";
    }

    _os_log_impl(&dword_195CE8000, v8, OS_LOG_TYPE_INFO, v13, buf, 0x20u);
  }

LABEL_6:
  dispatch_async_f(*(*(this + 1) + 40), this, RB::Device::RenderPipelineEntry::Loader::finished(void)::$_0::__invoke);
}

void RB::Device::install_render_pipeline_state(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v12 = a2;
  v13 = a3;
  v6 = RB::UntypedTable::lookup((a1 + 472), &v12, 0);
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16) == a4)
    {
      v8 = *(v6 + 24);
      *(v6 + 24) = a4[10];
      a4[10] = v8;
      *(v6 + 40) = *(a1 + 252);
      *(v6 + 44) = (RB::current_time_seconds(v6) * 60.0 + 0.5);
      *(v7 + 16) = 0;
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_async_f(global_queue, a4, RB::Device::install_render_pipeline_state(RB::FormattedRenderState,void *)::$_0::__invoke);
      v11 = RB::Device::RenderPipelineEntry::Queue::shared(v10);
      RB::Device::RenderPipelineEntry::Queue::retire_and_load_next(v11);
    }
  }
}

void RB::Device::RenderPipelineEntry::Queue::retire_and_load_next(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  --this[1]._os_unfair_lock_opaque;
  RB::Device::RenderPipelineEntry::Queue::load_next_locked(this);

  os_unfair_lock_unlock(this);
}

id *RB::Device::install_render_pipeline_state(RB::FormattedRenderState,void *)::$_0::__invoke(id *result)
{
  if (result)
  {
    RB::Device::RenderPipelineEntry::Loader::~Loader(result);

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

uint64_t RB::BinPacker::add(uint64_t this, int a2, int a3, void *a4, uint64_t a5)
{
  v5 = a2 * a3;
  if (v5 == v5)
  {
    v10 = this;
    if (*(this + 1096))
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v11 = *(this + 1080);
      if (v11)
      {
        LOBYTE(v11) = *(v11 + 8) != a5;
      }
    }

    *(this + 1096) = v11;
    v12 = *(this + 24);
    this = (*(this + 16) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (this + 32 > v12)
    {
      this = RB::Heap::alloc_slow(v10, 0x20uLL, 7);
    }

    else
    {
      *(v10 + 16) = this + 32;
    }

    *this = a2;
    *(this + 4) = a3;
    *(this + 8) = a5;
    *(this + 16) = a4;
    *(this + 24) = *(v10 + 1080);
    *(v10 + 1080) = this;
    v13 = *(v10 + 1072);
    v14 = __OFADD__(v13, v5);
    v15 = v13 + v5;
    if (v14)
    {
      v15 = 0x7FFFFFFF;
    }

    *(v10 + 1072) = v15;
  }

  return this;
}

void RB::DisplayList::RenderState::PackedTexture::render(RB::DisplayList::RenderState::PackedTexture *this, void *a2, unsigned int a3)
{
  v3 = *(this + 3);
  if (v3)
  {
    LOBYTE(v7) = 0;
    do
    {
      v8 = *(v3 + 80);
      if (v8 < a3)
      {
        break;
      }

      RB::RenderTaskTexture::render_dependencies(this, a2, *(v3 + 80));
      v10 = *(this + 4);
      if (!*(this + 2))
      {
        v9.n128_u64[0] = *(this + 6);
        RB::RenderFrame::alloc_texture(*(*(a2 + 134) + 16), *(this + 4), 1u, *(this + 40), 1, 0, v17, v9);
        v11 = *(this + 2);
        v12 = v17[0];
        *(this + 2) = v17[0];
        v17[0] = v11;
        if (v11)
        {
          v13 = v11[2] - 1;
          v11[2] = v13;
          if (!v13)
          {
            (*(*v11 + 8))(v11);
            v12 = *(this + 16);
          }
        }

        if (!*&v12)
        {
          return;
        }

        v10 = *(this + 4);
        if (v10 == 25)
        {
          *(*&v12 + 77) |= 8u;
          v10 = *(this + 4);
        }
      }

      RB::RenderParams::RenderParams(v18, *(*(a2 + 134) + 16), v10, *(this + 40), *(*(a2 + 134) + 10), *(*(a2 + 134) + 8), *(*(a2 + 134) + 11) & 1, *(this + 6));
      v14 = *(this + 2);
      v19 = v19 & 0xF7 | (8 * ((*(v14 + 77) & 8) != 0));
      v19 = *(*(a2 + 134) + 11) & 0x20 | v19 & 0xDF;
      v15.n128_f64[0] = RB::RenderPass::RenderPass(v17, v18, v14, 0, 1, 1, 0);
      v16 = *(this + 3);
      if (v16)
      {
        v7 = 5;
        do
        {
          if (*(v16 + 80) < v8)
          {
            break;
          }

          v7 |= (*(v16 + 224) >> 1) & 8 | (*(v16 + 224) >> 2) & 2;
          v16 = *(v16 + 72);
        }

        while (v16);
      }

      else
      {
        v7 = (v7 & 0xF0);
      }

      if (RB::RenderPass::set_extra_attachments(v17, v7, v15))
      {
        RB::RenderTaskTexture::render_tasks(this, v17, a2, v8);
      }

      RB::RenderPass::~RenderPass(v17);
      v3 = *(this + 3);
    }

    while (v3);
  }
}

void RB::BinPacker::pack(RB::Heap *this, uint64_t a2)
{
  v21 = a2;
  if (a2)
  {
    v2 = a2;
    v4 = *(this + 266) >> 1;
    v5 = *(this + 267);
    v6 = &v21;
    do
    {
      while (*v2 <= v4)
      {
        v6 = (v2 + 24);
        v2 = *(v2 + 24);
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      if ((*(v2 + 4) + v5) > *(this + 267))
      {
        RB::BinPacker::append_bin(this, *(v2 + 8));
        v5 = 0;
      }

      RB::BinPacker::append_packed(this, v2, 0, v5);
      v5 += *(v2 + 4);
      v2 = *(v2 + 24);
      *v6 = v2;
    }

    while (v2);
LABEL_9:
    if (v21)
    {
      v7 = 0;
      v8 = v21;
      do
      {
        ++v7;
        v8 = *(v8 + 24);
      }

      while (v8);
      v10 = v9;
      v11 = *(v9 + 4);
      if ((v11 + v5) > *(this + 267))
      {
        RB::BinPacker::append_bin(this, *(v9 + 8));
        v5 = 0;
        v11 = *(v10 + 4);
      }

      v12 = 0;
      v13 = 0;
      v14 = v11 + v5;
      while (1)
      {
        v15 = *v10 + v12;
        if (v15 > *(this + 266))
        {
          break;
        }

        if (!v13 && v15 > v4)
        {
          v13 = *(v10 + 4) + v5;
        }

        RB::BinPacker::append_packed(this, v10, v12, v5);
        v12 += *v10;
        v10 = *(v10 + 24);
        if (!v10)
        {
          return;
        }
      }

      while (1)
      {
        v16 = v13 >= v14 ? v14 : v13;
        v17 = *(v10 + 4);
        if (v17 + v16 > *(this + 267))
        {
          break;
        }

        if (v14 <= v13)
        {
          goto LABEL_28;
        }

        v18 = (v17 + v13);
        v19 = v4;
LABEL_29:
        v20 = 0;
        while (*v10 + v20 <= v4)
        {
          RB::BinPacker::append_packed(this, v10, v20 + v19, v13);
          v20 += *v10;
          v10 = *(v10 + 24);
          if (!v10)
          {
            return;
          }
        }

        v13 = v18;
      }

      RB::BinPacker::append_bin(this, *(v10 + 8));
      v13 = 0;
      v14 = 0;
      v17 = *(v10 + 4);
LABEL_28:
      v19 = 0;
      v18 = v13;
      LODWORD(v13) = v14;
      v14 += v17;
      goto LABEL_29;
    }
  }
}

uint64_t RB::anonymous namespace::list_sort_1<RB::BinPacker::item,&RB::BinPacker::item::_next>(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t, uint64_t))
{
  v3 = a1;
  if (a2 >= 2)
  {
    v6 = a2 >> 1;
    v7 = a1;
    v8 = (a2 >> 1) - 1;
    if (a2 >> 1 != 1)
    {
      v7 = a1;
      do
      {
        v7 = *(v7 + 24);
        --v8;
      }

      while (v8);
    }

    v9 = *(v7 + 24);
    *(v7 + 24) = 0;
    if (a3(v3, v10))
    {
      v11 = *(v3 + 24);
      v12 = v10;
    }

    else
    {
      v12 = *(v10 + 24);
      v11 = v3;
      v3 = v10;
    }

    v13 = v12 != 0;
    v14 = v3;
    if (v12)
    {
      v15 = v11 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      do
      {
        if (a3(v11, v12))
        {
          *(v14 + 24) = v11;
          v16 = *(v11 + 24);
          v17 = v12;
          v14 = v11;
          v11 = v16;
        }

        else
        {
          *(v14 + 24) = v12;
          v17 = *(v12 + 24);
          v16 = v11;
          v14 = v12;
          v12 = v17;
        }

        v13 = v17 != 0;
        if (v17)
        {
          v18 = v16 == 0;
        }

        else
        {
          v18 = 1;
        }
      }

      while (!v18);
      v12 = v17;
      v11 = v16;
    }

    if (v13)
    {
      v19 = v12;
    }

    else
    {
      v19 = v11;
    }

    *(v14 + 24) = v19;
  }

  return v3;
}

void RB::RenderFrame::flush_pass(id *this, RB::RenderPass *a2, int a3)
{
  v6 = (a2 + 152);
  if (*(a2 + 19))
  {
    goto LABEL_4;
  }

  if (*(a2 + 129) == 2)
  {
    RB::RenderFrame::acquire_queue(this, a2 + 19);
LABEL_4:
    RB::RenderFrame::will_render(this);
    v7 = *v6;
    *v6 = 0;
    if ((a3 & 1) == 0 && *v7 >= 0x400u)
    {
      *(this + 23) |= 2u;
    }

    RB::RenderFrame::EncoderData::EncoderData((v7 + 8120), this, a2, a3);
    *(a2 + 129) = 1;
    *(a2 + 131) = 0;
    if (a3)
    {
      for (i = 0; i != 2; ++i)
      {
        v9 = qword_195E47650[i];
        if ((BYTE4(v9) & *(a2 + 160)) == 0 && *(a2 + 3 * v9 + 1))
        {
          [objc_msgSend(objc_msgSend(*(a2 + 18) "colorAttachments")];
        }
      }

      if ((*(v7 + 8217) & 0x400) != 0 && (*(a2 + 160) & 1) == 0)
      {
        [objc_msgSend(*(a2 + 18) "stencilAttachment")];
        *(v7 + 8217) &= ~0x400u;
      }
    }

    else
    {
      *(a2 + 80) = 16191;
    }

    v10 = *(*this + 5);
    if ((*(this + 92) & 2) != 0)
    {
      dispatch_async_f(v10, v7, RB::RenderFrame::flush_pass(RB::RenderPass &,BOOL)::$_1::__invoke);
    }

    else
    {
      dispatch_sync_f(v10, v7, RB::RenderFrame::flush_pass(RB::RenderPass &,BOOL)::$_1::__invoke);
    }

    *(a2 + 136) = a3 ^ 1;
    if (((a3 ^ 1) & 1) == 0)
    {
      this[4] = this[4] + 1;
    }

    return;
  }

  if (a3 && *(a2 + 136) == 1)
  {
    if ((*(this + 92) & 2) != 0)
    {
      dispatch_async_f(*(*this + 5), this, RB::RenderFrame::flush_pass(RB::RenderPass &,BOOL)::$_0::__invoke);
    }

    else
    {
      v11 = this[47];
      if (v11)
      {
        [v11 endEncoding];

        this[47] = 0;
      }
    }

    *(a2 + 136) = 0;
  }
}

RB::RenderFrame::EncoderData *RB::RenderFrame::EncoderData::EncoderData(RB::RenderFrame::EncoderData *this, atomic_ullong *a2, id *a3, int a4)
{
  *this = a2;
  *(this + 1) = a3[18];
  *(this + 2) = a3[33];
  explicit = atomic_load_explicit(a2 + 15, memory_order_acquire);
  *(this + 3) = explicit;
  *(this + 4) = atomic_load_explicit((explicit + 8), memory_order_acquire);
  v10 = atomic_load_explicit(a2 + 14, memory_order_acquire);
  *(this + 5) = v10;
  *(this + 6) = atomic_load_explicit((v10 + 8), memory_order_acquire);
  v11 = atomic_load_explicit(a2 + 16, memory_order_acquire);
  *(this + 7) = v11;
  *(this + 8) = atomic_load_explicit((v11 + 8), memory_order_acquire);
  if (*(a3 + 33) == 2)
  {
    v12 = 131110;
  }

  else
  {
    v12 = 38;
  }

  v13 = a3[2];
  v14 = *(a3 + 186);
  v15 = *(*a3 + 11);
  *(this + 9) = v12;
  *(this + 20) = *(this + 20) & 0xFFFFFC00 | v13 & 0x3FF;
  if (v13 >= 0x400)
  {
    RB::precondition_failure("invalid pixel format", v8);
  }

  *(this + 20) = ((v15 & 8) << 16) | ((v14 & 3) << 10) | v13;
  *(this + 11) = a3[13];
  *(this + 96) = *(a3 + 128);
  v16 = *(a3 + 130) | (*(this + 98) << 8);
  *(this + 97) = v16;
  *(this + 97) = v16 & 0xFEFF | ((*(a3 + 129) == 2) << 8);
  if (RB::depth_stencil_format_has_depth(*(a3 + 186)))
  {
    v17 = 512;
  }

  else
  {
    v17 = 0;
  }

  *(this + 97) = *(this + 97) & 0xFDFF | v17;
  if (RB::depth_stencil_format_has_stencil(*(a3 + 186)))
  {
    v18 = 1024;
  }

  else
  {
    v18 = 0;
  }

  if (a4)
  {
    v19 = 2048;
  }

  else
  {
    v19 = 0;
  }

  *(this + 97) = v18 | v19 | *(this + 97) & 0xF3FF;
  *(this + 99) = *(a3 + 131);
  v20 = *(this + 20) & 0xFFFFEFFF | ((a3[4] != 0) << 12);
  *(this + 20) = v20;
  v21 = v20 & 0xFFFF9FFF | ((a3[7] != 0) << 13) | 0x4000;
  *(this + 20) = v21;
  *(this + 20) = v21 & 0xFFFBFFFF | ((*(a3 + 128) < 0x10u) << 18);
  return this;
}

void RB::Device::alloc_shared_buffer(RB::Device *this@<X0>, void ***a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  v5 = *(this + 64);
  for (i = (this + 352); *(this + 46); std::__list_imp<RB::refcounted_ptr<RB::Texture>>::__delete_node[abi:nn200100](i, v11))
  {
    v7 = *(this + 45);
    v8 = *(v7 + 16);
    if (*(v8 + 8) > v5)
    {
      break;
    }

    if (v4 != v8)
    {
      if (!v4 || (v9 = *(v4 + 2) - 1, (*(v4 + 2) = v9) != 0) || ((*(*v4 + 1))(v4), (v8 = *(v7 + 16)) != 0))
      {
        ++*(v8 + 2);
      }

      *a2 = v8;
      v4 = v8;
    }

    v10 = RB::Resource::set_volatile(v4, 0);
    v11 = *(this + 45);
    v12 = v11[1];
    if (v10 != 2)
    {
      if (v11 != v12)
      {
        v16 = *v12;
        v17 = *(v16 + 8);
        v18 = *v11;
        *(v18 + 8) = v17;
        *v17 = v18;
        v19 = *i;
        *(v19 + 8) = v11;
        *v11 = v19;
        *i = v16;
        *(v16 + 8) = i;
      }

      RB::Resource::set_frame_id(v4, 0, 0);
      return;
    }

    v13 = *v11;
    *(v13 + 8) = v12;
    *v12 = v13;
    --*(this + 46);
  }

  v14 = RB::Buffer::alloc(this, *(this + 40));
  *a2 = v14;
  if (v4 && (v15 = *(v4 + 2) - 1, (*(v4 + 2) = v15) == 0))
  {
    (*(*v4 + 1))(v4);
    v14 = *a2;
    if (*a2)
    {
LABEL_15:
      RB::Resource::set_label(v14[2], "shared-buffer", &RB::Device::alloc_shared_buffer(void)::counter);
      std::list<RB::refcounted_ptr<RB::Buffer>>::push_back();
    }
  }

  else if (v14)
  {
    goto LABEL_15;
  }

  v20 = RB::error_log(v14);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    RB::Device::alloc_shared_buffer();
  }
}

void sub_195D065F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = v3[2] - 1;
    v3[2] = v4;
    if (!v4)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__list_imp<RB::refcounted_ptr<RB::Texture>>::__delete_node[abi:nn200100](int a1, void *__p)
{
  v3 = __p[2];
  if (v3)
  {
    v4 = v3[2] - 1;
    v3[2] = v4;
    if (!v4)
    {
      (*(*v3 + 8))(v3);
    }
  }

  operator delete(__p);
}

void RB::RenderFrame::acquire_queue(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    os_unfair_lock_lock((a1 + 320));
    v5 = *(a1 + 368);
    if (v5)
    {
      v6 = a1 + 328;
      v7 = *(a1 + 360);
      if (!v7)
      {
        v7 = a1 + 328;
      }

      v8 = v5 - 1;
      v9 = *(v7 + 8 * v8);
      *(v7 + 8 * v8) = *a2;
      *a2 = v9;
      *(a1 + 368) = v8;
      if (*(a1 + 360))
      {
        v6 = *(a1 + 360);
      }

      v10 = *(v6 + 8 * v8);
      *(v6 + 8 * v8) = 0;
      if (v10)
      {
        RB::RenderFrame::QueueDeleter::operator()(v4, v10);
      }

      os_unfair_lock_unlock((a1 + 320));
    }

    else
    {
      os_unfair_lock_unlock((a1 + 320));
      v11 = malloc_type_malloc(0x2020uLL, 0x10B0040036B6384uLL);
      *v11 = 0;
      *(v11 + 1) = 0;
      v12 = RB::Heap::Heap((v11 + 16), v11 + 56, 8064, 0);
      v13 = *a2;
      *a2 = v11;
      if (v13)
      {

        RB::RenderFrame::QueueDeleter::operator()(v12, v13);
      }
    }
  }
}

uint64_t RB::depth_stencil_pixel_format(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_195E44330[a1 - 1];
  }
}

uint64_t RB::render_primitive(uint64_t a1, _OWORD *a2, float32x4_t *a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v7 = a7;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v33 = 0;
  v34 = 0;
  result = RB::Coverage::Primitive::set_globals(a3, a4, a1, a2, a7, &v36, v35, &v33);
  if (result)
  {
    if (v36 != 1)
    {
      goto LABEL_14;
    }

    v14 = v7 == 2 || v7 == 24;
    if ((*&v14 & ((*(a4 + 164) & 0x1000u) >> 12)) != 0)
    {
      v7 = 0;
    }

    if ((a6 & 1) != 0 || v7 > 0x18 || (LOBYTE(v29) = *(a1 + 128), v15 = RB::ColorSpace::transfer_type(&v29), v16 = *(a4 + 164), (v16 & 0x387) != 0))
    {
LABEL_14:
      v17 = 0;
      v18 = 7;
    }

    else
    {
      v17 = 0;
      v28 = v16 >> 4;
      v18 = 7;
      if (v28 == v15 && v28 != 2)
      {
        if ((v16 & 0x1000) != 0 && (v7 == 24 || v7 == 2))
        {
          LOBYTE(v7) = 0;
        }

        v18 = 3;
        v17 = 1;
      }
    }

    v32 = v36 & 0xF;
    RB::Coverage::Primitive::set_coverage_state(a3, &v32);
    if (*(a1 + 132) == 2)
    {
      v19 = 0x20000;
    }

    else
    {
      v19 = 2;
    }

    if (a6)
    {
      v20 = 0x10000;
    }

    else
    {
      v20 = 0;
    }

    LODWORD(v31) = (v19 | v18 | v20) & 0xFFFF003F | ((v32 & 0x3FF) << 6);
    HIDWORD(v31) = v7 & 0x3F;
    RB::RenderState::set_image(&v31, a4 + 84, *(a1 + 128));
    if (v17)
    {
      RB::Coverage::set_plane(&v29, a4);
      v22 = *(a4 + 100);
      *&v30[12] = *(a4 + 84);
      *&v30[28] = v22;
      RB::RenderFrame::alloc_buffer_region(*(*a1 + 16), 0x3C, 4uLL, 0, &v37);
      v23 = v37;
      if (v37)
      {
        v24 = (*(v37 + 7) + v38.i64[0]);
        v25 = v29;
        v26 = *v30;
        v27 = *&v30[16];
        *(v24 + 44) = *&v30[28];
        v24[1] = v26;
        v24[2] = v27;
        *v24 = v25;
      }

      else
      {
        v37 = 0;
        v38 = 0uLL;
      }

      *(a1 + 192) = RB::RenderFrame::buffer_id(*(*a1 + 16), v23);
      *(a1 + 196) = vmovn_s64(v38);
    }

    else
    {
      RB::Fill::set_image_globals(a1, a4, 0xF4, 4uLL, &v31, v21);
    }

    result = RB::RenderPass::draw_indexed_primitives(a1, v31, 4, v35, 0, 1uLL, v33, v34);
    if (*(&v35[1] + 1))
    {
      v32 = v32 & 0xFFFFFFF0 | 1;
      LODWORD(v31) = (v32 << 6) & 0xFFC0 | v31 & 0xFFFF003F;
      if ((*(a4 + 165) & 0x10) != 0 && ((BYTE4(v31) & 0x3F) == 0x18 || (BYTE4(v31) & 0x3F) == 2))
      {
        HIDWORD(v31) &= 0xFFFFFFC0;
      }

      result = RB::RenderPass::draw_indexed_primitives(a1, v31, 4, &v35[1] + 8, 0, 1uLL, v33, v34);
    }

    *(a1 + 208) = 0;
    *(a1 + 204) = 0;
  }

  return result;
}

float RB::Coverage::set_plane(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 68);
  *(a1 + 24) = result;
  return result;
}

uint64_t RB::Filter::anonymous namespace::BlurRenderer::render(uint64_t a1, int32x2_t a2, int32x2_t a3, uint64_t a4, uint64_t a5, char a6, RB::Texture *a7)
{
  v13 = *(a1 + 28);
  if (v13 > 2 || *(a1 + 64) == 1)
  {
    RB::Coverage::set_plane(&v95, a5, a2);
    v14 = *(a1 + 28);
    if (v14 < 7)
    {
      if (v14 < 3)
      {
        __asm { FMOV            V0.2S, #1.0 }

        v24 = 251658240;
        _D12 = _D0;
        goto LABEL_17;
      }

      if ((*(a1 + 9) & 1) == 0)
      {
        __asm { FMOV            V2.2S, #0.25 }

        *(a1 + 16) = vmla_f32(vdup_n_s32(0xBF440000), _D2, *(a1 + 16));
        _D12 = 0x3F0000003F000000;
        _D0 = 0x4000000040000000;
        v24 = 251658240;
        goto LABEL_17;
      }
    }

    else if ((*(a1 + 9) & 1) == 0)
    {
      __asm { FMOV            V0.2S, #-1.0 }

      *&v96[44] = -_D0;
      __asm { FMOV            V1.2S, #1.0 }

      *&v96[52] = _D1;
      *&v96[60] = _D0;
      *&v96[68] = -_D1;
      __asm { FMOV            V0.4S, #0.25 }

      *&v98[12] = _Q0;
      *(a1 + 16) = vmla_f32(vdup_n_s32(0xBEF20000), vdup_n_s32(0x3D800000u), *(a1 + 16));
      __asm
      {
        FMOV            V12.2S, #0.25
        FMOV            V0.2S, #4.0
      }

      v24 = 251920384;
      goto LABEL_17;
    }

    v25 = *(a1 + 65);
    if (v25)
    {
      _D12 = 0x3F8000003F000000;
      _D0 = 0x3F80000040000000;
      v26 = 1086026033;
      v27 = 1081725962;
      v28 = 1073333521;
    }

    else
    {
      __asm { FMOV            V1.2S, #0.25 }

      *(a1 + 16) = vmla_f32(vdup_n_s32(0xC023D70B), _D1, *(a1 + 16));
      _D12 = 0x3F0000003F800000;
      _D0 = 0x400000003F800000;
      v26 = 0x40BB713100000000;
      v27 = 0x4079D40A00000000;
      v28 = 0x3FF9C51100000000;
    }

    *&v96[44] = 0;
    *&v96[52] = v28;
    *&v96[60] = v27;
    *&v96[68] = v26;
    *&v98[12] = xmmword_195E47720;
    *(a1 + 65) = v25 ^ 1;
    v24 = 252706816;
LABEL_17:
    v37 = vcvt_f32_s32(a3);
    v38 = vadd_f32(v37, 0x3F0000003F000000);
    v39 = vadd_f32(v37, 0xBF000000BF000000);
    v40 = vcvt_s32_f32(vrndp_f32(vmul_f32(_D12, vcvt_f32_s32(*(a1 + 32)))));
    *(a5 + 168) = *&a2;
    *(a5 + 176) = v40;
    *&v96[12] = _D0;
    *&v96[20] = vmls_f32(v37, vcvt_f32_s32(a2), _D0);
    v41 = *(a1 + 48);
    *&v96[28] = vadd_f32(v38, *(a1 + 40));
    *&v96[36] = vadd_f32(v39, v41);
    HIDWORD(v99) = 0;
    if (*(a5 + 132) == 2)
    {
      v42 = 131102;
    }

    else
    {
      v42 = 30;
    }

    RB::RenderFrame::alloc_buffer_region(*(*a5 + 16), 0xA0, 4uLL, 0, &v100);
    v43 = v100;
    if (v100)
    {
      v44 = (*(v100 + 7) + v101.i64[0]);
      v45 = v95;
      v44[1] = *v96;
      v46 = *&v96[64];
      v47 = *&v96[32];
      v48 = *&v96[16];
      v44[4] = *&v96[48];
      v44[5] = v46;
      v44[2] = v48;
      v44[3] = v47;
      v49 = v99;
      v50 = *v98;
      v51 = v97;
      v44[8] = *&v98[16];
      v44[9] = v49;
      v44[6] = v51;
      v44[7] = v50;
      *v44 = v45;
    }

    else
    {
      v100 = 0;
      v101 = 0uLL;
    }

    *(a5 + 192) = RB::RenderFrame::buffer_id(*(*a5 + 16), v43);
    *(a5 + 196) = vmovn_s64(v101);
    RB::RenderPass::set_texture(a5, 0, a7, MTLPixelFormatInvalid);
    RB::RenderPass::draw_indexed_primitives(a5, (v42 | v24), 4, **(*a5 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
    v52 = *(a1 + 48);
    v53 = vrndm_f32(vmul_f32(*(a1 + 40), _D12));
    *(a1 + 32) = v40;
    *(a1 + 40) = v53;
    v54 = vrndp_f32(vmul_f32(v52, _D12));
    v55 = vmul_f32(*(a1 + 56), _D12);
    *(a1 + 48) = v54;
    *(a1 + 56) = v55;
    if (*(a1 + 65) == 1)
    {
      v56 = vcvtps_s32_f32((fmaxf(COERCE_FLOAT(*(a1 + 16)), COERCE_FLOAT(HIDWORD(*(a1 + 16)))) / *(a1 + 24)) + -0.001);
      if (v56 >= 0x20)
      {
        v57 = 32;
      }

      else
      {
        v57 = v56;
      }

      if (v56 < 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = v57;
      }

      *(a1 + 28) = v58;
      *(a1 + 64) = a6 & 1;
    }

    goto LABEL_53;
  }

  if (v13 >= 1)
  {
    v29 = *(a1 + 32);
    *(a5 + 168) = *&a2;
    *(a5 + 176) = v29;
    RB::Coverage::set_plane(&v95, a5, v29);
    v30 = vcvt_f32_s32(a3);
    *&v96[20] = vsub_f32(v30, vcvt_f32_s32(a2));
    v31 = *(a1 + 48);
    v32 = vadd_f32(vadd_f32(v30, 0x3F0000003F000000), *(a1 + 40));
    __asm { FMOV            V10.2S, #1.0 }

    *&v96[12] = _D10;
    *&v96[28] = v32;
    *&v96[36] = vadd_f32(vadd_f32(v30, 0xBF000000BF000000), v31);
    HIDWORD(v99) = 0;
    if (*(a1 + 65) == 1)
    {
      v34 = *(a1 + 16);
    }

    else
    {
      LODWORD(v34) = *(a1 + 20);
    }

    v74 = RB::Filter::NarrowBlurKernel::get((a1 + 68), (fmaxf(*&v34, 0.0) + -0.001) / *(a1 + 28));
    v76 = 0;
    v77 = *(a1 + 65);
    v78 = v74 + 4;
    do
    {
      while (1)
      {
        v79 = (v74 + 4 * v76 + 36);
        if (!v77)
        {
          break;
        }

        LODWORD(v75) = *v79;
        *&v96[8 * v76 + 44] = v75;
        *&v98[4 * v76 + 12] = *&v78[4 * v76];
        if (++v76 == 8)
        {
          goto LABEL_43;
        }
      }

      *&v96[8 * v76 + 44] = 0;
      LODWORD(v75) = 0;
      HIDWORD(v75) = *v79;
      *&v96[8 * v76 + 44] = v75;
      *&v98[4 * v76 + 12] = *&v78[4 * v76];
      ++v76;
    }

    while (v76 != 8);
    --*(a1 + 28);
LABEL_43:
    if (*(a1 + 8) == 1)
    {
      v80 = 16 * (*(a1 + 28) == 0);
    }

    else
    {
      v80 = 0;
    }

    v81 = v80 | *(v74 + 18) & 0xF;
    if (*(a5 + 132) == 2)
    {
      v82 = 131102;
    }

    else
    {
      v82 = 30;
    }

    v83 = (v82 | (v81 << 18) | 0xF000000u);
    RB::RenderFrame::alloc_buffer_region(*(*a5 + 16), 0xA0, 4uLL, 0, &v100);
    v84 = v100;
    if (v100)
    {
      v85 = (*(v100 + 7) + v101.i64[0]);
      v86 = v95;
      v85[1] = *v96;
      v87 = *&v96[64];
      v88 = *&v96[32];
      v89 = *&v96[16];
      v85[4] = *&v96[48];
      v85[5] = v87;
      v85[2] = v89;
      v85[3] = v88;
      v90 = v99;
      v91 = *v98;
      v92 = v97;
      v85[8] = *&v98[16];
      v85[9] = v90;
      v85[6] = v92;
      v85[7] = v91;
      *v85 = v86;
    }

    else
    {
      v100 = 0;
      v101 = 0uLL;
    }

    *(a5 + 192) = RB::RenderFrame::buffer_id(*(*a5 + 16), v84);
    *(a5 + 196) = vmovn_s64(v101);
    RB::RenderPass::set_texture(a5, 0, a7, MTLPixelFormatInvalid);
    RB::RenderPass::draw_indexed_primitives(a5, v83, 4, **(*a5 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
    *(a1 + 65) ^= 1u;
    if (!*(a1 + 28))
    {
      v94 = vceq_f32(*(a1 + 56), _D10);
      result = vpmin_u32(v94, v94).u32[0] >> 31;
      goto LABEL_54;
    }

LABEL_53:
    result = 0;
LABEL_54:
    *(a5 + 240) = 0;
    *(a5 + 244) = 0;
    return result;
  }

  RB::Coverage::set_plane(&v95, a5, a2);
  v59 = vcvt_f32_s32(a3);
  v60 = vadd_f32(v59, 0x3F0000003F000000);
  v61 = vadd_f32(v59, 0xBF000000BF000000);
  v62 = vmls_f32(v59, vcvt_f32_s32(a2), *(a1 + 56));
  *&v96[12] = *(a1 + 56);
  *&v96[20] = v62;
  v63 = *(a1 + 48);
  *&v96[28] = vadd_f32(v60, *(a1 + 40));
  *&v96[36] = vadd_f32(v61, v63);
  HIDWORD(v99) = 0;
  memset(&v96[44], 0, 32);
  memset_pattern16(&v98[12], &unk_195E47730, 0x10uLL);
  if (*(a5 + 132) == 2)
  {
    v64 = 251789342;
  }

  else
  {
    v64 = 251658270;
  }

  RB::RenderFrame::alloc_buffer_region(*(*a5 + 16), 0xA0, 4uLL, 0, &v100);
  v65 = v100;
  if (v100)
  {
    v66 = (*(v100 + 7) + v101.i64[0]);
    v67 = v95;
    v66[1] = *v96;
    v68 = *&v96[64];
    v69 = *&v96[32];
    v70 = *&v96[16];
    v66[4] = *&v96[48];
    v66[5] = v68;
    v66[2] = v70;
    v66[3] = v69;
    v71 = v99;
    v72 = *v98;
    v73 = v97;
    v66[8] = *&v98[16];
    v66[9] = v71;
    v66[6] = v73;
    v66[7] = v72;
    *v66 = v67;
  }

  else
  {
    v100 = 0;
    v101 = 0uLL;
  }

  *(a5 + 192) = RB::RenderFrame::buffer_id(*(*a5 + 16), v65);
  *(a5 + 196) = vmovn_s64(v101);
  RB::RenderPass::set_texture(a5, 0, a7, MTLPixelFormatInvalid);
  RB::RenderPass::draw_indexed_primitives(a5, v64, 4, **(*a5 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
  *(a5 + 240) = 0;
  *(a5 + 244) = 0;
  return 1;
}

void sub_195D0729C(_Unwind_Exception *a1)
{
  *(v1 + 240) = 0;
  *(v1 + 244) = 0;
  _Unwind_Resume(a1);
}

void RB::Filter::RenderGroup::resolve_unary_subgroup(uint64_t a1, int32x2_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = a2;
  v95 = *MEMORY[0x1E69E9840];
  v7 = vmax_s32(a2[13], 0x40000000400);
  RB::BinPacker::BinPacker(v93, v7.i32[0], v7.i32[1]);
  for (; a3; a3 = *a3)
  {
    RB::BinPacker::add(v93, *(a3 + 7), HIDWORD(*(a3 + 7)), a3, a3[76]);
  }

  RB::BinPacker::pack(v93);
  v11 = v94;
  if (v94)
  {
    v87 = 0;
    v12 = v6[21];
    v13 = v6[22];
    v14 = v6[16].u8[0];
    v15 = v6[2];
    v16 = v6;
    v88 = v15;
    v89 = v9;
    v84 = v9;
    v85 = 0;
    v86 = v14;
    v90 = v6;
    v83 = v6 + 1;
    while (1)
    {
      v17 = *(v11 + 8);
      v18 = *v6;
      if ((*(*v6 + 11) & 8) != 0 || v6[16].u8[0] == v17)
      {
        if (v16 == v6)
        {
          v23 = v15;
        }

        else
        {
          RB::RenderPass::~RenderPass(v16);
          v23 = v15;
          v16 = v6;
        }
      }

      else
      {
        v19 = RB::pixel_format_traits(v15, v8);
        v21 = (v19 + 18);
        if (v17 >= 0x10)
        {
          v21 = v19 + 6;
        }

        v22 = *v21;
        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v15;
        }

        v24 = RB::BaseRenderParams::srgb_alpha(v18, v20);
        v26 = RB::pixel_format_traits(v23, v25);
        if (v23 == v15)
        {
          for (i = *(v11 + 16); i; i = *(i + 40))
          {
            v28 = *(i + 16);
            v29 = v28[5];
            v30 = v28[6];
            v6[21] = v29;
            v6[22] = v30;
            if (v24)
            {
              v31 = (v28[9].i8[5] & 1) == 0;
            }

            else
            {
              v31 = 0;
            }

            RB::RenderPass::color_convert(v6, v6[16].u8[0], v17, v31, v29);
          }

          RB::RenderPass::set_color_space(v6, v17);
          v23 = v88;
        }

        else
        {
          v32 = *(v26 + 4);
          if (!v85 || *(v85 + 56) != v23)
          {
            RB::Device::alloc_shared_texture_view(**(*v6 + 16), *&v6[1], v23, v17, v91);
            v14 = v91[0];
            v33 = v85;
            v91[0] = v85;
            if (v85)
            {
              v34 = *(v85 + 8) - 1;
              *(v85 + 8) = v34;
              if (!v34)
              {
                (*(*v33 + 8))(v33);
              }
            }

            if (!v14)
            {
              break;
            }

            v35 = v24 == (v32 & 0x10) >> 4;
            v36 = v83;
            if (!v35)
            {
              for (j = *(v11 + 16); j; j = *(j + 40))
              {
                v38 = *(j + 16);
                if ((v38[9].i8[5] & 1) == 0)
                {
                  v39 = v38[5];
                  v40 = v38[6];
                  v6[21] = v39;
                  v6[22] = v40;
                  RB::RenderPass::resolve_srgb_alpha(v6, v39);
                }
              }

              v87 = 1;
            }

            if (v16 == v6)
            {
              RB::RenderFrame::flush_pass(*(*v6 + 16), v6, 1);
              MEMORY[0x1EEE9AC00](v72, v73);
              v16 = (&v82 - 34);
              *(&v82 - 2) = 0u;
              *(&v82 - 1) = 0u;
              *(&v82 - 4) = 0u;
              *(&v82 - 3) = 0u;
              *(&v82 - 6) = 0u;
              *(&v82 - 5) = 0u;
              *(&v82 - 8) = 0u;
              *(&v82 - 7) = 0u;
              *(&v82 - 10) = 0u;
              *(&v82 - 9) = 0u;
              *(&v82 - 12) = 0u;
              *(&v82 - 11) = 0u;
              *(&v82 - 14) = 0u;
              *(&v82 - 13) = 0u;
              *(&v82 - 16) = 0u;
              *(&v82 - 15) = 0u;
              *(&v82 - 17) = 0u;
            }

            else
            {
              RB::RenderPass::~RenderPass(v16);
            }

            (RB::RenderPass::RenderPass)(v16, *v6, v14, 0, 1, 2, 0);
            v75 = 0;
            v76 = 1;
            do
            {
              v77 = v76;
              v78 = *(&RB::Filter::RenderGroup::resolve_unary_subgroup(RB::RenderPass &,RB::Filter::RenderGroup::MultipassInfo *,void *)::aux_attachments + v75);
              v79 = v36[3 * v78];
              if (v79)
              {
                RB::RenderPass::set_attachment(v16, v78, v79, 0, 0, 0);
              }

              v76 = 0;
              v75 = 1;
            }

            while ((v77 & 1) != 0);
            RB::RenderPass::set_extra_attachments(v16, (v84 & 0xF0), v74);
            v41 = v89;
            v84 = v84 & 0xFFFFFFF0;
            v85 = v14;
            LODWORD(v14) = v86;
            goto LABEL_37;
          }
        }
      }

      v41 = v89;
LABEL_37:
      v10.n128_u64[0] = *v11;
      RB::RenderFrame::alloc_texture(*(*v6 + 16), v23, 1u, v17, 1, 0, &v92, v10);
      v42 = v92;
      if (v92)
      {
        v43 = *v6;
        if ((*(*v6 + 11) & 8) != 0)
        {
          v92[9].i8[5] |= 8u;
          v43 = *v6;
        }

        v44.n128_f64[0] = RB::RenderPass::RenderPass(v91, *&v43, v42, 0, 1, 3, 0);
        RB::RenderPass::set_extra_attachments(v91, (v41 & 0xF0), v44);
        v45 = 0;
        v89 = v41 & 0xFFFFFFF0;
        v46 = v91;
        v47 = v16;
        do
        {
          v48 = v46;
          RB::RenderFrame::flush_pass(*(*v6 + 16), v47, 1);
          if (v45)
          {
            v49 = @"packed-filters.odd";
          }

          else
          {
            v49 = @"packed-filters.even";
          }

          RB::RenderPass::set_label(v48, &v49->isa);
          v52 = *(v11 + 16);
          if (!v52)
          {
            break;
          }

          v53 = v11;
          v54 = 0;
          do
          {
            v55 = v52[2];
            if ((v55[78] & 1) == 0)
            {
              v51.n128_u64[0] = v52[4];
              if (v48 == v16)
              {
                v56 = *(v55 + 5);
                v57 = (v55 + 48);
                v50.n128_u64[0] = *(v55 + 4);
              }

              else
              {
                v56 = v52[4];
                v57 = v52;
                v50.n128_u64[0] = v56;
                v51.n128_u64[0] = *(v55 + 4);
              }

              v58 = *v57;
              v48[21] = v56;
              v48[22] = v58;
              v59 = *(v55 + 3);
              *v59 = *(a4 + 1456);
              *(a4 + 1456) = v59;
              v60 = (*(**(v55 + 2) + 16))(*(v55 + 2), a4, v48, v45, *(v47 + 1), v50, v51);
              v55[78] = v60 & 1;
              *(a4 + 1456) = **(v55 + 3);
              *(v48 + 30) = *(v48 + 30) + 1.0;
              v54 |= v60 ^ 1;
            }

            v52 = v52[5];
          }

          while (v52);
          v45 = (v45 + 1);
          v46 = v47;
          v47 = v48;
          v11 = v53;
          v6 = v90;
        }

        while ((v54 & 1) != 0);
        RB::RenderPass::~RenderPass(v91);
        if (v92)
        {
          RB::Texture::make_aliasable(v92);
        }

        LODWORD(v14) = v86;
      }

      if (v87)
      {
        for (k = *(v11 + 16); k; k = *(k + 40))
        {
          v62 = *(k + 16);
          if ((v62[9].i8[5] & 1) == 0)
          {
            v63 = v62[5];
            v64 = v62[6];
            *(v16 + 21) = v63;
            *(v16 + 22) = v64;
            RB::RenderPass::resolve_srgb_alpha(v16, v63);
          }
        }
      }

      else if (v6[16].u8[0] != v14)
      {
        for (m = *(v11 + 16); m; m = *(m + 40))
        {
          v66 = *(m + 16);
          v67 = v66[5];
          v68 = v66[6];
          v6[21] = v67;
          v6[22] = v68;
          v69 = (*(*v6 + 11) & 1) != 0 && (v66[9].i8[5] & 1) == 0;
          RB::RenderPass::color_convert(v6, v6[16].u8[0], v14, v69, v67);
        }

        RB::RenderPass::set_color_space(v6, v14);
      }

      v70 = v92;
      if (v92)
      {
        v71 = v92[1].i32[0] - 1;
        v92[1].i32[0] = v71;
        if (!v71)
        {
          (*(*v70 + 8))(v70);
        }
      }

      v11 = *(v11 + 24);
      v15 = v88;
      if (!v11)
      {
        if (v16 != v6)
        {
          RB::RenderPass::~RenderPass(v16);
        }

        v6[21] = v12;
        v6[22] = v13;
        v80 = v85;
        if (v85)
        {
          v81 = *(v85 + 8) - 1;
          *(v85 + 8) = v81;
          if (!v81)
          {
            (*(*v80 + 8))(v80);
          }
        }

        break;
      }
    }
  }

  RB::Heap::~Heap(v93);
}

uint64_t RB::Texture::finalize(RB::Texture *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 6) = 0;

    RB::Device::recycle_texture(v2, this);
  }

  if ((*(this + 77) & 0x40) != 0)
  {
    [*(this + 2) makeAliasable];
  }

  v3 = *(*this + 24);

  return v3(this);
}

void RB::RenderPass::~RenderPass(id *this)
{
  RB::RenderFrame::flush_pass(*(*this + 2), this, 1);
  for (i = 0; i != 12; i += 3)
  {
    if (BYTE4(this[i + 3]) == 1)
    {
      RB::Texture::make_aliasable(this[i + 1]);
    }
  }

  v3 = this[19];
  this[19] = 0;
  if (v3)
  {
    RB::RenderFrame::QueueDeleter::operator()((this + 19), v3);
  }

  for (j = 10; j != -2; j -= 3)
  {
    v5 = this[j];
    if (v5)
    {
      v6 = v5[2] - 1;
      v5[2] = v6;
      if (!v6)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }
}

void sub_195D07BB4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 152);
  *(v1 + 152) = 0;
  if (v3)
  {
    RB::RenderFrame::QueueDeleter::operator()(v1 + 152, v3);
  }

  std::array<RB::RenderPass::AttachmentData,4ul>::~array(v1 + 8);
  _Unwind_Resume(a1);
}

void *RB::RenderTaskTexture::render_dependencies(void *this, void *a2, unsigned int a3)
{
  for (i = this[3]; i; i = *(i + 72))
  {
    if (*(i + 80) < a3)
    {
      break;
    }

    for (j = *(i + 48); j; j = *j)
    {
      v7 = j[1];
      if (v7)
      {
        this = *(v7 + 64);
        if (this)
        {
          this = (*(*this + 32))(this, a2, *(v7 + 80));
        }
      }
    }
  }

  return this;
}

void RB::DisplayList::LayerTask::make_texture(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v6 = a4;
  _ZN2RB4Heap7emplaceINS_11DisplayList11RenderState13PackedTextureEJRK14MTLPixelFormatRKNS_10ColorSpaceERDv2_iEEEPT_DpOT0_((a2 + 8), (a1 + 16), (a1 + 88), &v6);
  *a3 = v5;
}

void RB::RenderFrame::flush_pass(RB::RenderPass &,BOOL)::$_1::__invoke(RB::RenderQueue *a1)
{
  v2 = *(a1 + 1015);
  RB::RenderFrame::encode(v2, (a1 + 8120), a1);

  os_unfair_lock_lock((v2 + 320));
  v3 = *(v2 + 368);
  v4 = v3 + 1;
  if (*(v2 + 372) < v3 + 1)
  {
    RB::vector<std::unique_ptr<RB::RenderQueue,RB::RenderFrame::QueueDeleter>,4ul,unsigned int>::reserve_slow((v2 + 328), v4);
    v3 = *(v2 + 368);
    v4 = v3 + 1;
  }

  v5 = *(v2 + 360);
  if (!v5)
  {
    v5 = v2 + 328;
  }

  *(v2 + 368) = v4;
  *(v5 + 8 * v3) = a1;

  os_unfair_lock_unlock((v2 + 320));
}

void sub_195D07D78(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 80);
  RB::RenderFrame::QueueDeleter::operator()(v4, v1);
  _Unwind_Resume(a1);
}

char *RB::RenderQueue::grow_ops(RB::RenderQueue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 + (v2 >> 1);
    v4 = 8 * v3;
    if (v2 == 64)
    {
      v5 = malloc_type_malloc(v4, 0x2004093837F09uLL);
      result = memcpy(v5, *(this + 1), v4);
    }

    else
    {
      result = malloc_type_realloc(*(this + 1), 8 * (v2 + (v2 >> 1)), 0x2004093837F09uLL);
      v5 = result;
    }

    if (!v5)
    {
      abort();
    }

    *(this + 1) = v5;
    *(this + 1) = v3;
  }

  else
  {
    *(this + 1) = 64;
    v7 = *(this + 5);
    result = ((*(this + 4) + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((result + 512) > v7)
    {
      result = RB::Heap::alloc_slow(this + 2, 0x200uLL, 7);
    }

    else
    {
      *(this + 4) = result + 512;
    }

    *(this + 1) = result;
  }

  return result;
}

_DWORD *RB::RenderTask::set_texture(_DWORD *result, _DWORD *a2, double a3)
{
  if (result)
  {
    v5 = result;
    while (1)
    {
      result = *(v5 + 8);
      if (result != a2)
      {
        break;
      }

LABEL_9:
      *(v5 + 4) = a3;
      v5 = *(v5 + 7);
      if (!v5)
      {
        return result;
      }
    }

    if (result && (v6 = result[2] - 1, (result[2] = v6) == 0))
    {
      result = (*(*result + 8))(result);
      if (!a2)
      {
        goto LABEL_8;
      }
    }

    else if (!a2)
    {
LABEL_8:
      *(v5 + 8) = a2;
      goto LABEL_9;
    }

    ++a2[2];
    goto LABEL_8;
  }

  return result;
}

uint64_t RBMakeCachedMTLTexture(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, float64x2_t *a5, char a6)
{
  v11 = **(a1 + 16);
  v16 = a2;
  v17 = 2;
  v18 = a3;
  v12 = RB::UntypedTable::lookup((v11 + 848), &v16, 0);
  if (!v12 || (v13 = v12, *&v12[2] != a2))
  {
    operator new();
  }

  return RB::TextureCache::prepare(v13, *(a1 + 16), a2, &v15);
}

uint64_t RB::RenderState::custom_shader_signature(RB::RenderState *this)
{
  result = 0;
  v3 = *this & 0x3F;
  if (v3 > 0x1C)
  {
    if (v3 == 37)
    {
      LODWORD(result) = (*this >> 9) & 7;
    }

    else
    {
      if (v3 != 29)
      {
        return result;
      }

      LODWORD(result) = 1;
    }

    return result | (8 * (*(this + 1) >> 6));
  }

  if (v3 == 8 || v3 == 22)
  {
    return result | (8 * (*(this + 1) >> 6));
  }

  return result;
}

uint64_t RB::FormattedRenderState::uber_globals(RB::RenderState *a1, uint64_t a2, int a3)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 1) & 0x3F | (a3 << 6);
  v5 = *(a1 + 2);
  *(a2 + 8) = v5;
  v6 = *a1;
  v7 = RB::RenderState::uses_shader_blending(a1);
  *(a2 + 16) = *(v9 + 4);
  v10 = *(v9 + 6);
  *(a2 + 24) = v10;
  *(a2 + 26) = *(v9 + 7);
  *(a2 + 28) = v9[16];
  if (!v10 && (*(a1 + 1) & 0x3Fu) - 19 <= 4)
  {
    *(a2 + 24) = 1;
  }

  return result;
}

uint64_t RB::Device::make_render_pipeline_descriptor(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t a6, id *a7)
{
  v63[4] = *MEMORY[0x1E69E9840];
  v60 = a1;
  v61 = a2;
  v11 = RB::RenderState::uses_shader_blending(&v60);
  v12 = [objc_msgSend(a5 "colorAttachments")];
  [v12 setPixelFormat:v61 & 0x3FF];
  v13 = v61;
  if ((v61 & 0x2000) != 0)
  {
    v14 = [objc_msgSend(a5 "colorAttachments")];
    v16 = [v12 pixelFormat];
    v18 = RB::pixel_format_traits(v16, v17);
    if (HIDWORD(*(v18 + 4)))
    {
      v19 = HIDWORD(*(v18 + 4));
    }

    else
    {
      v19 = v16;
    }

    [v14 setPixelFormat:v19];
    v13 = v61;
    if ((v61 & 0x1000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if ((v61 & 0x1000) == 0)
    {
LABEL_3:
      v15 = 0;
      goto LABEL_9;
    }
  }

  v15 = [objc_msgSend(a5 "colorAttachments")];
  [v15 setPixelFormat:65];
  v13 = v61;
LABEL_9:
  if (RB::depth_stencil_format_has_stencil((v13 >> 10) & 3))
  {
    [a5 setStencilAttachmentPixelFormat:RB::depth_stencil_pixel_format((v61 >> 10) & 3)];
  }

  if (RB::depth_stencil_format_has_depth((v61 >> 10) & 3))
  {
    [a5 setDepthAttachmentPixelFormat:RB::depth_stencil_pixel_format((v61 >> 10) & 3)];
  }

  v20 = v61;
  if ((v61 & 0x8000) != 0)
  {
    [a5 setSupportAddingFragmentBinaryFunctions:1];
    v20 = v61;
  }

  v21 = objc_opt_new();
  v51 = v15;
  v52 = v12;
  v22 = v11;
  v23 = a7;
  v57 = v60;
  v58 = v61 | (v59 << 32);
  v54 = v21;
  [v21 setConstantValue:&v57 type:36 atIndex:0];
  if (a6)
  {
    v24 = HIDWORD(v57);
    v26 = v58;
    v25 = HIDWORD(v58);
    v63[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v57];
    v63[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v24];
    v63[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v26];
    v63[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v25];
    RB::JSONPipelineData::set_const(a6, 0, 36, [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4]);
  }

  if (a3)
  {
    v56[0] = &v60;
    v27 = v54;
    v56[1] = v27;
    v56[2] = a4;
    v56[3] = a3;
    if (*v28)
    {
      v29 = [MEMORY[0x1E6974070] functionDescriptor];
      v30 = v55;
      if (!v55)
      {
        goto LABEL_38;
      }

      [a5 setVertexFunction:v55];
      if (a6 && *a6 != v29)
      {

        *a6 = v29;
      }
    }

    v32 = v28[2];
    v31 = (v28 + 2);
    if (!v32)
    {
LABEL_30:

      goto LABEL_31;
    }

    v33 = [MEMORY[0x1E6974070] functionDescriptor];
    v34 = v55;
    if (v55)
    {
      [a5 setFragmentFunction:v55];
      if (a6)
      {
        v35 = *(a6 + 8);
        if (v35 != v33)
        {

          *(a6 + 8) = v33;
        }
      }

      goto LABEL_30;
    }

LABEL_38:

    v44 = 0;
    goto LABEL_86;
  }

LABEL_31:
  v36 = v61;
  v37 = v23;
  v38 = v14;
  if ((v61 & 0x1000) == 0)
  {
LABEL_69:
    if ((v60 & 0x20000) != 0)
    {
      v47 = v38;
    }

    else
    {
      v47 = v52;
    }

    if ((v60 & 0x20000) != 0)
    {
      v48 = v52;
    }

    else
    {
      v48 = v38;
    }

    if (v22)
    {
      v49 = 54;
    }

    else
    {
      v49 = BYTE4(v60) & 0x3F;
    }

    [v47 setWriteMask:RB::RenderState::dest_write_mask(&v60)];
    [v48 setWriteMask:RB::RenderState::other_dest_write_mask(&v60)];
    goto LABEL_80;
  }

  v39 = 0;
  v40 = v60 & 0x3F;
  v41 = 1;
  if (v40 > 0x10)
  {
    v42 = v51;
    if (v40 > 0x20)
    {
LABEL_50:
      if (v40 != 17)
      {
        goto LABEL_53;
      }

      v41 = 0;
      goto LABEL_52;
    }

    if (((1 << v40) & 0x7C0000) != 0)
    {
LABEL_52:
      v39 = 4;
      goto LABEL_53;
    }

    if (((1 << v40) & 0x7000000) == 0)
    {
      if (((1 << v40) & 0x108800000) != 0)
      {
        v41 = 0;
        v43 = 0;
        goto LABEL_62;
      }

      goto LABEL_50;
    }

LABEL_45:
    v41 = 0;
    v43 = BYTE4(v60) & 0x3F;
LABEL_46:
    v39 = 4;
    goto LABEL_62;
  }

  v42 = v51;
  if ((v60 & 0x3Fu) > 9)
  {
    if (v40 - 14 < 3)
    {
      goto LABEL_45;
    }

    if (v40 != 10)
    {
      goto LABEL_53;
    }

LABEL_49:
    v41 = 0;
    v39 = 0;
    goto LABEL_53;
  }

  if (v40 < 2)
  {
    v43 = 0;
    v39 = 12;
    goto LABEL_62;
  }

  if (v40 == 4)
  {
    goto LABEL_49;
  }

  if (v40 == 9)
  {
    goto LABEL_45;
  }

LABEL_53:
  v43 = 0;
  v45 = BYTE4(v60) & 0x3F;
  if (v45 <= 0x14)
  {
    if (v45 == 19)
    {
      goto LABEL_61;
    }

    if (v45 != 20)
    {
      goto LABEL_62;
    }

LABEL_60:
    v41 = 0;
    v39 |= 8uLL;
    v43 = 20;
    goto LABEL_62;
  }

  switch(v45)
  {
    case 0x17u:
      v41 = 0;
      v43 = 19;
      goto LABEL_46;
    case 0x16u:
      goto LABEL_60;
    case 0x15u:
LABEL_61:
      v41 = 0;
      v39 |= 8uLL;
      v43 = 19;
      break;
  }

LABEL_62:
  [v42 setWriteMask:v39];
  if (v39)
  {
    if (v22)
    {
      v46 = 54;
    }

    else
    {
      v46 = v43;
    }
  }

  if (v41)
  {
    v36 = v61;
    goto LABEL_69;
  }

  [v52 setWriteMask:0];
  [v38 setWriteMask:0];
LABEL_80:
  if (a4)
  {
    v62 = a4;
    [a5 setBinaryArchives:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v62, 1)}];
  }

  [a5 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", RB::RenderState::name(&v60))}];
  if (v37 && *v37 != v54)
  {

    *v37 = v54;
  }

  v44 = 1;
LABEL_86:

  return v44;
}

unint64_t RB::RenderState::uses_shader_blending(RB::RenderState *this)
{
  v1 = *this & 0x3F;
  if (v1 < 0x20 && ((0xC000000F >> v1) & 1) != 0)
  {
    LODWORD(v2) = 1u >> v1;
    return v2 & 1;
  }

  v3 = *(this + 1) & 0x3F;
  if (v3 > 0x18 || (*(this + 1) & 0x3D | 2) == 0x16 && v1 - 18 < 5)
  {
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  if ((*this & 0x10000) != 0)
  {
    goto LABEL_19;
  }

  v4 = *this & 0x3F;
  if (v4 > 0x25)
  {
    goto LABEL_19;
  }

  if (((1 << v4) & 0x3FFF81C20CLL) != 0)
  {
LABEL_11:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (((1 << v4) & 0x1F0) == 0)
  {
    if (((1 << v4) & 0x7C0000) != 0 && (*this & 0xC0) == 0x80)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if ((*this & 0x3C0) == 0x40)
  {
    goto LABEL_11;
  }

  LOBYTE(v2) = 0;
  if ((*this & 0x4000) == 0 && (*this & 0xC00) != 0x400)
  {
LABEL_19:
    v2 = 0xFFFFFFFFFE01C29BLL >> v3;
  }

  return v2 & 1;
}

uint64_t RB::anonymous namespace::make_derived_state(unsigned int *a1, uint64_t a2, unsigned int a3, int a4)
{
  v17 = a2;
  v18 = a3;
  *a1 = *a1 & 0xFFFFFFFC | a4 | (2 * ((BYTE4(a2) & 0x3Fu) - 21 < 2));
  if (RB::RenderState::can_discard_shape(&v17))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *a1 = *a1 & 0xFFFFFFFB | v5;
  if (RB::RenderState::can_discard_alpha(&v17))
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = *a1 & 0xFFFFFFF7 | v7;
  *a1 = v8;
  v9 = v18;
  v10 = RB::pixel_format_traits(v18 & 0x3FF, v6);
  v11 = *(v10 + 4);
  v12 = (v11 & 0xA) == 0;
  v13 = v8 & 0xFFFFFFEF | (16 * ((v11 & 0xA) != 0));
  *a1 = v13;
  v14 = (16 * *(v10 + 4)) & 0x20;
  if (v12)
  {
    v14 = 0;
  }

  *a1 = v13 & 0xFFFFFFDF | v14;
  result = RB::RenderState::reads_tables(&v17, (v9 >> 18) & 1);
  if (result)
  {
    v16 = 64;
  }

  else
  {
    v16 = 0;
  }

  *a1 = v16 & 0xFFFFFFC0 | *a1 & 0x3F;
  return result;
}

uint64_t RB::anonymous namespace::set_blend_state(void *a1, unsigned int a2, int a3)
{
  if (a2 - 25 > 0xFFFFFFE7)
  {
    v6 = *v5;
    v7 = v5[1];
    v8 = v5 + 2;
    v9 = v5[3];
    v10 = v5 + 4;
    v11 = v5[5];
    if (a3)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9;
    }

    if (a3)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    if (a3)
    {
      v14 = v7;
    }

    else
    {
      v14 = v6;
    }

    v15 = *v8;
    v16 = *v10;
    [a1 setBlendingEnabled:1];
    [a1 setRgbBlendOperation:v14];
    [a1 setAlphaBlendOperation:v7];
    [a1 setSourceRGBBlendFactor:v15];
    [a1 setSourceAlphaBlendFactor:v12];
    [a1 setDestinationRGBBlendFactor:v16];

    return [a1 setDestinationAlphaBlendFactor:v13];
  }

  else
  {

    return [a1 setBlendingEnabled:0];
  }
}

uint64_t RB::RenderState::other_dest_write_mask(RB::RenderState *this)
{
  if ((*this & 0x3F) == 0)
  {
    return 15;
  }

  v1 = 15;
  if ((*this & 0x40000) != 0)
  {
    v1 = 0;
  }

  if ((*this & 0x3F) == 0x23)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void RB::Device::RenderPipelineEntry::Loader::start_loading(RB::Device::RenderPipelineEntry::Loader *this)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!*(this + 8))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = objc_opt_new();

    v4 = *(this + 2);
    *(this + 8) = v3;
    render_pipeline_descriptor = RB::Device::make_render_pipeline_descriptor(v4, *(this + 6), 0, 0, v3, 0, this + 9);
    if (render_pipeline_descriptor)
    {
      v6 = RB::signposts_log(render_pipeline_descriptor);
      v7 = *(this + 11);
      if (v7 != v6)
      {

        v7 = v6;
        *(this + 11) = v7;
      }

      if (v7)
      {
        *(this + 12) = os_signpost_id_generate(v7);
        memset(v23, 0, sizeof(v23));
        v24 = 0;
        v8 = *(this + 6);
        *buf = *(this + 2);
        *&buf[8] = v8;
        RB::FormattedRenderState::ID::formatted(buf, v9, v23);
        v10 = *(this + 12);
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
        {
          v11 = *(this + 6);
          if (!v11)
          {
            v11 = &stru_1F0A40C30;
          }

          *buf = 136315394;
          *&buf[4] = v23;
          v21 = 2112;
          v22 = v11;
          _os_signpost_emit_with_name_impl(&dword_195CE8000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v10, "BuildPipelineAsync", "state=%s customFn=%@", buf, 0x16u);
        }
      }

      RB::Device::RenderPipelineEntry::Loader::load_fn(this, 0);
      *(this + 13) = RB::current_time_seconds(v12);
      v13 = RB::verbose_mode(2);
      if (v13)
      {
        v14 = RB::misc_log(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = RB::RenderState::name((this + 16));
          v16 = *(this + 6);
          v18 = *(this + 2);
          v19 = v16;
          RB::FormattedRenderState::ID::formatted(&v18, v17, v23);
          *buf = 136315394;
          *&buf[4] = v15;
          v21 = 2080;
          v22 = v23;
          _os_log_impl(&dword_195CE8000, v14, OS_LOG_TYPE_INFO, "started building render pipeline %s-%s", buf, 0x16u);
        }
      }
    }

    else
    {
      RB::Device::RenderPipelineEntry::Loader::finished(this);
    }

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t RB::RenderState::dest_write_mask(RB::RenderState *this)
{
  if ((*this & 0x3F) == 0x1E)
  {
    return HIBYTE(*this) & 0xF;
  }

  else
  {
    return 15;
  }
}

const char *RB::RenderState::name(RB::RenderState *this)
{
  if ((*this & 0x3Fu) > 0x26)
  {
    return "plane_color";
  }

  else
  {
    return off_1E744E040[*this & 0x3F];
  }
}

void RB::Device::RenderPipelineEntry::Loader::load_fn(RB::Device::RenderPipelineEntry::Loader *this, Function *a2)
{
  while (1)
  {
    v4 = a2;
    v5 = 2 * (a2 != 0);
    v6 = v3[v5];
    if (v6)
    {
      break;
    }

    LODWORD(a2) = 1;
    if (v4)
    {
      v7 = *(*(this + 1) + 24);
      v8 = *(this + 8);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZN2RB6Device19RenderPipelineEntry6Loader13load_pipelineEv_block_invoke;
      v13[3] = &__block_descriptor_40_e46_v24__0___MTLRenderPipelineState__8__NSError_16l;
      v13[4] = this;
      [v7 newRenderPipelineStateWithDescriptor:v8 completionHandler:v13];
      return;
    }
  }

  v9 = objc_opt_new();
  [v9 setName:v6];
  if (LOBYTE(v3[v5 + 1]) == 1)
  {
    [v9 setConstantValues:*(this + 9)];
  }

  v10 = *(this + 4);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN2RB6Device19RenderPipelineEntry6Loader7load_fnENS2_8FunctionE_block_invoke;
  v11[3] = &__block_descriptor_44_e35_v24__0___MTLFunction__8__NSError_16l;
  v11[4] = this;
  v12 = v4;
  [v10 newFunctionWithDescriptor:v9 completionHandler:v11];
}

void RB::Device::RenderPipelineEntry::Loader::vertex_fn(id *this, uint64_t a2)
{
  if (a2)
  {
    [this[8] setVertexFunction:a2];

    RB::Device::RenderPipelineEntry::Loader::load_fn(this, 1);
  }

  else
  {

    RB::Device::RenderPipelineEntry::Loader::finished(this);
  }
}

void ___ZN2RB6Device19RenderPipelineEntry6Loader7load_fnENS2_8FunctionE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 == 1)
  {
    RB::Device::RenderPipelineEntry::Loader::fragment_fn(v3, a2);
  }

  else if (!v4)
  {
    RB::Device::RenderPipelineEntry::Loader::vertex_fn(v3, a2);
  }
}

void RB::Device::RenderPipelineEntry::Loader::fragment_fn(id *this, uint64_t a2)
{
  if (a2)
  {
    [this[8] setFragmentFunction:a2];

    RB::Device::RenderPipelineEntry::Loader::load_custom_fn(this);
  }

  else
  {

    RB::Device::RenderPipelineEntry::Loader::finished(this);
  }
}

void RB::Device::RenderPipelineEntry::Loader::load_custom_fn(RB::Device::RenderPipelineEntry::Loader *this)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (!*(this + 6))
  {
    if (!v2)
    {
LABEL_8:
      v6 = *(*(this + 1) + 24);
      v7 = *(this + 8);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = ___ZN2RB6Device19RenderPipelineEntry6Loader13load_pipelineEv_block_invoke;
      v9[3] = &__block_descriptor_40_e46_v24__0___MTLRenderPipelineState__8__NSError_16l;
      v9[4] = this;
      [v6 newRenderPipelineStateWithDescriptor:v7 completionHandler:v9];
      return;
    }

LABEL_7:
    v10[0] = *(this + 7);
    [objc_msgSend(*(this + 8) "fragmentLinkedFunctions")];
    goto LABEL_8;
  }

  if (v2)
  {
    goto LABEL_7;
  }

  v3 = objc_opt_new();
  [v3 setName:*(this + 6)];
  [v3 setSpecializedName:@"custom_fn"];
  v4 = 40;
  if (!*(this + 5))
  {
    v4 = 32;
  }

  v5 = *(this + v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN2RB6Device19RenderPipelineEntry6Loader14load_custom_fnEv_block_invoke;
  v8[3] = &__block_descriptor_40_e35_v24__0___MTLFunction__8__NSError_16l;
  v8[4] = this;
  [v5 newFunctionWithDescriptor:v3 completionHandler:v8];
}

uint64_t RB::shared_surface_log(RB *this)
{
  {
    if (v2)
    {
      RB::shared_surface_log(void)::log = RB::shared_surface_log(void)::$_0::operator()(v2, v3);
    }
  }

  return RB::shared_surface_log(void)::log;
}

BOOL RB::SharedSurfaceGroup::wait_for_allocations(os_unfair_lock_s *this, RB::SharedSurfaceClient *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 6);
  v3 = *(a2 + 7);
  if ((v3 + v2) < 3)
  {
    return 1;
  }

  if (!v3)
  {
    return 0;
  }

  v7 = RB::shared_surface_log(this);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v18 = 134218496;
    *&v18[4] = this;
    v19 = 1024;
    v20 = v2;
    v21 = 1024;
    v22 = v3;
    _os_log_impl(&dword_195CE8000, v7, OS_LOG_TYPE_INFO, "%p: client has %d+%d buffers in use, recycling\n", v18, 0x18u);
  }

  *v18 = 0;
  os_unfair_lock_lock(this + 2);
  os_unfair_lock_opaque = this[6]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v9 = *&this[4]._os_unfair_lock_opaque;
    v10 = v9 + 8 * os_unfair_lock_opaque;
    do
    {
      v11 = *(*v9 + 104);
      if (v11)
      {
        v12 = (*(*v9 + 96) + 8);
        v13 = 40 * v11;
        do
        {
          if (*(v12 - 1) == a2)
          {
            v14 = *v12;
            if (*v12)
            {
              if (!*v18 || *(v14 + 16) == *(*v18 + 16) && (v15 = *(v14 + 36), v16 = *(*v18 + 36), v15 != -1) && (v16 == -1 || v15 - v16 < 0))
              {
                RB::CommitMarker::operator=(v18, v12);
              }
            }
          }

          v12 += 5;
          v13 -= 40;
        }

        while (v13);
      }

      v9 += 8;
    }

    while (v9 != v10);
  }

  os_unfair_lock_unlock(this + 2);
  v4 = *v18 != 0;
  if (*v18)
  {
    RB::CommitMarker::Observer::test_displayed(*v18, 1, -1.0);
    os_unfair_lock_lock(this + 2);
    RB::SharedSurfaceGroup::commit_removed_locked(this);
    os_unfair_lock_unlock(this + 2);
    if (*v18)
    {
      if (atomic_fetch_add_explicit((*v18 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::SharedSurface::~SharedSurface();
      }
    }
  }

  return v4;
}

void sub_195D094EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  os_unfair_lock_unlock(v9 + 2);
  if (a9)
  {
    if (atomic_fetch_add_explicit((a9 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::SharedSurface::~SharedSurface();
    }
  }

  _Unwind_Resume(a1);
}

BOOL RB::SharedSurfaceGroup::add_subsurface(os_unfair_lock_s *this, atomic_uint *a2, unint64_t a3, char a4, unsigned int a5, void *a6, int a7, void *a8, float a9, int32x2_t a10, float a11, __n128 a12)
{
  if ((a7 & 1) == 0)
  {
    v22 = vmul_lane_s32(a10, a10, 1).u32[0];
    v23 = RB::SharedSurfaceGroup::max_subsurface_area(this);
    if (v22 > v23)
    {
      return 0;
    }

    v24 = vcgt_s32(a10, vdup_n_s32(RB::SharedSurfaceGroup::max_subsurface_size(v23)));
    if ((vpmax_u32(v24, v24).u32[0] & 0x80000000) != 0)
    {
      return 0;
    }
  }

  if (a2[8])
  {
    RB::SharedSurfaceGroup::cancel_async_updates(this, a2);
  }

  result = RB::SharedSurfaceGroup::wait_for_allocations(this, a2);
  if (result)
  {
    v37 = atomic_fetch_add_explicit(&this[14], 1u, memory_order_relaxed) + 1;
    if (RB::shared_surface_log(result) == MEMORY[0x1E69E9C18])
    {
      v26 = 0;
    }

    else
    {
      v26 = objc_opt_new();

      [v26 setProfile:2];
      [v26 drawDisplayList:a6];
      [(RBDisplayList *)v26 drawDebugSeed:v37];
      a6 = v26;
    }

    os_unfair_lock_lock(this + 2);
    v27 = *&this[8]._os_unfair_lock_opaque;
    os_unfair_lock_opaque = this[10]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque)
    {
      v29 = 112 * os_unfair_lock_opaque;
      v30 = *&this[8]._os_unfair_lock_opaque;
      while (*(v30 + 64) != a2)
      {
        v30 += 112;
        v29 -= 112;
        if (!v29)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      if (this[11]._os_unfair_lock_opaque < (os_unfair_lock_opaque + 1))
      {
        RB::vector<RB::SharedSurfaceGroup::Update,0ul,unsigned int>::reserve_slow(&this[8], os_unfair_lock_opaque + 1);
        v27 = *&this[8]._os_unfair_lock_opaque;
        LODWORD(os_unfair_lock_opaque) = this[10];
      }

      v31 = (v27 + 112 * os_unfair_lock_opaque);
      v31[5] = 0u;
      v31[6] = 0u;
      v31[3] = 0u;
      v31[4] = 0u;
      v31[1] = 0u;
      v31[2] = 0u;
      *v31 = 0u;
      LODWORD(v31) = this[10];
      this[10]._os_unfair_lock_opaque = v31 + 1;
      v30 = *&this[8]._os_unfair_lock_opaque + 112 * v31;
      v32 = *(v30 + 64);
      if (v32 != a2)
      {
        if (v32 && atomic_fetch_add_explicit(v32 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          __dmb(9u);
          (*(*v32 + 8))(v32);
        }

        atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
        *(v30 + 64) = a2;
      }

      atomic_fetch_add_explicit(a2 + 6, 1u, memory_order_relaxed);
    }

    v33 = *v30;
    if (*v30 != a2)
    {
      if (v33 && atomic_fetch_add_explicit(v33 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v33 + 8))(v33);
      }

      atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
      *v30 = a2;
    }

    if (v26)
    {
      v34 = v26;
    }

    else
    {
      v34 = a6;
    }

    v35 = *(v30 + 8);
    if (v35 != v34)
    {

      *(v30 + 8) = v34;
    }

    *(v30 + 16) = 0x8000000080000000;
    *(v30 + 24) = *&a10;
    *(v30 + 32) = a12;
    *(v30 + 48) = a9;
    *(v30 + 52) = v37;
    *(v30 + 56) = a7;
    v36 = [a8 copy];

    *(v30 + 72) = v36;
    *(v30 + 80) = a3;
    *(v30 + 88) = a5;
    *(v30 + 92) = a11;
    *(v30 + 96) = a4;
    os_unfair_lock_unlock(this + 2);
    if (RB::SharedSurfaceGroup::schedule_updates(this))
    {
      RB::Device::preload_color_format(*&this->_os_unfair_lock_opaque, a3, (a5 >> 2) & 1);
    }

    return 1;
  }

  return result;
}

void sub_195D098B4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 2);

  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_32c29_ZTSN2RB8objc_ptrIP7RBLayerEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t RB::SharedSurfaceGroup::schedule_updates(RB::SharedSurfaceGroup *this)
{
  v1 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224;
  if (*(this + 6) == v1)
  {
    return 1;
  }

  v3 = RBTransactionPhaseLessThan([MEMORY[0x1E6979518] currentPhase], 3);
  if (v3)
  {
    *(this + 6) = v1;
    v4 = *this;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3321888768;
    v7[2] = ___ZN2RB18SharedSurfaceGroup16schedule_updatesEv_block_invoke;
    v7[3] = &__block_descriptor_40_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE_e5_v8__0l;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    v8 = v4;
    [MEMORY[0x1E6979518] addCommitHandler:v7 forPhase:3];
    if (v8 && atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDevice initWithDevice:];
      if (v4)
      {
LABEL_10:
        if (atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          [RBDevice initWithDevice:];
        }
      }
    }

    else if (v4)
    {
      goto LABEL_10;
    }

    return 1;
  }

  dispatch_sync_f(v6, this, RB::SharedSurfaceGroup::schedule_updates(void)::$_0::__invoke);
  return 0;
}

void sub_195D09A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    RB::Device::function_library_error(a14);
  }

  RB::SharedSurfaceGroup::schedule_updates(v14 == 0, v14);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::phase_order(int a1)
{
  if ((a1 + 1) > 6)
  {
    return 7;
  }

  else
  {
    return qword_195E44FE0[a1 + 1];
  }
}

void std::unique_lock<RB::spin_lock>::unlock[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    os_unfair_lock_unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __copy_helper_block_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE(v2, v3);
  }
}

uint64_t __copy_helper_block_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  *(result + 32) = v2;
  return result;
}

void RB::SharedSurfaceGroup::render_updates(os_unfair_lock_s *this)
{
  v47 = *MEMORY[0x1E69E9840];
  RB::SharedSurfaceGroup::allocate_updates(this);
  os_unfair_lock_lock(this + 2);
  os_unfair_lock_opaque = this[6]._os_unfair_lock_opaque;
  if (!os_unfair_lock_opaque)
  {

    os_unfair_lock_unlock(this + 2);
    return;
  }

  v3 = 0;
  LOBYTE(v4) = 0;
  v5 = *&this[4]._os_unfair_lock_opaque;
  v6 = 8 * os_unfair_lock_opaque;
  do
  {
    v7 = *v5;
    os_unfair_lock_lock(*v5 + 29);
    if (v3 || (v8 = *v5, ((*v5)[43]._os_unfair_lock_opaque & 1) != 0) || v8[32]._os_unfair_lock_opaque)
    {
      v3 = 1;
      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = v8[36]._os_unfair_lock_opaque != 0;
      if (v4)
      {
LABEL_7:
        v4 = 1;
        goto LABEL_10;
      }
    }

    v4 = (*v5)[40]._os_unfair_lock_opaque != 0;
LABEL_10:
    os_unfair_lock_unlock(v7 + 29);
    ++v5;
    v6 -= 8;
  }

  while (v6);
  os_unfair_lock_unlock(this + 2);
  if (!v3)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_36;
  }

  context = this;
  v44 = 0;
  v45 = 0x400000000;
  v46 = 0;
  os_unfair_lock_lock(this + 2);
  v10 = this[6]._os_unfair_lock_opaque;
  if (v10)
  {
    v11 = *&this[4]._os_unfair_lock_opaque;
    v12 = 8 * v10;
    while (1)
    {
      v13 = *v11;
      os_unfair_lock_lock(*v11 + 29);
      v14 = *v11;
      if ((*v11)[32]._os_unfair_lock_opaque || v14[36]._os_unfair_lock_opaque)
      {
        break;
      }

LABEL_26:
      os_unfair_lock_unlock(v13 + 29);
      ++v11;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_38;
      }
    }

    if (HIDWORD(v45) >= (v45 + 1))
    {
      v15 = v44;
      if (!v44)
      {
        v15 = v43;
      }

      v16 = &v15[40 * v45];
      goto LABEL_20;
    }

    RB::vector<RB::SharedSurfaceGroup::allocate_updates(void)::SurfaceType,4ul,unsigned int>::reserve_slow(v43, v45 + 1);
    v14 = *v11;
    v26 = v44;
    if (!v44)
    {
      v26 = v43;
    }

    v16 = &v26[40 * v45];
    if (v14)
    {
LABEL_20:
      atomic_fetch_add_explicit(&v14[2], 1u, memory_order_relaxed);
    }

    *v16 = v14;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    v17 = v45;
    LODWORD(v45) = v45 + 1;
    v18 = v44;
    if (!v44)
    {
      v18 = v43;
    }

    v19 = &v18[40 * v17];
    v20 = *v11;
    v21 = *(v19 + 1);
    *(v19 + 1) = *&(*v11)[30]._os_unfair_lock_opaque;
    *&v20[30]._os_unfair_lock_opaque = v21;
    LODWORD(v21) = *(v19 + 4);
    *(v19 + 4) = v20[32];
    v20[32]._os_unfair_lock_opaque = v21;
    LODWORD(v21) = *(v19 + 5);
    *(v19 + 5) = v20[33];
    v20[33]._os_unfair_lock_opaque = v21;
    v22 = v44;
    if (!v44)
    {
      v22 = v43;
    }

    v23 = &v22[40 * (v45 - 1)];
    v24 = *v11;
    v25 = *(v23 + 3);
    *(v23 + 3) = *&(*v11)[34]._os_unfair_lock_opaque;
    *&v24[34]._os_unfair_lock_opaque = v25;
    LODWORD(v25) = *(v23 + 8);
    *(v23 + 8) = v24[36];
    v24[36]._os_unfair_lock_opaque = v25;
    LODWORD(v25) = *(v23 + 9);
    *(v23 + 9) = v24[37];
    v24[37]._os_unfair_lock_opaque = v25;
    LOBYTE((*v11)[43]._os_unfair_lock_opaque) = 1;
    goto LABEL_26;
  }

LABEL_38:
  os_unfair_lock_unlock(this + 2);
  if (v45)
  {
    dispatch_sync_f(*(*&this->_os_unfair_lock_opaque + 32), &context, RB::SharedSurfaceGroup::render_updates(void)::$_0::__invoke);
    if (v44)
    {
      v28 = v44;
    }

    else
    {
      v28 = v43;
    }

    if (v45)
    {
      v29 = &v28[40 * v45];
      do
      {
        v30 = *v28;
        os_unfair_lock_lock((*v28 + 116));
        v31 = *v28;
        *(*v28 + 172) = 0;
        if (v46)
        {
          v31[42]._os_unfair_lock_opaque = v46;
        }

        os_unfair_lock_unlock(v30 + 29);
        v32 = *(v28 + 8);
        if (v32)
        {
          v33 = *(v28 + 3) + 32;
          v34 = 56 * v32;
          do
          {
            v39[3] = 0;
            v39[4] = 0;
            v39[0] = *v28;
            v39[1] = *v33;
            v39[2] = *(v33 + 8);
            v35 = *(v33 - 16);
            v40 = *(v33 - 12);
            v41 = *(v33 + 16);
            RB::SharedSurfaceGroup::move_subsurface(*(v39[0] + 2), *(v33 - 24), v35, v39);
            RB::SharedSubsurface::~SharedSubsurface(v39);
            v33 += 56;
            v34 -= 56;
          }

          while (v34);
        }

        v28 += 40;
      }

      while (v28 != v29);
    }

    [*(*&this->_os_unfair_lock_opaque + 16) collectResources];
    v36 = v44;
    if (v44)
    {
      v9 = v44;
    }

    else
    {
      v9 = v43;
    }

    if (v45)
    {
      v37 = 0;
      do
      {
        RB::SharedSurfaceGroup::SurfaceUpdate::~SurfaceUpdate(v9);
        ++v37;
        v9 = (v38 + 40);
      }

      while (v37 < v45);
      goto LABEL_56;
    }
  }

  else
  {
LABEL_56:
    v36 = v44;
  }

  if (v36)
  {
    free(v36);
  }

  if (v4)
  {
LABEL_36:
    dispatch_async_f(v27, this, RB::SharedSurfaceGroup::render_updates(void)::$_1::__invoke);
  }
}

void sub_195D0A12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  os_unfair_lock_unlock(v9 + 29);
  os_unfair_lock_unlock(v8 + 2);
  RB::SharedSurfaceGroup::render_updates(void)::Context::~Context(va);
  _Unwind_Resume(a1);
}

void ___ZN2RB18SharedSurfaceGroup16schedule_updatesEv_block_invoke(uint64_t a1)
{
  v1 = RB::Device::shared_surfaces(*(a1 + 32));
  *(v1 + 6) = 0;

  dispatch_sync_f(v2, v1, _ZZZN2RB18SharedSurfaceGroup16schedule_updatesEvEUb_EN3__58__invokeEPv);
}

void RB::SharedSurfaceGroup::allocate_updates(os_unfair_lock_s *this)
{
  v95 = *MEMORY[0x1E69E9840];
  v93 = 0;
  v92 = 0;
  v94 = 4;
  os_unfair_lock_lock(this + 2);
  os_unfair_lock_opaque = this[10]._os_unfair_lock_opaque;
  if (!os_unfair_lock_opaque)
  {

    os_unfair_lock_unlock(this + 2);
    return;
  }

  if (os_unfair_lock_opaque < 0x401)
  {
    MEMORY[0x1EEE9AC00](v2, v3);
    v9 = &v76 - ((v10 + 15) & 0x7FFFFFFF0);
    bzero(v9, v10);
    v84 = v9;
    v85 = 0;
    goto LABEL_10;
  }

  v5 = malloc_type_malloc(4 * os_unfair_lock_opaque, 0x100004052888210uLL);
  v8 = v5;
  v84 = v5;
  v85 = 1;
  if (v5)
  {
    LODWORD(os_unfair_lock_opaque) = this[10];
    if (!os_unfair_lock_opaque)
    {
      v88[0] = this;
      v9 = v5;
      goto LABEL_21;
    }

    v9 = v5;
LABEL_10:
    v11 = 0;
    v6 = vdupq_n_s64(os_unfair_lock_opaque - 1);
    v12 = xmmword_195E45750;
    v13 = xmmword_195E45760;
    v14 = v9 + 8;
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v6, v13));
      if (vuzp1_s16(v16, v6.n128_u64[0]).u8[0])
      {
        *(v14 - 2) = v11;
      }

      if (vuzp1_s16(v16, *&v6).i8[2])
      {
        *(v14 - 1) = v11 + 1;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(*&v6, *&v12))).i32[1])
      {
        *v14 = v11 + 2;
        v14[1] = v11 + 3;
      }

      v11 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 4;
    }

    while (((os_unfair_lock_opaque + 3) & 0x1FFFFFFFCLL) != v11);
    v17 = this[10]._os_unfair_lock_opaque;
    v8 = &v9[4 * v17];
    v88[0] = this;
    if (v17)
    {
      v18 = 126 - 2 * __clz(v17);
LABEL_22:
      std::__introsort<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::allocate_updates(void)::$_0 &,unsigned int *,false>(v9, v8, v88, v18, 1, v6);
      goto LABEL_23;
    }

LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

LABEL_23:
  v19 = this[10]._os_unfair_lock_opaque;
  v82[0] = this;
  v82[1] = v91;
  v82[2] = &v83;
  v83 = v19;
  v81[0] = this;
  v81[1] = v82;
  v81[2] = &v84;
  v20 = *&this[4]._os_unfair_lock_opaque;
  v76 = this + 4;
  v21 = this[6]._os_unfair_lock_opaque;
  if (v21)
  {
    v22 = 8 * v21;
    while (1)
    {
      v5 = RB::SharedSurfaceGroup::allocate_updates(void)::$_2::operator()(v81, *v20);
      if (!v83)
      {
        break;
      }

      ++v20;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v19)
  {
LABEL_29:
    v89 = 0;
    v90 = 0x400000000;
    v6.n128_u64[0] = 67109376;
    v78 = v6;
    v77 = (&v86 | 0xA);
    do
    {
      v23 = this[10]._os_unfair_lock_opaque;
      if (v23)
      {
        v24 = *&this[8]._os_unfair_lock_opaque;
        v25 = v24 + 112 * v23;
        do
        {
          if (*(v24 + 64))
          {
            v26 = v89;
            if (v89)
            {
              v27 = v89;
            }

            else
            {
              v27 = v88;
            }

            v28 = v90;
            if (v90)
            {
              v29 = 40 * v90;
              while (*v27 != *(v24 + 80) || *(v27 + 8) != *(v24 + 96) || v27[3] != *(v24 + 92) || *(v27 + 4) != *(v24 + 88))
              {
                v27 += 10;
                v29 -= 40;
                if (!v29)
                {
                  goto LABEL_43;
                }
              }
            }

            else
            {
LABEL_43:
              if (HIDWORD(v90) < (v90 + 1))
              {
                v5 = RB::vector<RB::SharedSurfaceGroup::allocate_updates(void)::SurfaceType,4ul,unsigned int>::reserve_slow(v88, v90 + 1);
                v26 = v89;
                v28 = v90;
              }

              if (!v26)
              {
                v26 = v88;
              }

              v30 = &v26[5 * v28];
              *v30 = *(v24 + 80);
              *(v30 + 8) = *(v24 + 96);
              *(v30 + 3) = *(v24 + 92);
              *(v30 + 4) = *(v24 + 88);
              v30[3] = 0;
              *(v30 + 8) = 0;
              v31 = v90;
              LODWORD(v90) = v90 + 1;
              v32 = v89;
              if (!v89)
              {
                v32 = v88;
              }

              v27 = &v32[5 * v31];
            }

            *(v27 + 3) = vmax_s32(*(v27 + 6), *(v24 + 24));
            *(v27 + 8) += vmul_lane_s32(*(v24 + 24), *(v24 + 24), 1).u32[0];
          }

          v24 += 112;
        }

        while (v24 != v25);
        if (v89)
        {
          v33 = v89;
        }

        else
        {
          v33 = v88;
        }

        if (v90)
        {
          v79 = &v33[5 * v90];
          do
          {
            v34 = v33[3];
            v35 = 0x40000000400;
            v36 = vmin_s32(vshl_n_s32(v34, 2uLL), 0x80000000800);
            do
            {
              v7.i32[0] = 0;
              v37 = vcgt_s32(v36, v35);
              v38 = vpmax_u32(v37, v37);
              v7 = vand_s8(vand_s8(v37, 0x100000001), vdup_lane_s32(vcgt_s32(v7, v38), 0));
              v35 = vshl_u32(v35, v7);
            }

            while (v38.i32[0] < 0);
            v39 = v35.i32[0];
            if (v35.i32[0] >= 4 * v34.i32[0] && v35.i32[0] >= 257)
            {
              while (2 * *(v33 + 8) < (v39 << 8))
              {
                v40 = v39 >> 1;
                if ((v39 >> 1) >= 4 * v34.i32[0])
                {
                  v41 = v39 > 0x201;
                  v39 >>= 1;
                  if (v41)
                  {
                    continue;
                  }
                }

                goto LABEL_66;
              }
            }

            v40 = v39;
LABEL_66:
            v42 = v35.i32[1];
            v43 = this[10]._os_unfair_lock_opaque;
            if (v43)
            {
              v44 = 0;
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              while (1)
              {
                if (v84)
                {
                  v49 = v84[v44];
                }

                else
                {
                  v49 = v44;
                }

                v50 = *&this[8]._os_unfair_lock_opaque + 112 * v49;
                if (*(v50 + 64) && (v5 = *(v50 + 80), *v33 == v5) && (v5 = *(v50 + 96), *(v33 + 8) == v5) && *(v33 + 3) == *(v50 + 92) && (v5 = *(v50 + 88), *(v33 + 4) == v5))
                {
                  v51 = *(v50 + 24);
                  v52 = (v51.i32[1] + 15) & 0xFFFFFFF0;
                  v53 = v51.u32[0];
                  v51.i32[1] = v52;
                  v54.i32[0] = v40 - v48;
                  v54.i32[1] = v46;
                  v55 = vcge_s32(v54, v51);
                  v55.i32[0] = vpmin_u32(v55, v55).u32[0];
                  v5 = v55.u32[0];
                  if (v55.i32[0] < 0)
                  {
                    v53 = (v53 + v48);
                  }

                  else
                  {
                    if (v47 <= v48)
                    {
                      v47 = v48;
                    }

                    v45 += v46;
                    v46 = v52;
                    if ((v52 + v45) > v42)
                    {
                      goto LABEL_93;
                    }
                  }
                }

                else
                {
                  v53 = v48;
                }

                ++v44;
                v48 = v53;
                if (v43 == v44)
                {
                  goto LABEL_86;
                }
              }
            }

            LODWORD(v53) = 0;
            v47 = 0;
            v46 = 0;
            v45 = 0;
LABEL_86:
            if (v53 <= v47)
            {
              v56 = v47;
            }

            else
            {
              v56 = v53;
            }

            if (v53 <= 0)
            {
              v46 = 0;
            }

            else
            {
              v47 = v56;
            }

            v45 += v46;
LABEL_93:
            v6.n128_u64[0] = __PAIR64__(v45, v47);
            v80 = v6;
            v57 = vceqz_s32(__PAIR64__(v45, v47));
            if ((vpmax_u32(v57, v57).u32[0] & 0x80000000) == 0)
            {
              v58 = RB::SurfacePool::shared(v5);
              v59.n128_u64[1] = v80.n128_u64[1];
              v59.n128_u64[0] = vmin_s32(vmax_s32((*&vadd_s32(v80.n128_u64[0], 0x3F0000003FLL) & 0xFFFFFFC0FFFFFFC0), 0x10000000100), 0x80000000800);
              v60 = *&this->_os_unfair_lock_opaque;
              v61 = *v33;
              v62 = *(v33 + 8);
              v63 = *(v33 + 4);
              v80 = v59;
              if (RB::SurfacePool::alloc(v58, v60, v61, v62, 1u, 0, v63, 0, v59.n128_u64[0], 0.0, 0))
              {
                operator new();
              }

              v64 = RB::error_log(0);
              v5 = os_log_type_enabled(v64, OS_LOG_TYPE_FAULT);
              if (v5)
              {
                v86 = __PAIR64__(v80.n128_u32[0], v78.n128_u32[0]);
                v87 = 1024;
                *v77 = v80.n128_u32[1];
                _os_log_fault_impl(&dword_195CE8000, v64, OS_LOG_TYPE_FAULT, "unable to create shared surface: %d x %d", &v86, 0xEu);
              }
            }

            v33 += 5;
          }

          while (v33 != v79);
        }
      }

      LODWORD(v90) = 0;
    }

    while (v83);
    if (v89)
    {
      free(v89);
    }
  }

  v65 = this[10]._os_unfair_lock_opaque;
  if (v65)
  {
    v66 = 112 * v65;
    v67 = (*&this[8]._os_unfair_lock_opaque + 72);
    do
    {

      v68 = *(v67 - 1);
      if (v68 && atomic_fetch_add_explicit((v68 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBLayer displayWithBounds:callback:];
      }

      v69 = *(v67 - 9);
      if (v69 && atomic_fetch_add_explicit((v69 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBLayer displayWithBounds:callback:];
      }

      v67 += 14;
      v66 -= 112;
    }

    while (v66);
  }

  this[10]._os_unfair_lock_opaque = 0;
  if (v85 == 1)
  {
    free(v84);
  }

  os_unfair_lock_unlock(this + 2);
  v70 = v92;
  if (v92)
  {
    v71 = v92;
  }

  else
  {
    v71 = v91;
  }

  if (v93)
  {
    v72 = &v71[7 * v93];
    do
    {
      (*(*v71 + 16))(*v71);
      v71 += 7;
    }

    while (v71 != v72);
    v70 = v92;
    v73 = v91;
    if (v92)
    {
      v73 = v92;
    }

    if (v93)
    {
      v74 = 0;
      v75 = (v73 + 8);
      do
      {
        RB::SharedSubsurface::~SharedSubsurface(v75);

        ++v74;
        v75 += 7;
      }

      while (v74 < v93);
      v70 = v92;
    }
  }

  if (v70)
  {
    free(v70);
  }
}

double std::__introsort<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::allocate_updates(void)::$_0 &,unsigned int *,false>(unsigned int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v11 = a2 - 1;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return a6.n128_f64[0];
    }

    if (v13 == 2)
    {
      v159 = *(a2 - 1);
      v160 = *(*a3 + 32);
      a6.n128_u64[0] = *(v160 + 112 * v159 + 24);
      v161 = *v12;
      v162 = *(v160 + 112 * *v12 + 24);
      if (a6.n128_i32[1] > v162.i32[1] || a6.n128_u32[1] == v162.i32[1] && (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v162), (a6.n128_u8[0] & 1) != 0))
      {
        *v12 = v159;
LABEL_197:
        *(a2 - 1) = v161;
        return a6.n128_f64[0];
      }

      return a6.n128_f64[0];
    }

LABEL_9:
    if (v13 <= 23)
    {
      if (a5)
      {
        if (v12 != a2)
        {
          v189 = v12 + 1;
          if (v12 + 1 != a2)
          {
            v190 = 0;
            v191 = *(*a3 + 32);
            v192 = v12;
            do
            {
              v193 = v192;
              v195 = *v192;
              v194 = v192[1];
              v196 = v191 + 112 * v194;
              v198 = *(v196 + 24);
              v197 = (v196 + 24);
              a6.n128_u64[0] = v198;
              v199 = HIDWORD(v198);
              v192 = v189;
              v200 = *(v191 + 112 * v195 + 24);
              if (SHIDWORD(v198) > v200.i32[1] || v199 == v200.i32[1] && (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v200), (a6.n128_u8[0] & 1) != 0))
              {
                v193[1] = v195;
                v201 = v12;
                if (v193 != v12)
                {
                  v202 = v190;
                  while (1)
                  {
                    a6.n128_u64[0] = *v197;
                    v203 = HIDWORD(*v197);
                    v204 = *(v12 + v202 - 4);
                    v205 = *(v191 + 112 * v204 + 24);
                    if (v203 <= v205.i32[1])
                    {
                      if (v203 != v205.i32[1])
                      {
                        break;
                      }

                      a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v205);
                      if ((a6.n128_u8[0] & 1) == 0)
                      {
                        break;
                      }
                    }

                    *(v12 + v202) = v204;
                    v202 -= 4;
                    if (!v202)
                    {
                      v201 = v12;
                      goto LABEL_229;
                    }
                  }

                  v201 = (v12 + v202);
                }

LABEL_229:
                *v201 = v194;
              }

              v189 = v192 + 1;
              v190 += 4;
            }

            while (v192 + 1 != a2);
          }
        }
      }

      else if (v12 != a2)
      {
        v256 = v12 + 1;
        if (v12 + 1 != a2)
        {
          v257 = *(*a3 + 32);
          do
          {
            v258 = a1;
            v260 = *a1;
            v259 = a1[1];
            v261 = v257 + 112 * v259;
            v263 = *(v261 + 24);
            v262 = (v261 + 24);
            a6.n128_u64[0] = v263;
            v264 = HIDWORD(v263);
            a1 = v256;
            v265 = *(v257 + 112 * v260 + 24);
            if (SHIDWORD(v263) > v265.i32[1] || v264 == v265.i32[1] && (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v265), (a6.n128_u8[0] & 1) != 0))
            {
              do
              {
                do
                {
                  v266 = v258;
                  v267 = *--v258;
                  v258[2] = v260;
                  a6.n128_u64[0] = *v262;
                  v268 = HIDWORD(*v262);
                  v260 = v267;
                  v269 = *(v257 + 112 * v267 + 24);
                }

                while (v268 > v269.i32[1]);
                if (v268 != v269.i32[1])
                {
                  break;
                }

                a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v269);
              }

              while ((a6.n128_u8[0] & 1) != 0);
              *v266 = v259;
            }

            v256 = a1 + 1;
          }

          while (a1 + 1 != a2);
        }
      }

      return a6.n128_f64[0];
    }

    if (!a4)
    {
      if (v12 != a2)
      {
        v206 = (v13 - 2) >> 1;
        v207 = *a3;
        v208 = v206;
        do
        {
          v209 = v208;
          if (v206 >= v208)
          {
            v210 = (2 * v208) | 1;
            v211 = &v12[v210];
            if (2 * v209 + 2 >= v13)
            {
              v212 = *(v207 + 32);
            }

            else
            {
              v212 = *(v207 + 32);
              v213 = *(v212 + 112 * *v211 + 24);
              v214 = *(v212 + 112 * v211[1] + 24);
              if (v213.i32[1] > v214.i32[1] || v213.i32[1] == v214.i32[1] && (vcgt_s32(v213, v214).u8[0] & 1) != 0)
              {
                ++v211;
                v210 = 2 * v209 + 2;
              }
            }

            v215 = &v12[v209];
            v216 = *v211;
            v217 = *v215;
            a6.n128_u64[0] = *(v212 + 112 * *v211 + 24);
            v218 = (v212 + 112 * *v215);
            v220 = v218[3];
            v219 = v218 + 3;
            v221 = v220;
            v222 = v220.i32[1];
            if (a6.n128_i32[1] <= v220.i32[1])
            {
              if (a6.n128_u32[1] != v222 || (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v221), (a6.n128_u8[0] & 1) == 0))
              {
                while (1)
                {
                  v223 = v211;
                  *v215 = v216;
                  if (v206 < v210)
                  {
                    break;
                  }

                  v224 = 2 * v210;
                  v210 = (2 * v210) | 1;
                  v211 = &v12[v210];
                  v225 = v224 + 2;
                  if (v225 < v13)
                  {
                    v226 = *(v212 + 112 * *v211 + 24);
                    v227 = *(v212 + 112 * v211[1] + 24);
                    if (v226.i32[1] > v227.i32[1] || v226.i32[1] == v227.i32[1] && (vcgt_s32(v226, v227).u8[0] & 1) != 0)
                    {
                      ++v211;
                      v210 = v225;
                    }
                  }

                  v216 = *v211;
                  a6.n128_u64[0] = *(v212 + 112 * *v211 + 24);
                  v228 = HIDWORD(*v219);
                  if (a6.n128_i32[1] > v228)
                  {
                    break;
                  }

                  v215 = v223;
                  if (a6.n128_u32[1] == v228)
                  {
                    a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], *v219);
                    v215 = v223;
                    if (a6.n128_u8[0])
                    {
                      break;
                    }
                  }
                }

                *v223 = v217;
              }
            }
          }

          v208 = v209 - 1;
        }

        while (v209);
        do
        {
          v229 = 0;
          v230 = *v12;
          v231 = *a3;
          v232 = v12;
          do
          {
            v233 = v232;
            v234 = &v232[v229];
            v232 = v234 + 1;
            v235 = 2 * v229;
            v229 = (2 * v229) | 1;
            v236 = v235 + 2;
            if (v236 < v13)
            {
              v238 = v234[2];
              v237 = v234 + 2;
              v239 = *(v231 + 32);
              a6.n128_u64[0] = *(v239 + 112 * *(v237 - 1) + 24);
              v240 = *(v239 + 112 * v238 + 24);
              if (a6.n128_i32[1] > v240.i32[1] || a6.n128_u32[1] == v240.i32[1] && (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v240), (a6.n128_u8[0] & 1) != 0))
              {
                v232 = v237;
                v229 = v236;
              }
            }

            *v233 = *v232;
          }

          while (v229 <= ((v13 - 2) >> 1));
          if (v232 == --a2)
          {
            *v232 = v230;
          }

          else
          {
            *v232 = *a2;
            *a2 = v230;
            v241 = (v232 - v12 + 4) >> 2;
            v242 = v241 - 2;
            if (v241 >= 2)
            {
              v243 = v242 >> 1;
              v244 = &v12[v242 >> 1];
              v245 = *v232;
              v246 = *(v231 + 32);
              a6.n128_u64[0] = *(v246 + 112 * *v244 + 24);
              v247 = (v246 + 112 * *v232);
              v249 = v247[3];
              v248 = v247 + 3;
              v250 = v249;
              v251 = v249.i32[1];
              if (a6.n128_i32[1] > v249.i32[1] || a6.n128_u32[1] == v251 && (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v250), (a6.n128_u8[0] & 1) != 0))
              {
                *v232 = *v244;
                if (v242 >= 2)
                {
                  while (1)
                  {
                    v253 = v243 - 1;
                    v243 = (v243 - 1) >> 1;
                    v252 = &v12[v243];
                    a6.n128_u64[0] = *(v246 + 112 * *v252 + 24);
                    v254 = HIDWORD(*v248);
                    if (a6.n128_i32[1] <= v254)
                    {
                      if (a6.n128_u32[1] != v254)
                      {
                        break;
                      }

                      a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], *v248);
                      if ((a6.n128_u8[0] & 1) == 0)
                      {
                        break;
                      }
                    }

                    *v244 = *v252;
                    v244 = &v12[v243];
                    if (v253 <= 1)
                    {
                      goto LABEL_273;
                    }
                  }
                }

                v252 = v244;
LABEL_273:
                *v252 = v245;
              }
            }
          }
        }

        while (v13-- > 2);
      }

      return a6.n128_f64[0];
    }

    v14 = v13 >> 1;
    v15 = &v12[v13 >> 1];
    v16 = v15;
    v17 = *(*a3 + 32);
    if (v13 >= 0x81)
    {
      v18 = *v15;
      v19 = *v12;
      v20 = *(v17 + 112 * *v15 + 24);
      v21 = (v17 + 112 * *v12);
      v23 = v21[3];
      v22 = v21 + 3;
      v24 = v23;
      v25 = v23.i32[1];
      if (v20.i32[1] > v23.i32[1] || v20.i32[1] == v25 && (vcgt_s32(v20, v24).u8[0] & 1) != 0)
      {
        v26 = *(v17 + 112 * *v11 + 24);
        if (v26.i32[1] > v20.i32[1] || v26.i32[1] == v20.i32[1] && (vcgt_s32(v26, v20).u8[0] & 1) != 0)
        {
          *v12 = *v11;
          goto LABEL_19;
        }

        *v12 = v18;
        *v15 = v19;
        v128 = *(v17 + 112 * *v11 + 24);
        v129 = *v22;
        v130 = HIDWORD(*v22);
        if (v128.i32[1] > v130 || v128.i32[1] == v130 && (vcgt_s32(v128, v129).u8[0] & 1) != 0)
        {
          *v15 = *v11;
LABEL_19:
          *v11 = v19;
        }
      }

      else
      {
        v102 = *(v17 + 112 * *v11 + 24);
        if (v102.i32[1] > v20.i32[1] || v102.i32[1] == v20.i32[1] && (vcgt_s32(v102, v20).u8[0] & 1) != 0)
        {
          *v15 = *v11;
          *v11 = v18;
          v103 = *(v17 + 112 * *v15 + 24);
          v104 = *v12;
          v105 = *(v17 + 112 * *v12 + 24);
          if (v103.i32[1] > v105.i32[1] || v103.i32[1] == v105.i32[1] && (vcgt_s32(v103, v105).u8[0] & 1) != 0)
          {
            *v12 = *v15;
            *v15 = v104;
          }
        }
      }

      v27 = v14 - 1;
      v28 = v12[v14 - 1];
      v29 = v12[1];
      v30 = *(v17 + 112 * v28 + 24);
      v31 = (v17 + 112 * v29);
      v33 = v31[3];
      v32 = v31 + 3;
      v34 = v33;
      v35 = v33.i32[1];
      if (v30.i32[1] > v33.i32[1] || v30.i32[1] == v35 && (vcgt_s32(v30, v34).u8[0] & 1) != 0)
      {
        v36 = *(a2 - 2);
        v37 = *(v17 + 112 * v36 + 24);
        if (v37.i32[1] > v30.i32[1] || v37.i32[1] == v30.i32[1] && (vcgt_s32(v37, v30).u8[0] & 1) != 0)
        {
          v12[1] = v36;
          goto LABEL_27;
        }

        v12[1] = v28;
        v12[v27] = v29;
        v131 = *(a2 - 2);
        v132 = *(v17 + 112 * v131 + 24);
        v133 = *v32;
        v134 = HIDWORD(*v32);
        if (v132.i32[1] > v134 || v132.i32[1] == v134 && (vcgt_s32(v132, v133).u8[0] & 1) != 0)
        {
          v12[v27] = v131;
LABEL_27:
          *(a2 - 2) = v29;
        }
      }

      else
      {
        v106 = *(a2 - 2);
        v107 = *(v17 + 112 * v106 + 24);
        if (v107.i32[1] > v30.i32[1] || v107.i32[1] == v30.i32[1] && (vcgt_s32(v107, v30).u8[0] & 1) != 0)
        {
          v12[v27] = v106;
          *(a2 - 2) = v28;
          v108 = v12[v27];
          v109 = *(v17 + 112 * v108 + 24);
          v110 = v12[1];
          v111 = *(v17 + 112 * v110 + 24);
          if (v109.i32[1] > v111.i32[1] || v109.i32[1] == v111.i32[1] && (vcgt_s32(v109, v111).u8[0] & 1) != 0)
          {
            v12[1] = v108;
            v12[v27] = v110;
          }
        }
      }

      v40 = v15[1];
      v38 = v15 + 1;
      v39 = v40;
      v41 = v12[2];
      v42 = *(v17 + 112 * v40 + 24);
      v43 = (v17 + 112 * v41);
      v45 = v43[3];
      v44 = v43 + 3;
      v46 = v45;
      v47 = v45.i32[1];
      if (v42.i32[1] > v45.i32[1] || v42.i32[1] == v47 && (vcgt_s32(v42, v46).u8[0] & 1) != 0)
      {
        v48 = *(a2 - 3);
        v49 = *(v17 + 112 * v48 + 24);
        if (v49.i32[1] > v42.i32[1] || v49.i32[1] == v42.i32[1] && (vcgt_s32(v49, v42).u8[0] & 1) != 0)
        {
          v12[2] = v48;
          goto LABEL_35;
        }

        v12[2] = v39;
        *v38 = v41;
        v135 = *(a2 - 3);
        v136 = *(v17 + 112 * v135 + 24);
        v137 = *v44;
        v138 = HIDWORD(*v44);
        if (v136.i32[1] > v138 || v136.i32[1] == v138 && (vcgt_s32(v136, v137).u8[0] & 1) != 0)
        {
          *v38 = v135;
LABEL_35:
          *(a2 - 3) = v41;
        }
      }

      else
      {
        v112 = *(a2 - 3);
        v113 = *(v17 + 112 * v112 + 24);
        if (v113.i32[1] > v42.i32[1] || v113.i32[1] == v42.i32[1] && (vcgt_s32(v113, v42).u8[0] & 1) != 0)
        {
          *v38 = v112;
          *(a2 - 3) = v39;
          v114 = *(v17 + 112 * *v38 + 24);
          v115 = v12[2];
          v116 = *(v17 + 112 * v115 + 24);
          if (v114.i32[1] > v116.i32[1] || v114.i32[1] == v116.i32[1] && (vcgt_s32(v114, v116).u8[0] & 1) != 0)
          {
            v12[2] = *v38;
            *v38 = v115;
          }
        }
      }

      v50 = *v16;
      v51 = v12[v27];
      v52 = *(v17 + 112 * *v16 + 24);
      v53 = (v17 + 112 * v51);
      v55 = v53[3];
      v54 = v53 + 3;
      v56 = v55;
      v57 = v55.i32[1];
      if (v52.i32[1] > v55.i32[1])
      {
        v58 = *v38;
        goto LABEL_48;
      }

      v58 = *v38;
      if (v52.i32[1] == v57 && (vcgt_s32(v52, v56).u8[0] & 1) != 0)
      {
LABEL_48:
        v68 = (v17 + 112 * v58);
        v70 = v68[3];
        v69 = v68 + 3;
        v71 = v70;
        v72 = v70.i32[1];
        if (v70.i32[1] > v52.i32[1] || v72 == v52.i32[1] && (vcgt_s32(v71, v52).u8[0] & 1) != 0)
        {
          v12[v27] = v58;
          goto LABEL_52;
        }

        v12[v27] = v50;
        *v16 = v51;
        v142 = HIDWORD(*v69);
        v143 = HIDWORD(*v54);
        if (v142 > v143 || v142 == v143 && (vcgt_s32(*v69, *v54).u8[0] & 1) != 0)
        {
          *v16 = v58;
          v50 = v58;
LABEL_52:
          *v38 = v51;
        }

        else
        {
          v50 = v51;
        }
      }

      else
      {
        v121 = (v17 + 112 * v58);
        v123 = v121[3];
        v122 = v121 + 3;
        v124 = v123;
        v125 = v123.i32[1];
        if (v123.i32[1] > v52.i32[1] || v125 == v52.i32[1] && (vcgt_s32(v124, v52).u8[0] & 1) != 0)
        {
          *v16 = v58;
          *v38 = v50;
          v126 = HIDWORD(*v122);
          v127 = HIDWORD(*v54);
          if (v126 > v127 || v126 == v127 && (vcgt_s32(*v122, *v54).u8[0] & 1) != 0)
          {
            v12[v27] = v58;
            v38 = v16;
            v50 = v51;
            goto LABEL_52;
          }

          v50 = v58;
        }
      }

      v73 = *v12;
      *v12 = v50;
      *v16 = v73;
      goto LABEL_54;
    }

    v59 = *v12;
    v60 = *v15;
    v61 = *(v17 + 112 * *v12 + 24);
    v62 = (v17 + 112 * *v16);
    v64 = v62[3];
    v63 = v62 + 3;
    v65 = v64;
    v66 = v64.i32[1];
    if (v61.i32[1] <= v64.i32[1] && (v61.i32[1] != v66 || (vcgt_s32(v61, v65).u8[0] & 1) == 0))
    {
      v117 = *(v17 + 112 * *v11 + 24);
      if (v117.i32[1] > v61.i32[1] || v117.i32[1] == v61.i32[1] && (vcgt_s32(v117, v61).u8[0] & 1) != 0)
      {
        *v12 = *v11;
        *v11 = v59;
        v118 = *(v17 + 112 * *v12 + 24);
        v119 = *v16;
        v120 = *(v17 + 112 * *v16 + 24);
        if (v118.i32[1] > v120.i32[1] || v118.i32[1] == v120.i32[1] && (vcgt_s32(v118, v120).u8[0] & 1) != 0)
        {
          *v16 = *v12;
          *v12 = v119;
        }
      }

      goto LABEL_54;
    }

    v67 = *(v17 + 112 * *v11 + 24);
    if (v67.i32[1] > v61.i32[1] || v67.i32[1] == v61.i32[1] && (vcgt_s32(v67, v61).u8[0] & 1) != 0)
    {
      *v16 = *v11;
    }

    else
    {
      *v16 = v59;
      *v12 = v60;
      v139 = *(v17 + 112 * *v11 + 24);
      v140 = *v63;
      v141 = HIDWORD(*v63);
      if (v139.i32[1] <= v141 && (v139.i32[1] != v141 || (vcgt_s32(v139, v140).u8[0] & 1) == 0))
      {
        goto LABEL_54;
      }

      *v12 = *v11;
    }

    *v11 = v60;
LABEL_54:
    --a4;
    v74 = *v12;
    if (a5)
    {
      a6.n128_u64[0] = *(v17 + 112 * v74 + 24);
      v75 = a6.n128_i32[1];
LABEL_59:
      for (i = 0; ; ++i)
      {
        v81 = v12[i + 1];
        v82 = *(v17 + 112 * v81 + 24);
        if (v82.i32[1] <= v75 && (v82.i32[1] != v75 || (vcgt_s32(v82, a6.n128_u64[0]).u32[0] & 1) == 0))
        {
          break;
        }
      }

      v83 = &v12[i];
      v84 = &v12[i + 1];
      v85 = a2 - 1;
      if (i * 4)
      {
        do
        {
          v86 = v85;
          v87 = *(v17 + 112 * *v85 + 24);
          if (v87.i32[1] > v75)
          {
            break;
          }

          --v85;
        }

        while (v87.i32[1] != v75 || (vcgt_s32(v87, a6.n128_u64[0]).u32[0] & 1) == 0);
      }

      else
      {
        v88 = a2 - 1;
        while (1)
        {
          v86 = v88;
          v89 = v88 + 1;
          if (v84 >= v89)
          {
            break;
          }

          v90 = *(v17 + 112 * *v86 + 24);
          if (v90.i32[1] <= v75)
          {
            v88 = v86 - 1;
            if (v90.i32[1] != v75 || (vcgt_s32(v90, a6.n128_u64[0]).u32[0] & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_76;
        }

        v86 = v89;
      }

LABEL_76:
      if (v84 < v86)
      {
        v91 = *v86;
        v92 = v81;
        v93 = v84;
        v94 = v86;
        do
        {
          *v93++ = v91;
          *v94 = v92;
          a6.n128_u64[0] = *(v17 + 112 * v74 + 24);
          while (1)
          {
            v92 = *v93;
            v95 = *(v17 + 112 * *v93 + 24);
            if (v95.i32[1] <= a6.n128_i32[1] && (v95.i32[1] != a6.n128_u32[1] || (vcgt_s32(v95, a6.n128_u64[0]).u8[0] & 1) == 0))
            {
              break;
            }

            ++v93;
          }

          v96 = v94 - 1;
          do
          {
            v94 = v96;
            v91 = *v96;
            v97 = *(v17 + 112 * *v96 + 24);
            if (v97.i32[1] > a6.n128_i32[1])
            {
              break;
            }

            --v96;
          }

          while (v97.i32[1] != a6.n128_u32[1] || (vcgt_s32(v97, a6.n128_u64[0]).u32[0] & 1) == 0);
        }

        while (v93 < v94);
        v83 = v93 - 1;
      }

      if (v83 != v12)
      {
        *v12 = *v83;
      }

      *v83 = v74;
      if (v84 < v86)
      {
        goto LABEL_94;
      }

      v98 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::allocate_updates(void)::$_0 &,unsigned int *>(v12, v83, a3, a6.n128_u64[0]);
      v100 = v99;
      v12 = v83 + 1;
      a6.n128_u64[0] = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::allocate_updates(void)::$_0 &,unsigned int *>(v83 + 1, a2, a3, v98);
      if (v101)
      {
        a2 = v83;
        if ((v100 & 1) == 0)
        {
          goto LABEL_1;
        }

        return a6.n128_f64[0];
      }

      if ((v100 & 1) == 0)
      {
LABEL_94:
        std::__introsort<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::allocate_updates(void)::$_0 &,unsigned int *,false>(a1, v83, a3, a4, a5 & 1, a6);
        a5 = 0;
        v12 = v83 + 1;
      }
    }

    else
    {
      v76 = *(v17 + 112 * *(v12 - 1) + 24);
      v77 = v17 + 112 * v74;
      v79 = *(v77 + 24);
      v78 = (v77 + 24);
      a6.n128_u64[0] = v79;
      v75 = HIDWORD(v79);
      if (v76.i32[1] > SHIDWORD(v79) || v76.i32[1] == v75 && (vcgt_s32(v76, a6.n128_u64[0]).u8[0] & 1) != 0)
      {
        goto LABEL_59;
      }

      v144 = *(v17 + 112 * *v11 + 24);
      if (v75 > v144.i32[1] || v75 == v144.i32[1] && (vcgt_s32(a6.n128_u64[0], v144).u32[0] & 1) != 0)
      {
        v145 = v12 + 1;
        do
        {
          v12 = v145;
          v146 = *(v17 + 112 * *v145 + 24);
          if (v75 > v146.i32[1])
          {
            break;
          }

          ++v145;
        }

        while (v75 != v146.i32[1] || (vcgt_s32(a6.n128_u64[0], v146).u32[0] & 1) == 0);
      }

      else
      {
        v157 = v12 + 1;
        do
        {
          v12 = v157;
          if (v157 >= a2)
          {
            break;
          }

          v158 = *(v17 + 112 * *v157 + 24);
          if (v75 > v158.i32[1])
          {
            break;
          }

          ++v157;
        }

        while (v75 != v158.i32[1] || (vcgt_s32(a6.n128_u64[0], v158).u32[0] & 1) == 0);
      }

      v147 = a2;
      if (v12 < a2)
      {
        v147 = a2 - 1;
        while (v75 > v144.i32[1] || v75 == v144.i32[1] && (vcgt_s32(a6.n128_u64[0], v144).u8[0] & 1) != 0)
        {
          v148 = *--v147;
          v144 = *(v17 + 112 * v148 + 24);
        }
      }

      if (v12 < v147)
      {
        v149 = *v12;
        v150 = *v147;
        do
        {
          *v12 = v150;
          *v147 = v149;
          a6.n128_u64[0] = *v78;
          v151 = HIDWORD(*v78);
          v152 = v12 + 1;
          do
          {
            v12 = v152;
            v149 = *v152;
            v153 = *(v17 + 112 * *v152 + 24);
            if (v151 > v153.i32[1])
            {
              break;
            }

            ++v152;
          }

          while (v151 != v153.i32[1] || (vcgt_s32(a6.n128_u64[0], v153).u8[0] & 1) == 0);
          do
          {
            do
            {
              v154 = *--v147;
              v150 = v154;
              v155 = *(v17 + 112 * v154 + 24);
            }

            while (v151 > v155.i32[1]);
          }

          while (v151 == v155.i32[1] && (vcgt_s32(a6.n128_u64[0], v155).u8[0] & 1) != 0);
        }

        while (v12 < v147);
      }

      v156 = v12 - 1;
      if (v12 - 1 != a1)
      {
        *a1 = *v156;
      }

      a5 = 0;
      *v156 = v74;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::allocate_updates(void)::$_0 &,unsigned int *,0>(v12, v12 + 1, v12 + 2, a2 - 1, a3);
      return a6.n128_f64[0];
    }

    if (v13 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::allocate_updates(void)::$_0 &,unsigned int *,0>(v12, v12 + 1, v12 + 2, v12 + 3, a3);
      v172 = *(a2 - 1);
      v173 = *(*a3 + 32);
      a6.n128_u64[0] = *(v173 + 112 * v172 + 24);
      v174 = v12[3];
      v175 = *(v173 + 112 * v174 + 24);
      if (a6.n128_i32[1] > v175.i32[1] || a6.n128_u32[1] == v175.i32[1] && (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v175), (a6.n128_u8[0] & 1) != 0))
      {
        v12[3] = v172;
        *(a2 - 1) = v174;
        v177 = v12[2];
        v176 = v12[3];
        v178 = v173 + 112 * v176;
        v180 = *(v178 + 24);
        v179 = (v178 + 24);
        a6.n128_u64[0] = v180;
        v181 = HIDWORD(v180);
        v182 = *(v173 + 112 * v177 + 24);
        if (SHIDWORD(v180) > v182.i32[1] || v181 == v182.i32[1] && (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v182), (a6.n128_u8[0] & 1) != 0))
        {
          v12[2] = v176;
          v12[3] = v177;
          v183 = v12[1];
          a6.n128_u64[0] = *v179;
          v184 = HIDWORD(*v179);
          v185 = *(v173 + 112 * v183 + 24);
          if (v184 > v185.i32[1] || v184 == v185.i32[1] && (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v185), (a6.n128_u8[0] & 1) != 0))
          {
            v12[1] = v176;
            v12[2] = v183;
            v186 = *v12;
            a6.n128_u64[0] = *v179;
            v187 = HIDWORD(*v179);
            v188 = *(v173 + 112 * *v12 + 24);
            if (v187 > v188.i32[1] || v187 == v188.i32[1] && (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v188), (a6.n128_u8[0] & 1) != 0))
            {
              *v12 = v176;
              v12[1] = v186;
            }
          }
        }
      }

      return a6.n128_f64[0];
    }

    goto LABEL_9;
  }

  v161 = *v12;
  v163 = v12[1];
  v164 = *(*a3 + 32);
  a6.n128_u64[0] = *(v164 + 112 * v163 + 24);
  v165 = (v164 + 112 * *v12);
  v167 = v165[3];
  v166 = v165 + 3;
  v168 = v167;
  v169 = v167.i32[1];
  if (a6.n128_i32[1] > v167.i32[1] || a6.n128_u32[1] == v169 && (vcgt_s32(a6.n128_u64[0], v168).u8[0] & 1) != 0)
  {
    v170 = *(a2 - 1);
    v171 = *(v164 + 112 * v170 + 24);
    if (v171.i32[1] > a6.n128_i32[1] || v171.i32[1] == a6.n128_u32[1] && (a6.n128_u64[0] = vcgt_s32(v171, a6.n128_u64[0]), (a6.n128_u8[0] & 1) != 0))
    {
      *v12 = v170;
      goto LABEL_197;
    }

    *v12 = v163;
    v12[1] = v161;
    v275 = *(a2 - 1);
    a6.n128_u64[0] = *(v164 + 112 * v275 + 24);
    v276 = *v166;
    v277 = HIDWORD(*v166);
    if (a6.n128_i32[1] > v277 || a6.n128_u32[1] == v277 && (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v276), (a6.n128_u8[0] & 1) != 0))
    {
      v12[1] = v275;
      goto LABEL_197;
    }
  }

  else
  {
    v270 = *(a2 - 1);
    v271 = *(v164 + 112 * v270 + 24);
    if (v271.i32[1] > a6.n128_i32[1] || v271.i32[1] == a6.n128_u32[1] && (a6.n128_u64[0] = vcgt_s32(v271, a6.n128_u64[0]), (a6.n128_u8[0] & 1) != 0))
    {
      v12[1] = v270;
      *(a2 - 1) = v163;
      v273 = *v12;
      v272 = v12[1];
      a6.n128_u64[0] = *(v164 + 112 * v272 + 24);
      v274 = *(v164 + 112 * *v12 + 24);
      if (a6.n128_i32[1] > v274.i32[1] || a6.n128_u32[1] == v274.i32[1] && (a6.n128_u64[0] = vcgt_s32(a6.n128_u64[0], v274), (a6.n128_u8[0] & 1) != 0))
      {
        *v12 = v272;
        v12[1] = v273;
      }
    }
  }

  return a6.n128_f64[0];
}

double RB::time_seconds(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5430, memory_order_acquire) & 1) == 0)
  {
    v2 = this;
    RB::time_seconds();
    this = v2;
  }

  return *&qword_1ED6D5428 * this;
}

uint64_t RB::BinAllocator::alloc(int32x2_t *a1, _DWORD *a2, int32x2_t a3)
{
  v3 = vcgt_s32(a3, a1[1]);
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = a1[3].u32[0];
  if (v5)
  {
    v6 = 0;
    v7 = a3.i32[1];
    v8 = (a3.i32[1] + 15) & 0xFFFFFFF0;
    v9 = a3.i32[1] >> 1;
    v10 = a3.i32[0];
    v11 = a3.i16[0];
    v12 = 0uLL;
    v13 = a1[2];
    v14 = v5;
    v37 = a3.i32[0];
    v38 = v8;
    while (1)
    {
      v15 = (*&v13 + 32 * v6);
      v16 = v15[3];
      if (v16 == v15[1])
      {
        v17 = v15[2] - v8;
        if (v17 >= v9)
        {
          v18 = *v15;
          *v15 += v8;
          v15[2] = v17;
          v39 = v12;
          if (a1[3].i32[1] < v14 + 1)
          {
            RB::vector<RB::BinAllocator::Shelf,0ul,unsigned int>::reserve_slow(&a1[2], v14 + 1);
            LOWORD(v8) = v38;
            v13 = a1[2];
            v14 = a1[3].u32[0];
          }

          v19 = 32 * v6;
          v20 = v14 > v6;
          v21 = v14 - v6;
          if (v20)
          {
            memmove((*&v13 + v19 + 32), (*&v13 + v19), 32 * v21);
            LOWORD(v8) = v38;
          }

          v22 = *&v13 + v19;
          *v22 = v18;
          *(v22 + 2) = v16;
          *(v22 + 4) = v8;
          *(v22 + 6) = v16;
          *(v22 + 8) = v16;
          *(v22 + 24) = 0;
          *(v22 + 16) = 0;
          RB::vector<RB::Animation::TermOrArg,0ul,unsigned int>::reserve_slow(v22 + 16, 1u);
          v10 = v37;
          v8 = v38;
          *(*(v22 + 16) + 4 * (*(v22 + 24))++) = v16 << 16;
          v14 = a1[3].i32[0] + 1;
          a1[3].i32[0] = v14;
          v13 = a1[2];
          v15 = (*&v13 + 32 * v6);
          v12 = v39;
        }
      }

      v23 = v15[2];
      v24 = v23 - v7;
      if (v23 - v7 >= 0 && (v24 < 0x11 || (v24 * v10) < 4096 || v6 == v14 - 1) && v15[4] >= v11)
      {
        v25 = *(v15 + 6);
        if (v25)
        {
          v26 = 0;
          v27 = 0;
          v28 = (*(v15 + 2) + 2);
          while (1)
          {
            v29 = *v28;
            if (v29 >= v11)
            {
              break;
            }

            if (v27 <= v29)
            {
              v27 = *v28;
            }

            v28 += 2;
            v26 += 4;
            if (4 * v25 == v26)
            {
              goto LABEL_25;
            }
          }

          v32 = *(v28 - 1);
          *v28 = v29 - v11;
          if (v29 == v11)
          {
            v33 = (v25 - 1);
            *(v15 + 6) = v33;
            if (v33 != v26 >> 2)
            {
              memmove(v28 - 1, v28 + 1, 4 * (v33 - (v26 >> 2)));
            }
          }

          else
          {
            *(v28 - 1) = v32 + v11;
          }

          v34 = v15[3] - v11;
          v15[3] = v34;
          v15[4] = v34;
          *a2 = v32;
          LODWORD(v35) = v32;
          HIDWORD(v35) = *v15;
          *a2 = v35;
          return 1;
        }

        v27 = 0;
LABEL_25:
        v15[4] = v27;
      }

      v30.i32[0] = v15[4];
      v30.i32[1] = v23;
      *&v12 = vmax_s32(*&v12, v30);
      if (++v6 == v5)
      {
        goto LABEL_34;
      }
    }
  }

  *&v12 = 0;
LABEL_34:
  result = 0;
  a1[1] = v12;
  a1[4].i32[0] = -1;
  return result;
}

uint64_t RB::DisplayList::Layer::apply_transform_(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 16); i; i = i[1])
  {
    result = (*(*i + 32))(i, a2, 0);
  }

  for (j = *(v3 + 32); j; j = j[1])
  {
    result = (*(*j + 24))(j, a2);
  }

  *(v3 + 90) = 0;
  *(v3 + 68) = -1082130432;
  return result;
}

void RB::DisplayList::Layer::min_scale(RB::DisplayList::Layer *this)
{
  if (*(this + 17) < 0.0)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = 0.0;
      do
      {
        v4 = (*(*v2 + 144))(v2);
        if (v3 < v4)
        {
          v3 = v4;
        }

        for (i = v2[3]; i; i = *i)
        {
          v6 = (*(*(i[1] & 0xFFFFFFFFFFFFFFFELL) + 40))(i[1] & 0xFFFFFFFFFFFFFFFELL);
          if (v3 < v6)
          {
            v3 = v6;
          }
        }

        v2 = v2[1];
      }

      while (v2);
    }

    else
    {
      v3 = 0.0;
    }

    v7 = 0.25;
    if (v3 >= 0.25)
    {
      v7 = v3;
    }

    if ((*(this + 19) & 1) == 0)
    {
      v7 = v3;
    }

    *(this + 17) = v7;
  }
}

uint64_t RB::SharedSurfaceGroup::allocate_updates(void)::$_2::operator()(uint64_t *a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (*(*a1 + 40))
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *a1[2];
      if (v7)
      {
        v8 = *(v7 + 4 * v5);
      }

      else
      {
        v8 = v5;
      }

      v9 = *(v2 + 32) + 112 * v8;
      if (*(v9 + 64))
      {
        v10 = *(a2 + 24);
        if (*(v10 + 32) == *(v9 + 80) && *(a2 + 72) == *(v9 + 92) && *(v10 + 160) == *(v9 + 96) && *(v10 + 40) == *(v9 + 88))
        {
          v57 = v6;
          v11 = RB::BinAllocator::alloc((a2 + 32), (v9 + 16), *(v9 + 24));
          if (v11)
          {
            ++*(a2 + 112);
            v56 = a1[1];
            v12 = *v56;
            v13 = *(v9 + 64);
            *(v9 + 64) = 0;
            v14 = *(v9 + 16);
            v15 = *(v9 + 24);
            v16 = *(v9 + 52);
            v17 = *(v9 + 56);
            v18 = *(a2 + 88);
            if (*(a2 + 92) < v18 + 1)
            {
              v11 = RB::vector<RB::DisplayList::Interpolator::Contents::AnimationTableItem,0ul,unsigned int>::reserve_slow(a2 + 80, v18 + 1);
              v18 = *(a2 + 88);
            }

            v19 = *(a2 + 80) + 40 * v18;
            *v19 = v13;
            *(v19 + 8) = v14;
            *(v19 + 16) = v15;
            *(v19 + 24) = v16;
            *(v19 + 28) = 0;
            *(v19 + 32) = (v17 & 2) != 0;
            *(v19 + 33) = 0;
            LODWORD(v19) = *(a2 + 88);
            *(a2 + 88) = v19 + 1;
            v20 = *(*(a2 + 80) + 40 * v19);
            v21 = RB::shared_surface_log(v11);
            v22 = v20;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v23 = *(v9 + 52);
              v24 = *(v9 + 16);
              v25 = *(v9 + 24);
              v26 = v20[6];
              v27 = v20[7];
              *buf = 134220032;
              *&buf[4] = a2;
              *&buf[12] = 1024;
              *&buf[14] = v23;
              *&buf[18] = 1024;
              *&buf[20] = v24;
              LOWORD(v66) = 1024;
              *(&v66 + 2) = HIDWORD(v24);
              HIWORD(v66) = 1024;
              *v67 = v25;
              *&v67[4] = 1024;
              *&v67[6] = HIDWORD(v25);
              *&v67[10] = 2048;
              *&v67[12] = v20;
              v68 = 1024;
              *v69 = v26;
              *&v69[4] = 1024;
              *&v69[6] = v27;
              _os_log_impl(&dword_195CE8000, v21, OS_LOG_TYPE_INFO, "%p: add_subsurface %08x [%d, %d; %d, %d], client %p (%d, %d)\n", buf, 0x40u);
            }

            *(v12 + 60) = 1;
            v61 = 0;
            v62 = 0;
            v58 = a2;
            v28 = *(v9 + 16);
            v59 = v28;
            v29 = *(v9 + 24);
            v60 = v29;
            v30 = *(v9 + 52);
            v63 = v30;
            v31 = *(v9 + 56);
            v32 = (v31 >> 1) & 1;
            v64 = (v31 & 2) != 0;
            os_unfair_lock_lock((a2 + 116));
            if ((*(v9 + 56) & 8) != 0)
            {
              if (v20)
              {
                atomic_fetch_add_explicit(v20 + 2, 1u, memory_order_relaxed);
              }

              *buf = v20;
              *&buf[8] = a2;
              *&buf[16] = v28;
              v66 = v29;
              *v67 = 0;
              *&v67[8] = 0;
              *&v67[16] = v30;
              LOBYTE(v68) = v32;
              v58 = 0;
              *&v69[2] = *(v9 + 72);
              *(v9 + 72) = 0;
              *&v69[10] = *v9;
              *v9 = 0;
              *(v9 + 8) = 0;
              v49 = *(v9 + 44);
              v50 = *(v9 + 32);
              v70 = *(v9 + 16);
              v71[0] = v50;
              *(v71 + 12) = v49;
              v51 = *(a2 + 160);
              if (*(a2 + 164) < v51 + 1)
              {
                RB::vector<RB::SharedSurface::AsyncUpdate,0ul,unsigned int>::reserve_slow(a2 + 152, v51 + 1);
                v51 = *(a2 + 160);
                v22 = *buf;
              }

              v52 = *(a2 + 152) + (v51 << 7);
              *v52 = v22;
              *buf = 0;
              *(v52 + 8) = *&buf[8];
              *(v52 + 24) = v66;
              *(v52 + 32) = 0;
              *(v52 + 40) = 0;
              *(v52 + 48) = *&v67[16];
              *(v52 + 52) = v68;
              *&buf[8] = 0;
              *(v52 + 56) = *&v69[2];
              *&v69[2] = 0uLL;
              *(v52 + 72) = *&v69[18];
              *&v69[18] = 0;
              v53 = v70;
              v54 = v71[0];
              *(v52 + 108) = *(v71 + 12);
              *(v52 + 80) = v53;
              *(v52 + 96) = v54;
              ++*(a2 + 160);

              if (*&v69[10] && atomic_fetch_add_explicit((*&v69[10] + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                [RBLayer displayWithBounds:callback:];
              }

              RB::SharedSubsurface::~SharedSubsurface(&buf[8]);
              if (*buf && atomic_fetch_add_explicit((*buf + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                [RBLayer displayWithBounds:callback:];
              }

              atomic_fetch_add_explicit(v20 + 8, 1u, memory_order_relaxed);
              v33 = v56;
            }

            else
            {
              v33 = v56;
              v34 = v56[1];
              v35 = v34[29];
              if (v34[30] < (v35 + 1))
              {
                RB::vector<RB::SharedSurfaceGroup::allocate_updates(void)::Added,4ul,unsigned long>::reserve_slow(v56[1], v35 + 1);
                v35 = v34[29];
              }

              v36 = v34[28];
              if (!v36)
              {
                v36 = v34;
              }

              v37 = &v36[7 * v35];
              v37[6] = 0;
              *(v37 + 1) = 0u;
              *(v37 + 2) = 0u;
              *v37 = 0u;
              ++v34[29];
              v38 = v56[1];
              v39 = *(v38 + 232);
              if (*(v38 + 224))
              {
                v38 = *(v38 + 224);
              }

              v40 = v38 + 56 * v39;
              v41 = *(v40 - 56);
              *(v40 - 56) = *(v9 + 72);
              *(v9 + 72) = v41;
              v42 = v56[1];
              v43 = *(v42 + 232);
              if (*(v42 + 224))
              {
                v42 = *(v42 + 224);
              }

              v44 = v42 + 56 * v43;
              if ((v44 - 48) != &v58)
              {
                RB::SharedSubsurface::~SharedSubsurface((v44 - 48));
                *(v44 - 48) = v58;
                *(v44 - 40) = v59;
                *(v44 - 32) = v60;
                *(v44 - 24) = 0;
                *(v44 - 16) = 0;
                *(v44 - 8) = v63;
                *(v44 - 4) = v64;
                v58 = 0;
              }

              v45 = *(a2 + 128);
              if (*(a2 + 132) < v45 + 1)
              {
                RB::vector<RB::Symbol::Glyph::Shape::Attachment,0ul,unsigned int>::reserve_slow(a2 + 120, v45 + 1);
                v45 = *(a2 + 128);
              }

              v46 = (*(a2 + 120) + (v45 << 6));
              *v46 = *v9;
              *v9 = 0;
              *(v9 + 8) = 0;
              v47 = *(v9 + 16);
              v48 = *(v9 + 32);
              *(v46 + 44) = *(v9 + 44);
              v46[1] = v47;
              v46[2] = v48;
              ++*(a2 + 128);
            }

            --*v33[2];
            os_unfair_lock_unlock((a2 + 116));
            RB::SharedSubsurface::~SharedSubsurface(&v58);
            v6 = v57;
          }

          else
          {
            v6 = 0;
          }
        }
      }

      ++v5;
    }

    while (v5 < *(v2 + 40));
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6 & 1;
}

void sub_195D0C798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  os_unfair_lock_unlock(v5 + 29);
  RB::SharedSubsurface::~SharedSubsurface(va);
  _Unwind_Resume(a1);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int8x16_t a5, double _D1, double a7, double a8, int8x16_t a9, int8x16_t a10)
{
  v23 = a3;
  if (*(a1 + 124) == 1)
  {
    v12 = *(a2 + 8);
    LOWORD(_D1) = *(a1 + 44);
    __asm { FCVT            S1, H1 }

    *a5.i32 = *&_D1 * *a5.i32;
    v22 = a5.i32[0];
    v17 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Primitive>,RB::Heap&,RB::Coverage::Primitive&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v12 + 16), a5, _D1, a7, a8, a9, a10, v12 + 16, (a1 + 64), &v22, &v23, (a1 + 48));
    v18 = a4[5];
    v19 = v18 + 1;
    if (a4[6] < (v18 + 1))
    {
      RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v19);
      v18 = a4[5];
      v19 = v18 + 1;
    }

    v20 = a4[4];
    if (!v20)
    {
      v20 = a4;
    }

    v20[v18] = v17;
    a4[5] = v19;
    return (**a1)(a1);
  }

  else
  {

    return RB::DisplayList::Item::make_clip(a1, a2, a3, a4, *a5.i32);
  }
}

double RB::DisplayList::LayerItem::min_scale(RB::DisplayList::LayerItem *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0.0;
  }

  RB::DisplayList::Layer::min_scale(v1);
  return result;
}

uint64_t RB::extended_srgb_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D54B0, memory_order_acquire) & 1) == 0)
  {
    RB::extended_srgb_colorspace();
  }

  return qword_1ED6D54A8;
}

void *RB::vector<RB::Animation::TermOrArg,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,4ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,4ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(4 * a3);
    v6 = v5 >> 2;
    if (*a2 != (v5 >> 2))
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

RB::SharedSurface *RB::SharedSurface::SharedSurface(RB::SharedSurface *this, RB::SharedSurfaceGroup *a2, RB::Surface *a3, float a4)
{
  v18 = *MEMORY[0x1E69E9840];
  *(this + 2) = 1;
  *this = &unk_1F0A38F90;
  *(this + 2) = a2;
  *(this + 3) = a3;
  v7 = RB::BinAllocator::BinAllocator(this + 32, *(a3 + 3));
  *(this + 5) = 0u;
  *(this + 18) = a4;
  *(this + 172) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  v8 = RB::shared_surface_log(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v9)
  {
    ID = IOSurfaceGetID(*(a3 + 6));
    v12 = 134218496;
    v13 = this;
    v14 = 2048;
    v15 = a3;
    v16 = 1024;
    v17 = ID;
    _os_log_impl(&dword_195CE8000, v8, OS_LOG_TYPE_INFO, "%p: create %p (%08x)\n", &v12, 0x1Cu);
  }

  *(this + 42) = (RB::current_time_seconds(v9) * 60.0 + 0.5);
  return this;
}

void sub_195D0CB88(_Unwind_Exception *a1)
{
  RB::vector<RB::SharedSurface::AsyncUpdate,0ul,unsigned int>::~vector((v1 + 19));
  RB::vector<RB::SharedSurface::Copy,0ul,unsigned int>::~vector(v1 + 17);
  RB::vector<RB::SharedSurface::Update,0ul,unsigned int>::~vector((v1 + 15));
  RB::vector<RB::SharedSurface::Remove,0ul,unsigned int>::~vector(v1 + 12);
  RB::vector<RB::SharedSurface::Allocation,0ul,unsigned int>::~vector(v2);
  RB::BinAllocator::~BinAllocator((v1 + 4));
  _Unwind_Resume(a1);
}

void *RB::vector<RB::BinAllocator::Shelf,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,32ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

uint64_t RB::BinAllocator::BinAllocator(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  v3 = (a1 + 16);
  *(a1 + 32) = -1;
  RB::vector<RB::BinAllocator::Shelf,0ul,unsigned int>::reserve_slow(a1 + 16, 1u);
  v4 = *v3 + 32 * *(a1 + 24);
  *v4 = 0;
  *(v4 + 2) = vuzp1_s16(*&a2, vdup_lane_s16(*&a2, 0));
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  RB::vector<RB::Animation::TermOrArg,0ul,unsigned int>::reserve_slow(v4 + 16, 1u);
  *(*(v4 + 16) + 4 * (*(v4 + 24))++) = LOWORD(a2) << 16;
  ++*(a1 + 24);
  return a1;
}

void *RB::details::realloc_vector<unsigned int,32ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(32 * a3);
    v6 = v5 >> 5;
    if (*a2 != (v5 >> 5))
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void *RB::details::realloc_vector<unsigned int,40ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(40 * a3);
    v6 = v5 / 0x28;
    if (*a2 != (v5 / 0x28))
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void *RB::vector<RB::DisplayList::Interpolator::Contents::AnimationTableItem,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,40ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

void *RB::vector<RB::Symbol::Glyph::Shape::Attachment,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,64ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,64ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(a3 << 6);
    v6 = v5 >> 6;
    if (*a2 != (v5 >> 6))
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

id RB::SharedSubsurface::attach(uint64_t a1, id a2)
{
  result = *(a1 + 24);
  if (result != a2)
  {

    result = a2;
    *(a1 + 24) = result;
  }

  return result;
}

void *RB::SharedSubsurface::contents(RB::SharedSubsurface *this)
{
  if (*this)
  {
    return RB::Surface::layer_contents(*(*this + 24));
  }

  else
  {
    return 0;
  }
}

void *RB::details::realloc_vector<unsigned int,24ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(24 * a3);
    v6 = v5 / 0x18;
    if (*a2 != (v5 / 0x18))
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void *RB::vector<std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,24ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

uint64_t RB::UntypedTable::insert(RB::UntypedTable *this, void *a2, void *a3)
{
  if (!*(this + 4))
  {
    *(this + 14) = 4;
    *(this + 6) = 15;
    *(this + 4) = malloc_type_calloc(0x10uLL, 8uLL, 0x2004093837F09uLL);
  }

  v6 = (*this)(a2);
  v7 = *(*(this + 4) + 8 * (*(this + 6) & v6));
  if (!v7)
  {
LABEL_7:
    if (*(this + 5) + 1 > (4 << *(this + 14)))
    {
      RB::UntypedTable::grow_buckets(this);
    }

    operator new();
  }

  while (v7[3] != v6 || !(*(this + 1))(v7[1], a2))
  {
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v8 = *(this + 2);
  if (v8)
  {
    v8(v7[1]);
  }

  v9 = *(this + 3);
  if (v9)
  {
    v9(v7[2]);
  }

  result = 0;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

uint64_t RB::Heap::emplace<RB::DisplayList::LayerTask,RB::DisplayList::Layer const&,MTLPixelFormat &,RB::ColorSpace &,float &,RB::Bounds &,RB::Bounds const&,unsigned int>(RB::Heap *this, uint64_t a2, uint64_t *a3, char *a4, int *a5, uint64_t *a6, uint64_t *a7, _DWORD *a8)
{
  v16 = *(this + 3);
  result = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (result + 240 > v16)
  {
    result = RB::Heap::alloc_slow(this, 0xF0uLL, 15);
  }

  else
  {
    *(this + 2) = result + 240;
  }

  v18 = *a3;
  v19 = *a4;
  v20 = *a5;
  v21 = *a6;
  v22 = a6[1];
  v23 = *a7;
  v24 = a7[1];
  v25 = *a8 == 0;
  *(result + 8) = 1;
  *(result + 16) = v18;
  *(result + 24) = v22;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0;
  *(result + 88) = v19;
  *(result + 89) = 0;
  *result = &unk_1F0A3F5C0;
  *(result + 96) = a2;
  *(result + 104) = v21;
  *(result + 112) = v23;
  *(result + 120) = v24;
  *(result + 128) = v20;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  v26 = *(result + 224) & 0xC0;
  if (!v25)
  {
    ++v26;
  }

  *(result + 224) = v26;
  return result;
}

int32x2_t *RB::Bounds::intersect(int32x2_t *result, int32x2_t a2, int32x2_t a3)
{
  v3 = result[1];
  v4 = vceqz_s32(v3);
  if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) == 0)
  {
    v5 = vceqz_s32(a3);
    if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
    {
      *result = a2;
      result[1] = a3;
    }

    else
    {
      v6 = vmax_s32(*result, a2);
      v7 = vsub_s32(vmin_s32(vadd_s32(*result, v3), vadd_s32(a3, a2)), v6);
      v8 = vcgtz_s32(v7);
      if ((vpmin_u32(v8, v8).u32[0] & 0x80000000) != 0)
      {
        *result = v6;
        result[1] = v7;
      }

      else
      {
        *result = 0;
        result[1] = 0;
      }
    }
  }

  return result;
}

uint64_t RB::Device::capture_scope(RB::Device *this)
{
  result = *(this + 9);
  if (!result)
  {
    v3 = [objc_msgSend(MEMORY[0x1E6974000] "sharedCaptureManager")];

    *(this + 9) = v3;
    if (v3)
    {
      [v3 setLabel:@"RenderBox"];
      return *(this + 9);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

NSObject *RB::Drawable::begin_frame(RB::Drawable *this)
{
  result = *(this + 3);
  if (result)
  {
    return dispatch_semaphore_wait(result, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

int32x2_t *RB::Bounds::Bounds(int32x2_t *result, float32x2_t a2, float32x2_t a3, double a4, int32x2_t a5)
{
  v5 = vrndm_f32(a2);
  v6 = vsub_f32(vrndp_f32(vadd_f32(a3, a2)), v5);
  v7 = vcgt_f32(vdup_n_s32(0x4E800000u), v6);
  if ((vpmin_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    a5.i32[0] = 0;
    v8 = vcvt_s32_f32(v5);
    v10 = vcgtz_f32(v6);
    v9 = vand_s8(vcvt_s32_f32(v6), vdup_lane_s32(vcgt_s32(a5, vpmin_u32(v10, v10)), 0));
  }

  else
  {
    v8 = vdup_n_s32(0xC0000001);
    v9 = 0x8000000080000000;
  }

  *result = v8;
  result[1] = v9;
  return result;
}

void sub_195D0E090(_Unwind_Exception *a1)
{
  RB::Heap::~Heap((v1 + 47));
  v4 = v1[20];
  v5 = v2[2] - 1;
  v2[2] = v5;
  if (!v5)
  {
    (*(*v2 + 8))(v2);
  }

  RB::RenderPass::~RenderPass((v1 + 72));
  v6 = v4[2] - 1;
  v4[2] = v6;
  if (!v6)
  {
    (*(*v4 + 8))(v4);
  }

  RB::RenderFrame::~RenderFrame((v1 + 257));
  _Unwind_Resume(a1);
}

uint64_t RB::ImageTexture::prepare(uint64_t this, const RB::RenderParams *a2, const RB::Fill::ImageData *a3, float64x2_t *a4, int a5)
{
  v5 = *this;
  if (*this)
  {
    v6 = a5;
    v10 = *(this + 8);
    if (v10 > 1u)
    {
      if (v10 == 2)
      {
        v16 = *this;

        return RBSurfacePrepareTexture(v16, a2);
      }

      else if (v10 == 4)
      {
        if ((v10 & 0x10000) != 0)
        {
          v17 = rb_color_space(BYTE1(v10));
          v15 = v17 & 0xFF00;
          v14 = v17;
        }

        else
        {
          v12 = [*this pixelFormat];
          if ((RB::pixel_format_traits(v12, v13)[1] & 0x12) != 0)
          {
            v14 = 1;
          }

          else
          {
            v14 = 17;
          }

          v15 = 256;
        }

        return RBMakeCachedMTLTexture(a2, v5, v14 | v15, a3, a4, v6);
      }
    }

    else if (*(this + 8))
    {
      if (v10 == 1)
      {
        v11 = (v10 >> 15) & 2 | a5;

        return RBMakeCachedIOSurfaceTexture(a2, v5, a3, a4, v11);
      }
    }

    else
    {

      return RBMakeCachedImageTexture(a2, v5, a3, a4, a5);
    }
  }

  return this;
}

uint64_t RBMakeCachedImageTexture(const RB::RenderParams *a1, CGImage *a2, const RB::Fill::ImageData *a3, float64x2_t *a4, char a5)
{
  v10 = **(a1 + 2);
  Identifier = CGImageGetIdentifier();
  v15 = 0;
  v16 = 0;
  v11 = RB::UntypedTable::lookup((v10 + 848), &Identifier, 0);
  if (!v11)
  {
    CGImageGetWidth(a2);
    CGImageGetHeight(a2);
    if (!CGImageIsMask(a2))
    {
      CGImageGetAlphaInfo(a2);
    }

    operator new();
  }

  return RB::TextureCache::prepare(v11, *(a1 + 2), a2, &v13);
}

uint64_t RB::RenderTask::add_child(uint64_t result, void *a2, int a3)
{
  v3 = a2[1];
  if (a3)
  {
    *(v3 + 40) = result;
  }

  *a2 = *(result + 48);
  *(result + 48) = a2;
  ++*(v3 + 80);
  return result;
}

unint64_t RB::Heap::emplace<RB::RenderTask::ChildNode,RB::refcounted_ptr<RB::DisplayList::LayerTask>>(size_t *a1, uint64_t *a2)
{
  v3 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v3 + 16 > a1[3])
  {
    v3 = RB::Heap::alloc_slow(a1, 0x10uLL, 7);
  }

  else
  {
    a1[2] = v3 + 16;
  }

  v4 = *a2;
  *a2 = 0;
  *(v3 + 8) = v4;
  return v3;
}

uint64_t RB::DisplayList::LayerItem::prepare(uint64_t result)
{
  if ((*(result + 56) & 3) == 2)
  {
    return (*(*(*(result + 56) & 0xFFFFFFFFFFFFFFFCLL) + 112))();
  }

  return result;
}

uint64_t RB::DisplayList::LayerTask::add_task(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  if (*a5)
  {
    v10 = result;
    v11 = *(result + 184);
    v12 = v11 + 1;
    if (*(result + 188) < v11 + 1)
    {
      RB::vector<std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>,0ul,unsigned int>::reserve_slow(result + 176, v12);
      v11 = *(v10 + 184);
      v12 = v11 + 1;
    }

    v13 = (*(v10 + 176) + 24 * v11);
    *v13 = a3;
    v13[1] = a4;
    v13[2] = v5;
    *(v10 + 184) = v12;
    v14 = RB::Heap::emplace<RB::RenderTask::ChildNode,RB::refcounted_ptr<RB::DisplayList::LayerTask>>((a2 + 8), a5);

    return RB::RenderTask::add_child(v10, v14, 1);
  }

  return result;
}

void RB::DisplayList::Layer::compute_bounds(RB::DisplayList::Layer *this)
{
  if ((*(this + 90) & 1) == 0)
  {
    *(this + 90) = 1;
    *(this + 6) = RB::DisplayList::Layer::compute_bounds_(this, 0);
    *(this + 7) = v2;
  }
}

int32x2_t *RB::Bounds::Union(int32x2_t *result, int32x2_t a2, int32x2_t a3)
{
  v3 = vceqz_s32(a3);
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    v4 = result[1];
    v5 = vceqz_s32(v4);
    if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
    {
      *result = a2;
    }

    else
    {
      v6 = vmin_s32(*result, a2);
      v7 = vmax_s32(vadd_s32(*result, v4), vadd_s32(a3, a2));
      *result = v6;
      a3 = vsub_s32(v7, v6);
    }

    result[1] = a3;
  }

  return result;
}

uint64_t RB::Filter::GaussianBlur::prepare(uint64_t a1, MTLPixelFormat a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return RB::DisplayList::Item::prepare_task(result, a2);
  }

  return result;
}

unint64_t RB::TextureCacheKey::hash(RB::TextureCacheKey *this, const void *a2)
{
  v3 = *this;
  v4 = *(this + 8);
  if (v4 == 2)
  {
    v3 = RB::pointer_hash(v3, a2);
    v4 = *(this + 8);
  }

  return v3 ^ (v4 << 48);
}

uint64_t RB::Fill::ImageData::image_filter_uses_mipmaps(uint64_t a1, float64x2_t *a2, int32x2_t a3)
{
  result = RB::interpolation_mode_uses_mipmaps(*(a1 + 83) & 0xF);
  if (result)
  {
    return RB::Fill::ImageData::image_filter(a1, a2, a3) == 2;
  }

  return result;
}

uint64_t RB::color_space_from_cg_id(RB *this)
{
  v1 = this - 1;
  if ((this - 1) > 0x1F)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = byte_195E44B84[v1];
    v3 = byte_195E44BA4[v1];
  }

  return v2 | (v3 << 8);
}

uint64_t RB::TextureCache::find_entry(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (a1 + 48);
  v6 = *(a1 + 64);
  if (!v6)
  {
    v6 = v5;
  }

  v7 = a2[3];
  while (1)
  {
    if (v6[2] == a2[2])
    {
      v8 = v6[3];
      if (((v7 ^ v8) & 4) == 0 && ((v8 & 2) != 0 || (v7 & 2) == 0) && ((v8 & 0x10) != 0 || (v7 & 0x10) == 0) && ((a2[1] & ((v7 & 8) >> 3)) == 0 || v6[1] != 1 || *v6 == *a2) && ((v7 & 1) == 0 || (v8 & 1) != 0 && (*(*(v6 + 1) + 80) & 0x1F0) == 0x100))
      {
        break;
      }
    }

    ++result;
    v6 += 16;
    if (v2 == result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t anonymous namespace::texture_cache_params(uint64_t a1, uint64_t a2, float64x2_t *a3, char a4, int32x2_t a5)
{
  v8 = a5;
  v9 = *(a1 + 10);
  v10 = RB::Fill::ImageData::image_filter_uses_mipmaps(a2, a3, a5);
  v11 = 0;
  if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 & 0xFFFFFFE7 | (8 * (a4 & 3));
  v14 = *(a2 + 82);
  v15 = v14 & 0x4000;
  v16 = v13 & 0xFFFFFFFE | (v14 >> 14) & 1;
  if (v14 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 | 0x20;
  }

  if (a3)
  {
    if ((v17 & 2) == 0 && *(a2 + 82) != 4)
    {
      v11 = 0;
      v19 = (v14 >> 8) & 0xF;
      if (v19 <= 8 && ((1 << v19) & 0x124) != 0)
      {
        v20 = vcvtq_f64_f32(*(a2 + 44));
        v21 = vcvtq_f64_f32(*(a2 + 56));
        v33[0] = vcvtq_f64_f32(*(a2 + 32));
        v33[1] = v20;
        v33[2] = v21;
        *&v22 = RB::operator*(v33, a3);
        *v34 = v22;
        v35 = v23;
        v36 = v24;
        v25 = vaddv_f32(vdiv_f32(RB::AffineTransform::scale2(v34), vcvt_f32_s32(v8))) * 0.5;
        if (v25 <= 0.5)
        {
          v34[0] = 0;
          frexpf(v25, v34);
          v11 = 0;
          v26 = vcgt_s32(v8, 0x1000000010);
          if ((vpmin_u32(v26, v26).u32[0] & 0x80000000) != 0 && v34[0] < 0)
          {
            v27 = 0;
            v28 = v34[0] + 1;
            do
            {
              v29 = v28;
              v8 = vshr_n_s32(v8, 1uLL);
              ++v27;
              v30 = vcgt_s32(v8, 0x1000000010);
              if ((vpmin_u32(v30, v30).u32[0] & 0x80000000) == 0)
              {
                break;
              }

              ++v28;
            }

            while (v29);
            v11 = v27 << 16;
          }
        }

        else
        {
          v11 = 0;
        }
      }
    }
  }

  v31 = v9 & 0xF;
  if (!v15)
  {
    v31 = v9;
  }

  return v31 | (v17 << 24) | v11 | 0x100u;
}

BOOL RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_4::__invoke<RB::TextureCacheKey const*,RB::TextureCacheKey const>(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 10);
  v3 = v2 == *(a2 + 10);
  if (v2 == *(a2 + 10) && v2 != 0)
  {
    return *(a1 + 9) == *(a2 + 9);
  }

  return v3;
}

BOOL RB::AffineTransform::invert(RB::AffineTransform *this)
{
  v1 = *(this + 1);
  v2 = vmulq_f64(vextq_s8(v1, v1, 8uLL), *this);
  v3 = vsubq_f64(v2, vdupq_laneq_s64(v2, 1)).f64[0];
  if (v3 != 0.0)
  {
    v4 = *(this + 2);
    v5 = vextq_s8(v4, v4, 8uLL);
    v6.f64[0] = *(this + 2);
    v6.f64[1] = *(this + 1);
    v7 = vmulq_n_f64(v6, 1.0 / v3);
    v8 = vmulq_n_f64(vextq_s8(v1, *this, 8uLL), 1.0 / v3);
    v9 = vnegq_f64(vmulq_f64(v4, v8));
    v4.f64[0] = v8.f64[0];
    v4.f64[1] = vnegq_f64(v7).f64[1];
    v8.f64[0] = -v7.f64[0];
    *this = v4;
    *(this + 1) = v8;
    *(this + 2) = vmlaq_f64(v9, v7, v5);
  }

  return v3 != 0.0;
}

uint64_t RB::CustomShader::Closure::prepare(uint64_t this, const RB::RenderParams *a2)
{
  v2 = this + 8;
  v3 = *(this + 144);
  if (*(this + 136))
  {
    v2 = *(this + 136);
  }

  if (v3)
  {
    v5 = 32 * v3;
    v6 = v2 + 16;
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v12 = *(v6 - 10);
      if ((v12 - 9) >= 0xFFFFFFFE)
      {
        v17[0] = 0;
        v17[1] = _D8;
        v17[2] = 0;
        v17[3] = 0;
        v20 = 1065353216;
        v19 = xmmword_195E428C0;
        v18 = xmmword_195E428C0;
        v21 = 0x3C003C003C003C00;
        v23 = 0;
        v22 = 0;
        if (v12 == 8)
        {
          v13 = 768;
        }

        else
        {
          v13 = 256;
        }

        v24 = v13;
        v14[0] = xmmword_195E42760;
        v14[1] = xmmword_195E42770;
        v15 = 0;
        v16 = 0;
        this = RB::ImageTexture::prepare(v6, a2, v17, v14, 1);
      }

      v6 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return this;
}

void RB::DisplayList::DetachedLayerItem::prepare(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 1456);
  v5 = *(a1 + 64);
  v6 = *v5;
  v7 = v5[2];
  v42 = v5[1];
  v43 = v7;
  v41 = v6;
  if (RB::AffineTransform::invert(&v41))
  {
    v8 = &v41;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8[1];
  v10 = v8[2];
  v41 = *v8;
  v42 = v9;
  v43 = v10;
  v11 = *(v4 + 40);
  v12 = vceq_s32(v11, 0x8000000080000000);
  if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) != 0)
  {
    v14 = vneg_f32(0x80000000800000);
    v13 = 0x100000001000000;
  }

  else
  {
    v13 = vcvt_f32_s32(*(v4 + 32));
    v14 = vcvt_f32_s32(v11);
  }

  v15 = RB::operator*(&v41, v13, v14);
  RB::Bounds::Bounds(v40, v15, v16, v17, v18);
  v38 = 0;
  v39 = 0;
  v37 = 2;
  if (RB::DisplayList::Layer::compute_roi(*(a1 + 48), *(a1 + 72), v40, &v38, &v37, (v4 + 16), v19))
  {
    v20 = *(*(v4 + 8) + 128);
    v21 = *(a2 + 1448);
    if (v21)
    {
      v22 = *(a2 + 1440);
      v23 = 336 * v21;
      while (*v22 != *(a1 + 48) || !RB::BaseRenderParams::operator==(v22 + 64, *(a2 + 1072)) || *(v22 + 80) != v20 || !RB::DisplayList::DetachedLayerItem::raster_matches(a1, (v22 + 16), *(v22 + 312), 0))
      {
        v22 += 336;
        v23 -= 336;
        if (!v23)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v24 = *(a1 + 56);
      if (v24)
      {
        v25 = *(v24 + 424) ^ 1;
      }

      else
      {
        v25 = 1;
      }

      v26 = v25 & 1;
      RB::DisplayList::DetachedLayerItem::raster_ctm(a1);
      v30 = *(a2 + 1072);
      v31 = *(a2 + 1448);
      if (*(a2 + 1452) < v31 + 1)
      {
        v35 = v28;
        v36 = v27;
        v34 = v29;
        RB::vector<RB::DisplayList::RenderState::DetachedInfo,0ul,unsigned int>::reserve_slow(a2 + 1440, v31 + 1);
        v29 = v34;
        v28 = v35;
        v27 = v36;
        v31 = *(a2 + 1448);
      }

      v32 = *(a2 + 1440) + 336 * v31;
      v33 = *(a1 + 80);
      *v32 = *(a1 + 48);
      *(v32 + 16) = v27;
      *(v32 + 32) = v28;
      *(v32 + 48) = v29;
      *(v32 + 64) = *v30;
      *(v32 + 80) = v20;
      *(v32 + 280) = 0;
      *(v32 + 288) = 0x400000000;
      *(v32 + 296) = 0;
      *(v32 + 304) = 0;
      *(v32 + 312) = v33;
      *(v32 + 320) = v26;
      LODWORD(v32) = *(a2 + 1448);
      *(a2 + 1448) = v32 + 1;
      v22 = *(a2 + 1440) + 336 * v32;
    }

    RB::DisplayList::RenderState::DetachedInfo::add(v22, a1, *(v4 + 8), v40[0], v40[1], v38, v39);
    *(*(v4 + 8) + 224) |= 0x20u;
  }

  if ((*(a1 + 72) & 3) == 2)
  {
    (*(*(*(a1 + 72) & 0xFFFFFFFFFFFFFFFCLL) + 112))(*(a1 + 72) & 0xFFFFFFFFFFFFFFFCLL, a2);
  }
}

void *RB::details::realloc_vector<unsigned int,336ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(336 * a3);
    v6 = v5 / 0x150;
    if (*a2 != (v5 / 0x150))
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void *RB::vector<RB::DisplayList::RenderState::DetachedInfo,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,336ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

uint64_t RB::DisplayList::DetachedLayerItem::raster_ctm(uint64_t this)
{
  if ((*(this + 80) & 0xF) == 2)
  {
    __asm { FMOV            V3.2D, #0.5 }
  }

  else if ((*(this + 80) & 0xF) == 1)
  {
    __asm
    {
      FMOV            V3.2D, #2.0
      FMOV            V4.2D, #0.5
    }
  }

  return this;
}

int32x2_t RB::DisplayList::RenderState::DetachedInfo::add(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t a4, int32x2_t a5, int32x2_t a6, int32x2_t a7)
{
  v7.i32[0] = 0;
  v13 = vceq_s32(a5, 0x8000000080000000);
  v14 = vdup_lane_s32(vcgt_s32(v7, vpmin_u32(v13, v13)), 0);
  v15 = vneg_f32(0x80000000800000);
  v16 = RB::operator*(*(a2 + 64), vbsl_s8(v14, 0x100000001000000, vcvt_f32_s32(a4)), vbsl_s8(v14, v15, vcvt_f32_s32(a5)));
  RB::Bounds::Bounds(&v45, v16, v17, v18, v19);
  v20 = vceq_s32(a7, 0x8000000080000000);
  v21 = vdup_lane_s32(vcgt_s32(v7, vpmin_u32(v20, v20)), 0);
  v22 = v45;
  v44 = v46;
  v23 = RB::operator*(*(a2 + 64), vbsl_s8(v21, 0x100000001000000, vcvt_f32_s32(a6)), vbsl_s8(v21, v15, vcvt_f32_s32(a7)));
  RB::Bounds::Bounds(&v45, v23, v24, v25, v26);
  v28 = v45;
  v27 = v46;
  v29 = *(*(a2 + 64) + 32);
  v30 = *(a1 + 48);
  v31 = *(a1 + 288);
  if (*(a1 + 292) < v31 + 1)
  {
    v42 = *(a1 + 48);
    v43 = *(*(a2 + 64) + 32);
    RB::vector<RB::DisplayList::RenderState::DetachedInfo::Element,4ul,unsigned int>::reserve_slow((a1 + 88), v31 + 1);
    v30 = v42;
    v29 = v43;
    v31 = *(a1 + 288);
  }

  __asm { FMOV            V0.2D, #0.5 }

  *&_Q0.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vsubq_f64(vaddq_f64(v29, _Q0), v30))));
  v37 = vsub_s32(v28, *&_Q0.f64[0]);
  v38 = vsub_s32(v22, *&_Q0.f64[0]);
  v39 = *(a1 + 280);
  if (!v39)
  {
    v39 = a1 + 88;
  }

  v40 = (v39 + 48 * v31);
  *v40 = a2;
  v40[1] = v38;
  v40[2] = v44;
  v40[3] = v37;
  v40[4] = v27;
  v40[5] = a3;
  ++*(a1 + 288);
  RB::Bounds::Union((a1 + 296), v38, v44);
  result = vmul_lane_s32(v44, v44, 1);
  *(a1 + 316) += result.i32[0];
  return result;
}

__n128 _ZN2RB4Heap7emplaceINS_11DisplayList9SpillItemEJbRjRKDF16_RKNS_9BlendModeERNS_6BoundsERPNS2_11LayerFilterEEEEPT_DpOT0_(RB::Heap *this, char *a2, int *a3, __int16 *a4, _WORD *a5, __n128 *a6, uint64_t *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 80 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x50uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 80;
  }

  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  v19 = *a5;
  v20 = *a7;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 40) = 0;
  *(v15 + 32) = 0;
  *(v15 + 44) = v18;
  *(v15 + 46) = v19 & 0x3F;
  *v15 = &unk_1F0A3F610;
  result = *a6;
  *(v15 + 48) = *a6;
  *(v15 + 64) = v16;
  *(v15 + 68) = v17;
  *(v15 + 72) = v20;
  return result;
}

__n128 RB::Heap::emplace<RB::DisplayList::SpillItem,BOOL,unsigned int &,int,RB::BlendMode,RB::Bounds &,decltype(nullptr)>(RB::Heap *this, char *a2, int *a3, int *a4, _WORD *a5, __n128 *a6)
{
  v12 = *(this + 3);
  v13 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 + 80 > v12)
  {
    v13 = RB::Heap::alloc_slow(this, 0x50uLL, 7);
  }

  else
  {
    *(this + 2) = v13 + 80;
  }

  v14 = *a2;
  v15 = *a3;
  _S0 = *a4;
  v17 = *a5;
  __asm { FCVT            H0, S0 }

  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 40) = 0;
  *(v13 + 32) = 0;
  *(v13 + 44) = LOWORD(_S0);
  *(v13 + 46) = v17 & 0x3F;
  *v13 = &unk_1F0A3F610;
  result = *a6;
  *(v13 + 48) = *a6;
  *(v13 + 64) = v14;
  *(v13 + 68) = v15;
  *(v13 + 72) = 0;
  return result;
}

void *RB::vector<RB::DisplayList::LayerTask::ClipInfo,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,48ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

uint64_t RB::DisplayList::LayerTask::append_task(uint64_t result, uint64_t a2, uint64_t a3, void **a4, unsigned int *a5)
{
  v7 = result;
  v8 = *a5;
  v9 = *(a3 + 160);
  **a4 = v9;
  if (v9)
  {
    v10 = v8;
    do
    {
      *a4 = v9;
      ++v10;
      v9 = *v9;
    }

    while (v9);
    *a5 = v10;
  }

  if (*(a3 + 184))
  {
    result = RB::RenderTask::move_children(result, a3);
    v11 = *(a3 + 184);
    v12 = v11 + *(v7 + 184);
    if (*(v7 + 188) < v12)
    {
      result = RB::vector<std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>,0ul,unsigned int>::reserve_slow(v7 + 176, v12);
      v11 = *(a3 + 184);
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    else if (!v11)
    {
      goto LABEL_14;
    }

    v13 = *(a3 + 176);
    v14 = v11;
    v15 = *(v7 + 184);
    v16 = 24 * v14;
    do
    {
      if (*(v7 + 188) < v15 + 1)
      {
        result = RB::vector<std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>,0ul,unsigned int>::reserve_slow(v7 + 176, v15 + 1);
        v15 = *(v7 + 184);
      }

      v17 = *(v7 + 176) + 24 * v15;
      v18 = *v13;
      *(v17 + 16) = *(v13 + 2);
      *v17 = v18;
      v15 = *(v7 + 184) + 1;
      *(v7 + 184) = v15;
      v13 = (v13 + 24);
      v16 -= 24;
    }

    while (v16);
  }

LABEL_14:
  if ((*(a3 + 224) & 0x20) != 0)
  {
    v19 = *(a2 + 1448);
    if (v19)
    {
      v20 = *(a2 + 1440);
      v21 = v20 + 336 * v19;
      do
      {
        v22 = v20 + 88;
        if (*(v20 + 280))
        {
          v22 = *(v20 + 280);
        }

        v23 = *(v20 + 288);
        if (v23)
        {
          v24 = (v22 + 40);
          v25 = 48 * v23;
          do
          {
            if (*v24 == a3)
            {
              *v24 = v7;
            }

            v24 += 6;
            v25 -= 48;
          }

          while (v25);
        }

        v20 += 336;
      }

      while (v20 != v21);
    }
  }

  v26 = *(v7 + 216);
  v27 = *(a3 + 200) + *(v7 + 200);
  if (*(v7 + 204) < v27)
  {
    result = RB::vector<RBColor,0ul,unsigned int>::reserve_slow(v7 + 192, v27);
  }

  v28 = *(a3 + 216) + v26;
  if (*(v7 + 220) < v28)
  {
    result = RB::vector<RB::DisplayList::LayerTask::ClipInfo,0ul,unsigned int>::reserve_slow(v7 + 208, v28);
  }

  v29 = *(a3 + 200);
  if (v29)
  {
    v30 = *(a3 + 192);
    v31 = &v30[2 * v29];
    v32 = *(v7 + 200);
    do
    {
      v33 = *v30;
      v34 = *(v30 + 2);
      v35 = v32 + 1;
      if (*(v7 + 204) < v32 + 1)
      {
        result = RB::vector<RBColor,0ul,unsigned int>::reserve_slow(v7 + 192, v35);
        v32 = *(v7 + 200);
        v35 = v32 + 1;
      }

      v36 = *(v7 + 192) + 16 * v32;
      *v36 = v33;
      *(v36 + 8) = v34 + v26;
      *(v7 + 200) = v35;
      v30 += 2;
      v32 = v35;
    }

    while (v30 != v31);
  }

  v37 = *(a3 + 216);
  if (v37)
  {
    v38 = *(a3 + 208);
    v39 = *(v7 + 216);
    v40 = vdup_n_s32(v8);
    v41 = 48 * v37;
    do
    {
      if (*(v7 + 220) < v39 + 1)
      {
        result = RB::vector<RB::DisplayList::LayerTask::ClipInfo,0ul,unsigned int>::reserve_slow(v7 + 208, v39 + 1);
        v39 = *(v7 + 216);
      }

      v42 = (*(v7 + 208) + 48 * v39);
      v43 = *v38;
      v44 = v38[2];
      v42[1] = v38[1];
      v42[2] = v44;
      *v42 = v43;
      v45 = *(v7 + 216);
      v39 = v45 + 1;
      *(v7 + 216) = v45 + 1;
      v46 = *(v7 + 208) + 48 * v45;
      *(v46 + 36) = vadd_s32(*(v46 + 36), v40);
      v38 += 3;
      v41 -= 48;
    }

    while (v41);
  }

  if ((*(v7 + 224) & 0x10) != 0)
  {
    v47 = 16;
  }

  else
  {
    v47 = *(a3 + 224) & 0x10;
  }

  *(v7 + 224) = v47 | *(v7 + 224) & 0xEF;
  return result;
}

void *_ZZNK2RB11DisplayList5Layer9make_taskERNS0_11RenderStateENS_6BoundsERKS4_PS5_jfPKNS0_4ItemEPKDv4_fENK3__1clESA_(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  result = ((*(*a1 + 24) + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((result + 2) > v5)
  {
    result = RB::Heap::alloc_slow((v4 + 8), 0x10uLL, 7);
  }

  else
  {
    *(v4 + 24) = result + 2;
  }

  *result = 0;
  result[1] = a2;
  **a1[1] = result;
  *a1[1] = result;
  ++*a1[2];
  return result;
}

RB::DisplayList::Layer *RB::DisplayList::Layer::copy(RB::DisplayList::Layer *this, RB::DisplayList::Builder *a2, int a3)
{
  RB::DisplayList::Builder::make_layer(a2, *(this + 19) & 0xFFFE07FF);
  v7 = v6;
  v6[16] = *(this + 16);
  *(v6 + 86) = *(this + 86);
  if ((a3 & 1) == 0)
  {
    for (i = *(this + 2); i; i = i[1])
    {
      v9 = (*(*i + 24))(i, a2, a3 & 0xFFFFFFFE);
      if (v9)
      {
        RB::DisplayList::Builder::draw(a2, v9, v7, (a3 & 4) != 0);
      }
    }
  }

  for (j = *(this + 4); j; j = j[1])
  {
    v11 = (*(*j + 16))(j, a2);
    if (v11)
    {
      RB::DisplayList::Layer::append_filter(v7, v11);
    }
  }

  v12 = *(this + 5);
  if (v12 && (*(a2 + 288) & 1) == 0)
  {
    v13 = *(a2 + 1);
    v14 = ((v13[4] + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v14 + 3) > v13[5])
    {
      v14 = RB::Heap::alloc_slow(v13 + 2, 0x30uLL, 7);
    }

    else
    {
      v13[4] = (v14 + 3);
    }

    v15 = *v12;
    v16 = v12[2];
    v14[1] = v12[1];
    v14[2] = v16;
    *v14 = v15;
    *(v7 + 5) = v14;
  }

  return v7;
}

unint64_t RB::DisplayList::Item::apply_transform(RB::DisplayList::Item *this, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3 == 0;
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v8 = RB::DisplayList::CachedTransform::transform_style(a2, v6, a3);
    *(this + 2) = v8;
    v9 = v8 == 0;
  }

  v10 = *(this + 3);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v3 == 0;
  }

  if (!v11)
  {
    *(this + 3) = RB::DisplayList::CachedTransform::transform_clip(a2, v10, v3 & v9);
  }

  result = RB::DisplayList::CachedTransform::transform_metadata(a2, *(this + 4), *(this + 10));
  *(this + 4) = result;
  *(this + 10) = v13;
  return result;
}

uint64_t RB::DisplayList::LayerItem::apply_transform(RB::DisplayList::Layer **this, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(this, a2, a3);
  RB::DisplayList::Layer::apply_transform(this[6], a2);

  return RB::DisplayList::Layer::Effect::apply_transform((this + 7), a2);
}

unint64_t RB::DisplayList::CachedTransform::transform_metadata(RB::DisplayList::CachedTransform *this, const RB::DisplayList::Metadata *a2, int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if ((*(*this + 288) & 1) != 0 || !a2 && !*(this + 142))
  {
    return 0;
  }

  v7 = *(this + 286) != 0;
  if (*(this + 154) == a2 && *(this + 1240) == v7)
  {
    return *(this + 156);
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  if (a2)
  {
    v9 = a2;
    do
    {
      v10 = *v9;
      v11 = *v9 & 7;
      if (*(&v40 + v11))
      {
        v9 = *(&v40 + v11);
      }

      *(&v40 + v11) = v9;
      v9 = (v10 & 0xFFFFFFFFFFFFFFF8);
    }

    while ((v10 & 0xFFFFFFFFFFFFFFF8) != 0);
  }

  v36 = v7;
  v12 = *(this + 142);
  v37 = 0uLL;
  v38 = 0uLL;
  v39 = 0;
  if (v12)
  {
    do
    {
      v13 = *v12;
      v14 = *v12 & 7;
      if (*(&v37 + v14))
      {
        v12 = *(&v37 + v14);
      }

      *(&v37 + v14) = v12;
      v12 = (v13 & 0xFFFFFFFFFFFFFFF8);
    }

    while ((v13 & 0xFFFFFFFFFFFFFFF8) != 0);
  }

  v6 = 0;
  for (i = 4; i > 2; --i)
  {
    if (i == 3)
    {
      v23 = *(&v41 + 1);
      if (!*(&v41 + 1))
      {
        v23 = *(&v38 + 1);
        if (!*(&v38 + 1))
        {
          goto LABEL_57;
        }
      }

      v24 = *(*this + 8);
      v18 = ((v24[4] + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v18 + 2) > v24[5])
      {
        v18 = RB::Heap::alloc_slow(v24 + 2, 0x10uLL, 7);
      }

      else
      {
        v24[4] = (v18 + 2);
      }

      v25 = v6 | 3;
      v26 = *(v23 + 8);
      *v18 = v25;
      v18[1] = v26;
      if (v26)
      {
        v27 = (*v26 & 0xFFFFFFFC) + 4;
        v28 = ((v24[4] + 3) & 0xFFFFFFFFFFFFFFFCLL);
        if (v28 + v27 > v24[5])
        {
          v28 = RB::Heap::alloc_slow(v24 + 2, v27, 3);
        }

        else
        {
          v24[4] = v28 + v27;
        }

        v18[1] = RB::TextIdentity::TextIdentity(v28, v26, 0, *v26 >> 2);
      }
    }

    else
    {
      if (i != 4)
      {
        goto LABEL_57;
      }

      v19 = v42;
      if (!v42)
      {
        v19 = v39;
        if (!v39)
        {
          goto LABEL_57;
        }
      }

      v20 = *(*this + 8);
      v18 = ((v20[4] + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v18 + 2) > v20[5])
      {
        v18 = RB::Heap::alloc_slow(v20 + 2, 0x10uLL, 7);
      }

      else
      {
        v20[4] = (v18 + 2);
      }

      *v18 = v6 | 4;
      v18[1] = *(v19 + 8);
    }

LABEL_58:
    v6 = v18;
  }

  if (i == 1)
  {
    if (*(&v40 + 1))
    {
      v21 = *(*(&v40 + 1) + 8);
      v22 = *(&v37 + 1);
      if (!*(&v37 + 1))
      {
        goto LABEL_51;
      }

      if (v21)
      {
        if (*(v21 + 16))
        {
          v21 = *(*(&v37 + 1) + 8);
        }

LABEL_52:
        v29 = *(*this + 8);
        v18 = ((v29[4] + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v18 + 2) > v29[5])
        {
          v18 = RB::Heap::alloc_slow(v29 + 2, 0x10uLL, 7);
        }

        else
        {
          v29[4] = (v18 + 2);
        }

        *v18 = v6 | 1;
        v18[1] = v21;
        atomic_fetch_add_explicit((v21 + 8), 1u, memory_order_relaxed);
        v30 = v29[6];
        if (!v30)
        {
          RB::Heap::make_object_table((v29 + 2));
          v30 = v29[6];
        }

        RB::ObjectTable::adopt(v30, v21);
        goto LABEL_58;
      }
    }

    else
    {
      v22 = *(&v37 + 1);
      if (!*(&v37 + 1))
      {
        goto LABEL_57;
      }
    }

    v21 = *(v22 + 8);
LABEL_51:
    if (!v21)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  if (i == 2)
  {
    v16 = v41;
    if (!v41)
    {
      v16 = v38;
      if (!v38)
      {
        goto LABEL_57;
      }
    }

    v17 = *(*this + 8);
    v18 = ((v17[4] + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v18 + 2) > v17[5])
    {
      v18 = RB::Heap::alloc_slow(v17 + 2, 0x10uLL, 7);
    }

    else
    {
      v17[4] = (v18 + 2);
    }

    *v18 = v6 | 2;
    *(v18 + 2) = *(v16 + 8);
    goto LABEL_58;
  }

  if (i)
  {
LABEL_57:
    v18 = v6;
    goto LABEL_58;
  }

  if (a3 && (v31 = v40) != 0 || *(this + 286) && (v31 = v37) != 0)
  {
    v32 = *(v31 + 8);
    if (v32)
    {
      v33 = *(*this + 8);
      v34 = ((v33[4] + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v34 + 2) > v33[5])
      {
        v34 = RB::Heap::alloc_slow(v33 + 2, 0x10uLL, 7);
      }

      else
      {
        v33[4] = (v34 + 2);
      }

      *v34 = v6;
      v34[1] = v32;
      v34[1] = RB::DisplayList::Contents::intern_uuid(v33, v32);
      v6 = v34;
    }
  }

  *(this + 154) = a2;
  *(this + 1240) = v36;
  *(this + 156) = v6;
  return v6;
}

_OWORD *RB::DisplayList::CachedTransform::transform_ctm(float64x2_t *this, float64x2_t *a2)
{
  if (a2)
  {
    v3 = a2[1];
    v16 = *a2;
    v17 = v3;
    v18 = a2[2];
    v4 = v16;
    v5 = v18;
  }

  else
  {
    v4 = xmmword_195E42760;
    v3 = xmmword_195E42770;
    v16 = xmmword_195E42760;
    v17 = xmmword_195E42770;
    v5 = 0uLL;
    v18 = 0u;
  }

  v6 = vandq_s8(vandq_s8(vceqq_f64(this[73], v3), vceqq_f64(this[72], v4)), vceqq_f64(this[74], v5));
  if ((vandq_s8(vdupq_laneq_s64(v6, 1), v6).u64[0] & 0x8000000000000000) != 0)
  {
    return *&this[75].f64[0];
  }

  v7 = v17;
  this[72] = v16;
  this[73] = v7;
  this[74] = v18;
  v8 = *(*&this->f64[0] + 8);
  *&v9 = RB::operator*(&v16, this + 68);
  result = ((v8[4] + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((result + 3) > v8[5])
  {
    v14 = v10;
    v15 = v9;
    v13 = v11;
    result = RB::Heap::alloc_slow(v8 + 2, 0x30uLL, 15);
    v11 = v13;
    v10 = v14;
    v9 = v15;
  }

  else
  {
    v8[4] = (result + 3);
  }

  *result = v9;
  result[1] = v10;
  result[2] = v11;
  *&this[75].f64[0] = result;
  return result;
}

void RB::DisplayList::Layer::apply_transform(RB::DisplayList::Layer *this, const RB::DisplayList::CachedTransform *a2)
{
  v18[12] = *MEMORY[0x1E69E9840];
  v4 = *(this + 16);
  if (v4 == 0.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = *(this + 16);
  }

  v6 = *(this + 19);
  if (v5 == 1.0)
  {
    if ((v6 & 0x400) == 0)
    {

      RB::DisplayList::Layer::apply_transform_(this, a2);
      return;
    }

    goto LABEL_10;
  }

  if ((v6 & 0x400) != 0)
  {
LABEL_10:
    RB::DisplayList::CachedTransform::transform_scale(a2);
    v8 = v7;
    for (i = *(this + 4); i; i = i[1])
    {
      if ((*(*i + 40))(i) == 5)
      {
        v8 = RB::Filter::GaussianBlur::layer_scale((i + 4), v8);
      }
    }

    RB::DisplayList::Layer::min_scale(this);
    v11 = 0;
    do
    {
      v12 = v8;
      v8 = v8 + v8;
    }

    while (v8 <= v10 && v11++ < 3);
    v4 = fminf(v12 * v5, 1.0);
    if ((v12 * v5) <= 1.0)
    {
      v5 = v12;
    }

    else
    {
      v5 = 1.0 / v5;
    }

    *(this + 16) = v4;
  }

  v14 = 1.0;
  if (v4 != 0.0)
  {
    v14 = v4;
  }

  RB::DisplayList::CachedTransform::CachedTransform(&v15, a2, v5, v14);
  RB::DisplayList::Layer::apply_transform_(this, &v15);
  RB::UntypedTable::~UntypedTable(v18);
  RB::UntypedTable::~UntypedTable(&v17);
  RB::Heap::~Heap(&v16);
}

uint64_t RB::DisplayList::Layer::Effect::apply_transform(uint64_t this, const RB::DisplayList::CachedTransform *a2)
{
  v2 = this;
  v3 = *this;
  v4 = *this & 3;
  if (v4 == 2)
  {
    this = (*(*(v3 & 0xFFFFFFFFFFFFFFFCLL) + 24))(v3 & 0xFFFFFFFFFFFFFFFCLL, a2);
  }

  else
  {
    if (v4 != 1)
    {
      return this;
    }

    this = RB::DisplayList::CachedTransform::transform_projection(a2, (v3 & 0xFFFFFFFFFFFFFFFCLL));
  }

  *v2 = v4 | this;
  return this;
}

void *RB::DisplayList::Builder::clear_caches(RB::DisplayList::Builder *this)
{
  for (i = *(this + 2); i; i = *(this + 2))
  {
    *(this + 2) = *i;
    free(i);
  }

  while (1)
  {
    result = *(this + 3);
    if (!result)
    {
      break;
    }

    *(this + 3) = result[1];
    free(result);
  }

  return result;
}

void RB::DisplayList::Builder::~Builder(RB::DisplayList::Builder *this)
{
  v2 = this + 48;
  v3 = *(this + 35);
  if (v3)
  {
    v4 = v3 == v2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    do
    {
      *(this + 35) = *v3;
      v7 = *(v3 + 11);
      if (v7 && atomic_fetch_add_explicit((v7 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::Refcount<RB::Transition,std::atomic<unsigned int>>::release();
      }

      MEMORY[0x19A8C09E0](v3, 0x10E0C40FB4F2F54);
      v3 = *(this + 35);
      if (v3)
      {
        v8 = v3 == v2;
      }

      else
      {
        v8 = 1;
      }
    }

    while (!v8);
  }

  RB::DisplayList::Builder::clear_caches(this);
  v5 = *(this + 17);
  if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::Refcount<RB::Transition,std::atomic<unsigned int>>::release();
  }

  v6 = *(this + 1);
  if (v6)
  {
    if (atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBMovedDisplayListContents .cxx_destruct];
    }
  }
}

float32x2_t RB::DisplayList::SpillItem::bounds(int32x2_t *this)
{
  v1 = vceq_s32(this[7], 0x8000000080000000);
  if ((vpmin_u32(v1, v1).u32[0] & 0x80000000) != 0)
  {
    return 0x100000001000000;
  }

  else
  {
    return vcvt_f32_s32(this[6]);
  }
}

unint64_t RB::Fill::Color::color_info(float16x4_t *this)
{
  v2 = vbicq_s8(vcvtq_f32_f16(*this), vmovl_s16(vceq_f16(*this, 0xF800F800F800F800)));
  v3 = RB::required_color_depth(this, vminvq_f32(v2), vmaxvq_f32(v2));
  LOWORD(v4) = this[1].i16[0];
  LOWORD(v5) = this[1].i16[1];
  if (*&v5 >= *&v4 || *&v5 == COERCE_SHORT_FLOAT(0))
  {
    LOWORD(v5) = this[1].i16[0];
  }

  return (v4 << 16) | (v5 << 32) | v3;
}

void RB::CustomShader::Function::finalize(RB::CustomShader::Function *this)
{
  v2 = *(this + 2);
  os_unfair_lock_lock(v2 + 12);
  v3 = *(this + 37);
  *(this + 37) = 0;
  os_unfair_lock_unlock(v2 + 12);
  if (v3 == 1)
  {
    v4 = *(this + 2);
    if (atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::CustomShader::Function::finalize(v4);
    }
  }
}

BOOL RB::BoundsAccumulator::intersects(RB::BoundsAccumulator *this, int32x2_t *a2)
{
  v2 = 0;
  v3 = a2[1];
  v4 = vceqz_s32(v3);
  v5 = vadd_s32(v3, *a2);
  v6 = (this + 20);
  v7 = 1;
  v8 = vpmax_u32(v4, v4).u32[0];
  v9 = vpmax_u32(0, 0).u32[0];
  do
  {
    v10 = *(v6 - 3);
    v11.i32[1] = v10.i32[1];
    v11.i32[0] = *v6;
    v12 = vdup_lane_s32(v10, 0);
    v12.i32[0] = *(v6 - 1);
    v13 = vsub_s32(v11, v12);
    v14 = vclez_s32(v13);
    if (((v14.i32[1] | v14.i32[0]) & 1) == 0 && (v8 & 0x80000000) == 0 && (v9 & 0x80000000) == 0)
    {
      v10.i32[1] = *(v6 - 1);
      v15 = vcge_s32(vmax_s32(v10, *a2), vmin_s32(vadd_s32(vrev64_s32(v13), v10), v5));
      if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) == 0)
      {
        break;
      }
    }

    v6 += 4;
    v7 = v2++ < 3;
  }

  while (v2 != 4);
  return v7;
}

_DWORD *RB::RenderTask::set_continuation(uint64_t a1, void *a2)
{
  *(a1 + 89) |= 1u;
  result = a2[7];
  if (result != a1)
  {
    if (result)
    {
      v5 = result[2] - 1;
      result[2] = v5;
      if (!v5)
      {
        result = (*(*result + 8))(result);
      }
    }

    ++*(a1 + 8);
    a2[7] = a1;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    result = a2[8];
    if (result != v6)
    {
      if (!result || (v7 = result[2] - 1, (result[2] = v7) != 0) || (result = (*(*result + 8))(result), (v6 = *(a1 + 64)) != 0))
      {
        ++v6[2];
      }

      a2[8] = v6;
    }

    a2[4] = *(a1 + 32);
  }

  ++*(a1 + 80);
  return result;
}

unint64_t RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::realloc_buffer(unint64_t *a1, void *a2)
{
  v4 = a2[2] + (a2[2] >> 1);
  v5 = malloc_good_size(8 * v4 + 24);
  v6 = malloc_type_malloc(v5, 0xE192D423uLL);
  if (!v6)
  {
    RB::Shader::Tables::shared(void)::$_0::operator()(0, v7);
  }

  v8 = v6;
  v6[1] = 0;
  v6[2] = (v5 - 24) >> 3;
  *v6 = a2;
  v9 = a2[1];
  if (v9 >= v4)
  {
    v9 = v4;
  }

  v6[1] = v9;
  if (v9)
  {
    memcpy(v6 + 3, a2 + 3, 8 * v9);
  }

  atomic_store(v8, a1);
  return v8;
}

uint64_t RB::DisplayList::Contents::finalize(void)::$_0::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t RB::Resource::set_frame_id(uint64_t this, int a2, int a3)
{
  do
  {
    if (*(this + 32) == a2)
    {
      break;
    }

    *(this + 32) = a2;
    *(this + 36) = a3;
    *(this + 40) = 0;
    this = *(this + 24);
  }

  while (this);
  return this;
}

BOOL RB::RenderPass::set_extra_attachments(uint64_t a1, MTLPixelFormat a2, __n128 a3)
{
  v3 = a2;
  v5 = *(*a1 + 16);
  v6 = *v5;
  v7 = *(*v5 + 331);
  if (((a2 & 1) != 0 || *(*v5 + 331)) && !*(a1 + 32))
  {
    a3.n128_u64[0] = *(a1 + 104);
    RB::RenderFrame::alloc_texture(v5, 0x41uLL, 1u, 1u, 4, 1, &v23, a3);
    if (v23)
    {
      RB::RenderPass::set_attachment(a1, 1, v23, 0, 0, 1);
      v10 = v23;
      if (v23)
      {
        v11 = *(v23 + 2) - 1;
        *(v23 + 2) = v11;
        if (!v11)
        {
          (*(*v10 + 8))(v10);
        }
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  v8 = v3;
  if (((v3 & 2) != 0 || v7) && !*(a1 + 56))
  {
    if (*(a1 + 8) && ((v12 = *(a1 + 16), v13 = RB::pixel_format_traits(v12, a2), HIDWORD(*(v13 + 4))) ? (v15 = HIDWORD(*(v13 + 4))) : (v15 = v12), v14.n128_u64[0] = *(a1 + 104), RB::RenderFrame::alloc_texture(*(*a1 + 16), v15, 1u, *(a1 + 128), 5, 1, &v23, v14), v23))
    {
      RB::RenderPass::set_attachment(a1, 2, v23, 0, 0, 0);
      v16 = v23;
      if (v23)
      {
        v17 = *(v23 + 2) - 1;
        *(v23 + 2) = v17;
        if (!v17)
        {
          (*(*v16 + 8))(v16);
        }
      }
    }

    else if ((v8 & 2) != 0)
    {
      return 0;
    }
  }

  if ((v8 & 0xC) == 0 && !v7 || *(a1 + 80))
  {
    return 1;
  }

  v18 = RB::Device::depth_stencil_format(v6, (v8 & 8) != 0, (v8 >> 2) & 1);
  v19 = RB::depth_stencil_pixel_format(v18);
  v20.n128_u64[0] = *(a1 + 104);
  RB::RenderFrame::alloc_texture(*(*a1 + 16), v19, 1u, 0x11u, 3, 1, &v23, v20);
  if (v23)
  {
    RB::RenderPass::set_attachment(a1, 3, v23, 0, 0, 1);
    v21 = v23;
    if (v23)
    {
      v22 = *(v23 + 2) - 1;
      *(v23 + 2) = v22;
      if (!v22)
      {
        (*(*v21 + 8))(v21);
      }
    }

    return 1;
  }

  return (v8 & 0xC) == 0;
}