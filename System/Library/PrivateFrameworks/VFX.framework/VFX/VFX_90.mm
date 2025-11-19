uint64_t _s8MetadataVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s8MetadataVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _s12MetadataTypeOwxx(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 _s12MetadataTypeOwcp(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v3;
    *(a1 + 32) = *(a2 + 32);
  }

  return result;
}

void *_s12MetadataTypeOwca(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];
      a1[4] = a2[4];

      return a1;
    }

LABEL_7:
    v5 = *a2;
    v6 = *(a2 + 1);
    a1[4] = a2[4];
    *a1 = v5;
    *(a1 + 1) = v6;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t _s12MetadataTypeOwta(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    v5 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v5;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      v6 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v6;
      *(v4 + 32) = *(a2 + 32);
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v4 = result;

      *(v4 + 16) = *(a2 + 16);

      *(v4 + 24) = *(a2 + 24);
    }

    return v4;
  }

  return result;
}

uint64_t _s12MetadataTypeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFC4 && *(a1 + 40))
  {
    return (*a1 + 2147483589);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 58;
  if (v4 >= 0x3C)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _s12MetadataTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFC5)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483589;
    if (a3 >= 0x7FFFFFC5)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFC5)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 58;
    }
  }

  return result;
}

double sub_1AF8053FC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1AF80543C()
{
  result = qword_1EB63EEF0;
  if (!qword_1EB63EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EEF0);
  }

  return result;
}

unint64_t sub_1AF805494()
{
  result = qword_1EB63EEF8;
  if (!qword_1EB63EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EEF8);
  }

  return result;
}

uint64_t sub_1AF8054E8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1AF805568(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v6 = *(a1 + 16);

  if (v6)
  {
    v7 = (a1 + 64);
    do
    {
      v8 = *(v7 - 4);
      v9 = *(v7 - 3);
      v10 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *v7;
      v39 = v8;
      v40 = v9;
      v41 = v10;
      v42 = v11;
      v43 = v12;
      sub_1AF687F90(v8, v9);
      a2(&v44, &v39);
      sub_1AF687FE4(v8, v9);
      v13 = v45;
      if (!v45)
      {
        break;
      }

      v14 = v6;
      v15 = v44;
      v39 = v44;
      v40 = v45;
      v34 = v47;
      v35 = v48;
      v36 = v46;
      v37 = v49;
      v38 = v50;
      v16 = *a5;
      v18 = sub_1AF419914(v44, v45);
      v19 = v17;
      v20 = v16[2] + ((v17 & 1) == 0);
      if (v16[3] >= v20)
      {
        if (a4)
        {
          v23 = *a5;
          if (v17)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_1AF849A64();
          v23 = *a5;
          if (v19)
          {
LABEL_13:
            v26 = (v23[7] + 40 * v18);
            v27 = *v26;
            v28 = v26[1];
            v29 = swift_allocError();
            swift_willThrow();
            sub_1AF687F90(v27, v28);

            swift_bridgeObjectRelease_n();
            sub_1AF687FE4(v27, v28);
            v51 = v29;
            v30 = v29;
            sub_1AF61FF58();
            if ((swift_dynamicCast() & 1) == 0)
            {
              sub_1AF687FE4(v36, v34);

              return;
            }

            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_1AF835D54(v20, a4 & 1);
        v21 = sub_1AF419914(v15, v13);
        if ((v19 & 1) != (v22 & 1))
        {
          sub_1AFDFF1A8();
          __break(1u);
LABEL_17:
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF2D560);
          sub_1AFDFE458();
          MEMORY[0x1B2718AE0](39, 0xE100000000000000);
          sub_1AFDFE518();
          __break(1u);
          return;
        }

        v18 = v21;
        v23 = *a5;
        if (v19)
        {
          goto LABEL_13;
        }
      }

      v7 += 5;
      a4 = 1;
      v23[(v18 >> 6) + 8] |= 1 << v18;
      v24 = (v23[6] + 16 * v18);
      *v24 = v15;
      v24[1] = v13;
      v25 = (v23[7] + 40 * v18);
      *v25 = v36;
      v25[1] = v34;
      v25[2] = v35;
      v25[3] = v37;
      v25[4] = v38;
      ++v23[2];
      v6 = v14 - 1;
    }

    while (v14 != 1);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF80592C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1AF805A8C(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1AF805C64(v13, v7, v3);
  result = MEMORY[0x1B271DEA0](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1AF805A8C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_10:
    v14 = (*(a3 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    sub_1AF4455CC(*(a3 + 56) + 88 * v10, v22);
    v20[0] = v15;
    v20[1] = v16;
    sub_1AF4455CC(v22, &v21);
    sub_1AF770DF0();
    sub_1AF770E44();
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = sub_1AFDFCD68();
    sub_1AF80C450(v20, sub_1AF7711B0);
    sub_1AF761390(v22);

    if ((v15 & 1) == 0)
    {
      *(a1 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++v23;
    }
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return sub_1AF8FAF28(a1, a2, v23, a3);
    }

    v13 = *(a3 + 8 * v4 + 72);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF805C64(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a1;
    v5 = a2;
    bzero(a1, 8 * a2);
    a1 = v4;
    a2 = v5;
  }

  v6 = sub_1AF805A8C(a1, a2, a3);

  return v6;
}

uint64_t sub_1AF805CD4(float32x4_t *a1, void *a2)
{
  v2 = a2;
  v4 = a1->i64[0] == *a2 && a1->i64[1] == a2[1];
  if (!v4 && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = a1[2];
  v180 = a1[1];
  v181 = v5;
  v182 = a1[3].i64[0];
  v6 = *(v2 + 2);
  v177 = *(v2 + 1);
  v178 = v6;
  v179 = v2[6];
  v7 = sub_1AF7FE65C();
  v9 = v8;
  if (v7 != sub_1AF7FE65C() || v9 != v10)
  {
    v11 = sub_1AFDFEE28();

    if (v11)
    {
      goto LABEL_10;
    }

LABEL_17:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

LABEL_10:
  switch(v180.i64[1])
  {
    case 0:
      v38 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      swift_dynamicCast();
      v39 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v38 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      LOBYTE(v2) = v39 ^ v165.i8[0] ^ 1;
      return v2 & 1;
    case 1:
    case 5:
      v57 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      swift_dynamicCast();
      v52 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v57 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v53 = v165.u8[0];
      goto LABEL_47;
    case 2:
    case 6:
      v51 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      swift_dynamicCast();
      v52 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v51 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v53 = v165.u16[0];
      goto LABEL_47;
    case 3:
    case 7:
    case 0x1BLL:
      v56 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      swift_dynamicCast();
      v52 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v56 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v53 = v165.i32[0];
LABEL_47:
      LOBYTE(v2) = v52 == v53;
      return v2 & 1;
    case 4:
    case 8:
    case 9:
      v36 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      swift_dynamicCast();
      v37 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v36 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      LOBYTE(v2) = v37 == v165.i64[0];
      return v2 & 1;
    case 0xALL:
      v43 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      sub_1AF80DBD4(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
      swift_dynamicCast();
      v44 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v43 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v45 = 0;
LABEL_103:
      v147 = v44;
      v118 = *(&v147 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v45 & 1)));
      v148 = v165.i64[0];
      LOBYTE(v2) = v118 == *(&v148 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v45 & 1)));
      while (v45 != 1)
      {
        ++v45;
        if (v2)
        {
          goto LABEL_103;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0xBLL:
      v54 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      sub_1AF80DBD4(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
      swift_dynamicCast();
      v138 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v54 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v55 = 0;
LABEL_109:
      v149 = v138;
      v120 = *(&v149 & 0xFFFFFFFFFFFFFFF3 | (4 * (v55 & 3)));
      v150 = v165;
      LOBYTE(v2) = v120 == *(&v150 & 0xFFFFFFFFFFFFFFF3 | (4 * (v55 & 3)));
      while (v55 != 2)
      {
        ++v55;
        if (v2)
        {
          goto LABEL_109;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0xCLL:
      v70 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      sub_1AF80DBD4(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
      swift_dynamicCast();
      v141 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v70 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v71 = 0;
LABEL_115:
      v151 = v141;
      v122 = *(&v151 & 0xFFFFFFFFFFFFFFF3 | (4 * (v71 & 3)));
      v152 = v165;
      LOBYTE(v2) = v122 == *(&v152 & 0xFFFFFFFFFFFFFFF3 | (4 * (v71 & 3)));
      while (v71 != 3)
      {
        ++v71;
        if (v2)
        {
          goto LABEL_115;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0xDLL:
      v46 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      swift_dynamicCast();
      v47 = *&v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v46 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      LOBYTE(v2) = v47 == v165.f32[0];
      return v2 & 1;
    case 0xELL:
      v48 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      sub_1AF80DBD4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      swift_dynamicCast();
      v49 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v48 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v50 = 0;
LABEL_106:
      v153 = v49;
      v119 = *(&v153 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v50 & 1)));
      v154 = v165.i64[0];
      LOBYTE(v2) = v119 == *(&v154 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v50 & 1)));
      while (v50 != 1)
      {
        ++v50;
        if (v2)
        {
          goto LABEL_106;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0xFLL:
      v68 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      sub_1AF80DBD4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      swift_dynamicCast();
      v140 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v68 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v69 = 0;
LABEL_112:
      v155 = v140;
      v121 = *(&v155 & 0xFFFFFFFFFFFFFFF3 | (4 * (v69 & 3)));
      v156 = v165;
      LOBYTE(v2) = v121 == *(&v156 & 0xFFFFFFFFFFFFFFF3 | (4 * (v69 & 3)));
      while (v69 != 2)
      {
        ++v69;
        if (v2)
        {
          goto LABEL_112;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0x10:
      v72 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      sub_1AF80DBD4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      swift_dynamicCast();
      v142 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v72 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v73 = 0;
LABEL_118:
      v157 = v142;
      v123 = *(&v157 & 0xFFFFFFFFFFFFFFF3 | (4 * (v73 & 3)));
      v158 = v165;
      LOBYTE(v2) = v123 == *(&v158 & 0xFFFFFFFFFFFFFFF3 | (4 * (v73 & 3)));
      while (v73 != 3)
      {
        ++v73;
        if (v2)
        {
          goto LABEL_118;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0x11:
      v30 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      type metadata accessor for simd_float2x2(0);
      swift_dynamicCast();
      v31 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v30 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v32 = vand_s8(vceq_f32(*(&v31 + 8), *&v165.u32[2]), vceq_f32(*&v31, *v165.f32));
      goto LABEL_57;
    case 0x12:
      v28 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      type metadata accessor for simd_float2x3(0);
      swift_dynamicCast();
      v130 = v176;
      v136 = v175;
      sub_1AF80C918((v2 + 7), &v167, &qword_1ED726850, v28 + 8);
      sub_1AF449D40(&v167, v174);
      swift_dynamicCast();
      v29 = vandq_s8(vceqq_f32(v130, v166), vceqq_f32(v136, v165));
      goto LABEL_67;
    case 0x13:
      v86 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      type metadata accessor for simd_float2x4(0);
      swift_dynamicCast();
      v135 = v176;
      v146 = v175;
      sub_1AF80C918((v2 + 7), &v167, &qword_1ED726850, v86 + 8);
      sub_1AF449D40(&v167, v174);
      swift_dynamicCast();
      v29 = vandq_s8(vceqq_f32(v135, v166), vceqq_f32(v146, v165));
      goto LABEL_81;
    case 0x14:
      v21 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      type metadata accessor for simd_float3x2(0);
      swift_dynamicCast();
      v22 = v167;
      v23 = v168;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v21 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v24 = vand_s8(vceq_f32(*(&v22 + 8), *&v165.u32[2]), vceq_f32(*&v22, *v165.f32));
      v25 = vceq_f32(v23, *v166.f32);
      goto LABEL_56;
    case 0x15:
      v74 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], v174, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(v174, &v175);
      type metadata accessor for simd_float3x3(0);
      swift_dynamicCast();
      v128 = v171;
      v133 = v170;
      v143 = v172;
      sub_1AF80C918((v2 + 7), &v165, &qword_1ED726850, v74 + 8);
      sub_1AF449D40(&v165, &v167);
      swift_dynamicCast();
      v41 = vandq_s8(vceqq_f32(v128, v162), vceqq_f32(v133, v161));
      v42 = vceqq_f32(v143, v163);
      goto LABEL_66;
    case 0x16:
      v82 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], v174, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(v174, &v175);
      type metadata accessor for simd_float3x4(0);
      swift_dynamicCast();
      v129 = v171;
      v134 = v170;
      v144 = v172;
      sub_1AF80C918((v2 + 7), &v165, &qword_1ED726850, v82 + 8);
      sub_1AF449D40(&v165, &v167);
      swift_dynamicCast();
      v66 = vandq_s8(vceqq_f32(v129, v162), vceqq_f32(v134, v161));
      v67 = vceqq_f32(v144, v163);
      goto LABEL_73;
    case 0x17:
      v61 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      type metadata accessor for simd_float4x2(0);
      swift_dynamicCast();
      v62 = v175;
      v63 = v176;
      sub_1AF80C918((v2 + 7), &v167, &qword_1ED726850, v61 + 8);
      sub_1AF449D40(&v167, v174);
      swift_dynamicCast();
      v24 = vand_s8(vceq_f32(*&v62.u32[2], *&v165.u32[2]), vceq_f32(*v62.f32, *v165.f32));
      v25 = vand_s8(vceq_f32(*v63.f32, *v166.f32), vceq_f32(*&v63.u32[2], *&v166.u32[2]));
LABEL_56:
      v32 = vand_s8(v24, v25);
LABEL_57:
      v64 = vpmin_u32(v32, v32).u32[0];
      goto LABEL_82;
    case 0x18:
      v40 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], v174, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(v174, &v175);
      type metadata accessor for simd_float4x3(0);
      swift_dynamicCast();
      v124 = v171;
      v126 = v170;
      v131 = v173;
      v137 = v172;
      sub_1AF80C918((v2 + 7), &v165, &qword_1ED726850, v40 + 8);
      sub_1AF449D40(&v165, &v167);
      swift_dynamicCast();
      v41 = vandq_s8(vceqq_f32(v124, v162), vceqq_f32(v126, v161));
      v42 = vandq_s8(vceqq_f32(v137, v163), vceqq_f32(v131, v164));
LABEL_66:
      v29 = vandq_s8(v41, v42);
LABEL_67:
      v29.i32[3] = v29.i32[2];
      goto LABEL_81;
    case 0x19:
      v65 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], v174, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(v174, &v175);
      type metadata accessor for simd_float4x4(0);
      swift_dynamicCast();
      v125 = v171;
      v127 = v170;
      v132 = v173;
      v139 = v172;
      sub_1AF80C918((v2 + 7), &v165, &qword_1ED726850, v65 + 8);
      sub_1AF449D40(&v165, &v167);
      swift_dynamicCast();
      v66 = vandq_s8(vceqq_f32(v125, v162), vceqq_f32(v127, v161));
      v67 = vandq_s8(vceqq_f32(v139, v163), vceqq_f32(v132, v164));
LABEL_73:
      v29 = vandq_s8(v66, v67);
LABEL_81:
      v64 = vminvq_u32(v29);
LABEL_82:
      LODWORD(v2) = v64 >> 31;
      return v2 & 1;
    case 0x1ALL:
      v26 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      swift_dynamicCast();
      v27 = *&v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v26 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      LOBYTE(v2) = v27 == *v165.i64;
      return v2 & 1;
    case 0x1CLL:
      v16 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      swift_dynamicCast();
      v17 = v167;
      v18 = v168;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v16 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v19 = v165.i64[1];
      v20 = v166.u8[0];
      if ((sub_1AFB7B0BC(v17, v165.i64[0]) & 1) != 0 && sub_1AFB7B128(*(&v17 + 1), v19))
      {

        LOBYTE(v2) = v18 == v20;
        return v2 & 1;
      }

LABEL_16:

      goto LABEL_17;
    case 0x1DLL:
    case 0x1ELL:
    case 0x1FLL:
    case 0x20:
    case 0x21:
    case 0x26:
    case 0x29:
LABEL_11:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v170.i64[0] = 0;
      v170.i64[1] = 0xE000000000000000;
      sub_1AFDFE218();
      v161 = v170;
      MEMORY[0x1B2718AE0](0xD000000000000030, 0x80000001AFF35FB0);
      v170 = v180;
      v171 = v181;
      v172.i64[0] = v182;
      sub_1AFDFE458();
      v12 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v117 = v12;
        swift_once();
        v12 = v117;
      }

      v170.i64[0] = 0;
      sub_1AF0D4F18(v12, &v170, v161.i64[0], v161.i64[1]);
      goto LABEL_16;
    case 0x22:
    case 0x23:
      v14 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      swift_dynamicCast();
      v15 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v14 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      if (v15 == *&v165)
      {
        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = sub_1AFDFEE28();
      }

      goto LABEL_69;
    case 0x24:
      v83 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      type metadata accessor for simd_quatf(0);
      swift_dynamicCast();
      v145 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v83 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      v84 = 0;
      break;
    case 0x25:
      v75 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      sub_1AF80AF34(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
      swift_dynamicCast();
      v76 = v167;
      v77 = v168;
      v78 = v169;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v75 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      LOBYTE(v2) = sub_1AF67930C(v76, *(&v76 + 1), v77, v78, v165.i64[0], v165.i64[1], v166.i64[0], v166.i8[8]);

LABEL_69:

      return v2 & 1;
    case 0x27:
      v33 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      sub_1AF80AF34(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
      swift_dynamicCast();
      v34 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v33 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      LOBYTE(v2) = v34 == v165.i64[0] && *(&v34 + 1) == v165.i64[1];
      return v2 & 1;
    case 0x28:
      v58 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v161, &v170);
      sub_1AF80AF34(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
      swift_dynamicCast();
      v59 = v167;
      sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v58 + 8);
      sub_1AF449D40(v174, &v175);
      swift_dynamicCast();
      LOBYTE(v2) = *(&v59 + 1) == v165.f32[1] && *&v59 == v165.f32[0];
      return v2 & 1;
    default:
      switch(v180.i64[1])
      {
        case '*':
          goto LABEL_11;
        case '+':
          v79 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v80 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v79 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB7B688(v80, v165.i64[0]);
          goto LABEL_100;
        case ',':
          v99 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v100 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v99 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB93B44(v100, v165.i64[0]);
          goto LABEL_100;
        case '-':
          v103 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v104 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v103 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB93B48(v104, v165.i64[0]);
          goto LABEL_100;
        case '.':
          v93 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &qword_1EB63ED78, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v94 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v93 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB93B4C(v94, v165.i64[0]);
          goto LABEL_100;
        case '/':
          v107 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &qword_1EB63ED70, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v108 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v107 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB93B50(v108, v165.i64[0]);
          goto LABEL_100;
        case '0':
          v111 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &qword_1EB63ED68, MEMORY[0x1E69E7230], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v112 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v111 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB93B44(v112, v165.i64[0]);
          goto LABEL_100;
        case '1':
          v105 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &qword_1EB63ED60, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v106 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v105 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB93B48(v106, v165.i64[0]);
          goto LABEL_100;
        case '2':
          v115 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &qword_1EB63ED58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v116 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v115 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB93B4C(v116, v165.i64[0]);
          goto LABEL_100;
        case '3':
          v97 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &qword_1EB63ED50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v98 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v97 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB93B50(v98, v165.i64[0]);
          goto LABEL_100;
        case '4':
          v113 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v114 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v113 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB93B50(v114, v165.i64[0]);
          goto LABEL_100;
        case '5':
          v91 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v92 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v91 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB7B128(v92, v165.i64[0]);
          goto LABEL_100;
        case '6':
          v95 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF44219C();
          swift_dynamicCast();
          v96 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v95 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB7B864(v96, v165.i64[0]);
          goto LABEL_100;
        case '7':
          v109 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF4420DC();
          swift_dynamicCast();
          v110 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v109 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB7B8D0(v110, v165.i64[0]);
          goto LABEL_100;
        case '8':
          v89 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF6560F0();
          swift_dynamicCast();
          v90 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v89 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB7B0BC(v90, v165.i64[0]);
          goto LABEL_100;
        case '9':
          v101 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF80C8C8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v102 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v101 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB7B948(v102, v165.i64[0]);
          goto LABEL_100;
        case ':':
          v87 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v161, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v161, &v170);
          sub_1AF5877E4(0);
          swift_dynamicCast();
          v88 = v167;
          sub_1AF80C918((v2 + 7), v174, &qword_1ED726850, v87 + 8);
          sub_1AF449D40(v174, &v175);
          swift_dynamicCast();
          v81 = sub_1AFB7B9D0(v88, v165.i64[0]);
LABEL_100:
          LOBYTE(v2) = v81;

          break;
        default:
          LOBYTE(v2) = 1;
          break;
      }

      return v2 & 1;
  }

LABEL_77:
  v159 = v145;
  v85 = *(&v159 & 0xFFFFFFFFFFFFFFF3 | (4 * (v84 & 3)));
  v160 = v165;
  LOBYTE(v2) = v85 == *(&v160 & 0xFFFFFFFFFFFFFFF3 | (4 * (v84 & 3)));
  while (v84 != 3)
  {
    ++v84;
    if (v2)
    {
      goto LABEL_77;
    }

    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t sub_1AF8083E0()
{
  sub_1AFDFD078();

  return sub_1AFDFD1F8();
}

uint64_t sub_1AF808478@<X0>(uint64_t a1@<X8>)
{
  result = swift_dynamicCastMetatype();
  v3 = 0uLL;
  if (result)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    sub_1AF80C8C8(0, &qword_1EB63E718, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    result = swift_dynamicCastMetatype();
    if (result)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
    }

    else
    {
      result = swift_dynamicCastMetatype();
      if (result || (sub_1AF80C8C8(0, &qword_1EB63F060, MEMORY[0x1E69E7508], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
      {
        v4 = 0;
        v6 = 0;
        v5 = 1;
      }

      else
      {
        result = swift_dynamicCastMetatype();
        if (result || (sub_1AF80C8C8(0, &qword_1EB63F068, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
        {
          v4 = 0;
          v6 = 0;
          v5 = 2;
        }

        else
        {
          result = swift_dynamicCastMetatype();
          if (result || (sub_1AF80C8C8(0, &qword_1EB63F070, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
          {
            v4 = 0;
            v6 = 0;
            v5 = 3;
          }

          else
          {
            result = swift_dynamicCastMetatype();
            if (result || (sub_1AF80C8C8(0, &qword_1EB642E50, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
            {
              v4 = 0;
              v6 = 0;
              v5 = 4;
            }

            else
            {
              result = swift_dynamicCastMetatype();
              if (result || (sub_1AF80C8C8(0, &qword_1EB63F078, MEMORY[0x1E69E7230], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
              {
                v4 = 0;
                v6 = 0;
                v5 = 5;
              }

              else
              {
                result = swift_dynamicCastMetatype();
                if (result || (sub_1AF80C8C8(0, &qword_1EB63F080, MEMORY[0x1E69E7290], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                {
                  v4 = 0;
                  v6 = 0;
                  v5 = 6;
                }

                else
                {
                  result = swift_dynamicCastMetatype();
                  if (result || (sub_1AF80C8C8(0, &qword_1ED7268C0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                  {
                    v4 = 0;
                    v6 = 0;
                    v5 = 7;
                  }

                  else
                  {
                    result = swift_dynamicCastMetatype();
                    if (result || (sub_1AF80C8C8(0, &qword_1EB63F088, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                    {
                      v4 = 0;
                      v6 = 0;
                      v5 = 8;
                    }

                    else
                    {
                      result = swift_dynamicCastMetatype();
                      if (result || (sub_1AF80C8C8(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                      {
                        v4 = 0;
                        v6 = 0;
                        v5 = 9;
                      }

                      else
                      {
                        sub_1AF80DBD4(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
                        result = swift_dynamicCastMetatype();
                        if (result || (sub_1AF80C514(), (result = swift_dynamicCastMetatype()) != 0))
                        {
                          v4 = 0;
                          v6 = 0;
                          v5 = 10;
                        }

                        else
                        {
                          sub_1AF80DBD4(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
                          result = swift_dynamicCastMetatype();
                          if (result || (sub_1AF80C5A4(), (result = swift_dynamicCastMetatype()) != 0))
                          {
                            v4 = 0;
                            v6 = 0;
                            v5 = 11;
                          }

                          else
                          {
                            sub_1AF80DBD4(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
                            result = swift_dynamicCastMetatype();
                            if (result || (sub_1AF80C634(), (result = swift_dynamicCastMetatype()) != 0))
                            {
                              v4 = 0;
                              v6 = 0;
                              v5 = 12;
                            }

                            else
                            {
                              result = swift_dynamicCastMetatype();
                              if (result || (sub_1AF80C8C8(0, &qword_1EB63B188, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                              {
                                v4 = 0;
                                v6 = 0;
                                v5 = 13;
                              }

                              else
                              {
                                sub_1AF80DBD4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
                                result = swift_dynamicCastMetatype();
                                if (result || (sub_1AF80C6C4(), (result = swift_dynamicCastMetatype()) != 0))
                                {
                                  v4 = 0;
                                  v6 = 0;
                                  v5 = 14;
                                }

                                else
                                {
                                  sub_1AF80DBD4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
                                  result = swift_dynamicCastMetatype();
                                  if (result || (sub_1AF5972FC(), (result = swift_dynamicCastMetatype()) != 0))
                                  {
                                    v4 = 0;
                                    v6 = 0;
                                    v5 = 15;
                                  }

                                  else
                                  {
                                    sub_1AF80DBD4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
                                    result = swift_dynamicCastMetatype();
                                    if (result || (sub_1AF582D5C(), (result = swift_dynamicCastMetatype()) != 0))
                                    {
                                      v4 = 0;
                                      v6 = 0;
                                      v5 = 16;
                                    }

                                    else
                                    {
                                      type metadata accessor for simd_float2x2(0);
                                      result = swift_dynamicCastMetatype();
                                      if (result || (sub_1AF80C4B0(0, &qword_1EB63F0B0, type metadata accessor for simd_float2x2, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                      {
                                        v4 = 0;
                                        v6 = 0;
                                        v5 = 17;
                                      }

                                      else
                                      {
                                        type metadata accessor for simd_float2x3(0);
                                        result = swift_dynamicCastMetatype();
                                        if (result || (sub_1AF80C4B0(0, &qword_1EB63F0B8, type metadata accessor for simd_float2x3, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                        {
                                          v4 = 0;
                                          v6 = 0;
                                          v5 = 18;
                                        }

                                        else
                                        {
                                          type metadata accessor for simd_float2x4(0);
                                          result = swift_dynamicCastMetatype();
                                          if (result || (sub_1AF80C4B0(0, &qword_1EB63F0C0, type metadata accessor for simd_float2x4, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                          {
                                            v4 = 0;
                                            v6 = 0;
                                            v5 = 19;
                                          }

                                          else
                                          {
                                            type metadata accessor for simd_float3x2(0);
                                            result = swift_dynamicCastMetatype();
                                            if (result || (sub_1AF80C4B0(0, &qword_1EB63F0C8, type metadata accessor for simd_float3x2, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                            {
                                              v4 = 0;
                                              v6 = 0;
                                              v5 = 20;
                                            }

                                            else
                                            {
                                              type metadata accessor for simd_float3x3(0);
                                              result = swift_dynamicCastMetatype();
                                              if (result || (sub_1AF80C4B0(0, &qword_1EB63F0D0, type metadata accessor for simd_float3x3, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                              {
                                                v4 = 0;
                                                v6 = 0;
                                                v5 = 21;
                                              }

                                              else
                                              {
                                                type metadata accessor for simd_float3x4(0);
                                                result = swift_dynamicCastMetatype();
                                                if (result || (sub_1AF80C4B0(0, &qword_1EB63F0D8, type metadata accessor for simd_float3x4, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                {
                                                  v4 = 0;
                                                  v6 = 0;
                                                  v5 = 22;
                                                }

                                                else
                                                {
                                                  type metadata accessor for simd_float4x2(0);
                                                  result = swift_dynamicCastMetatype();
                                                  if (result || (sub_1AF80C4B0(0, &qword_1EB63F0E0, type metadata accessor for simd_float4x2, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                  {
                                                    v4 = 0;
                                                    v6 = 0;
                                                    v5 = 23;
                                                  }

                                                  else
                                                  {
                                                    type metadata accessor for simd_float4x3(0);
                                                    result = swift_dynamicCastMetatype();
                                                    if (result || (sub_1AF80C4B0(0, &qword_1EB63F0E8, type metadata accessor for simd_float4x3, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                    {
                                                      v4 = 0;
                                                      v6 = 0;
                                                      v5 = 24;
                                                    }

                                                    else
                                                    {
                                                      type metadata accessor for simd_float4x4(0);
                                                      result = swift_dynamicCastMetatype();
                                                      if (result || (sub_1AF80C4B0(0, &qword_1EB632A48, type metadata accessor for simd_float4x4, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                      {
                                                        v4 = 0;
                                                        v6 = 0;
                                                        v5 = 25;
                                                      }

                                                      else
                                                      {
                                                        result = swift_dynamicCastMetatype();
                                                        if (result || (sub_1AF80C8C8(0, &qword_1EB639818, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                        {
                                                          v4 = 0;
                                                          v6 = 0;
                                                          v5 = 26;
                                                        }

                                                        else
                                                        {
                                                          result = swift_dynamicCastMetatype();
                                                          if (result || (sub_1AF80C8C8(0, &qword_1EB63F0F0, &type metadata for ColorU8, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                          {
                                                            v4 = 0;
                                                            v6 = 0;
                                                            v5 = 27;
                                                          }

                                                          else
                                                          {
                                                            result = swift_dynamicCastMetatype();
                                                            if (result || (sub_1AF80C8C8(0, &qword_1EB63F0F8, &type metadata for ColorRamp, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                            {
                                                              v4 = 0;
                                                              v6 = 0;
                                                              v5 = 28;
                                                            }

                                                            else
                                                            {
                                                              result = swift_dynamicCastMetatype();
                                                              if (result || (sub_1AF80C8C8(0, &qword_1EB63F100, &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedVN, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                              {
                                                                v4 = 0;
                                                                v6 = 0;
                                                                v5 = 30;
                                                              }

                                                              else
                                                              {
                                                                result = swift_dynamicCastMetatype();
                                                                if (result || (sub_1AF80C8C8(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                {
                                                                  v4 = 0;
                                                                  v6 = 0;
                                                                  v5 = 34;
                                                                }

                                                                else
                                                                {
                                                                  sub_1AFDFC128();
                                                                  result = swift_dynamicCastMetatype();
                                                                  if (result || (sub_1AF80C4B0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                  {
                                                                    v4 = 0;
                                                                    v6 = 0;
                                                                    v5 = 35;
                                                                  }

                                                                  else
                                                                  {
                                                                    type metadata accessor for simd_quatf(0);
                                                                    result = swift_dynamicCastMetatype();
                                                                    if (result || (sub_1AF80C4B0(0, &qword_1EB63F108, type metadata accessor for simd_quatf, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                    {
                                                                      v4 = 0;
                                                                      v6 = 0;
                                                                      v5 = 36;
                                                                    }

                                                                    else
                                                                    {
                                                                      sub_1AF80AF34(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
                                                                      result = swift_dynamicCastMetatype();
                                                                      if (result || (sub_1AF593DD4(), (result = swift_dynamicCastMetatype()) != 0))
                                                                      {
                                                                        v4 = 0;
                                                                        v6 = 0;
                                                                        v5 = 37;
                                                                      }

                                                                      else
                                                                      {
                                                                        sub_1AF80AF34(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
                                                                        result = swift_dynamicCastMetatype();
                                                                        if (result || (sub_1AF80C754(), (result = swift_dynamicCastMetatype()) != 0))
                                                                        {
                                                                          v4 = 0;
                                                                          v6 = 0;
                                                                          v5 = 39;
                                                                        }

                                                                        else
                                                                        {
                                                                          sub_1AF80AF34(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
                                                                          result = swift_dynamicCastMetatype();
                                                                          if (result || (sub_1AF80C7D8(), (result = swift_dynamicCastMetatype()) != 0))
                                                                          {
                                                                            v4 = 0;
                                                                            v6 = 0;
                                                                            v5 = 40;
                                                                          }

                                                                          else
                                                                          {
                                                                            sub_1AF80C8C8(0, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
                                                                            result = swift_dynamicCastMetatype();
                                                                            if (result || (sub_1AF80C85C(0, &qword_1EB63F120, &qword_1EB63ED80, MEMORY[0x1E69E6370]), (result = swift_dynamicCastMetatype()) != 0))
                                                                            {
                                                                              v4 = 0;
                                                                              v6 = 0;
                                                                              v5 = 43;
                                                                            }

                                                                            else
                                                                            {
                                                                              sub_1AF80C8C8(0, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
                                                                              result = swift_dynamicCastMetatype();
                                                                              if (result || (sub_1AF80C85C(0, &qword_1EB63F128, &unk_1ED726C20, MEMORY[0x1E69E7508]), (result = swift_dynamicCastMetatype()) != 0))
                                                                              {
                                                                                v4 = 0;
                                                                                v6 = 0;
                                                                                v5 = 44;
                                                                              }

                                                                              else
                                                                              {
                                                                                sub_1AF80C8C8(0, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
                                                                                result = swift_dynamicCastMetatype();
                                                                                if (result || (sub_1AF80C85C(0, &qword_1EB63F130, &qword_1EB6332D0, MEMORY[0x1E69E75F8]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                {
                                                                                  v4 = 0;
                                                                                  v6 = 0;
                                                                                  v5 = 45;
                                                                                }

                                                                                else
                                                                                {
                                                                                  sub_1AF80C8C8(0, &qword_1EB63ED78, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
                                                                                  result = swift_dynamicCastMetatype();
                                                                                  if (result || (sub_1AF80C85C(0, &qword_1EB63F138, &qword_1EB63ED78, MEMORY[0x1E69E7668]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                  {
                                                                                    v4 = 0;
                                                                                    v6 = 0;
                                                                                    v5 = 46;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    sub_1AF80C8C8(0, &qword_1EB63ED70, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
                                                                                    result = swift_dynamicCastMetatype();
                                                                                    if (result || (sub_1AF80C85C(0, &qword_1EB63F140, &qword_1EB63ED70, MEMORY[0x1E69E76D8]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                    {
                                                                                      v4 = 0;
                                                                                      v6 = 0;
                                                                                      v5 = 47;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      sub_1AF80C8C8(0, &qword_1EB63ED68, MEMORY[0x1E69E7230], MEMORY[0x1E69E62F8]);
                                                                                      result = swift_dynamicCastMetatype();
                                                                                      if (result || (sub_1AF80C85C(0, &qword_1EB63F148, &qword_1EB63ED68, MEMORY[0x1E69E7230]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                      {
                                                                                        v4 = 0;
                                                                                        v6 = 0;
                                                                                        v5 = 48;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        sub_1AF80C8C8(0, &qword_1EB63ED60, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
                                                                                        result = swift_dynamicCastMetatype();
                                                                                        if (result || (sub_1AF80C85C(0, &qword_1EB63F150, &qword_1EB63ED60, MEMORY[0x1E69E7290]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                        {
                                                                                          v4 = 0;
                                                                                          v6 = 0;
                                                                                          v5 = 49;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          sub_1AF80C8C8(0, &qword_1EB63ED58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
                                                                                          result = swift_dynamicCastMetatype();
                                                                                          if (result || (sub_1AF80C85C(0, &qword_1EB63F158, &qword_1EB63ED58, MEMORY[0x1E69E72F0]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                          {
                                                                                            v4 = 0;
                                                                                            v6 = 0;
                                                                                            v5 = 50;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            sub_1AF80C8C8(0, &qword_1EB63ED50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
                                                                                            result = swift_dynamicCastMetatype();
                                                                                            if (result || (sub_1AF80C85C(0, &qword_1EB63F160, &qword_1EB63ED50, MEMORY[0x1E69E7360]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                            {
                                                                                              v4 = 0;
                                                                                              v6 = 0;
                                                                                              v5 = 51;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              sub_1AF80C8C8(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
                                                                                              result = swift_dynamicCastMetatype();
                                                                                              if (result || (sub_1AF80C85C(0, &qword_1EB63A438, &qword_1ED726C50, MEMORY[0x1E69E6530]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                              {
                                                                                                v4 = 0;
                                                                                                v6 = 0;
                                                                                                v5 = 52;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_1AF80C8C8(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
                                                                                                result = swift_dynamicCastMetatype();
                                                                                                if (result || (sub_1AF80C85C(0, &qword_1EB63F168, &qword_1ED723210, MEMORY[0x1E69E6448]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                {
                                                                                                  v4 = 0;
                                                                                                  v6 = 0;
                                                                                                  v5 = 53;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  sub_1AF44219C();
                                                                                                  result = swift_dynamicCastMetatype();
                                                                                                  if (result || (sub_1AF80C4B0(0, &qword_1EB63F170, sub_1AF44219C, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                  {
                                                                                                    v4 = 0;
                                                                                                    v6 = 0;
                                                                                                    v5 = 54;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    sub_1AF4420DC();
                                                                                                    result = swift_dynamicCastMetatype();
                                                                                                    if (result || (sub_1AF80C4B0(0, &qword_1EB63F178, sub_1AF4420DC, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                    {
                                                                                                      v4 = 0;
                                                                                                      v6 = 0;
                                                                                                      v5 = 55;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      sub_1AF6560F0();
                                                                                                      result = swift_dynamicCastMetatype();
                                                                                                      if (result || (sub_1AF80C4B0(0, &qword_1EB63F180, sub_1AF6560F0, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                      {
                                                                                                        v4 = 0;
                                                                                                        v6 = 0;
                                                                                                        v5 = 56;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        sub_1AF80C8C8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
                                                                                                        result = swift_dynamicCastMetatype();
                                                                                                        if (result || (sub_1AF80C85C(0, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                        {
                                                                                                          v4 = 0;
                                                                                                          v6 = 0;
                                                                                                          v5 = 57;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          sub_1AF5877E4(0);
                                                                                                          result = swift_dynamicCastMetatype();
                                                                                                          if (result || (sub_1AF80C4B0(0, &qword_1EB63F188, sub_1AF5877E4, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                          {
                                                                                                            v4 = 0;
                                                                                                            v6 = 0;
                                                                                                            v5 = 58;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v9 = sub_1AF75D128();
                                                                                                            v10 = v7;
                                                                                                            sub_1AF770DF0();
                                                                                                            sub_1AF770E44();
                                                                                                            v8 = sub_1AFDFCD68();

                                                                                                            if ((v8 & 1) == 0)
                                                                                                            {
                                                                                                              result = sub_1AF7F3770(&v9);
                                                                                                              v5 = v10;
                                                                                                              if (v10)
                                                                                                              {
                                                                                                                v3 = v12;
                                                                                                                v6 = v11;
                                                                                                                v4 = v9;
                                                                                                                goto LABEL_9;
                                                                                                              }
                                                                                                            }

                                                                                                            v4 = 0;
                                                                                                            v6 = 0;
                                                                                                            v5 = 42;
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v3 = 0uLL;
  }

LABEL_9:
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
  return result;
}

double sub_1AF809A8C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF770EE8();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - v10;
  v12 = sub_1AFDFF358();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D5A54(a1, v31);
  sub_1AFDFF318();
  sub_1AF441150(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  sub_1AFDFF338();
  v18 = sub_1AFDFF328();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    goto LABEL_15;
  }

  sub_1AF775228(v11, v7);
  v20 = (*(v19 + 88))(v7, v18);
  if (v20 == *MEMORY[0x1E69E75B8])
  {
    if (DynamicType == &type metadata for Entity)
    {
      v21 = 0;
      v29 = 0u;
      v30 = xmmword_1AFE76100;
LABEL_16:
      (*(v13 + 8))(v16, v12);
      goto LABEL_17;
    }

LABEL_15:
    sub_1AF808478(v31);
    v29 = v31[1];
    v30 = v31[0];
    v21 = v32;
    goto LABEL_16;
  }

  if (v20 == *MEMORY[0x1E69E75B0])
  {
    (*(v13 + 8))(v16, v12);
    v21 = 0;
    v29 = 0u;
    v30 = xmmword_1AFE76100;
  }

  else
  {
    if (v20 != *MEMORY[0x1E69E75A8])
    {
      (*(v19 + 8))(v7, v18);
      goto LABEL_15;
    }

    (*(v13 + 8))(v16, v12);
    sub_1AF441150(a1, a1[3]);
    v22 = swift_getDynamicType();
    v23 = swift_conformsToProtocol2();
    v21 = 0;
    if (v22)
    {
      v24 = v23 == 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = 41;
    if (v24)
    {
      v25 = 42;
    }

    *&v26 = 0;
    v29 = 0u;
    *(&v26 + 1) = v25;
    v30 = v26;
  }

LABEL_17:
  sub_1AF80C450(v11, sub_1AF770EE8);
  v28 = v29;
  result = *&v30;
  *a2 = v30;
  *(a2 + 16) = v28;
  *(a2 + 32) = v21;
  return result;
}

uint64_t sub_1AF809DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_1EB633E58 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB6C2AC8;
  if (!*(qword_1EB6C2AC8 + 16) || (v7 = sub_1AF419914(a1, a2), (v8 & 1) == 0))
  {
    v30 = a1;
    v31 = a2;
    sub_1AF770DF0();
    sub_1AF770E44();
    if (sub_1AFDFCD68())
    {
      if (sub_1AFDFD178())
      {
        sub_1AFDFD048();
        v15 = sub_1AF701628();
        v17 = v16;
        v19 = v18;
        v21 = v20;

        a1 = MEMORY[0x1B27189E0](v15, v17, v19, v21);
        a2 = v22;
      }

      v23 = MEMORY[0x10];
      if (*(MEMORY[0x10] + 16))
      {
        v24 = sub_1AF419914(a1, a2);
        if (v25)
        {
          v26 = (*(v23 + 56) + 40 * v24);
          v10 = *v26;
          v11 = v26[1];
          v12 = v26[2];
          v13 = v26[3];
          v14 = v26[4];

          goto LABEL_12;
        }
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v31 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF33D30);
      MEMORY[0x1B2718AE0](a1, a2);

      v28 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v29 = v28;
        swift_once();
        v28 = v29;
      }

      v30 = 0;
      sub_1AF0D4F18(v28, &v30, 0, 0xE000000000000000);
    }

    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v11 = 59;
    goto LABEL_19;
  }

  v9 = (*(v6 + 56) + 40 * v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = v9[4];
  sub_1AF687F90(*v9, v11);
LABEL_12:

LABEL_19:
  *a3 = v10;
  a3[1] = v11;
  a3[2] = v12;
  a3[3] = v13;
  a3[4] = v14;
  return result;
}

uint64_t sub_1AF80A0EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AF80A204@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  sub_1AF80DBD4(0, &qword_1EB63EF00, sub_1AF80A4DC, &_s12MetadataTypeO6CustomV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF80A4DC();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  v11 = v23;
  v27 = 0;
  v12 = sub_1AFDFE708();
  v14 = v13;
  v22 = v12;
  v26 = 1;
  v20 = sub_1AFDFE708();
  v21 = v15;
  sub_1AF7E88F0();
  v25 = 2;
  sub_1AF80A530(&qword_1EB63EF10, sub_1AF7DB4F8);
  sub_1AFDFE768();
  (*(v10 + 8))(v9, v5);
  v16 = v24;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v11 = v22;
  v11[1] = v14;
  v18 = v21;
  v11[2] = v20;
  v11[3] = v18;
  v11[4] = v16;
  return result;
}

unint64_t sub_1AF80A4DC()
{
  result = qword_1EB63EF08;
  if (!qword_1EB63EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF08);
  }

  return result;
}

uint64_t sub_1AF80A530(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF7E88F0();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF80A5A8()
{
  result = qword_1ED72F780;
  if (!qword_1ED72F780)
  {
    sub_1AF80DBD4(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72F780);
  }

  return result;
}

unint64_t sub_1AF80A638()
{
  result = qword_1ED72F748;
  if (!qword_1ED72F748)
  {
    sub_1AF80DBD4(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72F748);
  }

  return result;
}

unint64_t sub_1AF80A6C8()
{
  result = qword_1ED72F6F0;
  if (!qword_1ED72F6F0)
  {
    sub_1AF80DBD4(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72F6F0);
  }

  return result;
}

unint64_t sub_1AF80A758()
{
  result = qword_1EB63EF28;
  if (!qword_1EB63EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF28);
  }

  return result;
}

unint64_t sub_1AF80A7AC()
{
  result = qword_1ED7232E8;
  if (!qword_1ED7232E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7232E8);
  }

  return result;
}

unint64_t sub_1AF80A800()
{
  result = qword_1ED724010[0];
  if (!qword_1ED724010[0])
  {
    sub_1AF80AF34(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED724010);
  }

  return result;
}

unint64_t sub_1AF80A884()
{
  result = qword_1EB63EF30;
  if (!qword_1EB63EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF30);
  }

  return result;
}

unint64_t sub_1AF80A8D8()
{
  result = qword_1ED723208;
  if (!qword_1ED723208)
  {
    sub_1AF80C8C8(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED723208);
  }

  return result;
}

unint64_t sub_1AF80A96C()
{
  result = qword_1ED726C40;
  if (!qword_1ED726C40)
  {
    sub_1AF80C8C8(255, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726C40);
  }

  return result;
}

unint64_t sub_1AF80AA00()
{
  result = qword_1EB63EF48;
  if (!qword_1EB63EF48)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF48);
  }

  return result;
}

unint64_t sub_1AF80AA94()
{
  result = qword_1EB63EF50;
  if (!qword_1EB63EF50)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF50);
  }

  return result;
}

unint64_t sub_1AF80AB28()
{
  result = qword_1EB63EF58;
  if (!qword_1EB63EF58)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED60, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF58);
  }

  return result;
}

unint64_t sub_1AF80ABBC()
{
  result = qword_1EB63EF60;
  if (!qword_1EB63EF60)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED68, MEMORY[0x1E69E7230], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF60);
  }

  return result;
}

unint64_t sub_1AF80AC50()
{
  result = qword_1EB63EF68;
  if (!qword_1EB63EF68)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED70, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF68);
  }

  return result;
}

unint64_t sub_1AF80ACE4()
{
  result = qword_1EB63EF70;
  if (!qword_1EB63EF70)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED78, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF70);
  }

  return result;
}

unint64_t sub_1AF80AD78()
{
  result = qword_1EB63EF78;
  if (!qword_1EB63EF78)
  {
    sub_1AF80C8C8(255, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF78);
  }

  return result;
}

unint64_t sub_1AF80AE0C()
{
  result = qword_1EB63EF80;
  if (!qword_1EB63EF80)
  {
    sub_1AF80C8C8(255, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF80);
  }

  return result;
}

unint64_t sub_1AF80AEA0()
{
  result = qword_1EB63EF88;
  if (!qword_1EB63EF88)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF88);
  }

  return result;
}

void sub_1AF80AF34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AF80AF88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF80AF34(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF80B014()
{
  result = qword_1EB63EF90;
  if (!qword_1EB63EF90)
  {
    sub_1AF80DBD4(255, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF90);
  }

  return result;
}

unint64_t sub_1AF80B0A4()
{
  result = qword_1EB63EF98;
  if (!qword_1EB63EF98)
  {
    sub_1AF80DBD4(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EF98);
  }

  return result;
}

unint64_t sub_1AF80B134()
{
  result = qword_1EB63EFA0;
  if (!qword_1EB63EFA0)
  {
    sub_1AF80DBD4(255, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EFA0);
  }

  return result;
}

unint64_t sub_1AF80B1C4()
{
  result = qword_1EB63EFA8;
  if (!qword_1EB63EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EFA8);
  }

  return result;
}

uint64_t sub_1AF80B218(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AF5877E4(255);
    sub_1AF5F8A30(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF80B294()
{
  result = qword_1ED72F710;
  if (!qword_1ED72F710)
  {
    sub_1AF80DBD4(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72F710);
  }

  return result;
}

unint64_t sub_1AF80B324()
{
  result = qword_1ED72F758;
  if (!qword_1ED72F758)
  {
    sub_1AF80DBD4(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72F758);
  }

  return result;
}

uint64_t sub_1AF80B3B4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF80B424()
{
  result = qword_1ED72F798;
  if (!qword_1ED72F798)
  {
    sub_1AF80DBD4(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72F798);
  }

  return result;
}

unint64_t sub_1AF80B4B4()
{
  result = qword_1EB63D188;
  if (!qword_1EB63D188)
  {
    sub_1AF80C8C8(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D188);
  }

  return result;
}

unint64_t sub_1AF80B548()
{
  result = qword_1EB63C1C0;
  if (!qword_1EB63C1C0)
  {
    sub_1AF80C8C8(255, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C1C0);
  }

  return result;
}

unint64_t sub_1AF80B5DC()
{
  result = qword_1EB63EFC8;
  if (!qword_1EB63EFC8)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EFC8);
  }

  return result;
}

unint64_t sub_1AF80B670()
{
  result = qword_1EB63EFD0;
  if (!qword_1EB63EFD0)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EFD0);
  }

  return result;
}

unint64_t sub_1AF80B704()
{
  result = qword_1EB63EFD8;
  if (!qword_1EB63EFD8)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED60, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EFD8);
  }

  return result;
}

unint64_t sub_1AF80B798()
{
  result = qword_1EB63EFE0;
  if (!qword_1EB63EFE0)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED68, MEMORY[0x1E69E7230], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EFE0);
  }

  return result;
}

unint64_t sub_1AF80B82C()
{
  result = qword_1EB63EFE8;
  if (!qword_1EB63EFE8)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED70, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EFE8);
  }

  return result;
}

unint64_t sub_1AF80B8C0()
{
  result = qword_1EB63EFF0;
  if (!qword_1EB63EFF0)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED78, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EFF0);
  }

  return result;
}

unint64_t sub_1AF80B954()
{
  result = qword_1EB63EFF8;
  if (!qword_1EB63EFF8)
  {
    sub_1AF80C8C8(255, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EFF8);
  }

  return result;
}

unint64_t sub_1AF80B9E8()
{
  result = qword_1EB63F000;
  if (!qword_1EB63F000)
  {
    sub_1AF80C8C8(255, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F000);
  }

  return result;
}

unint64_t sub_1AF80BA7C()
{
  result = qword_1EB63F008;
  if (!qword_1EB63F008)
  {
    sub_1AF80C8C8(255, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F008);
  }

  return result;
}

uint64_t sub_1AF80BB10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF80AF34(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF80BB9C()
{
  result = qword_1EB63F018;
  if (!qword_1EB63F018)
  {
    sub_1AF80AF34(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F018);
  }

  return result;
}

unint64_t sub_1AF80BC20()
{
  result = qword_1EB63F020;
  if (!qword_1EB63F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F020);
  }

  return result;
}

unint64_t sub_1AF80BC74()
{
  result = qword_1EB63F028;
  if (!qword_1EB63F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F028);
  }

  return result;
}

unint64_t sub_1AF80BCC8()
{
  result = qword_1EB63F030;
  if (!qword_1EB63F030)
  {
    sub_1AF80DBD4(255, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F030);
  }

  return result;
}

unint64_t sub_1AF80BD58()
{
  result = qword_1EB63F038;
  if (!qword_1EB63F038)
  {
    sub_1AF80DBD4(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F038);
  }

  return result;
}

unint64_t sub_1AF80BDE8()
{
  result = qword_1EB63F040;
  if (!qword_1EB63F040)
  {
    sub_1AF80DBD4(255, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F040);
  }

  return result;
}

uint64_t sub_1AF80BE78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    sub_1AF448018(v20, v21);
    v6 = sub_1AFDFEA78();
    sub_1AF809DF8(v6, v13, &v23);
    v8 = v24;
    if (v24 >= 0x3B)
    {
      sub_1AF448018(v20, v21);
      sub_1AF80C0BC();
      sub_1AFDFEAD8();

      sub_1AF80C110(&v23, &qword_1EB63E690, &_s12MetadataTypeON);
      v9 = v15;
      v8 = v16;
      v10 = v17;
      v11 = v18;
      v12 = v19;
    }

    else
    {
      v11 = v26;
      v12 = v27;
      v10 = v25;
      v9 = v23;
    }
  }

  else
  {
    sub_1AF441150(v20, v21);
    v5 = sub_1AFDFEE38();
    sub_1AF809DF8(v5, v7, v22);
    v9 = v22[0];
    v8 = v22[1];
    v10 = v22[2];
    v11 = v22[3];
    v12 = v22[4];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v9;
  a2[1] = v8;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v12;
  return result;
}

unint64_t sub_1AF80C0BC()
{
  result = qword_1EB63F048;
  if (!qword_1EB63F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F048);
  }

  return result;
}

uint64_t sub_1AF80C110(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF80C8C8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF80C180()
{
  result = qword_1EB63F050;
  if (!qword_1EB63F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F050);
  }

  return result;
}

unint64_t sub_1AF80C1D4()
{
  result = qword_1EB6335D0;
  if (!qword_1EB6335D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6335D0);
  }

  return result;
}

void sub_1AF80C228()
{
  if (!qword_1EB633338)
  {
    sub_1AF80C2A4(255, &qword_1EB633348, &_s8MetadataVN, MEMORY[0x1E69E5E28]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633338);
    }
  }
}

void sub_1AF80C2A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF80C304()
{
  result = qword_1EB633330;
  if (!qword_1EB633330)
  {
    sub_1AF80C228();
    sub_1AF80C3B4(&qword_1EB633340, sub_1AF774FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633330);
  }

  return result;
}

uint64_t sub_1AF80C3B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF80C2A4(255, &qword_1EB633348, &_s8MetadataVN, MEMORY[0x1E69E5E28]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF80C450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF80C4B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF80C514()
{
  if (!qword_1EB63F090)
  {
    sub_1AF80DBD4(255, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F090);
    }
  }
}

void sub_1AF80C5A4()
{
  if (!qword_1EB63F098)
  {
    sub_1AF80DBD4(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F098);
    }
  }
}

void sub_1AF80C634()
{
  if (!qword_1EB63F0A0)
  {
    sub_1AF80DBD4(255, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F0A0);
    }
  }
}

void sub_1AF80C6C4()
{
  if (!qword_1EB63F0A8)
  {
    sub_1AF80DBD4(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F0A8);
    }
  }
}

void sub_1AF80C754()
{
  if (!qword_1EB63F110)
  {
    sub_1AF80AF34(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F110);
    }
  }
}

void sub_1AF80C7D8()
{
  if (!qword_1EB63F118)
  {
    sub_1AF80AF34(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F118);
    }
  }
}

void sub_1AF80C85C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF80C8C8(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1AFDFDD58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF80C8C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF80C918(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF80C8C8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AF80C998()
{
  if (!qword_1EB63F190)
  {
    sub_1AF80C8C8(255, &qword_1EB6335B0, &_s8MetadataVN, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63F190);
    }
  }
}

uint64_t sub_1AF80CA20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  sub_1AF80DBD4(0, &qword_1EB63F1D0, sub_1AF80DB80, &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF80DB80();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v14;
  v11 = sub_1AFDFE7E8();
  (*(v6 + 8))(v9, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v11;
  v10[1] = v11 + 0x76E15D3EFEFDCBBFLL;
  v10[2] = 0xC5004E441C522FB3 * v11 - 0x3AFFB1BBE3ADD04DLL;
  v10[3] = 0x77710069854EE241 - v11;
  v10[4] = 0x39109BB02ACBE635 * v11;
  return result;
}

uint64_t sub_1AF80CC24(uint64_t a1)
{
  sub_1AF80D868();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE79060;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  v3 = MEMORY[0x1E69E6370];
  *(v2 + 64) = 0;
  *(v2 + 72) = v3;
  *(v2 + 80) = xmmword_1AFE21110;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = MEMORY[0x1E69E7508];
  *(v2 + 128) = xmmword_1AFE72020;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0u;
  *(v2 + 168) = MEMORY[0x1E69E75F8];
  *(v2 + 176) = xmmword_1AFE4C400;
  *(v2 + 192) = 0u;
  v4 = MEMORY[0x1E69E7668];
  *(v2 + 208) = 0;
  *(v2 + 216) = v4;
  *(v2 + 224) = xmmword_1AFE685E0;
  *(v2 + 240) = 0u;
  v5 = MEMORY[0x1E69E76D8];
  *(v2 + 256) = 0;
  *(v2 + 264) = v5;
  *(v2 + 272) = xmmword_1AFE72010;
  *(v2 + 288) = 0u;
  v6 = MEMORY[0x1E69E7230];
  *(v2 + 304) = 0;
  *(v2 + 312) = v6;
  *(v2 + 320) = xmmword_1AFE79040;
  *(v2 + 336) = 0u;
  v7 = MEMORY[0x1E69E7290];
  *(v2 + 352) = 0;
  *(v2 + 360) = v7;
  *(v2 + 368) = xmmword_1AFE79030;
  *(v2 + 384) = 0u;
  v8 = MEMORY[0x1E69E72F0];
  *(v2 + 400) = 0;
  *(v2 + 408) = v8;
  *(v2 + 416) = xmmword_1AFE79020;
  *(v2 + 432) = 0u;
  v9 = MEMORY[0x1E69E7360];
  *(v2 + 448) = 0;
  *(v2 + 456) = v9;
  *(v2 + 464) = xmmword_1AFE75F70;
  *(v2 + 480) = 0u;
  v10 = MEMORY[0x1E69E6530];
  *(v2 + 496) = 0;
  *(v2 + 504) = v10;
  *(v2 + 512) = xmmword_1AFE79070;
  v11 = MEMORY[0x1E69E7428];
  sub_1AF80DBD4(0, &qword_1ED722EC0, sub_1AF477BB4, v4, MEMORY[0x1E69E7428]);
  *(v2 + 528) = 0;
  *(v2 + 536) = 0u;
  *(v2 + 552) = v12;
  *(v2 + 560) = xmmword_1AFE79080;
  v13 = MEMORY[0x1E69E7450];
  sub_1AF80DBD4(0, &qword_1ED72F730, sub_1AF477BB4, v4, MEMORY[0x1E69E7450]);
  *(v2 + 576) = 0;
  *(v2 + 584) = 0u;
  *(v2 + 600) = v14;
  *(v2 + 608) = xmmword_1AFE79090;
  v15 = MEMORY[0x1E69E74A8];
  sub_1AF80DBD4(0, &qword_1ED722EB8, sub_1AF477BB4, v4, MEMORY[0x1E69E74A8]);
  *(v2 + 624) = 0;
  *(v2 + 632) = 0u;
  *(v2 + 648) = v16;
  *(v2 + 656) = xmmword_1AFE79010;
  *(v2 + 672) = 0;
  v17 = MEMORY[0x1E69E6448];
  *(v2 + 680) = 0u;
  *(v2 + 696) = v17;
  *(v2 + 704) = xmmword_1AFE76110;
  sub_1AF80DBD4(0, &unk_1ED72F770, sub_1AF43A0C8, v17, v11);
  *(v2 + 720) = 0;
  *(v2 + 728) = 0u;
  *(v2 + 744) = v18;
  *(v2 + 752) = xmmword_1AFE78720;
  sub_1AF80DBD4(0, &qword_1ED72F740, sub_1AF43A0C8, v17, v13);
  *(v2 + 768) = 0;
  *(v2 + 776) = 0u;
  *(v2 + 792) = v19;
  *(v2 + 800) = xmmword_1AFE78710;
  sub_1AF80DBD4(0, &qword_1ED72F6E0, sub_1AF43A0C8, v17, v15);
  *(v2 + 816) = 0;
  *(v2 + 824) = 0u;
  *(v2 + 840) = v20;
  *(v2 + 848) = xmmword_1AFE790A0;
  type metadata accessor for simd_float2x2(0);
  *(v2 + 864) = 0;
  *(v2 + 872) = 0u;
  *(v2 + 888) = v21;
  *(v2 + 896) = xmmword_1AFE790B0;
  type metadata accessor for simd_float2x3(0);
  *(v2 + 912) = 0;
  *(v2 + 920) = 0u;
  *(v2 + 936) = v22;
  *(v2 + 944) = xmmword_1AFE790C0;
  type metadata accessor for simd_float2x4(0);
  *(v2 + 960) = 0;
  *(v2 + 968) = 0u;
  *(v2 + 984) = v23;
  *(v2 + 992) = xmmword_1AFE790D0;
  type metadata accessor for simd_float3x2(0);
  *(v2 + 1008) = 0;
  *(v2 + 1016) = 0u;
  *(v2 + 1032) = v24;
  *(v2 + 1040) = xmmword_1AFE790E0;
  type metadata accessor for simd_float3x3(0);
  *(v2 + 1056) = 0;
  *(v2 + 1064) = 0u;
  *(v2 + 1080) = v25;
  *(v2 + 1088) = xmmword_1AFE790F0;
  type metadata accessor for simd_float3x4(0);
  *(v2 + 1104) = 0;
  *(v2 + 1112) = 0u;
  *(v2 + 1128) = v26;
  *(v2 + 1136) = xmmword_1AFE79100;
  type metadata accessor for simd_float4x2(0);
  *(v2 + 1152) = 0;
  *(v2 + 1160) = 0u;
  *(v2 + 1176) = v27;
  *(v2 + 1184) = xmmword_1AFE79110;
  type metadata accessor for simd_float4x3(0);
  *(v2 + 1200) = 0;
  *(v2 + 1208) = 0u;
  *(v2 + 1224) = v28;
  *(v2 + 1232) = xmmword_1AFE79120;
  type metadata accessor for simd_float4x4(0);
  *(v2 + 1248) = 0;
  *(v2 + 1256) = 0u;
  *(v2 + 1272) = v29;
  *(v2 + 1280) = xmmword_1AFE79000;
  *(v2 + 1296) = 0;
  *(v2 + 1304) = 0u;
  *(v2 + 1320) = MEMORY[0x1E69E63B0];
  *(v2 + 1328) = xmmword_1AFE78FF0;
  *(v2 + 1344) = 0;
  *(v2 + 1352) = 0u;
  *(v2 + 1368) = &type metadata for ColorU8;
  *(v2 + 1376) = xmmword_1AFE78FE0;
  *(v2 + 1392) = 0u;
  *(v2 + 1408) = 0;
  *(v2 + 1416) = &type metadata for ColorRamp;
  *(v2 + 1424) = xmmword_1AFE79130;
  *(v2 + 1440) = 0u;
  *(v2 + 1456) = 0;
  *(v2 + 1464) = &type metadata for ColorRamp;
  *(v2 + 1472) = xmmword_1AFE79140;
  type metadata accessor for __vfx_sampler1d(0);
  *(v2 + 1488) = 0;
  *(v2 + 1504) = 0;
  *(v2 + 1496) = 0;
  *(v2 + 1512) = v30;
  *(v2 + 1520) = xmmword_1AFE79150;
  type metadata accessor for __vfx_sampler2d(0);
  *(v2 + 1536) = 0;
  *(v2 + 1552) = 0;
  *(v2 + 1544) = 0;
  *(v2 + 1560) = v31;
  *(v2 + 1568) = xmmword_1AFE79160;
  type metadata accessor for __vfx_sampler3d(0);
  *(v2 + 1584) = 0;
  *(v2 + 1600) = 0;
  *(v2 + 1592) = 0;
  *(v2 + 1608) = v32;
  *(v2 + 1616) = xmmword_1AFE79170;
  *(v2 + 1632) = 0;
  *(v2 + 1648) = 0;
  *(v2 + 1640) = 0;
  *(v2 + 1656) = &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedVN;
  *(v2 + 1664) = xmmword_1AFE79050;
  *(v2 + 1680) = 0;
  *(v2 + 1696) = 0;
  *(v2 + 1688) = 0;
  v33 = MEMORY[0x1E69E6158];
  *(v2 + 1704) = MEMORY[0x1E69E6158];
  *(v2 + 1712) = xmmword_1AFE79180;
  v34 = sub_1AFDFC128();
  *(v2 + 1728) = 0;
  *(v2 + 1744) = 0;
  *(v2 + 1736) = 0;
  *(v2 + 1752) = v34;
  *(v2 + 1760) = xmmword_1AFE79190;
  type metadata accessor for simd_quatf(0);
  *(v2 + 1776) = 0;
  *(v2 + 1792) = 0;
  *(v2 + 1784) = 0;
  *(v2 + 1800) = v35;
  *(v2 + 1808) = xmmword_1AFE78FD0;
  sub_1AF80AF34(0, qword_1ED72F9E0, v17, &off_1F2532E98, type metadata accessor for Curve);
  *(v2 + 1824) = 0;
  *(v2 + 1840) = 0;
  *(v2 + 1832) = 0;
  *(v2 + 1848) = v36;
  *(v2 + 1856) = xmmword_1AFE791A0;
  *(v2 + 1872) = 0;
  *(v2 + 1888) = 0;
  *(v2 + 1880) = 0;
  *(v2 + 1896) = v36;
  *(v2 + 1904) = xmmword_1AFE791B0;
  v37 = MEMORY[0x1E69E66A8];
  v38 = MEMORY[0x1E69E6530];
  sub_1AF80AF34(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  *(v2 + 1920) = 0;
  *(v2 + 1936) = 0;
  *(v2 + 1928) = 0;
  *(v2 + 1944) = v39;
  *(v2 + 1952) = xmmword_1AFE791C0;
  sub_1AF80AF34(0, &qword_1ED72F958, v17, MEMORY[0x1E69E6468], v37);
  *(v2 + 1968) = 0;
  *(v2 + 1984) = 0;
  *(v2 + 1976) = 0;
  *(v2 + 1992) = v40;
  *(v2 + 2000) = xmmword_1AFE791D0;
  v41 = MEMORY[0x1E69E62F8];
  sub_1AF80C8C8(0, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
  *(v2 + 2016) = 0;
  *(v2 + 2032) = 0;
  *(v2 + 2024) = 0;
  *(v2 + 2040) = v42;
  *(v2 + 2048) = xmmword_1AFE791E0;
  sub_1AF80C8C8(0, &unk_1ED726C20, MEMORY[0x1E69E7508], v41);
  *(v2 + 2064) = 0;
  *(v2 + 2080) = 0;
  *(v2 + 2072) = 0;
  *(v2 + 2088) = v43;
  *(v2 + 2096) = xmmword_1AFE791F0;
  sub_1AF80C8C8(0, &qword_1EB6332D0, MEMORY[0x1E69E75F8], v41);
  *(v2 + 2112) = 0;
  *(v2 + 2128) = 0;
  *(v2 + 2120) = 0;
  *(v2 + 2136) = v44;
  *(v2 + 2144) = xmmword_1AFE79200;
  sub_1AF80C8C8(0, &qword_1EB63ED78, v4, v41);
  *(v2 + 2160) = 0;
  *(v2 + 2168) = 0;
  *(v2 + 2176) = 0;
  *(v2 + 2184) = v45;
  *(v2 + 2192) = xmmword_1AFE79210;
  sub_1AF80C8C8(0, &qword_1EB63ED70, MEMORY[0x1E69E76D8], v41);
  *(v2 + 2208) = 0;
  *(v2 + 2216) = 0;
  *(v2 + 2224) = 0;
  *(v2 + 2232) = v46;
  *(v2 + 2240) = xmmword_1AFE79220;
  sub_1AF80C8C8(0, &qword_1EB63ED68, MEMORY[0x1E69E7230], v41);
  *(v2 + 2256) = 0;
  *(v2 + 2264) = 0;
  *(v2 + 2272) = 0;
  *(v2 + 2280) = v47;
  *(v2 + 2288) = xmmword_1AFE79230;
  sub_1AF80C8C8(0, &qword_1EB63ED60, MEMORY[0x1E69E7290], v41);
  *(v2 + 2304) = 0;
  *(v2 + 2312) = 0;
  *(v2 + 2320) = 0;
  *(v2 + 2328) = v48;
  *(v2 + 2336) = xmmword_1AFE79240;
  sub_1AF80C8C8(0, &qword_1EB63ED58, MEMORY[0x1E69E72F0], v41);
  *(v2 + 2352) = 0;
  *(v2 + 2360) = 0;
  *(v2 + 2368) = 0;
  *(v2 + 2376) = v49;
  *(v2 + 2384) = xmmword_1AFE79250;
  v50 = MEMORY[0x1E69E7360];
  sub_1AF80C8C8(0, &qword_1EB63ED50, MEMORY[0x1E69E7360], v41);
  *(v2 + 2400) = 0;
  *(v2 + 2408) = 0;
  *(v2 + 2416) = 0;
  *(v2 + 2424) = v51;
  *(v2 + 2432) = xmmword_1AFE79260;
  sub_1AF80C8C8(0, &qword_1ED726C50, v38, v41);
  *(v2 + 2448) = 0;
  *(v2 + 2456) = 0;
  *(v2 + 2464) = 0;
  *(v2 + 2472) = v52;
  *(v2 + 2480) = xmmword_1AFE786F0;
  sub_1AF80C8C8(0, &qword_1ED723210, v17, v41);
  *(v2 + 2496) = 0;
  *(v2 + 2504) = 0;
  *(v2 + 2512) = 0;
  *(v2 + 2520) = v53;
  *(v2 + 2528) = xmmword_1AFE79270;
  sub_1AF44219C();
  *(v2 + 2544) = 0;
  *(v2 + 2552) = 0;
  *(v2 + 2560) = 0;
  *(v2 + 2568) = v54;
  *(v2 + 2576) = xmmword_1AFE79280;
  sub_1AF4420DC();
  *(v2 + 2592) = 0;
  *(v2 + 2600) = 0;
  *(v2 + 2608) = 0;
  *(v2 + 2616) = v55;
  *(v2 + 2624) = xmmword_1AFE78700;
  sub_1AF6560F0();
  *(v2 + 2640) = 0;
  *(v2 + 2648) = 0;
  *(v2 + 2656) = 0;
  *(v2 + 2664) = v56;
  *(v2 + 2672) = xmmword_1AFE79290;
  sub_1AF80C8C8(0, &qword_1ED726C70, v33, v41);
  *(v2 + 2688) = 0;
  *(v2 + 2696) = 0;
  *(v2 + 2704) = 0;
  *(v2 + 2712) = v57;
  *(v2 + 2720) = xmmword_1AFE792A0;
  sub_1AF5877E4(0);
  *(v2 + 2736) = 0;
  *(v2 + 2744) = 0;
  *(v2 + 2752) = 0;
  *(v2 + 2760) = v58;
  *(v2 + 2768) = xmmword_1AFE792B0;
  *(v2 + 2784) = 0;
  *(v2 + 2792) = 0;
  *(v2 + 2800) = 0;
  *(v2 + 2808) = v50;
  v59 = sub_1AF43EF78(v2);
  swift_setDeallocating();
  sub_1AF80D8DC(0, &qword_1EB63F1A8, sub_1AF602AF8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (!v59[2] || (sub_1AF41A308(a1), (v60 & 1) == 0))
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v68[0] = 0;
    *(&v68[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v70 = v68[0];
    MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF36040);
    v61 = *(a1 + 16);
    v68[0] = *a1;
    v68[1] = v61;
    v69 = *(a1 + 32);
    sub_1AFDFE458();
    v62 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v67 = v62;
      swift_once();
      v62 = v67;
    }

    *&v68[0] = 0;
    sub_1AF0D4F18(v62, v68, v70, *(&v70 + 1));
  }

  if (v59[2] && (v63 = sub_1AF41A308(a1), (v64 & 1) != 0))
  {
    v65 = *(v59[7] + 8 * v63);
  }

  else
  {
    v65 = MEMORY[0x1E69E6448];
  }

  return v65;
}

void sub_1AF80D868()
{
  if (!qword_1EB63F198)
  {
    sub_1AF80D8DC(255, &qword_1EB63F1A0, sub_1AF445888);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F198);
    }
  }
}

void sub_1AF80D8DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1AF80D974()
{
  result = qword_1EB63F1B0;
  if (!qword_1EB63F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F1B0);
  }

  return result;
}

unint64_t sub_1AF80D9CC()
{
  result = qword_1EB63F1B8;
  if (!qword_1EB63F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F1B8);
  }

  return result;
}

unint64_t sub_1AF80DA24()
{
  result = qword_1EB6335C0;
  if (!qword_1EB6335C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6335C0);
  }

  return result;
}

unint64_t sub_1AF80DA7C()
{
  result = qword_1EB6335C8;
  if (!qword_1EB6335C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6335C8);
  }

  return result;
}

unint64_t sub_1AF80DAD4()
{
  result = qword_1EB63F1C0;
  if (!qword_1EB63F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F1C0);
  }

  return result;
}

unint64_t sub_1AF80DB2C()
{
  result = qword_1EB63F1C8;
  if (!qword_1EB63F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F1C8);
  }

  return result;
}

unint64_t sub_1AF80DB80()
{
  result = qword_1EB63F1D8;
  if (!qword_1EB63F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F1D8);
  }

  return result;
}

void sub_1AF80DBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF80DC50()
{
  result = qword_1EB63F1E8;
  if (!qword_1EB63F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F1E8);
  }

  return result;
}

unint64_t sub_1AF80DCA8()
{
  result = qword_1EB63F1F0;
  if (!qword_1EB63F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F1F0);
  }

  return result;
}

unint64_t sub_1AF80DD00()
{
  result = qword_1EB63F1F8;
  if (!qword_1EB63F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F1F8);
  }

  return result;
}

uint64_t sub_1AF80DD54()
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](*(v0 + 32));
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();

  return MEMORY[0x1B271ACB0](v1);
}

uint64_t sub_1AF80DDB0()
{
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF80DE0C()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](*(v0 + 32));
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();

  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF80DED8()
{
  sub_1AFDFF288();
  sub_1AF80DD54();
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF80DF28()
{
  result = qword_1EB63F200;
  if (!qword_1EB63F200)
  {
    type metadata accessor for VFXAttribute();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F200);
  }

  return result;
}

double sub_1AF80DF7C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    swift_unownedRetainStrong();
    sub_1AF67E3AC(v3, v6, *(v1 + 24), v12);

    v7 = v13;
    if (v13)
    {
      v8 = v14;
      v9 = sub_1AF441150(v12, v13);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(v8 + 8);
      v10 = sub_1AF585714(a1);
      (*(*(v7 - 8) + 16))(v10, v9, v7);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
      return result;
    }

    sub_1AF80E114(v12);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

BOOL sub_1AF80E090(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  swift_unownedRetainStrong();
  v6 = *(a2 + 16);
  swift_unownedRetainStrong();

  return v4 == v6;
}

uint64_t sub_1AF80E114(uint64_t a1)
{
  sub_1AF80E170();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF80E170()
{
  if (!qword_1EB634220)
  {
    sub_1AF47BC9C();
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB634220);
    }
  }
}

uint64_t sub_1AF80E1C8(int32x2_t *a1, uint64_t a2, unint64_t a3)
{
  if (a3 == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v4 = 0;
  if ((a3 & 0x80000000) == 0 && a3 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    if (HIDWORD(a3) != 0xFFFFFFFF && *(*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3 + 8) != HIDWORD(a3))
    {
      goto LABEL_2;
    }

    sub_1AF64B03C(&type metadata for EmitterDescription);
    if (v7)
    {

LABEL_2:
      v4 = 0;
      return v4 & 1;
    }

    v8 = swift_modifyAtWritableKeyPath();
    v10 = v9;
    v11 = sub_1AFB7BCF0(*v9, a1);
    if ((v11 & 1) == 0)
    {
      *v10 = a1;
    }

    v4 = v11 ^ 1;
    v8(&v12, 0);
  }

  return v4 & 1;
}

uint64_t sub_1AF80E324(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 == 0xFFFFFFFF)
  {
    return 0;
  }

  v4 = 0;
  if ((a3 & 0x80000000) == 0 && a3 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    if (HIDWORD(a3) != 0xFFFFFFFF && *(*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3 + 8) != HIDWORD(a3))
    {
      return 0;
    }

    sub_1AF64B03C(&type metadata for Parent);
    if (v7)
    {

      return 0;
    }

    v8 = a1;
    v9 = HIDWORD(a1);
    v11 = swift_modifyAtWritableKeyPath();
    v12 = *v10 == v8 && v10[1] == v9;
    v13 = !v12;
    if (!v12)
    {
      *v10 = v8;
      v10[1] = v9;
    }

    v11(&v14, 0);

    return v13;
  }

  return v4;
}

uint64_t sub_1AF80E468(unsigned __int8 a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1AF820374(&type metadata for EmitterDescription, &off_1F2563648, a2, a3);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    sub_1AF80DF7C(v46);
    if (v47)
    {
      sub_1AF5D1678();
      if (swift_dynamicCast())
      {
        v36 = v43;
        v37 = v44;
        v32 = v39;
        v33 = v40;
        v38 = v45;
        v34 = v41;
        v35 = v42;
        if (a1 <= 1u)
        {
          if (a1)
          {
            v13 = *(v32 + 16);
            if (v13)
            {
              sub_1AFC072B4(0, v13, 0);
              v14 = (v32 + 32);
              do
              {
                v15 = *v14;
                v17 = *(v6 + 16);
                v16 = *(v6 + 24);
                if (v17 >= v16 >> 1)
                {
                  sub_1AFC072B4(v16 > 1, v17 + 1, 1);
                }

                *(v6 + 16) = v17 + 1;
                v18 = v6 + 16 * v17;
                *(v18 + 32) = v15;
                *(v18 + 40) = a3;
                ++v14;
                --v13;
              }

              while (v13);
            }
          }
        }

        else if (a1 == 2)
        {
          v19 = *(*(&v32 + 1) + 16);
          if (v19)
          {
            sub_1AFC072B4(0, v19, 0);
            v20 = (*(&v32 + 1) + 32);
            do
            {
              v21 = *v20;
              v23 = *(v6 + 16);
              v22 = *(v6 + 24);
              if (v23 >= v22 >> 1)
              {
                sub_1AFC072B4(v22 > 1, v23 + 1, 1);
              }

              *(v6 + 16) = v23 + 1;
              v24 = v6 + 16 * v23;
              *(v24 + 32) = v21;
              *(v24 + 40) = a3;
              ++v20;
              --v19;
            }

            while (v19);
          }
        }

        else if (a1 == 3)
        {
          v7 = *(v33 + 16);
          if (v7)
          {
            sub_1AFC072B4(0, v7, 0);
            v8 = (v33 + 32);
            do
            {
              v9 = *v8;
              v11 = *(v6 + 16);
              v10 = *(v6 + 24);
              if (v11 >= v10 >> 1)
              {
                sub_1AFC072B4(v10 > 1, v11 + 1, 1);
              }

              *(v6 + 16) = v11 + 1;
              v12 = v6 + 16 * v11;
              *(v12 + 32) = v9;
              *(v12 + 40) = a3;
              ++v8;
              --v7;
            }

            while (v7);
          }
        }

        else
        {
          v25 = *(*(&v33 + 1) + 16);
          if (v25)
          {
            sub_1AFC072B4(0, v25, 0);
            v26 = (*(&v33 + 1) + 32);
            do
            {
              v27 = *v26;
              v29 = *(v6 + 16);
              v28 = *(v6 + 24);
              if (v29 >= v28 >> 1)
              {
                sub_1AFC072B4(v28 > 1, v29 + 1, 1);
              }

              *(v6 + 16) = v29 + 1;
              v30 = v6 + 16 * v29;
              *(v30 + 32) = v27;
              *(v30 + 40) = a3;
              ++v26;
              --v25;
            }

            while (v25);
          }
        }

        sub_1AF57A684(&v32);
      }

      else
      {
      }
    }

    else
    {

      sub_1AF80F3A4(v46, sub_1AF645A60);
    }
  }

  return v6;
}

uint64_t sub_1AF80E7C4(uint64_t result, unsigned __int8 a2, uint64_t a3, unint64_t a4)
{
  v6 = HIDWORD(a4);
  if (a2 <= 1u)
  {
    if (!a2)
    {
      return result;
    }

    sub_1AF80F2BC(result, v36);
    v13 = *(a3 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v34[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v13, 0);
      v8 = v34[0];
      v14 = (a3 + 32);
      v15 = *(v34[0] + 16);
      do
      {
        v16 = *v14;
        v34[0] = v8;
        v17 = v8[3];
        if (v15 >= v17 >> 1)
        {
          sub_1AFC07194(v17 > 1, v15 + 1, 1);
          v8 = v34[0];
        }

        v8[2] = (v15 + 1);
        v8[v15 + 4] = v16;
        v14 += 2;
        ++v15;
        --v13;
      }

      while (v13);
    }
  }

  else if (a2 == 2)
  {
    sub_1AF80F2BC(result, v36);
    v18 = *(a3 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v34[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v18, 0);
      v8 = v34[0];
      v19 = (a3 + 32);
      v20 = *(v34[0] + 16);
      do
      {
        v21 = *v19;
        v34[0] = v8;
        v22 = v8[3];
        if (v20 >= v22 >> 1)
        {
          sub_1AFC07194(v22 > 1, v20 + 1, 1);
          v8 = v34[0];
        }

        v8[2] = (v20 + 1);
        v8[v20 + 4] = v21;
        v19 += 2;
        ++v20;
        --v18;
      }

      while (v18);
    }
  }

  else if (a2 == 3)
  {
    sub_1AF80F2BC(result, v36);
    v7 = *(a3 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v34[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v7, 0);
      v8 = v34[0];
      v9 = (a3 + 32);
      v10 = *(v34[0] + 16);
      do
      {
        v11 = *v9;
        v34[0] = v8;
        v12 = v8[3];
        if (v10 >= v12 >> 1)
        {
          sub_1AFC07194(v12 > 1, v10 + 1, 1);
          v8 = v34[0];
        }

        v8[2] = (v10 + 1);
        v8[v10 + 4] = v11;
        v9 += 2;
        ++v10;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    sub_1AF80F2BC(result, v36);
    v23 = *(a3 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v34[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v23, 0);
      v8 = v34[0];
      v24 = (a3 + 32);
      v25 = *(v34[0] + 16);
      do
      {
        v26 = *v24;
        v34[0] = v8;
        v27 = v8[3];
        if (v25 >= v27 >> 1)
        {
          sub_1AFC07194(v27 > 1, v25 + 1, 1);
          v8 = v34[0];
        }

        v8[2] = (v25 + 1);
        v8[v25 + 4] = v26;
        v24 += 2;
        ++v25;
        --v23;
      }

      while (v23);
    }
  }

  KeyPath = swift_getKeyPath();
  if (v6 || a4 != -1)
  {
    v29 = v36[0];
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    swift_unownedRetainStrong();
    v30 = sub_1AF80E1C8(v8, KeyPath, a4);

    Strong = swift_unknownObjectUnownedLoadStrong();
    if ((v30 & 1) == 0)
    {
      v33 = Strong;

      if (v33)
      {
        swift_unknownObjectRelease();
      }

      return sub_1AF579490(v36);
    }

    if (Strong)
    {
      swift_unknownObjectRelease();
    }

    if (v37 == 1)
    {
      swift_unownedRetainStrong();
      v34[0] = __PAIR64__(v6, a4);
      v34[1] = v29;
      sub_1AF80F318();
      v34[5] = v32;
      v34[6] = &off_1F2536190;
      v34[2] = KeyPath;
      v34[3] = v8;
      v35 = 11;

      sub_1AF6C67D0(v34);

      sub_1AF57955C(v34);
    }
  }

  return sub_1AF579490(v36);
}

uint64_t sub_1AF80EBCC(char a1)
{
  v2 = v1;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v88 = qword_1ED73B840;
  v89 = 0;
  v90 = 2;
  v91 = 0;
  v92 = 2;
  v93 = 0;
  sub_1AF702F8C(1, &v67);
  v82 = v67;
  v83 = v68;
  v84 = v69;
  v85 = v70 & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
  v86 = v71;
  v87 = v72;
  sub_1AF6B06C0(v1, &v82, 0x200000000, v73);
  v53 = *v73;
  if (!*v73)
  {
    sub_1AF80F3A4(&v67, sub_1AF701034);
    return MEMORY[0x1E69E7CC0];
  }

  v52 = *&v73[40];
  v4 = *(&v74 + 1);
  v58 = *(&v75 + 1);
  v77 = *&v73[8];
  v78 = *&v73[24];
  if (v76 <= 0)
  {
    sub_1AF80F3A4(&v67, sub_1AF701034);
    sub_1AF5D1564(v73);
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(&v74 + 1))
  {
    v63 = *&v73[32];
    v64 = v74;
    v65 = v75;
    v66 = v76;
    v61 = *v73;
    v62 = *&v73[16];
    sub_1AF5DD298(&v61, v59);
    sub_1AF80F3A4(&v67, sub_1AF701034);
    sub_1AF5D1564(v73);
    v50 = MEMORY[0x1E69E7CC0];
    goto LABEL_66;
  }

  v57 = *(*(&v75 + 1) + 32);
  v56 = *(v75 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v63 = *&v73[32];
  v64 = v74;
  v65 = v75;
  v66 = v76;
  v61 = *v73;
  v62 = *&v73[16];
  sub_1AF5DD298(&v61, v59);
  v5 = 0;
  v6 = 0;
  v50 = MEMORY[0x1E69E7CC0];
  v51 = v4;
  while (1)
  {
    v54 = v6;
    v55 = v5;
    v7 = (v52 + 48 * v5);
    v9 = *v7;
    v8 = v7[1];
    v11 = *(v7 + 2);
    v10 = *(v7 + 3);
    v12 = *(v7 + 4);
    v13 = *(v7 + 5);
    if (v56)
    {
      v14 = *(v13 + 376);

      os_unfair_lock_lock(v14);
      os_unfair_lock_lock(*(v13 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v57);
    v15 = *(v58 + 64);
    v59[0] = *(v58 + 48);
    v59[1] = v15;
    v60 = *(v58 + 80);
    v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
    *(v58 + 48) = ecs_stack_allocator_allocate(*(v58 + 32), 48 * v16, 8);
    *(v58 + 56) = v16;
    *(v58 + 72) = 0;
    *(v58 + 80) = 0;
    *(v58 + 64) = 0;
    sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v11, v10, v12, v58);
    if (v11)
    {
      if (v12)
      {
        while (1)
        {
          v18 = *v11++;
          v17 = v18;

          if (*(v13 + 184))
          {
            goto LABEL_67;
          }

          v20 = *(*(v13 + 168) + 4 * v17);
          v21 = *(*(v19 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v20 + 8);

          if (v20 == -1)
          {
            if (!v21)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v22 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

            if ((v20 & 0x80000000) == 0 && *(v2 + v22 + 8) > v20)
            {
              v23 = *(v2 + v22) + 12 * v20;
              if (v21 == -1 || *(v23 + 8) == v21)
              {
                v25 = *(*(*(v2 + 88) + 8 * *(v23 + 6) + 32) + 16);
                v26 = *(v25 + 128);
                if (*(v26 + 16))
                {
                  v27 = sub_1AF449CB8(&type metadata for EmitterDescription);
                  if (v28)
                  {
                    v29 = *(*(v25 + 24) + 16 * *(*(v26 + 56) + 8 * v27) + 32);

                    if (v29 == &type metadata for EmitterDescription)
                    {
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        v30 = v50;
                      }

                      else
                      {
                        v30 = sub_1AF423F84(0, *(v50 + 2) + 1, 1, v50);
                      }

                      v32 = *(v30 + 2);
                      v31 = *(v30 + 3);
                      if (v32 >= v31 >> 1)
                      {
                        v30 = sub_1AF423F84(v31 > 1, v32 + 1, 1, v30);
                      }

                      *(v30 + 2) = v32 + 1;
                      v50 = v30;
                      v33 = &v30[16 * v32];
                      *(v33 + 8) = v20;
                      *(v33 + 9) = v21;
                      *(v33 + 5) = v2;
                    }

                    goto LABEL_15;
                  }
                }
              }
            }
          }

LABEL_15:
          if (!--v12)
          {
            goto LABEL_37;
          }
        }
      }

      goto LABEL_37;
    }

    if (v9 != v8)
    {
      break;
    }

LABEL_37:
    v6 = v54;
    v79 = v53;
    v80 = v77;
    v81 = v78;
    sub_1AF630994(v58, &v79, v59);
    sub_1AF62D29C(v13);
    ecs_stack_allocator_pop_snapshot(v57);
    if (v56)
    {
      os_unfair_lock_unlock(*(v13 + 344));
      os_unfair_lock_unlock(*(v13 + 376));
    }

    v5 = v55 + 1;
    if (v55 + 1 == v51)
    {
      sub_1AF80F3A4(&v67, sub_1AF701034);
      sub_1AF5D1564(v73);
LABEL_66:
      sub_1AF5D1564(v73);
      return v50;
    }
  }

  while (1)
  {

    if (*(v13 + 184))
    {
      break;
    }

    v35 = *(*(v13 + 168) + 4 * v9);
    v36 = *(*(v34 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v35 + 8);

    if (v35 == -1)
    {
      if (!v36)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v37 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

      if ((v35 & 0x80000000) == 0 && *(v2 + v37 + 8) > v35)
      {
        v38 = *(v2 + v37) + 12 * v35;
        if (v36 == -1 || *(v38 + 8) == v36)
        {
          v40 = *(*(*(v2 + 88) + 8 * *(v38 + 6) + 32) + 16);
          v41 = *(v40 + 128);
          if (*(v41 + 16))
          {
            v42 = sub_1AF449CB8(&type metadata for EmitterDescription);
            if (v43)
            {
              v44 = *(*(v40 + 24) + 16 * *(*(v41 + 56) + 8 * v42) + 32);

              if (v44 == &type metadata for EmitterDescription)
              {
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v45 = v50;
                }

                else
                {
                  v45 = sub_1AF423F84(0, *(v50 + 2) + 1, 1, v50);
                }

                v47 = *(v45 + 2);
                v46 = *(v45 + 3);
                if (v47 >= v46 >> 1)
                {
                  v45 = sub_1AF423F84(v46 > 1, v47 + 1, 1, v45);
                }

                *(v45 + 2) = v47 + 1;
                v50 = v45;
                v48 = &v45[16 * v47];
                *(v48 + 8) = v35;
                *(v48 + 9) = v36;
                *(v48 + 5) = v2;
              }

              goto LABEL_40;
            }
          }
        }
      }
    }

LABEL_40:
    if (v8 == ++v9)
    {
      goto LABEL_37;
    }
  }

LABEL_67:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF80F318()
{
  if (!qword_1EB63F208)
  {
    sub_1AF7021F8(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F208);
    }
  }
}

uint64_t sub_1AF80F3A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF80F414(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1AF80F444()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF80F574@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF81BC00();
  *a1 = result;
  return result;
}

void sub_1AF80F5A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D61;
  v4 = 0x4E7463656A6F7250;
  v5 = 0xEE0079726F747369;
  v6 = 0x486E6F6973726556;
  if (v2 != 5)
  {
    v6 = 0x6C6946656E656353;
    v5 = 0xED0000656D616E65;
  }

  v7 = 0xEA00000000006465;
  v8 = 0x74726F7078457349;
  if (v2 != 3)
  {
    v8 = 0x325846567349;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1145656661;
  if (v2 != 1)
  {
    v10 = 0x6E6F6973726556;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1AF80F69C()
{
  v1 = *v0;
  v2 = 0x4E7463656A6F7250;
  v3 = 0x486E6F6973726556;
  if (v1 != 5)
  {
    v3 = 0x6C6946656E656353;
  }

  v4 = 0x74726F7078457349;
  if (v1 != 3)
  {
    v4 = 0x325846567349;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1145656661;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726556;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF80F790@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF81BC00();
  *a1 = result;
  return result;
}

uint64_t sub_1AF80F7B8(uint64_t a1)
{
  v2 = sub_1AF817678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF80F7F4(uint64_t a1)
{
  v2 = sub_1AF817678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF80F830@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_1AF81B9D0(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v50 = &v43 - v5;
  v6 = sub_1AFDFC318();
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF817768(0, &qword_1ED726A98, MEMORY[0x1E69E6F48]);
  v11 = v10;
  v54 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for BundleInfo();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v18[*(v19 + 40)];
  *v20 = 0;
  *(v20 + 1) = 0;
  sub_1AF441150(a1, a1[3]);
  sub_1AF817678();
  v21 = v55;
  sub_1AFDFF3B8();
  if (v21)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v55 = v20;
  v46 = a1;
  v47 = v18;
  v48 = v15;
  LOBYTE(v57) = 1;
  sub_1AF820200(&qword_1ED72DF38, MEMORY[0x1E69695A8]);
  v23 = v51;
  v22 = v52;
  sub_1AFDFE768();
  v25 = v47;
  v24 = v48;
  (*(v53 + 32))(v47 + v48[5], v23, v22);
  LOBYTE(v57) = 2;
  v26 = sub_1AFDFE748();
  *(v25 + v24[6]) = v26;
  sub_1AF81F62C(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  LOBYTE(v59) = 5;
  sub_1AF80A96C();
  sub_1AFDFE768();
  v51 = v11;
  v45 = v14;
  v28 = v57;
  v29 = MEMORY[0x1B27191B0](*(v57 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v59 = v29;
  v30 = *(v28 + 16);
  if (v30)
  {
    v31 = 32;
    do
    {
      sub_1AF70D168(&v56, *(v28 + v31));
      v31 += 8;
      --v30;
    }

    while (v30);

    v32 = v59;
    v25 = v47;
    v24 = v48;
  }

  else
  {
    v32 = v29;
  }

  *(v25 + v24[9]) = v32;
  if (v26 < 1023)
  {
    v33 = v26;
    v34 = 0;
    *v25 = 0;
    v25[1] = 0;
LABEL_10:
    v35 = v55;
    *(v25 + v24[7]) = 0;
    v36 = v45;
    goto LABEL_11;
  }

  sub_1AF81F62C(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  LOBYTE(v59) = 0;
  sub_1AF81B94C(&qword_1ED726CB8);
  sub_1AFDFE768();
  v34 = v58;
  *v25 = v57;
  v25[1] = v34;
  v33 = v26;
  if (v26 < 0x421)
  {
    goto LABEL_10;
  }

  LOBYTE(v57) = 3;
  *(v25 + v24[7]) = sub_1AFDFE718() & 1;
  if (v26 >= 0x7D9)
  {
    LOBYTE(v59) = 6;
    v39 = v45;
    sub_1AFDFE768();
    v44 = v34;
    v36 = v39;
    v40 = v58;
    v41 = v55;
    *v55 = v57;
    *(v41 + 1) = v40;
    goto LABEL_12;
  }

  v36 = v45;
  v35 = v55;
LABEL_11:
  v44 = v34;
  *v35 = 0;
  *(v35 + 1) = 0;
LABEL_12:
  LOBYTE(v57) = 4;
  v37 = sub_1AFDFE6A8();
  v38 = v46;
  *(v25 + v24[8]) = v37 & 1;
  v42 = v49;
  sub_1AF70D168(&v57, v33);
  (*(v54 + 8))(v36, v51);
  sub_1AF81B8E8(v25, v42);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v38);
  return sub_1AF81F384(v25, type metadata accessor for BundleInfo);
}

uint64_t sub_1AF81055C(void *a1)
{
  v3 = v1;
  sub_1AF817768(0, &qword_1EB63F230, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF817678();
  sub_1AFDFF3F8();
  v14 = *v3;
  v15 = 0;
  sub_1AF81F62C(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1AF81B94C(&qword_1EB6442C0);
  sub_1AFDFE918();
  if (!v2)
  {
    v11 = type metadata accessor for BundleInfo();
    LOBYTE(v14) = 3;
    sub_1AFDFE8C8();
    LOBYTE(v14) = 4;
    sub_1AFDFE8C8();
    v13[1] = v11[5];
    LOBYTE(v14) = 1;
    sub_1AFDFC318();
    sub_1AF820200(&qword_1EB639808, MEMORY[0x1E69695A8]);
    sub_1AFDFE918();
    LOBYTE(v14) = 2;
    sub_1AFDFE8F8();
    *&v14 = *(v3 + v11[9]);
    v15 = 5;
    sub_1AF8201AC(0, &qword_1EB63F238, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E64E8]);
    sub_1AF8176CC();
    sub_1AFDFE918();
    v14 = *(v3 + v11[10]);
    v15 = 6;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF81090C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for SwiftTrampolineCodeGen();
  swift_initStackObject();

  sub_1AFB0F318(a1, a2, a3);

  v12 = sub_1AFB081E0(1);
  if (v5)
  {
  }

  else
  {
    v15 = v12;
    v24 = v14;
    v23 = v13;
    type metadata accessor for CTrampolineCodeGen();
    swift_initStackObject();

    sub_1AFB0F318(a1, a2, a3);

    sub_1AFB06C28(1);
    v19 = v16;
    v20 = v17;
    if (v15 < 1)
    {

      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = v23;
      v22 = v24;
    }

    v6 = sub_1AF810AF8(v21, v22, v19, v20, a4, a5 & 1);
  }

  return v6;
}

uint64_t sub_1AF810AF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v80 = a6;
  v90 = a4;
  v82 = a3;
  v83 = a1;
  v89 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v89, v8);
  v81 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v93 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v79 = &v78 - v16;
  v17 = MEMORY[0x1E69E7CC0];
  v99 = MEMORY[0x1E69E7CC0];
  v18 = 1 << *(a5 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a5 + 56);
  v21 = (v18 + 63) >> 6;
  v88 = v15;
  v85 = v15 + 32;

  v22 = 0;
  v91 = a5;
  v86 = v21;
  v87 = a2;
  if (v20)
  {
LABEL_7:
    do
    {
      LOWORD(v95) = *(*(a5 + 48) + ((v22 << 7) | (2 * __clz(__rbit64(v20)))));
      type metadata accessor for XcodeCommandBuilder();
      v24 = swift_allocObject();
      v25 = sub_1AF45D418(&v95);
      if (!v25)
      {
        goto LABEL_37;
      }

      v26 = v25;
      v27 = *(v25 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 32) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1AF420554(0, *(v27 + 2) + 1, 1, v27);
        *(v26 + 32) = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1AF420554(v29 > 1, v30 + 1, 1, v27);
      }

      *(v27 + 2) = v30 + 1;
      v31 = &v27[16 * v30];
      *(v31 + 4) = 5785174;
      *(v31 + 5) = 0xE300000000000000;
      *(v26 + 32) = v27;
      v92 = v17;
      if (a2)
      {
        type metadata accessor for SwiftCodeLoader();
        swift_allocObject();
        sub_1AF45207C();
        v24 = v32;
        *(v32 + 120) = v26;

        v33 = v94;
        v34 = sub_1AF452240(v83, a2);
        if (v33)
        {
          v94 = v33;

          goto LABEL_56;
        }

        sub_1AF4531AC(v34, v35);
        v94 = 0;
        v36 = v97;
        v37 = v98;

        v38 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v40 = *(v38 + 2);
        v39 = *(v38 + 3);
        if (v40 >= v39 >> 1)
        {
          v38 = sub_1AF420554(v39 > 1, v40 + 1, 1, v38);
        }

        *(v38 + 2) = v40 + 1;
        v41 = &v38[16 * v40];
        *(v41 + 4) = v36;
        *(v41 + 5) = v37;
        a5 = v91;
      }

      else
      {
        v38 = MEMORY[0x1E69E7CC0];
      }

      type metadata accessor for CCodeLoader();
      *(swift_allocObject() + 128) = 0;
      sub_1AF45207C();
      v43 = v42;
      v42[15] = v26;

      if (v90)
      {
        v24 = v43;
        v44 = v94;
        v45 = sub_1AF452240(v82, v90);
        if (v44)
        {
          v94 = v44;
LABEL_55:

          goto LABEL_56;
        }

        (*(*v43 + 456))(&v95, v45);
        v94 = 0;
        v46 = v97;
        v84 = v98;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1AF420554(0, *(v38 + 2) + 1, 1, v38);
        }

        v48 = *(v38 + 2);
        v47 = *(v38 + 3);
        v49 = v94;
        if (v48 >= v47 >> 1)
        {
          v54 = sub_1AF420554(v47 > 1, v48 + 1, 1, v38);
          v49 = v94;
          v38 = v54;
        }

        *(v38 + 2) = v48 + 1;
        v50 = &v38[16 * v48];
        v51 = v84;
        *(v50 + 4) = v46;
        *(v50 + 5) = v51;
        a5 = v91;
      }

      else
      {
        v49 = v94;
      }

      v24 = v43;
      sub_1AF4528AC(v38);
      v94 = v49;
      if (v49)
      {
        goto LABEL_55;
      }

      if (*(a5 + 16) == 1)
      {
        if (v80)
        {

          v68 = v79;
          sub_1AFDFC018();

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v95 = 0;
          v96 = 0xE000000000000000;
          sub_1AFDFE218();

          v95 = 0xD000000000000013;
          v96 = 0x80000001AFF362C0;
          v69 = sub_1AFDFC028();
          MEMORY[0x1B2718AE0](v69);

          v71 = v95;
          v70 = v96;
          v72 = sub_1AFDFD9F8();
          if (qword_1ED731058 != -1)
          {
            v77 = v72;
            swift_once();
            v72 = v77;
          }

          v95 = 0;
          sub_1AF0D4F18(v72, &v95, v71, v70);

          sub_1AF45F6E8();

          sub_1AF432980(MEMORY[0x1E69E7CC0]);

          v24 = 0x80000001AFF28A10;
          sub_1AF4563A0();
          v73 = swift_allocError();
          *v74 = 0xD000000000000027;
          *(v74 + 8) = 0x80000001AFF28A10;
          *(v74 + 16) = 0;
          *(v74 + 24) = 0;
          *(v74 + 32) = 3;
          v94 = v73;
          swift_willThrow();

          (*(v88 + 8))(v68, v89);
        }

        else
        {

          v24 = v43[4];
        }

        goto LABEL_57;
      }

      sub_1AFDFC018();

      v17 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1AF422744(0, v17[2] + 1, 1, v17);
      }

      v53 = v17[2];
      v52 = v17[3];
      if (v53 >= v52 >> 1)
      {
        v17 = sub_1AF422744(v52 > 1, v53 + 1, 1, v17);
      }

      v20 &= v20 - 1;

      v17[2] = v53 + 1;
      (*(v88 + 32))(v17 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v53, v93, v89);
      v99 = v17;
      v21 = v86;
      a2 = v87;
    }

    while (v20);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (v22 + 1 >= v21)
    {
      break;
    }

    v20 = *(a5 + 8 * v22++ + 64);
    if (v20)
    {
      v22 = v23;
      goto LABEL_7;
    }
  }

  type metadata accessor for SwiftCodeLoader();
  swift_allocObject();
  sub_1AF45207C();
  v56 = v55;
  LOWORD(v95) = 512;
  type metadata accessor for XcodeCommandBuilder();
  v24 = swift_allocObject();
  v57 = sub_1AF45D418(&v95);
  if (!v57)
  {
LABEL_37:
    sub_1AF81F330();
    v60 = swift_allocError();
    *v61 = 0;
    v61[1] = 0;
    v94 = v60;
    swift_willThrow();
    goto LABEL_56;
  }

  *(v56 + 120) = v57;

  v58 = v81;
  v24 = v56;
  v59 = v94;
  sub_1AF452E2C(v17);
  if (v59)
  {
    v94 = v59;

LABEL_56:

    goto LABEL_57;
  }

  if (v80)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v95 = 0;
    v96 = 0xE000000000000000;
    sub_1AFDFE218();

    v95 = 0xD000000000000013;
    v96 = 0x80000001AFF362C0;
    v62 = sub_1AFDFC028();
    MEMORY[0x1B2718AE0](v62);

    v64 = v95;
    v63 = v96;
    v65 = sub_1AFDFD9F8();
    if (qword_1ED731058 != -1)
    {
      v76 = v65;
      swift_once();
      v65 = v76;
    }

    v95 = 0;
    sub_1AF0D4F18(v65, &v95, v64, v63);

    sub_1AF45F6E8();

    sub_1AF432980(MEMORY[0x1E69E7CC0]);

    v24 = 0x80000001AFF28A10;
    sub_1AF4563A0();
    v66 = swift_allocError();
    *v67 = 0xD000000000000027;
    *(v67 + 8) = 0x80000001AFF28A10;
    *(v67 + 16) = 0;
    *(v67 + 24) = 0;
    *(v67 + 32) = 3;
    v94 = v66;
    swift_willThrow();

    (*(v88 + 8))(v58, v89);
  }

  else
  {
    v94 = 0;
    v24 = sub_1AFDFC0D8();

    (*(v88 + 8))(v58, v89);
  }

LABEL_57:
  sub_1AF811668(&v99);

  return v24;
}

void sub_1AF811668(uint64_t *a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AFDFC128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = objc_opt_self();
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v23 = v11;
    v24 = v9;
    v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    v14 = (v10 - 8);
    v22 = v7;

    do
    {
      v16 = v10;
      v23(v6, v12, v2);
      v17 = [v24 defaultManager];
      v18 = sub_1AFDFC048();
      v25[0] = 0;
      v19 = [v17 removeItemAtURL:v18 error:v25];

      if (v19)
      {
        v15 = v25[0];
      }

      else
      {
        v20 = v25[0];
        v21 = sub_1AFDFBF58();

        swift_willThrow();
      }

      (*v14)(v6, v2);
      v12 += v13;
      --v8;
      v10 = v16;
    }

    while (v8);
  }
}

double sub_1AF811870()
{
  *(v0 + 16) = 0;
  *&result = 16777217;
  *(v0 + 20) = 16777217;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

void sub_1AF81188C(_BYTE *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    v1 = [objc_opt_self() defaultManager];
    v2 = sub_1AFDFC048();
    v8[0] = 0;
    v3 = [v1 removeItemAtURL:v2 error:v8];

    v4 = v8[0];
    if (v3)
    {

      v5 = v4;
    }

    else
    {
      v6 = v8[0];
      v7 = sub_1AFDFBF58();

      swift_willThrow();
    }
  }
}

uint64_t sub_1AF8119B8(uint64_t a1, void *a2, unint64_t a3, char a4)
{
  type metadata accessor for JavaScriptCodeLoader();
  swift_allocObject();
  sub_1AF45207C();
  v9 = v8;
  type metadata accessor for JavaScriptTrampolineCodeGen();
  swift_initStackObject();

  sub_1AFB0F318(a1, a2, a3);

  v11 = sub_1AFB01F1C(a4);
  v12 = *(v11 + 16);
  v18 = sub_1AFAFA374();
  v19 = v13;
  if (qword_1ED724988 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B2718AE0](qword_1ED73B400, *algn_1ED73B408);
  v14 = sub_1AFB02608(v11);

  v15 = sub_1AFA5413C(v14);
  v17 = v16;

  MEMORY[0x1B2718AE0](v15, v17);

  if (v12)
  {
    sub_1AF4553C4(v18, v19);
  }

  else
  {

    return 0;
  }

  return v9;
}

void sub_1AF811BB0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v35 - v14;
  if (a2)
  {
    v17 = a2;
  }

  else
  {
    (*(v8 + 16))(&v35 - v14, a1, v7, v15);
    v28 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v29 = sub_1AF81B794(v16, 0);
    if (v3)
    {
      return;
    }

    v17 = v29;
  }

  v18 = a2;
  v19 = [v17 fileWrappers];
  if (!v19)
  {
    goto LABEL_12;
  }

  sub_1AF0D4478(0, &unk_1ED726BA0);
  v20 = sub_1AFDFCC08();

  if (!*(v20 + 16) || (v21 = sub_1AF419914(0x6F736A2E6F666E69, 0xE90000000000006ELL), (v22 & 1) == 0))
  {

    v19 = 0;
    goto LABEL_12;
  }

  v19 = *(*(v20 + 56) + 8 * v21);

  v23 = [v19 regularFileContents];
  if (!v23)
  {
LABEL_12:
    sub_1AF4567E0();
    swift_allocError();
    *v30 = 0xD000000000000022;
    *(v30 + 8) = 0x80000001AFF36930;
    *(v30 + 16) = 96;
    swift_willThrow();
    goto LABEL_13;
  }

  v36 = v8;
  v24 = v23;
  v38 = sub_1AFDFC1B8();
  v39 = v25;

  sub_1AFDFBBB8();
  swift_allocObject();
  v26 = sub_1AFDFBBA8();
  v37 = a3;
  v27 = v26;
  type metadata accessor for BundleInfo();
  sub_1AF820200(&qword_1ED72DF00, type metadata accessor for BundleInfo);
  sub_1AFDFBB88();
  if (v3)
  {

    sub_1AF439ED8(v38, v39);
LABEL_13:

    return;
  }

  v35 = v27;
  v31 = v37;
  if (v37[1])
  {

    sub_1AF439ED8(v38, v39);
  }

  else
  {
    sub_1AFDFC068();
    v32 = sub_1AFDFC028();
    v34 = v33;

    sub_1AF439ED8(v38, v39);

    (*(v36 + 8))(v11, v7);
    *v31 = v32;
    v31[1] = v34;
  }
}

uint64_t sub_1AF811F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_1AF81B9D0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v32 = &v32 - v5;
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v32 - v14;
  (*(v7 + 16))(&v32 - v14, a1, v6, v13);
  if (sub_1AFDFC028() == 47 && v16 == 0xE100000000000000)
  {
LABEL_10:
  }

  else
  {
    while (1)
    {
      v18 = sub_1AFDFEE28();

      if (v18)
      {
        break;
      }

      sub_1AFDFC028();
      v19 = sub_1AFDFD188();

      if (v19)
      {
        break;
      }

      sub_1AFDFC028();
      v20 = sub_1AFDFD188();

      if (v20)
      {
        break;
      }

      sub_1AFDFC098();
      (*(v7 + 40))(v15, v10, v6);
      if (sub_1AFDFC028() == 47 && v21 == 0xE100000000000000)
      {
        goto LABEL_10;
      }
    }
  }

  v22 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v23 = sub_1AFDFC048();
  v24 = [v22 initWithURL_];

  if (v24)
  {
    v25 = sub_1AFDFCEC8();
    v26 = sub_1AFDFCEC8();
    v27 = [v24 URLForResource:v25 withExtension:v26];

    if (v27)
    {
      v28 = v32;
      sub_1AFDFC0B8();

      v29 = 0;
    }

    else
    {
      v29 = 1;
      v28 = v32;
    }

    v30 = v33;
    (*(v7 + 8))(v15, v6);
    (*(v7 + 56))(v28, v29, 1, v6);
    return sub_1AF6EE3D0(v28, v30);
  }

  else
  {
    (*(v7 + 8))(v15, v6);
    return (*(v7 + 56))(v33, 1, 1, v6);
  }
}

unsigned __int8 *sub_1AF81237C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1AF8123A8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_1AF812444@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

void (*sub_1AF81249C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, int a2, uint64_t a3)
{
  v7 = v6;
  v257 = a6;
  v244 = a5;
  v271 = a2;
  v272 = a3;
  v243 = a1;
  v242 = *v6;
  sub_1AF81B9D0(0, &qword_1ED726B50, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v248 = &v223 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v255 = &v223 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v246 = &v223 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v237 = &v223 - v20;
  v254 = sub_1AFDFE488();
  v253 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254, v21);
  v247 = &v223 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v252 = &v223 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v245 = &v223 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v236 = &v223 - v31;
  v32 = sub_1AFDFC538();
  v260 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v259 = &v223 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF81B9D0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v249 = &v223 - v37;
  v262 = type metadata accessor for BundleInfo();
  v239 = *(v262 - 1);
  MEMORY[0x1EEE9AC00](v262, v38);
  v241 = &v223 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = (&v223 - v42);
  v44 = sub_1AFDFC128();
  v265 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v45);
  v256 = &v223 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v264 = &v223 - v49;
  v50 = sub_1AFDFC4F8();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v52);
  v258 = &v223 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v223 - v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v223 - v60;
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v261 = v32;
  v62 = sub_1AF477C68(v32, qword_1ED73B608);
  v267 = v51;
  isa = v51[2].isa;
  v263 = a4;
  v251 = OBJC_IVAR____TtC3VFX13EntityManager_signpostID;
  v269 = v51 + 2;
  v270 = v50;
  v268 = isa;
  isa(v61, (a4 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID), v50);
  v250 = v62;
  v64 = sub_1AFDFC528();
  v65 = sub_1AFDFDB88();
  v66 = sub_1AFDFDCE8();
  v266 = v44;
  v67 = v271;
  if (v66)
  {
    v68 = v271;
    v69 = v7;
    v70 = v43;
    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v64, v65, v72, "VFXLoader.load", "", v71, 2u);
    v73 = v71;
    v43 = v70;
    v7 = v69;
    v67 = v68;
    v44 = v266;
    MEMORY[0x1B271DEA0](v73, -1, -1);
  }

  v74 = v270;
  v268(v57, v61, v270);
  sub_1AFDFC578();
  swift_allocObject();
  v75 = sub_1AFDFC568();
  v76 = v267[1].isa;
  v76(v61, v74);
  v77 = v272;
  if (v272)
  {
    v78 = v272;
    v79 = v273;
  }

  else
  {
    v81 = v264;
    (*(v265 + 16))(v264, v67, v44);
    v82 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v83 = v273;
    v84 = sub_1AF81B794(v81, 0);
    v79 = v83;
    if (v83)
    {
      goto LABEL_51;
    }

    v78 = v84;
    v77 = v272;
  }

  v80 = v77;
  sub_1AF811BB0(v67, v78, v43);
  if (v79)
  {

LABEL_51:
    sub_1AF8169E8(v75, "VFXLoader.load");
  }

  if (*(v7 + 19))
  {
    v85 = v262;
    v86 = *(v43 + v262[7]) ^ 1;
    v87 = v263;
  }

  else
  {
    v87 = v263;
    v85 = v262;
    if (*(v263 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) != *(v43 + v262[8]))
    {
      sub_1AF4567E0();
      swift_allocError();
      *v88 = 0xD000000000000052;
      *(v88 + 8) = 0x80000001AFF36640;
      *(v88 + 16) = 96;
      swift_willThrow();
LABEL_49:

      goto LABEL_50;
    }

    v86 = 0;
  }

  v89 = v86 & 1;
  *(v87 + 56) = v89;
  *(*(v87 + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 16) = v89;
  v90 = *(v43 + v85[6]);
  if (*(v43 + v85[7]) == 1)
  {
    if (v90 >= 1106)
    {
      if (v90 < 0x7D6)
      {
        v91 = 1;
      }

      else
      {
        v91 = 2;
      }
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v91 = 3;
  }

  v92 = (v43 + v85[10]);
  v93 = v92[1];
  v272 = *(v43 + v85[6]);
  v235 = v7;
  v273 = 0;
  if (v93)
  {
    v94 = *v92;
    v95 = v93;
    goto LABEL_31;
  }

  if (v91 > 1u)
  {
    if (v91 == 2)
    {
      v95 = 0xEC0000006E696278;
      v94 = 0x66762E656E656373;
      goto LABEL_31;
    }
  }

  else if (v91)
  {
    v95 = 0xEB00000000747369;
    v94 = 0x6C702E656E656373;
    goto LABEL_31;
  }

  v95 = 0xEA00000000006E6FLL;
  v94 = 0x736A2E656E656373;
LABEL_31:

  v96 = [v78 fileWrappers];
  if (v96)
  {
    v97 = v76;
    sub_1AF0D4478(0, &unk_1ED726BA0);
    v98 = sub_1AFDFCC08();

    if (*(v98 + 16) && (v99 = sub_1AF419914(v94, v95), (v100 & 1) != 0))
    {
      v96 = *(*(v98 + 56) + 8 * v99);
    }

    else
    {

      v96 = 0;
    }

    v76 = v97;
  }

  v101 = sub_1AF81BC4C();
  if (v101 == 5)
  {
    v277 = 0;
    v278 = 0xE000000000000000;
    sub_1AFDFE218();

    v277 = 0xD000000000000018;
    v278 = 0x80000001AFF366A0;
    MEMORY[0x1B2718AE0](v94, v95);

    v102 = v277;
    v103 = v278;
    sub_1AF4567E0();
    swift_allocError();
    *v104 = v102;
    *(v104 + 8) = v103;
    *(v104 + 16) = 96;
    swift_willThrow();

LABEL_50:
    sub_1AF81F384(v43, type metadata accessor for BundleInfo);
    goto LABEL_51;
  }

  v267 = v76;
  if (!v96 || (v105 = v101, (v106 = [v96 regularFileContents]) == 0))
  {
    v277 = 0;
    v278 = 0xE000000000000000;
    sub_1AFDFE218();

    v277 = 0x742064656C696166;
    v278 = 0xEF2064616F6C206FLL;
    MEMORY[0x1B2718AE0](v94, v95);

    MEMORY[0x1B2718AE0](0x6964206D6F726620, 0xEA00000000006B73);
    v140 = v277;
    v141 = v278;
    sub_1AF4567E0();
    swift_allocError();
    *v142 = v140;
    *(v142 + 8) = v141;
    *(v142 + 16) = 96;
    swift_willThrow();

    goto LABEL_49;
  }

  v107 = v106;
  v228 = v105;
  v230 = v96;

  v262 = sub_1AFDFC1B8();
  v264 = v108;

  v110 = *v43;
  v109 = v43[1];
  v233 = v43;
  v111 = qword_1ED730EA0;

  if (v111 != -1)
  {
    swift_once();
  }

  v231 = v75;
  v277 = 0;
  v278 = 0xE000000000000000;
  sub_1AFDFE218();

  v277 = 91;
  v278 = 0xE100000000000000;
  *&v275 = 3031;
  v112 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v112);

  MEMORY[0x1B2718AE0](0x6E6964616F6C205DLL, 0xEE00207866762067);
  v232 = v110;
  v234 = v109;
  MEMORY[0x1B2718AE0](v110, v109);
  MEMORY[0x1B2718AE0](91, 0xE100000000000000);
  v113 = v272;
  *&v275 = v272;
  v114 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v114);

  MEMORY[0x1B2718AE0](0x207461205DLL, 0xE500000000000000);
  v115 = sub_1AFDFC0D8();
  MEMORY[0x1B2718AE0](v115);

  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v117 = v277;
  v116 = v278;
  v118 = sub_1AFDFDA28();
  if (qword_1ED731058 != -1)
  {
    v222 = v118;
    swift_once();
    v118 = v222;
  }

  v277 = 0;
  sub_1AF0D4F18(v118, &v277, v117, v116);

  v229 = v78;
  if (v113 >= 3032)
  {
    v277 = 0;
    v278 = 0xE000000000000000;
    sub_1AFDFE218();
    v119 = v232;
    v120 = v234;
    MEMORY[0x1B2718AE0](v232, v234);
    MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF367A0);
    *&v275 = 3031;
    v121 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v121);

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF367D0);
    *&v275 = v272;
    v122 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v122);

    v123 = v277;
    v124 = v278;
    v125 = sub_1AFDFDA28();
    v277 = 0;
    sub_1AF0D4F18(v125, &v277, v123, v124);

    v277 = 0;
    v278 = 0xE000000000000000;
    sub_1AFDFE218();
    v126 = v119;
    v127 = v272;
    MEMORY[0x1B2718AE0](v126, v120);
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF367F0);
    *&v275 = v127;
    v128 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v128);

    MEMORY[0x1B2718AE0](0xD00000000000003FLL, 0x80000001AFF36810);
    *&v275 = 3031;
    v129 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v129);

    MEMORY[0x1B2718AE0](11817, 0xE200000000000000);
    v131 = v277;
    v130 = v278;
    v132 = v235;
    if (*(v235 + 22))
    {
      v277 = 0;
      v278 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](v131, v130);

      MEMORY[0x1B2718AE0](0xD000000000000044, 0x80000001AFF36850);
      v133 = v277;
      v134 = v278;
      sub_1AF4567E0();
      v135 = swift_allocError();
      *v136 = v133;
      *(v136 + 8) = v134;
      *(v136 + 16) = -96;
      v137 = v132[3];
      v132[3] = v135;

      v138 = v273;
      v139 = v257;
      goto LABEL_54;
    }

    sub_1AF4567E0();
    swift_allocError();
    *v160 = v131;
    *(v160 + 8) = v130;
    *(v160 + 16) = -96;
    swift_willThrow();
    sub_1AF439ED8(v262, v264);

LABEL_59:
    sub_1AF81F384(v233, type metadata accessor for BundleInfo);
LABEL_71:
    v75 = v231;
    goto LABEL_51;
  }

  v138 = v273;
  v144 = v232;
  v139 = v257;
  if (v113 <= 1025)
  {
    v277 = 0;
    v278 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](v144, v234);

    MEMORY[0x1B2718AE0](0x6F69737265762820, 0xEA0000000000206ELL);
    *&v275 = v113;
    v145 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v145);

    MEMORY[0x1B2718AE0](0xD000000000000064, 0x80000001AFF366E0);
    *&v275 = 1026;
    v146 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v146);

    MEMORY[0x1B2718AE0](0xD000000000000047, 0x80000001AFF36750);
    v147 = v277;
    v148 = v278;
    sub_1AF4567E0();
    swift_allocError();
    *v149 = v147;
    *(v149 + 8) = v148;
    *(v149 + 16) = -64;
    swift_willThrow();
    sub_1AF439ED8(v262, v264);

    goto LABEL_59;
  }

LABEL_54:
  v150 = *(v263 + 184);

  v151 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v150);
  v257 = v138;

  v152 = v265;
  if (v151)
  {
    v153 = v256;
    sub_1AFDFC078();
    v154 = v249;
    v155 = v266;
    (*(v152 + 16))(v249, v153, v266);
    (*(v152 + 56))(v154, 0, 1, v155);
    sub_1AF825B54(v154, v139 | ((HIDWORD(v139) & 1) << 32));

    (*(v152 + 8))(v153, v155);
  }

  if ((v139 & 0x100000000) != 0)
  {
    v156 = 0;
    v157 = 1;
    v158 = v235;
    v159 = v261;
  }

  else
  {
    LOBYTE(v277) = 0;
    v159 = v261;
    v156 = v139;
    v158 = v235;
    v157 = v156 == 0;
  }

  v226 = v158[21];
  LODWORD(v249) = v158[20];
  v227 = v158[19];
  (*(v260 + 16))(v259, v250, v159);
  v161 = v263;
  v268(v258, &v251[v263], v270);
  v162 = swift_slowAlloc();
  *v162 = 0;
  v163 = sub_1AFDFC528();
  v164 = sub_1AFDFDB88();
  v165 = sub_1AFDFC4E8();
  v269 = v163;
  v224 = v162;
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v163, v164, v165, "EntityManager.unserialize", "", v162, 2u);
  v166 = type metadata accessor for SerializationContext();
  swift_allocObject();
  LOBYTE(v275) = v157;
  v250 = v156;
  v167 = sub_1AF69D428(v161, v272, 0, v156 | (v157 << 32));
  *(v167 + 82) = 257;
  *(v167 + 80) = v227;
  *(v167 + 81) = v249;
  v225 = v157;
  v273 = v166;
  if (v228 <= 1u)
  {
    v168 = v254;
    v169 = v253;
    if (v228)
    {
      v186 = sub_1AFDFBE78();
      swift_allocObject();
      v249 = sub_1AFDFBE68();
      v187 = v237;
      v272 = 0x80000001AFF279D0;
      sub_1AFDFE478();
      v188 = *(v169 + 48);
      v263 = (v169 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v268 = v188;
      v188(v187, 1, v168);
      v189 = *(v169 + 32);
      v176 = v169;
      v190 = v236;
      v251 = v189;
      (v189)(v236, v187, v168);
      v276 = v166;
      *&v275 = v167;

      v191 = sub_1AFDFBE58();
      sub_1AF824640(&v275, v190);
      v191(&v274, 0);
      v177 = &off_1F2533B78;
      v178 = v186;
      v279 = v186;
      v280 = &off_1F2533B78;

      v277 = v249;
      goto LABEL_69;
    }

LABEL_67:
    v179 = sub_1AFDFBBB8();
    swift_allocObject();
    v253 = sub_1AFDFBBA8();
    v180 = v246;
    v272 = 0x80000001AFF279D0;
    sub_1AFDFE478();
    v181 = *(v169 + 48);
    v263 = (v169 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v268 = v181;
    v181(v180, 1, v168);
    v182 = *(v169 + 32);
    v176 = v169;
    v254 = (v169 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v183 = v245;
    v251 = v182;
    (v182)(v245, v180, v168);
    v276 = v166;
    *&v275 = v167;

    v184 = v253;
    v185 = sub_1AFDFBB98();
    sub_1AF824640(&v275, v183);
    v185(&v274, 0);
    v177 = &off_1F2533B38;
    v178 = v179;
    v279 = v179;
    v280 = &off_1F2533B38;

    v277 = v184;
    goto LABEL_69;
  }

  v168 = v254;
  v169 = v253;
  if (v228 == 3)
  {
    goto LABEL_67;
  }

  v170 = v254;
  if (qword_1ED727D50 != -1)
  {
    swift_once();
  }

  v171 = qword_1ED73B620;
  v249 = type metadata accessor for BinaryDecoder();
  v172 = swift_allocObject();

  *(v172 + 48) = sub_1AF43A744(MEMORY[0x1E69E7CC0]);
  *(v172 + 16) = v171;
  *(v172 + 24) = v226;
  *(v172 + 32) = sub_1AF69B6E0;
  *(v172 + 40) = 0;
  v173 = v248;
  v272 = 0x80000001AFF279D0;
  sub_1AFDFE478();
  v174 = *(v169 + 48);
  v263 = (v169 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v268 = v174;
  v174(v173, 1, v170);
  v175 = v247;
  v251 = *(v169 + 32);
  (v251)(v247, v173, v170);
  v276 = v273;
  *&v275 = v167;

  sub_1AF8247D4(&v275, v175);
  v176 = v169;
  v177 = &off_1F2533B98;
  v178 = v249;
  v279 = v249;
  v280 = &off_1F2533B98;

  v277 = v172;
  v168 = v170;
LABEL_69:
  sub_1AF441150(&v277, v178);
  v192 = v255;
  sub_1AFDFE478();
  v268(v192, 1, v168);
  v193 = v252;
  (v251)(v252, v192, v168);
  v194 = (v177[2])(v193, &v274);
  (*(v176 + 8))(v193, v168, v194);
  sub_1AF449D40(&v274, &v275);
  swift_dynamicCast();
  v195 = thread_serialization_context;
  v197 = thread_serialization_context(v196);
  v198 = *v197;
  v273 = v199;
  *v197 = v199;
  v200 = v279;
  v201 = v280;
  sub_1AF441150(&v277, v279);
  v202 = v201[3];
  v203 = sub_1AF81FEE8();
  v204 = v257;
  v202(&v275, &type metadata for EntityManagerCoder, v262, v264, &type metadata for EntityManagerCoder, v203, v200, v201);
  if (v204)
  {
    *(v195)(&thread_serialization_context) = v198;

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v277);

    sub_1AF439ED8(v262, v264);

    sub_1AF81F384(v233, type metadata accessor for BundleInfo);
    (v267)(v258, v270);
    (*(v260 + 8))(v259, v261);
    goto LABEL_71;
  }

  swift_unownedRelease();
  *(v195)(&thread_serialization_context) = v198;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v277);
  v205 = sub_1AFDFDB78();
  v206 = v258;
  v207 = sub_1AFDFC4E8();
  v208 = v205;
  v209 = v269;
  v210 = v224;
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v269, v208, v207, "EntityManager.unserialize", "", v224, 2u);

  MEMORY[0x1B271DEA0](v210, -1, -1);
  sub_1AF439ED8(v262, v264);
  (v267)(v206, v270);
  (*(v260 + 8))(v259, v261);
  v235[4] = v273;

  v211 = v241;
  sub_1AF81B8E8(v233, v241);
  v212 = v265;
  (*(v265 + 16))(v256, v271, v266);
  v213 = (*(v239 + 80) + 16) & ~*(v239 + 80);
  v271 = (v213 + v240 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v214 = (v213 + v240 + 15) & 0xFFFFFFFFFFFFFFF8;
  v215 = (*(v212 + 80) + v214 + 8) & ~*(v212 + 80);
  v216 = (v238 + v215 + 7) & 0xFFFFFFFFFFFFFFF8;
  v272 = (v216 + 23) & 0xFFFFFFFFFFFFFFF8;
  v273 = 0;
  v217 = (v272 + 15) & 0xFFFFFFFFFFFFFFF8;
  v218 = swift_allocObject();
  sub_1AF81FF3C(v211, v218 + v213);
  v219 = v218 + v271;
  *v219 = v250;
  *(v219 + 4) = v225;
  *(v218 + v214) = v235;
  (*(v212 + 32))(v218 + v215, v256, v266);
  v220 = (v218 + v216);
  v221 = v234;
  *v220 = v232;
  v220[1] = v221;
  *(v218 + v272) = v229;
  *(v218 + v217) = v244;
  *(v218 + ((v217 + 15) & 0xFFFFFFFFFFFFFFF8)) = v242;
  sub_1AF81FF3C(v233, v243);

  sub_1AF8169E8(v231, "VFXLoader.load");

  return sub_1AF81FFA0;
}

void sub_1AF814300(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, unint64_t a9, void *a10, uint64_t a11)
{
  v12 = v11;
  v110 = a8;
  v111 = a3;
  v113 = a7;
  v114 = a4;
  v118 = a6;
  v116 = a5;
  v129 = sub_1AFDFC128();
  v112 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v15);
  v128 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v115 = &v107 - v19;
  v117 = a1;
  if ((a2 & 1) == 0)
  {
LABEL_59:
    v103 = a2;
    if ((a2 & 2) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v20 = type metadata accessor for BundleInfo();
  if (!qword_1ED73B858)
  {
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  v21 = *(v114 + *(v20 + 24));
  v22 = *(v118 + 19);
  v23 = *(v114 + *(v20 + 28));
  v108 = a2;
  v109 = v23;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_1AF16CDEC(Strong);
    swift_unknownObjectRetain();

    objc_opt_self();
    v132 = swift_dynamicCastObjCClass();
    if (!v132)
    {
      swift_unknownObjectRelease();
      v132 = 0;
    }

    a1 = v117;
  }

  else
  {
    v132 = 0;
  }

  v26 = *(qword_1ED73B858 + 16);
  if (v26)
  {
    v27 = 0x1000000000000;
    if (!v109)
    {
      v27 = 0;
    }

    v28 = 0x10000000000;
    if (!v22)
    {
      v28 = 0;
    }

    v29 = v28 | v27;
    v30 = v116;
    v131 = v116;

    v31 = v127 + 6;
    ObjectType = v29 | ((HIDWORD(v30) & 1) << 32);
    while (1)
    {
      if (v21 < *(v31 - 2))
      {
        v162 = *(v31 - 1);
        swift_retain_n();
        v32 = v21;
        v33 = v132;
        v34 = v132;

        v36 = v33;
        v21 = v32;
        v162(v35, a1, v36, ObjectType | v131, v32);
        if (v12)
        {

          return;
        }
      }

      v31 += 3;
      if (!--v26)
      {

        goto LABEL_20;
      }
    }
  }

LABEL_20:
  sub_1AF65DAB0();
  sub_1AFDFC088();
  if ((*(v118 + 19) & 1) != 0 && (v37 = a1, v38 = *(a1 + 184), , v39 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v38), , v39))
  {

    v40 = *(v37 + 184);

    v41 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v40);

    v42 = type metadata accessor for AssetManagerPathResolver();
    v43 = objc_allocWithZone(v42);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v133.receiver = v43;
    v133.super_class = v42;
    v162 = objc_msgSendSuper2(&v133, sel_init);

    v44 = &off_1F2541778;
  }

  else
  {
    v45 = v112;
    v46 = *(v112 + 16);
    v47 = v128;
    v48 = v129;
    v46(v128, v115, v129);
    v49 = type metadata accessor for BundleResolver(0);
    v50 = objc_allocWithZone(v49);
    v46(&v50[OBJC_IVAR____TtC3VFX14BundleResolver_bundle], v47, v48);
    v142.receiver = v50;
    v142.super_class = v49;
    v162 = objc_msgSendSuper2(&v142, sel_init);
    (*(v45 + 8))(v47, v48);
    v44 = &off_1F2544728;
  }

  v132 = v44;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v156 = qword_1ED73B840;
  v157 = 0;
  v158 = 2;
  v159 = 0;
  v160 = 2;
  v161 = 0;
  sub_1AF705030(2, v143);
  if ((v116 & 0x100000000) != 0)
  {
    v51 = 0x200000000;
  }

  else
  {
    v51 = v116;
  }

  v152[0] = v143[0];
  v152[1] = v143[1];
  v153 = v144;
  sub_1AF6B06C0(v117, v152, v51, v145);
  v138 = v145[2];
  v139 = v146;
  v140 = v147;
  v141 = v148;
  v136 = v145[0];
  v137 = v145[1];
  sub_1AF820124(v143);
  if (!*&v145[0])
  {
    goto LABEL_55;
  }

  LOBYTE(a2) = v108;
  if (v148 > 0)
  {
    v121 = *(&v146 + 1);
    if (*(&v146 + 1))
    {
      v52 = *(&v147 + 1);
      v126 = *(*(&v147 + 1) + 32);
      v125 = *(v147 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v150 = *(v145 + 8);
      v151 = *(&v145[1] + 8);
      v135[3] = v139;
      v135[4] = v140;
      v135[5] = v141;
      v135[0] = v136;
      v119 = *(&v145[2] + 1);
      v149 = *&v145[0];
      v135[1] = v137;
      v135[2] = v138;
      sub_1AF5DD298(v135, &v134);
      v53 = 0;
      v127 = (v112 + 8);
      v120 = v52;
      do
      {
        v123 = v53;
        v124 = v12;
        v54 = (v119 + 48 * v53);
        v55 = *v54;
        v131 = v54[1];
        v57 = *(v54 + 2);
        v56 = *(v54 + 3);
        v59 = *(v54 + 4);
        v58 = *(v54 + 5);
        if (v125)
        {
          v60 = *(v58 + 376);

          os_unfair_lock_lock(v60);
          os_unfair_lock_lock(*(v58 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v126);
        v61 = *(v52 + 4);
        v154[0] = *(v52 + 3);
        v154[1] = v61;
        v155 = v52[10];
        v62 = *(*(*(*(v58 + 40) + 16) + 32) + 16) + 1;
        v52[6] = ecs_stack_allocator_allocate(v52[4], 48 * v62, 8);
        v52[7] = v62;
        v52[9] = 0;
        v52[10] = 0;
        v52[8] = 0;
        v63 = v59;
        v122 = v58;
        v64 = sub_1AF64B110(&type metadata for VirtualFileAsset, &off_1F2545DB8, v57, v56, v59, v52);
        if (v57)
        {
          if (v59)
          {
            v65 = (v64 + 24);
            do
            {
              v67 = v65[1];
              v68 = v162;
              v69 = v132;
              v65[1] = v162;
              v65[2] = v69;
              v70 = v68;

              v71 = v65[1];
              if (v71)
              {
                v131 = v63;
                v72 = v65[2];
                ObjectType = swift_getObjectType();
                v74 = *(v65 - 1);
                v73 = *v65;
                v75 = *(v72 + 8);
                v76 = v71;

                v77 = v128;
                v78 = v72;
                v63 = v131;
                v75(v74, v73, ObjectType, v78);

                v79 = sub_1AFDFC0C8();
                v81 = v80;
                (*v127)(v77, v129);
                *(v65 - 3) = v79;
                *(v65 - 2) = v81;
              }

              else
              {
                v66 = *v65;
                *(v65 - 3) = *(v65 - 1);
                *(v65 - 2) = v66;
              }

              v65 += 6;
              --v63;
            }

            while (v63);
          }
        }

        else if (v55 != v131)
        {
          v84 = v131 - v55;
          v85 = (v64 + 48 * v55 + 24);
          do
          {
            v95 = v85[1];
            v96 = v162;
            v97 = v132;
            v85[1] = v162;
            v85[2] = v97;
            v98 = v96;

            v99 = v85[1];
            if (v99)
            {
              v86 = v85[2];
              v87 = swift_getObjectType();
              v88 = *(v85 - 1);
              v89 = *v85;
              ObjectType = *(v86 + 8);
              v131 = v87;
              v90 = v99;

              v91 = v128;
              (ObjectType)(v88, v89, v131, v86);

              v92 = sub_1AFDFC0C8();
              v94 = v93;
              (*v127)(v91, v129);
              *(v85 - 3) = v92;
              *(v85 - 2) = v94;
            }

            else
            {
              v100 = *v85;
              *(v85 - 3) = *(v85 - 1);
              *(v85 - 2) = v100;
            }

            v85 += 6;
            --v84;
          }

          while (v84);
        }

        v52 = v120;
        v82 = v124;
        sub_1AF630994(v120, &v149, v154);
        v12 = v82;
        v83 = v122;
        sub_1AF62D29C(v122);
        ecs_stack_allocator_pop_snapshot(v126);
        if (v125)
        {
          os_unfair_lock_unlock(*(v83 + 43));
          os_unfair_lock_unlock(*(v83 + 47));
        }

        v53 = v123 + 1;
      }

      while (v123 + 1 != v121);
      sub_1AF5D1564(v145);
      sub_1AF5D1564(v145);
LABEL_55:
      v101 = v117;
      v102 = v118;
      LOBYTE(a2) = v108;
      goto LABEL_56;
    }
  }

  sub_1AF5D1564(v145);
  v101 = v117;
  v102 = v118;
LABEL_56:
  if (*(v102 + 19) != 1 || (v109 & 1) != 0)
  {
    (*(v112 + 8))(v115, v129);

    goto LABEL_59;
  }

  sub_1AF7D3C8C(v101, 1);

  (*(v112 + 8))(v115, v129);
  v103 = a2;
  if ((a2 & 2) == 0)
  {
    goto LABEL_63;
  }

LABEL_60:
  sub_1AF814E2C(v114, v110, a9, v113, a10, v117, v116 | ((HIDWORD(v116) & 1) << 32), v111);
  if (v12)
  {
    return;
  }

  sub_1AF678C34();
LABEL_63:
  if ((v103 & 4) != 0 && *(v118 + 23) == 1)
  {
    if (a11)
    {

      sub_1AF6F7F40(v104);
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v105 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v106 = v105;
        swift_once();
        v105 = v106;
      }

      *&v136 = 0;
      sub_1AF0D4F18(v105, &v136, 0xD00000000000001CLL, 0x80000001AFF368B0);
    }
  }
}

uint64_t sub_1AF814E2C(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v180 = a8;
  v182 = a7;
  v194 = a4;
  v179 = a3;
  v178 = a2;
  v174 = *v8;
  sub_1AF81B9D0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v183 = &v162[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v173 = &v162[-v17];
  MEMORY[0x1EEE9AC00](v18, v19);
  v177 = &v162[-v20];
  MEMORY[0x1EEE9AC00](v21, v22);
  v171 = &v162[-v23];
  v24 = sub_1AFDFC4F8();
  v181 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v162[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v162[-v30];
  v189 = sub_1AFDFC128();
  v190 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189, v32);
  v170 = &v162[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34, v35);
  v172 = &v162[-v36];
  MEMORY[0x1EEE9AC00](v37, v38);
  v168 = &v162[-v39];
  MEMORY[0x1EEE9AC00](v40, v41);
  v166 = &v162[-v42];
  MEMORY[0x1EEE9AC00](v43, v44);
  v167 = &v162[-v45];
  MEMORY[0x1EEE9AC00](v46, v47);
  v169 = &v162[-v48];
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v162[-v51];
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v162[-v55];
  sub_1AF7D5A90(a6, 1, 1);
  v57 = type metadata accessor for BundleInfo();
  v193 = *(a1 + *(v57 + 24));
  v195 = a6;
  v186 = a1;
  if (v193 > 2025)
  {
    goto LABEL_6;
  }

  if ((*(a6 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) & 1) == 0)
  {
    sub_1AFBF8FF0(a6, a1);
  }

  if (v193 >= 1003)
  {
LABEL_6:
    v188 = *(v201 + 16);
  }

  else
  {
    v188 = 0;
  }

  v196 = v56;
  sub_1AFDFC088();
  v185 = a5;
  v58 = [a5 fileWrappers];
  if (v58)
  {
    v59 = v58;
    sub_1AF0D4478(0, &unk_1ED726BA0);
    v60 = sub_1AFDFCC08();

    if (*(v60 + 16) && (v61 = sub_1AF419914(0x2E73747069726373, 0xEE00656C646E7562), (v62 & 1) != 0))
    {
      v192 = *(*(v60 + 56) + 8 * v61);
      v63 = v192;
    }

    else
    {
      v192 = 0;
    }

    v64 = v195;
  }

  else
  {
    v192 = 0;
    v64 = v195;
  }

  v176 = *(v64 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
  v200 = 0;
  v175 = *(v64 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v65 = v175;
  v66 = CFXMTLCreateSystemDefaultDevice();
  v67 = v196;
  if (v66)
  {
    v187 = v66;
    ShaderCache6deviceyXlSo9MTLDevice_p_tF_0 = _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v66);
    if (*(v201 + 19) != 1 || (*(v201 + 18) & 1) != 0 || sub_1AFA9A520(v64) < 1)
    {
      v85 = 0;
      if (!v188)
      {
        v86 = v189;
        v87 = v190;
LABEL_39:
        (*(v87 + 8))(v67, v86);
        swift_unknownObjectRelease();

        return swift_unknownObjectRelease();
      }

      LODWORD(v181) = 0;
      v86 = v189;
      v87 = v190;
      v88 = v191;
LABEL_30:
      v165 = v65;
      v89 = v187;
      swift_unknownObjectRetain();
      v190 = sub_1AF81EBE8(v194, v89);
      v91 = v90;
      v93 = v92;
      swift_unknownObjectRelease();
      if (v93)
      {
        swift_unknownObjectRelease();
LABEL_32:
        v200 = v93;
        goto LABEL_41;
      }

      if (v85)
      {
LABEL_41:
        if (v193 >= 1033)
        {
          v100 = [v185 fileWrappers];
          if (v100)
          {
            v101 = v100;
            sub_1AF0D4478(0, &unk_1ED726BA0);
            v102 = sub_1AFDFCC08();

            if (*(v102 + 16) && (v103 = sub_1AF419914(0xD000000000000010, 0x80000001AFF36210), (v104 & 1) != 0))
            {
              v105 = *(*(v102 + 56) + 8 * v103);

              v106 = [v105 regularFileContents];
              if (v106)
              {
                v191 = v88;
                v107 = v106;
                v108 = sub_1AFDFC1B8();
                v110 = v109;

                v111 = v187;
                swift_unknownObjectRetain();
                v189 = v108;
                v194 = v110;
                v112 = v191;
                sub_1AF81BA24(v108, v110, &v200, v111);
                v88 = v112;
                if (v112)
                {

                  sub_1AF439ED8(v189, v194);
                  swift_unknownObjectRelease();
                  (*(v87 + 8))(v196, v86);
                  return swift_unknownObjectRelease();
                }

                sub_1AF439ED8(v189, v194);
              }

              else
              {
              }
            }

            else
            {
            }
          }
        }

        v113 = v196;
        if (v181)
        {
          v114 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
          v115 = 0;
        }

        else
        {
          v114 = *(*(v201 + 32) + 128);
          if (v180)
          {
            v114 = sub_1AF81F1BC(v180, *(*(v201 + 32) + 128));
          }

          else
          {
          }

          v115 = v193;
        }

        v122 = v183;
        (*(v87 + 16))(v183, v113, v86);
        (*(v87 + 56))(v122, 0, 1, v86);
        v161 = v115;
        v123 = v192;
        sub_1AF81C078(v195, v190, v91, v192, v122, v200, *v186, *(v186 + 8), v161, v181, v114, v182 | ((HIDWORD(v182) & 1) << 32), *(v201 + 17));
        if (v88)
        {
          swift_unknownObjectRelease();

          sub_1AF81FE8C(v122, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
          (*(v87 + 8))(v113, v86);
        }

        else
        {
          sub_1AF81FE8C(v122, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);

          if (v193 >= 2026)
          {
            (*(v87 + 8))(v196, v86);
            swift_unknownObjectRelease();
          }

          else
          {
            v124 = v165;
            if ((*(v195 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) & 1) == 0)
            {
              sub_1AFBF9C14(v195, v186);
              swift_unknownObjectRelease();

              (*(v87 + 8))(v196, v86);
              return swift_unknownObjectRelease();
            }

            (*(v87 + 8))(v196, v86);
            swift_unknownObjectRelease();
          }
        }

        return swift_unknownObjectRelease();
      }

      v125 = OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
      v126 = v64 + *(type metadata accessor for ScriptingConfiguration() + 28) + v125;
      v127 = v177;
      sub_1AF456C4C(v126, v177);
      v128 = *(v87 + 48);
      if (v128(v127, 1, v86) == 1)
      {
        sub_1AF81FE8C(v127, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
        v129 = v173;
        sub_1AF811F6C(v194, v173);
        if (v128(v129, 1, v86) == 1)
        {
          sub_1AF81FE8C(v129, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
          v93 = *(_s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v187) + 24);
          swift_unknownObjectRetain();

          goto LABEL_32;
        }

        v139 = v170;
        (*(v87 + 32))();
        _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v187);
        v140 = sub_1AF744858(v139, v176, v175);
        if (!v88)
        {
          v142 = v140;
          (*(v87 + 8))(v139, v86);

          v200 = v142;
          goto LABEL_41;
        }

        swift_unknownObjectRelease();

        v137 = *(v87 + 8);
        v137(v139, v86);
      }

      else
      {
        v135 = v172;
        (*(v87 + 32))(v172, v127, v86);
        v136 = sub_1AF744858(v135, v176, v175);
        if (!v88)
        {
          v141 = v136;
          (*(v87 + 8))(v135, v86);
          v200 = v141;
          goto LABEL_41;
        }

        swift_unknownObjectRelease();

        v137 = *(v87 + 8);
        v137(v135, v86);
      }

      v137(v196, v86);
      return swift_unknownObjectRelease();
    }

    v165 = v65;
    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v68 = sub_1AFDFC538();
    sub_1AF477C68(v68, qword_1ED73B608);
    v164 = *(v181 + 16);
    v164(v31, v64 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v24);
    v69 = sub_1AFDFC528();
    v163 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      v71 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v69, v163, v71, "initialBuildScripts", "", v70, 2u);
      v72 = v70;
      v64 = v195;
      MEMORY[0x1B271DEA0](v72, -1, -1);
    }

    v164(v27, v31, v24);
    sub_1AFDFC578();
    swift_allocObject();
    v164 = sub_1AFDFC568();
    (*(v181 + 8))(v31, v24);
    if (*(v186 + *(v57 + 28)) == 1)
    {
      v73 = v194;
      v74 = sub_1AF81EEE0(v194, 0);
      v76 = v75;
      v77 = sub_1AF81EEE0(v73, 3u);
      v79 = v78;
      v198 = v77;
      v199 = v78;
      v80 = sub_1AF81EEE0(v73, 2u);
      v82 = v81;
      v83 = v192;
      if (v193 <= 2000 && v79)
      {
        sub_1AFB125E8(&v198, *v186, *(v186 + 8), v193);
        v79 = v199;
      }

      if (!(v76 | v79))
      {

        sub_1AF4567E0();
        swift_allocError();
        *v84 = 0xD000000000000037;
        *(v84 + 8) = 0x80000001AFF36260;
        *(v84 + 16) = 96;
        swift_willThrow();
        sub_1AF8169E8(v164, "initialBuildScripts");
        swift_unknownObjectRelease();

        (*(v190 + 8))(v196, v189);
        return swift_unknownObjectRelease();
      }

      v130 = v198;
      sub_1AF81F62C(0, &qword_1EB63F248, &type metadata for Target, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = 512;
      v132 = sub_1AF757304(inited);
      swift_setDeallocating();
      v133 = v191;
      v134 = sub_1AF810AF8(v130, v79, v74, v76, v132, 0);
      if (v133)
      {

        sub_1AF8169E8(v164, "initialBuildScripts");
        swift_unknownObjectRelease();

        (*(v190 + 8))(v196, v189);
        return swift_unknownObjectRelease();
      }

      v191 = v134;

      if (v82)
      {
        type metadata accessor for MetalTrampolineCodeGen();
        v197 = 512;
        sub_1AFAF8704(v80, v82, &v197);

        v85 = sub_1AF744858(v52, v176, v175);
        v86 = v189;
        (*(v190 + 8))(v52, v189);
        v200 = v85;
      }

      else
      {
        v85 = 0;
        v86 = v189;
      }

      v143 = v169;
      sub_1AFDFC018();

      v87 = v190;
      v144 = v196;
      v191 = *(v190 + 8);
      v191(v196, v86);
      (*(v87 + 32))(v144, v143, v86);
      v145 = v167;
      (*(v87 + 16))(v167, v144, v86);
      v146 = objc_allocWithZone(MEMORY[0x1E696AC38]);
      v148 = sub_1AF81B794(v145, 0);

      v64 = v195;
      *(v195 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig) = 0;

      LODWORD(v181) = 0;
      v149 = 1;
      v192 = v148;
      v88 = 0;
    }

    else
    {
      sub_1AF81F62C(0, &qword_1EB63F248, &type metadata for Target, MEMORY[0x1E69E6F90]);
      v116 = swift_initStackObject();
      *(v116 + 16) = xmmword_1AFE431C0;
      *(v116 + 32) = 512;
      v117 = sub_1AF757304(v116);
      swift_setDeallocating();
      v118 = v178;
      v119 = v179;
      v120 = v191;
      v121 = sub_1AF81090C(v64, v178, v179, v117, 0);
      if (v120)
      {

        v85 = 0;
        v88 = 0;
        v86 = v189;
        v87 = v190;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v198 = 0;
        v199 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000027, 0x80000001AFF36230);
        swift_getErrorValue();
        sub_1AFDFEDD8();
        v155 = v198;
        v156 = v199;
        v157 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v160 = v157;
          swift_once();
          v157 = v160;
        }

        v198 = 0;
        sub_1AF0D4F18(v157, &v198, v155, v156);

        LODWORD(v181) = 0;
        v64 = v195;
        v65 = v165;
        v149 = v188;
LABEL_94:
        sub_1AF8169E8(v164, "initialBuildScripts");

        v67 = v196;
        if ((v149 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_30;
      }

      v191 = v121;

      type metadata accessor for MetalTrampolineCodeGen();
      swift_initStackObject();

      sub_1AFB0F318(v64, v118, v119);

      LOWORD(v198) = 512;
      v138 = v171;
      sub_1AFB03BB4(&v198, v171);
      v86 = v189;
      v87 = v190;

      if ((*(v87 + 48))(v138, 1, v86) == 1)
      {
        sub_1AF81FE8C(v138, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
        v85 = 0;
      }

      else
      {
        v147 = v166;
        (*(v87 + 32))(v166, v138, v86);
        v85 = sub_1AF744858(v147, v176, v175);
        (*(v87 + 8))(v147, v86);
        v200 = v85;
      }

      v150 = v196;
      v151 = v169;
      sub_1AFDFC018();

      (*(v87 + 8))(v150, v86);
      (*(v87 + 32))(v150, v151, v86);
      v152 = v168;
      (*(v87 + 16))(v168, v150, v86);
      v153 = objc_allocWithZone(MEMORY[0x1E696AC38]);
      v154 = sub_1AF81B794(v152, 0);
      v88 = 0;
      v158 = v154;

      LODWORD(v181) = 1;
      v149 = 1;
      v192 = v158;
    }

    v65 = v165;
    goto LABEL_94;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v94 = v65;
  v95 = sub_1AFDFDA08();
  v96 = v189;
  v97 = v190;
  v98 = v192;
  if (qword_1ED731058 != -1)
  {
    v159 = v95;
    swift_once();
    v95 = v159;
  }

  v198 = 0;
  sub_1AF0D4F18(v95, &v198, 0xD000000000000028, 0x80000001AFF361E0);

  return (*(v97 + 8))(v196, v96);
}

uint64_t sub_1AF8169E8(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_1AFDFC548();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFC4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v12 = sub_1AFDFC538();
  sub_1AF477C68(v12, qword_1ED73B608);
  v13 = sub_1AFDFC528();
  sub_1AFDFC558();
  v14 = sub_1AFDFDB78();
  if (sub_1AFDFDCE8())
  {

    sub_1AFDFC588();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v13, v14, v17, v20, v15, v16, 2u);
    MEMORY[0x1B271DEA0](v16, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF816C78(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1AFDFCAF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFCAE8();
  v11 = sub_1AFDFCAD8();
  (*(v7 + 8))(v10, v6);
  v17[0] = 0;
  v12 = [a4 newLibraryWithData:v11 error:v17];

  v13 = v17[0];
  if (v12)
  {
    *a3 = v12;
    v14 = v13;
    return swift_unknownObjectRelease();
  }

  else
  {
    v16 = v17[0];
    sub_1AFDFBF58();

    return swift_willThrow();
  }
}

uint64_t sub_1AF816E08()
{

  return swift_deallocClassInstance();
}

char *sub_1AF816E68(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = a3[5];
    v9 = sub_1AFDFC318();
    v10 = *(*(v9 - 8) + 16);

    v10(&v3[v6], &a2[v6], v9);
    v11 = a3[7];
    *&v3[a3[6]] = *&a2[a3[6]];
    v3[v11] = a2[v11];
    v12 = a3[9];
    v3[a3[8]] = a2[a3[8]];
    *&v3[v12] = *&a2[v12];
    v13 = a3[10];
    v14 = &v3[v13];
    v15 = &a2[v13];
    v16 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v16;
  }

  return v3;
}

uint64_t sub_1AF816F94(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_1AFDFC318();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
}

char *sub_1AF81702C(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = sub_1AFDFC318();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  a1[v10] = a2[v10];
  v11 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[10];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = *(v14 + 1);
  *v13 = *v14;
  *(v13 + 1) = v15;

  return a1;
}

char *sub_1AF81710C(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = sub_1AFDFC318();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  *&a1[a3[6]] = *&a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  a1[a3[8]] = a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];

  v8 = a3[10];
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  *(v9 + 1) = *(v10 + 1);

  return a1;
}

char *sub_1AF81720C(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AFDFC318();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v9] = *&a2[v9];
  *&a1[a3[10]] = *&a2[a3[10]];
  return a1;
}

char *sub_1AF8172BC(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = sub_1AFDFC318();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  a1[v9] = a2[v9];
  v10 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v10] = *&a2[v10];

  v11 = a3[10];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v15 = *v13;
  v14 = *(v13 + 1);
  *v12 = v15;
  *(v12 + 1) = v14;

  return a1;
}

uint64_t type metadata accessor for BundleInfo()
{
  result = qword_1ED72DEF0;
  if (!qword_1ED72DEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF817400()
{
  result = sub_1AFDFC318();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1AF8174C4()
{
  result = qword_1EB63F210;
  if (!qword_1EB63F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F210);
  }

  return result;
}

unint64_t sub_1AF81751C()
{
  result = qword_1EB63F218;
  if (!qword_1EB63F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F218);
  }

  return result;
}

unint64_t sub_1AF817574()
{
  result = qword_1EB63F220;
  if (!qword_1EB63F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F220);
  }

  return result;
}

unint64_t sub_1AF8175CC()
{
  result = qword_1EB63F228;
  if (!qword_1EB63F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F228);
  }

  return result;
}

unint64_t sub_1AF817624()
{
  result = qword_1EB632B80;
  if (!qword_1EB632B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632B80);
  }

  return result;
}

unint64_t sub_1AF817678()
{
  result = qword_1ED72DF18;
  if (!qword_1ED72DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72DF18);
  }

  return result;
}

unint64_t sub_1AF8176CC()
{
  result = qword_1EB63F240;
  if (!qword_1EB63F240)
  {
    sub_1AF8201AC(255, &qword_1EB63F238, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F240);
  }

  return result;
}

void sub_1AF817768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF817678();
    v7 = a3(a1, &type metadata for BundleInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF8177CC(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v236 = qword_1ED73B840;
  v237 = 0;
  v238 = 2;
  v239 = 0;
  v240 = 2;
  v241 = 0;
  sub_1AF7044B4(1, &v159);
  v242 = v159;
  v243 = v160;
  v244 = v161;
  v245 = v162 | 1;
  v246 = v163;
  v247 = v164;
  if ((a11 & 0x100000000) != 0)
  {
    v16 = 0x200000000;
  }

  else
  {
    v16 = a11;
  }

  v112 = v16;
  sub_1AF6B06C0(v116, &v242, v16, v165);
  v145 = a8;
  v110 = a1;
  if (*&v165[0])
  {
    v17 = v116;
    if (v169 >= 1 && *(&v167 + 1))
    {
      v122 = a7;
      v125 = v12;
      v18 = *(&v166 + 1);
      v19 = *(&v166 + 1) + 48 * *(&v167 + 1);
      sub_1AF81F4A8(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
      v135 = v20;
      v230 = v166;
      v231 = v167;
      v232 = v168;
      v233 = v169;
      v228 = v165[0];
      v229 = v165[1];
      sub_1AF5DD298(&v228, &v208);
      v113 = v19;
      do
      {
        v21 = *(v18 + 40);
        v22 = *(v21 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v22);
        os_unfair_lock_lock(*(v21 + 344));
        v23 = *(v21 + 24);

        v210 = 0;
        v209 = 0u;
        v208 = 0u;
        memset(v189, 0, sizeof(v189));
        v24 = sub_1AF65A4B4(v23, v135, &off_1F2558F90, 0, 0, &v208, v189);

        sub_1AF5DD41C(v189);
        sub_1AF5DD41C(&v208);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v24);
        }

        else
        {
          v131 = v18;
          v25 = *(v21 + 232);
          v26 = *(v21 + 240);
          v117 = *(v21 + 120);
          v156 = *(v21 + 28);
          v155 = *(v21 + 32);
          v27 = *(v21 + 16);
          v28 = *(v21 + 40);
          v29 = *(v28 + 200);
          v152 = *(*(v27 + 88) + 8 * v24 + 32);

          if ((v29 & 1) != 0 || *(v152 + 200) == 1)
          {
            *(v27 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v28 = *(v21 + 40);
          }

          v30 = *(v21 + 256);
          sub_1AF5B4FCC(v28, v25, v26, 0, v21);
          v138 = *(v21 + 256);
          v141 = v30;
          v31 = v138 - v30;
          if (v138 == v30)
          {
            v32 = 0;
          }

          else
          {
            v32 = v30;
          }

          *v189 = v32;
          v33 = *(*(v21 + 40) + 24);
          v34 = *(v33 + 16);
          if (v34)
          {
            v35 = v33 + 32;

            for (i = 0; i != v34; ++i)
            {
              v37 = v35 + 40 * i;
              if ((*(v37 + 32) & 1) == 0)
              {
                v38 = *(v152 + 24);
                v39 = *(v38 + 16);
                if (v39)
                {
                  v40 = (v38 + 32);
                  while (*v40 != *v37)
                  {
                    v40 += 5;
                    if (!--v39)
                    {
                      goto LABEL_21;
                    }
                  }
                }

                else
                {
LABEL_21:
                  sub_1AF640BC8();
                }
              }
            }
          }

          if (*(v27 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v27 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v21 + 72) * v31);
          }

          if (*(v21 + 184))
          {
            v41 = 0;
          }

          else
          {
            v41 = *(v21 + 168);
          }

          v181 = 0;

          MEMORY[0x1EEE9AC00](v42, v43);
          v44 = v156;
          v45 = v155;
          *&v209 = v41;
          DWORD2(v209) = -1;
          v210 = v141;
          v211 = v138;
          v212 = v141;
          v213 = v138;
          *&v208 = v141;
          *(&v208 + 1) = v138;
          if (v31 < 1)
          {

            v18 = v131;
          }

          else
          {
            v18 = v131;
            do
            {
              LOBYTE(v170[0]) = v45;
              sub_1AF6248A8(v24, v44 | (v45 << 32), v117, v27, &v208, sub_1AF5C5E08);
              v45 = v155;
              v44 = v156;
            }

            while ((*(&v208 + 1) - v208) > 0);
          }

          v46 = *(v21 + 192);
          v19 = v113;
          if (v46)
          {
            v47 = *(v21 + 208);
            sub_1AF75D364(v141, v138, v46);
            sub_1AF75D364(v141, v138, v47);
          }
        }

        v18 += 48;
        os_unfair_lock_unlock(*(v21 + 344));
        os_unfair_lock_unlock(*(v21 + 376));
      }

      while (v18 != v19);
      sub_1AF5D1564(v165);
      sub_1AF5D1564(v165);
      v17 = v116;
      a7 = v122;
      v12 = v125;
    }

    else
    {
      sub_1AF5D1564(v165);
    }
  }

  else
  {
    v17 = v116;
  }

  sub_1AF6B06C0(v17, &v242, v112, v170);
  if (*&v170[0])
  {
    v48 = a2;
    if (v174 < 1 || !*(&v172 + 1))
    {
      sub_1AF5D1564(v170);
      goto LABEL_84;
    }

    v123 = a7;
    v126 = v12;
    v49 = *(&v171 + 1);
    v50 = *(&v171 + 1) + 48 * *(&v172 + 1);
    sub_1AF81F4A8(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
    v52 = v51;
    v230 = v171;
    v231 = v172;
    v232 = v173;
    v233 = v174;
    v228 = v170[0];
    v229 = v170[1];
    sub_1AF5DD298(&v228, &v208);
    v114 = v52;
    v115 = v50;
    do
    {
      v53 = *(v49 + 40);
      v54 = *(v53 + 376);
      swift_retain_n();
      os_unfair_lock_lock(v54);
      os_unfair_lock_lock(*(v53 + 344));
      v55 = *(v53 + 24);

      v210 = 0;
      v209 = 0u;
      v208 = 0u;
      memset(v189, 0, sizeof(v189));
      v56 = sub_1AF65A4B4(v55, v52, &off_1F250F310, 0, 0, &v208, v189);

      sub_1AF5DD41C(v189);
      sub_1AF5DD41C(&v208);
      if (sub_1AF649CEC())
      {
        sub_1AF649D40(v56);
      }

      else
      {
        v136 = v49;
        v57 = *(v53 + 232);
        v58 = *(v53 + 240);
        v118 = *(v53 + 120);
        v153 = *(v53 + 28);
        v59 = *(v53 + 32);
        v60 = *(v53 + 16);
        v61 = *(v53 + 40);
        v62 = *(v61 + 200);
        v157 = *(*(v60 + 88) + 8 * v56 + 32);

        if ((v62 & 1) != 0 || *(v157 + 200) == 1)
        {
          *(v60 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
          v61 = *(v53 + 40);
        }

        v132 = v59;
        v63 = v153;
        v64 = *(v53 + 256);
        sub_1AF5B4FCC(v61, v57, v58, 0, v53);
        v142 = *(v53 + 256);
        v65 = v142 - v64;
        v149 = v64;
        if (v142 == v64)
        {
          v66 = 0;
        }

        else
        {
          v66 = v64;
        }

        *v189 = v66;
        v67 = *(*(v53 + 40) + 24);
        v68 = *(v67 + 16);
        if (v68)
        {
          v69 = v67 + 32;

          v70 = 0;
          v71 = v65;
          do
          {
            v72 = v69 + 40 * v70;
            if ((*(v72 + 32) & 1) == 0)
            {
              v73 = *(v157 + 24);
              v74 = *(v73 + 16);
              if (v74)
              {
                v75 = (v73 + 32);
                while (*v75 != *v72)
                {
                  v75 += 5;
                  if (!--v74)
                  {
                    goto LABEL_61;
                  }
                }
              }

              else
              {
LABEL_61:
                sub_1AF640BC8();
              }
            }

            ++v70;
          }

          while (v70 != v68);

          v63 = v153;
        }

        else
        {
          v71 = v142 - v64;
        }

        if (*(v60 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v60 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v53 + 72) * v71);
        }

        v76 = v71;
        if (*(v53 + 184))
        {
          v77 = 0;
        }

        else
        {
          v77 = *(v53 + 168);
        }

        v181 = 0;

        MEMORY[0x1EEE9AC00](v78, v79);
        *&v209 = v77;
        DWORD2(v209) = -1;
        v210 = v149;
        v211 = v142;
        v212 = v149;
        v213 = v142;
        *&v208 = v149;
        *(&v208 + 1) = v142;
        if (v76 >= 1)
        {
          do
          {
            LOBYTE(v226[0]) = v132;
            sub_1AF6248A8(v56, v63 | (v132 << 32), v118, v60, &v208, sub_1AF5C5E08);
          }

          while ((*(&v208 + 1) - v208) > 0);
        }

        v80 = *(v53 + 192);
        v52 = v114;
        if (v80)
        {
          v81 = *(v53 + 208);
          sub_1AF75D364(v149, v142, v80);
          sub_1AF75D364(v149, v142, v81);
        }

        v49 = v136;
        v50 = v115;
      }

      v49 += 48;
      os_unfair_lock_unlock(*(v53 + 344));
      os_unfair_lock_unlock(*(v53 + 376));
    }

    while (v49 != v50);
    sub_1AF5D1564(v170);
    sub_1AF5D1564(v170);
    a7 = v123;
    v12 = v126;
  }

  v48 = a2;
LABEL_84:
  v154 = sub_1AFB08304(0, v110, v48);
  if (v82)
  {
    v83 = v82;
    sub_1AF8D5F10(1, 2, 2, &v175);
    v220 = v175;
    v221 = v176;
    v222 = v177;
    v223 = v178 | 1;
    v224 = v179;
    v225 = v180;
    sub_1AF6B06C0(v116, &v220, v112, &v181);
    v158 = v83;
    v121 = v181;
    if (v181)
    {
      v84 = v184;
      v85 = v187;
      v197 = v182;
      v198 = v183;
      v119 = v188;
      v120 = v186;
      if (v188 < 1)
      {
        sub_1AF5D1564(&v181);
      }

      else
      {
        if (v185)
        {
          v143 = v185;
          v150 = *(v187 + 32);
          v139 = *(v186 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

          sub_1AF5D15C0(&v181, &v228);
          v86 = (v84 + 24);
          v124 = a7;
          v127 = v12;
          do
          {
            v88 = *(v86 - 6);
            v87 = *(v86 - 5);
            v89 = *(v86 - 4);
            v91 = *(v86 - 1);
            v90 = *v86;
            v93 = v86[1];
            v92 = v86[2];
            v133 = v86;
            if (v139)
            {
              v94 = *(v92 + 376);

              os_unfair_lock_lock(v94);
              os_unfair_lock_lock(*(v92 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v150);
            v95 = *(v85 + 64);
            v226[0] = *(v85 + 48);
            v226[1] = v95;
            v227 = *(v85 + 80);
            v96 = *(*(*(*(v92 + 40) + 16) + 32) + 16) + 1;
            *(v85 + 48) = ecs_stack_allocator_allocate(*(v85 + 32), 48 * v96, 8);
            *(v85 + 56) = v96;
            *(v85 + 72) = 0;
            *(v85 + 80) = 0;
            *(v85 + 64) = 0;
            LOBYTE(v208) = 1;
            *&v228 = v120;
            *(&v228 + 1) = v92;
            *&v229 = v85;
            *(&v229 + 1) = v89;
            *&v230 = (v87 - v88 + v89);
            *(&v230 + 1) = v119;
            *&v231 = v88;
            *(&v231 + 1) = v87;
            v232 = 0uLL;
            LOBYTE(v233) = 1;
            *(&v233 + 1) = v91;
            v234 = v90;
            v235 = v93;

            sub_1AFD3D69C(&v228, a9, a3, a4 & 1, v154, v158, a6, v145, a5, v124, v127, a10);

            v199 = v121;
            v200 = v197;
            v201 = v198;
            sub_1AF630994(v85, &v199, v226);
            sub_1AF62D29C(v92);
            ecs_stack_allocator_pop_snapshot(v150);
            if (v139)
            {
              os_unfair_lock_unlock(*(v92 + 344));
              os_unfair_lock_unlock(*(v92 + 376));
            }

            v86 = v133 + 6;
            --v143;
          }

          while (v143);
          sub_1AF5D1564(&v181);
          sub_1AF5D1564(&v181);
        }

        else
        {

          sub_1AF5D1564(&v181);
        }
      }
    }

    sub_1AF6B06C0(v116, &v220, v112, v189);
    v137 = *v189;
    if (*v189)
    {
      v97 = v190;
      v98 = v191;
      v99 = v193;
      v195 = *&v189[8];
      v196 = *&v189[24];
      v130 = v194;
      v134 = v192;
      if (v194 <= 0)
      {
        sub_1AF5D15C0(v189, &v208);

        sub_1AF81F384(&v159, sub_1AF81FB10);
        sub_1AF81F384(&v175, sub_1AF81FB4C);
        sub_1AF5D1564(v189);
        return sub_1AF5D1564(v189);
      }

      if (v191)
      {
        v100 = *(v193 + 32);
        v151 = *(v192 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(v189, &v208);
        v101 = (v97 + 24);
        do
        {
          v103 = *(v101 - 6);
          v102 = *(v101 - 5);
          v104 = *(v101 - 4);
          v144 = *v101;
          v146 = *(v101 - 1);
          v105 = v101[2];
          v140 = v101[1];
          if (v151)
          {
            v106 = *(v105 + 376);

            os_unfair_lock_lock(v106);
            os_unfair_lock_lock(*(v105 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v100);
          v107 = *(v99 + 64);
          v206[0] = *(v99 + 48);
          v206[1] = v107;
          v207 = *(v99 + 80);
          v108 = *(*(*(*(v105 + 40) + 16) + 32) + 16) + 1;
          *(v99 + 48) = ecs_stack_allocator_allocate(*(v99 + 32), 48 * v108, 8);
          *(v99 + 56) = v108;
          *(v99 + 72) = 0;
          *(v99 + 80) = 0;
          *(v99 + 64) = 0;
          v205 = 1;
          *&v208 = v134;
          *(&v208 + 1) = v105;
          *&v209 = v99;
          *(&v209 + 1) = v104;
          v210 = (v102 - v103 + v104);
          v211 = v130;
          v212 = v103;
          v213 = v102;
          v214 = 0;
          v215 = 0;
          v216 = 1;
          v217 = v146;
          v218 = v144;
          v219 = v140;

          sub_1AFD3BDCC(&v208, a9, a3, a4 & 1, v154, v158);

          v202 = v137;
          v203 = v195;
          v204 = v196;
          sub_1AF630994(v99, &v202, v206);
          sub_1AF62D29C(v105);
          ecs_stack_allocator_pop_snapshot(v100);
          if (v151)
          {
            os_unfair_lock_unlock(*(v105 + 344));
            os_unfair_lock_unlock(*(v105 + 376));
          }

          v101 += 6;
          --v98;
        }

        while (v98);
      }

      else
      {

        sub_1AF5D15C0(v189, &v208);
      }

      sub_1AF81F384(&v159, sub_1AF81FB10);
      sub_1AF81F384(&v175, sub_1AF81FB4C);
      sub_1AF5D1564(v189);

      sub_1AF5D1564(v189);
    }

    else
    {

      sub_1AF81F384(&v159, sub_1AF81FB10);
      sub_1AF81F384(&v175, sub_1AF81FB4C);
    }
  }

  else
  {
    *&v228 = 0;
    *(&v228 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v228 = 0xD000000000000011;
    *(&v228 + 1) = 0x80000001AFF365C0;
    MEMORY[0x1B2718AE0](v110, v48);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF365E0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF818CCC(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v16 = a11;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v243 = qword_1ED73B840;
  v244 = 0;
  v245 = 2;
  v246 = 0;
  v247 = 2;
  v248 = 0;
  sub_1AF70424C(1, &v166);
  v249 = v166;
  v250 = v167;
  v251 = v168;
  v252 = v169 | 1;
  v253 = v170;
  v254 = v171;
  if ((a11 & 0x100000000) != 0)
  {
    v16 = 0x200000000;
  }

  sub_1AF6B06C0(v118, &v249, v16, v172);
  if (*&v172[0])
  {
    v17 = v118;
    if (v176 >= 1 && *(&v174 + 1))
    {
      v111 = a1;
      v113 = a2;
      v115 = v16;
      v131 = a8;
      v134 = v12;
      v18 = *(&v173 + 1);
      v19 = *(&v173 + 1) + 48 * *(&v174 + 1);
      sub_1AF81F4A8(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      v21 = v20;
      v237 = v173;
      v238 = v174;
      v239 = v175;
      v240 = v176;
      v235 = v172[0];
      v236 = v172[1];
      sub_1AF5DD298(&v235, &v215);
      v122 = v19;
      v119 = v21;
      do
      {
        v22 = *(v18 + 40);
        v23 = *(v22 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v23);
        os_unfair_lock_lock(*(v22 + 344));
        v24 = *(v22 + 24);

        v217 = 0;
        v216 = 0u;
        v215 = 0u;
        memset(v196, 0, sizeof(v196));
        v25 = sub_1AF65A4B4(v24, v21, &off_1F2558F90, 0, 0, &v215, v196);

        sub_1AF5DD41C(v196);
        sub_1AF5DD41C(&v215);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v25);
        }

        else
        {
          v146 = v18;
          v26 = *(v22 + 232);
          v27 = *(v22 + 240);
          v127 = *(v22 + 120);
          v163 = *(v22 + 28);
          v162 = *(v22 + 32);
          v28 = *(v22 + 16);
          v29 = *(v22 + 40);
          v30 = *(v29 + 200);
          v159 = *(*(v28 + 88) + 8 * v25 + 32);

          if ((v30 & 1) != 0 || *(v159 + 200) == 1)
          {
            *(v28 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v29 = *(v22 + 40);
          }

          v31 = *(v22 + 256);
          sub_1AF5B4FCC(v29, v26, v27, 0, v22);
          v150 = *(v22 + 256);
          v152 = v31;
          v32 = v150 - v31;
          if (v150 == v31)
          {
            v33 = 0;
          }

          else
          {
            v33 = v31;
          }

          *v196 = v33;
          v34 = *(*(v22 + 40) + 24);
          v35 = *(v34 + 16);
          if (v35)
          {
            v36 = v34 + 32;

            for (i = 0; i != v35; ++i)
            {
              v38 = v36 + 40 * i;
              if ((*(v38 + 32) & 1) == 0)
              {
                v39 = *(v159 + 24);
                v40 = *(v39 + 16);
                if (v40)
                {
                  v41 = (v39 + 32);
                  while (*v41 != *v38)
                  {
                    v41 += 5;
                    if (!--v40)
                    {
                      goto LABEL_20;
                    }
                  }
                }

                else
                {
LABEL_20:
                  sub_1AF640BC8();
                }
              }
            }
          }

          if (*(v28 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v28 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v22 + 72) * v32);
          }

          if (*(v22 + 184))
          {
            v42 = 0;
          }

          else
          {
            v42 = *(v22 + 168);
          }

          v188 = 0;

          MEMORY[0x1EEE9AC00](v43, v44);
          v45 = v163;
          v46 = v162;
          *&v216 = v42;
          DWORD2(v216) = -1;
          v217 = v152;
          v218 = v150;
          v219 = v152;
          v220 = v150;
          *&v215 = v152;
          *(&v215 + 1) = v150;
          if (v32 < 1)
          {

            v18 = v146;
          }

          else
          {
            v18 = v146;
            do
            {
              LOBYTE(v177[0]) = v46;
              sub_1AF6248A8(v25, v45 | (v46 << 32), v127, v28, &v215, sub_1AF5C5E08);
              v46 = v162;
              v45 = v163;
            }

            while ((*(&v215 + 1) - v215) > 0);
          }

          v47 = *(v22 + 192);
          v21 = v119;
          v19 = v122;
          if (v47)
          {
            v48 = *(v22 + 208);
            sub_1AF75D364(v152, v150, v47);
            sub_1AF75D364(v152, v150, v48);
          }
        }

        v18 += 48;
        os_unfair_lock_unlock(*(v22 + 344));
        os_unfair_lock_unlock(*(v22 + 376));
      }

      while (v18 != v19);
      sub_1AF5D1564(v172);
      sub_1AF5D1564(v172);
      v16 = v115;
      v17 = v118;
      a8 = v131;
      v12 = v134;
      a2 = v113;
      a1 = v111;
    }

    else
    {
      sub_1AF5D1564(v172);
    }
  }

  else
  {
    v17 = v118;
  }

  sub_1AF6B06C0(v17, &v249, v16, v177);
  if (*&v177[0])
  {
    if (v181 >= 1 && *(&v179 + 1))
    {
      v112 = a1;
      v114 = a2;
      v116 = v16;
      v132 = a8;
      v135 = v12;
      v49 = *(&v178 + 1);
      v50 = *(&v178 + 1) + 48 * *(&v179 + 1);
      sub_1AF81F4A8(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
      v52 = v51;
      v237 = v178;
      v238 = v179;
      v239 = v180;
      v240 = v181;
      v235 = v177[0];
      v236 = v177[1];
      sub_1AF5DD298(&v235, &v215);
      v120 = v52;
      v123 = v50;
      do
      {
        v53 = *(v49 + 40);
        v54 = *(v53 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v54);
        os_unfair_lock_lock(*(v53 + 344));
        v55 = *(v53 + 24);

        v217 = 0;
        v216 = 0u;
        v215 = 0u;
        memset(v196, 0, sizeof(v196));
        v56 = sub_1AF65A4B4(v55, v52, &off_1F250F310, 0, 0, &v215, v196);

        sub_1AF5DD41C(v196);
        sub_1AF5DD41C(&v215);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v56);
        }

        else
        {
          v147 = v49;
          v57 = *(v53 + 232);
          v58 = *(v53 + 240);
          v125 = *(v53 + 120);
          v160 = *(v53 + 28);
          v59 = *(v53 + 32);
          v60 = *(v53 + 16);
          v61 = *(v53 + 40);
          v62 = *(v61 + 200);
          v164 = *(*(v60 + 88) + 8 * v56 + 32);

          if ((v62 & 1) != 0 || *(v164 + 200) == 1)
          {
            *(v60 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v61 = *(v53 + 40);
          }

          v143 = v59;
          v63 = v160;
          v64 = *(v53 + 256);
          sub_1AF5B4FCC(v61, v57, v58, 0, v53);
          v153 = *(v53 + 256);
          v156 = v64;
          v65 = v153 - v64;
          if (v153 == v64)
          {
            v66 = 0;
          }

          else
          {
            v66 = v64;
          }

          *v196 = v66;
          v67 = *(*(v53 + 40) + 24);
          v68 = *(v67 + 16);
          if (v68)
          {
            v69 = v67 + 32;

            v70 = 0;
            v71 = v65;
            do
            {
              v72 = v69 + 40 * v70;
              if ((*(v72 + 32) & 1) == 0)
              {
                v73 = *(v164 + 24);
                v74 = *(v73 + 16);
                if (v74)
                {
                  v75 = (v73 + 32);
                  while (*v75 != *v72)
                  {
                    v75 += 5;
                    if (!--v74)
                    {
                      goto LABEL_60;
                    }
                  }
                }

                else
                {
LABEL_60:
                  sub_1AF640BC8();
                }
              }

              ++v70;
            }

            while (v70 != v68);

            v63 = v160;
          }

          else
          {
            v71 = v153 - v64;
          }

          if (*(v60 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v60 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v53 + 72) * v71);
          }

          v76 = v71;
          if (*(v53 + 184))
          {
            v77 = 0;
          }

          else
          {
            v77 = *(v53 + 168);
          }

          v188 = 0;

          MEMORY[0x1EEE9AC00](v78, v79);
          *&v216 = v77;
          DWORD2(v216) = -1;
          v217 = v156;
          v218 = v153;
          v219 = v156;
          v220 = v153;
          *&v215 = v156;
          *(&v215 + 1) = v153;
          if (v76 >= 1)
          {
            do
            {
              LOBYTE(v233[0]) = v143;
              sub_1AF6248A8(v56, v63 | (v143 << 32), v125, v60, &v215, sub_1AF5C5E08);
            }

            while ((*(&v215 + 1) - v215) > 0);
          }

          v80 = *(v53 + 192);
          v52 = v120;
          if (v80)
          {
            v81 = *(v53 + 208);
            sub_1AF75D364(v156, v153, v80);
            sub_1AF75D364(v156, v153, v81);
          }

          v49 = v147;
          v50 = v123;
        }

        v49 += 48;
        os_unfair_lock_unlock(*(v53 + 344));
        os_unfair_lock_unlock(*(v53 + 376));
      }

      while (v49 != v50);
      sub_1AF5D1564(v177);
      sub_1AF5D1564(v177);
      a8 = v132;
      v12 = v135;
      v16 = v116;
      a1 = v112;
      a2 = v114;
    }

    else
    {
      sub_1AF5D1564(v177);
    }
  }

  v161 = sub_1AFB08304(0, a1, a2);
  v165 = v82;
  if (v82)
  {
    sub_1AF8D5C88(1, 2, 2, &v182);
    v227 = v182;
    v228 = v183;
    v229 = v184;
    v230 = v185 | 1;
    v231 = v186;
    v232 = v187;
    sub_1AF6B06C0(v118, &v227, v16, &v188);
    v128 = v188;
    if (v188)
    {
      v83 = v191;
      v84 = v192;
      v85 = v194;
      v204 = v189;
      v205 = v190;
      v124 = v195;
      v126 = v193;
      if (v195 < 1)
      {
        sub_1AF5D1564(&v188);
      }

      else
      {
        if (v192)
        {
          v117 = v16;
          v86 = *(v194 + 32);
          v157 = *(v193 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

          sub_1AF5D15C0(&v188, &v235);
          v87 = (v83 + 24);
          v133 = a8;
          v136 = v12;
          v121 = v86;
          do
          {
            v88 = *(v87 - 6);
            v89 = *(v87 - 5);
            v90 = *(v87 - 4);
            v141 = *v87;
            v144 = *(v87 - 1);
            v92 = v87[1];
            v91 = v87[2];
            v148 = v87;
            v154 = v84;
            if (v157)
            {
              v93 = *(v91 + 376);

              os_unfair_lock_lock(v93);
              os_unfair_lock_lock(*(v91 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v86);
            v94 = *(v85 + 64);
            v233[0] = *(v85 + 48);
            v233[1] = v94;
            v234 = *(v85 + 80);
            v95 = *(*(*(*(v91 + 40) + 16) + 32) + 16) + 1;
            *(v85 + 48) = ecs_stack_allocator_allocate(*(v85 + 32), 48 * v95, 8);
            *(v85 + 56) = v95;
            *(v85 + 72) = 0;
            *(v85 + 80) = 0;
            *(v85 + 64) = 0;
            LOBYTE(v215) = 1;
            *&v235 = v126;
            *(&v235 + 1) = v91;
            *&v236 = v85;
            *(&v236 + 1) = v90;
            *&v237 = (v89 - v88 + v90);
            *(&v237 + 1) = v124;
            *&v238 = v88;
            *(&v238 + 1) = v89;
            v239 = 0uLL;
            LOBYTE(v240) = 1;
            *(&v240 + 1) = v144;
            v241 = v141;
            v242 = v92;

            sub_1AFD40BCC(&v235, a9, a3, a4 & 1, v161, v165, a6, v133, a5, a7, v136, a10);

            v206 = v128;
            v207 = v204;
            v208 = v205;
            sub_1AF630994(v85, &v206, v233);
            sub_1AF62D29C(v91);
            ecs_stack_allocator_pop_snapshot(v121);
            if (v157)
            {
              os_unfair_lock_unlock(*(v91 + 344));
              os_unfair_lock_unlock(*(v91 + 376));
            }

            v87 = v148 + 6;
            --v84;
            v86 = v121;
          }

          while (v154 != 1);
          sub_1AF5D1564(&v188);
          sub_1AF5D1564(&v188);

          v16 = v117;
        }

        else
        {

          sub_1AF5D1564(&v188);
        }
      }

      v96 = v118;
    }

    else
    {
      v96 = v118;
    }

    sub_1AF6B06C0(v96, &v227, v16, v196);
    v145 = *v196;
    if (*v196)
    {
      v97 = v197;
      v98 = v198;
      v99 = v200;
      v202 = *&v196[8];
      v203 = *&v196[24];
      v140 = v201;
      v142 = v199;
      if (v201 <= 0)
      {
        sub_1AF5D15C0(v196, &v215);

        sub_1AF81F384(&v166, sub_1AF81F9C4);
        sub_1AF81F384(&v182, sub_1AF81FA00);
        sub_1AF5D1564(v196);
        return sub_1AF5D1564(v196);
      }

      if (v198)
      {
        v100 = *(v200 + 32);
        v158 = *(v199 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(v196, &v215);
        v101 = (v97 + 24);
        do
        {
          v102 = v100;
          v104 = *(v101 - 6);
          v103 = *(v101 - 5);
          v105 = *(v101 - 4);
          v151 = *v101;
          v155 = *(v101 - 1);
          v106 = v101[2];
          v149 = v101[1];
          if (v158)
          {
            v107 = *(v106 + 376);

            os_unfair_lock_lock(v107);
            os_unfair_lock_lock(*(v106 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v102);
          v108 = *(v99 + 64);
          v213[0] = *(v99 + 48);
          v213[1] = v108;
          v214 = *(v99 + 80);
          v109 = *(*(*(*(v106 + 40) + 16) + 32) + 16) + 1;
          *(v99 + 48) = ecs_stack_allocator_allocate(*(v99 + 32), 48 * v109, 8);
          *(v99 + 56) = v109;
          *(v99 + 72) = 0;
          *(v99 + 80) = 0;
          *(v99 + 64) = 0;
          v212 = 1;
          *&v215 = v142;
          *(&v215 + 1) = v106;
          *&v216 = v99;
          *(&v216 + 1) = v105;
          v217 = (v103 - v104 + v105);
          v218 = v140;
          v219 = v104;
          v220 = v103;
          v221 = 0;
          v222 = 0;
          v223 = 1;
          v224 = v155;
          v225 = v151;
          v226 = v149;

          sub_1AFD3F8E8(&v215, a9, v161, v165);

          v209 = v145;
          v210 = v202;
          v211 = v203;
          sub_1AF630994(v99, &v209, v213);
          sub_1AF62D29C(v106);
          ecs_stack_allocator_pop_snapshot(v102);
          v100 = v102;
          if (v158)
          {
            os_unfair_lock_unlock(*(v106 + 344));
            os_unfair_lock_unlock(*(v106 + 376));
          }

          v101 += 6;
          --v98;
        }

        while (v98);

        sub_1AF81F384(&v166, sub_1AF81F9C4);
        sub_1AF81F384(&v182, sub_1AF81FA00);
        sub_1AF5D1564(v196);

        sub_1AF5D1564(v196);
      }

      else
      {

        sub_1AF5D15C0(v196, &v215);

        sub_1AF81F384(&v166, sub_1AF81F9C4);
        sub_1AF81F384(&v182, sub_1AF81FA00);
        sub_1AF5D1564(v196);

        sub_1AF5D1564(v196);
      }
    }

    else
    {

      sub_1AF81F384(&v166, sub_1AF81F9C4);
      sub_1AF81F384(&v182, sub_1AF81FA00);
    }
  }

  else
  {
    *&v235 = 0;
    *(&v235 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v235 = 0xD000000000000011;
    *(&v235 + 1) = 0x80000001AFF365C0;
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF365E0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF81A254(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t *__return_ptr, uint64_t), uint64_t (*a13)(void, __n128), uint64_t (*a14)(uint64_t, uint64_t, uint64_t), unint64_t *a15, uint64_t (*a16)(uint64_t), uint64_t a17, uint64_t (*a18)(uint64_t, uint64_t, uint64_t), void (*a19)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t), void (*a20)(uint64_t *__return_ptr, uint64_t, __n128), uint64_t (*a21)(void), void (*a22)(void *, uint64_t), uint64_t (*a23)(void), uint64_t (*a24)(void), void (*a25)(__int128 *, uint64_t, uint64_t, void, uint64_t, uint64_t), void (*a26)(__int128 *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v27 = v26;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v285 = qword_1ED73B840;
  v286 = 0;
  v287 = 2;
  v288 = 0;
  v289 = 2;
  v290 = 0;
  a12(&v192, 1);
  v301 = v192;
  v302 = v193;
  v303 = v194;
  v304 = v195 | 1;
  v305 = v196;
  v306 = v197;
  if ((a11 & 0x100000000) != 0)
  {
    v31 = 0x200000000;
  }

  else
  {
    v31 = a11;
  }

  v141 = v31;
  v32 = sub_1AF6B06C0(v140, &v301, v31, v198);
  v166 = a1;
  if (*&v198[0])
  {
    v33 = v140;
    if (v202 >= 1 && *(&v200 + 1))
    {
      v152 = a8;
      v155 = a7;
      v158 = v27;
      v34 = *(&v199 + 1);
      v35 = *(&v199 + 1) + 48 * *(&v200 + 1);
      v148 = a13(0, v32);
      v295 = v199;
      v296 = v200;
      v297 = v201;
      v298 = v202;
      v293 = v198[0];
      v294 = v198[1];
      sub_1AF5DD298(&v293, &v256);
      v36 = 0;
      v138 = v35;
      do
      {
        v37 = *(v34 + 40);
        v38 = *(v37 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v38);
        os_unfair_lock_lock(*(v37 + 344));
        v39 = *(v37 + 24);

        v258 = 0;
        v257 = 0u;
        v256 = 0u;
        memset(v274, 0, sizeof(v274));
        v40 = sub_1AF65A4B4(v39, v148, &off_1F2558F90, 0, 0, &v256, v274);

        sub_1AF5DD41C(v274);
        sub_1AF5DD41C(&v256);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v40);
        }

        else
        {
          v145 = v34;
          v41 = *(v37 + 232);
          v42 = *(v37 + 240);
          v142 = *(v37 + 120);
          v188 = *(v37 + 28);
          v185 = *(v37 + 32);
          v43 = *(v37 + 16);
          v44 = *(v37 + 40);
          v45 = *(v44 + 200);
          v183 = *(*(v43 + 88) + 8 * v40 + 32);

          if ((v45 & 1) != 0 || *(v183 + 200) == 1)
          {
            *(v43 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v44 = *(v37 + 40);
          }

          v46 = v36;
          v47 = a14;
          v48 = *(v37 + 256);
          sub_1AF5B4FCC(v44, v41, v42, 0, v37);
          v169 = *(v37 + 256);
          v173 = v48;
          v49 = v169 - v48;
          if (v169 == v48)
          {
            v50 = 0;
          }

          else
          {
            v50 = v48;
          }

          v274[0] = v50;
          v51 = *(*(v37 + 40) + 24);
          v52 = *(v51 + 16);
          if (v52)
          {
            v181 = v46;
            v53 = v51 + 32;

            v54 = 0;
            v55 = v49;
            do
            {
              v56 = v53 + 40 * v54;
              if ((*(v56 + 32) & 1) == 0)
              {
                v57 = *(v183 + 24);
                v58 = *(v57 + 16);
                if (v58)
                {
                  v59 = (v57 + 32);
                  while (*v59 != *v56)
                  {
                    v59 += 5;
                    if (!--v58)
                    {
                      goto LABEL_21;
                    }
                  }
                }

                else
                {
LABEL_21:
                  sub_1AF640BC8();
                }
              }

              ++v54;
            }

            while (v54 != v52);

            v36 = v181;
            v47 = a14;
          }

          else
          {
            v36 = v46;
            v55 = v49;
          }

          if (*(v43 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v43 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v37 + 72) * v55);
          }

          v60 = v55;
          if (*(v37 + 184))
          {
            v61 = 0;
          }

          else
          {
            v61 = *(v37 + 168);
          }

          v235 = 0;

          MEMORY[0x1EEE9AC00](v62, v63);
          v64 = v188;
          v65 = v185;
          *&v257 = v61;
          DWORD2(v257) = -1;
          v258 = v173;
          v259 = v169;
          v260 = v173;
          v261 = v169;
          *&v256 = v173;
          *(&v256 + 1) = v169;
          if (v60 >= 1)
          {
            do
            {
              LOBYTE(v228) = v65;
              sub_1AF6248A8(v40, v64 | (v65 << 32), v142, v43, &v256, v47);
              v65 = v185;
              v64 = v188;
            }

            while ((*(&v256 + 1) - v256) > 0);
          }

          v66 = *(v37 + 192);
          a1 = v166;
          v34 = v145;
          if (v66)
          {
            v67 = *(v37 + 208);
            sub_1AF75D364(v173, v169, v66);
            sub_1AF75D364(v173, v169, v67);
          }

          v35 = v138;
        }

        v34 += 48;
        os_unfair_lock_unlock(*(v37 + 344));
        os_unfair_lock_unlock(*(v37 + 376));
      }

      while (v34 != v35);
      sub_1AF5D1564(v198);
      sub_1AF5D1564(v198);
      v33 = v140;
      a7 = v155;
      v27 = v158;
      a8 = v152;
    }

    else
    {
      sub_1AF5D1564(v198);
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
    v33 = v140;
  }

  sub_1AF6B06C0(v33, &v301, v141, v203);
  if (*&v203[0])
  {
    v68 = a2;
    if (v207 < 1 || !*(&v205 + 1))
    {
      sub_1AF5D1564(v203);
      goto LABEL_82;
    }

    v153 = a8;
    v156 = a7;
    v159 = v27;
    v69 = *(&v204 + 1);
    v70 = *(&v204 + 1) + 48 * *(&v205 + 1);
    sub_1AF81F4A8(0, a15, a16, a17, type metadata accessor for ScriptCompileAttempt);
    v149 = v71;
    v295 = v204;
    v296 = v205;
    v297 = v206;
    v298 = v207;
    v293 = v203[0];
    v294 = v203[1];
    sub_1AF5DD298(&v293, &v256);
    v139 = v70;
    do
    {
      v72 = *(v69 + 40);
      v73 = *(v72 + 376);
      swift_retain_n();
      os_unfair_lock_lock(v73);
      os_unfair_lock_lock(*(v72 + 344));
      v74 = *(v72 + 24);

      v258 = 0;
      v257 = 0u;
      v256 = 0u;
      memset(v274, 0, sizeof(v274));
      v75 = sub_1AF65A4B4(v74, v149, &off_1F250F310, 0, 0, &v256, v274);

      sub_1AF5DD41C(v274);
      sub_1AF5DD41C(&v256);
      if (sub_1AF649CEC())
      {
        sub_1AF649D40(v75);
      }

      else
      {
        v146 = v69;
        v76 = *(v72 + 232);
        v77 = *(v72 + 240);
        v143 = *(v72 + 120);
        v189 = *(v72 + 28);
        v186 = *(v72 + 32);
        v78 = *(v72 + 16);
        v79 = *(v72 + 40);
        v80 = *(v79 + 200);
        v184 = *(*(v78 + 88) + 8 * v75 + 32);

        if ((v80 & 1) != 0 || *(v184 + 200) == 1)
        {
          *(v78 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
          v79 = *(v72 + 40);
        }

        v81 = v36;
        v82 = a18;
        v83 = *(v72 + 256);
        sub_1AF5B4FCC(v79, v76, v77, 0, v72);
        v170 = *(v72 + 256);
        v174 = v83;
        v84 = v170 - v83;
        if (v170 == v83)
        {
          v85 = 0;
        }

        else
        {
          v85 = v83;
        }

        v274[0] = v85;
        v86 = *(*(v72 + 40) + 24);
        v87 = *(v86 + 16);
        if (v87)
        {
          v182 = v81;
          v88 = v86 + 32;

          v89 = 0;
          v90 = v84;
          do
          {
            v91 = v88 + 40 * v89;
            if ((*(v91 + 32) & 1) == 0)
            {
              v92 = *(v184 + 24);
              v93 = *(v92 + 16);
              if (v93)
              {
                v94 = (v92 + 32);
                while (*v94 != *v91)
                {
                  v94 += 5;
                  if (!--v93)
                  {
                    goto LABEL_59;
                  }
                }
              }

              else
              {
LABEL_59:
                sub_1AF640BC8();
              }
            }

            ++v89;
          }

          while (v89 != v87);

          v36 = v182;
          v82 = a18;
        }

        else
        {
          v36 = v81;
          v90 = v84;
        }

        if (*(v78 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v78 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v72 + 72) * v90);
        }

        v95 = v90;
        if (*(v72 + 184))
        {
          v96 = 0;
        }

        else
        {
          v96 = *(v72 + 168);
        }

        v235 = 0;

        MEMORY[0x1EEE9AC00](v97, v98);
        v99 = v189;
        v100 = v186;
        *&v257 = v96;
        DWORD2(v257) = -1;
        v258 = v174;
        v259 = v170;
        v260 = v174;
        v261 = v170;
        *&v256 = v174;
        *(&v256 + 1) = v170;
        if (v95 >= 1)
        {
          do
          {
            LOBYTE(v228) = v100;
            sub_1AF6248A8(v75, v99 | (v100 << 32), v143, v78, &v256, v82);
            v100 = v186;
            v99 = v189;
          }

          while ((*(&v256 + 1) - v256) > 0);
        }

        v101 = *(v72 + 192);
        a1 = v166;
        v69 = v146;
        if (v101)
        {
          v102 = *(v72 + 208);
          sub_1AF75D364(v174, v170, v101);
          sub_1AF75D364(v174, v170, v102);
        }

        v70 = v139;
      }

      v69 += 48;
      os_unfair_lock_unlock(*(v72 + 344));
      os_unfair_lock_unlock(*(v72 + 376));
    }

    while (v69 != v70);
    sub_1AF5D1564(v203);
    sub_1AF5D1564(v203);
    a7 = v156;
    v27 = v159;
    a8 = v153;
  }

  v68 = a2;
LABEL_82:
  v180 = sub_1AFB08304(0, a1, v68);
  if (v103)
  {
    v104 = v103;
    a19(&v208, 1, 2, 2);
    v268 = v208;
    v269 = v209;
    v270 = v210;
    v271 = v211 | 1;
    v272 = v212;
    v273 = v213;
    v105 = sub_1AF6B06C0(v140, &v268, v141, &v214);
    v187 = v104;
    v151 = v214;
    if (v214)
    {
      v106 = v217;
      v107 = v220;
      v245 = v215;
      v246 = v216;
      v147 = v221;
      v150 = v219;
      if (v221 < 1)
      {
        sub_1AF5D1564(&v214);
      }

      else
      {
        if (v218)
        {
          v108 = *(v220 + 32);
          v175 = v218;
          v171 = *(v219 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

          sub_1AF5D15C0(&v214, &v293);
          v109 = v175;
          v110 = (v106 + 24);
          v157 = a7;
          v160 = v27;
          v154 = a8;
          v144 = v108;
          do
          {
            v176 = v109;
            v111 = v108;
            v112 = *(v110 - 6);
            v113 = *(v110 - 5);
            v114 = *(v110 - 4);
            v116 = *(v110 - 1);
            v115 = *v110;
            v118 = v110[1];
            v117 = v110[2];
            v167 = v110;
            v190 = v117;
            if (v171)
            {
              v119 = *(v117 + 376);

              v120 = v119;
              v117 = v190;
              os_unfair_lock_lock(v120);
              os_unfair_lock_lock(*(v190 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v111);
            v121 = *(v107 + 64);
            v291[0] = *(v107 + 48);
            v291[1] = v121;
            v292 = *(v107 + 80);
            v122 = v117;
            v123 = *(*(*(*(v117 + 40) + 16) + 32) + 16) + 1;
            *(v107 + 48) = ecs_stack_allocator_allocate(*(v107 + 32), 48 * v123, 8);
            *(v107 + 56) = v123;
            *(v107 + 72) = 0;
            *(v107 + 80) = 0;
            *(v107 + 64) = 0;
            LOBYTE(v256) = 1;
            *&v293 = v150;
            *(&v293 + 1) = v122;
            *&v294 = v107;
            *(&v294 + 1) = v114;
            *&v295 = (v113 - v112 + v114);
            *(&v295 + 1) = v147;
            *&v296 = v112;
            *(&v296 + 1) = v113;
            v297 = 0uLL;
            LOBYTE(v298) = 1;
            *(&v298 + 1) = v116;
            v299 = v115;
            v300 = v118;

            a26(&v293, a9, a3, a4 & 1, v180, v187, a6, v154, a5, v157, v160, a10);

            v247 = v151;
            v248 = v245;
            v249 = v246;
            sub_1AF630994(v107, &v247, v291);
            sub_1AF62D29C(v190);
            v108 = v144;
            ecs_stack_allocator_pop_snapshot(v144);
            if (v171)
            {
              os_unfair_lock_unlock(*(v190 + 344));
              os_unfair_lock_unlock(*(v190 + 376));
            }

            v110 = v167 + 6;
            v109 = v176 - 1;
          }

          while (v176 != 1);
          sub_1AF5D1564(&v214);
          sub_1AF5D1564(&v214);
        }

        else
        {

          sub_1AF5D1564(&v214);
        }
      }
    }

    a20(&v222, 1, v105);
    v279 = v222;
    v280 = v223;
    v281 = v224;
    v282 = v225 | 1;
    v283 = v226;
    v284 = v227;
    sub_1AF6B06C0(v140, &v279, v141, &v228);
    if (v228)
    {
      v275 = v231;
      v276 = v232;
      v277 = v233;
      *&v274[1] = v229;
      *&v274[3] = v230;
      v278 = v234;
      v274[0] = v228;

      a22(v274, v140);

      sub_1AF81F384(&v222, a21);
      sub_1AF5D1564(&v228);
    }

    else
    {
      sub_1AF81F384(&v222, a21);
    }

    sub_1AF6B06C0(v140, &v268, v141, &v235);
    v165 = v235;
    if (v235)
    {
      v124 = v238;
      v125 = v239;
      v126 = v241;
      v243 = v236;
      v244 = v237;
      v161 = v242;
      v163 = v240;
      if (v242 <= 0)
      {
        sub_1AF5D15C0(&v235, &v256);

        sub_1AF81F384(&v192, a23);
        sub_1AF81F384(&v208, a24);
        sub_1AF5D1564(&v235);
        return sub_1AF5D1564(&v235);
      }

      if (v239)
      {
        v127 = *(v241 + 32);
        v191 = *(v240 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(&v235, &v256);
        v128 = (v124 + 24);
        do
        {
          v130 = *(v128 - 6);
          v129 = *(v128 - 5);
          v131 = *(v128 - 4);
          v172 = *v128;
          v177 = *(v128 - 1);
          v132 = v128[2];
          v168 = v128[1];
          if (v191)
          {
            v133 = *(v132 + 376);

            os_unfair_lock_lock(v133);
            os_unfair_lock_lock(*(v132 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v127);
          v134 = *(v126 + 64);
          v254[0] = *(v126 + 48);
          v254[1] = v134;
          v255 = *(v126 + 80);
          v135 = *(*(*(*(v132 + 40) + 16) + 32) + 16) + 1;
          *(v126 + 48) = ecs_stack_allocator_allocate(*(v126 + 32), 48 * v135, 8);
          *(v126 + 56) = v135;
          *(v126 + 72) = 0;
          *(v126 + 80) = 0;
          *(v126 + 64) = 0;
          v253 = 1;
          *&v256 = v163;
          *(&v256 + 1) = v132;
          *&v257 = v126;
          *(&v257 + 1) = v131;
          v258 = (v129 - v130 + v131);
          v259 = v161;
          v260 = v130;
          v261 = v129;
          v262 = 0;
          v263 = 0;
          v264 = 1;
          v265 = v177;
          v266 = v172;
          v267 = v168;

          a25(&v256, a9, a3, a4 & 1, v180, v187);

          v250 = v165;
          v251 = v243;
          v252 = v244;
          sub_1AF630994(v126, &v250, v254);
          sub_1AF62D29C(v132);
          ecs_stack_allocator_pop_snapshot(v127);
          if (v191)
          {
            os_unfair_lock_unlock(*(v132 + 344));
            os_unfair_lock_unlock(*(v132 + 376));
          }

          v128 += 6;
          --v125;
        }

        while (v125);

        sub_1AF81F384(&v192, a23);
        sub_1AF81F384(&v208, a24);
        sub_1AF5D1564(&v235);

        sub_1AF5D1564(&v235);
      }

      else
      {

        sub_1AF5D15C0(&v235, &v256);

        sub_1AF81F384(&v192, a23);
        sub_1AF81F384(&v208, a24);
        sub_1AF5D1564(&v235);

        sub_1AF5D1564(&v235);
      }
    }

    else
    {

      sub_1AF81F384(&v192, a23);
      sub_1AF81F384(&v208, a24);
    }
  }

  else
  {
    *&v293 = 0;
    *(&v293 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v293 = 0xD000000000000011;
    *(&v293 + 1) = 0x80000001AFF365C0;
    MEMORY[0x1B2718AE0](a1, v68);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF365E0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}