uint64_t sub_2614704E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a4 + 8) = 0;
  *a4 = 0;
  v5 = a5;
  do
  {
    v6 = v5--;
    v7 = result + 12 * v5;
    v8 = 4;
    v9 = 3;
    do
    {
      v10 = *(v7 + 4 * (v9 - 1));
      v11 = v8;
      do
      {
        *(a3 + 12 * (v9 - 1) + 4 * (v11 - 2)) = *(a3 + 12 * (v9 - 1) + 4 * (v11 - 2)) + (*(v7 + 4 * (v11 - 2)) * v10);
        --v11;
      }

      while (v11 > 1);
      *(a4 + 4 * (v9 - 1)) = *(a4 + 4 * (v9 - 1)) + (v10 * *(a2 + 4 * v5));
      --v8;
    }

    while (v9-- > 1);
  }

  while (v6 > 1);
  v13 = (a3 + 44);
  v14 = (a3 + 36);
  v15 = 3;
  v16 = 4;
  do
  {
    if (v15 <= 2)
    {
      v17 = v14;
      v18 = v16;
      v19 = v13;
      do
      {
        v20 = *v19;
        v19 += 3;
        *v17++ = v20;
      }

      while (v18++ != 3);
    }

    v13 -= 4;
    --v16;
    v14 -= 4;
  }

  while (v15-- >= 2);
  return result;
}

atomic_uint *sub_2614705CC(atomic_uint *result)
{
  v2 = result[2];
  if (v2 == 800000 || v2 == 0)
  {
    abort();
  }

  if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    result[2] = -559026175;
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t *sub_261470648(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = v5 - *v3;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_2614709BC();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_2614709D4();
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *v3 = 0;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return a1;
}

uint64_t sub_261470750(uint64_t result)
{
  v1 = result;
  v2 = *(result + 80);
  if (v2 <= *(result + 88))
  {
    v3 = *(result + 88);
  }

  else
  {
    v3 = *(result + 80);
  }

  while (1)
  {
    *(v1 + 8) = *(v1 + 2);
    v4 = *(v1 + 5);
    v5 = v4;
    for (i = 4; i != 6; ++i)
    {
      v7 = *v5++;
      *&v1[4 * i] += v7;
    }

    v8 = v4 + 2;
    *(v1 + 5) = v8;
    if (v8 == *(v1 + 6))
    {
      *(v1 + 40) = *(v1 + 24);
    }

    if (v2 == v3)
    {
      break;
    }

    result = sub_2614708FC(v1);
    if (!result)
    {
      break;
    }

    *(v1 + 10) = ++v2;
    result = sub_261470964(*(v1 + 1), *(v1 + 4), *(v1 + 5));
    v9 = *v1;
    if (v9 == result)
    {
      v10 = 0;
    }

    else
    {
      v11 = *(v1 + 18);
      if (v11)
      {
        if (v11 >= *(v1 + 19))
        {
          *v1 = v9 ^ 1;
          *(v1 + 18) = 0;
          return result;
        }

        v10 = v11 + 1;
      }

      else
      {
        v12 = *(v1 + 2);
        *(v1 + 7) = v12;
        v13 = *(v1 + 16);
        if (v13 > v12)
        {
          *(v1 + 14) = v13;
        }

        v14 = HIDWORD(v12);
        v15 = *(v1 + 17);
        if (v15 > v14)
        {
          *(v1 + 15) = v15;
        }

        v10 = 1;
      }
    }

    *(v1 + 18) = v10;
  }

  return result;
}

void sub_26147086C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL sub_2614708FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x80000000) != 0)
  {
    return 0;
  }

  result = 0;
  if ((v1 & 0x8000000000000000) == 0)
  {
    v4 = *(a1 + 8);
    v5 = v4[7];
    v6 = -v5;
    v7 = v4[4];
    v8 = v7 & -v5;
    v9 = v5 - 1;
    v10 = v4[2];
    if ((v10 & v9 | v8) > (v1 & 0x7FFFFFFF))
    {
      return (v7 & v9 | v10 & v6) > HIDWORD(v1);
    }
  }

  return result;
}

void sub_2614709D4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_261470A08(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_261470A64(exception, a1);
  __cxa_throw(exception, off_279AD85D8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_261470A64(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

double sub_261470A98(int a1, int a2, uint64_t a3)
{
  v3.f64[0] = a1;
  v3.f64[1] = a2;
  v4.i64[0] = *a3;
  v4.i64[1] = HIDWORD(*a3);
  v5 = vcvtq_f64_s64(v4);
  v6 = vmulq_f64(v3, v5);
  return a1 - (v6.f64[0] + 0.0 + v6.f64[1] + *(a3 + 8)) / (vmulq_f64(v5, v5).f64[0] + vmuld_lane_f64(v5.f64[1], v5, 1)) * v5.f64[0];
}

void sub_261470B0C(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_2614709D4();
}

double sub_261470B54(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    *(&v9 + i) = *(a1 + 4 * i);
  }

  v3 = 0;
  *&v4 = v9;
  v5 = v10;
  do
  {
    *(&v9 + v3) = *(a2 + 4 * v3);
    ++v3;
  }

  while (v3 != 3);
  v6 = vdupq_lane_s64(v4, 0);
  v6.f64[0] = v5.f64[1];
  *&v7.f64[0] = vdupq_laneq_s64(v10, 1).u64[0];
  v7.f64[1] = v9;
  *&result = *&vdivq_f64(vmlaq_f64(vmulq_f64(v10, vnegq_f64(v6)), v7, v5), vdupq_lane_s64(COERCE__INT64(*&v4 * *v10.i64 - v5.f64[0] * v9), 0));
  return result;
}

uint64_t sub_261470BE0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_261470D9C(result, a4);
  }

  return result;
}

void sub_261470CC4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_261470D54(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_261470D18(uint64_t a1)
{
  sub_2614C0890(a1);

  JUMPOUT(0x2667045D0);
}

atomic_uint *sub_261470D54(atomic_uint *result)
{
  v1 = result;
  v2 = *result;
  for (i = *(result + 1); i != v2; i -= 8)
  {
    v4 = *(i - 8);
    result = v4;
    if (v4)
    {
      result = sub_2614705CC(result);
    }
  }

  *(v1 + 1) = v2;
  return result;
}

void sub_261470D9C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_261470E48(a2);
  }

  sub_2614709BC();
}

uint64_t sub_261470DDC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 8);
      v3 -= 8;
      v5 = v6;
      if (v6)
      {
        sub_2614705CC(v5);
      }
    }
  }

  return a1;
}

void sub_261470E48(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_2614709D4();
}

uint64_t sub_261470E90(uint64_t a1, atomic_uint *a2, uint64_t *a3, char a4, char a5, int a6, int a7)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  }

  v15 = a2;
  memset(v14, 0, sizeof(v14));
  sub_261470BE0(v14, *a3, a3[1], (a3[1] - *a3) >> 3);
  sub_2614C0920(a1, &v15, v14, a4);
  v16 = v14;
  sub_261470CC4(&v16);
  if (a2)
  {
    sub_2614705CC(a2);
  }

  *a1 = &unk_2873D16B0;
  *(a1 + 88) = a5;
  *(a1 + 92) = a6;
  *(a1 + 96) = a7;
  return a1;
}

void sub_261470F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_261470CC4(va);
  if (v6)
  {
    sub_2614705CC(v6);
  }

  _Unwind_Resume(a1);
}

BOOL sub_261470F94(_DWORD *a1, double a2)
{
  if ((LODWORD(a2) & 0x80000000) != 0 || (v3 = *a1, *(*a1 + 8) <= LODWORD(a2)) || (HIDWORD(a2) & 0x80000000) != 0 || v3[1].i64[0] <= HIDWORD(a2))
  {
    v4 = -1;
  }

  else
  {
    v4 = sub_261518AF8(v3, a2);
  }

  return v4 == a1[6];
}

BOOL sub_261470FF8(int32x2_t *a1, float a2)
{
  v3 = 0;
  v4 = (a2 + a2);
  v5 = (a2 - a2);
  v6 = *&a1[1];
  v7 = 1;
  while (2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = v10;
      *&a1[1] = v6;
      a1[2] = qword_261561FD8[2 * (v7 & 1) + v8];
      v12 = sub_261471CBC(a1, 1, v4, 0, 1);
      if (v12 == -1)
      {
        return 0;
      }

      v10 = 0;
      v9 += v12;
      v8 = 1;
    }

    while ((v11 & 1) != 0);
    v13 = v9 + 1;
    if (v3 && (v13 < v5 || v9 >= v4))
    {
      return 0;
    }

    v7 ^= 1u;
    v15 = *&a1[1];
    *(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v7 & 1))) -= v13 / 2;
    v6 = v15;
    *&a1[1] = v15;
    if (++v3 != 4)
    {
      continue;
    }

    break;
  }

  return sub_261470F94(a1, v6);
}

void sub_261471160(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      sub_2614709BC();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_261473150(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_261471230(uint64_t result, int32x4_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v81 = a2[-1];
        v82 = *v8;
        if (vmovn_s32(vcgtq_s32(*v8, v81)).i32[1])
        {
          *v8 = v81;
          a2[-1] = v82;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v87 = v8 + 1;
      v88 = v8[1];
      v89 = v8 + 2;
      v90 = v8[2];
      v91 = *v8;
      v92 = v8->i64[1];
      v93 = v8[2].i64[1];
      if (v88.i32[2] >= v92)
      {
        if (v93 < v88.i32[2])
        {
          *v87 = v90;
          *v89 = v88;
          if (v93 < v92)
          {
            *v8 = v90;
            v134 = v8 + 1;
            goto LABEL_191;
          }

LABEL_192:
          v90 = v88;
        }
      }

      else
      {
        if (v93 < v88.i32[2])
        {
          *v8 = v90;
          goto LABEL_190;
        }

        *v8 = v88;
        v8[1] = v91;
        if (v93 < v92)
        {
          *v87 = v90;
LABEL_190:
          v134 = v8 + 2;
          v88 = v91;
LABEL_191:
          *v134 = v91;
          goto LABEL_192;
        }
      }

      v141 = a2[-1];
      if ((vmovn_s32(vcgtq_s32(v90, v141)).i32[1] & 1) == 0)
      {
        return result;
      }

      *v89 = v141;
      a2[-1] = v90;
      v133 = *v89;
      v142 = *v87;
      goto LABEL_205;
    }

    if (v9 == 5)
    {
      v72 = v8 + 1;
      v73 = v8[1];
      v74 = v8 + 2;
      v75 = v8[2];
      v76 = *v8;
      v77 = v8->i64[1];
      v78 = v8[2].i64[1];
      if (v73.i32[2] >= v77)
      {
        if (v78 >= v73.i32[2])
        {
          v139 = *v8;
          v76 = v8[1];
        }

        else
        {
          *v72 = v75;
          *v74 = v73;
          if (v78 < v77)
          {
            *v8 = v75;
            v79 = v8 + 1;
            v80 = v76;
            goto LABEL_182;
          }

          v139 = v76;
          v76 = v75;
LABEL_183:
          v75 = v73;
        }
      }

      else
      {
        if (v78 < v73.i32[2])
        {
          *v8 = v75;
          v79 = v8 + 2;
          v80 = v73;
          goto LABEL_181;
        }

        *v8 = v73;
        v8[1] = v76;
        if (v78 < v77)
        {
          v80 = v75;
          *v72 = v75;
          v79 = v8 + 2;
          v75 = v73;
LABEL_181:
          v73 = v76;
LABEL_182:
          *v79 = v76;
          v139 = v75;
          v76 = v80;
          goto LABEL_183;
        }

        v139 = v73;
      }

      v143 = v8[3];
      if (vmovn_s32(vcgtq_s32(v75, v143)).i32[1])
      {
        v8[2] = v143;
        v8[3] = v75;
        if (vmovn_s32(vcgtq_s32(v76, v143)).i32[1])
        {
          *v72 = v143;
          *v74 = v76;
          if (vmovn_s32(vcgtq_s32(v139, v143)).i32[1])
          {
            *v8 = v143;
            v8[1] = v139;
          }
        }
      }

      else
      {
        v75 = v8[3];
      }

      v144 = a2[-1];
      if ((vmovn_s32(vcgtq_s32(v75, v144)).i32[1] & 1) == 0)
      {
        return result;
      }

      v8[3] = v144;
      a2[-1] = v75;
      v145 = v8[2];
      v133 = v8[3];
      if ((vmovn_s32(vcgtq_s32(v145, v133)).i32[1] & 1) == 0)
      {
        return result;
      }

      v8[2] = v133;
      v8[3] = v145;
      v142 = v8[1];
LABEL_205:
      if ((vmovn_s32(vcgtq_s32(v142, v133)).i32[1] & 1) == 0)
      {
        return result;
      }

      v8[1] = v133;
      v8[2] = v142;
LABEL_207:
      v146 = *v8;
      if (vmovn_s32(vcgtq_s32(*v8, v133)).i32[1])
      {
        *v8 = v133;
        v8[1] = v146;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v99 = v98[1];
            v100 = v98->i32[2];
            v98 = v94;
            if (v99.i32[2] < v100)
            {
              v101 = v97;
              while (1)
              {
                *(&v8[1] + v101) = *(v8 + v101);
                if (!v101)
                {
                  break;
                }

                v102 = *(&v8->i32[-2] + v101);
                v101 -= 16;
                if (v99.i32[2] >= v102)
                {
                  v103 = (v8 + v101 + 16);
                  goto LABEL_131;
                }
              }

              v103 = v8;
LABEL_131:
              *v103 = v99;
            }

            v94 = v98 + 1;
            v97 += 16;
          }

          while (&v98[1] != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v135 = v7[1];
          v136 = v7->i32[2];
          v7 = v94;
          if (v135.i32[2] < v136)
          {
            do
            {
              v137 = v94;
              v138 = v94[-1];
              --v94;
              *v137 = v138;
            }

            while (v135.i32[2] < v137[-2].i32[2]);
            *v94 = v135;
          }

          v94 = v7 + 1;
        }

        while (&v7[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            if (2 * v106 + 2 < v9)
            {
              v109 = v108->i32[2];
              v110 = v108[1].i32[2];
              v108 += v109 < v110;
              if (v109 < v110)
              {
                v107 = 2 * v106 + 2;
              }
            }

            v111 = &v8[v106];
            v112 = *v111;
            v113 = v111->i64[1];
            if (v108->i32[2] >= v113)
            {
              do
              {
                v114 = v108;
                *v111 = *v108;
                if (v104 < v107)
                {
                  break;
                }

                v115 = (2 * v107) | 1;
                v108 = &v8[v115];
                v116 = 2 * v107 + 2;
                if (v116 < v9)
                {
                  v117 = v108->i32[2];
                  v118 = v108[1].i32[2];
                  v108 += v117 < v118;
                  if (v117 < v118)
                  {
                    v115 = v116;
                  }
                }

                v111 = v114;
                v107 = v115;
              }

              while (v108->i32[2] >= v113);
              *v114 = v112;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v119 = 0;
          v120 = *v8;
          v121 = v8;
          do
          {
            v122 = &v121[v119];
            v123 = v122 + 1;
            v124 = (2 * v119) | 1;
            v119 = 2 * v119 + 2;
            if (v119 >= v9)
            {
              v119 = v124;
            }

            else if (v122[1].i32[2] >= v122[2].i32[2])
            {
              v119 = v124;
            }

            else
            {
              v123 = v122 + 2;
            }

            *v121 = *v123;
            v121 = v123;
          }

          while (v119 <= ((v9 - 2) >> 1));
          if (v123 == --a2)
          {
            *v123 = v120;
          }

          else
          {
            *v123 = *a2;
            *a2 = v120;
            v125 = (v123 - v8 + 16) >> 4;
            v126 = v125 < 2;
            v127 = v125 - 2;
            if (!v126)
            {
              v128 = v127 >> 1;
              v129 = &v8[v128];
              v130 = *v123;
              v131 = v123->i64[1];
              if (v129->i32[2] < v131)
              {
                do
                {
                  v132 = v129;
                  *v123 = *v129;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = &v8[v128];
                  v123 = v132;
                }

                while (v129->i32[2] < v131);
                *v132 = v130;
              }
            }
          }

          v126 = v9-- <= 2;
        }

        while (!v126);
      }

      return result;
    }

    v10 = v9 >> 1;
    v11 = &v8[v9 >> 1];
    v12 = v11;
    v13 = a2[-1];
    v14 = a2[-1].i64[1];
    if (v9 >= 0x81)
    {
      v15 = *v11;
      v16 = *v8;
      v17 = v11->i64[1];
      if (vmovn_s32(vcgtq_s32(*v8, *v11)).i32[1])
      {
        if (v14 < v17)
        {
          *v8 = v13;
          goto LABEL_27;
        }

        *v8 = v15;
        *v11 = v16;
        v23 = a2[-1];
        if (vmovn_s32(vcgtq_s32(v16, v23)).i32[1])
        {
          *v11 = v23;
LABEL_27:
          a2[-1] = v16;
        }
      }

      else if (v14 < v17)
      {
        *v11 = v13;
        a2[-1] = v15;
        v21 = *v8;
        if (vmovn_s32(vcgtq_s32(*v8, *v11)).i32[1])
        {
          *v8 = *v11;
          *v11 = v21;
        }
      }

      v24 = v10 - 1;
      v25 = v8[v10 - 1];
      v26 = v8[1];
      v27 = a2[-2];
      v28 = vmovn_s32(vcgtq_s32(v25, v27)).i8[4];
      if (vmovn_s32(vcgtq_s32(v26, v25)).i32[1])
      {
        if (v28)
        {
          v8[1] = v27;
          goto LABEL_39;
        }

        v8[1] = v25;
        v8[v24] = v26;
        v32 = a2[-2];
        if (vmovn_s32(vcgtq_s32(v26, v32)).i32[1])
        {
          v8[v24] = v32;
LABEL_39:
          a2[-2] = v26;
        }
      }

      else if (v28)
      {
        v8[v24] = v27;
        a2[-2] = v25;
        v29 = v8[v24];
        v30 = v8[1];
        if (vmovn_s32(vcgtq_s32(v30, v29)).i32[1])
        {
          v8[1] = v29;
          v8[v24] = v30;
        }
      }

      v34 = v11[1];
      v33 = v11 + 1;
      v35 = v34;
      v36 = v8[2];
      v37 = a2[-3];
      v38 = vmovn_s32(vcgtq_s32(v34, v37)).i8[4];
      if (vmovn_s32(vcgtq_s32(v36, v34)).i32[1])
      {
        if (v38)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v8[2] = v35;
        *v33 = v36;
        v40 = a2[-3];
        if (vmovn_s32(vcgtq_s32(v36, v40)).i32[1])
        {
          *v33 = v40;
LABEL_48:
          a2[-3] = v36;
        }
      }

      else if (v38)
      {
        *v33 = v37;
        a2[-3] = v35;
        v39 = v8[2];
        if (vmovn_s32(vcgtq_s32(v39, *v33)).i32[1])
        {
          v8[2] = *v33;
          *v33 = v39;
        }
      }

      v41 = *v12;
      v42 = v8[v24];
      v43 = v12->i64[1];
      v44 = *v33;
      v45 = v33->i64[1];
      if (v43 >= v42.i32[2])
      {
        if (v45 < v43)
        {
          *v12 = v44;
          *v33 = v41;
          if (v45 < v42.i32[2])
          {
            v8[v24] = v44;
            v33 = v12;
            v41 = v42;
            goto LABEL_57;
          }

          v41 = v44;
        }
      }

      else
      {
        if (v45 < v43)
        {
          v8[v24] = v44;
          goto LABEL_57;
        }

        v8[v24] = v41;
        *v12 = v42;
        if (v45 >= v42.i32[2])
        {
          v41 = v42;
        }

        else
        {
          *v12 = v44;
          v41 = v44;
LABEL_57:
          *v33 = v42;
        }
      }

      v46 = *v8;
      *v8 = v41;
      *v12 = v46;
      goto LABEL_59;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = v8->i64[1];
    if ((vmovn_s32(vcgtq_s32(*v11, *v8)).i32[1] & 1) == 0)
    {
      if (v14 < v20)
      {
        *v8 = v13;
        a2[-1] = v18;
        v22 = *v11;
        if (vmovn_s32(vcgtq_s32(*v11, *v8)).i32[1])
        {
          *v11 = *v8;
          *v8 = v22;
        }
      }

      goto LABEL_59;
    }

    if (v14 >= v20)
    {
      *v11 = v18;
      *v8 = v19;
      v31 = a2[-1];
      if ((vmovn_s32(vcgtq_s32(v19, v31)).i32[1] & 1) == 0)
      {
        goto LABEL_59;
      }

      *v8 = v31;
    }

    else
    {
      *v11 = v13;
    }

    a2[-1] = v19;
LABEL_59:
    --a3;
    v47 = *v8;
    v48 = v8->i64[1];
    if ((a4 & 1) != 0 || v8[-1].i32[2] < v48)
    {
      v49 = v8;
      do
      {
        v50 = v49++;
      }

      while (v50[1].i32[2] < v48);
      v51 = a2;
      if (v50 == v8)
      {
        v54 = a2;
        while (v49 < v54)
        {
          v52 = v54 - 1;
          v55 = v54[-1].i32[2];
          --v54;
          if (v55 < v48)
          {
            goto LABEL_71;
          }
        }

        v52 = v54;
      }

      else
      {
        do
        {
          v52 = v51 - 1;
          v53 = v51[-1].i32[2];
          --v51;
        }

        while (v53 >= v48);
      }

LABEL_71:
      if (v49 < v52)
      {
        v56 = v49;
        v57 = v52;
        do
        {
          v58 = *v56;
          *v56 = *v57;
          *v57 = v58;
          do
          {
            v50 = v56++;
          }

          while (v50[1].i32[2] < v48);
          do
          {
            v59 = v57[-1].i32[2];
            --v57;
          }

          while (v59 >= v48);
        }

        while (v56 < v57);
      }

      if (v50 != v8)
      {
        *v8 = *v50;
      }

      *v50 = v47;
      if (v49 < v52)
      {
        goto LABEL_82;
      }

      v60 = sub_261472D6C(v8, v50);
      v8 = v50 + 1;
      result = sub_261472D6C(v50 + 1, a2);
      if (result)
      {
        a2 = v50;
        if (!v60)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v60)
      {
LABEL_82:
        result = sub_261471230(v7, v50, a3, a4 & 1);
        a4 = 0;
        v8 = v50 + 1;
      }
    }

    else
    {
      if (v48 >= a2[-1].i32[2])
      {
        v63 = &v8[1];
        do
        {
          v8 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v64 = *(v63 + 8);
          v63 += 16;
        }

        while (v48 >= v64);
      }

      else
      {
        v61 = v8;
        do
        {
          v8 = v61 + 1;
          v62 = v61[1].i32[2];
          ++v61;
        }

        while (v48 >= v62);
      }

      v65 = a2;
      if (v8 < a2)
      {
        v66 = a2;
        do
        {
          v65 = v66 - 1;
          v67 = v66[-1].i32[2];
          --v66;
        }

        while (v48 < v67);
      }

      while (v8 < v65)
      {
        v68 = *v8;
        *v8 = *v65;
        *v65 = v68;
        do
        {
          v69 = v8[1].i32[2];
          ++v8;
        }

        while (v48 >= v69);
        do
        {
          v70 = v65[-1].i32[2];
          --v65;
        }

        while (v48 < v70);
      }

      v71 = v8 - 1;
      if (&v8[-1] != v7)
      {
        *v7 = *v71;
      }

      a4 = 0;
      *v71 = v47;
    }
  }

  v83 = *v8;
  v84 = v8[1];
  v85 = a2[-1];
  v86 = vmovn_s32(vcgtq_s32(v84, v85)).i8[4];
  if ((vmovn_s32(vcgtq_s32(*v8, v84)).i32[1] & 1) == 0)
  {
    if ((v86 & 1) == 0)
    {
      return result;
    }

    v8[1] = v85;
    a2[-1] = v84;
    v133 = v8[1];
    goto LABEL_207;
  }

  if (v86)
  {
    *v8 = v85;
  }

  else
  {
    *v8 = v84;
    v8[1] = v83;
    v140 = a2[-1];
    if ((vmovn_s32(vcgtq_s32(v83, v140)).i32[1] & 1) == 0)
    {
      return result;
    }

    v8[1] = v140;
  }

  a2[-1] = v83;
  return result;
}

uint64_t sub_261471CBC(int32x2_t *a1, int a2, signed int a3, int a4, int a5)
{
  if (a2 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  if (a5 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a5;
  }

  v11 = *&a1[1];
  if ((LODWORD(v11) & 0x80000000) != 0 || (v12 = *a1, *(*a1 + 8) <= LODWORD(v11)) || (HIDWORD(v11) & 0x80000000) != 0 || v12[1].i64[0] <= HIDWORD(v11))
  {
    v13 = -1;
  }

  else
  {
    v13 = sub_261518AF8(v12, v11);
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = v13;
    if (a3)
    {
      result = 0xFFFFFFFFLL;
      if (v14 >= a3 || v13 == -1)
      {
        return result;
      }
    }

    else if (v13 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v14 += v10;
    v18 = COERCE_DOUBLE(vmla_s32(a1[1], a1[2], vdup_n_s32(v14)));
    if ((LODWORD(v18) & 0x80000000) != 0 || (v19 = *a1, *(*a1 + 8) <= LODWORD(v18)) || (HIDWORD(v18) & 0x80000000) != 0 || v19[1].i64[0] <= HIDWORD(v18))
    {
      v13 = -1;
    }

    else
    {
      v13 = sub_261518AF8(v19, v18);
    }

    v20 = v16 != v13 && v15 + v10 >= a4;
    if (v16 != v13 && v15 + v10 >= a4)
    {
      v15 = 0;
    }

    else
    {
      v15 += v10;
    }

    v9 -= v20;
  }

  while (v9);
  if (a5 < 2)
  {
LABEL_43:
    v24 = 1;
  }

  else
  {
    v14 -= v10;
    v21 = v13;
    if (!a3)
    {
      goto LABEL_32;
    }

LABEL_31:
    if (v14 < a3)
    {
LABEL_32:
      while (v21 != -1)
      {
        v22 = COERCE_DOUBLE(vmla_s32(a1[1], a1[2], vdup_n_s32(v14)));
        if ((LODWORD(v22) & 0x80000000) != 0 || (v23 = *a1, *(*a1 + 8) <= LODWORD(v22)) || (HIDWORD(v22) & 0x80000000) != 0 || v23[1].i64[0] <= HIDWORD(v22))
        {
          v21 = -1;
        }

        else
        {
          v21 = sub_261518AF8(v23, v22);
        }

        if (v21 == v13)
        {
          goto LABEL_43;
        }

        ++v14;
        if (a3)
        {
          goto LABEL_31;
        }
      }
    }

    v24 = 0;
  }

  a1[1] = vmla_s32(a1[1], vdup_n_s32(v14 - 1), a1[2]);
  if (v24)
  {
    return (v14 - 1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *sub_261471EB8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_261470B0C(a2);
    }

    sub_2614709BC();
  }

  return result;
}

void sub_261471F5C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_2614709BC();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_261470B0C(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_26147202C(float32x2_t a1, uint64_t a2, char **a3)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == v5 || (v6 = (v4 + 8), v4 + 8 == v5))
  {
    v8 = *a3;
  }

  else
  {
    v7 = *v4;
    v8 = *a3;
    v9 = (v4 + 8);
    do
    {
      v10 = *v9++;
      v11 = v10;
      v12 = vsub_f32(v7, a1);
      v13 = vmul_f32(v12, v12);
      v14 = vsub_f32(v10, a1);
      v15 = vmul_f32(v14, v14);
      v16 = vsqrt_f32(vadd_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15)));
      v17 = vcgt_f32(vdup_lane_s32(v16, 1), v16).u8[0];
      if (v17)
      {
        v18 = -1;
      }

      else
      {
        v18 = 0;
      }

      v7 = vbsl_s8(vdup_n_s32(v18), v11, v7);
      if (v17)
      {
        v8 = v6;
      }

      v6 = v9;
    }

    while (v9 != v5);
  }

  sub_2614728C8(v4, v8, v5);
  operator new();
}

void sub_261472758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2614705CC(v66);
  *(v64 + 8) = v65;
  operator delete(v65);
  v68 = &a63;
  v69 = -192;
  while (1)
  {
    v70 = *(v68 - 1);
    if (v70)
    {
      *v68 = v70;
      operator delete(v70);
    }

    v68 -= 6;
    v69 += 48;
    if (!v69)
    {
      if (a14)
      {
        operator delete(a14);
      }

      operator delete(v63);
      _Unwind_Resume(a1);
    }
  }
}

BOOL sub_261472840(float32x2_t *a1, uint64_t a2, unsigned int a3)
{
  if ((a2 - a1) >= 0x20)
  {
    v4 = *a1;
    v5 = vsub_f32(a1[3], a1[1]);
    v6 = sqrtf(vaddv_f32(vmul_f32(v5, v5)));
    v7 = 1;
    v8 = v6;
    do
    {
      v9 = a1[v7];
      v10 = vsub_f32(v4, v9);
      v11 = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
      if (v11 < v6)
      {
        v6 = v11;
      }

      if (v8 < v11)
      {
        v8 = v11;
      }

      ++v7;
      v4 = v9;
    }

    while (v7 != 4);
    return v6 > (v8 / 3.0) && v6 >= a3;
  }

  else
  {
    return 0;
  }
}

char *sub_2614728C8(char *__src, char *a2, char *a3)
{
  v3 = a2 - __src;
  if (a2 != __src)
  {
    v4 = a3 - a2;
    if (a3 != a2)
    {
      v5 = __src;
      if (__src + 8 == a2)
      {
        v6 = *__src;
        __src = memmove(__src, a2, a3 - a2);
        *(v5 + v4) = v6;
      }

      else if (a2 + 8 == a3)
      {
        v7 = *(a3 - 1);
        if (a3 - 8 != __src)
        {
          __src = memmove(__src + 8, __src, a3 - 8 - __src);
        }

        *v5 = v7;
      }

      else
      {
        v8 = v3 >> 3;
        if (v3 >> 3 == v4 >> 3)
        {
          v9 = __src + 8;
          v10 = a2 + 8;
          do
          {
            v11 = *(v9 - 1);
            *(v9 - 1) = *(v10 - 1);
            *(v10 - 1) = v11;
            if (v9 == a2)
            {
              break;
            }

            v9 += 8;
            v12 = v10 == a3;
            v10 += 8;
          }

          while (!v12);
        }

        else
        {
          v13 = v4 >> 3;
          v14 = v3 >> 3;
          do
          {
            v15 = v14;
            v14 = v13;
            v13 = v15 % v13;
          }

          while (v13);
          v16 = &__src[8 * v14];
          do
          {
            v17 = *(v16 - 1);
            v16 -= 8;
            v18 = v17;
            v19 = &v16[v3];
            v20 = v16;
            do
            {
              v21 = v19;
              *v20 = *v19;
              v22 = &v19[8 * v8];
              v23 = __OFSUB__(v8, (a3 - v19) >> 3);
              v25 = v8 - ((a3 - v19) >> 3);
              v24 = (v25 < 0) ^ v23;
              v19 = &__src[8 * v25];
              if (v24)
              {
                v19 = v22;
              }

              v20 = v21;
            }

            while (v19 != v16);
            *v21 = v18;
          }

          while (v16 != __src);
        }
      }
    }
  }

  return __src;
}

uint64_t sub_261472A04(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_261472B78(result, a4);
  }

  return result;
}

void sub_261472A64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_261472AD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_261472AF0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_261472B30(a2);
  }

  sub_2614709BC();
}

void sub_261472B30(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_2614709D4();
}

void sub_261472B78(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_261470B0C(a2);
  }

  sub_2614709BC();
}

float sub_261472BB8(float32x2_t *a1, float32x2_t *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = 8 * a3;
    v4 = 0;
    v5 = 8 * a3;
    v6 = a2;
    do
    {
      v7 = *v6++;
      v8.i32[1] = v7.i32[1];
      v4 = vadd_f32(v4, v7);
      v5 -= 8;
    }

    while (v5);
    v8.f32[0] = a3;
    v9 = vdiv_f32(v4, vdup_lane_s32(v8, 0));
    v10 = 0.0;
    _D3.i32[1] = 0;
    v8.i32[0] = 0;
    do
    {
      v12 = *a2++;
      _D4 = vsub_f32(v12, v9);
      v10 = v10 + (_D4.f32[0] * _D4.f32[0]);
      _S5 = _D4.i32[1];
      __asm { FMLA            S3, S5, V4.S[1] }

      v8.f32[0] = v8.f32[0] + (_D4.f32[0] * _D4.f32[1]);
      v3 -= 8;
    }

    while (v3);
    if (*_D3.i32 < v10)
    {
      v19 = (v8.f32[0] * v8.f32[0]) + (v10 * v10);
      goto LABEL_10;
    }
  }

  else
  {
    v9 = vneg_f32(0x3F0000003FLL);
    _D3 = 0;
    v8.i32[0] = 0;
  }

  v10 = v8.f32[0];
  v19 = (v8.f32[0] * v8.f32[0]) + (*_D3.i32 * *_D3.i32);
  v8.i32[0] = _D3.i32[0];
LABEL_10:
  *_D3.i32 = sqrtf(v19);
  v8.f32[1] = -v10;
  v20 = vdiv_f32(v8, vdup_lane_s32(_D3, 0));
  a1[4] = v20;
  v21 = a1[3];
  if (vaddv_f32(vmul_f32(v21, vbsl_s8(vdup_lane_s32(vorr_s8(vcgt_f32(0, v20), vcge_f32(v20, 0)), 0), v20, v21))) < 0.0)
  {
    v20 = vneg_f32(v20);
    a1[4] = v20;
  }

  result = vaddv_f32(vmul_f32(v9, vbsl_s8(vdup_lane_s32(vorr_s8(vcgt_f32(0, v20), vcge_f32(v20, 0)), 0), v20, v21)));
  a1[5].f32[0] = result;
  return result;
}

uint64_t sub_261472CB8(uint64_t a1, int32x2_t a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  if ((LODWORD(v4) & 0x80000000) != 0 || v5->i64[1] <= LODWORD(v4) || (HIDWORD(v4) & 0x80000000) != 0 || v5[1].i64[0] <= HIDWORD(v4))
  {
    v6 = -1;
  }

  else
  {
    v6 = sub_261518AF8(v5, v4);
    v4 = *(a1 + 8);
    v5 = *a1;
  }

  v7 = COERCE_DOUBLE(vadd_s32(*&v4, a2));
  if ((LODWORD(v7) & 0x80000000) != 0 || v5->i64[1] <= LODWORD(v7) || (HIDWORD(v7) & 0x80000000) != 0 || v5[1].i64[0] <= HIDWORD(v7))
  {
    v8 = -1;
  }

  else
  {
    v8 = sub_261518AF8(v5, v7);
  }

  if (v8 == v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

BOOL sub_261472D6C(int32x4_t *a1, int32x4_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v15 = *a1;
      v16 = a1[1];
      v17 = a2[-1];
      v18 = vmovn_s32(vcgtq_s32(v16, v17)).i8[4];
      if (vmovn_s32(vcgtq_s32(*a1, v16)).i32[1])
      {
        if (v18)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v16;
          a1[1] = v15;
          v35 = a2[-1];
          if ((vmovn_s32(vcgtq_s32(v15, v35)).i32[1] & 1) == 0)
          {
            return 1;
          }

          a1[1] = v35;
        }

        a2[-1] = v15;
        return 1;
      }

      if ((v18 & 1) == 0)
      {
        return 1;
      }

      a1[1] = v17;
      a2[-1] = v16;
      v33 = a1[1];
LABEL_77:
      v50 = *a1;
      if (vmovn_s32(vcgtq_s32(*a1, v33)).i32[1])
      {
        *a1 = v33;
        a1[1] = v50;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v6 = a1 + 2;
      v7 = a1[2];
      v8 = *a1;
      v9 = a1->i64[1];
      v10 = a1[2].i64[1];
      if (v5.i32[2] >= v9)
      {
        if (v10 >= v5.i32[2])
        {
          v44 = *a1;
          v8 = a1[1];
          goto LABEL_67;
        }

        *v4 = v7;
        *v6 = v5;
        if (v10 >= v9)
        {
          v44 = v8;
          v8 = v7;
          goto LABEL_55;
        }

        *a1 = v7;
        v11 = a1 + 1;
        v12 = v8;
      }

      else
      {
        if (v10 >= v5.i32[2])
        {
          *a1 = v5;
          a1[1] = v8;
          if (v10 >= v9)
          {
            v44 = v5;
            goto LABEL_67;
          }

          v12 = v7;
          *v4 = v7;
          v11 = a1 + 2;
          v7 = v5;
        }

        else
        {
          *a1 = v7;
          v11 = a1 + 2;
          v12 = v5;
        }

        v5 = v8;
      }

      *v11 = v8;
      v44 = v7;
      v8 = v12;
LABEL_55:
      v7 = v5;
LABEL_67:
      v47 = a1[3];
      if (vmovn_s32(vcgtq_s32(v7, v47)).i32[1])
      {
        a1[2] = v47;
        a1[3] = v7;
        if (vmovn_s32(vcgtq_s32(v8, v47)).i32[1])
        {
          *v4 = v47;
          *v6 = v8;
          if (vmovn_s32(vcgtq_s32(v44, v47)).i32[1])
          {
            *a1 = v47;
            a1[1] = v44;
          }
        }
      }

      else
      {
        v7 = a1[3];
      }

      v48 = a2[-1];
      if ((vmovn_s32(vcgtq_s32(v7, v48)).i32[1] & 1) == 0)
      {
        return 1;
      }

      a1[3] = v48;
      a2[-1] = v7;
      v49 = a1[2];
      v33 = a1[3];
      if ((vmovn_s32(vcgtq_s32(v49, v33)).i32[1] & 1) == 0)
      {
        return 1;
      }

      a1[2] = v33;
      a1[3] = v49;
      v46 = a1[1];
LABEL_75:
      if ((vmovn_s32(vcgtq_s32(v46, v33)).i32[1] & 1) == 0)
      {
        return 1;
      }

      a1[1] = v33;
      a1[2] = v46;
      goto LABEL_77;
    }

    v26 = a1 + 1;
    v27 = a1[1];
    v28 = a1 + 2;
    v29 = a1[2];
    v30 = *a1;
    v31 = a1->i64[1];
    v32 = a1[2].i64[1];
    if (v27.i32[2] >= v31)
    {
      if (v32 < v27.i32[2])
      {
        *v26 = v29;
        *v28 = v27;
        if (v32 >= v31)
        {
LABEL_61:
          v29 = v27;
          goto LABEL_62;
        }

        *a1 = v29;
        v34 = a1 + 1;
LABEL_60:
        *v34 = v30;
        goto LABEL_61;
      }
    }

    else
    {
      if (v32 < v27.i32[2])
      {
        *a1 = v29;
LABEL_59:
        v34 = a1 + 2;
        v27 = v30;
        goto LABEL_60;
      }

      *a1 = v27;
      a1[1] = v30;
      if (v32 < v31)
      {
        *v26 = v29;
        goto LABEL_59;
      }
    }

LABEL_62:
    v45 = a2[-1];
    if ((vmovn_s32(vcgtq_s32(v29, v45)).i32[1] & 1) == 0)
    {
      return 1;
    }

    *v28 = v45;
    a2[-1] = v29;
    v33 = *v28;
    v46 = *v26;
    goto LABEL_75;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v13 = a2[-1];
    v14 = *a1;
    if (vmovn_s32(vcgtq_s32(*a1, v13)).i32[1])
    {
      *a1 = v13;
      a2[-1] = v14;
    }

    return 1;
  }

LABEL_16:
  v19 = a1 + 2;
  v20 = a1[2];
  v21 = a1 + 1;
  v22 = a1[1];
  v23 = *a1;
  v24 = a1->i64[1];
  v25 = a1[2].i64[1];
  if (v22.i32[2] < v24)
  {
    if (v25 >= v22.i32[2])
    {
      *a1 = v22;
      a1[1] = v23;
      if (v25 >= v24)
      {
        goto LABEL_40;
      }

      *v21 = v20;
    }

    else
    {
      *a1 = v20;
    }

    v21 = a1 + 2;
    goto LABEL_39;
  }

  if (v25 < v22.i32[2])
  {
    *v21 = v20;
    *v19 = v22;
    if (v25 < v24)
    {
      *a1 = v20;
LABEL_39:
      *v21 = v23;
    }
  }

LABEL_40:
  v36 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v36;
    v40 = v36->i64[1];
    if (v40 < v19->i32[2])
    {
      v41 = v37;
      while (1)
      {
        *(&a1[3] + v41) = *(&a1[2] + v41);
        if (v41 == -32)
        {
          break;
        }

        v42 = *(&a1[1].i32[2] + v41);
        v41 -= 16;
        if (v40 >= v42)
        {
          v43 = (a1 + v41 + 48);
          goto LABEL_48;
        }
      }

      v43 = a1;
LABEL_48:
      *v43 = v39;
      if (++v38 == 8)
      {
        return &v36[1] == a2;
      }
    }

    v19 = v36;
    v37 += 16;
    if (++v36 == a2)
    {
      return 1;
    }
  }
}

void sub_261473150(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_2614709D4();
}

BOOL sub_261473198(unsigned __int8 *a1, int a2, double a3)
{
  if ((LODWORD(a3) & 0x80000000) != 0 || *(a1 + 1) <= LODWORD(a3) || (HIDWORD(a3) & 0x80000000) != 0 || *(a1 + 2) <= HIDWORD(a3))
  {
    v4 = -1;
  }

  else
  {
    v4 = *a1 != sub_261470964(*(a1 + 3), LODWORD(a3), HIDWORD(a3));
  }

  return v4 == a2;
}

BOOL sub_261473208(int32x2_t *a1, float a2)
{
  v3 = 0;
  v4 = ((a2 * 3.0) + a2);
  v5 = ((a2 * 3.0) - a2);
  v6 = *&a1[1];
  v7 = 1;
  while (2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = v10;
      *&a1[1] = v6;
      a1[2] = qword_261561FD8[2 * (v7 & 1) + v8];
      v12 = sub_26147337C(a1, 1, v4, 0, 1);
      if (v12 == -1)
      {
        return 0;
      }

      v10 = 0;
      v9 += v12;
      v8 = 1;
    }

    while ((v11 & 1) != 0);
    v13 = v9 + 1;
    if (v3 && (v13 < v5 || v9 >= v4))
    {
      return 0;
    }

    v7 ^= 1u;
    v17 = *&a1[1];
    *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v7 & 1))) -= v13 / 2;
    v6 = v17;
    *&a1[1] = v17;
    if (++v3 != 4)
    {
      continue;
    }

    break;
  }

  v14 = *a1;
  v15 = a1[3].i32[0];

  return sub_261473198(v14, v15, v6);
}

uint64_t sub_26147337C(int32x2_t *a1, int a2, signed int a3, int a4, int a5)
{
  if (a2 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a2;
  }

  if (a5 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a5;
  }

  v10 = a1[1];
  v11 = *a1;
  v27 = v10;
  if (v10.i32[0] < 0 || *(v11 + 1) <= *&a1[1] || v10.i32[1] < 0 || *(v11 + 2) <= v10.u32[1])
  {
    v13 = -1;
  }

  else
  {
    v12 = sub_261470964(*(v11 + 3), v10.u32[0], v10.u32[1]);
    v10 = v27;
    v13 = *v11 != v12;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = v13;
    if (a3)
    {
      result = 0xFFFFFFFFLL;
      if (v14 >= a3 || v13 == -1)
      {
        return result;
      }
    }

    else if (v13 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v14 += v9;
    v18 = a1[2];
    v19 = vmla_s32(v10, v18, vdup_n_s32(v14));
    if (v19.i32[0] < 0 || *(v11 + 1) <= v19.u32[0] || v19.i32[1] < 0 || *(v11 + 2) <= v19.u32[1])
    {
      v13 = -1;
    }

    else
    {
      v20 = sub_261470964(*(v11 + 3), v19.u32[0], v19.u32[1]);
      v10 = v27;
      v13 = *v11 != v20;
    }

    v21 = v16 != v13 && v15 + v9 >= a4;
    if (v16 != v13 && v15 + v9 >= a4)
    {
      v15 = 0;
    }

    else
    {
      v15 += v9;
    }

    v8 -= v21;
  }

  while (v8);
  if (a5 < 2)
  {
LABEL_43:
    v25 = v14 - 1;
    result = (v14 - 1);
  }

  else
  {
    v14 -= v9;
    v22 = v13;
    if (!a3)
    {
      goto LABEL_32;
    }

LABEL_31:
    if (v14 < a3)
    {
LABEL_32:
      while (v22 != -1)
      {
        v23 = vmla_s32(v10, v18, vdup_n_s32(v14));
        if (v23.i32[0] < 0 || *(v11 + 1) <= v23.u32[0] || v23.i32[1] < 0 || *(v11 + 2) <= v23.u32[1])
        {
          v22 = -1;
        }

        else
        {
          v24 = sub_261470964(*(v11 + 3), v23.u32[0], v23.u32[1]);
          v10 = v27;
          v22 = *v11 != v24;
        }

        if (v22 == v13)
        {
          goto LABEL_43;
        }

        ++v14;
        if (a3)
        {
          goto LABEL_31;
        }
      }
    }

    v25 = v14 - 1;
    result = 0xFFFFFFFFLL;
  }

  a1[1] = vmla_s32(v10, vdup_n_s32(v25), v18);
  return result;
}

uint64_t sub_2614735B0(unsigned __int8 *a1, int32x2_t a2, int32x2_t a3)
{
  if (a2.i32[0] < 0 || *(a1 + 1) <= a2.u32[0] || a2.i32[1] < 0 || *(a1 + 2) <= a2.u32[1])
  {
    v6 = -1;
  }

  else
  {
    v10 = a2;
    v5 = sub_261470964(*(a1 + 3), a2.u32[0], a2.u32[1]);
    a2 = v10;
    v6 = *a1 != v5;
  }

  v7 = vadd_s32(a2, a3);
  if (v7.i32[0] < 0 || *(a1 + 1) <= v7.u32[0] || v7.i32[1] < 0 || *(a1 + 2) <= v7.u32[1])
  {
    v8 = -1;
  }

  else
  {
    v8 = *a1 != sub_261470964(*(a1 + 3), v7.u32[0], v7.u32[1]);
  }

  if (v8 == v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

float sub_261473680(float *a1, uint64_t a2, float result, uint64_t a4, int a5, uint64_t a6)
{
  if (a5 >= 1)
  {
    v6 = 0;
    result = a1[2];
    v7 = (a2 + 8);
    v8 = *a1;
    v9 = -a1[1];
    do
    {
      if (v6)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = -1.0;
      }

      v11 = *(a6 + 4 * v6) + (v8 * v10);
      v12 = (v9 * v11) + 1.0;
      v13 = v11 / v12;
      *(v7 - 2) = (result * v10) / (v12 * v12);
      *(v7 - 1) = v13 * (result * v13);
      *v7 = v13;
      v7 += 3;
      ++v6;
    }

    while (a5 != v6);
  }

  return result;
}

uint64_t sub_261473704(unint64_t *a1, atomic_ullong *a2, uint64_t *a3, __int128 *a4, atomic_ullong *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t *p_group, dispatch_group_t group, void (*a19)(void), void *__src, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, atomic_ullong *a28, __int128 a29, char a30, _BYTE *a31, char a32, uint64_t a33, uint64_t a34, char a35, __int128 a36, uint64_t a37, timespec a38, char a39, timespec __tp, char a41, os_signpost_id_t a42, void *a43, uint64_t *a44, char a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, __int128 a51, int *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, unint64_t **a61, uint64_t *a62, void **a63)
{
  STACK[0x1418] = *MEMORY[0x277D85DE8];
  v72 = (a3 + 2);
  v71 = a3[2];
  a44 = a3 + 2;
  if (!sub_2614F5328(v71))
  {
LABEL_12:
    a45 = 0;
    STACK[0xEA0] = -2002;
    STACK[0x1260] = @"Unable to acquire CVPixelBuffer lock.";
    sub_261476754(a5, &STACK[0xEA0], &STACK[0x1260]);
LABEL_13:
    *a1 = 0;
    return sub_261477628(&a44);
  }

  v73 = a3[9];
  if (v73)
  {
    for (i = *v73; ; i += 216)
    {
      if (i == v73[1])
      {
        goto LABEL_14;
      }

      if ((sub_2614F5328((i + 8)) & 1) == 0)
      {
        break;
      }

      v73 = a3[9];
    }

    while (i != *a3[9])
    {
      if ((sub_2614F5398((i - 208)) & 1) == 0)
      {
        _os_assumes_log();
      }

      i -= 216;
    }

    sub_2614F5398(*v72);
    goto LABEL_12;
  }

LABEL_14:
  a45 = 1;
  if ((CVPixelBufferGetPixelFormatType(atomic_load_explicit(*v72, memory_order_acquire)) | 0x10) != 0x34323076)
  {
    STACK[0xEA0] = -2001;
    STACK[0x1260] = @"Unsupported pixel format.";
    sub_261476754(a5, &STACK[0xEA0], &STACK[0x1260]);
    goto LABEL_13;
  }

  v75 = sub_2614767A0();
  v76 = 0;
  a43 = v75;
  v77 = &STACK[0x12A0];
  v78 = vdupq_n_s64(5uLL);
  do
  {
    v79 = vorrq_s8(vdupq_n_s64(v76), xmmword_261560F00);
    if (vmovn_s64(vcgtq_u64(v78, v79)).u8[0])
    {
      *(v77 - 8) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), v79)).i32[1])
    {
      *v77 = 0;
    }

    v76 += 2;
    v77 += 16;
  }

  while (v76 != 6);
  for (j = 0; j != 320; j += 64)
  {
    v81 = (&STACK[0x1120] + j);
    *v81 = 0;
    v81[1] = 0;
    v81[2] = 0;
  }

  for (k = 0; k != 640; k += 128)
  {
    v83 = &STACK[0xEA0] + k;
    *v83 = 0;
    v83[96] = 0;
  }

  for (m = 0; m != 320; m += 64)
  {
    *(&STACK[0xD60] + m) = 0;
  }

  if (qword_280CB3EB0 != -1)
  {
    dispatch_once(&qword_280CB3EB0, &unk_2873D07A0);
  }

  v85 = qword_280CB3EA8;
  a42 = os_signpost_id_generate(qword_280CB3EA8);
  LOBYTE(__tp.tv_sec) = 0;
  a41 = 0;
  LOBYTE(a38.tv_sec) = 0;
  a39 = 0;
  a36 = *a4;
  a37 = *(a4 + 2);
  a32 = 0;
  a35 = 0;
  v86 = a2[1];
  v282 = a5;
  v283 = a2;
  log = v85;
  if (_os_feature_enabled_impl() && *(v86 + 56) >= 196608 && (a37 & 1) == 0)
  {
    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      LOWORD(STACK[0xCE0]) = 0;
      _os_log_impl(&dword_26146F000, v85, OS_LOG_TYPE_INFO, "All prerequisites are met, will run ANMD inference.", &STACK[0xCE0], 2u);
      v86 = a2[1];
    }

    if (*(v86 + 68) == 1)
    {
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      a41 = 1;
      clock_gettime(_CLOCK_MONOTONIC, &__tp);
    }

    explicit = atomic_load_explicit(a2, memory_order_acquire);
    if (explicit)
    {
      v88 = CFGetTypeID(explicit);
      if (qword_280CB34E0 != -1)
      {
        dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
      }

      if (v88 != qword_280CB35D8)
      {
        _os_assumes_log();
      }
    }

    STACK[0xD58] = 0;
    operator new();
  }

  if (a37 == 1)
  {
    v89 = *(&a36 + 1);
    if (!*(&a36 + 1))
    {
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        LOWORD(STACK[0xCE0]) = 0;
        _os_log_impl(&dword_26146F000, v85, OS_LOG_TYPE_INFO, "regions is not NULL but empty, presumably ANMD has been run without results.", &STACK[0xCE0], 2u);
      }

      if (*(a2[1] + 52) == 1)
      {
        STACK[0xCE0] = CFArrayCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF128]);
        v124 = atomic_load_explicit((atomic_load_explicit(&a43, memory_order_acquire) + 40), memory_order_acquire);
        if (v124)
        {
          v124 = CFRetain(v124);
        }

        STACK[0x13F0] = v124;
        CFDictionarySetValue(atomic_load_explicit(&STACK[0x13F0], memory_order_acquire), @"MRCDecoderResultAttributeUnrecognizedRegions", atomic_load_explicit(&STACK[0xCE0], memory_order_acquire));
        sub_2614769A4(&STACK[0x13F0]);
        sub_261476A0C(&STACK[0xCE0]);
      }

      *a1 = atomic_exchange(&a43, 0);
      goto LABEL_362;
    }

    a31 = 0;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(STACK[0xCE0]) = 134349056;
      STACK[0xCE4] = v89;
      _os_log_debug_impl(&dword_26146F000, v85, OS_LOG_TYPE_DEBUG, "%{public}zu region(s)", &STACK[0xCE0], 0xCu);
      if (*(&a36 + 1))
      {
        v90 = a36;
        v91 = 8 * *(&a36 + 1);
        do
        {
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
          {
            v92 = atomic_load_explicit(v90, memory_order_acquire);
            LODWORD(STACK[0xCE0]) = 138543362;
            STACK[0xCE4] = v92;
            _os_log_debug_impl(&dword_26146F000, v85, OS_LOG_TYPE_DEBUG, "region: %{public}@", &STACK[0xCE0], 0xCu);
          }

          ++v90;
          v91 -= 8;
        }

        while (v91);
      }
    }
  }

  else
  {
    a31 = 0;
  }

  LOBYTE(a28) = 0;
  a30 = 0;
  if (a37 == 1)
  {
    if (*(&a36 + 1))
    {
      v93 = 0;
      v94 = a36;
      v95 = 8 * *(&a36 + 1);
      do
      {
        v93 += sub_261497B6C((atomic_load_explicit(v94++, memory_order_acquire) + 136), 4);
        v95 -= 8;
      }

      while (v95);
      if (v93 >= 2)
      {
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(STACK[0xCE0]) = 134349056;
          STACK[0xCE4] = v93;
          _os_log_debug_impl(&dword_26146F000, v85, OS_LOG_TYPE_DEBUG, "There are %{public}zu regions matching App Clip codes to be consolidated.", &STACK[0xCE0], 0xCu);
        }

        if (a30 == 1)
        {
          STACK[0xCE0] = &a28;
          sub_261476A40(&STACK[0xCE0]);
        }

        a28 = 0;
        a29 = 0uLL;
        a30 = 1;
        if (*(&a36 + 1))
        {
          v96 = a36;
          v97 = 8 * *(&a36 + 1);
          do
          {
            if (!sub_261497B6C((atomic_load_explicit(v96, memory_order_acquire) + 136), 4))
            {
              v98 = a29;
              if (a29 >= *(&a29 + 1))
              {
                v101 = (a29 - a28) >> 3;
                if ((v101 + 1) >> 61)
                {
                  sub_2614709BC();
                }

                v102 = (*(&a29 + 1) - a28) >> 2;
                if (v102 <= v101 + 1)
                {
                  v102 = v101 + 1;
                }

                if (*(&a29 + 1) - a28 >= 0x7FFFFFFFFFFFFFF8uLL)
                {
                  v103 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v102;
                }

                STACK[0xD00] = &a28;
                if (v103)
                {
                  sub_26147B1E8(v103);
                }

                v104 = (8 * v101);
                STACK[0xCE0] = 0;
                STACK[0xCE8] = v104;
                STACK[0xCF0] = v104;
                STACK[0xCF8] = 0;
                v105 = atomic_load_explicit(v96, memory_order_acquire);
                if (v105)
                {
                  v105 = CFRetain(v105);
                }

                *v104 = v105;
                v106 = STACK[0xCE8];
                STACK[0xCF0] += 8;
                v107 = (a28 + v106 - a29);
                sub_26147B230(a28, a29, v107);
                v108 = a28;
                v109 = *(&a29 + 1);
                a28 = v107;
                a29 = *&STACK[0xCF0];
                v277 = a29;
                STACK[0xCF0] = v108;
                STACK[0xCF8] = v109;
                STACK[0xCE8] = v108;
                STACK[0xCE0] = v108;
                sub_26147B2D8(&STACK[0xCE0]);
                v100 = v277;
              }

              else
              {
                v99 = atomic_load_explicit(v96, memory_order_acquire);
                if (v99)
                {
                  v99 = CFRetain(v99);
                }

                *v98 = v99;
                v100 = v98 + 1;
              }

              *&a29 = v100;
            }

            ++v96;
            v97 -= 8;
          }

          while (v97);
        }

        v110 = *v72;
        MinX = CGRectGetMinX(*(*v72 + 1));
        MinY = CGRectGetMinY(*(v110 + 1));
        *&STACK[0xCE0] = MinX;
        *&STACK[0xCE8] = MinY;
        v113 = CGRectGetMinX(*(v110 + 1));
        MaxY = CGRectGetMaxY(*(v110 + 1));
        *&STACK[0xCF0] = v113;
        *&STACK[0xCF8] = MaxY;
        MaxX = CGRectGetMaxX(*(v110 + 1));
        v116 = CGRectGetMaxY(*(v110 + 1));
        *&STACK[0xD00] = MaxX;
        *&STACK[0xD08] = v116;
        v117 = CGRectGetMaxX(*(v110 + 1));
        v118 = CGRectGetMinY(*(v110 + 1));
        *&STACK[0xD10] = v117;
        *&STACK[0xD18] = v118;
        v119 = MRCRegionCreate(&STACK[0xCE0], 0, @"PseudoExternal", 0.0, 1.0);
        v120 = v119;
        if (v119)
        {
          v121 = CFGetTypeID(v119);
          if (qword_280CB34F8[0] != -1)
          {
            dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
          }

          if (v121 != qword_280CB35F0)
          {
            _os_assumes_log();
          }
        }

        STACK[0x13F0] = v120;
        v122 = a29;
        if (a29 >= *(&a29 + 1))
        {
          v123 = sub_261476AC4(&a28, &STACK[0x13F0]);
        }

        else
        {
          *a29 = v120;
          v123 = v122 + 8;
        }

        *&a29 = v123;
        if ((a37 & 1) == 0)
        {
          LOBYTE(a37) = 1;
        }

        *&a36 = a28;
        *(&a36 + 1) = (v123 - a28) >> 3;
      }
    }
  }

  LOBYTE(a24) = 0;
  a27 = 0;
  v125 = v282;
  if (!atomic_load_explicit(a3 + 8, memory_order_acquire))
  {
    v126 = *(v283 + 8);
    if (*(v126 + 65) == 1)
    {
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(STACK[0xCE0]) = 0;
        _os_log_debug_impl(&dword_26146F000, log, OS_LOG_TYPE_DEBUG, "Sample has no pyramid, and pyramid generation on demand is allowed.", &STACK[0xCE0], 2u);
        v126 = *(v283 + 8);
      }

      v127 = MEMORY[0x277CBF398];
      v128 = *(MEMORY[0x277CBF398] + 16);
      *&STACK[0x13F0] = *MEMORY[0x277CBF398];
      *&STACK[0x1400] = v128;
      LOBYTE(STACK[0xCE0]) = 0;
      LOBYTE(STACK[0xCE4]) = 0;
      if (((sub_2614E9390(v126, @"QR", &STACK[0xCE0]) & 1) != 0 || *(v126 + 56) < 0x40000) && a37 == 1 && *(&a36 + 1))
      {
        v129 = 0;
        v130 = a36;
        v131 = (a36 + 8 * *(&a36 + 1));
        v132 = 0.1;
        do
        {
          while (sub_261497B6C((atomic_load_explicit(v130, memory_order_acquire) + 136), 1))
          {
            v133 = *&STACK[0x13F0];
            v134 = *&STACK[0x13F8];
            v135 = *&STACK[0x1400];
            v136 = *&STACK[0x1408];
            v278 = v132;
            v137 = sub_261495974(atomic_load_explicit(v130, memory_order_acquire) + 16, v132);
            v139 = v138;
            v141 = v140;
            v143 = v142;
            sub_26149587C(&STACK[0xCE0], (atomic_load_explicit(v130, memory_order_acquire) + 16), a3[2], a3[9], 0, 0, 0, 0);
            v288.origin.x = v137;
            v288.origin.y = v139;
            v288.size.width = v141;
            v288.size.height = v143;
            v292 = CGRectApplyAffineTransform(v288, &STACK[0xCE0]);
            v289.origin.x = v133;
            v289.origin.y = v134;
            v289.size.width = v135;
            v289.size.height = v136;
            v290 = CGRectUnion(v289, v292);
            STACK[0x13F0] = *&v290.origin.x;
            STACK[0x13F8] = *&v290.origin.y;
            STACK[0x1400] = *&v290.size.width;
            STACK[0x1408] = *&v290.size.height;
            ++v130;
            v129 = 1;
            v132 = v278;
            if (v130 == v131)
            {
              goto LABEL_115;
            }
          }

          ++v130;
        }

        while (v130 != v131);
        if (v129)
        {
LABEL_115:
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(STACK[0xCE0]) = 0;
            _os_log_debug_impl(&dword_26146F000, log, OS_LOG_TYPE_DEBUG, "At least one region contains symbologies requiring pyramid.", &STACK[0xCE0], 2u);
          }

          v144 = _os_feature_enabled_impl();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(STACK[0xCE0]) = 67240192;
            LODWORD(STACK[0xCE4]) = v144;
            _os_log_debug_impl(&dword_26146F000, log, OS_LOG_TYPE_DEBUG, "On-demand pyramid generation: disablesCropping=%{public, BOOL}d", &STACK[0xCE0], 8u);
          }

          sub_261476BD0(v283);
          v145 = &STACK[0x13F0];
          if (v144)
          {
            v145 = v127;
          }

          v146 = *(v145 + 1);
          *&STACK[0xCE0] = *v145;
          *&STACK[0xCF0] = v146;
          LOBYTE(STACK[0xD00]) = 1;
          STACK[0x13D0] = a42;
          LOBYTE(STACK[0x13D8]) = 1;
          sub_26149D818(&STACK[0x13B0]);
        }
      }
    }
  }

  LOBYTE(__src) = 0;
  a23 = 0;
  if (a27 == 1)
  {
    __src = 0;
    a21 = 0;
    a22 = 0;
    a23 = a27;
    if (a25 != a24)
    {
      v147 = 0x84BDA12F684BDA13 * ((a25 - a24) >> 3);
      if (!(v147 >> 61))
      {
        STACK[0xD00] = &__src;
        sub_261470E48(v147);
      }

      sub_2614709BC();
    }
  }

  group = dispatch_group_create();
  a19 = MEMORY[0x277D85D88];
  a16 = v283;
  p_group = &group;
  vars8 = &STACK[0x1260];
  v148 = a42;
  if (a42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
  {
    v149 = atomic_load_explicit(*(v283 + 8), memory_order_acquire);
    if (!v149)
    {
      v149 = *MEMORY[0x277CBEEE8];
    }

    LODWORD(STACK[0xCE0]) = 138543362;
    STACK[0xCE4] = v149;
    _os_signpost_emit_with_name_impl(&dword_26146F000, log, OS_SIGNPOST_INTERVAL_BEGIN, v148, "SampleDecoding", "Begin decoding: symbologies=%{public, signpost.description:attribute}@", &STACK[0xCE0], 0xCu);
  }

  v150 = *(v283 + 8);
  if (*(v150 + 68) == 1)
  {
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    a41 = 1;
    clock_gettime(_CLOCK_MONOTONIC, &__tp);
    v150 = *(v283 + 8);
  }

  if (*(v150 + 56) < 196608)
  {
    STACK[0xCC0] = &unk_2873D3298;
    STACK[0xCC8] = &vars8;
    STACK[0xCD0] = &a16;
    STACK[0xCD8] = &STACK[0xCC0];
    sub_261476DB4(v283, &STACK[0xCC0]);
  }

  if (a37 == 1)
  {
    v151 = *(&a36 + 1);
    v152 = *(&a36 + 1) << 6;
    if (*(&a36 + 1) >> 58)
    {
      v153 = -1;
    }

    else
    {
      v153 = *(&a36 + 1) << 6;
    }

    v154 = MEMORY[0x2667045E0](v153, 64);
    v155 = v154;
    if (v151)
    {
      bzero(v154, v152);
    }

    v156 = a31;
    a31 = v155;
    if (v156)
    {
      MEMORY[0x2667045A0](v156, 64);
      v155 = a31;
      v151 = *(&a36 + 1);
    }

    for (; v151; --v151)
    {
      *v155 = 0;
      v155 += 64;
    }

    a67 = 0;
    operator new();
  }

  v157 = *(v150 + 64);
  v158 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v157)
  {
    if (v158)
    {
      LOWORD(STACK[0xCE0]) = 0;
      _os_log_impl(&dword_26146F000, log, OS_LOG_TYPE_INFO, "For v3, regions should always have value. Due to either the MachineReadableCode/ANMD feature flag is not being turned on, or no applicable inference execution targets are found. Fallback to v2.", &STACK[0xCE0], 2u);
    }

    a60 = &unk_2873D3518;
    a61 = &vars8;
    a62 = &a16;
    a63 = &a60;
    sub_261476DB4(v283, &a60);
  }

  if (v158)
  {
    LOWORD(STACK[0xCE0]) = 0;
    _os_log_impl(&dword_26146F000, log, OS_LOG_TYPE_INFO, "Regions are not provided, algorithmic versioning fallback has also been explicitly disabled.", &STACK[0xCE0], 2u);
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(STACK[0xCE0]) = 0;
    _os_log_debug_impl(&dword_26146F000, log, OS_LOG_TYPE_DEBUG, "Waiting for any pending decoding passes...", &STACK[0xCE0], 2u);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(STACK[0xCE0]) = 0;
    _os_log_debug_impl(&dword_26146F000, log, OS_LOG_TYPE_DEBUG, "Done waiting for pending decoding passes.", &STACK[0xCE0], 2u);
  }

  if (*(*(v283 + 8) + 67) == 1 && a37 == 1)
  {
    v159 = STACK[0x1128] - STACK[0x1120];
    if (STACK[0x1128] != STACK[0x1120])
    {
      if (!((v159 >> 3) >> 61))
      {
        sub_261470B0C(v159 >> 3);
      }

      sub_2614709BC();
    }

    v160 = 0;
    STACK[0x13D8] = 0;
    STACK[0x13D0] = 0;
    STACK[0x13E0] = 0;
    v161 = STACK[0x11A8];
    v162 = STACK[0x11A0];
    if (STACK[0x11A0] != STACK[0x11A8])
    {
      v163 = v161 - v162;
      v164 = (v161 - v162) >> 3;
      if (v164 >= 1)
      {
        if (v163 > 0)
        {
          if (!(v164 >> 61))
          {
            sub_261470B0C(v164);
          }

          sub_2614709BC();
        }

        memmove(0, STACK[0x11A0], v163);
        v160 = v163;
      }

      v165 = STACK[0x13D8];
      v166 = *(atomic_load_explicit(&STACK[0x12E0], memory_order_acquire) + 16);
      v167 = *(atomic_load_explicit(&STACK[0x12E0], memory_order_acquire) + 24);
      sub_261477138(&STACK[0x13D0], v165, v166, v167, v167 - v166);
    }

    if ((a37 & 1) == 0)
    {
      sub_26147736C();
    }

    if (!*(&a36 + 1) || !v160 || STACK[0x13D0] == STACK[0x13D8])
    {
      STACK[0x13B8] = 0;
      STACK[0x13B0] = 0;
      STACK[0x13C0] = 0;
      goto LABEL_252;
    }

    v168 = a36;
    v169 = v160 >> 3;
    sub_2614838A0(&STACK[0x13F0], v160 >> 3);
    v170 = 0;
    v171 = 0;
    v172 = 0;
    if (v169 <= 1)
    {
      v173 = 1;
    }

    else
    {
      v173 = v169;
    }

    v279 = v168;
LABEL_177:
    v174 = v172 >> 6;
    v175 = 1 << v172;
    if ((*(STACK[0x13F0] + 8 * (v172 >> 6)) & (1 << v172)) != 0)
    {
      goto LABEL_218;
    }

    v176 = *(8 * v172);
    v177 = atomic_load_explicit((STACK[0x13D0] + 8 * v172), memory_order_acquire);
    if (*(v177 + 208) != 1 || (*(v177 + 176) - 2) > 3)
    {
      goto LABEL_218;
    }

    v178 = atomic_load_explicit((v168 + 8 * v176), memory_order_acquire);
    v179 = sub_261495974(v178 + 16, 0.1);
    v181 = v180;
    v183 = v182;
    v185 = v184;
    v275 = v171;
    STACK[0xCE0] = CFRetain(@"PseudoPDF417");
    v186 = atomic_load_explicit(&STACK[0xCE0], memory_order_acquire);
    v187 = atomic_load_explicit((v178 + 136), memory_order_acquire);
    v274 = v170;
    if (v187 == v186 || v186 && v187 && CFEqual(v187, v186))
    {
      v188 = 1;
    }

    else
    {
      if (!atomic_load_explicit((v178 + 136), memory_order_acquire) || !atomic_load_explicit(&STACK[0xCE0], memory_order_acquire))
      {
        v276 = 0;
        goto LABEL_190;
      }

      v188 = CFStringCompare(atomic_load_explicit((v178 + 136), memory_order_acquire), atomic_load_explicit(&STACK[0xCE0], memory_order_acquire), 0) == kCFCompareEqualTo;
    }

    v276 = v188;
LABEL_190:
    sub_26148E848(&STACK[0xCE0]);
    v189 = 0;
    while (1)
    {
      if (v172 == v189 || (*(STACK[0x13F0] + 8 * (v189 >> 6)) & (1 << v189)) != 0)
      {
        goto LABEL_205;
      }

      v190 = atomic_load_explicit((v279 + 8 * *(8 * v189)), memory_order_acquire);
      STACK[0xCE0] = CFRetain(@"PseudoPDF417");
      v191 = atomic_load_explicit(&STACK[0xCE0], memory_order_acquire);
      v192 = atomic_load_explicit((v190 + 136), memory_order_acquire);
      if (v192 == v191 || v191 && v192 && CFEqual(v192, v191))
      {
        sub_26148E848(&STACK[0xCE0]);
        if (v276)
        {
          goto LABEL_205;
        }
      }

      else if (atomic_load_explicit((v190 + 136), memory_order_acquire) && atomic_load_explicit(&STACK[0xCE0], memory_order_acquire))
      {
        v193 = CFStringCompare(atomic_load_explicit((v190 + 136), memory_order_acquire), atomic_load_explicit(&STACK[0xCE0], memory_order_acquire), 0) == kCFCompareEqualTo;
        sub_26148E848(&STACK[0xCE0]);
        if (((v276 ^ v193) & 1) == 0)
        {
          goto LABEL_205;
        }
      }

      else
      {
        sub_26148E848(&STACK[0xCE0]);
        if (!v276)
        {
          goto LABEL_205;
        }
      }

      v293.origin.x = sub_261495974(v190 + 16, 0.1);
      v293.origin.y = v194;
      v293.size.width = v195;
      v293.size.height = v196;
      v291.origin.x = v179;
      v291.origin.y = v181;
      v291.size.width = v183;
      v291.size.height = v185;
      if (CGRectIntersectsRect(v291, v293))
      {
        v200 = STACK[0x13F0];
        *(STACK[0x13F0] + 8 * (v189 >> 6)) |= 1 << v189;
        *(v200 + 8 * v174) |= v175;
LABEL_206:
        v168 = v279;
        if ((*(STACK[0x13F0] + 8 * v174) & v175) != 0)
        {
          v171 = v275;
        }

        else
        {
          v197 = (v170 - v275) >> 3;
          v198 = v197 + 1;
          if ((v197 + 1) >> 61)
          {
            sub_2614709BC();
          }

          if (-v275 >> 2 > v198)
          {
            v198 = -v275 >> 2;
          }

          if (-v275 >= 0x7FFFFFFFFFFFFFF8)
          {
            v199 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v199 = v198;
          }

          if (v199)
          {
            sub_261470B0C(v199);
          }

          *(8 * v197) = v172;
          v170 = 8 * v197 + 8;
          memcpy(0, v275, v274 - v275);
          v171 = 0;
        }

LABEL_218:
        if (++v172 == v173)
        {
          STACK[0x13B8] = 0;
          STACK[0x13B0] = 0;
          STACK[0x13C0] = 0;
          sub_2614B59F8(&STACK[0x13B0], (v170 - v171) >> 3);
          if (v171 != v170)
          {
            v201 = v171;
            do
            {
              v202 = atomic_load_explicit((v168 + 8 * *v201), memory_order_acquire);
              STACK[0xCE0] = CFRetain(@"PseudoPDF417");
              v203 = atomic_load_explicit(&STACK[0xCE0], memory_order_acquire);
              v204 = atomic_load_explicit((v202 + 136), memory_order_acquire);
              if (v204 == v203 || (v203 ? (v205 = v204 == 0) : (v205 = 1), !v205 && CFEqual(v204, v203) || atomic_load_explicit((v202 + 136), memory_order_acquire) && atomic_load_explicit(&STACK[0xCE0], memory_order_acquire) && CFStringCompare(atomic_load_explicit((v202 + 136), memory_order_acquire), atomic_load_explicit(&STACK[0xCE0], memory_order_acquire), 0) == kCFCompareEqualTo))
              {
                v206 = @"Pseudo1D";
              }

              else
              {
                v206 = @"PseudoPDF417";
              }

              sub_26148E848(&STACK[0xCE0]);
              v207 = MRCRegionCreate((v202 + 16), (v202 + 80), v206, *(v202 + 128), *(v202 + 144));
              v208 = v207;
              if (v207)
              {
                v209 = CFGetTypeID(v207);
                if (qword_280CB34F8[0] != -1)
                {
                  dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
                }

                if (v209 != qword_280CB35F0)
                {
                  _os_assumes_log();
                }
              }

              v210 = STACK[0x13B8];
              if (STACK[0x13B8] >= STACK[0x13C0])
              {
                v212 = STACK[0x13B0];
                v213 = (v210 - STACK[0x13B0]) >> 3;
                v214 = v213 + 1;
                if ((v213 + 1) >> 61)
                {
                  sub_2614709BC();
                }

                v215 = STACK[0x13C0] - v212;
                if (v215 >> 2 > v214)
                {
                  v214 = v215 >> 2;
                }

                v216 = v215 >= 0x7FFFFFFFFFFFFFF8;
                v217 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v216)
                {
                  v217 = v214;
                }

                STACK[0xD00] = &STACK[0x13B0];
                if (v217)
                {
                  sub_26147B1E8(v217);
                }

                STACK[0xCE0] = 0;
                STACK[0xCE8] = 8 * v213;
                STACK[0xCF8] = 0;
                *(8 * v213) = v208;
                STACK[0xCF0] = 8 * v213 + 8;
                sub_26147B230(v212, v210, 0);
                v218 = STACK[0x13B0];
                v219 = STACK[0x13C0];
                STACK[0x13B0] = 0;
                v280 = *&STACK[0xCF0];
                *&STACK[0x13B8] = *&STACK[0xCF0];
                STACK[0xCF0] = v218;
                STACK[0xCF8] = v219;
                STACK[0xCE8] = v218;
                STACK[0xCE0] = v218;
                sub_26147B2D8(&STACK[0xCE0]);
                v211 = v280;
              }

              else
              {
                *v210 = v208;
                v211 = (v210 + 1);
              }

              STACK[0x13B8] = v211;
              ++v201;
            }

            while (v201 != v170);
          }

          if (STACK[0x13F0])
          {
            operator delete(STACK[0x13F0]);
          }

LABEL_252:
          a59 = 0;
          operator new();
        }

        goto LABEL_177;
      }

LABEL_205:
      if (v173 == ++v189)
      {
        goto LABEL_206;
      }
    }
  }

  v220 = 0;
  v221 = atomic_load_explicit(&a43, memory_order_acquire);
  do
  {
    v222 = (&STACK[0x1260] + v220);
    if (atomic_load_explicit((&STACK[0x1260] + v220), memory_order_acquire))
    {
      v223 = *(atomic_load_explicit(v222, memory_order_acquire) + 16);
      v224 = *(atomic_load_explicit(v222, memory_order_acquire) + 24);
      if (v223 != v224)
      {
        v225 = v221[3];
        do
        {
          if (v225 >= v221[4])
          {
            v225 = sub_2614BF6E4((v221 + 2), v223);
          }

          else
          {
            *v225++ = atomic_exchange(v223, 0);
          }

          v221[3] = v225;
          ++v223;
        }

        while (v223 != v224);
      }

      v226 = atomic_load_explicit((atomic_load_explicit((&STACK[0x1260] + v220), memory_order_acquire) + 40), memory_order_acquire);
      if (v226)
      {
        v226 = CFRetain(v226);
      }

      STACK[0xCE0] = v226;
      v227 = atomic_load_explicit(&STACK[0xCE0], memory_order_acquire);
      v228 = atomic_load_explicit(v221 + 5, memory_order_acquire);
      if (v228)
      {
        v228 = CFRetain(v228);
      }

      STACK[0x13F0] = v228;
      CFDictionaryApplyFunction(v227, sub_26150F274, atomic_load_explicit(&STACK[0x13F0], memory_order_acquire));
      sub_2614769A4(&STACK[0x13F0]);
      sub_2614769A4(&STACK[0xCE0]);
    }

    v220 += 64;
  }

  while (v220 != 320);
  v229 = atomic_load_explicit(&a43, memory_order_acquire);
  v285 = a42;
  LOBYTE(vars0) = 1;
  STACK[0x13D0] = &unk_2873D0B98;
  STACK[0x13E8] = &STACK[0x13D0];
  STACK[0x13B0] = &unk_2873D0B40;
  STACK[0x13C8] = &STACK[0x13B0];
  STACK[0xCE0] = &v285;
  sub_261489C64(&STACK[0xCE8], &STACK[0x13B0]);
  v230 = STACK[0x13E8];
  if (*(STACK[0xCE0] + 8) == 1 && v230 != 0)
  {
    sub_261489CFC(v230, *STACK[0xCE0]);
  }

  sub_261489D4C(&STACK[0x13B0]);
  sub_261489D4C(&STACK[0x13D0]);
  if (*(*(v283 + 8) + 67) != 1)
  {
    goto LABEL_315;
  }

  v232 = *(v229 + 24) - *(v229 + 16);
  a52 = 0;
  HIDWORD(a51) = 0;
  a53 = 0;
  v233 = (v232 >> 3) - 1;
  *(&a51 + 4) = v233;
  if ((v232 >> 3) <= 0)
  {
    goto LABEL_315;
  }

  do
  {
    v234 = atomic_load_explicit((*(v229 + 16) + 8 * v233), memory_order_acquire);
    STACK[0x13F0] = CFRetain(@"PDF417");
    v235 = atomic_load_explicit(&STACK[0x13F0], memory_order_acquire);
    v236 = atomic_load_explicit((v234 + 16), memory_order_acquire);
    if (v236 == v235)
    {
      goto LABEL_288;
    }

    v237 = !v235 || v236 == 0;
    if (!v237 && CFEqual(v236, v235) || atomic_load_explicit((v234 + 16), memory_order_acquire) && atomic_load_explicit(&STACK[0x13F0], memory_order_acquire) && CFStringCompare(atomic_load_explicit((v234 + 16), memory_order_acquire), atomic_load_explicit(&STACK[0x13F0], memory_order_acquire), 0) == kCFCompareEqualTo)
    {
      goto LABEL_288;
    }

    __p = CFRetain(@"MicroPDF417");
    v238 = atomic_load_explicit(&__p, memory_order_acquire);
    v239 = atomic_load_explicit((v234 + 16), memory_order_acquire);
    if (v239 == v238 || v238 && v239 && CFEqual(v239, v238))
    {
      sub_26148E848(&__p);
LABEL_288:
      sub_26148E848(&STACK[0x13F0]);
      goto LABEL_289;
    }

    if (!atomic_load_explicit((v234 + 16), memory_order_acquire) || !atomic_load_explicit(&__p, memory_order_acquire))
    {
      sub_26148E848(&__p);
      sub_26148E848(&STACK[0x13F0]);
      goto LABEL_301;
    }

    v240 = CFStringCompare(atomic_load_explicit((v234 + 16), memory_order_acquire), atomic_load_explicit(&__p, memory_order_acquire), 0);
    sub_26148E848(&__p);
    sub_26148E848(&STACK[0x13F0]);
    if (v240)
    {
      goto LABEL_301;
    }

LABEL_289:
    if (*(v234 + 208) == 1 && *(v234 + 164) == 1 && *(v234 + 156) == 1 && *(v234 + 280) == 1 && *(v234 + 64) == 1 && *(v234 + 48) - *(v234 + 40) == 64)
    {
      sub_2614C61CC();
    }

LABEL_301:
    v241 = DWORD1(a51);
    v233 = --DWORD1(a51);
  }

  while (v241 > 0);
  v242 = *(&a51 + 1);
  v243 = a52;
  if (*(&a51 + 1) == a52)
  {
    v125 = v282;
    if (*(&a51 + 1))
    {
      goto LABEL_314;
    }
  }

  else
  {
    v244 = *(v229 + 24);
    v125 = v282;
    do
    {
      v245 = (*(v229 + 16) + 8 * *v242 + 8);
      if (v245 == v244)
      {
        v248 = v244;
        v244 = *(v229 + 16) + 8 * *v242;
      }

      else
      {
        do
        {
          v246 = v245;
          v247 = atomic_exchange(v245 - 1, atomic_exchange(v245, 0));
          if (v247)
          {
            CFRelease(v247);
          }

          v245 = v246 + 1;
        }

        while (v246 + 1 != v244);
        v248 = *(v229 + 24);
        v244 = v246;
      }

      while (v248 != v244)
      {
        v248 = sub_261477724(v248 - 1);
      }

      *(v229 + 24) = v244;
      ++v242;
    }

    while (v242 != v243);
    v242 = *(&a51 + 1);
    if (*(&a51 + 1))
    {
LABEL_314:
      operator delete(v242);
    }
  }

LABEL_315:
  v249 = STACK[0xD00];
  if (*(STACK[0xCE0] + 8) == 1 && v249 != 0)
  {
    sub_261489CFC(v249, *STACK[0xCE0]);
  }

  sub_261489D4C(&STACK[0xCE8]);
  if (*(*(v283 + 8) + 68) == 1)
  {
    a38.tv_sec = 0;
    a38.tv_nsec = 0;
    a39 = 1;
    clock_gettime(_CLOCK_MONOTONIC, &a38);
    v251 = (a38.tv_nsec - __tp.tv_nsec) / 1000000000.0 + (a38.tv_sec - __tp.tv_sec);
    *&STACK[0x13F0] = v251;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(STACK[0xCE0]) = 134349056;
      *&STACK[0xCE4] = v251;
      _os_log_debug_impl(&dword_26146F000, log, OS_LOG_TYPE_DEBUG, "Elapsed time during decoding: %{public}g", &STACK[0xCE0], 0xCu);
    }

    STACK[0xCE0] = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &STACK[0x13F0]);
    v252 = atomic_load_explicit((atomic_load_explicit(&a43, memory_order_acquire) + 40), memory_order_acquire);
    if (v252)
    {
      v252 = CFRetain(v252);
    }

    STACK[0x13D0] = v252;
    CFDictionarySetValue(atomic_load_explicit(&STACK[0x13D0], memory_order_acquire), @"MRCDecoderResultAttributeDecodingElapsedTime", atomic_load_explicit(&STACK[0xCE0], memory_order_acquire));
    sub_2614769A4(&STACK[0x13D0]);
    sub_2614769D8(&STACK[0xCE0]);
  }

  v253 = a42;
  if (a42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
  {
    v254 = atomic_load_explicit(&a43, memory_order_acquire);
    LODWORD(STACK[0xCE0]) = 138739971;
    STACK[0xCE4] = v254;
    _os_signpost_emit_with_name_impl(&dword_26146F000, log, OS_SIGNPOST_INTERVAL_END, v253, "SampleDecoding", "End decoding: decoderResult=%{sensitive, signpost.description:attribute}@", &STACK[0xCE0], 0xCu);
  }

  v255 = *(v283 + 8);
  if (a37 == 1 && *(v255 + 52) == 1)
  {
    v256 = *MEMORY[0x277CBECE8];
    STACK[0xCE0] = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v257 = *(&a36 + 1);
    if (*(&a36 + 1))
    {
      v258 = 0;
      v259 = 0;
      do
      {
        if ((a31[v258] & 1) == 0)
        {
          v260 = atomic_load_explicit(&STACK[0xCE0], memory_order_acquire);
          CFArrayAppendValue(v260, atomic_load_explicit((a36 + 8 * v259), memory_order_acquire));
        }

        ++v259;
        v258 += 64;
      }

      while (v257 != v259);
    }

    STACK[0x13F0] = CFArrayCreateCopy(v256, atomic_load_explicit(&STACK[0xCE0], memory_order_acquire));
    v261 = atomic_load_explicit((atomic_load_explicit(&a43, memory_order_acquire) + 40), memory_order_acquire);
    if (v261)
    {
      v261 = CFRetain(v261);
    }

    STACK[0x13D0] = v261;
    CFDictionarySetValue(atomic_load_explicit(&STACK[0x13D0], memory_order_acquire), @"MRCDecoderResultAttributeUnrecognizedRegions", atomic_load_explicit(&STACK[0x13F0], memory_order_acquire));
    sub_2614769A4(&STACK[0x13D0]);
    sub_261476A0C(&STACK[0x13F0]);
    sub_26147743C(&STACK[0xCE0]);
    v255 = *(v283 + 8);
  }

  if (*(v255 + 56) >= 196608)
  {
    v264 = atomic_load_explicit(&a43, memory_order_acquire);
    if (*(v264 + 16) != *(v264 + 24))
    {
      goto LABEL_351;
    }

LABEL_346:
    v265 = 0;
    while ((*(&STACK[0xF00] + v265) & 1) == 0)
    {
      v265 += 128;
      if (v265 == 640)
      {
        goto LABEL_351;
      }
    }

    sub_261477470(v125, &STACK[0xEA0] + v265);
    v273 = 0;
  }

  else
  {
    v262 = &STACK[0xD61];
    v263 = 320;
    while (*v262 != 1 || (*(v262 - 1) & 1) == 0)
    {
      v262 += 8;
      v263 -= 64;
      if (!v263)
      {
        goto LABEL_346;
      }
    }

LABEL_351:
    v273 = atomic_exchange(&a43, 0);
  }

  *a1 = v273;
  v266 = group;
  group = 0;
  if (v266)
  {
    a19();
  }

  if (a23 == 1)
  {
    STACK[0xCE0] = &__src;
    sub_2614774E8(&STACK[0xCE0]);
  }

  if (a27 == 1)
  {
    STACK[0xCE0] = &a24;
    sub_26147756C(&STACK[0xCE0]);
  }

  if (a30 == 1)
  {
    STACK[0xCE0] = &a28;
    sub_261476A40(&STACK[0xCE0]);
  }

  v267 = a31;
  a31 = 0;
  if (v267)
  {
    MEMORY[0x2667045A0](v267, 64);
  }

LABEL_362:
  if (a35 == 1)
  {
    STACK[0xCE0] = &a32;
    sub_261476A40(&STACK[0xCE0]);
  }

  v268 = 640;
  do
  {
    if (*(&STACK[0xEA0] + v268 - 32) == 1)
    {
      sub_261501098((&STACK[0xEA0] + v268 - 128));
    }

    v268 -= 128;
  }

  while (v268);
  v269 = 320;
  do
  {
    v270 = *(&STACK[0x1120] + v269 - 64);
    if (v270)
    {
      *(&STACK[0x1120] + v269 - 56) = v270;
      operator delete(v270);
    }

    v269 -= 64;
  }

  while (v269);
  for (n = 256; n != -64; n -= 64)
  {
    sub_2614775F4((&STACK[0x1260] + n));
  }

  sub_2614775F4(&a43);
  return sub_261477628(&a44);
}

void sub_261476234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *****a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void (*a39)(void), void ****a40, uint64_t a41, uint64_t a42, char a43, void ***a44, uint64_t a45, uint64_t a46, char a47, void **a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a71 = __p;
    operator delete(__p);
  }

  if (STACK[0x200])
  {
    sub_2614705CC(STACK[0x200]);
  }

  if (STACK[0x208])
  {
    sub_2614705CC(STACK[0x208]);
  }

  if (STACK[0x218])
  {
    operator delete(STACK[0x218]);
  }

  sub_2614D6380(&STACK[0x2C0]);
  v72 = a38;
  a38 = 0;
  if (v72)
  {
    a39();
  }

  if (a43 == 1)
  {
    a32 = &a40;
    sub_2614774E8(&a32);
  }

  if (a47 == 1)
  {
    a40 = &a44;
    sub_26147756C(&a40);
  }

  if (a51 == 1)
  {
    a44 = &a48;
    sub_261476A40(&a44);
  }

  v73 = a52;
  a52 = 0;
  if (v73)
  {
    MEMORY[0x2667045A0](v73, 64);
  }

  if (a56 == 1)
  {
    a48 = &a53;
    sub_261476A40(&a48);
  }

  v74 = 640;
  while (1)
  {
    if (*(&STACK[0x480] + v74 - 32) == 1)
    {
      sub_261501098((&STACK[0x480] + v74 - 128));
    }

    v74 -= 128;
    if (!v74)
    {
      v75 = 320;
      while (1)
      {
        v76 = *(&STACK[0x700] + v75 - 64);
        if (v76)
        {
          *(&STACK[0x700] + v75 - 56) = v76;
          operator delete(v76);
        }

        v75 -= 64;
        if (!v75)
        {
          for (i = 256; i != -64; i -= 64)
          {
            sub_2614775F4((&STACK[0x840] + i));
          }

          sub_2614775F4(&a67);
          sub_261477628(&a68);
          _Unwind_Resume(a1);
        }
      }
    }
  }
}

uint64_t sub_261476754(atomic_ullong *a1, uint64_t *a2, CFTypeRef *a3)
{
  if (*(a1 + 96) == 1)
  {
    a1 = sub_261501098(a1);
    *(a1 + 96) = 0;
  }

  result = sub_261500FD8(a1, *a2, *a3);
  *(result + 96) = 1;
  return result;
}

void *sub_2614767A0()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_280CB3508[0] != -1)
  {
    dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    v3 = CFGetTypeID(Instance);
    if (qword_280CB3508[0] != -1)
    {
      dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
    }

    if (v3 != qword_280CB3600)
    {
      _os_assumes_log();
    }

    v2[2] = 0;
    v2[3] = 0;
    v2[4] = 0;
    v2[5] = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v4 = CFGetTypeID(v2);
    if (qword_280CB3508[0] != -1)
    {
      dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
    }

    if (v4 != qword_280CB3600)
    {
      _os_assumes_log();
    }
  }

  return v2;
}

void sub_26147690C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2614773B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261476924(uint64_t a1)
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

atomic_ullong *sub_2614769A4(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

atomic_ullong *sub_2614769D8(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

atomic_ullong *sub_261476A0C(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_261476A40(void ***a1)
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
        v4 = sub_26147B328(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_261476AC4(uint64_t a1, atomic_ullong *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = v5 - v4;
  v8 = v7 + 1;
  if ((v7 + 1) >> 61)
  {
    sub_2614709BC();
  }

  v9 = *(a1 + 16) - v4;
  if (v9 >> 2 > v8)
  {
    v8 = v9 >> 2;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    v8 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v17 = a1;
  if (v8)
  {
    sub_26147B1E8(v8);
  }

  v14 = 0;
  v15 = (8 * v7);
  *v15 = *a2;
  v16 = (8 * v7 + 8);
  sub_26147B230(v4, v5, 0);
  v10 = *a1;
  *a1 = 0;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_26147B2D8(&v14);
  return v13;
}

void sub_261476BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_26147B2D8(va);
  _Unwind_Resume(a1);
}

char *sub_261476BD0(atomic_ullong *a1)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit)
  {
    v2 = CFGetTypeID(explicit);
    if (qword_280CB34E0 != -1)
    {
      dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
    }

    if (v2 != qword_280CB35D8)
    {
      _os_assumes_log();
    }
  }

  return explicit + 16;
}

atomic_ullong *sub_261476C54(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *sub_261476C88(uint64_t a1, atomic_ullong *a2, CGRect *a3, _OWORD *a4)
{
  if (*(a1 + 24) == 1)
  {
    v9 = a1;
    sub_26147756C(&v9);
    *(a1 + 24) = 0;
  }

  result = sub_2614F410C(a1, a2, a3, a4);
  *(a1 + 24) = 1;
  return result;
}

uint64_t sub_261476CFC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_261476D4C((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_261476D4C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 16) == 1)
    {
      *(v2 + 16) = sub_2614F5408(*v2, *(v2 + 8)) ^ 1;
    }

    MEMORY[0x2667045D0](v2, 0x1060C400D4C2B82);
  }

  return a1;
}

void sub_261476DB4(uint64_t a1, uint64_t a2)
{
  v36[5] = *MEMORY[0x277D85DE8];
  v4 = (a2 + 24);
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v36[0] = v35;
      (*(*v3 + 24))(v3, v35);
LABEL_7:
      *&v5 = sub_26147DFF4;
      *(&v5 + 1) = 0;
      v6 = a1;
      v7 = xmmword_279AD85F0;
      v8 = 0u;
      v9 = sub_261558EFC;
      v10 = 0;
      v11 = a1;
      v12 = xmmword_279AD8600;
      v13 = 0x100000000;
      v14 = 1;
      v15 = sub_2615378BC;
      v16 = 0;
      v17 = a1;
      v18 = xmmword_279AD8610;
      v19 = 0x200000000;
      v20 = 2;
      v21 = nullsub_327;
      v22 = 0;
      v23 = a1;
      v24 = xmmword_279AD8620;
      v25 = 0x300000000;
      v26 = 3;
      v27 = sub_2614BD3F4;
      v28 = 0;
      v29 = a1;
      v30 = xmmword_279AD8630;
      v31 = 0x47FFFFFFFLL;
      v32 = 4;
      sub_261479528(&v5, &v33, 4, 1);
      v33 = v5;
      v34 = v6;
      operator new();
    }

    v36[0] = *(a2 + 24);
  }

  else
  {
    v4 = v36;
  }

  *v4 = 0;
  goto LABEL_7;
}

void sub_261477080(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614770B8(uint64_t a1)
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

void sub_261477138(void *a1, uint64_t a2, atomic_ullong *a3, atomic_ullong *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v15 = (v10 - a2) >> 3;
      if (v15 >= a5)
      {
        sub_261478684(a1, a2, a1[1], (a2 + 8 * a5));
        v21 = &v6[a5];
        do
        {
          sub_261478704(v7++, atomic_load_explicit(v6++, memory_order_acquire));
        }

        while (v6 != v21);
      }

      else
      {
        v17 = (a3 + v10 - a2);
        v18 = a1[1];
        if (v17 != a4)
        {
          v19 = 0;
          do
          {
            explicit = atomic_load_explicit(&v17[v19], memory_order_acquire);
            if (explicit)
            {
              explicit = CFRetain(explicit);
            }

            *(v10 + v19 * 8) = explicit;
            ++v19;
          }

          while (&v17[v19] != a4);
          v18 = v10 + v19 * 8;
        }

        a1[1] = v18;
        if (v15 >= 1)
        {
          sub_261478684(a1, v7, v10, &v7[a5]);
          if (v10 != v7)
          {
            do
            {
              sub_261478704(v7++, atomic_load_explicit(v6++, memory_order_acquire));
            }

            while (v6 != v17);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 3);
      if (v12 >> 61)
      {
        sub_2614709BC();
      }

      v13 = v9 - v11;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v29 = a1;
      if (v14)
      {
        sub_261470E48(v14);
      }

      v22 = (8 * ((a2 - v11) >> 3));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 8 * a5;
      v24 = &v22[a5];
      do
      {
        v25 = atomic_load_explicit(v6, memory_order_acquire);
        if (v25)
        {
          v25 = CFRetain(v25);
        }

        *v22++ = v25;
        ++v6;
        v23 -= 8;
      }

      while (v23);
      v27 = v24;
      sub_26147875C(a1, v26, v7);
      sub_261478814(v26);
    }
  }
}

void sub_26147731C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261478814(va);
  _Unwind_Resume(a1);
}

void sub_26147736C()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void sub_2614773B8(void ***a1)
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
        v4 = sub_261477724(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

atomic_ullong *sub_26147743C(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_261477470(uint64_t result, uint64_t a2)
{
  if (*(result + 96) == *(a2 + 96))
  {
    if (*(result + 96))
    {
      v3 = sub_261501098(result);

      return sub_26150122C(v3, a2);
    }
  }

  else if (*(result + 96))
  {
    result = sub_261501098(result);
    *(result + 96) = 0;
  }

  else
  {
    result = sub_26150122C(result, a2);
    *(result + 96) = 1;
  }

  return result;
}

void sub_2614774E8(void ***a1)
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
        v4 = sub_261476D4C(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_26147756C(void ***a1)
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
        v6 = v4 - 27;
        sub_2614776F0(v4 - 26);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

atomic_ullong *sub_2614775F4(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_261477628(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (sub_2614F5398(**a1))
    {
      v3 = v2[7];
      if (v3)
      {
        for (i = *v3; i != v3[1]; i += 216)
        {
          if ((sub_2614F5398((i + 8)) & 1) == 0)
          {
            while (i != *v2[7])
            {
              if ((sub_2614F5328((i - 208)) & 1) == 0)
              {
                _os_assumes_log();
              }

              i -= 216;
            }

            if ((sub_2614F5328(*v2) & 1) == 0)
            {
              _os_assumes_log();
            }

            goto LABEL_14;
          }

          v3 = v2[7];
        }
      }
    }

    else
    {
LABEL_14:
      _os_assumes_log();
    }
  }

  return a1;
}

atomic_ullong *sub_2614776F0(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

atomic_ullong *sub_261477724(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_261477764(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc7Decoder6decodeERKNS_2CFINS_6SampleENS_2cf6TraitsIS2_NS3_13PersonalitiesIS2_XtlNS_12fixed_stringILm9EEEtlNS_18basic_fixed_stringIcLm9ENSt3__111char_traitsIcEEEEtlA10_cLc77ELc82ELc67ELc83ELc97ELc109ELc112ELc108ELc101EEEEEJEEEEEEERKNS9_8optionalINS9_4spanIKNS_5CFRefIPKNS1_INS_6RegionENS4_ISM_NS5_ISM_XtlS7_tlSC_tlSD_Lc77ELc82ELc67ELc82ELc101ELc103ELc105ELc111ELc110EEEEEJEEEEEEEEELm18446744073709551615EEEEERNSJ_INS_5ErrorEEEE3$_8"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2614777A0(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_2614777EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t *a6)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_26147792C(v14, a2);
  v9 = *a5;
  v10 = *a6;
  v13 = v9;
  sub_26147792C(v15, v14);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v16 = v10;
  v17 = v11;
  v18 = &v13;
  v19 = v12;
  v20 = 0;
  operator new();
}

void sub_261477900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_261477CFC(v2 - 72);
  sub_261477D7C(va1);
  sub_261477D7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26147792C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_2614779AC(dispatch_group_t **a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (BYTE2((*a1)[1][8].isa))
  {
    dispatch_group_enter(*a1[1]);
    explicit = atomic_load_explicit(v3, memory_order_acquire);
    if (explicit)
    {
      v6 = CFGetTypeID(explicit);
      if (qword_280CB34E0 != -1)
      {
        dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
      }

      if (v6 != qword_280CB35D8)
      {
        _os_assumes_log();
      }
    }

    sub_261477E7C(v21, a2);
    v21[4] = a1[1];
    v21[8] = 0;
    operator new();
  }

  v7 = atomic_load_explicit(v3, memory_order_acquire);
  if (v7)
  {
    v8 = CFGetTypeID(v7);
    if (qword_280CB34E0 != -1)
    {
      dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
    }

    if (v8 != qword_280CB35D8)
    {
      _os_assumes_log();
    }
  }

  v9 = v7[2];
  sub_261477DFC(v22, a2);
  if (v23)
  {
    v10 = *(v9 + 24);
    HIDWORD(v12) = v10 - 9;
    LODWORD(v12) = v10 - 9;
    v11 = v12 >> 2;
    v13 = v11 > 6;
    v14 = (1 << v11) & 0x5D;
    if (v13 || v14 == 0)
    {
      (*(*v23 + 48))();
    }

    else
    {
      v16 = *(v9 + 28);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 1174405120;
      block[2] = sub_261531A0C;
      block[3] = &unk_2873D6EF0;
      sub_261477E7C(v25, v22);
      if ((v16 & (v16 >> 31)) <= -15)
      {
        v17 = -15;
      }

      else
      {
        v17 = v16 & (v16 >> 31);
      }

      v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, v17, block);
      if (v18)
      {
        v19 = v18;
        (*(v18 + 2))();
        _Block_release(v19);
      }

      else
      {
        if (!v23)
        {
          sub_261477FC4();
        }

        (*(*v23 + 48))(v23);
      }

      sub_261477CFC(v25);
    }
  }

  return sub_261477CFC(v22);
}

void sub_261477CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_261477CFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261477CFC(uint64_t a1)
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

uint64_t sub_261477D7C(uint64_t a1)
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

uint64_t sub_261477DFC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_261477E7C(uint64_t a1, uint64_t a2)
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

uint64_t sub_261477F20(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZZNK3mrc7Decoder6decodeERKNS_2CFINS_6SampleENS_2cf6TraitsIS2_NS3_13PersonalitiesIS2_XtlNS_12fixed_stringILm9EEEtlNS_18basic_fixed_stringIcLm9ENSt3__111char_traitsIcEEEEtlA10_cLc77ELc82ELc67ELc83ELc97ELc109ELc112ELc108ELc101EEEEEJEEEEEEERKNS9_8optionalINS9_4spanIKNS_5CFRefIPKNS1_INS_6RegionENS4_ISM_NS5_ISM_XtlS7_tlSC_tlSD_Lc77ELc82ELc67ELc82ELc101ELc103ELc105ELc111ELc110EEEEEJEEEEEEEEELm18446744073709551615EEEEERNSJ_INS_5ErrorEEEENK3$_1clENS9_8functionIFvvEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261477F5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_261477FC4();
  }

  (*(*v2 + 48))(v2);
  v3 = **(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_261477FC4()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void sub_261478010(void *a1)
{
  sub_261477CFC(a1 + 8);

  operator delete(a1);
}

uint64_t sub_261478054(uint64_t a1, void *a2)
{
  *a2 = &unk_2873D3308;
  result = sub_261477E7C((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void sub_261478128(void *a1)
{
  *a1 = &unk_2873D3308;
  sub_261477CFC((a1 + 1));

  JUMPOUT(0x2667045D0);
}

void *sub_26147818C(void *a1)
{
  *a1 = &unk_2873D3308;
  sub_261477CFC((a1 + 1));
  return a1;
}

uint64_t sub_2614781DC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZZNK3mrc7Decoder6decodeERKNS_2CFINS_6SampleENS_2cf6TraitsIS2_NS3_13PersonalitiesIS2_XtlNS_12fixed_stringILm9EEEtlNS_18basic_fixed_stringIcLm9ENSt3__111char_traitsIcEEEEtlA10_cLc77ELc82ELc67ELc83ELc97ELc109ELc112ELc108ELc101EEEEEJEEEEEEERKNS9_8optionalINS9_4spanIKNS_5CFRefIPKNS1_INS_6RegionENS4_ISM_NS5_ISM_XtlS7_tlSC_tlSD_Lc77ELc82ELc67ELc82ELc101ELc103ELc105ELc111ELc110EEEEEJEEEEEEEEELm18446744073709551615EEEEERNSJ_INS_5ErrorEEEENK3$_8clINS9_8functionIFvRKNS0_4PassEEEENS9_17basic_string_viewIcSB_EEiNS_9symbology12ImplCategoryEmEEDaT_RKT0_T1_T2_T3_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261478218(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *v1;
  v3 = v1[1];
  if (*v1 != v3)
  {
    v4 = result;
    do
    {
      explicit = atomic_load_explicit(v2, memory_order_acquire);
      result = sub_261497B6C((explicit + 136), **(v4 + 56));
      if (result)
      {
        v6 = *(v4 + 64);
        v7 = *(v4 + 40);
        v8 = (*v6 + (v7 << 6));
        if (!atomic_load_explicit(v8, memory_order_acquire))
        {
          v19[0] = sub_2614767A0();
          v9 = atomic_exchange(v8, atomic_exchange(v19, 0));
          if (v9)
          {
            CFRelease(v9);
          }

          sub_2614775F4(v19);
        }

        v10 = v6[1];
        v11 = v6[2];
        v12 = atomic_load_explicit(v8, memory_order_acquire) + 16;
        v13 = v6[3] + (v7 << 6);
        v14 = *(v10 + 8);
        v15 = *v10 + 16;
        v16 = *(v10 + 16);
        v17 = **(v10 + 24);
        v19[0] = v12;
        v19[1] = v15;
        v19[2] = v14;
        v19[3] = explicit + 16;
        v20 = 1;
        v21 = v11 + (v7 << 7);
        v22 = *v16;
        v23 = 1;
        v24 = v13;
        v25 = v17;
        v18 = *(v4 + 32);
        if (!v18)
        {
          sub_261477FC4();
        }

        result = (*(*v18 + 48))(v18, v19);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_261478368(void *a1)
{
  sub_261477D7C(a1 + 8);

  operator delete(a1);
}

__n128 sub_2614783AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3688;
  sub_261478408(a2 + 8, a1 + 8);
  result = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_261478408(uint64_t a1, uint64_t a2)
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

void sub_261478528(void *a1)
{
  *a1 = &unk_2873D3688;
  sub_261477D7C((a1 + 1));

  JUMPOUT(0x2667045D0);
}

void *sub_26147858C(void *a1)
{
  *a1 = &unk_2873D3688;
  sub_261477D7C((a1 + 1));
  return a1;
}

__n128 sub_2614785D8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3618;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_261478684(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (v4 - a4);
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = atomic_exchange(v6, 0);
    v7 += 8;
    ++v6;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v8 = (v4 - 8);
    v9 = a2 - 8;
    do
    {
      v10 = atomic_exchange(v8, atomic_exchange(&v5[v9], 0));
      if (v10)
      {
        CFRelease(v10);
      }

      --v8;
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_261478704(atomic_ullong *a1, CFTypeRef cf)
{
  if (cf)
  {
    v3 = CFRetain(cf);
  }

  else
  {
    v3 = 0;
  }

  v4 = atomic_exchange(a1, v3);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t sub_26147875C(uint64_t a1, uint64_t a2, atomic_ullong *a3)
{
  v6 = *(a2 + 8);
  sub_261478864(a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_261478864(v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_261478814(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_261477724((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_ullong *sub_261478864(atomic_ullong *result, atomic_ullong *a2, void *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = result;
    do
    {
      explicit = atomic_load_explicit(v6, memory_order_acquire);
      if (explicit)
      {
        explicit = CFRetain(explicit);
      }

      *a3++ = explicit;
      ++v6;
      v5 -= 8;
    }

    while (v6 != a2);
    do
    {
      result = sub_261477724(v4++);
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_261478918(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc7Decoder6decodeERKNS_2CFINS_6SampleENS_2cf6TraitsIS2_NS3_13PersonalitiesIS2_XtlNS_12fixed_stringILm9EEEtlNS_18basic_fixed_stringIcLm9ENSt3__111char_traitsIcEEEEtlA10_cLc77ELc82ELc67ELc83ELc97ELc109ELc112ELc108ELc101EEEEEJEEEEEEERKNS9_8optionalINS9_4spanIKNS_5CFRefIPKNS1_INS_6RegionENS4_ISM_NS5_ISM_XtlS7_tlSC_tlSD_Lc77ELc82ELc67ELc82ELc101ELc103ELc105ELc111ELc110EEEEEJEEEEEEEEELm18446744073709551615EEEEERNSJ_INS_5ErrorEEEE3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261478954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_26147792C(v10, a2);
  v8 = *a6;
  sub_26147792C(v11, v10);
  v9 = *(a1 + 8);
  v12 = v8;
  v13 = v9;
  v14 = 0;
  operator new();
}

void sub_261478A50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_261477CFC(v2 - 72);
  sub_261477D7C(va1);
  sub_261477D7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261478A88(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZZNK3mrc7Decoder6decodeERKNS_2CFINS_6SampleENS_2cf6TraitsIS2_NS3_13PersonalitiesIS2_XtlNS_12fixed_stringILm9EEEtlNS_18basic_fixed_stringIcLm9ENSt3__111char_traitsIcEEEEtlA10_cLc77ELc82ELc67ELc83ELc97ELc109ELc112ELc108ELc101EEEEEJEEEEEEERKNS9_8optionalINS9_4spanIKNS_5CFRefIPKNS1_INS_6RegionENS4_ISM_NS5_ISM_XtlS7_tlSC_tlSD_Lc77ELc82ELc67ELc82ELc101ELc103ELc105ELc111ELc110EEEEEJEEEEEEEEELm18446744073709551615EEEEERNSJ_INS_5ErrorEEEENK3$_7clINS9_8functionIFvRKNS0_4PassEEEENS9_17basic_string_viewIcSB_EEiNS_9symbology12ImplCategoryEmEEDaT_RKT0_T1_T2_T3_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261478AC4(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = (*v3 + (v2 << 6));
  if (!atomic_load_explicit(v4, memory_order_acquire))
  {
    v16[0] = sub_2614767A0();
    v5 = atomic_exchange(v4, atomic_exchange(v16, 0));
    if (v5)
    {
      CFRelease(v5);
    }

    sub_2614775F4(v16);
  }

  v6 = v3[1];
  v7 = v3[2];
  explicit = atomic_load_explicit(v4, memory_order_acquire);
  v9 = v3[3] + (v2 << 6);
  v10 = *(v6 + 8);
  v11 = *v6 + 16;
  v12 = *(v6 + 16);
  v13 = **(v6 + 24);
  v16[0] = explicit + 16;
  v16[1] = v11;
  v16[2] = v10;
  v17 = 0;
  v18 = 0;
  v19 = v7 + (v2 << 7);
  v20 = *v12;
  v21 = 1;
  v22 = v9;
  v23 = v13;
  v14 = a1[4];
  if (!v14)
  {
    sub_261477FC4();
  }

  return (*(*v14 + 48))(v14, v16);
}

void sub_261478BC4(void *a1)
{
  sub_261477D7C(a1 + 8);

  operator delete(a1);
}

__n128 sub_261478C08(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3588;
  sub_261478408(a2 + 8, a1 + 8);
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void sub_261478CDC(void *a1)
{
  *a1 = &unk_2873D3588;
  sub_261477D7C((a1 + 1));

  JUMPOUT(0x2667045D0);
}

void *sub_261478D40(void *a1)
{
  *a1 = &unk_2873D3588;
  sub_261477D7C((a1 + 1));
  return a1;
}

__n128 sub_261478D8C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3518;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_261478E34(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc7Decoder6decodeERKNS_2CFINS_6SampleENS_2cf6TraitsIS2_NS3_13PersonalitiesIS2_XtlNS_12fixed_stringILm9EEEtlNS_18basic_fixed_stringIcLm9ENSt3__111char_traitsIcEEEEtlA10_cLc77ELc82ELc67ELc83ELc97ELc109ELc112ELc108ELc101EEEEEJEEEEEEERKNS9_8optionalINS9_4spanIKNS_5CFRefIPKNS1_INS_6RegionENS4_ISM_NS5_ISM_XtlS7_tlSC_tlSD_Lc77ELc82ELc67ELc82ELc101ELc103ELc105ELc111ELc110EEEEEJEEEEEEEEELm18446744073709551615EEEEERNSJ_INS_5ErrorEEEE3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261478E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_26147792C(v11, a2);
  LODWORD(a5) = *a5;
  v9 = *a6;
  sub_26147792C(v12, v11);
  v13 = a5;
  v14 = v9;
  v10 = *(a1 + 24);
  v15 = *(a1 + 8);
  v16 = v10;
  v17 = *(a1 + 40);
  v18 = 0;
  operator new();
}

void sub_261478FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_261477CFC(v13 - 88);
  sub_261477D7C(&a13);
  sub_261477D7C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_261478FDC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZZNK3mrc7Decoder6decodeERKNS_2CFINS_6SampleENS_2cf6TraitsIS2_NS3_13PersonalitiesIS2_XtlNS_12fixed_stringILm9EEEtlNS_18basic_fixed_stringIcLm9ENSt3__111char_traitsIcEEEEtlA10_cLc77ELc82ELc67ELc83ELc97ELc109ELc112ELc108ELc101EEEEEJEEEEEEERKNS9_8optionalINS9_4spanIKNS_5CFRefIPKNS1_INS_6RegionENS4_ISM_NS5_ISM_XtlS7_tlSC_tlSD_Lc77ELc82ELc67ELc82ELc101ELc103ELc105ELc111ELc110EEEEEJEEEEEEEEELm18446744073709551615EEEEERNSJ_INS_5ErrorEEEENK3$_6clINS9_8functionIFvRKNS0_4PassEEEENS9_17basic_string_viewIcSB_EEiNS_9symbology12ImplCategoryEmEEDaT_RKT0_T1_T2_T3_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261479018(uint64_t a1)
{
  v1 = *(*(a1 + 56) + 8);
  if (v1)
  {
    v3 = 0;
    for (i = 0; i != v1; ++i)
    {
      if ((atomic_load_explicit((**(a1 + 64) + v3), memory_order_acquire) & 1) == 0)
      {
        v5 = (**(a1 + 56) + 8 * i);
        if (sub_261497B6C((atomic_load_explicit(v5, memory_order_acquire) + 136), *(a1 + 40)))
        {
          v6 = *(a1 + 72);
          explicit = atomic_load_explicit(v5, memory_order_acquire);
          v8 = *(a1 + 48);
          v9 = (*v6 + (v8 << 6));
          if (!atomic_load_explicit(v9, memory_order_acquire))
          {
            v32[0] = sub_2614767A0();
            v10 = atomic_exchange(v9, atomic_exchange(v32, 0));
            if (v10)
            {
              CFRelease(v10);
            }

            sub_2614775F4(v32);
          }

          v11 = v6[1];
          v12 = v6[2];
          v13 = atomic_load_explicit(v9, memory_order_acquire) + 16;
          v14 = v6[3] + (v8 << 6);
          v15 = *(v11 + 8);
          v16 = *v11 + 16;
          v17 = *(v11 + 16);
          v18 = **(v11 + 24);
          v32[0] = v13;
          v32[1] = v16;
          v32[2] = v15;
          v32[3] = explicit + 16;
          v33 = 1;
          v34 = v12 + (v8 << 7);
          v35 = *v17;
          v36 = 1;
          v37 = v14;
          v38 = v18;
          v19 = *(a1 + 32);
          if (!v19)
          {
            sub_261477FC4();
          }

          (*(*v19 + 48))(v19, v32);
          v20 = (*(a1 + 80) + (*(a1 + 48) << 6));
          if (v20[1] == 1 && *v20 == 1)
          {
            atomic_store(1u, (**(a1 + 64) + v3));
            v21 = *(a1 + 88) + (*(a1 + 48) << 6);
            v23 = *(v21 + 8);
            v22 = *(v21 + 16);
            if (v23 >= v22)
            {
              v25 = *v21;
              v26 = v23 - *v21;
              v27 = v26 >> 3;
              v28 = (v26 >> 3) + 1;
              if (v28 >> 61)
              {
                sub_2614709BC();
              }

              v29 = v22 - v25;
              if (v29 >> 2 > v28)
              {
                v28 = v29 >> 2;
              }

              if (v29 >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v28;
              }

              if (v30)
              {
                sub_261470B0C(v30);
              }

              *(8 * v27) = i;
              v24 = 8 * v27 + 8;
              memcpy(0, v25, v26);
              v31 = *v21;
              *v21 = 0;
              *(v21 + 8) = v24;
              *(v21 + 16) = 0;
              if (v31)
              {
                operator delete(v31);
              }
            }

            else
            {
              *v23 = i;
              v24 = (v23 + 1);
            }

            *(v21 + 8) = v24;
          }
        }
      }

      v3 += 64;
    }
  }
}

void sub_261479274(void *a1)
{
  sub_261477D7C(a1 + 8);

  operator delete(a1);
}

__n128 sub_2614792B8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3488;
  sub_261478408(a2 + 8, a1 + 8);
  result = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v6;
  *(a2 + 56) = v5;
  *(a2 + 40) = result;
  return result;
}

void sub_2614793BC(void *a1)
{
  *a1 = &unk_2873D3488;
  sub_261477D7C((a1 + 1));

  JUMPOUT(0x2667045D0);
}

void *sub_261479420(void *a1)
{
  *a1 = &unk_2873D3488;
  sub_261477D7C((a1 + 1));
  return a1;
}

__n128 sub_26147946C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3418;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_261479528(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = 0x6DB6DB6DB6DB6DB7;
  while (2)
  {
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = a2 - v9;
          v11 = ((a2 - v9) >> 3) * v8;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                sub_26147A3B8(v9, (v9 + 56), (a2 - 56));
                return;
              case 4:
                sub_26147A3B8(v9, (v9 + 56), (v9 + 112));
                v94 = *(a2 - 16);
                v95 = *(v9 + 152);
                v88 = v94 == v95;
                v96 = v94 > v95;
                if (v88)
                {
                  v96 = *(a2 - 12) < *(v9 + 156);
                }

                if (v96)
                {
                  v97 = *(v9 + 128);
                  v98 = *(v9 + 112);
                  *(v9 + 112) = *(a2 - 56);
                  *(v9 + 128) = *(a2 - 40);
                  *(a2 - 56) = v98;
                  *(a2 - 40) = v97;
                  v99 = *(v9 + 136);
                  *(v9 + 136) = *(a2 - 32);
                  *(a2 - 32) = v99;
                  *&v98 = *(v9 + 152);
                  *(v9 + 152) = *(a2 - 16);
                  *(a2 - 16) = v98;
                  v100 = *(v9 + 160);
                  *(v9 + 160) = *(a2 - 8);
                  *(a2 - 8) = v100;
                  LODWORD(v100) = *(v9 + 152);
                  v101 = *(v9 + 96);
                  v88 = v100 == v101;
                  v102 = v100 > v101;
                  if (v88)
                  {
                    v102 = *(v9 + 156) < *(v9 + 100);
                  }

                  if (v102)
                  {
                    v103 = *(v9 + 72);
                    v104 = *(v9 + 56);
                    *(v9 + 56) = *(v9 + 112);
                    *(v9 + 72) = *(v9 + 128);
                    *(v9 + 112) = v104;
                    *(v9 + 128) = v103;
                    v105 = *(v9 + 80);
                    *(v9 + 80) = *(v9 + 136);
                    *(v9 + 136) = v105;
                    v106 = *(v9 + 152);
                    *&v104 = *(v9 + 96);
                    *(v9 + 96) = v106;
                    *(v9 + 152) = v104;
                    v107 = *(v9 + 104);
                    *(v9 + 104) = *(v9 + 160);
                    *(v9 + 160) = v107;
                    v108 = *(v9 + 40);
                    v109 = SHIDWORD(v106) < *(v9 + 44);
                    if (v108 != v106)
                    {
                      v109 = v106 > v108;
                    }

                    if (v109)
                    {

                      sub_26147A35C(v9, (v9 + 56));
                    }
                  }
                }

                return;
              case 5:

                sub_26147A5D4(v9, v9 + 56, v9 + 112, (v9 + 168), (a2 - 56));
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
              v86 = *(a2 - 16);
              v87 = *(v9 + 40);
              v88 = v86 == v87;
              v89 = v86 > v87;
              if (v88)
              {
                v89 = *(a2 - 12) < *(v9 + 44);
              }

              if (v89)
              {
                v90 = *(v9 + 16);
                v91 = *v9;
                *v9 = *(a2 - 56);
                *(v9 + 16) = *(a2 - 40);
                *(a2 - 56) = v91;
                *(a2 - 40) = v90;
                v92 = *(v9 + 24);
                *(v9 + 24) = *(a2 - 32);
                *(a2 - 32) = v92;
                *&v91 = *(v9 + 40);
                *(v9 + 40) = *(a2 - 16);
                *(a2 - 16) = v91;
                v93 = *(v9 + 48);
                *(v9 + 48) = *(a2 - 8);
                *(a2 - 8) = v93;
              }

              return;
            }
          }

          if (v10 <= 1343)
          {
            v110 = (v9 + 56);
            v112 = v9 == a2 || v110 == a2;
            if (a4)
            {
              if (!v112)
              {
                v113 = 0;
                v114 = v9;
                do
                {
                  v115 = v110;
                  v116 = *(v114 + 24);
                  v117 = *(v114 + 25);
                  v118 = *(v114 + 10);
                  v88 = v116 == v118;
                  v119 = v116 > v118;
                  if (v88)
                  {
                    v119 = v117 < *(v114 + 11);
                  }

                  if (v119)
                  {
                    v120 = *v115;
                    v121 = *(v114 + 9);
                    v207 = v114[5];
                    v122 = *(v114 + 13);
                    v123 = v113;
                    while (1)
                    {
                      v124 = v123;
                      v125 = v9 + v123;
                      *(v125 + 56) = *v125;
                      *(v125 + 72) = *(v125 + 16);
                      *(v125 + 80) = *(v125 + 24);
                      *(v125 + 96) = *(v125 + 40);
                      *(v125 + 104) = *(v125 + 48);
                      if (!v124)
                      {
                        break;
                      }

                      v126 = *(v125 - 16);
                      v127 = v117 < *(v125 - 12);
                      v88 = v116 == v126;
                      v128 = v116 > v126;
                      if (v88)
                      {
                        v128 = v127;
                      }

                      v123 = v124 - 56;
                      if (!v128)
                      {
                        v129 = v9 + v124;
                        v130 = (v9 + v124 + 24);
                        goto LABEL_126;
                      }
                    }

                    v130 = (v125 + 24);
                    v129 = v9;
LABEL_126:
                    *v129 = v120;
                    *(v129 + 16) = v121;
                    *v130 = v207;
                    *(v129 + 40) = v116;
                    *(v129 + 44) = v117;
                    *(v129 + 48) = v122;
                  }

                  v110 = v115 + 56;
                  v113 += 56;
                  v114 = v115;
                }

                while ((v115 + 56) != a2);
              }
            }

            else if (!v112)
            {
              v190 = (v9 + 104);
              do
              {
                v191 = v110;
                v192 = *(a1 + 96);
                v193 = *(a1 + 100);
                v194 = *(a1 + 40);
                v88 = v192 == v194;
                v195 = v192 > v194;
                if (v88)
                {
                  v195 = v193 < *(a1 + 44);
                }

                if (v195)
                {
                  v196 = *v191;
                  v197 = *(a1 + 72);
                  v210 = *(a1 + 80);
                  v198 = *(a1 + 104);
                  v199 = v190;
                  do
                  {
                    v200 = v199;
                    *(v199 - 3) = *(v199 - 13);
                    *(v199 - 4) = *(v199 - 11);
                    *(v199 - 3) = *(v199 - 5);
                    *(v199 - 1) = *(v199 - 8);
                    v201 = *(v199 - 7);
                    v199 -= 7;
                    *v200 = v201;
                    v202 = *(v200 - 30);
                    v88 = v192 == v202;
                    v203 = v192 > v202;
                    if (v88)
                    {
                      v203 = v193 < *(v200 - 29);
                    }
                  }

                  while (v203);
                  *(v199 - 3) = v196;
                  *(v199 - 4) = v197;
                  *(v200 - 5) = v210;
                  *(v199 - 2) = v192;
                  *(v199 - 1) = v193;
                  *v199 = v198;
                }

                v110 = v191 + 56;
                v190 += 7;
                a1 = v191;
              }

              while ((v191 + 56) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v131 = (v11 - 2) >> 1;
              v132 = v131;
              do
              {
                v133 = v132;
                if (v131 >= v132)
                {
                  v134 = (2 * v132) | 1;
                  v135 = v9 + 56 * v134;
                  if (2 * v133 + 2 < v11)
                  {
                    v136 = *(v135 + 40);
                    v137 = *(v135 + 96);
                    v88 = v136 == v137;
                    v138 = v136 > v137;
                    if (v88)
                    {
                      v138 = *(v135 + 44) < *(v135 + 100);
                    }

                    v139 = !v138;
                    if (v138)
                    {
                      v140 = 56;
                    }

                    else
                    {
                      v140 = 0;
                    }

                    v135 += v140;
                    if (!v139)
                    {
                      v134 = 2 * v133 + 2;
                    }
                  }

                  v141 = v9 + 56 * v133;
                  v142 = *(v135 + 40);
                  v143 = *(v141 + 40);
                  v144 = *(v141 + 44);
                  v88 = v142 == v143;
                  v145 = v142 > v143;
                  if (v88)
                  {
                    v145 = *(v135 + 44) < v144;
                  }

                  if (!v145)
                  {
                    v146 = *v141;
                    v147 = *(v141 + 16);
                    v208 = *(v141 + 24);
                    v148 = *(v141 + 48);
                    do
                    {
                      v149 = v141;
                      v141 = v135;
                      *v149 = *v135;
                      *(v149 + 16) = *(v135 + 16);
                      *(v149 + 24) = *(v135 + 24);
                      *(v149 + 40) = *(v135 + 40);
                      *(v149 + 48) = *(v135 + 48);
                      if (v131 < v134)
                      {
                        break;
                      }

                      v150 = (2 * v134) | 1;
                      v135 = v9 + 56 * v150;
                      v151 = 2 * v134 + 2;
                      if (v151 < v11)
                      {
                        v152 = *(v135 + 40);
                        v153 = *(v135 + 96);
                        v88 = v152 == v153;
                        v154 = v152 > v153;
                        if (v88)
                        {
                          v154 = *(v135 + 44) < *(v135 + 100);
                        }

                        v155 = !v154;
                        if (v154)
                        {
                          v156 = 56;
                        }

                        else
                        {
                          v156 = 0;
                        }

                        v135 += v156;
                        if (!v155)
                        {
                          v150 = v151;
                        }
                      }

                      v157 = *(v135 + 40);
                      v158 = *(v135 + 44) < v144;
                      v88 = v157 == v143;
                      v159 = v157 > v143;
                      if (!v88)
                      {
                        v158 = v159;
                      }

                      v134 = v150;
                    }

                    while (!v158);
                    *v141 = v146;
                    *(v141 + 16) = v147;
                    *(v141 + 24) = v208;
                    *(v141 + 40) = v143;
                    *(v141 + 44) = v144;
                    *(v141 + 48) = v148;
                  }
                }

                v132 = v133 - 1;
              }

              while (v133);
              v160 = (v10 >> 3) * v8;
              do
              {
                v161 = 0;
                v162 = *v9;
                v163 = *(v9 + 8);
                v164 = *(v9 + 16);
                v204 = *(v9 + 24);
                v165 = *(v9 + 40);
                v166 = *(v9 + 44);
                v167 = *(v9 + 48);
                v168 = v9;
                do
                {
                  v169 = (v168 + 56 * v161);
                  v170 = v169 + 14;
                  v171 = (2 * v161) | 1;
                  v161 = 2 * v161 + 2;
                  if (v161 >= v160)
                  {
                    v161 = v171;
                  }

                  else
                  {
                    v172 = v169[24];
                    v173 = v169[38];
                    v88 = v172 == v173;
                    v174 = v172 > v173;
                    if (v88)
                    {
                      v174 = v169[25] < v169[39];
                    }

                    v175 = v169 + 28;
                    if (v174)
                    {
                      v170 = v175;
                    }

                    else
                    {
                      v161 = v171;
                    }
                  }

                  *v168 = *v170;
                  *(v168 + 16) = *(v170 + 2);
                  *(v168 + 24) = *(v170 + 6);
                  *(v168 + 40) = *(v170 + 5);
                  *(v168 + 48) = *(v170 + 6);
                  v168 = v170;
                }

                while (v161 <= (v160 - 2) / 2);
                if (v170 == (a2 - 56))
                {
                  *v170 = v162;
                  *(v170 + 1) = v163;
                  *(v170 + 2) = v164;
                  *(v170 + 6) = v204;
                  v170[10] = v165;
                  v170[11] = v166;
                  *(v170 + 6) = v167;
                }

                else
                {
                  *v170 = *(a2 - 56);
                  *(v170 + 2) = *(a2 - 40);
                  *(v170 + 6) = *(a2 - 32);
                  *(v170 + 5) = *(a2 - 16);
                  *(v170 + 6) = *(a2 - 8);
                  *(a2 - 56) = v162;
                  *(a2 - 48) = v163;
                  *(a2 - 40) = v164;
                  *(a2 - 32) = v204;
                  *(a2 - 16) = v165;
                  *(a2 - 12) = v166;
                  *(a2 - 8) = v167;
                  v176 = v170 - v9 + 56;
                  if (v176 >= 57)
                  {
                    v177 = ((v176 >> 3) * v8 - 2) >> 1;
                    v178 = v9 + 56 * v177;
                    v179 = *(v178 + 40);
                    v180 = v170[10];
                    v181 = v170[11];
                    v88 = v179 == v180;
                    v182 = v179 > v180;
                    if (v88)
                    {
                      v182 = *(v178 + 44) < v181;
                    }

                    if (v182)
                    {
                      v183 = *v170;
                      v184 = *(v170 + 2);
                      v209 = *(v170 + 6);
                      v185 = *(v170 + 6);
                      do
                      {
                        v186 = v170;
                        v170 = v178;
                        *v186 = *v178;
                        *(v186 + 2) = *(v178 + 16);
                        *(v186 + 6) = *(v178 + 24);
                        *(v186 + 5) = *(v178 + 40);
                        *(v186 + 6) = *(v178 + 48);
                        if (!v177)
                        {
                          break;
                        }

                        v177 = (v177 - 1) >> 1;
                        v178 = v9 + 56 * v177;
                        v187 = *(v178 + 40);
                        v88 = v187 == v180;
                        v188 = v187 > v180;
                        if (v88)
                        {
                          v188 = *(v178 + 44) < v181;
                        }
                      }

                      while (v188);
                      *v170 = v183;
                      *(v170 + 2) = v184;
                      *(v170 + 6) = v209;
                      v170[10] = v180;
                      v170[11] = v181;
                      *(v170 + 6) = v185;
                    }
                  }
                }

                a2 -= 56;
              }

              while (v160-- > 2);
            }

            return;
          }

          v12 = v11 >> 1;
          v13 = v9 + 56 * (v11 >> 1);
          if (v10 < 0x1C01)
          {
            sub_26147A3B8(v13, a1, (a2 - 56));
          }

          else
          {
            sub_26147A3B8(a1, v13, (a2 - 56));
            v14 = v8;
            v15 = 56 * v12;
            v16 = (56 * v12 + a1 - 56);
            sub_26147A3B8((a1 + 56), v16, (a2 - 112));
            sub_26147A3B8((a1 + 112), (a1 + 56 + v15), (a2 - 168));
            v17 = (a1 + 56 + v15);
            v8 = v14;
            sub_26147A3B8(v16, v13, v17);
            v18 = *(a1 + 16);
            v19 = *a1;
            *a1 = *v13;
            *(a1 + 16) = *(v13 + 16);
            *v13 = v19;
            *(v13 + 16) = v18;
            v20 = *(a1 + 24);
            *(a1 + 24) = *(v13 + 24);
            *(v13 + 24) = v20;
            *&v19 = *(a1 + 40);
            *(a1 + 40) = *(v13 + 40);
            *(v13 + 40) = v19;
            v21 = *(a1 + 48);
            *(a1 + 48) = *(v13 + 48);
            *(v13 + 48) = v21;
          }

          --a3;
          if (a4)
          {
            v22 = *(a1 + 40);
            v23 = *(a1 + 44);
            break;
          }

          v24 = *(a1 - 16);
          v22 = *(a1 + 40);
          v23 = *(a1 + 44);
          v88 = v24 == v22;
          v25 = v24 > v22;
          if (v88)
          {
            v25 = *(a1 - 12) < v23;
          }

          if (v25)
          {
            break;
          }

          v56 = *a1;
          v57 = *(a1 + 16);
          v206 = *(a1 + 24);
          v58 = *(a2 - 16);
          v88 = v22 == v58;
          v59 = v22 > v58;
          if (v88)
          {
            v59 = v23 < *(a2 - 12);
          }

          if (v59)
          {
            v60 = a1;
            do
            {
              v9 = v60 + 56;
              v61 = *(v60 + 96);
              v62 = v23 < *(v60 + 100);
              v88 = v22 == v61;
              v63 = v22 > v61;
              if (v88)
              {
                v63 = v62;
              }

              v60 = v9;
            }

            while (!v63);
          }

          else
          {
            v64 = a1 + 56;
            do
            {
              v9 = v64;
              if (v64 >= a2)
              {
                break;
              }

              v65 = *(v64 + 40);
              v66 = v23 < *(v9 + 44);
              v88 = v22 == v65;
              v67 = v22 > v65;
              if (!v88)
              {
                v66 = v67;
              }

              v64 = v9 + 56;
            }

            while (!v66);
          }

          v68 = a2;
          if (v9 < a2)
          {
            v69 = a2;
            do
            {
              v68 = v69 - 56;
              v70 = *(v69 - 16);
              v71 = v23 < *(v69 - 12);
              v88 = v22 == v70;
              v72 = v22 > v70;
              if (v88)
              {
                v72 = v71;
              }

              v69 = v68;
            }

            while (v72);
          }

          v73 = *(a1 + 48);
          while (v9 < v68)
          {
            v74 = *(v9 + 16);
            v75 = *v9;
            *v9 = *v68;
            *(v9 + 16) = *(v68 + 16);
            *v68 = v75;
            *(v68 + 16) = v74;
            v76 = *(v9 + 24);
            *(v9 + 24) = *(v68 + 24);
            *(v68 + 24) = v76;
            *&v75 = *(v9 + 40);
            *(v9 + 40) = *(v68 + 40);
            *(v68 + 40) = v75;
            v77 = *(v9 + 48);
            *(v9 + 48) = *(v68 + 48);
            *(v68 + 48) = v77;
            do
            {
              v78 = *(v9 + 96);
              v79 = *(v9 + 100);
              v9 += 56;
              v80 = v23 < v79;
              v88 = v22 == v78;
              v81 = v22 > v78;
              if (v88)
              {
                v81 = v80;
              }
            }

            while (!v81);
            do
            {
              v82 = *(v68 - 16);
              v83 = *(v68 - 12);
              v68 -= 56;
              v84 = v23 < v83;
              v88 = v22 == v82;
              v85 = v22 > v82;
              if (v88)
              {
                v85 = v84;
              }
            }

            while (v85);
          }

          if (v9 - 56 != a1)
          {
            *a1 = *(v9 - 56);
            *(a1 + 16) = *(v9 - 40);
            *(a1 + 24) = *(v9 - 32);
            *(a1 + 40) = *(v9 - 16);
            *(a1 + 48) = *(v9 - 8);
          }

          a4 = 0;
          *(v9 - 56) = v56;
          *(v9 - 40) = v57;
          *(v9 - 32) = v206;
          *(v9 - 16) = v22;
          *(v9 - 12) = v23;
          *(v9 - 8) = v73;
        }

        v26 = *a1;
        v27 = *(a1 + 16);
        v205 = *(a1 + 24);
        v28 = *(a1 + 48);
        v29 = a1;
        do
        {
          v30 = v29;
          v29 += 56;
          v31 = *(v30 + 96);
          v88 = v31 == v22;
          v32 = v31 > v22;
          if (v88)
          {
            v32 = *(v30 + 100) < v23;
          }
        }

        while (v32);
        v33 = a2;
        if (v30 == a1)
        {
          v38 = a2;
          while (v29 < v38)
          {
            v34 = v38 - 56;
            v39 = *(v38 - 16);
            v40 = *(v38 - 12) < v23;
            v88 = v39 == v22;
            v41 = v39 > v22;
            if (v88)
            {
              v41 = v40;
            }

            v38 = v34;
            if (v41)
            {
              goto LABEL_36;
            }
          }

          v34 = v38;
        }

        else
        {
          do
          {
            v34 = v33 - 56;
            v35 = *(v33 - 16);
            v36 = *(v33 - 12) < v23;
            v88 = v35 == v22;
            v37 = v35 > v22;
            if (v88)
            {
              v37 = v36;
            }

            v33 = v34;
          }

          while (!v37);
        }

LABEL_36:
        v9 = v29;
        if (v29 < v34)
        {
          v42 = v34;
          do
          {
            v43 = *(v9 + 16);
            v44 = *v9;
            *v9 = *v42;
            *(v9 + 16) = *(v42 + 16);
            *v42 = v44;
            *(v42 + 16) = v43;
            v45 = *(v9 + 24);
            *(v9 + 24) = *(v42 + 24);
            *(v42 + 24) = v45;
            *&v44 = *(v9 + 40);
            *(v9 + 40) = *(v42 + 40);
            *(v42 + 40) = v44;
            v46 = *(v9 + 48);
            *(v9 + 48) = *(v42 + 48);
            *(v42 + 48) = v46;
            do
            {
              v47 = *(v9 + 96);
              v48 = *(v9 + 100);
              v9 += 56;
              v49 = v48 < v23;
              v88 = v47 == v22;
              v50 = v47 > v22;
              if (v88)
              {
                v50 = v49;
              }
            }

            while (v50);
            do
            {
              v51 = *(v42 - 16);
              v52 = *(v42 - 12);
              v42 -= 56;
              v53 = v52 < v23;
              v88 = v51 == v22;
              v54 = v51 > v22;
              if (v88)
              {
                v54 = v53;
              }
            }

            while (!v54);
          }

          while (v9 < v42);
        }

        if (v9 - 56 != a1)
        {
          *a1 = *(v9 - 56);
          *(a1 + 16) = *(v9 - 40);
          *(a1 + 24) = *(v9 - 32);
          *(a1 + 40) = *(v9 - 16);
          *(a1 + 48) = *(v9 - 8);
        }

        *(v9 - 56) = v26;
        *(v9 - 40) = v27;
        *(v9 - 32) = v205;
        *(v9 - 16) = v22;
        *(v9 - 12) = v23;
        *(v9 - 8) = v28;
        if (v29 >= v34)
        {
          break;
        }

LABEL_51:
        sub_261479528(a1, v9 - 56, a3, a4 & 1);
        a4 = 0;
      }

      v55 = sub_26147A94C(a1, v9 - 56);
      if (sub_26147A94C(v9, a2))
      {
        break;
      }

      if (!v55)
      {
        goto LABEL_51;
      }
    }

    a2 = v9 - 56;
    if (!v55)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_26147A244(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "NSt3__16__bindIRKMN3mrc7DecoderEKFvRKNS2_4PassEEJNS_17reference_wrapperIKS2_EERKNS_12placeholders4__phILi1EEEEEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26147A280(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 sub_26147A2B0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D1118;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double sub_26147A35C(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *a1;
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a2 = v3;
  *(a2 + 2) = v2;
  v4 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  result = *(a2 + 5);
  *&v3 = *(a1 + 5);
  *(a1 + 5) = result;
  *(a2 + 5) = v3;
  v6 = *(a1 + 6);
  *(a1 + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  return result;
}

__int128 *sub_26147A3B8(__int128 *result, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 10);
  v4 = *(a2 + 11);
  v5 = *(result + 10);
  v6 = v3 == v5;
  v7 = v3 > v5;
  if (v6)
  {
    v7 = v4 < *(result + 11);
  }

  v8 = *(a3 + 10);
  v9 = *(a3 + 11) < v4;
  v6 = v8 == v3;
  v10 = v8 > v3;
  if (v6)
  {
    v10 = v9;
  }

  if (v7)
  {
    v11 = *(result + 2);
    v12 = *result;
    if (v10)
    {
      v13 = (result + 3);
      *result = *a3;
      *(result + 2) = *(a3 + 2);
      *a3 = v12;
      *(a3 + 2) = v11;
      v14 = *(result + 24);
      *(result + 24) = *(a3 + 24);
      *(a3 + 24) = v14;
      v15 = *(result + 5);
      *(result + 5) = *(a3 + 5);
LABEL_17:
      *(a3 + 5) = v15;
      v20 = (a3 + 3);
      goto LABEL_18;
    }

    *result = *a2;
    *(result + 2) = *(a2 + 2);
    *a2 = v12;
    *(a2 + 2) = v11;
    v26 = *(result + 24);
    *(result + 24) = *(a2 + 24);
    *(a2 + 24) = v26;
    v27 = *(result + 5);
    *(result + 5) = *(a2 + 5);
    *(a2 + 5) = v27;
    v13 = (a2 + 3);
    v28 = *(result + 6);
    *(result + 6) = *(a2 + 6);
    *(a2 + 6) = v28;
    LODWORD(v28) = *(a3 + 10);
    v29 = v28 > v27;
    if (v28 == v27)
    {
      v29 = *(a3 + 11) < *(a2 + 11);
    }

    if (v29)
    {
      v30 = *(a2 + 2);
      v31 = *a2;
      *a2 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *a3 = v31;
      *(a3 + 2) = v30;
      v32 = *(a2 + 24);
      *(a2 + 24) = *(a3 + 24);
      *(a3 + 24) = v32;
      v15 = *(a2 + 5);
      *(a2 + 5) = *(a3 + 5);
      goto LABEL_17;
    }
  }

  else if (v10)
  {
    v16 = *(a2 + 2);
    v17 = *a2;
    *a2 = *a3;
    *(a2 + 2) = *(a3 + 2);
    *a3 = v17;
    *(a3 + 2) = v16;
    v18 = *(a2 + 24);
    *(a2 + 24) = *(a3 + 24);
    *(a3 + 24) = v18;
    *&v17 = *(a2 + 5);
    *(a2 + 5) = *(a3 + 5);
    *(a3 + 5) = v17;
    v20 = (a2 + 3);
    v19 = *(a2 + 6);
    *(a2 + 6) = *(a3 + 6);
    *(a3 + 6) = v19;
    LODWORD(v19) = *(a2 + 10);
    v21 = *(result + 10);
    v6 = v19 == v21;
    v22 = v19 > v21;
    if (v6)
    {
      v22 = *(a2 + 11) < *(result + 11);
    }

    if (v22)
    {
      v23 = *(result + 2);
      v24 = *result;
      *result = *a2;
      *(result + 2) = *(a2 + 2);
      *a2 = v24;
      *(a2 + 2) = v23;
      v25 = *(result + 24);
      *(result + 24) = *(a2 + 24);
      *(a2 + 24) = v25;
      *&v24 = *(result + 5);
      *(result + 5) = *(a2 + 5);
      *(a2 + 5) = v24;
      v13 = (result + 3);
LABEL_18:
      v33 = *v13;
      *v13 = *v20;
      *v20 = v33;
    }
  }

  return result;
}

double sub_26147A5D4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  sub_26147A3B8(a1, a2, a3);
  v11 = *(a4 + 10);
  v12 = *(a3 + 40);
  v13 = v11 == v12;
  v14 = v11 > v12;
  if (v13)
  {
    v14 = *(a4 + 11) < *(a3 + 44);
  }

  if (v14)
  {
    v15 = *(a3 + 16);
    v16 = *a3;
    *a3 = *a4;
    *(a3 + 16) = *(a4 + 2);
    *a4 = v16;
    *(a4 + 2) = v15;
    v17 = *(a3 + 24);
    *(a3 + 24) = *(a4 + 24);
    *(a4 + 24) = v17;
    result = *(a4 + 5);
    *&v16 = *(a3 + 40);
    *(a3 + 40) = result;
    *(a4 + 5) = v16;
    v18 = *(a3 + 48);
    *(a3 + 48) = *(a4 + 6);
    *(a4 + 6) = v18;
    LODWORD(v18) = *(a3 + 40);
    v19 = *(a2 + 40);
    v13 = v18 == v19;
    v20 = v18 > v19;
    if (v13)
    {
      v20 = *(a3 + 44) < *(a2 + 44);
    }

    if (v20)
    {
      v21 = *(a2 + 16);
      v22 = *a2;
      *a2 = *a3;
      *(a2 + 16) = *(a3 + 16);
      *a3 = v22;
      *(a3 + 16) = v21;
      v23 = *(a2 + 24);
      *(a2 + 24) = *(a3 + 24);
      *(a3 + 24) = v23;
      result = *(a3 + 40);
      *&v22 = *(a2 + 40);
      *(a2 + 40) = result;
      *(a3 + 40) = v22;
      v24 = *(a2 + 48);
      *(a2 + 48) = *(a3 + 48);
      *(a3 + 48) = v24;
      LODWORD(v24) = *(a2 + 40);
      v25 = *(a1 + 40);
      v13 = v24 == v25;
      v26 = v24 > v25;
      if (v13)
      {
        v26 = *(a2 + 44) < *(a1 + 44);
      }

      if (v26)
      {
        v27 = *(a1 + 16);
        v28 = *a1;
        *a1 = *a2;
        *(a1 + 16) = *(a2 + 16);
        *a2 = v28;
        *(a2 + 16) = v27;
        v29 = *(a1 + 24);
        *(a1 + 24) = *(a2 + 24);
        *(a2 + 24) = v29;
        result = *(a2 + 40);
        *&v28 = *(a1 + 40);
        *(a1 + 40) = result;
        *(a2 + 40) = v28;
        v30 = *(a1 + 48);
        *(a1 + 48) = *(a2 + 48);
        *(a2 + 48) = v30;
      }
    }
  }

  v31 = *(a5 + 10);
  v32 = *(a4 + 10);
  v13 = v31 == v32;
  v33 = v31 > v32;
  if (v13)
  {
    v33 = *(a5 + 11) < *(a4 + 11);
  }

  if (v33)
  {
    v34 = *(a4 + 2);
    v35 = *a4;
    *a4 = *a5;
    *(a4 + 2) = *(a5 + 2);
    *a5 = v35;
    *(a5 + 2) = v34;
    v36 = *(a4 + 24);
    *(a4 + 24) = *(a5 + 24);
    *(a5 + 24) = v36;
    result = *(a5 + 5);
    *&v35 = *(a4 + 5);
    *(a4 + 5) = result;
    *(a5 + 5) = v35;
    v37 = *(a4 + 6);
    *(a4 + 6) = *(a5 + 6);
    *(a5 + 6) = v37;
    LODWORD(v37) = *(a4 + 10);
    v38 = *(a3 + 40);
    v13 = v37 == v38;
    v39 = v37 > v38;
    if (v13)
    {
      v39 = *(a4 + 11) < *(a3 + 44);
    }

    if (v39)
    {
      v40 = *(a3 + 16);
      v41 = *a3;
      *a3 = *a4;
      *(a3 + 16) = *(a4 + 2);
      *a4 = v41;
      *(a4 + 2) = v40;
      v42 = *(a3 + 24);
      *(a3 + 24) = *(a4 + 24);
      *(a4 + 24) = v42;
      result = *(a4 + 5);
      *&v41 = *(a3 + 40);
      *(a3 + 40) = result;
      *(a4 + 5) = v41;
      v43 = *(a3 + 48);
      *(a3 + 48) = *(a4 + 6);
      *(a4 + 6) = v43;
      LODWORD(v43) = *(a3 + 40);
      v44 = *(a2 + 40);
      v13 = v43 == v44;
      v45 = v43 > v44;
      if (v13)
      {
        v45 = *(a3 + 44) < *(a2 + 44);
      }

      if (v45)
      {
        v46 = *(a2 + 16);
        v47 = *a2;
        *a2 = *a3;
        *(a2 + 16) = *(a3 + 16);
        *a3 = v47;
        *(a3 + 16) = v46;
        v48 = *(a2 + 24);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 24) = v48;
        result = *(a3 + 40);
        *&v47 = *(a2 + 40);
        *(a2 + 40) = result;
        *(a3 + 40) = v47;
        v49 = *(a2 + 48);
        *(a2 + 48) = *(a3 + 48);
        *(a3 + 48) = v49;
        LODWORD(v49) = *(a2 + 40);
        v50 = *(a1 + 40);
        v13 = v49 == v50;
        v51 = v49 > v50;
        if (v13)
        {
          v51 = *(a2 + 44) < *(a1 + 44);
        }

        if (v51)
        {
          v52 = *(a1 + 16);
          v53 = *a1;
          *a1 = *a2;
          *(a1 + 16) = *(a2 + 16);
          *a2 = v53;
          *(a2 + 16) = v52;
          v54 = *(a1 + 24);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 24) = v54;
          result = *(a2 + 40);
          *&v53 = *(a1 + 40);
          *(a1 + 40) = result;
          *(a2 + 40) = v53;
          v55 = *(a1 + 48);
          *(a1 + 48) = *(a2 + 48);
          *(a2 + 48) = v55;
        }
      }
    }
  }

  return result;
}

BOOL sub_26147A94C(uint64_t a1, uint64_t a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_26147A3B8(a1, (a1 + 56), (a2 - 56));
        break;
      case 4:
        sub_26147A3B8(a1, (a1 + 56), (a1 + 112));
        v32 = *(a2 - 16);
        v33 = *(a1 + 152);
        v7 = v32 == v33;
        v34 = v32 > v33;
        if (v7)
        {
          v34 = *(a2 - 12) < *(a1 + 156);
        }

        if (v34)
        {
          v35 = *(a1 + 128);
          v36 = *(a1 + 112);
          *(a1 + 112) = *(a2 - 56);
          *(a1 + 128) = *(a2 - 40);
          *(a2 - 56) = v36;
          *(a2 - 40) = v35;
          v37 = *(a1 + 136);
          *(a1 + 136) = *(a2 - 32);
          *(a2 - 32) = v37;
          *&v36 = *(a1 + 152);
          *(a1 + 152) = *(a2 - 16);
          *(a2 - 16) = v36;
          v38 = *(a1 + 160);
          *(a1 + 160) = *(a2 - 8);
          *(a2 - 8) = v38;
          LODWORD(v38) = *(a1 + 152);
          v39 = *(a1 + 96);
          v7 = v38 == v39;
          v40 = v38 > v39;
          if (v7)
          {
            v40 = *(a1 + 156) < *(a1 + 100);
          }

          if (v40)
          {
            v41 = *(a1 + 72);
            v42 = *(a1 + 56);
            *(a1 + 56) = *(a1 + 112);
            *(a1 + 72) = *(a1 + 128);
            *(a1 + 112) = v42;
            *(a1 + 128) = v41;
            v43 = *(a1 + 80);
            *(a1 + 80) = *(a1 + 136);
            *(a1 + 136) = v43;
            v44 = *(a1 + 152);
            *&v42 = *(a1 + 96);
            *(a1 + 96) = v44;
            *(a1 + 152) = v42;
            v45 = *(a1 + 104);
            *(a1 + 104) = *(a1 + 160);
            *(a1 + 160) = v45;
            v46 = *(a1 + 40);
            v47 = SHIDWORD(v44) < *(a1 + 44);
            if (v46 != v44)
            {
              v47 = v44 > v46;
            }

            if (v47)
            {
              sub_26147A35C(a1, (a1 + 56));
            }
          }
        }

        return 1;
      case 5:
        sub_26147A5D4(a1, a1 + 56, a1 + 112, (a1 + 168), (a2 - 56));
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 16);
    v6 = *(a1 + 40);
    v7 = v5 == v6;
    v8 = v5 > v6;
    if (v7)
    {
      v8 = *(a2 - 12) < *(a1 + 44);
    }

    if (v8)
    {
      v9 = *(a1 + 16);
      v10 = *a1;
      *a1 = *(a2 - 56);
      *(a1 + 16) = *(a2 - 40);
      *(a2 - 56) = v10;
      *(a2 - 40) = v9;
      v11 = *(a1 + 24);
      *(a1 + 24) = *(a2 - 32);
      *(a2 - 32) = v11;
      *&v10 = *(a1 + 40);
      *(a1 + 40) = *(a2 - 16);
      *(a2 - 16) = v10;
      v12 = *(a1 + 48);
      *(a1 + 48) = *(a2 - 8);
      *(a2 - 8) = v12;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 112;
  sub_26147A3B8(a1, (a1 + 56), (a1 + 112));
  v14 = a1 + 168;
  if (a1 + 168 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 40);
    v18 = *(v14 + 44);
    v19 = *(v13 + 40);
    v7 = v17 == v19;
    v20 = v17 > v19;
    if (v7)
    {
      v20 = v18 < *(v13 + 44);
    }

    if (v20)
    {
      v21 = *v14;
      v22 = *(v14 + 16);
      v49 = *(v14 + 24);
      v23 = *(v14 + 48);
      v24 = v15;
      while (1)
      {
        v25 = v24;
        v26 = a1 + v24;
        *(v26 + 168) = *(v26 + 112);
        *(v26 + 184) = *(v26 + 128);
        *(v26 + 192) = *(v26 + 136);
        *(v26 + 208) = *(v26 + 152);
        *(v26 + 216) = *(v26 + 160);
        if (v25 == -112)
        {
          break;
        }

        v27 = *(v26 + 96);
        v28 = v18 < *(v26 + 100);
        v7 = v17 == v27;
        v29 = v17 > v27;
        if (v7)
        {
          v29 = v28;
        }

        v24 = v25 - 56;
        if (!v29)
        {
          v30 = a1 + v24 + 168;
          v31 = (a1 + v25 + 136);
          goto LABEL_25;
        }
      }

      v31 = (v26 + 136);
      v30 = a1;
LABEL_25:
      *v30 = v21;
      *(v30 + 16) = v22;
      *v31 = v49;
      *(v30 + 40) = v17;
      *(v30 + 44) = v18;
      *(v30 + 48) = v23;
      if (++v16 == 8)
      {
        return v14 + 56 == a2;
      }
    }

    v13 = v14;
    v15 += 56;
    v14 += 56;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_26147ACD8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc7Decoder6decodeERKNS_2CFINS_6SampleENS_2cf6TraitsIS2_NS3_13PersonalitiesIS2_XtlNS_12fixed_stringILm9EEEtlNS_18basic_fixed_stringIcLm9ENSt3__111char_traitsIcEEEEtlA10_cLc77ELc82ELc67ELc83ELc97ELc109ELc112ELc108ELc101EEEEEJEEEEEEERKNS9_8optionalINS9_4spanIKNS_5CFRefIPKNS1_INS_6RegionENS4_ISM_NS5_ISM_XtlS7_tlSC_tlSD_Lc77ELc82ELc67ELc82ELc101ELc103ELc105ELc111ELc110EEEEEJEEEEEEEEELm18446744073709551615EEEEERNSJ_INS_5ErrorEEEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26147AD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_26147792C(v10, a2);
  v8 = *a6;
  sub_26147792C(v11, v10);
  v9 = *(a1 + 8);
  v12 = v8;
  v13 = v9;
  v14 = 0;
  operator new();
}

void sub_26147AE10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_261477CFC(v2 - 72);
  sub_261477D7C(va1);
  sub_261477D7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26147AE48(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZZNK3mrc7Decoder6decodeERKNS_2CFINS_6SampleENS_2cf6TraitsIS2_NS3_13PersonalitiesIS2_XtlNS_12fixed_stringILm9EEEtlNS_18basic_fixed_stringIcLm9ENSt3__111char_traitsIcEEEEtlA10_cLc77ELc82ELc67ELc83ELc97ELc109ELc112ELc108ELc101EEEEEJEEEEEEERKNS9_8optionalINS9_4spanIKNS_5CFRefIPKNS1_INS_6RegionENS4_ISM_NS5_ISM_XtlS7_tlSC_tlSD_Lc77ELc82ELc67ELc82ELc101ELc103ELc105ELc111ELc110EEEEEJEEEEEEEEELm18446744073709551615EEEEERNSJ_INS_5ErrorEEEENK3$_2clINS9_8functionIFvRKNS0_4PassEEEENS9_17basic_string_viewIcSB_EEiNS_9symbology12ImplCategoryEmEEDaT_RKT0_T1_T2_T3_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26147AE84(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = (*v3 + (v2 << 6));
  if (!atomic_load_explicit(v4, memory_order_acquire))
  {
    v16[0] = sub_2614767A0();
    v5 = atomic_exchange(v4, atomic_exchange(v16, 0));
    if (v5)
    {
      CFRelease(v5);
    }

    sub_2614775F4(v16);
  }

  v6 = v3[1];
  v7 = v3[2];
  explicit = atomic_load_explicit(v4, memory_order_acquire);
  v9 = v3[3] + (v2 << 6);
  v10 = *(v6 + 8);
  v11 = *v6 + 16;
  v12 = *(v6 + 16);
  v13 = **(v6 + 24);
  v16[0] = explicit + 16;
  v16[1] = v11;
  v16[2] = v10;
  v17 = 0;
  v18 = 0;
  v19 = v7 + (v2 << 7);
  v20 = *v12;
  v21 = 1;
  v22 = v9;
  v23 = v13;
  v14 = a1[4];
  if (!v14)
  {
    sub_261477FC4();
  }

  return (*(*v14 + 48))(v14, v16);
}

void sub_26147AF84(void *a1)
{
  sub_261477D7C(a1 + 8);

  operator delete(a1);
}

__n128 sub_26147AFC8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3388;
  sub_261478408(a2 + 8, a1 + 8);
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void sub_26147B09C(void *a1)
{
  *a1 = &unk_2873D3388;
  sub_261477D7C((a1 + 1));

  JUMPOUT(0x2667045D0);
}

void *sub_26147B100(void *a1)
{
  *a1 = &unk_2873D3388;
  sub_261477D7C((a1 + 1));
  return a1;
}

__n128 sub_26147B14C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3298;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_26147B1E8(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_2614709D4();
}

atomic_ullong *sub_26147B230(atomic_ullong *result, atomic_ullong *a2, void *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = result;
    do
    {
      explicit = atomic_load_explicit(v6, memory_order_acquire);
      if (explicit)
      {
        explicit = CFRetain(explicit);
      }

      *a3++ = explicit;
      ++v6;
      v5 -= 8;
    }

    while (v6 != a2);
    do
    {
      result = sub_26147B328(v4++);
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_26147B2D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_26147B328((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_ullong *sub_26147B328(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_26147B35C()
{
  v3 = *MEMORY[0x277D85DE8];
  if (qword_280CB3118)
  {
    _os_assumes_log();
  }

  if (qword_280CB35F0)
  {
    _os_assumes_log();
  }

  qword_280CB3118 = "MRCRegion";
  qword_280CB35F0 = _CFRuntimeRegisterClass();
  v2 = 0;
  sub_2614BAFE0(qword_280CB35F0, v1);
  return sub_26147B420(v1);
}

void sub_26147B404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26147B420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26147B420(uint64_t a1)
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

CFStringRef sub_26147B4A0(char *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F8[0] != -1)
    {
      dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
    }

    if (v2 != qword_280CB35F0)
    {
      _os_assumes_log();
    }
  }

  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    v4 = (cf + 16);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"<%s %p> {\n", "MRCRegion", cf);
    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    cornerPoints {\n");
    v5 = 4;
    do
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"        ");
      sub_26153BACC(&Mutable, v4);
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"\n");
      v4 += 2;
      --v5;
    }

    while (v5);
    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    transform ");
    if (atomic_load_explicit(&Mutable, memory_order_acquire))
    {
      v6 = *(cf + 6);
      *&t1.a = *(cf + 5);
      *&t1.c = v6;
      *&t1.tx = *(cf + 7);
      v7 = *(MEMORY[0x277CBF2C0] + 16);
      *&t2.a = *MEMORY[0x277CBF2C0];
      *&t2.c = v7;
      *&t2.tx = *(MEMORY[0x277CBF2C0] + 32);
      v8 = CGAffineTransformEqualToTransform(&t1, &t2);
      explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
      if (v8)
      {
        v10 = @"<identity>";
      }

      else
      {
        CFStringAppend(explicit, @"{a=");
        sub_26153BA20(&Mutable, *(cf + 10));
        CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @", b=");
        sub_26153BA20(&Mutable, *(cf + 11));
        CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @", c=");
        sub_26153BA20(&Mutable, *(cf + 12));
        CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @", d=");
        sub_26153BA20(&Mutable, *(cf + 13));
        CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @", tx=");
        sub_26153BA20(&Mutable, *(cf + 14));
        CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @", ty=");
        sub_26153BA20(&Mutable, *(cf + 15));
        explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
        v10 = @"}";
      }

      CFStringAppend(explicit, v10);
    }

    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"\n");
    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    orientation ");
    sub_26153BA20(&Mutable, *(cf + 16));
    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"\n");
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    symbology %@\n", atomic_load_explicit(cf + 17, memory_order_acquire));
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    confidence %f\n", *(cf + 36));
    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"}");
    Copy = CFStringCreateCopy(v3, atomic_load_explicit(&Mutable, memory_order_acquire));
    sub_2614959D0(&Mutable);
    if (Copy)
    {
      return Copy;
    }
  }

  else
  {
    sub_2614959D0(&Mutable);
  }

  return CFStringCreateWithFormat(v3, 0, @"<%s %p>", "MRCRegion", cf);
}

void sub_26147B814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2614959D0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_26147B82C(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F8[0] != -1)
    {
      dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
    }

    if (v2 != qword_280CB35F0)
    {
      _os_assumes_log();
    }
  }

  v3 = *(cf + 2);
  v4 = *(cf + 3);
  v5 = *(cf + 4);
  v6 = *(cf + 5);
  v7 = *(cf + 6);
  v8 = *(cf + 7);
  v10 = *(cf + 8);
  v9 = *(cf + 9);
  v12 = *(cf + 10);
  v11 = *(cf + 11);
  v14 = *(cf + 12);
  v13 = *(cf + 13);
  v16 = *(cf + 14);
  v15 = *(cf + 15);
  v17 = *(cf + 16);
  explicit = atomic_load_explicit(cf + 17, memory_order_acquire);
  if (explicit)
  {
    v58 = v5;
    v59 = v10;
    v56 = v3;
    v57 = v16;
    v54 = v7;
    v55 = v14;
    v53 = v12;
    v19 = CFHash(explicit);
    v12 = v53;
    v7 = v54;
    v14 = v55;
    v3 = v56;
    v16 = v57;
    v5 = v58;
    v10 = v59;
    v20 = v19 + 2654435769u;
  }

  else
  {
    v20 = 3317042773;
  }

  v21 = *&v12 + 2654435769;
  if (v12 == 0.0)
  {
    v21 = 2654435769;
  }

  v22 = *&v11 + 2654435769;
  if (v11 == 0.0)
  {
    v22 = 2654435769;
  }

  v23 = ((v21 >> 2) + (v21 << 6) + v22) ^ v21;
  v24 = *&v14 + 2654435769;
  if (v14 == 0.0)
  {
    v24 = 2654435769;
  }

  v25 = (v24 + (v23 << 6) + (v23 >> 2)) ^ v23;
  v26 = *&v13 + 2654435769;
  if (v13 == 0.0)
  {
    v26 = 2654435769;
  }

  v27 = (v26 + (v25 << 6) + (v25 >> 2)) ^ v25;
  v28 = *&v16 + 2654435769;
  if (v16 == 0.0)
  {
    v28 = 2654435769;
  }

  v29 = (v28 + (v27 << 6) + (v27 >> 2)) ^ v27;
  v30 = *&v15 + 2654435769;
  if (v15 == 0.0)
  {
    v30 = 2654435769;
  }

  v31 = (v30 + (v29 << 6) + (v29 >> 2)) ^ v29;
  v32 = *&v10 + 2654435769;
  if (v10 == 0.0)
  {
    v32 = 2654435769;
  }

  v33 = *&v9 + 2654435769;
  if (v9 == 0.0)
  {
    v33 = 2654435769;
  }

  v34 = (((v32 >> 2) + (v32 << 6) + v33) ^ v32) + 2654435769u;
  v35 = *&v7 + 2654435769;
  if (v7 == 0.0)
  {
    v35 = 2654435769;
  }

  v36 = *&v8 + 2654435769;
  if (v8 == 0.0)
  {
    v36 = 2654435769;
  }

  v37 = (((v35 >> 2) + (v35 << 6) + v36) ^ v35) + 2654435769u;
  v38 = *&v3 + 2654435769;
  if (v3 == 0.0)
  {
    v38 = 2654435769;
  }

  v39 = *&v4 + 2654435769;
  if (v4 == 0.0)
  {
    v39 = 2654435769;
  }

  v40 = (((v38 >> 2) + (v38 << 6) + v39) ^ v38) + 2654435769u;
  v41 = *&v5 + 2654435769;
  if (v5 == 0.0)
  {
    v41 = 2654435769;
  }

  v42 = *&v6 + 2654435769;
  if (v6 == 0.0)
  {
    v42 = 2654435769;
  }

  v43 = ((v40 << 6) + 2654435769u + (v40 >> 2) + (((v41 >> 2) + (v41 << 6) + v42) ^ v41)) ^ v40;
  v44 = (v37 + (v43 << 6) + (v43 >> 2)) ^ v43;
  v45 = ((v34 + (v44 << 6) + (v44 >> 2)) ^ v44) + 2654435769u;
  v46 = (v31 + 2654435769 + (v45 << 6) + (v45 >> 2)) ^ v45;
  v47 = *&v17 + 2654435769;
  if (v17 == 0.0)
  {
    v47 = 2654435769;
  }

  v48 = (v47 + (v46 << 6) + (v46 >> 2)) ^ v46;
  v49 = ((v48 >> 2) + (v48 << 6) + v20) ^ v48;
  v50 = *(cf + 36);
  v51 = LODWORD(v50) + 2654435769;
  if (v50 == 0.0)
  {
    v51 = 2654435769;
  }

  return ((v49 >> 2) + (v49 << 6) + v51) ^ v49;
}

uint64_t sub_26147BB34(atomic_ullong *cf, atomic_ullong *a2)
{
  if (!cf)
  {
    goto LABEL_5;
  }

  v4 = CFGetTypeID(cf);
  if (qword_280CB34F8[0] != -1)
  {
    dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
  }

  if (v4 != qword_280CB35F0)
  {
    _os_assumes_log();
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_5:
    if (a2)
    {
LABEL_6:
      v5 = CFGetTypeID(a2);
      if (qword_280CB34F8[0] != -1)
      {
        dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
      }

      if (v5 != qword_280CB35F0)
      {
        _os_assumes_log();
      }
    }
  }

  for (i = 0; i != 8; i += 2)
  {
    v7 = vmovn_s64(vceqq_f64(*&cf[i + 2], *&a2[i + 2]));
    if ((v7.i32[0] & v7.i32[1] & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(cf + 6);
  *&t1.a = *(cf + 5);
  *&t1.c = v8;
  *&t1.tx = *(cf + 7);
  v9 = *(a2 + 6);
  *&v13.a = *(a2 + 5);
  *&v13.c = v9;
  *&v13.tx = *(a2 + 7);
  result = CGAffineTransformEqualToTransform(&t1, &v13);
  if (!result)
  {
    return result;
  }

  if (*(cf + 16) != *(a2 + 16))
  {
    return 0;
  }

  explicit = atomic_load_explicit(a2 + 17, memory_order_acquire);
  v12 = atomic_load_explicit(cf + 17, memory_order_acquire);
  if (v12 == explicit)
  {
    return *(cf + 36) == *(a2 + 36);
  }

  result = 0;
  if (explicit)
  {
    if (v12)
    {
      result = CFEqual(v12, explicit);
      if (result)
      {
        return *(cf + 36) == *(a2 + 36);
      }
    }
  }

  return result;
}

atomic_ullong *sub_26147BCF0(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F8[0] != -1)
    {
      dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
    }

    if (v2 != qword_280CB35F0)
    {
      _os_assumes_log();
    }

    v3 = CFGetTypeID(cf);
    if (qword_280CB34F8[0] != -1)
    {
      dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
    }

    if (v3 != qword_280CB35F0)
    {
      _os_assumes_log();
    }
  }

  return sub_26148E848(cf + 17);
}

uint64_t sub_26147BDEC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc7Decoder6decodeERKNS_2CFINS_6SampleENS_2cf6TraitsIS2_NS3_13PersonalitiesIS2_XtlNS_12fixed_stringILm9EEEtlNS_18basic_fixed_stringIcLm9ENSt3__111char_traitsIcEEEEtlA10_cLc77ELc82ELc67ELc83ELc97ELc109ELc112ELc108ELc101EEEEEJEEEEEEERKNS9_8optionalINS9_4spanIKNS_5CFRefIPKNS1_INS_6RegionENS4_ISM_NS5_ISM_XtlS7_tlSC_tlSD_Lc77ELc82ELc67ELc82ELc101ELc103ELc105ELc111ELc110EEEEEJEEEEEEEEELm18446744073709551615EEEEERNSJ_INS_5ErrorEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26147BE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) != 1 || *(a3 + 96) == 1)
  {
    sub_261477470(*(a1 + 8), a3);
    if (qword_280CB3EB0 != -1)
    {
      dispatch_once(&qword_280CB3EB0, &unk_2873D07A0);
    }

    v4 = qword_280CB3EA8;
    if (!os_log_type_enabled(qword_280CB3EA8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v33 = *(a1 + 8);
    if (*(v33 + 96) == 1)
    {
      sub_2615010E4(buf, v33);
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
      *buf = -1;
      *&buf[8] = 0;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
    }

    sub_261501518(v67, buf);
    explicit = atomic_load_explicit(v67, memory_order_acquire);
    *v69 = 138543362;
    *&v69[4] = explicit;
    v35 = "Cannot retrieve or instantiate ANMD model: %{public}@";
LABEL_58:
    _os_log_error_impl(&dword_26146F000, v4, OS_LOG_TYPE_ERROR, v35, v69, 0xCu);
    sub_261476C54(v67);
    sub_261501098(buf);
    return;
  }

  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v48 = **(a1 + 32);
  v49 = 1;
  if (*(v5 + 200) == 1)
  {
    v8 = *(v5 + 264);
    if (v8)
    {
      if ((*(*v8 + 24))(v8))
      {
        v67[0] = &unk_2873D61F0;
        v68 = v67;
        v66[0] = &unk_2873D6270;
        v66[3] = v66;
        *v69 = &v48;
        sub_261489C64(&v69[8], v66);
        if (*(*v69 + 8) == 1 && v68)
        {
          sub_261489CFC(v68, **v69);
        }

        v9 = (v7 + 16);
        sub_261489D4C(v66);
        sub_261489D4C(v67);
        v10 = MEMORY[0x277CBF2C0];
        v11 = *(MEMORY[0x277CBF2C0] + 16);
        *buf = *MEMORY[0x277CBF2C0];
        v58 = v11;
        v59 = *(MEMORY[0x277CBF2C0] + 32);
        v12 = *(v7 + 72);
        if (v12 && (v13 = *(*(v7 + 72) + 8) - *v12) != 0)
        {
          v14 = 0x84BDA12F684BDA13 * (v13 >> 3);
          v15 = v13 - 216;
          while (1)
          {
            v16 = **(v7 + 72) + v15;
            v17 = v16 + 8;
            if (sub_2614B8078(v5))
            {
              break;
            }

            v15 -= 216;
            if (!--v14)
            {
              goto LABEL_18;
            }
          }

          *buf = *(v16 + 168);
          v58 = *(v16 + 184);
          v59 = *(v16 + 200);
          v19 = v17 & 0xFFFFFFFFFFFFFF00;
          v20 = 1;
        }

        else
        {
LABEL_18:
          if (sub_2614B8078(v5))
          {
            v18 = v10[1];
            *buf = *v10;
            v58 = v18;
            v59 = v10[2];
            v17 = *v9;
            v19 = *v9 & 0xFFFFFFFFFFFFFF00;
            v20 = 1;
          }

          else
          {
            LOBYTE(v17) = 0;
            v20 = 0;
            v19 = 0;
          }
        }

        if (qword_280CB3F00 != -1)
        {
          v47 = v20;
          dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
          v20 = v47;
        }

        v37 = qword_280CB3EF8;
        if (v20)
        {
          v38 = (v19 | v17);
          if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_DEBUG))
          {
            v45 = atomic_load_explicit(v38, memory_order_acquire);
            *v63 = 138543362;
            *&v63[4] = v45;
            _os_log_debug_impl(&dword_26146F000, v37, OS_LOG_TYPE_DEBUG, "Found best pixel buffer: %{public}@", v63, 0xCu);
          }

          if ((*(**(v5 + 264) + 40))(*(v5 + 264), v38, v6, &v48))
          {
            (*(**(v5 + 264) + 48))(&v55);
            if (atomic_load_explicit(&v55, memory_order_acquire))
            {
              v39 = *(v5 + 208);
              IOSurface = CVPixelBufferGetIOSurface(atomic_load_explicit(&v55, memory_order_acquire));
              if (IOSurface)
              {
                IOSurface = CFRetain(IOSurface);
              }

              *v63 = IOSurface;
              v41 = sub_261485064(v39, v63, v6);
              sub_261483CA4(v63);
              if (v41)
              {
                if (sub_261489430(v5 + 72, (v5 + 24), v6, &v48))
                {
                  v42 = *(v5 + 232);
                  v53 = *(v5 + 216);
                  v54 = v42;
                  sub_2614B3C7C(v63, &v53, *(v5 + 264), v38, buf, v6, &v48);
                  if (v65)
                  {
                    if (sub_26148A1CC(*(v5 + 104), v6))
                    {
                      if (sub_2614854B0(*(v5 + 208), v6))
                      {
                        v22 = 0;
                        v50[0] = 0;
                        v52 = 0;
                        if (v65 == 1)
                        {
                          *v50 = *v63;
                          v51 = v64;
                          v64 = 0;
                          memset(v63, 0, sizeof(v63));
                          v22 = 1;
                          v52 = 1;
                        }

                        goto LABEL_111;
                      }

                      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                      {
                        *v50 = 0;
                        v46 = "Failed to unbind input surface.";
                        goto LABEL_109;
                      }

LABEL_110:
                      v22 = 0;
                      v50[0] = 0;
                      v52 = 0;
LABEL_111:
                      if (v65 == 1)
                      {
                        v56 = v63;
                        sub_261476A40(&v56);
                      }

                      goto LABEL_98;
                    }

                    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_110;
                    }

                    *v50 = 0;
                    v46 = "Failed to reset network.";
                  }

                  else
                  {
                    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_110;
                    }

                    *v50 = 0;
                    v46 = "Failed to run postprocessor.";
                  }

LABEL_109:
                  _os_log_impl(&dword_26146F000, v37, OS_LOG_TYPE_INFO, v46, v50, 2u);
                  goto LABEL_110;
                }

                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  *v63 = 0;
                  v44 = "Failed to execute.";
                  goto LABEL_96;
                }

LABEL_97:
                v22 = 0;
                v50[0] = 0;
                v52 = 0;
LABEL_98:
                sub_2614776F0(&v55);
LABEL_99:
                if (*(*v69 + 8) == 1 && v70)
                {
                  sub_261489CFC(v70, **v69);
                }

                sub_261489D4C(&v69[8]);
                goto LABEL_25;
              }

              if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                goto LABEL_97;
              }

              *v63 = 0;
              v44 = "Failed to bind input surface.";
            }

            else
            {
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                goto LABEL_97;
              }

              *v63 = 0;
              v44 = "Failed to create input pixel buffer.";
            }

LABEL_96:
            _os_log_impl(&dword_26146F000, v37, OS_LOG_TYPE_INFO, v44, v63, 2u);
            goto LABEL_97;
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *v63 = 0;
            _os_log_impl(&dword_26146F000, v37, OS_LOG_TYPE_INFO, "Failed to run image preprocessor.", v63, 2u);
          }
        }

        else
        {
          if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
          {
            *v63 = 138543362;
            *&v63[4] = v9 - 2;
            _os_log_error_impl(&dword_26146F000, v37, OS_LOG_TYPE_ERROR, "Unable to find any supported pixel buffer from MRCSample: %{public}@", v63, 0xCu);
          }

          *v63 = -6007;
          *v50 = @"Unable to find any supported pixel buffer from MRCSample.";
          sub_261476754(v6, v63, v50);
        }

        v22 = 0;
        v50[0] = 0;
        v52 = 0;
        goto LABEL_99;
      }
    }
  }

  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  v21 = qword_280CB3EF8;
  if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26146F000, v21, OS_LOG_TYPE_ERROR, "ANMDModel is not ready.", buf, 2u);
  }

  *buf = -6005;
  *v69 = @"ANMDModel is not ready.";
  sub_261476754(v6, buf, v69);
  v22 = 0;
  v50[0] = 0;
  v52 = 0;
LABEL_25:
  v23 = *(a1 + 16);
  if (*(v23 + 24) != v22)
  {
    if (*(v23 + 24))
    {
      *buf = *(a1 + 16);
      sub_261476A40(buf);
      *(v23 + 24) = 0;
      if ((v22 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      *v23 = *v50;
      *(v23 + 16) = v51;
      memset(v50, 0, sizeof(v50));
      v51 = 0;
      *(v23 + 24) = 1;
      if ((v22 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_37;
  }

  if (!*(v23 + 24))
  {
    if (!v22)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v24 = *v23;
  if (*v23)
  {
    v25 = *(v23 + 8);
    if (v25 == v24)
    {
      v26 = *v23;
    }

    else
    {
      do
      {
        v25 = sub_26147B328(v25 - 1);
      }

      while (v25 != v24);
      v26 = *v23;
      LOBYTE(v22) = v52;
    }

    *(v23 + 8) = v24;
    operator delete(v26);
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
  }

  *v23 = *v50;
  *(v23 + 16) = v51;
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  if (v22)
  {
LABEL_37:
    *buf = v50;
    sub_261476A40(buf);
  }

LABEL_38:
  v27 = *(a1 + 16);
  if (*(v27 + 24) == 1 && *(*(a1 + 8) + 96) != 1)
  {
    if (qword_280CB3EB0 != -1)
    {
      dispatch_once(&qword_280CB3EB0, &unk_2873D07A0);
    }

    v29 = qword_280CB3EA8;
    if (os_log_type_enabled(qword_280CB3EA8, OS_LOG_TYPE_INFO))
    {
      v30 = (v27[1] - *v27) >> 3;
      *buf = 134349056;
      *&buf[4] = v30;
      _os_log_impl(&dword_26146F000, v29, OS_LOG_TYPE_INFO, "ANMD inference yields %{public}zu region(s).", buf, 0xCu);
      v27 = *(a1 + 16);
    }

    v31 = *(a1 + 40);
    if (*(v31 + 16) == *(v27 + 24))
    {
      if (*(v31 + 16))
      {
        v32 = (v27[1] - *v27) >> 3;
        *v31 = *v27;
        *(v31 + 8) = v32;
      }
    }

    else if (*(v31 + 16))
    {
      *(v31 + 16) = 0;
    }

    else
    {
      v36 = *v27;
      *v31 = *v27;
      *(v31 + 8) = (v27[1] - v36) >> 3;
      *(v31 + 16) = 1;
    }
  }

  else
  {
    if (qword_280CB3EB0 != -1)
    {
      dispatch_once(&qword_280CB3EB0, &unk_2873D07A0);
    }

    v4 = qword_280CB3EA8;
    if (os_log_type_enabled(qword_280CB3EA8, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 8);
      if (*(v28 + 96) == 1)
      {
        sub_2615010E4(buf, v28);
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
        *buf = -1;
        *&buf[8] = 0;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
      }

      sub_261501518(v67, buf);
      v43 = atomic_load_explicit(v67, memory_order_acquire);
      *v69 = 138543362;
      *&v69[4] = v43;
      v35 = "Cannot run ANMD inference: %{public}@";
      goto LABEL_58;
    }
  }
}

void sub_26147C898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, atomic_ullong a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a36 == 1)
  {
    a11 = &a33;
    sub_261476A40(&a11);
  }

  sub_2614776F0(&a19);
  sub_261489DCC((v36 - 144));
  _Unwind_Resume(a1);
}

__n128 sub_26147C960(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3218;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_26147CA1C()
{
  v3 = *MEMORY[0x277D85DE8];
  if (qword_280CB3058)
  {
    _os_assumes_log();
  }

  if (qword_280CB35D8)
  {
    _os_assumes_log();
  }

  qword_280CB3058 = "MRCContext";
  qword_280CB35D8 = _CFRuntimeRegisterClass();
  v2 = 0;
  sub_2614BAFE0(qword_280CB35D8, v1);
  return sub_26147B420(v1);
}

void sub_26147CAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26147B420(va);
  _Unwind_Resume(a1);
}

CFStringRef sub_26147CAE0(os_unfair_lock_s *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34E0 != -1)
    {
      dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
    }

    if (v2 != qword_280CB35D8)
    {
      _os_assumes_log();
    }
  }

  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    sub_2614959D0(&Mutable);
    return CFStringCreateWithFormat(v3, 0, @"<%s %p>", "MRCContext", cf);
  }

  v4 = &cf[4];
  CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"<%s %p> {\n", "MRCContext", cf);
  CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    options {\n");
  explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
  v6 = **&cf[4]._os_unfair_lock_opaque;
  sub_2615318D0(&__dst, v6);
  CFStringAppendFormat(explicit, 0, @"        inferenceFlags 0x%lx (%@)\n", v6, atomic_load_explicit(&__dst, memory_order_acquire));
  sub_26148E848(&__dst);
  v7 = **&cf[4]._os_unfair_lock_opaque;
  if (v7 != sub_261525050(*&cf[4]._os_unfair_lock_opaque))
  {
    v8 = atomic_load_explicit(&Mutable, memory_order_acquire);
    v9 = *v4;
    v10 = sub_261525050(*v4);
    v11 = sub_261525050(v9);
    sub_2615318D0(&__dst, v11);
    CFStringAppendFormat(v8, 0, @"        effectiveInferenceFlags 0x%lx (%@)\n", v10, atomic_load_explicit(&__dst, memory_order_acquire));
    sub_26148E848(&__dst);
  }

  v12 = atomic_load_explicit(&Mutable, memory_order_acquire);
  v13 = atomic_load_explicit((*v4 + 8), memory_order_acquire);
  v14 = *MEMORY[0x277CBEEE8];
  if (!v13)
  {
    v13 = *MEMORY[0x277CBEEE8];
  }

  CFStringAppendFormat(v12, 0, @"        preferredMetalDevice %@\n", v13);
  v15 = (*v4 + 8);
  sub_261525508(&__dst, *v4);
  v16 = atomic_load_explicit(&__dst, memory_order_acquire);
  v17 = atomic_load_explicit(v15, memory_order_acquire);
  if (v17 != v16)
  {
    if (v16 && v17)
    {
      v18 = CFEqual(v17, v16);
      sub_26148D890(&__dst);
      if (v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_26148D890(&__dst);
    }

    v19 = atomic_load_explicit(&Mutable, memory_order_acquire);
    sub_261525508(&__dst, *v4);
    v20 = atomic_load_explicit(&__dst, memory_order_acquire);
    if (!v20)
    {
      v20 = v14;
    }

    CFStringAppendFormat(v19, 0, @"        effectivePreferredMetalDevice %@\n", v20);
  }

  sub_26148D890(&__dst);
LABEL_22:
  v21 = atomic_load_explicit(&Mutable, memory_order_acquire);
  v22 = atomic_load_explicit((*v4 + 16), memory_order_acquire);
  if (!v22)
  {
    v22 = v14;
  }

  CFStringAppendFormat(v21, 0, @"        computeDevice %@\n", v22);
  v23 = atomic_load_explicit(&Mutable, memory_order_acquire);
  v24 = *(*v4 + 24);
  if (v24 > 20)
  {
    switch(v24)
    {
      case 21:
        v25 = @"default";
        goto LABEL_38;
      case 33:
        v25 = @"user-interactive";
        goto LABEL_38;
      case 25:
        v25 = @"user-initiated";
        goto LABEL_38;
    }
  }

  else
  {
    switch(v24)
    {
      case 0:
        v25 = @"unspecified";
        goto LABEL_38;
      case 9:
        v25 = @"background";
        goto LABEL_38;
      case 17:
        v25 = @"utility";
LABEL_38:
        v26 = CFRetain(v25);
        goto LABEL_39;
    }
  }

  v26 = CFStringCreateWithFormat(v3, 0, @"unspecified (0x%x)", *(*v4 + 24));
LABEL_39:
  __dst = v26;
  CFStringAppendFormat(v23, 0, @"        qosClass %@\n", atomic_load_explicit(&__dst, memory_order_acquire));
  sub_26148E848(&__dst);
  CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        relativePriority %d\n", *(*v4 + 28));
  v27 = atomic_load_explicit(&Mutable, memory_order_acquire);
  if (*(*v4 + 32))
  {
    v28 = "true";
  }

  else
  {
    v28 = "false";
  }

  CFStringAppendFormat(v27, 0, @"        isGlobal %s\n", v28);
  v29 = atomic_load_explicit(&Mutable, memory_order_acquire);
  if (*(*v4 + 33))
  {
    v30 = "true";
  }

  else
  {
    v30 = "false";
  }

  CFStringAppendFormat(v29, 0, @"        isOneShot %s\n", v30);
  v31 = *(*v4 + 48);
  v32 = atomic_load_explicit(&Mutable, memory_order_acquire);
  if (v31 == 1)
  {
    CFStringAppendFormat(v32, 0, @"        maximumBufferAge %g\n", *(*v4 + 40));
  }

  else
  {
    CFStringAppendFormat(v32, 0, @"        maximumBufferAge <unspecified>\n");
  }

  v33 = atomic_load_explicit(&Mutable, memory_order_acquire);
  if (*(*v4 + 57) == 1)
  {
    if (*(*v4 + 56))
    {
      v34 = "true";
    }

    else
    {
      v34 = "false";
    }
  }

  else
  {
    v34 = "<unspecified>";
  }

  CFStringAppendFormat(v33, 0, @"        isStreaming %s\n", v34);
  CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
  os_unfair_lock_lock_with_options();
  CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    concreteContexts [%zu] {\n", *&cf[16]._os_unfair_lock_opaque);
  v35 = cf + 14;
  while (1)
  {
    v35 = *&v35->_os_unfair_lock_opaque;
    v36 = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (!v35)
    {
      break;
    }

    CFStringAppend(v36, @"        ");
    v37 = *&v35[10]._os_unfair_lock_opaque;
    if (v37)
    {
      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_261481038();
      }

      v38 = *&v35[8]._os_unfair_lock_opaque;
      if (v37 >= 0x17)
      {
        operator new();
      }

      v45 = *&v35[10]._os_unfair_lock_opaque;
      memmove(&__dst, v38, v37);
      *(&__dst + v37) = 0;
      v39 = atomic_load_explicit(&Mutable, memory_order_acquire);
      if (v45 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      CFStringAppendFormat(v39, 0, @"<%s %p>", p_dst, *&v35[12]._os_unfair_lock_opaque);
      if (v45 < 0)
      {
        operator delete(__dst);
      }
    }

    else
    {
      CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"<ConcreteContext(classID=%p) %p>", *&v35[6]._os_unfair_lock_opaque, *&v35[12]._os_unfair_lock_opaque);
    }

    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"\n");
  }

  CFStringAppend(v36, @"    }\n");
  os_unfair_lock_unlock(cf + 6);
  CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"}");
  Copy = CFStringCreateCopy(v3, atomic_load_explicit(&Mutable, memory_order_acquire));
  sub_2614959D0(&Mutable);
  if (Copy)
  {
    return Copy;
  }

  return CFStringCreateWithFormat(v3, 0, @"<%s %p>", "MRCContext", cf);
}

void sub_26147D158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_ullong a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_26148D890(&__p);
  sub_2614959D0(&a13);
  _Unwind_Resume(a1);
}

unint64_t sub_26147D1D8(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34E0 != -1)
    {
      dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
    }

    if (v2 != qword_280CB35D8)
    {
      _os_assumes_log();
    }
  }

  v3 = 0x9DDFEA08EB382D69 * ((((((cf + 16) >> 3) & 0x3FFFFFF) << 6) | 8) ^ ((cf + 16) >> 32));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (((cf + 16) >> 32) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (((cf + 16) >> 32) ^ (v3 >> 47) ^ v3)) >> 47));
}

BOOL sub_26147D298(CFTypeRef cf, CFTypeRef a2)
{
  if (!cf)
  {
    goto LABEL_5;
  }

  v4 = CFGetTypeID(cf);
  if (qword_280CB34E0 != -1)
  {
    dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
  }

  if (v4 != qword_280CB35D8)
  {
    _os_assumes_log();
    if (!a2)
    {
      return cf == a2;
    }
  }

  else
  {
LABEL_5:
    if (!a2)
    {
      return cf == a2;
    }
  }

  v5 = CFGetTypeID(a2);
  if (qword_280CB34E0 != -1)
  {
    dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
  }

  if (v5 != qword_280CB35D8)
  {
    _os_assumes_log();
  }

  return cf == a2;
}

uint64_t *sub_26147D390(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34E0 != -1)
    {
      dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
    }

    if (v2 != qword_280CB35D8)
    {
      _os_assumes_log();
    }

    v3 = CFGetTypeID(cf);
    if (qword_280CB34E0 != -1)
    {
      dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
    }

    if (v3 != qword_280CB35D8)
    {
      _os_assumes_log();
    }
  }

  dispatch_release(*(cf + 4));
  sub_2615300C8(cf + 40);

  return sub_261530104(cf + 2);
}

uint64_t sub_26147D490()
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (qword_280CB3178)
  {
    _os_assumes_log();
  }

  if (qword_280CB3600)
  {
    _os_assumes_log();
  }

  qword_280CB3178 = "MRCDecoderResult";
  qword_280CB3600 = _CFRuntimeRegisterClass();
  v1[0] = &unk_2873D6D90;
  v1[3] = v1;
  sub_2614BAFE0(qword_280CB3600, v1);
  return sub_26147B420(v1);
}

void sub_26147D558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26147B420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26147D580(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc2CFINS_13DecoderResultENS_2cf6TraitsIS1_NS2_13PersonalitiesIS1_XtlNS_12fixed_stringILm16EEEtlNS_18basic_fixed_stringIcLm16ENSt3__111char_traitsIcEEEEtlA17_cLc77ELc82ELc67ELc68ELc101ELc99ELc111ELc100ELc101ELc114ELc82ELc101ELc115ELc117ELc108ELc116EEEEEJEEEEEE18registerClassOnce_EPvEUlPKvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_26147D5BC@<X0>(CFTypeRef *a1@<X1>, CFStringRef *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = CFGetTypeID(*a1);
    if (qword_280CB3508[0] != -1)
    {
      dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
    }

    if (v4 != qword_280CB3600)
    {
      _os_assumes_log();
    }
  }

  result = sub_26150EFC0(v3 + 2, 1);
  *a2 = result;
  return result;
}

CFStringRef sub_26147D6E0(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB3508[0] != -1)
    {
      dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
    }

    if (v2 != qword_280CB3600)
    {
      _os_assumes_log();
    }
  }

  result = sub_26150EFC0(cf + 2, 0);
  if (!result)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<%s %p>", "MRCDecoderResult", cf);
  }

  return result;
}

CFHashCode sub_26147D7A0(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB3508[0] != -1)
    {
      dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
    }

    if (v2 != qword_280CB3600)
    {
      _os_assumes_log();
    }
  }

  v3 = 3317042773;
  v4 = cf[2];
  v5 = cf[3];
  v6 = 3317042773;
  if (v4 != v5)
  {
    v7 = 0;
    do
    {
      explicit = atomic_load_explicit(v4, memory_order_acquire);
      v9 = 3317042773;
      if (explicit)
      {
        v9 = CFHash(explicit) + 2654435769u;
      }

      v7 ^= (v7 >> 2) + (v7 << 6) + v9;
      ++v4;
    }

    while (v4 != v5);
    v6 = v7 + 2654435769u;
  }

  v10 = atomic_load_explicit(cf + 5, memory_order_acquire);
  if (v10)
  {
    v3 = CFHash(v10) + 2654435769u;
  }

  return (v3 + (v6 << 6) + (v6 >> 2)) ^ v6;
}

uint64_t sub_26147D8B0(atomic_ullong *cf, atomic_ullong *a2)
{
  if (!cf)
  {
    goto LABEL_5;
  }

  v4 = CFGetTypeID(cf);
  if (qword_280CB3508[0] != -1)
  {
    dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
  }

  if (v4 != qword_280CB3600)
  {
    _os_assumes_log();
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_5:
    if (a2)
    {
LABEL_6:
      v5 = CFGetTypeID(a2);
      if (qword_280CB3508[0] != -1)
      {
        dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
      }

      if (v5 != qword_280CB3600)
      {
        _os_assumes_log();
      }
    }
  }

  v7 = cf[2];
  v6 = cf[3];
  v8 = a2[2];
  if (v6 - v7 != a2[3] - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    explicit = atomic_load_explicit(v8, memory_order_acquire);
    v10 = atomic_load_explicit(v7, memory_order_acquire);
    if (v10 != explicit)
    {
      if (explicit)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }

      result = CFEqual(v10, explicit);
      if (!result)
      {
        return result;
      }
    }

    ++v7;
    ++v8;
  }

  v13 = atomic_load_explicit(a2 + 5, memory_order_acquire);
  v14 = atomic_load_explicit(cf + 5, memory_order_acquire);
  if (v14 == v13)
  {
    return 1;
  }

  v15 = !v13 || v14 == 0;
  return !v15 && CFEqual(v14, v13);
}

void sub_26147DA28(char *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB3508[0] != -1)
    {
      dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
    }

    if (v2 != qword_280CB3600)
    {
      _os_assumes_log();
    }

    v3 = CFGetTypeID(cf);
    if (qword_280CB3508[0] != -1)
    {
      dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
    }

    if (v3 != qword_280CB3600)
    {
      _os_assumes_log();
    }
  }

  sub_2614769A4(cf + 5);
  v4 = (cf + 16);
  sub_2614773B8(&v4);
}

float sub_26147DB24(float32x4_t *a1, int32x4_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_malloc(0x10uLL, 0x100004052888210uLL);
  v5 = 0;
  v6 = (((COERCE_FLOAT(*a1) + 0.0) + COERCE_FLOAT(HIDWORD(a1->i64[0]))) + COERCE_FLOAT(a1->i64[1])) + COERCE_FLOAT(HIDWORD(*a1));
  a2->i64[0] = -1;
  a2->i64[1] = -1;
  v7 = v6 / 7.0;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      v9 = a1->f32[i] / v7;
      v10 = llroundf(v9);
      if (v10 >= 4)
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        v10 = 1;
      }

      v30.i32[i] = v10;
      v4[i] = v9 - v10;
    }

    v11 = vaddvq_s32(v30);
    if (v11 >= 8)
    {
      while (1)
      {
        v12 = 0;
        v13 = 0;
        v14 = *v4;
        do
        {
          if (v4[v12] < v14)
          {
            v14 = v4[v12];
            v13 = v12;
          }

          ++v12;
        }

        while (v12 != 4);
        v15 = v13;
        v16 = v30.i32[v13];
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (!((v18 < 0) ^ v17 | (v18 == 0)))
        {
          break;
        }

        if (!v18)
        {
          goto LABEL_16;
        }

LABEL_17:
        if (v11 <= 7)
        {
          goto LABEL_29;
        }
      }

      --v11;
      v30.i32[v15] = v18;
LABEL_16:
      v4[v15] = v4[v15] + 1.0;
      goto LABEL_17;
    }

    if (v11 != 7)
    {
      while (1)
      {
        v19 = 0;
        v20 = 0;
        v21 = *v4;
        do
        {
          if (v4[v19] > v21)
          {
            v21 = v4[v19];
            v20 = v19;
          }

          ++v19;
        }

        while (v19 != 4);
        v22 = v20;
        v23 = v30.i32[v20];
        if (v23 < 4)
        {
          break;
        }

        if (v23 == 4)
        {
          goto LABEL_27;
        }

LABEL_28:
        if (v11 >= 7)
        {
          goto LABEL_29;
        }
      }

      ++v11;
      v30.i32[v22] = v23 + 1;
LABEL_27:
      v4[v22] = v4[v22] + -1.0;
      goto LABEL_28;
    }

LABEL_29:
    v24 = 0;
    v25 = vmulq_f32(*a1, vcvtq_f32_s32(v30));
    v26 = vcvtq_f32_u32(vmulq_s32(v30, v30));
    v7 = ((((v25.f32[0] + 0.0) + v25.f32[1]) + v25.f32[2]) + v25.f32[3]) / ((((v26.f32[0] + 0.0) + v26.f32[1]) + v26.f32[2]) + v26.f32[3]);
    while (v30.i32[v24] == a2->i32[v24])
    {
      if (++v24 == 4)
      {
        goto LABEL_34;
      }
    }

    *a2 = v30;
    ++v5;
  }

  while (v5 != 4);
LABEL_34:
  v29 = *v4;
  free(v4);
  v27 = vabsq_f32(v29);
  return (((v27.f32[0] + 0.0) + v27.f32[1]) + v27.f32[2]) + v27.f32[3];
}

uint64_t sub_26147DDB4(int32x4_t *a1, int a2, char a3)
{
  v4 = 0;
  LODWORD(v5) = 0;
  v6 = 0;
  v7 = vaddvq_s32(*a1);
  v30 = a3 ^ 1;
  v29 = a2;
  v24 = 1;
  v22 = a1;
  do
  {
    v8 = 1 << v4;
    v9 = a1->u32[v4];
    if (v9 < 2)
    {
      LODWORD(v5) = v8 | v5;
      LODWORD(v9) = 1;
    }

    else
    {
      v32 = (2 - v4);
      v10 = 1;
      v11 = 1 - v4;
      v25 = v4 - 3;
      v26 = v4 - 4;
      v5 = v5 & ~v8;
      v23 = v7;
      v31 = v7;
      v12 = 1;
      v27 = v4;
      v28 = 6 - 2 * v4;
      do
      {
        v13 = v31 - v10;
        v14 = sub_26147DF84(v31 - v10 - 1, v32);
        v15 = v30;
        if (v12)
        {
          v15 = 1;
        }

        if ((v15 & 1) == 0 && v28 <= v13)
        {
          v14 -= sub_26147DF84(v26 + v13, v32);
        }

        if (v4 == 2)
        {
          v16 = v14 - (v13 > v29);
        }

        else
        {
          v17 = v5;
          v18 = v13 - v32;
          if (v13 - v32 <= v29)
          {
            v19 = 0;
          }

          else
          {
            v19 = 0;
            v20 = v24;
            do
            {
              v19 += sub_26147DF84(v20, v11);
              --v18;
              ++v20;
            }

            while (v18 > a2);
          }

          v16 = v14 + v19 * v25;
          v5 = v17;
          v4 = v27;
        }

        v6 = (v16 + v6);
        ++v10;
        v12 = v5;
      }

      while (v10 != v9);
      a1 = v22;
      v7 = v23;
    }

    v7 -= v9;
    ++v4;
    --v24;
  }

  while (v4 != 3);
  return v6;
}

uint64_t sub_26147DF84(int a1, int a2)
{
  if (a1 - a2 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1 - a2;
  }

  if (a1 - a2 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1 - a2;
  }

  if (v2 >= a1)
  {
    result = 1;
    v5 = 1;
  }

  else
  {
    v4 = a1;
    v5 = 1;
    LODWORD(result) = 1;
    do
    {
      result = (v4 * result);
      if (v5 <= v3)
      {
        result = (result / v5++);
      }

      --v4;
    }

    while (v4 > v2);
  }

  if (v5 <= v3)
  {
    do
    {
      result = (result / v5++);
    }

    while (v3 + 1 != v5);
  }

  return result;
}

uint64_t sub_26147DFF4(uint64_t a1, uint64_t a2)
{
  sub_2615449EC();
  LODWORD(v49.a) = 0;
  BYTE4(v49.a) = 1;
  result = sub_2614E9290(*(a1 + 8), &v49);
  if (dword_280CB3638 < 1)
  {
    v14 = 0;
  }

  else
  {
    v6 = (dword_280CB3638 + 3) & 0xFFFFFFFC;
    v7 = xmmword_261560F20;
    v8 = 0uLL;
    v9.i64[0] = 0x100000001;
    v9.i64[1] = 0x100000001;
    v10.i64[0] = 0x400000004;
    v10.i64[1] = 0x400000004;
    do
    {
      v11 = v8;
      v12 = v7;
      v8 = vorrq_s8(vshlq_u32(v9, v7), v8);
      v7 = vaddq_s32(v7, v10);
      v6 -= 4;
    }

    while (v6);
    v5.i32[0] = dword_280CB3638 - 1;
    v13 = vbslq_s8(vcgtq_u32(v12, vdupq_lane_s32(v5, 0)), v11, v8);
    *v13.i8 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    v14 = v13.i32[0] | v13.i32[1];
  }

  if ((v14 & result) == 0)
  {
    goto LABEL_25;
  }

  v15 = *(a2 + 8);
  v16 = *(v15 + 32);
  v50.origin = *(v15 + 16);
  v50.size = v16;
  v52.origin = v50.origin;
  v52.size = v16;
  v17 = CGRectIsInfinite(v52) ? (**(a2 + 8) + 8) : &v50;
  size = v17->size;
  v50.origin = v17->origin;
  v50.size = size;
  LODWORD(v49.a) = 0;
  BYTE4(v49.a) = 1;
  v19 = *(a1 + 8);
  v20 = sub_2614E9290(v19, &v49);
  v21 = 0.0;
  if (v19[7] >= 196608 && *(a2 + 32) == 1)
  {
    v22 = sub_26149717C((*(a2 + 24) + 120));
    v23 = *(a2 + 24);
    v24 = sub_261495974(v23, 0.0);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = *(v23 + 112);
    v32 = *(v23 + 72);
    *&v25 = *(v23 + 64);
    v33 = (atan2f(v32, *&v25) * -180.0) / 3.14159265;
    v34 = v31;
    v35 = (v33 + fmodf(v34, 180.0));
    if (v35 > 90)
    {
      v35 -= 180;
    }

    v36 = v35 >= -90 ? v35 : v35 + 180;
    v20 = v22 == 0x100000002 ? 24576 : v20 & 0xFFFF9FFF;
    v37 = *(v23 + 80);
    *&v49.a = *(v23 + 64);
    *&v49.c = v37;
    *&v49.tx = *(v23 + 96);
    v38 = v24;
    *&v37 = v26;
    v39 = v28;
    v40 = v30;
    v50 = CGRectApplyAffineTransform(*(&v37 - 8), &v49);
    v41 = 1;
    v21 = v36;
  }

  else
  {
    v41 = 0;
  }

  origin = v50.origin;
  v43 = v50.size;
  result = CGRectIsNull(v50);
  if (result & 1) != 0 || (v51.origin = origin, v51.size = v43, result = CGRectIsEmpty(v51), (result) || (v44 = sub_2614F59E4(**(a2 + 8)), Width = CGRectGetWidth(*(**(a2 + 8) + 8)), Height = CGRectGetHeight(*(**(a2 + 8) + 8)), result = sub_26153D9A8(a1, v44, Width, Height, *(**(a2 + 8) + 40), v20, v41, *a2, origin.x, origin.y, v43.width, v43.height, v21), result))
  {
LABEL_25:
    v47 = *(a2 + 64);
    v48 = 256;
  }

  else
  {
    v47 = *(a2 + 64);
    v48 = 257;
  }

  *v47 = v48;
  return result;
}

void sub_26147E30C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x26147E2D0);
}

atomic_uint *sub_26147E320@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  (*(**(*a1 + 16) + 16))(&v7);
  sub_2614909D8(&v8, &v7);
  if (v7)
  {
    sub_2614705CC(v7);
  }

  v4 = *a2;
  if (*a2 != *(a2 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    }

    v10 = *(v5 + 180);
    (*(*v5 + 16))(v5);
    (*(*v5 + 24))(v5);
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 2, 1u, memory_order_relaxed);
    }

    memset(v11, 0, 24);
    v11[15] = v11;
    LOBYTE(v12) = 0;
    operator new();
  }

  v8 = &unk_2873D1650;
  result = v9;
  if (v9)
  {
    return sub_2614705CC(v9);
  }

  return result;
}

void sub_261480014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, atomic_uint *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, atomic_uint *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v68)
  {
    sub_2614705CC(a24);
  }

  if (a40)
  {
    sub_2614705CC(a40);
  }

  a68 = a20;
  sub_261480A80(&a68);
  JUMPOUT(0x261480068);
}

uint64_t *sub_261480070(uint64_t a1, int a2)
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
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}