uint64_t sub_2623FCEF4(uint64_t *a1, uint64_t a2)
{
  v5 = sub_2623FCDF4(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_2623FCF44()
{
  if (*v0)
  {
    result = 0x706E497865676572;
  }

  else
  {
    result = 0x6E49676E69727473;
  }

  *v0;
  return result;
}

uint64_t sub_2623FCF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E49676E69727473 && a2 == 0xEB00000000747570;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x706E497865676572 && a2 == 0xEA00000000007475)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_2623FD074(uint64_t a1)
{
  v2 = sub_2624078BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FD0B0(uint64_t a1)
{
  v2 = sub_2624078BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FD0EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAA8, &unk_262465A00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624078BC();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262407910(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262407948(v15);
}

uint64_t sub_2623FD338(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(&v43, v8, v5);
  if (v2)
  {
    return v9;
  }

  v11 = v43;
  v12 = v3[8];
  v13 = v3[9];
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
  (*(*(v13 + 8) + 24))(&v43, v14, v12);

  v16 = *(&v43 + 1);
  if (!*(&v11 + 1) || !*(&v43 + 1))
  {

    return 0;
  }

  v17 = v43;
  v18 = HIBYTE(*(&v43 + 1)) & 0xFLL;
  if ((*(&v43 + 1) & 0x2000000000000000) == 0)
  {
    v18 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    sub_2623F1BBC();
    v9 = swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v16;
    *(v20 + 16) = 0xD000000000000012;
    *(v20 + 24) = 0x8000000262471940;
    v21 = v44;
    *(v20 + 32) = v43;
    *(v20 + 48) = v21;
    *(v20 + 64) = 8;
    swift_willThrow();
    return v9;
  }

  v19 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  swift_bridgeObjectRetain_n();
  v22 = sub_26244FF6C(v17, v16, 0);
  v23 = sub_2624626D8();
  v24 = sub_2624626D8();
  v42 = v23;
  v25 = [v22 matchesInString:v24 options:0 range:{0, objc_msgSend(v23, sel_length)}];

  v41 = v22;
  sub_2624079E4(0, &qword_27FF0CAC8, 0x277CCACC0);
  v26 = sub_262462848();

  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_27:

    goto LABEL_28;
  }

  result = sub_262462AD8();
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_14:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x266728730](0, v26);
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v27 = *(v26 + 32);
  }

  v28 = v27;

  if ([v28 numberOfRanges] < 2)
  {

LABEL_28:

    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_262462A28();
    MEMORY[0x266728460](0xD000000000000036, 0x8000000262471900);
    MEMORY[0x266728460](v11, *(&v11 + 1));

    MEMORY[0x266728460](32032, 0xE200000000000000);
    v38 = v43;
    sub_2623F1BBC();
    v9 = swift_allocError();
    *v39 = v17;
    *(v39 + 8) = v16;
    *(v39 + 16) = v38;
    v40 = v44;
    *(v39 + 32) = v43;
    *(v39 + 48) = v40;
    *(v39 + 64) = 8;
    swift_willThrow();

    return v9;
  }

  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  result = [v28 numberOfRanges];
  if (result >= 1)
  {
    if (result == 1)
    {

      v9 = 0;
    }

    else
    {
      v29 = result;
      v30 = 1;
      do
      {
        v31 = v30 + 1;
        v32 = [v28 rangeAtIndex_];
        v34 = [v42 substringWithRange_];
        v35 = sub_2624626E8();
        v37 = v36;

        MEMORY[0x266728460](v35, v37);

        v30 = v31;
      }

      while (v29 != v31);

      v9 = v43;
    }

    return v9;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2623FD8F8()
{
  if (*v0)
  {
    return 0x75706E4968746170;
  }

  else
  {
    return 0x75706E496E6F736ALL;
  }
}

uint64_t sub_2623FD930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75706E496E6F736ALL && a2 == 0xE900000000000074;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x75706E4968746170 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_2623FDA14(uint64_t a1)
{
  v2 = sub_262407800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FDA50(uint64_t a1)
{
  v2 = sub_262407800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FDA8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA98, &qword_2624659F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262407800();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  type metadata accessor for StringListExpressionDecoder();
  sub_26241FE98(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262407854(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26240788C(v15);
}

uint64_t sub_2623FDCE4(uint64_t a1)
{
  v3 = v1;
  v69 = *MEMORY[0x277D85DE8];
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(v68, v8, v5);
  if (v2)
  {
    goto LABEL_3;
  }

  v11 = v68[0];
  v12 = v3[8];
  v13 = v3[9];
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
  (*(*(v13 + 8) + 24))(v68, v14, v12);

  v17 = *&v68[0];
  if (!*(&v11 + 1))
  {

    v9 = 0;
    goto LABEL_3;
  }

  if (!*&v68[0])
  {

    goto LABEL_93;
  }

  v18 = objc_opt_self();

  v19 = sub_2623F47D4(v11, *(&v11 + 1));
  v21 = v20;
  v22 = sub_2624625E8();
  sub_2623F4694(v19, v21);
  *&v66 = 0;
  v23 = [v18 JSONObjectWithData:v22 options:0 error:&v66];

  if (!v23)
  {
    v58 = v66;

    v59 = sub_262462548();

    swift_willThrow();
    swift_getErrorValue();
    v9 = sub_262462C88();
    v61 = v60;
    sub_2623F1BBC();
    swift_allocError();
    *v62 = v11;
    *(v62 + 16) = v17;
    *(v62 + 24) = v9;
    *(v62 + 32) = v61;
    *(v62 + 40) = v66;
    *(v62 + 56) = v67;
    *(v62 + 64) = 9;
    swift_willThrow();
    MEMORY[0x266728D50](v59);
    goto LABEL_3;
  }

  v24 = v66;
  sub_262462998();
  swift_unknownObjectRelease();
  v64 = *(v17 + 16);
  if (!v64)
  {
LABEL_91:

    sub_262407978(v68, &v66);
    sub_2624079E4(0, &qword_27FF0CAD8, 0x277CBEB68);
    if (!swift_dynamicCast())
    {
      sub_262407978(v68, &v66);
      if (swift_dynamicCast())
      {
        if (v65)
        {
          v9 = 1702195828;
        }

        else
        {
          v9 = 0x65736C6166;
        }
      }

      else
      {
        sub_262407978(v68, &v66);
        v9 = sub_262462728();
      }

      __swift_destroy_boxed_opaque_existential_1(v68);

      goto LABEL_3;
    }

    __swift_destroy_boxed_opaque_existential_1(v68);

LABEL_93:
    v9 = 0;
    goto LABEL_3;
  }

  v25 = 0;
  while (1)
  {
    if (v25 >= *(v17 + 16))
    {
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
    }

    v26 = (v17 + 32 + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = HIBYTE(v28) & 0xF;
    v30 = v27 & 0xFFFFFFFFFFFFLL;
    if (!((v28 & 0x2000000000000000) != 0 ? HIBYTE(v28) & 0xF : v27 & 0xFFFFFFFFFFFFLL))
    {
      break;
    }

    if ((v28 & 0x1000000000000000) == 0)
    {
      if ((v28 & 0x2000000000000000) != 0)
      {
        *&v66 = v27;
        *(&v66 + 1) = v28 & 0xFFFFFFFFFFFFFFLL;
        if (v27 == 43)
        {
          if (!v29)
          {
            goto LABEL_104;
          }

          if (--v29)
          {
            v34 = 0;
            v44 = &v66 + 1;
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                break;
              }

              v46 = 10 * v34;
              if ((v34 * 10) >> 64 != (10 * v34) >> 63)
              {
                break;
              }

              v34 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                break;
              }

              ++v44;
              if (!--v29)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v27 == 45)
        {
          if (!v29)
          {
            goto LABEL_106;
          }

          if (--v29)
          {
            v34 = 0;
            v38 = &v66 + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              v40 = 10 * v34;
              if ((v34 * 10) >> 64 != (10 * v34) >> 63)
              {
                break;
              }

              v34 = v40 - v39;
              if (__OFSUB__(v40, v39))
              {
                break;
              }

              ++v38;
              if (!--v29)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v29)
        {
          v34 = 0;
          v49 = &v66;
          while (1)
          {
            v50 = *v49 - 48;
            if (v50 > 9)
            {
              break;
            }

            v51 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              break;
            }

            v34 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              break;
            }

            ++v49;
            if (!--v29)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        if ((v27 & 0x1000000000000000) != 0)
        {
          v32 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v32 = sub_262462A98();
        }

        v33 = *v32;
        if (v33 == 43)
        {
          if (v30 < 1)
          {
            goto LABEL_105;
          }

          v29 = v30 - 1;
          if (v30 != 1)
          {
            v34 = 0;
            if (!v32)
            {
              goto LABEL_62;
            }

            v41 = v32 + 1;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                break;
              }

              v43 = 10 * v34;
              if ((v34 * 10) >> 64 != (10 * v34) >> 63)
              {
                break;
              }

              v34 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                break;
              }

              ++v41;
              if (!--v29)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v33 == 45)
        {
          if (v30 < 1)
          {
            goto LABEL_107;
          }

          v29 = v30 - 1;
          if (v30 != 1)
          {
            v34 = 0;
            if (v32)
            {
              v35 = v32 + 1;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  goto LABEL_70;
                }

                v37 = 10 * v34;
                if ((v34 * 10) >> 64 != (10 * v34) >> 63)
                {
                  goto LABEL_70;
                }

                v34 = v37 - v36;
                if (__OFSUB__(v37, v36))
                {
                  goto LABEL_70;
                }

                ++v35;
                if (!--v29)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_62:
            LOBYTE(v29) = 0;
LABEL_71:
            LOBYTE(v65) = v29;
            v52 = v29;

            if (v52)
            {
              goto LABEL_78;
            }

            goto LABEL_72;
          }
        }

        else
        {
          if (!v30)
          {
            goto LABEL_70;
          }

          v34 = 0;
          if (!v32)
          {
            goto LABEL_62;
          }

          while (1)
          {
            v47 = *v32 - 48;
            if (v47 > 9)
            {
              break;
            }

            v48 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              break;
            }

            v34 = v48 + v47;
            if (__OFADD__(v48, v47))
            {
              break;
            }

            ++v32;
            if (!--v30)
            {
              goto LABEL_62;
            }
          }
        }
      }

LABEL_70:
      v34 = 0;
      LOBYTE(v29) = 1;
      goto LABEL_71;
    }

    swift_bridgeObjectRetain_n();
    v34 = sub_262402F90(v27, v28, 10);
    v57 = v56;

    if (v57)
    {
      goto LABEL_78;
    }

LABEL_72:
    sub_262407978(v68, &v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAE0, &qword_262465A28);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_78;
    }

    if (v34 >= v65[2])
    {

      goto LABEL_78;
    }

    if (v34 < 0)
    {
      goto LABEL_108;
    }

    if (v34 >= v65[2])
    {
      goto LABEL_109;
    }

    sub_262407978(&v65[4 * v34 + 4], &v66);
LABEL_82:

    __swift_destroy_boxed_opaque_existential_1(v68);
    sub_2624079D4(&v66, v68);
    if (++v25 == v64)
    {
      goto LABEL_91;
    }
  }

LABEL_78:
  sub_262407978(v68, &v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAD0, &qword_262465A20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_100;
  }

  if (v65[2])
  {
    v53 = sub_2624414FC(v27, v28);
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      goto LABEL_100;
    }

    sub_262407978(v65[7] + 32 * v53, &v66);
    goto LABEL_82;
  }

LABEL_100:

  sub_2623F1BBC();
  v9 = swift_allocError();
  *v63 = v11;
  *(v63 + 16) = v17;
  *(v63 + 24) = 0xD000000000000021;
  *(v63 + 32) = 0x8000000262471960;
  *(v63 + 40) = v66;
  *(v63 + 56) = v67;
  *(v63 + 64) = 9;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v68);
LABEL_3:
  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_2623FE5FC()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E49676E69727473;
  }
}

uint64_t sub_2623FE654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2624087B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2623FE67C(uint64_t a1)
{
  v2 = sub_262407724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FE6B8(uint64_t a1)
{
  v2 = sub_262407724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FE6F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C810, &qword_2624659F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262407724();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37) = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v31, v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_2623EB668(v32, v33);
  v12 = COERCE_DOUBLE(sub_2623F6AC4(v9, 1));
  if ((v13 & 1) != 0 || ((v14 = trunc(v12), v12 > -9.22337204e18) ? (v15 = v12 < 9.22337204e18) : (v15 = 0), v15 ? (v16 = v14 == v12) : (v16 = 0), !v16))
  {
    v17 = sub_262462B48();
    v18 = sub_262427A60(v17);
    v20 = v19;

    *&v32[0] = MEMORY[0x277D83B88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
    v21 = sub_262462728();
    v23 = v22;
    sub_2623F1BBC();
    swift_allocError();
    *v24 = v18;
    *(v24 + 8) = v20;
    *(v24 + 16) = 0x7472617473;
    *(v24 + 24) = 0xE500000000000000;
    *(v24 + 32) = v21;
    *(v24 + 40) = v23;
    *(v24 + 48) = v32[0];
    *(v24 + 64) = 4;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v33;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v12;
  v25 = sub_2623F6AC4(v9, 2);
  v26 = MEMORY[0x28223BE20](v25);
  v31[-2] = v9;
  if (v27)
  {
    v28 = 0;
    v29 = v27 & 1;
  }

  else
  {
    v30 = v27;
    v31[0] = v26;
    sub_262407778(v31, &v37, v32);
    v28 = *&v32[0];
    v29 = v30 & 1;
  }

  v35 = v28;
  v36 = v29 & 1;
  (*(v6 + 8))(v9, v5);
  sub_262407798(v33, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624077D0(v33);
}

double *sub_2623FEA7C@<X0>(double *result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v3 = *result;
  v4 = trunc(*result);
  if (*result > -9.22337204e18 && v3 < 9.22337204e18 && v3 == v4)
  {
    *a3 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C810, &qword_2624659F0);
    v8 = sub_262462B48();
    v9 = sub_262427A60(v8);
    v11 = v10;

    *&v17 = MEMORY[0x277D83B88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
    v12 = sub_262462728();
    v14 = v13;
    sub_2623F1BBC();
    v15 = swift_allocError();
    *v16 = v9;
    *(v16 + 8) = v11;
    *(v16 + 16) = 6581861;
    *(v16 + 24) = 0xE300000000000000;
    *(v16 + 32) = v12;
    *(v16 + 40) = v14;
    *(v16 + 48) = v17;
    *(v16 + 64) = 4;
    result = swift_willThrow();
    *a2 = v15;
  }

  return result;
}

uint64_t sub_2623FEBB0(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1(v4, v6);
  (*(*(v7 + 8) + 24))(v39, a1, v6);
  if (v2)
  {
    return v3;
  }

  v8 = *&v39[8];
  v3 = *v39;
  if (!*&v39[8])
  {
    return v3;
  }

  v9 = *(v4 + 40);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if ((*&v39[8] & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(*&v39[8]) & 0xFLL;
  }

  else
  {
    v10 = *v39 & 0xFFFFFFFFFFFFLL;
  }

  v11 = 7;
  if (((*&v39[8] >> 60) & ((*v39 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v12 = v11 | (v10 << 16);
  swift_bridgeObjectRetain_n();
  v13 = sub_262462788();
  v15 = v14;

  if (v15)
  {
    v13 = v12;
  }

  v17 = 4 * v10;
  v18 = v13 >> 14;
  if (v17 < v13 >> 14)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v18 == v17)
  {

LABEL_15:

    sub_2623F1BBC();
    swift_allocError();
    *v19 = v3;
    *(v19 + 8) = v8;
    *(v19 + 16) = v9;
LABEL_16:
    v20 = v40;
    v21 = *&v39[16];
    *(v19 + 24) = *v39;
    *(v19 + 40) = v21;
    *(v19 + 56) = v20;
    v22 = 10;
LABEL_17:
    *(v19 + 64) = v22;
    swift_willThrow();
    return v3;
  }

  if ((*(v4 + 56) & 1) != 0 || (v23 = *(v4 + 48), , v37 = sub_2624627E8(), result = , v23 == v37))
  {
    v24 = sub_2623FEF28(v13, v3, v8);
LABEL_22:
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;

    v3 = MEMORY[0x266728420](v28, v29, v30, v31);

    return v3;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v36 = v23;
  v38 = sub_262462788();
  v33 = v32;

  if (v33)
  {
    v34 = v12;
  }

  else
  {
    v34 = v38;
  }

  v35 = v34 >> 14;
  if (v17 < v34 >> 14)
  {
    goto LABEL_36;
  }

  if (v35 == v17)
  {

    sub_2623F1BBC();
    swift_allocError();
    *v19 = v3;
    *(v19 + 8) = v8;
    *(v19 + 16) = v36;
    goto LABEL_16;
  }

  if (v36 < v9)
  {

    v41 = 0;
    sub_2623F1BBC();
    swift_allocError();
    *v19 = v3;
    *(v19 + 8) = v8;
    *(v19 + 16) = v9;
    *(v19 + 24) = v36;
    *(v19 + 32) = v41;
    *(v19 + 33) = *v39;
    *(v19 + 48) = *&v39[15];
    v22 = 11;
    goto LABEL_17;
  }

  if (v35 >= v18)
  {
    v24 = sub_262462828();
    goto LABEL_22;
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_2623FEF28(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_262462828();
  }

  __break(1u);
  return result;
}

uint64_t sub_2623FEF74(uint64_t *a1, uint64_t a2)
{
  v5 = sub_2623FEBB0(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_2623FEFC4()
{
  if (*v0)
  {
    result = 0x7865646E69;
  }

  else
  {
    result = 0x6E49676E69727473;
  }

  *v0;
  return result;
}

uint64_t sub_2623FF004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E49676E69727473 && a2 == 0xEB00000000747570;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_2623FF0E0(uint64_t a1)
{
  v2 = sub_262407668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FF11C(uint64_t a1)
{
  v2 = sub_262407668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FF158@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C808, qword_262464BF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262407668();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26[15] = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_2623EB668(v28, v29);
  v12 = COERCE_DOUBLE(sub_2623F6CC4(v9, 1));
  if ((v13 & 1) != 0 || ((v15 = v12, v14.n128_f64[0] = trunc(v12), v12 > -9.22337204e18) ? (v16 = v12 < 9.22337204e18) : (v16 = 0), v16 ? (v17 = v14.n128_f64[0] == v12) : (v17 = 0), !v17))
  {
    v18 = sub_262462B48();
    v19 = sub_262427A60(v18);
    v21 = v20;

    *&v28[0] = MEMORY[0x277D83B88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
    v22 = sub_262462728();
    v24 = v23;
    sub_2623F1BBC();
    swift_allocError();
    *v25 = v19;
    *(v25 + 8) = v21;
    *(v25 + 16) = 0x7865646E69;
    *(v25 + 24) = 0xE500000000000000;
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    *(v25 + 48) = v28[0];
    *(v25 + 64) = 4;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v29;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  (*(v6 + 8))(v9, v5, v14);
  v30 = v15;
  sub_2624076BC(v29, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624076F4(v29);
}

unint64_t sub_2623FF448(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  (*(*(v7 + 8) + 24))(v18, a1, v6);
  if (v2)
  {
    return v3;
  }

  v8 = *(&v18[0] + 1);
  v3 = *&v18[0];
  if (!*(&v18[0] + 1))
  {
    return v3;
  }

  v9 = v4[5];
  if (v9 < 0)
  {
    goto LABEL_15;
  }

  if ((*(&v18[0] + 1) & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(*(&v18[0] + 1)) & 0xFLL;
  }

  else
  {
    v10 = *&v18[0] & 0xFFFFFFFFFFFFLL;
  }

  v11 = 7;
  if (((*(&v18[0] + 1) >> 60) & ((*&v18[0] & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v12 = v11 | (v10 << 16);

  result = sub_262462788();
  if (v14)
  {
    result = v12;
  }

  if (4 * v10 >= result >> 14)
  {
    if (result >> 14 != 4 * v10)
    {
      v3 = sub_262462808();
      swift_bridgeObjectRelease_n();
      return v3;
    }

LABEL_15:

    sub_2623F1BBC();
    swift_allocError();
    *v15 = v3;
    *(v15 + 8) = v8;
    *(v15 + 16) = v9;
    v16 = v19;
    v17 = v18[1];
    *(v15 + 24) = v18[0];
    *(v15 + 40) = v17;
    *(v15 + 56) = v16;
    *(v15 + 64) = 10;
    swift_willThrow();
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2623FF64C()
{
  if (*v0)
  {
    result = 0x7865646E69;
  }

  else
  {
    result = 0x75706E497473696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2623FF688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75706E497473696CLL && a2 == 0xE900000000000074;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_2623FF768(uint64_t a1)
{
  v2 = sub_2624075AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FF7A4(uint64_t a1)
{
  v2 = sub_2624075AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FF7E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA78, &qword_2624659E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624075AC();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringListExpressionDecoder();
  sub_26241FE98(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262407600(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262407638(v15);
}

void *sub_2623FFA40(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(v26, v8, v5);
  if (!v2)
  {
    v11 = *&v26[0];
    v12 = v3[8];
    v13 = v3[9];
    v14 = v10;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
    (*(*(v13 + 8) + 24))(v26, v14, v12);

    if (!v11)
    {
      return 0;
    }

    if (BYTE8(v26[0]))
    {

      return 0;
    }

    v16 = *&v26[0];
    v17 = trunc(*v26);
    v19 = *v26 > -9.22337204e18 && *v26 < 9.22337204e18 && *v26 == v17;
    if (!v19 || (v20 = *v26, *v26 < 0) || *(v11 + 16) <= v20)
    {

      v9 = *(v11 + 16);

      sub_2623F1BBC();
      swift_allocError();
      *v23 = v9;
      *(v23 + 8) = v16;
      v25 = v26[1];
      v24 = v26[2];
      *(v23 + 16) = v26[0];
      *(v23 + 32) = v25;
      *(v23 + 48) = v24;
      *(v23 + 64) = 12;
      swift_willThrow();
    }

    else
    {
      v21 = v11 + 16 * v20;
      v9 = *(v21 + 32);
      v22 = *(v21 + 40);
    }
  }

  return v9;
}

uint64_t sub_2623FFC78()
{
  if (*v0)
  {
    result = 0x6F74617261706573;
  }

  else
  {
    result = 0x75706E497473696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2623FFCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x75706E497473696CLL && a2 == 0xE900000000000074 || (sub_262462C58() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F74617261706573 && a2 == 0xE900000000000072)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_262462C58();

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

uint64_t sub_2623FFD9C(uint64_t a1)
{
  v2 = sub_2624074F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FFDD8(uint64_t a1)
{
  v2 = sub_2624074F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FFE14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA68, &qword_2624659E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624074F0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringListExpressionDecoder();
  sub_26241FE98(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262407544(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26240757C(v15);
}

uint64_t sub_26240006C(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(v16, v8, v5);
  if (!v2)
  {
    v11 = v16[0];
    v12 = v3[8];
    v13 = v3[9];
    v14 = v10;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
    (*(*(v13 + 8) + 24))(v16, v14, v12);

    if (v11 && v16[1])
    {
      v16[0] = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
      sub_262407A30();
      v9 = sub_2624626A8();

      swift_bridgeObjectRelease_n();
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

uint64_t sub_26240022C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a5(a2);
  result = v9;
  if (!v5)
  {
    *a1 = v8;
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_262400280(uint64_t a1)
{
  v2 = sub_262407434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624002BC(uint64_t a1)
{
  v2 = sub_262407434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624002F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_262462A88();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA58, &qword_2624659D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_262407434();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v15 = v19;
  v17[3] = v7;
  v25 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_2623EB668(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C8F8, &qword_262464C60);
  LOBYTE(v21[0]) = 1;
  sub_2624050E4();
  sub_262462BB8();
  (*(v9 + 8))(v12, v8);
  v24 = v22[0];
  sub_262407488(v23, v15);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_2624074C0(v23);
}

uint64_t sub_26240074C(uint64_t a1)
{
  sub_2623F3CA4(v1, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAB8, &unk_262465A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAC0, &qword_262468F30);
  if (!swift_dynamicCast())
  {

    return 0;
  }

  sub_2623EB668(v13, v22);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6 = v23;
  v7 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v8 = *(v7 + 24);

  v8(v21, a1, v6, v7);
  if (!v2)
  {

    goto LABEL_7;
  }

  v20 = v2;
  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    MEMORY[0x266728D50](v2);
    v13[2] = v17;
    v13[3] = v18;
    v14 = v19;
    v13[0] = v15;
    v13[1] = v16;
    v21[0] = v5;
    v21[1] = v4;
    v11[2] = v17;
    v11[3] = v18;
    v12 = v19;
    v11[0] = v15;
    v11[1] = v16;
    sub_262427BA0(a1, v11);
    sub_2623F3C50(v13);
    MEMORY[0x266728D50](v20);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v21[0];
  }

  MEMORY[0x266728D50](v20);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_262400938(uint64_t *a1, uint64_t a2)
{
  v5 = sub_26240074C(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_262400988(uint64_t a1)
{
  v2 = sub_262407378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624009C4(uint64_t a1)
{
  v2 = sub_262407378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262400A00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA48, &qword_2624659D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_262407378();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v48 = v7;
  LOBYTE(v51) = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_2623EB668(v56, v57);
  LOBYTE(v51) = 2;
  sub_262462B58();
  sub_2623FB53C(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_2623EB668(v56, &v59);
  LOBYTE(v56[0]) = 1;
  sub_2623F3688();
  sub_262462B38();
  v43 = v4;
  v16 = sub_262462BC8();
  v42 = *(v16 + 16);
  if (!v42)
  {
    v19 = MEMORY[0x277D84F98];
LABEL_20:

    (*(v50 + 8))(v48, v43);
    (*(v9 + 8))(v12, v8);
    v58 = v19;
    sub_2624073CC(v57, v49);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_262407404(v57);
  }

  v17 = 0;
  v18 = (v16 + 56);
  v19 = MEMORY[0x277D84F98];
  v41 = v16;
  while (1)
  {
    v47 = v19;
    if (v17 >= *(v16 + 16))
    {
      break;
    }

    v21 = *(v18 - 3);
    v22 = *(v18 - 2);
    v23 = *v18;
    v46 = v18;
    v24 = *(v18 - 1);
    v25 = v21;
    v51 = v21;
    v52 = v22;
    v53 = v24;
    v54 = v23;
    swift_bridgeObjectRetain_n();
    sub_262462B58();

    sub_2623FB53C(v55, v56);
    v44 = v17;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_2623EB668(v56, v55);
    v26 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v26;
    v27 = v22;
    v29 = sub_2624414FC(v25, v22);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_22;
    }

    v33 = v28;
    if (v26[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v28)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_2624615DC();
        if (v33)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_26245FCF4(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_2624414FC(v25, v27);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_24;
      }

      v29 = v34;
      if (v33)
      {
LABEL_5:

        v19 = v51;
        v20 = (v51[7] + 40 * v29);
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_2623EB668(v55, v20);
        goto LABEL_6;
      }
    }

    v36 = v25;
    v19 = v51;
    v51[(v29 >> 6) + 8] |= 1 << v29;
    v37 = (v19[6] + 16 * v29);
    *v37 = v36;
    v37[1] = v27;
    sub_2623EB668(v55, v19[7] + 40 * v29);
    v38 = v19[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_23;
    }

    v19[2] = v40;
LABEL_6:
    v16 = v41;
    v17 = v44 + 1;
    v18 = v46 + 32;
    if (v42 == v44 + 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_262462C78();
  __break(1u);
  return result;
}

uint64_t sub_262401118(uint64_t a1)
{
  v4 = sub_26240DB18(v1[5]);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  sub_2623F3CA4((v1 + 6), &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAB8, &unk_262465A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAC0, &qword_262468F30);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_6:

    return 0;
  }

  sub_2623EB668(v21, v26);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = (*(*(v7 + 8) + 24))(&v22, a1, v6);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v9 = v8;
    v10 = v23;
    if (v23 && *(v5 + 16) && (v11 = v22, , v12 = sub_2624414FC(v11, v10), v14 = v13, , (v14 & 1) != 0))
    {
      sub_2623F3CA4(*(v5 + 56) + 40 * v12, v21);
      sub_2623EB668(v21, &v22);
      v15 = v24;
      v16 = v25;
      __swift_project_boxed_opaque_existential_1(&v22, v24);
      (*(v16 + 24))(&v20, v9, v15, v16);

      __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    else
    {
      v17 = v27;
      v18 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v18 + 24))(&v20, v9, v17, v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
    return v20;
  }
}

uint64_t sub_262401384(uint64_t *a1, uint64_t a2)
{
  v5 = sub_262401118(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_2624013F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E497265626D756ELL && a2 == 0xEB00000000747570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_262401480(uint64_t a1)
{
  v2 = sub_262407324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624014BC(uint64_t a1)
{
  v2 = sub_262407324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624014F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA38, &unk_2624659C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262407324();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberExpressionDecoder();
    sub_262427F88(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2624016B4(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(*(v5 + 8) + 24))(&v15, a1, v4);
  if (!v2)
  {
    if (v16)
    {
      return 0;
    }

    else
    {
      v6 = v15;
      v7 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v7 setMinimumFractionDigits_];
      [v7 setMinimumIntegerDigits_];
      [v7 setMaximumFractionDigits_];
      v9 = [v7 stringFromNumber_];
      if (v9)
      {
        v10 = v9;
        v11 = sub_2624626E8();
        v13 = v12;

        v15 = *&v11;
        v16 = v13;
        swift_bridgeObjectRetain_n();
        v4 = sub_262462818();
        swift_bridgeObjectRelease_n();
      }

      else
      {

        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_262401880(uint64_t *a1, uint64_t a2)
{
  v5 = sub_2624016B4(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_2624018D0()
{
  v1 = 0x62614C65736C6166;
  if (*v0 != 1)
  {
    v1 = 0x7475706E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6562614C65757274;
  }
}

uint64_t sub_262401930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2624088CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262401958(uint64_t a1)
{
  v2 = sub_262407268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262401994(uint64_t a1)
{
  v2 = sub_262407268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624019D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_262462A88();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA28, &qword_2624659B8);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262407268();
  v11 = v20;
  sub_262462D88();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22[0]) = 0;
  v23[0] = sub_262462B88();
  v23[1] = v12;
  v20 = v12;
  LOBYTE(v22[0]) = 1;
  v23[2] = sub_262462B88();
  v23[3] = v13;
  v24[63] = 2;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v21, v22);
  v14 = v19;
  __swift_destroy_boxed_opaque_existential_1(v21);
  (*(v14 + 8))(v9, v6);
  sub_2623EB668(v22, v24);
  sub_2624072BC(v23, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624072F4(v23);
}

uint64_t sub_262401FD0(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = v4[7];
  v8 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v7);
  result = (*(*(v8 + 8) + 24))(&v16, a2, v7);
  if (!v3)
  {
    if (v16 == 2 || (v16 & 1) == 0)
    {
      v10 = result;
      v12 = v4 + 2;
      v11 = 3;
    }

    else
    {
      v10 = result;
      v11 = 1;
      v12 = v4;
    }

    v13 = *v12;
    v14 = v4[v11];

    *a1 = v13;
    a1[1] = v15;
    return v10;
  }

  return result;
}

uint64_t sub_2624020B0(uint64_t a1)
{
  v2 = sub_2624071AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624020EC(uint64_t a1)
{
  v2 = sub_2624071AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262402128@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_262462A88();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA10, &qword_2624659A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v12 = a1[3];
  v11 = a1[4];
  v19 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2624071AC();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v16 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C9E8, &qword_262465988);
  LOBYTE(v20[0]) = 0;
  sub_2624070A0();
  sub_262462BB8();
  v22 = *&v21[0];
  v23[63] = 1;
  sub_262462B58();
  v13 = v16;
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v20);
  (*(v13 + 8))(v10, v6);
  sub_2623EB668(v21, v23);
  sub_262407200(&v22, v17);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_262407238(&v22);
}

uint64_t sub_262402530(uint64_t a1)
{
  v3 = v1;
  v5 = v3[4];
  v6 = v3[5];
  __swift_project_boxed_opaque_existential_1(v3 + 1, v5);
  (*(*(v6 + 8) + 24))(&v15, a1, v5);
  if (!v2)
  {
    v6 = v15;
    v7 = v16;
    if (v16)
    {
      v8 = *v3;
      if (*(*v3 + 16) && (, v9 = sub_2624414FC(v6, v7), v11 = v10, , (v11 & 1) != 0))
      {
        v12 = (*(v8 + 56) + 16 * v9);
        v6 = *v12;
        v13 = v12[1];
      }

      else
      {

        return 0;
      }
    }
  }

  return v6;
}

uint64_t sub_26240268C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736C6562616CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_262402760(uint64_t a1)
{
  v2 = sub_26240704C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26240279C(uint64_t a1)
{
  v2 = sub_26240704C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624027D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_262462A88();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C9D8, &qword_262465980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v12 = a1[3];
  v11 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_26240704C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  v13 = v7;
  v28[63] = 1;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v25, v26);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v21[1] = v28;
  sub_2623EB668(v26, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C9E8, &qword_262465988);
  LOBYTE(v25[0]) = 0;
  sub_2624070A0();
  v15 = sub_262462BB8();
  v21[0] = v21;
  v16 = *&v26[0];
  MEMORY[0x28223BE20](v15);
  v21[-2] = v10;
  v17 = sub_2624045B8(v16, sub_26240711C);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA08, &qword_2624659A0);
    v18 = sub_262462B08();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v19 = v22;
  *&v26[0] = v18;

  sub_262403988(v20, 1, v26);

  v27 = *&v26[0];
  (*(v13 + 8))(v10, v6);
  sub_262407138(&v27, v19);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_262407170(&v27);
}

uint64_t sub_262402CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_2623F95B0(a1, a2))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C9D8, &qword_262465980);
    v4 = sub_262462B48();
    a3 = sub_262427A60(v4);
    v6 = v5;

    *&v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C9F8, &qword_262465990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA00, &qword_262465998);
    v7 = sub_262462728();
    v9 = v8;
    sub_2623F1BBC();
    swift_allocError();
    *v10 = a3;
    *(v10 + 8) = v6;
    *(v10 + 16) = 0x736C6562616CLL;
    *(v10 + 24) = 0xE600000000000000;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    *(v10 + 48) = v12;
    *(v10 + 64) = 4;
    swift_willThrow();
  }

  return a3;
}

uint64_t sub_262402E24(uint64_t a1)
{
  v3 = v1;
  v5 = v3[4];
  v6 = v3[5];
  __swift_project_boxed_opaque_existential_1(v3 + 1, v5);
  result = (*(*(v6 + 8) + 24))(&v14, a1, v5);
  if (!v2)
  {
    if (v15)
    {
      return 0;
    }

    v8 = *v3;
    if (!*(*v3 + 16))
    {
      return 0;
    }

    else
    {
      v9 = sub_262441574(v14);
      if (v10)
      {
        v11 = (*(v8 + 56) + 16 * v9);
        v13 = *v11;
        v12 = v11[1];

        return v13;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_262402F3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a5(a2);
  result = v9;
  if (!v5)
  {
    *a1 = v8;
    a1[1] = v7;
  }

  return result;
}

unsigned __int8 *sub_262402F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_262462818();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26240351C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_262462A98();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26240351C()
{
  v0 = sub_262462828();
  v4 = sub_26240359C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26240359C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_262462768();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_262462938();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2624036F4(v9, 0);
  v12 = sub_262403768(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_262462768();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_262462A98();
LABEL_4:

  return sub_262462768();
}

void *sub_2624036F4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAE8, &unk_262465A30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_262403768(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2623F9534(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2624627D8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_262462A98();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2623F9534(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2624627B8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_262403988(double *a1, char a2, void *a3)
{
  v50 = *(a1 + 2);
  if (!v50)
  {
  }

  v6 = a1[4];
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *a3;
  v10 = sub_262441574(v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  v16 = v11;
  v17 = v9[3];

  if (v17 >= v14)
  {
    if (a2)
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_2624617A8();
      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  sub_26245FFEC(v14, a2 & 1);
  v18 = *a3;
  v19 = sub_262441574(v6);
  if ((v16 & 1) == (v20 & 1))
  {
    v15 = v19;
    if ((v16 & 1) == 0)
    {
LABEL_12:
      v24 = *a3;
      *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
      *(v24[6] + 8 * v15) = v6;
      v25 = (v24[7] + 16 * v15);
      *v25 = v7;
      v25[1] = v8;
      v26 = v24[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (!v27)
      {
        v24[2] = v28;
        if (v50 != 1)
        {
          v29 = a1 + 9;
          v30 = 1;
          while (v30 < *(a1 + 2))
          {
            v31 = *(v29 - 2);
            v33 = *(v29 - 1);
            v32 = *v29;
            v34 = *a3;
            v35 = sub_262441574(v31);
            v37 = v34[2];
            v38 = (v36 & 1) == 0;
            v39 = v37 + v38;
            if (__OFADD__(v37, v38))
            {
              goto LABEL_24;
            }

            v40 = v35;
            v41 = v36;
            v42 = v34[3];

            if (v42 < v39)
            {
              sub_26245FFEC(v39, 1);
              v43 = *a3;
              v44 = sub_262441574(v31);
              if ((v41 & 1) != (v45 & 1))
              {
                goto LABEL_27;
              }

              v40 = v44;
            }

            if (v41)
            {
              goto LABEL_9;
            }

            v46 = *a3;
            *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
            *(v46[6] + 8 * v40) = v31;
            v47 = (v46[7] + 16 * v40);
            *v47 = v33;
            v47[1] = v32;
            v48 = v46[2];
            v27 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v27)
            {
              goto LABEL_25;
            }

            ++v30;
            v46[2] = v49;
            v29 += 3;
            if (v50 == v30)
            {
            }
          }

          goto LABEL_26;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_9:
    v21 = swift_allocError();
    swift_willThrow();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x266728D50](v21);
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_262462C78();
  __break(1u);
LABEL_28:
  sub_262462A28();
  MEMORY[0x266728460](0xD00000000000001BLL, 0x80000002624718E0);
  sub_262462AA8();
  MEMORY[0x266728460](39, 0xE100000000000000);
  result = sub_262462AC8();
  __break(1u);
  return result;
}

unint64_t sub_262403D0C()
{
  result = qword_27FF0C820;
  if (!qword_27FF0C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C820);
  }

  return result;
}

unint64_t sub_262403D60()
{
  result = qword_27FF0C828;
  if (!qword_27FF0C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C828);
  }

  return result;
}

unint64_t sub_262403DB4()
{
  result = qword_27FF0C830;
  if (!qword_27FF0C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C830);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_262403E48()
{
  result = qword_27FF0C838;
  if (!qword_27FF0C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C838);
  }

  return result;
}

unint64_t sub_262403E9C()
{
  result = qword_27FF0C840;
  if (!qword_27FF0C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C840);
  }

  return result;
}

unint64_t sub_262403EF0()
{
  result = qword_27FF0C848;
  if (!qword_27FF0C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C848);
  }

  return result;
}

unint64_t sub_262403F44()
{
  result = qword_27FF0C850;
  if (!qword_27FF0C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C850);
  }

  return result;
}

unint64_t sub_262403F98()
{
  result = qword_27FF0C858;
  if (!qword_27FF0C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C858);
  }

  return result;
}

unint64_t sub_262403FEC()
{
  result = qword_27FF0C860;
  if (!qword_27FF0C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C860);
  }

  return result;
}

unint64_t sub_262404040()
{
  result = qword_27FF0C868;
  if (!qword_27FF0C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C868);
  }

  return result;
}

unint64_t sub_262404094()
{
  result = qword_27FF0C870;
  if (!qword_27FF0C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C870);
  }

  return result;
}

unint64_t sub_2624040E8()
{
  result = qword_27FF0C878;
  if (!qword_27FF0C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C878);
  }

  return result;
}

unint64_t sub_26240413C()
{
  result = qword_27FF0C880;
  if (!qword_27FF0C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C880);
  }

  return result;
}

unint64_t sub_262404190()
{
  result = qword_27FF0C888;
  if (!qword_27FF0C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C888);
  }

  return result;
}

unint64_t sub_2624041E4()
{
  result = qword_27FF0C890;
  if (!qword_27FF0C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C890);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_262404278()
{
  result = qword_27FF0C898;
  if (!qword_27FF0C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C898);
  }

  return result;
}

unint64_t sub_2624042CC()
{
  result = qword_27FF0C8A0;
  if (!qword_27FF0C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C8A0);
  }

  return result;
}

unint64_t sub_262404320()
{
  result = qword_27FF0C8A8;
  if (!qword_27FF0C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C8A8);
  }

  return result;
}

unint64_t sub_262404374()
{
  result = qword_27FF0C8B0;
  if (!qword_27FF0C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C8B0);
  }

  return result;
}

unint64_t sub_2624043C8()
{
  result = qword_27FF0C8B8;
  if (!qword_27FF0C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C8B8);
  }

  return result;
}

unint64_t sub_26240441C()
{
  result = qword_27FF0C8C0;
  if (!qword_27FF0C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C8C0);
  }

  return result;
}

unint64_t sub_262404470()
{
  result = qword_27FF0C8C8;
  if (!qword_27FF0C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C8C8);
  }

  return result;
}

unint64_t sub_2624044C4()
{
  result = qword_27FF0C8D0;
  if (!qword_27FF0C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C8D0);
  }

  return result;
}

unint64_t sub_262404518()
{
  result = qword_27FF0C8D8;
  if (!qword_27FF0C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C8D8);
  }

  return result;
}

uint64_t type metadata accessor for StringRule()
{
  result = qword_27FF0C918;
  if (!qword_27FF0C918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2624045B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    sub_26243CD80(0, v5, 0);
    v45 = v46;
    v7 = v4 + 64;
    v8 = -1 << *(v4 + 32);
    result = sub_2624629B8();
    v9 = result;
    v10 = 0;
    v11 = *(v4 + 36);
    v39 = v4 + 72;
    v40 = v5;
    v41 = v11;
    v42 = v4 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v4 + 32))
    {
      v14 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      if (v11 != *(v4 + 36))
      {
        goto LABEL_26;
      }

      v44 = v10;
      v15 = v4;
      v16 = (*(v4 + 48) + 16 * v9);
      v17 = *v16;
      v18 = v16[1];
      v19 = (*(v4 + 56) + 16 * v9);
      v20 = *v19;
      v21 = v19[1];

      v22 = a2(v17, v18, v20, v21);
      if (v3)
      {
      }

      v25 = v24;
      v26 = v22;
      v27 = v23;

      v28 = v45;
      v30 = *(v45 + 16);
      v29 = *(v45 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_26243CD80((v29 > 1), v30 + 1, 1);
        v28 = v45;
      }

      *(v28 + 16) = v30 + 1;
      v31 = (v28 + 24 * v30);
      v31[4] = v25;
      v31[5] = v26;
      v31[6] = v27;
      v12 = 1 << *(v15 + 32);
      if (v9 >= v12)
      {
        goto LABEL_27;
      }

      v7 = v42;
      v32 = *(v42 + 8 * v14);
      if ((v32 & (1 << v9)) == 0)
      {
        goto LABEL_28;
      }

      v4 = v15;
      v45 = v28;
      v11 = v41;
      if (v41 != *(v15 + 36))
      {
        goto LABEL_29;
      }

      v33 = v32 & (-2 << (v9 & 0x3F));
      if (v33)
      {
        v12 = __clz(__rbit64(v33)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v13 = v40;
      }

      else
      {
        v34 = v14 << 6;
        v35 = v14 + 1;
        v13 = v40;
        v36 = (v39 + 8 * v14);
        while (v35 < (v12 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_2624071A0(v9, v41, 0);
            v12 = __clz(__rbit64(v37)) + v34;
            goto LABEL_4;
          }
        }

        result = sub_2624071A0(v9, v41, 0);
      }

LABEL_4:
      v3 = 0;
      v10 = v44 + 1;
      v9 = v12;
      if (v44 + 1 == v13)
      {
        return v45;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_262404894(uint64_t *a1)
{
  v3 = sub_262462A88();
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C8E8, &qword_262464C50);
  v15 = *(v5 - 8);
  v6 = *(v15 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26240503C();
  sub_262462D88();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = a1;
    v10 = sub_262462B88();
    (*(v15 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v10;
}

uint64_t sub_262404BD4(uint64_t *a1)
{
  v3 = sub_262462A88();
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C8F0, &qword_262464C58);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_262405090();
  sub_262462D88();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13[2] = v6;
    v14 = a1;
    LOBYTE(v17) = 0;
    v11 = sub_262462B88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C8F8, &qword_262464C60);
    LOBYTE(v18) = 1;
    sub_2624050E4();
    sub_262462BB8();
    (*(v16 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return v11;
}

unint64_t sub_262404F94()
{
  result = qword_2813BDA90;
  if (!qword_2813BDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA90);
  }

  return result;
}

unint64_t sub_262404FE8()
{
  result = qword_2813BDA60;
  if (!qword_2813BDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA60);
  }

  return result;
}

unint64_t sub_26240503C()
{
  result = qword_2813BDA70;
  if (!qword_2813BDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA70);
  }

  return result;
}

unint64_t sub_262405090()
{
  result = qword_2813BDAA0;
  if (!qword_2813BDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAA0);
  }

  return result;
}

unint64_t sub_2624050E4()
{
  result = qword_2813BD3F0;
  if (!qword_2813BD3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C8F8, &qword_262464C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3F0);
  }

  return result;
}

unint64_t sub_262405160()
{
  result = qword_27FF0C910;
  if (!qword_27FF0C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C910);
  }

  return result;
}

uint64_t sub_2624051B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringRule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262405218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2624052B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2624052FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_262405354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26240539C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_262405414()
{
  sub_2624054C0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RulesValidity();
    if (v1 <= 0x3F)
    {
      sub_262405510();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2624054C0()
{
  if (!qword_27FF0C928)
  {
    v0 = sub_262462928();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF0C928);
    }
  }
}

unint64_t sub_262405510()
{
  result = qword_27FF0C930;
  if (!qword_27FF0C930)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FF0C930);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2624055CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_262405614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_262405694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2624056DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26240575C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2624057A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_262405824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26240586C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2624058E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_262405930(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2624059A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2624059E8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for StringExpressionDecoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StringExpressionDecoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_262405B98()
{
  result = qword_27FF0C938;
  if (!qword_27FF0C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C938);
  }

  return result;
}

unint64_t sub_262405BEC(uint64_t a1)
{
  result = sub_262403D60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405C14(uint64_t a1)
{
  result = sub_262403E48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405C3C(uint64_t a1)
{
  result = sub_262403EF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405C64(uint64_t a1)
{
  result = sub_262403F98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405C8C(uint64_t a1)
{
  result = sub_262404040();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405CB4(uint64_t a1)
{
  result = sub_2624040E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405CDC(uint64_t a1)
{
  result = sub_262404190();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405D04(uint64_t a1)
{
  result = sub_262404278();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405D2C(uint64_t a1)
{
  result = sub_262404320();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405D54(uint64_t a1)
{
  result = sub_2624043C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405D7C(uint64_t a1)
{
  result = sub_262404470();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405DA4(uint64_t a1)
{
  result = sub_262404518();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_262405DCC(uint64_t a1)
{
  result = sub_262406384(&qword_27FF0C940, type metadata accessor for StringRule);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405E24(uint64_t a1)
{
  result = sub_262405E4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405E4C()
{
  result = qword_2813BDA98;
  if (!qword_2813BDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA98);
  }

  return result;
}

unint64_t sub_262405EA0(uint64_t a1)
{
  result = sub_262405EC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262405EC8()
{
  result = qword_2813BDA68;
  if (!qword_2813BDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA68);
  }

  return result;
}

unint64_t sub_262405F20()
{
  result = qword_27FF0C948;
  if (!qword_27FF0C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C948);
  }

  return result;
}

unint64_t sub_262405F78()
{
  result = qword_27FF0C950;
  if (!qword_27FF0C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C950);
  }

  return result;
}

unint64_t sub_262405FD0()
{
  result = qword_27FF0C958;
  if (!qword_27FF0C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C958);
  }

  return result;
}

unint64_t sub_262406028()
{
  result = qword_27FF0C960;
  if (!qword_27FF0C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C960);
  }

  return result;
}

unint64_t sub_262406080()
{
  result = qword_27FF0C968;
  if (!qword_27FF0C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C968);
  }

  return result;
}

unint64_t sub_2624060D8()
{
  result = qword_2813BDAB0;
  if (!qword_2813BDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAB0);
  }

  return result;
}

unint64_t sub_262406130()
{
  result = qword_2813BDAA8;
  if (!qword_2813BDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAA8);
  }

  return result;
}

unint64_t sub_262406188()
{
  result = qword_2813BDA80;
  if (!qword_2813BDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA80);
  }

  return result;
}

unint64_t sub_2624061E0()
{
  result = qword_2813BDA78;
  if (!qword_2813BDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA78);
  }

  return result;
}

unint64_t sub_262406234(uint64_t a1)
{
  result = sub_26240625C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26240625C()
{
  result = qword_2813BDA58;
  if (!qword_2813BDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA58);
  }

  return result;
}

unint64_t sub_2624062B0(uint64_t a1)
{
  result = sub_2624062D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624062D8()
{
  result = qword_2813BDA88;
  if (!qword_2813BDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA88);
  }

  return result;
}

uint64_t sub_26240632C(uint64_t a1)
{
  result = sub_262406384(&qword_27FF0C970, type metadata accessor for StringRule);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_262406384(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2624063CC(uint64_t a1)
{
  result = sub_2624063F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624063F4()
{
  result = qword_27FF0C978;
  if (!qword_27FF0C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C978);
  }

  return result;
}

unint64_t sub_262406448(uint64_t a1)
{
  result = sub_262406470();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262406470()
{
  result = qword_27FF0C980;
  if (!qword_27FF0C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C980);
  }

  return result;
}

unint64_t sub_2624064C4(uint64_t a1)
{
  result = sub_2624064EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624064EC()
{
  result = qword_27FF0C988;
  if (!qword_27FF0C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C988);
  }

  return result;
}

unint64_t sub_262406540(uint64_t a1)
{
  result = sub_262406568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262406568()
{
  result = qword_27FF0C990;
  if (!qword_27FF0C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C990);
  }

  return result;
}

unint64_t sub_2624065BC(uint64_t a1)
{
  result = sub_2624065E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624065E4()
{
  result = qword_27FF0C998;
  if (!qword_27FF0C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C998);
  }

  return result;
}

unint64_t sub_262406638(uint64_t a1)
{
  result = sub_262406660();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262406660()
{
  result = qword_27FF0C9A0;
  if (!qword_27FF0C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C9A0);
  }

  return result;
}

unint64_t sub_2624066B4(uint64_t a1)
{
  result = sub_2624066DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624066DC()
{
  result = qword_27FF0C9A8;
  if (!qword_27FF0C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C9A8);
  }

  return result;
}

unint64_t sub_262406730(uint64_t a1)
{
  result = sub_262406758();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262406758()
{
  result = qword_27FF0C9B0;
  if (!qword_27FF0C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C9B0);
  }

  return result;
}

unint64_t sub_2624067AC(uint64_t a1)
{
  result = sub_2624067D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624067D4()
{
  result = qword_27FF0C9B8;
  if (!qword_27FF0C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C9B8);
  }

  return result;
}

unint64_t sub_262406828(uint64_t a1)
{
  result = sub_262406850();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262406850()
{
  result = qword_27FF0C9C0;
  if (!qword_27FF0C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C9C0);
  }

  return result;
}

unint64_t sub_2624068A4(uint64_t a1)
{
  result = sub_2624068CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624068CC()
{
  result = qword_27FF0C9C8;
  if (!qword_27FF0C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C9C8);
  }

  return result;
}

unint64_t sub_262406920(uint64_t a1)
{
  result = sub_262406948();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262406948()
{
  result = qword_27FF0C9D0;
  if (!qword_27FF0C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C9D0);
  }

  return result;
}

unint64_t sub_2624069A0()
{
  result = qword_2813BD7A8[0];
  if (!qword_2813BD7A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813BD7A8);
  }

  return result;
}

unint64_t sub_2624069F8()
{
  result = qword_2813BD7A0;
  if (!qword_2813BD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD7A0);
  }

  return result;
}

uint64_t sub_262406A4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002624717E0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C615673656C7572 && a2 == 0xED00007974696469 || (sub_262462C58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369676F6CLL && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000262464CC0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000262464CA0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E69727473627553 && a2 == 0xE900000000000067 || (sub_262462C58() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x744172616843 && a2 == 0xE600000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000262464C80 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x694C676E69727453 && a2 == 0xEE006E696F4A7473 || (sub_262462C58() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000262464C60 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x614D676E69727453 && a2 == 0xEF65736143686374 || (sub_262462C58() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F547265626D754ELL && a2 == 0xEE00676E69727453 || (sub_262462C58() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6F6F426C6562614CLL && a2 == 0xEC0000006E61656CLL || (sub_262462C58() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7274536C6562614CLL && a2 == 0xEB00000000676E69 || (sub_262462C58() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6D754E6C6562614CLL && a2 == 0xEB00000000726562)
  {

    return 18;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

unint64_t sub_26240704C()
{
  result = qword_27FF0C9E0;
  if (!qword_27FF0C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C9E0);
  }

  return result;
}

unint64_t sub_2624070A0()
{
  result = qword_27FF0C9F0;
  if (!qword_27FF0C9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C9E8, &qword_262465988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C9F0);
  }

  return result;
}

uint64_t sub_2624071A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2624071AC()
{
  result = qword_27FF0CA18;
  if (!qword_27FF0CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CA18);
  }

  return result;
}

unint64_t sub_262407268()
{
  result = qword_27FF0CA30;
  if (!qword_27FF0CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CA30);
  }

  return result;
}

unint64_t sub_262407324()
{
  result = qword_27FF0CA40;
  if (!qword_27FF0CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CA40);
  }

  return result;
}

unint64_t sub_262407378()
{
  result = qword_27FF0CA50;
  if (!qword_27FF0CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CA50);
  }

  return result;
}

unint64_t sub_262407434()
{
  result = qword_27FF0CA60;
  if (!qword_27FF0CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CA60);
  }

  return result;
}

unint64_t sub_2624074F0()
{
  result = qword_27FF0CA70;
  if (!qword_27FF0CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CA70);
  }

  return result;
}

unint64_t sub_2624075AC()
{
  result = qword_27FF0CA80;
  if (!qword_27FF0CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CA80);
  }

  return result;
}

unint64_t sub_262407668()
{
  result = qword_27FF0CA88;
  if (!qword_27FF0CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CA88);
  }

  return result;
}

unint64_t sub_262407724()
{
  result = qword_27FF0CA90;
  if (!qword_27FF0CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CA90);
  }

  return result;
}

unint64_t sub_262407800()
{
  result = qword_27FF0CAA0;
  if (!qword_27FF0CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CAA0);
  }

  return result;
}

unint64_t sub_2624078BC()
{
  result = qword_27FF0CAB0;
  if (!qword_27FF0CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CAB0);
  }

  return result;
}

uint64_t sub_262407978(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2624079D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2624079E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_262407A30()
{
  result = qword_27FF0CAF0;
  if (!qword_27FF0CAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C4C8, &qword_262463340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CAF0);
  }

  return result;
}

unint64_t sub_262407B58()
{
  result = qword_27FF0CAF8;
  if (!qword_27FF0CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CAF8);
  }

  return result;
}

unint64_t sub_262407BB0()
{
  result = qword_27FF0CB00;
  if (!qword_27FF0CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB00);
  }

  return result;
}

unint64_t sub_262407C08()
{
  result = qword_27FF0CB08;
  if (!qword_27FF0CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB08);
  }

  return result;
}

unint64_t sub_262407C60()
{
  result = qword_27FF0CB10;
  if (!qword_27FF0CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB10);
  }

  return result;
}

unint64_t sub_262407CB8()
{
  result = qword_27FF0CB18;
  if (!qword_27FF0CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB18);
  }

  return result;
}

unint64_t sub_262407D10()
{
  result = qword_27FF0CB20;
  if (!qword_27FF0CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB20);
  }

  return result;
}

unint64_t sub_262407D68()
{
  result = qword_27FF0CB28;
  if (!qword_27FF0CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB28);
  }

  return result;
}

unint64_t sub_262407DC0()
{
  result = qword_27FF0CB30;
  if (!qword_27FF0CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB30);
  }

  return result;
}

unint64_t sub_262407E18()
{
  result = qword_27FF0CB38;
  if (!qword_27FF0CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB38);
  }

  return result;
}

unint64_t sub_262407E70()
{
  result = qword_27FF0CB40;
  if (!qword_27FF0CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB40);
  }

  return result;
}

unint64_t sub_262407EC8()
{
  result = qword_27FF0CB48;
  if (!qword_27FF0CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB48);
  }

  return result;
}

unint64_t sub_262407F20()
{
  result = qword_27FF0CB50;
  if (!qword_27FF0CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB50);
  }

  return result;
}

unint64_t sub_262407F78()
{
  result = qword_27FF0CB58;
  if (!qword_27FF0CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB58);
  }

  return result;
}

unint64_t sub_262407FD0()
{
  result = qword_27FF0CB60;
  if (!qword_27FF0CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB60);
  }

  return result;
}

unint64_t sub_262408028()
{
  result = qword_27FF0CB68;
  if (!qword_27FF0CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB68);
  }

  return result;
}

unint64_t sub_262408080()
{
  result = qword_27FF0CB70;
  if (!qword_27FF0CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB70);
  }

  return result;
}

unint64_t sub_2624080D8()
{
  result = qword_27FF0CB78;
  if (!qword_27FF0CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB78);
  }

  return result;
}

unint64_t sub_262408130()
{
  result = qword_27FF0CB80;
  if (!qword_27FF0CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB80);
  }

  return result;
}

unint64_t sub_262408188()
{
  result = qword_27FF0CB88;
  if (!qword_27FF0CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB88);
  }

  return result;
}

unint64_t sub_2624081E0()
{
  result = qword_27FF0CB90;
  if (!qword_27FF0CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB90);
  }

  return result;
}

unint64_t sub_262408238()
{
  result = qword_27FF0CB98;
  if (!qword_27FF0CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CB98);
  }

  return result;
}

unint64_t sub_262408290()
{
  result = qword_27FF0CBA0;
  if (!qword_27FF0CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBA0);
  }

  return result;
}

unint64_t sub_2624082E8()
{
  result = qword_27FF0CBA8;
  if (!qword_27FF0CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBA8);
  }

  return result;
}

unint64_t sub_262408340()
{
  result = qword_27FF0CBB0;
  if (!qword_27FF0CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBB0);
  }

  return result;
}

unint64_t sub_262408398()
{
  result = qword_27FF0CBB8;
  if (!qword_27FF0CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBB8);
  }

  return result;
}

unint64_t sub_2624083F0()
{
  result = qword_27FF0CBC0;
  if (!qword_27FF0CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBC0);
  }

  return result;
}

unint64_t sub_262408448()
{
  result = qword_27FF0CBC8;
  if (!qword_27FF0CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBC8);
  }

  return result;
}

unint64_t sub_2624084A0()
{
  result = qword_27FF0CBD0;
  if (!qword_27FF0CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBD0);
  }

  return result;
}

unint64_t sub_2624084F8()
{
  result = qword_27FF0CBD8;
  if (!qword_27FF0CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBD8);
  }

  return result;
}

unint64_t sub_262408550()
{
  result = qword_27FF0CBE0;
  if (!qword_27FF0CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBE0);
  }

  return result;
}

unint64_t sub_2624085A8()
{
  result = qword_27FF0CBE8;
  if (!qword_27FF0CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBE8);
  }

  return result;
}

unint64_t sub_262408600()
{
  result = qword_27FF0CBF0;
  if (!qword_27FF0CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBF0);
  }

  return result;
}

unint64_t sub_262408658()
{
  result = qword_27FF0CBF8;
  if (!qword_27FF0CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CBF8);
  }

  return result;
}

unint64_t sub_2624086B0()
{
  result = qword_27FF0CC00;
  if (!qword_27FF0CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC00);
  }

  return result;
}

unint64_t sub_262408708()
{
  result = qword_27FF0CC08;
  if (!qword_27FF0CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC08);
  }

  return result;
}

unint64_t sub_262408760()
{
  result = qword_27FF0CC10;
  if (!qword_27FF0CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC10);
  }

  return result;
}

uint64_t sub_2624087B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E49676E69727473 && a2 == 0xEB00000000747570;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262462C58();

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

uint64_t sub_2624088CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6562614C65757274 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x62614C65736C6166 && a2 == 0xEA00000000006C65 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262462C58();

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

Rules::AssetType_optional __swiftcall AssetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_262462B18();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AssetType.rawValue.getter()
{
  v1 = 0x4C45444F4D4C4DLL;
  if (*v0 != 1)
  {
    v1 = 0x6172476369676F4CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1162630482;
  }
}

uint64_t sub_262408AC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x4C45444F4D4C4DLL;
  if (v2 != 1)
  {
    v4 = 0x6172476369676F4CLL;
    v3 = 0xEA00000000006870;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1162630482;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x4C45444F4D4C4DLL;
  if (*a2 != 1)
  {
    v8 = 0x6172476369676F4CLL;
    v7 = 0xEA00000000006870;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1162630482;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_262462C58();
  }

  return v11 & 1;
}

uint64_t sub_262408BCC()
{
  v1 = *v0;
  sub_262462CF8();
  sub_262462778();

  return sub_262462D38();
}

uint64_t sub_262408C6C()
{
  *v0;
  *v0;
  sub_262462778();
}

uint64_t sub_262408CF8()
{
  v1 = *v0;
  sub_262462CF8();
  sub_262462778();

  return sub_262462D38();
}

void sub_262408DA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x4C45444F4D4C4DLL;
  if (v2 != 1)
  {
    v5 = 0x6172476369676F4CLL;
    v4 = 0xEA00000000006870;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1162630482;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_262408E78()
{
  v1 = 0x6E6F6973726576;
  v2 = 25705;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_262408ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262409BCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262408EFC(uint64_t a1)
{
  v2 = sub_262409448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262408F38(uint64_t a1)
{
  v2 = sub_262409448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CC18, &qword_2624666A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262409448();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v11 = sub_262462B88();
  v27 = v12;
  v31 = 1;
  v13 = sub_262462B88();
  v26 = v14;
  v24 = v13;
  v30 = 2;
  v23 = sub_262462B88();
  v25 = v15;
  v28 = 3;
  sub_26240949C();
  sub_262462BB8();
  (*(v6 + 8))(v9, v5);
  v17 = v29;
  v19 = v26;
  v18 = v27;
  *a2 = v11;
  *(a2 + 8) = v18;
  v20 = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v19;
  v21 = v25;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s5Rules9AssetInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_262462C58()) && (v2 == v7 && v4 == v8 || (sub_262462C58()) && (v3 == v9 && v5 == v10 || (sub_262462C58()))
  {
    v12 = 0xE700000000000000;
    v13 = 0x4C45444F4D4C4DLL;
    if (v6 != 1)
    {
      v13 = 0x6172476369676F4CLL;
      v12 = 0xEA00000000006870;
    }

    if (v6)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1162630482;
    }

    if (v6)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    if (v11)
    {
      if (v11 == 1)
      {
        v16 = 0xE700000000000000;
        if (v14 != 0x4C45444F4D4C4DLL)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v16 = 0xEA00000000006870;
        if (v14 != 0x6172476369676F4CLL)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v16 = 0xE400000000000000;
      if (v14 != 1162630482)
      {
        goto LABEL_28;
      }
    }

    if (v15 == v16)
    {
      v17 = 1;
LABEL_29:

      return v17 & 1;
    }

LABEL_28:
    v17 = sub_262462C58();
    goto LABEL_29;
  }

  v17 = 0;
  return v17 & 1;
}

unint64_t sub_262409448()
{
  result = qword_2813BD430;
  if (!qword_2813BD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD430);
  }

  return result;
}

unint64_t sub_26240949C()
{
  result = qword_2813BD408;
  if (!qword_2813BD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD408);
  }

  return result;
}

unint64_t sub_2624094F4()
{
  result = qword_27FF0CC20;
  if (!qword_27FF0CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC20);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_262409574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2624095BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_262409658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_26240979C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_26240979C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_262409890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2624099B8;

  return v11(a1, a2, a3);
}

uint64_t sub_2624099B8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_262409AC8()
{
  result = qword_27FF0CC28;
  if (!qword_27FF0CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC28);
  }

  return result;
}

unint64_t sub_262409B20()
{
  result = qword_2813BD420;
  if (!qword_2813BD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD420);
  }

  return result;
}

unint64_t sub_262409B78()
{
  result = qword_2813BD428;
  if (!qword_2813BD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD428);
  }

  return result;
}

uint64_t sub_262409BCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_262462C58();

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

unint64_t sub_262409D28()
{
  result = qword_2813BD410;
  if (!qword_2813BD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD410);
  }

  return result;
}

uint64_t sub_262409DB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C450, &qword_262463320);
  v0 = sub_262462BC8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v25 = *(v0 + 16);
    v26 = MEMORY[0x277D84F90];
    v24 = v0;
    sub_26243CD20(0, v1, 0);
    result = v24;
    v3 = v25;
    v4 = 0;
    v5 = v26;
    v6 = 0x8000000262471BA0;
    while (v4 < *(result + 16))
    {
      v7 = *(result + v4 + 32);
      v8 = 0xD000000000000018;
      if (v7 == 7)
      {
        v9 = 0x8000000262471BC0;
      }

      else
      {
        v8 = 0xD000000000000013;
        v9 = v6;
      }

      if (v7 == 6)
      {
        v8 = 0x6369676F6CLL;
        v9 = 0xE500000000000000;
      }

      if (v7 == 4)
      {
        v10 = 0xD000000000000010;
      }

      else
      {
        v10 = 0x6C615673656C7572;
      }

      if (v7 == 4)
      {
        v11 = 0x80000002624717E0;
      }

      else
      {
        v11 = 0xED00007974696469;
      }

      if (*(result + v4 + 32) <= 5u)
      {
        v8 = v10;
        v9 = v11;
      }

      if (v7 == 2)
      {
        v12 = 0x746C7561666564;
      }

      else
      {
        v12 = 1701667182;
      }

      if (v7 == 2)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0xE400000000000000;
      }

      v14 = 0x6D614E646C656966;
      if (*(result + v4 + 32))
      {
        v15 = 0xE900000000000065;
      }

      else
      {
        v14 = 0x65756C6176;
        v15 = 0xE500000000000000;
      }

      if (*(result + v4 + 32) <= 1u)
      {
        v12 = v14;
        v13 = v15;
      }

      if (*(result + v4 + 32) <= 3u)
      {
        v16 = v12;
      }

      else
      {
        v16 = v8;
      }

      if (*(result + v4 + 32) <= 3u)
      {
        v17 = v13;
      }

      else
      {
        v17 = v9;
      }

      v19 = *(v26 + 16);
      v18 = *(v26 + 24);
      if (v19 >= v18 >> 1)
      {
        v23 = v6;
        sub_26243CD20((v18 > 1), v19 + 1, 1);
        v6 = v23;
        result = v24;
        v3 = v25;
      }

      ++v4;
      *(v26 + 16) = v19 + 1;
      v20 = v26 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      if (v3 == v4)
      {

        goto LABEL_39;
      }
    }

    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
LABEL_39:
    v21 = sub_26243E1B8(v5);

    v22 = sub_262433094(&unk_2874FB748, v21);

    swift_arrayDestroy();
    return v22 & 1;
  }

  return result;
}

uint64_t sub_26240A094()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C818, &qword_262464C48);
  v0 = sub_262462BC8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v18 = v0;
    v19 = MEMORY[0x277D84F90];
    sub_26243CD20(0, v1, 0);
    result = v18;
    v3 = v19;
    v4 = 0;
    v5 = 0x8000000262471AC0;
    v6 = 0x8000000262471AE0;
    v7 = 0x8000000262471B00;
    while (v4 < *(result + 16))
    {
      v8 = 0xE500000000000000;
      v9 = 0x65756C6176;
      switch(*(result + v4 + 32))
      {
        case 1:
          v9 = 0x6D614E646C656966;
          v8 = 0xE900000000000065;
          break;
        case 2:
          v8 = 0xE700000000000000;
          v9 = 0x746C7561666564;
          break;
        case 3:
          v8 = 0xE400000000000000;
          v9 = 1701667182;
          break;
        case 4:
          v9 = 0xD000000000000010;
          v8 = 0x80000002624717E0;
          break;
        case 5:
          v9 = 0x6C615673656C7572;
          v8 = 0xED00007974696469;
          break;
        case 6:
          v9 = 0x6369676F6CLL;
          break;
        case 7:
          v9 = 0xD000000000000014;
          v8 = 0x8000000262471B20;
          break;
        case 8:
          v9 = 0xD000000000000013;
          v8 = v7;
          break;
        case 9:
          v8 = 0xE900000000000067;
          v9 = 0x6E69727473627553;
          break;
        case 0xA:
          v8 = 0xE600000000000000;
          v9 = 0x744172616843;
          break;
        case 0xB:
          v9 = 0xD000000000000012;
          v8 = v6;
          break;
        case 0xC:
          v9 = 0x694C676E69727453;
          v8 = 0xEE006E696F4A7473;
          break;
        case 0xD:
          v9 = 0xD000000000000014;
          v8 = v5;
          break;
        case 0xE:
          v9 = 0x614D676E69727453;
          v8 = 0xEF65736143686374;
          break;
        case 0xF:
          v9 = 0x6F547265626D754ELL;
          v8 = 0xEE00676E69727453;
          break;
        case 0x10:
          v9 = 0x6F6F426C6562614CLL;
          v8 = 0xEC0000006E61656CLL;
          break;
        case 0x11:
          v9 = 0x7274536C6562614CLL;
          v8 = 0xEB00000000676E69;
          break;
        case 0x12:
          v9 = 0x6D754E6C6562614CLL;
          v8 = 0xEB00000000726562;
          break;
        default:
          break;
      }

      v11 = *(v19 + 16);
      v10 = *(v19 + 24);
      if (v11 >= v10 >> 1)
      {
        v16 = v6;
        v17 = v5;
        v15 = v7;
        sub_26243CD20((v10 > 1), v11 + 1, 1);
        v7 = v15;
        v6 = v16;
        v5 = v17;
        result = v18;
      }

      ++v4;
      *(v19 + 16) = v11 + 1;
      v12 = v19 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      if (v1 == v4)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_28:
    v13 = sub_26243E1B8(v3);

    v14 = sub_262433094(&unk_2874FB7C8, v13);

    swift_arrayDestroy();
    return v14 & 1;
  }

  return result;
}

uint64_t sub_26240A510()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D140, &qword_262468FC0);
  v0 = sub_262462BC8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v23 = v0;
    v24 = MEMORY[0x277D84F90];
    sub_26243CD20(0, v1, 0);
    result = v23;
    v3 = v24;
    v4 = 0;
    v5 = 0x8000000262471B40;
    v6 = 0x80000002624717E0;
    while (v4 < *(result + 16))
    {
      v7 = *(result + v4 + 32);
      if (v7 > 4)
      {
        v10 = 0xD000000000000015;
        v11 = 0xD000000000000018;
        if (v7 == 8)
        {
          v12 = 0x8000000262471B60;
        }

        else
        {
          v11 = 0xD000000000000013;
          v12 = v5;
        }

        if (v7 == 7)
        {
          v13 = 0x8000000262471B80;
        }

        else
        {
          v10 = v11;
          v13 = v12;
        }

        if (v7 == 5)
        {
          v14 = 0x6C615673656C7572;
        }

        else
        {
          v14 = 0x6369676F6CLL;
        }

        if (v7 == 5)
        {
          v15 = 0xED00007974696469;
        }

        else
        {
          v15 = 0xE500000000000000;
        }

        if (*(result + v4 + 32) <= 6u)
        {
          v9 = v14;
        }

        else
        {
          v9 = v10;
        }

        if (*(result + v4 + 32) <= 6u)
        {
          v8 = v15;
        }

        else
        {
          v8 = v13;
        }
      }

      else if (*(result + v4 + 32) <= 1u)
      {
        if (*(result + v4 + 32))
        {
          v9 = 0x6D614E646C656966;
        }

        else
        {
          v9 = 0x65756C6176;
        }

        if (*(result + v4 + 32))
        {
          v8 = 0xE900000000000065;
        }

        else
        {
          v8 = 0xE500000000000000;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0xE700000000000000;
        v9 = 0x746C7561666564;
      }

      else if (v7 == 3)
      {
        v8 = 0xE400000000000000;
        v9 = 1701667182;
      }

      else
      {
        v9 = 0xD000000000000010;
        v8 = v6;
      }

      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      if (v17 >= v16 >> 1)
      {
        v21 = v6;
        v22 = v5;
        sub_26243CD20((v16 > 1), v17 + 1, 1);
        v6 = v21;
        v5 = v22;
        result = v23;
      }

      ++v4;
      *(v24 + 16) = v17 + 1;
      v18 = v24 + 16 * v17;
      *(v18 + 32) = v9;
      *(v18 + 40) = v8;
      if (v1 == v4)
      {

        goto LABEL_40;
      }
    }

    __break(1u);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_40:
    v19 = sub_26243E1B8(v3);

    v20 = sub_262433094(&unk_2874FB848, v19);

    swift_arrayDestroy();
    return v20 & 1;
  }

  return result;
}

uint64_t sub_26240A818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CEB0, &qword_262467DA0);
  v0 = sub_262462BC8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v26 = v0;
    v27 = MEMORY[0x277D84F90];
    sub_26243CD20(0, v1, 0);
    result = v26;
    v3 = v27;
    v4 = 0;
    v5 = 0x80000002624719E0;
    v6 = 0x8000000262471A00;
    v7 = 0x8000000262471A20;
    v8 = 0x8000000262471A40;
    v9 = 0x8000000262471A60;
    v10 = 0x8000000262471A80;
    v11 = 0x8000000262471AA0;
    while (v4 < *(result + 16))
    {
      v12 = 0xE500000000000000;
      v13 = 0x65756C6176;
      switch(*(result + v4 + 32))
      {
        case 1:
          v12 = 0xE900000000000065;
          v13 = 0x6D614E646C656966;
          break;
        case 2:
          v12 = 0xE700000000000000;
          v13 = 0x746C7561666564;
          break;
        case 3:
          v12 = 0xE400000000000000;
          v13 = 1701667182;
          break;
        case 4:
          v13 = 0xD000000000000010;
          v12 = 0x80000002624717E0;
          break;
        case 5:
          v13 = 0x6C615673656C7572;
          v12 = 0xED00007974696469;
          break;
        case 6:
          v13 = 0x6369676F6CLL;
          break;
        case 7:
          v13 = 0x6F69746152;
          break;
        case 8:
          v12 = 0xE300000000000000;
          v13 = 7889229;
          break;
        case 9:
          v13 = 0x6765746E49746547;
          v12 = 0xEE00737469427265;
          break;
        case 0xA:
          v13 = 0xD000000000000012;
          v12 = v11;
          break;
        case 0xB:
          v13 = 0xD000000000000010;
          v12 = v10;
          break;
        case 0xC:
          v13 = 0xD000000000000010;
          v12 = v9;
          break;
        case 0xD:
          v13 = 0x654C676E69727453;
          v12 = 0xEC0000006874676ELL;
          break;
        case 0xE:
          v13 = 0xD000000000000014;
          v12 = v8;
          break;
        case 0xF:
          v13 = 0x614D7265626D754ELL;
          v12 = 0xEF65736143686374;
          break;
        case 0x10:
          v12 = 0xE800000000000000;
          v13 = 0x7265626D754E6F54;
          break;
        case 0x11:
          v13 = 0xD000000000000012;
          v12 = v7;
          break;
        case 0x12:
          v13 = 0xD000000000000011;
          v12 = v6;
          break;
        case 0x13:
          v13 = 0xD000000000000011;
          v12 = v5;
          break;
        default:
          break;
      }

      v15 = *(v27 + 16);
      v14 = *(v27 + 24);
      if (v15 >= v14 >> 1)
      {
        v24 = v6;
        v25 = v5;
        v22 = v8;
        v23 = v7;
        v20 = v10;
        v21 = v9;
        v19 = v11;
        sub_26243CD20((v14 > 1), v15 + 1, 1);
        v11 = v19;
        v10 = v20;
        v9 = v21;
        v8 = v22;
        v7 = v23;
        v6 = v24;
        v5 = v25;
        result = v26;
      }

      ++v4;
      *(v27 + 16) = v15 + 1;
      v16 = v27 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      if (v1 == v4)
      {

        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_29:
    v17 = sub_26243E1B8(v3);

    v18 = sub_262433094(&unk_2874FB8C8, v17);

    swift_arrayDestroy();
    return v18 & 1;
  }

  return result;
}

uint64_t sub_26240AC64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CED8, &qword_26246C340);
  v0 = sub_262462BC8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    result = sub_26243CD20(0, v1, 0);
    v3 = 0;
    v4 = v13;
    while (v3 < *(v0 + 16))
    {
      result = sub_262443958(*(v0 + v3 + 32));
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = result;
        v10 = v5;
        sub_26243CD20((v6 > 1), v7 + 1, 1);
        v5 = v10;
        result = v9;
      }

      ++v3;
      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = result;
      *(v8 + 40) = v5;
      if (v1 == v3)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
LABEL_9:
    v11 = sub_26243E1B8(v4);

    v12 = sub_262433094(&unk_2874FB948, v11);

    swift_arrayDestroy();
    return v12 & 1;
  }

  return result;
}

uint64_t sub_26240ADD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CC30, &qword_2624669C8);
  v0 = sub_262462BC8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v19 = v0;
    v20 = MEMORY[0x277D84F90];
    sub_26243CD20(0, v1, 0);
    result = v19;
    v3 = v20;
    v4 = 0;
    v5 = 0x8000000262466A00;
    v6 = 0x8000000262466A20;
    v7 = 0x8000000262466A40;
    while (v4 < *(result + 16))
    {
      v8 = 0xE500000000000000;
      v9 = 0x65756C6176;
      switch(*(result + v4 + 32))
      {
        case 1:
          v8 = 0xE900000000000065;
          v9 = 0x6D614E646C656966;
          break;
        case 2:
          v8 = 0xE700000000000000;
          v9 = 0x746C7561666564;
          break;
        case 3:
          v8 = 0xE400000000000000;
          v9 = 1701667182;
          break;
        case 4:
          v9 = 0xD000000000000010;
          v8 = 0x80000002624717E0;
          break;
        case 5:
          v9 = 0x6C615673656C7572;
          v8 = 0xED00007974696469;
          break;
        case 6:
          v9 = 0x6369676F6CLL;
          break;
        case 7:
          v9 = 0xD000000000000016;
          v8 = 0x8000000262466A60;
          break;
        case 8:
          v9 = 0xD000000000000011;
          v8 = v7;
          break;
        case 9:
          v9 = 0x6E6F697369636544;
          v8 = 0xEF6E61656C6F6F42;
          break;
        case 0xA:
          v9 = 0x6E6F697369636544;
          v8 = 0xEE00676E69727453;
          break;
        case 0xB:
          v9 = 0x6E6F697369636544;
          v8 = 0xEE007265626D754ELL;
          break;
        case 0xC:
          v8 = 0xE800000000000000;
          v9 = 0x736E6961746E6F43;
          break;
        case 0xD:
          v9 = 0x736E6961746E6F43;
          v8 = 0xEC00000065707954;
          break;
        case 0xE:
          v8 = 0xE300000000000000;
          v9 = 7105601;
          break;
        case 0xF:
          v8 = 0xE700000000000000;
          v9 = 0x657079546C6C41;
          break;
        case 0x10:
          v9 = 0x7473726946;
          break;
        case 0x11:
          v9 = 0xD000000000000011;
          v8 = v6;
          break;
        case 0x12:
          v9 = 0xD000000000000015;
          v8 = v5;
          break;
        case 0x13:
          v8 = 0xEA00000000006666;
          v9 = 0x6F6B63614278614DLL;
          break;
        case 0x14:
          v10 = 1165517133;
          goto LABEL_20;
        case 0x15:
          v10 = 1164863821;
LABEL_20:
          v9 = v10 | 0x7261626D00000000;
          v8 = 0xEA00000000006F67;
          break;
        case 0x16:
          v9 = 0x697469726F697250;
          v8 = 0xEB0000000064657ALL;
          break;
        default:
          break;
      }

      v12 = *(v20 + 16);
      v11 = *(v20 + 24);
      if (v12 >= v11 >> 1)
      {
        v17 = v6;
        v18 = v5;
        v16 = v7;
        sub_26243CD20((v11 > 1), v12 + 1, 1);
        v7 = v16;
        v6 = v17;
        v5 = v18;
        result = v19;
      }

      ++v4;
      *(v20 + 16) = v12 + 1;
      v13 = v20 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v8;
      if (v1 == v4)
      {

        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_33:
    v14 = sub_26243E1B8(v3);

    v15 = sub_262433094(&unk_2874FB9C8, v14);

    swift_arrayDestroy();
    return v15 & 1;
  }

  return result;
}

uint64_t sub_26240B280(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (!sub_26245B920())
  {

    v21 = sub_26245B050();
    v23 = v22;
    sub_2623F1BBC();
    swift_allocError();
    *v24 = a3;
    *(v24 + 8) = a4;
    *(v24 + 16) = v21;
    *(v24 + 24) = v23;
    v25 = v42;
    *(v24 + 32) = v41;
    *(v24 + 48) = v25;
    *(v24 + 64) = 16;
    return swift_willThrow();
  }

  v34 = a5;
  v15 = a7[3];
  v14 = a7[4];
  __swift_project_boxed_opaque_existential_1(a7, v15);
  result = (*(v14 + 24))(&v44, a2, v15, v14);
  if (v7)
  {
    return result;
  }

  v17 = result;
  if (*(result + 16))
  {
    v18 = sub_2624414FC(0x7074754F656C7572, 0xEB00000000737475);
    if (v19)
    {
      sub_2623F3970(*(v17 + 56) + 40 * v18, &v38);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      if (*(&v39 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
        if (swift_dynamicCast())
        {
          v20 = v35;
          goto LABEL_12;
        }
      }

      else
      {
        sub_2623F39E0(&v41, &qword_27FF0C5F0, &qword_262463A90);
      }
    }
  }

  v20 = sub_262461FB8(MEMORY[0x277D84F90]);
LABEL_12:
  v26 = v44;
  if (v44)
  {
    *&v41 = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
    sub_26241FDBC(&qword_27FF0D188, &qword_27FF0C4C8, &qword_262463340);
    sub_2624629E8();
  }

  else
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = v20;
  sub_262461260(v36, a3, a4, isUniquelyReferenced_nonNull_native);
  *&v38 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
  sub_26241EAD8();
  sub_2624629E8();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v38 = v17;
  sub_262461260(&v41, 0x7074754F656C7572, 0xEB00000000737475, v28);
  v29 = v38;
  if (*(v38 + 16))
  {
    v30 = sub_2624414FC(0x6572656767697274, 0xEE0073656C755264);
    if (v31)
    {
      sub_2623F3970(*(v29 + 56) + 40 * v30, &v38);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      if (*(&v39 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
        if (swift_dynamicCast())
        {
          v32 = v35;
          goto LABEL_22;
        }
      }

      else
      {
        sub_2623F39E0(&v41, &qword_27FF0C5F0, &qword_262463A90);
      }
    }
  }

  v32 = MEMORY[0x277D84FA0];
LABEL_22:
  *&v38 = v32;
  if (v26 && (!v34 || (sub_262425180(v26, v34) & 1) == 0))
  {

    sub_26243A38C(&v41, a3, a4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
  sub_26241EBD8();
  sub_2624629E8();
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_262461260(&v41, 0x6572656767697274, 0xEE0073656C755264, v33);
  result = v29;
  *a1 = v26;
  return result;
}

uint64_t sub_26240B6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, void *a9)
{
  if (sub_26245B920())
  {
    *(&v43 + 1) = a6;
    *&v43 = a5;
    v17 = a9[3];
    v18 = a9[4];
    v19 = __swift_project_boxed_opaque_existential_1(a9, v17);
    v20 = (*(v18 + 24))(&v52, a2, v17, v18);
    if (!v9)
    {
      v21 = v20;
      v54 = v20;
      if (*(v20 + 16))
      {
        v22 = sub_2624414FC(0x7074754F656C7572, 0xEB00000000737475);
        if (v23)
        {
          sub_2623F3970(*(v21 + 56) + 40 * v22, &v46);
          v49 = v46;
          v50 = v47;
          v51 = v48;
          if (*(&v47 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
            if (swift_dynamicCast())
            {
              v24 = v55;
              goto LABEL_12;
            }
          }

          else
          {
            sub_2623F39E0(&v49, &qword_27FF0C5F0, &qword_262463A90);
          }
        }
      }

      v24 = sub_262461FB8(MEMORY[0x277D84F90]);
LABEL_12:
      if (v53 == 255)
      {
        v45 = 0;
        memset(v44, 0, sizeof(v44));
      }

      else
      {
        v49 = v52;
        LOBYTE(v50) = v53;
        sub_2623F989C(v52, *(&v52 + 1), v53);
        sub_26241EA84();
        sub_2624629E8();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v49 = v24;
      sub_262461260(v44, a3, a4, isUniquelyReferenced_nonNull_native);
      *&v46 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
      sub_26241EAD8();
      sub_2624629E8();
      v31 = swift_isUniquelyReferenced_nonNull_native();
      *&v46 = v54;
      sub_262461260(&v49, 0x7074754F656C7572, 0xEB00000000737475, v31);
      v32 = v46;
      v54 = v46;
      v42 = a1;
      if (*(v46 + 16))
      {
        v33 = sub_2624414FC(0x6572656767697274, 0xEE0073656C755264);
        if (v34)
        {
          sub_2623F3970(*(v32 + 56) + 40 * v33, &v46);
          v49 = v46;
          v50 = v47;
          v51 = v48;
          if (*(&v47 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
            if (swift_dynamicCast())
            {
              v35 = v55;
              goto LABEL_22;
            }
          }

          else
          {
            sub_2623F39E0(&v49, &qword_27FF0C5F0, &qword_262463A90);
          }
        }
      }

      v35 = MEMORY[0x277D84FA0];
LABEL_22:
      v55 = v35;
      v36 = v53;
      if (v53 != 255)
      {
        v37 = v52;
        v49 = v52;
        LOBYTE(v50) = v53;
        if (a7 == 0xFF)
        {
          sub_262419944(v52, *(&v52 + 1), v53);
          sub_262419944(v37, *(&v37 + 1), v36);
          sub_262419944(v43, *(&v43 + 1), 0xFFu);
          sub_262419944(v37, *(&v37 + 1), v36);
          sub_2623F98B8(v37, *(&v37 + 1), v36);
          sub_262419958(v37, *(&v37 + 1), v36);
          sub_262419958(v43, *(&v43 + 1), 0xFFu);
        }

        else
        {
          v46 = v43;
          LOBYTE(v47) = a7;
          sub_262419944(v52, *(&v52 + 1), v53);
          sub_262419944(v37, *(&v37 + 1), v36);
          sub_262419944(v43, *(&v43 + 1), a7);
          sub_262419944(v37, *(&v37 + 1), v36);
          v38 = _s5Rules8DecisionO2eeoiySbAC_ACtFZ_0(&v49, &v46);
          sub_2623F98B8(v46, *(&v46 + 1), v47);
          sub_2623F98B8(v49, *(&v49 + 1), v50);
          sub_262419958(v37, *(&v37 + 1), v36);
          if (v38)
          {
            sub_262419958(v37, *(&v37 + 1), v36);
            goto LABEL_28;
          }
        }

        sub_26243A38C(&v49, a3, a4);
        sub_262419958(v37, *(&v37 + 1), v36);

        v35 = v55;
      }

LABEL_28:
      *&v46 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
      sub_26241EBD8();
      sub_2624629E8();
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *&v46 = v54;
      sub_262461260(&v49, 0x6572656767697274, 0xEE0073656C755264, v39);
      v19 = v46;
      v54 = v46;
      v40 = v52;
      *v42 = v52;
      v41 = v53;
      *(v42 + 16) = v53;
      sub_262419944(v40, *(&v40 + 1), v41);

      sub_262419958(v40, *(&v40 + 1), v41);
    }
  }

  else
  {

    v19 = sub_26245B050();
    v26 = v25;
    sub_2623F1BBC();
    swift_allocError();
    *v27 = a3;
    *(v27 + 8) = a4;
    *(v27 + 16) = v19;
    *(v27 + 24) = v26;
    v28 = v50;
    *(v27 + 32) = v49;
    *(v27 + 48) = v28;
    *(v27 + 64) = 16;
    swift_willThrow();
  }

  return v19;
}

uint64_t sub_26240BCB8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  if (!sub_26245B920())
  {

    v21 = sub_26245B050();
    v23 = v22;
    sub_2623F1BBC();
    swift_allocError();
    *v24 = a3;
    *(v24 + 8) = a4;
    *(v24 + 16) = v21;
    *(v24 + 24) = v23;
    v25 = v42;
    *(v24 + 32) = v41;
    *(v24 + 48) = v25;
    *(v24 + 64) = 16;
    return swift_willThrow();
  }

  v34 = a1;
  v15 = a7[3];
  v14 = a7[4];
  __swift_project_boxed_opaque_existential_1(a7, v15);
  result = (*(v14 + 24))(&v44, a2, v15, v14);
  if (v7)
  {
    return result;
  }

  v17 = result;
  if (*(result + 16))
  {
    v18 = sub_2624414FC(0x7074754F656C7572, 0xEB00000000737475);
    if (v19)
    {
      sub_2623F3970(*(v17 + 56) + 40 * v18, &v38);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      if (*(&v39 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
        if (swift_dynamicCast())
        {
          v20 = v35;
          goto LABEL_12;
        }
      }

      else
      {
        sub_2623F39E0(&v41, &qword_27FF0C5F0, &qword_262463A90);
      }
    }
  }

  v20 = sub_262461FB8(MEMORY[0x277D84F90]);
LABEL_12:
  v26 = v44;
  if (v44 == 2)
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
  }

  else
  {
    LOBYTE(v41) = v44 & 1;
    sub_2624629E8();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = v20;
  sub_262461260(v36, a3, a4, isUniquelyReferenced_nonNull_native);
  *&v38 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
  sub_26241EAD8();
  sub_2624629E8();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v38 = v17;
  sub_262461260(&v41, 0x7074754F656C7572, 0xEB00000000737475, v28);
  v29 = v38;
  if (*(v38 + 16))
  {
    v30 = sub_2624414FC(0x6572656767697274, 0xEE0073656C755264);
    if (v31)
    {
      sub_2623F3970(*(v29 + 56) + 40 * v30, &v38);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      if (*(&v39 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
        if (swift_dynamicCast())
        {
          v32 = v35;
          goto LABEL_22;
        }
      }

      else
      {
        sub_2623F39E0(&v41, &qword_27FF0C5F0, &qword_262463A90);
      }
    }
  }

  v32 = MEMORY[0x277D84FA0];
LABEL_22:
  *&v38 = v32;
  if (v26 != 2 && (a5 == 2 || ((v26 ^ a5) & 1) != 0))
  {

    sub_26243A38C(&v41, a3, a4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
  sub_26241EBD8();
  sub_2624629E8();
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_262461260(&v41, 0x6572656767697274, 0xEE0073656C755264, v33);
  result = v29;
  *v34 = v26;
  return result;
}

uint64_t sub_26240C0D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (!sub_26245B920())
  {

    v27 = sub_26245B050();
    v29 = v28;
    sub_2623F1BBC();
    swift_allocError();
    *v30 = a3;
    *(v30 + 8) = a4;
    *(v30 + 16) = v27;
    *(v30 + 24) = v29;
    v31 = v50;
    *(v30 + 32) = v49;
    *(v30 + 48) = v31;
    *(v30 + 64) = 16;
    return swift_willThrow();
  }

  v42 = a4;
  v43 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a1;
  v20 = a8[3];
  v19 = a8[4];
  __swift_project_boxed_opaque_existential_1(a8, v20);
  result = (*(v19 + 24))(&v52, a2, v20, v19);
  if (v8)
  {
    return result;
  }

  v22 = result;
  v41 = v16;
  if (!*(result + 16))
  {
    goto LABEL_11;
  }

  v23 = sub_2624414FC(0x7074754F656C7572, 0xEB00000000737475);
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2623F3970(*(v22 + 56) + 40 * v23, &v46);
  v49 = v46;
  v50 = v47;
  v51 = v48;
  if (!*(&v47 + 1))
  {
    sub_2623F39E0(&v49, &qword_27FF0C5F0, &qword_262463A90);
LABEL_11:
    v25 = v42;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
  v25 = v42;
  if (swift_dynamicCast())
  {
    v26 = v53;
    goto LABEL_13;
  }

LABEL_12:
  v26 = sub_262461FB8(MEMORY[0x277D84F90]);
LABEL_13:
  v32 = *(&v52 + 1);
  v33 = v52;
  if (*(&v52 + 1))
  {
    v49 = v52;

    sub_2624629E8();
  }

  else
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v49 = v26;
  sub_262461260(v44, v43, v25, isUniquelyReferenced_nonNull_native);
  *&v46 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
  sub_26241EAD8();
  sub_2624629E8();
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v22;
  sub_262461260(&v49, 0x7074754F656C7572, 0xEB00000000737475, v35);
  v36 = v46;
  if (*(v46 + 16))
  {
    v37 = sub_2624414FC(0x6572656767697274, 0xEE0073656C755264);
    if (v38)
    {
      sub_2623F3970(*(v36 + 56) + 40 * v37, &v46);
      v49 = v46;
      v50 = v47;
      v51 = v48;
      if (*(&v47 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
        if (swift_dynamicCast())
        {
          v39 = v53;
          goto LABEL_23;
        }
      }

      else
      {
        sub_2623F39E0(&v49, &qword_27FF0C5F0, &qword_262463A90);
      }
    }
  }

  v39 = MEMORY[0x277D84FA0];
LABEL_23:
  *&v46 = v39;
  if (v32 && (!v17 || (v33 != v41 || v32 != v17) && (sub_262462C58() & 1) == 0))
  {

    sub_26243A38C(&v49, v43, v25);

    v39 = v46;
  }

  v53 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
  sub_26241EBD8();
  sub_2624629E8();
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v36;
  sub_262461260(&v49, 0x6572656767697274, 0xEE0073656C755264, v40);
  result = v53;
  *v18 = v33;
  v18[1] = v32;
  return result;
}

uint64_t sub_26240C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8)
{
  if (!sub_26245B920())
  {

    v23 = sub_26245B050();
    v25 = v24;
    sub_2623F1BBC();
    swift_allocError();
    *v26 = a3;
    *(v26 + 8) = a4;
    *(v26 + 16) = v23;
    *(v26 + 24) = v25;
    v27 = v46;
    *(v26 + 32) = v45;
    *(v26 + 48) = v27;
    *(v26 + 64) = 16;
    return swift_willThrow();
  }

  v39 = a6;
  v38 = *&a5;
  v16 = a8[3];
  v17 = a8[4];
  __swift_project_boxed_opaque_existential_1(a8, v16);
  result = (*(v17 + 24))(&v48, a2, v16, v17);
  if (v8)
  {
    return result;
  }

  v19 = result;
  if (*(result + 16))
  {
    v20 = sub_2624414FC(0x7074754F656C7572, 0xEB00000000737475);
    if (v21)
    {
      sub_2623F3970(*(v19 + 56) + 40 * v20, &v42);
      v45 = v42;
      v46 = v43;
      v47 = v44;
      if (*(&v43 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
        if (swift_dynamicCast())
        {
          v22 = v50;
          goto LABEL_12;
        }
      }

      else
      {
        sub_2623F39E0(&v45, &qword_27FF0C5F0, &qword_262463A90);
      }
    }
  }

  v22 = sub_262461FB8(MEMORY[0x277D84F90]);
LABEL_12:
  v28 = v49;
  v37 = v48;
  if (v49)
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
  }

  else
  {
    *&v45 = v48;
    sub_2624629E8();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v45 = v22;
  sub_262461260(v40, a3, a4, isUniquelyReferenced_nonNull_native);
  *&v42 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
  sub_26241EAD8();
  sub_2624629E8();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *&v42 = v19;
  sub_262461260(&v45, 0x7074754F656C7572, 0xEB00000000737475, v30);
  v31 = v42;
  if (!*(v42 + 16))
  {
    goto LABEL_21;
  }

  v32 = sub_2624414FC(0x6572656767697274, 0xEE0073656C755264);
  if ((v33 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_2623F3970(*(v31 + 56) + 40 * v32, &v42);
  v45 = v42;
  v46 = v43;
  v47 = v44;
  if (!*(&v43 + 1))
  {
    sub_2623F39E0(&v45, &qword_27FF0C5F0, &qword_262463A90);
LABEL_21:
    v34 = v37;
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
  v34 = v37;
  if (swift_dynamicCast())
  {
    v35 = v50;
    goto LABEL_23;
  }

LABEL_22:
  v35 = MEMORY[0x277D84FA0];
LABEL_23:
  *&v42 = v35;
  if ((v28 & 1) == 0 && ((v39 & 1) != 0 || v34 != v38))
  {

    sub_26243A38C(&v45, a3, a4);

    v35 = v42;
  }

  v50 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
  sub_26241EBD8();
  sub_2624629E8();
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v31;
  sub_262461260(&v45, 0x6572656767697274, 0xEE0073656C755264, v36);
  result = v50;
  *a1 = v34;
  *(a1 + 8) = v28;
  return result;
}

uint64_t sub_26240C974(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (!sub_26245B920())
  {

    v21 = sub_26245B050();
    v23 = v22;
    sub_2623F1BBC();
    swift_allocError();
    *v24 = a3;
    *(v24 + 8) = a4;
    *(v24 + 16) = v21;
    *(v24 + 24) = v23;
    v25 = v42;
    *(v24 + 32) = v41;
    *(v24 + 48) = v25;
    *(v24 + 64) = 16;
    return swift_willThrow();
  }

  v34 = a5;
  v15 = a7[3];
  v14 = a7[4];
  __swift_project_boxed_opaque_existential_1(a7, v15);
  result = (*(v14 + 24))(&v44, a2, v15, v14);
  if (v7)
  {
    return result;
  }

  v17 = result;
  if (*(result + 16))
  {
    v18 = sub_2624414FC(0x7074754F656C7572, 0xEB00000000737475);
    if (v19)
    {
      sub_2623F3970(*(v17 + 56) + 40 * v18, &v38);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      if (*(&v39 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
        if (swift_dynamicCast())
        {
          v20 = v35;
          goto LABEL_12;
        }
      }

      else
      {
        sub_2623F39E0(&v41, &qword_27FF0C5F0, &qword_262463A90);
      }
    }
  }

  v20 = sub_262461FB8(MEMORY[0x277D84F90]);
LABEL_12:
  v26 = v44;
  if (v44)
  {
    *&v41 = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
    sub_26241FDBC(&qword_27FF0C618, &qword_27FF0C4B0, &qword_262463330);
    sub_2624629E8();
  }

  else
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = v20;
  sub_262461260(v36, a3, a4, isUniquelyReferenced_nonNull_native);
  *&v38 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
  sub_26241EAD8();
  sub_2624629E8();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v38 = v17;
  sub_262461260(&v41, 0x7074754F656C7572, 0xEB00000000737475, v28);
  v29 = v38;
  if (*(v38 + 16))
  {
    v30 = sub_2624414FC(0x6572656767697274, 0xEE0073656C755264);
    if (v31)
    {
      sub_2623F3970(*(v29 + 56) + 40 * v30, &v38);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      if (*(&v39 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
        if (swift_dynamicCast())
        {
          v32 = v35;
          goto LABEL_22;
        }
      }

      else
      {
        sub_2623F39E0(&v41, &qword_27FF0C5F0, &qword_262463A90);
      }
    }
  }

  v32 = MEMORY[0x277D84FA0];
LABEL_22:
  *&v38 = v32;
  if (v26 && (!v34 || (sub_262425210(v26, v34) & 1) == 0))
  {

    sub_26243A38C(&v41, a3, a4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
  sub_26241EBD8();
  sub_2624629E8();
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_262461260(&v41, 0x6572656767697274, 0xEE0073656C755264, v33);
  result = v29;
  *a1 = v26;
  return result;
}

uint64_t sub_26240CDEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  result = (*(v13 + 24))(a1, a2, v12, v13);
  if (v6)
  {
    v31 = v6;
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      MEMORY[0x266728D50](v6);
      v16 = v28;
      v17 = v29;
      v24[2] = v28;
      v24[3] = v29;
      v18 = v30;
      v25 = v30;
      v20 = v26;
      v19 = v27;
      v24[0] = v26;
      v24[1] = v27;
      *a1 = a4;
      *(a1 + 8) = a5;
      *(a1 + 16) = a6;
      v22[2] = v16;
      v22[3] = v17;
      v23 = v18;
      v22[0] = v20;
      v22[1] = v19;
      sub_262419944(a4, a5, a6);
      v21 = sub_262427BA0(a2, v22);
      sub_2623F3C50(v24);
      MEMORY[0x266728D50](v31);
      return v21;
    }

    else
    {
      return MEMORY[0x266728D50](v31);
    }
  }

  return result;
}

unint64_t sub_26240CF48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D190, &qword_262468F58);
    v2 = sub_262462B08();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_2623F3CA4(*(a1 + 56) + 40 * v14, v35);
        *&v34 = v16;
        *(&v34 + 1) = v17;
        *&v31[5] = v34;
        v32[0] = v35[0];
        v32[1] = v35[1];
        v33 = v36;
        v18 = v34;
        sub_2623EB668(v32, v26);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D198, qword_262468F60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D1A0, &qword_2624697E0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2623EB668(v24, v27);
        sub_2623EB668(v27, v28);
        v29 = v18;
        sub_2623EB668(v28, v30);
        v19 = v29;
        sub_2623EB668(v30, v31);
        sub_2623EB668(v31, &v29);
        result = sub_2624414FC(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 40 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2623EB668(&v29, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_2623EB668(&v29, v2[7] + 40 * result);
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      v25 = 0;
      memset(v24, 0, sizeof(v24));

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_26240D23C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D180, &qword_262468F48);
    v2 = sub_262462B08();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_2623F3CA4(*(a1 + 56) + 40 * v14, v35);
        *&v34 = v16;
        *(&v34 + 1) = v17;
        *&v31[5] = v34;
        v32[0] = v35[0];
        v32[1] = v35[1];
        v33 = v36;
        v18 = v34;
        sub_2623EB668(v32, v26);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2623EB668(v24, v27);
        sub_2623EB668(v27, v28);
        v29 = v18;
        sub_2623EB668(v28, v30);
        v19 = v29;
        sub_2623EB668(v30, v31);
        sub_2623EB668(v31, &v29);
        result = sub_2624414FC(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 40 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2623EB668(&v29, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_2623EB668(&v29, v2[7] + 40 * result);
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      v25 = 0;
      memset(v24, 0, sizeof(v24));

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_26240D530(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE8, &qword_262467E80);
    v2 = sub_262462B08();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_2623F3CA4(*(a1 + 56) + 40 * v14, v35);
        *&v34 = v16;
        *(&v34 + 1) = v17;
        *&v31[5] = v34;
        v32[0] = v35[0];
        v32[1] = v35[1];
        v33 = v36;
        v18 = v34;
        sub_2623EB668(v32, v26);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFC8, &unk_262467E60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD0, &qword_26246E160);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2623EB668(v24, v27);
        sub_2623EB668(v27, v28);
        v29 = v18;
        sub_2623EB668(v28, v30);
        v19 = v29;
        sub_2623EB668(v30, v31);
        sub_2623EB668(v31, &v29);
        result = sub_2624414FC(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 40 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2623EB668(&v29, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_2623EB668(&v29, v2[7] + 40 * result);
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      v25 = 0;
      memset(v24, 0, sizeof(v24));

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_26240D824(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D148, &qword_262468F08);
    v2 = sub_262462B08();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_2623F3CA4(*(a1 + 56) + 40 * v14, v35);
        *&v34 = v16;
        *(&v34 + 1) = v17;
        *&v31[5] = v34;
        v32[0] = v35[0];
        v32[1] = v35[1];
        v33 = v36;
        v18 = v34;
        sub_2623EB668(v32, v26);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2623EB668(v24, v27);
        sub_2623EB668(v27, v28);
        v29 = v18;
        sub_2623EB668(v28, v30);
        v19 = v29;
        sub_2623EB668(v30, v31);
        sub_2623EB668(v31, &v29);
        result = sub_2624414FC(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 40 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2623EB668(&v29, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_2623EB668(&v29, v2[7] + 40 * result);
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      v25 = 0;
      memset(v24, 0, sizeof(v24));

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_26240DB18(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D160, &unk_262468F20);
    v2 = sub_262462B08();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_2623F3CA4(*(a1 + 56) + 40 * v14, v35);
        *&v34 = v16;
        *(&v34 + 1) = v17;
        *&v31[5] = v34;
        v32[0] = v35[0];
        v32[1] = v35[1];
        v33 = v36;
        v18 = v34;
        sub_2623EB668(v32, v26);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAB8, &unk_262465A10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAC0, &qword_262468F30);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2623EB668(v24, v27);
        sub_2623EB668(v27, v28);
        v29 = v18;
        sub_2623EB668(v28, v30);
        v19 = v29;
        sub_2623EB668(v30, v31);
        sub_2623EB668(v31, &v29);
        result = sub_2624414FC(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 40 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2623EB668(&v29, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_2623EB668(&v29, v2[7] + 40 * result);
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      v25 = 0;
      memset(v24, 0, sizeof(v24));

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_26240DE0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D168, &qword_262468F38);
    v2 = sub_262462B08();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_2623F3CA4(*(a1 + 56) + 40 * v14, v35);
        *&v34 = v16;
        *(&v34 + 1) = v17;
        *&v31[5] = v34;
        v32[0] = v35[0];
        v32[1] = v35[1];
        v33 = v36;
        v18 = v34;
        sub_2623EB668(v32, v26);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2623EB668(v24, v27);
        sub_2623EB668(v27, v28);
        v29 = v18;
        sub_2623EB668(v28, v30);
        v19 = v29;
        sub_2623EB668(v30, v31);
        sub_2623EB668(v31, &v29);
        result = sub_2624414FC(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 40 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2623EB668(&v29, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_2623EB668(&v29, v2[7] + 40 * result);
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      v25 = 0;
      memset(v24, 0, sizeof(v24));

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_26240E100@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_2624414FC(result, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56) + 24 * result;
    v8 = *v7;
    v9 = *(v7 + 8);
    *a4 = *v7;
    *(a4 + 8) = v9;
    v10 = *(v7 + 16);
    *(a4 + 16) = v10;

    return sub_2623F989C(v8, v9, v10);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = -1;
  }

  return result;
}

unint64_t sub_26240E178@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(result + 16) && (v4 = result, result = sub_262441574(a3), (v5 & 1) != 0))
  {
    v6 = *(v4 + 56) + 24 * result;
    v7 = *v6;
    v8 = *(v6 + 8);
    *a2 = *v6;
    *(a2 + 8) = v8;
    v9 = *(v6 + 16);
    *(a2 + 16) = v9;

    return sub_2623F989C(v7, v8, v9);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  return result;
}

uint64_t sub_26240E1F0(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x6D614E646C656966;
      break;
    case 2:
      result = 0x746C7561666564;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6C615673656C7572;
      break;
    case 6:
      result = 0x6369676F6CLL;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
    case 10:
    case 11:
      result = 0x6E6F697369636544;
      break;
    case 12:
    case 13:
      result = 0x736E6961746E6F43;
      break;
    case 14:
      result = 7105601;
      break;
    case 15:
      result = 0x657079546C6C41;
      break;
    case 16:
      result = 0x7473726946;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    case 19:
      result = 0x6F6B63614278614DLL;
      break;
    case 20:
      v3 = 1165517133;
      goto LABEL_14;
    case 21:
      v3 = 1164863821;
LABEL_14:
      result = v3 | 0x7261626D00000000;
      break;
    case 22:
      result = 0x697469726F697250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26240E448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26241C71C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26240E47C(uint64_t a1)
{
  v2 = sub_2624149A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26240E4B8(uint64_t a1)
{
  v2 = sub_2624149A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26240E4F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CC30, &qword_2624669C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624149A4();
  result = sub_262462D88();
  if (!v2)
  {
    v12 = sub_262462BC8();
    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      v14 = *(sub_262462BC8() + 16);

      if (v14 == 1 || (sub_26240ADD8() & 1) != 0)
      {
        if (v13 <= 9)
        {
          if (v13 <= 6)
          {
            if ((v13 - 3) >= 4)
            {
              sub_2623F3CA4(a1, &v29);
              if ((v13 - 1) >= 2)
              {
                a2[3] = &type metadata for DecisionValue;
                a2[4] = sub_262419848();
                v27 = swift_allocObject();
                *a2 = v27;
                sub_26240EAC0(&v29, v27 + 16);
              }

              else
              {
                a2[3] = &type metadata for DecisionField;
                a2[4] = sub_2624197F4();
                v26 = swift_allocObject();
                *a2 = v26;
                sub_26240EE5C(&v29, (v26 + 16));
              }
            }

            else
            {
              sub_2623F3CA4(a1, &v29);
              a2[3] = type metadata accessor for DecisionRule();
              a2[4] = sub_26241C078(&qword_2813BDA00, type metadata accessor for DecisionRule);
              __swift_allocate_boxed_opaque_existential_1(a2);
              sub_26240F2B8(&v29);
            }

            return (*(v6 + 8))(v9, v5);
          }

          if (v13 == 7)
          {
            LOBYTE(v29) = 7;
            a2[3] = &type metadata for DecisionReplaceFailure;
            a2[4] = sub_262419700();
            *a2 = swift_allocObject();
            sub_262419754();
          }

          else if (v13 == 8)
          {
            LOBYTE(v29) = 8;
            a2[3] = &type metadata for DecisionMatchCase;
            a2[4] = sub_262419658();
            *a2 = swift_allocObject();
            sub_2624196AC();
          }

          else
          {
            LOBYTE(v29) = 9;
            a2[3] = &type metadata for DecisionBoolean;
            a2[4] = sub_2624195B0();
            *a2 = swift_allocObject();
            sub_262419604();
          }
        }

        else
        {
          if ((v13 - 12) < 0xB)
          {
            type metadata accessor for MergingLogicDecoder();
            sub_26240FA6C(a1, &v29);
            v22 = *(&v30 + 1);
            v23 = v31;
            v24 = __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
            a2[3] = v22;
            a2[4] = *(v23 + 8);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
            (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v24, v22);
            (*(v6 + 8))(v9, v5);
            return __swift_destroy_boxed_opaque_existential_1(&v29);
          }

          if (v13 == 10)
          {
            LOBYTE(v29) = 10;
            a2[3] = &type metadata for DecisionString;
            a2[4] = sub_2624194C0();
            *a2 = swift_allocObject();
            sub_26241955C();
          }

          else
          {
            LOBYTE(v29) = 11;
            a2[3] = &type metadata for DecisionNumber;
            a2[4] = sub_262419418();
            *a2 = swift_allocObject();
            sub_26241946C();
          }
        }

        sub_262462BB8();
        return (*(v6 + 8))(v9, v5);
      }
    }

    else
    {
    }

    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v16 = sub_262462D78();
    v17 = sub_262427A60(v16);
    v19 = v18;

    sub_2623F1BBC();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0xD000000000000012;
    *(v20 + 24) = 0x8000000262466940;
    v21 = v30;
    *(v20 + 32) = v29;
    *(v20 + 48) = v21;
    *(v20 + 64) = 3;
    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}