uint64_t SHMediaItem.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A950, &unk_266294EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266294E70;
  v3 = *MEMORY[0x277CDC790];
  *(inited + 32) = *MEMORY[0x277CDC790];
  v61 = v3;
  v4 = *a1;
  v5 = a1[1];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v60 = *MEMORY[0x277CDC7A8];
  v7 = *MEMORY[0x277CDC7A8];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = a1[3];
  *(inited + 80) = a1[2];
  *(inited + 88) = v8;
  v59 = *MEMORY[0x277CDC798];
  v9 = *MEMORY[0x277CDC798];
  *(inited + 104) = v6;
  *(inited + 112) = v9;
  v10 = a1[5];
  *(inited + 120) = a1[4];
  *(inited + 128) = v10;
  v58 = *MEMORY[0x277CDC760];
  v11 = *MEMORY[0x277CDC760];
  *(inited + 144) = v6;
  *(inited + 152) = v11;
  v12 = a1[7];
  *(inited + 160) = a1[6];
  *(inited + 168) = v12;
  v57 = *MEMORY[0x277CDC780];
  v13 = *MEMORY[0x277CDC780];
  *(inited + 184) = v6;
  *(inited + 192) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A960, &qword_266294EB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_266294E80;
  v15 = a1[9];
  *(v14 + 32) = a1[8];
  *(v14 + 40) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A968, &qword_266294EB8);
  *(inited + 200) = v14;
  v56 = *MEMORY[0x277CDC750];
  v17 = *MEMORY[0x277CDC750];
  *(inited + 224) = v16;
  *(inited + 232) = v17;
  v18 = a1[11];
  *(inited + 240) = a1[10];
  *(inited + 248) = v18;
  v55 = *MEMORY[0x277CDC758];
  v19 = *MEMORY[0x277CDC758];
  *(inited + 264) = v6;
  *(inited + 272) = v19;
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  v21 = matched[10];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  *(inited + 304) = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 280));
  sub_2662794E4(a1 + v21, boxed_opaque_existential_0, &qword_28006A970, &qword_266294EC0);
  v54 = *MEMORY[0x277CDC7B8];
  *(inited + 312) = *MEMORY[0x277CDC7B8];
  v24 = matched[11];
  *(inited + 344) = v22;
  v25 = __swift_allocate_boxed_opaque_existential_0((inited + 320));
  sub_2662794E4(a1 + v24, v25, &qword_28006A970, &qword_266294EC0);
  v26 = *MEMORY[0x277CDC768];
  *(inited + 352) = *MEMORY[0x277CDC768];
  v27 = matched[12];
  *(inited + 384) = v22;
  v28 = __swift_allocate_boxed_opaque_existential_0((inited + 360));
  sub_2662794E4(a1 + v27, v28, &qword_28006A970, &qword_266294EC0);
  v29 = *MEMORY[0x277CDC7B0];
  *(inited + 392) = *MEMORY[0x277CDC7B0];
  v30 = matched[13];
  *(inited + 424) = v22;
  v31 = __swift_allocate_boxed_opaque_existential_0((inited + 400));
  sub_2662794E4(a1 + v30, v31, &qword_28006A970, &qword_266294EC0);
  v32 = *MEMORY[0x277CDC770];
  *(inited + 432) = *MEMORY[0x277CDC770];
  v33 = *(a1 + matched[14]);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A978, &qword_266294EC8);
  *(inited + 440) = v33;
  v35 = *MEMORY[0x277CDC788];
  *(inited + 464) = v34;
  *(inited + 472) = v35;
  v36 = (a1 + matched[15]);
  v38 = *v36;
  v37 = v36[1];
  *(inited + 504) = v6;
  *(inited + 480) = v38;
  *(inited + 488) = v37;

  v39 = v61;

  v40 = v60;

  v41 = v59;

  v42 = v58;

  v43 = v57;

  v44 = v56;

  v45 = v55;
  v46 = v54;
  v47 = v26;
  v48 = v29;
  v49 = v32;
  v50 = v35;
  v51 = sub_266278FA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A980, &qword_266294ED0);
  swift_arrayDestroy();
  v52 = sub_266277928(v51);
  sub_2662790DC(a1);
  return v52;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_266277928(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9B8, &qword_266295080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266294E90;
  *(inited + 32) = sub_26629484C();
  v3 = *MEMORY[0x277CDC7A0];
  *(inited + 40) = *MEMORY[0x277CDC7A0];
  v4 = v3;
  v5 = sub_26629485C();
  v6 = *MEMORY[0x277CDC778];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = v6;
  v8 = sub_266279268(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9C0, &qword_266295088);
  swift_arrayDestroy();
  v9 = 0;
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v13;
LABEL_10:
    v13 = (v15 - 1) & v15;
    if (a1[2])
    {
      v97 = (v15 - 1) & v15;
      v17 = (v9 << 9) | (8 * __clz(__rbit64(v15)));
      v18 = *(*(v8 + 56) + v17);
      v19 = *(*(v8 + 48) + v17);
      v20 = v18;
      v21 = sub_266278F00(v19, sub_266278CB0);
      if (v22)
      {
        sub_266279374(a1[7] + 32 * v21, v101);
        sub_266279374(v101, &v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9C8, &qword_266295090);
        if (swift_dynamicCast())
        {
          v23 = *&v98[0];
          v24 = *(*&v98[0] + 16);
          if (v24)
          {
            v92 = v20;
            v94 = v8;
            *&v99 = MEMORY[0x277D84F90];
            sub_266278DB4(0, v24, 0);
            v25 = v99;
            v26 = (v23 + 40);
            do
            {
              v27 = [objc_allocWithZone(MEMORY[0x277CDC738]) initWithLowerBound:*(v26 - 1) upperBound:*v26];
              *&v99 = v25;
              v29 = *(v25 + 16);
              v28 = *(v25 + 24);
              if (v29 >= v28 >> 1)
              {
                v90 = v27;
                sub_266278DB4((v28 > 1), v29 + 1, 1);
                v27 = v90;
                v25 = v99;
              }

              *(v25 + 16) = v29 + 1;
              *(v25 + 8 * v29 + 32) = v27;
              v26 += 2;
              --v24;
            }

            while (v24);

            v20 = v92;
            v8 = v94;
          }

          else
          {

            v25 = MEMORY[0x277D84F90];
          }

          *(&v100 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9E0, &qword_2662950A8);
          *&v99 = v25;
          sub_2662793D0(&v99, v98);
          v48 = a1;
          v49 = v20;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = sub_266278F00(v49, sub_266278CB0);
          v53 = v48[2];
          v54 = (v52 & 1) == 0;
          v55 = __OFADD__(v53, v54);
          v56 = v53 + v54;
          if (v55)
          {
            goto LABEL_68;
          }

          v57 = v52;
          if (v48[3] >= v56)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_37;
            }

            v75 = v51;
            sub_266278698();
            v51 = v75;
            if ((v57 & 1) == 0)
            {
              goto LABEL_54;
            }

LABEL_38:
            v59 = v48;
            v60 = (v48[7] + 32 * v51);
            __swift_destroy_boxed_opaque_existential_0(v60);
            sub_2662793D0(v98, v60);
          }

          else
          {
            sub_266278818(v56, isUniquelyReferenced_nonNull_native);
            v51 = sub_266278F00(v49, sub_266278CB0);
            if ((v57 & 1) != (v58 & 1))
            {
              goto LABEL_74;
            }

LABEL_37:
            if (v57)
            {
              goto LABEL_38;
            }

LABEL_54:
            v48[(v51 >> 6) + 8] |= 1 << v51;
            *(v48[6] + 8 * v51) = v49;
            sub_2662793D0(v98, (v48[7] + 32 * v51));
            v76 = v48[2];
            v55 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v55)
            {
              goto LABEL_71;
            }

            v59 = v48;
            v48[2] = v77;
          }

          v61 = v59;
          goto LABEL_60;
        }

        sub_266279374(v101, &v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9D0, &qword_266295098);
        if (swift_dynamicCast())
        {
          v30 = *&v98[0];
          v31 = *(*&v98[0] + 16);
          if (v31)
          {
            v93 = v20;
            v95 = v8;
            *&v98[0] = MEMORY[0x277D84F90];
            sub_266278DB4(0, v31, 0);
            v32 = *&v98[0];
            v33 = (v30 + 36);
            do
            {
              v34 = [objc_allocWithZone(MEMORY[0x277CDC738]) initWithLowerBound:*(v33 - 1) upperBound:*v33];
              *&v98[0] = v32;
              v36 = *(v32 + 16);
              v35 = *(v32 + 24);
              if (v36 >= v35 >> 1)
              {
                v91 = v34;
                sub_266278DB4((v35 > 1), v36 + 1, 1);
                v34 = v91;
                v32 = *&v98[0];
              }

              *(v32 + 16) = v36 + 1;
              *(v32 + 8 * v36 + 32) = v34;
              v33 += 2;
              --v31;
            }

            while (v31);

            v20 = v93;
            v8 = v95;
          }

          else
          {

            v32 = MEMORY[0x277D84F90];
          }

          *(&v100 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9E0, &qword_2662950A8);
          *&v99 = v32;
          sub_2662793D0(&v99, v98);
          v61 = a1;
          v65 = v20;
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v67 = sub_266278F00(v65, sub_266278CB0);
          v69 = v61[2];
          v70 = (v68 & 1) == 0;
          v55 = __OFADD__(v69, v70);
          v71 = v69 + v70;
          if (v55)
          {
            goto LABEL_69;
          }

          v72 = v68;
          if (v61[3] < v71)
          {
            sub_266278818(v71, v66);
            v67 = sub_266278F00(v65, sub_266278CB0);
            if ((v72 & 1) != (v73 & 1))
            {
              goto LABEL_74;
            }

            goto LABEL_51;
          }

          if (v66)
          {
LABEL_51:
            if (v72)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v79 = v67;
            sub_266278698();
            v67 = v79;
            if (v72)
            {
LABEL_52:
              v74 = (v61[7] + 32 * v67);
              __swift_destroy_boxed_opaque_existential_0(v74);
              sub_2662793D0(v98, v74);

              goto LABEL_60;
            }
          }

          v61[(v67 >> 6) + 8] |= 1 << v67;
          *(v61[6] + 8 * v67) = v65;
          sub_2662793D0(v98, (v61[7] + 32 * v67));
          v80 = v61[2];
          v55 = __OFADD__(v80, 1);
          v81 = v80 + 1;
          if (v55)
          {
            goto LABEL_73;
          }

          v61[2] = v81;
          goto LABEL_60;
        }

        sub_266279374(v101, &v99);
        v37 = a1;
        v38 = v20;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *&v98[0] = v37;
        v41 = sub_266278F00(v38, sub_266278CB0);
        v42 = v37[2];
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_70;
        }

        if (v37[3] >= v44)
        {
          if ((v39 & 1) == 0)
          {
            v78 = v40;
            sub_266278698();
            v40 = v78;
          }
        }

        else
        {
          v96 = v40;
          sub_266278818(v44, v39);
          v45 = sub_266278F00(v38, sub_266278CB0);
          v47 = v46 & 1;
          v40 = v96;
          if ((v96 & 1) != v47)
          {
            goto LABEL_74;
          }

          v41 = v45;
        }

        v61 = *&v98[0];
        if (v40)
        {
          v62 = (*(*&v98[0] + 56) + 32 * v41);
          __swift_destroy_boxed_opaque_existential_0(v62);
          sub_2662793D0(&v99, v62);
        }

        else
        {
          *(*&v98[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
          *(v61[6] + 8 * v41) = v38;
          sub_2662793D0(&v99, (v61[7] + 32 * v41));
          v63 = v61[2];
          v55 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v55)
          {
            goto LABEL_72;
          }

          v61[2] = v64;
        }

LABEL_60:
        v82 = sub_266278F00(v19, sub_266278CB0);
        if (v83)
        {
          v84 = v82;
          v85 = swift_isUniquelyReferenced_nonNull_native();
          *&v98[0] = v61;
          if ((v85 & 1) == 0)
          {
            sub_266278698();
            v61 = *&v98[0];
          }

          sub_2662793D0((v61[7] + 32 * v84), &v99);
          a1 = v61;
          sub_266278AE8(v84, v61);

          __swift_destroy_boxed_opaque_existential_0(v101);
        }

        else
        {
          a1 = v61;
          __swift_destroy_boxed_opaque_existential_0(v101);

          v99 = 0u;
          v100 = 0u;
        }

        sub_26627942C(&v99);
        v13 = v97;
      }

      else
      {

        v13 = v97;
      }
    }
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      type metadata accessor for SHMediaItemProperty();
      sub_266279224(&qword_28006A9A8);
      v87 = sub_2662947CC();
      v88 = [ObjCClassFromMetadata mediaItemWithProperties_];

      return v88;
    }

    v15 = *(v10 + 8 * v16);
    ++v9;
    if (v15)
    {
      v9 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  type metadata accessor for SHMediaItemProperty();
  result = sub_266294A0C();
  __break(1u);
  return result;
}

uint64_t sub_2662782C4(uint64_t a1, id *a2)
{
  result = sub_2662947EC();
  *a2 = 0;
  return result;
}

uint64_t sub_26627833C(uint64_t a1, id *a2)
{
  v3 = sub_2662947FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2662783BC@<X0>(uint64_t *a1@<X8>)
{
  sub_26629480C();
  v2 = sub_2662947DC();

  *a1 = v2;
  return result;
}

uint64_t sub_266278400()
{
  v1 = *v0;
  v2 = sub_26629480C();
  v3 = MEMORY[0x266780A80](v2);

  return v3;
}

uint64_t sub_26627843C()
{
  v1 = *v0;
  sub_26629480C();
  sub_26629481C();
}

uint64_t sub_266278490()
{
  v1 = *v0;
  sub_26629480C();
  sub_266294A1C();
  sub_26629481C();
  v2 = sub_266294A3C();

  return v2;
}

uint64_t sub_266278504(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26629480C();
  v6 = v5;
  if (v4 == sub_26629480C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2662949FC();
  }

  return v9 & 1;
}

uint64_t sub_26627858C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2662947DC();

  *a2 = v5;
  return result;
}

uint64_t sub_2662785D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26629480C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_266278600(uint64_t a1)
{
  v2 = sub_266279224(&qword_28006A9A8);
  v3 = sub_266279224(&qword_28006A9B0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

id sub_266278698()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9F8, &qword_2662950B8);
  v2 = *v0;
  v3 = sub_2662948AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_266279374(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2662793D0(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_266278818(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9F8, &qword_2662950B8);
  v37 = a2;
  result = sub_2662948BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_2662793D0(v23, v38);
      }

      else
      {
        sub_266279374(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_26629480C();
      sub_266294A1C();
      sub_26629481C();
      v26 = sub_266294A3C();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_2662793D0(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void sub_266278AE8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26629487C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_26629480C();
      sub_266294A1C();
      v12 = v11;
      sub_26629481C();
      v13 = sub_266294A3C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_266278CB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26629480C();
      v9 = v8;
      if (v7 == sub_26629480C() && v9 == v10)
      {
        break;
      }

      v12 = sub_2662949FC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_266278DB4(void *a1, int64_t a2, char a3)
{
  result = sub_266278DD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266278DD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9E8, &qword_2662950B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3)) | 1;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_266279494();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_266278F00(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 40);
  sub_26629480C();
  sub_266294A1C();
  sub_26629481C();
  v5 = sub_266294A3C();

  return a2(a1, v5);
}

unint64_t sub_266278FA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9F8, &qword_2662950B8);
    v3 = sub_2662948CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662794E4(v4, &v11, &qword_28006A980, &qword_266294ED0);
      v5 = v11;
      result = sub_266278F00(v11, sub_266278CB0);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2662793D0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2662790DC(uint64_t a1)
{
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

void type metadata accessor for SHMediaItemProperty()
{
  if (!qword_28006A988)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28006A988);
    }
  }
}

uint64_t sub_266279224(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SHMediaItemProperty();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266279268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA00, &unk_2662950C0);
    v3 = sub_2662948CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_266278F00(v6, sub_266278CB0);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_266279374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2662793D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26627942C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9D8, &qword_2662950A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266279494()
{
  result = qword_28006A9F0;
  if (!qword_28006A9F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28006A9F0);
  }

  return result;
}

uint64_t sub_2662794E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t SiriAudioDisambiguationSnippetModel.isAppDisambiguation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  sub_26629478C();
  return v1;
}

uint64_t (*SiriAudioDisambiguationSnippetModel.isAppDisambiguation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioDisambiguationSnippetModel.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 20));
}

uint64_t SiriAudioDisambiguationSnippetModel.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SiriAudioDisambiguationSnippetModel.directInvocation.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SiriAudioDisambiguationSnippetModel.directInvocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAudioDisambiguationSnippetModel.title.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SiriAudioDisambiguationSnippetModel.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAudioDisambiguationSnippetModel.init(title:items:directInvocation:isAppDisambiguation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SiriAudioDisambiguationSnippetModel(0);
  v13 = (a6 + v12[7]);
  *v13 = a1;
  v13[1] = a2;
  *(a6 + v12[5]) = a3;
  v14 = (a6 + v12[6]);
  *v14 = a4;
  v14[1] = a5;
  return sub_26629476C();
}

uint64_t _s19SiriAudioSnippetKit0ab12ActionButtonC4RoleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_266294A1C();
  MEMORY[0x266780C80](v1);
  return sub_266294A3C();
}

uint64_t sub_2662799F4()
{
  v1 = *v0;
  sub_266294A1C();
  MEMORY[0x266780C80](v1);
  return sub_266294A3C();
}

unint64_t sub_266279A38()
{
  v1 = 0x736D657469;
  v2 = 0x656C746974;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_266279AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26627CE40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266279AE4(uint64_t a1)
{
  v2 = sub_266279E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266279B20(uint64_t a1)
{
  v2 = sub_266279E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioDisambiguationSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA10, &qword_2662950D8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266279E18();
  sub_266294A5C();
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  sub_26627A38C(&qword_28006AA20);
  sub_2662949EC();
  if (!v2)
  {
    v11 = type metadata accessor for SiriAudioDisambiguationSnippetModel(0);
    v20 = *(v3 + v11[5]);
    v19[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA28, &qword_2662950E0);
    sub_26627A3FC(&qword_28006AA30, &qword_28006AA38);
    sub_2662949EC();
    v12 = (v3 + v11[6]);
    v13 = *v12;
    v14 = v12[1];
    v19[14] = 2;
    sub_2662949CC();
    v15 = (v3 + v11[7]);
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 3;
    sub_2662949CC();
  }

  return (*(v6 + 8))(v9, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_266279E18()
{
  result = qword_28006AA18;
  if (!qword_28006AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AA18);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_266279ED4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriAudioDisambiguationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v30 = *(v4 - 8);
  v5 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v31 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA40, &qword_2662950E8);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v28 - v9;
  v11 = type metadata accessor for SiriAudioDisambiguationSnippetModel(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20]();
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266279E18();
  v34 = v10;
  sub_266294A4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v14;
  v17 = v30;
  v39 = 0;
  sub_26627A38C(&qword_28006AA48);
  v18 = v31;
  sub_26629496C();
  (*(v17 + 32))(v14, v18, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA28, &qword_2662950E0);
  v38 = 1;
  sub_26627A3FC(&qword_28006AA50, &qword_28006AA58);
  sub_26629496C();
  *&v14[v11[5]] = v35;
  v37 = 2;
  v19 = sub_26629494C();
  v20 = a1;
  v21 = (v16 + v11[6]);
  *v21 = v19;
  v21[1] = v22;
  v36 = 3;
  v23 = sub_26629494C();
  v25 = v24;
  (*(v32 + 8))(v34, v33);
  v26 = (v16 + v11[7]);
  *v26 = v23;
  v26[1] = v25;
  sub_26627BBD8(v16, v29, type metadata accessor for SiriAudioDisambiguationSnippetModel);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return sub_26627BC40(v16, type metadata accessor for SiriAudioDisambiguationSnippetModel);
}

uint64_t sub_26627A38C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006AA08, &qword_2662950D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26627A3FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006AA28, &qword_2662950E0);
    sub_26627A498(a2, type metadata accessor for SiriAudioDisambiguationItemModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26627A498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SiriAudioDisambiguationItemModel.id.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t sub_26627A54C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*SiriAudioDisambiguationItemModel.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627A66C;
}

uint64_t SiriAudioDisambiguationItemModel.title.getter()
{
  v0 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v2;
}

uint64_t sub_26627A6C4@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_26627A72C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t SiriAudioDisambiguationItemModel.title.setter()
{
  v0 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*SiriAudioDisambiguationItemModel.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioDisambiguationItemModel.subtitle.getter()
{
  v0 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  sub_26629478C();
  return v2;
}

double sub_26627A8E4@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  sub_26629478C();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_26627A94C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  return sub_26629479C();
}

uint64_t SiriAudioDisambiguationItemModel.subtitle.setter()
{
  v0 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  return sub_26629479C();
}

uint64_t (*SiriAudioDisambiguationItemModel.subtitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioDisambiguationItemModel.imageURL.getter()
{
  v0 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

uint64_t sub_26627AB04()
{
  v0 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

uint64_t sub_26627AB5C(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_26627AD08(a1, &v9 - v6);
  sub_26627AD08(v7, v5);
  LODWORD(a1) = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(v7);
}

uint64_t SiriAudioDisambiguationItemModel.imageURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26627AD08(a1, &v7 - v4);
  v5 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(a1);
}

uint64_t sub_26627AD08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26627AD78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*SiriAudioDisambiguationItemModel.imageURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioDisambiguationItemModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

void sub_26627AE7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26627AED4()
{
  v1 = *v0;
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_26627AF88()
{
  *v0;
  *v0;
  *v0;
  sub_26629481C();
}

uint64_t sub_26627B028()
{
  v1 = *v0;
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_26627B0D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26627CFAC();
  *a2 = result;
  return result;
}

void sub_26627B108(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x656C746974627573;
  if (*v1 != 2)
  {
    v4 = 0x4C52556567616D69;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_26627B178()
{
  v1 = 25705;
  v2 = 0x656C746974627573;
  if (*v0 != 2)
  {
    v2 = 0x4C52556567616D69;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_26627B1E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26627CFAC();
  *a1 = result;
  return result;
}

uint64_t sub_26627B218(uint64_t a1)
{
  v2 = sub_26627BAE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627B254(uint64_t a1)
{
  v2 = sub_26627BAE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioDisambiguationItemModel.init(id:title:subtitle:imageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v26 = a6;
  v23 = a3;
  v24 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = type metadata accessor for SiriAudioDisambiguationItemModel(0);
  v18 = v17[6];
  v27 = 0;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
  sub_26629476C();
  v19 = v17[7];
  v20 = sub_26629470C();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  sub_26627AD08(v16, v14);
  sub_26629476C();
  sub_26627AD78(v16);
  v27 = a1;
  v28 = a2;
  sub_26629476C();
  v21 = v17[5];
  v27 = v23;
  v28 = v24;
  sub_26629476C();
  v27 = v25;
  v28 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  sub_26629479C();
  sub_26627AD08(a7, v16);
  sub_26627AD08(v16, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  sub_26627AD78(a7);
  return sub_26627AD78(v16);
}

uint64_t SiriAudioDisambiguationItemModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA78, &qword_266295118);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = type metadata accessor for SiriAudioDisambiguationItemModel(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 24);
  v51 = 0uLL;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
  v52 = v21;
  sub_26629476C();
  v23 = *(v16 + 28);
  v24 = sub_26629470C();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  sub_26627AD08(v15, v13);
  v49 = v23;
  v47 = v20;
  sub_26629476C();
  sub_26627AD78(v15);
  v26 = a1[3];
  v25 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_26627BAE8();
  v45 = v6;
  v27 = v46;
  sub_266294A4C();
  if (v27)
  {
    v30 = v47;
    __swift_destroy_boxed_opaque_existential_0(v48);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    (*(*(v31 - 8) + 8))(&v30[v52], v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    return (*(*(v32 - 8) + 8))(&v30[v49], v32);
  }

  else
  {
    v46 = v22;
    v29 = v43;
    v28 = v44;
    LOBYTE(v51) = 0;
    *&v51 = sub_26629494C();
    *(&v51 + 1) = v33;
    v34 = v47;
    sub_26629476C();
    LOBYTE(v51) = 1;
    v35 = sub_26629494C();
    v36 = *(v16 + 20);
    *&v51 = v35;
    *(&v51 + 1) = v37;
    sub_26629476C();
    LOBYTE(v50) = 2;
    sub_26627C060(&qword_28006AA88);
    sub_26629496C();
    v46 = 0;
    v50 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    sub_26629479C();
    LOBYTE(v51) = 3;
    sub_26627BB3C(&qword_28006AA90, &qword_28006AA98);
    v38 = v42;
    sub_26629496C();
    sub_26627AD08(v38, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    sub_26629479C();
    sub_26627AD78(v38);
    (*(v29 + 8))(v45, v28);
    sub_26627BBD8(v34, v41, type metadata accessor for SiriAudioDisambiguationItemModel);
    __swift_destroy_boxed_opaque_existential_0(v48);
    return sub_26627BC40(v34, type metadata accessor for SiriAudioDisambiguationItemModel);
  }
}

unint64_t sub_26627BAE8()
{
  result = qword_28006AA80;
  if (!qword_28006AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AA80);
  }

  return result;
}

uint64_t sub_26627BB3C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006A970, &qword_266294EC0);
    sub_26627A498(a2, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26627BBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26627BC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriAudioDisambiguationItemModel.encode(to:)(void *a1)
{
  v2 = v1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v4 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AAA0, &qword_266295120);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26627BAE8();
  sub_266294A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  LOBYTE(v24) = 0;
  v12 = v23;
  sub_2662949CC();
  if (v12)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v23 = v7;

    v14 = type metadata accessor for SiriAudioDisambiguationItemModel(0);
    v15 = v2 + v14[5];
    sub_26629478C();
    LOBYTE(v24) = 1;
    sub_2662949CC();

    v16 = v14[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    sub_26629478C();
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
    sub_26627C060(&qword_28006AAA8);
    sub_2662949EC();

    v17 = v23;
    v18 = v14[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    v19 = v21;
    sub_26629478C();
    LOBYTE(v24) = 3;
    sub_26627BB3C(&qword_28006AAB0, &qword_28006AAB8);
    sub_2662949EC();
    sub_26627AD78(v19);
    return (*(v17 + 8))(v10, 0);
  }
}

uint64_t sub_26627C060(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006A958, &qword_266295110);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26627C1F8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26627C274@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  result = sub_26629478C();
  *a1 = v3;
  return result;
}

uint64_t sub_26627C2C4(char *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  return sub_26629479C();
}

uint64_t sub_26627C314@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26627C394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26627C470(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_26627C534()
{
  sub_26627CA08(319, &qword_28006AAE0);
  if (v0 <= 0x3F)
  {
    sub_26627C5D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26627C5D8()
{
  if (!qword_28006AAE8)
  {
    type metadata accessor for SiriAudioDisambiguationItemModel(255);
    v0 = sub_26629483C();
    if (!v1)
    {
      atomic_store(v0, &qword_28006AAE8);
    }
  }
}

uint64_t sub_26627C644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_26627C7BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

void sub_26627C92C()
{
  sub_26627CA08(319, &qword_28006AB00);
  if (v0 <= 0x3F)
  {
    sub_26627CA54(319, &qword_28006AB08, &qword_28006A958, &qword_266295110);
    if (v1 <= 0x3F)
    {
      sub_26627CA54(319, &qword_28006AB10, &qword_28006A970, &qword_266294EC0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26627CA08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2662947AC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26627CA54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2662947AC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SiriAudioPunchOutRowSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriAudioPunchOutRowSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26627CC34()
{
  result = qword_28006AB18;
  if (!qword_28006AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB18);
  }

  return result;
}

unint64_t sub_26627CC8C()
{
  result = qword_28006AB20;
  if (!qword_28006AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB20);
  }

  return result;
}

unint64_t sub_26627CCE4()
{
  result = qword_28006AB28;
  if (!qword_28006AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB28);
  }

  return result;
}

unint64_t sub_26627CD3C()
{
  result = qword_28006AB30;
  if (!qword_28006AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB30);
  }

  return result;
}

unint64_t sub_26627CD94()
{
  result = qword_28006AB38;
  if (!qword_28006AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB38);
  }

  return result;
}

unint64_t sub_26627CDEC()
{
  result = qword_28006AB40;
  if (!qword_28006AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB40);
  }

  return result;
}

uint64_t sub_26627CE40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000266298310 == a2;
  if (v3 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000266298330 == a2 || (sub_2662949FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2662949FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_26627CFAC()
{
  v0 = sub_2662948EC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26627D13C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t SiriAudioMediaPlayerSnippetModel.init(mediaPlayerModel:alternativesModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MediaPlayerModel(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for SiriAudioMediaPlayerSnippetModel(0) + 20);
  v8 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  sub_26627D13C(a1, a3, &qword_28006AB48, &qword_266295550);
  return sub_26627D13C(a2, a3 + v7, &qword_28006AB50, &qword_266295558);
}

unint64_t sub_26627D320()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_26627D358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000266298350 == a2 || (sub_2662949FC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000266298370 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2662949FC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_26627D448(uint64_t a1)
{
  v2 = sub_26627D6C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627D484(uint64_t a1)
{
  v2 = sub_26627D6C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioMediaPlayerSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB58, &qword_266295560);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26627D6C0();
  sub_266294A5C();
  v11[15] = 0;
  type metadata accessor for MediaPlayerModel(0);
  sub_26627D714(&qword_28006AB68, type metadata accessor for MediaPlayerModel);
  sub_2662949BC();
  if (!v1)
  {
    v9 = *(type metadata accessor for SiriAudioMediaPlayerSnippetModel(0) + 20);
    v11[14] = 1;
    type metadata accessor for SiriAudioAlternativeSnippetModel(0);
    sub_26627D714(&qword_28006AB70, type metadata accessor for SiriAudioAlternativeSnippetModel);
    sub_2662949BC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26627D6C0()
{
  result = qword_28006AB60;
  if (!qword_28006AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB60);
  }

  return result;
}

uint64_t sub_26627D714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SiriAudioMediaPlayerSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB50, &qword_266295558);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB48, &qword_266295550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v27 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB78, &unk_266295568);
  v28 = *(v31 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v27 - v10;
  v12 = type metadata accessor for SiriAudioMediaPlayerSnippetModel(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MediaPlayerModel(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = *(v13 + 28);
  v19 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26627D6C0();
  v21 = v32;
  sub_266294A4C();
  if (!v21)
  {
    v32 = v18;
    v23 = v28;
    v22 = v29;
    v34 = 0;
    sub_26627D714(&qword_28006AB80, type metadata accessor for MediaPlayerModel);
    sub_26629493C();
    sub_26627D13C(v30, v16, &qword_28006AB48, &qword_266295550);
    v33 = 1;
    sub_26627D714(&qword_28006AB88, type metadata accessor for SiriAudioAlternativeSnippetModel);
    v24 = v22;
    v25 = v31;
    sub_26629493C();
    (*(v23 + 8))(v11, v25);
    sub_26627D13C(v24, &v16[v32], &qword_28006AB50, &qword_266295558);
    sub_26627E6E0(v16, v27, type metadata accessor for SiriAudioMediaPlayerSnippetModel);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26627E748(v16, type metadata accessor for SiriAudioMediaPlayerSnippetModel);
}

uint64_t MediaPlayerModel.routeUID.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t (*MediaPlayerModel.routeUID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t MediaPlayerModel.bundleID.getter()
{
  v0 = *(type metadata accessor for MediaPlayerModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v2;
}

uint64_t sub_26627DD18@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for MediaPlayerModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_26627DD80(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for MediaPlayerModel(0) + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t MediaPlayerModel.bundleID.setter()
{
  v0 = *(type metadata accessor for MediaPlayerModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*MediaPlayerModel.bundleID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for MediaPlayerModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627A66C;
}

uint64_t MediaPlayerModel.init(routeUID:bundleID:)()
{
  sub_26629476C();
  v0 = *(type metadata accessor for MediaPlayerModel(0) + 20);
  return sub_26629476C();
}

uint64_t sub_26627DF54()
{
  if (*v0)
  {
    return 0x4449656C646E7562;
  }

  else
  {
    return 0x4449556574756F72;
  }
}

uint64_t sub_26627DF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449556574756F72 && a2 == 0xE800000000000000;
  if (v6 || (sub_2662949FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2662949FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26627E064(uint64_t a1)
{
  v2 = sub_26627E298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627E0A0(uint64_t a1)
{
  v2 = sub_26627E298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaPlayerModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB90, &qword_266295578);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26627E298();
  sub_266294A5C();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26627E670(&qword_28006ABA0);
  sub_2662949EC();
  if (!v1)
  {
    v9 = *(type metadata accessor for MediaPlayerModel(0) + 20);
    v11[14] = 1;
    sub_2662949EC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26627E298()
{
  result = qword_28006AB98;
  if (!qword_28006AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB98);
  }

  return result;
}

uint64_t MediaPlayerModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v29 = *(v32 - 8);
  v4 = *(v29 + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = v24 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ABA8, &qword_266295580);
  v28 = *(v30 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v11 = v24 - v10;
  v12 = type metadata accessor for MediaPlayerModel(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26627E298();
  sub_266294A4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v12;
  v26 = v15;
  v18 = v28;
  v17 = v29;
  v34 = 0;
  v19 = sub_26627E670(&qword_28006ABB0);
  v20 = v30;
  sub_26629496C();
  v24[1] = v19;
  v21 = v31;
  v31 = *(v17 + 32);
  (v31)(v26, v21, v32);
  v33 = 1;
  sub_26629496C();
  (*(v18 + 8))(v11, v20);
  v22 = v26;
  (v31)(&v26[*(v25 + 20)], v7, v32);
  sub_26627E6E0(v22, v27, type metadata accessor for MediaPlayerModel);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26627E748(v22, type metadata accessor for MediaPlayerModel);
}

uint64_t sub_26627E670(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006AA60, &qword_2662950F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26627E6E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26627E748(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26627E8F8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26627E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB48, &qword_266295550);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB50, &qword_266295558);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26627EA84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB48, &qword_266295550);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB50, &qword_266295558);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_26627EB98()
{
  sub_26627EC54(319, &qword_28006ABD8, type metadata accessor for MediaPlayerModel);
  if (v0 <= 0x3F)
  {
    sub_26627EC54(319, &qword_28006ABE0, type metadata accessor for SiriAudioAlternativeSnippetModel);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26627EC54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26629486C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26627ECBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26627ED48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26627EDC4()
{
  sub_26627EE30();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26627EE30()
{
  if (!qword_28006AB00)
  {
    v0 = sub_2662947AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28006AB00);
    }
  }
}

uint64_t sub_26627EE94(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26627EF28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26627EFF8()
{
  result = qword_28006ABF8;
  if (!qword_28006ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ABF8);
  }

  return result;
}

unint64_t sub_26627F050()
{
  result = qword_28006AC00;
  if (!qword_28006AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC00);
  }

  return result;
}

unint64_t sub_26627F0A8()
{
  result = qword_28006AC08;
  if (!qword_28006AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC08);
  }

  return result;
}

unint64_t sub_26627F100()
{
  result = qword_28006AC10;
  if (!qword_28006AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC10);
  }

  return result;
}

unint64_t sub_26627F158()
{
  result = qword_28006AC18;
  if (!qword_28006AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC18);
  }

  return result;
}

unint64_t sub_26627F1B0()
{
  result = qword_28006AC20;
  if (!qword_28006AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC20);
  }

  return result;
}

BOOL SiriAudioSnippets.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioSnippets();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2662947BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a2, v8);
  LODWORD(a2) = (*(v9 + 88))(v12, v8);
  v13 = *MEMORY[0x277D61BE8];
  (*(v9 + 8))(v12, v8);
  if (a2 != v13)
  {
    return 0;
  }

  sub_26627F448(v2, v7);
  v14 = swift_getEnumCaseMultiPayload() != 2;
  sub_266280C08(v7, type metadata accessor for SiriAudioSnippets);
  return v14;
}

uint64_t type metadata accessor for SiriAudioSnippets()
{
  result = qword_28006AD40;
  if (!qword_28006AD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26627F448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioSnippets();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26627F500(uint64_t a1)
{
  v2 = sub_266280B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F53C(uint64_t a1)
{
  v2 = sub_266280B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F578(uint64_t a1)
{
  v2 = sub_266280A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F5B4(uint64_t a1)
{
  v2 = sub_266280A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F5F0()
{
  v1 = *v0;
  v2 = 0x616D7269666E6F63;
  v3 = 0x6D617A616873;
  if (v1 != 5)
  {
    v3 = 0x616C50616964656DLL;
  }

  v4 = 0x6554656C706D6973;
  if (v1 != 3)
  {
    v4 = 0x74616E7265746C61;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x75426E6F69746361;
  if (v1 != 1)
  {
    v5 = 0x6769626D61736964;
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

uint64_t sub_26627F6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266282CCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26627F724(uint64_t a1)
{
  v2 = sub_266280968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F760(uint64_t a1)
{
  v2 = sub_266280968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F79C(uint64_t a1)
{
  v2 = sub_266280BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F7D8(uint64_t a1)
{
  v2 = sub_266280BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F814(uint64_t a1)
{
  v2 = sub_266280B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F850(uint64_t a1)
{
  v2 = sub_266280B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F88C(uint64_t a1)
{
  v2 = sub_2662809BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F8C8(uint64_t a1)
{
  v2 = sub_2662809BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F904(uint64_t a1)
{
  v2 = sub_266280A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F940(uint64_t a1)
{
  v2 = sub_266280A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F97C()
{
  sub_266294A1C();
  MEMORY[0x266780C80](0);
  return sub_266294A3C();
}

uint64_t sub_26627F9C0()
{
  sub_266294A1C();
  MEMORY[0x266780C80](0);
  return sub_266294A3C();
}

uint64_t sub_26627FA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2662949FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26627FA80(uint64_t a1)
{
  v2 = sub_266280AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627FABC(uint64_t a1)
{
  v2 = sub_266280AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioSnippets.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC28, &qword_266295920);
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v2);
  v95 = &v74 - v4;
  v93 = type metadata accessor for SiriAudioMediaPlayerSnippetModel(0);
  v5 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v94 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC30, &qword_266295928);
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  MEMORY[0x28223BE20](v7);
  v90 = &v74 - v9;
  v88 = type metadata accessor for SiriAudioShazamSnippetModel(0);
  v10 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC38, &qword_266295930);
  v86 = *(v87 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v74 - v13;
  v83 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  v14 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v84 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC40, &qword_266295938);
  v81 = *(v82 - 8);
  v16 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v74 - v17;
  v78 = type metadata accessor for SiriAudioSimpleTextSnippetModel();
  v18 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v79 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC48, &qword_266295940);
  v77 = *(v105 - 8);
  v20 = *(v77 + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v74 - v21;
  v103 = type metadata accessor for SiriAudioDisambiguationSnippetModel(0);
  v22 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC50, &qword_266295948);
  v76 = *(v101 - 8);
  v24 = *(v76 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v74 - v25;
  v75 = type metadata accessor for SiriAudioActionButtonSnippetModel();
  v26 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v99 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC58, &qword_266295950);
  v74 = *(v98 - 8);
  v28 = *(v74 + 64);
  MEMORY[0x28223BE20](v98);
  v30 = &v74 - v29;
  v31 = type metadata accessor for SiriAudioConfirmationSnippetModel();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SiriAudioSnippets();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v74 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC60, &qword_266295958);
  v109 = *(v106 - 8);
  v39 = *(v109 + 64);
  MEMORY[0x28223BE20](v106);
  v41 = &v74 - v40;
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266280968();
  v107 = v41;
  sub_266294A5C();
  sub_26627F448(v108, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v108 = v31;
    v51 = v98;
    v52 = v100;
    v53 = v101;
    v54 = v104;
    v55 = v105;
    if (EnumCaseMultiPayload)
    {
      v56 = v106;
      if (EnumCaseMultiPayload == 1)
      {
        v57 = v99;
        sub_266281D4C(v38, v99, type metadata accessor for SiriAudioActionButtonSnippetModel);
        v111 = 1;
        sub_266280B60();
        v58 = v52;
        v59 = v107;
        sub_26629498C();
        sub_266281E44(&qword_28006ACB0, type metadata accessor for SiriAudioActionButtonSnippetModel);
        sub_2662949EC();
        (*(v76 + 8))(v58, v53);
        v60 = type metadata accessor for SiriAudioActionButtonSnippetModel;
      }

      else
      {
        v57 = v102;
        sub_266281D4C(v38, v102, type metadata accessor for SiriAudioDisambiguationSnippetModel);
        v112 = 2;
        sub_266280B0C();
        v59 = v107;
        sub_26629498C();
        sub_266281E44(&qword_28006AAC8, type metadata accessor for SiriAudioDisambiguationSnippetModel);
        sub_2662949EC();
        (*(v77 + 8))(v54, v55);
        v60 = type metadata accessor for SiriAudioDisambiguationSnippetModel;
      }

      sub_266280C08(v57, v60);
      return (*(v109 + 8))(v59, v56);
    }

    else
    {
      sub_266281D4C(v38, v34, type metadata accessor for SiriAudioConfirmationSnippetModel);
      v110 = 0;
      sub_266280BB4();
      v64 = v30;
      v66 = v106;
      v65 = v107;
      sub_26629498C();
      sub_266281E44(&qword_28006ACC0, type metadata accessor for SiriAudioConfirmationSnippetModel);
      sub_2662949EC();
      (*(v74 + 8))(v64, v51);
      sub_266280C08(v34, type metadata accessor for SiriAudioConfirmationSnippetModel);
      return (*(v109 + 8))(v65, v66);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      v44 = v106;
      v45 = v107;
      if (EnumCaseMultiPayload == 5)
      {
        v61 = v38;
        v47 = v89;
        sub_266281D4C(v61, v89, type metadata accessor for SiriAudioShazamSnippetModel);
        v115 = 5;
        sub_266280A10();
        v62 = v90;
        sub_26629498C();
        sub_266281E44(&qword_28006AC80, type metadata accessor for SiriAudioShazamSnippetModel);
        v63 = v92;
        sub_2662949EC();
        (*(v91 + 8))(v62, v63);
        v50 = type metadata accessor for SiriAudioShazamSnippetModel;
      }

      else
      {
        v71 = v38;
        v47 = v94;
        sub_266281D4C(v71, v94, type metadata accessor for SiriAudioMediaPlayerSnippetModel);
        v116 = 6;
        sub_2662809BC();
        v72 = v95;
        sub_26629498C();
        sub_266281E44(&qword_28006ABC0, type metadata accessor for SiriAudioMediaPlayerSnippetModel);
        v73 = v97;
        sub_2662949EC();
        (*(v96 + 8))(v72, v73);
        v50 = type metadata accessor for SiriAudioMediaPlayerSnippetModel;
      }
    }

    else
    {
      v44 = v106;
      v45 = v107;
      if (EnumCaseMultiPayload == 3)
      {
        v46 = v38;
        v47 = v79;
        sub_266281D4C(v46, v79, type metadata accessor for SiriAudioSimpleTextSnippetModel);
        v113 = 3;
        sub_266280AB8();
        v48 = v80;
        sub_26629498C();
        sub_266281E44(&qword_28006AC98, type metadata accessor for SiriAudioSimpleTextSnippetModel);
        v49 = v82;
        sub_2662949EC();
        (*(v81 + 8))(v48, v49);
        v50 = type metadata accessor for SiriAudioSimpleTextSnippetModel;
      }

      else
      {
        v68 = v38;
        v47 = v84;
        sub_266281D4C(v68, v84, type metadata accessor for SiriAudioAlternativeSnippetModel);
        v114 = 4;
        sub_266280A64();
        v69 = v85;
        sub_26629498C();
        sub_266281E44(&qword_28006AB70, type metadata accessor for SiriAudioAlternativeSnippetModel);
        v70 = v87;
        sub_2662949EC();
        (*(v86 + 8))(v69, v70);
        v50 = type metadata accessor for SiriAudioAlternativeSnippetModel;
      }
    }

    sub_266280C08(v47, v50);
    return (*(v109 + 8))(v45, v44);
  }
}

unint64_t sub_266280968()
{
  result = qword_28006AC68;
  if (!qword_28006AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC68);
  }

  return result;
}

unint64_t sub_2662809BC()
{
  result = qword_28006AC70;
  if (!qword_28006AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC70);
  }

  return result;
}

unint64_t sub_266280A10()
{
  result = qword_28006AC78;
  if (!qword_28006AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC78);
  }

  return result;
}

unint64_t sub_266280A64()
{
  result = qword_28006AC88;
  if (!qword_28006AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC88);
  }

  return result;
}

unint64_t sub_266280AB8()
{
  result = qword_28006AC90;
  if (!qword_28006AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC90);
  }

  return result;
}

unint64_t sub_266280B0C()
{
  result = qword_28006ACA0;
  if (!qword_28006ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ACA0);
  }

  return result;
}

unint64_t sub_266280B60()
{
  result = qword_28006ACA8;
  if (!qword_28006ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ACA8);
  }

  return result;
}

unint64_t sub_266280BB4()
{
  result = qword_28006ACB8;
  if (!qword_28006ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ACB8);
  }

  return result;
}

uint64_t sub_266280C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriAudioSnippets.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACC8, &qword_266295960);
  v4 = *(v3 - 8);
  v110 = v3;
  v111 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v122 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACD0, &qword_266295968);
  v108 = *(v7 - 8);
  v109 = v7;
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v7);
  v115 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACD8, &qword_266295970);
  v106 = *(v10 - 8);
  v107 = v10;
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v10);
  v114 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACE0, &qword_266295978);
  v104 = *(v13 - 8);
  v105 = v13;
  v14 = *(v104 + 64);
  MEMORY[0x28223BE20](v13);
  v112 = &v90 - v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACE8, &qword_266295980);
  v103 = *(v102 - 8);
  v16 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  v121 = &v90 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACF0, &qword_266295988);
  v100 = *(v101 - 8);
  v18 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v113 = &v90 - v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACF8, &qword_266295990);
  v98 = *(v99 - 8);
  v20 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v119 = &v90 - v21;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AD00, &qword_266295998);
  v118 = *(v120 - 8);
  v22 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v24 = &v90 - v23;
  v117 = type metadata accessor for SiriAudioSnippets();
  v25 = *(*(v117 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v117);
  v97 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v96 = &v90 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v95 = &v90 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v90 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v90 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v90 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v90 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v90 - v44;
  v47 = a1[3];
  v46 = a1[4];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_266280968();
  v48 = v124;
  sub_266294A4C();
  if (v48)
  {
    return __swift_destroy_boxed_opaque_existential_0(v123);
  }

  v91 = v40;
  v92 = v37;
  v93 = v34;
  v124 = v43;
  v49 = v119;
  v50 = v121;
  v51 = v122;
  v94 = v45;
  v52 = v120;
  v53 = sub_26629497C();
  v54 = v53;
  if (*(v53 + 16) != 1 || (v55 = *(v53 + 32), v55 == 7))
  {
    v59 = sub_26629489C();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AD08, &qword_2662959A0) + 48);
    *v61 = v117;
    sub_26629490C();
    sub_26629488C();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84160], v59);
    swift_willThrow();
    (*(v118 + 8))(v24, v52);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v123);
  }

  if (*(v53 + 32) <= 2u)
  {
    if (!*(v53 + 32))
    {
      v125 = 0;
      sub_266280BB4();
      sub_2662948FC();
      v71 = v24;
      v72 = v52;
      v73 = v118;
      type metadata accessor for SiriAudioConfirmationSnippetModel();
      sub_266281E44(&qword_28006AD28, type metadata accessor for SiriAudioConfirmationSnippetModel);
      v83 = v124;
      v81 = v99;
      sub_26629496C();
      (*(v98 + 8))(v49, v81);
      (*(v73 + 8))(v71, v72);
      swift_unknownObjectRelease();
      v119 = 0;
      v88 = v123;
      swift_storeEnumTagMultiPayload();
LABEL_22:
      v56 = v116;
      goto LABEL_23;
    }

    v124 = v53;
    v64 = v118;
    if (v55 == 1)
    {
      v126 = 1;
      sub_266280B60();
      v65 = v113;
      sub_2662948FC();
      type metadata accessor for SiriAudioActionButtonSnippetModel();
      sub_266281E44(&qword_28006AD20, type metadata accessor for SiriAudioActionButtonSnippetModel);
      v66 = v91;
      v67 = v101;
      sub_26629496C();
      v119 = 0;
      (*(v100 + 8))(v65, v67);
      (*(v64 + 8))(v24, v52);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v83 = v66;
LABEL_21:
      v88 = v123;
      goto LABEL_22;
    }

    v127 = 2;
    sub_266280B0C();
    v74 = v50;
    sub_2662948FC();
    type metadata accessor for SiriAudioDisambiguationSnippetModel(0);
    sub_266281E44(&qword_28006AAC0, type metadata accessor for SiriAudioDisambiguationSnippetModel);
    v75 = v92;
    v76 = v102;
    sub_26629496C();
    v119 = 0;
    (*(v103 + 8))(v74, v76);
    (*(v64 + 8))(v24, v52);
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  if (*(v53 + 32) > 4u)
  {
    if (v55 == 5)
    {
      v130 = 5;
      sub_266280A10();
      v68 = v115;
      sub_2662948FC();
      type metadata accessor for SiriAudioShazamSnippetModel(0);
      sub_266281E44(&qword_28006AD10, type metadata accessor for SiriAudioShazamSnippetModel);
      v69 = v96;
      v70 = v109;
      sub_26629496C();
      v119 = 0;
      (*(v108 + 8))(v68, v70);
      (*(v118 + 8))(v24, v52);
      swift_unknownObjectRelease();
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v83 = v69;
      goto LABEL_21;
    }

    v131 = 6;
    sub_2662809BC();
    sub_2662948FC();
    type metadata accessor for SiriAudioMediaPlayerSnippetModel(0);
    sub_266281E44(&qword_28006ABB8, type metadata accessor for SiriAudioMediaPlayerSnippetModel);
    v75 = v97;
    v86 = v110;
    sub_26629496C();
    v87 = v118;
    v119 = 0;
    (*(v111 + 8))(v51, v86);
    (*(v87 + 8))(v24, v52);
    swift_unknownObjectRelease();
LABEL_20:
    swift_storeEnumTagMultiPayload();
    v83 = v75;
    goto LABEL_21;
  }

  v56 = v116;
  if (v55 != 3)
  {
    v129 = 4;
    sub_266280A64();
    v77 = v114;
    sub_2662948FC();
    v78 = v118;
    v79 = v77;
    type metadata accessor for SiriAudioAlternativeSnippetModel(0);
    sub_266281E44(&qword_28006AB88, type metadata accessor for SiriAudioAlternativeSnippetModel);
    v69 = v95;
    v80 = v107;
    sub_26629496C();
    v119 = 0;
    (*(v106 + 8))(v79, v80);
    (*(v78 + 8))(v24, v52);
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v128 = 3;
  sub_266280AB8();
  v57 = v112;
  sub_2662948FC();
  v58 = v118;
  v124 = v54;
  v82 = v52;
  type metadata accessor for SiriAudioSimpleTextSnippetModel();
  sub_266281E44(&qword_28006AD18, type metadata accessor for SiriAudioSimpleTextSnippetModel);
  v83 = v93;
  v84 = v57;
  v85 = v105;
  sub_26629496C();
  v119 = 0;
  (*(v104 + 8))(v84, v85);
  (*(v58 + 8))(v24, v82);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v88 = v123;
LABEL_23:
  v89 = v94;
  sub_266281D4C(v83, v94, type metadata accessor for SiriAudioSnippets);
  sub_266281D4C(v89, v56, type metadata accessor for SiriAudioSnippets);
  return __swift_destroy_boxed_opaque_existential_0(v88);
}

uint64_t sub_266281D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_266281E44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266281E90()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_266281EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2662947BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a2, v8);
  LODWORD(a2) = (*(v9 + 88))(v12, v8);
  v13 = *MEMORY[0x277D61BE8];
  (*(v9 + 8))(v12, v8);
  if (a2 != v13)
  {
    return 0;
  }

  sub_26627F448(v3, v7);
  v14 = swift_getEnumCaseMultiPayload() != 2;
  sub_266280C08(v7, type metadata accessor for SiriAudioSnippets);
  return v14;
}

uint64_t sub_266282114()
{
  result = type metadata accessor for SiriAudioConfirmationSnippetModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SiriAudioActionButtonSnippetModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SiriAudioDisambiguationSnippetModel(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SiriAudioSimpleTextSnippetModel();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SiriAudioAlternativeSnippetModel(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for SiriAudioShazamSnippetModel(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for SiriAudioMediaPlayerSnippetModel(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAudioSnippets.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriAudioSnippets.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAudioSimpleTextSnippetModel.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SiriAudioSimpleTextSnippetModel.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_266282490()
{
  result = qword_28006AD50;
  if (!qword_28006AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD50);
  }

  return result;
}

unint64_t sub_2662824E8()
{
  result = qword_28006AD58;
  if (!qword_28006AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD58);
  }

  return result;
}

unint64_t sub_266282540()
{
  result = qword_28006AD60;
  if (!qword_28006AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD60);
  }

  return result;
}

unint64_t sub_266282598()
{
  result = qword_28006AD68;
  if (!qword_28006AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD68);
  }

  return result;
}

unint64_t sub_2662825F0()
{
  result = qword_28006AD70;
  if (!qword_28006AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD70);
  }

  return result;
}

unint64_t sub_266282648()
{
  result = qword_28006AD78;
  if (!qword_28006AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD78);
  }

  return result;
}

unint64_t sub_2662826A0()
{
  result = qword_28006AD80;
  if (!qword_28006AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD80);
  }

  return result;
}

unint64_t sub_2662826F8()
{
  result = qword_28006AD88;
  if (!qword_28006AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD88);
  }

  return result;
}

unint64_t sub_266282750()
{
  result = qword_28006AD90;
  if (!qword_28006AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD90);
  }

  return result;
}

unint64_t sub_2662827A8()
{
  result = qword_28006AD98;
  if (!qword_28006AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD98);
  }

  return result;
}

unint64_t sub_266282800()
{
  result = qword_28006ADA0;
  if (!qword_28006ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADA0);
  }

  return result;
}

unint64_t sub_266282858()
{
  result = qword_28006ADA8;
  if (!qword_28006ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADA8);
  }

  return result;
}

unint64_t sub_2662828B0()
{
  result = qword_28006ADB0;
  if (!qword_28006ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADB0);
  }

  return result;
}

unint64_t sub_266282908()
{
  result = qword_28006ADB8;
  if (!qword_28006ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADB8);
  }

  return result;
}

unint64_t sub_266282960()
{
  result = qword_28006ADC0;
  if (!qword_28006ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADC0);
  }

  return result;
}

unint64_t sub_2662829B8()
{
  result = qword_28006ADC8;
  if (!qword_28006ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADC8);
  }

  return result;
}

unint64_t sub_266282A10()
{
  result = qword_28006ADD0;
  if (!qword_28006ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADD0);
  }

  return result;
}

unint64_t sub_266282A68()
{
  result = qword_28006ADD8;
  if (!qword_28006ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADD8);
  }

  return result;
}

unint64_t sub_266282AC0()
{
  result = qword_28006ADE0;
  if (!qword_28006ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADE0);
  }

  return result;
}

unint64_t sub_266282B18()
{
  result = qword_28006ADE8;
  if (!qword_28006ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADE8);
  }

  return result;
}

unint64_t sub_266282B70()
{
  result = qword_28006ADF0;
  if (!qword_28006ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADF0);
  }

  return result;
}

unint64_t sub_266282BC8()
{
  result = qword_28006ADF8;
  if (!qword_28006ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADF8);
  }

  return result;
}

unint64_t sub_266282C20()
{
  result = qword_28006AE00;
  if (!qword_28006AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE00);
  }

  return result;
}

unint64_t sub_266282C78()
{
  result = qword_28006AE08;
  if (!qword_28006AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE08);
  }

  return result;
}

uint64_t sub_266282CCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75426E6F69746361 && a2 == 0xEC0000006E6F7474 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6769626D61736964 && a2 == 0xEE006E6F69746175 || (sub_2662949FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6554656C706D6973 && a2 == 0xEA00000000007478 || (sub_2662949FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74616E7265746C61 && a2 == 0xEC00000073657669 || (sub_2662949FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D617A616873 && a2 == 0xE600000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616C50616964656DLL && a2 == 0xEB00000000726579)
  {

    return 6;
  }

  else
  {
    v6 = sub_2662949FC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_266282F54()
{
  v1 = 0x73736563637573;
  if (*v0 != 1)
  {
    v1 = 0x686374614D6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E696E657473696CLL;
  }
}

uint64_t sub_266282FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266286B74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266282FE8(uint64_t a1)
{
  v2 = sub_26628378C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266283024(uint64_t a1)
{
  v2 = sub_26628378C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26628306C(uint64_t a1)
{
  v2 = sub_266283888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2662830A8(uint64_t a1)
{
  v2 = sub_266283888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2662830E4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_266283114(uint64_t a1)
{
  v2 = sub_2662837E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266283150(uint64_t a1)
{
  v2 = sub_2662837E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26628318C(uint64_t a1)
{
  v2 = sub_266283834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2662831C8(uint64_t a1)
{
  v2 = sub_266283834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShazamSnippetRole.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE10, &qword_2662963C0);
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE18, &qword_2662963C8);
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v34 - v7;
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  v9 = *(matched - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](matched);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE20, &qword_2662963D0);
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = type metadata accessor for ShazamSnippetRole(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE28, &qword_2662963D8);
  v20 = *(v44 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v44);
  v23 = &v34 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628378C();
  sub_266294A5C();
  sub_266285B60(v43, v19, type metadata accessor for ShazamSnippetRole);
  v25 = (*(v9 + 48))(v19, 2, matched);
  if (v25)
  {
    if (v25 == 1)
    {
      v45 = 0;
      sub_266283888();
      v26 = v44;
      sub_26629498C();
      (*(v34 + 8))(v15, v35);
      return (*(v20 + 8))(v23, v26);
    }

    else
    {
      v47 = 2;
      sub_2662837E0();
      v32 = v37;
      v33 = v44;
      sub_26629498C();
      (*(v39 + 8))(v32, v40);
      return (*(v20 + 8))(v23, v33);
    }
  }

  else
  {
    v28 = v36;
    sub_266284070(v19, v36, type metadata accessor for ShazamSuccessfulMatchViewModel);
    v46 = 1;
    sub_266283834();
    v29 = v38;
    v30 = v44;
    sub_26629498C();
    sub_2662840D8(&qword_28006AE48, type metadata accessor for ShazamSuccessfulMatchViewModel);
    v31 = v42;
    sub_2662949EC();
    (*(v41 + 8))(v29, v31);
    sub_2662790DC(v28);
    return (*(v20 + 8))(v23, v30);
  }
}

unint64_t sub_26628378C()
{
  result = qword_28006AE30;
  if (!qword_28006AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE30);
  }

  return result;
}

unint64_t sub_2662837E0()
{
  result = qword_28006AE38;
  if (!qword_28006AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE38);
  }

  return result;
}

unint64_t sub_266283834()
{
  result = qword_28006AE40;
  if (!qword_28006AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE40);
  }

  return result;
}

unint64_t sub_266283888()
{
  result = qword_28006AE50;
  if (!qword_28006AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE50);
  }

  return result;
}

uint64_t ShazamSnippetRole.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE58, &qword_2662963E0);
  v60 = *(v55 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v55);
  v59 = &v49 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE60, &qword_2662963E8);
  v56 = *(v54 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v58 = &v49 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE68, &qword_2662963F0);
  v57 = *(v53 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v53);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE70, &unk_2662963F8);
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = type metadata accessor for ShazamSnippetRole(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_26628378C();
  v23 = v63;
  sub_266294A4C();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0(v64);
  }

  v63 = v14;
  v25 = v57;
  v24 = v58;
  v50 = v18;
  v51 = v20;
  v26 = v59;
  v27 = v60;
  v52 = 0;
  v28 = v61;
  v29 = sub_26629497C();
  v30 = (2 * *(v29 + 16)) | 1;
  v65 = v29;
  v66 = v29 + 32;
  v67 = 0;
  v68 = v30;
  v31 = sub_266282F40();
  if (v31 != 3 && v67 == v68 >> 1)
  {
    if (v31)
    {
      v32 = v62;
      if (v31 == 1)
      {
        v69 = 1;
        sub_266283834();
        v33 = v24;
        v34 = v52;
        sub_2662948FC();
        if (!v34)
        {
          matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
          sub_2662840D8(&qword_28006AE78, type metadata accessor for ShazamSuccessfulMatchViewModel);
          v36 = v50;
          v37 = v54;
          sub_26629496C();
          (*(v56 + 8))(v33, v37);
          (*(v32 + 8))(v13, v10);
          swift_unknownObjectRelease();
          (*(*(matched - 8) + 56))(v36, 0, 2, matched);
          v38 = v51;
          sub_266284070(v36, v51, type metadata accessor for ShazamSnippetRole);
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v69 = 2;
      sub_2662837E0();
      v46 = v52;
      sub_2662948FC();
      if (v46)
      {
LABEL_16:
        (*(v32 + 8))(v13, v10);
        goto LABEL_10;
      }

      (*(v27 + 8))(v26, v55);
      (*(v32 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v48 = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
      v38 = v51;
      (*(*(v48 - 8) + 56))(v51, 2, 2, v48);
    }

    else
    {
      v69 = 0;
      sub_266283888();
      v44 = v52;
      sub_2662948FC();
      v45 = v62;
      if (v44)
      {
        (*(v62 + 8))(v13, v10);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v64);
      }

      (*(v25 + 8))(v9, v53);
      (*(v45 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v47 = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
      v38 = v51;
      (*(*(v47 - 8) + 56))(v51, 1, 2, v47);
    }

LABEL_19:
    sub_266284070(v38, v28, type metadata accessor for ShazamSnippetRole);
    return __swift_destroy_boxed_opaque_existential_0(v64);
  }

  v39 = sub_26629489C();
  swift_allocError();
  v41 = v40;
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AD08, &qword_2662959A0) + 48);
  *v41 = v63;
  sub_26629490C();
  sub_26629488C();
  (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
  swift_willThrow();
  (*(v62 + 8))(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v64);
}

uint64_t sub_266284070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2662840D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2662841C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2662949FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26628424C(uint64_t a1)
{
  v2 = sub_26628443C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266284288(uint64_t a1)
{
  v2 = sub_26628443C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioShazamSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE80, &qword_266296408);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628443C();
  sub_266294A5C();
  type metadata accessor for ShazamSnippetRole(0);
  sub_2662840D8(&qword_28006AE90, type metadata accessor for ShazamSnippetRole);
  sub_2662949EC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_26628443C()
{
  result = qword_28006AE88;
  if (!qword_28006AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE88);
  }

  return result;
}

uint64_t SiriAudioShazamSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for ShazamSnippetRole(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE98, &unk_266296410);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SiriAudioShazamSnippetModel(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628443C();
  sub_266294A4C();
  if (!v2)
  {
    v16 = v19;
    sub_2662840D8(&qword_28006AEA0, type metadata accessor for ShazamSnippetRole);
    v17 = v21;
    sub_26629496C();
    (*(v20 + 8))(v10, v7);
    sub_266284070(v17, v14, type metadata accessor for ShazamSnippetRole);
    sub_266284070(v14, v16, type metadata accessor for SiriAudioShazamSnippetModel);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_26628473C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE80, &qword_266296408);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628443C();
  sub_266294A5C();
  type metadata accessor for ShazamSnippetRole(0);
  sub_2662840D8(&qword_28006AE90, type metadata accessor for ShazamSnippetRole);
  sub_2662949EC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ShazamSuccessfulMatchViewModel.shazamID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.subtitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.artist.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.genre.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.appleMusicID.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.appleMusicURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShazamSuccessfulMatchViewModel(0) + 40);

  return sub_26627AD08(v3, a1);
}

uint64_t ShazamSuccessfulMatchViewModel.webURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShazamSuccessfulMatchViewModel(0) + 44);

  return sub_26627AD08(v3, a1);
}

uint64_t ShazamSuccessfulMatchViewModel.artworkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShazamSuccessfulMatchViewModel(0) + 48);

  return sub_26627AD08(v3, a1);
}

uint64_t ShazamSuccessfulMatchViewModel.videoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShazamSuccessfulMatchViewModel(0) + 52);

  return sub_26627AD08(v3, a1);
}

uint64_t ShazamSuccessfulMatchViewModel.isrc.getter()
{
  v1 = (v0 + *(type metadata accessor for ShazamSuccessfulMatchViewModel(0) + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ShazamSuccessfulMatchViewModel.init(shazamID:title:subtitle:artist:genre:appleMusicID:appleMusicURL:webURL:artworkURL:videoURL:explicitContent:isrc:subscriptionStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  sub_266284C48(a13, a9 + matched[10]);
  sub_266284C48(a14, a9 + matched[11]);
  sub_266284C48(a15, a9 + matched[12]);
  result = sub_266284C48(a16, a9 + matched[13]);
  *(a9 + matched[14]) = a17;
  v23 = (a9 + matched[15]);
  *v23 = a18;
  v23[1] = a19;
  *(a9 + matched[16]) = a20;
  return result;
}

uint64_t sub_266284C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_266284CB8(char a1)
{
  result = 0x44496D617A616873;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65726E6567;
      break;
    case 5:
    case 6:
      result = 0x73754D656C707061;
      break;
    case 7:
      result = 0x4C5255626577;
      break;
    case 8:
      result = 0x556B726F77747261;
      break;
    case 9:
      result = 0x4C52556F65646976;
      break;
    case 10:
      result = 0x746963696C707865;
      break;
    case 11:
      result = 1668445033;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266284E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266286C94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266284E7C(uint64_t a1)
{
  v2 = sub_26628528C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266284EB8(uint64_t a1)
{
  v2 = sub_26628528C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShazamSuccessfulMatchViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AEA8, &qword_266296420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628528C();
  sub_266294A5C();
  v11 = *v3;
  v12 = v3[1];
  v34[31] = 0;
  sub_26629499C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v34[30] = 1;
    sub_26629499C();
    v15 = v3[4];
    v16 = v3[5];
    v34[29] = 2;
    sub_26629499C();
    v17 = v3[6];
    v18 = v3[7];
    v34[28] = 3;
    sub_26629499C();
    v19 = v3[8];
    v20 = v3[9];
    v34[27] = 4;
    sub_26629499C();
    v21 = v3[10];
    v22 = v3[11];
    v34[26] = 5;
    sub_26629499C();
    matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
    v24 = matched[10];
    v34[25] = 6;
    sub_26629470C();
    sub_2662840D8(&qword_28006AAB8, MEMORY[0x277CC9260]);
    sub_2662949BC();
    v25 = matched[11];
    v34[24] = 7;
    sub_2662949BC();
    v26 = matched[12];
    v34[15] = 8;
    sub_2662949BC();
    v27 = matched[13];
    v34[14] = 9;
    sub_2662949BC();
    v28 = *(v3 + matched[14]);
    v34[13] = 10;
    sub_2662949AC();
    v29 = (v3 + matched[15]);
    v30 = *v29;
    v31 = v29[1];
    v34[12] = 11;
    sub_26629499C();
    v32 = *(v3 + matched[16]);
    v34[11] = 12;
    sub_2662949AC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26628528C()
{
  result = qword_28006AEB0;
  if (!qword_28006AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AEB0);
  }

  return result;
}

uint64_t ShazamSuccessfulMatchViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v73 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v68 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v68 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v68 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AEB8, &qword_266296428);
  v74 = *(v77 - 8);
  v15 = *(v74 + 64);
  MEMORY[0x28223BE20](v77);
  v17 = v68 - v16;
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  v19 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v21 = (v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1[3];
  v22 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_26628528C();
  v76 = v17;
  v24 = v78;
  sub_266294A4C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_0(v79);
  }

  v25 = v14;
  v71 = v9;
  v72 = v12;
  v27 = v74;
  v26 = v75;
  v78 = matched;
  v92 = 0;
  v28 = v76;
  v29 = v77;
  *v21 = sub_26629491C();
  v21[1] = v31;
  v91 = 1;
  v21[2] = sub_26629491C();
  v21[3] = v32;
  v90 = 2;
  v69 = 0;
  v21[4] = sub_26629491C();
  v21[5] = v33;
  v89 = 3;
  v21[6] = sub_26629491C();
  v21[7] = v34;
  v88 = 4;
  v21[8] = sub_26629491C();
  v21[9] = v35;
  v87 = 5;
  v36 = sub_26629491C();
  v70 = 0;
  v21[10] = v36;
  v21[11] = v37;
  v38 = sub_26629470C();
  v86 = 6;
  v39 = sub_2662840D8(&qword_28006AA98, MEMORY[0x277CC9260]);
  v68[0] = v38;
  v68[1] = v39;
  v40 = v70;
  sub_26629493C();
  v70 = v40;
  if (v40)
  {
    (*(v27 + 8))(v28, v29);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    sub_266284C48(v25, v21 + v78[10]);
    v85 = 7;
    v43 = v72;
    v44 = v70;
    sub_26629493C();
    v70 = v44;
    if (v44)
    {
      (*(v27 + 8))(v28, v77);
      v42 = 0;
      v41 = 1;
    }

    else
    {
      sub_266284C48(v43, v21 + v78[11]);
      v84 = 8;
      v45 = v70;
      v46 = v71;
      v47 = v77;
      sub_26629493C();
      v70 = v45;
      if (!v45)
      {
        sub_266284C48(v46, v21 + v78[12]);
        v83 = 9;
        v56 = v70;
        sub_26629493C();
        if (v56)
        {
          (*(v27 + 8))(v76, v77);
          __swift_destroy_boxed_opaque_existential_0(v79);
          v58 = v21[1];

          v59 = v21[3];

          v60 = v21[5];

          v61 = v21[7];

          v62 = v21[9];

          v63 = v21[11];

          v64 = v78;
          sub_26627AD78(v21 + v78[10]);
          sub_26627AD78(v21 + v64[11]);
          return sub_26627AD78(v21 + v64[12]);
        }

        else
        {
          sub_266284C48(v73, v21 + v78[13]);
          v82 = 10;
          *(v21 + v78[14]) = sub_26629492C();
          v81 = 11;
          v57 = sub_26629491C();
          v65 = (v21 + v78[15]);
          *v65 = v57;
          v65[1] = v66;
          v80 = 12;
          v67 = sub_26629492C();
          (*(v27 + 8))(v76, v77);
          *(v21 + v78[16]) = v67;
          sub_266285B60(v21, v26, type metadata accessor for ShazamSuccessfulMatchViewModel);
          __swift_destroy_boxed_opaque_existential_0(v79);
          return sub_2662790DC(v21);
        }
      }

      (*(v27 + 8))(v28, v47);
      v41 = 1;
      v42 = 1;
    }
  }

  v48 = v69;
  __swift_destroy_boxed_opaque_existential_0(v79);
  v49 = v21[1];

  if (!v48)
  {
    v52 = v21[3];
  }

  v50 = v21[5];

  v53 = v21[7];

  v51 = v21[9];

  v54 = v21[11];

  v55 = v78;
  if (v41)
  {
    result = sub_26627AD78(v21 + v78[10]);
    if ((v42 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v42)
  {
    return result;
  }

  return sub_26627AD78(v21 + v55[11]);
}

uint64_t sub_266285B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266285D2C(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  v5 = (*(*(matched - 8) + 48))(a1, a2, matched);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266285DAC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  v7 = *(*(matched - 8) + 56);

  return v7(a1, v5, a3, matched);
}

uint64_t sub_266285E30()
{
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return matched;
}

uint64_t sub_266285E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamSnippetRole(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_266285F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamSnippetRole(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_266285F8C()
{
  result = type metadata accessor for ShazamSnippetRole(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26628600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2662860E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_266286198()
{
  sub_2662862C8(319, &qword_28006AEF0);
  if (v0 <= 0x3F)
  {
    sub_266286270();
    if (v1 <= 0x3F)
    {
      sub_2662862C8(319, &qword_28006AF00);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266286270()
{
  if (!qword_28006AEF8)
  {
    sub_26629470C();
    v0 = sub_26629486C();
    if (!v1)
    {
      atomic_store(v0, &qword_28006AEF8);
    }
  }
}

void sub_2662862C8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26629486C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ShazamSuccessfulMatchViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShazamSuccessfulMatchViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShazamSnippetRole.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShazamSnippetRole.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2662865F8()
{
  result = qword_28006AF08;
  if (!qword_28006AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF08);
  }

  return result;
}

unint64_t sub_266286650()
{
  result = qword_28006AF10;
  if (!qword_28006AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF10);
  }

  return result;
}

unint64_t sub_2662866A8()
{
  result = qword_28006AF18;
  if (!qword_28006AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF18);
  }

  return result;
}

unint64_t sub_266286700()
{
  result = qword_28006AF20;
  if (!qword_28006AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF20);
  }

  return result;
}

unint64_t sub_266286758()
{
  result = qword_28006AF28;
  if (!qword_28006AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF28);
  }

  return result;
}

unint64_t sub_2662867B0()
{
  result = qword_28006AF30;
  if (!qword_28006AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF30);
  }

  return result;
}

unint64_t sub_266286808()
{
  result = qword_28006AF38;
  if (!qword_28006AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF38);
  }

  return result;
}

unint64_t sub_266286860()
{
  result = qword_28006AF40;
  if (!qword_28006AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF40);
  }

  return result;
}

unint64_t sub_2662868B8()
{
  result = qword_28006AF48;
  if (!qword_28006AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF48);
  }

  return result;
}

unint64_t sub_266286910()
{
  result = qword_28006AF50;
  if (!qword_28006AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF50);
  }

  return result;
}

unint64_t sub_266286968()
{
  result = qword_28006AF58;
  if (!qword_28006AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF58);
  }

  return result;
}

unint64_t sub_2662869C0()
{
  result = qword_28006AF60;
  if (!qword_28006AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF60);
  }

  return result;
}

unint64_t sub_266286A18()
{
  result = qword_28006AF68;
  if (!qword_28006AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF68);
  }

  return result;
}

unint64_t sub_266286A70()
{
  result = qword_28006AF70;
  if (!qword_28006AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF70);
  }

  return result;
}

unint64_t sub_266286AC8()
{
  result = qword_28006AF78;
  if (!qword_28006AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF78);
  }

  return result;
}

unint64_t sub_266286B20()
{
  result = qword_28006AF80;
  if (!qword_28006AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF80);
  }

  return result;
}

uint64_t sub_266286B74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E657473696CLL && a2 == 0xE900000000000067;
  if (v4 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686374614D6F6ELL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2662949FC();

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

uint64_t sub_266286C94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D617A616873 && a2 == 0xE800000000000000;
  if (v4 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xEC00000044496369 || (sub_2662949FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xED00004C52556369 || (sub_2662949FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_2662949FC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4C52556F65646976 && a2 == 0xE800000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF746E65746E6F43 || (sub_2662949FC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1668445033 && a2 == 0xE400000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002662983C0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_2662949FC();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t SiriAudioConfirmationSnippetModel.confirmText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t (*SiriAudioConfirmationSnippetModel.confirmText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627A66C;
}

uint64_t SiriAudioConfirmationSnippetModel.denyText.getter()
{
  v0 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v2;
}

uint64_t type metadata accessor for SiriAudioConfirmationSnippetModel()
{
  result = qword_28006AFC0;
  if (!qword_28006AFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26628729C@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_266287304(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t SiriAudioConfirmationSnippetModel.denyText.setter()
{
  v0 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*SiriAudioConfirmationSnippetModel.denyText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioConfirmationSnippetModel.confirmCommand.getter()
{
  v0 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629473C();
}

uint64_t sub_2662874AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  result = sub_26629473C();
  *a1 = result;
  return result;
}

uint64_t sub_266287504(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 24);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t SiriAudioConfirmationSnippetModel.confirmCommand.setter()
{
  v0 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t (*SiriAudioConfirmationSnippetModel.confirmCommand.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  *(v3 + 32) = sub_26629472C();
  return sub_26627D000;
}

uint64_t SiriAudioConfirmationSnippetModel.denyCommand.getter()
{
  v0 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629473C();
}

uint64_t sub_2662876A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  result = sub_26629473C();
  *a1 = result;
  return result;
}

uint64_t sub_2662876F8(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 28);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t SiriAudioConfirmationSnippetModel.denyCommand.setter()
{
  v0 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t (*SiriAudioConfirmationSnippetModel.denyCommand.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  *(v3 + 32) = sub_26629472C();
  return sub_26627D000;
}

uint64_t SiriAudioConfirmationSnippetModel.isDestructive.getter()
{
  v0 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  sub_26629478C();
  return v2;
}

uint64_t sub_2662878A4@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  result = sub_26629478C();
  *a1 = v4;
  return result;
}

uint64_t sub_26628790C(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  return sub_26629479C();
}

uint64_t SiriAudioConfirmationSnippetModel.isDestructive.setter()
{
  v0 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  return sub_26629479C();
}

uint64_t (*SiriAudioConfirmationSnippetModel.isDestructive.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t sub_266287A6C()
{
  v1 = *v0;
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_266287B78()
{
  *v0;
  *v0;
  *v0;
  sub_26629481C();
}

uint64_t sub_266287C70()
{
  v1 = *v0;
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_266287D78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266289448();
  *a2 = result;
  return result;
}

void sub_266287DA8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747865;
  v4 = 0x546D7269666E6F63;
  v5 = 0xEE00646E616D6D6FLL;
  v6 = 0x436D7269666E6F63;
  v7 = 0xEB00000000646E61;
  v8 = 0x6D6D6F43796E6564;
  if (v2 != 3)
  {
    v8 = 0x7572747365447369;
    v7 = 0xED00006576697463;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x74786554796E6564;
    v3 = 0xE800000000000000;
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

uint64_t sub_266287E70()
{
  v1 = *v0;
  v2 = 0x546D7269666E6F63;
  v3 = 0x436D7269666E6F63;
  v4 = 0x6D6D6F43796E6564;
  if (v1 != 3)
  {
    v4 = 0x7572747365447369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74786554796E6564;
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

uint64_t sub_266287F34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266289448();
  *a1 = result;
  return result;
}

uint64_t sub_266287F68(uint64_t a1)
{
  v2 = sub_2662886D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266287FA4(uint64_t a1)
{
  v2 = sub_2662886D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriAudioConfirmationSnippetModel.init(confirmText:denyText:confirmCommand:denyCommand:isDestructive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_26629476C();
  v8 = type metadata accessor for SiriAudioConfirmationSnippetModel();
  v9 = v8[5];
  sub_26629476C();
  v10 = v8[6];
  sub_2662880D0();
  v11 = a5;
  sub_26629471C();
  v12 = v8[7];
  v13 = a6;
  sub_26629471C();
  v14 = v8[8];
  sub_26629476C();
}

unint64_t sub_2662880D0()
{
  result = qword_28006AF90;
  if (!qword_28006AF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28006AF90);
  }

  return result;
}

uint64_t SiriAudioConfirmationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF98, &qword_266296C78);
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = type metadata accessor for SiriAudioConfirmationSnippetModel();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2662886D4();
  v46 = v13;
  v19 = v49;
  sub_266294A4C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v9;
  v40 = v7;
  v49 = v14;
  LOBYTE(v47) = 0;
  v47 = sub_26629494C();
  v48 = v21;
  v22 = v17;
  sub_26629476C();
  LOBYTE(v47) = 1;
  v23 = sub_26629494C();
  v24 = v49;
  v25 = v49[5];
  v47 = v23;
  v48 = v26;
  sub_26629476C();
  LOBYTE(v47) = 2;
  sub_266288C40(&qword_28006AFA8);
  v27 = v43;
  v39 = 0;
  sub_26629496C();
  sub_26629473C();
  v38 = *(v42 + 8);
  v38(v20, v27);
  v28 = v24[6];
  v29 = sub_2662880D0();
  v30 = v43;
  v37 = v29;
  sub_26629471C();
  LOBYTE(v47) = 3;
  v31 = v40;
  sub_26629496C();
  sub_26629473C();
  v38(v31, v30);
  v32 = v22 + v24[7];
  sub_26629471C();
  LOBYTE(v47) = 4;
  v33 = v45;
  v34 = sub_26629495C();
  v35 = v24[8];
  LOBYTE(v47) = v34 & 1;
  sub_26629476C();
  (*(v44 + 8))(v46, v33);
  sub_266288728(v22, v41);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26628878C(v22);
}

unint64_t sub_2662886D4()
{
  result = qword_28006AFA0;
  if (!qword_28006AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AFA0);
  }

  return result;
}

uint64_t sub_266288728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioConfirmationSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26628878C(uint64_t a1)
{
  v2 = type metadata accessor for SiriAudioConfirmationSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriAudioConfirmationSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AFB0, &qword_266296C80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2662886D4();
  sub_266294A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v38 = v2;
  sub_26629478C();
  LOBYTE(v39) = 0;
  v17 = v40;
  sub_2662949CC();
  if (v17)
  {
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v34 = v8;
    v35 = v10;
    v40 = v12;
    v19 = v37;

    v20 = type metadata accessor for SiriAudioConfirmationSnippetModel();
    v21 = v38 + *(v20 + 20);
    sub_26629478C();
    LOBYTE(v39) = 1;
    sub_2662949CC();

    v32 = v20;
    v22 = v38 + *(v20 + 24);
    sub_26629473C();
    v23 = sub_2662880D0();
    v24 = v35;
    v31 = v23;
    sub_26629471C();
    LOBYTE(v39) = 2;
    sub_266288C40(&qword_28006AFB8);
    v33 = v11;
    sub_2662949EC();
    v25 = *(v36 + 8);
    v25(v24, v19);
    v26 = v40;
    v27 = v38 + *(v32 + 28);
    sub_26629473C();
    v28 = v34;
    sub_26629471C();
    LOBYTE(v39) = 3;
    sub_2662949EC();
    v25(v28, v19);
    v29 = *(v32 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
    sub_26629478C();
    LOBYTE(v39) = 4;
    v30 = v33;
    sub_2662949DC();
    return (*(v26 + 8))(v15, v30);
  }
}

uint64_t sub_266288C40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006AF88, &unk_266296EB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266288CF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriAudioConfirmationSnippetModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266288D6C@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_266288DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 32);

  return v15(v16, a2, v14);
}

uint64_t sub_266288F6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 32);

  return v17(v18, a2, a2, v16);
}

void sub_2662890DC()
{
  sub_26627CA08(319, &qword_28006AB00);
  if (v0 <= 0x3F)
  {
    sub_266289198();
    if (v1 <= 0x3F)
    {
      sub_26627CA08(319, &qword_28006AAE0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266289198()
{
  if (!qword_28006AFD0)
  {
    sub_2662880D0();
    v0 = sub_26629475C();
    if (!v1)
    {
      atomic_store(v0, &qword_28006AFD0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SiriAudioConfirmationSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriAudioConfirmationSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_266289344()
{
  result = qword_28006AFD8;
  if (!qword_28006AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AFD8);
  }

  return result;
}

unint64_t sub_26628939C()
{
  result = qword_28006AFE0;
  if (!qword_28006AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AFE0);
  }

  return result;
}

unint64_t sub_2662893F4()
{
  result = qword_28006AFE8;
  if (!qword_28006AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AFE8);
  }

  return result;
}

uint64_t sub_266289448()
{
  v0 = sub_2662948EC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t SiriAudioPunchOutRowSnippetModel.title.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t (*SiriAudioPunchOutRowSnippetModel.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627A66C;
}

uint64_t SiriAudioPunchOutRowSnippetModel.subtitle.getter()
{
  v0 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  sub_26629478C();
  return v2;
}

uint64_t type metadata accessor for SiriAudioPunchOutRowSnippetModel()
{
  result = qword_28006B018;
  if (!qword_28006B018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_26628963C@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  sub_26629478C();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_2662896A4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  return sub_26629479C();
}

uint64_t SiriAudioPunchOutRowSnippetModel.subtitle.setter()
{
  v0 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  return sub_26629479C();
}

uint64_t (*SiriAudioPunchOutRowSnippetModel.subtitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioPunchOutRowSnippetModel.imageURL.getter()
{
  v0 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

uint64_t sub_26628985C()
{
  v0 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

uint64_t sub_2662898B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_26627AD08(a1, &v10 - v7);
  sub_26627AD08(v8, v6);
  LODWORD(a1) = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(v8);
}

uint64_t SiriAudioPunchOutRowSnippetModel.imageURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26627AD08(a1, &v7 - v4);
  v5 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(a1);
}

uint64_t (*SiriAudioPunchOutRowSnippetModel.imageURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioPunchOutRowSnippetModel.command.getter()
{
  v0 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629473C();
}

uint64_t sub_266289B40@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  result = sub_26629473C();
  *a1 = result;
  return result;
}

uint64_t sub_266289B98(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 28);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t SiriAudioPunchOutRowSnippetModel.command.setter()
{
  v0 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t (*SiriAudioPunchOutRowSnippetModel.command.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioPunchOutRowSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  *(v3 + 32) = sub_26629472C();
  return sub_26627D000;
}

uint64_t sub_266289CFC()
{
  v1 = *v0;
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_266289DBC()
{
  *v0;
  *v0;
  *v0;
  sub_26629481C();
}

uint64_t sub_266289E68()
{
  v1 = *v0;
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_266289F24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26628B7E4();
  *a2 = result;
  return result;
}

void sub_266289F54(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE800000000000000;
  v5 = 0x4C52556567616D69;
  if (*v1 != 2)
  {
    v5 = 0x646E616D6D6F63;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974627573;
    v2 = 0xE800000000000000;
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

uint64_t sub_266289FD0()
{
  v1 = 0x656C746974;
  v2 = 0x4C52556567616D69;
  if (*v0 != 2)
  {
    v2 = 0x646E616D6D6F63;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
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

uint64_t sub_26628A048@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26628B7E4();
  *a1 = result;
  return result;
}

uint64_t sub_26628A070(uint64_t a1)
{
  v2 = sub_26628AAA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26628A0AC(uint64_t a1)
{
  v2 = sub_26628AAA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioPunchOutRowSnippetModel.init(title:subtitle:imageURL:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = type metadata accessor for SiriAudioPunchOutRowSnippetModel();
  v18 = v17[5];
  v30 = 0;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
  sub_26629476C();
  v19 = v17[6];
  v20 = sub_26629470C();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  sub_26627AD08(v16, v14);
  sub_26629476C();
  sub_26627AD78(v16);
  v30 = a1;
  v31 = a2;
  sub_26629476C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  (*(*(v21 - 8) + 8))(a7 + v18, v21);
  v30 = v26;
  v31 = v27;
  sub_26629476C();
  v22 = v28;
  sub_26627AD08(v28, v16);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  (*(*(v23 - 8) + 8))(a7 + v19, v23);
  sub_26627AD08(v16, v14);
  sub_26629476C();
  sub_26627AD78(v16);
  v24 = v17[7];
  sub_2662880D0();
  sub_26629471C();
  return sub_26627AD78(v22);
}

uint64_t SiriAudioPunchOutRowSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v48 = *(v51 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AFF0, &qword_266296EC0);
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = type metadata accessor for SiriAudioPunchOutRowSnippetModel();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 20);
  v62 = 0;
  v63 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
  v64 = v23;
  sub_26629476C();
  v24 = *(v18 + 24);
  v25 = sub_26629470C();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  sub_26627AD08(v17, v15);
  v58 = v24;
  v56 = v22;
  sub_26629476C();
  sub_26627AD78(v17);
  v27 = a1[3];
  v26 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_26628AAA8();
  v55 = v8;
  v28 = v57;
  sub_266294A4C();
  if (v28)
  {
    v30 = v56;
    __swift_destroy_boxed_opaque_existential_0(v59);
    v31 = v58;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    (*(*(v32 - 8) + 8))(&v30[v64], v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    return (*(*(v33 - 8) + 8))(&v30[v31], v33);
  }

  else
  {
    v57 = v17;
    v47 = v18;
    v29 = v53;
    LOBYTE(v62) = 0;
    v62 = sub_26629494C();
    v63 = v34;
    v35 = v56;
    sub_26629476C();
    LOBYTE(v60) = 1;
    sub_26627C060(&qword_28006AA88);
    sub_26629496C();
    v36 = v62;
    v37 = v63;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    (*(*(v38 - 8) + 8))(v35 + v64, v38);
    v60 = v36;
    v61 = v37;
    v39 = v54;
    sub_26629476C();
    LOBYTE(v62) = 2;
    sub_26628B034(&qword_28006AA90, &qword_28006AA98);
    v40 = v52;
    sub_26629496C();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    (*(*(v41 - 8) + 8))(v35 + v58, v41);
    sub_26627AD08(v40, v57);
    sub_26629476C();
    sub_26627AD78(v40);
    LOBYTE(v62) = 3;
    sub_266288C40(&qword_28006AFA8);
    v43 = v50;
    v42 = v51;
    sub_26629496C();
    sub_26629473C();
    (*(v48 + 8))(v43, v42);
    v44 = *(v47 + 28);
    sub_2662880D0();
    sub_26629471C();
    (*(v29 + 8))(v55, v39);
    sub_26628AAFC(v35, v49);
    __swift_destroy_boxed_opaque_existential_0(v59);
    return sub_26628AB60(v35);
  }
}

unint64_t sub_26628AAA8()
{
  result = qword_28006AFF8;
  if (!qword_28006AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AFF8);
  }

  return result;
}

uint64_t sub_26628AAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioPunchOutRowSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26628AB60(uint64_t a1)
{
  v2 = type metadata accessor for SiriAudioPunchOutRowSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriAudioPunchOutRowSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B000, &qword_266296EC8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628AAA8();
  sub_266294A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v31 = v2;
  sub_26629478C();
  LOBYTE(v33) = 0;
  v17 = v32;
  sub_2662949CC();
  if (v17)
  {
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v27 = v10;
    v32 = v7;
    v19 = v30;

    v20 = type metadata accessor for SiriAudioPunchOutRowSnippetModel();
    v21 = v20[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    sub_26629478C();
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
    sub_26627C060(&qword_28006AAA8);
    sub_2662949EC();

    v22 = v20[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    v23 = v27;
    sub_26629478C();
    LOBYTE(v33) = 2;
    sub_26628B034(&qword_28006AAB0, &qword_28006AAB8);
    sub_2662949EC();
    sub_26627AD78(v23);
    v24 = v31 + v20[7];
    v25 = v19;
    sub_26629473C();
    sub_2662880D0();
    v26 = v28;
    sub_26629471C();
    LOBYTE(v33) = 3;
    sub_266288C40(&qword_28006AFB8);
    sub_2662949EC();
    (*(v29 + 8))(v26, v25);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_26628B034(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006A970, &qword_266294EC0);
    sub_26628B160(a2, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26628B160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26628B1D8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26628B258(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_26628B424(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_26628B5E8()
{
  sub_26627EE30();
  if (v0 <= 0x3F)
  {
    sub_26627CA54(319, &qword_28006AB08, &qword_28006A958, &qword_266295110);
    if (v1 <= 0x3F)
    {
      sub_26627CA54(319, &qword_28006AB10, &qword_28006A970, &qword_266294EC0);
      if (v2 <= 0x3F)
      {
        sub_266289198();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26628B6E0()
{
  result = qword_28006B028;
  if (!qword_28006B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B028);
  }

  return result;
}

unint64_t sub_26628B738()
{
  result = qword_28006B030;
  if (!qword_28006B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B030);
  }

  return result;
}

unint64_t sub_26628B790()
{
  result = qword_28006B038;
  if (!qword_28006B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B038);
  }

  return result;
}

uint64_t sub_26628B7E4()
{
  v0 = sub_2662948EC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t (*SiriAudioAlternativeSnippetModel.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t (*SiriAudioAlternativeSnippetModel.subtitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioAlternativeSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioAlternativeSnippetModel.isSnippetInDarkMode.getter()
{
  v0 = *(type metadata accessor for SiriAudioAlternativeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  sub_26629478C();
  return v2;
}

uint64_t sub_26628B9FC@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAudioAlternativeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  result = sub_26629478C();
  *a1 = v4;
  return result;
}

uint64_t sub_26628BA64(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for SiriAudioAlternativeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  return sub_26629479C();
}

uint64_t SiriAudioAlternativeSnippetModel.isSnippetInDarkMode.setter()
{
  v0 = *(type metadata accessor for SiriAudioAlternativeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  return sub_26629479C();
}

uint64_t (*SiriAudioAlternativeSnippetModel.isSnippetInDarkMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioAlternativeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioAlternativeSnippetModel.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriAudioAlternativeSnippetModel(0) + 28));
}

uint64_t SiriAudioAlternativeSnippetModel.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriAudioAlternativeSnippetModel(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SiriAudioAlternativeSnippetModel.init(title:subtitle:isSnippetInDarkMode:items:)@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  sub_26629476C();
  v4 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  v5 = v4[5];
  sub_26629476C();
  v6 = v4[6];
  result = sub_26629476C();
  *(a2 + v4[7]) = a1;
  return result;
}

unint64_t sub_26628BD24()
{
  v1 = 0x656C746974;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
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

uint64_t sub_26628BD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26628F3A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26628BDC4(uint64_t a1)
{
  v2 = sub_26628C100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26628BE00(uint64_t a1)
{
  v2 = sub_26628C100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioAlternativeSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B040, &qword_2662970E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628C100();
  sub_266294A5C();
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26627E670(&qword_28006ABA0);
  sub_2662949EC();
  if (!v2)
  {
    v11 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
    v12 = v11[5];
    v18 = 1;
    sub_2662949EC();
    v13 = v11[6];
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
    sub_26627A38C(&qword_28006AA20);
    sub_2662949EC();
    v15[1] = *(v3 + v11[7]);
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B050, &qword_2662970E8);
    sub_26628C76C(&qword_28006B058, &qword_28006B060);
    sub_2662949EC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26628C100()
{
  result = qword_28006B048;
  if (!qword_28006B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B048);
  }

  return result;
}

uint64_t SiriAudioAlternativeSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v39 = *(v43 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v43);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B068, &unk_2662970F0);
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v17 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628C100();
  v44 = v16;
  v22 = v45;
  sub_266294A4C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v33 = v7;
  v34 = v11;
  v45 = v17;
  v35 = v20;
  v50 = 0;
  sub_26627E670(&qword_28006ABB0);
  v23 = v40;
  sub_26629496C();
  v24 = v35;
  v25 = v23;
  v26 = v43;
  v40 = *(v39 + 32);
  (v40)(v35, v25, v43);
  v49 = 1;
  v27 = v34;
  sub_26629496C();
  (v40)(v24 + *(v45 + 20), v27, v26);
  v48 = 2;
  sub_26627A38C(&qword_28006AA48);
  v28 = v33;
  v29 = v37;
  sub_26629496C();
  v30 = a1;
  v31 = v45;
  (*(v38 + 32))(v24 + *(v45 + 24), v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B050, &qword_2662970E8);
  v47 = 3;
  sub_26628C76C(&qword_28006B070, &qword_28006B078);
  sub_26629496C();
  (*(v41 + 8))(v44, v42);
  *(v24 + *(v31 + 28)) = v46;
  sub_26628E19C(v24, v36, type metadata accessor for SiriAudioAlternativeSnippetModel);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return sub_26628E204(v24, type metadata accessor for SiriAudioAlternativeSnippetModel);
}

uint64_t sub_26628C76C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006B050, &qword_2662970E8);
    sub_26628C808(a2, type metadata accessor for SiriAudioAlternativeItemModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26628C808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26628C884()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t (*SiriAudioAlternativeItemModel.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627A66C;
}

uint64_t sub_26628C9A8(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v3;
}

uint64_t sub_26628CA04@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  v3 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_26628CA70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *a1;
  v8 = a1[1];
  v5 = *(a5(0) + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t sub_26628CAFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a3(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*SiriAudioAlternativeItemModel.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioAlternativeItemModel.subtitle.getter()
{
  v0 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v2;
}

uint64_t sub_26628CC48@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_26628CCB0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t SiriAudioAlternativeItemModel.subtitle.setter()
{
  v0 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*SiriAudioAlternativeItemModel.subtitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioAlternativeItemModel.imageURL.getter()
{
  v0 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

uint64_t sub_26628CE68()
{
  v0 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

uint64_t sub_26628CEC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_26627AD08(a1, &v10 - v7);
  sub_26627AD08(v8, v6);
  LODWORD(a1) = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(v8);
}

uint64_t SiriAudioAlternativeItemModel.imageURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26627AD08(a1, &v7 - v4);
  v5 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(a1);
}

uint64_t (*SiriAudioAlternativeItemModel.imageURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioAlternativeItemModel.command.getter()
{
  v0 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629473C();
}

uint64_t sub_26628D14C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  result = sub_26629473C();
  *a1 = result;
  return result;
}

uint64_t sub_26628D1A4(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 32);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t SiriAudioAlternativeItemModel.command.setter()
{
  v0 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t (*SiriAudioAlternativeItemModel.command.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  *(v3 + 32) = sub_26629472C();
  return sub_26627D000;
}

uint64_t sub_26628D308()
{
  v1 = *v0;
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_26628D3DC()
{
  *v0;
  *v0;
  *v0;
  sub_26629481C();
}

uint64_t sub_26628D49C()
{
  v1 = *v0;
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_26628D56C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26628F50C();
  *a2 = result;
  return result;
}

void sub_26628D59C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x656C746974627573;
  v7 = 0xE800000000000000;
  v8 = 0x4C52556567616D69;
  if (v2 != 3)
  {
    v8 = 0x646E616D6D6F63;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
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

uint64_t sub_26628D62C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C746974627573;
  v4 = 0x4C52556567616D69;
  if (v1 != 3)
  {
    v4 = 0x646E616D6D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_26628D6B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26628F50C();
  *a1 = result;
  return result;
}

uint64_t sub_26628D6E0(uint64_t a1)
{
  v2 = sub_26628E0AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26628D71C(uint64_t a1)
{
  v2 = sub_26628E0AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioAlternativeItemModel.init(id:title:subtitle:imageURL:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = type metadata accessor for SiriAudioAlternativeItemModel(0);
  v22 = v21[7];
  v23 = sub_26629470C();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  sub_26627AD08(v20, v18);
  sub_26629476C();
  sub_26627AD78(v20);
  v34 = a1;
  v35 = a2;
  sub_26629476C();
  v24 = v21[5];
  v34 = a3;
  v35 = a4;
  sub_26629476C();
  v25 = v21[6];
  v34 = v30;
  v35 = v31;
  sub_26629476C();
  v26 = v32;
  sub_26627AD08(v32, v20);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  (*(*(v27 - 8) + 8))(a9 + v22, v27);
  sub_26627AD08(v20, v18);
  sub_26629476C();
  sub_26627AD78(v20);
  v28 = v21[8];
  sub_2662880D0();
  sub_26629471C();
  return sub_26627AD78(v26);
}

uint64_t SiriAudioAlternativeItemModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v50 = *(v52 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v54 = v48 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B080, &qword_266297100);
  v53 = *(v55 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v7 = v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v48 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v48 - v16;
  v18 = type metadata accessor for SiriAudioAlternativeItemModel(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 28);
  v24 = sub_26629470C();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  sub_26627AD08(v17, v15);
  v58 = v23;
  v61 = v22;
  sub_26629476C();
  sub_26627AD78(v17);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628E0AC();
  v56 = v7;
  v26 = v57;
  sub_266294A4C();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v30 = v61;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    return (*(*(v31 - 8) + 8))(&v30[v58], v31);
  }

  else
  {
    v49 = v12;
    v27 = v53;
    v28 = v54;
    v57 = v18;
    LOBYTE(v59) = 0;
    v29 = v55;
    v59 = sub_26629494C();
    v60 = v32;
    sub_26629476C();
    LOBYTE(v59) = 1;
    v33 = sub_26629494C();
    v34 = v57;
    v35 = *(v57 + 20);
    v59 = v33;
    v60 = v36;
    sub_26629476C();
    LOBYTE(v59) = 2;
    v48[1] = 0;
    v37 = sub_26629494C();
    v38 = *(v34 + 24);
    v59 = v37;
    v60 = v39;
    sub_26629476C();
    LOBYTE(v59) = 3;
    sub_26628E100(&qword_28006AA90, &qword_28006AA98);
    sub_26629496C();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    v41 = *(*(v40 - 8) + 8);
    v48[0] = v8;
    v41(&v61[v58], v40);
    v42 = v49;
    sub_26627AD08(v49, v17);
    sub_26629476C();
    sub_26627AD78(v42);
    LOBYTE(v59) = 4;
    sub_266288C40(&qword_28006AFA8);
    v43 = v52;
    sub_26629496C();
    sub_26629473C();
    (*(v50 + 8))(v28, v43);
    v44 = v29;
    v45 = *(v57 + 32);
    sub_2662880D0();
    v46 = v61;
    sub_26629471C();
    (*(v27 + 8))(v56, v44);
    sub_26628E19C(v46, v51, type metadata accessor for SiriAudioAlternativeItemModel);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_26628E204(v46, type metadata accessor for SiriAudioAlternativeItemModel);
  }
}

unint64_t sub_26628E0AC()
{
  result = qword_28006B088;
  if (!qword_28006B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B088);
  }

  return result;
}

uint64_t sub_26628E100(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006A970, &qword_266294EC0);
    sub_26628C808(a2, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26628E19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26628E204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriAudioAlternativeItemModel.encode(to:)(void *a1)
{
  v2 = v1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v28 = *(v26 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v27 = &v25 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v6 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B090, &qword_266297108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628E0AC();
  sub_266294A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v30 = v2;
  sub_26629478C();
  LOBYTE(v31) = 0;
  v15 = v32;
  sub_2662949CC();
  if (v15)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v32 = v8;

    v16 = type metadata accessor for SiriAudioAlternativeItemModel(0);
    v17 = v30 + v16[5];
    sub_26629478C();
    LOBYTE(v31) = 1;
    sub_2662949CC();

    v18 = v30 + v16[6];
    sub_26629478C();
    LOBYTE(v31) = 2;
    sub_2662949CC();

    v19 = v16[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    v20 = v32;
    sub_26629478C();
    LOBYTE(v31) = 3;
    sub_26628E100(&qword_28006AAB0, &qword_28006AAB8);
    sub_2662949EC();
    sub_26627AD78(v20);
    v21 = v30 + v16[8];
    v22 = v26;
    sub_26629473C();
    sub_2662880D0();
    v23 = v27;
    sub_26629471C();
    LOBYTE(v31) = 4;
    sub_266288C40(&qword_28006AFB8);
    sub_2662949EC();
    (*(v28 + 8))(v23, v22);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t keypath_getTm@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26628E98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_26628EAC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_26628EBE4()
{
  sub_26627CA08(319, &qword_28006AB00);
  if (v0 <= 0x3F)
  {
    sub_26627CA08(319, &qword_28006AAE0);
    if (v1 <= 0x3F)
    {
      sub_26628F114(319, &qword_28006B0A8, type metadata accessor for SiriAudioAlternativeItemModel, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26628ECE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 32);

  return v15(v16, a2, v14);
}

uint64_t sub_26628EE5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 32);

  return v17(v18, a2, a2, v16);
}

void sub_26628EFCC()
{
  sub_26627CA08(319, &qword_28006AB00);
  if (v0 <= 0x3F)
  {
    sub_26628F0B0();
    if (v1 <= 0x3F)
    {
      sub_26628F114(319, &qword_28006AFD0, sub_2662880D0, MEMORY[0x277D63220]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26628F0B0()
{
  if (!qword_28006AB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006A970, &qword_266294EC0);
    v0 = sub_2662947AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28006AB10);
    }
  }
}

void sub_26628F114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26628F19C()
{
  result = qword_28006B0C0;
  if (!qword_28006B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0C0);
  }

  return result;
}

unint64_t sub_26628F1F4()
{
  result = qword_28006B0C8;
  if (!qword_28006B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0C8);
  }

  return result;
}

unint64_t sub_26628F24C()
{
  result = qword_28006B0D0;
  if (!qword_28006B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0D0);
  }

  return result;
}

unint64_t sub_26628F2A4()
{
  result = qword_28006B0D8;
  if (!qword_28006B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0D8);
  }

  return result;
}

unint64_t sub_26628F2FC()
{
  result = qword_28006B0E0;
  if (!qword_28006B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0E0);
  }

  return result;
}

unint64_t sub_26628F354()
{
  result = qword_28006B0E8;
  if (!qword_28006B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0E8);
  }

  return result;
}

uint64_t sub_26628F3A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000266298420 == a2 || (sub_2662949FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2662949FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_26628F50C()
{
  v0 = sub_2662948EC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26628F568(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000747865;
  v3 = 0x546D7269666E6F63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x74786554796E6564;
    }

    else
    {
      v5 = 0x546D7269666E6F63;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000747865;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x436D7269666E6F63;
    v6 = 0xEE00646E616D6D6FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6D6D6F43796E6564;
    }

    else
    {
      v5 = 0x7572747365447369;
    }

    if (v4 == 3)
    {
      v6 = 0xEB00000000646E61;
    }

    else
    {
      v6 = 0xED00006576697463;
    }
  }

  v7 = 0x436D7269666E6F63;
  v8 = 0xEE00646E616D6D6FLL;
  v9 = 0x6D6D6F43796E6564;
  v10 = 0xEB00000000646E61;
  if (a2 != 3)
  {
    v9 = 0x7572747365447369;
    v10 = 0xED00006576697463;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x74786554796E6564;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2662949FC();
  }

  return v13 & 1;
}