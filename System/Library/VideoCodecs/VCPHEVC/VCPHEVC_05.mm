uint64_t sub_277407020(uint64_t result)
{
  *result = sub_277407C9C;
  *(result + 16) = sub_277407514;
  v1 = *(result + 537);
  *(result + 304) = sub_277404E14;
  *(result + 312) = sub_277404DA4;
  *(result + 200) = sub_2774074F4;
  *(result + 208) = sub_2774074D4;
  *(result + 216) = sub_2774074B4;
  *(result + 224) = sub_27740748C;
  *(result + 232) = sub_277407454;
  *(result + 120) = sub_27740742C;
  *(result + 128) = sub_277407404;
  *(result + 136) = sub_2774073D8;
  *(result + 144) = sub_2774073A8;
  *(result + 152) = sub_277407370;
  *(result + 344) = sub_277404980;
  *(result + 520) = sub_2774072D0;
  *(result + 32) = sub_27745A218;
  *(result + 40) = sub_27745A154;
  v2 = v1 == 0;
  v3 = sub_277459FB4;
  if (!v2)
  {
    v3 = sub_27745AEF0;
  }

  *(result + 48) = v3;
  *(result + 320) = sub_277459F3C;
  *(result + 328) = sub_277459E60;
  *(result + 280) = sub_277459DC8;
  *(result + 288) = sub_277459D2C;
  *(result + 160) = sub_27745AE84;
  *(result + 168) = sub_27745ADB0;
  *(result + 176) = sub_27745AD00;
  *(result + 184) = sub_277459B10;
  *(result + 192) = sub_277459AD4;
  *(result + 80) = sub_27745ACA4;
  *(result + 88) = sub_27745AC0C;
  *(result + 96) = sub_27745AB68;
  *(result + 104) = sub_27745990C;
  *(result + 112) = sub_2774598D4;
  *(result + 240) = sub_277459730;
  *(result + 248) = sub_2774594B8;
  *(result + 256) = sub_277459190;
  *(result + 264) = sub_277458DB8;
  *(result + 272) = sub_27745899C;
  *(result + 336) = sub_277458844;
  *(result + 352) = sub_2774587A8;
  *(result + 296) = sub_277458708;
  return result;
}

uint64_t sub_2774072D0(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = 11 - a3;
    v11 = 2 * a2;
    v12 = 2 * a4;
    do
    {
      v13 = 0;
      do
      {
        result = sub_2773FB848(v8, a3);
        *(a5 + v13) = result << v10;
        v13 += 2;
      }

      while (v11 != v13);
      ++v9;
      a5 += v12;
    }

    while (v9 != a2);
  }

  return result;
}

void sub_277407370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 64; ++i)
  {
    v5 = 0;
    v6 = (a2 + 2 * i);
    v7 = vld1q_dup_s16(v6);
    do
    {
      *(a4 + v5) = v7;
      v5 += 16;
    }

    while (v5 != 128);
    a4 += 2 * a3;
  }
}

int16x8_t sub_2774073A8(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 2;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-2] = result;
    v5[-1] = result;
    *v5 = result;
    v5[1] = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 64);
  return result;
}

int16x8_t sub_2774073D8(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 1;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-1] = result;
    *v5 = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 32);
  return result;
}

int16x8_t sub_277407404(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  for (i = 0; i != 16; i += 2)
  {
    v5 = (a2 + i);
    result = vld1q_dup_s16(v5);
    *a4 = result;
    a4 = (a4 + 2 * a3);
  }

  return result;
}

int16x4_t sub_27740742C(uint64_t a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  for (i = 0; i != 8; i += 2)
  {
    v5 = (a2 + i);
    result = vld1_dup_s16(v5);
    *a4 = result;
    a4 = (a4 + 2 * a3);
  }

  return result;
}

__n128 sub_277407454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 64;
  do
  {
    v5 = *(a2 + 256);
    v6 = *(a2 + 272);
    v7 = *(a2 + 304);
    *(a4 + 32) = *(a2 + 288);
    *(a4 + 48) = v7;
    *a4 = v5;
    *(a4 + 16) = v6;
    result = *(a2 + 320);
    v9 = *(a2 + 336);
    v10 = *(a2 + 368);
    *(a4 + 96) = *(a2 + 352);
    *(a4 + 112) = v10;
    *(a4 + 64) = result;
    *(a4 + 80) = v9;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_27740748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 32;
  do
  {
    result = *(a2 + 128);
    v6 = *(a2 + 144);
    v7 = *(a2 + 176);
    *(a4 + 32) = *(a2 + 160);
    *(a4 + 48) = v7;
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_2774074B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 16;
  do
  {
    result = *(a2 + 64);
    v6 = *(a2 + 80);
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_2774074D4(uint64_t a1, __n128 *a2, uint64_t a3, __n128 *a4)
{
  v4 = 8;
  do
  {
    result = a2[2];
    *a4 = result;
    a4 = (a4 + 2 * a3);
    --v4;
  }

  while (v4);
  return result;
}

void sub_2774074F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4;
  do
  {
    *a4 = *(a2 + 16);
    a4 = (a4 + 2 * a3);
    --v4;
  }

  while (v4);
}

void sub_277407514(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1 << a1;
    v7 = (((1 << a1) + 4) >> 3);
    if (1 << a1 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 2 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 2);
    }

    else
    {
      v10 = (a4 + 2 * (byte_27750DC84[9 * a1 - 27 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 2 << a1;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = 2 * v13;
      v16 = a5 + 2 * v13 - 2;
      v17 = a4 + 2 * a3 * (v13 - 1) - 2;
      v18 = v15 - 2 * v8 + a5 + 8;
      v19 = vdupq_n_s64(8uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v20 = v17;
            v21 = v16;
            v22 = v8 + 1;
            do
            {
              v11 = *v20;
              *v21-- = *v20;
              --v22;
              v20 -= a3;
            }

            while (v22 > 1);
          }
        }

        else
        {
          v23 = v18;
          v24 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v25 = xmmword_27750D320;
          v26 = xmmword_27750D310;
          v27 = xmmword_27750D300;
          v28 = xmmword_27750D2F0;
          do
          {
            v29 = vmovn_s64(vcgeq_u64(v14, v25));
            if (vuzp1_s8(vuzp1_s16(v29, *v14.i8), *v14.i8).u8[0])
            {
              *(v23 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v29, *&v14), *&v14).i8[1])
            {
              *(v23 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v26))), *&v14).i8[2])
            {
              *(v23 - 2) = v11;
              *(v23 - 1) = v11;
            }

            v30 = vmovn_s64(vcgeq_u64(v14, v27));
            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i32[1])
            {
              *v23 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i8[5])
            {
              v23[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v28)))).i8[6])
            {
              v23[2] = v11;
              v23[3] = v11;
            }

            v27 = vaddq_s64(v27, v19);
            v26 = vaddq_s64(v26, v19);
            v25 = vaddq_s64(v25, v19);
            v23 += 8;
            v28 = vaddq_s64(v28, v19);
            v24 -= 8;
          }

          while (v24);
        }

        ++v12;
        v16 -= 2 * v8;
        v17 -= 2 * a3 * v8;
        v18 -= 2 * v8;
      }

      while (v12 != v7);
      v31 = 0;
      if (v6 >= 8)
      {
        v32 = 8;
      }

      else
      {
        v32 = v6;
      }

      v33 = a5 + 2 * v6 - 2;
      v34 = a4 + 2 * a3 * (v6 - 1) - 2;
      v35 = 2 * v6 - 2 * v32 + a5 + 8;
      do
      {
        if (((a2 >> v31) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v36 = v34;
            v37 = v33;
            v38 = v32 + 1;
            do
            {
              v11 = *v36;
              *v37-- = *v36;
              --v38;
              v36 -= a3;
            }

            while (v38 > 1);
          }
        }

        else
        {
          v39 = v35;
          v40 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v41 = xmmword_27750D320;
          v42 = xmmword_27750D310;
          v43 = xmmword_27750D300;
          v44 = xmmword_27750D2F0;
          do
          {
            v45 = vmovn_s64(vcgeq_u64(v14, v41));
            if (vuzp1_s8(vuzp1_s16(v45, *v14.i8), *v14.i8).u8[0])
            {
              *(v39 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v45, *&v14), *&v14).i8[1])
            {
              *(v39 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v42))), *&v14).i8[2])
            {
              *(v39 - 2) = v11;
              *(v39 - 1) = v11;
            }

            v46 = vmovn_s64(vcgeq_u64(v14, v43));
            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i32[1])
            {
              *v39 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i8[5])
            {
              v39[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v44)))).i8[6])
            {
              v39[2] = v11;
              v39[3] = v11;
            }

            v47 = vdupq_n_s64(8uLL);
            v43 = vaddq_s64(v43, v47);
            v42 = vaddq_s64(v42, v47);
            v41 = vaddq_s64(v41, v47);
            v44 = vaddq_s64(v44, v47);
            v39 += 8;
            v40 -= 8;
          }

          while (v40);
        }

        ++v31;
        v33 -= 2 * v32;
        v34 -= 2 * a3 * v32;
        v35 -= 2 * v32;
      }

      while (v31 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 2 * ~a3);
    }

    *(a5 - 2) = v11;
    if (v7 >= 1)
    {
      v48 = 0;
      v49 = 2 << a1;
      v50 = v8;
      if (v8 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v8;
      }

      v52 = (a5 + 2 * v49);
      v53 = vdupq_n_s64(v8 - 1);
      v54 = 2 * v8;
      v55 = vdupq_n_s64(8uLL);
      v56 = (a4 - 2 * a3);
      v57 = v52 + 4;
      do
      {
        if (((a2 >> v48) & 0x200) != 0)
        {
          if (a1 != 31)
          {
            v58 = v56;
            v59 = v52;
            v60 = v51;
            do
            {
              v61 = *v58++;
              v11 = v61;
              *v59++ = v61;
              --v60;
            }

            while (v60);
          }
        }

        else
        {
          v62 = v57;
          v63 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v64 = xmmword_27750D320;
          v65 = xmmword_27750D310;
          v66 = xmmword_27750D300;
          v67 = xmmword_27750D2F0;
          do
          {
            v68 = vmovn_s64(vcgeq_u64(v53, v64));
            if (vuzp1_s8(vuzp1_s16(v68, *v53.i8), *v53.i8).u8[0])
            {
              *(v62 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v68, *&v53), *&v53).i8[1])
            {
              *(v62 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v65))), *&v53).i8[2])
            {
              *(v62 - 2) = v11;
              *(v62 - 1) = v11;
            }

            v69 = vmovn_s64(vcgeq_u64(v53, v66));
            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i32[1])
            {
              *v62 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i8[5])
            {
              v62[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v67)))).i8[6])
            {
              v62[2] = v11;
              v62[3] = v11;
            }

            v66 = vaddq_s64(v66, v55);
            v65 = vaddq_s64(v65, v55);
            v64 = vaddq_s64(v64, v55);
            v62 += 8;
            v67 = vaddq_s64(v67, v55);
            v63 -= 8;
          }

          while (v63);
        }

        ++v48;
        v52 = (v52 + v54);
        v56 = (v56 + v54);
        v57 = (v57 + v54);
      }

      while (v48 != v7);
      v70 = 0;
      v71 = 2 * v6;
      v72 = (a5 + 2 * v49 + v71);
      v73 = 2 * v50;
      v74 = (a4 + v71 - 2 * a3);
      v75 = v72 + 4;
      v76 = vdupq_n_s64(8uLL);
      do
      {
        if (((a2 >> v70) & 0x2000) != 0)
        {
          if (a1 != 31)
          {
            v77 = v74;
            v78 = v72;
            v79 = v51;
            do
            {
              v80 = *v77++;
              v11 = v80;
              *v78++ = v80;
              --v79;
            }

            while (v79);
          }
        }

        else
        {
          v81 = v75;
          v82 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v83 = xmmword_27750D320;
          v84 = xmmword_27750D310;
          v85 = xmmword_27750D300;
          v86 = xmmword_27750D2F0;
          do
          {
            v87 = vmovn_s64(vcgeq_u64(v53, v83));
            if (vuzp1_s8(vuzp1_s16(v87, *v53.i8), *v53.i8).u8[0])
            {
              *(v81 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v87, *&v53), *&v53).i8[1])
            {
              *(v81 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v84))), *&v53).i8[2])
            {
              *(v81 - 2) = v11;
              *(v81 - 1) = v11;
            }

            v88 = vmovn_s64(vcgeq_u64(v53, v85));
            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i32[1])
            {
              *v81 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i8[5])
            {
              v81[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v86)))).i8[6])
            {
              v81[2] = v11;
              v81[3] = v11;
            }

            v85 = vaddq_s64(v85, v76);
            v84 = vaddq_s64(v84, v76);
            v83 = vaddq_s64(v83, v76);
            v81 += 8;
            v86 = vaddq_s64(v86, v76);
            v82 -= 8;
          }

          while (v82);
        }

        ++v70;
        v72 = (v72 + v73);
        v74 = (v74 + v73);
        v75 = (v75 + v73);
      }

      while (v70 != v7);
    }
  }

  else
  {

    memset_pattern16((a5 - 2), &unk_27750D830, (8 * ((4 << a1) >> 2)) | 2);
  }
}

void sub_277407C9C(int a1, int a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v6 = a1;
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &a5[v10];
        v13 = (a4 + 2 * a3 * v10 - 2);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }

LABEL_32:
      if ((a2 & 0xF0) != 0)
      {
        if (a1 != 31)
        {
          v27 = (a4 - 2);
          if (v10 <= 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = v10;
          }

          v29 = a5;
          do
          {
            *v29++ = *v27;
            v27 += a3;
            --v28;
          }

          while (v28);
        }
      }

      else
      {
        v30 = a5[v10];
        v31 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v32 = vdupq_n_s64(v10 - 1);
        v33 = xmmword_27750D2F0;
        v34 = xmmword_27750D300;
        v35 = xmmword_27750D310;
        v36 = xmmword_27750D320;
        v37 = a5 + 4;
        v38 = vdupq_n_s64(8uLL);
        do
        {
          v39 = vmovn_s64(vcgeq_u64(v32, v36));
          if (vuzp1_s8(vuzp1_s16(v39, *v32.i8), *v32.i8).u8[0])
          {
            *(v37 - 4) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(v39, *&v32), *&v32).i8[1])
          {
            *(v37 - 3) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v35))), *&v32).i8[2])
          {
            *(v37 - 2) = v30;
            *(v37 - 1) = v30;
          }

          v40 = vmovn_s64(vcgeq_u64(v32, v34));
          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i32[1])
          {
            *v37 = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i8[5])
          {
            v37[1] = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v33)))).i8[6])
          {
            v37[2] = v30;
            v37[3] = v30;
          }

          v34 = vaddq_s64(v34, v38);
          v35 = vaddq_s64(v35, v38);
          v36 = vaddq_s64(v36, v38);
          v37 += 8;
          v33 = vaddq_s64(v33, v38);
          v31 -= 8;
        }

        while (v31);
      }

      v41 = (a4 + 2 * ~a3);
      if ((a2 & 0x100) == 0)
      {
        v41 = a5;
      }

      v42 = *v41;
      *(a5 - 1) = v42;
      v43 = 2 << a1;
      if ((a2 & 0x1E00) != 0)
      {
        memcpy(&a5[v43], (a4 - 2 * a3), 2 * v10);
      }

      else
      {
        v44 = v43;
        v45 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = vdupq_n_s64(v10 - 1);
        v47 = &a5[v44 + 4];
        v48 = xmmword_27750D2F0;
        v49 = xmmword_27750D300;
        v50 = xmmword_27750D310;
        v51 = xmmword_27750D320;
        v52 = vdupq_n_s64(8uLL);
        do
        {
          v53 = vmovn_s64(vcgeq_u64(v46, v51));
          if (vuzp1_s8(vuzp1_s16(v53, *v46.i8), *v46.i8).u8[0])
          {
            *(v47 - 4) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(v53, *&v46), *&v46).i8[1])
          {
            *(v47 - 3) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v50))), *&v46).i8[2])
          {
            *(v47 - 2) = v42;
            *(v47 - 1) = v42;
          }

          v54 = vmovn_s64(vcgeq_u64(v46, v49));
          if (vuzp1_s8(*&v46, vuzp1_s16(v54, *&v46)).i32[1])
          {
            *v47 = v42;
          }

          if (vuzp1_s8(*&v46, vuzp1_s16(v54, *&v46)).i8[5])
          {
            v47[1] = v42;
          }

          if (vuzp1_s8(*&v46, vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v48)))).i8[6])
          {
            v47[2] = v42;
            v47[3] = v42;
          }

          v49 = vaddq_s64(v49, v52);
          v50 = vaddq_s64(v50, v52);
          v51 = vaddq_s64(v51, v52);
          v47 += 8;
          v48 = vaddq_s64(v48, v52);
          v45 -= 8;
        }

        while (v45);
      }

      v55 = &a5[3 << v6];
      if ((a2 & 0x1E000) != 0)
      {

        memcpy(v55, (a4 + 2 * v10 - 2 * a3), 2 * v10);
      }

      else
      {
        v56 = *(v55 - 1);
        v57 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v58 = vdupq_n_s64(v10 - 1);
        v59 = &a5[(3 << v6) + 4];
        v60 = xmmword_27750D2F0;
        v61 = xmmword_27750D300;
        v62 = xmmword_27750D310;
        v63 = xmmword_27750D320;
        v64 = vdupq_n_s64(8uLL);
        do
        {
          v65 = vmovn_s64(vcgeq_u64(v58, v63));
          if (vuzp1_s8(vuzp1_s16(v65, *v58.i8), *v58.i8).u8[0])
          {
            *(v59 - 4) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(v65, *&v58), *&v58).i8[1])
          {
            *(v59 - 3) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v62))), *&v58).i8[2])
          {
            *(v59 - 2) = v56;
            *(v59 - 1) = v56;
          }

          v66 = vmovn_s64(vcgeq_u64(v58, v61));
          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i32[1])
          {
            *v59 = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i8[5])
          {
            v59[1] = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v60)))).i8[6])
          {
            v59[2] = v56;
            v59[3] = v56;
          }

          v61 = vaddq_s64(v61, v64);
          v62 = vaddq_s64(v62, v64);
          v63 = vaddq_s64(v63, v64);
          v59 += 8;
          v60 = vaddq_s64(v60, v64);
          v57 -= 8;
        }

        while (v57);
      }

      return;
    }

    if ((a2 & 0xF0) != 0)
    {
      v14 = (a4 + 2 * (v10 - 1) * a3 - 2);
      goto LABEL_18;
    }

    if ((a2 & 0x100) != 0)
    {
      v15 = ~a3;
    }

    else
    {
      if ((a2 & 0x1E00) != 0)
      {
        v14 = (a4 - 2 * a3);
        goto LABEL_18;
      }

      v15 = v10 - a3;
    }

    v14 = (a4 + 2 * v15);
LABEL_18:
    v16 = *v14;
    v17 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = vdupq_n_s64(v10 - 1);
    v19 = &a5[v10 + 4];
    v20 = xmmword_27750D2F0;
    v21 = xmmword_27750D300;
    v22 = xmmword_27750D310;
    v23 = xmmword_27750D320;
    v24 = vdupq_n_s64(8uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v18, v23));
      if (vuzp1_s8(vuzp1_s16(v25, *v18.i8), *v18.i8).u8[0])
      {
        *(v19 - 4) = v16;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v18), *&v18).i8[1])
      {
        *(v19 - 3) = v16;
      }

      if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v22))), *&v18).i8[2])
      {
        *(v19 - 2) = v16;
        *(v19 - 1) = v16;
      }

      v26 = vmovn_s64(vcgeq_u64(v18, v21));
      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i32[1])
      {
        *v19 = v16;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i8[5])
      {
        v19[1] = v16;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v20)))).i8[6])
      {
        v19[2] = v16;
        v19[3] = v16;
      }

      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v23 = vaddq_s64(v23, v24);
      v19 += 8;
      v20 = vaddq_s64(v20, v24);
      v17 -= 8;
    }

    while (v17);
    goto LABEL_32;
  }

  memset_pattern16(a5 - 1, &unk_27750D830, (8 * ((4 << a1) >> 2)) | 2);
}

uint64_t sub_277408314(uint64_t result)
{
  *(result + 8) = sub_2774091F0;
  v1 = *(result + 538);
  v2 = sub_277408B4C;
  if (v1 == 2)
  {
    v2 = sub_277408DD4;
  }

  if (v1 == 3)
  {
    v2 = sub_2774085F4;
  }

  *(result + 24) = v2;
  *(result + 56) = sub_2774034C0;
  *(result + 64) = sub_277403418;
  *(result + 72) = sub_277403370;
  *(result + 528) = sub_2774084E8;
  *(result + 456) = sub_27745D6E0;
  *(result + 464) = sub_27745D694;
  *(result + 360) = sub_27745D5E4;
  *(result + 368) = sub_27745D544;
  *(result + 392) = sub_27745D51C;
  *(result + 400) = sub_27745D4EC;
  *(result + 408) = sub_27745D4C0;
  *(result + 416) = sub_27745D484;
  *(result + 424) = sub_27745D444;
  *(result + 432) = sub_27745D404;
  *(result + 440) = sub_27745D3D4;
  *(result + 448) = sub_27745D39C;
  *(result + 488) = sub_27745D190;
  *(result + 496) = sub_27745CE88;
  *(result + 504) = sub_27745CB38;
  *(result + 512) = sub_27745C7D4;
  *(result + 472) = sub_27745C778;
  *(result + 376) = sub_27745C678;
  *(result + 480) = sub_27745C5E4;
  *(result + 384) = sub_27745C4A8;
  return result;
}

uint64_t sub_2774084E8(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= 1)
  {
    v6 = a6;
    v9 = result;
    v10 = 0;
    v11 = a6 + 2;
    v18 = a2;
    v12 = 10 - a4;
    v13 = 4 * a2;
    v14 = 2 * a5;
    do
    {
      if (a2 >= 1)
      {
        v15 = 0;
        do
        {
          result = sub_2773FB848(v9, a4);
          *(v6 + v15) = result << v12;
          v15 += 4;
        }

        while (v13 != v15);
      }

      ++v10;
      v6 += v14;
    }

    while (v10 != a3);
    v16 = 0;
    do
    {
      if (a2 >= 1)
      {
        v17 = 0;
        do
        {
          result = sub_2773FB848(v9, a4);
          *(v11 + v17) = result << v12;
          v17 += 4;
        }

        while (4 * v18 != v17);
      }

      ++v16;
      v11 += v14;
    }

    while (v16 != a3);
  }

  return result;
}

void sub_2774085F4(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1 << a1;
    v7 = (((1 << a1) + 4) >> 3);
    if (1 << a1 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 4);
    }

    else
    {
      v10 = (a4 + 4 * (byte_27750DC84[9 * a1 - 27 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 2 << a1;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = 4 * v13;
      v16 = a5 + 4 * v13 - 4;
      v17 = a4 + 4 * a3 * (v13 - 1) - 4;
      v18 = v15 - 4 * v8 + a5 + 8;
      v19 = vdupq_n_s64(4uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v20 = v17;
            v21 = v16;
            v22 = v8 + 1;
            do
            {
              v11 = *v20;
              *v21-- = *v20;
              --v22;
              v20 -= a3;
            }

            while (v22 > 1);
          }
        }

        else
        {
          v23 = v18;
          v24 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v25 = xmmword_27750D320;
          v26 = xmmword_27750D310;
          do
          {
            v27 = vmovn_s64(vcgeq_u64(v14, v25));
            if (vuzp1_s16(v27, *v14.i8).u8[0])
            {
              *(v23 - 2) = v11;
            }

            if (vuzp1_s16(v27, *&v14).i8[2])
            {
              *(v23 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v26))).i32[1])
            {
              *v23 = v11;
              v23[1] = v11;
            }

            v26 = vaddq_s64(v26, v19);
            v25 = vaddq_s64(v25, v19);
            v23 += 4;
            v24 -= 4;
          }

          while (v24);
        }

        ++v12;
        v16 -= 4 * v8;
        v17 -= 4 * a3 * v8;
        v18 -= 4 * v8;
      }

      while (v12 != v7);
      v28 = 0;
      if (v6 >= 8)
      {
        v29 = 8;
      }

      else
      {
        v29 = v6;
      }

      v30 = a5 + 4 * v6 - 4;
      v31 = a4 + 4 * a3 * (v6 - 1) - 4;
      v32 = vdupq_n_s64(4uLL);
      v33 = 4 * v6 - 4 * v29 + a5 + 8;
      do
      {
        if (((a2 >> v28) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v34 = v31;
            v35 = v30;
            v36 = v29 + 1;
            do
            {
              v11 = *v34;
              *v35-- = *v34;
              --v36;
              v34 -= a3;
            }

            while (v36 > 1);
          }
        }

        else
        {
          v37 = v33;
          v38 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v39 = xmmword_27750D320;
          v40 = xmmword_27750D310;
          do
          {
            v41 = vmovn_s64(vcgeq_u64(v14, v39));
            if (vuzp1_s16(v41, *v14.i8).u8[0])
            {
              *(v37 - 2) = v11;
            }

            if (vuzp1_s16(v41, *&v14).i8[2])
            {
              *(v37 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v40))).i32[1])
            {
              *v37 = v11;
              v37[1] = v11;
            }

            v40 = vaddq_s64(v40, v32);
            v39 = vaddq_s64(v39, v32);
            v37 += 4;
            v38 -= 4;
          }

          while (v38);
        }

        ++v28;
        v30 -= 4 * v29;
        v31 -= 4 * a3 * v29;
        v33 -= 4 * v29;
      }

      while (v28 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v11;
    if (v7 >= 1)
    {
      v42 = 0;
      v43 = 2 << a1;
      v44 = v8;
      if (v8 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v8;
      }

      v46 = v43;
      v47 = (a5 + 4 * v43);
      v48 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = vdupq_n_s64(v8 - 1);
      v50 = 4 * v8;
      v51 = (a4 - 4 * a3);
      v52 = vdupq_n_s64(4uLL);
      v53 = v47 + 2;
      do
      {
        if (((a2 >> v42) & 0x200) != 0)
        {
          if (a1 != 31)
          {
            v54 = v51;
            v55 = v47;
            v56 = v45;
            do
            {
              v57 = *v54++;
              v11 = v57;
              *v55++ = v57;
              --v56;
            }

            while (v56);
          }
        }

        else
        {
          v58 = v53;
          v59 = (v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v60 = xmmword_27750D320;
          v61 = xmmword_27750D310;
          do
          {
            v62 = vmovn_s64(vcgeq_u64(v49, v60));
            if (vuzp1_s16(v62, *v49.i8).u8[0])
            {
              *(v58 - 2) = v11;
            }

            if (vuzp1_s16(v62, *&v49).i8[2])
            {
              *(v58 - 1) = v11;
            }

            if (vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v61))).i32[1])
            {
              *v58 = v11;
              v58[1] = v11;
            }

            v61 = vaddq_s64(v61, v52);
            v60 = vaddq_s64(v60, v52);
            v58 += 4;
            v59 -= 4;
          }

          while (v59);
        }

        ++v42;
        v47 = (v47 + v50);
        v51 = (v51 + v50);
        v53 = (v53 + v50);
      }

      while (v42 != v7);
      v63 = 0;
      v64 = 4 * v46;
      v65 = 4 * v6;
      v66 = (a5 + v64 + v65);
      v67 = 4 * v44;
      v68 = (a4 + v65 - 4 * a3);
      v69 = v66 + 2;
      v70 = vdupq_n_s64(4uLL);
      do
      {
        if (((a2 >> v63) & 0x2000) != 0)
        {
          if (a1 != 31)
          {
            v71 = v68;
            v72 = v66;
            v73 = v45;
            do
            {
              v74 = *v71++;
              v11 = v74;
              *v72++ = v74;
              --v73;
            }

            while (v73);
          }
        }

        else
        {
          v75 = v69;
          v76 = v48;
          v77 = xmmword_27750D320;
          v78 = xmmword_27750D310;
          do
          {
            v79 = vmovn_s64(vcgeq_u64(v49, v77));
            if (vuzp1_s16(v79, *v49.i8).u8[0])
            {
              *(v75 - 2) = v11;
            }

            if (vuzp1_s16(v79, *&v49).i8[2])
            {
              *(v75 - 1) = v11;
            }

            if (vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v78))).i32[1])
            {
              *v75 = v11;
              v75[1] = v11;
            }

            v78 = vaddq_s64(v78, v70);
            v77 = vaddq_s64(v77, v70);
            v75 += 4;
            v76 -= 4;
          }

          while (v76);
        }

        ++v63;
        v66 = (v66 + v67);
        v68 = (v68 + v67);
        v69 = (v69 + v67);
      }

      while (v63 != v7);
    }
  }

  else
  {

    memset_pattern16((a5 - 4), &unk_27750D840, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_277408B4C(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = (1 << a1);
    v6 = (v5 >> 2);
    v7 = __clz(__rbit32(a2));
    if (v7 < 9)
    {
      v8 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 + 18 + v7]) * a3 - 4);
    }

    else
    {
      v8 = (a4 + 4 * (byte_27750DC84[9 * a1 + 9 + v7] - a3));
    }

    v9 = *v8;
    if (v6 >= 1)
    {
      v10 = 0;
      v11 = 2 << a1;
      v12 = a5 + 4 * v11;
      v13 = a4 + 4 * a3 * (v11 - 1) - 4;
      do
      {
        v14 = v10 + 1;
        if ((a2 >> v10))
        {
          v15 = -4;
          v16 = v13;
          do
          {
            v9 = *v16;
            *(v12 + v15) = *v16;
            v15 -= 4;
            v16 -= a3;
          }

          while (v15 != -20);
        }

        else
        {
          *(a5 + 4 * (v11 - 4 * v14)) = vdupq_n_s32(v9);
        }

        v12 -= 16;
        v13 -= 16 * a3;
        v10 = v14;
      }

      while (v14 != v6);
      v17 = 0;
      v18 = a5 + 4 * v5;
      v19 = a4 + 4 * a3 * (v5 - 1) - 4;
      do
      {
        v20 = v17 + 1;
        if (((a2 >> v17) & 0x10) != 0)
        {
          v21 = -4;
          v22 = v19;
          do
          {
            v9 = *v22;
            *(v18 + v21) = *v22;
            v21 -= 4;
            v22 -= a3;
          }

          while (v21 != -20);
        }

        else
        {
          *(a5 + 4 * (v5 - 4 * v20)) = vdupq_n_s32(v9);
        }

        v18 -= 16;
        v19 -= 16 * a3;
        v17 = v20;
      }

      while (v20 != v6);
    }

    if ((a2 & 0x100) != 0)
    {
      v9 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v9;
    if (v6 >= 1)
    {
      v23 = 0;
      v24 = 2 << a1;
      v25 = a5 + 4 * v24;
      v26 = a4 - 4 * a3;
      v27 = v25;
      do
      {
        if (((a2 >> v23) & 0x200) != 0)
        {
          for (i = 0; i != 16; i += 4)
          {
            v9 = *(v26 + i);
            *(v27 + i) = v9;
          }
        }

        else
        {
          *(v25 + 16 * v23) = vdupq_n_s32(v9);
        }

        ++v23;
        v27 += 16;
        v26 += 16;
      }

      while (v23 != v6);
      v29 = 0;
      v30 = a5 + 4 * v24 + 4 * v5;
      v31 = a4 + 4 * (1 << a1) - 4 * a3;
      do
      {
        if (((a2 >> v29) & 0x2000) != 0)
        {
          for (j = 0; j != 16; j += 4)
          {
            v9 = *(v31 + j);
            *(v30 + j) = v9;
          }
        }

        else
        {
          *(v25 + 4 * (v5 + 4 * v29)) = vdupq_n_s32(v9);
        }

        ++v29;
        v30 += 16;
        v31 += 16;
      }

      while (v29 != v6);
    }
  }

  else
  {
    memset_pattern16((a5 - 4), &unk_27750D840, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_277408DD4(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = (1 << a1);
    v7 = ((v6 + 4) >> 3);
    if (v6 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 4);
    }

    else
    {
      v10 = (a4 + 4 * (byte_27750DC84[9 * a1 + 9 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = a5 + 4 * (2 << a1) - 4;
      v16 = a4 + 4 * a3 * ((2 << a1) - 1) - 4;
      v17 = 4 * (2 << a1) - 4 * v8 + a5 + 8;
      v18 = vdupq_n_s64(4uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v19 = v16;
            v20 = v15;
            v21 = v8 + 1;
            do
            {
              v11 = *v19;
              *v20-- = *v19;
              --v21;
              v19 -= a3;
            }

            while (v21 > 1);
          }
        }

        else
        {
          v22 = v17;
          v23 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v24 = xmmword_27750D320;
          v25 = xmmword_27750D310;
          do
          {
            v26 = vmovn_s64(vcgeq_u64(v14, v24));
            if (vuzp1_s16(v26, *v14.i8).u8[0])
            {
              *(v22 - 2) = v11;
            }

            if (vuzp1_s16(v26, *&v14).i8[2])
            {
              *(v22 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v25))).i32[1])
            {
              *v22 = v11;
              v22[1] = v11;
            }

            v25 = vaddq_s64(v25, v18);
            v24 = vaddq_s64(v24, v18);
            v22 += 4;
            v23 -= 4;
          }

          while (v23);
        }

        ++v12;
        v15 -= 4 * v8;
        v16 -= 4 * a3 * v8;
        v17 -= 4 * v8;
      }

      while (v12 != v7);
      v27 = 0;
      if (v6 >= 8)
      {
        v28 = 8;
      }

      else
      {
        v28 = v6;
      }

      v29 = a5 + 4 * v6 - 4;
      v30 = a4 + 4 * a3 * (v6 - 1) - 4;
      v31 = 4 * v6 - 4 * v28 + a5 + 8;
      v32 = vdupq_n_s64(4uLL);
      do
      {
        if (((a2 >> v27) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v33 = v30;
            v34 = v29;
            v35 = v28 + 1;
            do
            {
              v11 = *v33;
              *v34-- = *v33;
              --v35;
              v33 -= a3;
            }

            while (v35 > 1);
          }
        }

        else
        {
          v36 = v31;
          v37 = v13;
          v38 = xmmword_27750D320;
          v39 = xmmword_27750D310;
          do
          {
            v40 = vmovn_s64(vcgeq_u64(v14, v38));
            if (vuzp1_s16(v40, *v14.i8).u8[0])
            {
              *(v36 - 2) = v11;
            }

            if (vuzp1_s16(v40, *&v14).i8[2])
            {
              *(v36 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v39))).i32[1])
            {
              *v36 = v11;
              v36[1] = v11;
            }

            v39 = vaddq_s64(v39, v32);
            v38 = vaddq_s64(v38, v32);
            v36 += 4;
            v37 -= 4;
          }

          while (v37);
        }

        ++v27;
        v29 -= 4 * v28;
        v30 -= 4 * a3 * v28;
        v31 -= 4 * v28;
      }

      while (v27 != v7);
    }

    v41 = (v6 >> 2);
    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v11;
    if (v41 >= 1)
    {
      v42 = 0;
      v43 = 2 << a1;
      v44 = a5 + 4 * v43;
      v45 = a4 - 4 * a3;
      v46 = v44;
      do
      {
        if (((a2 >> v42) & 0x200) != 0)
        {
          for (i = 0; i != 16; i += 4)
          {
            v11 = *(v45 + i);
            *(v46 + i) = v11;
          }
        }

        else
        {
          *(v44 + 16 * v42) = vdupq_n_s32(v11);
        }

        ++v42;
        v46 += 16;
        v45 += 16;
      }

      while (v42 != v41);
      v48 = 0;
      v49 = a5 + 4 * v43 + 4 * v6;
      v50 = a4 + 4 * (1 << a1) - 4 * a3;
      do
      {
        if (((a2 >> v48) & 0x2000) != 0)
        {
          for (j = 0; j != 16; j += 4)
          {
            v11 = *(v50 + j);
            *(v49 + j) = v11;
          }
        }

        else
        {
          *(v44 + 4 * (v6 + 4 * v48)) = vdupq_n_s32(v11);
        }

        ++v48;
        v49 += 16;
        v50 += 16;
      }

      while (v48 != v41);
    }
  }

  else
  {

    memset_pattern16((a5 - 4), &unk_27750D840, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_2774091F0(int a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = a1;
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &a5[v10];
        v13 = (a4 + 4 * a3 * v10 - 4);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v14 = (a4 + 4 * (v10 - a3));
      if ((a2 & 0x1E00) != 0)
      {
        v14 = (a4 - 4 * a3);
      }

      if ((a2 & 0x100) != 0)
      {
        v14 = (a4 + 4 * ~a3);
      }

      if ((a2 & 0xF0) != 0)
      {
        v14 = (a4 + 4 * (v10 - 1) * a3 - 4);
      }

      v15 = *v14;
      v16 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = vdupq_n_s64(v10 - 1);
      v18 = &a5[v10 + 2];
      v19 = xmmword_27750D310;
      v20 = xmmword_27750D320;
      v21 = vdupq_n_s64(4uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v20));
        if (vuzp1_s16(v22, *v17.i8).u8[0])
        {
          *(v18 - 2) = v15;
        }

        if (vuzp1_s16(v22, *&v17).i8[2])
        {
          *(v18 - 1) = v15;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v19))).i32[1])
        {
          *v18 = v15;
          v18[1] = v15;
        }

        v19 = vaddq_s64(v19, v21);
        v20 = vaddq_s64(v20, v21);
        v18 += 4;
        v16 -= 4;
      }

      while (v16);
    }

    if ((a2 & 0xF0) != 0)
    {
      if (a1 != 31)
      {
        v23 = (a4 - 4);
        if (v10 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v10;
        }

        v25 = a5;
        do
        {
          *v25++ = *v23;
          v23 += a3;
          --v24;
        }

        while (v24);
      }
    }

    else
    {
      v26 = a5[v10];
      v27 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v28 = vdupq_n_s64(v10 - 1);
      v29 = xmmword_27750D310;
      v30 = xmmword_27750D320;
      v31 = a5 + 2;
      v32 = vdupq_n_s64(4uLL);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v28, v30));
        if (vuzp1_s16(v33, *v28.i8).u8[0])
        {
          *(v31 - 2) = v26;
        }

        if (vuzp1_s16(v33, *&v28).i8[2])
        {
          *(v31 - 1) = v26;
        }

        if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v29))).i32[1])
        {
          *v31 = v26;
          v31[1] = v26;
        }

        v29 = vaddq_s64(v29, v32);
        v30 = vaddq_s64(v30, v32);
        v31 += 4;
        v27 -= 4;
      }

      while (v27);
    }

    v34 = (a4 + 4 * ~a3);
    if ((a2 & 0x100) == 0)
    {
      v34 = a5;
    }

    v35 = *v34;
    *(a5 - 1) = v35;
    v36 = 2 << a1;
    if ((a2 & 0x1E00) != 0)
    {
      memcpy(&a5[v36], (a4 - 4 * a3), 4 * v10);
    }

    else
    {
      v37 = v36;
      v38 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v39 = vdupq_n_s64(v10 - 1);
      v40 = &a5[v37 + 2];
      v41 = xmmword_27750D310;
      v42 = xmmword_27750D320;
      v43 = vdupq_n_s64(4uLL);
      do
      {
        v44 = vmovn_s64(vcgeq_u64(v39, v42));
        if (vuzp1_s16(v44, *v39.i8).u8[0])
        {
          *(v40 - 2) = v35;
        }

        if (vuzp1_s16(v44, *&v39).i8[2])
        {
          *(v40 - 1) = v35;
        }

        if (vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v41))).i32[1])
        {
          *v40 = v35;
          v40[1] = v35;
        }

        v41 = vaddq_s64(v41, v43);
        v42 = vaddq_s64(v42, v43);
        v40 += 4;
        v38 -= 4;
      }

      while (v38);
    }

    v45 = &a5[3 << v6];
    if ((a2 & 0x1E000) != 0)
    {

      memcpy(v45, (a4 + 4 * v10 - 4 * a3), 4 * v10);
    }

    else
    {
      v46 = *(v45 - 1);
      v47 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v48 = vdupq_n_s64(v10 - 1);
      v49 = &a5[(3 << v6) + 2];
      v50 = xmmword_27750D310;
      v51 = xmmword_27750D320;
      v52 = vdupq_n_s64(4uLL);
      do
      {
        v53 = vmovn_s64(vcgeq_u64(v48, v51));
        if (vuzp1_s16(v53, *v48.i8).u8[0])
        {
          *(v49 - 2) = v46;
        }

        if (vuzp1_s16(v53, *&v48).i8[2])
        {
          *(v49 - 1) = v46;
        }

        if (vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v50))).i32[1])
        {
          *v49 = v46;
          v49[1] = v46;
        }

        v50 = vaddq_s64(v50, v52);
        v51 = vaddq_s64(v51, v52);
        v49 += 4;
        v47 -= 4;
      }

      while (v47);
    }
  }

  else
  {

    memset_pattern16(a5 - 1, &unk_27750D840, (16 * ((4 << a1) >> 2)) | 4);
  }
}

uint64_t sub_277409640(uint64_t result)
{
  *result = sub_27740A2BC;
  *(result + 16) = sub_277409B34;
  v1 = *(result + 537);
  *(result + 312) = sub_277404DA4;
  *(result + 200) = sub_277409B14;
  *(result + 208) = sub_277409AF4;
  *(result + 216) = sub_277409AD4;
  *(result + 224) = sub_277409AAC;
  *(result + 232) = sub_277409A74;
  *(result + 120) = sub_277409A4C;
  *(result + 128) = sub_277409A24;
  *(result + 136) = sub_2774099F8;
  *(result + 144) = sub_2774099C8;
  *(result + 152) = sub_277409990;
  *(result + 520) = sub_2774098F0;
  *(result + 32) = sub_27745A218;
  *(result + 40) = sub_27745A154;
  v2 = v1 == 0;
  v3 = sub_277459FB4;
  if (!v2)
  {
    v3 = sub_27745AA8C;
  }

  *(result + 48) = v3;
  *(result + 320) = sub_277459F3C;
  *(result + 328) = sub_277459E60;
  *(result + 280) = sub_277459DC8;
  *(result + 288) = sub_277459D2C;
  *(result + 160) = sub_27745AA20;
  *(result + 168) = sub_27745A94C;
  *(result + 176) = sub_27745A89C;
  *(result + 184) = sub_277459B10;
  *(result + 192) = sub_277459AD4;
  *(result + 80) = sub_27745A840;
  *(result + 88) = sub_27745A7A8;
  *(result + 96) = sub_27745A704;
  *(result + 104) = sub_27745990C;
  *(result + 112) = sub_2774598D4;
  *(result + 240) = sub_277459730;
  *(result + 248) = sub_2774594B8;
  *(result + 256) = sub_277459190;
  *(result + 264) = sub_277458DB8;
  *(result + 272) = sub_27745899C;
  *(result + 336) = sub_277458844;
  *(result + 352) = sub_2774587A8;
  *(result + 296) = sub_277458708;
  *(result + 344) = sub_2774586A8;
  *(result + 304) = sub_2774585A8;
  return result;
}

uint64_t sub_2774098F0(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = 10 - a3;
    v11 = 2 * a2;
    v12 = 2 * a4;
    do
    {
      v13 = 0;
      do
      {
        result = sub_2773FB848(v8, a3);
        *(a5 + v13) = result << v10;
        v13 += 2;
      }

      while (v11 != v13);
      ++v9;
      a5 += v12;
    }

    while (v9 != a2);
  }

  return result;
}

void sub_277409990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 64; ++i)
  {
    v5 = 0;
    v6 = (a2 + 2 * i);
    v7 = vld1q_dup_s16(v6);
    do
    {
      *(a4 + v5) = v7;
      v5 += 16;
    }

    while (v5 != 128);
    a4 += 2 * a3;
  }
}

int16x8_t sub_2774099C8(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 2;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-2] = result;
    v5[-1] = result;
    *v5 = result;
    v5[1] = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 64);
  return result;
}

int16x8_t sub_2774099F8(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 1;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-1] = result;
    *v5 = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 32);
  return result;
}

int16x8_t sub_277409A24(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  for (i = 0; i != 16; i += 2)
  {
    v5 = (a2 + i);
    result = vld1q_dup_s16(v5);
    *a4 = result;
    a4 = (a4 + 2 * a3);
  }

  return result;
}

int16x4_t sub_277409A4C(uint64_t a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  for (i = 0; i != 8; i += 2)
  {
    v5 = (a2 + i);
    result = vld1_dup_s16(v5);
    *a4 = result;
    a4 = (a4 + 2 * a3);
  }

  return result;
}

__n128 sub_277409A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 64;
  do
  {
    v5 = *(a2 + 256);
    v6 = *(a2 + 272);
    v7 = *(a2 + 304);
    *(a4 + 32) = *(a2 + 288);
    *(a4 + 48) = v7;
    *a4 = v5;
    *(a4 + 16) = v6;
    result = *(a2 + 320);
    v9 = *(a2 + 336);
    v10 = *(a2 + 368);
    *(a4 + 96) = *(a2 + 352);
    *(a4 + 112) = v10;
    *(a4 + 64) = result;
    *(a4 + 80) = v9;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_277409AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 32;
  do
  {
    result = *(a2 + 128);
    v6 = *(a2 + 144);
    v7 = *(a2 + 176);
    *(a4 + 32) = *(a2 + 160);
    *(a4 + 48) = v7;
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_277409AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 16;
  do
  {
    result = *(a2 + 64);
    v6 = *(a2 + 80);
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_277409AF4(uint64_t a1, __n128 *a2, uint64_t a3, __n128 *a4)
{
  v4 = 8;
  do
  {
    result = a2[2];
    *a4 = result;
    a4 = (a4 + 2 * a3);
    --v4;
  }

  while (v4);
  return result;
}

void sub_277409B14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4;
  do
  {
    *a4 = *(a2 + 16);
    a4 = (a4 + 2 * a3);
    --v4;
  }

  while (v4);
}

void sub_277409B34(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1 << a1;
    v7 = (((1 << a1) + 4) >> 3);
    if (1 << a1 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 2 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 2);
    }

    else
    {
      v10 = (a4 + 2 * (byte_27750DC84[9 * a1 - 27 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 2 << a1;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = 2 * v13;
      v16 = a5 + 2 * v13 - 2;
      v17 = a4 + 2 * a3 * (v13 - 1) - 2;
      v18 = v15 - 2 * v8 + a5 + 8;
      v19 = vdupq_n_s64(8uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v20 = v17;
            v21 = v16;
            v22 = v8 + 1;
            do
            {
              v11 = *v20;
              *v21-- = *v20;
              --v22;
              v20 -= a3;
            }

            while (v22 > 1);
          }
        }

        else
        {
          v23 = v18;
          v24 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v25 = xmmword_27750D320;
          v26 = xmmword_27750D310;
          v27 = xmmword_27750D300;
          v28 = xmmword_27750D2F0;
          do
          {
            v29 = vmovn_s64(vcgeq_u64(v14, v25));
            if (vuzp1_s8(vuzp1_s16(v29, *v14.i8), *v14.i8).u8[0])
            {
              *(v23 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v29, *&v14), *&v14).i8[1])
            {
              *(v23 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v26))), *&v14).i8[2])
            {
              *(v23 - 2) = v11;
              *(v23 - 1) = v11;
            }

            v30 = vmovn_s64(vcgeq_u64(v14, v27));
            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i32[1])
            {
              *v23 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i8[5])
            {
              v23[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v28)))).i8[6])
            {
              v23[2] = v11;
              v23[3] = v11;
            }

            v27 = vaddq_s64(v27, v19);
            v26 = vaddq_s64(v26, v19);
            v25 = vaddq_s64(v25, v19);
            v23 += 8;
            v28 = vaddq_s64(v28, v19);
            v24 -= 8;
          }

          while (v24);
        }

        ++v12;
        v16 -= 2 * v8;
        v17 -= 2 * a3 * v8;
        v18 -= 2 * v8;
      }

      while (v12 != v7);
      v31 = 0;
      if (v6 >= 8)
      {
        v32 = 8;
      }

      else
      {
        v32 = v6;
      }

      v33 = a5 + 2 * v6 - 2;
      v34 = a4 + 2 * a3 * (v6 - 1) - 2;
      v35 = 2 * v6 - 2 * v32 + a5 + 8;
      do
      {
        if (((a2 >> v31) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v36 = v34;
            v37 = v33;
            v38 = v32 + 1;
            do
            {
              v11 = *v36;
              *v37-- = *v36;
              --v38;
              v36 -= a3;
            }

            while (v38 > 1);
          }
        }

        else
        {
          v39 = v35;
          v40 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v41 = xmmword_27750D320;
          v42 = xmmword_27750D310;
          v43 = xmmword_27750D300;
          v44 = xmmword_27750D2F0;
          do
          {
            v45 = vmovn_s64(vcgeq_u64(v14, v41));
            if (vuzp1_s8(vuzp1_s16(v45, *v14.i8), *v14.i8).u8[0])
            {
              *(v39 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v45, *&v14), *&v14).i8[1])
            {
              *(v39 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v42))), *&v14).i8[2])
            {
              *(v39 - 2) = v11;
              *(v39 - 1) = v11;
            }

            v46 = vmovn_s64(vcgeq_u64(v14, v43));
            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i32[1])
            {
              *v39 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i8[5])
            {
              v39[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v44)))).i8[6])
            {
              v39[2] = v11;
              v39[3] = v11;
            }

            v47 = vdupq_n_s64(8uLL);
            v43 = vaddq_s64(v43, v47);
            v42 = vaddq_s64(v42, v47);
            v41 = vaddq_s64(v41, v47);
            v44 = vaddq_s64(v44, v47);
            v39 += 8;
            v40 -= 8;
          }

          while (v40);
        }

        ++v31;
        v33 -= 2 * v32;
        v34 -= 2 * a3 * v32;
        v35 -= 2 * v32;
      }

      while (v31 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 2 * ~a3);
    }

    *(a5 - 2) = v11;
    if (v7 >= 1)
    {
      v48 = 0;
      v49 = 2 << a1;
      v50 = v8;
      if (v8 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v8;
      }

      v52 = (a5 + 2 * v49);
      v53 = vdupq_n_s64(v8 - 1);
      v54 = 2 * v8;
      v55 = vdupq_n_s64(8uLL);
      v56 = (a4 - 2 * a3);
      v57 = v52 + 4;
      do
      {
        if (((a2 >> v48) & 0x200) != 0)
        {
          if (a1 != 31)
          {
            v58 = v56;
            v59 = v52;
            v60 = v51;
            do
            {
              v61 = *v58++;
              v11 = v61;
              *v59++ = v61;
              --v60;
            }

            while (v60);
          }
        }

        else
        {
          v62 = v57;
          v63 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v64 = xmmword_27750D320;
          v65 = xmmword_27750D310;
          v66 = xmmword_27750D300;
          v67 = xmmword_27750D2F0;
          do
          {
            v68 = vmovn_s64(vcgeq_u64(v53, v64));
            if (vuzp1_s8(vuzp1_s16(v68, *v53.i8), *v53.i8).u8[0])
            {
              *(v62 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v68, *&v53), *&v53).i8[1])
            {
              *(v62 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v65))), *&v53).i8[2])
            {
              *(v62 - 2) = v11;
              *(v62 - 1) = v11;
            }

            v69 = vmovn_s64(vcgeq_u64(v53, v66));
            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i32[1])
            {
              *v62 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i8[5])
            {
              v62[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v67)))).i8[6])
            {
              v62[2] = v11;
              v62[3] = v11;
            }

            v66 = vaddq_s64(v66, v55);
            v65 = vaddq_s64(v65, v55);
            v64 = vaddq_s64(v64, v55);
            v62 += 8;
            v67 = vaddq_s64(v67, v55);
            v63 -= 8;
          }

          while (v63);
        }

        ++v48;
        v52 = (v52 + v54);
        v56 = (v56 + v54);
        v57 = (v57 + v54);
      }

      while (v48 != v7);
      v70 = 0;
      v71 = 2 * v6;
      v72 = (a5 + 2 * v49 + v71);
      v73 = 2 * v50;
      v74 = (a4 + v71 - 2 * a3);
      v75 = v72 + 4;
      v76 = vdupq_n_s64(8uLL);
      do
      {
        if (((a2 >> v70) & 0x2000) != 0)
        {
          if (a1 != 31)
          {
            v77 = v74;
            v78 = v72;
            v79 = v51;
            do
            {
              v80 = *v77++;
              v11 = v80;
              *v78++ = v80;
              --v79;
            }

            while (v79);
          }
        }

        else
        {
          v81 = v75;
          v82 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v83 = xmmword_27750D320;
          v84 = xmmword_27750D310;
          v85 = xmmword_27750D300;
          v86 = xmmword_27750D2F0;
          do
          {
            v87 = vmovn_s64(vcgeq_u64(v53, v83));
            if (vuzp1_s8(vuzp1_s16(v87, *v53.i8), *v53.i8).u8[0])
            {
              *(v81 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v87, *&v53), *&v53).i8[1])
            {
              *(v81 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v84))), *&v53).i8[2])
            {
              *(v81 - 2) = v11;
              *(v81 - 1) = v11;
            }

            v88 = vmovn_s64(vcgeq_u64(v53, v85));
            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i32[1])
            {
              *v81 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i8[5])
            {
              v81[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v86)))).i8[6])
            {
              v81[2] = v11;
              v81[3] = v11;
            }

            v85 = vaddq_s64(v85, v76);
            v84 = vaddq_s64(v84, v76);
            v83 = vaddq_s64(v83, v76);
            v81 += 8;
            v86 = vaddq_s64(v86, v76);
            v82 -= 8;
          }

          while (v82);
        }

        ++v70;
        v72 = (v72 + v73);
        v74 = (v74 + v73);
        v75 = (v75 + v73);
      }

      while (v70 != v7);
    }
  }

  else
  {

    memset_pattern16((a5 - 2), &unk_27750D840, (8 * ((4 << a1) >> 2)) | 2);
  }
}

void sub_27740A2BC(int a1, int a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v6 = a1;
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &a5[v10];
        v13 = (a4 + 2 * a3 * v10 - 2);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }

LABEL_32:
      if ((a2 & 0xF0) != 0)
      {
        if (a1 != 31)
        {
          v27 = (a4 - 2);
          if (v10 <= 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = v10;
          }

          v29 = a5;
          do
          {
            *v29++ = *v27;
            v27 += a3;
            --v28;
          }

          while (v28);
        }
      }

      else
      {
        v30 = a5[v10];
        v31 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v32 = vdupq_n_s64(v10 - 1);
        v33 = xmmword_27750D2F0;
        v34 = xmmword_27750D300;
        v35 = xmmword_27750D310;
        v36 = xmmword_27750D320;
        v37 = a5 + 4;
        v38 = vdupq_n_s64(8uLL);
        do
        {
          v39 = vmovn_s64(vcgeq_u64(v32, v36));
          if (vuzp1_s8(vuzp1_s16(v39, *v32.i8), *v32.i8).u8[0])
          {
            *(v37 - 4) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(v39, *&v32), *&v32).i8[1])
          {
            *(v37 - 3) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v35))), *&v32).i8[2])
          {
            *(v37 - 2) = v30;
            *(v37 - 1) = v30;
          }

          v40 = vmovn_s64(vcgeq_u64(v32, v34));
          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i32[1])
          {
            *v37 = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i8[5])
          {
            v37[1] = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v33)))).i8[6])
          {
            v37[2] = v30;
            v37[3] = v30;
          }

          v34 = vaddq_s64(v34, v38);
          v35 = vaddq_s64(v35, v38);
          v36 = vaddq_s64(v36, v38);
          v37 += 8;
          v33 = vaddq_s64(v33, v38);
          v31 -= 8;
        }

        while (v31);
      }

      v41 = (a4 + 2 * ~a3);
      if ((a2 & 0x100) == 0)
      {
        v41 = a5;
      }

      v42 = *v41;
      *(a5 - 1) = v42;
      v43 = 2 << a1;
      if ((a2 & 0x1E00) != 0)
      {
        memcpy(&a5[v43], (a4 - 2 * a3), 2 * v10);
      }

      else
      {
        v44 = v43;
        v45 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = vdupq_n_s64(v10 - 1);
        v47 = &a5[v44 + 4];
        v48 = xmmword_27750D2F0;
        v49 = xmmword_27750D300;
        v50 = xmmword_27750D310;
        v51 = xmmword_27750D320;
        v52 = vdupq_n_s64(8uLL);
        do
        {
          v53 = vmovn_s64(vcgeq_u64(v46, v51));
          if (vuzp1_s8(vuzp1_s16(v53, *v46.i8), *v46.i8).u8[0])
          {
            *(v47 - 4) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(v53, *&v46), *&v46).i8[1])
          {
            *(v47 - 3) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v50))), *&v46).i8[2])
          {
            *(v47 - 2) = v42;
            *(v47 - 1) = v42;
          }

          v54 = vmovn_s64(vcgeq_u64(v46, v49));
          if (vuzp1_s8(*&v46, vuzp1_s16(v54, *&v46)).i32[1])
          {
            *v47 = v42;
          }

          if (vuzp1_s8(*&v46, vuzp1_s16(v54, *&v46)).i8[5])
          {
            v47[1] = v42;
          }

          if (vuzp1_s8(*&v46, vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v48)))).i8[6])
          {
            v47[2] = v42;
            v47[3] = v42;
          }

          v49 = vaddq_s64(v49, v52);
          v50 = vaddq_s64(v50, v52);
          v51 = vaddq_s64(v51, v52);
          v47 += 8;
          v48 = vaddq_s64(v48, v52);
          v45 -= 8;
        }

        while (v45);
      }

      v55 = &a5[3 << v6];
      if ((a2 & 0x1E000) != 0)
      {

        memcpy(v55, (a4 + 2 * v10 - 2 * a3), 2 * v10);
      }

      else
      {
        v56 = *(v55 - 1);
        v57 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v58 = vdupq_n_s64(v10 - 1);
        v59 = &a5[(3 << v6) + 4];
        v60 = xmmword_27750D2F0;
        v61 = xmmword_27750D300;
        v62 = xmmword_27750D310;
        v63 = xmmword_27750D320;
        v64 = vdupq_n_s64(8uLL);
        do
        {
          v65 = vmovn_s64(vcgeq_u64(v58, v63));
          if (vuzp1_s8(vuzp1_s16(v65, *v58.i8), *v58.i8).u8[0])
          {
            *(v59 - 4) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(v65, *&v58), *&v58).i8[1])
          {
            *(v59 - 3) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v62))), *&v58).i8[2])
          {
            *(v59 - 2) = v56;
            *(v59 - 1) = v56;
          }

          v66 = vmovn_s64(vcgeq_u64(v58, v61));
          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i32[1])
          {
            *v59 = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i8[5])
          {
            v59[1] = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v60)))).i8[6])
          {
            v59[2] = v56;
            v59[3] = v56;
          }

          v61 = vaddq_s64(v61, v64);
          v62 = vaddq_s64(v62, v64);
          v63 = vaddq_s64(v63, v64);
          v59 += 8;
          v60 = vaddq_s64(v60, v64);
          v57 -= 8;
        }

        while (v57);
      }

      return;
    }

    if ((a2 & 0xF0) != 0)
    {
      v14 = (a4 + 2 * (v10 - 1) * a3 - 2);
      goto LABEL_18;
    }

    if ((a2 & 0x100) != 0)
    {
      v15 = ~a3;
    }

    else
    {
      if ((a2 & 0x1E00) != 0)
      {
        v14 = (a4 - 2 * a3);
        goto LABEL_18;
      }

      v15 = v10 - a3;
    }

    v14 = (a4 + 2 * v15);
LABEL_18:
    v16 = *v14;
    v17 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = vdupq_n_s64(v10 - 1);
    v19 = &a5[v10 + 4];
    v20 = xmmword_27750D2F0;
    v21 = xmmword_27750D300;
    v22 = xmmword_27750D310;
    v23 = xmmword_27750D320;
    v24 = vdupq_n_s64(8uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v18, v23));
      if (vuzp1_s8(vuzp1_s16(v25, *v18.i8), *v18.i8).u8[0])
      {
        *(v19 - 4) = v16;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v18), *&v18).i8[1])
      {
        *(v19 - 3) = v16;
      }

      if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v22))), *&v18).i8[2])
      {
        *(v19 - 2) = v16;
        *(v19 - 1) = v16;
      }

      v26 = vmovn_s64(vcgeq_u64(v18, v21));
      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i32[1])
      {
        *v19 = v16;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i8[5])
      {
        v19[1] = v16;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v20)))).i8[6])
      {
        v19[2] = v16;
        v19[3] = v16;
      }

      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v23 = vaddq_s64(v23, v24);
      v19 += 8;
      v20 = vaddq_s64(v20, v24);
      v17 -= 8;
    }

    while (v17);
    goto LABEL_32;
  }

  memset_pattern16(a5 - 1, &unk_27750D840, (8 * ((4 << a1) >> 2)) | 2);
}

uint64_t sub_27740A934(uint64_t result)
{
  *(result + 8) = sub_27740B810;
  v1 = *(result + 538);
  v2 = sub_27740B16C;
  if (v1 == 2)
  {
    v2 = sub_27740B3F4;
  }

  if (v1 == 3)
  {
    v2 = sub_27740AC14;
  }

  *(result + 24) = v2;
  *(result + 56) = sub_2774034C0;
  *(result + 64) = sub_277403418;
  *(result + 72) = sub_277403370;
  *(result + 528) = sub_27740AB08;
  *(result + 456) = sub_27745D6E0;
  *(result + 464) = sub_27745D694;
  *(result + 360) = sub_27745D5E4;
  *(result + 368) = sub_27745D544;
  *(result + 392) = sub_27745D51C;
  *(result + 400) = sub_27745D4EC;
  *(result + 408) = sub_27745D4C0;
  *(result + 416) = sub_27745D484;
  *(result + 424) = sub_27745D444;
  *(result + 432) = sub_27745D404;
  *(result + 440) = sub_27745D3D4;
  *(result + 448) = sub_27745D39C;
  *(result + 488) = sub_27745D190;
  *(result + 496) = sub_27745CE88;
  *(result + 504) = sub_27745CB38;
  *(result + 512) = sub_27745C7D4;
  *(result + 472) = sub_27745C778;
  *(result + 376) = sub_27745C678;
  *(result + 480) = sub_27745C5E4;
  *(result + 384) = sub_27745C4A8;
  return result;
}

uint64_t sub_27740AB08(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= 1)
  {
    v6 = a6;
    v9 = result;
    v10 = 0;
    v11 = a6 + 2;
    v18 = a2;
    v12 = 9 - a4;
    v13 = 4 * a2;
    v14 = 2 * a5;
    do
    {
      if (a2 >= 1)
      {
        v15 = 0;
        do
        {
          result = sub_2773FB848(v9, a4);
          *(v6 + v15) = result << v12;
          v15 += 4;
        }

        while (v13 != v15);
      }

      ++v10;
      v6 += v14;
    }

    while (v10 != a3);
    v16 = 0;
    do
    {
      if (a2 >= 1)
      {
        v17 = 0;
        do
        {
          result = sub_2773FB848(v9, a4);
          *(v11 + v17) = result << v12;
          v17 += 4;
        }

        while (4 * v18 != v17);
      }

      ++v16;
      v11 += v14;
    }

    while (v16 != a3);
  }

  return result;
}

void sub_27740AC14(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1 << a1;
    v7 = (((1 << a1) + 4) >> 3);
    if (1 << a1 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 4);
    }

    else
    {
      v10 = (a4 + 4 * (byte_27750DC84[9 * a1 - 27 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 2 << a1;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = 4 * v13;
      v16 = a5 + 4 * v13 - 4;
      v17 = a4 + 4 * a3 * (v13 - 1) - 4;
      v18 = v15 - 4 * v8 + a5 + 8;
      v19 = vdupq_n_s64(4uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v20 = v17;
            v21 = v16;
            v22 = v8 + 1;
            do
            {
              v11 = *v20;
              *v21-- = *v20;
              --v22;
              v20 -= a3;
            }

            while (v22 > 1);
          }
        }

        else
        {
          v23 = v18;
          v24 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v25 = xmmword_27750D320;
          v26 = xmmword_27750D310;
          do
          {
            v27 = vmovn_s64(vcgeq_u64(v14, v25));
            if (vuzp1_s16(v27, *v14.i8).u8[0])
            {
              *(v23 - 2) = v11;
            }

            if (vuzp1_s16(v27, *&v14).i8[2])
            {
              *(v23 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v26))).i32[1])
            {
              *v23 = v11;
              v23[1] = v11;
            }

            v26 = vaddq_s64(v26, v19);
            v25 = vaddq_s64(v25, v19);
            v23 += 4;
            v24 -= 4;
          }

          while (v24);
        }

        ++v12;
        v16 -= 4 * v8;
        v17 -= 4 * a3 * v8;
        v18 -= 4 * v8;
      }

      while (v12 != v7);
      v28 = 0;
      if (v6 >= 8)
      {
        v29 = 8;
      }

      else
      {
        v29 = v6;
      }

      v30 = a5 + 4 * v6 - 4;
      v31 = a4 + 4 * a3 * (v6 - 1) - 4;
      v32 = vdupq_n_s64(4uLL);
      v33 = 4 * v6 - 4 * v29 + a5 + 8;
      do
      {
        if (((a2 >> v28) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v34 = v31;
            v35 = v30;
            v36 = v29 + 1;
            do
            {
              v11 = *v34;
              *v35-- = *v34;
              --v36;
              v34 -= a3;
            }

            while (v36 > 1);
          }
        }

        else
        {
          v37 = v33;
          v38 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v39 = xmmword_27750D320;
          v40 = xmmword_27750D310;
          do
          {
            v41 = vmovn_s64(vcgeq_u64(v14, v39));
            if (vuzp1_s16(v41, *v14.i8).u8[0])
            {
              *(v37 - 2) = v11;
            }

            if (vuzp1_s16(v41, *&v14).i8[2])
            {
              *(v37 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v40))).i32[1])
            {
              *v37 = v11;
              v37[1] = v11;
            }

            v40 = vaddq_s64(v40, v32);
            v39 = vaddq_s64(v39, v32);
            v37 += 4;
            v38 -= 4;
          }

          while (v38);
        }

        ++v28;
        v30 -= 4 * v29;
        v31 -= 4 * a3 * v29;
        v33 -= 4 * v29;
      }

      while (v28 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v11;
    if (v7 >= 1)
    {
      v42 = 0;
      v43 = 2 << a1;
      v44 = v8;
      if (v8 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v8;
      }

      v46 = v43;
      v47 = (a5 + 4 * v43);
      v48 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = vdupq_n_s64(v8 - 1);
      v50 = 4 * v8;
      v51 = (a4 - 4 * a3);
      v52 = vdupq_n_s64(4uLL);
      v53 = v47 + 2;
      do
      {
        if (((a2 >> v42) & 0x200) != 0)
        {
          if (a1 != 31)
          {
            v54 = v51;
            v55 = v47;
            v56 = v45;
            do
            {
              v57 = *v54++;
              v11 = v57;
              *v55++ = v57;
              --v56;
            }

            while (v56);
          }
        }

        else
        {
          v58 = v53;
          v59 = (v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v60 = xmmword_27750D320;
          v61 = xmmword_27750D310;
          do
          {
            v62 = vmovn_s64(vcgeq_u64(v49, v60));
            if (vuzp1_s16(v62, *v49.i8).u8[0])
            {
              *(v58 - 2) = v11;
            }

            if (vuzp1_s16(v62, *&v49).i8[2])
            {
              *(v58 - 1) = v11;
            }

            if (vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v61))).i32[1])
            {
              *v58 = v11;
              v58[1] = v11;
            }

            v61 = vaddq_s64(v61, v52);
            v60 = vaddq_s64(v60, v52);
            v58 += 4;
            v59 -= 4;
          }

          while (v59);
        }

        ++v42;
        v47 = (v47 + v50);
        v51 = (v51 + v50);
        v53 = (v53 + v50);
      }

      while (v42 != v7);
      v63 = 0;
      v64 = 4 * v46;
      v65 = 4 * v6;
      v66 = (a5 + v64 + v65);
      v67 = 4 * v44;
      v68 = (a4 + v65 - 4 * a3);
      v69 = v66 + 2;
      v70 = vdupq_n_s64(4uLL);
      do
      {
        if (((a2 >> v63) & 0x2000) != 0)
        {
          if (a1 != 31)
          {
            v71 = v68;
            v72 = v66;
            v73 = v45;
            do
            {
              v74 = *v71++;
              v11 = v74;
              *v72++ = v74;
              --v73;
            }

            while (v73);
          }
        }

        else
        {
          v75 = v69;
          v76 = v48;
          v77 = xmmword_27750D320;
          v78 = xmmword_27750D310;
          do
          {
            v79 = vmovn_s64(vcgeq_u64(v49, v77));
            if (vuzp1_s16(v79, *v49.i8).u8[0])
            {
              *(v75 - 2) = v11;
            }

            if (vuzp1_s16(v79, *&v49).i8[2])
            {
              *(v75 - 1) = v11;
            }

            if (vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v78))).i32[1])
            {
              *v75 = v11;
              v75[1] = v11;
            }

            v78 = vaddq_s64(v78, v70);
            v77 = vaddq_s64(v77, v70);
            v75 += 4;
            v76 -= 4;
          }

          while (v76);
        }

        ++v63;
        v66 = (v66 + v67);
        v68 = (v68 + v67);
        v69 = (v69 + v67);
      }

      while (v63 != v7);
    }
  }

  else
  {

    memset_pattern16((a5 - 4), &unk_27750D850, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_27740B16C(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = (1 << a1);
    v6 = (v5 >> 2);
    v7 = __clz(__rbit32(a2));
    if (v7 < 9)
    {
      v8 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 + 18 + v7]) * a3 - 4);
    }

    else
    {
      v8 = (a4 + 4 * (byte_27750DC84[9 * a1 + 9 + v7] - a3));
    }

    v9 = *v8;
    if (v6 >= 1)
    {
      v10 = 0;
      v11 = 2 << a1;
      v12 = a5 + 4 * v11;
      v13 = a4 + 4 * a3 * (v11 - 1) - 4;
      do
      {
        v14 = v10 + 1;
        if ((a2 >> v10))
        {
          v15 = -4;
          v16 = v13;
          do
          {
            v9 = *v16;
            *(v12 + v15) = *v16;
            v15 -= 4;
            v16 -= a3;
          }

          while (v15 != -20);
        }

        else
        {
          *(a5 + 4 * (v11 - 4 * v14)) = vdupq_n_s32(v9);
        }

        v12 -= 16;
        v13 -= 16 * a3;
        v10 = v14;
      }

      while (v14 != v6);
      v17 = 0;
      v18 = a5 + 4 * v5;
      v19 = a4 + 4 * a3 * (v5 - 1) - 4;
      do
      {
        v20 = v17 + 1;
        if (((a2 >> v17) & 0x10) != 0)
        {
          v21 = -4;
          v22 = v19;
          do
          {
            v9 = *v22;
            *(v18 + v21) = *v22;
            v21 -= 4;
            v22 -= a3;
          }

          while (v21 != -20);
        }

        else
        {
          *(a5 + 4 * (v5 - 4 * v20)) = vdupq_n_s32(v9);
        }

        v18 -= 16;
        v19 -= 16 * a3;
        v17 = v20;
      }

      while (v20 != v6);
    }

    if ((a2 & 0x100) != 0)
    {
      v9 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v9;
    if (v6 >= 1)
    {
      v23 = 0;
      v24 = 2 << a1;
      v25 = a5 + 4 * v24;
      v26 = a4 - 4 * a3;
      v27 = v25;
      do
      {
        if (((a2 >> v23) & 0x200) != 0)
        {
          for (i = 0; i != 16; i += 4)
          {
            v9 = *(v26 + i);
            *(v27 + i) = v9;
          }
        }

        else
        {
          *(v25 + 16 * v23) = vdupq_n_s32(v9);
        }

        ++v23;
        v27 += 16;
        v26 += 16;
      }

      while (v23 != v6);
      v29 = 0;
      v30 = a5 + 4 * v24 + 4 * v5;
      v31 = a4 + 4 * (1 << a1) - 4 * a3;
      do
      {
        if (((a2 >> v29) & 0x2000) != 0)
        {
          for (j = 0; j != 16; j += 4)
          {
            v9 = *(v31 + j);
            *(v30 + j) = v9;
          }
        }

        else
        {
          *(v25 + 4 * (v5 + 4 * v29)) = vdupq_n_s32(v9);
        }

        ++v29;
        v30 += 16;
        v31 += 16;
      }

      while (v29 != v6);
    }
  }

  else
  {
    memset_pattern16((a5 - 4), &unk_27750D850, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_27740B3F4(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = (1 << a1);
    v7 = ((v6 + 4) >> 3);
    if (v6 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 4);
    }

    else
    {
      v10 = (a4 + 4 * (byte_27750DC84[9 * a1 + 9 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = a5 + 4 * (2 << a1) - 4;
      v16 = a4 + 4 * a3 * ((2 << a1) - 1) - 4;
      v17 = 4 * (2 << a1) - 4 * v8 + a5 + 8;
      v18 = vdupq_n_s64(4uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v19 = v16;
            v20 = v15;
            v21 = v8 + 1;
            do
            {
              v11 = *v19;
              *v20-- = *v19;
              --v21;
              v19 -= a3;
            }

            while (v21 > 1);
          }
        }

        else
        {
          v22 = v17;
          v23 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v24 = xmmword_27750D320;
          v25 = xmmword_27750D310;
          do
          {
            v26 = vmovn_s64(vcgeq_u64(v14, v24));
            if (vuzp1_s16(v26, *v14.i8).u8[0])
            {
              *(v22 - 2) = v11;
            }

            if (vuzp1_s16(v26, *&v14).i8[2])
            {
              *(v22 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v25))).i32[1])
            {
              *v22 = v11;
              v22[1] = v11;
            }

            v25 = vaddq_s64(v25, v18);
            v24 = vaddq_s64(v24, v18);
            v22 += 4;
            v23 -= 4;
          }

          while (v23);
        }

        ++v12;
        v15 -= 4 * v8;
        v16 -= 4 * a3 * v8;
        v17 -= 4 * v8;
      }

      while (v12 != v7);
      v27 = 0;
      if (v6 >= 8)
      {
        v28 = 8;
      }

      else
      {
        v28 = v6;
      }

      v29 = a5 + 4 * v6 - 4;
      v30 = a4 + 4 * a3 * (v6 - 1) - 4;
      v31 = 4 * v6 - 4 * v28 + a5 + 8;
      v32 = vdupq_n_s64(4uLL);
      do
      {
        if (((a2 >> v27) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v33 = v30;
            v34 = v29;
            v35 = v28 + 1;
            do
            {
              v11 = *v33;
              *v34-- = *v33;
              --v35;
              v33 -= a3;
            }

            while (v35 > 1);
          }
        }

        else
        {
          v36 = v31;
          v37 = v13;
          v38 = xmmword_27750D320;
          v39 = xmmword_27750D310;
          do
          {
            v40 = vmovn_s64(vcgeq_u64(v14, v38));
            if (vuzp1_s16(v40, *v14.i8).u8[0])
            {
              *(v36 - 2) = v11;
            }

            if (vuzp1_s16(v40, *&v14).i8[2])
            {
              *(v36 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v39))).i32[1])
            {
              *v36 = v11;
              v36[1] = v11;
            }

            v39 = vaddq_s64(v39, v32);
            v38 = vaddq_s64(v38, v32);
            v36 += 4;
            v37 -= 4;
          }

          while (v37);
        }

        ++v27;
        v29 -= 4 * v28;
        v30 -= 4 * a3 * v28;
        v31 -= 4 * v28;
      }

      while (v27 != v7);
    }

    v41 = (v6 >> 2);
    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v11;
    if (v41 >= 1)
    {
      v42 = 0;
      v43 = 2 << a1;
      v44 = a5 + 4 * v43;
      v45 = a4 - 4 * a3;
      v46 = v44;
      do
      {
        if (((a2 >> v42) & 0x200) != 0)
        {
          for (i = 0; i != 16; i += 4)
          {
            v11 = *(v45 + i);
            *(v46 + i) = v11;
          }
        }

        else
        {
          *(v44 + 16 * v42) = vdupq_n_s32(v11);
        }

        ++v42;
        v46 += 16;
        v45 += 16;
      }

      while (v42 != v41);
      v48 = 0;
      v49 = a5 + 4 * v43 + 4 * v6;
      v50 = a4 + 4 * (1 << a1) - 4 * a3;
      do
      {
        if (((a2 >> v48) & 0x2000) != 0)
        {
          for (j = 0; j != 16; j += 4)
          {
            v11 = *(v50 + j);
            *(v49 + j) = v11;
          }
        }

        else
        {
          *(v44 + 4 * (v6 + 4 * v48)) = vdupq_n_s32(v11);
        }

        ++v48;
        v49 += 16;
        v50 += 16;
      }

      while (v48 != v41);
    }
  }

  else
  {

    memset_pattern16((a5 - 4), &unk_27750D850, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_27740B810(int a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = a1;
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &a5[v10];
        v13 = (a4 + 4 * a3 * v10 - 4);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v14 = (a4 + 4 * (v10 - a3));
      if ((a2 & 0x1E00) != 0)
      {
        v14 = (a4 - 4 * a3);
      }

      if ((a2 & 0x100) != 0)
      {
        v14 = (a4 + 4 * ~a3);
      }

      if ((a2 & 0xF0) != 0)
      {
        v14 = (a4 + 4 * (v10 - 1) * a3 - 4);
      }

      v15 = *v14;
      v16 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = vdupq_n_s64(v10 - 1);
      v18 = &a5[v10 + 2];
      v19 = xmmword_27750D310;
      v20 = xmmword_27750D320;
      v21 = vdupq_n_s64(4uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v20));
        if (vuzp1_s16(v22, *v17.i8).u8[0])
        {
          *(v18 - 2) = v15;
        }

        if (vuzp1_s16(v22, *&v17).i8[2])
        {
          *(v18 - 1) = v15;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v19))).i32[1])
        {
          *v18 = v15;
          v18[1] = v15;
        }

        v19 = vaddq_s64(v19, v21);
        v20 = vaddq_s64(v20, v21);
        v18 += 4;
        v16 -= 4;
      }

      while (v16);
    }

    if ((a2 & 0xF0) != 0)
    {
      if (a1 != 31)
      {
        v23 = (a4 - 4);
        if (v10 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v10;
        }

        v25 = a5;
        do
        {
          *v25++ = *v23;
          v23 += a3;
          --v24;
        }

        while (v24);
      }
    }

    else
    {
      v26 = a5[v10];
      v27 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v28 = vdupq_n_s64(v10 - 1);
      v29 = xmmword_27750D310;
      v30 = xmmword_27750D320;
      v31 = a5 + 2;
      v32 = vdupq_n_s64(4uLL);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v28, v30));
        if (vuzp1_s16(v33, *v28.i8).u8[0])
        {
          *(v31 - 2) = v26;
        }

        if (vuzp1_s16(v33, *&v28).i8[2])
        {
          *(v31 - 1) = v26;
        }

        if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v29))).i32[1])
        {
          *v31 = v26;
          v31[1] = v26;
        }

        v29 = vaddq_s64(v29, v32);
        v30 = vaddq_s64(v30, v32);
        v31 += 4;
        v27 -= 4;
      }

      while (v27);
    }

    v34 = (a4 + 4 * ~a3);
    if ((a2 & 0x100) == 0)
    {
      v34 = a5;
    }

    v35 = *v34;
    *(a5 - 1) = v35;
    v36 = 2 << a1;
    if ((a2 & 0x1E00) != 0)
    {
      memcpy(&a5[v36], (a4 - 4 * a3), 4 * v10);
    }

    else
    {
      v37 = v36;
      v38 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v39 = vdupq_n_s64(v10 - 1);
      v40 = &a5[v37 + 2];
      v41 = xmmword_27750D310;
      v42 = xmmword_27750D320;
      v43 = vdupq_n_s64(4uLL);
      do
      {
        v44 = vmovn_s64(vcgeq_u64(v39, v42));
        if (vuzp1_s16(v44, *v39.i8).u8[0])
        {
          *(v40 - 2) = v35;
        }

        if (vuzp1_s16(v44, *&v39).i8[2])
        {
          *(v40 - 1) = v35;
        }

        if (vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v41))).i32[1])
        {
          *v40 = v35;
          v40[1] = v35;
        }

        v41 = vaddq_s64(v41, v43);
        v42 = vaddq_s64(v42, v43);
        v40 += 4;
        v38 -= 4;
      }

      while (v38);
    }

    v45 = &a5[3 << v6];
    if ((a2 & 0x1E000) != 0)
    {

      memcpy(v45, (a4 + 4 * v10 - 4 * a3), 4 * v10);
    }

    else
    {
      v46 = *(v45 - 1);
      v47 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v48 = vdupq_n_s64(v10 - 1);
      v49 = &a5[(3 << v6) + 2];
      v50 = xmmword_27750D310;
      v51 = xmmword_27750D320;
      v52 = vdupq_n_s64(4uLL);
      do
      {
        v53 = vmovn_s64(vcgeq_u64(v48, v51));
        if (vuzp1_s16(v53, *v48.i8).u8[0])
        {
          *(v49 - 2) = v46;
        }

        if (vuzp1_s16(v53, *&v48).i8[2])
        {
          *(v49 - 1) = v46;
        }

        if (vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v50))).i32[1])
        {
          *v49 = v46;
          v49[1] = v46;
        }

        v50 = vaddq_s64(v50, v52);
        v51 = vaddq_s64(v51, v52);
        v49 += 4;
        v47 -= 4;
      }

      while (v47);
    }
  }

  else
  {

    memset_pattern16(a5 - 1, &unk_27750D850, (16 * ((4 << a1) >> 2)) | 4);
  }
}

uint64_t sub_27740BC60(uint64_t result)
{
  *result = sub_27740C8DC;
  *(result + 16) = sub_27740C154;
  v1 = *(result + 537);
  *(result + 312) = sub_277404DA4;
  *(result + 200) = sub_27740C134;
  *(result + 208) = sub_27740C114;
  *(result + 216) = sub_27740C0F4;
  *(result + 224) = sub_27740C0CC;
  *(result + 232) = sub_27740C094;
  *(result + 120) = sub_27740C06C;
  *(result + 128) = sub_27740C044;
  *(result + 136) = sub_27740C018;
  *(result + 144) = sub_27740BFE8;
  *(result + 152) = sub_27740BFB0;
  *(result + 520) = sub_27740BF10;
  *(result + 32) = sub_27745A218;
  *(result + 40) = sub_27745A154;
  v2 = v1 == 0;
  v3 = sub_277459FB4;
  if (!v2)
  {
    v3 = sub_27745A628;
  }

  *(result + 48) = v3;
  *(result + 320) = sub_277459F3C;
  *(result + 328) = sub_277459E60;
  *(result + 280) = sub_277459DC8;
  *(result + 288) = sub_277459D2C;
  *(result + 160) = sub_27745A5BC;
  *(result + 168) = sub_27745A4E8;
  *(result + 176) = sub_27745A438;
  *(result + 184) = sub_277459B10;
  *(result + 192) = sub_277459AD4;
  *(result + 80) = sub_27745A3DC;
  *(result + 88) = sub_27745A344;
  *(result + 96) = sub_27745A2A0;
  *(result + 104) = sub_27745990C;
  *(result + 112) = sub_2774598D4;
  *(result + 240) = sub_277459730;
  *(result + 248) = sub_2774594B8;
  *(result + 256) = sub_277459190;
  *(result + 264) = sub_277458DB8;
  *(result + 272) = sub_27745899C;
  *(result + 336) = sub_277458844;
  *(result + 352) = sub_2774587A8;
  *(result + 296) = sub_277458708;
  *(result + 344) = sub_2774586A8;
  *(result + 304) = sub_2774585A8;
  return result;
}

uint64_t sub_27740BF10(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = 9 - a3;
    v11 = 2 * a2;
    v12 = 2 * a4;
    do
    {
      v13 = 0;
      do
      {
        result = sub_2773FB848(v8, a3);
        *(a5 + v13) = result << v10;
        v13 += 2;
      }

      while (v11 != v13);
      ++v9;
      a5 += v12;
    }

    while (v9 != a2);
  }

  return result;
}

void sub_27740BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 64; ++i)
  {
    v5 = 0;
    v6 = (a2 + 2 * i);
    v7 = vld1q_dup_s16(v6);
    do
    {
      *(a4 + v5) = v7;
      v5 += 16;
    }

    while (v5 != 128);
    a4 += 2 * a3;
  }
}

int16x8_t sub_27740BFE8(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 2;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-2] = result;
    v5[-1] = result;
    *v5 = result;
    v5[1] = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 64);
  return result;
}

int16x8_t sub_27740C018(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 1;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-1] = result;
    *v5 = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 32);
  return result;
}

int16x8_t sub_27740C044(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  for (i = 0; i != 16; i += 2)
  {
    v5 = (a2 + i);
    result = vld1q_dup_s16(v5);
    *a4 = result;
    a4 = (a4 + 2 * a3);
  }

  return result;
}

int16x4_t sub_27740C06C(uint64_t a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  for (i = 0; i != 8; i += 2)
  {
    v5 = (a2 + i);
    result = vld1_dup_s16(v5);
    *a4 = result;
    a4 = (a4 + 2 * a3);
  }

  return result;
}

__n128 sub_27740C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 64;
  do
  {
    v5 = *(a2 + 256);
    v6 = *(a2 + 272);
    v7 = *(a2 + 304);
    *(a4 + 32) = *(a2 + 288);
    *(a4 + 48) = v7;
    *a4 = v5;
    *(a4 + 16) = v6;
    result = *(a2 + 320);
    v9 = *(a2 + 336);
    v10 = *(a2 + 368);
    *(a4 + 96) = *(a2 + 352);
    *(a4 + 112) = v10;
    *(a4 + 64) = result;
    *(a4 + 80) = v9;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_27740C0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 32;
  do
  {
    result = *(a2 + 128);
    v6 = *(a2 + 144);
    v7 = *(a2 + 176);
    *(a4 + 32) = *(a2 + 160);
    *(a4 + 48) = v7;
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_27740C0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 16;
  do
  {
    result = *(a2 + 64);
    v6 = *(a2 + 80);
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_27740C114(uint64_t a1, __n128 *a2, uint64_t a3, __n128 *a4)
{
  v4 = 8;
  do
  {
    result = a2[2];
    *a4 = result;
    a4 = (a4 + 2 * a3);
    --v4;
  }

  while (v4);
  return result;
}

void sub_27740C134(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4;
  do
  {
    *a4 = *(a2 + 16);
    a4 = (a4 + 2 * a3);
    --v4;
  }

  while (v4);
}

void sub_27740C154(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1 << a1;
    v7 = (((1 << a1) + 4) >> 3);
    if (1 << a1 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 2 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 2);
    }

    else
    {
      v10 = (a4 + 2 * (byte_27750DC84[9 * a1 - 27 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 2 << a1;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = 2 * v13;
      v16 = a5 + 2 * v13 - 2;
      v17 = a4 + 2 * a3 * (v13 - 1) - 2;
      v18 = v15 - 2 * v8 + a5 + 8;
      v19 = vdupq_n_s64(8uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v20 = v17;
            v21 = v16;
            v22 = v8 + 1;
            do
            {
              v11 = *v20;
              *v21-- = *v20;
              --v22;
              v20 -= a3;
            }

            while (v22 > 1);
          }
        }

        else
        {
          v23 = v18;
          v24 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v25 = xmmword_27750D320;
          v26 = xmmword_27750D310;
          v27 = xmmword_27750D300;
          v28 = xmmword_27750D2F0;
          do
          {
            v29 = vmovn_s64(vcgeq_u64(v14, v25));
            if (vuzp1_s8(vuzp1_s16(v29, *v14.i8), *v14.i8).u8[0])
            {
              *(v23 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v29, *&v14), *&v14).i8[1])
            {
              *(v23 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v26))), *&v14).i8[2])
            {
              *(v23 - 2) = v11;
              *(v23 - 1) = v11;
            }

            v30 = vmovn_s64(vcgeq_u64(v14, v27));
            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i32[1])
            {
              *v23 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i8[5])
            {
              v23[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v28)))).i8[6])
            {
              v23[2] = v11;
              v23[3] = v11;
            }

            v27 = vaddq_s64(v27, v19);
            v26 = vaddq_s64(v26, v19);
            v25 = vaddq_s64(v25, v19);
            v23 += 8;
            v28 = vaddq_s64(v28, v19);
            v24 -= 8;
          }

          while (v24);
        }

        ++v12;
        v16 -= 2 * v8;
        v17 -= 2 * a3 * v8;
        v18 -= 2 * v8;
      }

      while (v12 != v7);
      v31 = 0;
      if (v6 >= 8)
      {
        v32 = 8;
      }

      else
      {
        v32 = v6;
      }

      v33 = a5 + 2 * v6 - 2;
      v34 = a4 + 2 * a3 * (v6 - 1) - 2;
      v35 = 2 * v6 - 2 * v32 + a5 + 8;
      do
      {
        if (((a2 >> v31) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v36 = v34;
            v37 = v33;
            v38 = v32 + 1;
            do
            {
              v11 = *v36;
              *v37-- = *v36;
              --v38;
              v36 -= a3;
            }

            while (v38 > 1);
          }
        }

        else
        {
          v39 = v35;
          v40 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v41 = xmmword_27750D320;
          v42 = xmmword_27750D310;
          v43 = xmmword_27750D300;
          v44 = xmmword_27750D2F0;
          do
          {
            v45 = vmovn_s64(vcgeq_u64(v14, v41));
            if (vuzp1_s8(vuzp1_s16(v45, *v14.i8), *v14.i8).u8[0])
            {
              *(v39 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v45, *&v14), *&v14).i8[1])
            {
              *(v39 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v42))), *&v14).i8[2])
            {
              *(v39 - 2) = v11;
              *(v39 - 1) = v11;
            }

            v46 = vmovn_s64(vcgeq_u64(v14, v43));
            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i32[1])
            {
              *v39 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i8[5])
            {
              v39[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v44)))).i8[6])
            {
              v39[2] = v11;
              v39[3] = v11;
            }

            v47 = vdupq_n_s64(8uLL);
            v43 = vaddq_s64(v43, v47);
            v42 = vaddq_s64(v42, v47);
            v41 = vaddq_s64(v41, v47);
            v44 = vaddq_s64(v44, v47);
            v39 += 8;
            v40 -= 8;
          }

          while (v40);
        }

        ++v31;
        v33 -= 2 * v32;
        v34 -= 2 * a3 * v32;
        v35 -= 2 * v32;
      }

      while (v31 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 2 * ~a3);
    }

    *(a5 - 2) = v11;
    if (v7 >= 1)
    {
      v48 = 0;
      v49 = 2 << a1;
      v50 = v8;
      if (v8 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v8;
      }

      v52 = (a5 + 2 * v49);
      v53 = vdupq_n_s64(v8 - 1);
      v54 = 2 * v8;
      v55 = vdupq_n_s64(8uLL);
      v56 = (a4 - 2 * a3);
      v57 = v52 + 4;
      do
      {
        if (((a2 >> v48) & 0x200) != 0)
        {
          if (a1 != 31)
          {
            v58 = v56;
            v59 = v52;
            v60 = v51;
            do
            {
              v61 = *v58++;
              v11 = v61;
              *v59++ = v61;
              --v60;
            }

            while (v60);
          }
        }

        else
        {
          v62 = v57;
          v63 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v64 = xmmword_27750D320;
          v65 = xmmword_27750D310;
          v66 = xmmword_27750D300;
          v67 = xmmword_27750D2F0;
          do
          {
            v68 = vmovn_s64(vcgeq_u64(v53, v64));
            if (vuzp1_s8(vuzp1_s16(v68, *v53.i8), *v53.i8).u8[0])
            {
              *(v62 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v68, *&v53), *&v53).i8[1])
            {
              *(v62 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v65))), *&v53).i8[2])
            {
              *(v62 - 2) = v11;
              *(v62 - 1) = v11;
            }

            v69 = vmovn_s64(vcgeq_u64(v53, v66));
            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i32[1])
            {
              *v62 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i8[5])
            {
              v62[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v67)))).i8[6])
            {
              v62[2] = v11;
              v62[3] = v11;
            }

            v66 = vaddq_s64(v66, v55);
            v65 = vaddq_s64(v65, v55);
            v64 = vaddq_s64(v64, v55);
            v62 += 8;
            v67 = vaddq_s64(v67, v55);
            v63 -= 8;
          }

          while (v63);
        }

        ++v48;
        v52 = (v52 + v54);
        v56 = (v56 + v54);
        v57 = (v57 + v54);
      }

      while (v48 != v7);
      v70 = 0;
      v71 = 2 * v6;
      v72 = (a5 + 2 * v49 + v71);
      v73 = 2 * v50;
      v74 = (a4 + v71 - 2 * a3);
      v75 = v72 + 4;
      v76 = vdupq_n_s64(8uLL);
      do
      {
        if (((a2 >> v70) & 0x2000) != 0)
        {
          if (a1 != 31)
          {
            v77 = v74;
            v78 = v72;
            v79 = v51;
            do
            {
              v80 = *v77++;
              v11 = v80;
              *v78++ = v80;
              --v79;
            }

            while (v79);
          }
        }

        else
        {
          v81 = v75;
          v82 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v83 = xmmword_27750D320;
          v84 = xmmword_27750D310;
          v85 = xmmword_27750D300;
          v86 = xmmword_27750D2F0;
          do
          {
            v87 = vmovn_s64(vcgeq_u64(v53, v83));
            if (vuzp1_s8(vuzp1_s16(v87, *v53.i8), *v53.i8).u8[0])
            {
              *(v81 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v87, *&v53), *&v53).i8[1])
            {
              *(v81 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v84))), *&v53).i8[2])
            {
              *(v81 - 2) = v11;
              *(v81 - 1) = v11;
            }

            v88 = vmovn_s64(vcgeq_u64(v53, v85));
            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i32[1])
            {
              *v81 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i8[5])
            {
              v81[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v86)))).i8[6])
            {
              v81[2] = v11;
              v81[3] = v11;
            }

            v85 = vaddq_s64(v85, v76);
            v84 = vaddq_s64(v84, v76);
            v83 = vaddq_s64(v83, v76);
            v81 += 8;
            v86 = vaddq_s64(v86, v76);
            v82 -= 8;
          }

          while (v82);
        }

        ++v70;
        v72 = (v72 + v73);
        v74 = (v74 + v73);
        v75 = (v75 + v73);
      }

      while (v70 != v7);
    }
  }

  else
  {

    memset_pattern16((a5 - 2), &unk_27750D850, (8 * ((4 << a1) >> 2)) | 2);
  }
}

void sub_27740C8DC(int a1, int a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v6 = a1;
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &a5[v10];
        v13 = (a4 + 2 * a3 * v10 - 2);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }

LABEL_32:
      if ((a2 & 0xF0) != 0)
      {
        if (a1 != 31)
        {
          v27 = (a4 - 2);
          if (v10 <= 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = v10;
          }

          v29 = a5;
          do
          {
            *v29++ = *v27;
            v27 += a3;
            --v28;
          }

          while (v28);
        }
      }

      else
      {
        v30 = a5[v10];
        v31 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v32 = vdupq_n_s64(v10 - 1);
        v33 = xmmword_27750D2F0;
        v34 = xmmword_27750D300;
        v35 = xmmword_27750D310;
        v36 = xmmword_27750D320;
        v37 = a5 + 4;
        v38 = vdupq_n_s64(8uLL);
        do
        {
          v39 = vmovn_s64(vcgeq_u64(v32, v36));
          if (vuzp1_s8(vuzp1_s16(v39, *v32.i8), *v32.i8).u8[0])
          {
            *(v37 - 4) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(v39, *&v32), *&v32).i8[1])
          {
            *(v37 - 3) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v35))), *&v32).i8[2])
          {
            *(v37 - 2) = v30;
            *(v37 - 1) = v30;
          }

          v40 = vmovn_s64(vcgeq_u64(v32, v34));
          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i32[1])
          {
            *v37 = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i8[5])
          {
            v37[1] = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v33)))).i8[6])
          {
            v37[2] = v30;
            v37[3] = v30;
          }

          v34 = vaddq_s64(v34, v38);
          v35 = vaddq_s64(v35, v38);
          v36 = vaddq_s64(v36, v38);
          v37 += 8;
          v33 = vaddq_s64(v33, v38);
          v31 -= 8;
        }

        while (v31);
      }

      v41 = (a4 + 2 * ~a3);
      if ((a2 & 0x100) == 0)
      {
        v41 = a5;
      }

      v42 = *v41;
      *(a5 - 1) = v42;
      v43 = 2 << a1;
      if ((a2 & 0x1E00) != 0)
      {
        memcpy(&a5[v43], (a4 - 2 * a3), 2 * v10);
      }

      else
      {
        v44 = v43;
        v45 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = vdupq_n_s64(v10 - 1);
        v47 = &a5[v44 + 4];
        v48 = xmmword_27750D2F0;
        v49 = xmmword_27750D300;
        v50 = xmmword_27750D310;
        v51 = xmmword_27750D320;
        v52 = vdupq_n_s64(8uLL);
        do
        {
          v53 = vmovn_s64(vcgeq_u64(v46, v51));
          if (vuzp1_s8(vuzp1_s16(v53, *v46.i8), *v46.i8).u8[0])
          {
            *(v47 - 4) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(v53, *&v46), *&v46).i8[1])
          {
            *(v47 - 3) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v50))), *&v46).i8[2])
          {
            *(v47 - 2) = v42;
            *(v47 - 1) = v42;
          }

          v54 = vmovn_s64(vcgeq_u64(v46, v49));
          if (vuzp1_s8(*&v46, vuzp1_s16(v54, *&v46)).i32[1])
          {
            *v47 = v42;
          }

          if (vuzp1_s8(*&v46, vuzp1_s16(v54, *&v46)).i8[5])
          {
            v47[1] = v42;
          }

          if (vuzp1_s8(*&v46, vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v48)))).i8[6])
          {
            v47[2] = v42;
            v47[3] = v42;
          }

          v49 = vaddq_s64(v49, v52);
          v50 = vaddq_s64(v50, v52);
          v51 = vaddq_s64(v51, v52);
          v47 += 8;
          v48 = vaddq_s64(v48, v52);
          v45 -= 8;
        }

        while (v45);
      }

      v55 = &a5[3 << v6];
      if ((a2 & 0x1E000) != 0)
      {

        memcpy(v55, (a4 + 2 * v10 - 2 * a3), 2 * v10);
      }

      else
      {
        v56 = *(v55 - 1);
        v57 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v58 = vdupq_n_s64(v10 - 1);
        v59 = &a5[(3 << v6) + 4];
        v60 = xmmword_27750D2F0;
        v61 = xmmword_27750D300;
        v62 = xmmword_27750D310;
        v63 = xmmword_27750D320;
        v64 = vdupq_n_s64(8uLL);
        do
        {
          v65 = vmovn_s64(vcgeq_u64(v58, v63));
          if (vuzp1_s8(vuzp1_s16(v65, *v58.i8), *v58.i8).u8[0])
          {
            *(v59 - 4) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(v65, *&v58), *&v58).i8[1])
          {
            *(v59 - 3) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v62))), *&v58).i8[2])
          {
            *(v59 - 2) = v56;
            *(v59 - 1) = v56;
          }

          v66 = vmovn_s64(vcgeq_u64(v58, v61));
          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i32[1])
          {
            *v59 = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i8[5])
          {
            v59[1] = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v60)))).i8[6])
          {
            v59[2] = v56;
            v59[3] = v56;
          }

          v61 = vaddq_s64(v61, v64);
          v62 = vaddq_s64(v62, v64);
          v63 = vaddq_s64(v63, v64);
          v59 += 8;
          v60 = vaddq_s64(v60, v64);
          v57 -= 8;
        }

        while (v57);
      }

      return;
    }

    if ((a2 & 0xF0) != 0)
    {
      v14 = (a4 + 2 * (v10 - 1) * a3 - 2);
      goto LABEL_18;
    }

    if ((a2 & 0x100) != 0)
    {
      v15 = ~a3;
    }

    else
    {
      if ((a2 & 0x1E00) != 0)
      {
        v14 = (a4 - 2 * a3);
        goto LABEL_18;
      }

      v15 = v10 - a3;
    }

    v14 = (a4 + 2 * v15);
LABEL_18:
    v16 = *v14;
    v17 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = vdupq_n_s64(v10 - 1);
    v19 = &a5[v10 + 4];
    v20 = xmmword_27750D2F0;
    v21 = xmmword_27750D300;
    v22 = xmmword_27750D310;
    v23 = xmmword_27750D320;
    v24 = vdupq_n_s64(8uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v18, v23));
      if (vuzp1_s8(vuzp1_s16(v25, *v18.i8), *v18.i8).u8[0])
      {
        *(v19 - 4) = v16;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v18), *&v18).i8[1])
      {
        *(v19 - 3) = v16;
      }

      if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v22))), *&v18).i8[2])
      {
        *(v19 - 2) = v16;
        *(v19 - 1) = v16;
      }

      v26 = vmovn_s64(vcgeq_u64(v18, v21));
      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i32[1])
      {
        *v19 = v16;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i8[5])
      {
        v19[1] = v16;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v20)))).i8[6])
      {
        v19[2] = v16;
        v19[3] = v16;
      }

      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v23 = vaddq_s64(v23, v24);
      v19 += 8;
      v20 = vaddq_s64(v20, v24);
      v17 -= 8;
    }

    while (v17);
    goto LABEL_32;
  }

  memset_pattern16(a5 - 1, &unk_27750D850, (8 * ((4 << a1) >> 2)) | 2);
}

uint64_t sub_27740CF54(uint64_t result)
{
  *(result + 8) = sub_27740DE30;
  v1 = *(result + 538);
  v2 = sub_27740D78C;
  if (v1 == 2)
  {
    v2 = sub_27740DA14;
  }

  if (v1 == 3)
  {
    v2 = sub_27740D234;
  }

  *(result + 24) = v2;
  *(result + 56) = sub_2774034C0;
  *(result + 64) = sub_277403418;
  *(result + 72) = sub_277403370;
  *(result + 528) = sub_27740D128;
  *(result + 456) = sub_27745D6E0;
  *(result + 464) = sub_27745D694;
  *(result + 360) = sub_27745D5E4;
  *(result + 368) = sub_27745D544;
  *(result + 392) = sub_27745D51C;
  *(result + 400) = sub_27745D4EC;
  *(result + 408) = sub_27745D4C0;
  *(result + 416) = sub_27745D484;
  *(result + 424) = sub_27745D444;
  *(result + 432) = sub_27745D404;
  *(result + 440) = sub_27745D3D4;
  *(result + 448) = sub_27745D39C;
  *(result + 488) = sub_27745D190;
  *(result + 496) = sub_27745CE88;
  *(result + 504) = sub_27745CB38;
  *(result + 512) = sub_27745C7D4;
  *(result + 472) = sub_27745C778;
  *(result + 376) = sub_27745C678;
  *(result + 480) = sub_27745C5E4;
  *(result + 384) = sub_27745C4A8;
  return result;
}

uint64_t sub_27740D128(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= 1)
  {
    v6 = a6;
    v9 = result;
    v10 = 0;
    v11 = a6 + 2;
    v18 = a2;
    v12 = 8 - a4;
    v13 = 4 * a2;
    v14 = 2 * a5;
    do
    {
      if (a2 >= 1)
      {
        v15 = 0;
        do
        {
          result = sub_2773FB848(v9, a4);
          *(v6 + v15) = result << v12;
          v15 += 4;
        }

        while (v13 != v15);
      }

      ++v10;
      v6 += v14;
    }

    while (v10 != a3);
    v16 = 0;
    do
    {
      if (a2 >= 1)
      {
        v17 = 0;
        do
        {
          result = sub_2773FB848(v9, a4);
          *(v11 + v17) = result << v12;
          v17 += 4;
        }

        while (4 * v18 != v17);
      }

      ++v16;
      v11 += v14;
    }

    while (v16 != a3);
  }

  return result;
}

void sub_27740D234(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1 << a1;
    v7 = (((1 << a1) + 4) >> 3);
    if (1 << a1 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 4);
    }

    else
    {
      v10 = (a4 + 4 * (byte_27750DC84[9 * a1 - 27 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 2 << a1;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = 4 * v13;
      v16 = a5 + 4 * v13 - 4;
      v17 = a4 + 4 * a3 * (v13 - 1) - 4;
      v18 = v15 - 4 * v8 + a5 + 8;
      v19 = vdupq_n_s64(4uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v20 = v17;
            v21 = v16;
            v22 = v8 + 1;
            do
            {
              v11 = *v20;
              *v21-- = *v20;
              --v22;
              v20 -= a3;
            }

            while (v22 > 1);
          }
        }

        else
        {
          v23 = v18;
          v24 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v25 = xmmword_27750D320;
          v26 = xmmword_27750D310;
          do
          {
            v27 = vmovn_s64(vcgeq_u64(v14, v25));
            if (vuzp1_s16(v27, *v14.i8).u8[0])
            {
              *(v23 - 2) = v11;
            }

            if (vuzp1_s16(v27, *&v14).i8[2])
            {
              *(v23 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v26))).i32[1])
            {
              *v23 = v11;
              v23[1] = v11;
            }

            v26 = vaddq_s64(v26, v19);
            v25 = vaddq_s64(v25, v19);
            v23 += 4;
            v24 -= 4;
          }

          while (v24);
        }

        ++v12;
        v16 -= 4 * v8;
        v17 -= 4 * a3 * v8;
        v18 -= 4 * v8;
      }

      while (v12 != v7);
      v28 = 0;
      if (v6 >= 8)
      {
        v29 = 8;
      }

      else
      {
        v29 = v6;
      }

      v30 = a5 + 4 * v6 - 4;
      v31 = a4 + 4 * a3 * (v6 - 1) - 4;
      v32 = vdupq_n_s64(4uLL);
      v33 = 4 * v6 - 4 * v29 + a5 + 8;
      do
      {
        if (((a2 >> v28) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v34 = v31;
            v35 = v30;
            v36 = v29 + 1;
            do
            {
              v11 = *v34;
              *v35-- = *v34;
              --v36;
              v34 -= a3;
            }

            while (v36 > 1);
          }
        }

        else
        {
          v37 = v33;
          v38 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v39 = xmmword_27750D320;
          v40 = xmmword_27750D310;
          do
          {
            v41 = vmovn_s64(vcgeq_u64(v14, v39));
            if (vuzp1_s16(v41, *v14.i8).u8[0])
            {
              *(v37 - 2) = v11;
            }

            if (vuzp1_s16(v41, *&v14).i8[2])
            {
              *(v37 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v40))).i32[1])
            {
              *v37 = v11;
              v37[1] = v11;
            }

            v40 = vaddq_s64(v40, v32);
            v39 = vaddq_s64(v39, v32);
            v37 += 4;
            v38 -= 4;
          }

          while (v38);
        }

        ++v28;
        v30 -= 4 * v29;
        v31 -= 4 * a3 * v29;
        v33 -= 4 * v29;
      }

      while (v28 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v11;
    if (v7 >= 1)
    {
      v42 = 0;
      v43 = 2 << a1;
      v44 = v8;
      if (v8 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v8;
      }

      v46 = v43;
      v47 = (a5 + 4 * v43);
      v48 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = vdupq_n_s64(v8 - 1);
      v50 = 4 * v8;
      v51 = (a4 - 4 * a3);
      v52 = vdupq_n_s64(4uLL);
      v53 = v47 + 2;
      do
      {
        if (((a2 >> v42) & 0x200) != 0)
        {
          if (a1 != 31)
          {
            v54 = v51;
            v55 = v47;
            v56 = v45;
            do
            {
              v57 = *v54++;
              v11 = v57;
              *v55++ = v57;
              --v56;
            }

            while (v56);
          }
        }

        else
        {
          v58 = v53;
          v59 = (v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v60 = xmmword_27750D320;
          v61 = xmmword_27750D310;
          do
          {
            v62 = vmovn_s64(vcgeq_u64(v49, v60));
            if (vuzp1_s16(v62, *v49.i8).u8[0])
            {
              *(v58 - 2) = v11;
            }

            if (vuzp1_s16(v62, *&v49).i8[2])
            {
              *(v58 - 1) = v11;
            }

            if (vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v61))).i32[1])
            {
              *v58 = v11;
              v58[1] = v11;
            }

            v61 = vaddq_s64(v61, v52);
            v60 = vaddq_s64(v60, v52);
            v58 += 4;
            v59 -= 4;
          }

          while (v59);
        }

        ++v42;
        v47 = (v47 + v50);
        v51 = (v51 + v50);
        v53 = (v53 + v50);
      }

      while (v42 != v7);
      v63 = 0;
      v64 = 4 * v46;
      v65 = 4 * v6;
      v66 = (a5 + v64 + v65);
      v67 = 4 * v44;
      v68 = (a4 + v65 - 4 * a3);
      v69 = v66 + 2;
      v70 = vdupq_n_s64(4uLL);
      do
      {
        if (((a2 >> v63) & 0x2000) != 0)
        {
          if (a1 != 31)
          {
            v71 = v68;
            v72 = v66;
            v73 = v45;
            do
            {
              v74 = *v71++;
              v11 = v74;
              *v72++ = v74;
              --v73;
            }

            while (v73);
          }
        }

        else
        {
          v75 = v69;
          v76 = v48;
          v77 = xmmword_27750D320;
          v78 = xmmword_27750D310;
          do
          {
            v79 = vmovn_s64(vcgeq_u64(v49, v77));
            if (vuzp1_s16(v79, *v49.i8).u8[0])
            {
              *(v75 - 2) = v11;
            }

            if (vuzp1_s16(v79, *&v49).i8[2])
            {
              *(v75 - 1) = v11;
            }

            if (vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v78))).i32[1])
            {
              *v75 = v11;
              v75[1] = v11;
            }

            v78 = vaddq_s64(v78, v70);
            v77 = vaddq_s64(v77, v70);
            v75 += 4;
            v76 -= 4;
          }

          while (v76);
        }

        ++v63;
        v66 = (v66 + v67);
        v68 = (v68 + v67);
        v69 = (v69 + v67);
      }

      while (v63 != v7);
    }
  }

  else
  {

    memset_pattern16((a5 - 4), &unk_27750D860, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_27740D78C(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = (1 << a1);
    v6 = (v5 >> 2);
    v7 = __clz(__rbit32(a2));
    if (v7 < 9)
    {
      v8 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 + 18 + v7]) * a3 - 4);
    }

    else
    {
      v8 = (a4 + 4 * (byte_27750DC84[9 * a1 + 9 + v7] - a3));
    }

    v9 = *v8;
    if (v6 >= 1)
    {
      v10 = 0;
      v11 = 2 << a1;
      v12 = a5 + 4 * v11;
      v13 = a4 + 4 * a3 * (v11 - 1) - 4;
      do
      {
        v14 = v10 + 1;
        if ((a2 >> v10))
        {
          v15 = -4;
          v16 = v13;
          do
          {
            v9 = *v16;
            *(v12 + v15) = *v16;
            v15 -= 4;
            v16 -= a3;
          }

          while (v15 != -20);
        }

        else
        {
          *(a5 + 4 * (v11 - 4 * v14)) = vdupq_n_s32(v9);
        }

        v12 -= 16;
        v13 -= 16 * a3;
        v10 = v14;
      }

      while (v14 != v6);
      v17 = 0;
      v18 = a5 + 4 * v5;
      v19 = a4 + 4 * a3 * (v5 - 1) - 4;
      do
      {
        v20 = v17 + 1;
        if (((a2 >> v17) & 0x10) != 0)
        {
          v21 = -4;
          v22 = v19;
          do
          {
            v9 = *v22;
            *(v18 + v21) = *v22;
            v21 -= 4;
            v22 -= a3;
          }

          while (v21 != -20);
        }

        else
        {
          *(a5 + 4 * (v5 - 4 * v20)) = vdupq_n_s32(v9);
        }

        v18 -= 16;
        v19 -= 16 * a3;
        v17 = v20;
      }

      while (v20 != v6);
    }

    if ((a2 & 0x100) != 0)
    {
      v9 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v9;
    if (v6 >= 1)
    {
      v23 = 0;
      v24 = 2 << a1;
      v25 = a5 + 4 * v24;
      v26 = a4 - 4 * a3;
      v27 = v25;
      do
      {
        if (((a2 >> v23) & 0x200) != 0)
        {
          for (i = 0; i != 16; i += 4)
          {
            v9 = *(v26 + i);
            *(v27 + i) = v9;
          }
        }

        else
        {
          *(v25 + 16 * v23) = vdupq_n_s32(v9);
        }

        ++v23;
        v27 += 16;
        v26 += 16;
      }

      while (v23 != v6);
      v29 = 0;
      v30 = a5 + 4 * v24 + 4 * v5;
      v31 = a4 + 4 * (1 << a1) - 4 * a3;
      do
      {
        if (((a2 >> v29) & 0x2000) != 0)
        {
          for (j = 0; j != 16; j += 4)
          {
            v9 = *(v31 + j);
            *(v30 + j) = v9;
          }
        }

        else
        {
          *(v25 + 4 * (v5 + 4 * v29)) = vdupq_n_s32(v9);
        }

        ++v29;
        v30 += 16;
        v31 += 16;
      }

      while (v29 != v6);
    }
  }

  else
  {
    memset_pattern16((a5 - 4), &unk_27750D860, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_27740DA14(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = (1 << a1);
    v7 = ((v6 + 4) >> 3);
    if (v6 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 4 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 4);
    }

    else
    {
      v10 = (a4 + 4 * (byte_27750DC84[9 * a1 + 9 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = a5 + 4 * (2 << a1) - 4;
      v16 = a4 + 4 * a3 * ((2 << a1) - 1) - 4;
      v17 = 4 * (2 << a1) - 4 * v8 + a5 + 8;
      v18 = vdupq_n_s64(4uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v19 = v16;
            v20 = v15;
            v21 = v8 + 1;
            do
            {
              v11 = *v19;
              *v20-- = *v19;
              --v21;
              v19 -= a3;
            }

            while (v21 > 1);
          }
        }

        else
        {
          v22 = v17;
          v23 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v24 = xmmword_27750D320;
          v25 = xmmword_27750D310;
          do
          {
            v26 = vmovn_s64(vcgeq_u64(v14, v24));
            if (vuzp1_s16(v26, *v14.i8).u8[0])
            {
              *(v22 - 2) = v11;
            }

            if (vuzp1_s16(v26, *&v14).i8[2])
            {
              *(v22 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v25))).i32[1])
            {
              *v22 = v11;
              v22[1] = v11;
            }

            v25 = vaddq_s64(v25, v18);
            v24 = vaddq_s64(v24, v18);
            v22 += 4;
            v23 -= 4;
          }

          while (v23);
        }

        ++v12;
        v15 -= 4 * v8;
        v16 -= 4 * a3 * v8;
        v17 -= 4 * v8;
      }

      while (v12 != v7);
      v27 = 0;
      if (v6 >= 8)
      {
        v28 = 8;
      }

      else
      {
        v28 = v6;
      }

      v29 = a5 + 4 * v6 - 4;
      v30 = a4 + 4 * a3 * (v6 - 1) - 4;
      v31 = 4 * v6 - 4 * v28 + a5 + 8;
      v32 = vdupq_n_s64(4uLL);
      do
      {
        if (((a2 >> v27) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v33 = v30;
            v34 = v29;
            v35 = v28 + 1;
            do
            {
              v11 = *v33;
              *v34-- = *v33;
              --v35;
              v33 -= a3;
            }

            while (v35 > 1);
          }
        }

        else
        {
          v36 = v31;
          v37 = v13;
          v38 = xmmword_27750D320;
          v39 = xmmword_27750D310;
          do
          {
            v40 = vmovn_s64(vcgeq_u64(v14, v38));
            if (vuzp1_s16(v40, *v14.i8).u8[0])
            {
              *(v36 - 2) = v11;
            }

            if (vuzp1_s16(v40, *&v14).i8[2])
            {
              *(v36 - 1) = v11;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v39))).i32[1])
            {
              *v36 = v11;
              v36[1] = v11;
            }

            v39 = vaddq_s64(v39, v32);
            v38 = vaddq_s64(v38, v32);
            v36 += 4;
            v37 -= 4;
          }

          while (v37);
        }

        ++v27;
        v29 -= 4 * v28;
        v30 -= 4 * a3 * v28;
        v31 -= 4 * v28;
      }

      while (v27 != v7);
    }

    v41 = (v6 >> 2);
    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 4 * ~a3);
    }

    *(a5 - 4) = v11;
    if (v41 >= 1)
    {
      v42 = 0;
      v43 = 2 << a1;
      v44 = a5 + 4 * v43;
      v45 = a4 - 4 * a3;
      v46 = v44;
      do
      {
        if (((a2 >> v42) & 0x200) != 0)
        {
          for (i = 0; i != 16; i += 4)
          {
            v11 = *(v45 + i);
            *(v46 + i) = v11;
          }
        }

        else
        {
          *(v44 + 16 * v42) = vdupq_n_s32(v11);
        }

        ++v42;
        v46 += 16;
        v45 += 16;
      }

      while (v42 != v41);
      v48 = 0;
      v49 = a5 + 4 * v43 + 4 * v6;
      v50 = a4 + 4 * (1 << a1) - 4 * a3;
      do
      {
        if (((a2 >> v48) & 0x2000) != 0)
        {
          for (j = 0; j != 16; j += 4)
          {
            v11 = *(v50 + j);
            *(v49 + j) = v11;
          }
        }

        else
        {
          *(v44 + 4 * (v6 + 4 * v48)) = vdupq_n_s32(v11);
        }

        ++v48;
        v49 += 16;
        v50 += 16;
      }

      while (v48 != v41);
    }
  }

  else
  {

    memset_pattern16((a5 - 4), &unk_27750D860, (16 * ((4 << a1) >> 2)) | 4);
  }
}

void sub_27740DE30(int a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = a1;
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &a5[v10];
        v13 = (a4 + 4 * a3 * v10 - 4);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v14 = (a4 + 4 * (v10 - a3));
      if ((a2 & 0x1E00) != 0)
      {
        v14 = (a4 - 4 * a3);
      }

      if ((a2 & 0x100) != 0)
      {
        v14 = (a4 + 4 * ~a3);
      }

      if ((a2 & 0xF0) != 0)
      {
        v14 = (a4 + 4 * (v10 - 1) * a3 - 4);
      }

      v15 = *v14;
      v16 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = vdupq_n_s64(v10 - 1);
      v18 = &a5[v10 + 2];
      v19 = xmmword_27750D310;
      v20 = xmmword_27750D320;
      v21 = vdupq_n_s64(4uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v20));
        if (vuzp1_s16(v22, *v17.i8).u8[0])
        {
          *(v18 - 2) = v15;
        }

        if (vuzp1_s16(v22, *&v17).i8[2])
        {
          *(v18 - 1) = v15;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v19))).i32[1])
        {
          *v18 = v15;
          v18[1] = v15;
        }

        v19 = vaddq_s64(v19, v21);
        v20 = vaddq_s64(v20, v21);
        v18 += 4;
        v16 -= 4;
      }

      while (v16);
    }

    if ((a2 & 0xF0) != 0)
    {
      if (a1 != 31)
      {
        v23 = (a4 - 4);
        if (v10 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v10;
        }

        v25 = a5;
        do
        {
          *v25++ = *v23;
          v23 += a3;
          --v24;
        }

        while (v24);
      }
    }

    else
    {
      v26 = a5[v10];
      v27 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v28 = vdupq_n_s64(v10 - 1);
      v29 = xmmword_27750D310;
      v30 = xmmword_27750D320;
      v31 = a5 + 2;
      v32 = vdupq_n_s64(4uLL);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v28, v30));
        if (vuzp1_s16(v33, *v28.i8).u8[0])
        {
          *(v31 - 2) = v26;
        }

        if (vuzp1_s16(v33, *&v28).i8[2])
        {
          *(v31 - 1) = v26;
        }

        if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v29))).i32[1])
        {
          *v31 = v26;
          v31[1] = v26;
        }

        v29 = vaddq_s64(v29, v32);
        v30 = vaddq_s64(v30, v32);
        v31 += 4;
        v27 -= 4;
      }

      while (v27);
    }

    v34 = (a4 + 4 * ~a3);
    if ((a2 & 0x100) == 0)
    {
      v34 = a5;
    }

    v35 = *v34;
    *(a5 - 1) = v35;
    v36 = 2 << a1;
    if ((a2 & 0x1E00) != 0)
    {
      memcpy(&a5[v36], (a4 - 4 * a3), 4 * v10);
    }

    else
    {
      v37 = v36;
      v38 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v39 = vdupq_n_s64(v10 - 1);
      v40 = &a5[v37 + 2];
      v41 = xmmword_27750D310;
      v42 = xmmword_27750D320;
      v43 = vdupq_n_s64(4uLL);
      do
      {
        v44 = vmovn_s64(vcgeq_u64(v39, v42));
        if (vuzp1_s16(v44, *v39.i8).u8[0])
        {
          *(v40 - 2) = v35;
        }

        if (vuzp1_s16(v44, *&v39).i8[2])
        {
          *(v40 - 1) = v35;
        }

        if (vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v41))).i32[1])
        {
          *v40 = v35;
          v40[1] = v35;
        }

        v41 = vaddq_s64(v41, v43);
        v42 = vaddq_s64(v42, v43);
        v40 += 4;
        v38 -= 4;
      }

      while (v38);
    }

    v45 = &a5[3 << v6];
    if ((a2 & 0x1E000) != 0)
    {

      memcpy(v45, (a4 + 4 * v10 - 4 * a3), 4 * v10);
    }

    else
    {
      v46 = *(v45 - 1);
      v47 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v48 = vdupq_n_s64(v10 - 1);
      v49 = &a5[(3 << v6) + 2];
      v50 = xmmword_27750D310;
      v51 = xmmword_27750D320;
      v52 = vdupq_n_s64(4uLL);
      do
      {
        v53 = vmovn_s64(vcgeq_u64(v48, v51));
        if (vuzp1_s16(v53, *v48.i8).u8[0])
        {
          *(v49 - 2) = v46;
        }

        if (vuzp1_s16(v53, *&v48).i8[2])
        {
          *(v49 - 1) = v46;
        }

        if (vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v50))).i32[1])
        {
          *v49 = v46;
          v49[1] = v46;
        }

        v50 = vaddq_s64(v50, v52);
        v51 = vaddq_s64(v51, v52);
        v49 += 4;
        v47 -= 4;
      }

      while (v47);
    }
  }

  else
  {

    memset_pattern16(a5 - 1, &unk_27750D860, (16 * ((4 << a1) >> 2)) | 4);
  }
}

uint64_t sub_27740E280(uint64_t result)
{
  *result = sub_27740EEFC;
  *(result + 16) = sub_27740E774;
  v1 = *(result + 537);
  *(result + 312) = sub_277404DA4;
  *(result + 200) = sub_27740E754;
  *(result + 208) = sub_27740E734;
  *(result + 216) = sub_27740E714;
  *(result + 224) = sub_27740E6EC;
  *(result + 232) = sub_27740E6B4;
  *(result + 120) = sub_27740E68C;
  *(result + 128) = sub_27740E664;
  *(result + 136) = sub_27740E638;
  *(result + 144) = sub_27740E608;
  *(result + 152) = sub_27740E5D0;
  *(result + 520) = sub_27740E530;
  *(result + 32) = sub_27745A218;
  *(result + 40) = sub_27745A154;
  v2 = v1 == 0;
  v3 = sub_277459FB4;
  if (!v2)
  {
    v3 = sub_27745A078;
  }

  *(result + 48) = v3;
  *(result + 320) = sub_277459F3C;
  *(result + 328) = sub_277459E60;
  *(result + 280) = sub_277459DC8;
  *(result + 288) = sub_277459D2C;
  *(result + 160) = sub_277459CC0;
  *(result + 168) = sub_277459BEC;
  *(result + 176) = sub_277459B3C;
  *(result + 184) = sub_277459B10;
  *(result + 192) = sub_277459AD4;
  *(result + 80) = sub_277459A78;
  *(result + 88) = sub_2774599E0;
  *(result + 96) = sub_27745993C;
  *(result + 104) = sub_27745990C;
  *(result + 112) = sub_2774598D4;
  *(result + 240) = sub_277459730;
  *(result + 248) = sub_2774594B8;
  *(result + 256) = sub_277459190;
  *(result + 264) = sub_277458DB8;
  *(result + 272) = sub_27745899C;
  *(result + 336) = sub_277458844;
  *(result + 352) = sub_2774587A8;
  *(result + 296) = sub_277458708;
  *(result + 344) = sub_2774586A8;
  *(result + 304) = sub_2774585A8;
  return result;
}

uint64_t sub_27740E530(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = 8 - a3;
    v11 = 2 * a2;
    v12 = 2 * a4;
    do
    {
      v13 = 0;
      do
      {
        result = sub_2773FB848(v8, a3);
        *(a5 + v13) = result << v10;
        v13 += 2;
      }

      while (v11 != v13);
      ++v9;
      a5 += v12;
    }

    while (v9 != a2);
  }

  return result;
}

void sub_27740E5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 64; ++i)
  {
    v5 = 0;
    v6 = (a2 + 2 * i);
    v7 = vld1q_dup_s16(v6);
    do
    {
      *(a4 + v5) = v7;
      v5 += 16;
    }

    while (v5 != 128);
    a4 += 2 * a3;
  }
}

int16x8_t sub_27740E608(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 2;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-2] = result;
    v5[-1] = result;
    *v5 = result;
    v5[1] = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 64);
  return result;
}

int16x8_t sub_27740E638(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 1;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-1] = result;
    *v5 = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 32);
  return result;
}

int16x8_t sub_27740E664(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  for (i = 0; i != 16; i += 2)
  {
    v5 = (a2 + i);
    result = vld1q_dup_s16(v5);
    *a4 = result;
    a4 = (a4 + 2 * a3);
  }

  return result;
}

int16x4_t sub_27740E68C(uint64_t a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  for (i = 0; i != 8; i += 2)
  {
    v5 = (a2 + i);
    result = vld1_dup_s16(v5);
    *a4 = result;
    a4 = (a4 + 2 * a3);
  }

  return result;
}

__n128 sub_27740E6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 64;
  do
  {
    v5 = *(a2 + 256);
    v6 = *(a2 + 272);
    v7 = *(a2 + 304);
    *(a4 + 32) = *(a2 + 288);
    *(a4 + 48) = v7;
    *a4 = v5;
    *(a4 + 16) = v6;
    result = *(a2 + 320);
    v9 = *(a2 + 336);
    v10 = *(a2 + 368);
    *(a4 + 96) = *(a2 + 352);
    *(a4 + 112) = v10;
    *(a4 + 64) = result;
    *(a4 + 80) = v9;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_27740E6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 32;
  do
  {
    result = *(a2 + 128);
    v6 = *(a2 + 144);
    v7 = *(a2 + 176);
    *(a4 + 32) = *(a2 + 160);
    *(a4 + 48) = v7;
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_27740E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 16;
  do
  {
    result = *(a2 + 64);
    v6 = *(a2 + 80);
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += 2 * a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_27740E734(uint64_t a1, __n128 *a2, uint64_t a3, __n128 *a4)
{
  v4 = 8;
  do
  {
    result = a2[2];
    *a4 = result;
    a4 = (a4 + 2 * a3);
    --v4;
  }

  while (v4);
  return result;
}

void sub_27740E754(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4;
  do
  {
    *a4 = *(a2 + 16);
    a4 = (a4 + 2 * a3);
    --v4;
  }

  while (v4);
}

void sub_27740E774(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1 << a1;
    v7 = (((1 << a1) + 4) >> 3);
    if (1 << a1 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << a1;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 2 * ((2 << a1) + ~byte_27750DC84[9 * a1 - 18 + v9]) * a3 - 2);
    }

    else
    {
      v10 = (a4 + 2 * (byte_27750DC84[9 * a1 - 27 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 2 << a1;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = 2 * v13;
      v16 = a5 + 2 * v13 - 2;
      v17 = a4 + 2 * a3 * (v13 - 1) - 2;
      v18 = v15 - 2 * v8 + a5 + 8;
      v19 = vdupq_n_s64(8uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (a1 != 31)
          {
            v20 = v17;
            v21 = v16;
            v22 = v8 + 1;
            do
            {
              v11 = *v20;
              *v21-- = *v20;
              --v22;
              v20 -= a3;
            }

            while (v22 > 1);
          }
        }

        else
        {
          v23 = v18;
          v24 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v25 = xmmword_27750D320;
          v26 = xmmword_27750D310;
          v27 = xmmword_27750D300;
          v28 = xmmword_27750D2F0;
          do
          {
            v29 = vmovn_s64(vcgeq_u64(v14, v25));
            if (vuzp1_s8(vuzp1_s16(v29, *v14.i8), *v14.i8).u8[0])
            {
              *(v23 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v29, *&v14), *&v14).i8[1])
            {
              *(v23 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v26))), *&v14).i8[2])
            {
              *(v23 - 2) = v11;
              *(v23 - 1) = v11;
            }

            v30 = vmovn_s64(vcgeq_u64(v14, v27));
            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i32[1])
            {
              *v23 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i8[5])
            {
              v23[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v28)))).i8[6])
            {
              v23[2] = v11;
              v23[3] = v11;
            }

            v27 = vaddq_s64(v27, v19);
            v26 = vaddq_s64(v26, v19);
            v25 = vaddq_s64(v25, v19);
            v23 += 8;
            v28 = vaddq_s64(v28, v19);
            v24 -= 8;
          }

          while (v24);
        }

        ++v12;
        v16 -= 2 * v8;
        v17 -= 2 * a3 * v8;
        v18 -= 2 * v8;
      }

      while (v12 != v7);
      v31 = 0;
      if (v6 >= 8)
      {
        v32 = 8;
      }

      else
      {
        v32 = v6;
      }

      v33 = a5 + 2 * v6 - 2;
      v34 = a4 + 2 * a3 * (v6 - 1) - 2;
      v35 = 2 * v6 - 2 * v32 + a5 + 8;
      do
      {
        if (((a2 >> v31) & 0x10) != 0)
        {
          if (a1 != 31)
          {
            v36 = v34;
            v37 = v33;
            v38 = v32 + 1;
            do
            {
              v11 = *v36;
              *v37-- = *v36;
              --v38;
              v36 -= a3;
            }

            while (v38 > 1);
          }
        }

        else
        {
          v39 = v35;
          v40 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v41 = xmmword_27750D320;
          v42 = xmmword_27750D310;
          v43 = xmmword_27750D300;
          v44 = xmmword_27750D2F0;
          do
          {
            v45 = vmovn_s64(vcgeq_u64(v14, v41));
            if (vuzp1_s8(vuzp1_s16(v45, *v14.i8), *v14.i8).u8[0])
            {
              *(v39 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v45, *&v14), *&v14).i8[1])
            {
              *(v39 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v42))), *&v14).i8[2])
            {
              *(v39 - 2) = v11;
              *(v39 - 1) = v11;
            }

            v46 = vmovn_s64(vcgeq_u64(v14, v43));
            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i32[1])
            {
              *v39 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i8[5])
            {
              v39[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v44)))).i8[6])
            {
              v39[2] = v11;
              v39[3] = v11;
            }

            v47 = vdupq_n_s64(8uLL);
            v43 = vaddq_s64(v43, v47);
            v42 = vaddq_s64(v42, v47);
            v41 = vaddq_s64(v41, v47);
            v44 = vaddq_s64(v44, v47);
            v39 += 8;
            v40 -= 8;
          }

          while (v40);
        }

        ++v31;
        v33 -= 2 * v32;
        v34 -= 2 * a3 * v32;
        v35 -= 2 * v32;
      }

      while (v31 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 2 * ~a3);
    }

    *(a5 - 2) = v11;
    if (v7 >= 1)
    {
      v48 = 0;
      v49 = 2 << a1;
      v50 = v8;
      if (v8 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v8;
      }

      v52 = (a5 + 2 * v49);
      v53 = vdupq_n_s64(v8 - 1);
      v54 = 2 * v8;
      v55 = vdupq_n_s64(8uLL);
      v56 = (a4 - 2 * a3);
      v57 = v52 + 4;
      do
      {
        if (((a2 >> v48) & 0x200) != 0)
        {
          if (a1 != 31)
          {
            v58 = v56;
            v59 = v52;
            v60 = v51;
            do
            {
              v61 = *v58++;
              v11 = v61;
              *v59++ = v61;
              --v60;
            }

            while (v60);
          }
        }

        else
        {
          v62 = v57;
          v63 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v64 = xmmword_27750D320;
          v65 = xmmword_27750D310;
          v66 = xmmword_27750D300;
          v67 = xmmword_27750D2F0;
          do
          {
            v68 = vmovn_s64(vcgeq_u64(v53, v64));
            if (vuzp1_s8(vuzp1_s16(v68, *v53.i8), *v53.i8).u8[0])
            {
              *(v62 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v68, *&v53), *&v53).i8[1])
            {
              *(v62 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v65))), *&v53).i8[2])
            {
              *(v62 - 2) = v11;
              *(v62 - 1) = v11;
            }

            v69 = vmovn_s64(vcgeq_u64(v53, v66));
            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i32[1])
            {
              *v62 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i8[5])
            {
              v62[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v67)))).i8[6])
            {
              v62[2] = v11;
              v62[3] = v11;
            }

            v66 = vaddq_s64(v66, v55);
            v65 = vaddq_s64(v65, v55);
            v64 = vaddq_s64(v64, v55);
            v62 += 8;
            v67 = vaddq_s64(v67, v55);
            v63 -= 8;
          }

          while (v63);
        }

        ++v48;
        v52 = (v52 + v54);
        v56 = (v56 + v54);
        v57 = (v57 + v54);
      }

      while (v48 != v7);
      v70 = 0;
      v71 = 2 * v6;
      v72 = (a5 + 2 * v49 + v71);
      v73 = 2 * v50;
      v74 = (a4 + v71 - 2 * a3);
      v75 = v72 + 4;
      v76 = vdupq_n_s64(8uLL);
      do
      {
        if (((a2 >> v70) & 0x2000) != 0)
        {
          if (a1 != 31)
          {
            v77 = v74;
            v78 = v72;
            v79 = v51;
            do
            {
              v80 = *v77++;
              v11 = v80;
              *v78++ = v80;
              --v79;
            }

            while (v79);
          }
        }

        else
        {
          v81 = v75;
          v82 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v83 = xmmword_27750D320;
          v84 = xmmword_27750D310;
          v85 = xmmword_27750D300;
          v86 = xmmword_27750D2F0;
          do
          {
            v87 = vmovn_s64(vcgeq_u64(v53, v83));
            if (vuzp1_s8(vuzp1_s16(v87, *v53.i8), *v53.i8).u8[0])
            {
              *(v81 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v87, *&v53), *&v53).i8[1])
            {
              *(v81 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v84))), *&v53).i8[2])
            {
              *(v81 - 2) = v11;
              *(v81 - 1) = v11;
            }

            v88 = vmovn_s64(vcgeq_u64(v53, v85));
            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i32[1])
            {
              *v81 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i8[5])
            {
              v81[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v86)))).i8[6])
            {
              v81[2] = v11;
              v81[3] = v11;
            }

            v85 = vaddq_s64(v85, v76);
            v84 = vaddq_s64(v84, v76);
            v83 = vaddq_s64(v83, v76);
            v81 += 8;
            v86 = vaddq_s64(v86, v76);
            v82 -= 8;
          }

          while (v82);
        }

        ++v70;
        v72 = (v72 + v73);
        v74 = (v74 + v73);
        v75 = (v75 + v73);
      }

      while (v70 != v7);
    }
  }

  else
  {

    memset_pattern16((a5 - 2), &unk_27750D860, (8 * ((4 << a1) >> 2)) | 2);
  }
}

void sub_27740EEFC(int a1, int a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v6 = a1;
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &a5[v10];
        v13 = (a4 + 2 * a3 * v10 - 2);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }

LABEL_32:
      if ((a2 & 0xF0) != 0)
      {
        if (a1 != 31)
        {
          v27 = (a4 - 2);
          if (v10 <= 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = v10;
          }

          v29 = a5;
          do
          {
            *v29++ = *v27;
            v27 += a3;
            --v28;
          }

          while (v28);
        }
      }

      else
      {
        v30 = a5[v10];
        v31 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v32 = vdupq_n_s64(v10 - 1);
        v33 = xmmword_27750D2F0;
        v34 = xmmword_27750D300;
        v35 = xmmword_27750D310;
        v36 = xmmword_27750D320;
        v37 = a5 + 4;
        v38 = vdupq_n_s64(8uLL);
        do
        {
          v39 = vmovn_s64(vcgeq_u64(v32, v36));
          if (vuzp1_s8(vuzp1_s16(v39, *v32.i8), *v32.i8).u8[0])
          {
            *(v37 - 4) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(v39, *&v32), *&v32).i8[1])
          {
            *(v37 - 3) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v35))), *&v32).i8[2])
          {
            *(v37 - 2) = v30;
            *(v37 - 1) = v30;
          }

          v40 = vmovn_s64(vcgeq_u64(v32, v34));
          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i32[1])
          {
            *v37 = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i8[5])
          {
            v37[1] = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v33)))).i8[6])
          {
            v37[2] = v30;
            v37[3] = v30;
          }

          v34 = vaddq_s64(v34, v38);
          v35 = vaddq_s64(v35, v38);
          v36 = vaddq_s64(v36, v38);
          v37 += 8;
          v33 = vaddq_s64(v33, v38);
          v31 -= 8;
        }

        while (v31);
      }

      v41 = (a4 + 2 * ~a3);
      if ((a2 & 0x100) == 0)
      {
        v41 = a5;
      }

      v42 = *v41;
      *(a5 - 1) = v42;
      v43 = 2 << a1;
      if ((a2 & 0x1E00) != 0)
      {
        memcpy(&a5[v43], (a4 - 2 * a3), 2 * v10);
      }

      else
      {
        v44 = v43;
        v45 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = vdupq_n_s64(v10 - 1);
        v47 = &a5[v44 + 4];
        v48 = xmmword_27750D2F0;
        v49 = xmmword_27750D300;
        v50 = xmmword_27750D310;
        v51 = xmmword_27750D320;
        v52 = vdupq_n_s64(8uLL);
        do
        {
          v53 = vmovn_s64(vcgeq_u64(v46, v51));
          if (vuzp1_s8(vuzp1_s16(v53, *v46.i8), *v46.i8).u8[0])
          {
            *(v47 - 4) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(v53, *&v46), *&v46).i8[1])
          {
            *(v47 - 3) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v50))), *&v46).i8[2])
          {
            *(v47 - 2) = v42;
            *(v47 - 1) = v42;
          }

          v54 = vmovn_s64(vcgeq_u64(v46, v49));
          if (vuzp1_s8(*&v46, vuzp1_s16(v54, *&v46)).i32[1])
          {
            *v47 = v42;
          }

          if (vuzp1_s8(*&v46, vuzp1_s16(v54, *&v46)).i8[5])
          {
            v47[1] = v42;
          }

          if (vuzp1_s8(*&v46, vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v48)))).i8[6])
          {
            v47[2] = v42;
            v47[3] = v42;
          }

          v49 = vaddq_s64(v49, v52);
          v50 = vaddq_s64(v50, v52);
          v51 = vaddq_s64(v51, v52);
          v47 += 8;
          v48 = vaddq_s64(v48, v52);
          v45 -= 8;
        }

        while (v45);
      }

      v55 = &a5[3 << v6];
      if ((a2 & 0x1E000) != 0)
      {

        memcpy(v55, (a4 + 2 * v10 - 2 * a3), 2 * v10);
      }

      else
      {
        v56 = *(v55 - 1);
        v57 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v58 = vdupq_n_s64(v10 - 1);
        v59 = &a5[(3 << v6) + 4];
        v60 = xmmword_27750D2F0;
        v61 = xmmword_27750D300;
        v62 = xmmword_27750D310;
        v63 = xmmword_27750D320;
        v64 = vdupq_n_s64(8uLL);
        do
        {
          v65 = vmovn_s64(vcgeq_u64(v58, v63));
          if (vuzp1_s8(vuzp1_s16(v65, *v58.i8), *v58.i8).u8[0])
          {
            *(v59 - 4) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(v65, *&v58), *&v58).i8[1])
          {
            *(v59 - 3) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v62))), *&v58).i8[2])
          {
            *(v59 - 2) = v56;
            *(v59 - 1) = v56;
          }

          v66 = vmovn_s64(vcgeq_u64(v58, v61));
          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i32[1])
          {
            *v59 = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i8[5])
          {
            v59[1] = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v60)))).i8[6])
          {
            v59[2] = v56;
            v59[3] = v56;
          }

          v61 = vaddq_s64(v61, v64);
          v62 = vaddq_s64(v62, v64);
          v63 = vaddq_s64(v63, v64);
          v59 += 8;
          v60 = vaddq_s64(v60, v64);
          v57 -= 8;
        }

        while (v57);
      }

      return;
    }

    if ((a2 & 0xF0) != 0)
    {
      v14 = (a4 + 2 * (v10 - 1) * a3 - 2);
      goto LABEL_18;
    }

    if ((a2 & 0x100) != 0)
    {
      v15 = ~a3;
    }

    else
    {
      if ((a2 & 0x1E00) != 0)
      {
        v14 = (a4 - 2 * a3);
        goto LABEL_18;
      }

      v15 = v10 - a3;
    }

    v14 = (a4 + 2 * v15);
LABEL_18:
    v16 = *v14;
    v17 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = vdupq_n_s64(v10 - 1);
    v19 = &a5[v10 + 4];
    v20 = xmmword_27750D2F0;
    v21 = xmmword_27750D300;
    v22 = xmmword_27750D310;
    v23 = xmmword_27750D320;
    v24 = vdupq_n_s64(8uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v18, v23));
      if (vuzp1_s8(vuzp1_s16(v25, *v18.i8), *v18.i8).u8[0])
      {
        *(v19 - 4) = v16;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v18), *&v18).i8[1])
      {
        *(v19 - 3) = v16;
      }

      if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v22))), *&v18).i8[2])
      {
        *(v19 - 2) = v16;
        *(v19 - 1) = v16;
      }

      v26 = vmovn_s64(vcgeq_u64(v18, v21));
      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i32[1])
      {
        *v19 = v16;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i8[5])
      {
        v19[1] = v16;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v20)))).i8[6])
      {
        v19[2] = v16;
        v19[3] = v16;
      }

      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v23 = vaddq_s64(v23, v24);
      v19 += 8;
      v20 = vaddq_s64(v20, v24);
      v17 -= 8;
    }

    while (v17);
    goto LABEL_32;
  }

  memset_pattern16(a5 - 1, &unk_27750D860, (8 * ((4 << a1) >> 2)) | 2);
}

uint64_t sub_27740F574(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= 1)
  {
    v6 = a6;
    v10 = result;
    v11 = 0;
    v12 = a6 + 1;
    v13 = 8 - a4;
    v18 = a2;
    v14 = 2 * a2;
    do
    {
      if (a2 >= 1)
      {
        v15 = 0;
        do
        {
          result = sub_2773FB848(v10, a4);
          *(v6 + v15) = result << v13;
          v15 += 2;
        }

        while (v14 != v15);
      }

      v6 += a5;
      ++v11;
    }

    while (v11 != a3);
    v16 = 0;
    do
    {
      if (a2 >= 1)
      {
        v17 = 0;
        do
        {
          result = sub_2773FB848(v10, a4);
          *(v12 + v17) = result << v13;
          v17 += 2;
        }

        while (2 * v18 != v17);
      }

      v12 += a5;
      ++v16;
    }

    while (v16 != a3);
  }

  return result;
}

unsigned __int8 *sub_27740F680(unsigned __int8 *result, uint64_t a2)
{
  v2 = 1;
  do
  {
    v3 = 0;
    v4 = *(result - 2);
    v5 = v2;
    *(a2 - 2) = (*result + 2 * v4 + result[128] + 2) >> 2;
    *(a2 + 254) = result[254];
    *(a2 + 126) = result[126];
    v6 = v4;
    do
    {
      v7 = result[v3];
      v8 = (a2 + v3);
      *v8 = (v4 + 2 * v7 + result[v3 + 2] + 2) >> 2;
      v9 = result[v3 + 128];
      v8[128] = (v6 + 2 * v9 + result[v3 + 130] + 2) >> 2;
      v3 += 2;
      v4 = v7;
      v6 = v9;
    }

    while (v3 != 126);
    v2 = 0;
    ++result;
    ++a2;
  }

  while ((v5 & 1) != 0);
  return result;
}

unsigned __int8 *sub_27740F728(unsigned __int8 *result, uint64_t a2)
{
  v2 = 1;
  do
  {
    v3 = 0;
    v4 = *(result - 2);
    v5 = v2;
    *(a2 - 2) = (*result + 2 * v4 + result[64] + 2) >> 2;
    *(a2 + 126) = result[126];
    *(a2 + 62) = result[62];
    v6 = v4;
    do
    {
      v7 = result[v3];
      v8 = (a2 + v3);
      *v8 = (v4 + 2 * v7 + result[v3 + 2] + 2) >> 2;
      v9 = result[v3 + 64];
      v8[64] = (v6 + 2 * v9 + result[v3 + 66] + 2) >> 2;
      v3 += 2;
      v4 = v7;
      v6 = v9;
    }

    while (v3 != 62);
    v2 = 0;
    ++result;
    ++a2;
  }

  while ((v5 & 1) != 0);
  return result;
}

unsigned __int8 *sub_27740F7D0(unsigned __int8 *result, uint64_t a2)
{
  v2 = 1;
  do
  {
    v3 = 0;
    v4 = *(result - 2);
    v5 = v2;
    *(a2 - 2) = (*result + 2 * v4 + result[32] + 2) >> 2;
    *(a2 + 62) = result[62];
    *(a2 + 30) = result[30];
    v6 = v4;
    do
    {
      v7 = result[v3];
      v8 = (a2 + v3);
      *v8 = (v4 + 2 * v7 + result[v3 + 2] + 2) >> 2;
      v9 = result[v3 + 32];
      v8[32] = (v6 + 2 * v9 + result[v3 + 34] + 2) >> 2;
      v3 += 2;
      v4 = v7;
      v6 = v9;
    }

    while (v3 != 30);
    v2 = 0;
    ++result;
    ++a2;
  }

  while ((v5 & 1) != 0);
  return result;
}

void *sub_27740F878(void *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1 << result;
    v7 = (((1 << result) + 4) >> 3);
    if (1 << result >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << result;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 2 * ((2 << result) + ~byte_27750DC84[9 * result - 18 + v9]) * a3 - 2);
    }

    else
    {
      v10 = (a4 + 2 * (byte_27750DC84[9 * result - 27 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 2 << result;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = 2 * v13;
      v16 = a5 + 2 * v13 - 2;
      v17 = a4 + 2 * a3 * (v13 - 1) - 2;
      v18 = v15 - 2 * v8 + a5 + 8;
      v19 = vdupq_n_s64(8uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (result != 31)
          {
            v20 = v17;
            v21 = v16;
            v22 = v8 + 1;
            do
            {
              v11 = *v20;
              *v21-- = *v20;
              --v22;
              v20 -= a3;
            }

            while (v22 > 1);
          }
        }

        else
        {
          v23 = v18;
          v24 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v25 = xmmword_27750D320;
          v26 = xmmword_27750D310;
          v27 = xmmword_27750D300;
          v28 = xmmword_27750D2F0;
          do
          {
            v29 = vmovn_s64(vcgeq_u64(v14, v25));
            if (vuzp1_s8(vuzp1_s16(v29, *v14.i8), *v14.i8).u8[0])
            {
              *(v23 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v29, *&v14), *&v14).i8[1])
            {
              *(v23 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v26))), *&v14).i8[2])
            {
              *(v23 - 2) = v11;
              *(v23 - 1) = v11;
            }

            v30 = vmovn_s64(vcgeq_u64(v14, v27));
            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i32[1])
            {
              *v23 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v30, *&v14)).i8[5])
            {
              v23[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v28)))).i8[6])
            {
              v23[2] = v11;
              v23[3] = v11;
            }

            v27 = vaddq_s64(v27, v19);
            v26 = vaddq_s64(v26, v19);
            v25 = vaddq_s64(v25, v19);
            v23 += 8;
            v28 = vaddq_s64(v28, v19);
            v24 -= 8;
          }

          while (v24);
        }

        ++v12;
        v16 -= 2 * v8;
        v17 -= 2 * a3 * v8;
        v18 -= 2 * v8;
      }

      while (v12 != v7);
      v31 = 0;
      if (v6 >= 8)
      {
        v32 = 8;
      }

      else
      {
        v32 = v6;
      }

      v33 = a5 + 2 * v6 - 2;
      v34 = a4 + 2 * a3 * (v6 - 1) - 2;
      v35 = 2 * v6 - 2 * v32 + a5 + 8;
      do
      {
        if (((a2 >> v31) & 0x10) != 0)
        {
          if (result != 31)
          {
            v36 = v34;
            v37 = v33;
            v38 = v32 + 1;
            do
            {
              v11 = *v36;
              *v37-- = *v36;
              --v38;
              v36 -= a3;
            }

            while (v38 > 1);
          }
        }

        else
        {
          v39 = v35;
          v40 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v41 = xmmword_27750D320;
          v42 = xmmword_27750D310;
          v43 = xmmword_27750D300;
          v44 = xmmword_27750D2F0;
          do
          {
            v45 = vmovn_s64(vcgeq_u64(v14, v41));
            if (vuzp1_s8(vuzp1_s16(v45, *v14.i8), *v14.i8).u8[0])
            {
              *(v39 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v45, *&v14), *&v14).i8[1])
            {
              *(v39 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v42))), *&v14).i8[2])
            {
              *(v39 - 2) = v11;
              *(v39 - 1) = v11;
            }

            v46 = vmovn_s64(vcgeq_u64(v14, v43));
            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i32[1])
            {
              *v39 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v46, *&v14)).i8[5])
            {
              v39[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v44)))).i8[6])
            {
              v39[2] = v11;
              v39[3] = v11;
            }

            v47 = vdupq_n_s64(8uLL);
            v43 = vaddq_s64(v43, v47);
            v42 = vaddq_s64(v42, v47);
            v41 = vaddq_s64(v41, v47);
            v44 = vaddq_s64(v44, v47);
            v39 += 8;
            v40 -= 8;
          }

          while (v40);
        }

        ++v31;
        v33 -= 2 * v32;
        v34 -= 2 * a3 * v32;
        v35 -= 2 * v32;
      }

      while (v31 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 2 * ~a3);
    }

    *(a5 - 2) = v11;
    if (v7 >= 1)
    {
      v48 = 0;
      v49 = 2 << result;
      v50 = v8;
      if (v8 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v8;
      }

      v52 = (a5 + 2 * v49);
      v53 = vdupq_n_s64(v8 - 1);
      v54 = 2 * v8;
      v55 = vdupq_n_s64(8uLL);
      v56 = (a4 - 2 * a3);
      v57 = v52 + 4;
      do
      {
        if (((a2 >> v48) & 0x200) != 0)
        {
          if (result != 31)
          {
            v58 = v56;
            v59 = v52;
            v60 = v51;
            do
            {
              v61 = *v58++;
              v11 = v61;
              *v59++ = v61;
              --v60;
            }

            while (v60);
          }
        }

        else
        {
          v62 = v57;
          v63 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v64 = xmmword_27750D320;
          v65 = xmmword_27750D310;
          v66 = xmmword_27750D300;
          v67 = xmmword_27750D2F0;
          do
          {
            v68 = vmovn_s64(vcgeq_u64(v53, v64));
            if (vuzp1_s8(vuzp1_s16(v68, *v53.i8), *v53.i8).u8[0])
            {
              *(v62 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v68, *&v53), *&v53).i8[1])
            {
              *(v62 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v65))), *&v53).i8[2])
            {
              *(v62 - 2) = v11;
              *(v62 - 1) = v11;
            }

            v69 = vmovn_s64(vcgeq_u64(v53, v66));
            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i32[1])
            {
              *v62 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v69, *&v53)).i8[5])
            {
              v62[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v67)))).i8[6])
            {
              v62[2] = v11;
              v62[3] = v11;
            }

            v66 = vaddq_s64(v66, v55);
            v65 = vaddq_s64(v65, v55);
            v64 = vaddq_s64(v64, v55);
            v62 += 8;
            v67 = vaddq_s64(v67, v55);
            v63 -= 8;
          }

          while (v63);
        }

        ++v48;
        v52 = (v52 + v54);
        v56 = (v56 + v54);
        v57 = (v57 + v54);
      }

      while (v48 != v7);
      v70 = 0;
      v71 = 2 * v6;
      v72 = (a5 + 2 * v49 + v71);
      v73 = 2 * v50;
      v74 = (a4 + v71 - 2 * a3);
      v75 = v72 + 4;
      v76 = vdupq_n_s64(8uLL);
      do
      {
        if (((a2 >> v70) & 0x2000) != 0)
        {
          if (result != 31)
          {
            v77 = v74;
            v78 = v72;
            v79 = v51;
            do
            {
              v80 = *v77++;
              v11 = v80;
              *v78++ = v80;
              --v79;
            }

            while (v79);
          }
        }

        else
        {
          v81 = v75;
          v82 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v83 = xmmword_27750D320;
          v84 = xmmword_27750D310;
          v85 = xmmword_27750D300;
          v86 = xmmword_27750D2F0;
          do
          {
            v87 = vmovn_s64(vcgeq_u64(v53, v83));
            if (vuzp1_s8(vuzp1_s16(v87, *v53.i8), *v53.i8).u8[0])
            {
              *(v81 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v87, *&v53), *&v53).i8[1])
            {
              *(v81 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v84))), *&v53).i8[2])
            {
              *(v81 - 2) = v11;
              *(v81 - 1) = v11;
            }

            v88 = vmovn_s64(vcgeq_u64(v53, v85));
            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i32[1])
            {
              *v81 = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v88, *&v53)).i8[5])
            {
              v81[1] = v11;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v86)))).i8[6])
            {
              v81[2] = v11;
              v81[3] = v11;
            }

            v85 = vaddq_s64(v85, v76);
            v84 = vaddq_s64(v84, v76);
            v83 = vaddq_s64(v83, v76);
            v81 += 8;
            v86 = vaddq_s64(v86, v76);
            v82 -= 8;
          }

          while (v82);
        }

        ++v70;
        v72 = (v72 + v73);
        v74 = (v74 + v73);
        v75 = (v75 + v73);
      }

      while (v70 != v7);
    }
  }

  else
  {

    return memset((a5 - 2), 128, (8 * ((4 << result) >> 2)) | 2);
  }

  return result;
}

void *sub_27740FFFC(void *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return memset((a5 - 2), 128, (8 * ((4 << result) >> 2)) | 2);
  }

  v5 = (1 << result);
  v6 = (v5 >> 2);
  v7 = __clz(__rbit32(a2));
  if (v7 < 9)
  {
    v8 = (a4 + 2 * ((2 << result) + ~byte_27750DC84[9 * result + 18 + v7]) * a3 - 2);
  }

  else
  {
    v8 = (a4 + 2 * (byte_27750DC84[9 * result + 9 + v7] - a3));
  }

  v9 = *v8;
  if (v6 >= 1)
  {
    v10 = 0;
    v11 = 2 << result;
    v12 = a5 + 2 * v11;
    v13 = a4 + 2 * a3 * (v11 - 1) - 2;
    do
    {
      v14 = v10 + 1;
      if ((a2 >> v10))
      {
        v15 = -2;
        v16 = v13;
        do
        {
          v9 = *v16;
          *(v12 + v15) = v9;
          v15 -= 2;
          v16 -= a3;
        }

        while (v15 != -10);
      }

      else
      {
        *(a5 + 2 * (v11 - 4 * v14)) = vdup_n_s16(v9);
      }

      v12 -= 8;
      v13 -= 8 * a3;
      v10 = v14;
    }

    while (v14 != v6);
    v17 = 0;
    v18 = a5 + 2 * v5;
    v19 = a4 + 2 * a3 * (v5 - 1) - 2;
    do
    {
      v20 = v17 + 1;
      if (((a2 >> v17) & 0x10) != 0)
      {
        v21 = -2;
        v22 = v19;
        do
        {
          v9 = *v22;
          *(v18 + v21) = v9;
          v21 -= 2;
          v22 -= a3;
        }

        while (v21 != -10);
      }

      else
      {
        *(a5 + 2 * (v5 - 4 * v20)) = vdup_n_s16(v9);
      }

      v18 -= 8;
      v19 -= 8 * a3;
      v17 = v20;
    }

    while (v20 != v6);
  }

  if ((a2 & 0x100) != 0)
  {
    v9 = *(a4 + 2 * ~a3);
  }

  *(a5 - 2) = v9;
  if (v6 >= 1)
  {
    v23 = 0;
    v24 = 2 << result;
    v25 = a5 + 2 * v24;
    v26 = a4 - 2 * a3;
    v27 = v25;
    do
    {
      if (((a2 >> v23) & 0x200) != 0)
      {
        for (i = 0; i != 8; i += 2)
        {
          v9 = *(v26 + i);
          *(v27 + i) = v9;
        }
      }

      else
      {
        *(v25 + 8 * v23) = vdup_n_s16(v9);
      }

      ++v23;
      v27 += 8;
      v26 += 8;
    }

    while (v23 != v6);
    v29 = 0;
    v30 = a5 + 2 * v24 + 2 * v5;
    v31 = a4 + 2 * (1 << result) - 2 * a3;
    do
    {
      if (((a2 >> v29) & 0x2000) != 0)
      {
        for (j = 0; j != 8; j += 2)
        {
          v9 = *(v31 + j);
          *(v30 + j) = v9;
        }
      }

      else
      {
        *(v25 + 2 * (v5 + 4 * v29)) = vdup_n_s16(v9);
      }

      ++v29;
      v30 += 8;
      v31 += 8;
    }

    while (v29 != v6);
  }

  return result;
}

void *sub_27741028C(void *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = (1 << result);
    v7 = ((v6 + 4) >> 3);
    if (v6 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << result;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + 2 * ((2 << result) + ~byte_27750DC84[9 * result - 18 + v9]) * a3 - 2);
    }

    else
    {
      v10 = (a4 + 2 * (byte_27750DC84[9 * result + 9 + v9] - a3));
    }

    v11 = *v10;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
      v14 = vdupq_n_s64(v8 - 1);
      v15 = a5 + 2 * (2 << result) - 2;
      v16 = a4 + 2 * a3 * ((2 << result) - 1) - 2;
      v17 = 2 * (2 << result) - 2 * v8 + a5 + 8;
      v18 = vdupq_n_s64(8uLL);
      do
      {
        if ((a2 >> v12))
        {
          if (result != 31)
          {
            v19 = v16;
            v20 = v15;
            v21 = v8 + 1;
            do
            {
              v11 = *v19;
              *v20-- = v11;
              --v21;
              v19 -= a3;
            }

            while (v21 > 1);
          }
        }

        else
        {
          v22 = v17;
          v23 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v24 = xmmword_27750D320;
          v25 = xmmword_27750D310;
          v26 = xmmword_27750D300;
          v27 = xmmword_27750D2F0;
          do
          {
            v28 = vmovn_s64(vcgeq_u64(v14, v24));
            if (vuzp1_s8(vuzp1_s16(v28, *v14.i8), *v14.i8).u8[0])
            {
              *(v22 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v28, *&v14), *&v14).i8[1])
            {
              *(v22 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v25))), *&v14).i8[2])
            {
              *(v22 - 2) = v11;
              *(v22 - 1) = v11;
            }

            v29 = vmovn_s64(vcgeq_u64(v14, v26));
            if (vuzp1_s8(*&v14, vuzp1_s16(v29, *&v14)).i32[1])
            {
              *v22 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v29, *&v14)).i8[5])
            {
              v22[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v27)))).i8[6])
            {
              v22[2] = v11;
              v22[3] = v11;
            }

            v26 = vaddq_s64(v26, v18);
            v25 = vaddq_s64(v25, v18);
            v24 = vaddq_s64(v24, v18);
            v22 += 8;
            v27 = vaddq_s64(v27, v18);
            v23 -= 8;
          }

          while (v23);
        }

        ++v12;
        v15 -= 2 * v8;
        v16 -= 2 * a3 * v8;
        v17 -= 2 * v8;
      }

      while (v12 != v7);
      v30 = 0;
      if (v6 >= 8)
      {
        v31 = 8;
      }

      else
      {
        v31 = v6;
      }

      v32 = a5 + 2 * v6 - 2;
      v33 = a4 + 2 * a3 * (v6 - 1) - 2;
      v34 = 2 * v6 - 2 * v31 + a5 + 8;
      do
      {
        if (((a2 >> v30) & 0x10) != 0)
        {
          if (result != 31)
          {
            v35 = v33;
            v36 = v32;
            v37 = v31 + 1;
            do
            {
              v11 = *v35;
              *v36-- = v11;
              --v37;
              v35 -= a3;
            }

            while (v37 > 1);
          }
        }

        else
        {
          v38 = v34;
          v39 = v13;
          v40 = xmmword_27750D320;
          v41 = xmmword_27750D310;
          v42 = xmmword_27750D300;
          v43 = xmmword_27750D2F0;
          do
          {
            v44 = vmovn_s64(vcgeq_u64(v14, v40));
            if (vuzp1_s8(vuzp1_s16(v44, *v14.i8), *v14.i8).u8[0])
            {
              *(v38 - 4) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(v44, *&v14), *&v14).i8[1])
            {
              *(v38 - 3) = v11;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v41))), *&v14).i8[2])
            {
              *(v38 - 2) = v11;
              *(v38 - 1) = v11;
            }

            v45 = vmovn_s64(vcgeq_u64(v14, v42));
            if (vuzp1_s8(*&v14, vuzp1_s16(v45, *&v14)).i32[1])
            {
              *v38 = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v45, *&v14)).i8[5])
            {
              v38[1] = v11;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v43)))).i8[6])
            {
              v38[2] = v11;
              v38[3] = v11;
            }

            v46 = vdupq_n_s64(8uLL);
            v42 = vaddq_s64(v42, v46);
            v41 = vaddq_s64(v41, v46);
            v40 = vaddq_s64(v40, v46);
            v43 = vaddq_s64(v43, v46);
            v38 += 8;
            v39 -= 8;
          }

          while (v39);
        }

        ++v30;
        v32 -= 2 * v31;
        v33 -= 2 * a3 * v31;
        v34 -= 2 * v31;
      }

      while (v30 != v7);
    }

    v47 = (v6 >> 2);
    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + 2 * ~a3);
    }

    *(a5 - 2) = v11;
    if (v47 >= 1)
    {
      v48 = 0;
      v49 = 2 << result;
      v50 = a5 + 2 * v49;
      v51 = a4 - 2 * a3;
      v52 = v50;
      do
      {
        if (((a2 >> v48) & 0x200) != 0)
        {
          for (i = 0; i != 8; i += 2)
          {
            v11 = *(v51 + i);
            *(v52 + i) = v11;
          }
        }

        else
        {
          *(v50 + 8 * v48) = vdup_n_s16(v11);
        }

        ++v48;
        v52 += 8;
        v51 += 8;
      }

      while (v48 != v47);
      v54 = 0;
      v55 = a5 + 2 * v49 + 2 * v6;
      v56 = a4 + 2 * (1 << result) - 2 * a3;
      do
      {
        if (((a2 >> v54) & 0x2000) != 0)
        {
          for (j = 0; j != 8; j += 2)
          {
            v11 = *(v56 + j);
            *(v55 + j) = v11;
          }
        }

        else
        {
          *(v50 + 2 * (v6 + 4 * v54)) = vdup_n_s16(v11);
        }

        ++v54;
        v55 += 8;
        v56 += 8;
      }

      while (v54 != v47);
    }
  }

  else
  {

    return memset((a5 - 2), 128, (8 * ((4 << result) >> 2)) | 2);
  }

  return result;
}

_WORD *sub_2774107CC(int a1, int a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v6 = a1;
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &a5[v10];
        v13 = (a4 + 2 * a3 * v10 - 2);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }

LABEL_32:
      if ((a2 & 0xF0) != 0)
      {
        if (a1 != 31)
        {
          v28 = (a4 - 2);
          if (v10 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v10;
          }

          v30 = a5;
          do
          {
            *v30++ = *v28;
            v28 += a3;
            --v29;
          }

          while (v29);
        }
      }

      else
      {
        v31 = a5[v10];
        v32 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v33 = vdupq_n_s64(v10 - 1);
        v34 = xmmword_27750D2F0;
        v35 = xmmword_27750D300;
        v36 = xmmword_27750D310;
        v37 = xmmword_27750D320;
        v38 = a5 + 4;
        v39 = vdupq_n_s64(8uLL);
        do
        {
          v40 = vmovn_s64(vcgeq_u64(v33, v37));
          if (vuzp1_s8(vuzp1_s16(v40, *v33.i8), *v33.i8).u8[0])
          {
            *(v38 - 4) = v31;
          }

          if (vuzp1_s8(vuzp1_s16(v40, *&v33), *&v33).i8[1])
          {
            *(v38 - 3) = v31;
          }

          if (vuzp1_s8(vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v36))), *&v33).i8[2])
          {
            *(v38 - 2) = v31;
            *(v38 - 1) = v31;
          }

          v41 = vmovn_s64(vcgeq_u64(v33, v35));
          if (vuzp1_s8(*&v33, vuzp1_s16(v41, *&v33)).i32[1])
          {
            *v38 = v31;
          }

          if (vuzp1_s8(*&v33, vuzp1_s16(v41, *&v33)).i8[5])
          {
            v38[1] = v31;
          }

          if (vuzp1_s8(*&v33, vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v34)))).i8[6])
          {
            v38[2] = v31;
            v38[3] = v31;
          }

          v35 = vaddq_s64(v35, v39);
          v36 = vaddq_s64(v36, v39);
          v37 = vaddq_s64(v37, v39);
          v38 += 8;
          v34 = vaddq_s64(v34, v39);
          v32 -= 8;
        }

        while (v32);
      }

      v42 = (a4 + 2 * ~a3);
      if ((a2 & 0x100) == 0)
      {
        v42 = a5;
      }

      v43 = *v42;
      *(a5 - 1) = v43;
      v44 = 2 << a1;
      if ((a2 & 0x1E00) != 0)
      {
        memcpy(&a5[v44], (a4 - 2 * a3), 2 * v10);
      }

      else
      {
        v45 = v44;
        v46 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v47 = vdupq_n_s64(v10 - 1);
        v48 = &a5[v45 + 4];
        v49 = xmmword_27750D2F0;
        v50 = xmmword_27750D300;
        v51 = xmmword_27750D310;
        v52 = xmmword_27750D320;
        v53 = vdupq_n_s64(8uLL);
        do
        {
          v54 = vmovn_s64(vcgeq_u64(v47, v52));
          if (vuzp1_s8(vuzp1_s16(v54, *v47.i8), *v47.i8).u8[0])
          {
            *(v48 - 4) = v43;
          }

          if (vuzp1_s8(vuzp1_s16(v54, *&v47), *&v47).i8[1])
          {
            *(v48 - 3) = v43;
          }

          if (vuzp1_s8(vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, *&v51))), *&v47).i8[2])
          {
            *(v48 - 2) = v43;
            *(v48 - 1) = v43;
          }

          v55 = vmovn_s64(vcgeq_u64(v47, v50));
          if (vuzp1_s8(*&v47, vuzp1_s16(v55, *&v47)).i32[1])
          {
            *v48 = v43;
          }

          if (vuzp1_s8(*&v47, vuzp1_s16(v55, *&v47)).i8[5])
          {
            v48[1] = v43;
          }

          if (vuzp1_s8(*&v47, vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, *&v49)))).i8[6])
          {
            v48[2] = v43;
            v48[3] = v43;
          }

          v50 = vaddq_s64(v50, v53);
          v51 = vaddq_s64(v51, v53);
          v52 = vaddq_s64(v52, v53);
          v48 += 8;
          v49 = vaddq_s64(v49, v53);
          v46 -= 8;
        }

        while (v46);
      }

      result = &a5[3 << v6];
      if ((a2 & 0x1E000) != 0)
      {

        return memcpy(result, (a4 + 2 * v10 - 2 * a3), 2 * v10);
      }

      else
      {
        v56 = *(result - 1);
        v57 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v58 = vdupq_n_s64(v10 - 1);
        v59 = &a5[(3 << v6) + 4];
        v60 = xmmword_27750D2F0;
        v61 = xmmword_27750D300;
        v62 = xmmword_27750D310;
        v63 = xmmword_27750D320;
        v64 = vdupq_n_s64(8uLL);
        do
        {
          v65 = vmovn_s64(vcgeq_u64(v58, v63));
          if (vuzp1_s8(vuzp1_s16(v65, *v58.i8), *v58.i8).u8[0])
          {
            *(v59 - 4) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(v65, *&v58), *&v58).i8[1])
          {
            *(v59 - 3) = v56;
          }

          if (vuzp1_s8(vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v62))), *&v58).i8[2])
          {
            *(v59 - 2) = v56;
            *(v59 - 1) = v56;
          }

          v66 = vmovn_s64(vcgeq_u64(v58, v61));
          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i32[1])
          {
            *v59 = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(v66, *&v58)).i8[5])
          {
            v59[1] = v56;
          }

          if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v60)))).i8[6])
          {
            v59[2] = v56;
            v59[3] = v56;
          }

          v61 = vaddq_s64(v61, v64);
          v62 = vaddq_s64(v62, v64);
          v63 = vaddq_s64(v63, v64);
          v59 += 8;
          v60 = vaddq_s64(v60, v64);
          v57 -= 8;
        }

        while (v57);
      }

      return result;
    }

    if ((a2 & 0xF0) != 0)
    {
      v15 = (a4 + 2 * (v10 - 1) * a3 - 2);
      goto LABEL_18;
    }

    if ((a2 & 0x100) != 0)
    {
      v16 = ~a3;
    }

    else
    {
      if ((a2 & 0x1E00) != 0)
      {
        v15 = (a4 - 2 * a3);
        goto LABEL_18;
      }

      v16 = v10 - a3;
    }

    v15 = (a4 + 2 * v16);
LABEL_18:
    v17 = *v15;
    v18 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = vdupq_n_s64(v10 - 1);
    v20 = &a5[v10 + 4];
    v21 = xmmword_27750D2F0;
    v22 = xmmword_27750D300;
    v23 = xmmword_27750D310;
    v24 = xmmword_27750D320;
    v25 = vdupq_n_s64(8uLL);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v19, v24));
      if (vuzp1_s8(vuzp1_s16(v26, *v19.i8), *v19.i8).u8[0])
      {
        *(v20 - 4) = v17;
      }

      if (vuzp1_s8(vuzp1_s16(v26, *&v19), *&v19).i8[1])
      {
        *(v20 - 3) = v17;
      }

      if (vuzp1_s8(vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, *&v23))), *&v19).i8[2])
      {
        *(v20 - 2) = v17;
        *(v20 - 1) = v17;
      }

      v27 = vmovn_s64(vcgeq_u64(v19, v22));
      if (vuzp1_s8(*&v19, vuzp1_s16(v27, *&v19)).i32[1])
      {
        *v20 = v17;
      }

      if (vuzp1_s8(*&v19, vuzp1_s16(v27, *&v19)).i8[5])
      {
        v20[1] = v17;
      }

      if (vuzp1_s8(*&v19, vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, *&v21)))).i8[6])
      {
        v20[2] = v17;
        v20[3] = v17;
      }

      v22 = vaddq_s64(v22, v25);
      v23 = vaddq_s64(v23, v25);
      v24 = vaddq_s64(v24, v25);
      v20 += 8;
      v21 = vaddq_s64(v21, v25);
      v18 -= 8;
    }

    while (v18);
    goto LABEL_32;
  }

  return memset(a5 - 1, 128, (8 * ((4 << a1) >> 2)) | 2);
}

uint64_t sub_277410E40(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = 8 - a3;
    v12 = a2;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        result = sub_2773FB848(v9, a3);
        *(a5 + i) = result << v11;
      }

      a5 += a4;
      ++v10;
    }

    while (v10 != a2);
  }

  return result;
}

int8x16_t sub_277410EE0(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  for (i = 0; i != 64; ++i)
  {
    v5 = (a2 + i);
    result = vld1q_dup_s8(v5);
    a4[2] = result;
    a4[3] = result;
    *a4 = result;
    a4[1] = result;
    a4 = (a4 + a3);
  }

  return result;
}

int8x16_t sub_277410F08(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  for (i = 0; i != 32; ++i)
  {
    v5 = (a2 + i);
    result = vld1q_dup_s8(v5);
    *a4 = result;
    a4[1] = result;
    a4 = (a4 + a3);
  }

  return result;
}

void sub_277410F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  for (i = 0; i != 16; ++i)
  {
    v5 = 0x101010101010101 * *(a2 + i);
    *a4 = v5;
    a4[1] = v5;
    a4 = (a4 + a3);
  }
}

void sub_277410F54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  for (i = 0; i != 8; ++i)
  {
    *a4 = 0x101010101010101 * *(a2 + i);
    a4 = (a4 + a3);
  }
}

void sub_277410F7C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  for (i = 0; i != 4; ++i)
  {
    *a4 = 16843009 * *(a2 + i);
    a4 = (a4 + a3);
  }
}

__n128 sub_277410FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 64;
  do
  {
    result = *(a2 + 128);
    v6 = *(a2 + 144);
    v7 = *(a2 + 176);
    *(a4 + 32) = *(a2 + 160);
    *(a4 + 48) = v7;
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_277410FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 32;
  do
  {
    result = *(a2 + 64);
    v6 = *(a2 + 80);
    *a4 = result;
    *(a4 + 16) = v6;
    a4 += a3;
    --v4;
  }

  while (v4);
  return result;
}

__n128 sub_277410FE4(uint64_t a1, __n128 *a2, uint64_t a3, __n128 *a4)
{
  v4 = 16;
  do
  {
    result = a2[2];
    *a4 = result;
    a4 = (a4 + a3);
    --v4;
  }

  while (v4);
  return result;
}

void sub_277411000(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 8;
  do
  {
    *a4 = *(a2 + 16);
    a4 = (a4 + a3);
    --v4;
  }

  while (v4);
}

void sub_27741101C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = 4;
  do
  {
    *a4 = *(a2 + 8);
    a4 = (a4 + a3);
    --v4;
  }

  while (v4);
}

void *sub_277411038(void *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = (((1 << result) + 4) >> 3);
    v52 = 1 << result;
    if (1 << result >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = 1 << result;
    }

    v9 = __clz(__rbit32(a2));
    if (v9 < 9)
    {
      v10 = (a4 + ((2 << result) + ~byte_27750DC84[9 * result - 18 + v9]) * a3 - 1);
    }

    else
    {
      v10 = (a4 - a3 + byte_27750DC84[9 * result - 27 + v9]);
    }

    v11 = *v10;
    v60 = result;
    v51 = v8;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = v8;
      v55 = v8 + 1;
      v57 = 2 << result;
      v14 = (a5 + v57 - 1);
      v15 = -v8;
      v16 = a4 + a3 * (v57 - 1) - 1;
      v17 = -(a3 * v8);
      v18 = -a3;
      do
      {
        v19 = v12++;
        if ((a2 >> v19))
        {
          if (result != 31)
          {
            v20 = v16;
            v21 = v14;
            v22 = v55;
            do
            {
              v11 = *v20;
              *v21-- = v11;
              --v22;
              v20 += v18;
            }

            while (v22 > 1);
          }
        }

        else
        {
          memset((a5 + v57 - v12 * v13), v11, v13);
          result = v60;
        }

        v14 += v15;
        v16 += v17;
      }

      while (v12 != v7);
      v23 = 0;
      v24 = 8;
      if (v52 < 8)
      {
        v24 = v52;
      }

      v56 = v24 + 1;
      v25 = v52 - 1;
      v26 = (a5 + v25);
      v27 = -v24;
      v28 = a4 + a3 * v25 - 1;
      v29 = -(a3 * v24);
      do
      {
        v30 = v23++;
        if (((a2 >> v30) & 0x10) != 0)
        {
          if (result != 31)
          {
            v31 = v28;
            v32 = v26;
            v33 = v56;
            do
            {
              v11 = *v31;
              *v32-- = v11;
              --v33;
              v31 -= a3;
            }

            while (v33 > 1);
          }
        }

        else
        {
          memset((a5 + v52 - v23 * v13), v11, v13);
          result = v60;
        }

        v26 += v27;
        v28 += v29;
      }

      while (v23 != v7);
    }

    if ((a2 & 0x100) != 0)
    {
      v11 = *(a4 + ~a3);
    }

    *(a5 - 1) = v11;
    if (v7 >= 1)
    {
      v34 = 0;
      v35 = 2 << result;
      if (v51 <= 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = v51;
      }

      v58 = v35;
      v37 = (a5 + v35);
      v38 = (a4 - a3);
      v39 = v37;
      do
      {
        if (((a2 >> v34) & 0x200) != 0)
        {
          if (result != 31)
          {
            v40 = v38;
            v41 = v39;
            v42 = v36;
            do
            {
              v43 = *v40++;
              v11 = v43;
              *v41++ = v43;
              --v42;
            }

            while (v42);
          }
        }

        else
        {
          memset(&v37[v34 * v51], v11, v51);
          result = v60;
        }

        ++v34;
        v39 += v51;
        v38 += v51;
      }

      while (v34 != v7);
      v44 = 0;
      v45 = (a5 + v58 + v52);
      v46 = (a4 + v52 - a3);
      do
      {
        if (((a2 >> v44) & 0x2000) != 0)
        {
          if (result != 31)
          {
            v47 = v46;
            v48 = v45;
            v49 = v36;
            do
            {
              v50 = *v47++;
              v11 = v50;
              *v48++ = v50;
              --v49;
            }

            while (v49);
          }
        }

        else
        {
          memset(&v37[v52 + v44 * v51], v11, v51);
          result = v60;
        }

        ++v44;
        v45 += v51;
        v46 += v51;
      }

      while (v44 != v7);
    }
  }

  else
  {

    return memset((a5 - 1), 128, (4 << result) | 1);
  }

  return result;
}

void *sub_2774113D8(int a1, int a2, uint64_t a3, uint64_t a4, char *__b)
{
  if (a2)
  {
    v10 = 1 << a1;
    if ((a2 & 0xF) != 0)
    {
      if (v10 < 2 << a1)
      {
        v11 = (2 << a1) - v10;
        v12 = &__b[v10];
        v13 = (a4 + a3 * v10 - 1);
        do
        {
          *v12++ = *v13;
          v13 += a3;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v17 = (a4 - a3);
      if ((a2 & 0x1E00) == 0)
      {
        v17 = (a4 - a3 + v10);
      }

      if ((a2 & 0x100) != 0)
      {
        v17 = (a4 + ~a3);
      }

      if ((a2 & 0xF0) != 0)
      {
        v17 = (a4 + (v10 - 1) * a3 - 1);
      }

      memset(&__b[v10], *v17, v10);
    }

    if ((a2 & 0xF0) != 0)
    {
      if (a1 != 31)
      {
        v18 = (a4 - 1);
        if (v10 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v10;
        }

        v20 = __b;
        do
        {
          *v20++ = *v18;
          v18 += a3;
          --v19;
        }

        while (v19);
      }
    }

    else
    {
      memset(__b, __b[v10], v10);
    }

    v21 = (a4 + ~a3);
    if ((a2 & 0x100) == 0)
    {
      v21 = __b;
    }

    v22 = *v21;
    *(__b - 1) = v22;
    if ((a2 & 0x1E00) != 0)
    {
      memcpy(&__b[2 << a1], (a4 - a3), v10);
    }

    else
    {
      memset(&__b[2 << a1], v22, v10);
    }

    if ((a2 & 0x1E000) != 0)
    {

      return memcpy(&__b[3 << a1], (a4 + v10 - a3), v10);
    }

    v14 = v10;
    v15 = &__b[3 << a1];
    v16 = *(v15 - 1);
  }

  else
  {
    v14 = (4 << a1) | 1;
    v15 = __b - 1;
    v16 = 128;
  }

  return memset(v15, v16, v14);
}

uint64_t sub_2774115D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v11 = a3;
  (*(a1 + 16 * a5))(a3, a4, a7, a8, &v18);
  if ((a6 & 1) == 0 && a2 != 1 && (*(a1 + 536) & 1) == 0)
  {
    v15 = a2 - 10;
    if (a2 - 10 < 0)
    {
      v15 = 10 - a2;
    }

    v16 = a2 - 26;
    if (a2 - 26 < 0)
    {
      v16 = 26 - a2;
    }

    if (v15 >= v16)
    {
      v15 = v16;
    }

    if (v15 > byte_2775357CA[v11])
    {
      (*(a1 + 8 * v11 + 8))(&v18, &v18);
    }
  }

  if (a2 > 9)
  {
    if (a2 == 10)
    {
      v14 = (a1 + 40 * a6 + 8 * v11 + 64);
      return (*v14)(a2, &v18, a7, a8);
    }

    if (a2 == 26)
    {
      v14 = (a1 + 40 * a6 + 8 * v11 + 144);
      return (*v14)(a2, &v18, a7, a8);
    }

LABEL_19:
    v14 = (a1 + 8 * v11 + 224);
    return (*v14)(a2, &v18, a7, a8);
  }

  if (!a2)
  {
    v14 = (a1 + 8 * v11 + 264);
    return (*v14)(a2, &v18, a7, a8);
  }

  if (a2 != 1)
  {
    goto LABEL_19;
  }

  v14 = (a1 + 8 * v11 + 304);
  return (*v14)(a2, &v18, a7, a8);
}

uint64_t sub_277411768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  (*(a1 + 16 * a5 + 8))(a3, a4, a6 >> 1, a7, &v16);
  if (*(a1 + 538) == 3 && a2 != 1 && (*(a1 + 536) & 1) == 0)
  {
    v12 = a2 - 10;
    if (a2 - 10 < 0)
    {
      v12 = 10 - a2;
    }

    v13 = a2 - 26;
    if (a2 - 26 < 0)
    {
      v13 = 26 - a2;
    }

    if (v12 >= v13)
    {
      v12 = v13;
    }

    if (v12 > byte_2775357CA[v9])
    {
      (*(a1 + 8 * v9 + 32))(&v16, &v16);
    }
  }

  if (a2 > 9)
  {
    if (a2 == 10)
    {
      v14 = 424;
      return (*(a1 + v14 + 8 * v9 - 16))(a2, &v16, a6, a7);
    }

    if (a2 == 26)
    {
      v14 = 392;
      return (*(a1 + v14 + 8 * v9 - 16))(a2, &v16, a6, a7);
    }

LABEL_19:
    v14 = 488;
    return (*(a1 + v14 + 8 * v9 - 16))(a2, &v16, a6, a7);
  }

  if (!a2)
  {
    v14 = 360;
    return (*(a1 + v14 + 8 * v9 - 16))(a2, &v16, a6, a7);
  }

  if (a2 != 1)
  {
    goto LABEL_19;
  }

  v14 = 456;
  return (*(a1 + v14 + 8 * v9 - 16))(a2, &v16, a6, a7);
}

uint64_t sub_2774118E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20]();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v11;
  STACK[0x4038] = *MEMORY[0x277D85DE8];
  v22 = v11 + 64;
  (*(v11 + 64 + ((8 * ((v21 & 3) != 0)) | (16 * ((*&v21 & 0x30000) != 0)))))(v18, v16, v21, v23, v24, v18, &STACK[0x2020]);
  (*(v22 + ((8 * ((v15 & 3) != 0)) | (16 * ((*&v15 & 0x30000) != 0)))))(v19, v17, v15, v13, a9, v19, &v26);
  return (*(v20 + 160))(v19, v17, v19, &STACK[0x2020], v19, &v26, a10, a11);
}

uint64_t sub_277411A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20]();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v11;
  STACK[0x8038] = *MEMORY[0x277D85DE8];
  v20 = v11 + 96;
  v22 = (2 * v21);
  (*(v11 + 96 + ((8 * ((v19 & 7) != 0)) | (16 * ((*&v19 & 0x70000) != 0)))))(v22, v16, v19, v23, v24, v22, &STACK[0x4020]);
  (*(v20 + ((8 * ((v15 & 7) != 0)) | (16 * ((*&v15 & 0x70000) != 0)))))(v22, v17, v15, v13, a9, v22, &v26);
  return (*(v18 + 168))(v22, v17, v22, &STACK[0x4020], v22, &v26, a10, a11);
}

uint64_t sub_277411B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = MEMORY[0x28223BE20]();
  v26 = v13;
  v25 = v14;
  v16 = v15;
  v18 = v17;
  v19 = v12;
  STACK[0x4058] = *MEMORY[0x277D85DE8];
  v21 = v12 + 64;
  (*(v12 + 64 + ((8 * ((v20 & 3) != 0)) | (16 * ((*&v20 & 0x30000) != 0)))))(v17, v15, v20, v22, v23, v17, &STACK[0x2040]);
  (*(v21 + ((8 * ((a10 & 3) != 0)) | (16 * ((a10 & 0x30000) != 0)))))(v18, v16, a10, a11, a12, v18, &v27);
  return (*(v19 + 144))(v18, v16, v25, v26, v18, &STACK[0x2040], a9, v18);
}

uint64_t sub_277411D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = MEMORY[0x28223BE20]();
  v26 = v13;
  v25 = v14;
  v16 = v15;
  v17 = v12;
  STACK[0x8058] = *MEMORY[0x277D85DE8];
  v19 = v12 + 96;
  v21 = (2 * v20);
  (*(v12 + 96 + ((8 * ((v18 & 7) != 0)) | (16 * ((*&v18 & 0x70000) != 0)))))(v21, v15, v18, v22, v23, v21, &STACK[0x4040]);
  (*(v19 + ((8 * ((a10 & 7) != 0)) | (16 * ((a10 & 0x70000) != 0)))))(v21, v16, a10, a11, a12, v21, &v27);
  return (*(v17 + 152))(v21, v16, v25, v26, v21, &STACK[0x4040], a9, v21);
}

uint64_t sub_277411E8C(void *a1, int a2, int a3, int a4)
{
  v7 = a2 > 12 || a3 > 12;
  if (!a4)
  {
    if (!v7)
    {
      if (a2 == 8 && a3 == 8)
      {
        *a1 = sub_277415788;
        a1[1] = sub_277428448;
        a1[2] = sub_277427FEC;
        a1[3] = sub_277427A4C;
        a1[4] = sub_277415788;
        a1[8] = sub_2774143F8;
        a1[9] = sub_277427864;
        a1[10] = sub_2774273E4;
        a1[11] = sub_277426E38;
        a1[12] = sub_2774143F8;
        a1[20] = sub_2774131B4;
        a1[16] = sub_277413000;
        a1[18] = sub_277412DC8;
        a1[5] = sub_27742AD54;
        a1[6] = sub_27742AB08;
        a1[7] = sub_27742A6E8;
        a1[13] = sub_27742A48C;
        a1[14] = sub_27742A250;
        v8 = sub_277429E18;
        goto LABEL_19;
      }

      v11 = off_288662508;
      result = (off_288662508[4 * a2 - 32])(a1);
      if (!result)
      {
        goto LABEL_24;
      }

      return result;
    }

LABEL_13:
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Luma/Chroma bitdepth %d/%d not supported\n", a2, a3);
      syslog(27, "Luma/Chroma bitdepth %d/%d not supported\n", a2, a3);
    }

    return 4294954386;
  }

  if (v7)
  {
    goto LABEL_13;
  }

  if (a2 == 8 && a3 == 8)
  {
    *a1 = sub_277415788;
    a1[1] = sub_2774154B4;
    a1[2] = sub_277414D88;
    a1[3] = sub_277414668;
    a1[4] = sub_277415788;
    a1[8] = sub_2774143F8;
    a1[9] = sub_2774140FC;
    a1[10] = sub_277413A08;
    a1[11] = sub_277413318;
    a1[12] = sub_2774143F8;
    a1[20] = sub_2774131B4;
    a1[16] = sub_277413000;
    a1[18] = sub_277412DC8;
    a1[5] = sub_2774220B8;
    a1[6] = sub_277421CDC;
    a1[7] = sub_277421764;
    a1[13] = sub_2774214B8;
    a1[14] = sub_277421140;
    v8 = sub_277420BD0;
LABEL_19:
    a1[15] = v8;
    a1[21] = sub_2774131B4;
    a1[17] = sub_277413000;
    a1[19] = sub_277412DC8;
    return 0;
  }

  v11 = off_288662468;
  result = (off_288662468[4 * a2 - 32])(a1);
  if (!result)
  {
LABEL_24:
    result = (v11[4 * a3 - 30])(a1);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_277412208()
{
  if (dword_280B9A880 >= 3)
  {
    fwrite("LSB reference buffers are only supported at 10bits currently\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "LSB reference buffers are only supported at 10bits currently\n");
  }

  return 4294954386;
}

uint64_t sub_27741226C()
{
  if (dword_280B9A880 >= 3)
  {
    fwrite("LSB reference buffers are only supported at 10bits currently\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "LSB reference buffers are only supported at 10bits currently\n");
  }

  return 4294954386;
}

uint64_t sub_2774122D0()
{
  if (dword_280B9A880 >= 3)
  {
    fwrite("LSB reference buffers are only supported at 10bits currently\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "LSB reference buffers are only supported at 10bits currently\n");
  }

  return 4294954386;
}

uint64_t sub_277412334()
{
  if (dword_280B9A880 >= 3)
  {
    fwrite("LSB reference buffers are only supported at 10bits currently\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "LSB reference buffers are only supported at 10bits currently\n");
  }

  return 4294954386;
}

uint64_t sub_277412398(void *a1)
{
  a1[4] = sub_277429D68;
  a1[5] = sub_27742B9D4;
  a1[6] = sub_27742B814;
  a1[7] = sub_27742B550;
  a1[12] = sub_277429150;
  a1[13] = sub_27742B430;
  a1[14] = sub_27742B274;
  a1[15] = sub_27742AFB4;
  a1[21] = sub_27741A3A4;
  a1[17] = sub_27741A258;
  a1[19] = sub_27741A08C;
  return 0;
}

uint64_t sub_277412450(void *a1)
{
  *a1 = sub_277429D68;
  a1[1] = sub_277429BEC;
  a1[2] = sub_2774298F0;
  a1[3] = sub_277429228;
  a1[8] = sub_277429150;
  a1[9] = sub_277428FD8;
  a1[10] = sub_277428CE0;
  a1[11] = sub_27742861C;
  a1[20] = sub_27741A3A4;
  a1[16] = sub_27741A258;
  a1[18] = sub_27741A08C;
  return 0;
}

uint64_t sub_277412508()
{
  if (dword_280B9A880 >= 3)
  {
    fwrite("LSB reference buffers are only supported at 10bits currently\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "LSB reference buffers are only supported at 10bits currently\n");
  }

  return 4294954386;
}

uint64_t sub_27741256C()
{
  if (dword_280B9A880 >= 3)
  {
    fwrite("LSB reference buffers are only supported at 10bits currently\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "LSB reference buffers are only supported at 10bits currently\n");
  }

  return 4294954386;
}

uint64_t sub_2774125D0()
{
  if (dword_280B9A880 >= 3)
  {
    fwrite("LSB reference buffers are only supported at 10bits currently\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "LSB reference buffers are only supported at 10bits currently\n");
  }

  return 4294954386;
}

uint64_t sub_277412634()
{
  if (dword_280B9A880 >= 3)
  {
    fwrite("LSB reference buffers are only supported at 10bits currently\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "LSB reference buffers are only supported at 10bits currently\n");
  }

  return 4294954386;
}

uint64_t sub_277412698(void *a1)
{
  a1[4] = sub_277420B10;
  a1[5] = sub_277426CEC;
  a1[6] = sub_277426A58;
  a1[7] = sub_2774266BC;
  a1[12] = sub_27741FB30;
  a1[13] = sub_277426574;
  a1[14] = sub_2774262E4;
  a1[15] = sub_277425F4C;
  a1[21] = sub_27741EAFC;
  a1[17] = sub_27741E9B0;
  a1[19] = sub_27741E7E4;
  return 0;
}

uint64_t sub_277412750(void *a1)
{
  *a1 = sub_277420B10;
  a1[1] = sub_27742096C;
  a1[2] = sub_277420500;
  a1[3] = sub_27741FC18;
  a1[8] = sub_27741FB30;
  a1[9] = sub_27741F990;
  a1[10] = sub_27741F528;
  a1[11] = sub_27741EC44;
  a1[20] = sub_27741EAFC;
  a1[16] = sub_27741E9B0;
  a1[18] = sub_27741E7E4;
  return 0;
}

uint64_t sub_277412808(void *a1)
{
  a1[4] = sub_27741E724;
  a1[5] = sub_277425E00;
  a1[6] = sub_277425B6C;
  a1[7] = sub_2774257D0;
  a1[12] = sub_27741D744;
  a1[13] = sub_277425688;
  a1[14] = sub_2774253F8;
  a1[15] = sub_277425060;
  a1[21] = sub_27741C710;
  a1[17] = sub_27741C5C4;
  a1[19] = sub_27741C3F8;
  return 0;
}

uint64_t sub_2774128C0(void *a1)
{
  *a1 = sub_27741E724;
  a1[1] = sub_27741E580;
  a1[2] = sub_27741E114;
  a1[3] = sub_27741D82C;
  a1[8] = sub_27741D744;
  a1[9] = sub_27741D5A4;
  a1[10] = sub_27741D13C;
  a1[11] = sub_27741C858;
  a1[20] = sub_27741C710;
  a1[16] = sub_27741C5C4;
  a1[18] = sub_27741C3F8;
  return 0;
}

uint64_t sub_277412978(void *a1)
{
  a1[4] = sub_27741C338;
  a1[5] = sub_277424F04;
  a1[6] = sub_277424C60;
  a1[7] = sub_2774248B4;
  a1[12] = sub_27741B398;
  a1[13] = sub_27742475C;
  a1[14] = sub_2774244BC;
  a1[15] = sub_277424114;
  a1[21] = sub_27741A3A4;
  a1[17] = sub_27741A258;
  a1[19] = sub_27741A08C;
  return 0;
}

uint64_t sub_277412A30(void *a1)
{
  *a1 = sub_27741C338;
  a1[1] = sub_27741C184;
  a1[2] = sub_27741BD10;
  a1[3] = sub_27741B480;
  a1[8] = sub_27741B398;
  a1[9] = sub_27741B1E8;
  a1[10] = sub_27741AD78;
  a1[11] = sub_27741A4EC;
  a1[20] = sub_27741A3A4;
  a1[16] = sub_27741A258;
  a1[18] = sub_27741A08C;
  return 0;
}

uint64_t sub_277412AE8(void *a1)
{
  a1[4] = sub_277419FCC;
  a1[5] = sub_277423FC8;
  a1[6] = sub_277423D34;
  a1[7] = sub_277423998;
  a1[12] = sub_277418FEC;
  a1[13] = sub_277423850;
  a1[14] = sub_2774235C0;
  a1[15] = sub_277423228;
  a1[21] = sub_277417FB8;
  a1[17] = sub_277417E6C;
  a1[19] = sub_277417CA0;
  return 0;
}

uint64_t sub_277412BA0(void *a1)
{
  *a1 = sub_277419FCC;
  a1[1] = sub_277419E28;
  a1[2] = sub_2774199BC;
  a1[3] = sub_2774190D4;
  a1[8] = sub_277418FEC;
  a1[9] = sub_277418E4C;
  a1[10] = sub_2774189E4;
  a1[11] = sub_277418100;
  a1[20] = sub_277417FB8;
  a1[16] = sub_277417E6C;
  a1[18] = sub_277417CA0;
  return 0;
}

uint64_t sub_277412C58(void *a1)
{
  a1[4] = sub_277417BE0;
  a1[5] = sub_2774230DC;
  a1[6] = sub_277422E48;
  a1[7] = sub_277422AB8;
  a1[12] = sub_277416C1C;
  a1[13] = sub_277422974;
  a1[14] = sub_2774226EC;
  a1[15] = sub_277422360;
  a1[21] = sub_277415C10;
  a1[17] = sub_277415AC4;
  a1[19] = sub_2774158F8;
  return 0;
}

uint64_t sub_277412D10(void *a1)
{
  *a1 = sub_277417BE0;
  a1[1] = sub_277417A3C;
  a1[2] = sub_2774175D0;
  a1[3] = sub_277416D04;
  a1[8] = sub_277416C1C;
  a1[9] = sub_277416A80;
  a1[10] = sub_277416620;
  a1[11] = sub_277415D58;
  a1[20] = sub_277415C10;
  a1[16] = sub_277415AC4;
  a1[18] = sub_2774158F8;
  return 0;
}

int16x4_t *sub_277412DC8(int16x4_t *result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, const float *a7, uint64_t a8, int16x4_t *a9, uint64_t a10, int8x16_t *a11)
{
  v12 = vld1q_dup_f32(a4);
  v11 = a4 + 1;
  v15 = vld1q_dup_f32(a7);
  v14 = a7 + 1;
  v16 = a9;
  v17 = vld1_dup_f32(v11);
  v18 = vld1_dup_f32(v14);
  v19 = vaddq_s32(vshlq_n_s32(vaddl_s16(*v15.i8, *v12.i8), 0xDuLL), vshlq_s32(vaddl_s16(v18, v17), vdupq_n_s32(a3)));
  v20 = vdupq_n_s32(~a3);
  if (result < 16)
  {
    v27 = result;
  }

  else
  {
    v21 = a9 + 2;
    v22 = a6 + 2;
    do
    {
      v23 = v22;
      v24 = v21;
      v25 = a2 + 1;
      v26 = a11;
      do
      {
        *v26 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, v23[-2], *v12.i8), v24[-2], *v15.i8), v20)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *v23[-2].i8, v12), *v24[-2].i8, v15), v20))), vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *v23, *v12.i8), *v24, *v15.i8), v20)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *v23->i8, v12), *v24->i8, v15), v20)));
        v26 = (v26 + a10);
        --v25;
        v24 = (v24 + 2 * a8);
        v23 = (v23 + 2 * a5);
      }

      while (v25 > 1);
      ++a11;
      a6 += 4;
      v16 += 4;
      v27 = result - 16;
      v21 += 4;
      v22 += 4;
      v28 = result <= 31;
      result = (result - 16);
    }

    while (!v28);
  }

  v29 = 2 * a10;
  v30 = 4 * a5;
  v31 = 4 * a8;
  if ((v27 & 8) != 0)
  {
    v32 = a2 + 2;
    result = v16;
    v33 = a6;
    v34 = a11;
    do
    {
      v35 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *v33, *v12.i8), *result, *v15.i8), v20)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *v33->i8, v12), *result->i8, v15), v20))), vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(v33 + 2 * a5), *v12.i8), *(result + 2 * a8), *v15.i8), v20)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *&v33->i8[2 * a5], v12), *&result->i8[2 * a8], v15), v20)));
      *v34 = v35.i64[0];
      *(v34 + a10) = v35.i64[1];
      v34 = (v34 + v29);
      v33 = (v33 + v30);
      result = (result + v31);
      v32 -= 2;
    }

    while (v32 > 2);
    a11 = (a11 + 8);
    a6 += 2;
    v16 += 2;
  }

  if ((v27 & 4) != 0)
  {
    v36 = vextq_s8(v12, v12, 8uLL).u64[0];
    v37 = vextq_s8(v15, v15, 8uLL).u64[0];
    v38 = a2 + 2;
    do
    {
      v39 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *a6, *v12.i8), *v16, *v15.i8), v20)), vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(a6 + 2 * a5), v36), *(v16 + 2 * a8), v37), v20)));
      a11->i32[0] = v39.i32[0];
      *(a11->i32 + a10) = v39.i32[1];
      a11 = (a11 + v29);
      a6 = (a6 + v30);
      v16 = (v16 + v31);
      v38 -= 2;
    }

    while (v38 > 2);
  }

  return result;
}