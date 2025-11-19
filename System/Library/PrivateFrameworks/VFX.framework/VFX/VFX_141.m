uint64_t sub_1AFBD03F8()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v32 = qword_1ED73B840;
  v33 = 0;
  v34 = 2;
  v35 = 0;
  v36 = 2;
  v37 = 0;
  sub_1AF704C90(1, &v15);
  v1 = v16;
  v2 = v17;
  v3 = v19;
  v4 = v18 | 4;
  *(v0 + 16) = v15;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AF704CA4(1, v20);
  v5 = v20[1];
  *(v0 + 56) = v20[0];
  *(v0 + 72) = v5;
  *(v0 + 88) = v21;
  sub_1AF7033E0(1, &v22);
  v6 = v23;
  v7 = v24;
  v8 = v26;
  v9 = v25 | 4;
  *(v0 + 96) = v22;
  *(v0 + 104) = v6;
  *(v0 + 108) = v7;
  *(v0 + 112) = v9;
  *(v0 + 120) = 2;
  *(v0 + 128) = v8;
  sub_1AF704CB8(1, &v27);
  v10 = v28;
  v11 = v29;
  v12 = v31;
  v13 = v30 | 4;
  *(v0 + 136) = v27;
  *(v0 + 144) = v10;
  *(v0 + 148) = v11;
  *(v0 + 152) = v13;
  *(v0 + 160) = 2;
  *(v0 + 168) = v12;
  return v0;
}

uint64_t sub_1AFBD0558()
{
  v0 = swift_allocObject();
  sub_1AFBD03F8();
  return v0;
}

uint64_t sub_1AFBD05B4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBD0698()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFBD0768()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBD0848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBD765C();
  *a1 = result;
  return result;
}

void sub_1AFBD0878(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007974;
  v4 = 0x69746E456873656DLL;
  v5 = 0xEC0000006E6F6974;
  v6 = 0x7562697274736964;
  v7 = 0xE700000000000000;
  v8 = 0x736E6F6974706FLL;
  if (v2 != 3)
  {
    v8 = 1684366707;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x746E756F63;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1AFBD0918()
{
  v1 = *v0;
  v2 = 0x69746E456873656DLL;
  v3 = 0x7562697274736964;
  v4 = 0x736E6F6974706FLL;
  if (v1 != 3)
  {
    v4 = 1684366707;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E756F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFBD09B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBD765C();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBD09DC(uint64_t a1)
{
  v2 = sub_1AFBDDC68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBD0A18(uint64_t a1)
{
  v2 = sub_1AFBDDC68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFBD0AC4(uint64_t a1, int8x16_t a2)
{
  v3 = (*(v2 + 48) + 24 * a1);
  v4 = *(v2 + 8) + 32;
  v5 = *(v4 + 16 * v3[4]);
  v6 = *(v4 + 16 * v3[5]);
  v7 = *(v4 + 16 * v3[6]);
  v8 = vmuls_lane_f32(*a2.i32, v5, 2);
  v9 = vmul_f32(vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
  v10 = vaddq_f32(vaddq_f32(vmulq_n_f32(v5, *a2.i32), vmulq_lane_f32(v6, *a2.i8, 1)), vmulq_laneq_f32(v7, a2, 2));
  v10.f32[2] = (v8 + v9.f32[0]) + v9.f32[1];
  v11 = vabsq_f32(v10);
  result = 0.0;
  if (v11.f32[0] > 0.00000011921 || v11.f32[1] > 0.00000011921 || v11.f32[2] > 0.00000011921)
  {
    v15 = vmulq_f32(v10, v10);
    *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
    *v15.f32 = vrsqrte_f32(v16);
    *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
    *&result = vmulq_n_f32(v10, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]).u64[0];
  }

  return result;
}

__n128 sub_1AFBD0BD0(uint64_t a1, int32x4_t a2)
{
  v3 = 0;
  v4 = (v2[6] + 24 * a1);
  v5 = v4[4];
  v6 = v4[5];
  v7 = v4[6];
  v8 = v2[4] + 32;
  v9 = *(v8 + 8 * v5);
  v10 = v2[5] + 32;
  v11 = *(v10 + 16 * v5);
  v12 = vdupq_lane_s32(*a2.i8, 0);
  v13 = MEMORY[0x1E69E7CC0];
  v65 = v12;
  v68 = v11;
  do
  {
    v81 = v12;
    v15 = *(&v81 & 0xFFFFFFFFFFFFFFF3 | (4 * (v3 & 3)));
    v82 = v11;
    v16 = v15 * *(&v82 & 0xFFFFFFFFFFFFFFF3 | (4 * (v3 & 3)));
    if (v16 > 0.0)
    {
      v80 = v9;
      v17 = *(&v80 & 0xFFFFFFFFFFFFFFF9 | (2 * (v3 & 3)));
      v18 = *(v13 + 2);
      if (v18)
      {
        v19 = 0;
        v20 = *(v13 + 2);
        while (*&v13[v19 + 32] != v17)
        {
          v19 += 8;
          if (!--v20)
          {
            goto LABEL_9;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AFC0DE34(v13);
        }

        v12 = v65;
        v11 = v68;
        *&v13[v19 + 36] = v16 + *&v13[v19 + 36];
      }

      else
      {
LABEL_9:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AF4280BC(0, v18 + 1, 1, v13);
        }

        v22 = *(v13 + 2);
        v21 = *(v13 + 3);
        v12 = v65;
        v11 = v68;
        if (v22 >= v21 >> 1)
        {
          v23 = sub_1AF4280BC(v21 > 1, v22 + 1, 1, v13);
          v12 = v65;
          v11 = v68;
          v13 = v23;
        }

        *(v13 + 2) = v22 + 1;
        v14 = &v13[8 * v22];
        *(v14 + 16) = v17;
        *(v14 + 9) = v16;
      }
    }

    ++v3;
  }

  while (v3 != 4);
  v24 = 0;
  v25 = *(v8 + 8 * v6);
  v26 = *(v10 + 16 * v6);
  v27 = vdupq_lane_s32(*a2.i8, 1);
  v66 = v27;
  v69 = v26;
  do
  {
    v78 = v27;
    v29 = *(&v78 & 0xFFFFFFFFFFFFFFF3 | (4 * (v24 & 3)));
    v79 = v26;
    v30 = v29 * *(&v79 & 0xFFFFFFFFFFFFFFF3 | (4 * (v24 & 3)));
    if (v30 > 0.0)
    {
      v77 = v25;
      v31 = *(&v77 & 0xFFFFFFFFFFFFFFF9 | (2 * (v24 & 3)));
      v32 = *(v13 + 2);
      if (v32)
      {
        v33 = 0;
        v34 = *(v13 + 2);
        while (*&v13[v33 + 32] != v31)
        {
          v33 += 8;
          if (!--v34)
          {
            goto LABEL_24;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AFC0DE34(v13);
        }

        v27 = v66;
        v26 = v69;
        *&v13[v33 + 36] = v30 + *&v13[v33 + 36];
      }

      else
      {
LABEL_24:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AF4280BC(0, v32 + 1, 1, v13);
        }

        v36 = *(v13 + 2);
        v35 = *(v13 + 3);
        v27 = v66;
        v26 = v69;
        if (v36 >= v35 >> 1)
        {
          v37 = sub_1AF4280BC(v35 > 1, v36 + 1, 1, v13);
          v27 = v66;
          v26 = v69;
          v13 = v37;
        }

        *(v13 + 2) = v36 + 1;
        v28 = &v13[8 * v36];
        *(v28 + 16) = v31;
        *(v28 + 9) = v30;
      }
    }

    ++v24;
  }

  while (v24 != 4);
  v38 = 0;
  v39 = *(v8 + 8 * v7);
  v40 = *(v10 + 16 * v7);
  v41 = vdupq_laneq_s32(a2, 2);
  v67 = v41;
  v70 = v40;
  do
  {
    v75 = v41;
    v43 = *(&v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v38 & 3)));
    v76 = v40;
    v44 = v43 * *(&v76 & 0xFFFFFFFFFFFFFFF3 | (4 * (v38 & 3)));
    if (v44 > 0.0)
    {
      v74 = v39;
      v45 = *(&v74 & 0xFFFFFFFFFFFFFFF9 | (2 * (v38 & 3)));
      v46 = *(v13 + 2);
      if (v46)
      {
        v47 = 0;
        v48 = *(v13 + 2);
        while (*&v13[v47 + 32] != v45)
        {
          v47 += 8;
          if (!--v48)
          {
            goto LABEL_39;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AFC0DE34(v13);
        }

        v41 = v67;
        v40 = v70;
        *&v13[v47 + 36] = v44 + *&v13[v47 + 36];
      }

      else
      {
LABEL_39:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AF4280BC(0, v46 + 1, 1, v13);
        }

        v50 = *(v13 + 2);
        v49 = *(v13 + 3);
        v41 = v67;
        v40 = v70;
        if (v50 >= v49 >> 1)
        {
          v51 = sub_1AF4280BC(v49 > 1, v50 + 1, 1, v13);
          v41 = v67;
          v40 = v70;
          v13 = v51;
        }

        *(v13 + 2) = v50 + 1;
        v42 = &v13[8 * v50];
        *(v42 + 16) = v45;
        *(v42 + 9) = v44;
      }
    }

    ++v38;
  }

  while (v38 != 4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AFC0DE34(v13);
  }

  v52 = *(v13 + 2);
  v83[0] = (v13 + 32);
  v83[1] = v52;
  sub_1AFBD6CD4(v83);
  v53 = *(v13 + 2);
  if (v53 <= 4)
  {
    if (!v53)
    {
      v57 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v53 = 4;
  }

  v54 = 0;
  v55 = 0uLL;
  v56 = v13 + 36;
  v57 = 0;
  do
  {
    v58 = (&v73 & 0xFFFFFFFFFFFFFFF9 | (2 * (v54 & 3)));
    v59 = (&v72 & 0xFFFFFFFFFFFFFFF3 | (4 * (v54 & 3)));
    v60 = v54 + 1;
    v61 = *(v56 - 2);
    v62 = *v56;
    v56 += 2;
    v73 = v57;
    *v58 = v61;
    v57 = v73;
    v72 = v55;
    *v59 = v62;
    v55 = v72;
    v54 = v60;
  }

  while (v53 != v60);
LABEL_53:
  v71 = v57;

  return v71;
}

char *sub_1AFBD10C4()
{
  result = sub_1AF422C28(0, 4, 0, MEMORY[0x1E69E7CC0]);
  if (*(v0 + 24))
  {
    v3 = *(result + 2);
    v2 = *(result + 3);
    if (v3 >= v2 >> 1)
    {
      result = sub_1AF422C28(v2 > 1, v3 + 1, 1, result);
    }

    *(result + 2) = v3 + 1;
    v4 = &result[16 * v3];
    *(v4 + 4) = &type metadata for Position;
    *(v4 + 5) = &off_1F252EE70;
    if ((*(v0 + 25) & 1) == 0)
    {
LABEL_3:
      if ((*(v0 + 26) & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v0 + 25) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(result + 2);
  v5 = *(result + 3);
  if (v6 >= v5 >> 1)
  {
    result = sub_1AF422C28(v5 > 1, v6 + 1, 1, result);
  }

  *(result + 2) = v6 + 1;
  v7 = &result[16 * v6];
  *(v7 + 4) = &type metadata for Color;
  *(v7 + 5) = &off_1F252CA88;
  if ((*(v0 + 26) & 1) == 0)
  {
LABEL_4:
    if ((*(v0 + 27) & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v9 = *(result + 2);
  v8 = *(result + 3);
  if (v9 >= v8 >> 1)
  {
    result = sub_1AF422C28(v8 > 1, v9 + 1, 1, result);
  }

  *(result + 2) = v9 + 1;
  v10 = &result[16 * v9];
  *(v10 + 4) = &type metadata for Velocity;
  *(v10 + 5) = &off_1F2530AF8;
  if ((*(v0 + 27) & 1) == 0)
  {
LABEL_5:
    if ((*(v0 + 28) & 1) == 0)
    {
      return result;
    }

LABEL_19:
    v14 = result;

    v15 = sub_1AF3CF75C(*v0);

    if (v15)
    {
      if (*(v15 + 16))
      {
        v16 = sub_1AF419914(1702521203, 0xE400000000000000);
        if (v17)
        {
          v18 = *(*(v15 + 56) + 32 * v16 + 24);

          if (v18 != 30)
          {
            result = v14;
            if (v18 != 29)
            {
              if (v18 != 28)
              {
                return result;
              }

              v20 = *(v14 + 2);
              v19 = *(v14 + 3);
              v21 = v20 + 1;
              v22 = &off_1F252F788;
              v23 = &type metadata for Scale1;
              if (v20 < v19 >> 1)
              {
                goto LABEL_30;
              }

              goto LABEL_35;
            }

            v20 = *(v14 + 2);
            v19 = *(v14 + 3);
            v21 = v20 + 1;
            v22 = &off_1F252F838;
            v23 = &type metadata for Scale2;
            if (v20 >= v19 >> 1)
            {
LABEL_35:
              result = sub_1AF422C28(v19 > 1, v21, 1, v14);
            }

LABEL_30:
            *(result + 2) = v21;
            v24 = &result[16 * v20];
            *(v24 + 4) = v23;
            *(v24 + 5) = v22;
            return result;
          }

          v20 = *(v14 + 2);
          v19 = *(v14 + 3);
          v21 = v20 + 1;
          v22 = &off_1F252F998;
          v23 = &type metadata for Scale3;
          if (v20 >= v19 >> 1)
          {
            goto LABEL_35;
          }

LABEL_29:
          result = v14;
          goto LABEL_30;
        }
      }
    }

    v20 = *(v14 + 2);
    v19 = *(v14 + 3);
    v21 = v20 + 1;
    v22 = &off_1F252F788;
    v23 = &type metadata for Scale1;
    if (v20 >= v19 >> 1)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

LABEL_16:
  v12 = *(result + 2);
  v11 = *(result + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_1AF422C28(v11 > 1, v12 + 1, 1, result);
  }

  *(result + 2) = v12 + 1;
  v13 = &result[16 * v12];
  *(v13 + 4) = &type metadata for Orientation;
  *(v13 + 5) = &off_1F252C8A8;
  if (*(v0 + 28))
  {
    goto LABEL_19;
  }

  return result;
}

unint64_t sub_1AFBD13F0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000012;
    v6 = 0x72546E6F69746F6DLL;
    if (a1 != 8)
    {
      v6 = 0x5374697265686E69;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000012;
    if (a1 != 5)
    {
      v7 = 0x6E6F74656C656B73;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x636143746E696F70;
    v2 = 0x5074697265686E69;
    v3 = 0x4374697265686E69;
    if (a1 != 3)
    {
      v3 = 0x5674697265686E69;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x797469636F6C6576;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

double sub_1AFBD1578@<D0>(uint64_t a1@<X8>)
{
  *&v1 = 0xFFFFFFFFLL;
  *(&v1 + 1) = 0xFFFFFFFFLL;
  *a1 = v1;
  *(a1 + 16) = 0x400000003F800000;
  *&result = 65793;
  *(a1 + 24) = 65793;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1AFBD15A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1AFBD13F0(*a1);
  v5 = v4;
  if (v3 == sub_1AFBD13F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFBD162C()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFBD13F0(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBD1690()
{
  sub_1AFBD13F0(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AFBD16E4()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFBD13F0(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBD1744@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBD7440();
  *a1 = result;
  return result;
}

unint64_t sub_1AFBD1774@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AFBD13F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AFBD17BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBD7440();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBD17E4(uint64_t a1)
{
  v2 = sub_1AFBDDA2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBD1820(uint64_t a1)
{
  v2 = sub_1AFBDDA2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBD185C(void *a1)
{
  v3 = v1;
  sub_1AFBDEAB4(0, &qword_1EB643378, sub_1AFBDDA2C, &type metadata for PointCacheEmitter.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDDA2C();
  sub_1AFDFF3F8();
  v14 = *v3;
  v13 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v2)
  {
    v14 = v3[2];
    v13 = 1;
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1EB6398A0);
    sub_1AFDFE918();
    LOBYTE(v14) = 2;
    sub_1AFDFE8C8();
    LOBYTE(v14) = 3;
    sub_1AFDFE8C8();
    LOBYTE(v14) = 4;
    sub_1AFDFE8C8();
    LOBYTE(v14) = 5;
    sub_1AFDFE8C8();
    v14 = v3[1];
    v13 = 6;
    sub_1AFDFE918();
    LOBYTE(v14) = *(v3 + 29);
    v13 = 7;
    sub_1AF51D648();
    sub_1AFDFE918();
    LOBYTE(v14) = 8;
    sub_1AFDFE8E8();
    LOBYTE(v14) = 9;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AFBD1BC0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBD9A40(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AFBD1C20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[2];
  v8 = *(v7 + 32);
  ecs_stack_allocator_push_snapshot(v8);
  v9 = sub_1AF3CF75C(*v3);
  if (v9)
  {
    v11 = v9;
    v12 = v10;

    sub_1AFB93E58();
    if (v12 >= 1)
    {
      v14 = v13;
      v555 = *(a3 + 8);
      v550 = a2;
      v551 = *(a3 + 12);
      v564 = a1[3];
      v567 = a1[6];
      v566 = a1[7];
      v562 = *(a2 + 104);
      v574 = v3;
      if (*(v3 + 25))
      {
        v15 = sub_1AFBD94C4(v11, 0x726F6C6F63, 0xE500000000000000);
        if (v15)
        {
          v17 = v15;
          v18 = v16;
          if ([swift_unknownObjectRetain() storageMode] == 2)
          {
            swift_unknownObjectRelease_n();
          }

          else
          {
            v20 = [v17 contents];
            v21 = v17;
            swift_unknownObjectRelease();
            v22 = sub_1AF70596C(a1[1], a1);
            v23 = v566 - v567;
            if (v566 != v567)
            {
              v24 = v564 + v562;
              v25 = (v22 + 16 * v567);
              do
              {
                *v25++ = *&v20[16 * (v24 % v12) + v18];
                ++v24;
                --v23;
              }

              while (v23);
            }
          }
        }
      }

      if (*(v574 + 28))
      {
        v26 = sub_1AFBD94C4(v11, 1702521203, 0xE400000000000000);
        if (v26)
        {
          v29 = v26;
          if (v28 == 28)
          {
            v30 = v27;
            if ([swift_unknownObjectRetain() storageMode] != 2)
            {
              v41 = [v29 contents];
              v42 = v29;
              swift_unknownObjectRelease();
              v43 = &v41[v30];
              v44 = sub_1AF9C5D44();
              if (v45)
              {
                v46 = sub_1AF70641C(a1[1], a1);
                v47 = v566 - v567;
                if (v566 != v567)
                {
                  v48 = v564 + v562;
                  v49 = (v46 + 16 * v567);
                  do
                  {
                    v50 = &v43[4 * (v48 % v12)];
                    v51 = vld1q_dup_f32(v50);
                    v51.i32[3] = 0;
                    *v49++ = v51;
                    ++v48;
                    --v47;
                  }

                  while (v47);
                }
              }

              else
              {
                v71 = v566 - v567;
                if (v566 != v567)
                {
                  v72 = v564 + v562;
                  v73 = (v44 + 4 * v567);
                  do
                  {
                    *v73++ = *&v43[4 * (v72 % v12)];
                    ++v72;
                    --v71;
                  }

                  while (v71);
                }
              }

              goto LABEL_57;
            }

            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        v31 = sub_1AFBD94C4(v11, 1702521203, 0xE400000000000000);
        if (v31)
        {
          v34 = v31;
          if (v33 == 29)
          {
            v35 = v32;
            if ([swift_unknownObjectRetain() storageMode] != 2)
            {
              v52 = [v34 contents];
              v53 = v34;
              swift_unknownObjectRelease();
              v54 = &v52[v35];
              v55 = sub_1AF9C5D58();
              if (v56)
              {
                v57 = sub_1AF70641C(a1[1], a1);
                v59 = v566 - v567;
                if (v566 != v567)
                {
                  v60 = v564 + v562;
                  v61 = (v57 + 16 * v567);
                  do
                  {
                    *&v58 = *&v54[8 * (v60 % v12)];
                    *v61++ = v58;
                    ++v60;
                    --v59;
                  }

                  while (v59);
                }
              }

              else
              {
                v74 = v566 - v567;
                if (v566 != v567)
                {
                  v75 = v564 + v562;
                  v76 = (v55 + 8 * v567);
                  do
                  {
                    *v76++ = *&v54[8 * (v75 % v12)];
                    ++v75;
                    --v74;
                  }

                  while (v74);
                }
              }

              goto LABEL_57;
            }

            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        v36 = sub_1AFBD94C4(v11, 1702521203, 0xE400000000000000);
        if (v36)
        {
          v39 = v36;
          if (v38 != 30)
          {
LABEL_29:
            swift_unknownObjectRelease();
            goto LABEL_57;
          }

          v40 = v37;
          if ([swift_unknownObjectRetain() storageMode] == 2)
          {
            swift_unknownObjectRelease();
            goto LABEL_29;
          }

          v62 = [v39 contents];
          v63 = v39;
          swift_unknownObjectRelease();
          v64 = &v62[v40];
          v65 = sub_1AF9C5E74();
          if (v67)
          {
            v68 = sub_1AF70641C(a1[1], a1);
            v70 = v566 - v567;
            if (v566 != v567)
            {
              v82 = v564 + v562;
              v83 = (v68 + 16 * v567);
              do
              {
                v84 = &v64[12 * (v82 % v12)];
                *&v85 = *v84;
                DWORD2(v85) = *(v84 + 2);
                HIDWORD(v85) = v69;
                *v83++ = v85;
                ++v82;
                --v70;
              }

              while (v70);
            }
          }

          else
          {
            v77 = v566 - v567;
            if (v566 != v567)
            {
              v78 = v564 + v562;
              v79 = (v65 + 16 * v567);
              do
              {
                v80 = &v64[12 * (v78 % v12)];
                *&v81 = *v80;
                DWORD2(v81) = *(v80 + 2);
                HIDWORD(v81) = v66;
                *v79++ = v81;
                ++v78;
                --v77;
              }

              while (v77);
            }
          }
        }
      }

LABEL_57:
      if (*(v11 + 16) && (v86 = sub_1AF419914(0x797469636F6C6576, 0xE800000000000000), (v87 & 1) != 0))
      {
        v88 = *(v11 + 56) + 32 * v86;
        v90 = *v88;
        v89 = *(v88 + 8);
        v91 = *(v88 + 24) == 30;
        swift_unknownObjectRetain();
      }

      else
      {
        v90 = 0;
        v89 = 0;
        v91 = 0;
      }

      if ((*(v574 + 26) & 1) == 0)
      {
        goto LABEL_66;
      }

      if (!v90)
      {
        v559 = 1;
        goto LABEL_94;
      }

      if (!v91)
      {
LABEL_66:
        v559 = 0;
        goto LABEL_94;
      }

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        goto LABEL_66;
      }

      v92 = [v90 contents];
      v93 = v90;
      v94 = &v92[v89];
      v544 = sub_1AF705CCC(a1[1], a1);

      sub_1AFB95E64(v555 | (v551 << 32), &v576);

      if (v579)
      {
        v95 = v566 - v567;
        if (v566 != v567)
        {
          v96 = v564 + v562;
          v97 = (v544 + 16 * v567);
          do
          {
            v98 = &v94[12 * (v96 % v12)];
            *&v99 = *v98;
            *(&v99 + 1) = *(v98 + 2);
            *v97++ = v99;
            ++v96;
            --v95;
          }

          while (v95);
        }

LABEL_93:
        sub_1AFBD9424(v544, v567, v566, (v550 + 8), *(v574 + 16), *(v574 + 20));
        v559 = 0;
LABEL_94:
        v141 = sub_1AFBD94C4(v11, 0x6E6F697469736F70, 0xE800000000000000);
        if (!v141)
        {

LABEL_101:
          swift_unknownObjectRelease();
          return ecs_stack_allocator_pop_snapshot(v8);
        }

        v144 = v141;
        if (v143 != 30)
        {

          goto LABEL_100;
        }

        v145 = v142;
        if ([swift_unknownObjectRetain() storageMode] == 2)
        {

          swift_unknownObjectRelease();
LABEL_100:
          swift_unknownObjectRelease();

          goto LABEL_101;
        }

        v146 = [v144 contents];
        v147 = v144;
        swift_unknownObjectRelease();
        if (sub_1AFBD94C4(v11, 0x6C616D726F6ELL, 0xE600000000000000))
        {
          if (v149 == 30)
          {
            v545 = v148;
            v150 = swift_unknownObjectRetain();
            if ([v150 storageMode] != 2)
            {
              v157 = [v150 contents];
              v158 = v150;
              swift_unknownObjectRelease();
              v548 = 0;
              v546 = &v157[v545];
              if (!*(v11 + 16))
              {
                goto LABEL_114;
              }

LABEL_109:
              v151 = sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
              if (v152)
              {
                v153 = *(v11 + 56) + 32 * v151;
                if (*(v153 + 24) == 31)
                {
                  v543 = v8;
                  v154 = *v153;
                  v155 = *(v153 + 8);
                  if ([swift_unknownObjectRetain_n() storageMode] == 2)
                  {
                    swift_unknownObjectRelease_n();
                    v156 = 0;
                    v541 = 1;
                  }

                  else
                  {
                    v244 = [v154 contents];
                    v245 = v154;
                    swift_unknownObjectRelease();
                    v541 = 0;
                    v156 = &v244[v155];
                  }

                  v8 = v543;
LABEL_115:
                  v540 = &v146[v145];
                  sub_1AF3C9244(v555 | (v551 << 32), v580);
                  sub_1AF3CB9BC(*(v574 + 8), &v582);
                  if (v583)
                  {
                    v556 = v583;
                    v159 = v585;
                    v160 = v586;
                    v552 = v582;
                    v161 = v584;
                    v162 = *(v7 + 32);
                    ecs_stack_allocator_push_snapshot(v162);
                    v589 = v161;
                    v163 = *(v161 + 16);
                    v164 = ecs_stack_allocator_allocate(v162, v163 << 6, 16);
                    v542 = v162;
                    v165 = ecs_stack_allocator_allocate(v162, v163 << 6, 16);
                    v538 = v164;
                    if (v163)
                    {
                      v166 = v159 + 10;
                      v167 = v164 + 2;
                      v168 = v160;
                      v169 = v160 + 10;
                      v170 = v165 + 2;
                      do
                      {
                        v171 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v166[-4].f32)), xmmword_1AFE20160, v166[-4], 1), xmmword_1AFE20180, *v166[-4].f32, 2), xmmword_1AFE201A0, *v166[-4].f32, 3);
                        v172 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v166[-2].f32)), xmmword_1AFE20160, v166[-2], 1), xmmword_1AFE20180, *v166[-2].f32, 2), xmmword_1AFE201A0, *v166[-2].f32, 3);
                        v173 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v166->f32)), xmmword_1AFE20160, *v166, 1), xmmword_1AFE20180, *v166->f32, 2), xmmword_1AFE201A0, *v166->f32, 3);
                        v167[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v166[-6].f32)), xmmword_1AFE20160, v166[-6], 1), xmmword_1AFE20180, *v166[-6].f32, 2), xmmword_1AFE201A0, *v166[-6].f32, 3);
                        v167[-1] = v171;
                        *v167 = v172;
                        v167[1] = v173;
                        v167 += 4;
                        v174 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v169[-4].f32)), xmmword_1AFE20160, v169[-4], 1), xmmword_1AFE20180, *v169[-4].f32, 2), xmmword_1AFE201A0, *v169[-4].f32, 3);
                        v175 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v169[-2].f32)), xmmword_1AFE20160, v169[-2], 1), xmmword_1AFE20180, *v169[-2].f32, 2), xmmword_1AFE201A0, *v169[-2].f32, 3);
                        v176 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v169->f32)), xmmword_1AFE20160, *v169, 1), xmmword_1AFE20180, *v169->f32, 2), xmmword_1AFE201A0, *v169->f32, 3);
                        v170[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v169[-6].f32)), xmmword_1AFE20160, v169[-6], 1), xmmword_1AFE20180, *v169[-6].f32, 2), xmmword_1AFE201A0, *v169[-6].f32, 3);
                        v170[-1] = v174;
                        v166 += 8;
                        *v170 = v175;
                        v170[1] = v176;
                        v170 += 4;
                        v169 += 8;
                        --v163;
                      }

                      while (v163);
                    }

                    else
                    {
                      v168 = v160;
                    }

                    if (!*(v11 + 16) || (v536 = v165, v186 = sub_1AF419914(0x646E49746E696F6ALL, 0xEC00000073656369), (v187 & 1) == 0) || (v188 = *(v11 + 56) + 32 * v186, *(v188 + 24) != 18))
                    {

                      goto LABEL_146;
                    }

                    v534 = v168;
                    v189 = *v188;
                    v190 = *(v188 + 8);
                    if ([swift_unknownObjectRetain_n() storageMode] == 2)
                    {

                      swift_unknownObjectRelease_n();
LABEL_146:

LABEL_147:
                      ecs_stack_allocator_pop_snapshot(v542);

                      swift_unknownObjectRelease();
                      v590 = v552;
                      sub_1AFBDDAE4(&v590, &qword_1EB643380, type metadata accessor for SkeletonData, MEMORY[0x1E69E6720]);
                      v591 = v556;
                      v231 = MEMORY[0x1E69E62F8];
                      sub_1AFBDDAE4(&v591, &qword_1EB643388, type metadata accessor for simd_float4x4, MEMORY[0x1E69E62F8]);
                      sub_1AFBDDAE4(&v589, &qword_1EB643388, type metadata accessor for simd_float4x4, v231);
                      v592 = v159;
                      sub_1AFBDDAE4(&v592, &qword_1EB643388, type metadata accessor for simd_float4x4, v231);
                      v587.columns[0].i64[0] = v168;
                      sub_1AFBDDAE4(&v587, &qword_1EB643388, type metadata accessor for simd_float4x4, v231);
                      return ecs_stack_allocator_pop_snapshot(v8);
                    }

                    v246 = [v189 contents];
                    v247 = v189;
                    swift_unknownObjectRelease();
                    if (!*(v11 + 16) || (v248 = sub_1AF419914(0x696557746E696F6ALL, 0xEC00000073746867), (v249 & 1) == 0))
                    {

                      goto LABEL_147;
                    }

                    v532 = v159;
                    v250 = *(v11 + 56) + 32 * v248;
                    v251 = *v250;
                    v252 = *(v250 + 8);
                    v253 = *(v250 + 24);
                    swift_unknownObjectRetain();

                    if (v253 != 31)
                    {
                      swift_unknownObjectRelease();
                      goto LABEL_228;
                    }

                    if ([swift_unknownObjectRetain() storageMode] == 2)
                    {
                      swift_unknownObjectRelease_n();
LABEL_228:
                      v168 = v534;
                      goto LABEL_147;
                    }

                    v354 = [v251 contents];
                    v355 = v251;
                    swift_unknownObjectRelease();
                    v356 = a1[1];
                    v571 = sub_1AF705C38(v356, a1);
                    if (v559)
                    {
                      v526 = sub_1AF705CCC(v356, a1);
                    }

                    else
                    {
                      v526 = 0;
                    }

                    v361 = *(v574 + 27);
                    if (v361)
                    {
                      v362 = sub_1AF705C10(v356, a1);
                    }

                    else
                    {
                      v362 = 0;
                    }

                    v363 = &v246[v190];
                    v364 = &v354[v252];
                    v365 = *(v574 + 32) / v14;
                    v366 = v559;
                    v367 = v540;
                    if ((v559 & 1) != 0 || (*(v574 + 24)) && v365 > 0.0)
                    {
                      v368 = v566 - v567;
                      v369 = v536;
                      if (v566 != v567)
                      {
                        v370 = *(v574 + 24);
                        v371 = *(v574 + 29);
                        v372 = v548 | v361 ^ 1;
                        v373 = v564 + v562;
                        v374 = (v571 + 16 * v567);
                        v375 = (v526 + 16 * v567);
                        v376 = (v362 + 16 * v567);
                        v377 = 0uLL;
                        v360.i32[0] = 1.0;
                        __asm { FMOV            V26.4S, #1.0 }

                        v379.i64[0] = 0x8000000080000000;
                        v379.i64[1] = 0x8000000080000000;
                        v525 = v363;
                        v524 = *(v574 + 32) / v14;
                        v522 = v371;
                        v523 = v370;
                        v521 = v372;
                        v520 = _Q26;
                        do
                        {
                          v383 = v359.i32[3];
                          v384 = v373 % v12;
                          v385 = *&v364[16 * (v373 % v12)];
                          v386 = *&v363[8 * (v373 % v12)];
                          v387 = v386 << 6;
                          v388 = vaddq_f32(vmulq_n_f32(*(v538 + v387), v385.f32[0]), v377);
                          v389 = vaddq_f32(vmulq_n_f32(*(v538 + v387 + 16), v385.f32[0]), v377);
                          v390 = vaddq_f32(vmulq_n_f32(*(v538 + v387 + 32), v385.f32[0]), v377);
                          v391 = vaddq_f32(vmulq_n_f32(*(v538 + v387 + 48), v385.f32[0]), v377);
                          v392 = (v369 + v387);
                          v393 = vaddq_f32(vmulq_n_f32(*v392, v385.f32[0]), v377);
                          v394 = vaddq_f32(vmulq_n_f32(v392[1], v385.f32[0]), v377);
                          v395 = vaddq_f32(vmulq_n_f32(v392[2], v385.f32[0]), v377);
                          v396 = vaddq_f32(vmulq_n_f32(v392[3], v385.f32[0]), v377);
                          v397 = SWORD1(v386) << 6;
                          v398 = vaddq_f32(v388, vmulq_lane_f32(*(v538 + v397), *v385.f32, 1));
                          v399 = vaddq_f32(v389, vmulq_lane_f32(*(v538 + v397 + 16), *v385.f32, 1));
                          v400 = vaddq_f32(v390, vmulq_lane_f32(*(v538 + v397 + 32), *v385.f32, 1));
                          v401 = vaddq_f32(v391, vmulq_lane_f32(*(v538 + v397 + 48), *v385.f32, 1));
                          v402 = (v369 + v397);
                          v403 = vaddq_f32(v393, vmulq_lane_f32(*v402, *v385.f32, 1));
                          v404 = vaddq_f32(v394, vmulq_lane_f32(v402[1], *v385.f32, 1));
                          v405 = vaddq_f32(v395, vmulq_lane_f32(v402[2], *v385.f32, 1));
                          v406 = vaddq_f32(v396, vmulq_lane_f32(v402[3], *v385.f32, 1));
                          v407 = SWORD2(v386) << 6;
                          v408 = vaddq_f32(v398, vmulq_laneq_f32(*(v538 + v407), v385, 2));
                          v409 = vaddq_f32(v399, vmulq_laneq_f32(*(v538 + v407 + 16), v385, 2));
                          v410 = vaddq_f32(v400, vmulq_laneq_f32(*(v538 + v407 + 32), v385, 2));
                          v411 = vaddq_f32(v401, vmulq_laneq_f32(*(v538 + v407 + 48), v385, 2));
                          v412 = (v369 + v407);
                          v413 = vaddq_f32(v403, vmulq_laneq_f32(*v412, v385, 2));
                          v414 = vaddq_f32(v404, vmulq_laneq_f32(v412[1], v385, 2));
                          v415 = vaddq_f32(v405, vmulq_laneq_f32(v412[2], v385, 2));
                          v416 = vaddq_f32(v406, vmulq_laneq_f32(v412[3], v385, 2));
                          v417 = SHIWORD(v386) << 6;
                          v418 = vaddq_f32(v408, vmulq_laneq_f32(*(v538 + v417), v385, 3));
                          v419 = vaddq_f32(v409, vmulq_laneq_f32(*(v538 + v417 + 16), v385, 3));
                          v420 = vaddq_f32(v410, vmulq_laneq_f32(*(v538 + v417 + 32), v385, 3));
                          v421 = vaddq_f32(v411, vmulq_laneq_f32(*(v538 + v417 + 48), v385, 3));
                          v422 = &v367[12 * (v373 % v12)];
                          v423 = vld1q_dup_f32(v422++);
                          v411.i32[0] = *&v367[12 * (v373 % v12) + 8];
                          v424 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vaddq_f32(v416, vmulq_laneq_f32(*(v369 + v417 + 48), v385, 3)), vaddq_f32(v415, vmulq_laneq_f32(*(v369 + v417 + 32), v385, 3)), v411.f32[0]), vaddq_f32(v414, vmulq_laneq_f32(*(v369 + v417 + 16), v385, 3)), *v422), vaddq_f32(v413, vmulq_laneq_f32(*(v369 + v417), v385, 3)), v423);
                          v359 = v424;
                          v359.i32[3] = v383;
                          v425 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(v421, v420, v411.f32[0]), v419, *v422), v418, v423);
                          if (v370)
                          {
                            if (v371)
                            {
                              if (v371 == 1)
                              {
                                v572 = v368;
                                v568 = v383;
                                v563 = v419;
                                v565 = v418;
                                v549 = v420;
                                v528 = v424;
                                v530 = v425;
                                v426 = sub_1AF6C0D50();
                                v424 = v528;
                                v425 = v530;
                                v420 = v549;
                                v419 = v563;
                                v418 = v565;
                                v359.i32[3] = v568;
                                v379.i64[0] = 0x8000000080000000;
                                v379.i64[1] = 0x8000000080000000;
                                _Q26 = v520;
                                v360.i32[0] = 1.0;
                                v377 = 0uLL;
                                v372 = v521;
                                v371 = v522;
                                v370 = v523;
                                v368 = v572;
                                v365 = v524;
                                v369 = v536;
                                v363 = v525;
                                v367 = v540;
                                v366 = v559;
                                v429.f32[0] = vcvts_n_f32_u64(v426 & 0xFFFFFF, 0x18uLL);
                                v427 = vsubq_f32(v530, v528);
                                v428 = v528.f32[2] + vmuls_lane_f32(v429.f32[0], v427, 2);
                                *v429.f32 = vadd_f32(*v374, vadd_f32(*v528.f32, vmul_n_f32(*v427.f32, v429.f32[0])));
                                v430 = COERCE_FLOAT(*&v374[1]) + v428;
                              }

                              else
                              {
                                v433 = (1.0 / v12) * v384;
                                v434 = vsubq_f32(v425, v424);
                                v435 = v424.f32[2] + vmuls_lane_f32(v433, v434, 2);
                                *v429.f32 = vadd_f32(vadd_f32(*v424.f32, vmul_n_f32(*v434.f32, v433)), *v374);
                                v430 = v435 + COERCE_FLOAT(*&v374[1]);
                              }

                              v429.f32[2] = v430;
                            }

                            else
                            {
                              v429 = v359;
                            }

                            v429.i32[3] = v360.i32[0];
                            *v374->f32 = v429;
                            if (v366)
                            {
LABEL_248:
                              v431 = vsubq_f32(v425, v424);
                              *&v432 = vmul_n_f32(*v431.f32, v365);
                              *(&v432 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v365, v431, 2));
                              *v375 = v432;
                              if ((v372 & 1) == 0)
                              {
                                goto LABEL_255;
                              }

                              goto LABEL_242;
                            }
                          }

                          else if (v366)
                          {
                            goto LABEL_248;
                          }

                          if ((v372 & 1) == 0)
                          {
LABEL_255:
                            v436 = vmulq_f32(v418, v418);
                            v437 = vmulq_f32(v419, v419);
                            v438 = vmulq_f32(v420, v420);
                            v439 = vzip1q_s32(v436, v438);
                            v440 = vzip2q_s32(v436, v438);
                            v441 = vtrn2q_s32(v436, v437);
                            v441.i32[2] = v438.i32[1];
                            v442 = vaddq_f32(vzip1q_s32(v440, vdupq_laneq_s32(v437, 2)), vaddq_f32(vzip1q_s32(v439, v437), v441));
                            v443 = vceqzq_f32(v442);
                            v443.i32[3] = 0;
                            v444 = vbslq_s8(vcltzq_s32(v443), v442, vdivq_f32(_Q26, v442));
                            v445 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vmulq_laneq_f32(v420, v444, 2), *&v546[12 * v384 + 8]), vmulq_lane_f32(v419, *v444.f32, 1), *&v546[12 * v384 + 4]), vmulq_n_f32(v418, v444.f32[0]), *&v546[12 * v384]);
                            v446 = vmulq_f32(v445, v445);
                            v446.f32[0] = v446.f32[2] + vaddv_f32(*v446.f32);
                            v447 = vdupq_lane_s32(*v446.f32, 0);
                            v447.i32[3] = 0;
                            v448 = vrsqrteq_f32(v447);
                            v449 = vmulq_f32(v448, vrsqrtsq_f32(v447, vmulq_f32(v448, v448)));
                            v450 = vmulq_f32(v449, v449);
                            v451 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v446.f32[0] != 0.0)), 0x1FuLL));
                            v451.i32[3] = 0;
                            v452 = vbslq_s8(vcltzq_s32(v451), vmulq_f32(v445, vmulq_f32(v449, vrsqrtsq_f32(v447, v450))), v445);
                            v450.i32[0] = v452.i32[2];
                            v447.f32[0] = *vbslq_s8(v379, v360, v450).i32;
                            v445.f32[0] = v452.f32[1] / (fabsf(v452.f32[2]) + *v360.i32);
                            *v440.i32 = vmuls_lane_f32(v445.f32[0], *v452.f32, 1);
                            v453 = -(v452.f32[0] * v445.f32[0]);
                            v454 = v452.f32[2] + (v447.f32[0] * *v440.i32);
                            v455 = v447.f32[0] * v453;
                            v456 = *v360.i32 - *v440.i32;
                            v457 = vmuls_lane_f32(-v447.f32[0], *v452.f32, 1);
                            v458 = v452.f32[2] + (v454 + v456);
                            if (v458 > 0.0)
                            {
                              v380 = sqrtf(v458 + *v360.i32);
                              v381.f32[0] = v457 - v452.f32[1];
                              v381.i32[1] = vaddq_f32(v452, v452).u32[0];
                              v381.f32[2] = v455 - v453;
                              v381.f32[3] = v380 * v380;
                              v382 = vmulq_n_f32(v381, 0.5 / v380);
                            }

                            else if (v454 < v456 || v454 < v452.f32[2])
                            {
                              if (v456 <= v452.f32[2])
                              {
                                v464 = sqrtf(((v452.f32[2] + *v360.i32) - v454) - v456);
                                v452.i32[0] = vsubq_f32(v452, v452).u32[0];
                                v452.f32[1] = v452.f32[1] + v457;
                                v452.f32[2] = v464 * v464;
                                v452.f32[3] = v455 - v453;
                                v382 = vmulq_n_f32(v452, 0.5 / v464);
                              }

                              else
                              {
                                v460 = sqrtf(((v456 + *v360.i32) - v454) - v452.f32[2]);
                                v461.f32[0] = v453 + v455;
                                v461.f32[1] = v460 * v460;
                                *&v461.u32[2] = vrev64_s32(vadd_f32(*v452.f32, __PAIR64__(LODWORD(v457), v452.u32[0])));
                                v382 = vmulq_n_f32(v461, 0.5 / v460);
                              }
                            }

                            else
                            {
                              v462 = sqrtf(((v454 + *v360.i32) - v456) - v452.f32[2]);
                              v463.f32[0] = v462 * v462;
                              v463.f32[1] = v453 + v455;
                              *&v463.u32[2] = vsub_f32(__PAIR64__(LODWORD(v457), v452.u32[0]), *v452.f32);
                              v382 = vmulq_n_f32(v463, 0.5 / v462);
                            }

                            *v376 = v382;
                          }

LABEL_242:
                          ++v373;
                          v374 += 2;
                          ++v375;
                          ++v376;
                          --v368;
                        }

                        while (v368);
                      }
                    }

                    else
                    {
                      v465 = v566 - v567;
                      if (v566 != v567)
                      {
                        v466 = *(v574 + 24);
                        v467 = v564 + v562;
                        v468 = (v571 + 16 * v567);
                        v469 = (v526 + 16 * v567);
                        v470 = (v362 + 16 * v567);
                        v357.i32[0] = 1.0;
                        __asm { FMOV            V2.4S, #1.0 }

                        v472.i64[0] = 0x8000000080000000;
                        v472.i64[1] = 0x8000000080000000;
                        do
                        {
                          v474 = v467 % v12;
                          v475 = *&v364[16 * (v467 % v12)];
                          v476 = *&v363[8 * (v467 % v12)];
                          v477 = &v538[8 * v476];
                          v478 = &v538[8 * SWORD1(v476)];
                          v479 = &v538[8 * SWORD2(v476)];
                          v480 = &v538[8 * SHIWORD(v476)];
                          v481 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*v477, v475.f32[0]), 0), vmulq_lane_f32(*v478, *v475.f32, 1)), vmulq_laneq_f32(*v479, v475, 2)), vmulq_laneq_f32(*v480, v475, 3));
                          v482 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v477[1], v475.f32[0]), 0), vmulq_lane_f32(v478[1], *v475.f32, 1)), vmulq_laneq_f32(v479[1], v475, 2)), vmulq_laneq_f32(v480[1], v475, 3));
                          v483 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v477[2], v475.f32[0]), 0), vmulq_lane_f32(v478[2], *v475.f32, 1)), vmulq_laneq_f32(v479[2], v475, 2)), vmulq_laneq_f32(v480[2], v475, 3));
                          if (v466)
                          {
                            v484 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v477[3], v475.f32[0]), 0), vmulq_lane_f32(v478[3], *v475.f32, 1)), vmulq_laneq_f32(v479[3], v475, 2)), vmulq_laneq_f32(v480[3], v475, 3)), v483, *&v540[12 * v474 + 8]), v482, *&v540[12 * v474 + 4]), v481, *&v540[12 * v474]);
                            v484.i32[3] = 1.0;
                            *v468 = v484;
                          }

                          if ((v548 | (v559 | v361) ^ 1))
                          {
                            v473 = v358;
                          }

                          else
                          {
                            v485 = vmulq_f32(v481, v481);
                            v486 = vmulq_f32(v482, v482);
                            v487 = vmulq_f32(v483, v483);
                            v488 = vzip2q_s32(v485, v487);
                            v489 = vzip1q_s32(vzip1q_s32(v485, v487), v486);
                            v490 = vtrn2q_s32(v485, v486);
                            v490.i32[2] = v487.i32[1];
                            v491 = vaddq_f32(vzip1q_s32(v488, vdupq_laneq_s32(v486, 2)), vaddq_f32(v489, v490));
                            v492 = vceqzq_f32(v491);
                            v492.i32[3] = 0;
                            v493 = vbslq_s8(vcltzq_s32(v492), v491, vdivq_f32(_Q2, v491));
                            v494 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vmulq_laneq_f32(v483, v493, 2), *&v546[12 * v474 + 8]), vmulq_lane_f32(v482, *v493.f32, 1), *&v546[12 * v474 + 4]), vmulq_n_f32(v481, v493.f32[0]), *&v546[12 * v474]);
                            v473 = v494;
                            v473.i32[3] = v358.i32[3];
                            if (v559)
                            {
                              v495 = v473;
                              v495.i32[3] = 0;
                              *v469 = v495;
                            }

                            if (v361)
                            {
                              v496 = vmulq_f32(v494, v494);
                              v496.f32[0] = v496.f32[2] + vaddv_f32(*v496.f32);
                              v497 = vdupq_lane_s32(*v496.f32, 0);
                              v497.i32[3] = 0;
                              v498 = vrsqrteq_f32(v497);
                              v499 = vmulq_f32(v498, vrsqrtsq_f32(v497, vmulq_f32(v498, v498)));
                              v500 = vmulq_f32(v499, v499);
                              v501 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v496.f32[0] != 0.0)), 0x1FuLL));
                              v501.i32[3] = 0;
                              v502 = vbslq_s8(vcltzq_s32(v501), vmulq_f32(v494, vmulq_f32(v499, vrsqrtsq_f32(v497, v500))), v494);
                              v500.i32[0] = v502.i32[2];
                              v503 = *vbslq_s8(v472, v357, v500).i32;
                              v497.f32[0] = v502.f32[1] / (fabsf(v502.f32[2]) + 1.0);
                              v504 = vmuls_lane_f32(v497.f32[0], *v502.f32, 1);
                              v505 = -(v502.f32[0] * v497.f32[0]);
                              v506 = v502.f32[2] + (v503 * v504);
                              v507 = v503 * v505;
                              v508 = 1.0 - v504;
                              v509 = vmuls_lane_f32(-v503, *v502.f32, 1);
                              v510 = v502.f32[2] + (v506 + v508);
                              if (v510 <= 0.0)
                              {
                                if (v506 < v508 || v506 < v502.f32[2])
                                {
                                  if (v508 <= v502.f32[2])
                                  {
                                    v519 = sqrtf(((v502.f32[2] + 1.0) - v506) - v508);
                                    v502.i32[0] = vsubq_f32(v502, v502).u32[0];
                                    v502.f32[1] = v502.f32[1] + v509;
                                    v502.f32[2] = v519 * v519;
                                    v502.f32[3] = v507 - v505;
                                    v513 = vmulq_n_f32(v502, 0.5 / v519);
                                  }

                                  else
                                  {
                                    v515 = sqrtf(((v508 + 1.0) - v506) - v502.f32[2]);
                                    v516.f32[0] = v505 + v507;
                                    v516.f32[1] = v515 * v515;
                                    *&v516.u32[2] = vrev64_s32(vadd_f32(*v502.f32, __PAIR64__(LODWORD(v509), v502.u32[0])));
                                    v513 = vmulq_n_f32(v516, 0.5 / v515);
                                  }
                                }

                                else
                                {
                                  v517 = sqrtf(((v506 + 1.0) - v508) - v502.f32[2]);
                                  v518.f32[0] = v517 * v517;
                                  v518.f32[1] = v505 + v507;
                                  *&v518.u32[2] = vsub_f32(__PAIR64__(LODWORD(v509), v502.u32[0]), *v502.f32);
                                  v513 = vmulq_n_f32(v518, 0.5 / v517);
                                }
                              }

                              else
                              {
                                v511 = sqrtf(v510 + 1.0);
                                v512.f32[0] = v509 - v502.f32[1];
                                v512.i32[1] = vaddq_f32(v502, v502).u32[0];
                                v512.f32[2] = v507 - v505;
                                v512.f32[3] = v511 * v511;
                                v513 = vmulq_n_f32(v512, 0.5 / v511);
                              }

                              *v470 = v513;
                            }
                          }

                          ++v467;
                          ++v468;
                          ++v469;
                          ++v470;
                          v358 = v473;
                          --v465;
                        }

                        while (v465);
                      }
                    }

                    v168 = v534;
                    v159 = v532;
                    if (v366)
                    {
                      sub_1AFBD9424(v526, v567, v566, (v550 + 8), *(v574 + 16), *(v574 + 20));
                    }

                    goto LABEL_147;
                  }

                  if (v581)
                  {
                    if (*(v574 + 24))
                    {
                      v177 = sub_1AF705C38(a1[1], a1);
                      v178 = v567;
                      v179 = v566 - v567;
                      v180 = v546;
                      v181 = v559;
                      if (v566 != v567)
                      {
                        v182 = v564 + v562;
                        v183 = (v177 + 16 * v567);
                        do
                        {
                          v184 = &v540[12 * (v182 % v12)];
                          *&v185 = *v184;
                          DWORD2(v185) = *(v184 + 2);
                          HIDWORD(v185) = 1.0;
                          *v183++ = v185;
                          ++v182;
                          --v179;
                        }

                        while (v179);
                      }
                    }

                    else
                    {
                      v178 = v567;
                      v180 = v546;
                      v181 = v559;
                    }

                    if (((v548 | v181 ^ 1) & 1) == 0)
                    {
                      v232 = sub_1AF705CCC(a1[1], a1);
                      v233 = v566 - v178;
                      if (v566 != v178)
                      {
                        v234 = v564 + v562;
                        v235 = (v232 + 16 * v178);
                        do
                        {
                          v236 = &v180[12 * (v234 % v12)];
                          *&v237 = *v236;
                          *(&v237 + 1) = *(v236 + 2);
                          *v235++ = v237;
                          ++v234;
                          --v233;
                        }

                        while (v233);
                      }

                      sub_1AFBD9424(v232, v178, v566, (v550 + 8), *(v574 + 16), *(v574 + 20));
                    }

                    if (*(v574 + 27))
                    {
                      v238 = sub_1AF705C10(a1[1], a1);
                      if (v541)
                      {
                        if ((v548 & 1) == 0)
                        {
                          v241 = v566 - v178;
                          if (v566 != v178)
                          {
                            v299 = v564 + v562;
                            v300 = (v238 + 16 * v178);
                            v239.i32[0] = 1.0;
                            v301.i64[0] = 0x8000000080000000;
                            v301.i64[1] = 0x8000000080000000;
                            do
                            {
                              v304 = &v180[12 * (v299 % v12)];
                              v240.i64[0] = *v304;
                              v240.i32[2] = *(v304 + 2);
                              v305 = vmulq_f32(v240, v240);
                              v305.f32[0] = v305.f32[2] + vaddv_f32(*v305.f32);
                              v306 = vdupq_lane_s32(*v305.f32, 0);
                              v306.i32[3] = 0;
                              v307 = vrsqrteq_f32(v306);
                              v308 = vmulq_f32(v307, vrsqrtsq_f32(v306, vmulq_f32(v307, v307)));
                              v309 = vmulq_f32(v308, v308);
                              v310 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v305.f32[0] != 0.0)), 0x1FuLL));
                              v310.i32[3] = 0;
                              v311 = vbslq_s8(vcltzq_s32(v310), vmulq_f32(v240, vmulq_f32(v308, vrsqrtsq_f32(v306, v309))), v240);
                              v309.i32[0] = v311.i32[2];
                              v310.i32[0] = vbslq_s8(v301, v239, v309).i32[0];
                              v306.f32[0] = v311.f32[1] / (fabsf(v311.f32[2]) + 1.0);
                              v312 = vmuls_lane_f32(v306.f32[0], *v311.f32, 1);
                              v313 = -(v311.f32[0] * v306.f32[0]);
                              v314 = v311.f32[2] + (*v310.i32 * v312);
                              v315 = *v310.i32 * v313;
                              v316 = 1.0 - v312;
                              v317 = vmuls_lane_f32(-*v310.i32, *v311.f32, 1);
                              v318 = v311.f32[2] + (v314 + v316);
                              if (v318 > 0.0)
                              {
                                v302 = sqrtf(v318 + 1.0);
                                v303.f32[0] = v317 - v311.f32[1];
                                v303.i32[1] = vaddq_f32(v311, v311).u32[0];
                                v303.f32[2] = v315 - v313;
                                v303.f32[3] = v302 * v302;
                                v240 = vmulq_n_f32(v303, 0.5 / v302);
                              }

                              else if (v314 < v316 || v314 < v311.f32[2])
                              {
                                if (v316 <= v311.f32[2])
                                {
                                  v324 = sqrtf(((v311.f32[2] + 1.0) - v314) - v316);
                                  v311.i32[0] = vsubq_f32(v311, v311).u32[0];
                                  v311.f32[1] = v311.f32[1] + v317;
                                  v311.f32[2] = v324 * v324;
                                  v311.f32[3] = v315 - v313;
                                  v240 = vmulq_n_f32(v311, 0.5 / v324);
                                }

                                else
                                {
                                  v320 = sqrtf(((v316 + 1.0) - v314) - v311.f32[2]);
                                  v321.f32[0] = v313 + v315;
                                  v321.f32[1] = v320 * v320;
                                  *&v321.u32[2] = vrev64_s32(vadd_f32(*v311.f32, __PAIR64__(LODWORD(v317), v311.u32[0])));
                                  v240 = vmulq_n_f32(v321, 0.5 / v320);
                                }
                              }

                              else
                              {
                                v322 = sqrtf(((v314 + 1.0) - v316) - v311.f32[2]);
                                v323.f32[0] = v322 * v322;
                                v323.f32[1] = v313 + v315;
                                *&v323.u32[2] = vsub_f32(__PAIR64__(LODWORD(v317), v311.u32[0]), *v311.f32);
                                v240 = vmulq_n_f32(v323, 0.5 / v322);
                              }

                              *v300++ = v240;
                              ++v299;
                              --v241;
                            }

                            while (v241);
                          }
                        }
                      }

                      else
                      {
                        v254 = v566 - v178;
                        if (v566 != v178)
                        {
                          v255 = v564 + v562;
                          v256 = (v238 + 16 * v178);
                          do
                          {
                            *v256++ = *&v156[16 * (v255 % v12)];
                            ++v255;
                            --v254;
                          }

                          while (v254);
                        }
                      }
                    }

LABEL_158:

                    goto LABEL_101;
                  }

                  v529 = v580[3];
                  v569 = v580[2];
                  v553 = v580[0];
                  v557 = v580[1];
                  v191 = *(a3 + 32);

                  sub_1AFB95040(v191, &v587);
                  v531 = v587;

                  if (v588)
                  {
                    v192 = -1;
                  }

                  else
                  {
                    v192 = 0;
                  }

                  v193 = vdupq_n_s32(v192);
                  v194 = vbslq_s8(v193, xmmword_1AFE20150, v531.columns[0]);
                  v195 = vbslq_s8(v193, xmmword_1AFE20160, v531.columns[1]);
                  v196 = vbslq_s8(v193, xmmword_1AFE20180, v531.columns[2]);
                  v197 = vbslq_s8(v193, xmmword_1AFE201A0, v531.columns[3]);
                  v198 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v194, v553.f32[0]), v195, *v553.f32, 1), v196, v553, 2), v197, v553, 3);
                  v199 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v194, v557.f32[0]), v195, *v557.f32, 1), v196, v557, 2), v197, v557, 3);
                  v200 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v194, v569.f32[0]), v195, *v569.f32, 1), v196, v569, 2), v197, v569, 3);
                  v201 = vmulq_f32(v198, v198);
                  v202 = vmulq_f32(v199, v199);
                  v203 = vmulq_f32(v200, v200);
                  v204 = vzip2q_s32(v201, v203);
                  v205 = vzip1q_s32(vzip1q_s32(v201, v203), v202);
                  v206 = vtrn2q_s32(v201, v202);
                  v206.i32[2] = v203.i32[1];
                  v207 = vaddq_f32(vzip1q_s32(v204, vdupq_laneq_s32(v202, 2)), vaddq_f32(v205, v206));
                  v202.i64[0] = 0x80000000800000;
                  v202.i64[1] = 0x80000000800000;
                  v208 = vcgeq_f32(v202, v207);
                  v207.i32[3] = 0;
                  v209 = vrsqrteq_f32(v207);
                  v210 = vmulq_f32(v209, vrsqrtsq_f32(v207, vmulq_f32(v209, v209)));
                  v211 = v208;
                  v211.i32[3] = 0;
                  v212 = vbslq_s8(vcltzq_s32(v211), v207, vmulq_f32(v210, vrsqrtsq_f32(v207, vmulq_f32(v210, v210))));
                  v213 = vmulq_n_f32(v198, v212.f32[0]);
                  v214 = vmulq_lane_f32(v199, *v212.f32, 1);
                  v215 = vmulq_laneq_f32(v200, v212, 2);
                  v216 = vuzp1q_s32(v215, v215);
                  v217 = vuzp1q_s32(v214, v214);
                  v218 = v213;
                  if (v208.i32[0])
                  {
                    v219 = vmlaq_f32(vmulq_f32(vextq_s8(v216, v215, 0xCuLL), vnegq_f32(v214)), v215, vextq_s8(v217, v214, 0xCuLL));
                    v218 = vextq_s8(vuzp1q_s32(v219, v219), v219, 0xCuLL);
                  }

                  v220 = vuzp1q_s32(v213, v213);
                  v221 = v214;
                  if (v208.i32[1])
                  {
                    v222 = vmlaq_f32(vmulq_f32(vextq_s8(v220, v213, 0xCuLL), vnegq_f32(v215)), v213, vextq_s8(v216, v215, 0xCuLL));
                    v221 = vextq_s8(vuzp1q_s32(v222, v222), v222, 0xCuLL);
                  }

                  v223 = v567;
                  v224 = v574;
                  if (v208.i32[2])
                  {
                    v225 = vmlaq_f32(vmulq_f32(vextq_s8(v217, v214, 0xCuLL), vnegq_f32(v213)), v214, vextq_s8(v220, v213, 0xCuLL));
                    v215 = vextq_s8(vuzp1q_s32(v225, v225), v225, 0xCuLL);
                  }

                  v226 = (*v218.i32 + *&v221.i32[1]) + v215.f32[2];
                  if (v226 > 0.0)
                  {
                    v227 = sqrtf(v226 + 1.0);
                    *v228.f32 = vsub_f32(*&vzip2q_s32(v221, vuzp1q_s32(v221, v215)), *&vtrn2q_s32(v215, vzip2q_s32(v215, v218)));
                    v228.f32[2] = *&v218.i32[1] - *v221.i32;
                    v228.f32[3] = v227 * v227;
                    v229 = 0.5 / v227;
LABEL_144:
                    v230 = vmulq_n_f32(v228, v229);
LABEL_178:
                    v558 = v230;
                    if (*(v574 + 24))
                    {
                      v527 = v197;
                      v533 = v196;
                      v535 = v195;
                      v537 = v194;
                      v539 = v200;
                      v554 = v199;
                      v570 = v198;
                      v262 = sub_1AF705C38(a1[1], a1);
                      v263 = v566 - v567;
                      v264 = v559;
                      if (v566 != v567)
                      {
                        v265 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v537, v529.f32[0]), v535, *v529.f32, 1), v533, v529, 2), v527, v529, 3);
                        v266 = v564 + v562;
                        v267 = (v262 + 16 * v567);
                        do
                        {
                          v268 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v265, v539, *&v540[12 * (v266 % v12) + 8]), v554, *&v540[12 * (v266 % v12) + 4]), v570, *&v540[12 * (v266 % v12)]);
                          v268.i32[3] = 1.0;
                          *v267++ = v268;
                          ++v266;
                          --v263;
                        }

                        while (v263);
                      }
                    }

                    else
                    {
                      v264 = v559;
                    }

                    if (((v548 | v264 ^ 1) & 1) == 0)
                    {
                      v560 = sub_1AF705CCC(a1[1], a1);
                      v270 = v566 - v567;
                      if (v566 != v567)
                      {
                        v271 = v564 + v562;
                        v272 = (v560 + 16 * v567);
                        do
                        {
                          v273 = &v546[12 * (v271 % v12)];
                          v274.i64[0] = *v273;
                          v274.i32[2] = *(v273 + 2);
                          v274.i32[3] = v269;
                          v573 = v269;
                          *&v275 = sub_1AF6AF448(v274, v558);
                          HIDWORD(v275) = 0;
                          *v272++ = v275;
                          ++v271;
                          v269 = v573;
                          --v270;
                        }

                        while (v270);
                      }

                      v224 = v574;
                      v223 = v567;
                      sub_1AFBD9424(v560, v567, v566, (v550 + 8), *(v574 + 16), *(v574 + 20));
                    }

                    if (*(v224 + 27))
                    {
                      v276 = sub_1AF705C10(a1[1], a1);
                      if (v541)
                      {
                        if ((v548 & 1) == 0)
                        {
                          v277 = v566 - v223;
                          if (v566 != v223)
                          {
                            v325 = v564 + v562;
                            v326 = (v276 + 16 * v223);
                            do
                            {
                              v330 = &v546[12 * (v325 % v12)];
                              v331.i64[0] = *v330;
                              v331.i32[2] = *(v330 + 2);
                              v331.i32[3] = v575;
                              *v332.f32 = sub_1AF6AF448(v331, v558);
                              v333 = vmulq_f32(v332, v332);
                              v333.f32[0] = v333.f32[2] + vaddv_f32(*v333.f32);
                              v334 = vdupq_lane_s32(*v333.f32, 0);
                              v334.i32[3] = 0;
                              v335 = vrsqrteq_f32(v334);
                              v336 = vmulq_f32(v335, vrsqrtsq_f32(v334, vmulq_f32(v335, v335)));
                              v337 = vmulq_f32(v336, v336);
                              v338 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v333.f32[0] != 0.0)), 0x1FuLL));
                              v338.i32[3] = 0;
                              v339 = vbslq_s8(vcltzq_s32(v338), vmulq_f32(v332, vmulq_f32(v336, vrsqrtsq_f32(v334, v337))), v332);
                              v337.i32[0] = v339.i32[2];
                              v340.i32[0] = 1.0;
                              v338.i64[0] = 0x8000000080000000;
                              v338.i64[1] = 0x8000000080000000;
                              v338.i32[0] = vbslq_s8(v338, v340, v337).i32[0];
                              v334.f32[0] = v339.f32[1] / (fabsf(v339.f32[2]) + 1.0);
                              v341 = vmuls_lane_f32(v334.f32[0], *v339.f32, 1);
                              v342 = -(v339.f32[0] * v334.f32[0]);
                              v343 = v339.f32[2] + (*v338.i32 * v341);
                              v344 = *v338.i32 * v342;
                              v345 = 1.0 - v341;
                              v346 = vmuls_lane_f32(-*v338.i32, *v339.f32, 1);
                              v347 = v339.f32[2] + (v343 + v345);
                              if (v347 > 0.0)
                              {
                                v327 = sqrtf(v347 + 1.0);
                                v328.f32[0] = v346 - v339.f32[1];
                                v328.i32[1] = vaddq_f32(v339, v339).u32[0];
                                v328.f32[2] = v344 - v342;
                                v328.f32[3] = v327 * v327;
                                v329 = vmulq_n_f32(v328, 0.5 / v327);
                              }

                              else if (v343 < v345 || v343 < v339.f32[2])
                              {
                                if (v345 <= v339.f32[2])
                                {
                                  v353 = sqrtf(((v339.f32[2] + 1.0) - v343) - v345);
                                  v339.i32[0] = vsubq_f32(v339, v339).u32[0];
                                  v339.f32[1] = v339.f32[1] + v346;
                                  v339.f32[2] = v353 * v353;
                                  v339.f32[3] = v344 - v342;
                                  v329 = vmulq_n_f32(v339, 0.5 / v353);
                                }

                                else
                                {
                                  v349 = sqrtf(((v345 + 1.0) - v343) - v339.f32[2]);
                                  v350.f32[0] = v342 + v344;
                                  v350.f32[1] = v349 * v349;
                                  *&v350.u32[2] = vrev64_s32(vadd_f32(*v339.f32, __PAIR64__(LODWORD(v346), v339.u32[0])));
                                  v329 = vmulq_n_f32(v350, 0.5 / v349);
                                }
                              }

                              else
                              {
                                v351 = sqrtf(((v343 + 1.0) - v345) - v339.f32[2]);
                                v352.f32[0] = v351 * v351;
                                v352.f32[1] = v342 + v344;
                                *&v352.u32[2] = vsub_f32(__PAIR64__(LODWORD(v346), v339.u32[0]), *v339.f32);
                                v329 = vmulq_n_f32(v352, 0.5 / v351);
                              }

                              *v326++ = v329;
                              ++v325;
                              --v277;
                            }

                            while (v277);
                          }
                        }
                      }

                      else
                      {
                        v278 = v566 - v223;
                        if (v566 != v223)
                        {
                          v279 = vdupq_laneq_s32(v558, 3);
                          _S1 = v558.i32[3];
                          v281 = vextq_s8(vuzp1q_s32(v558, v558), v558, 0xCuLL);
                          v282 = vnegq_f32(v558);
                          v283 = v564 + v562;
                          v284 = (v276 + 16 * v223);
                          do
                          {
                            _Q4 = *&v156[16 * (v283 % v12)];
                            _Q6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL), v282), _Q4, v281);
                            v287 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v558, _Q4, 3), v279, _Q4), vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL));
                            __asm { FMLA            S6, S1, V4.S[3] }

                            v287.i32[3] = _Q6.i32[0];
                            *v284++ = v287;
                            ++v283;
                            --v278;
                          }

                          while (v278);
                        }
                      }
                    }

                    goto LABEL_158;
                  }

                  if (*v218.i32 < *&v221.i32[1] || *v218.i32 < v215.f32[2])
                  {
                    if (*&v221.i32[1] <= v215.f32[2])
                    {
                      v295 = vzip2q_s32(v218, v221).u64[0];
                      v296 = __PAIR64__(v218.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v215.f32[2] + 1.0) - *v218.i32) - *&v221.i32[1])));
                      v297 = vdup_lane_s32(*v221.i8, 0);
                      v298 = vsub_f32(*v218.i8, v297);
                      v297.i32[0] = v296.i32[0];
                      v297.i32[0] = vmul_f32(v296, v297).u32[0];
                      v297.i32[1] = v298.i32[1];
                      *v228.f32 = vadd_f32(v295, *v215.f32);
                      *&v228.u32[2] = v297;
                      v229 = 0.5 / v296.f32[0];
                      goto LABEL_144;
                    }

                    v257 = sqrtf(((*&v221.i32[1] + 1.0) - *v218.i32) - v215.f32[2]);
                    v261.f32[0] = *&v218.i32[1] + *v221.i32;
                    v243 = vzip2q_s32(v218, v221).u64[0];
                    v261.f32[1] = v257 * v257;
                    *&v261.u32[2] = vext_s8(vadd_f32(*v215.f32, v243), vsub_f32(*v215.f32, v243), 4uLL);
                  }

                  else
                  {
                    v257 = sqrtf(((*v218.i32 + 1.0) - *&v221.i32[1]) - v215.f32[2]);
                    v261.f32[0] = v257 * v257;
                    v258 = *&v218.i32[1] + *v221.i32;
                    v259 = vzip2q_s32(v218, v221).u64[0];
                    LODWORD(v260) = vadd_f32(v259, *v215.f32).u32[0];
                    HIDWORD(v260) = vsub_f32(v259, *&v215).i32[1];
                    v261.f32[1] = v258;
                    v261.i64[1] = v260;
                  }

                  v230 = vmulq_n_f32(v261, 0.5 / v257);
                  goto LABEL_178;
                }
              }

LABEL_114:
              v156 = 0;
              v541 = 1;
              goto LABEL_115;
            }

            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v546 = 0;
        v548 = 1;
        if (!*(v11 + 16))
        {
          goto LABEL_114;
        }

        goto LABEL_109;
      }

      v100 = vmulq_f32(v576, v576);
      v101 = vmulq_f32(v577, v577);
      v102 = vmulq_f32(v578, v578);
      v103 = vzip2q_s32(v100, v102);
      v104 = vzip1q_s32(vzip1q_s32(v100, v102), v101);
      v105 = vtrn2q_s32(v100, v101);
      v105.i32[2] = v102.i32[1];
      v106 = vaddq_f32(vzip1q_s32(v103, vdupq_laneq_s32(v101, 2)), vaddq_f32(v104, v105));
      v105.i64[0] = 0x80000000800000;
      v105.i64[1] = 0x80000000800000;
      v107 = vcgeq_f32(v105, v106);
      v106.i32[3] = 0;
      v108 = vrsqrteq_f32(v106);
      v109 = vmulq_f32(v108, vrsqrtsq_f32(v106, vmulq_f32(v108, v108)));
      v110 = v107;
      v110.i32[3] = 0;
      v111 = vbslq_s8(vcltzq_s32(v110), v106, vmulq_f32(v109, vrsqrtsq_f32(v106, vmulq_f32(v109, v109))));
      v112 = vmulq_n_f32(v576, v111.f32[0]);
      v113 = vmulq_lane_f32(v577, *v111.f32, 1);
      v114 = vmulq_laneq_f32(v578, v111, 2);
      v115 = vuzp1q_s32(v114, v114);
      v116 = vuzp1q_s32(v113, v113);
      v117 = v112;
      if (v107.i32[0])
      {
        v118 = vmlaq_f32(vmulq_f32(vextq_s8(v115, v114, 0xCuLL), vnegq_f32(v113)), v114, vextq_s8(v116, v113, 0xCuLL));
        v117 = vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL);
      }

      v119 = vuzp1q_s32(v112, v112);
      v120 = v113;
      if (v107.i32[1])
      {
        v121 = vmlaq_f32(vmulq_f32(vextq_s8(v119, v112, 0xCuLL), vnegq_f32(v114)), v112, vextq_s8(v115, v114, 0xCuLL));
        v120 = vextq_s8(vuzp1q_s32(v121, v121), v121, 0xCuLL);
      }

      if (v107.i32[2])
      {
        v122 = vmlaq_f32(vmulq_f32(vextq_s8(v116, v113, 0xCuLL), vnegq_f32(v112)), v113, vextq_s8(v119, v112, 0xCuLL));
        v114 = vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL);
      }

      v123 = (*v117.i32 + *&v120.i32[1]) + v114.f32[2];
      if (v123 > 0.0)
      {
        v124 = sqrtf(v123 + 1.0);
        *v125.f32 = vsub_f32(*&vzip2q_s32(v120, vuzp1q_s32(v120, v114)), *&vtrn2q_s32(v114, vzip2q_s32(v114, v117)));
        v125.f32[2] = *&v117.i32[1] - *v120.i32;
        v125.f32[3] = v124 * v124;
        v126 = 0.5 / v124;
LABEL_81:
        v127 = vmulq_n_f32(v125, v126);
        goto LABEL_90;
      }

      if (*v117.i32 < *&v120.i32[1] || *v117.i32 < v114.f32[2])
      {
        if (*&v120.i32[1] <= v114.f32[2])
        {
          v291 = vzip2q_s32(v117, v120).u64[0];
          v292 = __PAIR64__(v117.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v114.f32[2] + 1.0) - *v117.i32) - *&v120.i32[1])));
          v293 = vdup_lane_s32(*v120.i8, 0);
          v294 = vsub_f32(*v117.i8, v293);
          v293.i32[0] = v292.i32[0];
          v293.i32[0] = vmul_f32(v292, v293).u32[0];
          v293.i32[1] = v294.i32[1];
          *v125.f32 = vadd_f32(v291, *v114.f32);
          *&v125.u32[2] = v293;
          v126 = 0.5 / v292.f32[0];
          goto LABEL_81;
        }

        v130 = sqrtf(((*&v120.i32[1] + 1.0) - *v117.i32) - v114.f32[2]);
        v134.f32[0] = *&v117.i32[1] + *v120.i32;
        v129 = vzip2q_s32(v117, v120).u64[0];
        v134.f32[1] = v130 * v130;
        *&v134.u32[2] = vext_s8(vadd_f32(*v114.f32, v129), vsub_f32(*v114.f32, v129), 4uLL);
      }

      else
      {
        v130 = sqrtf(((*v117.i32 + 1.0) - *&v120.i32[1]) - v114.f32[2]);
        v134.f32[0] = v130 * v130;
        v131 = *&v117.i32[1] + *v120.i32;
        v132 = vzip2q_s32(v117, v120).u64[0];
        LODWORD(v133) = vadd_f32(v132, *v114.f32).u32[0];
        HIDWORD(v133) = vsub_f32(v132, *&v114).i32[1];
        v134.f32[1] = v131;
        v134.i64[1] = v133;
      }

      v127 = vmulq_n_f32(v134, 0.5 / v130);
LABEL_90:
      v135 = v566 - v567;
      if (v566 != v567)
      {
        v136 = v564 + v562;
        v137 = (v544 + 16 * v567);
        v547 = v127;
        do
        {
          v138 = &v94[12 * (v136 % v12)];
          v139.i64[0] = *v138;
          v139.i32[2] = *(v138 + 2);
          v139.i32[3] = v120.i32[3];
          v561 = v120.i32[3];
          *&v140 = sub_1AF6AF448(v139, v547);
          HIDWORD(v140) = 0;
          *v137++ = v140;
          ++v136;
          v120.i32[3] = v561;
          --v135;
        }

        while (v135);
      }

      goto LABEL_93;
    }
  }

  return ecs_stack_allocator_pop_snapshot(v8);
}

void sub_1AFBD4170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 104);
  v66[0] = *(a3 + 88);
  v66[1] = v3;
  v67 = *(a3 + 120);
  sub_1AF6B06C0(a2, v66, 0x200000000, &v55);
  if (v55)
  {
    v44 = v62;
    if (v62 >= 1)
    {
      v43 = v59;
      if (v59)
      {
        v4 = 0;
        v42 = v58;
        v5 = v61;
        v41 = v60;
        v6 = *(v60 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v52 = *(v61 + 32);
        v63 = v55;
        v64 = v56;
        v65 = v57;
        v74 = v6;
        do
        {
          v7 = (v42 + 48 * v4);
          v8 = *v7;
          v9 = v7[1];
          v10 = v7[2];
          v11 = *(v7 + 3);
          v53 = *(v7 + 2);
          v13 = *(v7 + 4);
          v12 = *(v7 + 5);
          if (v6)
          {
            v14 = *(v12 + 376);

            os_unfair_lock_lock(v14);
            os_unfair_lock_lock(*(v12 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v52);
          v49 = *(v5 + 64);
          v50 = *(v5 + 48);
          v48 = *(v5 + 80);
          v15 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
          *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v15, 8);
          *(v5 + 56) = v15;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          v73 = 1;
          v68[0] = v41;
          v68[1] = v12;
          v51 = v12;
          v68[2] = v5;
          v68[3] = v10;
          v68[4] = (v9 - v8 + v10);
          v68[5] = v44;
          v68[6] = v8;
          v68[7] = v9;
          v68[8] = 0;
          v68[9] = 0;
          v69 = 1;
          v70 = v53;
          v71 = v11;
          v72 = v13;
          sub_1AFBD1C20(v68, a1, a3);
          v16 = *(v5 + 48);
          v17 = *(v5 + 64);
          if (!v17)
          {
            v39 = *(v5 + 56);
            v40 = *(v5 + 32);
            goto LABEL_39;
          }

          v54 = *(v5 + 48);
          v47 = v4;
          for (i = 0; i != v17; ++i)
          {
            v20 = (v54 + 48 * i);
            v21 = *v20;
            v22 = v20[4];
            v23 = *(v5 + 72);
            if (v23)
            {
              v24 = v21 == v23;
            }

            else
            {
              v24 = 0;
            }

            if (v24)
            {
              goto LABEL_11;
            }

            v25 = v63;
            if (!v63[11])
            {
              goto LABEL_11;
            }

            v26 = v20[2];
            v27 = v63 + 41;
            v28 = v63[9];
            if (v28 >= 0x10)
            {
              v29 = &v27[v63[8]];
              v30 = v28 >> 4;
              v31 = v63 + 41;
              while (*v29 != v21)
              {
                ++v31;
                v29 += 16;
                if (!--v30)
                {
                  goto LABEL_27;
                }
              }

              v32 = v31[v63[10]];
              v33 = v32 > 5;
              v34 = (1 << v32) & 0x23;
              if (v33 || v34 == 0)
              {
LABEL_11:

                v22(v19);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v26)
            {
              if (sub_1AF5FC8D8(v26))
              {
                goto LABEL_11;
              }

              v36 = v25[9];
              if (v36 < 0x10)
              {
                goto LABEL_11;
              }

              v37 = &v27[v25[8]];
              v38 = 16 * (v36 >> 4);
              while (*v37 != v26)
              {
                v37 += 16;
                v38 -= 16;
                if (!v38)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v39 = *(v5 + 56);
          v16 = *(v5 + 48);
          v40 = *(v5 + 32);
          if (*(v5 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v4 = v47;
LABEL_39:
          v6 = v74;
          ecs_stack_allocator_deallocate(v40, v16, 48 * v39);
          *(v5 + 48) = v50;
          *(v5 + 64) = v49;
          *(v5 + 80) = v48;
          sub_1AF62D29C(v51);
          ecs_stack_allocator_pop_snapshot(v52);
          if (v6)
          {
            os_unfair_lock_unlock(*(v51 + 344));
            os_unfair_lock_unlock(*(v51 + 376));
          }

          ++v4;
        }

        while (v4 != v43);
      }
    }

    sub_1AFBDD920(&v55, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

uint64_t sub_1AFBD45AC(uint64_t *a1)
{
  v2 = *(a1 + 11);
  v200 = *(a1 + 9);
  v201 = v2;
  v3 = *(a1 + 15);
  v202 = *(a1 + 13);
  v203 = v3;
  v4 = *(a1 + 3);
  v196 = *(a1 + 1);
  v197 = v4;
  v5 = *(a1 + 7);
  v198 = *(a1 + 5);
  v199 = v5;
  v6 = v196;

  sub_1AF3CF88C(*(&v6 + 1), &v187);

  v7 = v190;
  if (v190 == 2)
  {
    LOBYTE(v8) = 0;
    LOBYTE(v9) = 0;
    v10 = 0;
    v165 = 0x40000000;
    v164 = 1065353216;
    v7 = 1;
    v11 = 0xFFFFFFFFLL;
    LOBYTE(v12) = 1;
    LOBYTE(v13) = 1;
  }

  else
  {
    v10 = v191;
    v12 = v190 >> 8;
    v13 = v190 >> 16;
    v164 = v188;
    v165 = v189;
    v8 = v190 >> 24;
    v11 = v187;
    v9 = HIDWORD(v190);
  }

  v208 = v7;
  v207 = v12;
  v206 = v13;
  v205 = v8;
  v204 = v9;

  sub_1AF3C9244(*(&v6 + 1), v192);
  v159 = v192[1];
  v161 = v192[0];
  v158 = v192[2];
  v172 = v192[3];

  if (v193)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1AF3CF75C(v11);
  v163 = v16;

  if (v15)
  {
    v17 = &off_1AFE20000;
    if (!*(v15 + 16))
    {
      v153 = 0;
      LODWORD(v139) = 0;
      v140 = 0;
      v171 = 0;
      v175 = 0;
      v157 = 0;
      v151 = 0;
      goto LABEL_23;
    }

    v18 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
    if (v19)
    {
      v20 = *(v15 + 56) + 32 * v18;
      v140 = *(v20 + 8);
      v153 = *(v20 + 24);
      v139 = *(v20 + 16) << 32;
      v171 = *v20;
      swift_unknownObjectRetain();
      if (!*(v15 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v171 = 0;
      LODWORD(v139) = 0;
      v140 = 0;
      v153 = 0;
      if (!*(v15 + 16))
      {
        goto LABEL_21;
      }
    }

    v24 = sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
    if (v25)
    {
      v26 = *(v15 + 56) + 32 * v24;
      v157 = *(v26 + 8);
      v151 = *(v26 + 24);
      v175 = *v26;
      swift_unknownObjectRetain();
LABEL_22:
      v17 = &off_1AFE20000;
LABEL_23:
      v27 = vdupq_n_s32(v14);
      v168 = *(v17 + 22);
      if (!*(v15 + 16))
      {
        v150 = 0;
        v156 = 0;
        v174 = 0uLL;
        v155 = 0;
        v31 = 0;
        goto LABEL_33;
      }

      v148 = v27;
      v28 = sub_1AF419914(0x6C616D726F6ELL, 0xE600000000000000);
      if (v29)
      {
        v30 = *(v15 + 56) + 32 * v28;
        v156 = *(v30 + 8);
        v150 = *(v30 + 24);
        *(&v174 + 1) = *v30;
        swift_unknownObjectRetain();
        if (!*(v15 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        *(&v174 + 1) = 0;
        v156 = 0;
        v150 = 0;
        if (!*(v15 + 16))
        {
          goto LABEL_31;
        }
      }

      v32 = sub_1AF419914(0x797469636F6C6576, 0xE800000000000000);
      if (v33)
      {
        v34 = *(v15 + 56) + 32 * v32;
        v155 = *(v34 + 8);
        v31 = *(v34 + 24);
        *&v174 = *v34;
        swift_unknownObjectRetain();
LABEL_32:
        v27 = v148;
LABEL_33:
        v145 = vbslq_s8(v27, xmmword_1AFE20150, v161);
        v146 = vbslq_s8(v27, v168, v159);
        v147 = vbslq_s8(v27, xmmword_1AFE20180, v158);
        v149 = vbslq_s8(v27, xmmword_1AFE201A0, v172);
        if (*(v15 + 16))
        {
          v35 = sub_1AF419914(1702521203, 0xE400000000000000);
          if (v36)
          {
            v37 = *(v15 + 56) + 32 * v35;
            v160 = *(v37 + 8);
            v38 = *(v37 + 24);
            v173 = *v37;
            swift_unknownObjectRetain();
            if (!*(v15 + 16))
            {
              goto LABEL_41;
            }
          }

          else
          {
            v173 = 0;
            v160 = 0;
            v38 = 0;
            if (!*(v15 + 16))
            {
              goto LABEL_41;
            }
          }

          v39 = sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
          if (v40)
          {
            v41 = *(v15 + 56) + 32 * v39;
            v42 = *v41;
            v138 = *(v41 + 8);
            v43 = *(v41 + 24);
            swift_unknownObjectRetain();

            goto LABEL_42;
          }
        }

        else
        {
          v38 = 0;
          v160 = 0;
          v173 = 0;
        }

LABEL_41:

        v42 = 0;
        v138 = 0;
        v43 = 0;
LABEL_42:
        v44 = v198;

        v162 = v44;
        sub_1AFB95040(v44, &v194);
        v143 = v194.columns[1];
        v144 = v194.columns[0];
        v141 = v194.columns[3];
        v142 = v194.columns[2];

        if (v195)
        {
          v45 = -1;
        }

        else
        {
          v45 = 0;
        }

        v46 = vdupq_n_s32(v45);
        v47 = vbslq_s8(v46, xmmword_1AFE20150, v144);
        v48 = vbslq_s8(v46, v168, v143);
        v49 = vbslq_s8(v46, xmmword_1AFE20180, v142);
        v50 = vbslq_s8(v46, xmmword_1AFE201A0, v141);
        v51 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, v145.f32[0]), v48, *v145.f32, 1), v49, v145, 2), v50, v145, 3);
        v52 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, v146.f32[0]), v48, *v146.f32, 1), v49, v146, 2), v50, v146, 3);
        v53 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, v147.f32[0]), v48, *v147.f32, 1), v49, v147, 2), v50, v147, 3);
        v54 = vmulq_n_f32(v47, v149.f32[0]);
        v55 = v153;
        if (!v171)
        {
          v55 = 0;
        }

        v56 = v151;
        if (!v175)
        {
          v56 = 0;
        }

        v57 = v150;
        if (!*(&v174 + 1))
        {
          v57 = 0;
        }

        v170 = v42;
        if (v42)
        {
          v58 = v43;
        }

        else
        {
          v58 = 0;
        }

        if (v174)
        {
          v59 = v31;
        }

        else
        {
          v59 = 0;
        }

        if (v173)
        {
          v60 = v38;
        }

        else
        {
          v60 = 0;
        }

        v61 = vmulq_f32(v51, v51);
        v62 = vmulq_f32(v52, v52);
        v63 = vmulq_f32(v53, v53);
        v64 = vzip2q_s32(v61, v63);
        v65 = vzip1q_s32(vzip1q_s32(v61, v63), v62);
        v66 = vtrn2q_s32(v61, v62);
        v66.i32[2] = v63.i32[1];
        v67 = vaddq_f32(vzip1q_s32(v64, vdupq_laneq_s32(v62, 2)), vaddq_f32(v65, v66));
        v62.i64[0] = 0x80000000800000;
        v62.i64[1] = 0x80000000800000;
        v68 = vcgeq_f32(v62, v67);
        v67.i32[3] = 0;
        v69 = vrsqrteq_f32(v67);
        v70 = vmulq_f32(v69, vrsqrtsq_f32(v67, vmulq_f32(v69, v69)));
        v71 = v68;
        v71.i32[3] = 0;
        v72 = vbslq_s8(vcltzq_s32(v71), v67, vmulq_f32(v70, vrsqrtsq_f32(v67, vmulq_f32(v70, v70))));
        v73 = vmulq_n_f32(v51, v72.f32[0]);
        v74 = vmulq_lane_f32(v52, *v72.f32, 1);
        v75 = vmulq_laneq_f32(v53, v72, 2);
        v76 = vuzp1q_s32(v75, v75);
        v77 = vuzp1q_s32(v74, v74);
        v78 = v73;
        if (v68.i32[0])
        {
          v79 = vmlaq_f32(vmulq_f32(vextq_s8(v76, v75, 0xCuLL), vnegq_f32(v74)), v75, vextq_s8(v77, v74, 0xCuLL));
          v78 = vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL);
        }

        v80 = vmlaq_lane_f32(v54, v48, *v149.f32, 1);
        v81 = vuzp1q_s32(v73, v73);
        v82 = v74;
        if (v68.i32[1])
        {
          v83 = vmlaq_f32(vmulq_f32(vextq_s8(v81, v73, 0xCuLL), vnegq_f32(v75)), v73, vextq_s8(v76, v75, 0xCuLL));
          v82 = vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL);
        }

        v84 = vmlaq_laneq_f32(v80, v49, v149, 2);
        if (v68.i32[2])
        {
          v85 = vmlaq_f32(vmulq_f32(vextq_s8(v77, v74, 0xCuLL), vnegq_f32(v73)), v74, vextq_s8(v81, v73, 0xCuLL));
          v75 = vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL);
        }

        v86 = vmlaq_laneq_f32(v84, v50, v149, 3);
        v87 = (*v78.i32 + *&v82.i32[1]) + v75.f32[2];
        if (v87 > 0.0)
        {
          v88 = sqrtf(v87 + 1.0);
          *v89.f32 = vsub_f32(*&vzip2q_s32(v82, vuzp1q_s32(v82, v75)), *&vtrn2q_s32(v75, vzip2q_s32(v75, v78)));
          v89.f32[2] = *&v78.i32[1] - *v82.i32;
          v89.f32[3] = v88 * v88;
          v90 = 0.5 / v88;
LABEL_68:
          v91 = vmulq_n_f32(v89, v90);
          goto LABEL_77;
        }

        if (*v78.i32 < *&v82.i32[1] || *v78.i32 < v75.f32[2])
        {
          if (*&v82.i32[1] <= v75.f32[2])
          {
            v133 = vzip2q_s32(v78, v82).u64[0];
            v134 = __PAIR64__(v78.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v75.f32[2] + 1.0) - *v78.i32) - *&v82.i32[1])));
            v135 = vdup_lane_s32(*v82.i8, 0);
            v136 = vsub_f32(*v78.i8, v135);
            v135.i32[0] = v134.i32[0];
            v135.i32[0] = vmul_f32(v134, v135).u32[0];
            v135.i32[1] = v136.i32[1];
            *v89.f32 = vadd_f32(v133, *v75.f32);
            *&v89.u32[2] = v135;
            v90 = 0.5 / v134.f32[0];
            goto LABEL_68;
          }

          v94 = sqrtf(((*&v82.i32[1] + 1.0) - *v78.i32) - v75.f32[2]);
          v98.f32[0] = *&v78.i32[1] + *v82.i32;
          v93 = vzip2q_s32(v78, v82).u64[0];
          v98.f32[1] = v94 * v94;
          *&v98.u32[2] = vext_s8(vadd_f32(*v75.f32, v93), vsub_f32(*v75.f32, v93), 4uLL);
        }

        else
        {
          v94 = sqrtf(((*v78.i32 + 1.0) - *&v82.i32[1]) - v75.f32[2]);
          v98.f32[0] = v94 * v94;
          v95 = *&v78.i32[1] + *v82.i32;
          v96 = vzip2q_s32(v78, v82).u64[0];
          LODWORD(v97) = vadd_f32(v96, *v75.f32).u32[0];
          HIDWORD(v97) = vsub_f32(v96, *&v75).i32[1];
          v98.f32[1] = v95;
          v98.i64[1] = v97;
        }

        v91 = vmulq_n_f32(v98, 0.5 / v94);
LABEL_77:
        v166 = v52;
        v167 = v51;
        v176[0] = v51;
        v176[1] = v52;
        v152 = v86;
        v154 = v53;
        v176[2] = v53;
        v176[3] = v86;
        v176[4] = v91;
        v177 = v164;
        v178 = v165;
        v179 = v163;
        v180 = v10;
        v181 = v55;
        v182 = v56;
        v183 = v57;
        v184 = v58;
        v185 = v59;
        v186 = v60;
        v99 = *a1;
        if (*a1)
        {
          ObjectType = swift_getObjectType();
          type metadata accessor for emitter_pointcache_uniforms(0);
          sub_1AF6F4524(v176, 1, ObjectType, v101, v102, v103, v104, v105);
          v106 = a1[18];
          v107 = *(v106 + 208);
          v169 = *(v106 + 216);
          if (v171)
          {
            v108 = v140 | v139;
          }

          else
          {
            v108 = 0;
          }

          swift_getObjectType();
          v109 = swift_unknownObjectRetain();
          sub_1AF6F458C(v109, v108, 0, 6);
          swift_unknownObjectRelease();
          v110 = v175;
          if (v175)
          {
LABEL_82:
            v111 = v110;
            if (v99)
            {
LABEL_83:
              swift_getObjectType();
              swift_unknownObjectRetain();
              sub_1AF6F458C(v111, v157, 0, 7);
              goto LABEL_87;
            }

LABEL_86:
            swift_unknownObjectRetain();
LABEL_87:
            swift_unknownObjectRelease();
            if (*(&v174 + 1))
            {
              v113 = *(&v174 + 1);
              if (v99)
              {
LABEL_89:
                swift_getObjectType();
                swift_unknownObjectRetain();
                sub_1AF6F458C(v113, v156, 0, 8);
                goto LABEL_92;
              }
            }

            else
            {
              swift_unknownObjectRetain();
              v113 = v107;
              v156 = v169;
              if (v99)
              {
                goto LABEL_89;
              }
            }

            swift_unknownObjectRetain();
LABEL_92:
            swift_unknownObjectRelease();
            if (v174)
            {
              v114 = v174;
              if (v99)
              {
LABEL_94:
                swift_getObjectType();
                swift_unknownObjectRetain();
                sub_1AF6F458C(v114, v155, 0, 9);
                goto LABEL_97;
              }
            }

            else
            {
              swift_unknownObjectRetain();
              v114 = v107;
              v155 = v169;
              if (v99)
              {
                goto LABEL_94;
              }
            }

            swift_unknownObjectRetain();
LABEL_97:
            swift_unknownObjectRelease();
            if (v173)
            {
              v115 = v173;
              if (v99)
              {
LABEL_99:
                swift_getObjectType();
                swift_unknownObjectRetain();
                sub_1AF6F458C(v115, v160, 0, 10);
                goto LABEL_102;
              }
            }

            else
            {
              swift_unknownObjectRetain();
              v115 = v107;
              v160 = v169;
              if (v99)
              {
                goto LABEL_99;
              }
            }

            swift_unknownObjectRetain();
LABEL_102:
            swift_unknownObjectRelease();
            if (v170)
            {
              v107 = v170;
              v116 = v138;
              if (v99)
              {
LABEL_104:
                swift_getObjectType();
                swift_unknownObjectRetain();
                sub_1AF6F458C(v107, v116, 0, 11);
LABEL_107:
                swift_unknownObjectRelease();
                v117 = v208;
                sub_1AFBDE384(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                v118 = swift_allocObject();
                v119 = BYTE13(v198) == 2;
                LOBYTE(v176[0]) = 0;
                if (v171)
                {
                  v120 = v117;
                }

                else
                {
                  v120 = 0;
                }

                *(v118 + 16) = xmmword_1AFE4C630;
                *(v118 + 32) = xmmword_1AFEA3D70;
                *(v118 + 48) = 0;
                *(v118 + 64) = v119;
                *(v118 + 128) = 13;
                v121 = v207;
                *(v118 + 144) = xmmword_1AFEA3D80;
                *(v118 + 160) = 0;
                *(v118 + 176) = v120;
                *(v118 + 240) = 13;
                if (v175)
                {
                  v122 = v121;
                }

                else
                {
                  v122 = 0;
                }

                v123 = v206;
                *(v118 + 256) = xmmword_1AFEA3D90;
                *(v118 + 272) = 0;
                *(v118 + 288) = v122;
                *(v118 + 352) = 13;
                if (v174 == 0)
                {
                  v124 = 0;
                }

                else
                {
                  v124 = v123;
                }

                v125 = v205;
                if (!(*(&v174 + 1) | v170))
                {
                  v125 = 0;
                }

                *(v118 + 368) = xmmword_1AFEA3DA0;
                *(v118 + 384) = 0;
                *(v118 + 400) = v124;
                *(v118 + 464) = 13;
                v126 = v204;
                *(v118 + 480) = xmmword_1AFEA3DB0;
                *(v118 + 496) = 0;
                *(v118 + 512) = v125;
                *(v118 + 576) = 13;
                if (!v173)
                {
                  v126 = 0;
                }

                *(v118 + 592) = xmmword_1AFEA3DC0;
                *(v118 + 608) = 0;
                *(v118 + 624) = v126;
                v127 = vdupq_n_s32(0x358637BDu);
                *(v118 + 688) = 13;
                v129 = (vminvq_u32(vcgtq_f32(v127, vabsq_f32(vaddq_f32(v167, xmmword_1AFE20C00)))) & 0x80000000) == 0 || (vminvq_u32(vcgtq_f32(v127, vabsq_f32(vaddq_f32(v166, xmmword_1AFE20C20)))) & 0x80000000) == 0 || (v128 = vdupq_n_s32(0x358637BDu), (vminvq_u32(vcgtq_f32(v128, vabsq_f32(vaddq_f32(v154, xmmword_1AFE20C10)))) & 0x80000000) == 0) || (vminvq_u32(vcgtq_f32(v128, vabsq_f32(vaddq_f32(v152, xmmword_1AFEA3DD0)))) & 0x80000000) == 0;
                *(v118 + 704) = xmmword_1AFEA3DE0;
                *(v118 + 720) = 0;
                *(v118 + 736) = v129;
                *(v118 + 800) = 13;
                v130 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

                MEMORY[0x1EEE9AC00](v131, v132);
                sub_1AFCBF008(v162, sub_1AFBDDB40);

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return swift_unknownObjectRelease();
              }
            }

            else
            {
              swift_unknownObjectRetain();
              v116 = v169;
              if (v99)
              {
                goto LABEL_104;
              }
            }

            swift_unknownObjectRetain();
            goto LABEL_107;
          }
        }

        else
        {
          v112 = a1[18];
          v107 = *(v112 + 208);
          v169 = *(v112 + 216);
          v110 = v175;
          if (v175)
          {
            goto LABEL_82;
          }
        }

        swift_unknownObjectRetain();
        v111 = v107;
        v157 = v169;
        if (v99)
        {
          goto LABEL_83;
        }

        goto LABEL_86;
      }

LABEL_31:
      *&v174 = 0;
      v155 = 0;
      v31 = 0;
      goto LABEL_32;
    }

LABEL_21:
    v175 = 0;
    v157 = 0;
    v151 = 0;
    goto LABEL_22;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  sub_1AFDFE218();

  *(&v176[0] + 1) = 0x80000001AFF4B060;
  v21 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v21);

  v22 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v137 = v22;
    swift_once();
    v22 = v137;
  }

  *&v176[0] = 0;
  sub_1AF0D4F18(v22, v176, 0xD000000000000014, 0x80000001AFF4B060);
}

unint64_t sub_1AFBD5558()
{
  if (*(v0 + 8))
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000013;
  }
}

char *sub_1AFBD5594(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{

  v6 = sub_1AF3CF75C(a3);

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v6 + 16) || (sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000), (v7 & 1) == 0))
  {
    v8 = MEMORY[0x1E69E7CC0];
    if ((a4 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v8 = sub_1AF422C28(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    v48 = sub_1AF422C28(v9 > 1, v10 + 1, 1, v8);
    v11 = v10 + 1;
    v8 = v48;
  }

  *(v8 + 2) = v11;
  v12 = &v8[16 * v10];
  *(v12 + 4) = &type metadata for Position;
  *(v12 + 5) = &off_1F252EE70;
  if ((a4 & 0x100) != 0)
  {
LABEL_9:
    if (*(v6 + 16))
    {
      sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
        }

        v15 = *(v8 + 2);
        v14 = *(v8 + 3);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          v49 = sub_1AF422C28(v14 > 1, v15 + 1, 1, v8);
          v16 = v15 + 1;
          v8 = v49;
        }

        *(v8 + 2) = v16;
        v17 = &v8[16 * v15];
        *(v17 + 4) = &type metadata for Color;
        *(v17 + 5) = &off_1F252CA88;
      }
    }
  }

LABEL_16:
  if ((a4 & 0x1000000) != 0)
  {
    if (!*(v6 + 16))
    {
      goto LABEL_50;
    }

    v23 = sub_1AF419914(1702521203, 0xE400000000000000);
    if (v24)
    {
      v25 = *(v6 + 56) + 32 * v23;
      if (*(v25 + 24) == 28)
      {
        v26 = *v25;
        if ([swift_unknownObjectRetain_n() storageMode] == 2)
        {
          swift_unknownObjectRelease_n();
        }

        else
        {
          [v26 contents];
          v27 = v26;
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
          }

          v29 = *(v8 + 2);
          v28 = *(v8 + 3);
          if (v29 >= v28 >> 1)
          {
            v8 = sub_1AF422C28(v28 > 1, v29 + 1, 1, v8);
          }

          *(v8 + 2) = v29 + 1;
          v30 = &v8[16 * v29];
          *(v30 + 4) = &type metadata for Scale1;
          *(v30 + 5) = &off_1F252F788;
        }
      }
    }

    if (!*(v6 + 16))
    {
      goto LABEL_50;
    }

    v31 = sub_1AF419914(1702521203, 0xE400000000000000);
    if (v32)
    {
      v33 = *(v6 + 56) + 32 * v31;
      if (*(v33 + 24) == 29)
      {
        v34 = *v33;
        if ([swift_unknownObjectRetain_n() storageMode] == 2)
        {
          swift_unknownObjectRelease_n();
        }

        else
        {
          [v34 contents];
          v35 = v34;
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
          }

          v37 = *(v8 + 2);
          v36 = *(v8 + 3);
          if (v37 >= v36 >> 1)
          {
            v8 = sub_1AF422C28(v36 > 1, v37 + 1, 1, v8);
          }

          *(v8 + 2) = v37 + 1;
          v38 = &v8[16 * v37];
          *(v38 + 4) = &type metadata for Scale2;
          *(v38 + 5) = &off_1F252F838;
        }
      }
    }

    if (!*(v6 + 16))
    {
      goto LABEL_50;
    }

    v39 = sub_1AF419914(1702521203, 0xE400000000000000);
    if (v40)
    {
      v41 = *(v6 + 56) + 32 * v39;
      if (*(v41 + 24) == 30)
      {
        v42 = *v41;
        if ([swift_unknownObjectRetain_n() storageMode] == 2)
        {
          swift_unknownObjectRelease_n();
        }

        else
        {
          [v42 contents];
          v44 = v42;
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
          }

          v46 = *(v8 + 2);
          v45 = *(v8 + 3);
          if (v46 >= v45 >> 1)
          {
            v8 = sub_1AF422C28(v45 > 1, v46 + 1, 1, v8);
          }

          *(v8 + 2) = v46 + 1;
          v47 = &v8[16 * v46];
          *(v47 + 4) = &type metadata for Scale3;
          *(v47 + 5) = &off_1F252F998;
        }
      }
    }
  }

  if (!*(v6 + 16))
  {
LABEL_50:

    return v8;
  }

  sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
  v19 = v18;

  if (v19)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
    }

    v21 = *(v8 + 2);
    v20 = *(v8 + 3);
    if (v21 >= v20 >> 1)
    {
      v8 = sub_1AF422C28(v20 > 1, v21 + 1, 1, v8);
    }

    *(v8 + 2) = v21 + 1;
    v22 = &v8[16 * v21];
    *(v22 + 4) = &type metadata for Orientation;
    *(v22 + 5) = &off_1F252C8A8;
  }

  return v8;
}

uint64_t sub_1AFBD5B34(void *a1, uint64_t a2, int a3)
{
  v13[1] = a3;
  sub_1AFBDEAB4(0, &qword_1EB6434B0, sub_1AFBDEA60, &type metadata for PointCacheSpawner.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDEA60();
  sub_1AFDFF3F8();
  v19 = a2;
  v18 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v3)
  {
    v17 = 1;
    sub_1AFDFE8C8();
    v16 = 2;
    sub_1AFDFE8C8();
    v15 = 3;
    sub_1AFDFE8C8();
    v14 = 4;
    sub_1AFDFE8C8();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1AFBD5D64()
{
  v1 = *v0;
  v2 = 0x636143746E696F70;
  v3 = 0x4374697265686E69;
  v4 = 0x5374697265686E69;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFBD5E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFBD748C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFBD5E40(uint64_t a1)
{
  v2 = sub_1AFBDEA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBD5E7C(uint64_t a1)
{
  v2 = sub_1AFBDEA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBD5EB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFBD9EBC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 9) = BYTE1(v5) & 1;
    *(a2 + 10) = BYTE2(v5) & 1;
    *(a2 + 11) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t sub_1AFBD5F08(void *a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 8);
  if (*(v1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 11))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  return sub_1AFBD5B34(a1, *v1, v3 | v4 | v5);
}

char *sub_1AFBD5F64(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 8);
  if (*(v2 + 10))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (*(v2 + 11))
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  return sub_1AFBD5594(a1, a2, *v2, v4 | v5 | v6);
}

double sub_1AFBD5FCC@<D0>(uint64_t a1@<X8>)
{
  *&result = 0xFFFFFFFFLL;
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 16843009;
  return result;
}

uint64_t sub_1AFBD5FE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v143 = *(a1 + 72);
  v144 = v3;
  v4 = *(a1 + 120);
  v145 = *(a1 + 104);
  v146 = v4;
  v5 = *(a1 + 24);
  v139 = v2;
  v140 = v5;
  v6 = *(a1 + 56);
  v141 = *(a1 + 40);
  v142 = v6;
  v7 = v2;
  swift_retain_n();
  v8 = sub_1AF3CF964(*(&v7 + 1));
  v10 = v9;

  if (v10 == 2)
  {
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = v8;
  }

  v12 = sub_1AF3CF75C(v11);
  if (v12)
  {
    v14 = v12;
    v15 = v13;

    sub_1AF3C9244(*(&v7 + 1), v135);
    v115 = v135[1];
    v117 = v135[0];
    v114 = v135[2];
    v119 = v135[3];

    if (v136)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    v17 = v141;

    v120 = v17;
    sub_1AFB95040(v17, &v137);
    v128 = v137;

    if (v138)
    {
      v128.columns[0] = xmmword_1AFE20150;
      v128.columns[1] = xmmword_1AFE20160;
      v128.columns[2] = xmmword_1AFE20180;
      v128.columns[3] = xmmword_1AFE201A0;
    }

    if (*(v14 + 16))
    {
      v18 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
      if (v19)
      {
        v106 = vdupq_n_s32(v16);
        v107 = vbslq_s8(v106, xmmword_1AFE20150, v117);
        v125 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128.columns[0], v107.f32[0]), v128.columns[1], *v107.f32, 1), v128.columns[2], v107, 2);
        v108 = vbslq_s8(v106, xmmword_1AFE20160, v115);
        v110 = vbslq_s8(v106, xmmword_1AFE20180, v114);
        v123 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128.columns[0], v108.f32[0]), v128.columns[1], *v108.f32, 1), v128.columns[2], v108, 2);
        v121 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128.columns[0], v110.f32[0]), v128.columns[1], *v110.f32, 1), v128.columns[2], v110, 2);
        v20 = *(v14 + 56) + 32 * v18;
        v105 = *(v20 + 8);
        v116 = *(v20 + 24);
        v21 = *(v14 + 16);
        swift_unknownObjectRetain();
        v113 = v15;
        if (v21)
        {
          v22 = sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
          if (v23)
          {
            v24 = *(v14 + 56) + 32 * v22;
            v104 = *(v24 + 8);
            v112 = *(v24 + 24);
            v103 = *(v24 + 16) << 32;
            v118 = *v24;
            swift_unknownObjectRetain();
          }

          else
          {
            v118 = 0;
            LODWORD(v103) = 0;
            v104 = 0;
            v112 = 0;
          }

          v27 = v123;
          v26 = v125;
          v28 = v121;
          if (!*(v14 + 16))
          {
            v33 = 0;
            LODWORD(v101) = 0;
            v102 = 0;
            v32 = 0;
LABEL_27:
            v34 = vbslq_s8(v106, xmmword_1AFE201A0, v119);
            v126 = vmlaq_laneq_f32(v26, v128.columns[3], v107, 3);
            v127 = v34;
            v122 = vmlaq_laneq_f32(v28, v128.columns[3], v110, 3);
            v124 = vmlaq_laneq_f32(v27, v128.columns[3], v108, 3);
            if (*(v14 + 16))
            {
              v35 = sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
              if (v36)
              {
                v37 = *(v14 + 56) + 32 * v35;
                v38 = *v37;
                v111 = *(v37 + 8);
                v39 = *(v37 + 24);
                v109 = *(v37 + 16) << 32;
                swift_unknownObjectRetain();
              }

              else
              {
                v38 = 0;
                v111 = 0;
                LODWORD(v109) = 0;
                v39 = 0;
              }

              v34.i32[0] = v127.i32[0];
            }

            else
            {
              v38 = 0;
              v111 = 0;
              LODWORD(v109) = 0;
              v39 = 0;
            }

            v128.columns[0] = vmulq_n_f32(v128.columns[0], *v34.i32);

            v40 = v112;
            if (!v118)
            {
              v40 = 0;
            }

            if (v33)
            {
              v41 = v32;
            }

            else
            {
              v41 = 0;
            }

            if (v38)
            {
              v42 = v39;
            }

            else
            {
              v42 = 0;
            }

            v43 = vmulq_f32(v126, v126);
            v44 = vmulq_f32(v124, v124);
            v45 = vmulq_f32(v122, v122);
            v46 = vtrn2q_s32(v43, v44);
            v46.i32[2] = v45.i32[1];
            v47 = vaddq_f32(vzip1q_s32(vzip2q_s32(v43, v45), vdupq_laneq_s32(v44, 2)), vaddq_f32(vzip1q_s32(vzip1q_s32(v43, v45), v44), v46));
            v48.i64[0] = 0x80000000800000;
            v48.i64[1] = 0x80000000800000;
            v49 = vcgeq_f32(v48, v47);
            v47.i32[3] = 0;
            v50 = vrsqrteq_f32(v47);
            v51 = vmulq_f32(v50, vrsqrtsq_f32(v47, vmulq_f32(v50, v50)));
            v52 = v49;
            v52.i32[3] = 0;
            v53 = vbslq_s8(vcltzq_s32(v52), v47, vmulq_f32(v51, vrsqrtsq_f32(v47, vmulq_f32(v51, v51))));
            v54 = vmulq_n_f32(v126, v53.f32[0]);
            v55 = vmulq_lane_f32(v124, *v53.f32, 1);
            v56 = vmulq_laneq_f32(v122, v53, 2);
            v57 = vuzp1q_s32(v56, v56);
            v58 = vuzp1q_s32(v55, v55);
            v59 = v54;
            if (v49.i32[0])
            {
              v60 = vmlaq_f32(vmulq_f32(vextq_s8(v57, v56, 0xCuLL), vnegq_f32(v55)), v56, vextq_s8(v58, v55, 0xCuLL));
              v59 = vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL);
            }

            v61 = vmlaq_lane_f32(v128.columns[0], v128.columns[1], *v127.f32, 1);
            v62 = vuzp1q_s32(v54, v54);
            v63 = v55;
            if (v49.i32[1])
            {
              v64 = vmlaq_f32(vmulq_f32(vextq_s8(v62, v54, 0xCuLL), vnegq_f32(v56)), v54, vextq_s8(v57, v56, 0xCuLL));
              v63 = vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL);
            }

            v65 = vmlaq_laneq_f32(v61, v128.columns[2], v127, 2);
            if (v49.i32[2])
            {
              v66 = vmlaq_f32(vmulq_f32(vextq_s8(v58, v55, 0xCuLL), vnegq_f32(v54)), v55, vextq_s8(v62, v54, 0xCuLL));
              v56 = vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL);
            }

            v67 = vmlaq_laneq_f32(v65, v128.columns[3], v127, 3);
            v68 = (*v59.i32 + *&v63.i32[1]) + v56.f32[2];
            if (v68 > 0.0)
            {
              v69 = sqrtf(v68 + 1.0);
              *v70.f32 = vsub_f32(*&vzip2q_s32(v63, vuzp1q_s32(v63, v56)), *&vtrn2q_s32(v56, vzip2q_s32(v56, v59)));
              v70.f32[2] = *&v59.i32[1] - *v63.i32;
              v70.f32[3] = v69 * v69;
              v71 = 0.5 / v69;
LABEL_49:
              v72 = vmulq_n_f32(v70, v71);
LABEL_58:
              *&v80 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL)), vadd_f32(vzip1_s32(*v43.i8, *v44.i8), vzip2_s32(*v43.i8, *v44.i8))));
              *(&v80 + 1) = COERCE_UNSIGNED_INT(sqrtf(*&v45.i32[2] + vaddv_f32(*v45.i8)));
              v129[0] = v126;
              v129[1] = v124;
              v129[2] = v122;
              v129[3] = v67;
              v129[4] = v72;
              v129[5] = v80;
              v130 = v113;
              v131 = v116;
              v132 = v40;
              v133 = v41;
              v134 = v42;
              if (*a1)
              {
                ObjectType = swift_getObjectType();
                type metadata accessor for pointcache_spawner_uniforms(0);
                sub_1AF6F4524(v129, 1, ObjectType, v82, v83, v84, v85, v86);
                swift_getObjectType();
                v87 = swift_unknownObjectRetain();
                sub_1AF6F458C(v87, v105, 0, 6);
                swift_unknownObjectRelease();
                if (v118)
                {
                  v88 = v104 | v103;
                }

                else
                {
                  v88 = 0;
                }

                v89 = swift_unknownObjectRetain();
                sub_1AF6F458C(v89, v88, 0, 7);
                swift_unknownObjectRelease();
                if (v33)
                {
                  v90 = v101 | v102;
                }

                else
                {
                  v90 = 0;
                }

                v91 = swift_unknownObjectRetain();
                sub_1AF6F458C(v91, v90, 0, 8);
                swift_unknownObjectRelease();
                if (v38)
                {
                  v92 = v109 | v111;
                }

                else
                {
                  v92 = 0;
                }

                v93 = swift_unknownObjectRetain();
                sub_1AF6F458C(v93, v92, 0, 9);
                swift_unknownObjectRelease();
              }

              v94 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

              MEMORY[0x1EEE9AC00](v95, v96);
              sub_1AFCBF008(v120, sub_1AFBDDB40);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              return swift_unknownObjectRelease();
            }

            if (*v59.i32 < *&v63.i32[1] || *v59.i32 < v56.f32[2])
            {
              if (*&v63.i32[1] <= v56.f32[2])
              {
                v97 = vzip2q_s32(v59, v63).u64[0];
                v98 = __PAIR64__(v59.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v56.f32[2] + 1.0) - *v59.i32) - *&v63.i32[1])));
                v99 = vdup_lane_s32(*v63.i8, 0);
                v100 = vsub_f32(*v59.i8, v99);
                v99.i32[0] = v98.i32[0];
                v99.i32[0] = vmul_f32(v98, v99).u32[0];
                v99.i32[1] = v100.i32[1];
                *v70.f32 = vadd_f32(v97, *v56.f32);
                *&v70.u32[2] = v99;
                v71 = 0.5 / v98.f32[0];
                goto LABEL_49;
              }

              v75 = sqrtf(((*&v63.i32[1] + 1.0) - *v59.i32) - v56.f32[2]);
              v79.f32[0] = *&v59.i32[1] + *v63.i32;
              v74 = vzip2q_s32(v59, v63).u64[0];
              v79.f32[1] = v75 * v75;
              *&v79.u32[2] = vext_s8(vadd_f32(*v56.f32, v74), vsub_f32(*v56.f32, v74), 4uLL);
            }

            else
            {
              v75 = sqrtf(((*v59.i32 + 1.0) - *&v63.i32[1]) - v56.f32[2]);
              v79.f32[0] = v75 * v75;
              v76 = *&v59.i32[1] + *v63.i32;
              v77 = vzip2q_s32(v59, v63).u64[0];
              LODWORD(v78) = vadd_f32(v77, *v56.f32).u32[0];
              HIDWORD(v78) = vsub_f32(v77, *&v56).i32[1];
              v79.f32[1] = v76;
              v79.i64[1] = v78;
            }

            v72 = vmulq_n_f32(v79, 0.5 / v75);
            goto LABEL_58;
          }

          v29 = sub_1AF419914(1702521203, 0xE400000000000000);
          if (v30)
          {
            v31 = *(v14 + 56) + 32 * v29;
            v102 = *(v31 + 8);
            v32 = *(v31 + 24);
            v101 = *(v31 + 16) << 32;
            v33 = *v31;
            swift_unknownObjectRetain();
LABEL_25:
            v27 = v123;
            v26 = v125;
            v28 = v121;
            goto LABEL_27;
          }
        }

        else
        {
          v112 = 0;
          LODWORD(v103) = 0;
          v104 = 0;
          v118 = 0;
        }

        v33 = 0;
        LODWORD(v101) = 0;
        v102 = 0;
        v32 = 0;
        goto LABEL_25;
      }
    }
  }
}

uint64_t destroy for PointCacheFromModel()
{
  MEMORY[0x1B271E060]();
}

void *initializeWithCopy for PointCacheFromModel(void *a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyInit();
  v5 = a2[2];
  *(v4 + 8) = a2[1];
  *(v4 + 16) = v5;
  v6 = a2[4];
  a1[3] = a2[3];
  a1[4] = v6;
  a1[5] = a2[5];

  return a1;
}

void *assignWithCopy for PointCacheFromModel(void *a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyAssign();
  *(v4 + 8) = a2[1];
  *(v4 + 16) = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

__n128 initializeWithTake for PointCacheFromModel(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  *(v3 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v3 + 16) = result;
  *(v3 + 32) = v5;
  return result;
}

void *assignWithTake for PointCacheFromModel(void *a1, uint64_t a2)
{
  *(swift_unknownObjectWeakTakeAssign() + 8) = *(a2 + 8);
  a1[3] = *(a2 + 24);

  v4 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for PointCacheFromModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PointCacheFromModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      *(result + 8) = 1;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PointCacheGenerator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PointCacheGenerator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1AFBD6C80()
{
  result = qword_1EB643350;
  if (!qword_1EB643350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643350);
  }

  return result;
}

uint64_t sub_1AFBD6CD4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1;
      v8 = *a1 + 8;
      v9 = -1;
      for (i = 1; i != v2; ++i)
      {
        v11 = *(v7 + 8 * i + 4);
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 4) = v14;
          *(v13 - 1) = v11;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 8;
        --v9;
      }
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AFBDD990();
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v16[0] = (v6 + 32);
    v16[1] = v5;
    sub_1AFBD6E08(v16, v17, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AFBD6E08(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v64 = *a1;
    v8 = MEMORY[0x1E69E7CC0];
    v63 = a4;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *(*a3 + 8 * v7 + 4);
        v11 = 8 * v9;
        v12 = *a3 + 8 * v9;
        v13 = *(v12 + 4);
        v14 = v9 + 2;
        v15 = (v12 + 20);
        v16 = v10;
        while (v6 != v14)
        {
          v17 = *v15;
          v15 += 2;
          v18 = v16 >= v17;
          ++v14;
          v16 = v17;
          if ((((v13 < v10) ^ v18) & 1) == 0)
          {
            v7 = v14 - 1;
            goto LABEL_10;
          }
        }

        v7 = v6;
LABEL_10:
        if (v13 < v10 && v9 < v7)
        {
          v20 = 0;
          v21 = 8 * v7;
          v22 = v9;
          do
          {
            if (v22 != v7 + v20 - 1)
            {
              v23 = *a3 + v11;
              v24 = *a3 + v21;
              v25 = *v23;
              v26 = *(v23 + 4);
              *v23 = *(v24 - 8);
              *(v24 - 8) = v25;
              *(v24 - 4) = v26;
            }

            ++v22;
            --v20;
            v21 -= 8;
            v11 += 8;
          }

          while (v22 < v7 + v20);
          v6 = a3[1];
        }
      }

      if (v7 < v6 && v7 - v9 < a4)
      {
        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v9 + a4 != v7)
        {
          v46 = *a3;
          v47 = *a3 + 8 * v7;
          v48 = v9 - v7;
          do
          {
            v49 = *(v46 + 8 * v7 + 4);
            v50 = v48;
            v51 = v47;
            do
            {
              if (*(v51 - 1) >= v49)
              {
                break;
              }

              v52 = *v51;
              *v51 = *(v51 - 1);
              *(v51 - 4) = v52;
              *(v51 - 1) = v49;
              v51 -= 2;
            }

            while (!__CFADD__(v50++, 1));
            ++v7;
            v47 += 8;
            --v48;
          }

          while (v7 != v6);
        }

        v7 = v6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF4209A4(0, *(v8 + 2) + 1, 1, v8);
      }

      v28 = *(v8 + 2);
      v27 = *(v8 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v8 = sub_1AF4209A4(v27 > 1, v28 + 1, 1, v8);
      }

      *(v8 + 2) = v29;
      v30 = v8 + 32;
      v31 = &v8[16 * v28 + 32];
      *v31 = v9;
      *(v31 + 1) = v7;
      if (v28)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      a4 = v63;
      if (v7 >= v6)
      {
        goto LABEL_54;
      }
    }

    while (1)
    {
      v32 = v29 - 1;
      if (v29 >= 4)
      {
        v36 = &v30[16 * v29];
        v37 = *(v36 - 7) - *(v36 - 8);
        v35 = *(v36 - 5) - *(v36 - 6);
        v38 = &v8[16 * v29];
        v33 = *v38;
        v34 = *(v38 + 1);
        if (v35 - v33 + v34 >= v37)
        {
          v41 = v29 - 2;
          v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
          goto LABEL_41;
        }
      }

      else
      {
        if (v29 != 3)
        {
          v39 = *&v8[16 * v29 + 8] - *&v8[16 * v29];
          v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
LABEL_38:
          if (v40 < v39)
          {
            goto LABEL_3;
          }

          goto LABEL_43;
        }

        v33 = *(v8 + 6);
        v34 = *(v8 + 7);
        v35 = *(v8 + 5) - *(v8 + 4);
      }

      v39 = v34 - v33;
      v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
      if (v39 + v40 < v35)
      {
        goto LABEL_38;
      }

      v41 = v29 - 2;
LABEL_41:
      if (v35 < v40)
      {
        v32 = v41;
      }

LABEL_43:
      v42 = &v30[16 * v32];
      v43 = *(v42 - 2);
      v44 = *(v42 + 1);
      sub_1AFBD723C((*a3 + 8 * v43), (*a3 + 8 * *v42), (*a3 + 8 * v44), v64);
      if (v4)
      {
      }

      *(v42 - 2) = v43;
      *(v42 - 1) = v44;
      v45 = *(v8 + 2);
      v29 = v45 - 1;
      memmove(&v30[16 * v32], v42 + 16, 16 * (v45 - 1 - v32));
      *(v8 + 2) = v45 - 1;
      if (v45 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v65 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AF650C88(v8);
  }

  v54 = v8 + 16;
  v55 = *(v8 + 2);
  if (v55 >= 2)
  {
    do
    {
      v56 = &v8[16 * v55];
      v57 = *v56;
      v58 = &v54[2 * v55];
      v59 = v58[1];
      sub_1AFBD723C((*a3 + 8 * *v56), (*a3 + 8 * *v58), (*a3 + 8 * v59), v65);
      if (v4)
      {
        break;
      }

      *v56 = v57;
      *(v56 + 1) = v59;
      v60 = *v54 - 1;
      memmove(&v54[2 * v55], v58 + 2, 16 * (*v54 - v55));
      *v54 = v60;
      v55 = v60;
    }

    while (v60 > 1);
  }
}

uint64_t sub_1AFBD723C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v20 >> 3));
  }

  return 1;
}

uint64_t sub_1AFBD7440()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBD748C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636143746E696F70 && a2 == 0xEA00000000006568;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001AFF29580 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4374697265686E69 && a2 == 0xEC000000726F6C6FLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001AFF23530 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5374697265686E69 && a2 == 0xEB00000000657A69)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1AFBD765C()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBD76A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = v5;
  v370 = *MEMORY[0x1E69E9840];
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (*(a1 + 336) != 1)
  {
    v290 = a4;
    v28 = sub_1AF621684(*(result + 204));
    if (v28 == a3)
    {
    }

    v288 = a5;
    if (!*(a2 + 16))
    {
      v272 = 0;
      v277 = 0;
      v274 = 0;
      v270 = 0;
      v271 = 1;
      v275 = 1;
LABEL_37:
      v273 = 1;
LABEL_48:
      v269 = 1;
      goto LABEL_49;
    }

    v29 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
    if ((v30 & 1) != 0 && (v31 = *(a2 + 56) + 32 * v29, *(v31 + 24) == 30))
    {
      v32 = *v31;
      v33 = *(v31 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] == 2)
      {
        swift_unknownObjectRelease_n();
        v277 = 0;
        v275 = 1;
      }

      else
      {
        v44 = [v32 contents];
        v45 = v32;
        swift_unknownObjectRelease();
        v275 = 0;
        v277 = &v44[v33];
      }

      a5 = v288;
      if (!*(a2 + 16))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v277 = 0;
      v275 = 1;
      if (!*(a2 + 16))
      {
LABEL_36:
        v272 = 0;
        v274 = 0;
        v270 = 0;
        v271 = 1;
        goto LABEL_37;
      }
    }

    v34 = sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
    if ((v35 & 1) != 0 && (v36 = *(a2 + 56) + 32 * v34, *(v36 + 24) == 31))
    {
      v37 = *v36;
      v38 = *(v36 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] == 2)
      {
        swift_unknownObjectRelease_n();
        v274 = 0;
        v273 = 1;
      }

      else
      {
        v46 = [v37 contents];
        v47 = v37;
        swift_unknownObjectRelease();
        v273 = 0;
        v274 = &v46[v38];
      }

      a5 = v288;
      if (!*(a2 + 16))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v274 = 0;
      v273 = 1;
      if (!*(a2 + 16))
      {
LABEL_40:
        v272 = 0;
        v270 = 0;
        v271 = 1;
        goto LABEL_48;
      }
    }

    v39 = sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
    if ((v40 & 1) != 0 && (v41 = *(a2 + 56) + 32 * v39, *(v41 + 24) == 31))
    {
      v42 = *v41;
      v43 = *(v41 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] == 2)
      {
        swift_unknownObjectRelease_n();
        v272 = 0;
        v271 = 1;
      }

      else
      {
        v48 = [v42 contents];
        v49 = v42;
        swift_unknownObjectRelease();
        v271 = 0;
        v272 = &v48[v43];
      }

      a5 = v288;
      if (*(a2 + 16))
      {
LABEL_43:
        v50 = sub_1AF419914(1702521203, 0xE400000000000000);
        if (v51)
        {
          v52 = *(a2 + 56) + 32 * v50;
          if (*(v52 + 24) == 28)
          {
            v53 = *v52;
            v54 = *(v52 + 8);
            if ([swift_unknownObjectRetain_n() storageMode] == 2)
            {
              swift_unknownObjectRelease_n();
              v270 = 0;
              v269 = 1;
            }

            else
            {
              v252 = [v53 contents];
              v253 = v53;
              swift_unknownObjectRelease();
              v269 = 0;
              v270 = &v252[v54];
            }

            a5 = v288;
LABEL_49:
            v319 = v28;
            if (!*(a2 + 16))
            {
              v268 = 0;
              v255 = 0;
              v266 = 1;
              v267 = 1;
LABEL_62:
              v70 = a5[8];
              v69 = a5[9];
              if (qword_1ED72D720 != -1)
              {
                swift_once();
              }

              v337 = qword_1ED73B840;
              v338 = 0;
              v339 = 2;
              v340 = 0;
              v341 = 2;
              v342 = 0;
              sub_1AFBDDA80(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
              v71 = swift_allocObject();
              *(v71 + 16) = xmmword_1AFE431C0;
              *(v71 + 32) = &type metadata for Particle;
              *(v71 + 40) = &off_1F252D7A8;
              sub_1AF5F58E4(v71, 1, v324);
              swift_setDeallocating();
              swift_deallocClassInstance();
              sub_1AFAD0308(0, &qword_1ED726A10, &qword_1ED72C1D0);
              v72 = swift_allocObject();
              *(v72 + 16) = xmmword_1AFE431C0;
              *(v72 + 56) = &type metadata for EmitterReference;
              *(v72 + 64) = &off_1F2563D20;
              v286 = v70;
              *(v72 + 32) = v70;
              v73 = v72 + 32;
              v283 = v69;
              *(v72 + 36) = v69;
              sub_1AF5FC13C(v72, v325);
              sub_1AF692DB0(v324);
              swift_setDeallocating();
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v73);
              swift_deallocClassInstance();
              v331 = v325[0];
              v332 = 0;
              v333 = 2;
              v334 = v325[2];
              v335 = v326;
              v336 = v327;
              v74 = v319 - a3;
              if (v319 < a3)
              {
                v75 = a3 - v319;
                v76 = v288;
                v77 = *(v288 + 8);
                sub_1AF68A8E0(v288, v343);
                v78 = v290;
                sub_1AF686FBC(v77, v290, a1, v75, v288);
                sub_1AF688940(v288);
LABEL_173:
                v79 = v286;
                v69 = v283;
LABEL_174:
                sub_1AF3C9244(*(v76 + 8), &v360);
                v284 = v363;
                if (v364)
                {
                  v154 = -1;
                }

                else
                {
                  v154 = 0;
                }

                v155 = vdupq_n_s32(v154);
                v297 = vbslq_s8(v155, xmmword_1AFE20150, v360);
                v301 = vbslq_s8(v155, xmmword_1AFE20160, v361);
                v280 = v155;
                v305 = vbslq_s8(v155, xmmword_1AFE20180, v362);

                sub_1AFB95040(v79 | (v69 << 32), &v350);
                v313 = v350.columns[1];
                v316 = v350.columns[0];
                v309 = v350.columns[2];
                v321 = v350.columns[3];

                v157 = v309;
                v156 = v313;
                v159 = v316;
                v158 = v321;
                if (v351)
                {
                  v156 = xmmword_1AFE20160;
                  v159 = xmmword_1AFE20150;
                  v157 = xmmword_1AFE20180;
                  v158 = xmmword_1AFE201A0;
                }

                v160 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v159, v297.f32[0]), v156, *v297.f32, 1), v157, v297, 2), v158, v297, 3);
                v161 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v159, v301.f32[0]), v156, *v301.f32, 1), v157, v301, 2), v158, v301, 3);
                v162 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v159, v305.f32[0]), v156, *v305.f32, 1), v157, v305, 2), v158, v305, 3);
                v163 = vmulq_f32(v160, v160);
                v164 = vmulq_f32(v161, v161);
                v165 = vmulq_f32(v162, v162);
                v166 = vtrn2q_s32(v163, v164);
                v166.i32[2] = v165.i32[1];
                v167 = vaddq_f32(vzip1q_s32(vzip2q_s32(v163, v165), vdupq_laneq_s32(v164, 2)), vaddq_f32(vzip1q_s32(vzip1q_s32(v163, v165), v164), v166));
                v168.i64[0] = 0x80000000800000;
                v168.i64[1] = 0x80000000800000;
                v169 = vcgeq_f32(v168, v167);
                v167.i32[3] = 0;
                v170 = vrsqrteq_f32(v167);
                v171 = vmulq_f32(v170, vrsqrtsq_f32(v167, vmulq_f32(v170, v170)));
                v172 = v169;
                v172.i32[3] = 0;
                v173 = vbslq_s8(vcltzq_s32(v172), v167, vmulq_f32(v171, vrsqrtsq_f32(v167, vmulq_f32(v171, v171))));
                v174 = vmulq_n_f32(v160, v173.f32[0]);
                v175 = vmulq_lane_f32(v161, *v173.f32, 1);
                v176 = vmulq_laneq_f32(v162, v173, 2);
                v177 = vuzp1q_s32(v176, v176);
                v178 = vuzp1q_s32(v175, v175);
                v179 = v174;
                if (v169.i32[0])
                {
                  v180 = vmlaq_f32(vmulq_f32(vextq_s8(v177, v176, 0xCuLL), vnegq_f32(v175)), v176, vextq_s8(v178, v175, 0xCuLL));
                  v179 = vextq_s8(vuzp1q_s32(v180, v180), v180, 0xCuLL);
                }

                v181 = vuzp1q_s32(v174, v174);
                v182 = v175;
                if (v169.i32[1])
                {
                  v183 = vmlaq_f32(vmulq_f32(vextq_s8(v181, v174, 0xCuLL), vnegq_f32(v176)), v174, vextq_s8(v177, v176, 0xCuLL));
                  v182 = vextq_s8(vuzp1q_s32(v183, v183), v183, 0xCuLL);
                }

                if (v169.i32[2])
                {
                  v184 = vmlaq_f32(vmulq_f32(vextq_s8(v178, v175, 0xCuLL), vnegq_f32(v174)), v175, vextq_s8(v181, v174, 0xCuLL));
                  v176 = vextq_s8(vuzp1q_s32(v184, v184), v184, 0xCuLL);
                }

                v185 = (*v179.i32 + *&v182.i32[1]) + v176.f32[2];
                v264 = v161;
                v265 = v160;
                v263 = v162;
                v317 = v159;
                v322 = v158;
                v310 = v157;
                v314 = v156;
                v302 = v163;
                v306 = v165;
                v298 = v164;
                if (v185 > 0.0)
                {
                  v186 = sqrtf(v185 + 1.0);
                  *v187.f32 = vsub_f32(*&vzip2q_s32(v182, vuzp1q_s32(v182, v176)), *&vtrn2q_s32(v176, vzip2q_s32(v176, v179)));
                  v187.f32[2] = *&v179.i32[1] - *v182.i32;
                  v187.f32[3] = v186 * v186;
                  v276 = vmulq_n_f32(v187, 0.5 / v186);
                  goto LABEL_197;
                }

                if (*v179.i32 < *&v182.i32[1] || *v179.i32 < v176.f32[2])
                {
                  if (*&v182.i32[1] <= v176.f32[2])
                  {
                    v196 = vzip2q_s32(v179, v182).u64[0];
                    v197 = __PAIR64__(v179.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v176.f32[2] + 1.0) - *v179.i32) - *&v182.i32[1])));
                    v198 = vdup_lane_s32(*v182.i8, 0);
                    v199 = vsub_f32(*v179.i8, v198);
                    v198.i32[0] = v197.i32[0];
                    v198.i32[0] = vmul_f32(v197, v198).u32[0];
                    v198.i32[1] = v199.i32[1];
                    *v200.f32 = vadd_f32(v196, *v176.f32);
                    *&v200.u32[2] = v198;
                    v195 = vmulq_n_f32(v200, 0.5 / v197.f32[0]);
                    goto LABEL_196;
                  }

                  v190 = sqrtf(((*&v182.i32[1] + 1.0) - *v179.i32) - v176.f32[2]);
                  v194.f32[0] = *&v179.i32[1] + *v182.i32;
                  v189 = vzip2q_s32(v179, v182).u64[0];
                  v194.f32[1] = v190 * v190;
                  *&v194.u32[2] = vext_s8(vadd_f32(*v176.f32, v189), vsub_f32(*v176.f32, v189), 4uLL);
                }

                else
                {
                  v190 = sqrtf(((*v179.i32 + 1.0) - *&v182.i32[1]) - v176.f32[2]);
                  v194.f32[0] = v190 * v190;
                  v191 = *&v179.i32[1] + *v182.i32;
                  v192 = vzip2q_s32(v179, v182).u64[0];
                  LODWORD(v193) = vadd_f32(v192, *v176.f32).u32[0];
                  HIDWORD(v193) = vsub_f32(v192, *&v176).i32[1];
                  v194.f32[1] = v191;
                  v194.i64[1] = v193;
                }

                v195 = vmulq_n_f32(v194, 0.5 / v190);
LABEL_196:
                v276 = v195;
LABEL_197:
                sub_1AF6B06C0(v78, &v331, 0x200000000, v343);
                if (*v343)
                {
                  if (v345.i64[1] > 0)
                  {
                    v282 = *&v344[8];
                    if (*&v344[8])
                    {
                      v201 = 0;
                      v202 = vbslq_s8(v280, xmmword_1AFE201A0, v284);
                      v262 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v317, v202.f32[0]), v314, *v202.f32, 1), v310, v202, 2), v322, v202, 3);
                      v261 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v302, v302, 8uLL), *&vextq_s8(v298, v298, 8uLL)), vadd_f32(vzip1_s32(*v302.i8, *v298.i8), vzip2_s32(*v302.i8, *v298.i8))));
                      v281 = *&v343[40];
                      v203 = v345.i64[0];
                      v204 = *(v345.i64[0] + 32);
                      v205 = *(*&v344[16] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
                      v365 = *v343;
                      v366 = *&v343[8];
                      v367 = *&v343[24];
                      v206 = sqrtf(*&v306.i32[2] + vaddv_f32(*v306.i8));
                      _S9 = v276.i32[3];
                      v259 = vextq_s8(vuzp1q_s32(v276, v276), v276, 0xCuLL);
                      v260 = vdupq_laneq_s32(v276, 3);
                      v258 = vnegq_f32(v276);
                      v256 = v255 + 8;
                      v257 = v277 + 4;
                      v278 = v205;
                      v279 = v204;
                      while (1)
                      {
                        v318 = v201;
                        v208 = (v281 + 48 * v201);
                        v311 = *v208;
                        v307 = v208[1];
                        v303 = v208[2];
                        v210 = *(v208 + 2);
                        v209 = *(v208 + 3);
                        v211 = *(v208 + 4);
                        v212 = *(v208 + 5);
                        v323 = v6;
                        if (v205)
                        {
                          v213 = *(v212 + 376);

                          os_unfair_lock_lock(v213);
                          os_unfair_lock_lock(*(v212 + 344));
                        }

                        else
                        {
                        }

                        ecs_stack_allocator_push_snapshot(v204);
                        v214 = *(v203 + 64);
                        v348[0] = *(v203 + 48);
                        v348[1] = v214;
                        v349 = *(v203 + 80);
                        v215 = *(*(*(*(v212 + 40) + 16) + 32) + 16) + 1;
                        *(v203 + 48) = ecs_stack_allocator_allocate(*(v203 + 32), 48 * v215, 8);
                        *(v203 + 56) = v215;
                        *(v203 + 72) = 0;
                        *(v203 + 80) = 0;
                        *(v203 + 64) = 0;
                        v299 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v210, v209, v211, v203);
                        v291 = v216;
                        v217 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v210, v209, v211, v203);
                        v287 = v218;
                        v219 = (v218 & 1) != 0 ? 0 : v217;
                        v295 = v219;
                        v220 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v210, v209, v211, v203);
                        v222 = v221;
                        v223 = (v221 & 1) != 0 ? 0 : v220;
                        v293 = v223;
                        v224 = sub_1AF64B110(&type metadata for Scale1, &off_1F252F788, v210, v209, v211, v203);
                        v226 = v225;
                        v227 = (v225 & 1) != 0 ? 0 : v224;
                        v289 = v227;
                        v228 = sub_1AF64B110(&type metadata for Scale2, &off_1F252F838, v210, v209, v211, v203);
                        v230 = v229;
                        v231 = (v229 & 1) != 0 ? 0 : v228;
                        v285 = v231;
                        v232 = sub_1AF64B110(&type metadata for Scale3, &off_1F252F998, v210, v209, v211, v203);
                        v234 = (v233 & 1) != 0 ? 0 : v232;
                        if (v311 != v307)
                        {
                          break;
                        }

                        v235 = v323;
                        v205 = v278;
                        v236 = v314;
LABEL_222:
                        v314 = v236;
                        sub_1AF630994(v203, &v365, v348);
                        v6 = v235;
                        sub_1AF62D29C(v212);
                        v204 = v279;
                        ecs_stack_allocator_pop_snapshot(v279);
                        if (v205)
                        {
                          os_unfair_lock_unlock(*(v212 + 344));
                          os_unfair_lock_unlock(*(v212 + 376));
                        }

                        v201 = v318 + 1;
                        if (v318 + 1 == v282)
                        {
                          goto LABEL_241;
                        }
                      }

                      v237 = 0;
                      v238 = v271 | v222;
                      v239 = v234 + 16 * v311;
                      v240 = &v257[12 * v303];
                      v241 = &v256[12 * v303];
                      v235 = v323;
                      v205 = v278;
                      v236 = v314;
                      while (1)
                      {
                        if ((v275 | v291))
                        {
                          v242 = 16 * v237;
                          if ((v273 | v287))
                          {
                            goto LABEL_228;
                          }
                        }

                        else
                        {
                          v243 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v262, v263, v240[1]), v264, *v240), v265, *(v240 - 1));
                          v243.i32[3] = v236.i32[3];
                          v236 = v243;
                          v243.i32[3] = 1.0;
                          *(v299 + 16 * v311 + 16 * v237) = v243;
                          v242 = 16 * v237;
                          if ((v273 | v287))
                          {
LABEL_228:
                            if (v238)
                            {
                              goto LABEL_229;
                            }

                            goto LABEL_235;
                          }
                        }

                        _Q0 = *&v274[16 * v303 + v242];
                        _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL), v258), _Q0, v259);
                        v246 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v276, _Q0, 3), v260, _Q0), vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
                        __asm { FMLA            S2, S9, V0.S[3] }

                        v246.i32[3] = _Q2.i32[0];
                        *(v295 + 16 * v311 + v242) = v246;
                        if (v238)
                        {
LABEL_229:
                          if ((v269 | v226))
                          {
                            goto LABEL_230;
                          }

                          goto LABEL_236;
                        }

LABEL_235:
                        *(v293 + 16 * v311 + v242) = *&v272[16 * v303 + v242];
                        if ((v269 | v226))
                        {
LABEL_230:
                          if ((v267 | v230))
                          {
                            goto LABEL_231;
                          }

                          goto LABEL_237;
                        }

LABEL_236:
                        *(v289 + 4 * v311 + 4 * v237) = v261.f32[0] * *&v270[4 * v303 + 4 * v237];
                        if ((v267 | v230))
                        {
LABEL_231:
                          if (((v266 | v233) & 1) == 0)
                          {
                            goto LABEL_238;
                          }

                          goto LABEL_225;
                        }

LABEL_237:
                        *(v285 + 8 * v311 + 8 * v237) = vmul_f32(v261, *&v268[8 * v303 + 8 * v237]);
                        if (((v266 | v233) & 1) == 0)
                        {
LABEL_238:
                          *&v249 = vmul_f32(v261, *(v241 - 2));
                          *(&v249 + 2) = v206 * *v241;
                          HIDWORD(v249) = 0;
                          *(v239 + 16 * v237) = v249;
                        }

LABEL_225:
                        ++v237;
                        v240 += 3;
                        v241 += 3;
                        if (v307 - v311 == v237)
                        {
                          goto LABEL_222;
                        }
                      }
                    }
                  }

LABEL_241:
                  sub_1AF692DB0(v325);
                  sub_1AFBDD920(v343, &qword_1ED725EA0, &type metadata for QueryResult);
                }

                else
                {
                  sub_1AF692DB0(v325);
                }
              }

              v78 = v290;
              sub_1AF6B06C0(v290, &v331, 0x200000000, &v352);
              if (!v352)
              {
LABEL_172:
                v76 = v288;
                goto LABEL_173;
              }

              v79 = v70;
              if (v359 <= 0 || (v296 = v356) == 0)
              {
                sub_1AFBDD920(&v352, &qword_1ED725EA0, &type metadata for QueryResult);
                v76 = v288;
                goto LABEL_174;
              }

              v80 = 0;
              v294 = v355;
              v81 = v358;
              v82 = *(v357 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v304 = *(v358 + 32);
              v328 = v352;
              v329 = v353;
              v330 = v354;
              v308 = v358;
              v292 = v82;
LABEL_71:
              v83 = (v294 + 48 * v80);
              v84 = *v83;
              v85 = v83[1];
              v315 = *(v83 + 2);
              v86 = *(v83 + 5);
              v312 = *(v83 + 4);
              v300 = v80;
              if (v82)
              {
                v87 = *(v86 + 376);

                os_unfair_lock_lock(v87);
                os_unfair_lock_lock(*(v86 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v304);
              v88 = *(v81 + 64);
              v368[0] = *(v81 + 48);
              v368[1] = v88;
              v369 = *(v81 + 80);
              v89 = *(*(*(*(v86 + 40) + 16) + 32) + 16) + 1;
              *(v81 + 48) = ecs_stack_allocator_allocate(*(v81 + 32), 48 * v89, 8);
              *(v81 + 56) = v89;
              *(v81 + 72) = 0;
              *(v81 + 80) = 0;
              *(v81 + 64) = 0;
              v90 = v315;
              v320 = v6;
              if (!v315)
              {
                if (v84 == v85)
                {
                  goto LABEL_123;
                }

                while (2)
                {
                  v124 = v74 - 1;
                  if (v74 < 1)
                  {
                    goto LABEL_127;
                  }

                  v125 = *(v86 + 232);
                  if (v84 >= *(v86 + 256) && v84 < v125)
                  {
                    goto LABEL_126;
                  }

                  v362.i64[0] = 0;
                  v361 = 0u;
                  v360 = 0u;
                  v362.i8[8] = 5;
                  v127 = *(v81 + 104);
                  v128 = *(v127 + 16);
                  if (!v128)
                  {

                    goto LABEL_164;
                  }

                  v129 = v127 + 32;

                  v130 = 0;
LABEL_138:
                  sub_1AF6350F8(v129, &v350);
                  sub_1AF63515C(&v350, v343);
                  sub_1AF63515C(&v360, v344);
                  if (v343[40] > 2u)
                  {
                    if (v343[40] != 3)
                    {
                      if (v343[40] != 4)
                      {
                        sub_1AFBDDB6C(&v350, sub_1AF43A540);
                        if (v346 == 5)
                        {
                          v138 = vorrq_s8(*&v344[8], v345);
                          if (!(*&vorr_s8(*v138.i8, *&vextq_s8(v138, v138, 8uLL)) | *v344))
                          {
                            sub_1AF635250(v343);
LABEL_160:
                            v81 = v308;
                            v140 = sub_1AFBFCA08(v343);
                            v141 = *(v139 + 48);
                            if (v141)
                            {
                              v142 = *(v139 + 64);
                              *(v141 + 8 * v142) = v84;
                              *(v139 + 64) = v142 + 1;
                            }

                            (v140)(v343, 0);

                            sub_1AF635250(&v360);
LABEL_126:
                            v74 = v124;
LABEL_127:
                            if (++v84 == v85)
                            {
                              goto LABEL_123;
                            }

                            continue;
                          }
                        }

                        goto LABEL_136;
                      }

                      sub_1AFBDDB6C(&v350, sub_1AF43A540);
                      sub_1AF63515C(v343, v348);
                      if (v346 != 4)
                      {
                        goto LABEL_136;
                      }

                      v131 = LOBYTE(v348[0]);
                      v132 = v344[0];
                      sub_1AF635250(v343);
                      v133 = v131 == v132;
LABEL_149:
                      if (v133)
                      {
                        goto LABEL_160;
                      }

                      goto LABEL_137;
                    }

                    sub_1AF63515C(v343, v348);
                    if (v346 == 3)
                    {
LABEL_155:
                      sub_1AF616568(v348, &v365);
                      sub_1AF616568(v344, v347);
                      v137 = *(&v367 + 1);
                      v136 = v367;
                      sub_1AF441150(&v365, v367);
                      LOBYTE(v136) = sub_1AF640C98(v347, v136, v137);
                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v347);
                      sub_1AFBDDB6C(&v350, sub_1AF43A540);
                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v365);
                      sub_1AF635250(v343);
                      if (v136)
                      {
                        goto LABEL_160;
                      }

                      goto LABEL_137;
                    }
                  }

                  else
                  {
                    if (!v343[40])
                    {
                      sub_1AFBDDB6C(&v350, sub_1AF43A540);
                      sub_1AF63515C(v343, v348);
                      if (!v346)
                      {
                        goto LABEL_148;
                      }

                      goto LABEL_136;
                    }

                    if (v343[40] == 1)
                    {
                      sub_1AFBDDB6C(&v350, sub_1AF43A540);
                      sub_1AF63515C(v343, v348);
                      if (v346 == 1)
                      {
LABEL_148:
                        v134 = *&v348[0];
                        v135 = *v344;
                        sub_1AF635250(v343);
                        v133 = v134 == v135;
                        goto LABEL_149;
                      }

LABEL_136:
                      sub_1AFBDDB6C(v343, sub_1AF635194);
LABEL_137:
                      ++v130;
                      v129 += 72;
                      if (v128 == v130)
                      {
                        v125 = *(v86 + 232);
                        v81 = v308;
LABEL_164:
                        v143 = *(v86 + 240) - v125;
                        v144 = ecs_stack_allocator_allocate(*(v81 + 32), 8 * v143, 8);
                        *v144 = v84;
                        sub_1AF63515C(&v360, v343);
                        *v344 = v144;
                        *&v344[8] = v143;
                        *&v344[16] = 1;
                        v145 = *(v81 + 104);
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        *(v81 + 104) = v145;
                        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                        {
                          v145 = sub_1AF420EA0(0, v145[2] + 1, 1, v145);
                          *(v81 + 104) = v145;
                        }

                        v148 = v145[2];
                        v147 = v145[3];
                        if (v148 >= v147 >> 1)
                        {
                          *(v81 + 104) = sub_1AF420EA0(v147 > 1, v148 + 1, 1, v145);
                        }

                        sub_1AF635250(&v360);
                        v149 = *(v81 + 104);
                        *(v149 + 16) = v148 + 1;
                        v150 = v149 + 72 * v148;
                        *(v150 + 32) = *v343;
                        v152 = *&v343[32];
                        v151 = *v344;
                        v153 = *&v343[16];
                        *(v150 + 96) = *&v344[16];
                        *(v150 + 64) = v152;
                        *(v150 + 80) = v151;
                        *(v150 + 48) = v153;
                        *(v81 + 104) = v149;
                        goto LABEL_126;
                      }

                      goto LABEL_138;
                    }

                    sub_1AF63515C(v343, v348);
                    if (v346 == 2)
                    {
                      goto LABEL_155;
                    }
                  }

                  break;
                }

                sub_1AFBDDB6C(&v350, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v348);
                goto LABEL_136;
              }

              v91 = v312;
              if (!v312)
              {
                goto LABEL_123;
              }

              v92 = 0;
LABEL_81:
              v93 = v74 - 1;
              if (v74 < 1)
              {
                goto LABEL_80;
              }

              v94 = *(v90 + 8 * v92);
              v95 = *(v86 + 232);
              if (v94 >= *(v86 + 256) && v94 < v95)
              {
                goto LABEL_79;
              }

              v362.i64[0] = 0;
              v361 = 0u;
              v360 = 0u;
              v362.i8[8] = 5;
              v97 = *(v81 + 104);
              v98 = *(v97 + 16);
              if (!v98)
              {

LABEL_117:
                v113 = *(v86 + 240) - v95;
                v114 = ecs_stack_allocator_allocate(*(v81 + 32), 8 * v113, 8);
                *v114 = v94;
                sub_1AF63515C(&v360, v343);
                *v344 = v114;
                *&v344[8] = v113;
                *&v344[16] = 1;
                v115 = *(v81 + 104);
                v116 = swift_isUniquelyReferenced_nonNull_native();
                *(v81 + 104) = v115;
                if ((v116 & 1) == 0)
                {
                  v115 = sub_1AF420EA0(0, v115[2] + 1, 1, v115);
                  *(v81 + 104) = v115;
                }

                v118 = v115[2];
                v117 = v115[3];
                if (v118 >= v117 >> 1)
                {
                  *(v81 + 104) = sub_1AF420EA0(v117 > 1, v118 + 1, 1, v115);
                }

                sub_1AF635250(&v360);
                v119 = *(v81 + 104);
                *(v119 + 16) = v118 + 1;
                v120 = v119 + 72 * v118;
                *(v120 + 32) = *v343;
                v122 = *&v343[32];
                v121 = *v344;
                v123 = *&v343[16];
                *(v120 + 96) = *&v344[16];
                *(v120 + 64) = v122;
                *(v120 + 80) = v121;
                *(v120 + 48) = v123;
                *(v81 + 104) = v119;
                goto LABEL_78;
              }

              v99 = v97 + 32;

              v100 = 0;
              while (1)
              {
                sub_1AF6350F8(v99, &v350);
                sub_1AF63515C(&v350, v343);
                sub_1AF63515C(&v360, v344);
                if (v343[40] > 2u)
                {
                  if (v343[40] != 3)
                  {
                    if (v343[40] != 4)
                    {
                      sub_1AFBDDB6C(&v350, sub_1AF43A540);
                      if (v346 == 5)
                      {
                        v108 = vorrq_s8(*&v344[8], v345);
                        if (!(*&vorr_s8(*v108.i8, *&vextq_s8(v108, v108, 8uLL)) | *v344))
                        {
                          sub_1AF635250(v343);
LABEL_113:
                          v81 = v308;
                          v110 = sub_1AFBFCA08(v343);
                          v111 = *(v109 + 48);
                          if (v111)
                          {
                            v112 = *(v109 + 64);
                            *(v111 + 8 * v112) = v94;
                            *(v109 + 64) = v112 + 1;
                          }

                          (v110)(v343, 0);

                          sub_1AF635250(&v360);
LABEL_78:
                          v90 = v315;
                          v91 = v312;
LABEL_79:
                          v74 = v93;
LABEL_80:
                          if (++v92 != v91)
                          {
                            goto LABEL_81;
                          }

LABEL_123:
                          sub_1AF630994(v81, &v328, v368);
                          v6 = v320;
                          sub_1AF62D29C(v86);
                          ecs_stack_allocator_pop_snapshot(v304);
                          v82 = v292;
                          if (v292)
                          {
                            os_unfair_lock_unlock(*(v86 + 344));
                            os_unfair_lock_unlock(*(v86 + 376));
                          }

                          v80 = v300 + 1;
                          if (v300 + 1 == v296)
                          {
                            sub_1AFBDD920(&v352, &qword_1ED725EA0, &type metadata for QueryResult);
                            v78 = v290;
                            goto LABEL_172;
                          }

                          goto LABEL_71;
                        }
                      }

                      goto LABEL_89;
                    }

                    sub_1AFBDDB6C(&v350, sub_1AF43A540);
                    sub_1AF63515C(v343, v348);
                    if (v346 != 4)
                    {
                      goto LABEL_89;
                    }

                    v101 = LOBYTE(v348[0]);
                    v102 = v344[0];
                    sub_1AF635250(v343);
                    _ZF = v101 == v102;
                    goto LABEL_102;
                  }

                  sub_1AF63515C(v343, v348);
                  if (v346 != 3)
                  {
                    goto LABEL_88;
                  }
                }

                else
                {
                  if (!v343[40])
                  {
                    sub_1AFBDDB6C(&v350, sub_1AF43A540);
                    sub_1AF63515C(v343, v348);
                    if (v346)
                    {
                      goto LABEL_89;
                    }

                    goto LABEL_101;
                  }

                  if (v343[40] == 1)
                  {
                    sub_1AFBDDB6C(&v350, sub_1AF43A540);
                    sub_1AF63515C(v343, v348);
                    if (v346 != 1)
                    {
                      goto LABEL_89;
                    }

LABEL_101:
                    v104 = *&v348[0];
                    v105 = *v344;
                    sub_1AF635250(v343);
                    _ZF = v104 == v105;
LABEL_102:
                    if (_ZF)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_90;
                  }

                  sub_1AF63515C(v343, v348);
                  if (v346 != 2)
                  {
LABEL_88:
                    sub_1AFBDDB6C(&v350, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v348);
LABEL_89:
                    sub_1AFBDDB6C(v343, sub_1AF635194);
                    goto LABEL_90;
                  }
                }

                sub_1AF616568(v348, &v365);
                sub_1AF616568(v344, v347);
                v107 = *(&v367 + 1);
                v106 = v367;
                sub_1AF441150(&v365, v367);
                LOBYTE(v106) = sub_1AF640C98(v347, v106, v107);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v347);
                sub_1AFBDDB6C(&v350, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v365);
                sub_1AF635250(v343);
                if (v106)
                {
                  goto LABEL_113;
                }

LABEL_90:
                ++v100;
                v99 += 72;
                if (v98 == v100)
                {
                  v95 = *(v86 + 232);
                  v81 = v308;
                  goto LABEL_117;
                }
              }
            }

            v55 = sub_1AF419914(1702521203, 0xE400000000000000);
            if (v56)
            {
              v57 = *(a2 + 56) + 32 * v55;
              if (*(v57 + 24) == 29)
              {
                v58 = *v57;
                v59 = *(v57 + 8);
                if ([swift_unknownObjectRetain_n() storageMode] != 2)
                {
                  v66 = v59;
                  v67 = [v58 contents];
                  v68 = v58;
                  swift_unknownObjectRelease();
                  v267 = 0;
                  v268 = &v67[v66];
                  if (*(a2 + 16))
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_61;
                }

                swift_unknownObjectRelease_n();
              }
            }

            v268 = 0;
            v267 = 1;
            if (*(a2 + 16))
            {
LABEL_55:
              v60 = sub_1AF419914(1702521203, 0xE400000000000000);
              if (v61)
              {
                v62 = *(a2 + 56) + 32 * v60;
                if (*(v62 + 24) == 30)
                {
                  v63 = a5;
                  v64 = *v62;
                  v65 = *(v62 + 8);
                  if ([swift_unknownObjectRetain_n() storageMode] == 2)
                  {
                    swift_unknownObjectRelease_n();
                    v255 = 0;
                    v266 = 1;
                  }

                  else
                  {
                    v250 = [v64 contents];
                    v251 = v64;
                    swift_unknownObjectRelease();
                    v266 = 0;
                    v255 = &v250[v65];
                  }

                  a5 = v63;
                  goto LABEL_62;
                }
              }
            }

LABEL_61:
            v255 = 0;
            v266 = 1;
            goto LABEL_62;
          }
        }
      }
    }

    else
    {
      v272 = 0;
      v271 = 1;
      if (*(a2 + 16))
      {
        goto LABEL_43;
      }
    }

    v270 = 0;
    goto LABEL_48;
  }

  v13 = a4;
  v14 = *(a1 + 528);
  v15 = a3 - v14;
  if (a3 == v14 || a3 <= v14)
  {
  }

  v16 = a5;
  v17 = a5[2];
  v18 = a5[3];
  if ((v17 != -1 || v18) && (v17 & 0x80000000) == 0 && *(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v17)
  {
    v19 = (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v17);
    v20 = *(v19 + 2);
    if (v18 == -1 || v19[2] == v18)
    {
      v21 = *(*(v13 + 144) + 8 * *v19 + 32);
      v22 = *(v21 + 48);
      v23 = (v22 + 32);
      v24 = *(v22 + 16) + 1;
      while (--v24)
      {
        v25 = v23 + 5;
        v26 = *v23;
        v23 += 5;
        if (v26 == &type metadata for ParticleSpawnState)
        {
          v27 = (&(*(v25 - 2))[8 * v20].Kind + *(v21 + 128));
          sub_1AF68A8E0(v16, v343);
          sub_1AFB7F308(v15, v27, v16);
          sub_1AF688940(v16);
        }
      }
    }
  }

  v352 = 0;
  *&v353 = 0xE000000000000000;
  sub_1AF68A8E0(v16, v343);
  sub_1AFDFE218();
  *v343 = v352;
  *&v343[8] = v353;
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v254 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v254);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EB20);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AF688940(v16);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFBD9424(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, float a5, float a6)
{
  if (a5 == a6)
  {
    v6 = a3 - a2;
    if (a3 != a2)
    {
      v7 = (result + 16 * a2);
      do
      {
        *v7 = vmulq_n_f32(*v7, a5);
        ++v7;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v8 = a3 - a2;
    if (a3 != a2)
    {
      v9 = a4[2];
      v10 = a4[3];
      v11 = a6 - a5;
      v12 = (result + 16 * a2);
      v13 = *a4;
      v14 = a4[1];
      do
      {
        v15 = 9 * ((((5 * v14) >> 32) >> 25) | (640 * v14));
        v16 = v13 ^ v9;
        v17 = v14 ^ v10;
        v9 ^= v13 ^ (v14 << 17);
        v14 ^= v16;
        v13 ^= v17;
        v10 = __ROR8__(v17, 19);
        *v12 = vmulq_n_f32(*v12, (v11 * vcvts_n_f32_u64(*&v15 & 0xFFFFFFLL, 0x18uLL)) + a5);
        ++v12;
        --v8;
      }

      while (v8);
      *a4 = v13;
      a4[1] = v14;
      a4[2] = v9;
      a4[3] = v10;
    }
  }

  return result;
}

uint64_t sub_1AFBD94C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1AF419914(a2, a3);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

void sub_1AFBD9550(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1AF42C7DC(MEMORY[0x1E69E7CC0]);

  *a2 = v8;
  a2[3] = 0;
  sub_1AF44596C(a1, v50);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF4459C8(v50);
  if (!Strong)
  {
    v11 = 0;
    goto LABEL_11;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  v11 = v10;
  if (!v10)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v12 = [v10 nodeRef];
  if (!v12)
  {
LABEL_11:
    sub_1AF44596C(a1, v50);
    v18 = swift_unknownObjectWeakLoadStrong();
    sub_1AF4459C8(v50);
    if (!v18)
    {
      goto LABEL_26;
    }

    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {

      swift_unknownObjectRelease();
      return;
    }

    v20 = [v19 model];
    swift_unknownObjectRelease();
    if (!v20)
    {
      goto LABEL_26;
    }

    v21 = [v20 mesh];

    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = [v21 meshRef];
    v23 = v21;
    v24 = v22;
    v17 = sub_1AF20E1F8(a3, v24, 1);

    if (!v17)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  v13 = v12;
  v14 = sub_1AF1B7558(v12);
  if (!v14)
  {

    goto LABEL_11;
  }

  v15 = v14;
  v51 = v3;
  v16 = [a3 renderResourceForDeformerStack:v14 node:v13 dataKind:1];
  v17 = sub_1AFDE21E0(v16);

  if (!v17)
  {
    v4 = v51;
    goto LABEL_11;
  }

  v4 = v51;
LABEL_16:
  v49 = sub_1AFDEA290(v17);
  a2[3] = v49;
  v27 = sub_1AFDEA180(v17, 0, v25, v26);
  v30 = &selRef_antialiasingMode;
  v51 = v4;
  if (v27)
  {
    v31 = v27;
    v32 = sub_1AFDEA004(v17);
    v33 = [v32 attributes];

    v34 = [v33 objectAtIndexedSubscript_];
    if (v34)
    {
      swift_unknownObjectRetain();
      v47 = [v34 offset];
      v35 = sub_1AF471A88([v34 format]) * v49;
      v36 = [v34 format];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50[0] = *a2;
      v38 = v35;
      v30 = &selRef_antialiasingMode;
      sub_1AF85917C(v31, v47, v38, v36, 0x6E6F697469736F70, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

      swift_unknownObjectRelease();
      *a2 = v50[0];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v39 = sub_1AFDEA180(v17, 1, v28, v29);
  if (v39)
  {
    v40 = v39;
    v41 = sub_1AFDEA004(v17);
    v42 = [v41 v30[59]];

    v43 = [v42 objectAtIndexedSubscript_];
    if (v43)
    {
      swift_unknownObjectRetain();
      v48 = [v43 offset];
      v44 = sub_1AF471A88([v43 format]) * v49;
      v45 = [v43 format];
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v50[0] = *a2;
      sub_1AF85917C(v40, v48, v44, v45, 0x6C616D726F6ELL, 0xE600000000000000, v46);

      swift_unknownObjectRelease();
      *a2 = v50[0];
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_26:
}

uint64_t sub_1AFBD9A40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBDEAB4(0, &qword_1EB643368, sub_1AFBDDA2C, &type metadata for PointCacheEmitter.CodingKeys, MEMORY[0x1E69E6F48]);
  v28 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDDA2C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  v31 = 0;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v11 = v29;
  sub_1AF48C324();
  v31 = 1;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v12 = v29;
  LOBYTE(v29) = 2;
  v27 = sub_1AFDFE718();
  LOBYTE(v29) = 3;
  v26 = sub_1AFDFE718();
  LOBYTE(v29) = 4;
  v25 = sub_1AFDFE718();
  LOBYTE(v29) = 5;
  v24 = sub_1AFDFE718();
  v31 = 6;
  sub_1AFDFE6E8();
  if (v30)
  {
    v14 = -1;
  }

  else
  {
    v14 = v29;
  }

  if (v30)
  {
    v15 = 0;
  }

  else
  {
    v15 = HIDWORD(v29);
  }

  v31 = 7;
  sub_1AF51D5F4();
  sub_1AFDFE6E8();
  v16 = v29;
  if (v29 == 3)
  {
    v16 = 0;
  }

  v23 = v16;
  LOBYTE(v29) = 8;
  v22 = sub_1AFDFE6C8();
  LOBYTE(v29) = 9;
  v17 = sub_1AFDFE6A8();
  v26 &= 1u;
  v27 &= 1u;
  v25 &= 1u;
  v18 = v24 & 1;
  if ((v22 & 0x100000000) != 0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = *&v22;
  }

  (*(v10 + 8))(v9, v28);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  *(a2 + 16) = v12;
  v20 = v26;
  *(a2 + 24) = v27;
  *(a2 + 25) = v20;
  *(a2 + 26) = v25;
  *(a2 + 27) = v18;
  *(a2 + 28) = v17 & 1;
  *(a2 + 29) = v23;
  *(a2 + 32) = v19;
  return result;
}

uint64_t sub_1AFBD9EBC(void *a1)
{
  sub_1AFBDEAB4(0, &qword_1EB6434A0, sub_1AFBDEA60, &type metadata for PointCacheSpawner.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AFBDEA60();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v16 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v9 = v17;
    v15 = 1;
    sub_1AFDFE718();
    v14 = 2;
    sub_1AFDFE718();
    v13 = 3;
    v11[1] = sub_1AFDFE718();
    v12 = 4;
    sub_1AFDFE718();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AFBDA158(void *a1)
{
  sub_1AFBDEAB4(0, &qword_1EB6433A8, sub_1AFBDDC68, &type metadata for PointCacheGenerator.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AFBDDC68();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v15 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v9 = v16;
    LOBYTE(v16) = 1;
    sub_1AFDFE748();
    v15 = 2;
    sub_1AF51C930();
    sub_1AFDFE768();
    v15 = 3;
    sub_1AFBDDCBC();
    sub_1AFDFE768();
    v14 = v16;
    LOBYTE(v16) = 4;
    v10 = sub_1AFDFE6F8();
    v12 = *(v5 + 8);
    v13 = v10;
    v12(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AFBDA414(void *a1)
{
  v2 = v1;
  sub_1AFBDEAB4(0, &qword_1EB6433D0, sub_1AFBDDD64, &type metadata for REMeshAssetPointCache.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v11 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - v7;
  sub_1AF42D33C(MEMORY[0x1E69E7CC0]);
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDDD64();
  sub_1AFDFF3B8();
  if (v1)
  {
  }

  else
  {
    v2 = sub_1AFDFE708();
    (*(v11 + 8))(v8, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AFBDA5E8(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  sub_1AF3CF88C(v3, &v11);

  v4 = v14;
  if (v14 == 2)
  {
    *&v5 = 0xFFFFFFFFLL;
    *(&v5 + 1) = 0xFFFFFFFFLL;
    v6 = 0;
    v7 = 0x40000000;
    v8 = 1065353216;
    v4 = 65793;
  }

  else
  {
    v6 = v15;
    v8 = v12;
    v7 = v13;
    v5 = v11;
  }

  v16 = v5;
  v17 = v8;
  v18 = v7;
  v19 = v4;
  v20 = v6;
  v9 = a1[4];

  sub_1AF68A8E0(a1, &v11);
  sub_1AF689880(v9, v2, v2, a1);
  sub_1AF688940(a1);
}

uint64_t sub_1AFBDA6D0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81);

  if (v3 == 1 && ((sub_1AFB93E58(), v5 = v4, v6 = a1[1], , v7 = sub_1AF3CF964(v6), v9 = v8, , v9 != 2) ? (v10 = v7) : (v10 = 0xFFFFFFFFLL), (v11 = sub_1AF3CF75C(v10)) != 0))
  {
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    sub_1AF68A8E0(a1, v20);

    sub_1AF68A298(v6, v2, a1, v2, v15, v16, v17, v18, v5);

    sub_1AF688940(a1);
  }

  else
  {
  }
}

uint64_t sub_1AFBDA85C()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBDA8A8(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v223 = a4;
  v245 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74();
  *&v233 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v232 = v216 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_1AFDFC298();
  v11 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231, v12);
  v230 = v216 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_1AFDFDCB8();
  v14 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236, v15);
  v234 = v216 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF43C9F0(a1, a2);
  *&v241 = a2;
  v17 = sub_1AF758E68(0, a1, a2);
  if (!v18)
  {
    goto LABEL_103;
  }

  v19 = v17;
  v235 = a3;
  v216[1] = v4;
  v20 = v18;
  v21 = sub_1AFDFD048();
  if ((v19 != 0x656863616370 || v20 != 0xE600000000000000) && (sub_1AFDFEE28() & 1) == 0)
  {

LABEL_103:
    sub_1AFBDC8FC();
    swift_allocError();
    *v74 = 0;
    v74[1] = 0;
    swift_willThrow();
    goto LABEL_104;
  }

  v216[2] = v20;
  v22 = v21 + 1;
  v23 = sub_1AF758E68(v21 + 1, a1, v241);
  if (!v24)
  {
    v226 = 0;
    v227 = MEMORY[0x1E69E7CC0];
    goto LABEL_113;
  }

  v25 = v23;
  v26 = v24;
  v226 = 0;
  v240 = (v14 + 104);
  v227 = MEMORY[0x1E69E7CC0];
  v238 = (v14 + 8);
  LODWORD(v237) = *MEMORY[0x1E696A028];
  v27 = v236;
  v28 = v234;
  v224 = v11;
  while (1)
  {
    while (1)
    {
      while (1)
      {

        v30 = sub_1AFDFD048();

        v22 += v30 + 1;
        v31 = objc_allocWithZone(MEMORY[0x1E696AE88]);
        v32 = sub_1AFDFCEC8();
        v33 = [v31 initWithString_];

        sub_1AFDFDC98();
        if (v34)
        {

          goto LABEL_8;
        }

        sub_1AFDFDC98();
        if (!v35)
        {
          break;
        }

        sub_1AFDFDC98();
        if (!v36)
        {

          *&v244 = 0;
          *(&v244 + 1) = 0xE000000000000000;
          sub_1AFDFE218();

          *&v244 = 0xD000000000000012;
          *(&v244 + 1) = 0x80000001AFF4AF20;
          goto LABEL_108;
        }

        (*v240)(v28, v237, v27);
        v37 = sub_1AFDFDCD8();
        (*v238)(v28, v27);
        if ((v37 & 0x100000000) != 0 || *&v37 != 1.0)
        {

          *&v244 = 0xD000000000000010;
          *(&v244 + 1) = 0x80000001AFF4AF40;
LABEL_108:
          MEMORY[0x1B2718AE0](v25, v26);

          MEMORY[0x1B2718AE0](39, 0xE100000000000000);
          v78 = v244;
          sub_1AFBDC8FC();
          swift_allocError();
          *v79 = v78;
LABEL_109:
          swift_willThrow();

LABEL_104:
          v75 = a1;
          v76 = v241;
          return sub_1AF439ED8(v75, v76);
        }

LABEL_8:

        v25 = sub_1AF758E68(v22, a1, v241);
        v26 = v29;
        if (!v29)
        {
          goto LABEL_112;
        }
      }

      sub_1AFDFDC98();
      if (!v38)
      {
        break;
      }

      (*v240)(v28, v237, v27);
      v226 = sub_1AFDFDCC8();
      v72 = v71;
      (*v238)(v28, v27);
      if (v72)
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v213 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v215 = v213;
          swift_once();
          v213 = v215;
        }

        *&v244 = 0;
        sub_1AF0D4F18(v213, &v244, 0xD000000000000016, 0x80000001AFF4AF00);
        sub_1AFBDC8FC();
        swift_allocError();
        *v214 = 0;
        v214[1] = 0;
        goto LABEL_109;
      }

      v25 = sub_1AF758E68(v22, a1, v241);
      v26 = v73;
      v11 = v224;
      if (!v73)
      {
        goto LABEL_113;
      }
    }

    sub_1AFDFDC98();
    if (v39)
    {

      sub_1AFDFDC98();
      if (!v40)
      {

        sub_1AFBDC8FC();
        swift_allocError();
        *v80 = v25;
        v80[1] = v26;
        goto LABEL_109;
      }

      v239 = a1;

      v41 = 0;
LABEL_21:
      v43 = byte_1F2507588[v41++ + 32];
      sub_1AFDFDC98();
      v45 = v44;

      if (!v45)
      {
        v42 = v227;
        goto LABEL_20;
      }

      v42 = v227;
      v46 = *(v227 + 2);
      if (!v46)
      {
LABEL_84:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1AF427EE4(0, *(v42 + 2) + 1, 1, v42);
        }

        v27 = v236;
        v64 = *(v42 + 2);
        v63 = *(v42 + 3);
        if (v64 >= v63 >> 1)
        {
          v42 = sub_1AF427EE4(v63 > 1, v64 + 1, 1, v42);
        }

        *(v42 + 2) = v64 + 1;
        v65 = &v42[16 * v64];
        v65[32] = v43;
        v66 = 1;
        goto LABEL_93;
      }

      v47 = 0;
      while (1)
      {
        v48 = v42[v47 + 32];
        if (v48 > 3)
        {
          if (v42[v47 + 32] > 5u)
          {
            if (v48 == 6)
            {
              v52 = 0x646E49746E696F6ALL;
              v61 = 1936024425;
            }

            else
            {
              v52 = 0x696557746E696F6ALL;
              v61 = 1937008743;
            }

            v53 = v61 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v43 > 3)
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (v48 == 4)
            {
              v52 = 0x726F6C6F63;
            }

            else
            {
              v52 = 1702521203;
            }

            if (v48 == 4)
            {
              v53 = 0xE500000000000000;
            }

            else
            {
              v53 = 0xE400000000000000;
            }

            if (v43 > 3)
            {
              goto LABEL_50;
            }
          }
        }

        else
        {
          v49 = 0x7461746E6569726FLL;
          if (v48 == 2)
          {
            v49 = 0x6C616D726F6ELL;
          }

          v50 = 0xE600000000000000;
          if (v48 != 2)
          {
            v50 = 0xEB000000006E6F69;
          }

          v51 = 0x797469636F6C6576;
          if (!v42[v47 + 32])
          {
            v51 = 0x6E6F697469736F70;
          }

          if (v42[v47 + 32] <= 1u)
          {
            v52 = v51;
          }

          else
          {
            v52 = v49;
          }

          if (v42[v47 + 32] <= 1u)
          {
            v53 = 0xE800000000000000;
          }

          else
          {
            v53 = v50;
          }

          if (v43 > 3)
          {
LABEL_50:
            v55 = 0x696557746E696F6ALL;
            if (v43 == 6)
            {
              v55 = 0x646E49746E696F6ALL;
            }

            v56 = 0xEC00000073746867;
            if (v43 == 6)
            {
              v56 = 0xEC00000073656369;
            }

            v57 = 0x726F6C6F63;
            if (v43 != 4)
            {
              v57 = 1702521203;
            }

            v58 = 0xE500000000000000;
            if (v43 != 4)
            {
              v58 = 0xE400000000000000;
            }

            if (v43 <= 5)
            {
              v59 = v57;
            }

            else
            {
              v59 = v55;
            }

            if (v43 <= 5)
            {
              v54 = v58;
            }

            else
            {
              v54 = v56;
            }

            if (v52 != v59)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          }
        }

        if (v43 > 1)
        {
          if (v43 == 2)
          {
            v60 = 0x6C616D726F6ELL;
          }

          else
          {
            v60 = 0x7461746E6569726FLL;
          }

          if (v43 == 2)
          {
            v54 = 0xE600000000000000;
          }

          else
          {
            v54 = 0xEB000000006E6F69;
          }

          if (v52 != v60)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v54 = 0xE800000000000000;
          if (v43)
          {
            if (v52 != 0x797469636F6C6576)
            {
              goto LABEL_78;
            }
          }

          else if (v52 != 0x6E6F697469736F70)
          {
            goto LABEL_78;
          }
        }

LABEL_77:
        if (v53 == v54)
        {

LABEL_90:
          v42 = v227;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_1AFC0DCEC(v42);
          }

          v27 = v236;
          v65 = &v42[v47];
          v66 = *&v42[v47 + 40] + 1;
LABEL_93:
          *(v65 + 5) = v66;
          v28 = v234;
LABEL_20:
          v227 = v42;
          if (v41 == 8)
          {

            v67 = v241;
            a1 = v239;
            goto LABEL_96;
          }

          goto LABEL_21;
        }

LABEL_78:
        v62 = sub_1AFDFEE28();

        if (v62)
        {
          goto LABEL_90;
        }

        v47 += 16;
        --v46;
        v42 = v227;
        if (!v46)
        {
          goto LABEL_84;
        }
      }
    }

    sub_1AFDFDC98();
    v69 = v68;

    v67 = v241;
    if (v69)
    {
      break;
    }

LABEL_96:
    v11 = v224;
    v25 = sub_1AF758E68(v22, a1, v67);
    v26 = v70;
    if (!v70)
    {
      goto LABEL_113;
    }
  }

LABEL_112:
  v11 = v224;
LABEL_113:
  if (!v223)
  {

    v83 = v241;
LABEL_261:

    return sub_1AF439ED8(a1, v83);
  }

  v239 = a1;
  v81 = v227;
  v82 = *(v227 + 2);
  v83 = v241;
  if (v82)
  {
    v229 = "d on this device ";
    v228 = 0x80000001AFF4AEC0;
    v225 = "Failed creating ";
    v224 = v11 + 4;

    v84 = (v81 + 40);
    v222 = xmmword_1AFE431C0;
    v85 = v235;
    while (1)
    {
      v89 = *(v84 - 8);
      v90 = *v84;
      if (v89 < 3)
      {
        break;
      }

      if (v89 == 4)
      {
        v240 = v84;
        if (v90 != 3)
        {
          if (v90 != 4)
          {

            *&v244 = 0;
            *(&v244 + 1) = 0xE000000000000000;
            sub_1AFDFE218();
            LOBYTE(v243) = 4;
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0x2720746E756F6320, 0xE800000000000000);
            v243 = v90;
            v175 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v175);

            v167 = 0x347C33203D212027;
            v168 = 0xE800000000000000;
LABEL_206:
            MEMORY[0x1B2718AE0](v167, v168);
            v176 = v244;
            sub_1AFBDC8FC();
            swift_allocError();
            *v177 = v176;
            swift_willThrow();

            v75 = v239;
            v76 = v83;
            return sub_1AF439ED8(v75, v76);
          }

          v91 = 31;
          goto LABEL_130;
        }

        goto LABEL_122;
      }

      if (v89 != 5)
      {
        goto LABEL_118;
      }

      if ((v90 - 1) >= 3)
      {

        *&v244 = 0;
        *(&v244 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        LOBYTE(v243) = 5;
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](0x2720746E756F6320, 0xE800000000000000);
        v243 = v90;
        v169 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v169);

        v167 = 0x327C31203D212027;
        v168 = 0xEA0000000000337CLL;
        goto LABEL_206;
      }

      v240 = v84;
      v91 = v90 + 27;
LABEL_130:
      *&v244 = 0;
      *(&v244 + 1) = 0xE000000000000000;
      MEMORY[0x1B2718AE0](0x2D656863616370, 0xE700000000000000);
      LODWORD(v237) = v89;
      LOBYTE(v243) = v89;
      sub_1AFDFE458();
      v92 = v244;
      v236 = v91;
      v93 = (4 * v91 - 108) * v226;
      v94 = *(v223 + 16);

      v95 = v93;
      BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v94, v93, 0);
      v238 = v82;
      if (BufferWithLength)
      {
        v97 = BufferWithLength;
        v98 = sub_1AFDFCEC8();

        [v97 setLabel_];
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v244 = 0;
        *(&v244 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000001DLL, v229 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](v92, *(&v92 + 1));

        MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
        v243 = v93;
        v99 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v99);

        MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
        v243 = 0;
        type metadata accessor for MTLResourceOptions(0);
        sub_1AFDFE458();
        v100 = v244;
        v101 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v134 = v101;
          swift_once();
          v101 = v134;
        }

        *&v244 = 0;
        sub_1AF0D4F18(v101, &v244, v100, *(&v100 + 1));

        *&v244 = 0xD000000000000010;
        *(&v244 + 1) = v228;
        MEMORY[0x1B2718AE0](v92, *(&v92 + 1));
        MEMORY[0x1B2718AE0](0xD000000000000013, v225 | 0x8000000000000000);
        v243 = v93;
        v102 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v102);

        v103 = v244;
        v104 = sub_1AFDFDA08();
        v236 = *(&v92 + 1);
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        sub_1AFAD0308(0, &qword_1ED730B50, &qword_1ED730B40);
        v105 = swift_allocObject();
        *(v105 + 16) = v222;
        *(v105 + 56) = MEMORY[0x1E69E6158];
        *(v105 + 64) = sub_1AF0D544C();
        *(v105 + 32) = v103;

        sub_1AFDFC4C8();

        LODWORD(v234) = v104;
        v106 = v230;
        sub_1AFDFC288();
        v107 = v232;
        v108 = *(v233 + 48);
        v109 = *(v233 + 64);
        v110 = (v232 + *(v233 + 80));
        (*v224)(v232, v106, v231);
        *(v107 + v108) = v234;
        *(v107 + v109) = 0;
        *v110 = v103;

        sub_1AFDFC608();

        sub_1AFBDDB6C(v107, sub_1AF0D4E74);

        v97 = 0;
        v95 = 0;
        v236 = 0;
        v85 = v235;
        v82 = v238;
      }

      if (v237 > 2)
      {
        if (v237 == 3)
        {
          v112 = 0x7461746E6569726FLL;
          v111 = 0xEB000000006E6F69;
          if (v97)
          {
            goto LABEL_149;
          }
        }

        else if (v237 == 4)
        {
          v111 = 0xE500000000000000;
          v112 = 0x726F6C6F63;
          if (v97)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v111 = 0xE400000000000000;
          v112 = 1702521203;
          if (v97)
          {
LABEL_149:
            v234 = v97;
            v237 = v95;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v244 = *v85;
            v114 = v244;
            v115 = sub_1AF419914(v112, v111);
            v116 = v111;
            v118 = v117;
            v119 = *(v114 + 16) + ((v117 & 1) == 0);
            if (*(v114 + 24) >= v119)
            {
              v121 = v111;
              v120 = v112;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1AF84FE04();
              }
            }

            else
            {
              sub_1AF841984(v119, isUniquelyReferenced_nonNull_native);
              v120 = v112;
              v121 = v116;
              v122 = sub_1AF419914(v112, v116);
              if ((v118 & 1) != (v123 & 1))
              {
                goto LABEL_273;
              }

              v115 = v122;
            }

            v124 = v238;
            v125 = v244;
            if (v118)
            {
              v126 = (*(v244 + 56) + 32 * v115);
              *v126 = v234;
              v126[1] = 0;
              v127 = v236;
              v126[2] = v237;
              v126[3] = v127;

              swift_unknownObjectRelease();
            }

            else
            {
              *(v244 + 8 * (v115 >> 6) + 64) |= 1 << v115;
              v86 = (v125[6] + 16 * v115);
              *v86 = v120;
              v86[1] = v121;
              v87 = (v125[7] + 32 * v115);
              *v87 = v234;
              v87[1] = 0;
              v88 = v236;
              v87[2] = v237;
              v87[3] = v88;
              ++v125[2];
            }

            v85 = v235;
            *v235 = v125;
            v84 = v240;
            v83 = v241;
            v82 = v124;
            goto LABEL_118;
          }
        }
      }

      else if (v237)
      {
        if (v237 == 1)
        {
          v111 = 0xE800000000000000;
          v112 = 0x797469636F6C6576;
          if (v97)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v111 = 0xE600000000000000;
          v112 = 0x6C616D726F6ELL;
          if (v97)
          {
            goto LABEL_149;
          }
        }
      }

      else
      {
        v111 = 0xE800000000000000;
        v112 = 0x6E6F697469736F70;
        if (v97)
        {
          goto LABEL_149;
        }
      }

      v128 = sub_1AF419914(v112, v111);
      v130 = v129;

      v84 = v240;
      v83 = v241;
      if (v130)
      {
        v131 = v240;
        v132 = swift_isUniquelyReferenced_nonNull_native();
        v133 = *v85;
        *&v244 = *v85;
        if (!v132)
        {
          sub_1AF84FE04();
          v133 = v244;
        }

        swift_unknownObjectRelease();
        sub_1AF6B512C(v128, v133);
        *v85 = v133;
        v84 = v131;
      }

LABEL_118:
      v84 += 2;
      v82 = (v82 - 1);
      if (!v82)
      {
        goto LABEL_167;
      }
    }

    if (v90 != 3)
    {

      *&v244 = 0;
      *(&v244 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      LOBYTE(v243) = v89;
      sub_1AFDFE458();
      MEMORY[0x1B2718AE0](0x2720746E756F6320, 0xE800000000000000);
      v243 = v90;
      v166 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v166);

      v167 = 0x33203D212027;
      v168 = 0xE600000000000000;
      goto LABEL_206;
    }

    v240 = v84;
LABEL_122:
    v91 = 30;
    goto LABEL_130;
  }

  v85 = v235;
LABEL_167:
  v85[3] = v226;
  v135 = *v85;
  if (!*(*v85 + 16))
  {
    *&v222 = 0;
    v218 = 0;
    v220 = 0;
    v219 = 0;
    v224 = 0;
    v221 = 0;
    LODWORD(v228) = 1;
    a1 = v239;
    if (!*(v135 + 16))
    {
      goto LABEL_218;
    }

    goto LABEL_214;
  }

  v136 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
  a1 = v239;
  if (v137)
  {
    v138 = *(v135 + 56) + 32 * v136;
    if (*(v138 + 24) == 30)
    {
      v140 = *v138;
      v139 = *(v138 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] != 2)
      {
        v170 = [v140 contents];
        v171 = v140;
        swift_unknownObjectRelease();
        v220 = &v170[v139];
        v83 = v241;
        if (*(v135 + 16))
        {
          goto LABEL_173;
        }

LABEL_202:
        *&v222 = 0;
        v218 = 0;
        v172 = &v244 + 8;
        goto LABEL_209;
      }

      swift_unknownObjectRelease_n();
    }
  }

  v220 = 0;
  if (!*(v135 + 16))
  {
    goto LABEL_202;
  }

LABEL_173:
  v141 = sub_1AF419914(0x797469636F6C6576, 0xE800000000000000);
  if (v142)
  {
    v143 = *(v135 + 56) + 32 * v141;
    if (*(v143 + 24) == 30)
    {
      v145 = *v143;
      v144 = *(v143 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] != 2)
      {
        v173 = [v145 contents];
        v174 = v145;
        swift_unknownObjectRelease();
        v219 = &v173[v144];
        v83 = v241;
        if (*(v135 + 16))
        {
          goto LABEL_178;
        }

LABEL_204:
        *&v222 = 0;
        v172 = &v244;
        goto LABEL_209;
      }

      swift_unknownObjectRelease_n();
    }
  }

  v219 = 0;
  if (!*(v135 + 16))
  {
    goto LABEL_204;
  }

LABEL_178:
  v146 = sub_1AF419914(0x6C616D726F6ELL, 0xE600000000000000);
  if (v147)
  {
    v148 = *(v135 + 56) + 32 * v146;
    if (*(v148 + 24) == 30)
    {
      v150 = *v148;
      v149 = *(v148 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] != 2)
      {
        v178 = [v150 contents];
        v179 = v150;
        swift_unknownObjectRelease();
        v218 = &v178[v149];
        v83 = v241;
        if (*(v135 + 16))
        {
          goto LABEL_183;
        }

        goto LABEL_208;
      }

      swift_unknownObjectRelease_n();
    }
  }

  v218 = 0;
  if (!*(v135 + 16))
  {
LABEL_208:
    v172 = &v246;
LABEL_209:
    *(v172 - 32) = 0;
    v224 = 0;
    v221 = 0;
    LODWORD(v228) = 1;
    if (!*(v135 + 16))
    {
      goto LABEL_218;
    }

    goto LABEL_214;
  }

LABEL_183:
  v151 = sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
  if (v152)
  {
    v153 = *(v135 + 56) + 32 * v151;
    if (*(v153 + 24) == 31)
    {
      v155 = *v153;
      v154 = *(v153 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] != 2)
      {
        v180 = [v155 contents];
        v181 = v155;
        swift_unknownObjectRelease();
        LODWORD(v228) = 0;
        v224 = &v180[v154];
        v83 = v241;
        if (*(v135 + 16))
        {
          goto LABEL_188;
        }

LABEL_212:
        *&v222 = 0;
        goto LABEL_213;
      }

      swift_unknownObjectRelease_n();
    }
  }

  v224 = 0;
  LODWORD(v228) = 1;
  if (!*(v135 + 16))
  {
    goto LABEL_212;
  }

LABEL_188:
  v156 = sub_1AF419914(1702521203, 0xE400000000000000);
  if (v157)
  {
    v158 = *(v135 + 56) + 32 * v156;
    if (*(v158 + 24) == 28)
    {
      v160 = *v158;
      v159 = *(v158 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] != 2)
      {
        v209 = [v160 contents];
        v210 = v160;
        swift_unknownObjectRelease();
        *&v222 = &v209[v159];
        if (*(v135 + 16))
        {
          goto LABEL_193;
        }

        goto LABEL_213;
      }

      swift_unknownObjectRelease_n();
    }
  }

  *&v222 = 0;
  if (*(v135 + 16))
  {
LABEL_193:
    v161 = sub_1AF419914(1702521203, 0xE400000000000000);
    if (v162)
    {
      v163 = *(v135 + 56) + 32 * v161;
      if (*(v163 + 24) == 29)
      {
        v165 = *v163;
        v164 = *(v163 + 8);
        if ([swift_unknownObjectRetain_n() storageMode] != 2)
        {
          v211 = [v165 contents];
          v212 = v165;
          swift_unknownObjectRelease();
          v221 = &v211[v164];
          if (!*(v135 + 16))
          {
            goto LABEL_218;
          }

          goto LABEL_214;
        }

        swift_unknownObjectRelease_n();
      }
    }
  }

LABEL_213:
  v221 = 0;
  if (!*(v135 + 16))
  {
LABEL_218:
    v217 = 0;
    goto LABEL_219;
  }

LABEL_214:
  v182 = sub_1AF419914(1702521203, 0xE400000000000000);
  if ((v183 & 1) == 0)
  {
    goto LABEL_218;
  }

  v184 = *(v135 + 56) + 32 * v182;
  if (*(v184 + 24) != 30)
  {
    goto LABEL_218;
  }

  v186 = *v184;
  v185 = *(v184 + 8);
  if ([swift_unknownObjectRetain_n() storageMode] == 2)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_218;
  }

  v207 = [v186 contents];
  v208 = v186;
  swift_unknownObjectRelease();
  v217 = &v207[v185];
LABEL_219:
  if (!v226)
  {
LABEL_260:

    goto LABEL_261;
  }

  v232 = 0;
  v187 = *(v227 + 2);
  v234 = v227 + 32;
  v235 = v187;
  v188 = v83 >> 62;
  v240 = a1;
  __asm { FMOV            V0.4S, #1.0 }

  v233 = _Q0;
  while (!v235)
  {
LABEL_221:
    if (++v232 == v226)
    {
      goto LABEL_260;
    }
  }

  v194 = 0;
  v225 = &v217[12 * v232];
  v231 = &v218[12 * v232];
  v230 = &v219[12 * v232];
  v229 = &v220[12 * v232];
LABEL_228:
  v197 = &v234[16 * v194];
  v198 = *v197;
  v199 = *(v197 + 1);
  if (v199)
  {
    LODWORD(v237) = v198;
    v200 = 0;
    v201 = v199;
    v202 = v233;
    v238 = v199;
    v236 = v22 + 4 * v199;
    while (1)
    {
      if (v188 > 1)
      {
        if (v188 == 2)
        {
          v241 = v202;
          v204 = *(a1 + 16);
          v205 = sub_1AFDFBDB8();
          if (v205)
          {
            v205 = v205 + v204 - sub_1AFDFBDE8();
          }

          sub_1AFDFBDD8();
          v203 = *(v205 + v22);
          a1 = v239;
          v202 = v241;
          goto LABEL_232;
        }

        *(&v244 + 6) = 0;
        *&v244 = 0;
      }

      else
      {
        if (v188)
        {
          v241 = v202;
          v206 = sub_1AFDFBDB8();
          if (v206)
          {
            v206 = v240 + v206 - sub_1AFDFBDE8();
          }

          sub_1AFDFBDD8();
          v203 = *(v206 + v22);
          v202 = v241;
          goto LABEL_232;
        }

        LOBYTE(v244) = v240;
        BYTE1(v244) = BYTE1(a1);
        BYTE2(v244) = BYTE2(a1);
        BYTE3(v244) = BYTE3(a1);
        BYTE4(v244) = BYTE4(a1);
        BYTE5(v244) = BYTE5(a1);
        BYTE6(v244) = BYTE6(a1);
        BYTE7(v244) = HIBYTE(a1);
        WORD4(v244) = v83;
        BYTE10(v244) = BYTE2(v83);
        BYTE11(v244) = BYTE3(v83);
        BYTE12(v244) = BYTE4(v83);
        BYTE13(v244) = BYTE5(v83);
      }

      v203 = *(&v244 + v22);
LABEL_232:
      v22 += 4;
      v242 = v202;
      *(&v242 & 0xFFFFFFFFFFFFFFF3 | (4 * (v200 & 3))) = v203;
      v202 = v242;
      ++v200;
      v201 = (v201 - 1);
      if (!v201)
      {
        v22 = v236;
        v199 = v238;
        v198 = v237;
        if (v237 > 1)
        {
          goto LABEL_244;
        }

LABEL_251:
        if (!v198)
        {
          v195 = &v248;
          goto LABEL_225;
        }

        if (v198 == 1)
        {
          v195 = &v249;
          goto LABEL_225;
        }

LABEL_227:
        if (++v194 == v235)
        {
          goto LABEL_221;
        }

        goto LABEL_228;
      }
    }
  }

  v202 = v233;
  if (v198 <= 1)
  {
    goto LABEL_251;
  }

LABEL_244:
  if (v198 == 2)
  {
    v196 = v231;
LABEL_226:
    *v196 = v202;
    *(v196 + 8) = DWORD2(v202);
    goto LABEL_227;
  }

  if (v198 == 4)
  {
    if ((v228 & 1) == 0)
    {
      *&v224[2 * v232] = v202;
    }

    goto LABEL_227;
  }

  if (v198 != 5)
  {
    goto LABEL_227;
  }

  if (v199 == 3)
  {
    v195 = &v247;
LABEL_225:
    v196 = *(v195 - 32);
    goto LABEL_226;
  }

  if (v199 == 2)
  {
    *&v221[8 * v232] = v202;
    goto LABEL_227;
  }

  if (v199 == 1)
  {
    *(v222 + 4 * v232) = v202;
    goto LABEL_227;
  }

  sub_1AFDFE518();
  __break(1u);
LABEL_273:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

unint64_t sub_1AFBDC8FC()
{
  result = qword_1EB643358;
  if (!qword_1EB643358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643358);
  }

  return result;
}

unint64_t sub_1AFBDC950()
{
  result = qword_1EB643360;
  if (!qword_1EB643360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643360);
  }

  return result;
}

uint64_t sub_1AFBDC9A4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 32);
  sub_1AF3CB184(v1, v23);
  if (v24)
  {
    v2 = v25;
    if (!v25)
    {
      goto LABEL_6;
    }

    Class = object_getClass(v25);
    if (Class == _TtC3VFX13PBRParameters)
    {
      swift_unknownObjectRetain();
      sub_1AFBDD920(v23, &qword_1ED7220C0, &type metadata for Material);
      v9 = v2[4];
    }

    else
    {
      if (Class != _TtC3VFX16PrelitParameters)
      {
LABEL_6:
        sub_1AF3CA6C0(v1, v10);
        v20 = v10[12];
        v21 = v10[13];
        v22 = v10[14];
        v16 = v10[8];
        v17 = v10[9];
        v18 = v10[10];
        v19 = v10[11];
        v12 = v10[4];
        v13 = v10[5];
        v14 = v10[6];
        v15 = v10[7];
        v11[0] = v10[0];
        v11[1] = v10[1];
        v11[2] = v10[2];
        v11[3] = v10[3];
        if (sub_1AF448314(v11) == 1)
        {
          sub_1AFBDD920(v23, &qword_1ED7220C0, &type metadata for Material);
        }

        else if (*(v12 + 16))
        {
          v6 = *(v12 + 32);
          v5 = *(v12 + 40);
          v7 = *(v12 + 48);
          v8 = *(v12 + 56);

          sub_1AF64E4D0(v6, v5, v7, v8);
          sub_1AFBDD920(v10, &qword_1ED7255C8, &type metadata for MaterialRuntime);
          sub_1AFBDD920(v23, &qword_1ED7220C0, &type metadata for Material);

          if (v8 == 2)
          {
            return v6;
          }

          sub_1AF88DCFC(v6, v5, v7, v8);
        }

        else
        {

          sub_1AFBDD920(v10, &qword_1ED7255C8, &type metadata for MaterialRuntime);
          sub_1AFBDD920(v23, &qword_1ED7220C0, &type metadata for Material);
        }

        return 0;
      }

      swift_unknownObjectRetain();
      sub_1AFBDD920(v23, &qword_1ED7220C0, &type metadata for Material);
      v9 = v2[2];
    }

    swift_unknownObjectRelease();
    return v9;
  }

  return 0;
}

uint64_t sub_1AFBDCC00@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF0D4E74();
  v145 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v144 = v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v143, v7);
  v142 = v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[3])
  {
LABEL_94:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v135 = a2;
  v10 = a1[5];
  v11 = a1[6];
  v12 = *(v10 + 16);
  v137 = a1;
  v138 = v11;
  v147 = v12;
  if (v12)
  {
    v146 = v10 + 32;
    v140 = (v8 + 32);
    v141 = 0x80000001AFF4B020;
    v134[1] = v10;

    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v139 = xmmword_1AFE431C0;
    while (1)
    {
      v15 = (v146 + 176 * v13);
      v16 = *v15;
      v17 = v15[2];
      v155 = v15[1];
      v156 = v17;
      v154 = v16;
      v18 = v15[3];
      v19 = v15[4];
      v20 = v15[6];
      v159 = v15[5];
      v160 = v20;
      v157 = v18;
      v158 = v19;
      v21 = v15[7];
      v22 = v15[8];
      v23 = v15[10];
      v163 = v15[9];
      v164 = v23;
      v161 = v21;
      v162 = v22;
      if (v154 != 3)
      {
        sub_1AF6E52F0(&v154, &v150);
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v41 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v148 = v13;
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        sub_1AFAD0308(0, &qword_1ED730B50, &qword_1ED730B40);
        v42 = swift_allocObject();
        *(v42 + 16) = v139;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = sub_1AF0D544C();
        v43 = v141;
        *(v42 + 32) = 0xD00000000000001CLL;
        *(v42 + 40) = v43;
        sub_1AFDFC4C8();

        v44 = v142;
        sub_1AFDFC288();
        v45 = v144;
        v46 = v145[12];
        v47 = v145[16];
        v48 = &v144[v145[20]];
        (*v140)(v144, v44, v143);
        *(v45 + v46) = v41;
        *(v45 + v47) = 0;
        *v48 = 0xD00000000000001CLL;
        *(v48 + 1) = v43;
        sub_1AFDFC608();

        sub_1AF6E534C(&v154);
        sub_1AFBDDB6C(v45, sub_1AF0D4E74);
        v13 = v148;
        goto LABEL_5;
      }

      v24 = v156;
      if (v156)
      {
        v25 = *(&v158 + 1);
        v26 = *(&v156 + 1);
        if (v159 == 4)
        {
          swift_unknownObjectRetain_n();
          sub_1AF6E52F0(&v154, &v150);
          if ([v24 storageMode] == 2)
          {
            goto LABEL_94;
          }

          v27 = [v24 contents];
          v28 = v24;
          if (v25 > 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1AF427FC4(0, *(v14 + 2) + 1, 1, v14);
            }

            v29 = 0;
            v30 = &v27[v26];
            v31 = *(v14 + 2);
            v32 = 24 * v31;
            do
            {
              if (__OFADD__(v29, 3))
              {
                v33 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v29 + 3;
              }

              v34 = &v30[4 * v29];
              v35 = *v34;
              v36 = *(v34 + 2);
              v37 = *(v14 + 3);
              v38 = v31 + 1;
              if (v31 >= v37 >> 1)
              {
                v14 = sub_1AF427FC4(v37 > 1, v31 + 1, 1, v14);
              }

              *&v39 = v35;
              *(&v39 + 1) = HIDWORD(v35);
              *(v14 + 2) = v38;
              v40 = &v14[v32];
              *(v40 + 2) = v39;
              *(v40 + 6) = v36;
              v32 += 24;
              v31 = v38;
              v29 = v33;
            }

            while (v33 < v25);
          }
        }

        else
        {
          if (v159 != 2)
          {
            goto LABEL_94;
          }

          swift_unknownObjectRetain_n();
          sub_1AF6E52F0(&v154, &v150);
          if ([v24 storageMode] == 2)
          {
            goto LABEL_94;
          }

          v49 = [v24 contents];
          v50 = v24;
          if (v25 > 0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v148 = v13;
            v136 = v24;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v14 = sub_1AF427FC4(0, *(v14 + 2) + 1, 1, v14);
            }

            v52 = 0;
            v53 = &v49[v26];
            v54 = *(v14 + 2);
            v55 = 24 * v54;
            do
            {
              if (__OFADD__(v52, 3))
              {
                v56 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v56 = v52 + 3;
              }

              v57 = &v53[2 * v52];
              v58 = *v57;
              v59 = *(v57 + 1);
              v60 = *(v57 + 2);
              v61 = *(v14 + 3);
              v62 = v54 + 1;
              if (v54 >= v61 >> 1)
              {
                v14 = sub_1AF427FC4(v61 > 1, v54 + 1, 1, v14);
              }

              *(v14 + 2) = v62;
              v63 = &v14[v55];
              *(v63 + 4) = v58;
              *(v63 + 5) = v59;
              *(v63 + 6) = v60;
              v55 += 24;
              v54 = v62;
              v52 = v56;
            }

            while (v56 < v25);
            swift_unknownObjectRelease();
            sub_1AF6E534C(&v154);
            v13 = v148;
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();
        sub_1AF6E534C(&v154);
      }

LABEL_5:
      if (++v13 == v147)
      {

        v11 = v138;
        goto LABEL_43;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v64 = 16 * v11;
  v65 = 8 * v11;
  if (v11 < 1)
  {
    if (!v11)
    {
      sub_1AF8C4D20(0);
      v90 = 1;
      sub_1AF8C4D20(1);
      sub_1AF8C4D20(2);
      v84 = MEMORY[0x1E69E7CC0];
      v76 = MEMORY[0x1E69E7CC0];
      v148 = MEMORY[0x1E69E7CC0];
      if (v138 < 1)
      {
        goto LABEL_68;
      }

LABEL_65:
      sub_1AFBDEAB4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      v91 = sub_1AFDFD488();
      *(v91 + 16) = v138;
      if ((v90 & 1) == 0)
      {
        goto LABEL_69;
      }

LABEL_66:
      sub_1AF8C4D20(4);
      v92 = v138;
      goto LABEL_72;
    }

    v67 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v66 = v11;
    sub_1AFBDEAB4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v67 = sub_1AFDFD488();
    *(v67 + 16) = v66;
  }

  v68 = (v67 + 32);
  bzero((v67 + 32), v64);
  v69 = sub_1AF8C4D20(0);
  v71 = v138;
  if (v69)
  {
    v72 = (v69 + 8);
    v73 = v138;
    do
    {
      *&v74 = *(v72 - 1);
      DWORD2(v74) = *v72;
      v72 = (v72 + v70);
      *(&v74 + 1) = DWORD2(v74);
      *v68++ = v74;
      --v73;
    }

    while (v73);
  }

  v148 = v67;
  if (v71 < 1)
  {
    v76 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v75 = v71;
    sub_1AFBDEAB4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v76 = sub_1AFDFD488();
    *(v76 + 16) = v75;
  }

  v77 = (v76 + 32);
  bzero((v76 + 32), v64);
  v78 = sub_1AF8C4D20(1);
  v80 = v138;
  if (v78)
  {
    v81 = (v78 + 8);
    v82 = v138;
    do
    {
      *&v83 = *(v81 - 1);
      DWORD2(v83) = *v81;
      v81 = (v81 + v79);
      *(&v83 + 1) = DWORD2(v83);
      *v77++ = v83;
      --v82;
    }

    while (v82);
  }

  if (v80 < 1)
  {
    v84 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AFBDEAB4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v84 = sub_1AFDFD488();
    *(v84 + 16) = v80;
  }

  bzero((v84 + 32), v65);
  v85 = sub_1AF8C4D20(2);
  if (!v85)
  {
    v90 = 0;
    if (v138 < 1)
    {
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  v87 = 32;
  v88 = v138;
  v89 = v138;
  do
  {
    *(v84 + v87) = *v85;
    v85 = (v85 + v86);
    v87 += 8;
    --v89;
  }

  while (v89);
  v90 = 0;
  if (v88 >= 1)
  {
    goto LABEL_65;
  }

LABEL_68:
  v91 = MEMORY[0x1E69E7CC0];
  if (v90)
  {
    goto LABEL_66;
  }

LABEL_69:
  v93 = (v91 + 32);
  memset_pattern16((v91 + 32), &xmmword_1AFE21160, v64);
  v94 = sub_1AF8C4D20(4);
  v92 = v138;
  if (v94)
  {
    v96 = v138;
    do
    {
      *v93++ = *v94;
      v94 = (v94 + v95);
      --v96;
    }

    while (v96);
  }

LABEL_72:
  v97 = v65;
  if (v92 < 1)
  {
    v98 = MEMORY[0x1E69E7CC0];
    if (v90)
    {
      goto LABEL_74;
    }
  }

  else
  {
    sub_1AFBDEAB4(0, &qword_1ED72F6D8, sub_1AF477AB8, MEMORY[0x1E69E7290], MEMORY[0x1E69E74A8]);
    v98 = sub_1AFDFD488();
    *(v98 + 16) = v138;
    if (v90)
    {
LABEL_74:
      sub_1AF8C4D20(9);
      v99 = v138;
      goto LABEL_79;
    }
  }

  v100 = (v98 + 32);
  bzero((v98 + 32), v97);
  v101 = sub_1AF8C4D20(9);
  v99 = v138;
  if (v101)
  {
    v103 = v138;
    do
    {
      *v100++ = *v101;
      v101 = (v101 + v102);
      --v103;
    }

    while (v103);
  }

LABEL_79:
  if (v99 < 1)
  {
    v104 = MEMORY[0x1E69E7CC0];
    if (v90)
    {
      goto LABEL_81;
    }

LABEL_83:
    v106 = v64;
    v105 = v76;
    v107 = (v104 + 32);
    bzero((v104 + 32), v106);
    v108 = sub_1AF8C4D20(8);
    v110 = v138;
    if (v108)
    {
      do
      {
        *v107++ = *v108;
        v108 = (v108 + v109);
        --v110;
      }

      while (v110);
    }

    goto LABEL_85;
  }

  sub_1AFBDEAB4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v104 = sub_1AFDFD488();
  *(v104 + 16) = v138;
  if ((v90 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_81:
  v105 = v76;
  sub_1AF8C4D20(8);
LABEL_85:
  v111 = *(v14 + 2);
  v112 = sub_1AFDFD488();
  v113 = v112;
  *(v112 + 16) = v111 + 1;
  *(v112 + 32) = 0;
  if (v111)
  {
    bzero((v112 + 36), 4 * v111);
  }

  v114 = *(v14 + 2);
  v115 = v148;
  if (v114)
  {
    v116 = v148 + 32;
    v117 = (v113 + 36);
    v118 = (v14 + 48);
    do
    {
      v119 = *(v118 - 2);
      v120 = *(v118 - 1);
      v121 = *v118;
      v118 += 3;
      v122 = *(v116 + 16 * v119);
      v123 = vsubq_f32(*(v116 + 16 * v120), v122);
      v124 = vsubq_f32(*(v116 + 16 * v121), v122);
      v125 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v123, v123), v123, 0xCuLL), vnegq_f32(v124)), v123, vextq_s8(vuzp1q_s32(v124, v124), v124, 0xCuLL));
      v126 = vmulq_f32(v125, v125);
      *v117++ = sqrtf(v126.f32[1] + (v126.f32[2] + v126.f32[0])) * 0.5;
      --v114;
    }

    while (v114);
    v127 = *(v14 + 2);
    if (v127)
    {
      v128 = *(v113 + 32);
      v129 = (v113 + 36);
      do
      {
        v128 = v128 + *v129;
        *v129++ = v128;
        --v127;
      }

      while (v127);
    }
  }

  *&v150 = v115;
  *(&v150 + 1) = v105;
  *&v151 = v91;
  *(&v151 + 1) = v84;
  *&v152 = v98;
  *(&v152 + 1) = v104;
  *&v153 = v14;
  *(&v153 + 1) = v113;
  *&v154 = v115;
  *(&v154 + 1) = v105;
  *&v155 = v91;
  *(&v155 + 1) = v84;
  *&v156 = v98;
  *(&v156 + 1) = v104;
  *&v157 = v14;
  *(&v157 + 1) = v113;
  sub_1AFBDD9F4(&v150, v149);
  result = sub_1AFBDD8F0(&v154);
  v131 = v151;
  v132 = v135;
  *v135 = v150;
  v132[1] = v131;
  v133 = v153;
  v132[2] = v152;
  v132[3] = v133;
  return result;
}

uint64_t sub_1AFBDD920(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFBDE384(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AFBDD990()
{
  if (!qword_1EB638598)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638598);
    }
  }
}

unint64_t sub_1AFBDDA2C()
{
  result = qword_1EB643370;
  if (!qword_1EB643370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643370);
  }

  return result;
}

void sub_1AFBDDA80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AFBDDAE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1AFBDDA80(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFBDDB6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AFBDDC14()
{
  result = qword_1EB643398;
  if (!qword_1EB643398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643398);
  }

  return result;
}

unint64_t sub_1AFBDDC68()
{
  result = qword_1EB6433B0;
  if (!qword_1EB6433B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6433B0);
  }

  return result;
}

unint64_t sub_1AFBDDCBC()
{
  result = qword_1EB6433B8;
  if (!qword_1EB6433B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6433B8);
  }

  return result;
}

unint64_t sub_1AFBDDD10()
{
  result = qword_1EB6433C8;
  if (!qword_1EB6433C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6433C8);
  }

  return result;
}

unint64_t sub_1AFBDDD64()
{
  result = qword_1EB6433D8;
  if (!qword_1EB6433D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6433D8);
  }

  return result;
}

void *assignWithCopy for MeshData(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  return a1;
}

uint64_t getEnumTagSinglePayload for PCacheError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PCacheError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TypedBufferSlice(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  return a1;
}

void *assignWithCopy for TypedBufferSlice(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for TypedBufferSlice(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *initializeWithCopy for PointCacheRuntime(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for PointCacheRuntime(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

void *assignWithTake for PointCacheRuntime(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  a1[3] = a2[3];
  return a1;
}

uint64_t getEnumTagSinglePayload for PointCacheEmitter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 36))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PointCacheEmitter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AFBDE320(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AFBDE384(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AFBDE384(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AFBDE3D8()
{
  result = qword_1EB643408;
  if (!qword_1EB643408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643408);
  }

  return result;
}

unint64_t sub_1AFBDE430()
{
  result = qword_1EB643410;
  if (!qword_1EB643410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643410);
  }

  return result;
}

unint64_t sub_1AFBDE488()
{
  result = qword_1EB643418;
  if (!qword_1EB643418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643418);
  }

  return result;
}

unint64_t sub_1AFBDE4E0()
{
  result = qword_1EB643420;
  if (!qword_1EB643420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643420);
  }

  return result;
}

unint64_t sub_1AFBDE538()
{
  result = qword_1EB643428;
  if (!qword_1EB643428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643428);
  }

  return result;
}

unint64_t sub_1AFBDE594()
{
  result = qword_1EB643430;
  if (!qword_1EB643430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643430);
  }

  return result;
}

unint64_t sub_1AFBDE5EC()
{
  result = qword_1EB643438;
  if (!qword_1EB643438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643438);
  }

  return result;
}

unint64_t sub_1AFBDE644()
{
  result = qword_1EB643440;
  if (!qword_1EB643440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643440);
  }

  return result;
}

unint64_t sub_1AFBDE69C()
{
  result = qword_1EB643448;
  if (!qword_1EB643448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643448);
  }

  return result;
}

unint64_t sub_1AFBDE6F4()
{
  result = qword_1EB643450;
  if (!qword_1EB643450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643450);
  }

  return result;
}

unint64_t sub_1AFBDE74C()
{
  result = qword_1EB643458;
  if (!qword_1EB643458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643458);
  }

  return result;
}

unint64_t sub_1AFBDE7A4()
{
  result = qword_1EB643460;
  if (!qword_1EB643460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643460);
  }

  return result;
}

unint64_t sub_1AFBDE7FC()
{
  result = qword_1EB643468;
  if (!qword_1EB643468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643468);
  }

  return result;
}

unint64_t sub_1AFBDE854()
{
  result = qword_1EB643470;
  if (!qword_1EB643470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643470);
  }

  return result;
}

unint64_t sub_1AFBDE8AC()
{
  result = qword_1EB643478;
  if (!qword_1EB643478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643478);
  }

  return result;
}

unint64_t sub_1AFBDE904()
{
  result = qword_1EB643480;
  if (!qword_1EB643480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643480);
  }

  return result;
}

unint64_t sub_1AFBDE95C()
{
  result = qword_1EB643488;
  if (!qword_1EB643488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643488);
  }

  return result;
}

unint64_t sub_1AFBDE9B4()
{
  result = qword_1EB643490;
  if (!qword_1EB643490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643490);
  }

  return result;
}

unint64_t sub_1AFBDEA0C()
{
  result = qword_1EB643498;
  if (!qword_1EB643498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643498);
  }

  return result;
}

unint64_t sub_1AFBDEA60()
{
  result = qword_1EB6434A8;
  if (!qword_1EB6434A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6434A8);
  }

  return result;
}

void sub_1AFBDEAB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AFBDEB30()
{
  result = qword_1EB6434B8;
  if (!qword_1EB6434B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6434B8);
  }

  return result;
}

unint64_t sub_1AFBDEB88()
{
  result = qword_1EB6434C0;
  if (!qword_1EB6434C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6434C0);
  }

  return result;
}

unint64_t sub_1AFBDEBE0()
{
  result = qword_1EB6434C8;
  if (!qword_1EB6434C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6434C8);
  }

  return result;
}

uint64_t sub_1AFBDEC48(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0 || a1 == 0x323374616F6C66 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    return 28;
  }

  if (a1 == 0x7261686375 && a2 == 0xE500000000000000)
  {
    return 45;
  }

  v5 = sub_1AFDFEE28();
  v7 = a1 == 0x38746E6975 && a2 == 0xE500000000000000;
  result = 45;
  if ((v5 & 1) == 0 && !v7)
  {
    if (sub_1AFDFEE28())
    {
      return 45;
    }

    if (a1 == 1918986339 && a2 == 0xE400000000000000)
    {
      return 46;
    }

    v8 = sub_1AFDFEE28();
    v9 = a1 == 947154537 && a2 == 0xE400000000000000;
    v10 = v9;
    result = 46;
    if ((v8 & 1) == 0 && !v10)
    {
      if (sub_1AFDFEE28())
      {
        return 46;
      }

      if (a1 == 0x74726F687375 && a2 == 0xE600000000000000)
      {
        return 49;
      }

      v11 = sub_1AFDFEE28();
      v12 = a1 == 0x3631746E6975 && a2 == 0xE600000000000000;
      v13 = v12;
      result = 49;
      if ((v11 & 1) == 0 && !v13)
      {
        if (sub_1AFDFEE28())
        {
          return 49;
        }

        if (a1 == 0x74726F6873 && a2 == 0xE500000000000000)
        {
          return 50;
        }

        v14 = sub_1AFDFEE28();
        v15 = a1 == 0x3631746E69 && a2 == 0xE500000000000000;
        v16 = v15;
        result = 50;
        if ((v14 & 1) == 0 && !v16)
        {
          if (sub_1AFDFEE28())
          {
            return 50;
          }

          if (a1 == 1953393013 && a2 == 0xE400000000000000)
          {
            return 36;
          }

          v17 = sub_1AFDFEE28();
          v18 = a1 == 0x3233746E6975 && a2 == 0xE600000000000000;
          v19 = v18;
          result = 36;
          if ((v17 & 1) == 0 && !v19)
          {
            if (sub_1AFDFEE28())
            {
              return 36;
            }

            if (a1 == 7630441 && a2 == 0xE300000000000000)
            {
              return 32;
            }

            v20 = sub_1AFDFEE28();
            v22 = a1 == 0x3233746E69 && a2 == 0xE500000000000000;
            result = 32;
            if ((v20 & 1) == 0 && !v22)
            {
              if ((sub_1AFDFEE28() & 1) == 0)
              {
                result = sub_1AFDFE518();
                __break(1u);
                return result;
              }

              return 32;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFBDF064(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v8 = *a8;
  if (*(*a8 + 16))
  {
    v16 = result;
    result = sub_1AF419914(result, a2);
    if (v17)
    {
      v18 = (*(v8 + 56) + 32 * result);
      if (v18[3] == 28)
      {
        if (*(v8 + 16))
        {
          v19 = *v18;
          v70 = v18[1];
          swift_unknownObjectRetain();
          v20 = sub_1AF419914(a3, a4);
          if ((v21 & 1) != 0 && (v72 = v19, v22 = (*(v8 + 56) + 32 * v20), v22[3] == 28))
          {
            v23 = *v22;
            v64 = v22[1];
            v25 = a8[2];
            v24 = a8[3];
            v73 = a8[1];
            v74 = v25;
            v69 = v23;
            swift_unknownObjectRetain();

            MEMORY[0x1B2718AE0](45, 0xE100000000000000);
            MEMORY[0x1B2718AE0](a5, a6);
            v66 = v24;
            v67 = v73;
            v26 = *(a7 + 16);
            v27 = v74;

            v68 = 8 * v24;
            BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v26, (8 * v24), 0);
            if (BufferWithLength)
            {
              v29 = BufferWithLength;
              v30 = sub_1AFDFCEC8();

              [v29 setLabel_];

              if ([swift_unknownObjectRetain() storageMode] == 2)
              {
                swift_unknownObjectRelease();
                v71 = 0;
              }

              else
              {
                v37 = [v72 contents];
                v38 = v72;
                v71 = &v70[v37];
              }

              if ([swift_unknownObjectRetain() storageMode] == 2)
              {
                swift_unknownObjectRelease();
                v65 = 0;
              }

              else
              {
                v39 = [v69 &selRef_commitImmediate];
                v40 = v69;
                v65 = &v64[v39];
              }

              if ([swift_unknownObjectRetain() storageMode] == 2)
              {
                swift_unknownObjectRelease();
                v41 = 0;
              }

              else
              {
                v41 = [v29 &selRef_commitImmediate];
                v42 = v29;
              }

              if (!v66)
              {
                goto LABEL_30;
              }

              if (v66 >= 0x18)
              {
                v43 = 0;
                v53 = 8 * (v66 - 1);
                if (&v41[v53] >= v41 && &v41[v53 + 4] >= v41 + 4 && !((v66 - 1) >> 61))
                {
                  v43 = 0;
                  v54 = &v41[8 * v66];
                  v55 = v41 >= &v65->i8[4 * v66] || v65 >= v54;
                  v56 = !v55;
                  if ((v71 >= v54 || v41 >= &v71->i8[4 * v66]) && !v56)
                  {
                    v43 = v66 & 0x3FFFFFFFFFFFFFF8;
                    v58 = (v41 + 32);
                    v59 = v71 + 1;
                    v60 = v65 + 1;
                    v61 = v66 & 0x3FFFFFFFFFFFFFF8;
                    do
                    {
                      v76.val[0] = v59[-1];
                      v77.val[0] = *v59;
                      v76.val[1] = v60[-1];
                      v77.val[1] = *v60;
                      v62 = v58 - 8;
                      vst2q_f32(v62, v76);
                      vst2q_f32(v58, v77);
                      v58 += 16;
                      v59 += 2;
                      v60 += 2;
                      v61 -= 8;
                    }

                    while (v61);
                    if (v66 == v43)
                    {
                      goto LABEL_30;
                    }
                  }
                }
              }

              else
              {
                v43 = 0;
              }

              v44 = v66 - v43;
              v45 = &v41[8 * v43 + 4];
              v46 = 4 * v43;
              v47 = &v65->i32[v43];
              v48 = (v71 + v46);
              do
              {
                v49 = *v48++;
                v50 = v49;
                v51 = *v47++;
                *(v45 - 1) = v50;
                *v45 = v51;
                v45 += 8;
                --v44;
              }

              while (v44);
LABEL_30:

              sub_1AF8264B8(0, 0, 0, 0, v16, a2);

              sub_1AF8264B8(0, 0, 0, 0, a3, a4);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v73 = *a8;
              sub_1AF85917C(v29, 0, v68, 29, a5, a6, isUniquelyReferenced_nonNull_native);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              *a8 = v73;
              return result;
            }

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v74 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
            MEMORY[0x1B2718AE0](v73, v27);

            MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
            v31 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v31);

            MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
            type metadata accessor for MTLResourceOptions(0);
            sub_1AFDFE458();
            v32 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v63 = v32;
              swift_once();
              v32 = v63;
            }

            v73 = 0;
            sub_1AF0D4F18(v32, &v73, 0, 0xE000000000000000);

            v73 = 0;
            v74 = 0xE000000000000000;
            sub_1AFDFE218();

            v73 = 0xD000000000000010;
            v74 = 0x80000001AFF4AEC0;
            MEMORY[0x1B2718AE0](v67, v27);
            MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
            v33 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v33);

            v34 = v73;
            v35 = v74;
            v36 = sub_1AFDFDA08();
            v73 = 0;
            sub_1AF0D4F18(v36, &v73, v34, v35);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {

            return swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFBDF754(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if ((a9 & 0xFFFFFFFFFFFFFFFELL) != 0x1E)
  {
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v11 = *a11;
  if (!*(*a11 + 16))
  {
    return result;
  }

  v17 = result;
  result = sub_1AF419914(result, a2);
  if ((v18 & 1) == 0)
  {
    return result;
  }

  v19 = (*(v11 + 56) + 32 * result);
  if (v19[3] != 28 || !*(v11 + 16))
  {
    return result;
  }

  v105 = a8;
  v20 = *v19;
  v102 = v19[1];
  swift_unknownObjectRetain();
  v21 = sub_1AF419914(a3, a4);
  if ((v22 & 1) == 0 || (v104 = v20, v23 = (*(v11 + 56) + 32 * v21), v23[3] != 28) || !*(v11 + 16))
  {
LABEL_16:

    return swift_unknownObjectRelease();
  }

  v24 = *v23;
  v100 = v23[1];
  swift_unknownObjectRetain();
  v25 = sub_1AF419914(a5, a6);
  if ((v26 & 1) == 0 || (v27 = (*(v11 + 56) + 32 * v25), v27[3] != 28))
  {
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v98 = v24;
  v28 = *v27;
  v92 = v27[1];
  v29 = a11[2];
  v30 = a11[3];
  v108 = a11[1];
  v109 = v29;
  v99 = v28;
  swift_unknownObjectRetain();

  MEMORY[0x1B2718AE0](45, 0xE100000000000000);
  MEMORY[0x1B2718AE0](a7, v105);
  v95 = v108;
  v93 = v30;
  v31 = sub_1AF471A88(a9) * v30;
  v32 = *(a10 + 16);

  v97 = v31;
  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v32, v31, 0);
  if (BufferWithLength)
  {
    v34 = BufferWithLength;
    v35 = sub_1AFDFCEC8();

    v94 = v34;
    [v34 setLabel_];

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v103 = 0;
    }

    else
    {
      v42 = [v104 contents];
      v43 = v104;
      v103 = &v102[v42];
    }

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v101 = 0;
    }

    else
    {
      v44 = [v98 contents];
      v45 = v98;
      v101 = &v100[v44];
    }

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v96 = 0;
    }

    else
    {
      v46 = [v99 contents];
      v47 = v99;
      v96 = &v92[v46];
    }

    v48 = swift_unknownObjectRetain();
    v49 = [v48 storageMode];
    if (a9 != 30)
    {
      if (v49 == 2)
      {
        swift_unknownObjectRelease();
        v51 = 0;
      }

      else
      {
        v51 = [v48 contents];
        v65 = v48;
      }

      v66 = v93;
      v68 = v101;
      v67 = v103;
      v69 = v96;
      if (v93)
      {
        __asm { FMOV            V0.4S, #1.0 }

        do
        {
          HIDWORD(v74) = HIDWORD(_Q0);
          LODWORD(v74) = v67->i32[0];
          v67 = (v67 + 4);
          DWORD1(v74) = v68->i32[0];
          v68 = (v68 + 4);
          DWORD2(v74) = v69->i32[0];
          v69 = (v69 + 4);
          *v51++ = v74;
          --v66;
        }

        while (v66);
      }

      goto LABEL_47;
    }

    if (v49 == 2)
    {
      swift_unknownObjectRelease();
      v50 = 0;
    }

    else
    {
      v50 = [v48 contents];
      v52 = v48;
    }

    if (v93)
    {
      if (v93 >= 0x1C)
      {
        v53 = 0;
        v76 = !is_mul_ok(v93 - 1, 0xCuLL);
        v77 = 3 * (v93 - 1);
        if (&v50[v77 + 1] >= v50 + 1 && !v76 && &v50[v77 + 2] >= v50 + 2 && !v76 && &v50[v77] >= v50 && !v76)
        {
          v53 = 0;
          v78 = &v50[3 * v93];
          _CF = v50 >= &v101->f32[v93] || v101 >= v78;
          v80 = !_CF;
          v81 = v50 >= &v96->f32[v93] || v96 >= v78;
          v82 = !v81;
          if ((v103 >= v78 || v50 >= &v103->f32[v93]) && !v80 && !v82)
          {
            v53 = v93 & 0xFFFFFFFFFFFFFFF8;
            v84 = v103 + 1;
            v85 = v101 + 1;
            v86 = v96 + 1;
            v87 = v93 & 0xFFFFFFFFFFFFFFF8;
            v88 = v50;
            do
            {
              v111.val[0] = v84[-1];
              v112.val[0] = *v84;
              v111.val[1] = v85[-1];
              v112.val[1] = *v85;
              v111.val[2] = v86[-1];
              v112.val[2] = *v86;
              v89 = v88 + 24;
              vst3q_f32(v88, v111);
              v90 = v88 + 12;
              vst3q_f32(v90, v112);
              v84 += 2;
              v85 += 2;
              v86 += 2;
              v88 = v89;
              v87 -= 8;
            }

            while (v87);
            if (v93 == v53)
            {
              goto LABEL_47;
            }
          }
        }
      }

      else
      {
        v53 = 0;
      }

      v54 = v93 - v53;
      v55 = 4 * v53;
      v56 = &v103->i32[v53];
      v57 = &v101->i32[v53];
      v58 = &v50[3 * v53 + 1];
      v59 = (v96 + v55);
      do
      {
        v60 = *v56++;
        v61 = v60;
        v62 = *v57++;
        v63 = v62;
        v64 = *v59++;
        *(v58 - 1) = v61;
        *v58 = v63;
        *(v58 + 1) = v64;
        v58 += 3;
        --v54;
      }

      while (v54);
    }

LABEL_47:

    sub_1AF8264B8(0, 0, 0, 0, v17, a2);

    sub_1AF8264B8(0, 0, 0, 0, a3, a4);

    sub_1AF8264B8(0, 0, 0, 0, a5, a6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *a11;
    sub_1AF85917C(v94, 0, v97, a9, a7, v105, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *a11 = v108;
    return result;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v109 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
  MEMORY[0x1B2718AE0](v108, v29);

  MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
  v36 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v36);

  MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
  type metadata accessor for MTLResourceOptions(0);
  sub_1AFDFE458();
  v37 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v91 = v37;
    swift_once();
    v37 = v91;
  }

  v108 = 0;
  sub_1AF0D4F18(v37, &v108, 0, 0xE000000000000000);

  v108 = 0;
  v109 = 0xE000000000000000;
  sub_1AFDFE218();

  v108 = 0xD000000000000010;
  v109 = 0x80000001AFF4AEC0;
  MEMORY[0x1B2718AE0](v95, v29);
  MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
  v38 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v38);

  v39 = v108;
  v40 = v109;
  v41 = sub_1AFDFDA08();
  v108 = 0;
  sub_1AF0D4F18(v41, &v108, v39, v40);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}