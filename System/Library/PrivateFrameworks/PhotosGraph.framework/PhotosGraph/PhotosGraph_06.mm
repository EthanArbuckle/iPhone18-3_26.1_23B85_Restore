void CachedEventFeatures.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_22F15C30C(a1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1458, &qword_22F7719D8);
  sub_22F15C91C(&qword_27DAB1460, sub_22F15C370);
  v5 = sub_22F740D00();
  if (v2)
  {
    goto LABEL_2;
  }

  v6 = sub_22F15A9B0(v5);
  v8 = v7;
  v10 = v9;

  if (!v8)
  {
    v40 = sub_22F741B70();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1470, &qword_22F7719E0) + 48);
    *v42 = MEMORY[0x277CC9318];
    sub_22F741B60();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84170], v40);
    swift_willThrow();
LABEL_2:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return;
  }

  v44 = v8;
  v45 = v6;
  v46 = a2;
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1450, &qword_22F7719D0);
  v11 = sub_22F741DC0();
  v12 = v11;
  v13 = 0;
  v14 = *(v10 + 64);
  v49 = v10 + 64;
  v50 = v10;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v48 = (v15 + 63) >> 6;
  v51 = v11 + 64;
  if ((v16 & v14) != 0)
  {
    do
    {
      v18 = __clz(__rbit64(v17));
      v19 = (v17 - 1) & v17;
LABEL_13:
      v22 = v18 | (v13 << 6);
      v23 = *(v10 + 56);
      v24 = (*(v10 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v23 + 16 * v22);
      v28 = *(v23 + 16 * v22 + 8);
      v29 = v28 >> 62;
      v54 = v19;
      v52 = v27;
      if ((v28 >> 62) > 1)
      {
        if (v29 == 2)
        {
          v32 = *(v27 + 16);
          v33 = *(v27 + 24);
          v30 = v33 - v32;
          if (__OFSUB__(v33, v32))
          {
            goto LABEL_40;
          }

LABEL_22:
          sub_22F15C3C4(v27, v28);
          v34 = v30 + 3;
          if (v30 >= 0)
          {
            v34 = v30;
          }

          if (v30 < -3)
          {
            goto LABEL_37;
          }

          v31 = v34 >> 2;
          goto LABEL_27;
        }

        v30 = 0;
        v31 = 0;
      }

      else
      {
        if (v29)
        {
          if (__OFSUB__(DWORD1(v27), v27))
          {
            goto LABEL_41;
          }

          v30 = DWORD1(v27) - v27;
          goto LABEL_22;
        }

        v30 = BYTE6(v28);
        v31 = BYTE6(v28) >> 2;
      }

LABEL_27:

      if (v30 <= 3)
      {
        v35 = MEMORY[0x277D84F90];
        v31 = *(MEMORY[0x277D84F90] + 16);
      }

      else
      {
        v35 = sub_22F741200();
        *(v35 + 16) = v31;
        bzero((v35 + 32), 4 * v31);
      }

      if (v31 >> 61)
      {
        goto LABEL_38;
      }

      v53[0] = v52;
      sub_22F15C418();
      sub_22F73EFF0();
      sub_22F133BF0(v52, v28);
      *(v51 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v36 = (v12[6] + 16 * v22);
      *v36 = v26;
      v36[1] = v25;
      *(v12[7] + 8 * v22) = v35;
      v37 = v12[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_39;
      }

      v12[2] = v39;
      v10 = v50;
      v17 = v54;
    }

    while (v54);
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v48)
    {

      __swift_destroy_boxed_opaque_existential_0(v47);
      *v46 = v45;
      v46[1] = v44;
      v46[2] = v12;
      return;
    }

    v21 = *(v49 + 8 * v13);
    ++v20;
    if (v21)
    {
      v18 = __clz(__rbit64(v21));
      v19 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t CachedEventFeatures.encode(to:)()
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = v0[1];
  v40 = *v0;
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1480, &qword_22F7719E8);
  v3 = sub_22F741DC0();
  v4 = v2;
  v5 = v3;
  v6 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v43 = v3 + 64;
  v39 = v1;

  v11 = 0;
  v42 = v4;
  v44 = v5;
  if (v9)
  {
    goto LABEL_4;
  }

LABEL_5:
  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v10)
    {
      break;
    }

    v15 = *(v6 + 8 * v11);
    ++v14;
    if (v15)
    {
      v12 = __clz(__rbit64(v15));
      v13 = (v15 - 1) & v15;
      while (2)
      {
        v16 = v12 | (v11 << 6);
        v17 = *(*(v4 + 56) + 8 * v16);
        v18 = *(v17 + 16);
        if (!(v18 >> 61))
        {
          v19 = (*(v4 + 48) + 16 * v16);
          v46 = v13;
          v47 = *v19;
          v20 = v19[1];
          v21 = 4 * v18;
          if (4 * v18)
          {
            v45 = v19[1];
            if (v21 <= 14)
            {
              memset(__dst, 0, sizeof(__dst));
              v49 = 4 * v18;
              memcpy(__dst, (v17 + 32), 4 * v18);
              v27 = *__dst;
              v28 = v41 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v49 << 16)) << 32);
              v20 = v45;

              v41 = v28;
            }

            else
            {
              v22 = sub_22F73F1A0();
              v23 = *(v22 + 48);
              v24 = *(v22 + 52);
              swift_allocObject();

              v25 = sub_22F73F160();
              v26 = v25;
              if (v21 >= 0x7FFFFFFF)
              {
                sub_22F73F4A0();
                v27 = swift_allocObject();
                *(v27 + 16) = 0;
                *(v27 + 24) = v21;
                v28 = v26 | 0x8000000000000000;
              }

              else
              {
                v27 = v18 << 34;
                v28 = v25 | 0x4000000000000000;
              }

              v20 = v45;
            }
          }

          else
          {
            v29 = v19[1];

            v27 = 0;
            v28 = 0xC000000000000000;
          }

          v5 = v44;
          *(v43 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          v30 = (v44[6] + 16 * v16);
          *v30 = v47;
          v30[1] = v20;
          v31 = (v44[7] + 16 * v16);
          *v31 = v27;
          v31[1] = v28;
          v32 = v44[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (!v33)
          {
            v44[2] = v34;
            v4 = v42;
            v9 = v46;
            if (!v46)
            {
              goto LABEL_5;
            }

LABEL_4:
            v12 = __clz(__rbit64(v9));
            v13 = (v9 - 1) & v9;
            continue;
          }

LABEL_25:
          __break(1u);
        }

        break;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1488, &qword_22F7719F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F771340;
  *(inited + 32) = v40;
  v36 = inited + 32;
  *(inited + 40) = v39;
  *(inited + 48) = v5;
  sub_22F14E704(inited);
  swift_setDeallocating();
  sub_22F15C8B4(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1458, &qword_22F7719D8);
  sub_22F15C91C(&qword_27DAB1498, sub_22F15C9A0);
  sub_22F740CF0();

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22F15B898(unint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      v2 = 4 * a2;
      if (4 * a2)
      {
        if (v2 <= 14)
        {
          return sub_22F15CC88(result, (v2 + result));
        }

        else
        {
          v4 = sub_22F73F1A0();
          v5 = *(v4 + 48);
          v6 = *(v4 + 52);
          swift_allocObject();
          sub_22F73F160();
          if (v2 >= 0x7FFFFFFF)
          {
            sub_22F73F4A0();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v2;
          }

          else
          {
            return a2 << 34;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static CachedEventFeatures.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  return sub_22F15B9E0(v2, v3);
}

uint64_t sub_22F15B9E0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_22F1229E8(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = 32;
      while (v21)
      {
        if (*(v20 + v23) != *(v16 + v23))
        {
          goto LABEL_26;
        }

        v23 += 4;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_29;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22F15BB70(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22F1229E8(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_22F742040();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F15BD14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v52 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v50 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14A8, &qword_22F771AC8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v11);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v48 = &v46 - v13;
  v49 = v14;
  v15 = 0;
  v46 = a2;
  v47 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v53 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
    v24 = v49;
LABEL_16:
    v29 = v47;
    v30 = v50;
    sub_22F15CAA0(*(v47 + 48) + *(v51 + 72) * v23, v50);
    v31 = *(*(v29 + 56) + 4 * v23);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
    v33 = *(v32 + 48);
    sub_22F15CB04(v30, v24);
    *(v24 + v33) = v31;
    (*(*(v32 - 8) + 56))(v24, 0, 1, v32);
    a2 = v46;
LABEL_17:
    v34 = v48;
    sub_22F15CB68(v24, v48);
    v35 = v34;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 != 1)
    {
      v39 = *(v36 + 48);
      v40 = v52;
      sub_22F15CB04(v35, v52);
      v41 = *(v35 + v39);
      v42 = sub_22F122A14(v40);
      v44 = v43;
      result = sub_22F15CBD8(v40);
      if (v44)
      {
        v21 = v53;
        if (*(*(a2 + 56) + 4 * v42) == v41)
        {
          continue;
        }
      }
    }

    return v38;
  }

  if (v22 <= v15 + 1)
  {
    v25 = v15 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  v24 = v49;
  while (1)
  {
    v27 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
      (*(*(v45 - 8) + 56))(v24, 1, 1, v45);
      v53 = 0;
      v15 = v26;
      goto LABEL_17;
    }

    v28 = *(v17 + 8 * v27);
    ++v15;
    if (v28)
    {
      v53 = (v28 - 1) & v28;
      v23 = __clz(__rbit64(v28)) | (v27 << 6);
      v15 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_22F15C0E8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_22F1229E8(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_22F741810();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F15C298(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  return sub_22F15B9E0(v2, v3);
}

uint64_t sub_22F15C30C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22F15C370()
{
  result = qword_27DAB1468;
  if (!qword_27DAB1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1468);
  }

  return result;
}

uint64_t sub_22F15C3C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22F15C418()
{
  result = qword_27DAB1478;
  if (!qword_27DAB1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1478);
  }

  return result;
}

void sub_22F15C46C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2319015D0](a1, a2, v7);
      sub_22F120634(0, &unk_27DAB0680, 0x277D22C10);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22F120634(0, &unk_27DAB0680, 0x277D22C10);
    if (sub_22F7419E0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22F7419F0();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_22F741800();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_22F741810();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

void *sub_22F15C690(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 8 * a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_22F15C724(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_22F741CF0();
      sub_22F120634(0, &qword_27DAB14B0, 0x277CD9968);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_22F741CC0() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_22F741CD0();
  sub_22F120634(0, &qword_27DAB0590, off_27887B2F8);
  swift_dynamicCast();
  v5 = sub_22F123978(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

uint64_t sub_22F15C8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1490, &qword_22F7719F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F15C91C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1458, &qword_22F7719D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F15C9A0()
{
  result = qword_27DAB14A0;
  if (!qword_27DAB14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB14A0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22F15CA08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22F15CA50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F15CAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F15CB04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F15CB68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14A8, &qword_22F771AC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F15CBD8(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F15CC34(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_22F15CC88(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_22F175D0C(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F15CD48()
{
  sub_22F742170();
  MEMORY[0x231901D70](*v0);
  return sub_22F7421D0();
}

uint64_t sub_22F15CDB8()
{
  sub_22F742170();
  MEMORY[0x231901D70](*v0);
  return sub_22F7421D0();
}

unint64_t sub_22F15CDFC()
{
  result = qword_27DAB14B8;
  if (!qword_27DAB14B8)
  {
    type metadata accessor for PublicEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB14B8);
  }

  return result;
}

uint64_t type metadata accessor for PublicEvent()
{
  result = qword_27DAB14C8;
  if (!qword_27DAB14C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F15CEA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14C0, &qword_22F77C6C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F771AD0;
  v1 = *MEMORY[0x277D0EA40];
  v2 = *MEMORY[0x277D0EA58];
  *(v0 + 32) = *MEMORY[0x277D0EA40];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277D0EA50];
  v4 = *MEMORY[0x277D0EA48];
  *(v0 + 48) = *MEMORY[0x277D0EA50];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277D0EA38];
  v6 = *MEMORY[0x277D0EA20];
  *(v0 + 64) = *MEMORY[0x277D0EA38];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277D0EA08];
  v8 = *MEMORY[0x277D0EA00];
  *(v0 + 80) = *MEMORY[0x277D0EA08];
  *(v0 + 88) = v8;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return v0;
}

void sub_22F15CFC0()
{
  sub_22F73F090();
  if (v0 <= 0x3F)
  {
    sub_22F15D0BC(319, &qword_27DAB14D8);
    if (v1 <= 0x3F)
    {
      sub_22F15D0BC(319, &qword_27DAB14E0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLLocationCoordinate2D(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22F15D0BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22F741280();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t MusicForYouError.hashValue.getter()
{
  sub_22F742170();
  MEMORY[0x231901D30](0);
  return sub_22F7421D0();
}

uint64_t sub_22F15D184()
{
  sub_22F742170();
  MEMORY[0x231901D30](0);
  return sub_22F7421D0();
}

uint64_t sub_22F15D1C8()
{
  sub_22F742170();
  MEMORY[0x231901D30](0);
  return sub_22F7421D0();
}

uint64_t sub_22F15D3D0(uint64_t a1)
{
  if (qword_2810A9B58 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("Favorites Music Elector", 23, 2u, 0, 1, qword_2810B4E48, v10);
  v3 = *(a1 + OBJC_IVAR___PGMusicCuratorContext_cache);
  v8[0] = 0;
  v8[1] = 0;
  v9 = 1;
  v4 = MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(&unk_2843D85A8, v8);
  if (v1)
  {
  }

  else
  {
    v6 = v4;

    sub_22F1B2BBC(0);
    v7 = sub_22F151734(v6);

    return v7;
  }
}

uint64_t sub_22F15D570(uint64_t a1, uint64_t a2, uint64_t *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  swift_beginAccess();
  if (*(a1 + v11) != 1)
  {
    return MEMORY[0x277D84FA0];
  }

  if (qword_2810A9B58 != -1)
  {
    swift_once();
  }

  sub_22F1B560C(a4, a5, 2u, 0, 1, qword_2810B4E48, v19);
  v12 = *(a1 + OBJC_IVAR___PGMusicCuratorContext_cache);
  v17[0] = 0;
  v17[1] = 0;
  v18 = 1;
  v13 = MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(a6, v17);
  if (v6)
  {
  }

  else
  {
    v15 = v13;

    sub_22F1B2BBC(0);
    v16 = sub_22F151734(v15);

    return v16;
  }
}

unint64_t sub_22F15D6E8()
{
  result = qword_27DAB14E8;
  if (!qword_27DAB14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB14E8);
  }

  return result;
}

uint64_t sub_22F15D784()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22F15D7F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  *(v4 + 16) = *(*a2 + 32);
  *(v4 + 24) = v3;
}

void sub_22F15D844()
{
  v9 = MEMORY[0x277D84F90];
  sub_22F1465FC(0, 23, 0);
  v0 = 0;
  v1 = v9;
  do
  {
    v2 = byte_2843D8638[v0 + 32];
    v3 = sub_22F740EA0();
    v5 = v4;

    v9 = v1;
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_22F1465FC((v6 > 1), v7 + 1, 1);
      v1 = v9;
    }

    ++v0;
    *(v1 + 16) = v7 + 1;
    v8 = v1 + 24 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    *(v8 + 48) = v2;
  }

  while (v0 != 23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B70, &qword_22F770CE8);
  v9 = sub_22F741DF0();
  sub_22F15E58C(v1, 1, &v9);
  off_27DAB14F0 = v9;
}

unint64_t EventLabel.rawValue.getter()
{
  result = 0x6E656D6573756D61;
  switch(*v0)
  {
    case 1:
      result = 0x73726576696E6E61;
      break;
    case 2:
      result = 0x676E696863616562;
      break;
    case 3:
      result = 0x7961646874726962;
      break;
    case 4:
      result = 0x7361666B61657262;
      break;
    case 5:
      result = 0x74617262656C6563;
      break;
    case 6:
      result = 0x676E69626D696C63;
      break;
    case 7:
      result = 0x747265636E6F63;
      break;
    case 8:
      result = 0x65636E6164;
      break;
    case 9:
      result = 0x72656E6E6964;
      break;
    case 0xA:
      result = 0x676E69766964;
      break;
    case 0xB:
      result = 0x6961747265746E65;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0x6E69726568746167;
      break;
    case 0xE:
      result = 0x676E696B6968;
      break;
    case 0xF:
      result = 0x68636E756CLL;
      break;
    case 0x10:
      result = 0x6D756573756DLL;
      break;
    case 0x11:
      result = 0x74754F746867696ELL;
      break;
    case 0x12:
      result = 0x616D726F66726570;
      break;
    case 0x13:
      result = 0x65764574726F7073;
      break;
    case 0x14:
      result = 0x72657461656874;
      break;
    case 0x15:
      result = 0x676E6964646577;
      break;
    case 0x16:
      result = 0x70537265746E6977;
      break;
    default:
      return result;
  }

  return result;
}

Swift::String __swiftcall EventLabel.toGraphNodeLabel()()
{
  v1 = *off_27887E2A8[*v0];
  v2 = sub_22F740E20();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

PhotosGraph::EventLabel_optional __swiftcall EventLabel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F742080();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22F15DFF8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = EventLabel.rawValue.getter();
  v4 = v3;
  if (v2 == EventLabel.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22F742040();
  }

  return v7 & 1;
}

unint64_t sub_22F15E098()
{
  result = qword_27DAB14F8;
  if (!qword_27DAB14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB14F8);
  }

  return result;
}

uint64_t sub_22F15E0EC()
{
  v1 = *v0;
  sub_22F742170();
  EventLabel.rawValue.getter();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F15E154()
{
  v2 = *v0;
  EventLabel.rawValue.getter();
  sub_22F740D60();
}

uint64_t sub_22F15E1B8()
{
  v1 = *v0;
  sub_22F742170();
  EventLabel.rawValue.getter();
  sub_22F740D60();

  return sub_22F7421D0();
}

unint64_t sub_22F15E228@<X0>(unint64_t *a1@<X8>)
{
  result = EventLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22F15E254()
{
  result = qword_27DAB1500;
  if (!qword_27DAB1500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1508, &qword_22F771DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1500);
  }

  return result;
}

uint64_t sub_22F15E318(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F15E538();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_22F15E36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22F15E538();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t getEnumTagSinglePayload for EventLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F15E538()
{
  result = qword_27DAB1510;
  if (!qword_27DAB1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1510);
  }

  return result;
}

void sub_22F15E58C(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  LOBYTE(v6) = *(a1 + 48);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_22F1229E8(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_22F1256F0(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_22F1229E8(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_22F7420C0();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_22F13419C();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + v10) = v6;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_22F741B00();
    MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78EFE0);
    sub_22F741C50();
    MEMORY[0x231900B10](39, 0xE100000000000000);
    sub_22F741D40();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 72);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v26 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      if (!v7)
      {
        goto LABEL_23;
      }

      v27 = *a3;
      v28 = sub_22F1229E8(v8, v7);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_22F1256F0(v32, 1);
        v33 = *a3;
        v28 = sub_22F1229E8(v8, v7);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v8;
      v36[1] = v7;
      *(v35[7] + v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v6;
      v35[2] = v38;
      v5 += 24;
      if (v39 == v6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_22F15E910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22F742170();
  sub_22F740D60();
  v7 = sub_22F7421D0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_22F15EA08(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_22F742170();
  MEMORY[0x231901D30](a1);
  v5 = sub_22F7421D0();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_22F15EAD4(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), sub_22F742170(), sub_22F740D60(), , v5 = sub_22F7421D0(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(a2 + 48) + v7);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v10 = 0x6557664F74726170;
          v11 = 0xEA00000000006B65;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 0x616559664F796164;
          }

          else
          {
            v10 = 0x6144664F74726170;
          }

          if (v9 == 4)
          {
            v11 = 0xE900000000000072;
          }

          else
          {
            v11 = 0xE900000000000079;
          }
        }
      }

      else if (*(*(a2 + 48) + v7))
      {
        if (v9 == 1)
        {
          v10 = 0x6E6F73616573;
        }

        else
        {
          v10 = 0x59664F6567646577;
        }

        if (v9 == 1)
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xEB00000000726165;
        }
      }

      else
      {
        v11 = 0xE400000000000000;
        v10 = 1918985593;
      }

      v12 = 0xE900000000000079;
      v13 = 0x616559664F796164;
      if (a1 == 4)
      {
        v12 = 0xE900000000000072;
      }

      else
      {
        v13 = 0x6144664F74726170;
      }

      if (a1 == 3)
      {
        v13 = 0x6557664F74726170;
        v12 = 0xEA00000000006B65;
      }

      v14 = 0x59664F6567646577;
      if (a1 == 1)
      {
        v14 = 0x6E6F73616573;
      }

      v15 = 0xEB00000000726165;
      if (a1 == 1)
      {
        v15 = 0xE600000000000000;
      }

      if (!a1)
      {
        v14 = 1918985593;
        v15 = 0xE400000000000000;
      }

      v16 = a1 <= 2u ? v14 : v13;
      v17 = a1 <= 2u ? v15 : v12;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_22F742040();

      if ((v18 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v18 & 1;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_22F15EE1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F15EE84()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F15EECC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_22F15EF84()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F15EFC8(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22F15F078(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F15F0E0()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F15F128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t sub_22F15F1E0(uint64_t *a1)
{
  v2 = v1;
  v46[1] = *v1;
  v4 = sub_22F740460();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v46 - v9;
  v11 = sub_22F740560();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  v50 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_logger;
  sub_22F740B80();
  *(v1 + OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup) = 0;
  *(v1 + OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults) = 0;
  v46[0] = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults;
  *(v1 + OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults) = MEMORY[0x277D84F90];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 24))(v16, v17);
  v19 = [v18 librarySpecificFetchOptions];
  (*(v12 + 104))(v15, *MEMORY[0x277D3C570], v11);
  v20 = sub_22F740570();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = v18;
  v54 = v19;
  v24 = sub_22F740550();
  sub_22F740230();
  v25 = sub_22F740220();
  v55 = v23;
  v26 = [v23 librarySpecificFetchOptions];
  [v26 setFetchLimit_];
  result = [v25 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v28 = result;
    v51 = v24;
    v52 = v26;
    v53 = v2;
    if (result)
    {
      v29 = 0;
      while (1)
      {
        v30 = [v25 objectAtIndexedSubscript_];
        v31 = a1[3];
        v32 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v31);
        v33 = sub_22F73F690();
        (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
        LOBYTE(v31) = CurationPlannerContext.isValidSocialGroupForElection(_:after:)(v30, v10, v31, v32);
        sub_22F15FCF0(v10);
        if (v31)
        {
          break;
        }

        ++v29;

        if (v28 == v29)
        {
          goto LABEL_6;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F771EB0;
      *(inited + 32) = v30;
      v40 = v47;
      v39 = v48;
      v41 = v49;
      (*(v48 + 104))(v47, *MEMORY[0x277D3C438], v49);
      v42 = v30;
      v43 = static CollectionTrigger.generateTriggerResults(from:type:)(inited, v40);

      (*(v39 + 8))(v40, v41);
      v34 = v53;
      v44 = v46[0];
      swift_beginAccess();
      v45 = *(v34 + v44);
      *(v34 + v44) = v43;
    }

    else
    {
LABEL_6:
      v34 = v53;
      v35 = sub_22F740B70();
      v36 = sub_22F7415C0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_22F0FC000, v35, v36, "No social groups were found with at least 1 exclusive asset. No social groups will be elected", v37, 2u);
        MEMORY[0x2319033A0](v37, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v34;
  }

  return result;
}

uint64_t CurationPlannerContext.isValidSocialGroupForElection(_:after:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v53 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - v11;
  v13 = sub_22F73F690();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a4 + 24);
  v54 = a3;
  v52 = v19;
  v20 = (v19)(a3, a4, v16);
  v21 = [v20 librarySpecificFetchOptions];

  [v21 setFetchLimit_];
  sub_22F12057C(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22F15FCF0(v12);
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_22F770DF0;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_22F153470();
    strcpy((v22 + 32), "creationDate");
    *(v22 + 45) = 0;
    *(v22 + 46) = -5120;
    v23 = sub_22F73F5B0();
    *(v22 + 96) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
    *(v22 + 104) = sub_22F15FD58();
    *(v22 + 72) = v23;
    v24 = sub_22F741560();
    [v21 setPredicate_];

    (*(v14 + 8))(v18, v13);
  }

  v25 = objc_opt_self();
  v26 = v53;
  v27 = [v25 fetchExclusiveAssetsForSocialGroup:v53 options:v21];
  if (!v27)
  {
    v47 = 0;
LABEL_27:

    return v47;
  }

  v28 = v27;
  if ([v27 count] < 1)
  {
    v47 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v29 = v52(v54, a4);
  v30 = [v29 librarySpecificFetchOptions];

  v53 = [objc_opt_self() fetchPersonsInSocialGroup:v26 option:v30];
  result = [v53 count];
  if ((result & 0x8000000000000000) == 0)
  {
    v48 = v30;
    v49 = v28;
    v50 = v21;
    if (result)
    {
      v32 = 0;
      v51 = result;
      v52 = (a4 + 32);
      do
      {
        v33 = [v53 objectAtIndexedSubscript_];
        v34 = v5;
        v35 = (*(a4 + 32))(v54, a4);
        result = [v33 uuid];
        if (!result)
        {
          goto LABEL_29;
        }

        v36 = result;
        v37 = sub_22F740E20();
        v39 = v38;

        if (*(v35 + 16))
        {
          v40 = *(v35 + 40);
          sub_22F742170();
          sub_22F740D60();
          v41 = sub_22F7421D0();
          v42 = -1 << *(v35 + 32);
          v43 = v41 & ~v42;
          if ((*(v35 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
          {
            v44 = ~v42;
            while (1)
            {
              v45 = (*(v35 + 48) + 16 * v43);
              v46 = *v45 == v37 && v45[1] == v39;
              if (v46 || (sub_22F742040() & 1) != 0)
              {
                break;
              }

              v43 = (v43 + 1) & v44;
              if (((*(v35 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
              {
                goto LABEL_9;
              }
            }

            v47 = 0;
            v21 = v53;
            v28 = v49;
            goto LABEL_25;
          }
        }

LABEL_9:
        ++v32;

        v5 = v34;
      }

      while (v32 != v51);
    }

    v47 = 1;
    v33 = v53;
    v28 = v48;
    v21 = v50;
LABEL_25:

    goto LABEL_26;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22F15FCF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F15FD58()
{
  result = qword_2810A8EF8;
  if (!qword_2810A8EF8)
  {
    sub_22F120634(255, &qword_2810A8F00, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A8EF8);
  }

  return result;
}

uint64_t FallbackSocialGroups.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults);

  return v0;
}

uint64_t FallbackSocialGroups.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F15FEFC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_22F15FF48()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F15FF90()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t type metadata accessor for FallbackSocialGroups()
{
  result = qword_2810AAA78;
  if (!qword_2810AAA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F160030()
{
  result = sub_22F740B90();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

float sub_22F160338(void *a1, uint64_t a2, uint64_t a3, float (*a4)(uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = [a1 keywords];
  v8 = sub_22F741420();

  v9 = a4(v8, v6);

  return v9;
}

float sub_22F1603C8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 tagIDs];
  v6 = sub_22F741420();

  sub_22F160B5C(v6, a2, a3);
  v8 = v7;

  return v8;
}

uint64_t sub_22F160454(uint64_t a1, uint64_t a2)
{
  result = sub_22F15E910(0x6169636570534D5FLL, 0xE90000000000006CLL, a1);
  if ((result & 1) == 0)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 0;
      v21 = a2 + 32;
      v7 = 1.0;
      v8 = 0.0;
LABEL_5:
      v9 = 0;
      v10 = (v21 + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      ++v6;
      v13 = 1 << *(a1 + 32);
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v15 = v14 & *(a1 + 56);
      v16 = (v13 + 63) >> 6;
      while (v15)
      {
LABEL_14:
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v19 = (*(a1 + 48) + ((v9 << 10) | (16 * v18)));
        if (v11 != *v19 || v12 != v19[1])
        {
          result = sub_22F742040();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v8 = v7 + v8;
      }

      while (1)
      {
        v17 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v17 >= v16)
        {
          v7 = v7 * 0.9;
          if (v6 == v5)
          {
            return result;
          }

          goto LABEL_5;
        }

        v15 = *(a1 + 56 + 8 * v17);
        ++v9;
        if (v15)
        {
          v9 = v17;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F1605C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v6)))));
      v6 &= v6 - 1;
      v27 = *v12;
      v29 = v12[1];
      sub_22F160DE4();
      result = sub_22F741910();
      v9 |= result;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  if (v9)
  {
    v24 = *(a2 + 16);
    if (v24)
    {
      v13 = 0;
      v26 = a2 + 32;
LABEL_15:
      v14 = (v26 + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      ++v13;
      v17 = 1 << *(a1 + 32);
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v19 = v18 & *(a1 + 56);
      v20 = (v17 + 63) >> 6;

      v21 = 0;
      do
      {
        if (!v19)
        {
          while (1)
          {
            v22 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v22 >= v20)
            {
              break;
            }

            v19 = *(v3 + 8 * v22);
            ++v21;
            if (v19)
            {
              v21 = v22;
              goto LABEL_25;
            }
          }

          if (v13 == v24)
          {
            return result;
          }

          goto LABEL_15;
        }

        v22 = v21;
LABEL_25:
        v23 = (*(a1 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v19)))));
        v19 &= v19 - 1;
        v28 = *v23;
        v30 = v23[1];
        sub_22F160DE4();
        result = sub_22F741910();
      }

      while ((result & 1) == 0);
    }
  }

  return result;
}

void sub_22F16083C(void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  v39 = *MEMORY[0x277D0A980];

  v7 = 0;
  v8 = 0.0;
  v32 = v6;
  v33 = v2;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
LABEL_9:
      while (2)
      {
        v10 = __clz(__rbit64(v5)) | (v7 << 6);
        v11 = (*(a2 + 48) + 16 * v10);
        v31 = *v11;
        v12 = *(*(a2 + 56) + 8 * v10);
        v37 = (v5 - 1) & v5;
        v38 = v11[1];

        v36 = v12;
        v13 = [a1 tagIDs];
        v14 = sub_22F741420();

        v15 = v14 + 56;
        v16 = 1 << *(v14 + 32);
        if (v16 < 64)
        {
          v17 = ~(-1 << v16);
        }

        else
        {
          v17 = -1;
        }

        v18 = v17 & *(v14 + 56);
        v19 = (v16 + 63) >> 6;
        v40 = v14;

        v20 = 0;
        v21 = 1.0;
        while (1)
        {
          while (1)
          {
            v22 = v20;
            if (!v18)
            {
              while (1)
              {
                v20 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  break;
                }

                if (v20 >= v19)
                {

                  goto LABEL_26;
                }

                v18 = *(v15 + 8 * v20);
                ++v22;
                if (v18)
                {
                  goto LABEL_17;
                }
              }

              __break(1u);
              goto LABEL_33;
            }

LABEL_17:
            v23 = (*(v40 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v18)))));
            v24 = *v23;
            v25 = v23[1];
            v18 &= v18 - 1;
            sub_22F740E20();
            sub_22F160DE4();

            v26 = sub_22F741910();

            if (v26)
            {
              break;
            }
          }

          if (v24 == v31 && v25 == v38)
          {
            break;
          }

          v28 = sub_22F742040();

          v21 = 0.0;
          if (v28)
          {

            v21 = 2.0;
            goto LABEL_26;
          }
        }

        v21 = 2.0;
LABEL_26:

        [v36 floatValue];
        v30 = v29;

        if (v8 <= (v21 * v30))
        {
          v8 = v21 * v30;
        }

        v6 = v32;
        v2 = v33;
        v5 = v37;
        if (v37)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_22F160B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v20 = *MEMORY[0x277D0A978];

  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v14 = *v12;
    v13 = v12[1];
    v7 &= v7 - 1;
    sub_22F740E20();
    sub_22F160DE4();

    v15 = sub_22F741910();

    if (v15)
    {
      if (v14 == a2 && v13 == a3)
      {
      }

      v17 = sub_22F742040();

      if (v17)
      {
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

float sub_22F160D08()
{
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v0 = sub_22F740B90();
  __swift_project_value_buffer(v0, qword_2810B4D90);
  v1 = sub_22F740B70();
  v2 = sub_22F7415E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22F0FC000, v1, v2, "Don't expect to be using MoodKeywordScoreComputer", v3, 2u);
    MEMORY[0x2319033A0](v3, -1, -1);
  }

  return 1.0;
}

unint64_t sub_22F160DE4()
{
  result = qword_2810A93D0;
  if (!qword_2810A93D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A93D0);
  }

  return result;
}

uint64_t sub_22F160E38(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0F58, &qword_22F771310);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_22F146578(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_22F13BA9C(v13, v5, &qword_27DAB0F58, &qword_22F771310);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22F146578(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_22F1207AC(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_27DAB13A0, &unk_22F7718B0);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_22F161070(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_22F741BD0();
    v4 = *(sub_22F73F690() - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      sub_22F73F5B0();
      sub_22F741BA0();
      v7 = *(v8 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v5 += v6;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22F161170(unint64_t a1)
{
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v1 = sub_22F741D50();
  }

  else
  {
    v1 = a1;

    sub_22F742060();
  }

  return v1;
}

uint64_t sub_22F1611EC(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1318, &unk_22F772030);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_22F14683C(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_22F13BA9C(v13, v5, &unk_27DAB0710, &qword_22F772040);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22F14683C(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_22F1207AC(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_27DAB1318, &unk_22F772030);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_22F161424(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1318, &unk_22F772030);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1308, &qword_22F7789B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_22F1467FC(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_22F13BA9C(v13, v5, &qword_27DAB1318, &unk_22F772030);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22F1467FC(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_22F1207AC(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_27DAB1308, &qword_22F7789B0);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

char *sub_22F16165C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22F741A00();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_22F146934(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x2319016F0](i, a1);
        sub_22F120634(0, &qword_2810A9100, 0x277CBE448);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_22F146934((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_22F107D08(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_22F120634(0, &qword_2810A9100, 0x277CBE448);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_22F146934((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_22F107D08(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_22F161858(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22F741A00();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_22F1469EC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2319016F0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_22F1469EC((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
        v16 = &protocol witness table for PHAssetCollection;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_22F100260(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_22F1469EC((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
        v16 = &protocol witness table for PHAssetCollection;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_22F100260(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_22F161A80(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_22F741A00();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v22 = MEMORY[0x277D84F90];
  result = sub_22F14667C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x2319016F0](v11, a1);
        v22 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_22F14667C((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_22F1626B8(a3, a4);
        *&v19 = v12;
        *(v9 + 16) = v14 + 1;
        sub_22F100260(&v19, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v22 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);

        if (v18 >= v17 >> 1)
        {
          sub_22F14667C((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_22F1626B8(a3, a4);
        *&v19 = v16;
        *(v9 + 16) = v18 + 1;
        sub_22F100260(&v19, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F161C68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_22F146B10(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 48);
    do
    {
      v10 = *(v4 - 2);
      v11 = *(v4 - 1);
      v12 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1520, &unk_22F772020);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB11E0, &unk_22F771610);
      swift_dynamicCast();
      v5 = v14;
      v7 = *(v15 + 16);
      v6 = *(v15 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_22F146B10((v6 > 1), v7 + 1, 1);
        v5 = v14;
      }

      *(v15 + 16) = v7 + 1;
      v8 = v15 + 24 * v7;
      *(v8 + 32) = v13;
      *(v8 + 40) = v5;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22F161DB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22F146B94(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D837D0];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_22F146B94((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_22F153470();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_22F100260(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22F161EB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_22F146934(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22F146934((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_22F107D08(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22F161FB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_22F146934(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_22F146934((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_22F107D08(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22F1620AC(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0D28, &unk_22F772010);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1018, &qword_22F771448);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_22F146EC4(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_22F13BA9C(v13, v5, &qword_27DAB0D28, &unk_22F772010);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22F146EC4(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_22F1207AC(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_27DAB1018, &qword_22F771448);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t PhotosGraphMomentsProducer.init(momentNodes:features:photoLibrary:graph:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t PhotosGraphMomentsProducer.clusters(progressReporter:)()
{
  v2 = *v0;
  v3 = v0[2];
  static MomentGraphFeature.extractors(for:with:in:)(v0[1], *v0, v0[3], &v24);
  if (v1)
  {
    return v0;
  }

  v23 = v24;
  v21 = v3;
  v22 = *(&v24 + 1);
  v4 = v25;
  v5 = v26;
  v6 = [v2 array];
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v7 = sub_22F741180();

  if (v7 >> 62)
  {
    goto LABEL_15;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_16:

    v17 = MEMORY[0x277D84F90];
LABEL_17:
    sub_22F7416A0();
    v0 = sub_22F161A80(v17, type metadata accessor for MomentGraphCluster, &qword_27DAB1530, type metadata accessor for MomentGraphCluster);

    return v0;
  }

  while (1)
  {
    v27 = MEMORY[0x277D84F90];
    result = sub_22F741BD0();
    if (v8 < 0)
    {
      break;
    }

    v10 = 0;
    v19 = v8;
    v20 = v7 & 0xC000000000000001;
    v18 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v20)
      {
        v12 = MEMORY[0x2319016F0](v10, v7);
      }

      else
      {
        if (v10 >= *(v18 + 16))
        {
          goto LABEL_14;
        }

        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      *&v24 = v23;
      *(&v24 + 1) = v22;
      v25 = v4;
      v26 = v5;
      v14 = v21;

      sub_22F3F70A0(v13, v14, &v24);
      sub_22F741BA0();
      v15 = v7;
      v16 = *(v27 + 16);
      sub_22F741BE0();
      v7 = v15;
      sub_22F741BF0();
      sub_22F741BB0();
      ++v10;
      if (v11 == v19)
      {

        v17 = v27;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v8 = sub_22F741A00();
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F162620(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F162668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F1626B8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_22F162764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicCacheInfoEntry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F162798()
{
  v0 = *aInfo_1;

  return v0;
}

BOOL _s11PhotosGraph14MusicCacheInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  memcpy(__dst, a1 + 2, sizeof(__dst));
  v6 = *a2;
  v7 = a2[1];
  memcpy(v21, a2 + 2, sizeof(v21));
  v8 = v4 == v6 && v5 == v7;
  if (v8 || (v9 = sub_22F742040(), result = 0, (v9 & 1) != 0))
  {
    memcpy(__src, a1 + 2, 0x120uLL);
    memcpy(&__src[288], a2 + 2, 0x120uLL);
    memcpy(v19, a1 + 2, sizeof(v19));
    if (sub_22F162DEC(v19) == 1)
    {
      memcpy(v16, a2 + 2, 0x120uLL);
      if (sub_22F162DEC(v16) == 1)
      {
        memcpy(v17, a1 + 2, sizeof(v17));
        sub_22F162E58(__dst, v15);
        sub_22F162E58(v21, v15);
        sub_22F120ADC(v17, &qword_27DAB1548, &qword_22F7720F8);
        return 1;
      }

      sub_22F162E58(__dst, v17);
      sub_22F162E58(v21, v17);
    }

    else
    {
      memcpy(v17, a1 + 2, sizeof(v17));
      memcpy(v15, a1 + 2, sizeof(v15));
      memcpy(v16, a2 + 2, 0x120uLL);
      if (sub_22F162DEC(v16) != 1)
      {
        memcpy(v14, a2 + 2, sizeof(v14));
        sub_22F162E58(__dst, v13);
        sub_22F162E58(v21, v13);
        sub_22F162E58(v17, v13);
        v11 = _s11PhotosGraph16MusicBagContentsV2eeoiySbAC_ACtFZ_0(v15, v14);
        memcpy(v12, v14, sizeof(v12));
        sub_22F162EC8(v12);
        memcpy(v13, v15, sizeof(v13));
        sub_22F162EC8(v13);
        memcpy(v14, a1 + 2, sizeof(v14));
        sub_22F120ADC(v14, &qword_27DAB1548, &qword_22F7720F8);
        return (v11 & 1) != 0;
      }

      memcpy(v14, a1 + 2, sizeof(v14));
      sub_22F162E58(__dst, v13);
      sub_22F162E58(v21, v13);
      sub_22F162E58(v17, v13);
      sub_22F162EC8(v14);
    }

    memcpy(v16, __src, sizeof(v16));
    sub_22F120ADC(v16, &qword_27DAB1550, &unk_22F772100);
    return 0;
  }

  return result;
}

uint64_t sub_22F162A88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
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

uint64_t sub_22F162AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_22F162B94(id a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  memcpy(__dst, a2 + 2, sizeof(__dst));
  v6 = objc_opt_self();

  v7 = sub_22F740DF0();

  v8 = [v6 entityForName:v7 inManagedObjectContext:a1];

  if (v8)
  {
    a1 = [objc_allocWithZone(type metadata accessor for MusicCacheInfoEntry()) initWithEntity:v8 insertIntoManagedObjectContext:a1];

    v9 = sub_22F740DF0();
    [a1 setVersion_];

    memcpy(__src, __dst, sizeof(__src));
    if (sub_22F162DEC(__src) != 1)
    {
      v10 = sub_22F73F350();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      sub_22F73F340();
      memcpy(v19, __src, sizeof(v19));
      sub_22F162E04();
      v13 = sub_22F73F330();
      if (v2)
      {
      }

      else
      {
        v16 = v13;
        v17 = v14;

        v18 = sub_22F73F4F0();
        sub_22F133BF0(v16, v17);
        [a1 setMusicBagContentsAsData_];
      }
    }
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_22F162D98()
{
  result = qword_27DAB1E00;
  if (!qword_27DAB1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1E00);
  }

  return result;
}

uint64_t sub_22F162DEC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22F162E04()
{
  result = qword_2810AB5C8;
  if (!qword_2810AB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB5C8);
  }

  return result;
}

uint64_t sub_22F162E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1548, &qword_22F7720F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F163068(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_22F1630C8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_22F163114(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

double ImportantEntitiesTuningParameter.__allocating_init(withName:andParameter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a3 + 16);
  result = *(a3 + 40);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = *a3;
  *(v6 + 48) = v7;
  *(v6 + 56) = *(a3 + 24);
  *(v6 + 72) = result;
  return result;
}

uint64_t ImportantEntitiesTuningParameter.init(withName:andParameter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 40);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 48) = v4;
  *(v3 + 56) = *(a3 + 24);
  *(v3 + 72) = v5;
  return v3;
}

uint64_t ImportantEntitiesTuningParameter.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ImportantEntitiesTuningParameter.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22F1632A0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_22F1632F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t (*sub_22F163348())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t ImportantEntitiesTuningEvent.__allocating_init(withGraph:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ImportantEntitiesTuningEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *ImportantEntitiesTuningResult.__allocating_init(inferredImportantEntitiesLocalIdentifiers:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *ImportantEntitiesTuningResult.init(inferredImportantEntitiesLocalIdentifiers:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *ImportantEntitiesTuningResult.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t ImportantEntitiesTuningResult.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t ImportantEntitiesTuningMetrics.algorithmName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ImportantEntitiesTuningMetrics.parameterName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ImportantEntitiesTuningMetrics.precision.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t ImportantEntitiesTuningMetrics.recall.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t ImportantEntitiesTuningMetrics.__allocating_init(algorithmName:parameterName:truePositives:falsePositives:trueNegatives:falseNegatives:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 72) = a8;
  v17 = a5 + a6;
  if (__OFADD__(a5, a6))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v17 < 1)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = a5 / v17;
  }

  *(result + 80) = v18;
  *(result + 88) = v17 < 1;
  v19 = a5 + a8;
  if (__OFADD__(a5, a8))
  {
    goto LABEL_11;
  }

  if (v19 < 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = a5 / v19;
  }

  *(result + 96) = v20;
  *(result + 104) = v19 < 1;
  return result;
}

uint64_t ImportantEntitiesTuningMetrics.init(algorithmName:parameterName:truePositives:falsePositives:trueNegatives:falseNegatives:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = result;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  v9 = a5 + a6;
  if (__OFADD__(a5, a6))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v9 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a5 / v9;
  }

  *(v8 + 80) = v10;
  *(v8 + 88) = v9 < 1;
  v11 = a5 + a8;
  if (__OFADD__(a5, a8))
  {
    goto LABEL_11;
  }

  if (v11 < 1)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = a5 / v11;
  }

  *(v8 + 96) = v12;
  *(v8 + 104) = v11 < 1;
  return v8;
}

unint64_t sub_22F163710()
{
  v1 = v0;
  v2 = sub_22F14E718(MEMORY[0x277D84F90]);
  v3 = v1[2];
  v4 = v1[3];
  v5 = sub_22F740DF0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v5, 0x687469726F676C61, 0xEE00656D616E5F6DLL, isUniquelyReferenced_nonNull_native);
  v7 = v1[4];
  v8 = v1[5];
  v9 = sub_22F740DF0();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v9, 0x6574656D61726170, 0xEE00656D616E5F72, v10);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v11 = sub_22F7417F0();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v11, 0xD000000000000011, 0x800000022F78F120, v12);
  v13 = v1[6];
  v14 = sub_22F7417F0();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v14, 0x736F705F65757274, 0xEE00736576697469, v15);
  v16 = v1[7];
  v17 = sub_22F7417F0();
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v17, 0x6F705F65736C6166, 0xEF73657669746973, v18);
  v19 = v1[8];
  v20 = sub_22F7417F0();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v20, 0x67656E5F65757274, 0xEE00736576697461, v21);
  v22 = v1[9];
  v23 = sub_22F7417F0();
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v23, 0x656E5F65736C6166, 0xEF73657669746167, v24);
  return v2;
}

uint64_t ImportantEntitiesTuningEventFactory.__allocating_init(withGraph:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t ImportantEntitiesTuningEventFactory.init(withGraph:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_22F1639FC()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  *(v0 + 24) = 1;
  v2 = *(v0 + 16);
  type metadata accessor for ImportantEntitiesTuningEvent();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  return v3;
}

uint64_t ImportantEntitiesTuningEventFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F163A8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22F1639FC();
  *a1 = result;
  return result;
}

void *ImportantEntitiesTuningEvaluator.__allocating_init(algorithmName:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *ImportantEntitiesTuningEvaluator.init(algorithmName:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_22F163B1C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (!v2)
  {
    goto LABEL_51;
  }

  v7 = 0;
  v56 = v2;
  v57 = a1 & 0xC000000000000001;
  v54 = a1 & 0xFFFFFFFFFFFFFF8;
  v55 = a1;
  v53 = a1 + 32;
  do
  {
    if (v57)
    {
      a1 = MEMORY[0x2319016F0](v7, v55);
    }

    else
    {
      if (v7 >= *(v54 + 16))
      {
        goto LABEL_70;
      }

      v8 = *(v53 + 8 * v7);
    }

    v9 = __OFADD__(v7, 1);
    v10 = v7 + 1;
    if (v9)
    {
      goto LABEL_64;
    }

    v58 = v10;
    v59 = v3;
    v60 = v4;
    v61 = v5;
    v62 = v6;
    v11 = *(a1 + 16);
    v66 = *(a1 + 32);
    v67 = *(a1 + 24);
    v12 = v11 + 56;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 56);
    v16 = (v13 + 63) >> 6;

    v64 = v11;

    v63 = 0;
    v65 = 0;
    v17 = 0;
    if (v15)
    {
      while (2)
      {
        v18 = v17;
LABEL_21:
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v20 = (*(v64 + 48) + ((v18 << 10) | (16 * v19)));
        v22 = *v20;
        v21 = v20[1];
        if (*(v67 + 16))
        {
          v23 = *(v67 + 40);
          sub_22F742170();

          sub_22F740D60();
          v24 = sub_22F7421D0();
          v25 = -1 << *(v67 + 32);
          v26 = v24 & ~v25;
          if (((*(v67 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_30;
          }

          v27 = ~v25;
          while (1)
          {
            v28 = (*(v67 + 48) + 16 * v26);
            a1 = *v28;
            if (*v28 == v22 && v28[1] == v21)
            {
              break;
            }

            a1 = sub_22F742040();
            if (a1)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v67 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          if (__OFADD__(v65, 1))
          {
            goto LABEL_63;
          }

          ++v65;
          sub_22F164408(v22, v21);

          v17 = v18;
          if (v15)
          {
            continue;
          }
        }

        else
        {

LABEL_30:
          if (*(v66 + 16))
          {
            v30 = *(v66 + 40);
            sub_22F742170();
            sub_22F740D60();
            v31 = sub_22F7421D0();
            v32 = -1 << *(v66 + 32);
            v33 = v31 & ~v32;
            if ((*(v66 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
            {
              v34 = ~v32;
              while (1)
              {
                v35 = (*(v66 + 48) + 16 * v33);
                a1 = *v35;
                if (*v35 == v22 && v35[1] == v21)
                {
                  break;
                }

                a1 = sub_22F742040();
                if (a1)
                {
                  break;
                }

                v33 = (v33 + 1) & v34;
                if (((*(v66 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
                {
                  goto LABEL_15;
                }
              }

              if (__OFADD__(v63, 1))
              {
                goto LABEL_69;
              }

              ++v63;
              sub_22F164408(v22, v21);
            }
          }

LABEL_15:

          v17 = v18;
          if (v15)
          {
            continue;
          }
        }

        break;
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        v50 = a1;
        v2 = sub_22F741A00();
        a1 = v50;
        goto LABEL_3;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_21;
      }
    }

    v37 = *(v66 + 16);

    v38 = *(v67 + 16);

    v6 = v62 + v65;
    if (__OFADD__(v62, v65))
    {
      goto LABEL_65;
    }

    v5 = v61 + v63;
    if (__OFADD__(v61, v63))
    {
      goto LABEL_66;
    }

    v4 = v60 + v37;
    if (__OFADD__(v60, v37))
    {
      goto LABEL_67;
    }

    v3 = v59 + v38;
    if (__OFADD__(v59, v38))
    {
      goto LABEL_68;
    }

    v7 = v58;
  }

  while (v58 != v56);
LABEL_51:
  v39 = v52[2];
  v40 = v52[3];
  v42 = v52[4];
  v41 = v52[5];
  v43 = v5;
  v44 = type metadata accessor for ImportantEntitiesTuningMetrics();
  result = swift_allocObject();
  *(result + 16) = v39;
  *(result + 24) = v40;
  *(result + 32) = v42;
  *(result + 40) = v41;
  *(result + 48) = v6;
  *(result + 56) = v43;
  *(result + 64) = v4;
  *(result + 72) = v3;
  v46 = v6 + v43;
  if (__OFADD__(v6, v43))
  {
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  if (v46 < 1)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = v6 / v46;
  }

  *(result + 80) = v47;
  *(result + 88) = v46 < 1;
  v48 = v6 + v3;
  if (__OFADD__(v6, v3))
  {
    goto LABEL_73;
  }

  if (v48 < 1)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = v6 / v48;
  }

  *(result + 96) = v49;
  *(result + 104) = v48 < 1;
  a2[3] = v44;
  a2[4] = &protocol witness table for ImportantEntitiesTuningMetrics;
  *a2 = result;
}

uint64_t _s11PhotosGraph30ImportantEntitiesTuningMetricsCfd_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_22F164044()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t ImportantEntitiesTuningSubject.__allocating_init(withDetectionType:withGraph:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 40) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  return result;
}

uint64_t ImportantEntitiesTuningSubject.init(withDetectionType:withGraph:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return v4;
}

uint64_t sub_22F164124(void *a1)
{
  v1 = [a1 localIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22F740E20();
    v5 = v4;

    swift_beginAccess();
    sub_22F10BBDC(&v8, v3, v5);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FD8, qword_22F7723F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_22F771340;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 32) = 0xD000000000000067;
    *(v7 + 40) = 0x800000022F78F4A0;
    sub_22F742150();
  }
}

uint64_t sub_22F16424C(void *a1)
{
  v1 = [a1 localIdentifier];
  v2 = sub_22F740E20();
  v4 = v3;

  swift_beginAccess();
  sub_22F10BBDC(&v6, v2, v4);
  swift_endAccess();
}

unint64_t sub_22F1642DC()
{
  if (*(v0 + 40) == 1)
  {
    return 0xD00000000000002FLL;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

uint64_t ImportantEntitiesTuningSubject.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t ImportantEntitiesTuningSubject.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void *sub_22F164394@<X0>(_OWORD **a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_22F165D18(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22F1643C4()
{
  if (*(*v0 + 40) == 1)
  {
    return 0xD00000000000002FLL;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

uint64_t sub_22F164408(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22F742170();
  sub_22F740D60();
  v7 = sub_22F7421D0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22F1165C4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_22F165170(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_22F164544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v2;
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_22F742170();
  v12 = *a1;
  v13 = a1[1];
  sub_22F740D60();
  v14 = sub_22F7421D0();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v29 = v5;
    v30 = a2;
    v17 = ~v15;
    v28 = v6;
    v18 = *(v6 + 72);
    while (1)
    {
      sub_22F16630C(*(v10 + 48) + v18 * v16, v9, type metadata accessor for Song);
      if (*v9 == v12 && v9[1] == v13)
      {
        break;
      }

      v20 = sub_22F742040();
      sub_22F166374(v9, type metadata accessor for Song);
      if (v20)
      {
        goto LABEL_12;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v21 = 1;
        a2 = v30;
        goto LABEL_15;
      }
    }

    sub_22F166374(v9, type metadata accessor for Song);
LABEL_12:
    v22 = v31;
    v23 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v22;
    v32 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22F116928();
      v25 = v32;
    }

    a2 = v30;
    sub_22F1663D4(*(v25 + 48) + v18 * v16, v30, type metadata accessor for Song);
    sub_22F165334(v16);
    v21 = 0;
    *v22 = v32;
LABEL_15:
    v6 = v28;
    v5 = v29;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_22F1647B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v52 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  v11 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v13 = &v52 - v12;
  v69 = type metadata accessor for SongSource();
  v55 = *(v69 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x28223BE20](v69);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v2;
  v17 = *v2;
  v18 = *(*v2 + 40);
  sub_22F742170();
  v68 = a1;
  SongSource.hash(into:)();
  v19 = sub_22F7421D0();
  v20 = -1 << *(v17 + 32);
  v21 = v19 & ~v20;
  v67 = v17 + 56;
  if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return (*(v55 + 56))(v54, 1, 1, v69);
  }

  v65 = ~v20;
  v23 = *v68;
  v22 = v68[1];
  v61 = (v5 + 48);
  v56 = (v5 + 32);
  v60 = (v5 + 8);
  v66 = *(v55 + 72);
  v57 = v17;
  while (1)
  {
    v24 = *(v17 + 48);
    v64 = v66 * v21;
    sub_22F16630C(v24 + v66 * v21, v16, type metadata accessor for SongSource);
    v25 = *v16 == v23 && v16[1] == v22;
    if (!v25 && (sub_22F742040() & 1) == 0)
    {
      goto LABEL_5;
    }

    v26 = v22;
    v27 = v23;
    v28 = *(v69 + 28);
    v29 = *(v62 + 48);
    sub_22F12057C(v16 + v28, v13);
    sub_22F12057C(v68 + v28, &v13[v29]);
    v30 = *v61;
    if ((*v61)(v13, 1, v4) == 1)
    {
      v31 = v30(&v13[v29], 1, v4);
      v23 = v27;
      if (v31 != 1)
      {
        goto LABEL_4;
      }

      sub_22F120ADC(v13, &qword_27DAB0920, &qword_22F770B20);
      v22 = v26;
    }

    else
    {
      sub_22F12057C(v13, v63);
      if (v30(&v13[v29], 1, v4) == 1)
      {
        (*v60)(v63, v4);
        v23 = v27;
LABEL_4:
        sub_22F120ADC(v13, &unk_27DAB05B0, &unk_22F771430);
        v22 = v26;
LABEL_5:
        sub_22F166374(v16, type metadata accessor for SongSource);
        goto LABEL_6;
      }

      v32 = &v13[v29];
      v33 = v4;
      v34 = v63;
      v35 = v58;
      (*v56)(v58, v32, v33);
      sub_22F1662C8(&qword_2810AC700);
      v59 = sub_22F740DE0();
      v36 = *v60;
      v37 = v35;
      v4 = v33;
      (*v60)(v37, v33);
      v38 = v34;
      v17 = v57;
      v36(v38, v33);
      sub_22F120ADC(v13, &qword_27DAB0920, &qword_22F770B20);
      v23 = v27;
      v22 = v26;
      if ((v59 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v39 = *(v69 + 32);
    v40 = (v16 + v39);
    v41 = *(v16 + v39 + 8);
    v42 = (v68 + v39);
    v43 = v42[1];
    if (!v41)
    {
      if (!v43)
      {
        break;
      }

      goto LABEL_5;
    }

    if (!v43)
    {
      goto LABEL_5;
    }

    if (*v40 == *v42 && v41 == v43)
    {
      break;
    }

    v45 = sub_22F742040();
    sub_22F166374(v16, type metadata accessor for SongSource);
    if (v45)
    {
      goto LABEL_27;
    }

LABEL_6:
    v21 = (v21 + 1) & v65;
    if (((*(v67 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return (*(v55 + 56))(v54, 1, 1, v69);
    }
  }

  sub_22F166374(v16, type metadata accessor for SongSource);
LABEL_27:
  v46 = v53;
  v47 = *v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v46;
  v70 = *v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22F116AB4();
    v49 = v70;
  }

  v50 = v54;
  sub_22F1663D4(*(v49 + 48) + v64, v54, type metadata accessor for SongSource);
  sub_22F1655D0(v21);
  *v46 = v70;
  return (*(v55 + 56))(v50, 0, 1, v69);
}

uint64_t sub_22F164E58(void *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *v5;

    v13 = a1;
    v14 = sub_22F741A50();

    if (v14)
    {
      v15 = sub_22F165000(v11, v13, a5, a2, a3);

      return v15;
    }

    return 0;
  }

  v18 = v5;
  sub_22F120634(0, a2, a3);
  v19 = *(v7 + 40);
  v20 = sub_22F741800();
  v21 = -1 << *(v7 + 32);
  v22 = v20 & ~v21;
  if (((*(v7 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
    return 0;
  }

  v23 = ~v21;
  while (1)
  {
    v24 = *(*(v7 + 48) + 8 * v22);
    v25 = sub_22F741810();

    if (v25)
    {
      break;
    }

    v22 = (v22 + 1) & v23;
    if (((*(v7 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return 0;
    }
  }

  v26 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v18;
  v30 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v28 = v30;
  }

  v29 = *(*(v28 + 48) + 8 * v22);
  sub_22F165B30(v22);
  result = v29;
  *v18 = v30;
  return result;
}

uint64_t sub_22F165000(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t *a5)
{
  v9 = v5;
  v10 = *v5;

  v11 = sub_22F741A00();
  v12 = swift_unknownObjectRetain();
  v13 = a3(v12, v11);
  v23 = v13;
  v14 = *(v13 + 40);

  v15 = sub_22F741800();
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_22F120634(0, a4, a5);
    while (1)
    {
      v19 = *(*(v13 + 48) + 8 * v17);
      v20 = sub_22F741810();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v13 + 48) + 8 * v17);
  sub_22F165B30(v17);
  result = sub_22F741810();
  if (result)
  {
    *v9 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F165170(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22F741990();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_22F742170();

        sub_22F740D60();
        v15 = sub_22F7421D0();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_22F165334(unint64_t a1)
{
  v27 = type metadata accessor for Song();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    v12 = *v1;

    v13 = sub_22F741990();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v28 = v8;
      v14 = (v13 + 1) & v11;
      v15 = *(v3 + 72);
      while (1)
      {
        v16 = v15 * v10;
        sub_22F16630C(*(v7 + 48) + v15 * v10, v6, type metadata accessor for Song);
        v17 = *(v7 + 40);
        sub_22F742170();
        v18 = *v6;
        v19 = v6[1];
        sub_22F740D60();
        v20 = sub_22F7421D0();
        sub_22F166374(v6, type metadata accessor for Song);
        v21 = v20 & v11;
        if (a1 >= v14)
        {
          break;
        }

        if (v21 < v14)
        {
          goto LABEL_11;
        }

LABEL_12:
        v22 = v15 * a1;
        if ((v15 * a1) < v16 || *(v7 + 48) + v15 * a1 >= *(v7 + 48) + v16 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v10;
          if (v22 == v16)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v10;
LABEL_6:
        v10 = (v10 + 1) & v11;
        if (((*(v28 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          v8 = v28;
          goto LABEL_19;
        }
      }

      if (v21 < v14)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v21)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_19:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v7 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v25;
    ++*(v7 + 36);
  }
}

void sub_22F1655D0(unint64_t a1)
{
  v51 = sub_22F73F690();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v51);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v44 - v8;
  v9 = type metadata accessor for SongSource();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *v1;
  v15 = *v1 + 56;
  v16 = -1 << *(*v1 + 32);
  v17 = (a1 + 1) & ~v16;
  if (((1 << v17) & *(v15 + 8 * (v17 >> 6))) != 0)
  {
    v52 = v11;
    v18 = ~v16;

    v19 = sub_22F741990();
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) != 0)
    {
      v20 = *(v52 + 72);
      v47 = (v3 + 48);
      v48 = v20;
      v44 = (v3 + 8);
      v45 = (v3 + 32);
      v21 = v14;
      v22 = v20;
      v49 = (v19 + 1) & v18;
      while (1)
      {
        v52 = a1;
        v23 = v18;
        v24 = v15;
        v25 = v22 * v17;
        sub_22F16630C(*(v21 + 48) + v22 * v17, v13, type metadata accessor for SongSource);
        v26 = v21;
        v27 = *(v21 + 40);
        sub_22F742170();
        v28 = *v13;
        v29 = v13[1];
        sub_22F740D60();
        v30 = (v13 + v9[11]);
        if (v30[1])
        {
          v31 = *v30;
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v32 = v50;
        sub_22F12057C(v13 + v9[7], v50);
        v33 = v51;
        if ((*v47)(v32, 1, v51) == 1)
        {
          sub_22F742190();
        }

        else
        {
          v34 = v46;
          (*v45)(v46, v32, v33);
          sub_22F742190();
          sub_22F1662C8(&qword_2810AC710);
          sub_22F740D50();
          (*v44)(v34, v33);
        }

        v35 = (v13 + v9[8]);
        if (v35[1])
        {
          v36 = *v35;
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v37 = (v13 + v9[12]);
        if (v37[1])
        {
          v38 = *v37;
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v15 = v24;
        v39 = sub_22F7421D0();
        sub_22F166374(v13, type metadata accessor for SongSource);
        v18 = v23;
        v40 = v39 & v23;
        a1 = v52;
        if (v52 >= v49)
        {
          v21 = v26;
          if (v40 < v49)
          {
            v22 = v48;
            goto LABEL_5;
          }

          v22 = v48;
          if (v52 < v40)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v21 = v26;
          v22 = v48;
          if (v40 < v49 && v52 < v40)
          {
            goto LABEL_5;
          }
        }

        if (v22 * v52 < v25 || *(v21 + 48) + v22 * v52 >= (*(v21 + 48) + v25 + v22))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_29;
        }

        a1 = v17;
        if (v22 * v52 != v25)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_29:
          a1 = v17;
        }

LABEL_5:
        v17 = (v17 + 1) & v23;
        if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {

          goto LABEL_33;
        }
      }
    }

    v21 = v14;
LABEL_33:
    *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v14;
  }

  v41 = *(v21 + 16);
  v42 = __OFSUB__(v41, 1);
  v43 = v41 - 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v43;
    ++*(v21 + 36);
  }
}

unint64_t sub_22F165B30(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22F741990();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_22F741800();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_22F165D18(_OWORD *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84FA0];
  v5 = *(v2 + 16);
  v6 = a1[3];
  if (*(v2 + 40) == 1)
  {
    v21 = a1[2];
    v22 = v6;
    v23 = a1[4];
    v7 = type metadata accessor for ImportantEntitiesChildrenContainer();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = v5;
    swift_retain_n();
    v11 = sub_22F240428(v10, GEOLocationCoordinate2DMake, 0, sub_22F166444, v4);
    sub_22F278BCC(v11, &v21, 0);
  }

  else
  {
    v21 = a1[2];
    v22 = v6;
    v23 = a1[4];
    v12 = type metadata accessor for ImportantEntitiesPetContainer();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = v5;
    swift_retain_n();
    v16 = sub_22F349914(v15, GEOLocationCoordinate2DMake, 0, sub_22F16643C, v4);
    sub_22F27D3B4(v16, &v21, 0);
  }

  swift_beginAccess();
  v17 = *(v4 + 16);
  v19 = *(v2 + 24);
  v18 = *(v2 + 32);

  type metadata accessor for ImportantEntitiesTuningResult();
  result = swift_allocObject();
  result[2] = v17;
  result[3] = v19;
  result[4] = v18;
  return result;
}

unint64_t sub_22F165F2C()
{
  result = qword_27DAB1558;
  if (!qword_27DAB1558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1560, &qword_22F772170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1558);
  }

  return result;
}

uint64_t sub_22F1662C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22F73F690();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F16630C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F166374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F1663D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SongSource.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SongSource.dateLastUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SongSource() + 20);

  return sub_22F12057C(v3, a1);
}

uint64_t type metadata accessor for SongSource()
{
  result = qword_2810AC240;
  if (!qword_2810AC240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SongSource.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SongSource() + 28);

  return sub_22F12057C(v3, a1);
}

uint64_t SongSource.geohash.getter()
{
  v1 = (v0 + *(type metadata accessor for SongSource() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SongSource.latitude.getter()
{
  v1 = (v0 + *(type metadata accessor for SongSource() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SongSource.longitude.getter()
{
  v1 = (v0 + *(type metadata accessor for SongSource() + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SongSource.version.getter()
{
  v1 = (v0 + *(type metadata accessor for SongSource() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SongSource.category.getter()
{
  v1 = (v0 + *(type metadata accessor for SongSource() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SongSource.isInCache.setter(char a1)
{
  result = type metadata accessor for SongSource();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t SongSource.init(identifier:version:category:date:location:locationTolerance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>, unsigned __int8 *a10)
{
  v17 = *a10;
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for SongSource();
  v19 = (a9 + v18[11]);
  *v19 = a3;
  v19[1] = a4;
  sub_22F12057C(a7, a9 + v18[7]);
  v20 = (a9 + v18[12]);
  *v20 = a5;
  v20[1] = a6;
  if (a8)
  {
    if (v17 != 11)
    {
      type metadata accessor for Geohash();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = 0;
      [a8 coordinate];
      v27 = v26;
      [a8 coordinate];
      v29 = sub_22F34AF8C(v17 + 1, v27, v28);
      v31 = v30;
      swift_setDeallocating();
      v32 = *(inited + 16);

      v33 = *(inited + 24);

      v34 = (a9 + v18[8]);
      *v34 = v29;
      v34[1] = v31;
      [a8 coordinate];
      v35 = a9 + v18[9];
      *v35 = v36;
      v35[8] = 0;
      [a8 coordinate];
      v38 = v37;

      sub_22F120ADC(a7, &qword_27DAB0920, &qword_22F770B20);
      v23 = 0;
      v24 = v18[10];
      *(a9 + v24) = v38;
      goto LABEL_7;
    }

    sub_22F120ADC(a7, &qword_27DAB0920, &qword_22F770B20);
  }

  else
  {
    sub_22F120ADC(a7, &qword_27DAB0920, &qword_22F770B20);
  }

  v21 = (a9 + v18[8]);
  *v21 = 0;
  v21[1] = 0;
  v22 = a9 + v18[9];
  *v22 = 0;
  v23 = 1;
  v22[8] = 1;
  v24 = v18[10];
  *(a9 + v24) = 0;
LABEL_7:
  *(a9 + v24 + 8) = v23;
  v39 = v18[5];
  v40 = sub_22F73F690();
  result = (*(*(v40 - 8) + 56))(a9 + v39, 1, 1, v40);
  *(a9 + v18[6]) = 0;
  *(a9 + v18[13]) = 0;
  return result;
}

id SongSource.location.getter()
{
  v1 = type metadata accessor for SongSource();
  v2 = v0 + *(v1 + 36);
  if (*(v2 + 8))
  {
    return 0;
  }

  v3 = v0 + *(v1 + 40);
  if (*(v3 + 8))
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v2 longitude:*v3];
  }
}

uint64_t SongSource.hash(into:)()
{
  v1 = sub_22F73F690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = *v0;
  v11 = v0[1];
  sub_22F740D60();
  v12 = type metadata accessor for SongSource();
  v13 = (v0 + v12[11]);
  if (v13[1])
  {
    v14 = *v13;
    sub_22F742190();
    sub_22F740D60();
  }

  else
  {
    sub_22F742190();
  }

  sub_22F12057C(v0 + v12[7], v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_22F742190();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_22F742190();
    sub_22F168D10(&qword_2810AC710, MEMORY[0x277CC9578]);
    sub_22F740D50();
    (*(v2 + 8))(v5, v1);
  }

  v15 = (v0 + v12[8]);
  if (v15[1])
  {
    v16 = *v15;
    sub_22F742190();
    sub_22F740D60();
  }

  else
  {
    sub_22F742190();
  }

  v17 = (v0 + v12[12]);
  if (!v17[1])
  {
    return sub_22F742190();
  }

  v18 = *v17;
  sub_22F742190();
  return sub_22F740D60();
}

uint64_t SongSource.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - v6;
  v8 = sub_22F73F690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  v15 = *v0;
  v16 = v0[1];
  v57 = v15;
  v58 = v16;
  v17 = type metadata accessor for SongSource();
  v18 = (v1 + v17[11]);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v55 = 2128928;
    v56 = 0xE300000000000000;

    MEMORY[0x231900B10](v20, v19);
    MEMORY[0x231900B10](v55, v56);
  }

  else
  {
  }

  v21 = (v1 + v17[12]);
  if (v21[1])
  {
    v22 = *v21;
    v55 = 2128928;
    v56 = 0xE300000000000000;
    MEMORY[0x231900B10](v22);
    MEMORY[0x231900B10](v55, v56);
  }

  v23 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_22F12057C(v1 + v17[7], v7);
  v51 = *(v9 + 48);
  v24 = v51(v7, 1, v8);
  v50 = v9;
  v52 = v23;
  if (v24 == 1)
  {
    sub_22F120ADC(v7, &qword_27DAB0920, &qword_22F770B20);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v55 = 2128928;
    v56 = 0xE300000000000000;
    v25 = sub_22F73F5B0();
    v26 = [v23 stringFromDate_];

    v27 = sub_22F740E20();
    v29 = v28;

    MEMORY[0x231900B10](v27, v29);

    MEMORY[0x231900B10](v55, v56);

    (*(v9 + 8))(v14, v8);
  }

  v30 = (v1 + v17[8]);
  if (v30[1])
  {
    v31 = *v30;
    v55 = 2128928;
    v56 = 0xE300000000000000;
    MEMORY[0x231900B10](v31);
    MEMORY[0x231900B10](v55, v56);

    v32 = v1 + v17[9];
    if ((v32[8] & 1) == 0)
    {
      v33 = v1 + v17[10];
      if ((v33[8] & 1) == 0)
      {
        v34 = *v33;
        v35 = *v32;
        v55 = 0;
        v56 = 0xE000000000000000;
        MEMORY[0x231900B10](10272, 0xE200000000000000);
        sub_22F7413B0();
        MEMORY[0x231900B10](8236, 0xE200000000000000);
        sub_22F7413B0();
        MEMORY[0x231900B10](41, 0xE100000000000000);
        MEMORY[0x231900B10](v55, v56);
      }
    }
  }

  v55 = 2112032;
  v56 = 0xE300000000000000;
  if (*(v1 + v17[13]))
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (*(v1 + v17[13]))
  {
    v37 = 0xE400000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v36, v37);

  MEMORY[0x231900B10](v55, v56);

  v38 = v53;
  sub_22F12057C(v1 + v17[5], v53);
  if (v51(v38, 1, v8) == 1)
  {
    sub_22F120ADC(v38, &qword_27DAB0920, &qword_22F770B20);
    v39 = v52;
  }

  else
  {
    v41 = v49;
    v40 = v50;
    (*(v50 + 32))(v49, v38, v8);
    v55 = 2128928;
    v56 = 0xE300000000000000;
    v42 = sub_22F73F5B0();
    v39 = v52;
    v43 = [v52 stringFromDate_];

    v44 = sub_22F740E20();
    v46 = v45;

    MEMORY[0x231900B10](v44, v46);

    MEMORY[0x231900B10](v55, v56);

    (*(v40 + 8))(v41, v8);
  }

  v55 = 2128928;
  v56 = 0xE300000000000000;
  v54 = *(v1 + v17[6]);
  v47 = sub_22F742010();
  MEMORY[0x231900B10](v47);

  MEMORY[0x231900B10](v55, v56);

  return v57;
}

uint64_t sub_22F1672C0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0x79726F6765746163;
    if (a1 != 8)
    {
      v6 = 0x686361436E497369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656475746974616CLL;
    if (a1 != 5)
    {
      v7 = 0x64757469676E6F6CLL;
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
    v1 = 0x696669746E656469;
    v2 = 0x6E756F43676E6F73;
    v3 = 1702125924;
    if (a1 != 3)
    {
      v3 = 0x687361686F6567;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7473614C65746164;
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

uint64_t sub_22F16740C()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F167454()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F1674A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F1689C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F1674E0(uint64_t a1)
{
  v2 = sub_22F1683E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F16751C(uint64_t a1)
{
  v2 = sub_22F1683E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SongSource.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1568, &qword_22F772520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1683E4();
  sub_22F742210();
  v11 = *v3;
  v12 = v3[1];
  v34[31] = 0;
  sub_22F741F80();
  if (!v2)
  {
    v13 = type metadata accessor for SongSource();
    v14 = v13[5];
    v34[30] = 1;
    sub_22F73F690();
    sub_22F168D10(&qword_2810AC718, MEMORY[0x277CC9578]);
    sub_22F741F70();
    v15 = *(v3 + v13[6]);
    v34[29] = 2;
    sub_22F741FC0();
    v16 = v13[7];
    v34[28] = 3;
    sub_22F741F70();
    v17 = (v3 + v13[8]);
    v18 = *v17;
    v19 = v17[1];
    v34[27] = 4;
    sub_22F741F20();
    v20 = v3 + v13[9];
    v21 = *v20;
    v22 = v20[8];
    v34[26] = 5;
    sub_22F741F40();
    v23 = v3 + v13[10];
    v24 = *v23;
    v25 = v23[8];
    v34[25] = 6;
    sub_22F741F40();
    v26 = (v3 + v13[11]);
    v27 = *v26;
    v28 = v26[1];
    v34[24] = 7;
    sub_22F741F20();
    v29 = (v3 + v13[12]);
    v30 = *v29;
    v31 = v29[1];
    v34[15] = 8;
    sub_22F741F20();
    v32 = *(v3 + v13[13]);
    v34[14] = 9;
    sub_22F741F90();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SongSource.hashValue.getter()
{
  sub_22F742170();
  SongSource.hash(into:)();
  return sub_22F7421D0();
}

uint64_t SongSource.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1578, &qword_22F772528);
  v12 = *(v11 - 8);
  v49 = v11;
  v50 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v44 - v14;
  v16 = type metadata accessor for SongSource();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[3];
  v20 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_22F1683E4();
  v48 = v15;
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v51);
  }

  v45 = v19;
  v46 = v16;
  v61 = 0;
  v22 = sub_22F741EB0();
  v23 = v45;
  *v45 = v22;
  v23[1] = v24;
  sub_22F73F690();
  v60 = 1;
  sub_22F168D10(&qword_27DAB1580, MEMORY[0x277CC9578]);
  sub_22F741EA0();
  v25 = v46;
  sub_22F168438(v10, v23 + v46[5]);
  v59 = 2;
  v44[1] = 0;
  *(v23 + v25[6]) = sub_22F741EF0();
  v58 = 3;
  sub_22F741EA0();
  sub_22F168438(v8, v23 + v25[7]);
  v57 = 4;
  v26 = sub_22F741E50();
  v27 = (v23 + v25[8]);
  *v27 = v26;
  v27[1] = v28;
  v56 = 5;
  v29 = sub_22F741E70();
  v30 = v23 + v25[9];
  *v30 = v29;
  v30[8] = v31 & 1;
  v55 = 6;
  v32 = sub_22F741E70();
  v33 = v23 + v25[10];
  *v33 = v32;
  v33[8] = v34 & 1;
  v54 = 7;
  v35 = sub_22F741E50();
  v36 = (v23 + v25[11]);
  *v36 = v35;
  v36[1] = v37;
  v53 = 8;
  v38 = sub_22F741E50();
  v39 = (v23 + v46[12]);
  *v39 = v38;
  v39[1] = v40;
  v52 = 9;
  v41 = sub_22F741EC0();
  (*(v50 + 8))(v48, v49);
  v42 = v45;
  *(v45 + v46[13]) = v41 & 1;
  sub_22F1684A8(v42, v47);
  __swift_destroy_boxed_opaque_existential_0(v51);
  return sub_22F16850C(v42);
}

uint64_t sub_22F167FD8()
{
  sub_22F742170();
  SongSource.hash(into:)();
  return sub_22F7421D0();
}

uint64_t sub_22F16801C()
{
  sub_22F742170();
  SongSource.hash(into:)();
  return sub_22F7421D0();
}

uint64_t _s11PhotosGraph10SongSourceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_22F742040() & 1) == 0)
  {
    goto LABEL_10;
  }

  v30 = type metadata accessor for SongSource();
  v17 = *(v30 + 28);
  v18 = *(v13 + 48);
  sub_22F12057C(a1 + v17, v16);
  sub_22F12057C(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_22F12057C(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_22F168D10(&qword_2810AC700, MEMORY[0x277CC9578]);
      v22 = sub_22F740DE0();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_22F120ADC(v16, &qword_27DAB0920, &qword_22F770B20);
      if (v22)
      {
        goto LABEL_13;
      }

LABEL_10:
      v20 = 0;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_22F120ADC(v16, &unk_27DAB05B0, &unk_22F771430);
    goto LABEL_10;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_22F120ADC(v16, &qword_27DAB0920, &qword_22F770B20);
LABEL_13:
  v24 = *(v30 + 32);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  v20 = (v26 | v28) == 0;
  if (v26 && v28)
  {
    if (*v25 == *v27 && v26 == v28)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_22F742040();
    }
  }

  return v20 & 1;
}

unint64_t sub_22F1683E4()
{
  result = qword_27DAB1570;
  if (!qword_27DAB1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1570);
  }

  return result;
}

uint64_t sub_22F168438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1684A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F16850C(uint64_t a1)
{
  v2 = type metadata accessor for SongSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22F1685D8()
{
  sub_22F1686CC();
  if (v0 <= 0x3F)
  {
    sub_22F168724(319, &qword_2810A9390);
    if (v1 <= 0x3F)
    {
      sub_22F168724(319, &qword_2810A9278);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22F1686CC()
{
  if (!qword_2810AC6F0)
  {
    sub_22F73F690();
    v0 = sub_22F741860();
    if (!v1)
    {
      atomic_store(v0, &qword_2810AC6F0);
    }
  }
}

void sub_22F168724(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22F741860();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SongSource.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SongSource.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F1688C4()
{
  result = qword_27DAB1588;
  if (!qword_27DAB1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1588);
  }

  return result;
}

unint64_t sub_22F16891C()
{
  result = qword_27DAB1590;
  if (!qword_27DAB1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1590);
  }

  return result;
}

unint64_t sub_22F168974()
{
  result = qword_27DAB1598;
  if (!qword_27DAB1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1598);
  }

  return result;
}

uint64_t sub_22F1689C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473614C65746164 && a2 == 0xEF64657461647055 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F43676E6F73 && a2 == 0xE900000000000074 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x687361686F6567 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x686361436E497369 && a2 == 0xE900000000000065)
  {

    return 9;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_22F168D10(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PlaceZeroKeyword.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGPlaceZeroKeyword_title);
  v2 = *(v0 + OBJC_IVAR___PGPlaceZeroKeyword_title + 8);

  return v1;
}

uint64_t PlaceZeroKeyword.address.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGPlaceZeroKeyword_address);
  v2 = *(v0 + OBJC_IVAR___PGPlaceZeroKeyword_address + 8);

  return v1;
}

uint64_t sub_22F168E14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F168E7C()
{
  v1 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F168EC4(uint64_t a1)
{
  v3 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_22F168F7C()
{
  v1 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F168FC0(double a1)
{
  v3 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id PlaceZeroKeyword.__allocating_init(type:title:address:displayInfo:queryToken:addressNodeCollection:placeKind:score:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, char *a10, uint64_t a11)
{
  v21 = objc_allocWithZone(v11);
  v22 = *a10;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_type] = a1;
  v23 = &v21[OBJC_IVAR___PGPlaceZeroKeyword_title];
  *v23 = a2;
  v23[1] = a3;
  v24 = &v21[OBJC_IVAR___PGPlaceZeroKeyword_address];
  *v24 = a4;
  v24[1] = a5;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = a6;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = a7;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = a8;
  v21[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = v22;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_score] = a9;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = a11;
  v26.receiver = v21;
  v26.super_class = v11;
  return objc_msgSendSuper2(&v26, sel_init);
}

id PlaceZeroKeyword.init(type:title:address:displayInfo:queryToken:addressNodeCollection:placeKind:score:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, char *a10, uint64_t a11)
{
  v12 = *a10;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_type] = a1;
  v13 = &v11[OBJC_IVAR___PGPlaceZeroKeyword_title];
  *v13 = a2;
  v13[1] = a3;
  v14 = &v11[OBJC_IVAR___PGPlaceZeroKeyword_address];
  *v14 = a4;
  v14[1] = a5;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = a6;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = a7;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = a8;
  v11[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = v12;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_score] = a9;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = a11;
  v16.receiver = v11;
  v16.super_class = type metadata accessor for PlaceZeroKeyword();
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t PlaceZeroKeyword.PlaceZeroKeywordKind.rawValue.getter()
{
  v1 = 0x7465737265707573;
  v2 = 0x696F41706F74;
  if (*v0 != 2)
  {
    v2 = 1701670760;
  }

  if (*v0)
  {
    v1 = 0x6E69727275636572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

id PlaceZeroKeyword.__allocating_init(homeName:address:addressNode:isTopPlace:options:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, void *a8)
{
  v14 = objc_allocWithZone(MEMORY[0x277D3ADA8]);
  v15 = sub_22F740DF0();
  v16 = [v14 initWithText:v15 userCategory:10 matchType:2];

  v17 = *MEMORY[0x277D3B1A8];
  v18 = sub_22F740E20();
  v20 = v19;
  v21 = MEMORY[0x277D837D0];
  v51 = MEMORY[0x277D837D0];
  *&v50 = a3;
  *(&v50 + 1) = a4;
  sub_22F107D08(&v50, v49);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = a7;
  sub_22F130630(v49, v18, v20, isUniquelyReferenced_nonNull_native);

  v23 = *MEMORY[0x277D3B188];
  v24 = sub_22F740E20();
  v26 = v25;
  v51 = MEMORY[0x277D839B0];
  LOBYTE(v50) = a6;
  sub_22F107D08(&v50, v49);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v48 = a7;
  sub_22F130630(v49, v24, v26, v27);

  v28 = *MEMORY[0x277D3B1C8];
  v29 = sub_22F740E20();
  v31 = v30;
  v51 = v21;
  *&v50 = 1701670760;
  *(&v50 + 1) = 0xE400000000000000;
  sub_22F107D08(&v50, v49);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v48 = a7;
  sub_22F130630(v49, v29, v31, v32);

  v33 = a7;
  v34 = [objc_msgSend(a5 locationOrAreaNodeCollection)];
  swift_unknownObjectRelease();
  v35 = type metadata accessor for PlaceZeroKeyword();
  v36 = objc_allocWithZone(v35);
  *&v36[OBJC_IVAR___PGPlaceZeroKeyword_type] = 6;
  v37 = &v36[OBJC_IVAR___PGPlaceZeroKeyword_title];
  *v37 = a1;
  v37[1] = a2;
  v38 = &v36[OBJC_IVAR___PGPlaceZeroKeyword_address];
  *v38 = a3;
  v38[1] = a4;
  *&v36[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = v33;
  *&v36[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = v16;
  *&v36[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = v34;
  v36[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = 3;
  *&v36[OBJC_IVAR___PGPlaceZeroKeyword_score] = 0x7FEFFFFFFFFFFFFFLL;
  *&v36[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = a8;
  v47.receiver = v36;
  v47.super_class = v35;
  v39 = v16;
  v40 = v34;
  v41 = a8;
  v42 = objc_msgSendSuper2(&v47, sel_init);

  return v42;
}

unint64_t sub_22F1696C8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PGPlaceZeroKeyword_address);
  v3 = *(v0 + OBJC_IVAR___PGPlaceZeroKeyword_address + 8);
  v4 = sub_22F169A80();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *MEMORY[0x277D3B1A0];
  v12 = sub_22F740E20();
  v14 = v13;
  v15 = MEMORY[0x277D839F8];
  v53 = MEMORY[0x277D839F8];
  *v52 = v4;
  v16 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  sub_22F1217F0(v52, v12, v14);
  swift_endAccess();
  v17 = *MEMORY[0x277D3B198];
  v18 = sub_22F740E20();
  v20 = v19;
  v53 = v15;
  v52[0] = v8;
  swift_beginAccess();
  sub_22F1217F0(v52, v18, v20);
  swift_endAccess();
  v21 = *MEMORY[0x277D3B1B8];
  v22 = sub_22F740E20();
  v24 = v23;
  v53 = v15;
  v52[0] = v6;
  swift_beginAccess();
  sub_22F1217F0(v52, v22, v24);
  swift_endAccess();
  v25 = *MEMORY[0x277D3B1B0];
  v26 = sub_22F740E20();
  v28 = v27;
  v53 = v15;
  v52[0] = v10;
  swift_beginAccess();
  sub_22F1217F0(v52, v26, v28);
  swift_endAccess();
  v29 = [*(v0 + OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection) momentNodes];
  v30 = sub_22F169CF4(v29);

  v31 = *MEMORY[0x277D3B190];
  v32 = sub_22F740E20();
  v34 = v33;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v52[0] = v30;
  swift_beginAccess();
  sub_22F1217F0(v52, v32, v34);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7727B0;
  v36 = *MEMORY[0x277D3B1E0];
  *(inited + 32) = sub_22F740E20();
  *(inited + 40) = v37;
  v38 = *(v1 + OBJC_IVAR___PGPlaceZeroKeyword_type);
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v38;
  v39 = *MEMORY[0x277D3B1D8];
  *(inited + 80) = sub_22F740E20();
  *(inited + 88) = v40;
  v41 = *(v1 + OBJC_IVAR___PGPlaceZeroKeyword_title);
  v42 = *(v1 + OBJC_IVAR___PGPlaceZeroKeyword_title + 8);
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v41;
  *(inited + 104) = v42;
  v43 = *MEMORY[0x277D3B180];
  *(inited + 128) = sub_22F740E20();
  *(inited + 136) = v44;
  v45 = *(v1 + v16);
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  *(inited + 144) = v45;
  v46 = *MEMORY[0x277D3B1D0];
  *(inited + 176) = sub_22F740E20();
  *(inited + 184) = v47;
  v48 = *(v1 + OBJC_IVAR___PGPlaceZeroKeyword_queryToken);
  *(inited + 216) = sub_22F120634(0, &qword_27DAB15E8, 0x277D3ADA8);
  *(inited + 192) = v48;

  v49 = v48;
  v50 = sub_22F14EA28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  return v50;
}

double sub_22F169A80()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MKCoordinateRegionForMapRect(*MEMORY[0x277CD4BB8]);
  v1 = [objc_allocWithZone(MEMORY[0x277CD4E38]) init];
  v2 = sub_22F740DF0();
  [v1 setNaturalLanguageQuery_];

  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [objc_allocWithZone(MEMORY[0x277CD4E20]) initWithRequest_];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v3;
  v13[4] = sub_22F16BCB4;
  v13[5] = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22F16AC08;
  v13[3] = &block_descriptor_0;
  v6 = _Block_copy(v13);

  v7 = v3;

  [v4 startWithCompletionHandler_];
  _Block_release(v6);

  sub_22F741620();
  swift_beginAccess();
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);

  return v8;
}

uint64_t sub_22F169CF4(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary) librarySpecificFetchOptions];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22F771350;
  v6 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22F771340;
  v8 = [a1 uuids];
  v9 = sub_22F741420();

  v10 = &qword_27DAB1608;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  *(v7 + 64) = sub_22F16BC6C(&qword_2810A9240, &qword_27DAB1608, &unk_22F772BB0);
  *(v7 + 32) = v9;
  *(v5 + 32) = sub_22F741560();
  v11 = [objc_opt_self() predicateForAssetWithLocation];
  if (!v11)
  {
    __break(1u);
    goto LABEL_46;
  }

  *(v5 + 40) = v11;
  v12 = sub_22F741160();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v3 setInternalPredicate_];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22F771350;
  v15 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v16 = sub_22F740DF0();
  v17 = [v15 initWithKey:v16 ascending:0];

  *(v14 + 32) = v17;
  v18 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v19 = sub_22F740DF0();
  v20 = [v18 initWithKey:v19 ascending:1];

  *(v14 + 40) = v20;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v21 = sub_22F741160();

  [v3 setSortDescriptors_];

  v22 = objc_opt_self();
  v23 = [v22 requiredFetchPropertySets];
  if (!v23)
  {
    sub_22F741180();
    v23 = sub_22F741160();
  }

  [v3 setFetchPropertySets_];

  [v3 setChunkSizeForFetch_];
  v4 = [objc_opt_self() fetchAssetsWithOptions_];
  v24 = [v22 representativeAssetsForMapDisplayFromAssets_];
  v25 = sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  v6 = sub_22F741180();

  v9 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_40:
    v10 = sub_22F741A00();
    if (sub_22F741A00() < 0)
    {
      __break(1u);
      goto LABEL_42;
    }

LABEL_46:
    if (v10 >= 3)
    {
      v48 = 3;
    }

    else
    {
      v48 = v10;
    }

    if (v10 >= 0)
    {
      v10 = v48;
    }

    else
    {
      v10 = 3;
    }

    result = sub_22F741A00();
    if (result >= v10)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= v10)
  {
LABEL_9:
    if ((v6 & 0xC000000000000001) != 0)
    {

      if (v10)
      {
        sub_22F741B20();
        if (v10 != 1)
        {
          sub_22F741B20();
          if (v10 != 2)
          {
            sub_22F741B20();
          }
        }
      }
    }

    else
    {
    }

    if (v9)
    {
      v25 = sub_22F741DB0();
      v9 = v28;
      v27 = v29;
      v31 = v30;

      v10 = v31 >> 1;
    }

    else
    {
      v27 = 0;
      v25 = v6 & 0xFFFFFFFFFFFFFF8;
      v9 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v32 = v10 - v27;
    if (!__OFSUB__(v10, v27))
    {
      if (!v32)
      {
        swift_unknownObjectRelease();
        v6 = MEMORY[0x277D84F90];
        if (*(MEMORY[0x277D84F90] + 16))
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      v51 = MEMORY[0x277D84F90];
      v6 = &v51;
      sub_22F146454(0, v32 & ~(v32 >> 63), 0);
      if ((v32 & 0x8000000000000000) == 0)
      {
        v49 = v4;
        v50 = v3;
        v6 = v51;
        if (v10 <= v27)
        {
          v33 = v27;
        }

        else
        {
          v33 = v10;
        }

        v3 = (v33 - v27);
        v4 = (v9 + 8 * v27);
        do
        {
          if (!v3)
          {
            __break(1u);
            goto LABEL_40;
          }

          v34 = *v4;
          v35 = [v34 localIdentifier];
          v36 = sub_22F740E20();
          v38 = v37;

          v51 = v6;
          v40 = *(v6 + 16);
          v39 = *(v6 + 24);
          v9 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            sub_22F146454((v39 > 1), v40 + 1, 1);
            v6 = v51;
          }

          *(v6 + 16) = v9;
          v41 = v6 + 16 * v40;
          *(v41 + 32) = v36;
          *(v41 + 40) = v38;
          --v3;
          ++v4;
          --v32;
        }

        while (v32);
        swift_unknownObjectRelease();
        v4 = v49;
        v3 = v50;
        if (*(v6 + 16))
        {
          goto LABEL_37;
        }

LABEL_32:
        if ([v4 count] >= 1)
        {
          v42 = [v4 objectAtIndexedSubscript_];
          v43 = [v42 localIdentifier];

          v25 = sub_22F740E20();
          v10 = v44;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_34:
            v46 = *(v6 + 16);
            v45 = *(v6 + 24);
            if (v46 >= v45 >> 1)
            {
              v6 = sub_22F13E1A8((v45 > 1), v46 + 1, 1, v6);
            }

            *(v6 + 16) = v46 + 1;
            v47 = v6 + 16 * v46;
            *(v47 + 32) = v25;
            *(v47 + 40) = v10;
            return v6;
          }

LABEL_44:
          v6 = sub_22F13E1A8(0, *(v6 + 16) + 1, 1, v6);
          goto LABEL_34;
        }

LABEL_37:

        return v6;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t PlaceZeroKeyword.PlaceZeroKeywordKind.maximumNumberOfKeywordsAllowed.getter()
{
  if (*v0 - 1 >= 2)
  {
    return 15;
  }

  else
  {
    return 5;
  }
}

PhotosGraph::PlaceZeroKeyword::PlaceZeroKeywordKind_optional __swiftcall PlaceZeroKeyword.PlaceZeroKeywordKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F741E30();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F16A4C4()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F16A588()
{
  *v0;
  *v0;
  *v0;
  sub_22F740D60();
}

uint64_t sub_22F16A638()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

void sub_22F16A704(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x7465737265707573;
  v4 = 0xE600000000000000;
  v5 = 0x696F41706F74;
  if (*v1 != 2)
  {
    v5 = 1701670760;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E69727275636572;
    v2 = 0xED00007069725467;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id PlaceZeroKeyword.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceZeroKeyword.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceZeroKeyword();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F16A904()
{
  v1 = (*v0 + OBJC_IVAR___PGPlaceZeroKeyword_title);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_22F16A944()
{
  v1 = *v0;
  v2 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_22F16A990(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t (*sub_22F16A9EC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_22F16AA50()
{
  v1 = *v0;
  v2 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F16AA98(double a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_22F16AAEC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_22F16AB88(void *a1, int a2, void *a3, dispatch_group_t group)
{
  if (a1)
  {
    [a1 boundingRegion];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    swift_beginAccess();
    a3[2] = v7;
    a3[3] = v9;
    a3[4] = v11;
    a3[5] = v13;
  }

  dispatch_group_leave(group);
}

void sub_22F16AC08(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_22F16AC94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_22F13A100((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

id sub_22F16ACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, char *a7, uint64_t a8, void *a9)
{
  v14 = *a7;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    swift_unknownObjectRetain();
    v17 = [v16 locationNodeCollection];
    v18 = [v17 parentLocationNodes];

    v19 = [v18 anyNode];
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    swift_unknownObjectRetain();
    v22 = [v21 stateOrBiggerParentLocationNode];
    swift_unknownObjectRelease();

    v19 = v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7707D0;
  v24 = *MEMORY[0x277D3B1A8];
  *(inited + 32) = sub_22F740E20();
  v25 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v26;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  v27 = *MEMORY[0x277D3B188];
  *(inited + 80) = sub_22F740E20();
  *(inited + 88) = v28;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = a6 & 1;
  v29 = *MEMORY[0x277D3B1C8];
  *(inited + 128) = sub_22F740E20();
  *(inited + 136) = v30;
  if (v14 > 1u)
  {
    if (v14 == 2)
    {
      v31 = 0xE600000000000000;
      v32 = 0x696F41706F74;
    }

    else
    {
      v31 = 0xE400000000000000;
      v32 = 1701670760;
    }
  }

  else if (v14)
  {
    v31 = 0xED00007069725467;
    v32 = 0x6E69727275636572;
  }

  else
  {
    v31 = 0xE800000000000000;
    v32 = 0x7465737265707573;
  }

  *(inited + 168) = v25;
  *(inited + 144) = v32;
  *(inited + 152) = v31;

  v33 = sub_22F14EA28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  v52 = a4;
  if (v19)
  {
    v34 = v19;
    v35 = _s11PhotosGraph16PlaceZeroKeywordC22locationNameByCategory3forSDySo8NSNumberCSSGSo19PGGraphLocationNodeC_tFZ_0(v34);

    v36 = sub_22F740DF0();
    v37 = a3;
    if (v35)
    {
      sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
      sub_22F16C010();
      v38 = sub_22F740C80();

      goto LABEL_18;
    }
  }

  else
  {
    v37 = a3;
    v36 = sub_22F740DF0();
  }

  v38 = 0;
LABEL_18:
  v39 = [objc_allocWithZone(MEMORY[0x277D3ADA0]) initWithText:v36 locationNameByCategory:v38];

  [v39 setUserControlledCategoriesUseWildcard_];
  if (*(a8 + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v33;
    sub_22F16BCD4(a8, sub_22F16AC94, 0, isUniquelyReferenced_nonNull_native, &v56);

    v33 = v56;
  }

  else
  {
  }

  v41 = [objc_msgSend(a5 locationOrAreaNodeCollection)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v42 = dbl_22F772948[v14];
  v43 = type metadata accessor for PlaceZeroKeyword();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR___PGPlaceZeroKeyword_type] = 2;
  v45 = &v44[OBJC_IVAR___PGPlaceZeroKeyword_title];
  *v45 = a1;
  v45[1] = a2;
  v46 = &v44[OBJC_IVAR___PGPlaceZeroKeyword_address];
  *v46 = v37;
  v46[1] = v52;
  *&v44[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = v33;
  *&v44[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = v39;
  *&v44[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = v41;
  v44[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = v14;
  *&v44[OBJC_IVAR___PGPlaceZeroKeyword_score] = v42;
  *&v44[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = a9;
  v55.receiver = v44;
  v55.super_class = v43;
  v47 = v39;
  v48 = v41;
  v49 = a9;
  v50 = objc_msgSendSuper2(&v55, sel_init);

  return v50;
}

uint64_t _s11PhotosGraph16PlaceZeroKeywordC19searchIndexCategory3forSo08PLSearchgH0VSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_22F740E20() == a1 && v4 == a2)
  {

    return 1;
  }

  v6 = sub_22F742040();

  if (v6)
  {
    return 1;
  }

  if (sub_22F740E20() == a1 && v7 == a2)
  {

    return 2;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      return 2;
    }

    else if (sub_22F740E20() == a1 && v11 == a2)
    {

      return 3;
    }

    else
    {
      v13 = sub_22F742040();

      if (v13)
      {
        return 3;
      }

      else if (sub_22F740E20() == a1 && v14 == a2)
      {

        return 5;
      }

      else
      {
        v15 = sub_22F742040();

        if (v15)
        {
          return 5;
        }

        else if (sub_22F740E20() == a1 && v16 == a2)
        {

          return 7;
        }

        else
        {
          v17 = sub_22F742040();

          if (v17)
          {
            return 7;
          }

          else if (sub_22F740E20() == a1 && v18 == a2)
          {

            return 10;
          }

          else
          {
            v19 = sub_22F742040();

            if (v19)
            {
              return 10;
            }

            else if (sub_22F740E20() == a1 && v20 == a2)
            {

              return 12;
            }

            else
            {
              v21 = sub_22F742040();

              if (v21)
              {
                return 12;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t _s11PhotosGraph16PlaceZeroKeywordC22locationNameByCategory3forSDySo8NSNumberCSSGSo19PGGraphLocationNodeC_tFZ_0(void *a1)
{
  v50 = sub_22F73F7C0();
  v2 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = (v4 + 8);
  v5 = a1;
  v6 = MEMORY[0x277D84F98];
  v7 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  v8 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  v9 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
  while (1)
  {
    v10 = [v5 v7[262]];
    if (v10)
    {
      v11 = v10;
      v12 = sub_22F740E20();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = _s11PhotosGraph16PlaceZeroKeywordC19searchIndexCategory3forSo08PLSearchgH0VSS_tFZ_0(v12, v14);

    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = [v5 name];
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v18 = v8;
    v19 = v7;
    v20 = sub_22F740E20();
    v22 = v21;
    if (v15 == 12)
    {
      v23 = v48;
      sub_22F73F780();
      v24 = sub_22F73F730();
      (*v49)(v23, v50);
      v25 = [v24 localizedStringForCountryCode_];

      if (v25)
      {

        v20 = sub_22F740E20();
        v22 = v26;
      }
    }

    else
    {
    }

    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v6;
    v29 = sub_22F122BD4(v27);
    v31 = v6[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      break;
    }

    v35 = v30;
    if (v6[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = v29;
        sub_22F1344C0();
        v29 = v46;
      }
    }

    else
    {
      sub_22F125C90(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_22F122BD4(v27);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }
    }

    v7 = v19;
    v6 = v51;
    v8 = v18;
    if (v35)
    {
      v37 = (v51[7] + 16 * v29);
      v38 = v37[1];
      *v37 = v20;
      v37[1] = v22;

      v9 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
    }

    else
    {
      v51[(v29 >> 6) + 8] |= 1 << v29;
      *(v6[6] + 8 * v29) = v27;
      v39 = (v6[7] + 16 * v29);
      *v39 = v20;
      v39[1] = v22;
      v40 = v6[2];
      v33 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      v9 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
      if (v33)
      {
        goto LABEL_25;
      }

      v6[2] = v41;
    }

LABEL_21:
    v42 = [v5 v8[421]];
    v43 = [v42 v9[146]];

    v44 = [v43 anyNode];
    v45 = v44;

    if (!v45)
    {
      return v6;
    }

    v5 = v45;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

unint64_t sub_22F16B81C()
{
  result = qword_27DAB15F0;
  if (!qword_27DAB15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB15F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceZeroKeyword.PlaceZeroKeywordKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceZeroKeyword.PlaceZeroKeywordKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22F16BC6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F16BCD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_22F2BB620(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_22F107D08(v49, v47);
  v14 = *a5;
  result = sub_22F1229E8(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_22F125CA4(v20, a4 & 1);
    v22 = *a5;
    result = sub_22F1229E8(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22F7420C0();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_22F1344D4();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_22F13A100(*(*a5 + 56) + 32 * result, v46);
    __swift_destroy_boxed_opaque_existential_0(v47);

    v26 = *(v24 + 56);
    __swift_destroy_boxed_opaque_existential_0((v26 + v25));
    sub_22F107D08(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_22F107D08(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_22F2BB620(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_22F107D08(v49, v47);
        v35 = *a5;
        result = sub_22F1229E8(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_22F125CA4(v39, 1);
          v40 = *a5;
          result = sub_22F1229E8(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_22F13A100(*(*a5 + 56) + 32 * result, v46);
          __swift_destroy_boxed_opaque_existential_0(v47);

          v34 = *(v32 + 56);
          __swift_destroy_boxed_opaque_existential_0((v34 + v33));
          sub_22F107D08(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_22F107D08(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_22F2BB620(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_22F0FF590();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22F16C010()
{
  result = qword_2810A8EC8;
  if (!qword_2810A8EC8)
  {
    sub_22F120634(255, &qword_2810A8ED0, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A8EC8);
  }

  return result;
}

uint64_t Atomic.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t Atomic.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F16C1FC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_22F16C2FC(void *a1, void *a2, char *a3, void *a4)
{
  v5 = v4;
  v96 = a2;
  v93 = sub_22F73F690();
  v97 = *(v93 - 8);
  v9 = v97[8];
  MEMORY[0x28223BE20](v93);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v85 - v13;
  v15 = sub_22F73F470();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v90 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v85 - v20;
  v22 = OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_photosChallengeInferredSuggestsSharing;
  *(v5 + 16) = a4;
  *(v5 + v22) = 2;
  v95 = a4;
  v23 = [a1 sharedLibraryDiagnostics];
  if (!v23)
  {
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v69 = sub_22F740B90();
    __swift_project_value_buffer(v69, qword_27DAD0E10);
    (*(v16 + 16))(v21, a3, v15);
    v70 = sub_22F740B70();
    v71 = sub_22F7415E0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v16;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v91 = a1;
      v75 = v15;
      v97 = v74;
      v98 = v74;
      *v73 = 136315138;
      sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
      v76 = sub_22F742010();
      v78 = v77;
      v94 = a3;
      v79 = *(v72 + 8);
      v79(v21, v75);
      v80 = sub_22F145F20(v76, v78, &v98);

      *(v73 + 4) = v80;
      _os_log_impl(&dword_22F0FC000, v70, v71, "[SharedLibrarySimulationEvent] Initialization failed for event at %s- file does not have shared library diagnostics.", v73, 0xCu);
      v81 = v97;
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x2319033A0](v81, -1, -1);
      MEMORY[0x2319033A0](v73, -1, -1);

      v79(v94, v75);
    }

    else
    {

      v82 = *(v16 + 8);
      v82(a3, v15);
      v82(v21, v15);
    }

    type metadata accessor for PGSharedLibrarySimulationEvent();
    v83 = *(*v5 + 48);
    v84 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v92 = v15;
  v94 = a3;
  v24 = v23;
  v25 = sub_22F740CA0();
  v26 = v96;
  v27 = v25;

  *(v5 + 24) = v27;
  *(v5 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset) = v26;
  v96 = v26;
  result = [v96 libraryScopeProperties];
  if (result)
  {
    v29 = result;
    v30 = [result assetIsPublishedToLibraryScope];

    *(v5 + 40) = v30;
    *(v5 + 32) = [a1 sharedLibraryMode];
    v31 = *(v16 + 16);
    v86 = OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_mdataFilePath;
    v87 = v31;
    v91 = a1;
    v32 = v94;
    v33 = v92;
    v88 = (v16 + 16);
    (v31)(v5 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_mdataFilePath, v94, v92);
    v34 = sub_22F73F450();
    v35 = (v5 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_name);
    *v35 = v34;
    v35[1] = v36;
    v37 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    *(v5 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_dateFormatter) = v37;
    v38 = v37;
    v39 = sub_22F740DF0();
    [v38 setDateFormat_];

    sub_22F16CC5C(v14);
    sub_22F16D08C();
    LOBYTE(v38) = sub_22F73F5D0();
    v40 = v14;
    v42 = v97 + 1;
    v41 = v97[1];
    v43 = v93;
    v41(v11, v93);
    v97 = v42;
    v89 = v41;
    v41(v40, v43);
    if ((v38 & 1) == 0)
    {
      (*(v16 + 8))(v32, v33);

      return v5;
    }

    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v44 = sub_22F740B90();
    __swift_project_value_buffer(v44, qword_27DAD0E10);

    v45 = sub_22F740B70();
    v46 = sub_22F7415E0();

    v47 = os_log_type_enabled(v45, v46);
    v48 = v92;
    if (v47)
    {
      v49 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v98 = v85;
      *v49 = 136315650;
      v50 = v5 + v86;
      LODWORD(v86) = v46;
      v51 = v90;
      (v87)(v90, v50, v48);
      sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
      v87 = v45;
      v52 = sub_22F742010();
      v53 = v48;
      v55 = v54;
      v88 = *(v16 + 8);
      v88(v51, v53);
      v56 = sub_22F145F20(v52, v55, &v98);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      sub_22F16CC5C(v40);
      sub_22F16F480(&qword_2810AC6F8, MEMORY[0x277CC9578]);
      v57 = v93;
      v58 = sub_22F742010();
      v60 = v59;
      v61 = v89;
      v89(v40, v57);
      v62 = sub_22F145F20(v58, v60, &v98);

      *(v49 + 14) = v62;
      *(v49 + 22) = 2080;
      sub_22F16D08C();
      v63 = sub_22F742010();
      v65 = v64;
      v61(v40, v57);
      v66 = sub_22F145F20(v63, v65, &v98);

      *(v49 + 24) = v66;
      v67 = v87;
      _os_log_impl(&dword_22F0FC000, v87, v86, "[SharedLibrarySimulationEventFactory] Could not create event from file %s The timestamp %s was earlier than the last detection date %s!", v49, 0x20u);
      v68 = v85;
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v68, -1, -1);
      MEMORY[0x2319033A0](v49, -1, -1);

      v88(v94, v92);
    }

    else
    {

      (*(v16 + 8))(v94, v48);
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F16CC5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = *(v2 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);
  v17 = [v16 creationDate];
  if (v17)
  {
    v18 = v17;
    sub_22F73F640();

    v19 = *(v5 + 56);
    v19(v15, 0, 1, v4);
    sub_22F15FCF0(v15);
  }

  else
  {
    v37 = a1;
    v19 = *(v5 + 56);
    v19(v15, 1, 1, v4);
    sub_22F15FCF0(v15);
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v20 = sub_22F740B90();
    __swift_project_value_buffer(v20, qword_27DAD0E10);

    v21 = sub_22F740B70();
    v22 = sub_22F7415E0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v34 = v23;
      v36 = swift_slowAlloc();
      v38 = v36;
      *v23 = 136315138;
      v35 = v22;
      sub_22F73F470();
      sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
      v24 = sub_22F742010();
      v26 = sub_22F145F20(v24, v25, &v38);

      v27 = v34;
      *(v34 + 1) = v26;
      _os_log_impl(&dword_22F0FC000, v21, v35, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v27, 0xCu);
      v28 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x2319033A0](v28, -1, -1);
      MEMORY[0x2319033A0](v27, -1, -1);
    }

    a1 = v37;
  }

  v29 = [v16 creationDate];
  if (v29)
  {
    v30 = v29;
    sub_22F73F640();

    v31 = *(v5 + 32);
    v31(v13, v8, v4);
    v19(v13, 0, 1, v4);
    return (v31)(a1, v13, v4);
  }

  else
  {
    v19(v13, 1, 1, v4);
    sub_22F73F650();
    result = (*(v5 + 48))(v13, 1, v4);
    if (result != 1)
    {
      return sub_22F15FCF0(v13);
    }
  }

  return result;
}

void sub_22F16D08C()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (*(v2 + 16))
  {
    v3 = sub_22F1229E8(0xD000000000000020, 0x800000022F78F850);
    if (v4)
    {
      sub_22F13A100(*(v2 + 56) + 32 * v3, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(v18 + 16) && (v5 = sub_22F1229E8(0xD00000000000001ELL, 0x800000022F78F920), (v6 & 1) != 0))
        {
          sub_22F13A100(*(v18 + 56) + 32 * v5, v19);

          if (swift_dynamicCast())
          {
            v7 = *(v1 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_dateFormatter);
            v8 = sub_22F740DF0();

            v9 = [v7 dateFromString_];

            if (v9)
            {
              sub_22F73F640();

              return;
            }
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v10 = sub_22F740B90();
  __swift_project_value_buffer(v10, qword_27DAD0E10);

  v11 = sub_22F740B70();
  v12 = sub_22F7415E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
    v15 = sub_22F742010();
    v17 = sub_22F145F20(v15, v16, v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22F0FC000, v11, v12, "[SharedLibrarySimulationEvent] Could not find last detection date for event at %s.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x2319033A0](v14, -1, -1);
    MEMORY[0x2319033A0](v13, -1, -1);
  }

  sub_22F73F550();
}

void sub_22F16D388()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    goto LABEL_21;
  }

  v2 = sub_22F1229E8(0xD000000000000020, 0x800000022F78F850);
  if ((v3 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_22F13A100(*(v1 + 56) + 32 * v2, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!*(v21 + 16))
  {
    goto LABEL_20;
  }

  v4 = sub_22F1229E8(0xD000000000000022, 0x800000022F78F8F0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_22F13A100(*(v21 + 56) + 32 * v4, v22);

  if (swift_dynamicCast())
  {
    v6 = 0.0;
    if (*(v21 + 16))
    {
      v7 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v8)
      {
        sub_22F13A100(*(v21 + 56) + 32 * v7, v22);
        if (swift_dynamicCast())
        {
          v6 = v21;
        }
      }
    }

    if (*(v21 + 16))
    {
      v9 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v10)
      {
        sub_22F13A100(*(v21 + 56) + 32 * v9, v22);
        if (swift_dynamicCast())
        {
          v6 = *&v21;
        }
      }
    }

    if (*(v21 + 16))
    {
      v11 = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F78F790);
      if (v12)
      {
        sub_22F13A100(*(v21 + 56) + 32 * v11, v22);

        if ((swift_dynamicCast() & 1) != 0 && v6 == 1.0)
        {
          return;
        }

        goto LABEL_21;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v13 = sub_22F740B90();
  __swift_project_value_buffer(v13, qword_27DAD0E10);

  v14 = sub_22F740B70();
  v15 = sub_22F7415E0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22[0] = v17;
    *v16 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
    v18 = sub_22F742010();
    v20 = sub_22F145F20(v18, v19, v22);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_22F0FC000, v14, v15, "[SharedLibrarySimulationEvent] Could not find sharedLibraryLastDiscoveryLocation distance for event at %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2319033A0](v17, -1, -1);
    MEMORY[0x2319033A0](v16, -1, -1);
  }
}

uint64_t sub_22F16D74C()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = sub_22F1229E8(0xD000000000000016, 0x800000022F78F8B0);
    if (v3)
    {
      sub_22F13A100(*(v1 + 56) + 32 * v2, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(*&v17 + 16))
        {
          v4 = sub_22F1229E8(0xD000000000000016, 0x800000022F78F8D0);
          if (v5)
          {
            sub_22F13A100(*(*&v17 + 56) + 32 * v4, v18);
            if (swift_dynamicCast())
            {

              return *&v17 == 1;
            }
          }
        }

        if (*(*&v17 + 16) && (v7 = sub_22F1229E8(0xD000000000000016, 0x800000022F78F8D0), (v8 & 1) != 0))
        {
          sub_22F13A100(*(*&v17 + 56) + 32 * v7, v18);

          if (swift_dynamicCast())
          {
            return v17 == 1.0;
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  __swift_project_value_buffer(v9, qword_27DAD0E10);

  v10 = sub_22F740B70();
  v11 = sub_22F7415E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
    v14 = sub_22F742010();
    v16 = sub_22F145F20(v14, v15, v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22F0FC000, v10, v11, "[SharedLibrarySimulationEvent] Could not find shareWhenAtHomeEnabled setting for event at %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2319033A0](v13, -1, -1);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  return 1;
}

BOOL sub_22F16DA54()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = sub_22F1229E8(0xD000000000000020, 0x800000022F78F850);
    if (v3)
    {
      sub_22F13A100(*(v1 + 56) + 32 * v2, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(*&v17 + 16))
        {
          v4 = sub_22F1229E8(0xD00000000000002BLL, 0x800000022F78F880);
          if (v5)
          {
            sub_22F13A100(*(*&v17 + 56) + 32 * v4, v18);
            if (swift_dynamicCast())
            {

              return *&v17 == 1;
            }
          }
        }

        if (*(*&v17 + 16) && (v7 = sub_22F1229E8(0xD00000000000002BLL, 0x800000022F78F880), (v8 & 1) != 0))
        {
          sub_22F13A100(*(*&v17 + 56) + 32 * v7, v18);

          if (swift_dynamicCast())
          {
            return v17 == 1.0;
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  __swift_project_value_buffer(v9, qword_27DAD0E10);

  v10 = sub_22F740B70();
  v11 = sub_22F7415E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
    v14 = sub_22F742010();
    v16 = sub_22F145F20(v14, v15, v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22F0FC000, v10, v11, "[SharedLibrarySimulationEvent] Could not find sharedLibraryLastLocationAcquiredDuringTrip flag for event at %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2319033A0](v13, -1, -1);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  return 0;
}

BOOL sub_22F16DD60()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
    if (v3)
    {
      sub_22F13A100(*(v1 + 56) + 32 * v2, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(*&v22 + 16) && (v4 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F7F0), (v5 & 1) != 0) && (sub_22F13A100(*(*&v22 + 56) + 32 * v4, v23), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0), (swift_dynamicCast() & 1) != 0) || *(*&v22 + 16) && (v6 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F810), (v7 & 1) != 0) && (sub_22F13A100(*(*&v22 + 56) + 32 * v6, v23), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0), (swift_dynamicCast() & 1) != 0))
        {

          v8 = *(*&v22 + 16);

          return v8 != 0;
        }

        if (*(*&v22 + 16))
        {
          v10 = sub_22F1229E8(0xD00000000000001CLL, 0x800000022F78F830);
          if (v11)
          {
            sub_22F13A100(*(*&v22 + 56) + 32 * v10, v23);
            if (swift_dynamicCast())
            {

              return *&v22 > 0;
            }
          }
        }

        if (*(*&v22 + 16) && (v12 = sub_22F1229E8(0xD00000000000001CLL, 0x800000022F78F830), (v13 & 1) != 0))
        {
          sub_22F13A100(*(*&v22 + 56) + 32 * v12, v23);

          if (swift_dynamicCast())
          {
            return v22 > 0.0;
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v14 = sub_22F740B90();
  __swift_project_value_buffer(v14, qword_27DAD0E10);

  v15 = sub_22F740B70();
  v16 = sub_22F7415E0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v17 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
    v19 = sub_22F742010();
    v21 = sub_22F145F20(v19, v20, v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_22F0FC000, v15, v16, "[SharedLibrarySimulationEvent] Could not find hasContactInProximity array for event at %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2319033A0](v18, -1, -1);
    MEMORY[0x2319033A0](v17, -1, -1);
  }

  return 0;
}

uint64_t sub_22F16E154()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16) || (v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730), (v3 & 1) == 0) || (sub_22F13A100(*(v1 + 56) + 32 * v2, v18), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_18:
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v9 = sub_22F740B90();
    __swift_project_value_buffer(v9, qword_27DAD0E10);

    v10 = sub_22F740B70();
    v11 = sub_22F7415E0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136315138;
      sub_22F73F470();
      sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
      v14 = sub_22F742010();
      v16 = sub_22F145F20(v14, v15, v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_22F0FC000, v10, v11, "[SharedLibrarySimulationEvent] Could not find locationAuthorizationStatus for event at %s.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x2319033A0](v13, -1, -1);
      MEMORY[0x2319033A0](v12, -1, -1);
    }

    return 0;
  }

  if (!*(v17 + 16) || (v4 = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F78F7D0), (v5 & 1) == 0) || (sub_22F13A100(*(v17 + 56) + 32 * v4, v18), (swift_dynamicCast() & 1) == 0))
  {
LABEL_10:
    if (*(v17 + 16) && (v7 = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F78F7D0), (v8 & 1) != 0))
    {
      sub_22F13A100(*(v17 + 56) + 32 * v7, v18);

      result = swift_dynamicCast();
      if (result)
      {
        if ((v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (*&v17 > -2147483650.0)
          {
            if (*&v17 < 2147483650.0)
            {
              return *&v17;
            }

            goto LABEL_27;
          }

LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  result = v17;
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v17 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_10;
  }

  return result;
}