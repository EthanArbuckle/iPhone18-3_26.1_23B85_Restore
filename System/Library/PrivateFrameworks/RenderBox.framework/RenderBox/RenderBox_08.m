double RB::ProtobufDecoder::color_field(uint64_t a1, uint64_t a2)
{
  v2 = 1.08420217e-19;
  if (a2)
  {
    if ((a2 & 7) == 1)
    {
      goto LABEL_5;
    }

    if ((a2 & 7) != 2)
    {
      *(a1 + 56) = 1;
      v2 = 1.08420217e-19;
      v4 = *(a1 + 8);
LABEL_8:
      *a1 = v4;
      return v2;
    }

    if (RB::ProtobufDecoder::begin_packed(a1, a2, 1uLL))
    {
LABEL_5:
      v4 = *a1 + 8;
      v2 = 0.0;
      if (v4 <= *(a1 + 8))
      {
        v2 = **a1;
      }

      goto LABEL_8;
    }
  }

  return v2;
}

char *RB::ProtobufDecoder::data_field(char **this, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 & 7) == 2)
  {
    return RB::ProtobufDecoder::decode_data(this);
  }

  result = 0;
  *(this + 56) = 1;
  *this = this[1];
  return result;
}

uint64_t RB::Path::Object::$_7::__invoke(uint64_t this, const void *a2)
{
  if (atomic_fetch_add_explicit((this + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::Refcount<RB::Path::Object,std::atomic<unsigned int>>::release(this);
  }

  return this;
}

void *RB::details::realloc_vector<unsigned int,4ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 4 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(4 * a5);
    v9 = v8 >> 2;
    if (*a4 != (v8 >> 2))
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 4 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

uint64_t RB::ProtobufDecoder::next_field(RB::ProtobufDecoder *this)
{
  v2 = *this;
  v1 = *(this + 1);
  if (*this >= v1)
  {
    v3 = 0;
    *(this + 2) = 0;
    return v3;
  }

  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 3);
    if (v2 < v4)
    {
      return v3;
    }

    if (v2 > v4)
    {
      *(this + 56) = 1;
      v2 = v1;
    }

    *(this + 2) = 0;
  }

  if (v2 >= v1)
  {
    goto LABEL_11;
  }

  v5 = 0;
  v3 = 0;
  while (1)
  {
    v6 = v2 + 1;
    *this = v2 + 1;
    v7 = *v2;
    v3 |= (v7 & 0x7F) << v5;
    if ((v7 & 0x80) == 0)
    {
      break;
    }

    v5 += 7;
    v2 = v6;
    if (v6 == v1)
    {
      goto LABEL_11;
    }
  }

  if ((v3 & 0x7FFFFFFF8) == 0)
  {
LABEL_11:
    v3 = 0;
    *(this + 56) = 1;
    *this = v1;
  }

  return v3;
}

char *RB::ProtobufDecoder::decode_data(char **this)
{
  v2 = *this;
  v1 = this[1];
  if (*this >= v1)
  {
LABEL_5:
    v4 = 0;
    *(this + 56) = 1;
    v5 = v1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = v2 + 1;
      *this = v2 + 1;
      v6 = *v2;
      v4 |= (v6 & 0x7F) << v3;
      if ((v6 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      v2 = v5;
      if (v5 == v1)
      {
        goto LABEL_5;
      }
    }
  }

  if (__CFADD__(v5, v4) || &v5[v4] > v1)
  {
    v5 = 0;
    *(this + 56) = 1;
  }

  else
  {
    v1 = &v5[v4];
  }

  *this = v1;
  return v5;
}

uint64_t RB::Path::Storage::Storage(uint64_t this, const char *a2)
{
  *this = 0;
  if (a2 <= 0x3F)
  {
    RB::Path::Storage::Storage(this, a2);
  }

  v2 = a2 - 16;
  if ((a2 - 16) >= 0xFFF)
  {
    v2 = 4095;
  }

  v3 = v2 << 20;
  v4 = atomic_fetch_add_explicit(&RB::Path::Storage::_last_identifier, 1u, memory_order_relaxed) + 1;
  *(this + 8) = v3;
  *(this + 12) = v4;
  return this;
}

BOOL RB::Path::Storage::decode(RB::Path::Storage *this, RB::ProtobufDecoder *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  v104 = 0u;
  v105 = 64;
  *v101 = 0u;
  v102 = 64;
  v98 = 0u;
  v99 = 64;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  field = RB::ProtobufDecoder::next_field(a2);
  v5 = 1;
  if (!field)
  {
    goto LABEL_182;
  }

  v6 = field;
  v90 = this;
  do
  {
    v7 = v6 >> 3;
    if ((v6 >> 3) <= 2)
    {
      if (v7 == 1)
      {
        goto LABEL_15;
      }

      if (v7 != 2)
      {
LABEL_139:
        RB::ProtobufDecoder::skip_field(a2, v6);
        goto LABEL_141;
      }

      v8 = RB::ProtobufDecoder::float_field(a2, v6);
      v9 = v101[1];
      v10 = v101[1] + 1;
      if (v102 < v101[1] + 1)
      {
        RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v100, v10);
        v9 = v101[1];
        v10 = v101[1] + 1;
      }

      v11 = v101[0];
      if (!v101[0])
      {
        v11 = v100;
      }

      *&v11[8 * v9] = v8;
      v101[1] = v10;
    }

    else
    {
      if (v7 != 5)
      {
        if (v7 != 4)
        {
          if (v7 != 3)
          {
            goto LABEL_139;
          }

LABEL_15:
          v12 = RB::ProtobufDecoder::data_field(a2, v6);
          *(&v104 + 1) = 0;
          if (v13)
          {
            v14 = v12;
            v15 = v13;
            if (v105 < v13)
            {
              RB::vector<unsigned char,64ul,unsigned long>::reserve_slow(__dst, v13);
            }

            *(&v104 + 1) = v15;
            if (v104)
            {
              v16 = v104;
            }

            else
            {
              v16 = __dst;
            }

            memcpy(v16, v14, v15);
            if (v7 == 1)
            {
              v17 = *(&v104 + 1);
              v18 = v104;
              if (!v104)
              {
                v18 = __dst;
              }

              if (*(&v104 + 1))
              {
                do
                {
                  *v18++ &= 0x1Fu;
                  --v17;
                }

                while (v17);
              }
            }
          }

          goto LABEL_141;
        }

        v23 = v95;
        v24 = v95 + 1;
        if (v96 < v95 + 1)
        {
          v23 = v95;
          v24 = v95 + 1;
        }

        v25 = v94;
        *(v94 + 16 * v23) = 0;
        v95 = v24;
        if ((v6 & 7) != 2)
        {
          *(a2 + 56) = 1;
          *a2 = *(a2 + 1);
          goto LABEL_141;
        }

        RB::ProtobufDecoder::begin_message(a2);
        v26 = RB::ProtobufDecoder::next_field(a2);
        if (!v26)
        {
LABEL_140:
          RB::ProtobufDecoder::end_message(a2);
          goto LABEL_141;
        }

        v27 = v26;
        v28 = &v25[64 * v24];
        v29 = v28 - 48;
        while (2)
        {
          v30 = v27 >> 3;
          if ((v27 >> 3) <= 2)
          {
            if (v30 == 1)
            {
              if (!*(v28 - 16))
              {
                *(v28 - 16) = 1;
                *(v28 - 3) = xmmword_195E42760;
                *(v28 - 2) = xmmword_195E42770;
                *(v28 - 2) = 0;
                *(v28 - 1) = 0;
                if ((v27 & 7) == 2)
                {
                  RB::ProtobufDecoder::begin_message(a2);
                  RB::AffineTransform::decode((v28 - 48), a2);
                  goto LABEL_135;
                }

                goto LABEL_138;
              }
            }

            else if (v30 == 2 && !*(v28 - 16))
            {
              *(v28 - 16) = 2;
              *v29 = 0u;
              *(v28 - 2) = 0u;
              if ((v27 & 7) == 2)
              {
                RB::ProtobufDecoder::begin_message(a2);
                v31 = RB::ProtobufDecoder::next_field(a2);
                if (v31)
                {
                  v32 = v31;
                  do
                  {
                    v33 = v32 >> 3;
                    if ((v32 >> 3) == 3)
                    {
                      v36 = RB::ProtobufDecoder::float_field(a2, v32);
                      v37 = *(v28 - 4);
                      v38 = v37 + 1;
                      if (*(v28 - 3) < (v37 + 1))
                      {
                        RB::vector<unsigned long,0ul,unsigned long>::reserve_slow((v28 - 40), v38);
                        v37 = *(v28 - 4);
                        v38 = v37 + 1;
                      }

                      *(*(v28 - 5) + 8 * v37) = v36;
                      *(v28 - 4) = v38;
                    }

                    else if (v33 == 2)
                    {
                      v35 = RB::ProtobufDecoder::uint_field(a2, v32);
                      if (v35 <= 2)
                      {
                        *(v28 - 11) = v35;
                      }
                    }

                    else if (v33 == 1)
                    {
                      v34 = RB::ProtobufDecoder::uint_field(a2, v32);
                      if (v34 <= 6)
                      {
                        *v29 = v34;
                      }
                    }

                    else
                    {
                      RB::ProtobufDecoder::skip_field(a2, v32);
                    }

                    v32 = RB::ProtobufDecoder::next_field(a2);
                  }

                  while (v32);
                }

                goto LABEL_135;
              }

LABEL_138:
              *(a2 + 56) = 1;
              *a2 = *(a2 + 1);
LABEL_136:
              v27 = RB::ProtobufDecoder::next_field(a2);
              if (!v27)
              {
                goto LABEL_140;
              }

              continue;
            }

            goto LABEL_124;
          }

          break;
        }

        if (v30 == 3)
        {
          if (!*(v28 - 16))
          {
            *(v28 - 16) = 3;
            *(v28 - 24) = 0;
            if ((v27 & 7) != 2)
            {
              goto LABEL_138;
            }

            RB::ProtobufDecoder::begin_message(a2);
            v55 = RB::ProtobufDecoder::next_field(a2);
            if (v55)
            {
              v56 = v55;
              do
              {
                if ((v56 >> 3) == 2)
                {
                  *(v28 - 47) = RB::ProtobufDecoder::BOOL_field(a2, v56);
                }

                else if ((v56 >> 3) == 1)
                {
                  v57 = RB::ProtobufDecoder::uint_field(a2, v56);
                  if (v57 <= 6)
                  {
                    *v29 = v57;
                  }
                }

                else
                {
                  RB::ProtobufDecoder::skip_field(a2, v56);
                }

                v56 = RB::ProtobufDecoder::next_field(a2);
              }

              while (v56);
            }

LABEL_135:
            RB::ProtobufDecoder::end_message(a2);
            goto LABEL_136;
          }

LABEL_124:
          RB::ProtobufDecoder::skip_field(a2, v27);
          goto LABEL_136;
        }

        if (v30 != 4 || *(v28 - 16))
        {
          goto LABEL_124;
        }

        *(v28 - 16) = 4;
        *(v28 - 6) = 0x100000000;
        *(v28 - 4) = 0;
        *(v28 - 3) = 0;
        *(v28 - 5) = 0;
        if ((v27 & 7) != 2)
        {
          goto LABEL_138;
        }

        RB::ProtobufDecoder::begin_message(a2);
        v39 = RB::ProtobufDecoder::next_field(a2);
        if (!v39)
        {
          goto LABEL_135;
        }

        v40 = v39;
        while (2)
        {
          v41 = v40 >> 3;
          if ((v40 >> 3) <= 3)
          {
            if (v41 == 1)
            {
              v54 = RB::ProtobufDecoder::uint_field(a2, v40);
              if (v54 <= 6)
              {
                *(v28 - 11) = v54;
              }

              goto LABEL_117;
            }

            if (v41 != 2)
            {
              if (v41 != 3)
              {
                goto LABEL_105;
              }

              v52 = *v29 | RB::ProtobufDecoder::BOOL_field(a2, v40);
LABEL_116:
              *v29 = v52;
              goto LABEL_117;
            }

            if (RB::ProtobufDecoder::BOOL_field(a2, v40))
            {
              v53 = 4;
            }

            else
            {
              v53 = 0;
            }
          }

          else if (v41 > 5)
          {
            if (v41 == 6)
            {
              if (RB::ProtobufDecoder::BOOL_field(a2, v40))
              {
                v53 = 8;
              }

              else
              {
                v53 = 0;
              }
            }

            else
            {
              if (v41 != 7)
              {
                goto LABEL_105;
              }

              if (RB::ProtobufDecoder::BOOL_field(a2, v40))
              {
                v53 = 16;
              }

              else
              {
                v53 = 0;
              }
            }
          }

          else
          {
            if (v41 != 4)
            {
              if (v41 == 5)
              {
                v42 = *(v28 - 4);
                v43 = v42 + 1;
                if (*(v28 - 3) < (v42 + 1))
                {
                  RB::vector<std::pair<unsigned long,unsigned long>,0ul,unsigned long>::reserve_slow((v28 - 40), v42 + 1);
                  v42 = *(v28 - 4);
                  v43 = v42 + 1;
                }

                v44 = *(v28 - 5);
                v45 = (v44 + 16 * v42);
                *v45 = 0;
                v45[1] = 0;
                *(v28 - 4) = v43;
                if ((v40 & 7) == 2)
                {
                  RB::ProtobufDecoder::begin_message(a2);
                  v46 = RB::ProtobufDecoder::next_field(a2);
                  if (v46)
                  {
                    v47 = v46;
                    v48 = v44 + 16 * v43;
                    while (1)
                    {
                      v49 = v47 >> 3;
                      if ((v47 >> 3) > 3)
                      {
                        break;
                      }

                      switch(v49)
                      {
                        case 1:
                          *(v48 - 12) = RB::ProtobufDecoder::float_field(a2, v47);
                          break;
                        case 2:
                          *(v48 - 8) = RB::ProtobufDecoder::float_field(a2, v47);
                          break;
                        case 3:
                          *(v48 - 4) = RB::ProtobufDecoder::float_field(a2, v47);
                          break;
                        default:
                          goto LABEL_85;
                      }

LABEL_92:
                      v47 = RB::ProtobufDecoder::next_field(a2);
                      if (!v47)
                      {
                        goto LABEL_93;
                      }
                    }

                    switch(v49)
                    {
                      case 4:
                        v51 = *(v48 - 16) | RB::ProtobufDecoder::BOOL_field(a2, v47);
                        goto LABEL_91;
                      case 5:
                        if (RB::ProtobufDecoder::BOOL_field(a2, v47))
                        {
                          v50 = 2;
                        }

                        else
                        {
                          v50 = 0;
                        }

LABEL_90:
                        v51 = *(v48 - 16) | v50;
LABEL_91:
                        *(v48 - 16) = v51;
                        goto LABEL_92;
                      case 6:
                        if (RB::ProtobufDecoder::BOOL_field(a2, v47))
                        {
                          v50 = 8;
                        }

                        else
                        {
                          v50 = 0;
                        }

                        goto LABEL_90;
                    }

LABEL_85:
                    RB::ProtobufDecoder::skip_field(a2, v47);
                    goto LABEL_92;
                  }

LABEL_93:
                  RB::ProtobufDecoder::end_message(a2);
                }

                else
                {
                  *(a2 + 56) = 1;
                  *a2 = *(a2 + 1);
                }

LABEL_117:
                v40 = RB::ProtobufDecoder::next_field(a2);
                if (!v40)
                {
                  goto LABEL_135;
                }

                continue;
              }

LABEL_105:
              RB::ProtobufDecoder::skip_field(a2, v40);
              goto LABEL_117;
            }

            if (RB::ProtobufDecoder::BOOL_field(a2, v40))
            {
              v53 = 2;
            }

            else
            {
              v53 = 0;
            }
          }

          break;
        }

        v52 = *v29 | v53;
        goto LABEL_116;
      }

      v19 = RB::ProtobufDecoder::double_field(a2, v6);
      v20 = *(&v98 + 1);
      v21 = *(&v98 + 1) + 1;
      if (v99 < *(&v98 + 1) + 1)
      {
        RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v97, v21);
        v20 = *(&v98 + 1);
        v21 = *(&v98 + 1) + 1;
      }

      v22 = v98;
      if (!v98)
      {
        v22 = v97;
      }

      *&v22[8 * v20] = v19;
      *(&v98 + 1) = v21;
    }

LABEL_141:
    v6 = RB::ProtobufDecoder::next_field(a2);
  }

  while (v6);
  v58 = *(&v104 + 1);
  if (v104)
  {
    v59 = v104;
  }

  else
  {
    v59 = __dst;
  }

  v5 = 1;
  if (!*(&v104 + 1))
  {
    goto LABEL_182;
  }

  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = *(&v104 + 1);
  v65 = v59;
  while (2)
  {
    v66 = *v65 & 0x3F;
    if ((*v65 & 0x3Fu) > 0x18)
    {
LABEL_181:
      v5 = 0;
      goto LABEL_182;
    }

    if ((*v65 & 0x80) != 0)
    {
      v67 = 0;
      if ((*v65 & 0x3Fu) > 0x13)
      {
        if ((v66 - 22) >= 2)
        {
          if (v66 == 20)
          {
            v67 = 3;
          }

          else
          {
            if (v66 != 24)
            {
              goto LABEL_165;
            }

            v67 = 4;
          }
        }
      }

      else if ((*v65 & 0x3Fu) > 0x11)
      {
        if (v66 != 18)
        {
          v67 = 2;
        }
      }

      else if (v66 != 4 && v66 != 16)
      {
LABEL_165:
        v67 = 1;
      }

      if (v62 >= v95 || *(v94 + 16 * v62) != v67)
      {
        goto LABEL_181;
      }

      ++v62;
    }

    v69 = __RBPathElementArgumentCount[v66];
    if ((*v65 & 0x40) != 0)
    {
      v61 += v69;
      if (v61 > *(&v98 + 1))
      {
        goto LABEL_181;
      }
    }

    else
    {
      v60 += v69;
      if (v60 > v101[1])
      {
        goto LABEL_181;
      }
    }

    if (v66 <= 0x18)
    {
      if (((1 << v66) & 0x1DE0000) != 0)
      {
        ++v63;
      }

      else if (v66 == 16)
      {
        if (!v63)
        {
          goto LABEL_181;
        }

        --v63;
      }
    }

    ++v65;
    if (--v64)
    {
      continue;
    }

    break;
  }

  v5 = v63 == 0;
  if (!v63)
  {
    v76 = v94;
    v77 = v98;
    if (!v98)
    {
      v77 = v97;
    }

    v78 = v101[0];
    if (!v101[0])
    {
      v78 = v100;
    }

    do
    {
      v79 = *v59;
      v80 = *v59;
      if (v79 < 0)
      {
        v82 = v80 & 0x3F;
        v81 = v76 + 4;
        if (v82 == 24 || v82 == 19)
        {
          v91[0] = *v81;
          v81 = v91;
          v91[1] = v76[5];
          v92 = *(v76 + 4);
          v93 = *(v76 + 3);
        }

        v76 += 16;
      }

      else
      {
        v81 = 0;
        v82 = v79 & 0xFFFFFFBF;
      }

      if (v82 > 0x18)
      {
        v83 = 0;
      }

      else
      {
        v83 = __RBPathElementArgumentCount[v82];
      }

      v84 = (v80 & 0x40) == 0;
      if ((v80 & 0x40) != 0)
      {
        v85 = 0;
      }

      else
      {
        v85 = v83;
      }

      v86 = &v78[v85];
      if (v84)
      {
        v87 = 0;
      }

      else
      {
        v87 = v83;
      }

      v88 = &v77[v87];
      if (v84)
      {
        v89 = v78;
      }

      else
      {
        v89 = v77;
      }

      RB::Path::Storage::append_element(v90, v82, v89, v81);
      ++v59;
      v77 = v88;
      v78 = v86;
      --v58;
    }

    while (v58);
    v5 = 1;
  }

LABEL_182:
  v70 = v94;
  v71 = v95;
  if (v95)
  {
    v72 = 0;
    v73 = (v94 + 24);
    do
    {
      v74 = *(v73 - 6);
      if ((v74 == 4 || v74 == 2) && *v73)
      {
        free(*v73);
        v71 = v95;
      }

      ++v72;
      v73 += 8;
    }

    while (v72 < v71);
    v70 = v94;
  }

  if (v70)
  {
    free(v70);
  }

  if (v98)
  {
    free(v98);
  }

  if (v101[0])
  {
    free(v101[0]);
  }

  if (v104)
  {
    free(v104);
  }

  return v5;
}

void sub_195D51AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  RB::Path::Storage::~Storage(&a9);
  MEMORY[0x19A8C09E0](v9, v10);
  _Unwind_Resume(a1);
}

float RB::ProtobufDecoder::float_field(uint64_t a1, uint64_t a2)
{
  v2 = 0.0;
  if (a2)
  {
    v4 = a2 & 7;
    if (v4 == 1)
    {
      v5 = *a1 + 8;
      if (v5 <= *(a1 + 8))
      {
        v2 = **a1;
      }

      goto LABEL_11;
    }

    if (v4 == 5)
    {
      goto LABEL_6;
    }

    if (v4 != 2)
    {
      *(a1 + 56) = 1;
      v5 = *(a1 + 8);
LABEL_11:
      *a1 = v5;
      return v2;
    }

    if (RB::ProtobufDecoder::begin_packed(a1, a2, 5uLL))
    {
LABEL_6:
      v5 = *a1 + 4;
      if (v5 <= *(a1 + 8))
      {
        v2 = **a1;
      }

      goto LABEL_11;
    }
  }

  return v2;
}

uint64_t RB::ProtobufDecoder::begin_packed(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 >= v3)
  {
LABEL_5:
    v6 = 0;
    *(a1 + 56) = 1;
    *a1 = v3;
    v7 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = v4 + 1;
      *a1 = v4 + 1;
      v8 = *v4;
      v6 |= (v8 & 0x7F) << v5;
      if ((v8 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v4 = v7;
      if (v7 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  v9 = &v7[v6];
  if (__CFADD__(v7, v6) || !v6 || v9 > v3)
  {
    v10 = 0;
    *(a1 + 56) = 1;
    *a1 = v3;
  }

  else
  {
    *(a1 + 16) = a2 & 0xFFFFFFF8 | a3;
    *(a1 + 24) = v9;
    return 1;
  }

  return v10;
}

uint64_t RB::Path::Mapper::StackItem::moveto(uint64_t a1, __n128 a2)
{
  *(a1 + 32) = a2;
  *(a1 + 64) = 0;
  return (*(**(a1 + 16) + 16))();
}

void RB::Path::CGPathTransform::moveto(RB::Path::CGPathTransform *this, __n128 a2)
{
  v3 = *(this + 1);
  if (!v3)
  {
    x = a2;
    RB::Path::CGPathTransform::reset(this);
    a2 = x;
    v3 = *(this + 1);
  }

  CGPathMoveToPoint(v3, 0, a2.n128_f64[0], a2.n128_f64[1]);
}

void RB::Path::BooleanTransform::commit(RB::Path::BooleanTransform *this)
{
  if (*(this + 24))
  {
    CopyByNormalizing = *(this + 4);
    if (!CopyByNormalizing)
    {
      return;
    }

    goto LABEL_3;
  }

  CopyByNormalizing = CGPathCreateCopyByNormalizing(*(this + 1), *(this + 25));
  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 4) = CopyByNormalizing;
  if (CopyByNormalizing)
  {
LABEL_3:
    v3 = *(this + 2);
    v5[0] = v3;
    v5[1] = 0;
    CGPathApply(CopyByNormalizing, v5, RB::Path::Iterator::callback_1);
    (**v3)(v3);
  }
}

void RB::Path::CGPathTransform::quadto(RB::Path::CGPathTransform *this, __n128 a2, __n128 a3)
{
  v3 = a3;
  v5 = *(this + 1);
  if (!v5)
  {
    v6 = a2;
    RB::Path::CGPathTransform::reset(this);
    a2 = v6;
    v3 = a3;
    v5 = *(this + 1);
  }

  CGPathAddQuadCurveToPoint(v5, 0, a2.n128_f64[0], a2.n128_f64[1], v3.n128_f64[0], v3.n128_f64[1]);
}

uint64_t RB::Path::Mapper::StackItem::lineto(uint64_t a1, __n128 a2)
{
  *(a1 + 32) = a2;
  *(a1 + 64) = 0;
  return (*(**(a1 + 16) + 24))();
}

void RB::Path::CGPathTransform::closepath(RB::Path::CGPathTransform *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CGPathCloseSubpath(v1);
  }
}

void RB::Path::BooleanTransform::endpath(RB::Path::BooleanTransform *this)
{
  v2 = *(this + 4);
  v3 = *(this + 24);
  if (v2)
  {
    if (*(this + 24) > 3u)
    {
      switch(v3)
      {
        case 4:
          v11 = *(this + 1);
          if (!v11)
          {
            return;
          }

          CopyBySymmetricDifferenceOfPath = CGPathCreateCopyBySymmetricDifferenceOfPath(v2, v11, *(this + 25));
          goto LABEL_26;
        case 5:
          v13 = *(this + 1);
          if (v13)
          {
            CopyBySymmetricDifferenceOfPath = CGPathCreateCopyOfLineByIntersectingPath(v2, v13, *(this + 25));
            goto LABEL_26;
          }

          break;
        case 6:
          v9 = *(this + 1);
          if (v9)
          {
            CopyBySymmetricDifferenceOfPath = CGPathCreateCopyOfLineBySubtractingPath(v2, v9, *(this + 25));
LABEL_26:
            v14 = CopyBySymmetricDifferenceOfPath;
            v15 = *(this + 4);
            if (v15)
            {
              CFRelease(v15);
            }

            *(this + 4) = v14;
            return;
          }

          break;
        default:
          return;
      }
    }

    else
    {
      if (v3 != 1)
      {
        if (v3 == 2)
        {
          v12 = *(this + 1);
          if (!v12)
          {
            return;
          }

          CopyBySymmetricDifferenceOfPath = CGPathCreateCopyByUnioningPath(v2, v12, *(this + 25));
        }

        else
        {
          if (v3 != 3)
          {
            return;
          }

          v4 = *(this + 1);
          if (!v4)
          {
            return;
          }

          CopyBySymmetricDifferenceOfPath = CGPathCreateCopyBySubtractingPath(v2, v4, *(this + 25));
        }

        goto LABEL_26;
      }

      v10 = *(this + 1);
      if (v10)
      {
        CopyBySymmetricDifferenceOfPath = CGPathCreateCopyByIntersectingPath(v2, v10, *(this + 25));
        goto LABEL_26;
      }
    }

    CFRelease(v2);
    *(this + 4) = 0;
    return;
  }

  if (*(this + 24))
  {
    v6 = *(this + 1);
    if (v6)
    {
      v7 = CFRetain(v6);
      v8 = *(this + 1);
      *(this + 4) = v7;
      if (v8)
      {
        CFRelease(v8);
      }
    }

    *(this + 1) = 0;
  }
}

uint64_t RB::Path::Iterator::callback_1(uint64_t this, void *a2, const CGPathElement *a3)
{
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return (*(**this + 24))(*a2[1]);
      }
    }

    else
    {
      return (*(**this + 16))(*a2[1]);
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        return (*(**this + 32))(*a2[1], *(a2[1] + 16));
      case 3:
        return (*(**this + 40))(*a2[1], *(a2[1] + 16), *(a2[1] + 32));
      case 4:
        return (*(**this + 8))();
    }
  }

  return this;
}

_DWORD *RB::Path::Storage::MapCache::Destination::lineto(uint64_t a1, __n128 a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a2;
  return RB::Path::Storage::append_element((*(a1 + 8) + 16), 1, v3.n128_f64, 0);
}

uint64_t RB::DisplayList::GenericEffect<RB::CustomEffect>::color_info(uint64_t a1, uint64_t a2)
{
  result = RB::CustomShader::Closure::color_info((a1 + 16));
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

void RB::CustomEffect::dod(float32x2_t *this, float32x2_t *a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int32x4_t a6, int8x16_t a7)
{
  *a3.i8 = vabs_f32(this[22]);
  *a5.i8 = *a2;
  *a4.i8 = a2[1];
  *a7.i8 = vmla_f32(*a4.i8, 0x4000000040000000, *a3.i8);
  *a6.i8 = vcgt_f32(vneg_f32(0x80000000800000), *a4.i8);
  *a3.i8 = vsub_f32(*a2, *a3.i8);
  v8 = vcltzq_s32(a6);
  *a2 = vbslq_s8(v8, a3, a5).u64[0];
  a2[1] = vbslq_s8(v8, a7, a4).u64[0];
  v9 = this[21];
  if (v9 && (this[32].i8[0] & 0x10) == 0)
  {
    *v11.i8 = RB::DisplayList::Layer::bounds(v9);
    v12 = vabs_f32(this[23]);
    *v14.i8 = vcgt_f32(vneg_f32(0x80000000800000), *v13.i8);
    *v15.i8 = vsub_f32(*v11.i8, v12);
    v16 = vcltzq_s32(v14);
    *&v17 = vbslq_s8(v16, v15, v11).u64[0];
    *v18.i8 = vmla_f32(*v13.i8, 0x4000000040000000, v12);
    v19 = vbslq_s8(v16, v18, v13).u64[0];
    if ((this[32].i8[0] & 0x40) != 0)
    {

      RB::Rect::intersect(a2, v17, v19);
    }

    else
    {

      RB::Rect::Union(a2, v17, v19);
    }
  }
}

uint64_t RB::CustomEffect::splits_parent(RB::CustomEffect *this, int32x2_t *a2, const RB::BoundsAccumulator *a3)
{
  result = *(this + 21);
  if (result)
  {
    if (*(result + 76))
    {
      if (!a3)
      {
        return 1;
      }

      v7 = RB::DisplayList::Layer::bounds(result);
      RB::Bounds::Bounds(v17, v7, v8, v9, v10);
      RB::Bounds::intersect(v17, *a2, a2[1]);
      v13 = vcgtz_s32(v17[1]);
      if ((vpmin_u32(v13, v13).u32[0] & 0x80000000) != 0)
      {
        v14 = *(this + 23);
        v15 = vmvn_s8(vceqz_f32(*&v14));
        v16 = COERCE_DOUBLE(vpmax_u32(v15, v15));
        if ((LODWORD(v16) & 0x80000000) != 0)
        {
          *&v16 = -ceilf(fabsf(*&v14));
          *&v14 = -ceilf(fabsf(*(&v14 + 1)));
          RB::Bounds::inset(v17, *&v16, *&v14, v14, v16, v11, v12);
        }
      }

      result = RB::BoundsAccumulator::intersects(a3, v17);
      if (result)
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double RB::CustomEffect::roi(float32x2_t *this, float32x2_t *a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int32x4_t a6, int8x16_t a7)
{
  *a3.i8 = vabs_f32(this[22]);
  *a5.i8 = *a2;
  *a4.i8 = a2[1];
  *a7.i8 = vmla_f32(*a4.i8, 0x4000000040000000, *a3.i8);
  *a6.i8 = vcgt_f32(vneg_f32(0x80000000800000), *a4.i8);
  *a3.i8 = vsub_f32(*a2, *a3.i8);
  v7 = vcltzq_s32(a6);
  a3.i64[0] = vbslq_s8(v7, a3, a5).u64[0];
  *a2 = *a3.i8;
  a2[1] = vbslq_s8(v7, a7, a4).u64[0];
  return *a3.i64;
}

void *RB::details::realloc_vector<unsigned long,16ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 16 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(16 * a5);
    v9 = v8 >> 4;
    if (v8 >> 4 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 16 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<anonymous namespace::AnimationTimer::Link,2ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 6) + (*(__dst + 6) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 6) + (*(__dst + 6) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,16ul>(*(__dst + 4), __dst, 2uLL, __dst + 6, v3);
  *(__dst + 4) = result;
  return result;
}

void RB::extended_display_p3_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D54F0))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0D8]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D54E8);

    __cxa_guard_release(v1);
  }
}

void *RB::vector<RB::Symbol::Tag,4ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 7) + (*(__dst + 7) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 7) + (*(__dst + 7) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,4ul>(*(__dst + 2), __dst, 4u, __dst + 7, v3);
  *(__dst + 2) = result;
  return result;
}

float RB::Transition::Effect::set_begin_time(RB::Transition::Effect *this, float a2)
{
  v2 = *this;
  if ((*this & 0x40) != 0)
  {
    v2 = *this & 0xFFBF | 0xFF000000;
  }

  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  result = (a2 * 255.0) + 0.5;
  *this = v2 & 0xFF00FFFF | (result << 16);
  return result;
}

void RBPathMakeWithData(const __CFData *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  RB::Heap::Heap(v4, 0, 0, 0);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v5[0] = BytePtr;
  v5[1] = &BytePtr[Length];
  v5[2] = 0;
  memset(&v5[4], 0, 24);
  v6 = 0;
  v7 = v4;
  v8 = 0;
  RB::UntypedTable::UntypedTable(v9, 0, 0, 0, 0);
  memset(&v9[64], 0, 48);
  uuid_clear(v10);
  v11 = 0;
  v12 = 1;
  RBPathDecode(v5);
}

void sub_195D527B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  RB::Decoder::~Decoder(&a17);
  RB::Heap::~Heap(&a12);
  _Unwind_Resume(a1);
}

uint64_t *RBDrawingStateSetTransition(uint64_t *result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v2 = result;
  result = [(RBTransition *)a2 rb_transition];
  v3 = result;
  v4 = v2[11];
  if (*(result + 16) != 1)
  {
LABEL_11:
    if (v4 == result)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v4)
  {
    if (*(v4 + 3))
    {
      if (*(v4 + 16) != 1 || v4 == result)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:
  RB::DisplayList::State::set_transition(v2, result);
  v7 = v2[1];
  if (!*(v7 + 24))
  {
    make_contents(v2[1]);
  }

  result = *(v7 + 320);
  if (result)
  {

    RB::XML::DisplayList::transition(result, v2, v3, v6);
  }

  return result;
}

atomic_uint *RB::DisplayList::State::set_transition(RB::DisplayList::State *this, const RB::Transition *a2)
{
  if (*(a2 + 3))
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  result = *(this + 11);
  if (result != v3)
  {
    if (result && atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      result = RB::DisplayList::State::operator=(result);
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else if (!v3)
    {
LABEL_9:
      *(this + 11) = v3;
      *(this + 15) = 0;
      return result;
    }

    atomic_fetch_add_explicit(v3 + 2, 1u, memory_order_relaxed);
    goto LABEL_9;
  }

  return result;
}

float32x2_t RB::Path::BoundingRect::cubeto(float32x2_t *a1, float64x2_t a2, float64x2_t a3, int8x16_t a4, double a5, double a6, double a7, int32x4_t a8, int8x16_t a9)
{
  v9 = a4;
  v11 = vcvt_f32_f64(a2);
  *a4.i8 = vcvt_f32_f64(a3);
  v12 = vcvt_f32_f64(v9);
  v13 = *&a1[3];
  v14 = COERCE_DOUBLE(vminnm_f32(*&v13, v12));
  v15 = vmaxnm_f32(*&v13, v12);
  *a8.i8 = vcge_f32(v15, vmaxnm_f32(v11, *a4.i8));
  v16 = vand_s8(*a8.i8, vcge_f32(vminnm_f32(v11, *a4.i8), *&v14));
  v17 = COERCE_DOUBLE(vpmin_u32(v16, v16));
  if ((LODWORD(v17) & 0x80000000) == 0)
  {
    *&a2.f64[0] = a1[3];
    v14 = RB::Path::cubic_bounds_slow(a2, v11, a4, v12, v13, v17, a8, a9);
  }

  result = vminnm_f32(a1[1], *&v14);
  v19 = vmaxnm_f32(a1[2], v15);
  a1[1] = result;
  a1[2] = v19;
  a1[3] = v12;
  return result;
}

void RB::Path::CGPathTransform::reset(RB::Path::CGPathTransform *this)
{
  Mutable = CGPathCreateMutable();
  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 1) = Mutable;
}

uint64_t RB::Path::Mapper::StackItem::quadto(uint64_t a1, double a2, __n128 a3)
{
  *(a1 + 32) = a3;
  *(a1 + 64) = 0;
  return (*(**(a1 + 16) + 32))();
}

void RB::Path::CGPathTransform::lineto(RB::Path::CGPathTransform *this, __n128 a2)
{
  v3 = *(this + 1);
  if (!v3)
  {
    x = a2;
    RB::Path::CGPathTransform::reset(this);
    a2 = x;
    v3 = *(this + 1);
  }

  CGPathAddLineToPoint(v3, 0, a2.n128_f64[0], a2.n128_f64[1]);
}

uint64_t RB::Path::Mapper::StackItem::closepath(uint64_t this)
{
  if ((*(this + 64) & 1) == 0)
  {
    v1 = this;
    *(this + 32) = *(this + 48);
    this = (*(**(this + 16) + 8))(*(this + 16));
    *(v1 + 64) = 1;
  }

  return this;
}

unsigned __int8 *RB::DisplayList::CustomEffectStyle::draw(RB::DisplayList::CustomEffectStyle *this, size_t **a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  v10 = *(this + 232);
  v28 = *(this + 240);
  v29 = v10;
  if ((*(this + 264) & 0x20) == 0)
  {
    RB::CustomEffect::transform_border(&v29, *(this + 2));
    if (*(this + 28))
    {
      RB::CustomEffect::transform_border(&v28, *(this + 2));
    }
  }

  v11 = *(this + 28);
  if (v11)
  {
    v12 = RB::DisplayList::Layer::copy(v11, a2, 0);
  }

  else
  {
    v12 = 0;
  }

  v13 = a2[1];
  v14 = *(this + 2);
  v15 = (v13[4] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v15 + 304 > v13[5])
  {
    v15 = RB::Heap::alloc_slow(v13 + 2, 0x130uLL, 15);
  }

  else
  {
    v13[4] = v15 + 304;
  }

  *v15 = &unk_1F0A3A378;
  v17 = v28;
  v16 = v29;
  v18 = *(this + 66);
  RB::CustomShader::Closure::Closure((v15 + 16), (this + 56));
  *(v15 + 184) = v12;
  *(v15 + 192) = v16;
  *(v15 + 200) = v17;
  v19 = *v14;
  v20 = v14[2];
  *(v15 + 224) = v14[1];
  *(v15 + 240) = v20;
  *(v15 + 208) = v19;
  *(v15 + 256) = *(this + 248);
  *(v15 + 272) = v18;
  *(v15 + 288) = 1;
  v21 = a2[1];
  *(v15 + 8) = v21[39];
  v21[39] = v15;
  if ((*(this + 66) & 8) != 0)
  {
    v22 = 272;
  }

  else
  {
    v22 = 256;
  }

  v23 = RB::DisplayList::Builder::ensure_layer(a2, a4, v22, 0.0);
  v24 = *(this + 3);
  *(v23 + 2) = *(this + 4);
  *(v23 + 3) = RB::DisplayList::Builder::join_clip_lists(a2, *(v23 + 3), v24);
  v25 = *(this + 28);
  if (v25 && (*(v25 + 76) & 0x1001) != 0)
  {
    *(v23 + 23) |= 0x800u;
  }

  v26 = 72;
  if ((*(v23 + 23) & 0xC0) == 0x40)
  {
    v26 = 56;
  }

  *(v23 + v26) = v15 | 2;
  return RB::DisplayList::Builder::draw(a2, v23, a3, a5);
}

RB::RenderTask *RB::CustomEffect::prepare(RB::CustomEffect *this, const RB::RenderParams **a2)
{
  RB::CustomShader::Closure::prepare(this, a2[134]);
  result = *(this + 21);
  if (result)
  {
    v7 = a2[182];
    v14 = *(v7 + 2);
    v8 = *(this + 23);
    v9 = vmvn_s8(vceqz_f32(*&v8));
    v10 = COERCE_DOUBLE(vpmax_u32(v9, v9));
    if ((LODWORD(v10) & 0x80000000) != 0)
    {
      *&v10 = -ceilf(fabsf(*&v8));
      *&v8 = -ceilf(fabsf(*(&v8 + 1)));
      RB::Bounds::inset(&v14, *&v10, *&v8, v8, v10, v4, v5);
      result = *(this + 21);
    }

    RB::DisplayList::Layer::make_task(result, a2, &v14, 2, 0, 0, &v13, *&v14, *(&v14 + 1), *(*(v7 + 1) + 128), v5);
    result = v13;
    if (v13)
    {
      *(v7 + 6) += RB::RenderTask::bytes(v13, v11);
      RB::DisplayList::LayerTask::add_task(*(v7 + 1), a2, *(this + 21), 0, &v13);
      result = v13;
      if (v13)
      {
        v12 = *(v13 + 2) - 1;
        *(v13 + 2) = v12;
        if (!v12)
        {
          return (*(*result + 8))(result);
        }
      }
    }
  }

  return result;
}

void sub_195D52E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    RB::CustomEffect::prepare(a10);
  }

  _Unwind_Resume(exception_object);
}

void RB::Transition::~Transition(RB::Transition *this)
{
  *this = &unk_1F0A37220;
  v2 = *(this + 10);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0x19A8C09E0);
}

{
  *this = &unk_1F0A37220;
  v2 = *(this + 10);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    free(v3);
  }
}

uint64_t RB::Refcount<RB::Transition,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

int32x2_t *RB::render_masks(int32x2_t *result, int32x2_t *a2, unint64_t a3, uint64_t a4, RB::Buffer *a5, unsigned __int8 *a6, int a7, char a8, float32x4_t a9, double a10, uint16x4_t a11)
{
  if (a5)
  {
    v16 = result;
    if (result[16].i32[1] == 2)
    {
      v17 = 131083;
    }

    else
    {
      v17 = 11;
    }

    if (a7)
    {
      v18 = 0x10000;
    }

    else
    {
      v18 = 0;
    }

    *a9.f32 = result[14];
    v31 = *a9.f32;
    v19 = result[15].i32[0];
    a9.i32[0] = result[15].i32[1];
    RB::Fill::Color::prepare(a6, result[16].u8[0], a9, a10, a11);
    v21 = v20;
    v16[25].i32[1] = RB::RenderFrame::buffer_id(*(*v16 + 16), *a4);
    v16[26] = vmovn_s64(*(a4 + 8));
    v22 = RB::RenderFrame::buffer_id(*(*v16 + 16), a5);
    v16[27].i32[1] = 0;
    v16[28].i32[0] = 0;
    v16[27].i32[0] = v22;
    RB::RenderFrame::alloc_buffer_region(*(*v16 + 16), 0x24, 4uLL, 0, &v32);
    v23 = v32;
    if (v32)
    {
      v24 = vneg_f32(v31);
      v24.i32[0] = 0;
      v25 = *(v32 + 7) + v33.i64[0];
      *v25 = v31.u32[0];
      *(v25 + 8) = v24;
      __asm { FMOV            V0.2S, #-1.0 }

      *(v25 + 16) = -_D0;
      *(v25 + 24) = v19;
      *(v25 + 28) = v21;
    }

    else
    {
      v32 = 0;
      v33 = 0uLL;
    }

    v16[24].i32[0] = RB::RenderFrame::buffer_id(*(*v16 + 16), v23);
    *(v16 + 196) = vmovn_s64(v33);
    result = RB::RenderPass::draw_indexed_primitives(v16, (v18 | v17 | ((a8 & 0x3F) << 32)), 4, **(*v16 + 16) + 136, 4uLL, a3, *a2, a2[1]);
    *(&v16[25] + 4) = 0;
    *(&v16[26] + 4) = 0;
    *(&v16[27] + 4) = 0;
  }

  return result;
}

void sub_195D530E0(_Unwind_Exception *a1)
{
  *(v1 + 208) = 0;
  *(v1 + 204) = 0;
  _Unwind_Resume(a1);
}

int32x2_t *RB::render_glyphs(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,RB::Fill::Color const&,BOOL,RB::BlendMode)::Renderer::draw_masks(uint64_t a1, int32x2_t *a2, unint64_t a3, uint64_t a4, RB::Buffer *a5, float32x4_t a6, int32x2_t a7, uint16x4_t a8)
{
  v9[0] = *a6.f32;
  v9[1] = a7;
  return RB::render_masks(a2, v9, a3, a4, a5, *(a1 + 8), *(a1 + 16), *(a1 + 20), a6, *&a7, a8);
}

const RB::DisplayList::ClipNode *RB::DisplayList::Builder::null_style_draw(const RB::DisplayList::ClipNode *result, const RB::DisplayList::ClipNode *a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v6 = 0;
    result = a2;
    do
    {
      v7 = *(v3 + 24);
      if (v6 != v7)
      {
        result = RB::DisplayList::Builder::join_clip_lists(a3, *(v3 + 24), a2);
        v6 = v7;
      }

      *(v3 + 24) = result;
      v3 = *(v3 + 8);
    }

    while (v3);
  }

  return result;
}

int32x2_t *RB::CustomEffect::render(uint64_t a1, uint64_t a2, _BYTE *a3, int8x16_t *a4, RB::Texture *a5, __n128 a6, float a7, uint64_t a8, float64x2_t *a9, float32x2_t *a10, char a11, __int16 a12, char a13)
{
  result = *a1;
  if (result)
  {
    _S8 = a7;
    if ((*(a1 + 256) & 3) == 2)
    {
      v22 = 3;
    }

    else if ((*(a1 + 256) & 3) != 0)
    {
      v22 = 0;
    }

    else if (*(a1 + 168))
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    v23 = *(*a3 + 16);
    *&v24 = a1 + 8;
    v25 = *(a1 + 144);
    if (*(a1 + 136))
    {
      v24 = *(a1 + 136);
    }

    *v133.i64 = v24;
    *&v133.i64[1] = v25;
    result = RB::CustomShader::Function::function(result, v23, v22, &v133);
    if (result)
    {
      v26 = result;
      RB::RenderFrame::add_function(*(*a3 + 16), result);
      result = RB::RenderFrame::alloc_buffer_region(*(*a3 + 16), (v26[14].u32[0] + 56), 4uLL, 0, &v131);
      if (v131)
      {
        v27 = *(a1 + 208);
        v133 = *(a1 + 192);
        v134 = v27;
        v135 = *(a1 + 224);
        v28 = RB::AffineTransform::invert(&v133);
        if (v28)
        {
          v29 = &v133;
        }

        else
        {
          v29 = (a1 + 192);
        }

        v30 = *v29;
        v31 = (a1 + 208);
        if (v28)
        {
          v31 = &v134;
        }

        v32 = *v31;
        v33 = (a1 + 224);
        if (v28)
        {
          v33 = &v135;
        }

        v34 = vmlaq_n_f64(vmlaq_n_f64(*v33, v30, -a6.n128_u32[0]), v32, -a6.n128_u32[1]);
        v128 = v30;
        v129 = v32;
        v130 = v34;
        *v35.i64 = RB::operator*(a9, &v128);
        v108 = v36;
        v109 = v35;
        v111 = v37;
        v133 = v35;
        v134 = v36;
        v135 = v37;
        if (RB::AffineTransform::invert(&v133))
        {
          v39 = -1;
        }

        else
        {
          v39 = 0;
        }

        v40 = vdupq_n_s64(v39);
        v41 = vbslq_s8(v40, v133, v109);
        v42 = vbslq_s8(v40, v134, v108);
        v43.i64[1] = v135.i64[1];
        v44.i64[1] = v111.i64[1];
        v133 = v41;
        v134 = v42;
        v135 = vbslq_s8(v40, v135, v111);
        v127 = *a4;
        *v40.i8 = vabs_f32(*(a1 + 176));
        v42.i64[0] = v127.i64[1];
        v43.i64[0] = v127.i64[0];
        *v41.i8 = vcgt_f32(vneg_f32(0x80000000800000), v127.u64[1]);
        *v44.i8 = vsub_f32(*v127.i8, *v40.i8);
        v45 = vcltzq_s32(v41);
        v43.i64[0] = vbslq_s8(v45, v44, v43).u64[0];
        *v38.i8 = vmla_f32(v127.u64[1], 0x4000000040000000, *v40.i8);
        v43.i64[1] = vbslq_s8(v45, v38, v42).u64[0];
        v127 = v43;
        v46 = *(v131 + 7) + v132.i64[0];
        v47 = a3[128];
        v125 = 0;
        v126 = 0uLL;
        v123 = 0;
        v124 = 0;
        v122 = a5;
        result = RB::CustomShader::Closure::marshal_args(a1, a3, v26, v47, (a1 + 240), v46 + 56, &v125, &v122);
        if (result)
        {
          result = RB::CustomShader::Closure::marshal_layer_arg(a1, a3, (v46 + 56), v26[16].i32[0], &v133, a10);
          if (result)
          {
            v49 = *(a1 + 168);
            if (!v49)
            {
              goto LABEL_42;
            }

            v50 = *(a2 + 1456);
            if (v50)
            {
              result = *(v50 + 8);
              if (result)
              {
                v119 = xmmword_195E42760;
                v120 = xmmword_195E42770;
                v121 = 0uLL;
                v117 = 0;
                v118 = 0;
                task = RB::DisplayList::LayerTask::find_task(result, v49, 0);
                if (task)
                {
                  v54 = task;
                  v55 = task[8];
                  if (v55)
                  {
                    v56 = *(*&v55 + 16);
                    v57 = task[15];
                    v58 = vceq_s32(v57, 0x8000000080000000);
                    if ((vpmin_u32(v58, v58).u32[0] & 0x80000000) != 0)
                    {
                      *v52.i8 = vneg_f32(0x80000000800000);
                      v53.i64[0] = 0x100000001000000;
                      v61 = 0x100000001000000;
                    }

                    else
                    {
                      v59 = task[14];
                      v60 = vsub_s32(vadd_s32(task[4], v59), task[13]);
                      v53.i64[1] = a6.n128_i64[1];
                      *v53.i8 = vcvt_f32_s32(vadd_s32(v59, a6.n128_u64[0]));
                      *v52.i8 = vcvt_f32_s32(v57);
                      v61 = vcvt_f32_s32(v60);
                    }

                    v117 = v61;
                    v118 = *v52.i8;
                    v112 = v52;
                    v114 = vcvt_f32_s32(v56[8]);
                    v62 = vdiv_f32(vmul_f32(*v52.i8, v114), *v52.i8);
                    v110 = v53;
                    v63 = vsub_f32(*v53.i8, vdiv_f32(vmul_f32(v61, *v52.i8), *v52.i8));
                    v64.f64[0] = 0.0;
                    v64.f64[1] = v62.f32[1];
                    v116[0] = COERCE_UNSIGNED_INT64(v62.f32[0]);
                    v116[1] = v64;
                    v116[2] = vcvtq_f64_f32(v63);
                    *&v65 = RB::operator*(v116, &v128);
                    v115[0] = v65;
                    v115[1] = v66;
                    v115[2] = v67;
                    v68 = RB::AffineTransform::inverse(v115);
                    v119 = v68;
                    v120 = v69;
                    v121 = _Q2;
                    v72 = *(a1 + 256);
                    if ((v72 & 0x10) == 0)
                    {
                      v73 = vabs_f32(*(a1 + 184));
                      v74.i64[1] = v110.i64[1];
                      v68.n128_u64[0] = vcgt_f32(vneg_f32(0x80000000800000), *v112.i8);
                      *_Q2.i8 = vsub_f32(*v110.i8, v73);
                      v75 = vcltzq_s32(v68);
                      *&v76 = vbslq_s8(v75, _Q2, v110).u64[0];
                      *v74.i8 = vmla_f32(*v112.i8, 0x4000000040000000, v73);
                      v77 = vbslq_s8(v75, v74, v112).u64[0];
                      if ((v72 & 0x40) != 0)
                      {
                        RB::Rect::intersect(&v127, v76, v77);
                      }

                      else
                      {
                        RB::Rect::Union(&v127, v76, v77);
                      }
                    }

                    if (v54[28].i8[0])
                    {
                      *_Q2.i8 = v117;
                      *v69.i8 = v118;
                      v68.n128_u64[0] = vcgt_f32(vneg_f32(0x80000000800000), v118);
                      *v71.i8 = vadd_f32(v117, 0xBF000000BF000000);
                      v78 = vcltzq_s32(v68);
                      v79 = vbslq_s8(v78, v71, _Q2).u64[0];
                      __asm { FMOV            V2.2S, #1.0 }

                      *_Q2.i8 = vadd_f32(v118, *_Q2.i8);
                      v69.i64[0] = vbslq_s8(v78, _Q2, v69).u64[0];
                    }

                    else
                    {
                      v68.n128_u32[0] = 0.5;
                      RB::Rect::inset(&v117, v68.n128_u64[0], 0.5);
                      v79 = v117;
                      *v69.i8 = v118;
                    }

                    v84 = vrecpe_f32(v114.u32[0]);
                    v85 = vmul_f32(vrecps_f32(v114.u32[0], v84), v84);
                    v86 = vrecpe_f32(v114.u32[1]);
                    v87 = vmul_f32(vrecps_f32(v114.u32[1], v86), v86);
                    v88 = vmul_f32(vzip1_s32(v85, v87), vzip1_s32(vrecps_f32(v114.u32[0], v85), vrecps_f32(v114.u32[1], v87)));
                    v117 = vmul_f32(v88, v79);
                    v118 = vmul_f32(*v69.i8, v88);
                    v123 = v56;
                  }
                }

                result = RB::CustomShader::Closure::marshal_layer_arg(a1, a3, (v46 + 56), v26[16].i32[1], &v119, &v117);
                if (result)
                {
LABEL_42:
                  v48.i32[0] = 0;
                  v89 = *(a3 + 176);
                  v90 = vceq_s32(v89, 0x8000000080000000);
                  v91 = vdup_lane_s32(vcgt_s32(v48, vpmin_u32(v90, v90)), 0);
                  RB::Rect::intersect(&v127, COERCE_DOUBLE(vbsl_s8(v91, 0x100000001000000, vcvt_f32_s32(*(a3 + 168)))), vbsl_s8(v91, vneg_f32(0x80000000800000), vcvt_f32_s32(v89)));
                  RB::Coverage::set_plane(v46, a3, *v127.i8, *&v127.i64[1]);
                  v92 = *(a3 + 13);
                  v93.i64[0] = v92;
                  v93.i64[1] = SHIDWORD(v92);
                  __asm { FMOV            V1.2D, #0.5 }

                  _Q0 = vmulq_f64(vcvtq_f64_s64(v93), _Q1);
                  v96 = vmulq_n_f64(v128, _Q0.f64[0]);
                  v97 = vmulq_n_f64(v129, -_Q0.f64[1]);
                  v98 = vmlaq_laneq_f64(vaddq_f64(v96, v130), v129, _Q0, 1);
                  *(v46 + 28) = vcvt_f32_f64(v96);
                  *(v46 + 36) = vcvt_f32_f64(v97);
                  *(v46 + 44) = vcvt_f32_f64(v98);
                  __asm { FCVT            H0, S8 }

                  *(v46 + 52) = LOWORD(_Q0.f64[0]);
                  v99 = RB::Function::Info::texture_count(&v26[5]);
                  if (*(a3 + 33) == 2)
                  {
                    v100 = 131109;
                  }

                  else
                  {
                    v100 = 37;
                  }

                  if (a11)
                  {
                    v101 = 0x10000;
                  }

                  else
                  {
                    v101 = 0;
                  }

                  v102 = v101 | v100 | ((*(a1 + 256) & 4 | (8 * (v26[6].i32[0] & 7)) | v99 & 3u) << 6);
                  v103 = a13 & 0x3Fu | (v26->i32[1] << 6);
                  v104 = v99 & 3;
                  if ((v99 & 3) != 0)
                  {
                    v105 = &v122;
                    do
                    {
                      if (!*v105)
                      {
                        *v105 = RB::Device::clear_texture(**(*a3 + 16));
                      }

                      ++v105;
                      --v104;
                    }

                    while (v104);
                  }

                  *(a3 + 48) = RB::RenderFrame::buffer_id(*(*a3 + 16), v131);
                  *(a3 + 196) = vmovn_s64(v132);
                  *(a3 + 57) = RB::RenderFrame::buffer_id(*(*a3 + 16), v125);
                  *(a3 + 29) = vmovn_s64(v126);
                  RB::RenderPass::set_texture(a3, 0, v122, MTLPixelFormatInvalid);
                  RB::RenderPass::set_texture(a3, 1, v123, MTLPixelFormatInvalid);
                  RB::RenderPass::set_texture(a3, 2, v124, MTLPixelFormatInvalid);
                  RB::Bounds::Bounds(&v119, *v127.i8, v127.u64[1], v106, v107);
                  result = RB::RenderPass::draw_indexed_primitives(a3, (v102 | (v103 << 32)), 4, **(*a3 + 16) + 136, 4uLL, 1uLL, *&v119.f64[0], *&v119.f64[1]);
                  *(a3 + 62) = 0;
                  a3[252] = 0;
                  *(a3 + 64) = 0;
                  a3[260] = 0;
                  *(a3 + 236) = 0;
                  *(a3 + 228) = 0;
                  a3[244] = 0;
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

uint64_t RB::CustomShader::Closure::marshal_layer_arg(RB::CustomShader::Closure *this, RB::RenderPass *a2, unsigned __int8 *a3, int a4, float64x2_t *a5, float32x2_t *a6)
{
  v6 = &a3[4 * a4];
  *v6 = vcvt_f32_f64(*a5);
  v6[1] = vcvt_f32_f64(a5[1]);
  v6[2] = vcvt_f32_f64(a5[2]);
  v6[3] = *a6;
  v6[4] = vadd_f32(a6[1], *a6);
  return 1;
}

size_t *RBDrawingStateClipLayer(uint64_t contents, RB::DisplayList::State *a2, int a3, float a4)
{
  v7 = contents;
  v8 = *(contents + 8);
  if (!v8[3])
  {
    contents = make_contents(*(contents + 8));
  }

  if (v8 != *(a2 + 1))
  {
    RBDrawingStateAssign_cold_1(contents, a2);
  }

  v9 = RB::DisplayList::Builder::end_layer((v8 + 2), a2);
  RB::DisplayList::Builder::delete_state((v8 + 2), a2);
  v10 = rb_clip_mode(a3);
  RB::DisplayList::Builder::clip_layer(v8 + 2, v9, v7, v10, a4);
  result = v8[40];
  if (result)
  {

    RB::XML::DisplayList::clip_layer();
  }

  return result;
}

char *RBDrawingStateAssign(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    RBDrawingStateAssign_cold_1(a1, a2);
  }

  RB::DisplayList::State::operator=(a1, a2);
  result = *(v2 + 320);
  if (result)
  {

    return RB::XML::DisplayList::copy_state(result, a2, a1, v5);
  }

  return result;
}

uint64_t RB::DisplayList::State::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 16) = v4;
  v6 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v6;
  v7 = *(a1 + 88);
  v8 = *(a2 + 88);
  if (v7 != v8)
  {
    if (v7)
    {
      if (atomic_fetch_add_explicit((v7 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::DisplayList::State::operator=(v7);
      }

      v8 = *(a2 + 88);
    }

    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
    }

    *(a1 + 88) = v8;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 156) = *(a2 + 156);
  return a1;
}

void *RB::DisplayList::GenericClip<RB::Coverage::Primitive>::copy(uint64_t a1, RB::DisplayList::CachedTransform *this, uint64_t a3, int a4)
{
  v7 = *(*this + 8);
  v8 = *(a1 + 44);
  if (a4)
  {
    v8 = *(a1 + 44) == 0;
  }

  v20 = v8;
  v19 = RB::DisplayList::CachedTransform::transform_ctm(this, *(a1 + 48));
  if ((*(a1 + 45) & 4) != 0)
  {
    v15 = *(a1 + 45) & 4;
  }

  else if (*(*this + 288))
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Primitive>,RB::Heap&,RB::Coverage::Primitive&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v7 + 16), v9, v10, v11, v12, v13, v14, v7 + 16, (a1 + 64), (a1 + 112), &v20, &v19);
  *(v16 + 32) = RB::DisplayList::CachedTransform::transform_metadata(this, *(a1 + 32), *(a1 + 40));
  *(v16 + 40) = v17;
  *(v16 + 45) |= v15;
  result = ((*(this + 3) + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((result + 2) > *(this + 4))
  {
    result = RB::Heap::alloc_slow(this + 1, 0x10uLL, 7);
  }

  else
  {
    *(this + 3) = result + 2;
  }

  *result = a3;
  result[1] = v16;
  return result;
}

uint64_t RB::DisplayList::Layer::Effect::needs_zero_alpha(RB::DisplayList::Layer::Effect *this)
{
  if ((*this & 3) == 2)
  {
    return (*(*(*this & 0xFFFFFFFFFFFFFFFCLL) + 96))();
  }

  else
  {
    return 0;
  }
}

RB::CustomShader::Function *RB::CustomShader::Function::Function(RB::CustomShader::Function *this, atomic_uint *a2, NSString *a3, int a4)
{
  *(this + 2) = 1;
  *this = &unk_1F0A39080;
  atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  *(this + 2) = a2;
  *(this + 3) = [(NSString *)a3 copy];
  *(this + 8) = a4;
  *(this + 18) = 256;
  if (*(*(this + 2) + 24) == 5)
  {
    if ([(NSString *)a3 isEqualToString:RBSystemShaderDistanceGradient])
    {
      v7 = 1;
LABEL_8:
      *(this + 36) = v7;
      return this;
    }

    if ([(NSString *)a3 isEqualToString:RBSystemShaderOvalizeGradient])
    {
      v7 = 2;
      goto LABEL_8;
    }

    if ([(NSString *)a3 isEqualToString:RBSystemShaderDisplacementMap])
    {
      v7 = 3;
      goto LABEL_8;
    }
  }

  return this;
}

void RB::CustomShader::Library::set_abi_version(os_unfair_lock_s *this, uint32_t a2)
{
  os_unfair_lock_lock(this + 12);
  if (this[8]._os_unfair_lock_opaque)
  {
    RB::precondition_failure("shader library ABI version has already been set", v4);
  }

  this[8]._os_unfair_lock_opaque = a2;

  os_unfair_lock_unlock(this + 12);
}

int *RB::Transition::Effect::set_remove_animation(int *this, unsigned __int8 a2)
{
  v2 = *this;
  if ((*this & 0x40) == 0)
  {
    v2 = *this | 0x40;
  }

  *this = v2 & 0xFFFFFF | (a2 << 24);
  return this;
}

int *RB::Transition::Effect::set_insert_animation(int *this, unsigned __int8 a2)
{
  v2 = *this;
  if ((*this & 0x40) == 0)
  {
    v2 = *this | 0x40;
  }

  *this = v2 & 0xFF00FFFF | (a2 << 16);
  return this;
}

void *RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 9) + (*(__dst + 9) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 9) + (*(__dst + 9) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,4ul>(*(__dst + 3), __dst, 6u, __dst + 9, v3);
  *(__dst + 3) = result;
  return result;
}

uint64_t RB::Path::Object::$_12::__invoke(RB::Path::Object::$_12 *this, const void *a2)
{
  v2 = *(this + 6);
  v3 = 1;
  if ((v2 & 2) != 0)
  {
    v3 = 2;
  }

  if ((v2 & 4) != 0)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void RB::CustomShader::Library::set_binary_archive_url(RB::CustomShader::Library *this, NSURL *a2)
{
  os_unfair_lock_lock(this + 12);
  if (*(this + 5))
  {
    RB::precondition_failure("binary archive URL has already been set", v4);
  }

  v5 = [(NSURL *)a2 copy];

  *(this + 5) = v5;

  os_unfair_lock_unlock(this + 12);
}

BOOL RB::Coverage::anonymous namespace::visit_rounded_rect(void (***a1)(void, float32x2_t *), uint64_t a2, int a3, float64x2_t *a4, unsigned int a5, float64_t a6, float64_t a7, double a8, float a9, float a10)
{
  if (CGRectIsInfinite(*a2))
  {
    v40 = 0x100000001000000;
    v41 = vneg_f32(0x80000000800000);
    v42 = 0uLL;
    v43 = 1065353216;
    v44 = 0.0;
    v45 = 257;
LABEL_3:
    v46 = 0;
    (**a1)(a1, &v40);
    return 1;
  }

  if (a3 && a5 > 1)
  {
    return 0;
  }

  result = RB::Rect::representable_cgrect(a2, v17);
  if (result)
  {
    v19 = vcvt_f32_f64(*a2);
    v20 = vcvt_f32_f64(*(a2 + 16));
    v21 = vbsl_s8(vcltz_f32(v20), vadd_f32(v20, v19), v19);
    v22 = vabs_f32(v20);
    v38 = v21;
    v39 = v22;
    v23.f64[0] = a6;
    v23.f64[1] = a7;
    v24 = vcvt_f32_f64(v23);
    *v23.f64 = fminf(v22.f32[0], v22.f32[1]) * 0.5;
    v25 = vminnm_f32(vmaxnm_f32(v24, 0), vdup_lane_s32(*&v23.f64[0], 0));
    if (a4)
    {
      v35 = v25;
      v38 = RB::operator*(a4, v21, v22);
      v39 = v26;
      v27 = vmaxnm_f32(v35, 0);
      v25 = vabs_f32(vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(*a4, v27.f32[0]), a4[1], v27.f32[1])));
    }

    if (*&a8 == 0.0)
    {
      goto LABEL_13;
    }

    v28 = vsub_f32(v25, vdup_lane_s32(*&a8, 0));
    v29 = vcltz_f32(v28);
    v30 = vpmax_u32(v29, v29);
    if (v30.i32[0] < 0)
    {
      return 0;
    }

    v30.i32[0] = LODWORD(a8);
    v36 = v28;
    result = RB::Rect::inset(&v38, v30, *&a8);
    v25 = v36;
    if (result)
    {
LABEL_13:
      v31 = 1.0;
      v32 = 2;
      if (v25.f32[0] <= 0.0 || v25.f32[1] <= 0.0)
      {
        goto LABEL_25;
      }

      if (a3 == 1)
      {
        v25 = vmul_f32(v25, vdup_n_s32(0x3FA33333u));
        v32 = 4;
      }

      else if (!a3)
      {
        if ((vceq_f32(v39, vdup_lane_s32(v39, 1)).u8[0] & (v25.f32[0] == v25.f32[1]) & ((0.5 * v39.f32[0]) == v25.f32[0])) != 0)
        {
          v32 = 5;
        }

        else
        {
          v32 = 3;
        }
      }

      LODWORD(v31) = vdiv_f32(v25, vdup_lane_s32(v25, 1)).u32[0];
      if (a9 == 0.0 || v31 == 1.0)
      {
        v38.f32[0] = (1.0 / v31) * v38.f32[0];
        v39.f32[0] = (1.0 / v31) * v39.f32[0];
LABEL_25:
        v40 = v38;
        v41 = v39;
        v42 = vdupq_lane_s32(v25, 1);
        v43 = __PAIR64__(LODWORD(a9), LODWORD(v31));
        v44 = a10;
        LOBYTE(v45) = v32;
        HIBYTE(v45) = a5;
        goto LABEL_3;
      }

      return 0;
    }
  }

  return result;
}

uint64_t RB::DisplayList::ClipFactory::Visitor<RB::Coverage::Path>::visit(uint64_t a1, _OWORD *a2, int8x16_t a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8)
{
  result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Primitive>,RB::Heap&,RB::Coverage::Primitive&,float &,RB::ClipMode &,RB::AffineTransform const*&>(**(a1 + 8), a3, a4, a5, a6, a7, a8, **(a1 + 8), a2, (*(a1 + 8) + 8), (*(a1 + 8) + 12), (*(a1 + 8) + 16));
  *(*(a1 + 8) + 32) = result;
  return result;
}

uint64_t RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Path,RB::Fill::Color>::visit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Color>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 10, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 122) = _H0;
  }

  v3[7] = result;
  return result;
}

void RB::gray_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D5520))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D5518);

    __cxa_guard_release(v1);
  }
}

void RB::UntypedTable::grow_buckets(RB::UntypedTable *this)
{
  v1 = *(this + 14);
  if (v1 <= 0x1E)
  {
    v3 = *(this + 4);
    *(this + 14) = v1 + 1;
    v4 = malloc_type_calloc(1 << (v1 + 1), 8uLL, 0x2004093837F09uLL);
    v5 = *(this + 14);
    if (v4)
    {
      v6 = 0;
      v7 = ~(-1 << v5);
      *(this + 6) = v7;
      do
      {
        v8 = v3[v6];
        if (v8)
        {
          do
          {
            v9 = *v8;
            v10 = v8[3] & v7;
            *v8 = v4[v10];
            v4[v10] = v8;
            v8 = v9;
          }

          while (v9);
        }

        ++v6;
      }

      while (!(v6 >> v1));
      *(this + 4) = v4;

      free(v3);
    }

    else
    {
      *(this + 14) = v5 - 1;
    }
  }
}

void RB::SharedSurfaceGroup::relocate_surface(RB::SharedSurface *,BOOL,unsigned int)::$_0::operator()(uint64_t *a1, uint64_t a2, double a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  add_explicit = atomic_fetch_add_explicit((*a1 + 56), 1u, memory_order_relaxed);
  os_unfair_lock_lock((a2 + 116));
  if (!*(a2 + 128) && !*(a2 + 144))
  {
    *a1[1] = 1;
  }

  v8 = add_explicit + 1;
  v9 = *a1[2];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

  *buf = v9;
  v10 = a1[3];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  }

  *&buf[8] = v10;
  v11 = a1[2];
  *&buf[16] = *(v11 + 24);
  *&buf[20] = v8;
  *&buf[24] = *(v11 + 8);
  *&buf[32] = a3;
  *&buf[40] = *(v11 + 16);
  LOBYTE(v30) = *(v11 + 32);
  v12 = *(a2 + 144);
  if (*(a2 + 148) < v12 + 1)
  {
    v7 = RB::vector<RB::SharedSurface::Copy,0ul,unsigned int>::reserve_slow(a2 + 136, v12 + 1);
    v12 = *(a2 + 144);
  }

  v13 = *(a2 + 136) + 56 * v12;
  *v13 = v9;
  *(v13 + 8) = v10;
  *buf = 0;
  *&buf[8] = 0;
  v14 = *&buf[16];
  v15 = *&buf[32];
  *(v13 + 48) = v30;
  *(v13 + 16) = v14;
  *(v13 + 32) = v15;
  ++*(a2 + 144);
  atomic_fetch_add_explicit((*a1[2] + 24), 1u, memory_order_relaxed);
  v16 = RB::shared_surface_log(v7);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = a1[2];
    v17 = a1[3];
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    *buf = 134219776;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = LODWORD(a3);
    *&buf[18] = 1024;
    *&buf[20] = HIDWORD(a3);
    *&buf[24] = 2048;
    *&buf[26] = v17;
    *&buf[34] = 1024;
    *&buf[36] = v19;
    *&buf[40] = 1024;
    *&buf[42] = HIDWORD(v19);
    *&buf[46] = 1024;
    v30 = v20;
    v31 = 1024;
    v32 = HIDWORD(v20);
    _os_log_impl(&dword_195CE8000, v16, OS_LOG_TYPE_INFO, "%p: schedule_copy [%d, %d], from %p [%d, %d; %d, %d]\n", buf, 0x3Au);
  }

  v21 = a1[2];
  v22 = *v21;
  if (*v21)
  {
    atomic_fetch_add_explicit((v22 + 8), 1u, memory_order_relaxed);
    v21 = a1[2];
  }

  v23 = v21[2];
  v24 = *(a1 + 8);
  v25 = *(v21 + 32);
  v26 = *(a2 + 88);
  if (*(a2 + 92) < v26 + 1)
  {
    RB::vector<RB::DisplayList::Interpolator::Contents::AnimationTableItem,0ul,unsigned int>::reserve_slow(a2 + 80, v26 + 1);
    v26 = *(a2 + 88);
  }

  v27 = *(a2 + 80) + 40 * v26;
  *v27 = v22;
  *(v27 + 8) = a3;
  *(v27 + 16) = v23;
  *(v27 + 24) = v8;
  *(v27 + 28) = v24;
  *(v27 + 32) = v25;
  *(v27 + 33) = 0;
  ++*(a2 + 88);
  *(a1[2] + 33) = 1;
  *(v5 + 60) = 1;
  os_unfair_lock_unlock((a2 + 116));
}

void sub_195D548A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _Unwind_Exception *a11)
{
  if (v12)
  {
    RB::SharedSurfaceGroup::remove_subsurface(v12);
    a1 = a11;
  }

  os_unfair_lock_unlock(v11 + 29);
  _Unwind_Resume(a1);
}

unint64_t RB::AffineTransform::decode(RB::AffineTransform *this, RB::ProtobufDecoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) > 3)
      {
        switch(v6)
        {
          case 4:
            *(this + 3) = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          case 5:
            *(this + 4) = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          case 6:
            *(this + 5) = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          default:
            goto LABEL_14;
        }
      }

      else
      {
        switch(v6)
        {
          case 1:
            *this = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          case 2:
            *(this + 1) = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          case 3:
            *(this + 2) = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          default:
LABEL_14:
            RB::ProtobufDecoder::skip_field(a2, v5);
            break;
        }
      }

      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

int8x16_t RB::Decoder::affine_transform_field(size_t **this, char a2)
{
  v8 = xmmword_195E42760;
  v9 = xmmword_195E42770;
  v10 = 0uLL;
  if ((a2 & 7) == 2)
  {
    RB::ProtobufDecoder::begin_message(this);
    RB::AffineTransform::decode(&v8, this);
    if ((this[7] & 1) == 0 && *this <= this[1])
    {
      this[1] = this[4][this[5] - 1];
    }

    this[5] = (this[5] - 1);
  }

  else
  {
    *(this + 56) = 1;
    *this = this[1];
  }

  v3 = this[23];
  if (!v3 || (result = vandq_s8(vandq_s8(vceqq_f64(v3[1], v9), vceqq_f64(*v3, v8)), vceqq_f64(v3[2], v10)), result.i64[0] = vandq_s8(vdupq_laneq_s64(result, 1), result).u64[0], (result.i64[0] & 0x8000000000000000) == 0))
  {
    v5 = this[8];
    v6 = (v5[2] + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v6 + 48 > v5[3])
    {
      v6 = RB::Heap::alloc_slow(this[8], 0x30uLL, 15);
    }

    else
    {
      v5[2] = v6 + 48;
    }

    result = v8;
    v7 = v10;
    *(v6 + 16) = v9;
    *(v6 + 32) = v7;
    *v6 = result;
    this[23] = v6;
  }

  return result;
}

uint64_t RB::SharedSurfaceGroup::relocate_surface(RB::SharedSurface *,BOOL,unsigned int)::$_1::__invoke(os_unfair_lock_s *a1)
{
  [MEMORY[0x1E6979518] activateBackground:1];
  RB::SharedSurfaceGroup::render_updates(a1);
  v2 = MEMORY[0x1E6979518];

  return [v2 flush];
}

void RB::SharedSurfaceGroup::move_subsurface(os_unfair_lock_s *this, RB::SharedSurface *a2, uint64_t a3, RB::SharedSubsurface *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 2);
  v8 = *(a2 + 22);
  if (v8)
  {
    v9 = *(a2 + 10) + 24;
    v10 = 40 * v8;
    while (*v9 != a3)
    {
      v9 += 40;
      v10 -= 40;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    RB::SharedSurfaceClient::owner_ref(*(v9 - 24), v19);
    v11 = *v19;

    if ([v11 _willMoveSubsurface:a3])
    {
      os_unfair_lock_unlock(this + 2);
      v13 = RB::shared_surface_log([v11 _moveSubsurface:a4]);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      v17 = *(a4 + 1);
      v18 = *(a4 + 2);
      *v19 = 134219008;
      *&v19[4] = a2;
      v20 = 1024;
      v21 = v17;
      v22 = 1024;
      v23 = HIDWORD(v17);
      v24 = 1024;
      v25 = v18;
      v26 = 1024;
      v27 = HIDWORD(v18);
      v16 = "%p: moved subsurface [%d, %d; %d, %d]\n";
      goto LABEL_8;
    }

    *(v9 + 9) = 0;
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  os_unfair_lock_unlock(this + 2);
  v13 = RB::shared_surface_log(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a4 + 1);
    v15 = *(a4 + 2);
    *v19 = 134219008;
    *&v19[4] = a2;
    v20 = 1024;
    v21 = v14;
    v22 = 1024;
    v23 = HIDWORD(v14);
    v24 = 1024;
    v25 = v15;
    v26 = 1024;
    v27 = HIDWORD(v15);
    v16 = "%p: failed to move subsurface [%d, %d; %d, %d]\n";
LABEL_8:
    _os_log_impl(&dword_195CE8000, v13, OS_LOG_TYPE_INFO, v16, v19, 0x24u);
  }

LABEL_9:
}

uint64_t RB::Path::Mapper::add_ellipse(__n128 *this, CGRect a2, int a3, const CGAffineTransform *a4)
{
  v14 = CGRectStandardize(a2);
  v7 = v14.size.width * 0.5;
  v13.a = v7;
  v8 = -0.5;
  if (!a3)
  {
    v8 = 0.5;
  }

  v13.b = 0.0;
  v13.c = 0.0;
  v13.d = v14.size.height * v8;
  v13.tx = v7 + v14.origin.x;
  v13.ty = v14.origin.y + v14.size.height * 0.5;
  if (a4)
  {
    t1 = v13;
    v9 = *&a4->c;
    *&t2.a = *&a4->a;
    *&t2.c = v9;
    *&t2.tx = *&a4->tx;
    CGAffineTransformConcat(&v13, &t1, &t2);
  }

  RB::Path::Mapper::elt_moveto(this, &v13, xmmword_195E42760);
  RB::Path::Mapper::elt_cubeto(this, &v13, xmmword_195E44BD0, xmmword_195E44BE0, xmmword_195E42770);
  RB::Path::Mapper::elt_cubeto(this, &v13, xmmword_195E44BF0, xmmword_195E44C00, xmmword_195E444C0);
  RB::Path::Mapper::elt_cubeto(this, &v13, xmmword_195E44C10, xmmword_195E44C20, xmmword_195E44C30);
  RB::Path::Mapper::elt_cubeto(this, &v13, xmmword_195E44C40, xmmword_195E44C50, xmmword_195E42760);
  return RB::Path::Mapper::elt_closepath(this);
}

uint64_t RBPathMakeEllipse(_OWORD *a1, double a2, double a3, double a4, double a5)
{
  if (!CGRectIsNull(*&a2))
  {
    if (!a1 || (v7 = a1[1], *&v8.a = *a1, *&v8.c = v7, *&v8.tx = a1[2], CGAffineTransformIsIdentity(&v8)))
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

uint64_t anonymous namespace::make_single_element_path<RBPathMakeEllipse::EllipseArgs>(RBPathMakeEllipse::EllipseArgs &&,CGAffineTransform const*)::{lambda(void const*)#2}::__invoke(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_single_element_path<RBPathMakeEllipse::EllipseArgs>(RBPathMakeEllipse::EllipseArgs &&,CGAffineTransform const*)::Info,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

char *RB::XML::DisplayList::copy_state(RB::XML::DisplayList *this, RB::XML::Document *a2, _RBDrawingState *a3, _RBDrawingState *a4)
{
  v6 = RB::UntypedTable::lookup((this + 40), a2, 0);
  if (RB::UntypedTable::lookup((this + 40), a3, 0))
  {
    RB::XML::Document::push(this, "copy-state");
  }

  result = RB::XML::Document::add_state(this, a3);
  if (v6 || result)
  {
    RB::XML::Document::push(this, "copy-state");
  }

  return result;
}

void RB::DisplayList::interpolated_bounds(RB::DisplayList *this, const RB::DisplayList::Interpolator::Layer *a2, float a3, float32x2_t *a4, float32x2_t *a5, const RB::DisplayList::Contents *a6)
{
  if (RB::DisplayList::Interpolator::Layer::is_fade(this))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0.0;
    if (a4)
    {
      v14 = COERCE_DOUBLE(RB::DisplayList::Layer::bounds(a4 + 40));
      v13 = v15;
    }

    v16 = 0;
    if (a5)
    {
      v16 = RB::DisplayList::Layer::bounds(a5 + 40);
      v12 = v17;
    }

    v20[0] = v16;
    v20[1] = v12;
    RB::Rect::Union(v20, v14, v13);
    return;
  }

  if (!a4)
  {
    v18 = 0;
    if (a5)
    {
      goto LABEL_9;
    }

LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v18 = a4[42];
  if (!a5)
  {
    goto LABEL_11;
  }

LABEL_9:
  v19 = a5[42];
LABEL_12:

  RB::DisplayList::interpolated_bounds(this, a2, a3, v18, v19, v11);
}

void RB::DisplayList::interpolated_bounds(RB::DisplayList *this, const RB::DisplayList::Interpolator::Layer *a2, float a3, RB::DisplayList::Item *a4, const RB::DisplayList::Item *a5, const RB::DisplayList::Item *a6)
{
  v8 = a2;
  v175[12] = *MEMORY[0x1E69E9840];
  v88[0] = 0;
  v88[1] = 0;
  if (RB::DisplayList::Interpolator::Layer::is_fade(this))
  {
    for (; a4; a4 = *(a4 + 1))
    {
      v13 = RB::DisplayList::Item::styled_bounds(a4, 0);
      RB::Rect::Union(v88, v13, v14);
    }

    while (a5)
    {
      v15 = RB::DisplayList::Item::styled_bounds(a5, 0);
      RB::Rect::Union(v88, v15, v16);
      a5 = *(a5 + 1);
    }

    return;
  }

  if (*(this + 248) == 1)
  {
    RB::DisplayList::Builder::Builder(&v126);
    if (*(this + 248) == 1)
    {
      v156 = 0;
      v155 = 0;
      v157 = 32;
      v150 = 0;
      v149 = 0;
      v151 = 32;
      if (a4)
      {
        v18 = 0;
        v19 = a4;
        do
        {
          v20 = v18 + 1;
          if (v157 < v18 + 1)
          {
            RB::vector<RB::DisplayList::Item const*,32ul,unsigned long>::reserve_slow(__dst, v20);
            v18 = v156;
            v20 = v156 + 1;
          }

          v21 = v155;
          if (!v155)
          {
            v21 = __dst;
          }

          v21[v18] = v19;
          v156 = v20;
          v19 = *(v19 + 1);
          v18 = v20;
        }

        while (v19);
      }

      if (a5)
      {
        v25 = v150;
        v26 = a5;
        do
        {
          v27 = v25 + 1;
          if (v151 < v25 + 1)
          {
            RB::vector<RB::DisplayList::Item const*,32ul,unsigned long>::reserve_slow(v142, v27);
            v25 = v150;
            v27 = v150 + 1;
          }

          v28 = v149;
          if (!v149)
          {
            v28 = v142;
          }

          v28[v25] = v26;
          v150 = v27;
          v26 = *(v26 + 1);
          v25 = v27;
        }

        while (v26);
      }

      v106[0] = a4;
      v106[1] = 0;
      v109 = 1;
      v110 = 1;
      v111 = 0;
      v112 = 1;
      v113 = 1;
      v114 = 0;
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 256;
      if (a4)
      {
        v29 = (*(*a4 + 40))(a4);
      }

      else
      {
        v29 = 0;
      }

      v108 = v29 != -1;
      if (v29 == -1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v29;
      }

      v107 = v39;
      v91[0] = a5;
      v91[1] = 0;
      v94 = 1;
      v95 = 1;
      v96 = 0;
      v97 = 1;
      v98 = 1;
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v105 = 256;
      if (a5)
      {
        v40 = (*(*a5 + 40))(a5);
      }

      else
      {
        v40 = 0;
      }

      v93 = v40 != -1;
      if (v40 == -1)
      {
        v41 = 1;
      }

      else
      {
        v41 = v40;
      }

      v92 = v41;
      if (*(this + 22))
      {
        v42 = *(this + 22);
      }

      else
      {
        v42 = this + 16;
      }

      v43 = *(this + 46);
      if (v43)
      {
        v44 = &v42[40 * v43];
        HIDWORD(v45) = 0;
        do
        {
          v46 = *v42 & 0xFLL;
          if (v46 == 1 || v46 == 8)
          {
            if (!v46)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v51 = *(v42 + 2);
            if (v156 <= v51)
            {
              v59 = RB::error_log(v40);
              v40 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
              if (v40)
              {
                v60 = *v42 & 0xF;
                v61 = *(v42 + 2);
                *buf = 67109632;
                *&buf[4] = v60;
                v159.i16[0] = 1024;
                *(v159.i32 + 2) = v61;
                v159.i16[3] = 1024;
                v160 = v156;
                v57 = v59;
                v58 = "invalid from item: %u, %u vs %u";
                goto LABEL_85;
              }

              goto LABEL_132;
            }

            v52 = v155;
            if (!v155)
            {
              v52 = __dst;
            }

            if (v46 == 9)
            {
              v53 = 0;
            }

            else if (*(v42 + 3) == -1)
            {
              v53 = 0;
            }

            else
            {
              v53 = *(v42 + 3);
            }

            v40 = RB::DisplayList::AtomizedItems::reset(v106, v52[v51], v51, v53);
            if ((*v42 & 0xFLL) == 0)
            {
              goto LABEL_90;
            }
          }

          v48 = *(v42 + 4);
          if (v150 > v48)
          {
            v49 = v149;
            if (!v149)
            {
              v49 = v142;
            }

            if (v46 == 9)
            {
              v50 = 0;
            }

            else if (*(v42 + 5) == -1)
            {
              v50 = 0;
            }

            else
            {
              v50 = *(v42 + 5);
            }

            RB::DisplayList::AtomizedItems::reset(v91, v49[v48], v48, v50);
LABEL_90:
            v89._next = *this;
            v89._context = v42;
            *&v89.var0 = a3;
            *(&v89.var0 + 1) = a3;
            LODWORD(v89.var1) = 2139095040;
            WORD2(v89.var1) = v8;
            v90 = 0;
            *&v45 = a3 - *(v42 + 9);
            RB::DisplayList::Interpolator::Contents::animation_time(v89._next, *(v42 + 8), 0, v45, v17);
            *&v17 = 1.0 - *&v45;
            if (v8)
            {
              *&v45 = 1.0 - *&v45;
            }

            v62 = fmaxf(*&v45, 0.0);
            *&v89.var0 = v62;
            context = v89._context;
            v64 = *v89._context & 0xFLL;
            if ((*v89._context & 0xFu) <= 3)
            {
              if ((*v89._context & 0xFu) <= 1)
              {
                if (v64)
                {
                  goto LABEL_117;
                }

                RB::DisplayList::AtomizedItems::effect_bounds(v106, this, &v89, 2u);
LABEL_131:
                RB::Rect::Union(v88, v77, v78);
                goto LABEL_132;
              }

              if (v64 == 2)
              {
                goto LABEL_124;
              }

              if (v64 == 3)
              {
                goto LABEL_115;
              }
            }

            else
            {
              if ((*v89._context & 0xFu) > 6)
              {
                if (v64 != 7)
                {
                  if (v64 != 8)
                  {
                    if (v64 == 9)
                    {
                      v159 = 0;
                      *buf = 0;
                      if (*(v89._context + 3))
                      {
                        v66 = 0;
                        do
                        {
                          v67 = v66 + context[2];
                          v68 = v155;
                          if (!v155)
                          {
                            v68 = __dst;
                          }

                          v69 = RB::DisplayList::Item::styled_bounds(v68[v67], 0);
                          RB::Rect::Union(buf, v69, v70);
                          ++v66;
                          context = v89._context;
                        }

                        while (v66 < *(v89._context + 3));
                      }

                      if (context[5])
                      {
                        v71 = 0;
                        do
                        {
                          v72 = v71 + context[4];
                          v73 = v149;
                          if (!v149)
                          {
                            v73 = v142;
                          }

                          v74 = RB::DisplayList::Item::styled_bounds(v73[v72], 0);
                          RB::Rect::Union(buf, v74, v75);
                          ++v71;
                          context = v89._context;
                        }

                        while (v71 < *(v89._context + 5));
                      }

                      RB::Rect::Union(v88, *buf, v159);
                    }

                    goto LABEL_132;
                  }

LABEL_117:
                  RB::DisplayList::AtomizedItems::effect_bounds(v91, this, &v89, 1u);
                  goto LABEL_131;
                }

LABEL_115:
                v76 = RB::DisplayList::AtomizedItems::styled_bounds(v106);
                RB::Rect::Union(v88, *v76, *(v76 + 8));
                v65 = RB::DisplayList::AtomizedItems::styled_bounds(v91);
LABEL_116:
                v77 = *v65;
                v78 = v65[1];
                goto LABEL_131;
              }

              if ((v64 - 4) < 2)
              {
                v65 = RB::DisplayList::AtomizedItems::styled_bounds(v91);
                goto LABEL_116;
              }

              if (v64 == 6)
              {
LABEL_124:
                if (v62 <= 1.0 && (RB::DisplayList::AtomizedItems::atom_bounds(v106, *v89._context >> 36), *buf = v79, v159 = v80, RB::DisplayList::AtomizedItems::atom_bounds(v91, *v89._context >> 36), *&v121[0] = v81, *(&v121[0] + 1) = v82, v124 = 0.0, v125 = 0, (*(**v106 + 216))(*v106, &v89, buf, v121, v91[0])) && (RB::DisplayList::AtomizedItems::mix_clip_bounds(v106, &v89, &v124, v91) & 1) != 0)
                {
                  RB::Rect::intersect(buf, v124, v125);
                  RB::Rect::Union(v88, *buf, v159);
                }

                else
                {
                  if (!v127)
                  {
                    RB::DisplayList::Builder::reset_contents(&v126);
                  }

                  v121[0] = xmmword_195E42760;
                  v121[1] = xmmword_195E42770;
                  v122 = 0;
                  v123 = 0;
                  RB::DisplayList::CachedTransform::CachedTransform(buf, &v126, v121, 0, 0);
                  v83 = RB::DisplayList::AtomizedItems::mix(v106, &v89, v91, buf);
                  v84 = RB::DisplayList::AtomizedItems::mix_clip_style(v106, &v89, v91, buf);
                  *(v83 + 2) = v85;
                  *(v83 + 3) = v84;
                  v86 = RB::DisplayList::Item::styled_bounds(v83, 0);
                  RB::Rect::Union(v88, v86, v87);
                  (**v83)(v83);
                  RB::UntypedTable::~UntypedTable(v175);
                  RB::UntypedTable::~UntypedTable(&v174);
                  RB::Heap::~Heap(&v159);
                }

                goto LABEL_132;
              }
            }

            goto LABEL_132;
          }

          v54 = RB::error_log(v40);
          v40 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
          if (v40)
          {
            v55 = *v42 & 0xF;
            v56 = *(v42 + 4);
            *buf = 67109632;
            *&buf[4] = v55;
            v159.i16[0] = 1024;
            *(v159.i32 + 2) = v56;
            v159.i16[3] = 1024;
            v160 = v150;
            v57 = v54;
            v58 = "invalid to item: %u, %u vs %u";
LABEL_85:
            _os_log_error_impl(&dword_195CE8000, v57, OS_LOG_TYPE_ERROR, v58, buf, 0x14u);
          }

LABEL_132:
          v42 += 40;
        }

        while (v42 != v44);
      }

      if (v149)
      {
        free(v149);
      }

      if (v155)
      {
        free(v155);
      }
    }

    RB::DisplayList::Builder::~Builder(&v126);
    return;
  }

  __dst[3] = 0x100000000;
  __dst[2] = 0;
  v154 = 0;
  v22 = *this;
  v153 = *(*this + 16);
  __dst[1] = 0;
  __dst[0] = 0xFFFFFFF100000000;
  *&v11 = a3;
  RB::DisplayList::Interpolator::Contents::animation_time(v22, v153, 0, v11, v12);
  v142[0] = *this;
  v142[1] = __dst;
  if (v8)
  {
    v23 = 1.0 - v23;
  }

  v143 = v23;
  v144 = a3;
  v145 = 2139095040;
  v146 = v8;
  v147 = 0;
  v148 = 0;
  *buf = a4;
  v159 = 0;
  v162 = 1;
  v163 = 1;
  v164 = 0;
  v165 = 1;
  v166 = 1;
  v167 = 0;
  v169 = 0;
  v168 = 0;
  v170 = 0;
  v172 = 0;
  v171 = 0;
  v173 = 256;
  if (a4)
  {
    v24 = (*(*a4 + 40))(a4);
  }

  else
  {
    v24 = 0;
  }

  v161 = v24 != -1;
  if (v24 == -1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v24;
  }

  v160 = v30;
  if (v30)
  {
    do
    {
      v31 = RB::DisplayList::AtomizedItems::transition(buf, this);
      if (!RB::Transition::empty_transition(v31, 2))
      {
        RB::DisplayList::AtomizedItems::effect_bounds(buf, this, v142, 2u);
        RB::Rect::Union(v88, v32, v33);
      }

      RB::DisplayList::AtomizedItems::advance(buf, 1);
    }

    while (v159.i32[1] < v160);
  }

  v126 = a5;
  v127 = 0;
  v130 = 1;
  v131 = 1;
  v132 = 0;
  v133 = 1;
  v134 = 1;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v140 = 0;
  v139 = 0;
  v141 = 256;
  if (a5)
  {
    v34 = (*(*a5 + 40))(a5);
  }

  else
  {
    v34 = 0;
  }

  v129 = v34 != -1;
  if (v34 == -1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  v128 = v35;
  if (v35)
  {
    do
    {
      __dst[0] = __dst[0] & 0xFFFFFFFFFFFFFFF0 | 1;
      v36 = RB::DisplayList::AtomizedItems::transition(&v126, this);
      if (RB::Transition::empty_transition(v36, 1))
      {
        __dst[0] = __dst[0] & 0xFFFFFFFFFFFFFFF0 | 8;
      }

      RB::DisplayList::AtomizedItems::effect_bounds(&v126, this, v142, 1u);
      RB::Rect::Union(v88, v37, v38);
      RB::DisplayList::AtomizedItems::advance(&v126, 1);
    }

    while (HIDWORD(v127) < v128);
  }
}

void sub_195D55D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (STACK[0x3D0])
  {
    free(STACK[0x3D0]);
  }

  if (STACK[0x4E8])
  {
    free(STACK[0x4E8]);
  }

  RB::DisplayList::Builder::~Builder(&a61);
  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::AtomizedItems::reset(uint64_t this, const RB::DisplayList::Item *a2, int a3, int a4)
{
  v5 = this;
  if (*this != a2)
  {
    *this = a2;
    *(this + 8) = a3;
    if (a2)
    {
      this = (*(*a2 + 40))(a2);
    }

    else
    {
      this = 0;
    }

    *(v5 + 20) = this != -1;
    if (this == -1)
    {
      v6 = 1;
    }

    else
    {
      v6 = this;
    }

    *(v5 + 16) = v6;
    *(v5 + 88) = 0;
  }

  *(v5 + 12) = a4;
  return this;
}

void RB::DisplayList::Interpolator::Contents::animation_time(RB::DisplayList::Interpolator::Contents *this, int a2, unsigned int a3, double a4, double a5)
{
  if (a2 != -2 && a2 && a2 != -1)
  {
    v5 = (*(this + 13) + 40 * (a2 - 1));
    v6 = *v5 - 1;
    if (v6 >= a3)
    {
      v6 = a3;
    }

    RB::Animation::eval(*(this + 15) + 4 * v5[10 * v6 + 1], v5[10 * v6 + 2], &v5[10 * v6 + 4], a4, a5);
  }
}

uint64_t RB::DisplayList::AtomizedItems::styled_bounds(RB::DisplayList::AtomizedItems *this)
{
  if ((*(this + 88) & 1) == 0)
  {
    *(this + 9) = RB::DisplayList::Item::styled_bounds(*this, 0);
    *(this + 10) = v2;
    *(this + 88) = 1;
  }

  return this + 72;
}

void RB::DisplayList::Builder::draw_interpolated(RB::DisplayList::Layer ***this, RB::DisplayList::State *a2, const RB::DisplayList::Interpolator::Layer *a3, float32_t a4, float a5, const RB::DisplayList::Contents *a6, const RB::DisplayList::Contents *a7, const RB::AffineTransform *a8)
{
  v28[12] = *MEMORY[0x1E69E9840];
  if (!this[1])
  {
    RB::DisplayList::Builder::reset_contents(this);
  }

  v16 = this[4];
  if (!v16 || *(*v16 + 18) != *(a2 + 36))
  {
    RB::DisplayList::Builder::begin_layer(this, a2);
  }

  RB::DisplayList::CachedTransform::CachedTransform(v26, this, a2 + 1, *(a2 + 12), *(a2 + 13));
  v19 = *(*a3 + 16);
  v20 = *this[4];
  if (*(this + 288) != 1)
  {
    v22 = 0;
    if (!a6)
    {
      goto LABEL_9;
    }

LABEL_12:
    v23 = *(a6 + 42);
    if (!a7)
    {
      goto LABEL_10;
    }

LABEL_13:
    v24 = *(a7 + 42);
    goto LABEL_14;
  }

  v21 = RB::DisplayList::Builder::crop_bounds(this, a2);
  v18 = vneg_f32(0x80000000800000);
  v17.n128_u64[0] = vcge_f32(vabs_f32(v21[1]), v18);
  v17.n128_u64[0] = vpmax_u32(v17.n128_u64[0], v17.n128_u64[0]);
  if (v17.n128_i32[0] >= 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (a6)
  {
    goto LABEL_12;
  }

LABEL_9:
  v23 = 0;
  if (a7)
  {
    goto LABEL_13;
  }

LABEL_10:
  v24 = 0;
LABEL_14:
  v17.n128_f32[0] = a5;
  v18.f32[0] = a4;
  RB::DisplayList::apply_interpolator(a3, 0, v17, v19, v20, v26, *&v18, v22, v23, v24, a8, v25);
  RB::UntypedTable::~UntypedTable(v28);
  RB::UntypedTable::~UntypedTable(&v27);
  RB::Heap::~Heap(&v26[0].f64[1]);
}

void sub_195D560C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  RB::DisplayList::CachedTransform::~CachedTransform(va);
  _Unwind_Resume(a1);
}

void RB::DisplayList::apply_interpolator(RB::DisplayList *this, const RB::DisplayList::Interpolator::Layer *a2, __n128 a3, unsigned int a4, RB::DisplayList::Layer *a5, float64x2_t *a6, double a7, float32x2_t *a8, const RB::Rect *a9, const RB::DisplayList::Item *a10, const RB::DisplayList::Item *a11, const RB::AffineTransform *a12)
{
  v14 = a2;
  v15 = a3.n128_f32[0];
  v97 = a11;
  v180 = *MEMORY[0x1E69E9840];
  v17 = *&a6->f64[0];
  v100 = a5;
  v101 = v17;
  v102 = *&a7;
  v99[0] = this;
  v99[1] = a8;
  v99[2] = &v100;
  v99[3] = a6;
  v98 = &v100;
  if (*(this + 248) == 1 && *(this + 46))
  {
    if (a8)
    {
      MEMORY[0x1EEE9AC00](this, a2);
      v20 = v93;
      v93[0] = RB::operator*(a6 + 68, *a8, a8[1]);
      *&v93[1] = a7;
      if ((*(this + 248) & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v20 = 0;
    }

    v95 = a8;
    v96 = v20;
    v174 = 0;
    v173 = 0;
    v175 = 32;
    v155 = 0;
    v154 = 0;
    v156 = 32;
    if (a9)
    {
      v28 = 0;
      v29 = a9;
      do
      {
        v30 = v28 + 1;
        if (v175 < v28 + 1)
        {
          RB::vector<RB::DisplayList::Item const*,32ul,unsigned long>::reserve_slow(&v157, v30);
          v28 = v174;
          v30 = v174 + 1;
        }

        v31 = v173;
        if (!v173)
        {
          v31 = &v157;
        }

        v31[v28] = v29;
        v174 = v30;
        v29 = *(v29 + 1);
        v28 = v30;
      }

      while (v29);
    }

    if (a10)
    {
      v32 = v155;
      v33 = a10;
      do
      {
        v34 = v32 + 1;
        if (v156 < v32 + 1)
        {
          RB::vector<RB::DisplayList::Item const*,32ul,unsigned long>::reserve_slow(&v138, v34);
          v32 = v155;
          v34 = v155 + 1;
        }

        v35 = v154;
        if (!v154)
        {
          v35 = &v138;
        }

        v35[v32] = v33;
        v155 = v34;
        v33 = *(v33 + 1);
        v32 = v34;
      }

      while (v33);
    }

    v121 = a9;
    v122 = 0;
    v124 = 1;
    v125 = 1;
    v126 = 0;
    v127 = 1;
    v128 = 1;
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v135 = 256;
    if (a9)
    {
      v36 = (*(*a9 + 40))(a9);
    }

    else
    {
      v36 = 0;
    }

    BYTE4(v123) = v36 != -1;
    if (v36 == -1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    LODWORD(v123) = v37;
    v105 = a10;
    v106 = 0;
    v109 = 1;
    v110 = 1;
    v111 = 0;
    v112 = 1;
    v113 = 1;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 256;
    if (a10)
    {
      v38 = (*(*a10 + 40))(a10);
    }

    else
    {
      v38 = 0;
    }

    LOBYTE(v108) = v38 != -1;
    if (v38 == -1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v38;
    }

    v107 = *&v39;
    if (*(this + 22))
    {
      v40 = *(this + 22);
    }

    else
    {
      v40 = this + 16;
    }

    v41 = *(this + 46);
    if (v41)
    {
      v42 = 40 * v41;
      a3.n128_u64[0] = 67109632;
      v94 = a3;
      do
      {
        v43 = *v40 & 0xFLL;
        if (v43 == 1 || v43 == 8)
        {
          if (!v43)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v48 = *(v40 + 2);
          if (v174 <= v48)
          {
            v56 = RB::error_log(v38);
            v38 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
            if (v38)
            {
              v57 = *v40 & 0xF;
              v58 = *(v40 + 2);
              *buf = v94.n128_u32[0];
              *&buf[4] = v57;
              v177.i16[0] = 1024;
              *(v177.i32 + 2) = v58;
              v177.i16[3] = 1024;
              v177.i32[2] = v174;
              v54 = v56;
              v55 = "invalid from item: %u, %u vs %u";
              goto LABEL_82;
            }

            goto LABEL_128;
          }

          v49 = v173;
          if (!v173)
          {
            v49 = &v157;
          }

          if (v43 == 9)
          {
            v50 = 0;
          }

          else if (*(v40 + 3) == -1)
          {
            v50 = 0;
          }

          else
          {
            v50 = *(v40 + 3);
          }

          v38 = RB::DisplayList::AtomizedItems::reset(&v121, v49[v48], v48, v50);
          if ((*v40 & 0xFLL) == 0)
          {
            goto LABEL_87;
          }
        }

        v45 = *(v40 + 4);
        if (v155 > v45)
        {
          v46 = v154;
          if (!v154)
          {
            v46 = &v138;
          }

          if (v43 == 9)
          {
            v47 = 0;
          }

          else if (*(v40 + 5) == -1)
          {
            v47 = 0;
          }

          else
          {
            v47 = *(v40 + 5);
          }

          RB::DisplayList::AtomizedItems::reset(&v105, v46[v45], v45, v47);
LABEL_87:
          v103._next = *this;
          v103._context = v40;
          *&v103.var0 = v15;
          *(&v103.var0 + 1) = v15;
          LODWORD(v103.var1) = 2139095040;
          WORD2(v103.var1) = v14;
          v104 = 0;
          a3.n128_f32[0] = v15 - *(v40 + 9);
          RB::DisplayList::Interpolator::Contents::animation_time(v103._next, *(v40 + 8), 0, a3.n128_f64[0], a7);
          *&a7 = 1.0 - a3.n128_f32[0];
          if (v14)
          {
            a3.n128_f32[0] = 1.0 - a3.n128_f32[0];
          }

          *&v103.var0 = fmaxf(a3.n128_f32[0], 0.0);
          v104 = v97;
          v59 = *v103._context & 0xFLL;
          if ((*v103._context & 0xF) <= 3)
          {
            if ((v59 - 2) < 2)
            {
              v74 = RB::DisplayList::AtomizedItems::mix(&v121, &v103, &v105, a6);
              v75 = v74;
              _S0 = *&v103.var0;
              if (*&v103.var0 < 0.0)
              {
                _S0 = 0.0;
              }

              if (_S0 > 1.0)
              {
                _S0 = 1.0;
              }

              __asm { FCVT            H0, S0 }

              *(v74 + 44) = *(v121 + 44) + ((*(v105 + 22) - *(v121 + 44)) * _H0);
              v81 = RB::DisplayList::AtomizedItems::mix_clip_style(&v121, &v103, &v105, a6);
              *(v75 + 16) = v82;
              *(v75 + 24) = v81;
              *(v75 + 32) = RB::DisplayList::CachedTransform::transform_metadata(a6, *(v105 + 4), *(v105 + 10));
              *(v75 + 40) = v83;
              if (v96 && (v84 = RB::DisplayList::Item::styled_bounds(v75, 0), !RB::Rect::intersects(v96, *&v84, v85)))
              {
                v38 = (**v75)(v75);
              }

              else
              {
                RB::DisplayList::Item::apply_alpha(v75, v102);
                v38 = RB::DisplayList::Builder::draw(v101, v75, v100, 0);
              }

              goto LABEL_128;
            }

            if (!v59)
            {
              v71 = 0;
              v72 = 2;
              v73 = &v121;
              goto LABEL_104;
            }

            if (v59 == 1)
            {
LABEL_103:
              v71 = (*v103._context & 0xFLL) != 1;
              v72 = 1;
              v73 = &v105;
LABEL_104:
              v38 = RB::DisplayList::apply_interpolator(RB::DisplayList::Interpolator::Layer const&,float,BOOL,unsigned int,RB::DisplayList::Layer &,float,RB::DisplayList::CachedTransform &,RB::Rect const*,RB::DisplayList::Item const*,RB::DisplayList::Item const*,RB::AffineTransform const*)::$_1::operator()(v99, v73, &v103, v72, v71);
              goto LABEL_128;
            }
          }

          else if (v59 <= 9)
          {
            if (((1 << v59) & 0x130) != 0)
            {
              goto LABEL_103;
            }

            if (((1 << v59) & 0xC0) != 0)
            {
              v60 = RB::DisplayList::AtomizedItems::mix_clip_style(&v121, &v103, &v105, a6);
              v62 = v61;
              v63 = RB::DisplayList::AtomizedItems::mix(&v121, &v103, &v105, a6);
              *(v63 + 16) = v62;
              *(v63 + 24) = v60;
              *(v63 + 32) = RB::DisplayList::CachedTransform::transform_metadata(a6, *(v63 + 32), *(v63 + 40));
              *(v63 + 40) = v64;
              if (v96)
              {
                v65 = RB::DisplayList::Item::styled_bounds(v63, 0);
                if ((RB::Rect::intersects(v96, *&v65, v66) & 1) == 0)
                {
                  (**v63)(v63);
                  v63 = 0;
                }
              }

              *buf = *v103._context & 0xFFFFFFF00000000FLL;
              v177 = vextq_s8(*(v103._context + 8), *(v103._context + 8), 8uLL);
              v178 = 0x100000000;
              v179 = 0;
              v136._next = v103._next;
              v136._context = buf;
              LODWORD(v136.var1) = 2139095040;
              v137 = v104;
              *(&v136.var0 + 1) = *(&v103.var0 + 1);
              *&v136.var0 = 1.0 - *&v103.var0;
              WORD2(v136.var1) = BYTE4(v103.var1) ^ 1;
              v67 = RB::DisplayList::AtomizedItems::mix(&v105, &v136, &v121, a6);
              *(v67 + 16) = v62;
              *(v67 + 24) = v60;
              *(v67 + 32) = RB::DisplayList::CachedTransform::transform_metadata(a6, *(v67 + 32), *(v67 + 40));
              *(v67 + 40) = v68;
              if (v96)
              {
                v69 = RB::DisplayList::Item::styled_bounds(v67, 0);
                if ((RB::Rect::intersects(v96, *&v69, v70) & 1) == 0)
                {
                  (**v67)(v67);
                  v67 = 0;
                }
              }

              v38 = RB::DisplayList::apply_interpolator(RB::DisplayList::Interpolator::Layer const&,float,BOOL,unsigned int,RB::DisplayList::Layer &,float,RB::DisplayList::CachedTransform &,RB::Rect const*,RB::DisplayList::Item const*,RB::DisplayList::Item const*,RB::AffineTransform const*)::$_2::operator()(&v98, &v103, v63, v67, *&a6->f64[0]);
              goto LABEL_128;
            }

            if (v59 == 9)
            {
              v86 = *(v103._context + 3);
              if (v86 == 1 && *(v103._context + 5) == 1)
              {
                if (v95 && (v87 = RB::DisplayList::AtomizedItems::styled_bounds(&v121), !RB::Rect::intersects(v95, *v87, v87[1])))
                {
                  v88 = 0;
                }

                else
                {
                  v88 = RB::DisplayList::AtomizedItems::copy(&v121, *&a6->f64[0], (v123 - HIDWORD(v122)), 4);
                  (*(*v88 + 32))(v88, a6, 1);
                  if (!v95)
                  {
LABEL_132:
                    v91 = RB::DisplayList::AtomizedItems::copy(&v105, *&a6->f64[0], (LODWORD(v107) - HIDWORD(v106)), 4);
                    (*(*v91 + 32))(v91, a6, 1);
                    goto LABEL_126;
                  }
                }

                v92 = RB::DisplayList::AtomizedItems::styled_bounds(&v105);
                if (RB::Rect::intersects(v95, *v92, v92[1]))
                {
                  goto LABEL_132;
                }

                v91 = 0;
              }

              else
              {
                *buf = a6;
                v177.i64[0] = v95;
                _ZZZN2RB11DisplayList18apply_interpolatorERKNS0_12Interpolator5LayerEfbjRNS0_5LayerEfRNS0_15CachedTransformEPKNS_4RectEPKNS0_4ItemESE_PKNS_15AffineTransformEENK3__3clINS_6vectorISE_Lm32EmEESL_EEDaRNS1_5StateERNS0_13AtomizedItemsESQ_RKT_RKT0_ENKUljjST_E_clISL_EESM_jjST_(buf, *(v103._context + 2), v86, &v157);
                v88 = v89;
                _ZZZN2RB11DisplayList18apply_interpolatorERKNS0_12Interpolator5LayerEfbjRNS0_5LayerEfRNS0_15CachedTransformEPKNS_4RectEPKNS0_4ItemESE_PKNS_15AffineTransformEENK3__3clINS_6vectorISE_Lm32EmEESL_EEDaRNS1_5StateERNS0_13AtomizedItemsESQ_RKT_RKT0_ENKUljjST_E_clISL_EESM_jjST_(buf, *(v103._context + 4), *(v103._context + 5), &v138);
                v91 = v90;
              }

LABEL_126:
              v38 = RB::DisplayList::apply_interpolator(RB::DisplayList::Interpolator::Layer const&,float,BOOL,unsigned int,RB::DisplayList::Layer &,float,RB::DisplayList::CachedTransform &,RB::Rect const*,RB::DisplayList::Item const*,RB::DisplayList::Item const*,RB::AffineTransform const*)::$_2::operator()(&v98, &v103, v88, v91, *&a6->f64[0]);
              goto LABEL_128;
            }
          }

          goto LABEL_128;
        }

        v51 = RB::error_log(v38);
        v38 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
        if (v38)
        {
          v52 = *v40 & 0xF;
          v53 = *(v40 + 4);
          *buf = v94.n128_u32[0];
          *&buf[4] = v52;
          v177.i16[0] = 1024;
          *(v177.i32 + 2) = v53;
          v177.i16[3] = 1024;
          v177.i32[2] = v155;
          v54 = v51;
          v55 = "invalid to item: %u, %u vs %u";
LABEL_82:
          _os_log_error_impl(&dword_195CE8000, v54, OS_LOG_TYPE_ERROR, v55, buf, 0x14u);
        }

LABEL_128:
        v40 += 40;
        v42 -= 40;
      }

      while (v42);
    }

    if (v154)
    {
      free(v154);
    }

    if (v173)
    {
      free(v173);
    }
  }

  else
  {
    v123 = 0;
    v124 = 0x100000000;
    v125 = a4;
    v121 = 0xFFFFFFF100000000;
    v122 = 0;
    RB::DisplayList::Interpolator::Contents::animation_time(*this, a4, 0, a3.n128_f64[0], a7);
    v105 = *this;
    v106 = &v121;
    if (v14)
    {
      v21 = 1.0 - v21;
    }

    v107 = v21;
    v108 = v15;
    LODWORD(v109) = 2139095040;
    WORD2(v109) = v14;
    v110 = v97;
    v157 = a9;
    v158 = 0;
    v161 = 1;
    v162 = 1;
    v163 = 0;
    v164 = 1;
    v165 = 1;
    v166 = 0;
    v168 = 0;
    v167 = 0;
    v169 = 0;
    v171 = 0;
    v170 = 0;
    v172 = 256;
    if (a9)
    {
      v22 = (*(*a9 + 40))(a9);
    }

    else
    {
      v22 = 0;
    }

    v160 = v22 != -1;
    if (v22 == -1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v159 = v23;
    if (v23)
    {
      do
      {
        v24 = RB::DisplayList::AtomizedItems::transition(&v157, this);
        if (RB::Transition::empty_transition(v24, 2))
        {
          RB::DisplayList::AtomizedItems::advance(&v157, 1);
        }

        else
        {
          RB::DisplayList::apply_interpolator(RB::DisplayList::Interpolator::Layer const&,float,BOOL,unsigned int,RB::DisplayList::Layer &,float,RB::DisplayList::CachedTransform &,RB::Rect const*,RB::DisplayList::Item const*,RB::DisplayList::Item const*,RB::AffineTransform const*)::$_1::operator()(v99, &v157, &v105, 2u, 0);
        }
      }

      while (HIDWORD(v158) < v159);
    }

    v138 = a10;
    v139 = 0;
    v142 = 1;
    v143 = 1;
    v144 = 0;
    v145 = 1;
    v146 = 1;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v152 = 0;
    v151 = 0;
    v153 = 256;
    if (a10)
    {
      v25 = (*(*a10 + 40))(a10);
    }

    else
    {
      v25 = 0;
    }

    v141 = v25 != -1;
    if (v25 == -1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    v140 = v26;
    if (v26)
    {
      do
      {
        v121 = v121 & 0xFFFFFFFFFFFFFFF0 | 1;
        v27 = RB::DisplayList::AtomizedItems::transition(&v138, this);
        if (RB::Transition::empty_transition(v27, 1))
        {
          v121 = v121 & 0xFFFFFFFFFFFFFFF0 | 8;
        }

        RB::DisplayList::apply_interpolator(RB::DisplayList::Interpolator::Layer const&,float,BOOL,unsigned int,RB::DisplayList::Layer &,float,RB::DisplayList::CachedTransform &,RB::Rect const*,RB::DisplayList::Item const*,RB::DisplayList::Item const*,RB::AffineTransform const*)::$_1::operator()(v99, &v138, &v105, 1u, 0);
      }

      while (HIDWORD(v139) < v140);
    }
  }
}

void sub_195D56C6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 688);
  if (v3)
  {
    free(v3);
  }

  v4 = *(v1 + 968);
  if (v4)
  {
    free(v4);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *RB::DisplayList::apply_interpolator(RB::DisplayList::Interpolator::Layer const&,float,BOOL,unsigned int,RB::DisplayList::Layer &,float,RB::DisplayList::CachedTransform &,RB::Rect const*,RB::DisplayList::Item const*,RB::DisplayList::Item const*,RB::AffineTransform const*)::$_1::operator()(uint64_t a1, RB::DisplayList::AtomizedItems *this, uint64_t a3, unsigned int a4, char a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v10 = **(a3 + 8) >> 36;
  v11 = *(this + 4) - *(this + 3);
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = RB::DisplayList::AtomizedItems::styled_bounds(this);
    v15 = RB::Rect::intersects(v13, *v14, v14[1]);
    if (v15 & 1) != 0 || (a5)
    {
      if (!v15)
      {
        return RB::DisplayList::AtomizedItems::advance(this, v12);
      }
    }

    else if ((RB::DisplayList::AtomizedItems::effects_change_geometry(this, *a1, a3, a4) & 1) == 0)
    {
      return RB::DisplayList::AtomizedItems::advance(this, v12);
    }
  }

  v16 = RB::DisplayList::AtomizedItems::copy(this, **(a1 + 24), v12, 4);
  if ((a5 & 1) == 0 && (*(*this + 46) & 0x1000) == 0)
  {
    if (RB::DisplayList::AtomizedItems::effects_change_geometry(this, *a1, a3, a4))
    {
      v17 = *(a1 + 24);
      v18 = *(v17 + 1104);
      v38 = *(v17 + 1088);
      v39 = v18;
      v40 = *(v17 + 1120);
      v19 = *(a3 + 32);
      if (v19)
      {
        v20.f64[0] = RB::operator*(&v38, v19);
        v38 = v20;
        v39 = v21;
        v40 = v22;
      }

      (*(*v16 + 120))(v16, &v38);
    }

    v44 = xmmword_195E42760;
    v45 = xmmword_195E42770;
    v48 = 0;
    LOBYTE(v49) = 0;
    v51 = 0;
    v46 = 0uLL;
    LOBYTE(v47) = 0;
    v52 = 1.0;
    RB::DisplayList::AtomizedItems::apply_effects(this, *a1, a3, a4, v16, &v44);
    RB::DisplayList::Item::apply_alpha(v16, v52);
    v23 = vandq_s8(vandq_s8(vceqq_f64(v45, xmmword_195E42770), vceqq_f64(v44, xmmword_195E42760)), vceqzq_f64(v46));
    if ((vandq_s8(vdupq_laneq_s64(v23, 1), v23).u64[0] & 0x8000000000000000) == 0)
    {
      RB::DisplayList::CachedTransform::CachedTransform(&v38, **(a1 + 24), &v44, 0, 0);
      (*(*v16 + 32))(v16, &v38, 0);
      RB::UntypedTable::~UntypedTable(&v43);
      RB::UntypedTable::~UntypedTable(&v42);
      RB::Heap::~Heap(&v38.f64[1]);
    }

    if (v48 == 1)
    {
      if (v47 <= 512.0)
      {
        v24 = v47;
      }

      else
      {
        v24 = 512.0;
      }

      v25 = *(**(a1 + 24) + 8);
      v26 = (v25[4] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v26 + 96 > v25[5])
      {
        v26 = RB::Heap::alloc_slow(v25 + 2, 0x60uLL, 7);
      }

      else
      {
        v25[4] = v26 + 96;
      }

      *(v26 + 16) = 0u;
      *(v26 + 48) = 0;
      *(v26 + 32) = 0u;
      *v26 = &unk_1F0A3D440;
      v27 = RB::Filter::GaussianBlur::GaussianBlur((v26 + 56), LODWORD(v24), 0, 0, 0);
      *(v26 + 16) = RB::AffineTransform::identity(v27);
      v28 = *(**(a1 + 24) + 8);
      *(v26 + 8) = *(v28 + 312);
      *(v28 + 312) = v26;
      *(v26 + 32) = *(v16 + 16);
      *(v26 + 52) |= 1u;
      *(v16 + 16) = v26;
    }

    if (v51 == 1)
    {
      v37[0] = RBColorClear;
      v37[1] = RBColorWhite;
      v36 = xmmword_195E42770;
      RB::Fill::Gradient::Gradient(&v38, (*(**(a1 + 24) + 8) + 16), 0, 2uLL, v37, 0, &v36, 1024, 0.0, v49, v50, 0.0, 0.0);
      v29 = *(**(a1 + 24) + 8);
      v30 = (v29[4] + 15) & 0xFFFFFFFFFFFFFFF0;
      if (v30 + 176 > v29[5])
      {
        v30 = RB::Heap::alloc_slow(v29 + 2, 0xB0uLL, 15);
      }

      else
      {
        v29[4] = v30 + 176;
      }

      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      *(v30 + 40) = 0x23C0000000000;
      *v30 = &unk_1F0A3A430;
      *(v30 + 48) = 0;
      *(v30 + 64) = 0u;
      *(v30 + 80) = 0u;
      *(v30 + 96) = 1065353216;
      *(v30 + 104) = 0;
      *(v30 + 108) = 1;
      *(v30 + 110) = 0;
      v31 = v38;
      v32 = v39;
      v33 = v41;
      *(v30 + 144) = v40;
      *(v30 + 160) = v33;
      *(v30 + 112) = v31;
      *(v30 + 128) = v32;
      *v30 = &off_1F0A3BAF8;
      RB::DisplayList::Builder::push_item_clip(**(a1 + 24), v16, v30, 0, 1.0);
    }
  }

  if (v16)
  {
    (*(*v16 + 32))(v16, *(a1 + 24), 1);
    if ((a4 & 2) != 0)
    {
      *(v16 + 46) |= 0x1000u;
    }

    v34 = *(a1 + 16);
    RB::DisplayList::Item::apply_alpha(v16, *(v34 + 16));
    RB::DisplayList::Builder::draw(*(v34 + 8), v16, *v34, 0);
  }

  return RB::DisplayList::AtomizedItems::advance(this, v12);
}

void sub_195D571D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  RB::DisplayList::CachedTransform::~CachedTransform(va);
  _Unwind_Resume(a1);
}

BOOL RB::Coverage::anonymous namespace::visit_ellipse(void (***a1)(void, uint64_t *), uint64_t a2, float64x2_t *a3, char a4, float32_t a5, float a6, float a7)
{
  if (CGRectIsInfinite(*a2))
  {
    v25 = 0x100000001000000;
    v26 = vneg_f32(0x80000000800000);
    v27 = 0uLL;
    v28 = 1065353216;
    v29 = 0.0;
    v30 = 257;
LABEL_3:
    v31 = 0;
    (**a1)(a1, &v25);
    return 1;
  }

  if ((a5 != 0.0 || a6 != 0.0) && *(a2 + 16) != *(a2 + 24))
  {
    return 0;
  }

  result = RB::Rect::representable_cgrect(a2, v14);
  if (!result)
  {
    return result;
  }

  v17 = vcvt_f32_f64(*a2);
  v18 = vcvt_f32_f64(*(a2 + 16));
  v19 = vbsl_s8(vcltz_f32(v18), vadd_f32(v18, v17), v17);
  v20 = vabs_f32(v18);
  v23 = v19;
  v24 = v20;
  if (a3)
  {
    v19 = RB::operator*(a3, v19, v20);
    v23 = v19;
    v24 = v20;
  }

  if (a5 == 0.0)
  {
LABEL_16:
    *&v21 = v20.f32[0] / v20.f32[1];
    v22 = 1.0 / (v20.f32[0] / v20.f32[1]);
    v19.f32[0] = v22 * v19.f32[0];
    v23.i32[0] = v19.i32[0];
    v24.f32[0] = v22 * v20.f32[0];
    *v16.i32 = vmuls_lane_f32(0.5, v20, 1);
    v20.f32[0] = v22 * v20.f32[0];
    v25 = v19;
    v26 = v20;
    v27 = vdupq_lane_s32(v16, 0);
    v28 = __PAIR64__(LODWORD(a6), v21);
    v29 = a7;
    LOBYTE(v30) = 5;
    HIBYTE(v30) = a4;
    goto LABEL_3;
  }

  if (a6 != 0.0)
  {
    return 0;
  }

  v19.f32[0] = a5;
  result = RB::Rect::inset(&v23, v19, a5);
  if (result)
  {
    v19 = v23;
    v20 = v24;
    goto LABEL_16;
  }

  return result;
}

unsigned __int8 *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  *(a4 + 2) = *(a1 + 32);
  v11[0] = xmmword_195E42760;
  v11[1] = xmmword_195E42770;
  v12 = 0;
  v13 = 0;
  RB::GeometryStyle::Rotation::set_affine_transform((a1 + 56), v11);
  return RB::DisplayList::Builder::affine_style_draw(a2, a3, a4, a5, v11, *(a1 + 16), *(a1 + 24));
}

float64x2_t RB::GeometryStyle::Rotation::set_affine_transform(RB::GeometryStyle::Rotation *this, float64x2_t *a2)
{
  v5 = __sincos_stret(*this);
  v4.f64[0] = v5.__cosval;
  v6.f64[0] = -v5.__sinval;
  v6.f64[1] = v5.__cosval;
  v4.f64[1] = v5.__sinval;
  result = vmlaq_n_f64(vmlaq_n_f64(vcvtq_f64_f32(*(this + 8)), v6, -COERCE_FLOAT(HIDWORD(*(this + 1)))), v4, -COERCE_FLOAT(*(this + 1)));
  *a2 = v4;
  a2[1] = v6;
  a2[2] = result;
  return result;
}

unsigned __int8 *RB::DisplayList::Builder::affine_style_draw(RB::DisplayList::Builder *this, RB::DisplayList::Layer *a2, RB::DisplayList::Item *a3, char a4, float64x2_t *a5, const RB::AffineTransform *a6, const RB::DisplayList::ClipNode *a7)
{
  v33[12] = *MEMORY[0x1E69E9840];
  v14 = *(a6 + 1);
  v29 = *a6;
  v30 = v14;
  v31 = *(a6 + 2);
  if (RB::AffineTransform::invert(&v29))
  {
    v15 = &v29;
  }

  else
  {
    v15 = a6;
  }

  v16 = v15[1];
  v17 = v15[2];
  v27[0] = *v15;
  v27[1] = v16;
  v27[2] = v17;
  v18.f64[0] = RB::operator*(v27, a5);
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v21.f64[0] = RB::operator*(&v29, a6);
  v28[0] = v21;
  v28[1] = v22;
  v28[2] = v23;
  v24 = vandq_s8(vandq_s8(vceqq_f64(v22, xmmword_195E42770), vceqq_f64(v21, xmmword_195E42760)), vceqzq_f64(v23));
  if ((vandq_s8(vdupq_laneq_s64(v24, 1), v24).u64[0] & 0x8000000000000000) == 0)
  {
    v25 = *(a3 + 2);
    *(a3 + 2) = 0;
    RB::DisplayList::CachedTransform::CachedTransform(&v29, this, v28, 0, 0);
    (*(*a3 + 32))(a3, &v29, 0);
    RB::UntypedTable::~UntypedTable(v33);
    RB::UntypedTable::~UntypedTable(&v32);
    RB::Heap::~Heap(&v29.f64[1]);
    *(a3 + 2) = v25;
  }

  *(a3 + 3) = RB::DisplayList::Builder::join_clip_lists(this, *(a3 + 3), a7);
  return RB::DisplayList::Builder::draw(this, a3, a2, a4);
}

void sub_195D576B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  RB::DisplayList::CachedTransform::~CachedTransform(va);
  _Unwind_Resume(a1);
}

uint64_t RB::Coverage::anonymous namespace::visit_rect(void (***a1)(void, float32x2_t *), float64x2_t *a2, float64x2_t *a3, char a4, float a5, float a6, double a7)
{
  v7 = *&a7;
  if (a5 == 0.0)
  {
    if (CGRectIsInfinite(*a2->f64))
    {
      v21 = 0x100000001000000;
      v22 = vneg_f32(0x80000000800000);
      v23 = 0;
      v24 = 0;
      v25 = 1065353216;
      v26 = 0.0;
      v27 = 257;
    }

    else
    {
      result = RB::Rect::representable_cgrect(a2, v14);
      if (!result)
      {
        return result;
      }

      v17 = vcvt_f32_f64(*a2);
      v18 = vcvt_f32_f64(a2[1]);
      v19 = vbsl_s8(vcltz_f32(v18), vadd_f32(v18, v17), v17);
      v20 = vabs_f32(v18);
      if (a3)
      {
        v19 = RB::operator*(a3, v19, v20);
      }

      v21 = v19;
      v22 = v20;
      v23 = 0;
      v24 = 0;
      LODWORD(v25) = 1065353216;
      *(&v25 + 1) = a6;
      v26 = v7;
      LOBYTE(v27) = 2;
      HIBYTE(v27) = a4;
    }

    v28 = 0;
    (**a1)(a1, &v21);
    return 1;
  }

  else if (a5 <= 0.0)
  {
    *&a7 = a5;
    v15 = *MEMORY[0x1E695F060];
    v16 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    return 0;
  }
}

void *RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::copy(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 8) + 16);
  v5 = *(a1 + 46);
  if (a3 & 2 | v5 & 0x2000 || *(a2 + 288) != 1)
  {
    v8 = 0;
LABEL_6:
    LODWORD(v9[0]) = v5 & 0x3F;
    result = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill5ColorEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a1 + 56, a1 + 144, (a1 + 48), (a1 + 44), v9);
    *(result + 1) = *(a1 + 16);
    result[4] = *(a1 + 32);
    *(result + 10) = *(a1 + 40);
    v7 = *(result + 23) | *(a1 + 46) & 0x7000;
    *(result + 23) = v7;
    goto LABEL_7;
  }

  v9[0] = &unk_1F0A3D7A0;
  v9[1] = v4;
  v9[2] = a1;
  v9[3] = (a1 + 144);
  v9[4] = *(a1 + 48);
  v10 = 0;
  RB::Coverage::StrokeablePath::simplify(a1 + 64, a1 + 56, v9);
  result = v10;
  if (!v10)
  {
    v5 = *(a1 + 46);
    v8 = 0x2000;
    goto LABEL_6;
  }

  v7 = *(v10 + 46);
  v8 = 0x2000;
LABEL_7:
  *(result + 23) = v7 | v8;
  return result;
}

uint64_t RB::Coverage::StrokeablePath::simplify(uint64_t a1, uint64_t a2, uint64_t (***a3)(void, __int128 *))
{
  v33 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = *(a1 + 24);
    if (v7 <= 0.0)
    {
      v24 = 0u;
      v25 = 0u;
      LODWORD(v26) = 1065353216;
      *(&v26 + 4) = 0;
      BYTE12(v26) = 0;
      *(&v26 + 13) = 1;
      return (**a3)(a3, &v24);
    }

    else if (!*(a1 + 32))
    {
      if ((v8 = *(a1 + 16)) == 0 || (v9 = *(v8 + 16), v10 = *(v8 + 24), v11 = *(v8 + 8), *v8 == v10) && v11 == 0.0 && *&v9 == 0.0 || v10 == 0.0 && (*v8 == 0.0 ? (v12 = v11 == *&v9) : (v12 = 0), v12))
      {
        v17[0] = 0;
        v17[1] = 0;
        *&v17[2] = v7;
        v18 = rb_line_cap(*(a2 + 73));
        v19 = RBStrokeRef::clip(*(a2 + 74));
        v20 = *(a2 + 80);
        v22 = 0;
        v23 = 0;
        v21 = 0;
        v13 = *(a1 + 16);
        v14 = *(a2 + 76);
        *&v24 = a3;
        if (v13)
        {
          v15 = *v13;
          v16 = v13[2];
          v26 = v13[1];
          v27 = v16;
          v25 = v15;
        }

        else
        {
          v25 = xmmword_195E42760;
          v26 = xmmword_195E42770;
          v27 = 0uLL;
        }

        v28 = v14;
        v29 = 0;
        v31 = 0u;
        v32 = 0;
        v30 = v17;
        *&v31 = *(a1 + 24);
      }
    }
  }

  return result;
}

uint64_t *RB::Coverage::StrokeablePath::StrokeablePath(uint64_t *a1, uint64_t a2, size_t *a3)
{
  *a1 = RBPathRetain(*a2, *(a2 + 8));
  a1[1] = v6;
  a1[2] = 0;
  a1[3] = *(a2 + 24);
  v7 = *(a2 + 32);
  a1[4] = v7;
  a1[5] = 0;
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = ((a3[2] + 15) & 0xFFFFFFFFFFFFFFF0);
    if ((v9 + 3) > a3[3])
    {
      v9 = RB::Heap::alloc_slow(a3, 0x30uLL, 15);
    }

    else
    {
      a3[2] = (v9 + 3);
    }

    v10 = *v8;
    v11 = v8[2];
    v9[1] = v8[1];
    v9[2] = v11;
    *v9 = v10;
    a1[2] = v9;
    v7 = a1[4];
  }

  if (v7)
  {
    v12 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = &v12[4 * v7];
    if (v13 > a3[3])
    {
      v12 = RB::Heap::alloc_slow(a3, 4 * v7, 3);
      v7 = a1[4];
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      a3[2] = v13;
    }

    memmove(v12, *(a2 + 40), 4 * v7);
LABEL_9:
    a1[5] = v12;
  }

  return a1;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::GenericItem1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3ABA0;
  *(a1 + 48) = a5;
  *(a1 + 56) = &unk_1F0A38388;
  RB::Coverage::StrokeablePath::StrokeablePath(a1 + 64, a3 + 8, a2);
  *(a1 + 112) = *(a3 + 56);
  *(a1 + 128) = *(a3 + 72);
  *(a1 + 129) = *(a3 + 73);
  *(a1 + 131) = *(a3 + 75);
  *(a1 + 132) = *(a3 + 76);
  *(a1 + 136) = *(a3 + 80);
  *(a1 + 144) = *a4;
  *(a1 + 152) = *(a4 + 8);
  if (*(a4 + 13))
  {
    v17 = *(a4 + 12);
  }

  else
  {
    v17 = a7;
  }

  *(a1 + 156) = v17;
  return a1;
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill5ColorEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 160 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0xA0uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 160;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3C268;
  return result;
}

float32x2_t RB::Coverage::Stroke<RB::Coverage::StrokeablePath>::bounds(uint64_t a1, float64x2_t *a2)
{
  v4 = *(a1 + 64);
  v5 = vcge_f32(vabs_f32(v4), vneg_f32(0x80000000800000));
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
  {
    RB::Coverage::StrokeablePath::bounds(a1 + 8, a1);
    *(a1 + 56) = v6;
    *(a1 + 64) = v4;
  }

  else
  {
    v6 = *(a1 + 56);
  }

  return RB::operator*(a2, v6, v4);
}

float RB::DisplayList::GenericClip<RB::Coverage::Primitive>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 108) >= 2u && *(a1 + 109) == 1)
  {
    return 1.0;
  }

  return result;
}

float RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (!*(a1 + 128) && *(a1 + 132) == 1)
  {
    return 1.0;
  }

  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void RB::anonymous namespace::draw_stroke(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t (***a4)(void, int32x2_t *, __n128, __n128), _OWORD *a5, int a6)
{
  v114 = *MEMORY[0x1E69E9840];
  v83 = *a5;
  v84 = *(a5 + 1);
  v87 = v83;
  v88 = v84;
  v89 = 0uLL;
  v82 = *(a5 + 2);
  *v90 = v83;
  *&v90[16] = v84;
  v91 = 0uLL;
  if (RB::AffineTransform::invert(v90))
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  v80 = *v90;
  v81 = *&v90[16];
  v79 = v91;
  v73 = RB::AffineTransform::scale(&v87);
  has_stencil = RB::depth_stencil_format_has_stencil(a1[23].u8[2]);
  if ((has_stencil & a6) == 1)
  {
    a1[23].i8[0] = 1;
    a1[23].i32[1] = 1;
  }

  v13 = *(a3 + 32);
  if (v13)
  {
    v14 = *(a3 + 24);
    v15 = vrecpe_f32(COERCE_UNSIGNED_INT(v14));
    v16 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(v14), v15), v15);
    v17 = vmul_f32(v16, vrecps_f32(COERCE_UNSIGNED_INT(v14), v16));
    v18 = vcvt_f32_s32(v13[8]);
    v78 = v17.i32[0];
    v17.i32[0] = vmul_f32(v17, v18).u32[0];
    v17.i32[1] = v18.i32[1];
    v19 = vmul_n_f32(v17, COERCE_FLOAT(*(a3 + 20)));
  }

  else
  {
    v19 = 0;
    v78 = 0;
  }

  v75 = a1[14];
  v76 = v87;
  v77 = v88;
  v74 = v89;
  v20 = a1[15].i32[0];
  RB::RenderFrame::alloc_buffer_region(*(*a1 + 16), 0x2C, 4uLL, 0, v90);
  v21 = *v90;
  if (*v90)
  {
    v22.i32[0] = v75.i32[0];
    v22.i32[1] = vneg_f32(v75).i32[1];
    __asm { FMOV            V0.2S, #-1.0 }

    v28 = vmul_f32(v22, vcvt_f32_f64(v76));
    v29 = vmul_f32(v22, vcvt_f32_f64(v77));
    v30 = vmla_f32(COERCE_FLOAT32X2_T(-_D0), vcvt_f32_f64(v74), v22);
    v31 = vpmaxq_f64(vabsq_f64(v76));
    v32 = vpmaxq_f64(vabsq_f64(v77));
    if (v31 < v32)
    {
      v31 = v32;
    }

    v33 = (*(*v90 + 56) + *&v90[8]);
    *v33 = v28;
    v33[1] = v29;
    v33[2] = v30;
    v33[3] = v19;
    v34 = 1.0 / v31;
    v33[4].i32[0] = v20;
    v33[4].i32[1] = v78;
    v33[5].f32[0] = v34;
  }

  else
  {
    memset(v90, 0, 24);
  }

  v35 = RB::RenderFrame::buffer_id(*(*a1 + 16), v21);
  v39 = vdupq_n_s64(v11);
  v36 = vbslq_s8(v39, v80, v83);
  v37 = *&v82.f64[0];
  v38 = vmlaq_laneq_f64(vmlaq_n_f64(vandq_s8(v79, v39), v36, v82.f64[0]), vbslq_s8(v39, v81, v84), v82, 1);
  v85 = v38;
  a1[24].i32[0] = v35;
  v39.n128_u64[1] = *&v90[16];
  *(a1 + 196) = vmovn_s64(*&v90[8]);
  if (a1[16].i32[1] == 2)
  {
    v40 = 131110;
  }

  else
  {
    v40 = 38;
  }

  v41 = ((*(a3 + 4) & 7 | (8 * (*(a3 + 5) & 3))) << 6) | ((*(a3 + 12) == 1) << 11) | v40;
  v42 = *(a3 + 8) & 0x3F;
  v43 = 0.0;
  if (*a3 == 1)
  {
    v57 = *(a3 + 32);
    v44 = 0;
    if (v57)
    {
      RB::RenderPass::set_texture(a1, 0, v57, MTLPixelFormatInvalid);
      v58 = *(a3 + 32);
      if (v58)
      {
        *&v59 = *(a3 + 24);
        v60 = vrecpe_f32(v59);
        v61 = vmul_f32(vrecps_f32(v59, v60), v60);
        v62 = (*(a3 + 20) * 0.5) * fmaxf(*(v58 + 64) * vmul_f32(v61, vrecps_f32(v59, v61)).f32[0], HIDWORD(*(v58 + 64)));
      }

      else
      {
        v62 = 0.0;
      }

      *&v90[16] = a1;
      *&v90[24] = v41 & 0x21FC0 | 0x10;
      *&v90[28] = v42;
      v91 = v87;
      v92 = v88;
      v93 = v89;
      v63 = RB::AffineTransform::scale2(&v87);
      v64.i32[0] = 0;
      v94 = v63;
      v95 = 0;
      v96 = vneg_f32(0x7F0000007FLL);
      v97 = 0x7F0000007FLL;
      v98 = 0u;
      v99 = 0u;
      v100 = 0;
      *v90 = &unk_1F0A38FF0;
      v101 = v62;
      v65 = a1[22];
      v66 = vceq_s32(v65, 0x8000000080000000);
      v67 = vdup_lane_s32(vcgt_s32(v64, vpmin_u32(v66, v66)), 0);
      (*(*a2 + 8))(a2, v90, *a1, &v87, v85, COERCE_DOUBLE(vbsl_s8(v67, 0x100000001000000, vcvt_f32_s32(a1[21]))), COERCE_DOUBLE(vbsl_s8(v67, vneg_f32(0x80000000800000), vcvt_f32_s32(v65))));
      v68 = vcgt_f32(v97, v96);
      v43 = 0.0;
      if ((vpmin_u32(v68, v68).u32[0] & 0x80000000) != 0)
      {
        v43 = RB::Rect::from_bounds(v96, v97);
        v44 = v69;
      }

      a1[30].i32[0] = 0;
      a1[30].i8[4] = 0;
    }
  }

  else
  {
    v44 = 0;
    if (!*a3)
    {
      v45 = *(a3 + 16);
      *&v90[16] = a1;
      *&v90[24] = v41 & 0x21FC0 | 0xE;
      *&v90[28] = v42;
      v91 = v87;
      v92 = v88;
      v93 = v89;
      v46 = RB::AffineTransform::scale2(&v87);
      v47.i32[0] = 0;
      v48 = vrecpe_f32(LODWORD(v73));
      v49 = vmul_f32(vrecps_f32(LODWORD(v73), v48), v48);
      v94 = v46;
      v95 = 0;
      v96 = vneg_f32(0x7F0000007FLL);
      v97 = 0x7F0000007FLL;
      v98 = 0u;
      v99 = 0u;
      v100 = 0;
      *v90 = &unk_1F0A39048;
      v101 = vmul_f32(v49, vrecps_f32(LODWORD(v73), v49)).f32[0] * 0.01;
      v102 = fmaxf(v45, 1.0);
      v103 = vmul_f32(v46, vdup_n_s32(0x3FB504F3u));
      v104 = 0;
      v105 = xmmword_195E45560;
      v106 = 0x3F80000000000000;
      v108 = 0;
      v109 = 0;
      v107 = 0;
      v110 = xmmword_195E45560;
      v111 = 0;
      v112 = 0x3F80000000000000;
      v113 = 0;
      v50 = a1[22];
      v51 = vceq_s32(v50, 0x8000000080000000);
      v52 = vdup_lane_s32(vcgt_s32(v47, vpmin_u32(v51, v51)), 0);
      v53.n128_u64[0] = vbsl_s8(v52, 0x100000001000000, vcvt_f32_s32(a1[21]));
      v54.n128_u64[0] = vbsl_s8(v52, vneg_f32(0x80000000800000), vcvt_f32_s32(v50));
      (**a2)(a2, v90, *a1, &v87, v85, v53, v54);
      v55 = vcgt_f32(v97, v96);
      v43 = 0.0;
      if ((vpmin_u32(v55, v55).u32[0] & 0x80000000) != 0)
      {
        v43 = RB::Rect::from_bounds(v96, v97);
        v44 = v56;
      }

      if (*(&v98 + 1))
      {
        RB::RenderFrame::commit_buffer_region_size(*(**&v90[16] + 16), &v98 + 8, v100);
        if (v98)
        {
        }
      }
    }
  }

  if (a6)
  {
    v70 = vmvn_s8(vceqz_f32(v44));
    if ((vpmin_u32(v70, v70).u32[0] & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v71 = a1[22];
    *v90 = a1[21];
    *&v90[8] = v71;
    if (has_stencil)
    {
      a1[23].i8[0] = 6;
      a1[23].i32[1] = 0;
    }

    RB::Bounds::Bounds(v86, *&v43, v44, v38.f64[0], v37);
    RB::Bounds::intersect(v90, v86[0], v86[1]);
    v39.n128_u64[0] = *v90;
    v36.n128_u64[0] = *&v90[8];
  }

  else
  {
    v39.n128_u64[0] = a1[21];
    v36.n128_u64[0] = a1[22];
    *v90 = v39.n128_u64[0];
    *&v90[8] = v36.n128_u64[0];
  }

  v72 = (**a4)(a4, a1, v39, v36);
  if ((v72 & 0x3F) != 0x26)
  {
    RB::RenderPass::draw_indexed_primitives(a1, v72, 4, **(*a1 + 16) + 136, 4uLL, 1uLL, *v90, *&v90[8]);
  }

LABEL_39:
  if (has_stencil)
  {
    a1[23].i8[0] = 0;
    a1[23].i32[1] = 0;
  }
}

void sub_195D58648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  *(v41 + 240) = 0;
  *(v41 + 244) = 0;
  _Unwind_Resume(a1);
}

void RB::render_stroke(int32x2_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, int32x2_t *, __n128, __n128), int a6, int a7)
{
  v11 = 18;
  if (a1[16].i32[1] == 2)
  {
    v11 = 131090;
  }

  v12 = 0x10000;
  if (!a6)
  {
    v12 = 0;
  }

  v14[0] = &unk_1F0A378B8;
  v14[1] = (v12 | v11 | ((a7 & 0x3F) << 32));
  v14[2] = a5;
  may_discard_shape = RB::may_discard_shape(a7);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::render(uint64_t a1, double a2, uint64_t a3, int32x2_t *a4, int a5, int a6)
{
  v6 = *(a1 + 48);
  v7.i64[0] = SLODWORD(a2);
  v7.i64[1] = SHIDWORD(a2);
  v8 = *(v6 + 16);
  v9 = vaddq_f64(*(v6 + 32), vcvtq_f64_s64(v7));
  v11[0] = *v6;
  v11[1] = v8;
  v11[2] = v9;
  v10 = *(a1 + 44);
  v15 = *(a1 + 128);
  v16 = *(a1 + 129);
  v17 = *(a1 + 131);
  v18 = *(a1 + 132);
  v19 = *(a1 + 136);
  v20 = 1065353216;
  v21 = 1;
  v22 = 0;
  if (v15 == 1)
  {
    abort();
  }

  LOWORD(v12) = *(a1 + 144);
  *(&v12 + 2) = *(a1 + 146);
  *(&v12 + 3) = *(a1 + 150) * v10;
  v13 = *(a1 + 152);
  v14 = *(a1 + 156);
  RB::render_stroke(a4, v11, a1 + 56, &v15, &v12, a5, a6);
}

uint64_t RB::Coverage::StrokeablePath::map(uint64_t result, uint64_t a2, _BYTE *a3, float64x2_t a4, float32x2_t a5, float32x2_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 8) != 0x195E47920)
  {
    v57 = v15;
    v58 = v14;
    v59 = v13;
    v60 = v12;
    v61 = v11;
    v62 = v10;
    v63 = v8;
    v64 = v9;
    v21 = result;
    v22 = *(result + 24);
    v23 = v22 * 0.70711;
    if (!*(a2 + 74))
    {
      v24 = (v22 * 0.5) * fmaxf(*(a2 + 80), 1.0);
      if (v23 < v24)
      {
        v23 = v24;
      }
    }

    v25 = *(a8 + 16);
    v54 = *a8;
    v55 = v25;
    v56 = *(a8 + 32);
    if (RB::AffineTransform::invert(&v54))
    {
      v26 = &v54;
    }

    else
    {
      v26 = a8;
    }

    v27 = v26[1];
    v28 = v26[2];
    v54 = *v26;
    v55 = v27;
    v56 = v28;
    v29 = RB::operator*(&v54, a5, a6);
    v52 = v29;
    v53 = v30;
    v29.f32[0] = -v23;
    v31 = RB::Rect::inset(&v52, v29, -v23);
    v32 = *(v21 + 16);
    if (v32)
    {
      v33 = *v32;
      v34 = v32[1];
      v35 = *(v32 + 2);
    }

    else
    {
      v33 = xmmword_195E42760;
      v34 = xmmword_195E42770;
      v35 = 0uLL;
    }

    v36 = *v21;
    v37 = *(v21 + 8);
    v54 = v33;
    v55 = v34;
    v56 = vaddq_f64(v35, a4);
    v38 = v52;
    v39 = v53;
    v40 = *(a2 + 73);
    v41 = *(a2 + 74);
    v42 = *(a2 + 80);
    v43 = *(v21 + 32);
    v44 = *(v21 + 24);
    v45 = *(v21 + 28);
    v46 = RB::bezier_flatness(v31);
    v47 = RB::AffineTransform::scale(a8);
    v48 = vrecpe_f32(LODWORD(v47));
    v49 = vmul_f32(vrecps_f32(LODWORD(v47), v48), v48);
    LODWORD(v50) = v45;
    return RB::Stroke::flatten_points(v36, v37, &v54, a3, v40, v41, v43, v38, v39, v44, v42, v50, v46 * vmul_f32(v49, vrecps_f32(LODWORD(v47), v49)).f32[0]);
  }

  return result;
}

uint64_t RB::Stroke::flatten_points($_13 *a1, void *a2, float64x2_t *a3, _BYTE *a4, char a5, char a6, uint64_t a7, float32x2_t a8, float32x2_t a9, float a10, float a11, double a12, float a13)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    RB::Stroke::Dasher::Dasher(v27, v21, v22, v23, v24);
    *&a8 = -5.48612406e303;
    *&a9 = 1.40444743e306;
    v25 = v27;
  }

  else
  {
    v25 = a4;
  }

  RB::Stroke::flatten_points(RBPath,RB::AffineTransform const&,RB::Stroke::LineConsumer<RB::Stroke::Point> &,RB::Rect,float,RB::LineCap,RB::LineJoin,float,unsigned long,float const*,float,float)::Adaptor::Adaptor(v29, v25, a5, a6, a8, a9, a10, a11, a13);
  return RBPathMap(a1, a2, v29, a3);
}

float RB::Stroke::flatten_points(RBPath,RB::AffineTransform const&,RB::Stroke::LineConsumer<RB::Stroke::Point> &,RB::Rect,float,RB::LineCap,RB::LineJoin,float,unsigned long,float const*,float,float)::Adaptor::Adaptor(uint64_t a1, uint64_t a2, char a3, char a4, float32x2_t a5, float32x2_t a6, float a7, float a8, float a9)
{
  *a1 = &unk_1F0A37770;
  *(a1 + 8) = &unk_1F0A38498;
  *(a1 + 16) = a2;
  *(a1 + 24) = *&a5;
  *(a1 + 32) = vadd_f32(a6, a5);
  *(a1 + 40) = a3;
  *(a1 + 41) = a4;
  v9 = a8 * a8;
  v10 = vcge_f32(vabs_f32(a6), vneg_f32(0x80000000800000));
  *(a1 + 56) = vpmax_u32(v10, v10).i32[0] >= 0;
  *(a1 + 57) = 0;
  *(a1 + 72) = 0x3F80000000000000;
  *(a1 + 80) = 1;
  *(a1 + 84) = 0;
  *(a1 + 112) = 0x3F80000000000000;
  *(a1 + 128) = 0x3F80000000000000;
  *(a1 + 52) = a9;
  v11 = vrecpe_f32(LODWORD(a9));
  v12 = vmul_f32(vrecps_f32(LODWORD(a9), v11), v11);
  *(a1 + 44) = v9;
  *(a1 + 48) = (fmaxf(a7 * 0.05, 1.0) * 0.75) * vmul_f32(v12, vrecps_f32(LODWORD(a9), v12)).f32[0];
  *(a1 + 140) = 1065353216;
  result = a7 * 0.5;
  *(a1 + 136) = a7 * 0.5;
  return result;
}

uint64_t RB::Stroke::Flattener<RB::Stroke::Point>::moveto(uint64_t a1, uint64_t *a2, double a3)
{
  RB::Stroke::Flattener<RB::Stroke::Point>::flush_lineto(a1, 1);
  if (*(a1 + 72) == 1 && *(a1 + 76) == 1)
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1, *(a1 + 80));
  }

  *(a1 + 88) = a3;
  v7 = *a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = v7;
  *(a1 + 112) = a3;
  *(a1 + 120) = *a2;
  *(a1 + 50) = 1;
  *(a1 + 52) = 0;
  *(a1 + 72) = 1;
  *(a1 + 76) = 0;
  v8 = *(**(a1 + 8) + 8);
  v6.n128_f64[0] = a3;

  return v8(v6);
}

uint64_t RB::Stroke::Flattener<RB::Stroke::Point>::flush_lineto(uint64_t result, int a2)
{
  v2 = result;
  if (!a2)
  {
    if (*(result + 49) != 1)
    {
      return result;
    }

    v3 = *(result + 53);
    goto LABEL_7;
  }

  result = RB::Stroke::Flattener<RB::Stroke::Point>::flush_empty_line(result);
  if (result & 1) == 0 && (*(v2 + 49))
  {
    v3 = 1;
LABEL_7:
    result = (*(**(v2 + 8) + 16))(*(v2 + 8), v2 + 64, v3, *(v2 + 56));
    *(v2 + 49) = 0;
    *(v2 + 52) = 1;
  }

  return result;
}

uint64_t RB::Stroke::Flattener<RB::Stroke::Point>::flush_empty_line(uint64_t a1)
{
  if (*(a1 + 50) != 1 || *(a1 + 51) != 1)
  {
    return 0;
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 0, COERCE_DOUBLE(1065353216));
  v2 = 1;
  (*(**(a1 + 8) + 16))(*(a1 + 8), a1 + 104, 1, *(a1 + 88));
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1, COERCE_DOUBLE(1065353216));
  *(a1 + 72) = 0;
  *(a1 + 51) = 256;
  return v2;
}

void RB::anonymous namespace::StrokeLines::moveto(uint64_t a1, void *a2, double a3)
{
  *(a1 + 168) = a3;
  *(a1 + 200) = *a2;
  *(a1 + 176) = 1;
  *(a1 + 249) = 0;
}

double RB::anonymous namespace::StrokeLines::finish_subpath(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      if (v5 == 2)
      {
        if ((*(a1 + 24) & 0x1C0) == 0x80)
        {
          goto LABEL_11;
        }

        v7 = (*(v4 + 56) + *(a1 + 128) + *(a1 + 144));
        v8 = *(v7 - 1) & 0xFFFFFFFFFFFFLL | 0x1000000000000;
        *v7 = *(v7 - 2);
        v9 = 1;
      }

      else
      {
        if (v5 != 1)
        {
          goto LABEL_11;
        }

        v6 = *(a1 + 144);
        if ((*(a1 + 24) & 0x1C0) != 0)
        {
          *(a1 + 144) = v6 - 16;
          --*(a1 + 112);
          *(a1 + 192) = 0;
          goto LABEL_35;
        }

        v10 = (*(v4 + 56) + *(a1 + 128) + v6);
        v11 = *(v10 - 2);
        v8 = *(v10 - 1) & 0xFFFFFFFFFFFFLL | 0x1000000000000;
        *v10 = v11;
        v10[1] = v8;
        v12 = *(a1 + 144) + 16;
        *(a1 + 144) = v12;
        v7 = (*(*(a1 + 120) + 56) + *(a1 + 128) + v12);
        *v7 = v11;
        v9 = 2;
      }

      v7[1] = v8;
      *(a1 + 144) += 16;
      *(a1 + 112) += v9;
      *(a1 + 192) += v9;
LABEL_11:
      v13 = *(a1 + 144);
      v14 = *(*(a1 + 120) + 56) + *(a1 + 128);
      v15 = v14 + v13;
      if (a2)
      {
        v16 = *(a1 + 208);
        v17 = 232;
        if (!v16)
        {
          v17 = 184;
        }

        if ((*(a1 + v17) & 0x8000000000000000) == 0)
        {
          v18 = (v15 - 32);
          if (v16)
          {
            v14 = *(v16 + 56);
            v19 = *(a1 + 216) + *(a1 + 232);
          }

          else
          {
            v19 = *(a1 + 184);
          }

          v53 = v14 + v19;
          if (*(v53 + 30) == -2)
          {
            v54 = *(v53 + 16);
            *(v53 + 16) = *v53;
            *(v53 + 32) = v54;
            *(v53 + 14) = -1;
            v53 += 16;
          }

          *v53 = *v18;
          v52 = -1;
          *(v53 + 14) = -1;
          *(v53 + 30) = a3;
          *(a1 + 288) |= a3 != 1;
          v49 = *(v53 + 32);
          v50 = (v53 + 40);
          v51 = (v53 + 44);
          v13 = *(a1 + 144);
          goto LABEL_34;
        }

        *(v15 - 2) = 1;
      }

      else
      {
        *(v15 - 2) = 1;
        if ((*(a1 + 249) & 1) == 0 && (*(a1 + 24) & 0x1C0) == 0x80)
        {
          v20 = *(a1 + 280);
          v21 = vmul_f32(v20, v20);
          v21.i32[0] = vadd_f32(v21, vdup_lane_s32(v21, 1)).u32[0];
          v22 = vrsqrte_f32(v21.u32[0]);
          v23 = vmul_f32(vrsqrts_f32(v21.u32[0], vmul_f32(v22, v22)), v22);
          v24 = vmul_n_f32(v20, vmul_f32(v23, vrsqrts_f32(v21.u32[0], vmul_f32(v23, v23))).f32[0]);
          v25 = *(v15 - 16);
          v26 = vsub_f32(v25, *(v15 - 32));
          v27 = vmul_f32(v26, v26);
          v28 = vadd_f32(v27, vdup_lane_s32(v27, 1)).u32[0];
          v29 = vrsqrte_f32(v28);
          v30 = vmul_f32(vrsqrts_f32(v28, vmul_f32(v29, v29)), v29);
          v31 = vmul_n_f32(v26, vmul_f32(v30, vrsqrts_f32(v28, vmul_f32(v30, v30))).f32[0]);
          v30.f32[0] = -v24.f32[1];
          v32 = vmul_f32(v31, vzip1_s32(v30, v24));
          v33 = vmul_f32(v31, v24);
          v34 = vadd_f32(vzip1_s32(v32, v33), vzip2_s32(v32, v33));
          v35 = (*(a1 + 200) * v34.f32[0]) / v34.f32[1];
          if (COERCE_UNSIGNED_INT(fabs(v35)) <= 0x7F7FFFFF)
          {
            v36 = sqrtf(vaddv_f32(v27));
            v27.f32[0] = fabsf(v35);
            if (v27.f32[0] > *(a1 + 152) && v27.f32[0] < v36)
            {
              v38 = vmls_lane_f32(v25, v31, v27, 0);
              v39 = v36;
              v40 = vrecpe_f32(LODWORD(v36));
              _D3 = vmul_f32(vrecps_f32(LODWORD(v39), v40), v40);
              _D3.f32[0] = v27.f32[0] * vmul_f32(_D3, vrecps_f32(LODWORD(v39), _D3)).f32[0];
              v42 = *(v15 - 8);
              v43 = v42 + ((*(v15 - 24) - v42) * _D3.f32[0]);
              v44 = *(v15 - 4);
              __asm { FCVT            H3, S3 }

              *_D3.i16 = v44 + ((*(v15 - 20) - v44) * *_D3.i16);
              *(v15 - 16) = v38;
              *(v15 - 8) = v43;
              *(v15 - 4) = _D3.i16[0];
              *(v15 - 2) = 2;
              if ((*(a1 + 288) & 1) == 0)
              {
                *(a1 + 288) = 1;
              }

              v48 = *(*(a1 + 120) + 56) + *(a1 + 128) + *(a1 + 144);
              *v48 = v25;
              *(v48 + 8) = v42;
              *(v48 + 12) = v44;
              *(v48 + 14) = -2;
              v13 = *(a1 + 144) + 16;
              *(a1 + 144) = v13;
              ++*(a1 + 112);
            }
          }
        }
      }

      v49 = vadd_f32(*(a1 + 280), *(v15 - 16));
      v50 = (v15 - 8);
      v51 = (v15 - 4);
      v52 = -3;
LABEL_34:
      v55 = *v50;
      v56 = *v51;
      v57 = (*(*(a1 + 120) + 56) + *(a1 + 128) + v13);
      *v57 = v49;
      v57[1].i32[0] = v55;
      v57[1].i16[2] = v56;
      v57[1].i16[3] = v52;
      *(a1 + 144) += 16;
      ++*(a1 + 112);
    }
  }

LABEL_35:
  v58 = (a1 + 208);
  if (*(a1 + 208))
  {
    *v58 = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = xmmword_195E45560;
  }

  result = NAN;
  *(a1 + 184) = xmmword_195E45560;
  return result;
}

float32x2_t *RB::Stroke::Flattener<RB::Stroke::Point>::lineto(float32x2_t *result, float32x2_t *a2, double a3)
{
  v4 = result;
  v5 = result[14];
  v6 = vceq_f32(v5, *&a3);
  if ((vpmin_u32(v6, v6).u32[0] & 0x80000000) != 0)
  {
    if (result[6].i8[2] == 1 && !result[4].i8[0])
    {
      result[6].i8[3] = 1;
    }
  }

  else
  {
    *&result[14] = a3;
    result[15] = *a2;
    result[6].i8[2] = 0;
    v8 = vsub_f32(*&a3, v5);
    result = RB::Stroke::Flattener<RB::Stroke::Point>::flush_lineto(result, 0, v8);
    if (v4[6].i8[0] == 1 && ((v10 = vcgt_f32(vminnm_f32(v5, *&a3), v4[3]), (vpmax_u32(v10, v10).u32[0] & 0x80000000) != 0) || (v11 = vcgt_f32(v4[2], vmaxnm_f32(v5, *&a3)), (vpmax_u32(v11, v11).u32[0] & 0x80000000) != 0)))
    {
      v4[9].i8[0] = 0;
      v13 = *(**&v4[1] + 24);
      v9.n128_f64[0] = a3;

      return v13(v9);
    }

    else
    {
      if (v4[9].i8[0] == 1 && !v4[9].i32[1])
      {
        v4[12] = v8;
        result = (*(**&v4[1] + 32))(*&v4[1], 0, *&v8);
        v4[9].i8[0] = 0;
      }

      v12 = 1;
      if (a2->f32[0] > v4[5].f32[1])
      {
        v12 = v4[4].i8[1];
      }

      v4[6].i8[3] = 0;
      v4[6].i8[1] = 1;
      v4[6].i8[5] = v12;
      *&v4[7] = a3;
      v4[8] = *a2;
      v4[9].i8[0] = 1;
      v4[9].i32[1] = 1;
      v4[10] = v8;
    }
  }

  return result;
}

float32x2_t *RB::Stroke::Flattener<RB::Stroke::Point>::flush_lineto(float32x2_t *result, int a2, float32x2_t a3)
{
  v3 = result;
  if (!a2)
  {
    if (result[6].i8[1] != 1)
    {
      return result;
    }

    v4 = result[6].u8[5];
    if (!result[6].i8[5])
    {
      if (result[9].i8[0] == 1 && result[9].i32[1] == 1)
      {
      }

      else
      {
        v4 = 0;
      }
    }

    goto LABEL_11;
  }

  result = RB::Stroke::Flattener<RB::Stroke::Point>::flush_empty_line(result);
  if (result & 1) == 0 && (v3[6].i8[1])
  {
    v4 = 1;
LABEL_11:
    result = (*(**&v3[1] + 16))(*&v3[1], v3 + 8, v4, *&v3[7]);
    v3[6].i8[1] = 0;
    v3[6].i8[4] = 1;
  }

  return result;
}

uint64_t RB::anonymous namespace::StrokeLines::tangent(uint64_t result, int a2, double a3)
{
  if (a2 == 1)
  {
    *(result + 280) = a3;
  }

  else if (!a2)
  {
    *(result + 272) = a3;
  }

  return result;
}

void RB::Stroke::Flattener<RB::Stroke::Point>::cubeto(uint64_t a1, float32x2_t *a2, float32x2_t a3, float32x2_t a4, double a5)
{
  v10 = *(a1 + 112);
  v11 = *(a1 + 120);
  v12 = vceq_f32(v10, a3);
  if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) != 0 && (v13 = vceq_f32(a3, a4), (vpmin_u32(v13, v13).u32[0] & 0x80000000) != 0) && (v14 = vceq_f32(a4, *&a5), (vpmin_u32(v14, v14).u32[0] & 0x80000000) != 0))
  {

    RB::Stroke::Flattener<RB::Stroke::Point>::lineto(a1, a2, a5);
  }

  else
  {
    v15 = COERCE_DOUBLE(vsub_f32(a3, v10));
    if (vaddv_f32(vmul_f32(*&v15, *&v15)) < 0.00001)
    {
      v16 = COERCE_DOUBLE(vsub_f32(a4, v10));
      v17 = COERCE_DOUBLE(vsub_f32(*&a5, v10));
      if (vaddv_f32(vmul_f32(*&v16, *&v16)) < 0.00001)
      {
        v15 = v17;
      }

      else
      {
        v15 = v16;
      }
    }

    v18 = COERCE_DOUBLE(vsub_f32(*&a5, a4));
    if (vaddv_f32(vmul_f32(*&v18, *&v18)) < 0.00001)
    {
      v19 = COERCE_DOUBLE(vsub_f32(*&a5, a3));
      v20 = COERCE_DOUBLE(vsub_f32(*&a5, v10));
      if (vaddv_f32(vmul_f32(*&v19, *&v19)) < 0.00001)
      {
        v18 = v20;
      }

      else
      {
        v18 = v19;
      }
    }

    *(a1 + 112) = a5;
    *(a1 + 120) = *a2;
    *(a1 + 50) = 0;
    RB::Stroke::Flattener<RB::Stroke::Point>::flush_lineto(a1, 0, *&v15);
    v25 = 0;
    if (*(a1 + 48) == 1)
    {
      v21.n128_u64[0] = vminnm_f32(v10, *&a5);
      v26 = vmaxnm_f32(v10, *&a5);
      v27 = vminnm_f32(a3, a4);
      v28 = vmaxnm_f32(a3, a4);
      v30 = *(a1 + 16);
      v29 = *(a1 + 24);
      *v24.i8 = vcgt_f32(v30, vmaxnm_f32(v26, v28));
      v31 = vorr_s8(*v24.i8, vcgt_f32(vminnm_f32(v21.n128_u64[0], v27), v29));
      *v23.i8 = vpmax_u32(v31, v31);
      if (v23.i32[0] < 0)
      {
        goto LABEL_24;
      }

      v32 = vcge_f32(v26, v28);
      v33 = vand_s8(v32, vcge_f32(v27, v21.n128_u64[0]));
      v34 = COERCE_DOUBLE(vpmin_u32(v33, v33));
      if ((LODWORD(v34) & 0x80000000) == 0)
      {
        v21.n128_u64[0] = v10;
        *v22.i8 = a4;
        v21.n128_f64[0] = RB::Path::cubic_bounds_slow(v21, a3, v22, *&a5, v34, *&v32, v23, v24);
        v30 = *(a1 + 16);
        v29 = *(a1 + 24);
      }

      v35 = vorr_s8(vcgt_f32(v30, v26), vcgt_f32(v21.n128_u64[0], v29));
      if ((vpmax_u32(v35, v35).u32[0] & 0x80000000) != 0)
      {
LABEL_24:
        *(a1 + 72) = 0;
        v44 = *(**(a1 + 8) + 24);
        v21.n128_f64[0] = a5;

        v44(v21);
        return;
      }

      v36 = vcge_f32(v21.n128_u64[0], v30);
      v37 = vpmin_u32(v36, v36).u32[0];
      v38 = vcge_f32(v29, v26);
      v39 = vpmin_u32(v38, v38).i32[0] >= 0;
      v25 = v37 >= 0 || v39;
    }

    v40 = vmaxnm_f32(vabs_f32(vadd_f32(vsub_f32(a4, vadd_f32(a3, a3)), v10)), vabs_f32(vadd_f32(vsub_f32(a3, vadd_f32(a4, a4)), *&a5)));
    v41 = ceilf(sqrtf(sqrtf(vaddv_f32(vmul_f32(v40, v40))) * *(a1 + 40)));
    if ((LODWORD(v41) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      return;
    }

    if (v41 >= 1.0)
    {
      if (v41 > 1024.0)
      {
        v41 = 1024.0;
      }

      v43 = v41;
    }

    else
    {
      v42 = vceq_f32(v10, *&a5);
      if ((vpmin_u32(v42, v42).u32[0] & 0x80000000) != 0)
      {
        return;
      }

      v43 = 1;
    }

    v62 = 0x3F80000000000000;
    v63 = 0;
    v57 = a1;
    v58 = &v61;
    v59 = v25;
    v60 = v15;
    if (v43 >= 2)
    {
      v21.n128_u64[0] = v10;
      _ZN2RB13CubicIteratorIDv2_fEC1ES1_S1_S1_S1_i(&v53, v43, v21);
      v45 = vrecpe_f32(COERCE_UNSIGNED_INT(v43));
      v46 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(v43), v45), v45);
      v47 = vmul_n_f32(vsub_f32(*a2, v11), vmul_f32(v46, vrecps_f32(COERCE_UNSIGNED_INT(v43), v46)).f32[0]);
      v48 = v43 - 1;
      v49 = &v61;
      do
      {
        v50 = v53;
        v10 = vadd_f32(v54, v53);
        v53 = v10;
        v54 = vadd_f32(v55, v54);
        v55 = vadd_f32(v56, v55);
        v11 = vadd_f32(v11, v47);
        if (v25 && ((v51 = vcgt_f32(vminnm_f32(v50, v10), *(a1 + 24)), (vpmax_u32(v51, v51).u32[0] & 0x80000000) != 0) || (v52 = vcgt_f32(*(a1 + 16), vmaxnm_f32(v50, v10)), (vpmax_u32(v52, v52).u32[0] & 0x80000000) != 0)))
        {
          *(v49 + 16) = 1;
          *v49 = *&v10;
          v49 = v58;
          v58[1] = *&v11;
          *(a1 + 72) = 0;
        }

        else
        {
          if (*(a1 + 49) == 1)
          {
            (*(**(a1 + 8) + 16))(*(a1 + 8), a1 + 64, *(a1 + 53), *(a1 + 56));
            *(a1 + 49) = 0;
            *(a1 + 52) = 1;
          }

          if (*(v49 + 16) == 1)
          {
            *(a1 + 72) = 0;
            (*(**(a1 + 8) + 24))(*(a1 + 8), v49 + 1, *v49);
            v49 = v58;
            *(v58 + 16) = 0;
          }

          if (*(a1 + 72) == 1 && !*(a1 + 76))
          {
            *(a1 + 96) = v60;
            (*(**(a1 + 8) + 32))(*(a1 + 8), 0);
            *(a1 + 72) = 0;
          }

          *(a1 + 51) = 0;
          *(a1 + 49) = 1;
          *(a1 + 53) = 1;
          *(a1 + 56) = v10;
          *(a1 + 64) = v11;
        }

        --v48;
      }

      while (v48);
    }

    _ZZN2RB6Stroke9FlattenerINS0_5PointEE6cubetoEDv2_fS4_S4_RKS2_ENKUlS4_S4_S2_bE_clES4_S4_S2_b(&v57, 1, v10, a5, a2->f32[0], a2->f32[1]);
    if (v63 == 1)
    {
      if (*(a1 + 49) == 1)
      {
        (*(**(a1 + 8) + 16))(*(a1 + 8), a1 + 64, *(a1 + 53), *(a1 + 56));
        *(a1 + 49) = 0;
        *(a1 + 52) = 1;
      }

      (*(**(a1 + 8) + 24))(*(a1 + 8), &v62, v61);
    }

    else
    {
      *(a1 + 72) = 1;
      *(a1 + 76) = 1;
      *(a1 + 80) = v18;
    }
  }
}

uint64_t RB::anonymous namespace::apply_miter_limit(float32x2_t a1, float32x2_t a2, float a3)
{
  v3 = vmul_f32(a1, a1);
  v3.i32[0] = vadd_f32(v3, vdup_lane_s32(v3, 1)).u32[0];
  v4 = vrsqrte_f32(v3.u32[0]);
  v5 = vmul_f32(vrsqrts_f32(v3.u32[0], vmul_f32(v4, v4)), v4);
  v6 = vmul_f32(a2, a2);
  v6.i32[0] = vadd_f32(v6, vdup_lane_s32(v6, 1)).u32[0];
  v7 = vmul_f32(v5, vrsqrts_f32(v3.u32[0], vmul_f32(v5, v5)));
  v8 = vrsqrte_f32(v6.u32[0]);
  v9 = vmul_f32(vrsqrts_f32(v6.u32[0], vmul_f32(v8, v8)), v8);
  v10 = vaddv_f32(vmul_n_f32(vmul_f32(a2, a1), vmul_f32(vmul_f32(v9, vrsqrts_f32(v6.u32[0], vmul_f32(v9, v9))), v7).f32[0]));
  if (v10 > 0.99)
  {
    return 1;
  }

  else
  {
    return 2 * (((v10 + 1.0) * a3) < 2.0);
  }
}

void RB::anonymous namespace::StrokeLines::lineto(uint64_t a1, float *a2, int a3, double a4)
{
  if (*(a1 + 176) == 1)
  {
    *(a1 + 184) = *(a1 + 144) - 16;
    *(a1 + 176) = 0;
    if ((*(a1 + 249) & 1) == 0 && (*(a1 + 24) & 0x1C0) == 0x80)
    {
      v8 = *(a1 + 272);
      v9 = vmul_f32(v8, v8);
      v9.i32[0] = vadd_f32(v9, vdup_lane_s32(v9, 1)).u32[0];
      v10 = vrsqrte_f32(v9.u32[0]);
      v11 = vmul_f32(vrsqrts_f32(v9.u32[0], vmul_f32(v10, v10)), v10);
      v12 = vmul_n_f32(v8, vmul_f32(v11, vrsqrts_f32(v9.u32[0], vmul_f32(v11, v11))).f32[0]);
      v13 = vsub_f32(*&a4, *(a1 + 168));
      v14 = vmul_f32(v13, v13);
      v15 = vadd_f32(v14, vdup_lane_s32(v14, 1)).u32[0];
      v16 = vrsqrte_f32(v15);
      v17 = vmul_f32(vrsqrts_f32(v15, vmul_f32(v16, v16)), v16);
      v18 = vmul_n_f32(v13, vmul_f32(v17, vrsqrts_f32(v15, vmul_f32(v17, v17))).f32[0]);
      v19 = *(a1 + 200);
      v17.f32[0] = -v12.f32[1];
      v20 = vmul_f32(v18, vzip1_s32(v17, v12));
      v21 = vmul_f32(v18, v12);
      v22 = vadd_f32(vzip1_s32(v20, v21), vzip2_s32(v20, v21));
      v23 = (v19 * v22.f32[0]) / v22.f32[1];
      if ((LODWORD(v23) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v24 = sqrtf(vaddv_f32(v14));
        v25 = fabsf(v23);
        if (v25 > *(a1 + 152) && v25 < v24)
        {
          *(*(*(a1 + 120) + 56) + *(a1 + 128) + *(a1 + 144) - 2) = -2;
          *(a1 + 288) = 1;
          v27 = v24;
          v28 = vrecpe_f32(LODWORD(v24));
          v29 = vmul_f32(vrecps_f32(LODWORD(v27), v28), v28);
          v30 = v25 * vmul_f32(v29, vrecps_f32(LODWORD(v27), v29)).f32[0];
        }
      }
    }
  }

  if (*(a1 + 249) == 1)
  {
    *(a1 + 249) = 0;
  }

  v31 = *a2;
  v32 = a2[1];
}

void RB::anonymous namespace::StrokeLines::add_point(uint64_t a1, int a2, double a3, float a4, float _S2)
{
  if (a4 > 0.0 && a2 != -3)
  {
    if (*(a1 + 192))
    {
      v9 = vceq_f32(*(*(*(a1 + 120) + 56) + *(a1 + 128) + *(a1 + 144) - 16), *&a3);
      if ((vpmin_u32(v9, v9).u32[0] & 0x80000000) != 0)
      {
        return;
      }
    }

    v10 = vmul_n_f32(*(a1 + 160), a4);
    if (!a2)
    {
      v10 = vmul_n_f32(v10, *(a1 + 156));
    }

    v11 = vcvtq_f64_f32(*&a3);
    *&v11.f64[0] = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(*(a1 + 64), *(a1 + 32), v11.f64[0]), *(a1 + 48), v11, 1));
    v12 = vminnm_f32(*(a1 + 96), vsub_f32(*&v11.f64[0], v10));
    v13 = vmaxnm_f32(*(a1 + 104), vadd_f32(v10, *&v11.f64[0]));
    *(a1 + 96) = v12;
    *(a1 + 104) = v13;
    if (_S2 != 1.0)
    {
      *(a1 + 88) = 1;
    }
  }

  v20.n128_f64[0] = a3;
  v20.n128_f32[2] = a4;
  __asm { FCVT            H0, S2 }

  v20.n128_u16[6] = _H0;
  v20.n128_u16[7] = a2;
  if (!*(a1 + 120) || (*(a1 + 144) + 64) > *(a1 + 136))
  {
  }

  if ((*(a1 + 288) & 1) == 0 && (a2 + 2) <= 4 && ((1 << (a2 + 2)) & 0x15) != 0)
  {
    *(a1 + 288) = 1;
  }

  v18 = v20.n128_u64[1];
  v19 = *(*(a1 + 120) + 56) + *(a1 + 128) + *(a1 + 144);
  *v19 = a3;
  *(v19 + 8) = v18;
  *(a1 + 144) += 16;
  ++*(a1 + 112);
  ++*(a1 + 192);
}

void RB::anonymous namespace::StrokeLines::new_buffer(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 112))
  {
    v3 = *(*(a1 + 120) + 56) + *(a1 + 128) + *(a1 + 144);
    v4 = (v3 - 16);
    v5 = (v3 - 32);
    if (*(a1 + 192))
    {
      ++*(a1 + 112);
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    if (!*(a1 + 120))
    {
      goto LABEL_9;
    }
  }

  RB::RenderFrame::commit_buffer_region_size(*(**(a1 + 16) + 16), a1 + 120, *(a1 + 144));
  v6 = *(a1 + 112);
  if (v6)
  {
    if (*(a1 + 208))
    {
    }

    else
    {
      *(a1 + 208) = *(a1 + 120);
      *(a1 + 216) = *(a1 + 128);
      *(a1 + 232) = *(a1 + 184);
      *(a1 + 240) = v6;
      *(a1 + 248) = *(a1 + 288);
    }
  }

LABEL_9:
  RB::RenderFrame::alloc_buffer_region(*(**(a1 + 16) + 16), 0x800, 4uLL, 1, &v7);
  *(a1 + 120) = v7;
  *(a1 + 128) = v8;
  *(a1 + 144) = 0;
  *(a1 + 184) = -1;
  *(a1 + 288) = 0;
  if (v5)
  {
    if (v4)
    {
      *(a1 + 112) = 2;
    }
  }
}

uint64_t _ZZN2RB6Stroke9FlattenerINS0_5PointEE6cubetoEDv2_fS4_S4_RKS2_ENKUlS4_S4_S2_bE_clES4_S4_S2_b(uint64_t result, int a2, float32x2_t a3, double a4, float a5, float a6)
{
  v10 = result;
  v11 = *result;
  if (*(result + 16) == 1 && ((v12 = vcgt_f32(vminnm_f32(a3, *&a4), *(v11 + 24)), (vpmax_u32(v12, v12).u32[0] & 0x80000000) != 0) || (v13 = vcgt_f32(*(v11 + 16), vmaxnm_f32(a3, *&a4)), (vpmax_u32(v13, v13).u32[0] & 0x80000000) != 0)))
  {
    v16 = *(result + 8);
    *(v16 + 16) = 1;
    *v16 = a4;
    v17 = *(result + 8);
    *(v17 + 8) = a5;
    *(v17 + 12) = a6;
    *(v11 + 72) = 0;
  }

  else
  {
    if (*(v11 + 49) == 1)
    {
      result = (*(**(v11 + 8) + 16))(*(v11 + 8), v11 + 64, *(v11 + 53), *(v11 + 56));
      *(v11 + 49) = 0;
      *(v11 + 52) = 1;
    }

    v14 = *(v10 + 8);
    if (*(v14 + 16) == 1)
    {
      *(v11 + 72) = 0;
      result = (*(**(v11 + 8) + 24))(*(v11 + 8), v14 + 8, *v14);
      *(*(v10 + 8) + 16) = 0;
    }

    if (*(v11 + 72) == 1 && !*(v11 + 76))
    {
      *(v11 + 96) = *(v10 + 24);
      result = (*(**(v11 + 8) + 32))(*(v11 + 8), 0);
      *(v11 + 72) = 0;
    }

    v15 = 1;
    if (a2)
    {
      if (a5 > *(v11 + 44))
      {
        v15 = *(v11 + 33);
      }
    }

    *(v11 + 51) = 0;
    *(v11 + 49) = 1;
    *(v11 + 53) = v15;
    *(v11 + 56) = a4;
    *(v11 + 64) = a5;
    *(v11 + 68) = a6;
  }

  return result;
}

uint64_t _ZN2RB13CubicIteratorIDv2_fEC2ES1_S1_S1_S1_i(uint64_t result, int a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  __asm { FMOV            V5.2S, #3.0 }

  v11 = vmul_f32(vsub_f32(a4, a3), _D5);
  v12 = vmla_f32(vneg_f32(v11), _D5, vsub_f32(a5, a4));
  v13 = vsub_f32(a6, vadd_f32(vadd_f32(v11, a3), v12));
  v14 = 1.0 / a2;
  v15 = (v14 * v14) * v14;
  __asm { FMOV            V7.2S, #6.0 }

  v17 = vmul_n_f32(vmul_f32(v13, _D7), v15);
  *(result + 24) = v17;
  v18 = vmul_n_f32(v12, v14 * v14);
  *result = *&a3;
  *(result + 8) = vmla_n_f32(vmla_n_f32(v18, v11, v14), v13, v15);
  *(result + 16) = vmla_f32(v17, 0x4000000040000000, v18);
  return result;
}

uint64_t RB::Stroke::Flattener<RB::Stroke::Point>::closepath(uint64_t a1)
{
  RB::Stroke::Flattener<RB::Stroke::Point>::lineto(a1, (a1 + 104), *(a1 + 88));
  RB::Stroke::Flattener<RB::Stroke::Point>::flush_lineto(a1, 0, *(a1 + 96));
  v2 = ***(a1 + 8);

  return v2();
}

uint64_t RB::Stroke::Flattener<RB::Stroke::Point>::endpath(uint64_t a1)
{
  result = RB::Stroke::Flattener<RB::Stroke::Point>::flush_lineto(a1, 1);
  if (*(a1 + 72) == 1 && *(a1 + 76) == 1)
  {
    result = (*(**(a1 + 8) + 32))(*(a1 + 8), 1, *(a1 + 80));
    *(a1 + 72) = 0;
  }

  return result;
}

int32x2_t *RB::anonymous namespace::StrokeLines::draw_buffer(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v8 = *(a1 + 16);
  v8[25].i32[1] = RB::RenderFrame::buffer_id(*(*v8 + 16), *a2);
  v8[26] = vmovn_s64(*(a2 + 8));
  v10 = *(a1 + 96);
  v9 = *(a1 + 104);
  v11 = vcgt_f32(*&v9, v10);
  v12 = vpmin_u32(v11, v11).u32[0];
  v13 = 0;
  v14 = 0.0;
  if ((v12 & 0x80000000) != 0)
  {
    v14 = RB::Rect::from_bounds(*(a1 + 96), *(a1 + 104));
  }

  result = RB::Bounds::Bounds(&v19, *&v14, v13, v9, v10);
  v16 = *(a1 + 24);
  v17 = *(a1 + 28);
  if (*(a1 + 88))
  {
    v18 = v16 | 0x1000;
  }

  else
  {
    v18 = v16;
  }

  if (a3 > 3)
  {
    result = RB::RenderPass::draw_indexed_primitives(*(a1 + 16), (v18 | (v17 << 32)), 4, **(**(a1 + 16) + 16) + 136, 4uLL, a3 - 3, v19, v20);
  }

  if (a3 >= 3 && a4)
  {
    result = RB::RenderPass::draw_indexed_primitives(*(a1 + 16), (v18 & 0xFFFFFFC0 | 0xF | (v17 << 32)), 4, **(**(a1 + 16) + 16) + 136, 4uLL, a3 - 2, v19, v20);
  }

  v8[26] = 0;
  v8[25].i32[1] = 0;
  return result;
}

void sub_195D5A668(_Unwind_Exception *a1)
{
  *(v1 + 208) = 0;
  *(v1 + 204) = 0;
  _Unwind_Resume(a1);
}

uint64_t RB::render_stroke(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::StrokeGenerator const&,RB::Coverage::StrokeInfo const&,RB::Fill::Color const&,BOOL,RB::BlendMode)::Renderer::operator()(uint64_t a1, uint64_t a2, int32x2_t a3, int32x2_t a4, int32x2_t a5)
{
  a5.i32[0] = 0;
  v7 = vceq_s32(a4, 0x8000000080000000);
  v8 = vdup_lane_s32(vcgt_s32(a5, vpmin_u32(v7, v7)), 0);
  RB::Coverage::set_plane(&v18, a2, vbsl_s8(v8, 0x100000001000000, vcvt_f32_s32(a3)), COERCE_DOUBLE(vbsl_s8(v8, vneg_f32(0x80000000800000), vcvt_f32_s32(a4))));
  v9.i32[0] = *(a2 + 124);
  RB::Fill::Color::prepare(*(a1 + 16), *(a2 + 128), v9, v10, v11);
  *&v19[12] = v12;
  RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), 0x24, 4uLL, 0, &v20);
  v13 = v20;
  if (v20)
  {
    v14 = *(v20 + 7) + v21.i64[0];
    v15 = v18;
    v16 = *v19;
    *(v14 + 32) = *&v19[16];
    *v14 = v15;
    *(v14 + 16) = v16;
  }

  else
  {
    v20 = 0;
    v21 = 0uLL;
  }

  *(a2 + 192) = RB::RenderFrame::buffer_id(*(*a2 + 16), v13);
  *(a2 + 196) = vmovn_s64(v21);
  return *(a1 + 8);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3ABA0;
  a1[7] = &unk_1F0A38388;
  RBPathRelease(a1[8], a1[9]);
  return a1;
}

void RB::SurfacePool::erase_queue(uint64_t a1, CFTypeRef *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = CACurrentMediaTime();
      v6 = *a2;
      v13 = 134218240;
      v14 = v5;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_195CE8000, v4, OS_LOG_TYPE_INFO, "%f: erase_queue %p\n", &v13, 0x16u);
    }

    os_unfair_lock_lock(a1);
    v7 = CACurrentMediaTime();
    v8 = *(a1 + 88);
    v9 = v8 + 1;
    if (*(a1 + 96) < (v8 + 1))
    {
      v8 = *(a1 + 88);
      v9 = v8 + 1;
    }

    v10 = *(a1 + 80);
    if (!v10)
    {
      v10 = a1 + 48;
    }

    v11 = v10 + 16 * v8;
    *v11 = *a2;
    *a2 = 0;
    *(v11 + 8) = v7 + 0.1;
    *(a1 + 88) = v9;
    v12 = *(a1 + 136);
    if ((v12 & 1) == 0)
    {
      *(a1 + 136) = 1;
    }

    RB::SurfacePool::remove_watched_queue_locked(a1, 0, 0);
    os_unfair_lock_unlock(a1);
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = 0;
    if ((v12 & 1) == 0)
    {
      dispatch_async_f(*(a1 + 8), a1, RB::SurfacePool::AsyncCollection::~AsyncCollection()::$_0::__invoke);
    }
  }
}

void sub_195D5A96C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    dispatch_async_f(v1[1], v1, RB::SurfacePool::AsyncCollection::~AsyncCollection()::$_0::__invoke);
  }

  _Unwind_Resume(exception_object);
}

void sub_195D5AC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  os_unfair_lock_unlock(v10);
  RB::vector<RB::objc_ptr<RBLayer *>,0ul,unsigned long>::~vector(&a10);
  _Unwind_Resume(a1);
}

void RB::DisplayList::AtomizedItems::effect_bounds(RB::DisplayList::AtomizedItems *this, const RB::DisplayList::Interpolator::Layer *a2, const RB::DisplayList::Interpolator::State *a3, unsigned int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(this + 88) == 1)
  {
    v8 = *(this + 9);
    v9 = *(this + 80);
  }

  else
  {
    v8 = RB::DisplayList::Item::styled_bounds(*this, 0);
    v9 = v10;
    *(this + 9) = v8;
    *(this + 10) = v10;
    *(this + 88) = 1;
  }

  v11 = vceqz_f32(v9);
  if ((vpmax_u32(v11, v11).u32[0] & 0x80000000) == 0)
  {
    v12[0] = xmmword_195E42760;
    v12[1] = xmmword_195E42770;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v13 = 0;
    v14 = 0;
    LOBYTE(v15) = 0;
    v19 = 1.0;
    RB::DisplayList::AtomizedItems::apply_effects(this, a2, a3, a4, 0, v12);
    if (v19 > 0.0)
    {
      RB::operator*(v12, *&v8, v9);
    }
  }
}

float RB::DisplayList::Interpolator::Contents::max_animation_speed(RB::DisplayList::Interpolator::Contents *this, double a2, double a3)
{
  v3 = *(this + 28);
  if (!v3)
  {
    return 0.0;
  }

  v4 = LODWORD(a2);
  v6 = *(this + 13) + 16;
  v7 = 40 * v3;
  v8 = 0.0;
  do
  {
    LODWORD(a2) = v4;
    RB::Animation::speed(*(this + 15) + 4 * *(v6 - 12), *(v6 - 8), v6, a2, a3);
    if (v8 < *&a2)
    {
      v8 = *&a2;
    }

    v6 += 40;
    v7 -= 40;
  }

  while (v7);
  return v8;
}

BOOL RB::GlyphPathCache::prune(RB::GlyphPathCache *this, int a2)
{
  v10 = 0;
  v9[0] = this;
  v9[1] = &v10;
  v4 = 384;
  while (1)
  {
    if (v4 != 384)
    {
      v5 = *(this + 9);
      if (!(v5 >> 17))
      {
        break;
      }
    }

    v10 = a2 - v4;
    if (*(this + 20) <= a2 - v4)
    {
      *(this + 20) = -1;
      RB::UntypedTable::remove_if (this + 8, RB::Table<RB::GlyphPathCacheDetails::GlyphKey const*,RB::GlyphPathCache::Path *>::remove_if<RB::GlyphPathCache::prune::$_0>(RB::GlyphPathCache::prune::$_0 const&)::{lambda(void const*,void const*,void const*)#1}::__invoke, v9);
    }

    v6 = v4 > 1;
    v4 >>= 1;
    if (!v6)
    {
      v5 = *(this + 9);
      break;
    }
  }

  if (v5)
  {
    v7 = RB::verbose_mode(0x20);
    v5 = *(this + 9);
    if (v7)
    {
      printf("\n== glyph path cache ==\n  %d bytes; %d paths; %d/%d misses/hits (%g ratio)\n\n", v5, *(this + 6), *(this + 12), *(this + 11), *(this + 12) / *(this + 11));
      v5 = *(this + 9);
    }
  }

  return v5 != 0;
}

void RB::Animation::speed(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  if (!a2)
  {
    return;
  }

  v8 = *&a4;
  v9 = 0;
  v10 = a2 - 2;
  v11 = 1.0;
  while (1)
  {
    v12 = (a1 + 4 * v9);
    v13 = *v12;
    if (v13 <= 12)
    {
      break;
    }

    if ((v13 - 13) >= 2)
    {
      if ((v13 - 15) < 3)
      {
LABEL_27:
        *&a4 = v12[1];
        v19 = vrecpe_f32(*&a4);
        v20 = vmul_f32(vrecps_f32(*&a4, v19), v19);
        *&a4 = v8 * vmul_f32(v20, vrecps_f32(*&a4, v20)).f32[0];
        if (*&a4 < 0.0)
        {
          *&a4 = 0.0;
        }

        if (*&a4 > 1.0)
        {
          *&a4 = 1.0;
        }

        if (v13 <= 7)
        {
          if ((v13 - 2) >= 3)
          {
            if (v13 <= 1)
            {
              return;
            }

            goto LABEL_58;
          }

LABEL_39:
          *&v34[8] = *a3;
          *v34 = vrev64_s32(*(a3 + 4));
          v35 = *(a3 + 12);
          *&v34[12] = vrev64_s32(*(a3 + 16));
          RB::BezierTiming::derivative(v34, *&a4);
          return;
        }

        if (v13 > 15)
        {
          if (v13 == 16 || v13 == 17)
          {
            return;
          }
        }

        else
        {
          if (v13 == 8)
          {
            goto LABEL_39;
          }

          if (v13 == 15)
          {
            return;
          }
        }

LABEL_58:
        abort();
      }

      if (v13 == 18)
      {
        *&a4 = v12[2];
        v24 = vrecpe_f32(*&a4);
        v25 = vmul_f32(vrecps_f32(*&a4, v24), v24);
        v26 = v8 * vmul_f32(v25, vrecps_f32(*&a4, v25)).f32[0];
        if (v26 < 0.0)
        {
          v26 = 0.0;
        }

        if (v26 > 1.0)
        {
          v26 = 1.0;
        }

        v27 = *(v12 + 1);
        if (v27 >= 2)
        {
          v28 = (v12 + 3);
          v29 = v27;
          do
          {
            v30 = v29 >> 1;
            v31 = &v28[2 * (v29 >> 1)];
            v33 = *v31;
            v32 = v31 + 2;
            v29 += ~(v29 >> 1);
            if (v33 < v26)
            {
              v28 = v32;
            }

            else
            {
              v29 = v30;
            }
          }

          while (v29);
        }

        return;
      }
    }

    else
    {
      *&a4 = RB::Animation::active_duration((v12 + 2), v10 - v9);
      v14 = vrecpe_f32(LODWORD(a4));
      v15 = vmul_f32(vrecps_f32(LODWORD(a4), v14), v14);
      a5 = COERCE_DOUBLE(vmul_f32(v15, vrecps_f32(LODWORD(a4), v15)));
      *&a5 = floorf(v8 * *&a5);
      v8 = v8 - (*&a5 * *&a4);
      if (v13 == 14 && (*&a5 & 1) != 0)
      {
        v16 = *&a4 - v8;
        v17 = *&a4 + -0.00001;
        if (v17 >= v16)
        {
          v8 = v16;
        }

        else
        {
          v8 = v17;
        }
      }
    }

LABEL_22:
    v9 += RB::Animation::_term_args[v13] + 1;
    if (v9 >= a2)
    {
      return;
    }
  }

  if (v13 > 8)
  {
    if (v13 == 11)
    {
      v18 = v12[1];
      v8 = v18 * v8;
      v11 = v18 * v11;
    }

    else if (v13 == 12)
    {
      v8 = fmaxf(v8 - v12[1], 0.0);
    }

    else if ((v13 - 9) < 2)
    {
      goto LABEL_41;
    }

    goto LABEL_22;
  }

  if (v13 < 5)
  {
    goto LABEL_27;
  }

  if ((v13 - 5) >= 3)
  {
    if (v13 == 8)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  *&a5 = v12[1];
  v21 = vrecpe_f32(*&a5);
  v22 = vmul_f32(vrecps_f32(*&a5, v21), v21);
  v8 = (v8 * 0.4) * vmul_f32(v22, vrecps_f32(*&a5, v22)).f32[0];
LABEL_41:
  *&v23 = vrev64q_s32(*a3).u64[0];
  *(&v23 + 1) = *(a3 + 8);
  *v34 = v23;
  *&v34[16] = *(a3 + 16);
  fabsf(RB::SpringTiming::derivative(v34, fmaxf(v8, 0.0)) * v11);
}

uint64_t RB::DisplayList::Layer::mix_bounds(RB::DisplayList::Layer *this, const RB::DisplayList::Interpolator::State *a2, float32x2_t *a3, const RB::Rect *a4, const RB::DisplayList::Layer *a5)
{
  v10 = *a2;
  v19 = *(this + 18) | (*(a5 + 18) << 32);
  v11 = std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::find<std::pair<unsigned int,unsigned int>>((v10 + 40), &v19);
  if (v11 && (v12 = v11[3]) != 0 && !RB::DisplayList::Interpolator::Layer::is_fade(v11[3]))
  {
    v15 = *(this + 16);
    v16 = 1.0;
    if (v15 == 0.0)
    {
      v15 = 1.0;
    }

    if (*(a5 + 16) != 0.0)
    {
      v16 = *(a5 + 16);
    }

    if (v15 != v16)
    {
      return 0;
    }

    RB::DisplayList::interpolated_bounds(v12, *(a2 + 28), *(a2 + 5), *(this + 2), *(a5 + 2), v13);
    *a3 = v17;
    a3[1] = v18;
  }

  else
  {
    RB::Rect::Union(a3, *a4, *(a4 + 8));
  }

  return 1;
}

float RB::BezierTiming::Fn::solve(RB::BezierTiming::Fn *this, float a2, float a3)
{
  v3 = a2;
  v5 = *(this + 1);
  v4 = *(this + 2);
  v6 = v4;
  v7 = v5;
  v8 = *this;
  v9 = a3;
  v10 = 8;
  v11 = a2;
  do
  {
    v12 = -(v3 - (v8 + (v7 + v11 * v6) * v11) * v11);
    if (fabs(v12) < v9)
    {
      return v11;
    }

    v13 = v8 + ((v5 + v5) + v11 * (v4 * 3.0)) * v11;
    if (fabs(v13) < 0.000001)
    {
      break;
    }

    v11 = v11 - v12 / v13;
    --v10;
  }

  while (v10);
  v14 = 0.0;
  if (a2 >= 0.0)
  {
    v14 = 1.0;
    if (a2 <= 1.0)
    {
      v15 = 0.0;
      v16 = 1.0;
      v17 = -1025;
      v18 = v3;
      do
      {
        if (__CFADD__(v17++, 1))
        {
          break;
        }

        v20 = -(v3 - (v8 + (v7 + v18 * v6) * v18) * v18);
        if (fabs(v20) < v9)
        {
          break;
        }

        if (v20 >= 0.0)
        {
          v16 = v18;
        }

        else
        {
          v15 = v18;
        }

        v18 = v15 + (v16 - v15) * 0.5;
      }

      while (v15 < v16);
      return v18;
    }
  }

  return v14;
}

void RB::Animation::eval(uint64_t a1, unint64_t a2, unsigned int *a3, double a4, double a5)
{
  v5 = *&a4;
  if (!a2)
  {
    return;
  }

  v9 = 0;
  v10 = a2 - 2;
  while (1)
  {
    v11 = (a1 + 4 * v9);
    v12 = *v11;
    if (v12 <= 12)
    {
      break;
    }

    if ((v12 - 13) >= 2)
    {
      if ((v12 - 15) < 3)
      {
LABEL_27:
        *&a4 = v11[1];
        v17 = vrecpe_f32(*&a4);
        v18 = vmul_f32(vrecps_f32(*&a4, v17), v17);
        *&a4 = v5 * vmul_f32(v18, vrecps_f32(*&a4, v18)).f32[0];
        if (*&a4 < 0.0)
        {
          *&a4 = 0.0;
        }

        if (*&a4 > 1.0)
        {
          *&a4 = 1.0;
        }

        if (v12 <= 7)
        {
          if ((v12 - 2) >= 3)
          {
            if (v12 <= 1)
            {
              return;
            }

            goto LABEL_58;
          }

LABEL_39:
          v19 = *a3;
          *&v32 = vrev64_s32(*(a3 + 1));
          v20 = a3[3];
          v33 = a3[4];
          v34 = v20;
          *(&v32 + 1) = __PAIR64__(a3[5], v19);
          RB::BezierTiming::Fn::solve(&v32, *&a4, 0.001);
          return;
        }

        if (v12 > 15)
        {
          if (v12 == 16 || v12 == 17)
          {
            return;
          }
        }

        else
        {
          if (v12 == 8)
          {
            goto LABEL_39;
          }

          if (v12 == 15)
          {
            return;
          }
        }

LABEL_58:
        abort();
      }

      if (v12 == 18)
      {
        *&a4 = v11[2];
        v24 = vrecpe_f32(*&a4);
        v25 = vmul_f32(vrecps_f32(*&a4, v24), v24);
        *&a4 = v5 * vmul_f32(v25, vrecps_f32(*&a4, v25)).f32[0];
        if (*&a4 < 0.0)
        {
          *&a4 = 0.0;
        }

        if (*&a4 > 1.0)
        {
          *&a4 = 1.0;
        }

        if (*(v11 + 1) >= 2u)
        {
          v26 = (v11 + 3);
          v27 = *(v11 + 1);
          do
          {
            v28 = v27 >> 1;
            v29 = &v26[2 * (v27 >> 1)];
            v31 = *v29;
            v30 = v29 + 2;
            v27 += ~(v27 >> 1);
            if (v31 < *&a4)
            {
              v26 = v30;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
        }

        return;
      }
    }

    else
    {
      *&a4 = RB::Animation::active_duration((v11 + 2), v10 - v9);
      v13 = vrecpe_f32(LODWORD(a4));
      v14 = vmul_f32(vrecps_f32(LODWORD(a4), v13), v13);
      a5 = COERCE_DOUBLE(vmul_f32(v14, vrecps_f32(LODWORD(a4), v14)));
      *&a5 = floorf(v5 * *&a5);
      v5 = v5 - (*&a5 * *&a4);
      if (v12 == 14 && (*&a5 & 1) != 0)
      {
        v15 = *&a4 - v5;
        v16 = *&a4 + -0.00001;
        if (v16 >= v15)
        {
          v5 = v15;
        }

        else
        {
          v5 = v16;
        }
      }
    }

LABEL_22:
    v9 += RB::Animation::_term_args[v12] + 1;
    if (v9 >= a2)
    {
      return;
    }
  }

  if (v12 > 8)
  {
    if (v12 == 11)
    {
      v5 = v11[1] * v5;
    }

    else if (v12 == 12)
    {
      v5 = fmaxf(v5 - v11[1], 0.0);
    }

    else if ((v12 - 9) < 2)
    {
      goto LABEL_41;
    }

    goto LABEL_22;
  }

  if (v12 < 5)
  {
    goto LABEL_27;
  }

  if ((v12 - 5) >= 3)
  {
    if (v12 == 8)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  *&a5 = v11[1];
  v21 = vrecpe_f32(*&a5);
  v22 = vmul_f32(vrecps_f32(*&a5, v21), v21);
  v5 = (v5 * 0.4) * vmul_f32(v22, vrecps_f32(*&a5, v22)).f32[0];
LABEL_41:
  *&v23 = vrev64q_s32(*a3).u64[0];
  *(&v23 + 1) = *(a3 + 1);
  v32 = v23;
  v33 = a3[4];
  RB::SpringTiming::eval(&v32, fmaxf(v5, 0.0));
}

const RB::Transition *RB::DisplayList::AtomizedItems::apply_effects(const RB::Transition *result, const RB::DisplayList::Interpolator::Layer *a2, uint64_t a3, unsigned int a4, RB::DisplayList::Item *a5, uint64_t a6)
{
  v187 = result;
  if (*(*(a3 + 8) + 32) != -1)
  {
    v9 = a2;
    result = RB::DisplayList::AtomizedItems::transition(result, a2);
    if (*(result + 12))
    {
      v13 = result;
      v14 = 0;
      v15 = result + 24;
      v188 = v9 + 200;
      if (a4)
      {
        v16 = 20;
      }

      else
      {
        v16 = 12;
      }

      v17 = 28;
      if ((a4 & 1) == 0)
      {
        v17 = 24;
      }

      v178 = v17;
      v179 = v16;
      v189 = a4 >> 1;
      LODWORD(v10.f64[0]) = 23;
      v184 = *&v10.f64[0];
      result = RB::Transition::_effect_args;
      v186 = v9;
      do
      {
        v18 = *(v13 + 5);
        if (!v18)
        {
          v18 = v15;
        }

        v19 = &v18[4 * v14];
        v20 = *(a3 + 8);
        v21 = *v20;
        if ((*v20 & 0x100000000) != 0)
        {
          v22 = 4;
        }

        else
        {
          v22 = 8;
        }

        if ((v21 & 0x400000000) != 0)
        {
          v23 = 16;
        }

        else
        {
          v23 = 32;
        }

        v24 = *v19;
        if (((v22 | v23 | a4) & (*v19 >> 10) & 0x3F) != a4)
        {
          goto LABEL_231;
        }

        if ((v21 & 0x800000000) != 0)
        {
          v25 = v189 & ((*v19 & 0x80u) >> 7) ^ ((*v19 & 0x100u) >> 8);
        }

        else
        {
          v25 = v189 & ((*v19 & 0x80u) >> 7);
        }

        v26 = *v19 & 0x3F;
        if (v26 > 0xE)
        {
          if ((*v19 & 0x3Fu) > 0x11)
          {
            if (v26 - 21 < 4)
            {
              if (v26 >= 0x17)
              {
                v40 = 23;
              }

              else
              {
                v40 = 21;
              }

              v41 = v26 == v40;
              if ((v24 & 0x200) != 0)
              {
                v45 = *(v20 + 6);
                v44 = *(v20 + 7);
                if (v45)
                {
                  v46 = v44;
                }

                else
                {
                  v46 = 1;
                }

                v47 = *(v186 + 29);
                if (!v47)
                {
                  v47 = v188;
                }

                if (v44 == 1 || v45 == 0)
                {
                  v49 = 0;
                }

                else
                {
                  v49 = v45;
                }

                v50 = &v47[16 * v46];
                v51 = v50[1];
                v190.f64[0] = *v50;
                v190.f64[1] = v51;
                RB::Rect::Union(&v190, *&v47[16 * v49], *&v47[16 * v49 + 8]);
              }

              else if (a5)
              {
                v190.f64[0] = RB::DisplayList::Item::styled_bounds(a5, 0);
                v190.f64[1] = v11.f64[0];
              }

              else if (*(v20 + v179) || *(v187 + 4) > v21 >> 36)
              {
                v190.f64[0] = (*(**v187 + 64))();
                v190.f64[1] = v11.f64[0];
                v123 = *(*v187 + 24);
                if (v123)
                {
                  RB::Rect::intersect(&v190, *(v123 + 16), *(v123 + 24));
                }
              }

              else
              {
                v147 = v187;
                if ((*(v187 + 88) & 1) == 0)
                {
                  v148 = RB::DisplayList::Item::styled_bounds(*v187, 0);
                  v147 = v187;
                  *(v187 + 9) = v148;
                  *(v187 + 10) = *&v11.f64[0];
                  *(v187 + 88) = 1;
                }

                v190 = *(v147 + 72);
              }

              HIDWORD(v52) = HIDWORD(v190.f64[1]);
              v53 = *&v190.f64[0];
              v54 = v41 ^ v25;
              LODWORD(v11.f64[0]) = v26;
              *&v11.f64[0] = vcgt_u32(v184, *&v11.f64[0]);
              v55 = vdup_lane_s32(*&v11.f64[0], 0);
              if (v26 >= 0x17)
              {
                v56 = *(&v190.f64[1] + 1);
              }

              else
              {
                v56 = *&v190.f64[1];
              }

              v57 = v56 * *(v19 + 1);
              v58 = *(v19 + 2) * v56;
              *&v52 = v58 + v56;
              LODWORD(v11.f64[0]) = 2.0;
              v59 = (v58 + v56) + (v57 * 2.0);
              v60 = v59 * RB::DisplayList::Interpolator::State::effect_time(a3, v13, v19, a4, v52, v11.f64[0]);
              v61 = v59 - v60;
              v62 = v60 - (v57 + v58);
              if (a4)
              {
                v63 = v62;
              }

              else
              {
                v63 = v61;
              }

              v64 = v63 - v57;
              if (a4)
              {
                v61 = v64;
              }

              else
              {
                v62 = v64;
              }

              if (v54)
              {
                v61 = v56 - v61;
              }

              v65.i32[0] = 0;
              *&v65.i32[1] = v61;
              v66 = vbsl_s8(v55, LODWORD(v61), v65);
              if (v54)
              {
                v62 = v56 - v62;
              }

              *&v12 = LODWORD(v62);
              v67.i32[0] = 0;
              *&v67.i32[1] = v62;
              *&v10.f64[0] = vadd_f32(vbsl_s8(v55, LODWORD(v62), v67), v53);
              v68 = *(a6 + 72);
              *&v11.f64[0] = vadd_f32(v66, v53);
              *(a6 + 56) = v10.f64[0];
              *(a6 + 64) = v11.f64[0];
              v9 = v186;
              result = RB::Transition::_effect_args;
              if ((v68 & 1) == 0)
              {
                *(a6 + 72) = 1;
              }

              goto LABEL_231;
            }

            if (v26 != 18)
            {
              goto LABEL_231;
            }

            v75 = *(v19 + 1);
            v76 = (v75 & 0xF) - 1;
            if (v76 >= 4)
            {
              v77 = 0x40000000;
            }

            else
            {
              v77 = v76 << 30;
            }

            v78 = v77 | v75 & 0x10;
            v79 = *(v19 + 2) * *(a3 + 20);
            *&v190.f64[0] = RB::DisplayList::AtomizedItems::animation_layer(v187);
            *v10.f64 = RB::Symbol::Animation::eval_replace((a4 & 1), v79, v78 ^ 0x10, &v190, v80);
            goto LABEL_110;
          }

          switch(v26)
          {
            case 0xFu:
              if ((v24 & 0x200) != 0)
              {
                v95 = *(v20 + 6);
                v94 = *(v20 + 7);
                if (v95)
                {
                  v96 = v94;
                }

                else
                {
                  v96 = 1;
                }

                v97 = *(v9 + 29);
                if (!v97)
                {
                  v97 = v188;
                }

                if (v94 == 1 || v95 == 0)
                {
                  v99 = 0;
                }

                else
                {
                  v99 = v95;
                }

                v100 = &v97[16 * v96];
                v101 = v100[1];
                v190.f64[0] = *v100;
                v190.f64[1] = v101;
                RB::Rect::Union(&v190, *&v97[16 * v99], *&v97[16 * v99 + 8]);
              }

              else if (a5)
              {
                v190.f64[0] = RB::DisplayList::Item::styled_bounds(a5, 0);
                v190.f64[1] = v69;
              }

              else if (*(v20 + v179) || *(v187 + 4) > v21 >> 36)
              {
                v190.f64[0] = (*(**v187 + 64))();
                v190.f64[1] = v128;
                v129 = *(*v187 + 24);
                if (v129)
                {
                  RB::Rect::intersect(&v190, *(v129 + 16), *(v129 + 24));
                }
              }

              else
              {
                if ((*(v187 + 88) & 1) == 0)
                {
                  *(v187 + 9) = RB::DisplayList::Item::styled_bounds(*v187, 0);
                  *(v187 + 10) = v174;
                  *(v187 + 88) = 1;
                }

                v190 = *(v187 + 72);
              }

              v102 = vmul_f32(*(v19 + 4), *&v190.f64[1]);
              v103 = vneg_f32(v102);
              if (v25)
              {
                v104 = -1;
              }

              else
              {
                v104 = 0;
              }

              *&v10.f64[0] = vmul_n_f32(vbsl_s8(vdup_n_s32(v104), v103, v102), 1.0 - RB::DisplayList::Interpolator::State::effect_time(a3, v13, v19, a4, *&v102, *&v103));
              v11.f64[0] = *v10.f64;
              *&v12 = *(v10.f64 + 1);
              *(a6 + 32) = vmlaq_n_f64(vmlaq_n_f64(*(a6 + 32), *a6, *v10.f64), *(a6 + 16), *(v10.f64 + 1));
              result = RB::Transition::_effect_args;
              if (*(a6 + 72) != 1)
              {
                break;
              }

              goto LABEL_154;
            case 0x10u:
              if ((v24 & 0x200) != 0)
              {
                v106 = *(v20 + 6);
                v105 = *(v20 + 7);
                if (v106)
                {
                  v107 = v105;
                }

                else
                {
                  v107 = 1;
                }

                v108 = *(v9 + 29);
                if (!v108)
                {
                  v108 = v188;
                }

                if (v105 == 1 || v106 == 0)
                {
                  v110 = 0;
                }

                else
                {
                  v110 = v106;
                }

                v111 = &v108[16 * v107];
                v112 = v111[1];
                v190.f64[0] = *v111;
                v190.f64[1] = v112;
                RB::Rect::Union(&v190, *&v108[16 * v110], *&v108[16 * v110 + 8]);
              }

              else if (a5)
              {
                v190.f64[0] = RB::DisplayList::Item::styled_bounds(a5, 0);
                v190.f64[1] = v70;
              }

              else if (*(v20 + v179) || *(v187 + 4) > v21 >> 36)
              {
                v190.f64[0] = (*(**v187 + 64))();
                v190.f64[1] = v130;
                v131 = *(*v187 + 24);
                if (v131)
                {
                  RB::Rect::intersect(&v190, *(v131 + 16), *(v131 + 24));
                }
              }

              else
              {
                if ((*(v187 + 88) & 1) == 0)
                {
                  *(v187 + 9) = RB::DisplayList::Item::styled_bounds(*v187, 0);
                  *(v187 + 10) = v175;
                  *(v187 + 88) = 1;
                }

                v190 = *(v187 + 72);
              }

              v11.f64[0] = *(v19 + 4);
              *&v10.f64[0] = vmul_f32(*&v11.f64[0], *&v190.f64[1]);
              v42 = vaddv_f32(*&v10.f64[0]);
              result = RB::Transition::_effect_args;
              if (v42 <= 0.0)
              {
                break;
              }

LABEL_168:
              *v10.f64 = RB::DisplayList::Interpolator::State::effect_time(a3, v13, v19, a4, v10.f64[0], v11.f64[0]);
              v11.f64[0] = 0.0;
              *v10.f64 = fmaxf(v42 - (*v10.f64 * v42), 0.0);
              if (*(a6 + 52) == 1)
              {
                LODWORD(v11.f64[0]) = *(a6 + 48);
                *v10.f64 = sqrtf((*v10.f64 * *v10.f64) + (*v11.f64 * *v11.f64));
              }

              *(a6 + 48) = LODWORD(v10.f64[0]);
              *(a6 + 52) = 1;
LABEL_171:
              result = RB::Transition::_effect_args;
              break;
            case 0x11u:
              v28 = *(v19 + 1);
              if ((v28 & 0xF) == 3)
              {
                v29 = 0x80000000;
              }

              else
              {
                v29 = 0x40000000;
              }

              if ((v28 & 0xF) == 1)
              {
                v30 = 0;
              }

              else
              {
                v30 = v29;
              }

              v31 = v30 | v28 & 0x10;
              v32 = *(v19 + 2) * *(a3 + 20);
              *&v190.f64[0] = RB::DisplayList::AtomizedItems::animation_layer(v187);
              *v10.f64 = RB::Symbol::Animation::eval_appear_disappear((a4 & 1), v32, v31 ^ 0x10, &v190, v33);
LABEL_110:
              *v11.f64 = *(a6 + 80) * *v11.f64;
              *(a6 + 80) = LODWORD(v11.f64[0]);
              v9 = v186;
              result = RB::Transition::_effect_args;
              if (*v10.f64 != 1.0)
              {
                v81 = *(v186 + 29);
                if (!v81)
                {
                  v81 = v188;
                }

                v82 = &v81[16 * *(*(a3 + 8) + v178)];
                v83 = vmla_f32(*v82, 0x3F0000003F000000, v82[1]);
                v84.f64[0] = 0.0;
                v84.f64[1] = *v10.f64;
                v190 = COERCE_UNSIGNED_INT64(*v10.f64);
                v191 = v84;
                v192 = vmlaq_n_f64(vmlaq_n_f64(vcvtq_f64_f32(v83), v190, -v83.f32[0]), v84, -v83.f32[1]);
                v10.f64[0] = RB::operator*(&v190, a6);
                *a6 = v10;
                *(a6 + 16) = v11;
                *(a6 + 32) = v12;
                if (*(a6 + 52) == 1)
                {
                  *&v12 = 0.5;
                  v11.f64[0] = 0.5 * *(a6 + 48);
                  v10.f64[0] = (v191.f64[1] + v190.f64[0]) * v11.f64[0];
                  *v10.f64 = v10.f64[0];
                  *(a6 + 48) = LODWORD(v10.f64[0]);
                }

                if (*(a6 + 72) == 1)
                {
                  v10 = vcvtq_f64_f32(*(a6 + 56));
                  DWORD1(v12) = HIDWORD(v190.f64[0]);
                  *&v10.f64[0] = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v192, v190, v10.f64[0]), v191, v10, 1));
                  v11 = vcvtq_f64_f32(*(a6 + 64));
                  *&v11.f64[0] = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v192, v190, v11.f64[0]), v191, v11, 1));
                  *(a6 + 56) = v10.f64[0];
                  *(a6 + 64) = v11.f64[0];
                }

                goto LABEL_171;
              }

              break;
          }
        }

        else if ((*v19 & 0x3Fu) > 4)
        {
          if (v26 - 7 < 4)
          {
            v34 = *(v9 + 29);
            if (!v34)
            {
              v34 = v188;
            }

            v35 = &v34[16 * *(v20 + 6)];
            v36 = *v35;
            v37 = &v34[16 * *(v20 + 7)];
            v38 = *v37;
            v39 = vsub_f32(*v37, *v35);
            if (v26 == 7)
            {
              v39.i32[1] = 0;
            }

            else
            {
              *&v12 = v35[1];
              v36 = COERCE_DOUBLE(vsub_f32(vadd_f32(v37[1], v38), vadd_f32(*&v12, *&v36)));
              v38.i32[1] = HIDWORD(v36);
              v38.i32[0] = 0;
              v39.i32[0] = 0;
              HIDWORD(v36) = 0;
              if (v26 != 8)
              {
                v36 = *&v39;
              }

              if (v26 == 10)
              {
                v39 = v38;
              }

              else
              {
                *&v39 = v36;
              }
            }

            if (*(v20 + 9) == 0.0)
            {
              v92 = *(a3 + 16);
            }

            else
            {
              v89 = v24 << 25;
              v90 = HIBYTE(v24);
              v91 = BYTE2(v24);
              if ((a4 & 1) == 0)
              {
                v91 = v90;
              }

              LODWORD(v36) = *(a3 + 20);
              v181 = *&v39;
              RB::DisplayList::Interpolator::Contents::animation_time(*v9, *(v20 + 8), v91 & (v89 >> 31), v36, *&v38);
              *&v39 = v181;
              result = RB::Transition::_effect_args;
              if (*(a3 + 28))
              {
                v92 = 1.0 - v92;
              }
            }

            v38.i32[0] = 0;
            LODWORD(v12) = a4 & 2;
            v93 = vbsl_s8(vdup_lane_s32(vmvn_s8(vceq_s32(*&v12, v38)), 0), v39, vneg_f32(v39));
            if (a4)
            {
              v92 = 1.0 - v92;
            }

            *&v10.f64[0] = vmul_n_f32(v93, v92);
            goto LABEL_136;
          }

          if (v26 == 5)
          {
            v85 = *(v20 + 6);
            if (*(v20 + 6))
            {
              v86 = *(v20 + 7);
            }

            else
            {
              v86 = 1;
            }

            v87 = *(v20 + 7) == 1 || *(v20 + 6) == 0;
            if (a5)
            {
              v190.f64[0] = RB::DisplayList::Item::styled_bounds(a5, 0);
              v190.f64[1] = v88;
            }

            else if (*(v20 + v179) || *(v187 + 4) > v21 >> 36)
            {
              v190.f64[0] = (*(**v187 + 64))();
              v190.f64[1] = v124;
              v125 = *(*v187 + 24);
              if (v125)
              {
                RB::Rect::intersect(&v190, *(v125 + 16), *(v125 + 24));
              }
            }

            else
            {
              v152 = v187;
              if ((*(v187 + 88) & 1) == 0)
              {
                v153 = RB::DisplayList::Item::styled_bounds(*v187, 0);
                v152 = v187;
                *(v187 + 9) = v153;
                *(v187 + 10) = v154;
                *(v187 + 88) = 1;
              }

              v190 = *(v152 + 72);
            }

            v155 = *&v190.f64[1];
            v156 = *(v186 + 29);
            if (!v156)
            {
              v156 = v188;
            }

            if (v87)
            {
              v157 = 0;
            }

            else
            {
              v157 = v85;
            }

            v158 = &v156[16 * v157];
            v159 = &v156[16 * v86];
            v161 = *v159;
            v160 = *(v159 + 1);
            if (a4)
            {
              v162 = *v158;
              v163 = *(v158 + 8);
            }

            else
            {
              v162 = *v159;
              v163 = *(v159 + 8);
              v161 = *v158;
              v160 = *(v158 + 1);
            }

            v164 = vadd_f32(vdiv_f32(vmul_f32(vsub_f32(*&v190.f64[0], v161), v163), *&v160), v162);
            v165 = vmul_f32(v163, *&v190.f64[1]);
            v166 = vdiv_f32(v165, *&v160);
            v183 = *&v190.f64[0];
            v167 = RB::DisplayList::Interpolator::State::effect_time(a3, v13, v19, a4, v160, *&v165);
            v168 = RB::mix(v164, v166, v183, v155, v167);
            v170 = vdiv_f32(v169, v155);
            v171 = vmla_f32(v183, 0x3F0000003F000000, v155);
            v172 = vcvtq_f64_f32(vmla_f32(*&v168, 0x3F0000003F000000, v169));
            v173.f64[0] = 0.0;
            v173.f64[1] = v170.f32[1];
            v190 = COERCE_UNSIGNED_INT64(v170.f32[0]);
            v191 = v173;
            v192 = vmlaq_n_f64(vmlaq_n_f64(v172, v190, -v171.f32[0]), v173, -v171.f32[1]);
            v10.f64[0] = RB::operator*(&v190, a6);
            *a6 = v10;
            *(a6 + 16) = v11;
            *(a6 + 32) = v12;
            v9 = v186;
            if (*(a6 + 52) == 1)
            {
              goto LABEL_228;
            }

            goto LABEL_229;
          }

          if (v26 == 6)
          {
            if (a5)
            {
              v43 = *(*a5 + 56);
            }

            else
            {
              v43 = *(**v187 + 56);
            }

            v126 = v43();
            if (v127)
            {
              v122 = v126;
            }

            else
            {
              if ((v19[1] & 2) != 0)
              {
                v134 = *(a3 + 8);
                v136 = *(v134 + 24);
                v135 = *(v134 + 28);
                if (v136)
                {
                  v137 = v135;
                }

                else
                {
                  v137 = 1;
                }

                v138 = *(v9 + 29);
                if (!v138)
                {
                  v138 = v188;
                }

                if (v135 == 1 || v136 == 0)
                {
                  v140 = 0;
                }

                else
                {
                  v140 = v136;
                }

                v141 = &v138[16 * v137];
                v142 = v141[1];
                v190.f64[0] = *v141;
                v190.f64[1] = v142;
                RB::Rect::Union(&v190, *&v138[16 * v140], *&v138[16 * v140 + 8]);
              }

              else if (a5)
              {
                v121.f64[0] = RB::DisplayList::Item::styled_bounds(a5, 0);
                v190.f64[0] = v121.f64[0];
              }

              else
              {
                v149 = *(a3 + 8);
                if (*(v149 + v179) || *(v187 + 4) > (*v149 >> 36))
                {
                  v121.f64[0] = (*(**v187 + 64))();
                  v190.f64[0] = v121.f64[0];
                  v190.f64[1] = v150;
                  v151 = *(*v187 + 24);
                  if (v151)
                  {
                    RB::Rect::intersect(&v190, *(v151 + 16), *(v151 + 24));
                  }
                }

                else
                {
                  if ((*(v187 + 88) & 1) == 0)
                  {
                    *(v187 + 9) = RB::DisplayList::Item::styled_bounds(*v187, 0);
                    *(v187 + 10) = v177;
                    *(v187 + 88) = 1;
                  }

                  v121 = *(v187 + 72);
                  v190 = v121;
                }
              }

              v122 = *&v190.f64[0];
            }

LABEL_224:
            v143 = *(v19 + 1);
            v182 = v122;
            if (v25)
            {
              v144 = vrecpe_f32(v143);
              v122 = vmul_f32(vrecps_f32(v143, v144), v144);
              *&v121.f64[0] = vmul_f32(v122, vrecps_f32(v143, v122));
              v180 = *v121.f64;
            }

            else
            {
              v180 = *(v19 + 1);
            }

            v145 = RB::DisplayList::Interpolator::State::effect_time(a3, v13, v19, a4, v121.f64[0], *&v122);
            v146.f64[0] = 0.0;
            v146.f64[1] = fmaxf(v180 + ((1.0 - v180) * v145), 0.0);
            v190 = *&v146.f64[1];
            v191 = v146;
            v192 = vmlaq_n_f64(vmlaq_n_f64(vcvtq_f64_f32(v182), *&v146.f64[1], -v182.f32[0]), v146, -v182.f32[1]);
            v10.f64[0] = RB::operator*(&v190, a6);
            *a6 = v10;
            *(a6 + 16) = v11;
            *(a6 + 32) = v12;
            if (*(a6 + 52) == 1)
            {
LABEL_228:
              *&v12 = 0.5;
              v11.f64[0] = 0.5 * *(a6 + 48);
              v10.f64[0] = (v191.f64[1] + v190.f64[0]) * v11.f64[0];
              *v10.f64 = v10.f64[0];
              *(a6 + 48) = LODWORD(v10.f64[0]);
            }

LABEL_229:
            result = RB::Transition::_effect_args;
            if (*(a6 + 72) == 1)
            {
              v10 = vcvtq_f64_f32(*(a6 + 56));
              DWORD1(v12) = HIDWORD(v190.f64[0]);
              *&v10.f64[0] = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v192, v190, v10.f64[0]), v191, v10, 1));
              v11 = vcvtq_f64_f32(*(a6 + 64));
              *&v11.f64[0] = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v192, v190, v11.f64[0]), v191, v11, 1));
              *(a6 + 56) = v10.f64[0];
              *(a6 + 64) = v11.f64[0];
            }
          }
        }

        else
        {
          if ((*v19 & 0x3Fu) > 2)
          {
            if (v26 != 3)
            {
              v42 = *(v19 + 1);
              if (v42 <= 0.0)
              {
                goto LABEL_231;
              }

              goto LABEL_168;
            }

            v71 = *(v19 + 4);
            v72 = vneg_f32(v71);
            if (v25)
            {
              v73 = -1;
            }

            else
            {
              v73 = 0;
            }

            v74 = vbsl_s8(vdup_n_s32(v73), v72, v71);
            *v10.f64 = RB::DisplayList::Interpolator::State::effect_time(a3, v13, v19, a4, *&v71, *&v72);
            result = RB::Transition::_effect_args;
            *&v10.f64[0] = vmul_n_f32(v74, 1.0 - *v10.f64);
LABEL_136:
            v11.f64[0] = *v10.f64;
            *&v12 = *(v10.f64 + 1);
            *(a6 + 32) = vmlaq_n_f64(vmlaq_n_f64(*(a6 + 32), *a6, *v10.f64), *(a6 + 16), *(v10.f64 + 1));
            if (*(a6 + 72) != 1)
            {
              goto LABEL_231;
            }

LABEL_154:
            *&v12 = *(a6 + 64);
            *&v11.f64[0] = vadd_f32(*(a6 + 56), *&v10.f64[0]);
            *&v10.f64[0] = vadd_f32(*&v12, *&v10.f64[0]);
            *(a6 + 56) = v11.f64[0];
            *(a6 + 64) = v10.f64[0];
            goto LABEL_231;
          }

          if (v26 == 1)
          {
            *v10.f64 = RB::DisplayList::Interpolator::State::effect_time(a3, v13, v19, a4, v10.f64[0], v11.f64[0]);
            result = RB::Transition::_effect_args;
            HIDWORD(v11.f64[0]) = 0;
            if (*v10.f64 < 0.0)
            {
              *v10.f64 = 0.0;
            }

            if (*v10.f64 > 1.0)
            {
              *v10.f64 = 1.0;
            }

            LODWORD(v11.f64[0]) = *(a6 + 80);
            *v10.f64 = *v10.f64 * *v11.f64;
            *(a6 + 80) = LODWORD(v10.f64[0]);
            goto LABEL_231;
          }

          if (v26 == 2)
          {
            if ((v24 & 0x200) != 0)
            {
              v114 = *(v20 + 6);
              v113 = *(v20 + 7);
              if (v114)
              {
                v115 = v113;
              }

              else
              {
                v115 = 1;
              }

              v116 = *(v9 + 29);
              if (!v116)
              {
                v116 = v188;
              }

              if (v113 == 1 || v114 == 0)
              {
                v118 = 0;
              }

              else
              {
                v118 = v114;
              }

              v119 = &v116[16 * v115];
              v120 = v119[1];
              v190.f64[0] = *v119;
              v190.f64[1] = v120;
              RB::Rect::Union(&v190, *&v116[16 * v118], *&v116[16 * v118 + 8]);
            }

            else if (a5)
            {
              v190.f64[0] = RB::DisplayList::Item::styled_bounds(a5, 0);
              v190.f64[1] = v27;
            }

            else if (*(v20 + v179) || *(v187 + 4) > v21 >> 36)
            {
              v190.f64[0] = (*(**v187 + 64))();
              v190.f64[1] = v132;
              v133 = *(*v187 + 24);
              if (v133)
              {
                RB::Rect::intersect(&v190, *(v133 + 16), *(v133 + 24));
              }
            }

            else
            {
              if ((*(v187 + 88) & 1) == 0)
              {
                *(v187 + 9) = RB::DisplayList::Item::styled_bounds(*v187, 0);
                *(v187 + 10) = v176;
                *(v187 + 88) = 1;
              }

              v190 = *(v187 + 72);
            }

            v121.f64[0] = v190.f64[1];
            v122 = vmla_f32(*&v190.f64[0], 0x3F0000003F000000, *&v190.f64[1]);
            goto LABEL_224;
          }
        }

LABEL_231:
        v14 += RB::Transition::_effect_args[*v19 & 0x3F] + 1;
      }

      while (v14 < *(v13 + 12));
    }
  }

  return result;
}

float RB::DisplayList::Interpolator::State::effect_time(RB::DisplayList::Interpolator::State *this, const RB::Transition *a2, const RB::Transition::Effect *a3, char a4, double a5, double a6)
{
  result = *(this + 4);
  v10 = *a3;
  if ((*a3 & 0x40) != 0)
  {
    v12 = (a4 & 1) != 0 ? 16 : 24;
    v13 = (v10 >> v12);
    if ((v10 >> v12))
    {
      if (*(this + 29) != v13 || (result = *(this + 6), (LODWORD(result) & 0x7FFFFFFFu) >= 0x7F800000))
      {
        *(this + 29) = v13;
        v14 = *(this + 1);
        LODWORD(a6) = *(v14 + 36);
        *&a5 = *(this + 5) - *&a6;
        RB::DisplayList::Interpolator::Contents::animation_time(*this, *(v14 + 32), v13, a5, a6);
        *(this + 6) = result;
        if (*(this + 28) == 1)
        {
          result = 1.0 - result;
          *(this + 6) = result;
        }
      }

      v10 = *a3;
    }
  }

  if ((a4 & 1) == 0)
  {
    result = 1.0 - result;
  }

  if ((v10 & 0x40) == 0)
  {
    v15 = HIBYTE(v10) * 0.0039216;
    if (v15 == 0.0)
    {
      if ((*(*(this + 1) + 4) & 2) != 0)
      {
        LOBYTE(v15) = *(a2 + 17);
        v20 = LODWORD(v15) * 0.0039216;
        if (v20 != 0.0)
        {
          v21 = v20;
          v22 = vrecpe_f32(LODWORD(v20));
          v23 = vmul_f32(vrecps_f32(LODWORD(v21), v22), v22);
          return (vmul_f32(v23, vrecps_f32(LODWORD(v21), v23)).f32[0] * (result - 1.0)) + 1.0;
        }
      }
    }

    else
    {
      v16 = BYTE2(v10) * 0.0039216;
      v17 = vrecpe_f32(LODWORD(v15));
      v18 = vmul_f32(vrecps_f32(LODWORD(v15), v17), v17);
      result = (result - v16) * vmul_f32(v18, vrecps_f32(LODWORD(v15), v18)).f32[0];
      if (result < 0.0 && v16 > 0.0)
      {
        result = 0.0;
      }

      if ((v16 + v15) < 1.0 && result > 1.0)
      {
        return 1.0;
      }
    }
  }

  return result;
}

float RB::SpringTiming::eval(RB::SpringTiming *this, float a2)
{
  v3 = -a2;
  if (*(this + 1) >= 1.0)
  {
    v6 = *(this + 3) + (*(this + 4) * a2);
    v5 = expf(*this * v3) * v6;
  }

  else
  {
    v4 = __sincosf_stret(*(this + 2) * a2);
    v5 = ((*(this + 3) * v4.__cosval) + (*(this + 4) * v4.__sinval)) * expf((*(this + 1) * v3) * *this);
  }

  return 1.0 - v5;
}

const RB::Transition *RB::DisplayList::AtomizedItems::transition(RB::DisplayList::AtomizedItems *this, const RB::DisplayList::Interpolator::Layer *a2)
{
  v3 = *(*this + 32);
  if (v3)
  {
    v4 = RB::DisplayList::Metadata::transition(v3);
  }

  else
  {
    v4 = 0;
  }

  return RB::DisplayList::Interpolator::Layer::item_transition(a2, v4);
}

uint64_t RB::vImageBuffer::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    free(*a1);
  }

  *(a1 + 32) = 0;
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  return a1;
}

void RB::vImageBuffer::~vImageBuffer(void **this)
{
  if (*(this + 32) == 1)
  {
    free(*this);
  }
}

RB::vImageBuffer *RB::vImageBuffer::vImageBuffer(RB::vImageBuffer *this, CGContextRef context)
{
  *(this + 32) = 0;
  *this = CGBitmapContextGetData(context);
  *(this + 1) = CGBitmapContextGetHeight(context);
  *(this + 2) = CGBitmapContextGetWidth(context);
  *(this + 3) = CGBitmapContextGetBytesPerRow(context);
  *(this + 32) = 0;
  return this;
}

RB::DisplayList::Layer *RB::DisplayList::Layer::mix(const RB::Rect **this, const RB::DisplayList::Interpolator::State *a2, const RB::DisplayList::Layer *a3, RB::DisplayList::Builder **a4)
{
  v35[12] = *MEMORY[0x1E69E9840];
  v8 = RB::DisplayList::Layer::copy(this, *a4, 1);
  v10 = v8;
  v11 = *(a2 + 4);
  v12 = *(v8 + 16);
  v13 = *(a3 + 16);
  if (v12 != 0.0 || v13 != 0.0)
  {
    if (v12 == 0.0)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = *(v8 + 16);
    }

    if (v13 == 0.0)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = *(a3 + 16);
    }

    if (v15 == v17)
    {
      v14 = 0;
      v16 = a3;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = RB::DisplayList::Layer::copy(a3, *a4, 4);
      *&v27 = 0;
      *(&v27 + 1) = (v15 / v17);
      v30[0] = *(&v27 + 1);
      v30[1] = v27;
      v31 = 0;
      v32 = 0;
      RB::DisplayList::CachedTransform::CachedTransform(v33, *a4, v30, 0, 0);
      RB::DisplayList::Layer::apply_transform_(v14, v33);
      RB::UntypedTable::~UntypedTable(v35);
      RB::UntypedTable::~UntypedTable(v34);
      RB::Heap::~Heap(&v33[0].f64[1]);
      *(v14 + 16) = 1065353216;
      v16 = v14;
      if (!*(a2 + 4))
      {
        goto LABEL_13;
      }
    }

    MEMORY[0x1EEE9AC00](v8, v9);
    v11 = v29;
    v19 = vmulq_n_f64(*(v18 + 16), v15);
    v20 = *(v18 + 32);
    v29[0] = vmulq_n_f64(*v18, v15);
    v29[1] = v19;
    v29[2] = v20;
    goto LABEL_13;
  }

  v14 = 0;
  v15 = 1.0;
  v16 = a3;
LABEL_13:
  RB::DisplayList::CachedTransform::CachedTransform(v33, a4, 1.0, v15);
  v21 = *a2;
  *&v30[0] = *(this + 18) | (*(a3 + 18) << 32);
  v22 = std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::find<std::pair<unsigned int,unsigned int>>((v21 + 40), v30);
  if (v22)
  {
    v25 = v22[3];
    if (v25)
    {
      v23.n128_u32[0] = *(a2 + 5);
      LODWORD(v24) = 1.0;
      RB::DisplayList::apply_interpolator(v25, *(a2 + 28), v23, *(*(a2 + 1) + 32), v10, v33, v24, 0, this[2], *(v16 + 2), v11, v28);
    }
  }

  RB::UntypedTable::~UntypedTable(v35);
  RB::UntypedTable::~UntypedTable(v34);
  RB::Heap::~Heap(&v33[0].f64[1]);
  if (v14)
  {
    (**v14)(v14);
  }

  return v10;
}

void sub_195D5D128(_Unwind_Exception *a1)
{
  RB::DisplayList::CachedTransform::~CachedTransform((v1 + 48));
  if (v2)
  {
    (**v2)(v2);
  }

  _Unwind_Resume(a1);
}

double RB::DisplayList::LayerItem::mix(const RB::Rect ***this, const RB::DisplayList::Interpolator::State *a2, const RB::DisplayList::Layer **a3, RB::DisplayList::Builder **a4)
{
  v8 = RB::DisplayList::Layer::mix(this[6], a2, a3[6], a4);
  v9 = *(this + 22);
  v10 = *(a3 + 22);
  _S10 = *(a2 + 4);
  v12 = *(*a4 + 1);
  v13 = *(this + 23);
  v14 = (v12[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v14 + 64 > v12[5])
  {
    v14 = RB::Heap::alloc_slow(v12 + 2, 0x40uLL, 7);
  }

  else
  {
    v12[4] = v14 + 64;
  }

  __asm { FCVT            H1, S10 }

  _H0 = v9 + ((v10 - v9) * _H1);
  __asm { FCVT            S0, H0 }

  *&result = RB::DisplayList::LayerItem::LayerItem(v14, v13 & 0x3F, v8, _S0);
  return result;
}

void RB::DisplayList::LayerItem::render(RB::DisplayList::LayerItem *this, int32x2_t *a2)
{
  v4 = *(this + 3);
  _H0 = *(this + 22);
  __asm { FCVT            S8, H0 }

  v10 = *(this + 23) & 0x3F;
  v11 = RB::DisplayList::LayerItem::bounds(this);
  RB::Bounds::Bounds(&v17, *&v11, v12, v13, v14);
  if (a2[11] != v4 || !RB::Bounds::contains(a2 + 12, *&v17, *(&v17 + 8)))
  {
    v15 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, 0, v4, v10, &v17, v15, _S8);
    goto LABEL_11;
  }

  v15 = 1;
  if (a2[10])
  {
    goto LABEL_10;
  }

  if (*&a2[17].i32[1] != _S8 || a2[18].i32[0] != v10)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::DisplayList::Layer::render(*(this + 6), a2, *(this + 7), 0);
}

uint64_t RB::CGContext::reset_ctm(uint64_t this)
{
  if (*(this + 80))
  {
    v1 = this;
    this = CGContextSetCTM();
    *(v1 + 80) = 0;
  }

  return this;
}

uint64_t RB::CGContext::color_format(RB::CGContext *this)
{
  result = RB::CGContext::bitmap_format(this);
  if ((result & 0x100000000) != 0)
  {
    if (result <= 1)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  else
  {
    Type = *(this + 38);
    if (Type < 0)
    {
      Type = CGContextGetType();
      *(this + 38) = Type;
    }

    if (Type != 4)
    {
      return 1;
    }

    v4 = 1;
    if ((*(this + 168) & 1) == 0)
    {
      if (CGBitmapContextGetBitsPerComponent(*this) < 9)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    return v4;
  }
}

uint64_t RB::CGContext::bitmap_format(RB::CGContext *this)
{
  if ((*(this + 169) & 1) == 0)
  {
    if (*(this + 168))
    {
      v2 = 0;
    }

    else
    {
      Type = *(this + 38);
      if ((Type & 0x80000000) != 0)
      {
        Type = CGContextGetType();
        *(this + 38) = Type;
      }

      v2 = Type | 0x100000000;
    }

    v4 = RB::CGContext::bitmap_format(*this, v2);
    *(this + 40) = v4;
    *(this + 164) = BYTE4(v4);
    *(this + 169) = 1;
  }

  return *(this + 20);
}

float32x2_t RB::CGContext::begin_bitmap@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, CGContextRef *a5@<X8>, int32x2_t a6@<D3>)
{
  LOWORD(v6) = a4;
  v11 = a1[2];
  v12 = *&a2[1];
  v13 = vmul_f32(*a2, v11);
  v14 = vmul_f32(*&v12, v11);
  *a2 = v13;
  a2[1] = v14;
  RB::Bounds::Bounds(&v31, v13, v14, v12, a6);
  if ((v6 & 0x100) != 0)
  {
    v6 = v6;
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = a1[1].u8[0];
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_8;
    }
  }

  if (v6 >= 0x10)
  {
    LODWORD(a3) = RB::CGContext::color_format(a1);
  }

  else
  {
    LODWORD(a3) = 2;
  }

LABEL_8:
  v15 = v32;
  v16 = a1[19].f32[1];
  if (v16 < 0.0)
  {
    CGContextGetEDRTargetHeadroom();
    v16 = v17;
    a1[19].f32[1] = v17;
  }

  RB::CGContext::create_bitmap(a3, v6 | 0x100, a5, v15, v16);
  v19 = *a5;
  if (v19)
  {
    CGContextTranslateCTM(v19, -v31.i32[0], -v31.i32[1]);
    CGContextScaleCTM(v19, COERCE_FLOAT(*&a1[2]), COERCE_FLOAT(HIDWORD(*&a1[2])));
  }

  v18.i32[0] = 0;
  v20 = vceq_s32(*&v32, 0x8000000080000000);
  v21 = vdup_lane_s32(vcgt_s32(v18, vpmin_u32(v20, v20)), 0);
  v22 = vbsl_s8(v21, vneg_f32(0x80000000800000), vcvt_f32_s32(*&v32));
  v23 = vbsl_s8(v21, 0x100000001000000, vcvt_f32_s32(v31));
  *a2 = v23;
  a2[1] = v22;
  v24 = a1[2];
  v25 = vrecpe_f32(v24.u32[0]);
  v26 = vmul_f32(vrecps_f32(v24.u32[0], v25), v25);
  v27 = vrecpe_f32(v24.u32[1]);
  v28 = vmul_f32(vrecps_f32(v24.u32[1], v27), v27);
  v29 = vmul_f32(vzip1_s32(v26, v28), vzip1_s32(vrecps_f32(v24.u32[0], v26), vrecps_f32(v24.u32[1], v28)));
  result = vmul_f32(v29, v23);
  *a2 = result;
  a2[1] = vmul_f32(v29, v22);
  return result;
}

uint64_t RB::cg_blend_mode(unsigned int a1)
{
  if (a1 <= 0x31 && ((0xE70C01FFA004uLL >> a1) & 1) == 0)
  {
    return dword_195E47818[a1];
  }

  if (a1)
  {
    return 0;
  }

  return 17;
}

void RB::Filter::GaussianBlur::render(float32x2_t *a1, float64x2_t *a2)
{
  v3 = a1[3].i32[0];
  v4 = vaddv_f32(*a1);
  v5 = (RB::AffineTransform::scale(a2 + 2) * 0.5) * v4;

  RB::CGContext::apply_blur(a2, v5, v3 & 1);
}

unint64_t RB::CGContext::bitmap_format(CGContext *a1, uint64_t a2)
{
  Type = CGContextGetType();
  if ((a2 & 0x100000000) != 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = Type;
  }

  if (v5 != 4)
  {
LABEL_11:
    v8 = 0;
    v10 = 0;
    return v10 | v8;
  }

  BitsPerComponent = CGBitmapContextGetBitsPerComponent(a1);
  BitsPerPixel = CGBitmapContextGetBitsPerPixel(a1);
  if (BitsPerPixel == 32)
  {
    if (BitsPerComponent == 8)
    {
      v9 = 8194;
      v8 = 1;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (BitsPerPixel == 8)
  {
    v8 = 0;
    if (BitsPerComponent == 8)
    {
      v9 = 7;
LABEL_15:
      v10 = v8;
      v8 = (CGBitmapContextGetBitmapInfo(a1) == v9) << 32;
      return v10 | v8;
    }

LABEL_16:
    v10 = 0;
    return v10 | v8;
  }

  v8 = 0;
  if (BitsPerComponent != 16)
  {
    goto LABEL_16;
  }

  v10 = 0;
  if (BitsPerPixel == 64)
  {
    v9 = 4353;
    v8 = 2;
    goto LABEL_15;
  }

  return v10 | v8;
}

__n128 RB::vImageBuffer::vImageBuffer(RB::vImageBuffer *this, const RB::vImageBuffer *a2)
{
  *(this + 32) = 0;
  result = *a2;
  v3 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v3;
  return result;
}

double RB::mix(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  v5 = vbsl_s8(vcltz_f32(a2), vadd_f32(a2, a1), a1);
  v6 = vbsl_s8(vcltz_f32(a4), vadd_f32(a4, a3), a3);
  v7 = vadd_f32(v5, vabs_f32(a2));
  return RB::Rect::from_bounds(vmla_n_f32(v5, vsub_f32(v6, v5), a5), vmla_n_f32(v7, vsub_f32(vadd_f32(v6, vabs_f32(a4)), v7), a5));
}

uint64_t RB::DisplayList::Item::mix_bounds(RB::DisplayList::Item *this, const State *a2, float32x2_t *a3, float32x2_t *a4, const RB::DisplayList::Item *a5)
{
  *a3 = RB::mix(*a3, a3[1], *a4, a4[1], *&a2->var0);
  a3[1] = v6;
  return 1;
}

float32x2_t RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Color>::atom_bounds(float32x2_t *a1, unsigned int a2, int a3)
{
  v4 = RB::Coverage::Glyphs::glyph_bounds(a1 + 7, a2, a3);
  v6 = a1[6];

  return RB::operator*(v6, *&v4, v5);
}

uint64_t RB::DisplayList::AtomizedItems::mix_clip_bounds(float32x2_t *this, const RB::DisplayList::Interpolator::State *a2, RB::Rect *a3, float32x2_t **a4)
{
  v7 = *(*this + 24);
  v8 = *a4;
  if (this[3] != v7)
  {
    v9 = v8[3];
    goto LABEL_3;
  }

  v9 = v8[3];
  if (*&this[4] == v9)
  {
LABEL_3:
    result = RB::DisplayList::CachedTransform::mix_clip_bounds(a2, this + 12, v7, v9);
    this[14].i16[0] = result | 0x100;
    v11 = (*a4)[3];
    this[3] = *(*this + 24);
    this[4] = v11;
    this[6] = 1;
    if (!result)
    {
      return result;
    }

    goto LABEL_4;
  }

  if (this[14].i8[1] == 1)
  {
    if ((this[14].i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v12 = RB::DisplayList::CachedTransform::mix_clip_bounds(a2, this + 12, v7, v9);
    this[14].i16[0] = v12 | 0x100;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_4:
  *a3 = *this[12].f32;
  return 1;
}

uint64_t RB::DisplayList::CachedTransform::mix_clip_bounds(uint64_t a1, float32x2_t *a2, double *a3, void *a4)
{
  *a2 = 0x100000001000000;
  a2[1] = vneg_f32(0x80000000800000);
  result = 1;
  if (a3)
  {
    v6 = a4;
    if (a4)
    {
      v7 = a3;
      while (1)
      {
        if (!RB::same_type<RB::DisplayList::Clip>(v7[1] & 0xFFFFFFFFFFFFFFFELL, v6[1] & 0xFFFFFFFFFFFFFFFELL))
        {
          return 1;
        }

        v9 = v7[3];
        v13 = v7[2];
        v14 = v9;
        v10 = v6[3];
        v12[0] = v6[2];
        v12[1] = v10;
        if (((*(*(v7[1] & 0xFFFFFFFFFFFFFFFELL) + 80))(v7[1] & 0xFFFFFFFFFFFFFFFELL, a1, &v13, v12, v6[1] & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
        {
          break;
        }

        RB::Rect::intersect(a2, v13, v14);
        v11 = vceqz_f32(a2[1]);
        if ((vpmax_u32(v11, v11).u32[0] & 0x80000000) != 0)
        {
          return 1;
        }

        v7 = *v7;
        result = 1;
        if (v7)
        {
          v6 = *v6;
          if (v6)
          {
            continue;
          }
        }

        return result;
      }

      return 0;
    }
  }

  return result;
}

uint64_t RB::Symbol::anonymous namespace::contains_slash_or_badge_layer(RB::Symbol::_anonymous_namespace_ *this, NSArray *a2)
{
  v2 = this;
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  result = [(RB::Symbol::_anonymous_namespace_ *)this countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v22;
    v15 = *v22;
    v16 = v2;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v8 = [v7 tags];
          if (v8)
          {
            v9 = v8;
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v18;
              while (2)
              {
                for (j = 0; j != v11; ++j)
                {
                  if (*v18 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v17 + 1) + 8 * j);
                  if ([v14 isEqualToString:{@"_slash", v15, v16}] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"_badge"))
                  {
                    return 1;
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
                v5 = v15;
                v2 = v16;
                if (v11)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }

      v4 = [(RB::Symbol::_anonymous_namespace_ *)v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      result = 0;
    }

    while (v4);
  }

  return result;
}

uint64_t *RB::DisplayList::Contents::copy_atoms(RB::DisplayList::Contents *this, const RB::DisplayList::Metadata **a2, unsigned int a3, unsigned int a4)
{
  result = *a2;
  if (*a2)
  {
    result = RB::DisplayList::Metadata::text_identity(result);
    if (result)
    {
      v9 = RB::TextIdentity::copy_atoms(result, (this + 16), a3, a4);
      result = ((*(this + 4) + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((result + 2) > *(this + 5))
      {
        result = RB::Heap::alloc_slow(this + 2, 0x10uLL, 7);
      }

      else
      {
        *(this + 4) = result + 2;
      }

      *result = *a2 | 3;
      result[1] = v9;
      *a2 = result;
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v24);
  v13 = *(*&a4->f64[0] + 8);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::Color::mix(v8 + 112, a3 + 112, 3, v14);
  v15.f64[0] = RB::operator*(a1[6], a4 + 68);
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v18.f64[0] = RB::operator*(*(a3 + 48), a4 + 68);
  v22[0] = v18;
  v22[1] = v19;
  v22[2] = v20;
  RB::Coverage::Glyphs::mix((v8 + 56), a2, (a3 + 56), v23, v22, *(v8 + 48), (v13 + 16));
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

double RB::Coverage::Glyphs::Glyphs(RB::Coverage::Glyphs *this, const RB::Coverage::Glyphs *a2, RB::Heap *a3, unsigned int a4, unsigned int a5)
{
  v5 = RB::Coverage::Glyphs::Glyphs(this, a3, *a2, a5, (*(a2 + 1) + 8 * *(a2 + 4) + 2 * a4), (*(a2 + 1) + 8 * a4), *(a2 + 5), *(a2 + 52), *(a2 + 3), *(a2 + 12), *(a2 + 53));
  result = 7.29112205e-304;
  v5[4] = 0x100000001000000;
  v5[5] = vneg_f32(0x80000000800000);
  return result;
}

CGAffineTransform *RB::mix(CGAffineTransform *this, float64x2_t *a2, const RB::AffineTransform *a3, float a4)
{
  v6 = *&this->a;
  v7 = *&this->c;
  v9 = *a2;
  v8 = a2[1];
  v10 = vandq_s8(vceqq_f64(v7, v8), vceqq_f64(*&this->a, *a2));
  if ((vandq_s8(vdupq_laneq_s64(v10, 1), v10).u64[0] & 0x8000000000000000) == 0)
  {
    v11 = a2->f64[1];
    if (v6.f64[1] != 0.0 || v7.f64[0] != 0.0 || v9.f64[1] != 0.0 || v8.f64[0] != 0.0)
    {
      v12 = a2[1].f64[1];
      if (v6.f64[0] != 0.0 || v7.f64[1] != 0.0 || v9.f64[0] != 0.0 || v8.f64[1] != 0.0)
      {
        v17 = *a2;
        v18 = a2[1];
        memset(&v22, 0, sizeof(v22));
        *&transform.a = v6;
        *&transform.c = v7;
        *&transform.tx = *&this->tx;
        CGAffineTransformDecompose(&v22, &transform);
        v20.a = v17.f64[0];
        v20.b = v11;
        v20.c = v18.f64[0];
        v20.d = v12;
        *&v20.tx = a2[2];
        memset(&transform, 0, sizeof(transform));
        CGAffineTransformDecompose(&transform, &v20);
        width = v22.scale.width;
        height = v22.scale.height;
        if ((v22.scale.width >= 0.0 || transform.b >= 0.0) && (v22.scale.height >= 0.0 || transform.a >= 0.0))
        {
          rotation = v22.rotation;
        }

        else
        {
          width = -v22.scale.width;
          height = -v22.scale.height;
          v22.scale.width = -v22.scale.width;
          v22.scale.height = -v22.scale.height;
          rotation = dbl_195E42810[v22.rotation < 0.0] + v22.rotation;
          v22.rotation = rotation;
        }

        if (rotation == 0.0)
        {
          v22.rotation = 6.28318531;
          rotation = 6.28318531;
        }

        d = transform.d;
        if (transform.d == 0.0)
        {
          transform.d = 6.28318531;
          d = 6.28318531;
        }

        if (vabdd_f64(rotation, d) > 3.14159265)
        {
          if (rotation <= d)
          {
            d = d + -6.28318531;
            transform.d = d;
          }

          else
          {
            rotation = rotation + -6.28318531;
            v22.rotation = rotation;
          }
        }

        components.scale.width = width + (transform.a - width) * a4;
        components.scale.height = height + (transform.b - height) * a4;
        components.horizontalShear = v22.horizontalShear + (transform.c - v22.horizontalShear) * a4;
        components.rotation = rotation + (d - rotation) * a4;
        components.translation = vmlaq_n_f64(v22.translation, vsubq_f64(*&transform.tx, v22.translation), a4);
        return CGAffineTransformMakeWithComponents(&v20, &components);
      }
    }
  }

  return this;
}

void RB::Fill::Color::mix(uint64_t a1, uint64_t a2, int a3, float32x4_t a4)
{
  *v4.i32 = 1.0 - a4.f32[0];
  v4.i32[1] = a4.i32[0];
  *a4.f32 = v4;
  RB::Fill::Color::mix(a1, a2, a3, a4, v4);
}

void RB::Fill::Color::mix(uint64_t a1, uint64_t a2, int a3, float32x4_t _Q0, float16x4_t _D1)
{
  _Q16.i64[0] = _Q0.i64[0];
  _Q0.i16[0] = *(a2 + 8);
  __asm { FCMP            H1, #0 }

  if (!_ZF)
  {
    __asm { FCMP            H0, #0 }

    if (_ZF)
    {
      _Q0.i16[0] = _D1.i16[0];
    }

    else
    {
      _D1.i16[1] = _H0;
      _Q0 = vcvtq_f32_f16(_D1);
      *_Q0.f32 = vmul_f32(*_Q0.f32, *_Q16.f32);
      _Q0.f32[0] = vaddv_f32(*_Q0.f32);
      __asm { FCVT            H0, S0 }
    }
  }

  *(a1 + 8) = _Q0.i16[0];
  _Q0.i16[0] = *(a2 + 10);
  __asm { FCMP            H1, #0 }

  if (!_ZF)
  {
    __asm { FCMP            H0, #0 }

    if (_ZF)
    {
      _Q0.i16[0] = _D1.i16[0];
    }

    else
    {
      _D1.i16[1] = _H0;
      _Q0 = vcvtq_f32_f16(_D1);
      *_Q0.f32 = vmul_f32(*_Q0.f32, *_Q16.f32);
      _Q0.f32[0] = vaddv_f32(*_Q0.f32);
      __asm { FCVT            H0, S0 }
    }
  }

  *(a1 + 10) = _Q0.i16[0];
  if (*(a1 + 13) != 1 || (v14 = *(a2 + 13), (v14 & 1) == 0))
  {
    v15 = *(a1 + 6);
    v16 = *(a2 + 6);
    v17 = *a1;
    v18 = *a1;
    *(&v18 + 3) = v15;
    v19 = *a2;
    v20 = *a2;
    *(&v20 + 3) = v16;
    v21 = *a1;
    v21.i16[3] = COERCE_UNSIGNED_INT(1.0);
    v22 = COERCE_DOUBLE(vmul_lane_f16(v21, *&v18, 3));
    v19.i16[3] = COERCE_UNSIGNED_INT(1.0);
    v23 = COERCE_DOUBLE(vmul_lane_f16(v19, *&v20, 3));
    if (v15 == v16)
    {
      v23 = v20;
      *&v24 = v18;
    }

    else
    {
      *&v24 = v22;
    }

    __asm { FCVT            H7, S16 }

    _S2 = _Q16.i32[1];
    __asm { FCVT            H2, S2 }

    v27 = vmla_n_f16(vmul_n_f16(*&v23, *&_S2), v24, _H7);
    _ZF = v15 == v16;
    v28 = v27;
    if (!_ZF)
    {
      __asm { FCMP            H5, #0 }

      _ZF = _ZF || _H5 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
      v28 = v27;
      if (!_ZF)
      {
        v31 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / _H5;
        *v28.i16 = v31 * *v27.i16;
        v28 = vext_s8(vext_s8(v28, v28, 2uLL), vmul_n_f16(vext_s8(v27, v17, 2uLL), v31), 6uLL);
      }
    }

    v17.i16[3] = *(a1 + 6);
    v28.i16[3] = v27.i16[3];
    v32 = vbsl_s8(vceq_f16(v17, 0xF800F800F800F800), v17, v28);
    goto LABEL_57;
  }

  if (v14 != 1 || *(a1 + 12) != *(a2 + 12) || *a1 != *a2 || *(a1 + 2) != *(a2 + 2) || *(a1 + 4) != *(a2 + 4))
  {
    v33 = 0;
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v33 = 0;
          v5 = *(a2 + 12) & 0xF | 0x10;
        }
      }

      else
      {
        v33 = 0;
        v5 = *(a2 + 12);
      }

      goto LABEL_37;
    }

    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_37:
        v70 = _Q16;
        *v77 = *a1;
        *&v77[6] = *(a1 + 6);
        _Q0.i64[0] = 0;
        RB::Fill::Color::convert(v77, v5, _Q0);
        v34 = *v77;
        v35 = *&v77[12];
        v74 = *v77;
        v76 = *&v77[12];
        v75 = *&v77[8];
        *v77 = *a2;
        *&v77[6] = *(a2 + 6);
        v36.i64[0] = 0;
        RB::Fill::Color::convert(v77, v5, v36);
        v71 = *v77;
        v73 = *&v77[12];
        v72 = *&v77[8];
        if (v33)
        {
          RB::Fill::Color::convert_to_oklab(&v74);
          RB::Fill::Color::convert_to_oklab(&v71);
          v39 = v74;
          v40 = v74;
          v40.i16[3] = v74.i16[3];
          v41 = v71;
          v42 = v71;
          v42.i16[3] = v71.i16[3];
          v39.i16[3] = COERCE_UNSIGNED_INT(1.0);
          v43 = COERCE_DOUBLE(vmul_lane_f16(v39, v40, 3));
          v41.i16[3] = COERCE_UNSIGNED_INT(1.0);
          v44 = COERCE_DOUBLE(vmul_lane_f16(v41, v42, 3));
          if (*&v74.i16[3] == *&v71.i16[3])
          {
            v44 = *&v42;
          }

          else
          {
            *&v40 = v43;
          }

          _Q0 = v70;
          __asm { FCVT            H6, S0 }

          _Q0.i32[0] = v70.i32[1];
          __asm { FCVT            H0, S0 }

          *_Q0.f32 = vmla_n_f16(vmul_n_f16(*&v44, *_Q0.i16), v40, _H6);
          if (*&v74.i16[3] != *&v71.i16[3])
          {
            __asm { FCMP            H2, #0 }

            if (!_ZF && *_D2.i16 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v47 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *_D2.i16;
              *_D2.i16 = v47 * *_Q0.i16;
              v48 = vext_s8(vext_s8(_D2, _D2, 2uLL), vmul_n_f16(vext_s8(*_Q0.f32, *_Q0.f32, 2uLL), v47), 6uLL);
              v48.i16[3] = _Q0.i16[3];
              *_Q0.f32 = v48;
            }
          }

          v35 = v76;
          _D1 = vmul_f16(vmul_f16(*_Q0.f32, *_Q0.f32), *_Q0.f32);
          _H4 = -15714;
          __asm { FMLA            H2, H4, V1.H[1] }

          _H4 = 13156;
          __asm { FMLA            H2, H4, V1.H[2] }

          v54 = vmul_f16(vext_s8(_D1, *_Q0.f32, 2uLL), 1054194081);
          v55 = vdup_lane_s16(v54, 0);
          v55.i16[0] = vmulh_lane_f16(COERCE_SHORT_FLOAT(16696), _D1, 1);
          v54.i16[0] = vmulh_lane_f16(COERCE_SHORT_FLOAT(-19082), _D1, 2);
          _Q0.i16[0] = _H2;
          *(_Q0.i32 + 2) = vuzp1_s16(*&vmovl_u16(vadd_f16(vmla_n_f16(v55, 2622274835, *_D1.i16), v54)), *_Q0.f32).u32[0];
        }

        else
        {
          v56 = *v77;
          v57 = v34;
          v58 = v34;
          v58.i16[3] = v34.i16[3];
          v59 = *v77;
          HIWORD(v59) = *&v77[6];
          v57.i16[3] = COERCE_UNSIGNED_INT(1.0);
          _D2 = COERCE_DOUBLE(vmul_lane_f16(v57, v58, 3));
          v56.i16[3] = COERCE_UNSIGNED_INT(1.0);
          v61 = COERCE_DOUBLE(vmul_lane_f16(v56, *&v59, 3));
          if (*&v34.i16[3] == *&v77[6])
          {
            v61 = v59;
            _D2 = *&v58;
          }

          _S6 = v70.i32[0];
          __asm { FCVT            H5, S6 }

          _S6 = v70.i32[1];
          __asm { FCVT            H6, S6 }

          *_Q0.f32 = vmla_n_f16(vmul_n_f16(*&v61, *&_S6), *&_D2, _H5);
          if (*&v34.i16[3] != *&v77[6])
          {
            __asm { FCMP            H2, #0 }

            if (!_ZF && *&_D2 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v66 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *&_D2;
              *&_D2 = v66 * *_Q0.i16;
              v67 = vext_s8(vext_s8(*&_D2, *&_D2, 2uLL), vmul_n_f16(vext_s8(*_Q0.f32, *_Q0.f32, 2uLL), v66), 6uLL);
              v67.i16[3] = _Q0.i16[3];
              *_Q0.f32 = v67;
            }
          }
        }

        v68 = *(a1 + 12);
        *v77 = _Q0.i64[0];
        *&v77[12] = v35;
        *&v77[8] = 0;
        _Q0.i64[0] = 0;
        RB::Fill::Color::convert(v77, v68, _Q0);
        v69 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v77), xmmword_195E456A0));
        v32 = vbsl_s8(vceq_f16(*a1, 0xF800F800F800F800), *a1, vzip1_s32(*v77, vuzp1_s16(v69, v69)));
LABEL_57:
        *a1 = v32;
        return;
      }

      v33 = 1;
    }

    v5 = *(a2 + 12) & 0xF;
    goto LABEL_37;
  }

  _Q0.i16[0] = *(a1 + 6);
  if (*_Q0.i16 != COERCE_SHORT_FLOAT(-2048))
  {
    _Q0.i16[1] = *(a2 + 6);
    *(a1 + 6) = vaddv_f16(vmul_f16(*_Q0.f32, vcvt_f16_f32(_Q16)));
  }
}