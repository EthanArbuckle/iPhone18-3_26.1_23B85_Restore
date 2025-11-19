uint64_t sub_1E3CC7460()
{
  v1 = *v0;

  v2 = *(v1 + 616);
  v3 = *(v1 + 608);

  return MEMORY[0x1EEE6DFA0](sub_1E3CC7580, v3, v2);
}

void sub_1E3CC7580()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);

  sub_1E3CC617C(v2, v1, v0 + 200);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v11 = *(v0 + 200);
  v10 = *(v0 + 216);
  (*(v0 + 656))(*(v0 + 528), *(v0 + 488));
  v7 = *(v5 + 8);
  v7(v3, v6);
  v7(v4, v6);

  OUTLINED_FUNCTION_4_165(v11, v10);
  OUTLINED_FUNCTION_8_116();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1E3CC7728()
{
  v1 = *v0;

  v2 = *(v1 + 616);
  v3 = *(v1 + 608);

  return MEMORY[0x1EEE6DFA0](sub_1E3CC7848, v3, v2);
}

uint64_t sub_1E3CC7848()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);

  sub_1E3CC617C(v5, v4, v0 + 160);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v1(v2, v3);
  v6 = *(v0 + 592);
  v7 = *(v0 + 584);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  (*(v0 + 688))(*(v0 + 512), *(v0 + 488));
  v10 = *(v8 + 8);
  v10(v6, v9);
  v10(v7, v9);

  OUTLINED_FUNCTION_4_165(v14, v13);

  return v11();
}

uint64_t sub_1E3CC7A0C()
{

  OUTLINED_FUNCTION_2_163();
  *(v0 + 344) = sub_1E4205F14();
  *(v0 + 352) = v1;
  sub_1E4207414();
  swift_getErrorValue();
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  *(v0 + 264) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 240));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_1E329504C((v0 + 240), (v0 + 272));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1E377DF14((v0 + 272), v0 + 120);
  sub_1E375D84C(v0 + 120);
  v5 = [objc_opt_self() defaultCenter];
  v6 = OUTLINED_FUNCTION_11_109();

  [v5 postNotificationName:@"VUISubscribeRequestDidFinishNotification" object:v6];

  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E3CC7C5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7250656C646E7562 && a2 == 0xEF6449746375646FLL;
    if (v6 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000021 && 0x80000001E427CA20 == a2)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_54();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1E3CC7D58(char a1)
{
  if (!a1)
  {
    return 0x6449656C646E7562;
  }

  if (a1 == 1)
  {
    return 0x7250656C646E7562;
  }

  return 0xD000000000000021;
}

uint64_t sub_1E3CC7DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E3CC7C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3CC7DF0(uint64_t a1)
{
  v2 = sub_1E3CC8348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E3CC7E2C(uint64_t a1)
{
  v2 = sub_1E3CC8348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E3CC7E68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3CC8348();
  sub_1E4207C04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_1E4207834();
  v22 = v10;
  v24 = 1;
  v20 = sub_1E4207804();
  v21 = v11;
  v23 = 2;
  v12 = sub_1E4207804();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v22;
  *a2 = v9;
  a2[1] = v17;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v12;
  a2[5] = v15;
  return result;
}

double sub_1E3CC809C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E3CC7E68(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1E3CC80F8()
{
  result = qword_1ECF36DC0;
  if (!qword_1ECF36DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36DC0);
  }

  return result;
}

unint64_t sub_1E3CC814C()
{
  result = qword_1ECF36DD8;
  if (!qword_1ECF36DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36DD8);
  }

  return result;
}

unint64_t sub_1E3CC81B4()
{
  result = qword_1ECF36DE0;
  if (!qword_1ECF36DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36DE0);
  }

  return result;
}

uint64_t sub_1E3CC8238(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3CC8278(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E3CC82E8()
{
  result = qword_1ECF5E6F0[0];
  if (!qword_1ECF5E6F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5E6F0);
  }

  return result;
}

unint64_t sub_1E3CC8348()
{
  result = qword_1ECF5E780[0];
  if (!qword_1ECF5E780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5E780);
  }

  return result;
}

_BYTE *sub_1E3CC839C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3CC8478()
{
  result = qword_1ECF5E890[0];
  if (!qword_1ECF5E890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5E890);
  }

  return result;
}

unint64_t sub_1E3CC84D0()
{
  result = qword_1ECF5E9A0;
  if (!qword_1ECF5E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5E9A0);
  }

  return result;
}

unint64_t sub_1E3CC8528()
{
  result = qword_1ECF5E9A8[0];
  if (!qword_1ECF5E9A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5E9A8);
  }

  return result;
}

uint64_t sub_1E3CC8584()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1EE2AB1A8);
  v1 = OUTLINED_FUNCTION_32_0();
  __swift_project_value_buffer(v1, v2);
  return sub_1E3287754(1);
}

uint64_t sub_1E3CC85FC(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 256) = a1;
}

uint64_t sub_1E3CC8664(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 272) = a1;
}

uint64_t sub_1E3CC86CC(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 280) = a1;
}

uint64_t sub_1E3CC8734(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v2 + 288) = a1;
  *(v2 + 296) = a2 & 1;
  return result;
}

uint64_t sub_1E3CC87A8(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 304) = a1;
}

uint64_t sub_1E3CC8814(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 352) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3CC8868(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_11_3();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 352);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3CC88E0;
}

void sub_1E3CC88E0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 352) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

unint64_t sub_1E3CC8964()
{
  v1 = *(v0 + 360);
  if (!v1)
  {
    goto LABEL_6;
  }

  if (v1 >> 62)
  {
    if (sub_1E4207384())
    {
      goto LABEL_4;
    }

LABEL_6:
    OUTLINED_FUNCTION_8();
    if ((*(v2 + 552))())
    {
      v9[3] = &unk_1F5D7BE68;
      v9[4] = &off_1F5D7BC48;
      LOBYTE(v9[0]) = 14;
      sub_1E3F9F164(v9);

      __swift_destroy_boxed_opaque_existential_1(v9);
      if (*(&v11 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
        if (swift_dynamicCast())
        {
          v9[0] = MEMORY[0x1E69E7CC0];
          v3 = sub_1E3CCBA88();
          v4 = v3;

          v5 = OUTLINED_FUNCTION_32_0();
          sub_1E3CCC418(v5, v6, v3, v7);

          v1 = v9[0];
LABEL_13:
          *(v0 + 360) = v1;

          return v1;
        }

LABEL_12:
        v1 = MEMORY[0x1E69E7CC0];
        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    sub_1E329505C(&v10);
    goto LABEL_12;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

LABEL_4:

  return v1;
}

uint64_t sub_1E3CC8B50(__int16 a1, uint64_t a2, unint64_t a3)
{
  *(v3 + 248) = 0u;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + 304) = MEMORY[0x1E69E7CC0];
  *(v3 + 312) = 0x647055736465656ELL;
  *(v3 + 320) = 0xEB00000000657461;
  strcpy((v3 + 328), "prototypeBody");
  *(v3 + 342) = -4864;
  *(v3 + 352) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 360) = 0;
  sub_1E42004F4();
  v8 = sub_1E4205CB4();
  *(v3 + 384) = 0;
  *(v3 + 392) = 0;
  *(v3 + 368) = MEMORY[0x1E69E7CC8];
  *(v3 + 376) = v8;

  isUniquelyReferenced_nonNull_native = sub_1E39BEDCC(a1, a2, a3);
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_107;
  }

  v10 = sub_1E3DD55E0(24, a2, isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_3_0();
  isUniquelyReferenced_nonNull_native[31] = v10;

  v12 = *(*isUniquelyReferenced_nonNull_native + 952);
  v101 = isUniquelyReferenced_nonNull_native;
  if (!(v12)(v11) || (OUTLINED_FUNCTION_26_0(), (*(v13 + 464))(), OUTLINED_FUNCTION_12_1(), , !v10))
  {
    if (v12())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v19 + 488))();
      OUTLINED_FUNCTION_12_1();

      if (v10)
      {
        v20 = sub_1E373E010(23, v10);

        if (v20)
        {
          if (*v20 == _TtC8VideosUI13TextViewModel && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750), v10 = swift_allocObject(), *(v10 + 16) = xmmword_1E4298880, *(v10 + 32) = v20, OUTLINED_FUNCTION_3_0(), isUniquelyReferenced_nonNull_native[32] = v10, , , OUTLINED_FUNCTION_18(), (v21 = sub_1E3C287F4(0)) != 0))
          {
            v22 = v21;
            v23 = [v21 string];

            v10 = sub_1E4205F14();
            v25 = v24;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
            v26 = swift_allocObject();
            v110 = xmmword_1E4297BE0;
            *(v26 + 16) = xmmword_1E4297BE0;
            *(v26 + 32) = v10;
            *(v26 + 40) = v25;
            OUTLINED_FUNCTION_3_0();
            isUniquelyReferenced_nonNull_native[34] = v26;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E30);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1E4297BE0;
            *(inited + 32) = v10;
            *(inited + 40) = v25;
            *(inited + 48) = 0;
            sub_1E4205CB4();
            OUTLINED_FUNCTION_12_1();

            OUTLINED_FUNCTION_3_0();
            isUniquelyReferenced_nonNull_native[35] = v10;
          }

          else
          {
          }
        }
      }
    }

    goto LABEL_54;
  }

  v92 = a2;
  v95 = a3;
  *&v138 = v7;
  v14 = sub_1E32AE9B0(v10);
  v15 = 0;
  a3 = v10 & 0xC000000000000001;
  a2 = v10 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v14 == v15)
    {

      OUTLINED_FUNCTION_3_0();
      v10 = isUniquelyReferenced_nonNull_native[32];
      isUniquelyReferenced_nonNull_native[32] = v7;

      v28 = sub_1E32AE9B0(v7);
      if (v28)
      {
        v29 = v28;
        if (v28 < 1)
        {
          goto LABEL_113;
        }

        a2 = 0;
        v30 = MEMORY[0x1E69E7CC0];
        v10 = MEMORY[0x1E69E7CC8];
        v107 = v7;
        *&v110 = v7 & 0xC000000000000001;
        a3 = &selRef_setWaitingForTransactionToStart_;
        v104 = v28;
        do
        {
          if (v110)
          {
            v31 = MEMORY[0x1E6911E60](a2, v7);
          }

          else
          {
            v31 = *(v7 + 8 * a2 + 32);
          }

          OUTLINED_FUNCTION_18();
          v32 = sub_1E3C287F4(0);
          if (v32)
          {
            v33 = v32;
            v34 = [v32 *(a3 + 2712)];

            v35 = sub_1E4205F14();
            v37 = v36;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = OUTLINED_FUNCTION_27();
              v30 = sub_1E3740F88(v54, v55, v56, v30);
            }

            v39 = *(v30 + 2);
            v38 = *(v30 + 3);
            if (v39 >= v38 >> 1)
            {
              v57 = OUTLINED_FUNCTION_35(v38);
              v30 = sub_1E3740F88(v57, v39 + 1, 1, v30);
            }

            *(v30 + 2) = v39 + 1;
            v40 = &v30[16 * v39];
            *(v40 + 4) = v35;
            *(v40 + 5) = v37;
            LOBYTE(v137[0]) = 0;
            (*(*v31 + 776))(&v138, v137, &unk_1F5D5D7F8, &off_1F5D5C8F8);
            if (v139)
            {
              if (swift_dynamicCast())
              {
                v41 = v35;
                v42 = v137[0];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v138 = v10;
                v98 = v41;
                v43 = sub_1E327D33C(v41, v37);
                v45 = *(v10 + 16);
                v46 = (v44 & 1) == 0;
                v10 = v45 + v46;
                if (__OFADD__(v45, v46))
                {
                  goto LABEL_111;
                }

                v47 = v43;
                a3 = v44;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4E8);
                if (sub_1E4207644())
                {
                  v48 = sub_1E327D33C(v41, v37);
                  isUniquelyReferenced_nonNull_native = v101;
                  if ((a3 & 1) != (v49 & 1))
                  {
                    goto LABEL_117;
                  }

                  v47 = v48;
                }

                else
                {
                  isUniquelyReferenced_nonNull_native = v101;
                }

                v10 = v138;
                if (a3)
                {
                  *(*(v138 + 56) + 8 * v47) = v42;
                }

                else
                {
                  *(v138 + 8 * (v47 >> 6) + 64) |= 1 << v47;
                  v50 = (*(v10 + 48) + 16 * v47);
                  *v50 = v41;
                  v50[1] = v37;
                  *(*(v10 + 56) + 8 * v47) = v42;
                  v51 = *(v10 + 16);
                  v52 = __OFADD__(v51, 1);
                  v53 = v51 + 1;
                  if (v52)
                  {
                    goto LABEL_112;
                  }

                  *(v10 + 16) = v53;
                }

                a3 = 0x1E874F000;
              }

              else
              {
              }
            }

            else
            {

              sub_1E329505C(&v138);
            }

            v29 = v104;
            v7 = v107;
          }

          else
          {
          }

          ++a2;
        }

        while (v29 != a2);
      }

      else
      {
        v10 = MEMORY[0x1E69E7CC8];
        v30 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_3_0();
      isUniquelyReferenced_nonNull_native[34] = v30;

      OUTLINED_FUNCTION_3_0();
      isUniquelyReferenced_nonNull_native[35] = v10;

      a2 = v92;
      a3 = v95;
LABEL_54:
      v139 = &type metadata for ViewModelKeys;
      v140 = &off_1F5D7BCA8;
      LOBYTE(v138) = 26;
      sub_1E3F9F164(&v138);
      if (v137[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(&v138);
          v58 = type metadata accessor for ViewModel();
          sub_1E3DD5014(13, v133, isUniquelyReferenced_nonNull_native, v58);
          OUTLINED_FUNCTION_12_1();

          if (v10)
          {
            if (sub_1E32AE9B0(v10))
            {
              if ((v10 & 0xC000000000000001) != 0)
              {
                goto LABEL_115;
              }

              if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v59 = *(v10 + 32);

                goto LABEL_61;
              }

              __break(1u);
LABEL_117:
              result = sub_1E4207A74();
              __break(1u);
              return result;
            }
          }

          v59 = 0;
          goto LABEL_67;
        }

        __swift_destroy_boxed_opaque_existential_1(&v138);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v138);
        sub_1E329505C(v137);
      }

      OUTLINED_FUNCTION_3_0();
      isUniquelyReferenced_nonNull_native[33] = 0;
      goto LABEL_68;
    }

    if (a3)
    {
      v17 = MEMORY[0x1E6911E60](v15, v10);
      v16 = v17;
    }

    else
    {
      if (v15 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_109;
      }

      v16 = *(v10 + 8 * v15 + 32);
    }

    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (*v16 == _TtC8VideosUI13TextViewModel)
    {
      MEMORY[0x1E6910BF0](v17);
      v18 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v18 >> 1)
      {
        OUTLINED_FUNCTION_35(v18);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v7 = v138;
      ++v15;
      isUniquelyReferenced_nonNull_native = v101;
    }

    else
    {

      ++v15;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_115:
    v59 = MEMORY[0x1E6911E60](0, v10);
LABEL_61:

LABEL_67:
    OUTLINED_FUNCTION_3_0();
    isUniquelyReferenced_nonNull_native[33] = v59;
LABEL_68:

    ViewModelKeys.rawValue.getter(31);
    sub_1E3277E60(v60, v61, a2, &v138);

    if (v139)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      v62 = OUTLINED_FUNCTION_7_153();
      if (v62)
      {
        isUniquelyReferenced_nonNull_native[49] = v133;
      }
    }

    else
    {
      v62 = sub_1E329505C(&v138);
    }

    v68 = *(*isUniquelyReferenced_nonNull_native + 776);
    v69 = OUTLINED_FUNCTION_18_81(v62, &unk_1F5D5D7F8, &off_1F5D5C8F8, v63, v64, v65, v66, v67, v92, v95, v98, v101, v104, v107, v110, *(&v110 + 1), v115, v118, v121, v124, v127, v130, 1);
    v68(v69);
    if (v139)
    {
      v70 = OUTLINED_FUNCTION_7_153();
      if (v70)
      {
        v70 = OUTLINED_FUNCTION_3_0();
        qword_1EE24F5E8 = v134;
      }
    }

    else
    {
      v70 = sub_1E329505C(&v138);
    }

    v76 = OUTLINED_FUNCTION_18_81(v70, &unk_1F5D5D7F8, &off_1F5D5C8F8, v71, v72, v73, v74, v75, v93, v96, v99, v102, v105, v108, v111, v113, v116, v119, v122, v125, v128, v131, 2);
    v68(v76);
    if (v139)
    {
      v77 = OUTLINED_FUNCTION_7_153();
      if (v77)
      {
        v77 = OUTLINED_FUNCTION_3_0();
        qword_1ECF36DF0 = v135;
      }
    }

    else
    {
      v77 = sub_1E329505C(&v138);
    }

    v83 = OUTLINED_FUNCTION_18_81(v77, &unk_1F5D5DAC8, &off_1F5D5C998, v78, v79, v80, v81, v82, v94, v97, v100, v103, v106, v109, v112, v114, v117, v120, v123, v126, v129, v132, 6);
    v68(v83);
    if (v139)
    {
      if (OUTLINED_FUNCTION_7_153())
      {
        OUTLINED_FUNCTION_3_0();
        isUniquelyReferenced_nonNull_native[36] = v133;
        *(isUniquelyReferenced_nonNull_native + 296) = 0;
      }
    }

    else
    {
      sub_1E329505C(&v138);
    }

    LOBYTE(v136) = 3;
    (v68)(&v138, &v136, &unk_1F5D5D7F8, &off_1F5D5C8F8);
    if (!v139)
    {
LABEL_104:
      sub_1E329505C(&v138);
      goto LABEL_106;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_106;
    }

    v10 = sub_1E3CCBD44(0, v136);
    v136 = (*(*isUniquelyReferenced_nonNull_native + 464))();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
    sub_1E4148C68(sub_1E3819AD4, v84, &v138);

    v85 = v138;
    v86 = sub_1E32AE9B0(v138);
    v92 = a2;
    v95 = a3;
    if (!v86)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = v86;
    if (v86 >= 1)
    {
      v87 = 0;
      a3 = &unk_1F5D5D7F8;
      a2 = &off_1F5D5C8F8;
      while (1)
      {
        if ((v85 & 0xC000000000000001) != 0)
        {
          v88 = MEMORY[0x1E6911E60](v87, v85);
        }

        else
        {
          v88 = *(v85 + 8 * v87 + 32);
        }

        LOBYTE(v136) = 0;
        OUTLINED_FUNCTION_8();
        (*(v89 + 776))(&v138, &v136, &unk_1F5D5D7F8, &off_1F5D5C8F8);
        if (v139)
        {
          if (swift_dynamicCast())
          {
            v90 = v136;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if ((v90 & 0x8000000000000000) != 0)
              {
                goto LABEL_103;
              }
            }

            else
            {
              v10 = sub_1E392937C();
              if ((v90 & 0x8000000000000000) != 0)
              {
LABEL_103:
                __break(1u);
                goto LABEL_104;
              }
            }

            if (v90 >= *(v10 + 16))
            {
              goto LABEL_110;
            }

            *(v10 + 8 * v90 + 32) = v88;
          }
        }

        else
        {

          sub_1E329505C(&v138);
        }

        if (isUniquelyReferenced_nonNull_native == ++v87)
        {
          goto LABEL_105;
        }
      }
    }
  }

LABEL_105:

  isUniquelyReferenced_nonNull_native = v101;
  OUTLINED_FUNCTION_3_0();
  *(v101 + 304) = v10;

LABEL_106:

LABEL_107:

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_1E3CC995C()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 1096))();
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4 == v3)
    {

      return v5;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v6 = *(v2 + 8 * v3 + 32);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_27();
      result = sub_1E3CCCCD4(v10, v11, v12, v5);
      v5 = result;
    }

    v8 = *(v5 + 16);
    v7 = *(v5 + 24);
    if (v8 >= v7 >> 1)
    {
      v13 = OUTLINED_FUNCTION_35(v7);
      result = sub_1E3CCCCD4(v13, v8 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v8 + 1;
    v9 = v5 + 16 * v8;
    *(v9 + 32) = v3;
    *(v9 + 40) = v6;
    ++v3;
  }

  __break(1u);
  return result;
}

void sub_1E3CC9A64(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7CD0];
  v30 = MEMORY[0x1E69E7CD0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(*v1 + 1096);
    v6 = (a1 + 32);
    v7 = OUTLINED_FUNCTION_5_0();
    while (1)
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *(v5(v7) + 16);

      if (v9 < v10)
      {
        v11 = v5(v7);
        if (v8 < 0)
        {
          goto LABEL_33;
        }

        if (v8 >= *(v11 + 16))
        {
          goto LABEL_34;
        }

        v12 = *(v11 + 8 * v8 + 32);

        if (!v12)
        {
LABEL_12:
          OUTLINED_FUNCTION_5_0();
          if (!qword_1EE24F5E8)
          {
            goto LABEL_36;
          }

          v18 = v8 / qword_1EE24F5E8;
          v19 = v8 / qword_1EE24F5E8 * qword_1EE24F5E8;
          if ((v8 / qword_1EE24F5E8 * qword_1EE24F5E8) >> 64 != v19 >> 63)
          {
            goto LABEL_37;
          }

          if (!*(v2[46] + 16) || (v7 = sub_1E3928950(v19), (v20 & 1) == 0))
          {
            v7 = sub_1E3897544(v29, v18);
          }

          goto LABEL_19;
        }

        v14 = (*(*v12 + 552))(v13);
        if (!v14)
        {
          goto LABEL_18;
        }

        v15 = v14;
        if (!*(v14 + 16) || (v16 = sub_1E327D33C(v2[39], v2[40]), (v17 & 1) == 0))
        {

LABEL_18:

          goto LABEL_19;
        }

        sub_1E328438C(*(v15 + 56) + 32 * v16, v29);

        v7 = swift_dynamicCast();
        if (v7 && (v28 & 1) != 0)
        {
          goto LABEL_12;
        }
      }

LABEL_19:
      if (!--v4)
      {
        v3 = v30;
        break;
      }
    }
  }

  v21 = 0;
  v22 = 1 << *(v3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v3 + 56);
  v25 = (v22 + 63) >> 6;
  if (v24)
  {
    while (1)
    {
      v26 = v21;
LABEL_28:
      v27 = *(*(v3 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v24)))));
      OUTLINED_FUNCTION_5_0();
      if ((v27 * qword_1EE24F5E8) >> 64 != (v27 * qword_1EE24F5E8) >> 63)
      {
        break;
      }

      v24 &= v24 - 1;
      sub_1E3CC9D38();
      v21 = v26;
      if (!v24)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    while (1)
    {
      v26 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v26 >= v25)
      {

        return;
      }

      v24 = *(v3 + 56 + 8 * v26);
      ++v21;
      if (v24)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1E3CC9D38()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v3;
  v18 = sub_1E3CCAE90(v5, v3, 0, 0, 0);
  if (v18)
  {
    v19 = v18;
    v40 = v8;
    v20 = sub_1E324FBDC();
    (*(v14 + 16))(v17, v20, v12);

    v21 = sub_1E41FFC94();
    v22 = sub_1E42067E4();

    if (os_log_type_enabled(v21, v22))
    {
      v37 = v22;
      v23 = OUTLINED_FUNCTION_100();
      v36 = OUTLINED_FUNCTION_100();
      v43 = v36;
      *v23 = 136315650;
      v24 = v1[3];
      v38 = v6;
      v39 = v5;
      if (v24)
      {
        v25 = v1[2];
        v26 = MEMORY[0x1E69E6158];
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v42[2] = 0;
      }

      v42[0] = v25;
      v42[1] = v24;
      v42[3] = v26;

      v27 = sub_1E3294FA4(v42);
      v29 = sub_1E3270FC8(v27, v28, &v43);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v41;
      *(v23 + 22) = 2048;
      v5 = v39;
      *(v23 + 24) = v39;
      _os_log_impl(&dword_1E323F000, v21, v37, "EpisodeCollection:: %s: fetch %ld episodes at %ld", v23, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v14 + 8))(v17, v12);
      v6 = v38;
    }

    else
    {

      (*(v14 + 8))(v17, v12);
    }

    sub_1E4206BA4();
    v30 = VUISignpostLogObject();
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    (*(v40 + 8))(v11, v6);
    OUTLINED_FUNCTION_11_3();

    swift_isUniquelyReferenced_nonNull_native();
    v43 = v1[46];
    sub_1E3CCCF80();
    v1[46] = v43;
    v31 = swift_endAccess();
    if ((*(*v19 + 352))(v31))
    {
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = v5;
      v33[4] = 0;
      v33[5] = 0;
      sub_1E34AF604(0);
      v34 = sub_1E41EC148(sub_1E3CCD0E4, v33);
    }

    else
    {
      v34 = 0;
    }

    OUTLINED_FUNCTION_11_3();
    if (v34)
    {

      swift_isUniquelyReferenced_nonNull_native();
      v43 = v1[47];
      sub_1E3CCCF80();
      v1[47] = v43;
    }

    else
    {
      sub_1E3CCCDDC(v5);
    }

    swift_endAccess();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CCA1FC()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1096))();
  v4 = 0;
  v5 = *(v3 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  while (v5 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (!*(v3 + 8 * v4 + 32))
    {
      v32 = 0u;
      v33 = 0u;
      goto LABEL_13;
    }

    v31 = 0;
    OUTLINED_FUNCTION_8();
    v7 = *(v6 + 776);

    v7(&v32, &v31, &unk_1F5D5D7F8, &off_1F5D5C8F8);

    if (*(&v33 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v8 = v34[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = OUTLINED_FUNCTION_27();
        v30 = sub_1E3997AA8(v11, v12, v13, v14);
      }

      v10 = *(v30 + 2);
      v9 = *(v30 + 3);
      if (v10 >= v9 >> 1)
      {
        v15 = OUTLINED_FUNCTION_35(v9);
        v30 = sub_1E3997AA8(v15, v10 + 1, 1, v30);
      }

      ++v4;
      *(v30 + 2) = v10 + 1;
      *&v30[8 * v10 + 32] = v8;
    }

    else
    {
LABEL_13:
      sub_1E329505C(&v32);
LABEL_14:
      ++v4;
    }
  }

  if (qword_1EE2A5B50 == -1)
  {
    goto LABEL_16;
  }

LABEL_23:
  OUTLINED_FUNCTION_0_210();
LABEL_16:
  v16 = sub_1E41FFCB4();
  __swift_project_value_buffer(v16, qword_1EE2AB1A8);

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = v1[3];
    if (v20)
    {
      v21 = v1[2];
      v22 = MEMORY[0x1E69E6158];
    }

    else
    {
      v21 = 0;
      v22 = 0;
      *&v33 = 0;
    }

    *&v32 = v21;
    *(&v32 + 1) = v20;
    *(&v33 + 1) = v22;

    v23 = sub_1E3294FA4(&v32);
    v25 = sub_1E3270FC8(v23, v24, v34);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v26 = MEMORY[0x1E6910C30](v30, MEMORY[0x1E69E6530]);
    v28 = sub_1E3270FC8(v26, v27, v34);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_1E323F000, v17, v18, "EpisodeCollection:: %s: fetch to update initial episodes at %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(*v1 + 1280))(v30);
}

uint64_t sub_1E3CCA588()
{
  result = OUTLINED_FUNCTION_14_0();
  *(v0 + 288) = 0;
  *(v0 + 296) = 1;
  return result;
}

uint64_t sub_1E3CCA5C0()
{
  OUTLINED_FUNCTION_8();
  if (!(*(v0 + 1000))())
  {
    v4 = 0u;
    v5 = 0u;
    goto LABEL_6;
  }

  v3 = 4;
  OUTLINED_FUNCTION_26_0();
  (*(v1 + 776))(&v4, &v3, &unk_1F5D5D7F8, &off_1F5D5C8F8);

  if (!*(&v5 + 1))
  {
LABEL_6:
    sub_1E329505C(&v4);
    return 0;
  }

  result = OUTLINED_FUNCTION_8_17();
  if (result)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1E3CCA6A4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1E3CCA7CC(a3);
  OUTLINED_FUNCTION_3_0();
  v6[38] = v12;

  OUTLINED_FUNCTION_3_0();
  v6[31] = a2;

  OUTLINED_FUNCTION_3_0();
  v6[33] = a1;

  OUTLINED_FUNCTION_3_0();
  v6[34] = a4;

  OUTLINED_FUNCTION_3_0();
  v6[32] = a5;

  OUTLINED_FUNCTION_3_0();
  v6[35] = a6;
}

uint64_t sub_1E3CCA7CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    result = sub_1E4207574();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v4, a1);
        }

        else
        {
        }

        ++v4;
        type metadata accessor for ViewModel();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28);
        swift_dynamicCast();
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v2 != v4);
      return v5;
    }
  }

  return result;
}

uint64_t sub_1E3CCA914(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_5_0();
  v6 = *(a1 + 16);
  if (v6)
  {
    OUTLINED_FUNCTION_8();
    v8 = *(v7 + 1096);

    v10 = *(v8(v9) + 16);

    result = sub_1E32AE9B0(v6);
    if (__OFADD__(a2, result))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      if (v10 >= a2 + result)
      {
        v21 = a1;
        result = sub_1E32AE9B0(v6);
        v11 = result;
        v12 = 0;
        v13 = 8 * a2 + 32;
        while (v11 != v12)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1E6911E60](v12, v6);
          }

          else
          {
            if (v12 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v14 = *(v6 + 8 * v12 + 32);
          }

          OUTLINED_FUNCTION_11_3();
          v15 = *(v2 + 304);

          result = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 304) = v15;
          if (result)
          {
            if (a2 < 0)
            {
              goto LABEL_15;
            }
          }

          else
          {
            result = sub_1E392937C();
            v15 = result;
            *(v2 + 304) = result;
            if (a2 < 0)
            {
LABEL_15:
              __break(1u);
              break;
            }
          }

          if (a2 + v12 >= *(v15 + 16))
          {
            goto LABEL_23;
          }

          *(v15 + v13) = v14;
          *(v2 + 304) = v15;
          swift_endAccess();

          v13 += 8;
          ++v12;
        }

        OUTLINED_FUNCTION_5_0();
        v16 = *(v21 + 24);
        if (v16)
        {
          OUTLINED_FUNCTION_3_0();
          *(v2 + 264) = v16;
        }

        OUTLINED_FUNCTION_8();
        if ((*(v17 + 1120))())
        {
          v19 = v18;
          ObjectType = swift_getObjectType();
          (*(v19 + 8))(v2, v6, a2, ObjectType, v19);

          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E3CCABA8()
{

  sub_1E32AF6F8(v0 + 344);
}

uint64_t sub_1E3CCAC38()
{
  v0 = ViewModel.deinit();

  sub_1E32AF6F8(v0 + 344);

  return v0;
}

uint64_t sub_1E3CCACD0()
{
  v0 = sub_1E3CCAC38();

  return MEMORY[0x1EEE6BDC0](v0, 400, 7);
}

uint64_t sub_1E3CCAD00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 1048))();
  if (!v5)
  {
    return 0;
  }

  v6 = sub_1E3893E78(a1, a2, v5);
  v8 = v7;

  if (v8)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1E3CCAD88(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1024))();
  if (v3 && (v12 = v3, v8 = a1, v9 = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420), sub_1E3827828(&qword_1EE23B500, &qword_1ECF2C420), sub_1E38D2054(&v8, &v10), , (v4 = v11) != 0))
  {
    v5 = v10;
  }

  else
  {

    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = sub_1E3CCAD00(v5, v4);

  return v6;
}

void *sub_1E3CCAE90(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  OUTLINED_FUNCTION_8();
  if (!(*(v12 + 648))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {

    sub_1E3EA5220(a1, a2, a3 & 1, a4, a5, v32);
    type metadata accessor for EpisodeCollectionServiceRequestContext();
    v14 = Strong;
    v15 = sub_1E3EA54CC(Strong, v32);
    v16 = *(*v15 + 160);

    v16(v17);
    v18 = *(*v15 + 184);

    v20 = v18(v19);
    if ((*(*v6 + 1000))(v20))
    {
      OUTLINED_FUNCTION_26_0();
      v22 = (*(v21 + 488))();
      if (v22)
      {
        v23 = sub_1E373E010(4, v22);

        if (v23)
        {
          if (*v23 == _TtC8VideosUI13TextViewModel)
          {
            v24 = sub_1E3C27024();
            if (v25)
            {
              v26 = v24;
              v27 = v25;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1E4297BE0;
              v29 = v6[42];
              *(inited + 32) = v6[41];
              *(inited + 40) = v29;
              *(inited + 72) = MEMORY[0x1E69E6158];
              *(inited + 48) = v26;
              *(inited + 56) = v27;

              v30 = sub_1E4205CB4();
              (*(*v15 + 208))(v30);
            }
          }
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DF8);
    Strong = sub_1E37B2BA8();
  }

  return Strong;
}

uint64_t sub_1E3CCB1A0()
{
  if (*(v0 + 392))
  {
    v2[3] = &type metadata for ViewModelKeys;
    v2[4] = &off_1F5D7BCA8;
    LOBYTE(v2[0]) = 7;

    sub_1E3F9F164(v2);

    if (v4)
    {
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_1(v2);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v2);
      sub_1E329505C(v3);
    }
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3CCB2F4()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1168))();
  if (v1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

uint64_t sub_1E3CCB3A4()
{
  OUTLINED_FUNCTION_8();
  v1 = *((*(v0 + 1096))() + 16);

  return v1;
}

uint64_t sub_1E3CCB428(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v7[1] = (*(v2 + 1168))();
  v5 = a1;
  v6 = 0;
  v3 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  sub_1E3827828(&qword_1ECF36E00, &qword_1ECF3BE00);
  sub_1E38D2054(&v5, v7);

  if (v7[0])
  {
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3CCB580(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 1024))();
  if (result)
  {
    v4 = result;
    v5 = sub_1E3CCAD88(a1);
    v6 = *(v4 + 16);

    if (v6 - 1 == a1)
    {
      OUTLINED_FUNCTION_8();
      v8 = *((*(v7 + 1096))() + 16);

      result = v8 - v5;
      if (!__OFSUB__(v8, v5))
      {
        return result;
      }

      __break(1u);
    }

    result = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      v9 = sub_1E3CCAD88(result);
      v10 = __OFSUB__(v9, v5);
      result = v9 - v5;
      if (!v10)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E3CCB698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1E3CCB910();
  v7 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    goto LABEL_27;
  }

  v8 = result;
  v9 = a1;
  if ((result & 1) == 0 || (v9 = v7 - 1, !__OFSUB__(v7, 1)))
  {
    for (i = MEMORY[0x1E69E7CC0]; ; i = v24)
    {
      v11 = v9 < v7;
      if (v8)
      {
        v11 = v9 >= a1;
      }

      if (!v11)
      {
        return i;
      }

      v23 = (*(*v3 + 1096))();
      v20 = v9;
      v21 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFF8);
      sub_1E3827828(&qword_1ECF36E08, &qword_1ECF2FFF8);
      sub_1E38D2054(&v20, &v22);

      v13 = v22;
      if (v22 < 2)
      {
        return i;
      }

      result = (*(*v22 + 552))(v12);
      if (!result)
      {
        goto LABEL_14;
      }

      v14 = result;
      if (*(result + 16))
      {
        v15 = sub_1E327D33C(v3[39], v3[40]);
        if (v16)
        {
          break;
        }
      }

      if (v8)
      {
LABEL_15:
        v17 = __OFSUB__(v9--, 1);
        if (v17)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }

LABEL_19:
      v17 = __OFADD__(v9++, 1);
      if (v17)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_20:

      MEMORY[0x1E6910BF0](v18);
      v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19 >> 1)
      {
        OUTLINED_FUNCTION_35(v19);
        sub_1E42062F4();
      }

      sub_1E4206324();
      sub_1E3781D80(v13);
    }

    sub_1E328438C(*(v14 + 56) + 32 * v15, &v20);

    result = swift_dynamicCast();
    if (result & 1) != 0 && (v23)
    {
      sub_1E3781D80(v13);
      return i;
    }

LABEL_14:
    if (v8)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E3CCB910()
{
  v2 = 5;
  OUTLINED_FUNCTION_8();
  (*(v0 + 776))(v3, &v2, &unk_1F5D5D7F8, &off_1F5D5C8F8);
  if (v3[3])
  {
    result = OUTLINED_FUNCTION_8_17();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_1E329505C(v3);
    return 0;
  }

  return result;
}

char *sub_1E3CCB9AC(uint64_t a1)
{
  v3 = sub_1E3CCAD88(a1);
  if ((sub_1E3CCB910() & 1) == 0)
  {
    return v3;
  }

  v4 = sub_1E3CCBA20(a1);
  result = [v1 episodeCountForSeasonIndex_];
  v6 = &result[-v4];
  if (__OFSUB__(result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = __OFADD__(v3, v6);
    v3 += v6;
    if (!v7)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3CCBA20(uint64_t a1)
{
  v2 = [v1 episodeCountForSeasonIndex_];
  if (sub_1E3CCB910())
  {
    OUTLINED_FUNCTION_5_0();
    if (qword_1ECF36DF0 < v2)
    {
      return qword_1ECF36DF0;
    }
  }

  return v2;
}

id sub_1E3CCBA88()
{
  OUTLINED_FUNCTION_8();
  if (!(*(v0 + 552))())
  {
    v18 = 0u;
    v19 = 0u;
    goto LABEL_10;
  }

  v17[3] = &unk_1F5D7BE68;
  v17[4] = &off_1F5D7BC48;
  LOBYTE(v17[0]) = 6;
  sub_1E3F9F164(v17);

  __swift_destroy_boxed_opaque_existential_1(v17);
  if (!*(&v19 + 1))
  {
LABEL_10:
    sub_1E329505C(&v18);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = sub_1E3744600(v17[0]);

  v2 = objc_allocWithZone(VUIContentMetadata);
  v3 = sub_1E37AD294(v1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_1E39A4DDC(v3, &selRef_ratingSystem);
  v7 = v6;
  if (v6)
  {
    v8 = v5;
    v9 = [v4 ratingValue];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1E39A4DDC(v4, &selRef_ratingName);
      v13 = v12;
      v14 = [v10 unsignedIntegerValue];
      v15 = objc_allocWithZone(MEMORY[0x1E69DF6B8]);
      v7 = sub_1E3A294D4(v8, v7, v11, v13, v14, 0, 0);

      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:

  return v7;
}

uint64_t sub_1E3CCBC80()
{
  LOBYTE(v4) = 2;
  OUTLINED_FUNCTION_26_0();
  (*(v0 + 776))(v5, &v4, &unk_1F5D5D6D8, &off_1F5D5C8B8);
  if (!v5[3])
  {
    sub_1E329505C(v5);
LABEL_6:
    v2 = 0;
    return v2 & 1;
  }

  if ((OUTLINED_FUNCTION_8_17() & 1) == 0)
  {
    goto LABEL_6;
  }

  v1 = sub_1E3BE9884();
  if (v1 == 3)
  {
    goto LABEL_6;
  }

  v2 = sub_1E3BE9944(v1, 1);
  return v2 & 1;
}

uint64_t sub_1E3CCBD44(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28);
      v4 = sub_1E4206314();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

void sub_1E3CCBDDC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v75 = v3;
  v76 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v70[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70[-v16];
  v18 = *v5;
  if (*(v5 + 17))
  {
    v19 = *(v5 + 8);
    v20 = *(v5 + 16);
    v74 = v20;
    if (v20 == 2)
    {
      sub_1E3781FA4(v18, v19, 2u, 1);
      v21 = OUTLINED_FUNCTION_4_166();
      sub_1E3781F8C(v21, v22, v23);
      sub_1E324FBDC();
      OUTLINED_FUNCTION_6_30();
      v24(v11);
      v25 = OUTLINED_FUNCTION_4_166();
      sub_1E3781F8C(v25, v26, v27);
      v28 = sub_1E41FFC94();
      v29 = sub_1E42067F4();
      v30 = OUTLINED_FUNCTION_4_166();
      sub_1E37D172C(v30, v31, v32, 1);
      if (os_log_type_enabled(v28, v29))
      {
        v33 = swift_slowAlloc();
        v72 = v28;
        v34 = v33;
        v35 = OUTLINED_FUNCTION_100();
        v73 = v1;
        v36 = v35;
        v79[0] = v35;
        *v34 = 136315138;
        v37 = sub_1E3270FC8(v18, v19, v79);
        v38 = OUTLINED_FUNCTION_4_166();
        sub_1E37D172C(v38, v39, v40, 1);
        *(v34 + 4) = v37;
        v41 = v29;
        v42 = v72;
        _os_log_impl(&dword_1E323F000, v72, v41, "EpisodeCollection::Received empty items from fragment request: [%s]", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
        v64 = OUTLINED_FUNCTION_4_166();
        sub_1E37D172C(v64, v65, v66, 1);
      }

      (*(v8 + 8))(v11, v6);
    }

    else
    {
      sub_1E3781FA4(v18, v19, v20, 1);
      v72 = v19;
      v77 = sub_1E3F6FB3C(v18, v19, v20);
      v78 = v51;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
      sub_1E4148C68(sub_1E37BCD7C, v52, v79);

      v54 = v79[0];
      v53 = v79[1];
      sub_1E324FBDC();
      OUTLINED_FUNCTION_6_30();
      v55(v14);

      v56 = sub_1E41FFC94();
      v57 = sub_1E42067F4();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v71 = v57;
        v59 = v58;
        v60 = OUTLINED_FUNCTION_100();
        v73 = v1;
        v61 = v54;
        v62 = v60;
        v79[0] = v60;
        *v59 = 136315138;
        v63 = sub_1E3270FC8(v61, v53, v79);

        *(v59 + 4) = v63;
        _os_log_impl(&dword_1E323F000, v56, v71, "EpisodeCollection::Received error [%s]", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v8 + 8))(v14, v6);
      v19 = v72;
    }

    v67 = v75;
    if (v75)
    {
      sub_1E3781F38();
      v68 = swift_allocError();
      *v69 = v18;
      *(v69 + 8) = v19;
      *(v69 + 16) = v74;

      v67(v68, 1);

      v50 = v67;
LABEL_22:
      sub_1E34AF594(v50);
      goto LABEL_24;
    }

    sub_1E37D172C(v18, v19, v74, 1);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_6_30();
    v43(v17);
    v44 = sub_1E41FFC94();
    v45 = sub_1E42067E4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1E323F000, v44, v45, "Received success response", v46, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v8 + 8))(v17, v6);
    OUTLINED_FUNCTION_5_0();
    if (swift_weakLoadStrong())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v47 + 1320))(v18, v76);
    }

    v48 = v75;
    if (v75)
    {
      OUTLINED_FUNCTION_5_0();
      if (*(v18 + 16))
      {
        v49 = *(v18 + 16);
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
      }

      sub_1E34AF604(v48);

      v48(v49, 0);

      v50 = v48;
      goto LABEL_22;
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_5_0();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_11_3();
    sub_1E3CCCEA8(v76);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_5_0();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_11_3();
    sub_1E3CCCDDC(v76);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CCC418(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v31 = a3;
  v7 = *(a1 + 16);
  v8 = (a1 + 32);
  v9 = MEMORY[0x1E69E6158];
  if (!v7)
  {
LABEL_33:
  }

  while (1)
  {
    v10 = *v8;

    if (*(v10 + 16))
    {
      v11 = sub_1E327D33C(25705, 0xE200000000000000);
      if (v12)
      {
        sub_1E328438C(*(v10 + 56) + 32 * v11, &v29);
        if (swift_dynamicCast())
        {
          v13 = v9;
          sub_1E384EE08(23);
          sub_1E3277E60(v14, v15, v10, &v29);

          if (v30)
          {
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_25;
            }

            sub_1E3277E60(0x6C746954776F6873, 0xE900000000000065, v10, &v29);
            if (v30)
            {
              if ((swift_dynamicCast() & 1) == 0)
              {

LABEL_23:

                goto LABEL_24;
              }

              sub_1E3277E60(0x7865646E69, 0xE500000000000000, v10, &v29);
              if (v30)
              {
                if (swift_dynamicCast())
                {
                  [a2 episodeCountForSeasonIndex_];
                  type metadata accessor for SeasonMetadata();
                  v16 = v31;
                  v17 = sub_1E3AA7D30();
                  sub_1E384EE08(39);
                  sub_1E3277E60(v18, v19, v10, &v29);

                  if (v30)
                  {
                    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
                    v21 = swift_dynamicCast();
                    if (v21)
                    {
                      sub_1E384EE08(39);
                      v30 = v20;
                      *&v29 = v28;
                      v24 = sub_1E3A7CD30(v22, v23, &v29, 0);

                      __swift_destroy_boxed_opaque_existential_1(&v29);
                      if (v24)
                      {
                        type metadata accessor for ImageViewModel();
                        v25 = swift_dynamicCastClass();
                        if (v25)
                        {
                        }
                      }

                      else
                      {
                        v25 = 0;
                      }

                      (*(*v17 + 176))(v25);
                    }
                  }

                  else
                  {
                    v21 = sub_1E329505C(&v29);
                  }

                  MEMORY[0x1E6910BF0](v21);
                  sub_1E38C5A18(*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10));
                  sub_1E4206324();
                  goto LABEL_24;
                }

                goto LABEL_23;
              }
            }

            else
            {
            }
          }

          sub_1E329505C(&v29);
LABEL_24:
          v9 = v13;
        }
      }
    }

LABEL_25:
    if (v5)
    {
      break;
    }

    ++v8;
    if (!--v7)
    {
      goto LABEL_33;
    }
  }
}

uint64_t sub_1E3CCC8A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (a4)
  {
    a4(0);
  }

  return 1;
}

uint64_t sub_1E3CCC8E0()
{
  OUTLINED_FUNCTION_15_0();
  v3 = *(v0 + 368) + 64;
  OUTLINED_FUNCTION_4_4();
  result = OUTLINED_FUNCTION_23_66();
  v5 = 0;
  if (v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v6 >= v1)
    {
    }

    v2 = *(v3 + 8 * v6);
    ++v5;
    if (v2)
    {
      v5 = v6;
      do
      {
LABEL_7:
        v2 &= v2 - 1;
        OUTLINED_FUNCTION_8();
        v8 = *(v7 + 360);

        v8(v9);
      }

      while (v2);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3CCC9D8()
{
  OUTLINED_FUNCTION_15_0();
  v3 = *(v0 + 368) + 64;
  OUTLINED_FUNCTION_4_4();
  result = OUTLINED_FUNCTION_23_66();
  v5 = 0;
  if (v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v6 >= v1)
    {
    }

    v2 = *(v3 + 8 * v6);
    ++v5;
    if (v2)
    {
      v5 = v6;
      do
      {
LABEL_7:
        v2 &= v2 - 1;
        OUTLINED_FUNCTION_8();
        v8 = *(v7 + 368);

        v8(v9);
      }

      while (v2);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3CCCAD0()
{
  OUTLINED_FUNCTION_5_0();
  v1 = *(v0 + 368) + 64;
  OUTLINED_FUNCTION_4_4();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  v8 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      OUTLINED_FUNCTION_11_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E10);
      sub_1E4205D14();
      return swift_endAccess();
    }

    v4 = *(v1 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      do
      {
LABEL_7:
        v4 &= v4 - 1;
        OUTLINED_FUNCTION_8();
        v11 = *(v10 + 376);

        v11(v12);
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

char *sub_1E3CCCCD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3CCCDDC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3928950(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E20);
  sub_1E4207644();
  v6 = *(*(v8 + 56) + 8 * v5);
  sub_1E42004F4();
  sub_1E4207664();
  *v2 = v8;
  return v6;
}

uint64_t sub_1E3CCCEA8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3928950(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E18);
  sub_1E4207644();
  v6 = *(*(v8 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DF8);
  sub_1E4207664();
  *v2 = v8;
  return v6;
}

void sub_1E3CCCF80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = sub_1E3928950(v4);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E3928950(v5);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v3;
  if (v12)
  {
    *(v15[7] + 8 * v11) = v7;
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E38CF6BC(v11, v5, v7, v15);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3CCD0F0(_WORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, double a9, double a10, double a11, double a12)
{
  v44 = a8;
  v45 = a6;
  v46 = a7;
  v42 = a5;
  v40 = a4;
  v43 = a3;
  v41 = a2;
  v47 = type metadata accessor for UnifiedOverlay();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E38);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v39 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v39 - v25;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E48);
  OUTLINED_FUNCTION_2();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v39 - v29;
  if ((*(*a1 + 392))(v28))
  {
    v39[1] = v23;
    type metadata accessor for UnifiedOverlayLayout();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = v31;
      LOBYTE(v49) = 0;
      (*(*a1 + 776))(v52, &v49, &unk_1F5D5E068, &off_1F5D5CAD8);
      if (v52[3])
      {
        if ((swift_dynamicCast() & 1) != 0 && sub_1E3ACAAF4() != 4)
        {
          (*(*v32 + 1800))();
        }
      }

      else
      {

        sub_1E325F6F0(v52, &unk_1ECF296E0);
      }

      goto LABEL_11;
    }
  }

  LOWORD(v52[0]) = a1[49];
  LOWORD(v49) = 164;
  sub_1E3741534();
  sub_1E4205E84();
  if (a1[49] - 154 > 0xB)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (((1 << (a1[49] + 102)) & 0x85F) != 0)
  {

    v33 = v45;

    v34 = v46;

    sub_1E3DD6178(a1, v41, v43, v40 & 1, v42 & 1, v33, v34, v44 & 1, v19, a9, a10, a11, a12);
    sub_1E3CCD920(v19, v22);
    swift_storeEnumTagMultiPayload();
    sub_1E3CCD83C();
    sub_1E4201F44();
    sub_1E3CCD984(v26, v30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E58);
    sub_1E3CCD7B0();
    sub_1E3CCD894();
    OUTLINED_FUNCTION_1_193();
    sub_1E325F6F0(v26, &qword_1ECF36E40);
    return sub_1E3CCD9F4(v19);
  }

  if (((1 << (a1[49] + 102)) & 0x1A0) != 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3CCD83C();
    sub_1E4201F44();
    sub_1E3CCD984(v26, v30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E58);
    sub_1E3CCD7B0();
    sub_1E3CCD894();
    OUTLINED_FUNCTION_1_193();
    return sub_1E325F6F0(v26, &qword_1ECF36E40);
  }

  if (a1[49] == 164)
  {

    sub_1E3C8DB28();

    v49 = nullsub_1(v36, v37);
    v50 = v38;
    v51 = 0;
    sub_1E3CCD75C();

    sub_1E4201F44();
    OUTLINED_FUNCTION_2_164();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E58);
    sub_1E3CCD7B0();
    sub_1E3CCD894();
    sub_1E4201F44();
  }

  else
  {
LABEL_18:
    v49 = 0;
    v50 = 0;
    v51 = 1;
    sub_1E3CCD75C();
    sub_1E4201F44();
    OUTLINED_FUNCTION_2_164();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E58);
    sub_1E3CCD7B0();
    sub_1E3CCD894();
    return OUTLINED_FUNCTION_1_193();
  }
}

unint64_t sub_1E3CCD75C()
{
  result = qword_1ECF36E50;
  if (!qword_1ECF36E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E50);
  }

  return result;
}

unint64_t sub_1E3CCD7B0()
{
  result = qword_1ECF36E60;
  if (!qword_1ECF36E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36E40);
    sub_1E3CCD83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E60);
  }

  return result;
}

unint64_t sub_1E3CCD83C()
{
  result = qword_1ECF36E68;
  if (!qword_1ECF36E68)
  {
    type metadata accessor for UnifiedOverlay();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E68);
  }

  return result;
}

unint64_t sub_1E3CCD894()
{
  result = qword_1ECF36E70;
  if (!qword_1ECF36E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36E58);
    sub_1E3CCD75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E70);
  }

  return result;
}

uint64_t sub_1E3CCD920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedOverlay();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CCD984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CCD9F4(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedOverlay();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3CCDA60()
{
  result = qword_1ECF36E78;
  if (!qword_1ECF36E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36E80);
    sub_1E3CCD7B0();
    sub_1E3CCD894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E78);
  }

  return result;
}

uint64_t sub_1E3CCDB20()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  v1 = sub_1E3C2F9A0();

  sub_1E3CCDB74();

  return v1;
}

uint64_t sub_1E3CCDB74()
{
  v1 = sub_1E3CCDBE0();
  v2 = (*(*v0 + 1696))(v1);
  sub_1E3C37CBC(v2, 6);
}

uint64_t sub_1E3CCDBE0()
{
  v1 = (*v0 + 1696);
  v2 = *v1;
  v3 = (*v1)();
  v4 = *sub_1E3E5FDEC();
  v5 = *(*v3 + 680);
  v6 = v4;
  v5(v4);

  (v2)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1696))(21);

  (v2)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1984))(1);

  (v2)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 256))(0x4088600000000000, 0);

  v14 = (v2)(v13);
  sub_1E3952C58();
  v22[0] = v15;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  v23 = 0;
  (*(*v14 + 160))(v22);

  (v2)(v19);
  OUTLINED_FUNCTION_2_1();
  (*(v20 + 2272))(1);
}

uint64_t sub_1E3CCDE78()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3CCDEC4(char a1)
{
  result = 0x65676E6962;
  switch(a1)
  {
    case 1:
      result = 0x7265766F63736964;
      break;
    case 2:
      result = 0x6C6C65737075;
      break;
    case 3:
      result = 0x79636167656CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3CCDF44()
{
  sub_1E4207B44();
  sub_1E3CCDF94();
  return sub_1E4207BA4();
}

uint64_t sub_1E3CCDF94()
{
  sub_1E4206014();
}

uint64_t sub_1E3CCE048()
{
  sub_1E4207B44();
  sub_1E3CCDF94();
  return sub_1E4207BA4();
}

uint64_t sub_1E3CCE08C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3CCDE78();
  *a1 = result;
  return result;
}

uint64_t sub_1E3CCE0BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3CCDEC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3CCE0F4(unsigned __int8 a1, char a2)
{
  v2 = 0x65676E6962;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x65676E6962;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x7265766F63736964;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C6C65737075;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x79636167656CLL;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x7265766F63736964;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C6C65737075;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x79636167656CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3CCE274(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 4u:
      return a2 == 4;
    case 5u:
      return a2 == 5;
    case 6u:
      return a2 == 6;
    case 7u:
      return a2 == 7;
    case 8u:
      return a2 == 8;
    case 9u:
      return a2 == 9;
    case 0xAu:
      return a2 == 10;
    default:
      if (a2 - 4 < 7)
      {
        return 0;
      }

      v2 = 0x65676E6962;
      v3 = 0xE500000000000000;
      v4 = a1;
      v5 = 0x65676E6962;
      switch(v4)
      {
        case 1:
          v3 = 0xE800000000000000;
          v5 = 0x7265766F63736964;
          break;
        case 2:
          v3 = 0xE600000000000000;
          v5 = 0x6C6C65737075;
          break;
        case 3:
          v3 = 0xE600000000000000;
          v5 = 0x79636167656CLL;
          break;
        default:
          break;
      }

      v7 = 0xE500000000000000;
      switch(a2)
      {
        case 1u:
          v7 = 0xE800000000000000;
          v2 = 0x7265766F63736964;
          break;
        case 2u:
          v7 = 0xE600000000000000;
          v2 = 0x6C6C65737075;
          break;
        case 3u:
          v7 = 0xE600000000000000;
          v2 = 0x79636167656CLL;
          break;
        default:
          break;
      }

      if (v5 == v2 && v3 == v7)
      {

        return 1;
      }

      else
      {
        v9 = sub_1E42079A4();

        return v9 & 1;
      }
  }
}

uint64_t sub_1E3CCE488(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 121) = a1;
  return result;
}

uint64_t sub_1E3CCE534(double a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 224) = a1;
  return result;
}

uint64_t sub_1E3CCE5B8()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 240);
  }

  else
  {
    type metadata accessor for MediaShowcasingGradientLayout();
    v1 = sub_1E3D36C8C(*(v0 + 120));
    *(v0 + 240) = v1;
  }

  return v1;
}

uint64_t (*sub_1E3CCE630(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3CCE5B8();
  return sub_1E3CCE678;
}

void *sub_1E3CCE688()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 256);
  v2 = v1;
  return v1;
}

void sub_1E3CCE6C0(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  v3 = *(v1 + 256);
  *(v1 + 256) = a1;
}

double sub_1E3CCE6FC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for UIEdgeInsets();
  sub_1E3C2C6A0();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1E3CCE790(void *a1))(char **a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  *(v3 + 10) = v1;
  type metadata accessor for UIEdgeInsets();
  *(v3 + 11) = v4;
  sub_1E3C2C6A0();
  v5 = v3[72];
  v6 = *(v3 + 56);
  *v3 = *(v3 + 40);
  *(v3 + 1) = v6;
  v3[32] = v5;
  return sub_1E3CCE81C;
}

void sub_1E3CCE81C(char **a1)
{
  v1 = *a1;
  v2 = (*a1)[32];
  v3 = *(*a1 + 1);
  *(v1 + 40) = *v1;
  *(v1 + 56) = v3;
  v1[72] = v2;
  sub_1E3C2CA00();

  free(v1);
}

uint64_t sub_1E3CCE874()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    type metadata accessor for SportsPortableScoreboardViewLayout();
    v1 = sub_1E3EB1B2C();
    OUTLINED_FUNCTION_3_0();
    *(v1 + 136) = 0;
    OUTLINED_FUNCTION_3_0();
    *(v1 + 99) = 0;
    *(v0 + 272) = v1;
  }

  return v1;
}

uint64_t sub_1E3CCE908()
{
  if (*(v0 + 280))
  {
    v1 = *(v0 + 280);
  }

  else
  {
    v2 = v0;
    type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
    v1 = sub_1E392DC54(2);
    v3 = *MEMORY[0x1E69DDC78];
    OUTLINED_FUNCTION_14_0();
    v4 = *(v1 + 128);
    *(v1 + 128) = v3;
    v5 = v3;

    *(v2 + 280) = v1;
  }

  return v1;
}

uint64_t sub_1E3CCE9B0()
{
  if (*(v0 + 304))
  {
    v1 = *(v0 + 304);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout();
    v3 = *(v0 + 296);
    v4 = OUTLINED_FUNCTION_51_1();
    v1 = sub_1E382F55C(3, v3, v4 & 1);
    *(v2 + 304) = v1;
  }

  return v1;
}

uint64_t sub_1E3CCEA2C()
{
  if (*(v0 + 312))
  {
    v1 = *(v0 + 312);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout();
    v3 = *(v0 + 296);
    v4 = OUTLINED_FUNCTION_51_1();
    v1 = sub_1E382F55C(4, v3, v4 & 1);
    *(v2 + 312) = v1;
  }

  return v1;
}

uint64_t sub_1E3CCEAE4(char a1)
{
  *(v1 + 121) = 13;
  type metadata accessor for TextLayout();
  *(v1 + 128) = sub_1E383BCC0();
  *(v1 + 136) = sub_1E383BCC0();
  *(v1 + 144) = sub_1E383BCC0();
  *(v1 + 152) = sub_1E383BCC0();
  *(v1 + 160) = sub_1E383BCC0();
  *(v1 + 168) = sub_1E383BCC0();
  *(v1 + 176) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v1 + 184) = sub_1E3BD61D8();
  *(v1 + 192) = sub_1E3BD61D8();
  type metadata accessor for MediaShowcasingButtonsLayout();
  *(v1 + 200) = sub_1E3EEAD4C();
  type metadata accessor for ButtonLayout();
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = sub_1E3B050E8();
  v5 = j__OUTLINED_FUNCTION_18();
  *(v1 + 208) = sub_1E3BBD964(0, v3 & 1, v4, v5 & 1);
  v6 = j__OUTLINED_FUNCTION_18();
  v7 = sub_1E3B050E8();
  v8 = j__OUTLINED_FUNCTION_18();
  *(v1 + 216) = sub_1E3BBD964(2, v6 & 1, v7, v8 & 1);
  *(v1 + 224) = 0x4046000000000000;
  *(v1 + 232) = sub_1E3BD61D8();
  type metadata accessor for MediaShowcasingScoreboardLayout();
  *(v1 + 288) = OUTLINED_FUNCTION_212();
  *(v1 + 296) = 3;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0;
  v9 = [objc_opt_self() isTV];
  v10 = 8.0;
  if (v9)
  {
    v10 = 18.0;
  }

  *(v1 + 320) = v10;
  *(v1 + 120) = a1;
  switch(a1)
  {
    case 1:
    case 3:
      *(v1 + 104) = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
      v13 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
      goto LABEL_6;
    case 2:
    case 4:
    case 6:
    case 8:
    case 9:
    case 10:
      v11 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
      goto LABEL_5;
    case 5:
      v11 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
      goto LABEL_5;
    case 7:
      v11 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
      goto LABEL_5;
    default:
      v11 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
LABEL_5:
      v12 = v11;
      v13 = 0;
      *(v1 + 104) = v12;
LABEL_6:
      *(v1 + 112) = v13;
      v14 = sub_1E3C2F9A0();

      sub_1E3CCED58();

      return v14;
  }
}

uint64_t sub_1E3CCED58()
{
  v2 = v0;
  switch(*(v0 + 120))
  {
    case 1:
      OUTLINED_FUNCTION_155_5();
      OUTLINED_FUNCTION_37_48();
      *v8548 = 0x407C600000000000;
      OUTLINED_FUNCTION_47_37();
      v1803 = OUTLINED_FUNCTION_118_8();
      sub_1E3C3DE00(v1803);
      OUTLINED_FUNCTION_17_97();
      v1812 = OUTLINED_FUNCTION_1_194(v1804, v1805, v1806, v1807, v1808, v1809, v1810, v1811, v2519, v2727, v2935, v3139, v3345, v3551, v3757, v3965, v4173, v4376, v4584, v4792, v5000, v5208, v5416, v5624, v5831, v6038, v6245, v6452, v6659, v6866, v7069, v7272, v7475, v7678, v7881);
      OUTLINED_FUNCTION_181_1(v1812, v1813);
      v1822 = OUTLINED_FUNCTION_64_20(v1814, v1815, v1816, v1817, v1818, v1819, v1820, v1821, v2669, v2877, v3082, v3288, v3494, v3700, v3907, v4115, v4318, v4526, v4734, v4942, v5150, v5358, v5566, v5773, v5980, v6187, v6394, v6601, v6808, v7013, v7216, v7419, v7622, v7825, v8020);
      memcpy(v1822, v1823, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_0();
      v1825 = *(v1824 + 1600);
      OUTLINED_FUNCTION_6_126(v1826, v1827, v1828, v1829, v1830, v1831, v1832, v1833, v2670, v2878, v3083, v3289, v3495, v3701, v3908, v4116, v4319, v4527, v4735, v4943, v5151, v5359, v5567, v5774, v5981, v6188, v6395, v6602, v6809, v7014, v7217, v7420, v7623, v7826, v8021);
      OUTLINED_FUNCTION_176_4();
      v1825();
      OUTLINED_FUNCTION_101_9();
      OUTLINED_FUNCTION_39_44();
      v1834 = OUTLINED_FUNCTION_150_5();
      v1838 = OUTLINED_FUNCTION_65_18(v1834, v1835, v1836, v1837);
      OUTLINED_FUNCTION_16_93(v1838, v1839, v1840, v1841);
      v1842 = OUTLINED_FUNCTION_150_5();
      OUTLINED_FUNCTION_4_167(v1842, v1843, v1844, v1845);
      type metadata accessor for UIEdgeInsets();
      v1847 = v1846;
      sub_1E3C3DE00(v1846);
      OUTLINED_FUNCTION_12_103();
      sub_1E3C3DE00(v1847);
      OUTLINED_FUNCTION_7_154(v1848, v1849, v1850, v1851, v1852, v1853, v1854, v1855, v2671, v2879, v3084, v3290, v3496, v3702, v3909, v4117, v4320, v4528, v4736, v4944, v5152, v5360, v5568, v5775, v5982, v6189, v6396, v6603, v6810, v7015, v7218, v7421, v7624, v7827, v8022, *&v8072, *&v8089, *&v8106, *&v8123, *&v8140, *&v8157, *&v8174, *&v8191, *&v8208, *&v8225, *&v8242, *&v8259, *&v8276, *&v8293, *&v8310, *&v8327, *&v8344, *&v8361, *&v8378, *&v8395, *&v8412, *&v8429, *&v8446, *&v8463, *&v8480, *&v8497, *&v8514, *&v8531);
      sub_1E3C2FCB8(v1856, v1857);
      v1866 = OUTLINED_FUNCTION_64_20(v1858, v1859, v1860, v1861, v1862, v1863, v1864, v1865, v2672, v2880, v3085, v3291, v3497, v3703, v3910, v4118, v4321, v4529, v4737, v4945, v5153, v5361, v5569, v5776, v5983, v6190, v6397, v6604, v6811, v7016, v7219, v7422, v7625, v7828, v8023);
      memcpy(v1866, v1867, 0xE9uLL);
      v1868 = OUTLINED_FUNCTION_18();
      v1876 = OUTLINED_FUNCTION_15_105(v1868, v1869, v1870, v1871, v1872, v1873, v1874, v1875, v2673, v2881, v3086, v3292, v3498, v3704, v3911, v4119, v4322, v4530, v4738, v4946, v5154, v5362, v5570, v5777, v5984, v6191, v6398, v6605, v6812, v7017, v7220, v7423, v7626, v7829, v8024);
      (v1825)(v1876);
      OUTLINED_FUNCTION_9_2();
      (*(v1877 + 1928))(7);
      v1878 = *(v0 + 128);
      OUTLINED_FUNCTION_36();
      v1879 = OUTLINED_FUNCTION_133();
      v1880(v1879);
      v1881 = sub_1E3E5FD88();
      v1882 = *v1881;
      v1883 = *(*v1878 + 680);
      v1884 = *v1881;
      v1883(v1882);
      OUTLINED_FUNCTION_36();
      (*(v1885 + 2008))(1);
      OUTLINED_FUNCTION_36();
      (*(v1886 + 1984))(1);
      OUTLINED_FUNCTION_36();
      (*(v1887 + 1720))(7);
      OUTLINED_FUNCTION_205(4);
      OUTLINED_FUNCTION_199();
      v1896 = OUTLINED_FUNCTION_1_194(v1888, v1889, v1890, v1891, v1892, v1893, v1894, v1895, v2674, v2882, v3087, v3293, v3499, v3705, v3912, v4120, v4323, v4531, v4739, v4947, v5155, v5363, v5571, v5778, v5985, v6192, v6399, v6606, v6813, v7018, v7221, v7424, v7627, v7830, 10);
      sub_1E3C2FCB8(v1896, v1897);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1906 = OUTLINED_FUNCTION_6_126(v1898, v1899, v1900, v1901, v1902, v1903, v1904, v1905, v2675, v2883, v3088, v3294, v3500, v3706, v3913, v4121, v4324, v4532, v4740, v4948, v5156, v5364, v5572, v5779, v5986, v6193, v6400, v6607, v6814, v7019, v7222, v7425, v7628, v7831, v8025);
      v1907(v1906, 54);
      v1908 = v2[19];
      OUTLINED_FUNCTION_36();
      v1909 = OUTLINED_FUNCTION_133();
      v1910(v1909);
      v1911 = *v1881;
      v1912 = *(*v1908 + 680);
      v1913 = v1911;
      v1912(v1911);
      OUTLINED_FUNCTION_135_3();
      LOBYTE(v8555) = 17;
      v8550[0] = 15;
      v8548[0] = 15;
      sub_1E3C3DE00(&qword_1F5D549D8);
      OUTLINED_FUNCTION_111_7();
      v1922 = OUTLINED_FUNCTION_1_194(v1914, v1915, v1916, v1917, v1918, v1919, v1920, v1921, v2676, v2884, v3089, v3295, v3501, v3707, v3914, v4122, v4325, v4533, v4741, v4949, v5157, v5365, v5573, v5780, v5987, v6194, v6401, v6608, v6815, v7020, v7223, v7426, v7629, v7832, v8026);
      sub_1E3C2FCB8(v1922, v1923);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1925 = *(v1924 + 1600);
      v1934 = OUTLINED_FUNCTION_50_34(v1926, v1927, v1928, v1929, v1930, v1931, v1932, v1933, v2677, v2885, v3090, v3296, v3502, v3708, v3915, v4123, v4326, v4534, v4742, v4950, v5158, v5366, v5574, v5781, v5988, v6195, v6402, v6609, v6816, v7021, v7224, v7427, v7630, v7833, v8027);
      v1925(v1934);
      OUTLINED_FUNCTION_36();
      (*(v1935 + 1792))(4);
      OUTLINED_FUNCTION_36();
      (*(v1936 + 1720))(7);
      OUTLINED_FUNCTION_205(5);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_110();
      sub_1E3C3DE00(&unk_1F5D54CA8);
      OUTLINED_FUNCTION_111_7();
      sub_1E3C3DE00(&unk_1F5D54CA8);
      OUTLINED_FUNCTION_196_0();
      v1945 = OUTLINED_FUNCTION_30_55(v1937, v1938, v1939, v1940, v1941, v1942, v1943, v1944, v2678, v2886, v3091, v3297, v3503, v3709, v3916, v4124, v4327, v4535, v4743, v4951, v5159, v5367, v5575, v5782, v5989, v6196, v6403, v6610, v6817, v7022, v7225, v7428, v7631, v7834, v1);
      sub_1E3C2FCB8(v1945, v1946);
      OUTLINED_FUNCTION_4_14();
      v1947 = OUTLINED_FUNCTION_18();
      v1955 = OUTLINED_FUNCTION_21_74(v1947, v1948, v1949, v1950, v1951, v1952, v1953, v1954, v2679, v2887, v3092, v3298, v3504, v3710, v3917, v4125, v4328, v4536, v4744, v4952, v5160, v5368, v5576, v5783, v5990, v6197, v6404, v6611, v6818, v7023, v7226, v7429, v7632, v7835, v8028);
      (v1925)(v1955, 59);
      OUTLINED_FUNCTION_157_6(MEMORY[0x1E69DDCE0]);
      OUTLINED_FUNCTION_8();
      (*(v1956 + 184))(&v8555);
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_35_44(0x4074000000000000uLL);
      v1957 = OUTLINED_FUNCTION_104_9();
      sub_1E3C3DE00(v1957);
      OUTLINED_FUNCTION_31_51();
      v1966 = OUTLINED_FUNCTION_0_211(v1958, v1959, v1960, v1961, v1962, v1963, v1964, v1965, v2680, v2888, v3093, v3299, v3505, v3711, v3918, v4126, v4329, v4537, v4745, v4953, v5161, v5369, v5577, v5784, v5991, v6198, v6405, v6612, v6819, v7024, v7227, v7430, v7633, v7836, v8029);
      OUTLINED_FUNCTION_159_2(v1966, v1967);
      v1976 = OUTLINED_FUNCTION_64_20(v1968, v1969, v1970, v1971, v1972, v1973, v1974, v1975, v2681, v2889, v3094, v3300, v3506, v3712, v3919, v4127, v4330, v4538, v4746, v4954, v5162, v5370, v5578, v5785, v5992, v6199, v6406, v6613, v6820, v7025, v7228, v7431, v7634, v7837, v8030);
      memcpy(v1976, v1977, 0x59uLL);
      v1978 = OUTLINED_FUNCTION_18();
      v1986 = OUTLINED_FUNCTION_21_74(v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v2682, v2890, v3095, v3301, v3507, v3713, v3920, v4128, v4331, v4539, v4747, v4955, v5163, v5371, v5579, v5786, v5993, v6200, v6407, v6614, v6821, v7026, v7229, v7432, v7635, v7838, v8031);
      (v1925)(v1986, 4);
      sub_1E3952C94();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v1987, v1988, v1989, v1990);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v1991, v1992, v1993, v1994);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_12_103();
      v1995 = sub_1E3C3DE00(v1847);
      OUTLINED_FUNCTION_7_21(v1995, v1996, v1997, v1998, v1999, v2000, v2001, v2002, v2683, v2891, v3096, v3302, v3508, v3714, v3921, v4129, v4332, v4540, v4748, v4956, v5164, v5372, v5580, v5787, v5994, v6201, v6408, v6615, v6822, v7027, v7230, v7433, v7636, v7839, v8032, v8086, v8103, v8120, v8137, v8154, v8171, v8188, v8205, v8222, v8239, v8256, v8273, v8290, v8307, v8324, v8341, v8358, v8375, v8392, v8409, v8426, v8443, v8460, v8477, v8494, v8511, v8528, v8545);
      v2003 = OUTLINED_FUNCTION_177_2();
      v2004 = sub_1E3C3DE00(v2003);
      OUTLINED_FUNCTION_56_27(v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2011, v2684, v2892, v3097, v3303, v3509, v3715, v3922, v4130, v4333, v4541, v4749, v4957, v5165, v5373, v5581, v5788, v5995, v6202, v6409, v6616, v6823);
      v2020 = OUTLINED_FUNCTION_20_14(v2012, v2013, v2014, v2015, v2016, v2017, v2018, v2019, v2685, v2893, v3098, v3304, v3510, v3716, v3923, v4131, v4334, v4542, v4750, v4958, v5166, v5374, v5582, v5789, v5996, v6203, v6410, v6617, v6824, v7028, v7231, v7434, v7637, v7840, v8033);
      sub_1E3C2FCB8(v2020, v2021);
      v2030 = OUTLINED_FUNCTION_64_20(v2022, v2023, v2024, v2025, v2026, v2027, v2028, v2029, v2686, v2894, v3099, v3305, v3511, v3717, v3924, v4132, v4335, v4543, v4751, v4959, v5167, v5375, v5583, v5790, v5997, v6204, v6411, v6618, v6825, v7029, v7232, v7435, v7638, v7841, v8034);
      memcpy(v2030, v2031, 0xE9uLL);
      v2032 = OUTLINED_FUNCTION_18();
      v2040 = OUTLINED_FUNCTION_15_105(v2032, v2033, v2034, v2035, v2036, v2037, v2038, v2039, v2687, v2895, v3100, v3306, v3512, v3718, v3925, v4133, v4336, v4544, v4752, v4960, v5168, v5376, v5584, v5791, v5998, v6205, v6412, v6619, v6826, v7030, v7233, v7436, v7639, v7842, v8035);
      v1925(v2040);
      v2041 = v2[22];
      v2042 = *sub_1E3E5FDEC();
      v2043 = *(*v2041 + 680);
      v2044 = v2042;
      v2043(v2042);
      OUTLINED_FUNCTION_2_33();
      (*(v2045 + 1696))(17);
      OUTLINED_FUNCTION_2_33();
      (*(v2046 + 1720))(7);
      OUTLINED_FUNCTION_2_33();
      v2047 = OUTLINED_FUNCTION_10_7();
      v2048(v2047);
      OUTLINED_FUNCTION_2_33();
      (*(v2049 + 1984))(1);
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_36_44();
      v2050 = OUTLINED_FUNCTION_104_9();
      sub_1E3C3DE00(v2050);
      OUTLINED_FUNCTION_31_51();
      v2059 = OUTLINED_FUNCTION_0_211(v2051, v2052, v2053, v2054, v2055, v2056, v2057, v2058, v2688, v2896, v3101, v3307, v3513, v3719, v3926, v4134, v4337, v4545, v4753, v4961, v5169, v5377, v5585, v5792, v5999, v6206, v6413, v6620, v6827, v7031, v7234, v7437, v7640, v7843, v8036);
      OUTLINED_FUNCTION_159_2(v2059, v2060);
      v2069 = OUTLINED_FUNCTION_64_20(v2061, v2062, v2063, v2064, v2065, v2066, v2067, v2068, v2689, v2897, v3102, v3308, v3514, v3720, v3927, v4135, v4338, v4546, v4754, v4962, v5170, v5378, v5586, v5793, v6000, v6207, v6414, v6621, v6828, v7032, v7235, v7438, v7641, v7844, v8037);
      memcpy(v2069, v2070, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_2_33();
      v2072 = *(v2071 + 1600);
      v2081 = OUTLINED_FUNCTION_32_55(v2073, v2074, v2075, v2076, v2077, v2078, v2079, v2080, v2690, v2898, v3103, v3309, v3515, v3721, v3928, v4136, v4339, v4547, v4755, v4963, v5171, v5379, v5587, v5794, v6001, v6208, v6415, v6622, v6829, v7033, v7236, v7439, v7642, v7845, v8038);
      v2072(v2081);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v2082, v2083, v2084, v2085);
      sub_1E3952C88();
      OUTLINED_FUNCTION_4_167(v2086, v2087, v2088, v2089);
      sub_1E3952C88();
      OUTLINED_FUNCTION_9_113(v2090, v2091, v2092, v2093);
      v2094 = OUTLINED_FUNCTION_94_12();
      sub_1E3C3DE00(v2094);
      OUTLINED_FUNCTION_42_50();
      v2095 = sub_1E3C3DE00(v1847);
      OUTLINED_FUNCTION_48_33(v2095, v2096, v2097, v2098, v2099, v2100, v2101, v2102, v2691, v2899, v3104, v3310, v3516, v3722, v3929, v4137, v4340, v4548, v4756, v4964, v5172, v5380, v5588, v5795, v6002, v6209, v6416, v6623, v6830, v7034, v7237, v7440, v7643, v7846, v8039, v8087, v8104, v8121, v8138, v8155, v8172, v8189, v8206, v8223, v8240, v8257, v8274, v8291, v8308, v8325, v8342, v8359, v8376, v8393, v8410, v8427, v8444, v8461, v8478, v8495, v8512, v8529, v8546);
      v2111 = OUTLINED_FUNCTION_6_138(v2103, v2104, v2105, v2106, v2107, v2108, v2109, v2110, v2692, v2900, v3105, v3311, v3517, v3723, v3930, v4138, v4341, v4549, v4757, v4965, v5173, v5381, v5589, v5796, v6003, v6210, v6417, v6624, v6831, v7035, v7238, v7441, v7644, v7847, v8040);
      OUTLINED_FUNCTION_102_13(v2111, v2112);
      v2121 = OUTLINED_FUNCTION_64_20(v2113, v2114, v2115, v2116, v2117, v2118, v2119, v2120, v2693, v2901, v3106, v3312, v3518, v3724, v3931, v4139, v4342, v4550, v4758, v4966, v5174, v5382, v5590, v5797, v6004, v6211, v6418, v6625, v6832, v7036, v7239, v7442, v7645, v7848, v8041);
      memcpy(v2121, v2122, 0xE9uLL);
      v2123 = OUTLINED_FUNCTION_18();
      v2131 = OUTLINED_FUNCTION_15_105(v2123, v2124, v2125, v2126, v2127, v2128, v2129, v2130, v2694, v2902, v3107, v3313, v3519, v3725, v3932, v4140, v4343, v4551, v4759, v4967, v5175, v5383, v5591, v5798, v6005, v6212, v6419, v6626, v6833, v7037, v7240, v7443, v7646, v7849, v8042);
      v2072(v2131);
      OUTLINED_FUNCTION_9_2();
      v2133 = *(v2132 + 1416);
      v2133();
      OUTLINED_FUNCTION_2_33();
      (*(v2134 + 1424))();
      OUTLINED_FUNCTION_2_33();
      (*(v2135 + 1808))(1);
      OUTLINED_FUNCTION_2_33();
      (*(v2136 + 512))(1);
      OUTLINED_FUNCTION_75_16();
      OUTLINED_FUNCTION_35_44(0x4069000000000000uLL);
      OUTLINED_FUNCTION_86_8(0x4077C00000000000uLL);
      OUTLINED_FUNCTION_189_2();
      OUTLINED_FUNCTION_137_6();
      v2145 = OUTLINED_FUNCTION_0_211(v2137, v2138, v2139, v2140, v2141, v2142, v2143, v2144, v2695, v2903, v3108, v3314, v3520, v3726, v3933, v4141, v4344, v4552, v4760, v4968, v5176, v5384, v5592, v5799, v6006, v6213, v6420, v6627, v6834, v7038, v7241, v7444, v7647, v7850, v8043);
      OUTLINED_FUNCTION_181_1(v2145, v2146);
      v2155 = OUTLINED_FUNCTION_64_20(v2147, v2148, v2149, v2150, v2151, v2152, v2153, v2154, v2696, v2904, v3109, v3315, v3521, v3727, v3934, v4142, v4345, v4553, v4761, v4969, v5177, v5385, v5593, v5800, v6007, v6214, v6421, v6628, v6835, v7039, v7242, v7445, v7648, v7851, v8044);
      memcpy(v2155, v2156, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_2_33();
      v2158 = *(v2157 + 1600);
      v2167 = OUTLINED_FUNCTION_32_55(v2159, v2160, v2161, v2162, v2163, v2164, v2165, v2166, v2697, v2905, v3110, v3316, v3522, v3728, v3935, v4143, v4346, v4554, v4762, v4970, v5178, v5386, v5594, v5801, v6008, v6215, v6422, v6629, v6836, v7040, v7243, v7446, v7649, v7852, v8045);
      v2158(v2167);
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_35_44(0x404E000000000000uLL);
      OUTLINED_FUNCTION_61_22(v2168);
      OUTLINED_FUNCTION_137_6();
      v2177 = OUTLINED_FUNCTION_0_211(v2169, v2170, v2171, v2172, v2173, v2174, v2175, v2176, v2698, v2906, v3111, v3317, v3523, v3729, v3936, v4144, v4347, v4555, v4763, v4971, v5179, v5387, v5595, v5802, v6009, v6216, v6423, v6630, v6837, v7041, v7244, v7447, v7650, v7853, v8046);
      OUTLINED_FUNCTION_181_1(v2177, v2178);
      v2187 = OUTLINED_FUNCTION_64_20(v2179, v2180, v2181, v2182, v2183, v2184, v2185, v2186, v2699, v2907, v3112, v3318, v3524, v3730, v3937, v4145, v4348, v4556, v4764, v4972, v5180, v5388, v5596, v5803, v6010, v6217, v6424, v6631, v6838, v7042, v7245, v7448, v7651, v7854, v8047);
      memcpy(v2187, v2188, 0x59uLL);
      v2189 = OUTLINED_FUNCTION_18();
      v2197 = OUTLINED_FUNCTION_21_74(v2189, v2190, v2191, v2192, v2193, v2194, v2195, v2196, v2700, v2908, v3113, v3319, v3525, v3731, v3938, v4146, v4349, v4557, v4765, v4973, v5181, v5389, v5597, v5804, v6011, v6218, v6425, v6632, v6839, v7043, v7246, v7449, v7652, v7855, v8048);
      (v2158)(v2197, 8);
      sub_1E3952C94();
      OUTLINED_FUNCTION_39_44();
      sub_1E3C3DE00(v1847);
      OUTLINED_FUNCTION_55_5();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_12_103();
      v2198 = sub_1E3C3DE00(v1847);
      OUTLINED_FUNCTION_7_21(v2198, v2199, v2200, v2201, v2202, v2203, v2204, v2205, v2701, v2909, v3114, v3320, v3526, v3732, v3939, v4147, v4350, v4558, v4766, v4974, v5182, v5390, v5598, v5805, v6012, v6219, v6426, v6633, v6840, v7044, v7247, v7450, v7653, v7856, v8049, v8088, v8105, v8122, v8139, v8156, v8173, v8190, v8207, v8224, v8241, v8258, v8275, v8292, v8309, v8326, v8343, v8360, v8377, v8394, v8411, v8428, v8445, v8462, v8479, v8496, v8513, v8530, v8547);
      v2206 = OUTLINED_FUNCTION_177_2();
      v2207 = sub_1E3C3DE00(v2206);
      OUTLINED_FUNCTION_56_27(v2207, v2208, v2209, v2210, v2211, v2212, v2213, v2214, v2702, v2910, v3115, v3321, v3527, v3733, v3940, v4148, v4351, v4559, v4767, v4975, v5183, v5391, v5599, v5806, v6013, v6220, v6427, v6634, v6841);
      sub_1E3C3DE00(v1847);
      LOBYTE(v3941) = v5184;
      sub_1E3C2FCB8(v8548, v8552);
      v2223 = OUTLINED_FUNCTION_64_20(v2215, v2216, v2217, v2218, v2219, v2220, v2221, v2222, v2703, v2911, v4352, v4560, v4768, v4976, v3941, v4149, v4352, v4560, v4768, v4976, v5184, v5392, v5600, v5807, v6014, v6221, v6428, v6635, v6842, v7045, v7248, v7451, v7654, v7857, v8050);
      memcpy(v2223, v2224, 0xE9uLL);
      v2225 = OUTLINED_FUNCTION_18();
      v2233 = OUTLINED_FUNCTION_15_105(v2225, v2226, v2227, v2228, v2229, v2230, v2231, v2232, v2704, v2912, v3116, v3322, v3528, v3734, v3942, v4150, v4353, v4561, v4769, v4977, v5185, v5393, v5601, v5808, v6015, v6222, v6429, v6636, v6843, v7046, v7249, v7452, v7655, v7858, v8051);
      v2234 = (v2158)(v2233);
      (v2133)(v2234);
      OUTLINED_FUNCTION_2_33();
      (*(v2235 + 1424))();
      v2236 = v2[13];
      OUTLINED_FUNCTION_111();
      v2238 = *(v2237 + 200);
      v2239 = v2238();
      v2240 = OUTLINED_FUNCTION_140(v2239);
      if (!_ZF)
      {
        v2240 = 0.0;
      }

      v2241 = [v2236 setMaxWidth_];
      v2242 = v2[14];
      if (v2242)
      {
        v2243 = (v2238)(v2241);
        v2244 = OUTLINED_FUNCTION_140(v2243);
        if (!_ZF)
        {
          v2244 = 0.0;
        }

        [v2242 setMaxWidth_];
      }

      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_35_44(0x4065400000000000uLL);
      OUTLINED_FUNCTION_124_5();
      v2253 = OUTLINED_FUNCTION_0_211(v2245, v2246, v2247, v2248, v2249, v2250, v2251, v2252, v2705, v2913, v3117, v3323, v3529, v3735, v3943, v4151, v4354, v4562, v4770, v4978, v5186, v5394, v5602, v5809, v6016, v6223, v6430, v6637, v6844, v7047, v7250, v7453, v7656, v7859, v8052);
      OUTLINED_FUNCTION_181_1(v2253, v2254);
      v2263 = OUTLINED_FUNCTION_64_20(v2255, v2256, v2257, v2258, v2259, v2260, v2261, v2262, v2706, v2914, v3118, v3324, v3530, v3736, v3944, v4152, v4355, v4563, v4771, v4979, v5187, v5395, v5603, v5810, v6017, v6224, v6431, v6638, v6845, v7048, v7251, v7454, v7657, v7860, v8053);
      memcpy(v2263, v2264, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2266 = *(v2265 + 1600);
      v2275 = OUTLINED_FUNCTION_32_55(v2267, v2268, v2269, v2270, v2271, v2272, v2273, v2274, v2707, v2915, v3119, v3325, v3531, v3737, v3945, v4153, v4356, v4564, v4772, v4980, v5188, v5396, v5604, v5811, v6018, v6225, v6432, v6639, v6846, v7049, v7252, v7455, v7658, v7861, v8054);
      v2266(v2275);
      OUTLINED_FUNCTION_97_12();
      *v8550 = 0x4044000000000000;
      v8550[8] = 0;
      OUTLINED_FUNCTION_206_0();
      OUTLINED_FUNCTION_61_22(0x4056000000000000uLL);
      v2284 = OUTLINED_FUNCTION_0_211(v2276, v2277, v2278, v2279, v2280, v2281, v2282, v2283, v2708, v2916, v3120, v3326, v3532, v3738, v3946, v4154, v4357, v4565, v4773, v4981, v5189, v5397, v5605, v5812, v6019, v6226, v6433, v6640, v6847, v7050, v7253, v7456, v7659, v7862, v8055);
      OUTLINED_FUNCTION_181_1(v2284, v2285);
      v2294 = OUTLINED_FUNCTION_64_20(v2286, v2287, v2288, v2289, v2290, v2291, v2292, v2293, v2709, v2917, v3121, v3327, v3533, v3739, v3947, v4155, v4358, v4566, v4774, v4982, v5190, v5398, v5606, v5813, v6020, v6227, v6434, v6641, v6848, v7051, v7254, v7457, v7660, v7863, v8056);
      memcpy(v2294, v2295, 0x59uLL);
      v2296 = OUTLINED_FUNCTION_18();
      v2304 = OUTLINED_FUNCTION_21_74(v2296, v2297, v2298, v2299, v2300, v2301, v2302, v2303, v2710, v2918, v3122, v3328, v3534, v3740, v3948, v4156, v4359, v4567, v4775, v4983, v5191, v5399, v5607, v5814, v6021, v6228, v6435, v6642, v6849, v7052, v7255, v7458, v7661, v7864, v8057);
      (v2266)(v2304, 8);
      v2305 = [objc_opt_self() whiteColor];
      OUTLINED_FUNCTION_36();
      (*(v2306 + 680))();
      OUTLINED_FUNCTION_36();
      (*(v2307 + 1808))(1);
      OUTLINED_FUNCTION_36();
      (*(v2308 + 512))(1);
      v8552[1] = 0;
      v8552[0] = 0;
      v8553 = xmmword_1E42CA370;
      v8554 = 0;
      OUTLINED_FUNCTION_8();
      (*(v2309 + 160))(v8552);
      sub_1E3CD8738();
      goto LABEL_25;
    case 2:
      OUTLINED_FUNCTION_154_4();
      OUTLINED_FUNCTION_37_48();
      OUTLINED_FUNCTION_166_5();
      *v8548 = v792;
      OUTLINED_FUNCTION_47_37();
      v793 = MEMORY[0x1E69E7DE0];
      v794 = OUTLINED_FUNCTION_94_12();
      sub_1E3C3DE00(v794);
      OUTLINED_FUNCTION_17_97();
      v803 = OUTLINED_FUNCTION_1_194(v795, v796, v797, v798, v799, v800, v801, v802, v2519, v2727, v2935, v3139, v3345, v3551, v3757, v3965, v4173, v4376, v4584, v4792, v5000, v5208, v5416, v5624, v5831, v6038, v6245, v6452, v6659, v6866, v7069, v7272, v7475, v7678, v7881);
      OUTLINED_FUNCTION_178_3(v803, v804);
      v813 = OUTLINED_FUNCTION_64_20(v805, v806, v807, v808, v809, v810, v811, v812, v2585, v2793, v3001, v3205, v3411, v3617, v3823, v4031, v4237, v4442, v4650, v4858, v5066, v5274, v5482, v5690, v5897, v6104, v6311, v6518, v6725, v6932, v7135, v7338, v7541, v7744, v7942);
      memcpy(v813, v814, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_0();
      v816 = *(v815 + 1600);
      v825 = OUTLINED_FUNCTION_46_40(v817, v818, v819, v820, v821, v822, v823, v824, v2586, v2794, v3002, v3206, v3412, v3618, v3824, v4032, v4238, v4443, v4651, v4859, v5067, v5275, v5483, v5691, v5898, v6105, v6312, v6519, v6726, v6933, v7136, v7339, v7542, v7745, v7943);
      v816(v825);
      OUTLINED_FUNCTION_9_2();
      v826 = OUTLINED_FUNCTION_13_12();
      v827(v826);
      OUTLINED_FUNCTION_101_9();
      OUTLINED_FUNCTION_39_44();
      v828 = OUTLINED_FUNCTION_150_5();
      v832 = OUTLINED_FUNCTION_65_18(v828, v829, v830, v831);
      OUTLINED_FUNCTION_16_93(v832, v833, v834, v835);
      v836 = OUTLINED_FUNCTION_150_5();
      OUTLINED_FUNCTION_4_167(v836, v837, v838, v839);
      type metadata accessor for UIEdgeInsets();
      v841 = v840;
      sub_1E3C3DE00(v840);
      OUTLINED_FUNCTION_12_103();
      sub_1E3C3DE00(v841);
      OUTLINED_FUNCTION_7_154(v842, v843, v844, v845, v846, v847, v848, v849, v2587, v2795, v3003, v3207, v3413, v3619, v3825, v4033, v4239, v4444, v4652, v4860, v5068, v5276, v5484, v5692, v5899, v6106, v6313, v6520, v6727, v6934, v7137, v7340, v7543, v7746, v7944, *&v8072, *&v8089, *&v8106, *&v8123, *&v8140, *&v8157, *&v8174, *&v8191, *&v8208, *&v8225, *&v8242, *&v8259, *&v8276, *&v8293, *&v8310, *&v8327, *&v8344, *&v8361, *&v8378, *&v8395, *&v8412, *&v8429, *&v8446, *&v8463, *&v8480, *&v8497, *&v8514, *&v8531);
      sub_1E3C2FCB8(v850, v851);
      v860 = OUTLINED_FUNCTION_64_20(v852, v853, v854, v855, v856, v857, v858, v859, v2588, v2796, v3004, v3208, v3414, v3620, v3826, v4034, v4240, v4445, v4653, v4861, v5069, v5277, v5485, v5693, v5900, v6107, v6314, v6521, v6728, v6935, v7138, v7341, v7544, v7747, v7945);
      memcpy(v860, v861, 0xE9uLL);
      v862 = OUTLINED_FUNCTION_18();
      v870 = OUTLINED_FUNCTION_15_105(v862, v863, v864, v865, v866, v867, v868, v869, v2589, v2797, v3005, v3209, v3415, v3621, v3827, v4035, v4241, v4446, v4654, v4862, v5070, v5278, v5486, v5694, v5901, v6108, v6315, v6522, v6729, v6936, v7139, v7342, v7545, v7748, v7946);
      v816(v870);
      v871 = *(v0 + 128);
      OUTLINED_FUNCTION_36();
      v872 = OUTLINED_FUNCTION_133();
      v873(v872);
      v874 = *sub_1E3E5FD88();
      v875 = *(*v871 + 680);
      v876 = v874;
      v875(v874);
      OUTLINED_FUNCTION_36();
      (*(v877 + 2008))(1);
      OUTLINED_FUNCTION_36();
      (*(v878 + 1984))(5);
      OUTLINED_FUNCTION_36();
      (*(v879 + 1792))(10);
      OUTLINED_FUNCTION_135_3();
      OUTLINED_FUNCTION_205(17);
      v8548[0] = 14;
      sub_1E3C3DE00(&qword_1F5D549D8);
      OUTLINED_FUNCTION_111_7();
      v888 = OUTLINED_FUNCTION_1_194(v880, v881, v882, v883, v884, v885, v886, v887, v2590, v2798, v3006, v3210, v3416, v3622, v3828, v4036, v4242, v4447, v4655, v4863, v5071, v5279, v5487, v5695, v5902, v6109, v6316, v6523, v6730, v6937, v7140, v7343, v7546, v7749, v7947);
      sub_1E3C2FCB8(v888, v889);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v891 = *(v890 + 1600);
      v900 = OUTLINED_FUNCTION_50_34(v892, v893, v894, v895, v896, v897, v898, v899, v2591, v2799, v3007, v3211, v3417, v3623, v3829, v4037, v4243, v4448, v4656, v4864, v5072, v5280, v5488, v5696, v5903, v6110, v6317, v6524, v6731, v6938, v7141, v7344, v7547, v7750, v7948);
      (v891)(v900);
      OUTLINED_FUNCTION_36();
      (*(v901 + 1720))(7);
      sub_1E3952C58();
      v8555 = v902;
      v8556 = v903;
      v8557 = v904;
      v8558 = v905;
      v8559 = 0;
      OUTLINED_FUNCTION_8();
      (*(v906 + 160))(&v8555);
      OUTLINED_FUNCTION_154_4();
      OUTLINED_FUNCTION_36_44();
      v907 = OUTLINED_FUNCTION_99_9();
      sub_1E3C3DE00(v907);
      OUTLINED_FUNCTION_31_51();
      v916 = OUTLINED_FUNCTION_0_211(v908, v909, v910, v911, v912, v913, v914, v915, v2592, v2800, v3008, v3212, v3418, v3624, v3830, v4038, v4244, v4449, v4657, v4865, v5073, v5281, v5489, v5697, v5904, v6111, v6318, v6525, v6732, v6939, v7142, v7345, v7548, v7751, v7949);
      OUTLINED_FUNCTION_184_1(v916, v917);
      v926 = OUTLINED_FUNCTION_64_20(v918, v919, v920, v921, v922, v923, v924, v925, v2593, v2801, v3009, v3213, v3419, v3625, v3831, v4039, v4245, v4450, v4658, v4866, v5074, v5282, v5490, v5698, v5905, v6112, v6319, v6526, v6733, v6940, v7143, v7346, v7549, v7752, v7950);
      memcpy(v926, v927, 0x59uLL);
      v928 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v928, v929, v930, v931, v932, v933, v934, v935, v2594, v2802, v3010, v3214, v3420, v3626, v3832, v4040, v4246, v4451, v4659, v4867, v5075, v5283, v5491, v5699, v5906, v6113, v6320, v6527, v6734, v6941, v7144, v7347, v7550, v7753, v7951);
      OUTLINED_FUNCTION_96_13();
      v891();
      v936 = v2[22];
      v937 = *sub_1E3E5FDEC();
      v938 = *(*v936 + 680);
      v939 = v937;
      v938(v937);
      OUTLINED_FUNCTION_9_2();
      v2595 = *(v940 + 1416);
      v2803 = v940 + 1416;
      v2595();
      OUTLINED_FUNCTION_0_44();
      (*(v941 + 1424))();
      OUTLINED_FUNCTION_0_44();
      (*(v942 + 1720))(7);
      OUTLINED_FUNCTION_0_44();
      v943 = OUTLINED_FUNCTION_10_7();
      v944(v943);
      OUTLINED_FUNCTION_0_44();
      (*(v945 + 1984))(1);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v946, v947, v948, v949);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v950, v951, v952, v953);
      sub_1E3952C88();
      OUTLINED_FUNCTION_9_113(v954, v955, v956, v957);
      sub_1E3952C88();
      OUTLINED_FUNCTION_40_48(v958, v959, v960, v961);
      v962 = OUTLINED_FUNCTION_104_9();
      v963 = sub_1E3C3DE00(v962);
      OUTLINED_FUNCTION_7_21(v963, v964, v965, v966, v967, v968, v969, v970, v2595, v2803, v3011, v3215, v3421, v3627, v3833, v4041, v4247, v4452, v4660, v4868, v5076, v5284, v5492, v5700, v5907, v6114, v6321, v6528, v6735, v6942, v7145, v7348, v7551, v7754, v7952, v8080, v8097, v8114, v8131, v8148, v8165, v8182, v8199, v8216, v8233, v8250, v8267, v8284, v8301, v8318, v8335, v8352, v8369, v8386, v8403, v8420, v8437, v8454, v8471, v8488, v8505, v8522, v8539);
      v979 = OUTLINED_FUNCTION_0_211(v971, v972, v973, v974, v975, v976, v977, v978, v2596, v2804, v3012, v3216, v3422, v3628, v3834, v4042, v4248, v4453, v4661, v4869, v5077, v5285, v5493, v5701, v5908, v6115, v6322, v6529, v6736, v6943, v7146, v7349, v7552, v7755, v7953);
      OUTLINED_FUNCTION_159_2(v979, v980);
      v989 = OUTLINED_FUNCTION_64_20(v981, v982, v983, v984, v985, v986, v987, v988, v2597, v2805, v3013, v3217, v3423, v3629, v3835, v4043, v4249, v4454, v4662, v4870, v5078, v5286, v5494, v5702, v5909, v6116, v6323, v6530, v6737, v6944, v7147, v7350, v7553, v7756, v7954);
      memcpy(v989, v990, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_0_44();
      v992 = *(v991 + 1600);
      v1001 = OUTLINED_FUNCTION_19_88(v993, v994, v995, v996, v997, v998, v999, v1000, v2598, v2806, v3014, v3218, v3424, v3630, v3836, v4044, v4250, v4455, v4663, v4871, v5079, v5287, v5495, v5703, v5910, v6117, v6324, v6531, v6738, v6945, v7148, v7351, v7554, v7757, v7955);
      (v992)(v1001);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v8132) = 1;
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v1002, v1003, v1004, v1005);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v1006, v1007, v1008, v1009);
      sub_1E3952C88();
      OUTLINED_FUNCTION_9_113(v1010, v1011, v1012, v1013);
      v1014 = OUTLINED_FUNCTION_118_8();
      sub_1E3C3DE00(v1014);
      OUTLINED_FUNCTION_42_50();
      v1015 = sub_1E3C3DE00(v841);
      OUTLINED_FUNCTION_48_33(v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1022, v2599, v2807, v3015, v3219, v3425, v3631, v3837, v4045, v4251, v4456, v4664, v4872, v5080, v5288, v5496, v5704, v5911, v6118, v6325, v6532, v6739, v6946, v7149, v7352, v7555, v7758, v7956, v8081, v8098, v8115, v8132, v8149, v8166, v8183, v8200, v8217, v8234, v8251, v8268, v8285, v8302, v8319, v8336, v8353, v8370, v8387, v8404, v8421, v8438, v8455, v8472, v8489, v8506, v8523, v8540);
      v1031 = OUTLINED_FUNCTION_3_160(v1023, v1024, v1025, v1026, v1027, v1028, v1029, v1030, v2600, v2808, v3016, v3220, v3426, v3632, v3838, v4046, v4252, v4457, v4665, v4873, v5081, v5289, v5497, v5705, v5912, v6119, v6326, v6533, v6740, v6947, v7150, v7353, v7556, v7759, v7957);
      sub_1E3C2FCB8(v1031, v1032);
      v1041 = OUTLINED_FUNCTION_64_20(v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v2601, v2809, v3017, v3221, v3427, v3633, v3839, v4047, v4253, v4458, v4666, v4874, v5082, v5290, v5498, v5706, v5913, v6120, v6327, v6534, v6741, v6948, v7151, v7354, v7557, v7760, v7958);
      memcpy(v1041, v1042, 0xE9uLL);
      v1043 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1043, v1044, v1045, v1046, v1047, v1048, v1049, v1050, v2602, v2810, v3018, v3222, v3428, v3634, v3840, v4048, v4254, v4459, v4667, v4875, v5083, v5291, v5499, v5707, v5914, v6121, v6328, v6535, v6742, v6949, v7152, v7355, v7558, v7761, v7959);
      OUTLINED_FUNCTION_130_10();
      v992();
      LOBYTE(v8082) = 1;
      *v8550 = 0x406D000000000000;
      v8550[8] = 0;
      *v8548 = 0x4070800000000000;
      OUTLINED_FUNCTION_47_37();
      v1051 = OUTLINED_FUNCTION_94_12();
      sub_1E3C3DE00(v1051);
      v1052 = OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00(v1052);
      OUTLINED_FUNCTION_26_72();
      v1061 = OUTLINED_FUNCTION_6_138(v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v2603, v2811, v3019, v3223, v3429, v3635, v3841, v4049, v4255, v4460, v4668, v4876, v5084, v5292, v5500, v5708, v5915, v6122, v6329, v6536, v6743, v6950, v7153, v7356, v7559, v7762, 0);
      OUTLINED_FUNCTION_102_13(v1061, v1062);
      v1071 = OUTLINED_FUNCTION_64_20(v1063, v1064, v1065, v1066, v1067, v1068, v1069, v1070, v2604, v2812, v3020, v3224, v3430, v3636, v3842, v4050, v4256, v4461, v4669, v4877, v5085, v5293, v5501, v5709, v5916, v6123, v6330, v6537, v6744, v6951, v7154, v7357, v7560, v7763, v7960);
      memcpy(v1071, v1072, 0x59uLL);
      v1073 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1073, v1074, v1075, v1076, v1077, v1078, v1079, v1080, v2605, v2813, v3021, v3225, v3431, v3637, v3843, v4051, v4257, v4462, v4670, v4878, v5086, v5294, v5502, v5710, v5917, v6124, v6331, v6538, v6745, v6952, v7155, v7358, v7561, v7764, v7961);
      OUTLINED_FUNCTION_96_13();
      v992();
      OUTLINED_FUNCTION_139_8();
      OUTLINED_FUNCTION_166_5();
      OUTLINED_FUNCTION_69_20(v1081);
      OUTLINED_FUNCTION_103_9();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00(v793);
      v1082 = OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00(v1082);
      OUTLINED_FUNCTION_26_72();
      OUTLINED_FUNCTION_180_3();
      OUTLINED_FUNCTION_116_7();
      LOBYTE(v4463) = v1083;
      v1093 = OUTLINED_FUNCTION_10_107(v1084, v1085, v1086, v1087, v1088, v1089, v1090, v1091, v2606, v2814, v3022, v3226, v3432, v3638, v3844, v4052, v1092, v4463, v4671, v4879, v5087, v5295, v5503, v5711, v5918, v6125, v6332, v6539, v6746, v6953, v7156, v7359, v7562, v7765, v7962);
      sub_1E3C2FCB8(v1093, v1094);
      v1103 = OUTLINED_FUNCTION_64_20(v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v2607, v2815, v3023, v3227, v3433, v3639, v3845, v4053, v4258, v4464, v4672, v4880, v5088, v5296, v5504, v5712, v5919, v6126, v6333, v6540, v6747, v6954, v7157, v7360, v7563, v7766, v7963);
      memcpy(v1103, v1104, 0x59uLL);
      v1105 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1105, v1106, v1107, v1108, v1109, v1110, v1111, v1112, v2608, v2816, v3024, v3228, v3434, v3640, v3846, v4054, v4259, v4465, v4673, v4881, v5089, v5297, v5505, v5713, v5920, v6127, v6334, v6541, v6748, v6955, v7158, v7361, v7564, v7767, v7964);
      OUTLINED_FUNCTION_129_8();
      v992();
      OUTLINED_FUNCTION_128_7();
      v1113 = sub_1E3C3DE00(&qword_1F5D549D8);
      v1121 = OUTLINED_FUNCTION_0_211(v1113, v1114, v1115, v1116, v1117, v1118, v1119, v1120, v2609, v2817, v3025, v3229, v3435, v3641, v3847, v4055, v4260, v4466, v4674, v4882, v5090, v5298, v5506, v5714, v5921, v6128, v6335, v6542, v6749, v6956, v7159, v7362, v7565, v7768, v7965);
      sub_1E3C2FCB8(v1121, v1122);
      OUTLINED_FUNCTION_10_100();
      v1123 = OUTLINED_FUNCTION_18();
      v1131 = OUTLINED_FUNCTION_21_74(v1123, v1124, v1125, v1126, v1127, v1128, v1129, v1130, v2610, v2818, v3026, v3230, v3436, v3642, v3848, v4056, v4261, v4467, v4675, v4883, v5091, v5299, v5507, v5715, v5922, v6129, v6336, v6543, v6750, v6957, v7160, v7363, v7566, v7769, v7966);
      (v992)(v1131, 48);
      OUTLINED_FUNCTION_200_1();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_110();
      sub_1E3C3DE00(&qword_1F5D54AF8);
      OUTLINED_FUNCTION_111_7();
      sub_1E3C3DE00(&qword_1F5D54AF8);
      OUTLINED_FUNCTION_196_0();
      v1132 = sub_1E3C3DE00(&qword_1F5D54AF8);
      LOBYTE(v4262) = v5508;
      v1140 = OUTLINED_FUNCTION_10_107(v1132, v1133, v1134, v1135, v1136, v1137, v1138, v1139, v2611, v2819, v3027, v3231, v3437, v3643, v3849, v4057, v4262, v4468, v4676, v4884, v5092, v5300, v5508, v5716, v5923, v6130, v6337, v6544, v6751, v6958, v7161, v7364, v7567, v7770, v7967);
      sub_1E3C2FCB8(v1140, v1141);
      OUTLINED_FUNCTION_10_100();
      v1142 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1142, v1143, v1144, v1145, v1146, v1147, v1148, v1149, v2612, v2820, v3028, v3232, v3438, v3644, v3850, v4058, v4263, v4469, v4677, v4885, v5093, v5301, v5509, v5717, v5924, v6131, v6338, v6545, v6752, v6959, v7162, v7365, v7568, v7771, v7968);
      OUTLINED_FUNCTION_172();
      v992();
      OUTLINED_FUNCTION_2_33();
      (*(v1150 + 1808))(1);
      OUTLINED_FUNCTION_2_33();
      (*(v1151 + 512))(1);
      OUTLINED_FUNCTION_75_16();
      *v8550 = 0x406D000000000000;
      v8550[8] = 0;
      OUTLINED_FUNCTION_78_15(0x406E000000000000uLL);
      OUTLINED_FUNCTION_86_8(0x4070400000000000uLL);
      OUTLINED_FUNCTION_189_2();
      OUTLINED_FUNCTION_137_6();
      v1160 = OUTLINED_FUNCTION_0_211(v1152, v1153, v1154, v1155, v1156, v1157, v1158, v1159, v2613, v2821, v3029, v3233, v3439, v3645, v3851, v4059, v4264, v4470, v4678, v4886, v5094, v5302, v5510, v5718, v5925, v6132, v6339, v6546, v6753, v6960, v7163, v7366, v7569, v7772, v7969);
      OUTLINED_FUNCTION_178_3(v1160, v1161);
      v1170 = OUTLINED_FUNCTION_64_20(v1162, v1163, v1164, v1165, v1166, v1167, v1168, v1169, v2614, v2822, v3030, v3234, v3440, v3646, v3852, v4060, v4265, v4471, v4679, v4887, v5095, v5303, v5511, v5719, v5926, v6133, v6340, v6547, v6754, v6961, v7164, v7367, v7570, v7773, v7970);
      memcpy(v1170, v1171, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_2_33();
      v1173 = *(v1172 + 1600);
      v1182 = OUTLINED_FUNCTION_25_70(v1174, v1175, v1176, v1177, v1178, v1179, v1180, v1181, v2615, v2823, v3031, v3235, v3441, v3647, v3853, v4061, v4266, v4472, v4680, v4888, v5096, v5304, v5512, v5720, v5927, v6134, v6341, v6548, v6755, v6962, v7165, v7368, v7571, v7774, v7971);
      v1173(v1182);
      OUTLINED_FUNCTION_139_8();
      OUTLINED_FUNCTION_69_20(0x404B800000000000uLL);
      OUTLINED_FUNCTION_78_15(0x404E000000000000uLL);
      OUTLINED_FUNCTION_61_22(v1183);
      OUTLINED_FUNCTION_137_6();
      v1192 = OUTLINED_FUNCTION_0_211(v1184, v1185, v1186, v1187, v1188, v1189, v1190, v1191, v2616, v2824, v3032, v3236, v3442, v3648, v3854, v4062, v4267, v4473, v4681, v4889, v5097, v5305, v5513, v5721, v5928, v6135, v6342, v6549, v6756, v6963, v7166, v7369, v7572, v7775, v7972);
      OUTLINED_FUNCTION_178_3(v1192, v1193);
      v1202 = OUTLINED_FUNCTION_64_20(v1194, v1195, v1196, v1197, v1198, v1199, v1200, v1201, v2617, v2825, v3033, v3237, v3443, v3649, v3855, v4063, v4268, v4474, v4682, v4890, v5098, v5306, v5514, v5722, v5929, v6136, v6343, v6550, v6757, v6964, v7167, v7370, v7573, v7776, v7973);
      memcpy(v1202, v1203, 0x59uLL);
      v1204 = OUTLINED_FUNCTION_18();
      v1212 = OUTLINED_FUNCTION_21_74(v1204, v1205, v1206, v1207, v1208, v1209, v1210, v1211, v2618, v2826, v3034, v3238, v3444, v3650, v3856, v4064, v4269, v4475, v4683, v4891, v5099, v5307, v5515, v5723, v5930, v6137, v6344, v6551, v6758, v6965, v7168, v7371, v7574, v7777, v7974);
      v1213 = (v1173)(v1212, 8);
      v2619(v1213);
      OUTLINED_FUNCTION_2_33();
      (*(v1214 + 1424))();
      OUTLINED_FUNCTION_155_5();
      OUTLINED_FUNCTION_35_44(0x4065400000000000uLL);
      OUTLINED_FUNCTION_124_5();
      v1223 = OUTLINED_FUNCTION_0_211(v1215, v1216, v1217, v1218, v1219, v1220, v1221, v1222, v2619, v2827, v3035, v3239, v3445, v3651, v3857, v4065, v4270, v4476, v4684, v4892, v5100, v5308, v5516, v5724, v5931, v6138, v6345, v6552, v6759, v6966, v7169, v7372, v7575, v7778, v7975);
      OUTLINED_FUNCTION_178_3(v1223, v1224);
      v1233 = OUTLINED_FUNCTION_64_20(v1225, v1226, v1227, v1228, v1229, v1230, v1231, v1232, v2620, v2828, v3036, v3240, v3446, v3652, v3858, v4066, v4271, v4477, v4685, v4893, v5101, v5309, v5517, v5725, v5932, v6139, v6346, v6553, v6760, v6967, v7170, v7373, v7576, v7779, v7976);
      memcpy(v1233, v1234, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1236 = *(v1235 + 1600);
      v1245 = OUTLINED_FUNCTION_25_70(v1237, v1238, v1239, v1240, v1241, v1242, v1243, v1244, v2621, v2829, v3037, v3241, v3447, v3653, v3859, v4067, v4272, v4478, v4686, v4894, v5102, v5310, v5518, v5726, v5933, v6140, v6347, v6554, v6761, v6968, v7171, v7374, v7577, v7780, v7977);
      v1236(v1245);
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_69_20(0x4044000000000000uLL);
      *v8548 = v1246;
      v8548[8] = 0;
      OUTLINED_FUNCTION_61_22(0x4056000000000000uLL);
      v1255 = OUTLINED_FUNCTION_0_211(v1247, v1248, v1249, v1250, v1251, v1252, v1253, v1254, v2622, v2830, v3038, v3242, v3448, v3654, v3860, v4068, v4273, v4479, v4687, v4895, v5103, v5311, v5519, v5727, v5934, v6141, v6348, v6555, v6762, v6969, v7172, v7375, v7578, v7781, v7978);
      OUTLINED_FUNCTION_178_3(v1255, v1256);
      v1265 = OUTLINED_FUNCTION_64_20(v1257, v1258, v1259, v1260, v1261, v1262, v1263, v1264, v2623, v2831, v3039, v3243, v3449, v3655, v3861, v4069, v4274, v4480, v4688, v4896, v5104, v5312, v5520, v5728, v5935, v6142, v6349, v6556, v6763, v6970, v7173, v7376, v7579, v7782, v7979);
      memcpy(v1265, v1266, 0x59uLL);
      v1267 = OUTLINED_FUNCTION_18();
      v1275 = OUTLINED_FUNCTION_21_74(v1267, v1268, v1269, v1270, v1271, v1272, v1273, v1274, v2624, v2832, v3040, v3244, v3450, v3656, v3862, v4070, v4275, v4481, v4689, v4897, v5105, v5313, v5521, v5729, v5936, v6143, v6350, v6557, v6764, v6971, v7174, v7377, v7580, v7783, v7980);
      (v1236)(v1275, 8);
      v1276 = [objc_opt_self() whiteColor];
      OUTLINED_FUNCTION_36();
      (*(v1277 + 680))();
      OUTLINED_FUNCTION_36();
      (*(v1278 + 1808))(1);
      OUTLINED_FUNCTION_36();
      (*(v1279 + 512))(1);
      *v8550 = 0uLL;
      *&v8550[16] = xmmword_1E42CA370;
      v8551 = 0;
      OUTLINED_FUNCTION_8();
      (*(v1280 + 160))(v8550);
      sub_1E3CD8738();
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_78_15(0x4062C00000000000uLL);
      v1282 = OUTLINED_FUNCTION_53_31(v1281);
      sub_1E3C3DE00(v1282);
      v1283 = OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00(v1283);
      OUTLINED_FUNCTION_26_72();
      OUTLINED_FUNCTION_180_3();
      OUTLINED_FUNCTION_116_7();
      LOBYTE(v4482) = v1284;
      OUTLINED_FUNCTION_20_14(v1285, v1286, v1287, v1288, v1289, v1290, v1291, v1292, v2625, v2833, v3041, v3245, v3451, v3657, v3863, v4071, v1293, v4482, v4690, v4898, v5106, v5314, v5522, v5730, v5937, v6144, v6351, v6558, v6765, v6972, v7175, v7378, v7581, v7784, v7981);
      OUTLINED_FUNCTION_201_2();
      sub_1E3C2FCB8(v1294, v1295);
      v1304 = OUTLINED_FUNCTION_64_20(v1296, v1297, v1298, v1299, v1300, v1301, v1302, v1303, v2626, v2834, v3042, v3246, v3452, v3658, v3864, v4072, v4276, v4483, v4691, v4899, v5107, v5315, v5523, v5731, v5938, v6145, v6352, v6559, v6766, v6973, v7176, v7379, v7582, v7785, v7982);
      memcpy(v1304, v1305, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1307 = *(v1306 + 1600);
      v1316 = OUTLINED_FUNCTION_6_126(v1308, v1309, v1310, v1311, v1312, v1313, v1314, v1315, v2627, v2835, v3043, v3247, v3453, v3659, v3865, v4073, v4277, v4484, v4692, v4900, v5108, v5316, v5524, v5732, v5939, v6146, v6353, v6560, v6767, v6974, v7177, v7380, v7583, v7786, v7983);
      (v1307)(v1316, 3);
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_86_8(0x4070800000000000uLL);
      v1317 = OUTLINED_FUNCTION_99_9();
      sub_1E3C3DE00(v1317);
      OUTLINED_FUNCTION_31_51();
      v1318 = OUTLINED_FUNCTION_177_2();
      sub_1E3C3DE00(v1318);
      OUTLINED_FUNCTION_76_15();
      v1327 = OUTLINED_FUNCTION_20_14(v1319, v1320, v1321, v1322, v1323, v1324, v1325, v1326, v2628, v2836, v3044, v3248, v3454, v3660, v3866, v4074, v4278, v4485, v4693, v4901, v5109, v5317, v5525, v5733, v5940, v6147, v6354, v6561, v6768, v6975, v7178, v7381, v7584, v7787, v7984);
      sub_1E3C2FCB8(v1327, v1328);
      v1337 = OUTLINED_FUNCTION_64_20(v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v2629, v2837, v3045, v3249, v3455, v3661, v3867, v4075, v4279, v4486, v4694, v4902, v5110, v5318, v5526, v5734, v5941, v6148, v6355, v6562, v6769, v6976, v7179, v7382, v7585, v7788, v7985);
      memcpy(v1337, v1338, 0x59uLL);
      v1339 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v2630, v2838, v3046, v3250, v3456, v3662, v3868, v4076, v4280, v4487, v4695, v4903, v5111, v5319, v5527, v5735, v5942, v6149, v6356, v6563, v6770, v6977, v7180, v7383, v7586, v7789, v7986);
      OUTLINED_FUNCTION_96_13();
      v1307();
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_166_5();
      OUTLINED_FUNCTION_78_15(v1347);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_49_39();
      v1348 = OUTLINED_FUNCTION_99_9();
      sub_1E3C3DE00(v1348);
      OUTLINED_FUNCTION_31_51();
      v1349 = OUTLINED_FUNCTION_177_2();
      sub_1E3C3DE00(v1349);
      OUTLINED_FUNCTION_76_15();
      v1350 = sub_1E3C3DE00(v793);
      LOBYTE(v3251) = v4488;
      v1358 = OUTLINED_FUNCTION_20_14(v1350, v1351, v1352, v1353, v1354, v1355, v1356, v1357, v2631, v2839, v4281, v3251, v3457, v3663, v3869, v4077, v4281, v4488, v4696, v4904, v5112, v5320, v5528, v5736, v5943, v6150, v6357, v6564, v6771, v6978, v7181, v7384, v7587, v7790, v7987);
      sub_1E3C2FCB8(v1358, v1359);
      v1368 = OUTLINED_FUNCTION_64_20(v1360, v1361, v1362, v1363, v1364, v1365, v1366, v1367, v2632, v2840, v3047, v3252, v3458, v3664, v3870, v4078, v4282, v4489, v4697, v4905, v5113, v5321, v5529, v5737, v5944, v6151, v6358, v6565, v6772, v6979, v7182, v7385, v7588, v7791, v7988);
      memcpy(v1368, v1369, 0x59uLL);
      v1370 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1370, v1371, v1372, v1373, v1374, v1375, v1376, v1377, v2633, v2841, v3048, v3253, v3459, v3665, v3871, v4079, v4283, v4490, v4698, v4906, v5114, v5322, v5530, v5738, v5945, v6152, v6359, v6566, v6773, v6980, v7183, v7386, v7589, v7792, v7989);
      OUTLINED_FUNCTION_129_8();
      v1307();
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v8133) = v1173;
      v1378 = OUTLINED_FUNCTION_215_0();
      OUTLINED_FUNCTION_4_167(v1378, v1379, v1380, v1381);
      v1382 = OUTLINED_FUNCTION_215_0();
      OUTLINED_FUNCTION_9_113(v1382, v1383, v1384, v1385);
      v1386 = sub_1E3952C10(20.0, 6.0);
      OUTLINED_FUNCTION_40_48(v1386, v1387, v1388, v1389);
      v1390 = sub_1E3952C10(10.0, 4.0);
      OUTLINED_FUNCTION_197_0(v1390, v1391, v1392, v1393);
      OUTLINED_FUNCTION_20_14(v1394, v1395, v1396, v1397, v1398, v1399, v1400, v1401, v2634, v2842, v3049, v3254, v3460, v3666, v3872, v4080, v4284, v4491, v4699, v4907, v5115, v5323, v5531, v5739, v5946, v6153, v6360, v6567, v6774, v6981, v7184, v7387, v7590, v7793, v7990);
      OUTLINED_FUNCTION_202_0();
      OUTLINED_FUNCTION_159_2(v1402, v1403);
      v1412 = OUTLINED_FUNCTION_64_20(v1404, v1405, v1406, v1407, v1408, v1409, v1410, v1411, v2635, v2843, v3050, v3255, v3461, v3667, v3873, v4081, v4285, v4492, v4700, v4908, v5116, v5324, v5532, v5740, v5947, v6154, v6361, v6568, v6775, v6982, v7185, v7388, v7591, v7794, v7991);
      memcpy(v1412, v1413, 0xE9uLL);
      v1414 = OUTLINED_FUNCTION_18();
      v1422 = OUTLINED_FUNCTION_15_105(v1414, v1415, v1416, v1417, v1418, v1419, v1420, v1421, v2636, v2844, v3051, v3256, v3462, v3668, v3874, v4082, v4286, v4493, v4701, v4909, v5117, v5325, v5533, v5741, v5948, v6155, v6362, v6569, v6776, v6983, v7186, v7389, v7592, v7795, v7992);
      (v1307)(v1422);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      __asm { FMOV            V0.2D, #20.0 }

      *&v8548[8] = _Q0;
      *v8548 = 0x4024000000000000;
      *&v8548[24] = 0x4034000000000000;
      v8549 = 0;
      sub_1E3952C58();
      OUTLINED_FUNCTION_197_0(v1424, v1425, v1426, v1427);
      v1428 = sub_1E3C3DE00(v841);
      OUTLINED_FUNCTION_41_43(v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v2637, v2845, v3052, v3257, v3463, v3669, v3875, v4083, v4287, v4494, v4702, v4910, v5118, v5326, v5534, v5742, v5949, v6156, v6363, v6570, v6777, v6984, v7187, v7390, v7593, v7796, v7993, v8082, v8099, v8116, v8133, v8150, v8167, v8184, v8201, v8218, v8235, v8252, v8269, v8286, v8303, v8320, v8337, v8354, v8371, v8388, v8405, v8422, v8439, v8456, v8473, v8490, v8507, v8524, v8541);
      OUTLINED_FUNCTION_202_0();
      goto LABEL_7;
    case 3:
    case 9:
    case 0xA:
      goto LABEL_25;
    case 4:
    case 5:
      sub_1E3CD5D78();
      goto LABEL_25;
    case 6:
      OUTLINED_FUNCTION_111();
      (*(v1457 + 512))(18);
      OUTLINED_FUNCTION_157_6(MEMORY[0x1E69DDCE0]);
      OUTLINED_FUNCTION_111();
      (*(v1458 + 184))(&v8555);
      OUTLINED_FUNCTION_9_2();
      v1459 = OUTLINED_FUNCTION_13_12();
      v1460(v1459);
      OUTLINED_FUNCTION_9_2();
      (*(v1461 + 360))(0x404E000000000000, 0);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v8123) = 1;
      *v8550 = xmmword_1E42B5EF0;
      *&v8550[16] = xmmword_1E42CA390;
      v8551 = 0;
      *v8548 = xmmword_1E42B5EF0;
      *&v8548[16] = xmmword_1E42CA390;
      v8549 = 0;
      sub_1E3952C94();
      OUTLINED_FUNCTION_9_113(v1462, v1463, v1464, v1465);
      type metadata accessor for UIEdgeInsets();
      v1467 = v1466;
      v1468 = sub_1E3C3DE00(v1466);
      OUTLINED_FUNCTION_7_21(v1468, v1469, v1470, v1471, v1472, v1473, v1474, v1475, v2519, v2727, v2935, v3139, v3345, v3551, v3757, v3965, v4173, v4376, v4584, v4792, v5000, v5208, v5416, v5624, v5831, v6038, v6245, v6452, v6659, v6866, v7069, v7272, v7475, v7678, v7881, v8072, v8089, v8106, v8123, v8140, v8157, v8174, v8191, v8208, v8225, v8242, v8259, v8276, v8293, v8310, v8327, v8344, v8361, v8378, v8395, v8412, v8429, v8446, v8463, v8480, v8497, v8514, v8531);
      v1484 = OUTLINED_FUNCTION_0_211(v1476, v1477, v1478, v1479, v1480, v1481, v1482, v1483, v2639, v2847, v3054, v3259, v3465, v3671, v3877, v4085, v4289, v4496, v4704, v4912, v5120, v5328, v5536, v5744, v5951, v6158, v6365, v6572, v6779, v6986, v7189, v7392, v7595, v7798, v7995);
      OUTLINED_FUNCTION_159_2(v1484, v1485);
      v1494 = OUTLINED_FUNCTION_64_20(v1486, v1487, v1488, v1489, v1490, v1491, v1492, v1493, v2640, v2848, v3055, v3260, v3466, v3672, v3878, v4086, v4290, v4497, v4705, v4913, v5121, v5329, v5537, v5745, v5952, v6159, v6366, v6573, v6780, v6987, v7190, v7393, v7596, v7799, v7996);
      memcpy(v1494, v1495, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_0();
      v1497 = (v1496 + 1600);
      v1498 = *(v1496 + 1600);
      v1507 = OUTLINED_FUNCTION_19_88(v1499, v1500, v1501, v1502, v1503, v1504, v1505, v1506, v2641, v2849, v3056, v3261, v3467, v3673, v3879, v4087, v4291, v4498, v4706, v4914, v5122, v5330, v5538, v5746, v5953, v6160, v6367, v6574, v6781, v6988, v7191, v7394, v7597, v7800, v7997);
      v1498(v1507);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v8134) = 1;
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v1508, v1509, v1510, v1511);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v1512, v1513, v1514, v1515);
      v1516 = OUTLINED_FUNCTION_134_5();
      sub_1E3C3DE00(v1516);
      OUTLINED_FUNCTION_12_103();
      v1517 = sub_1E3C3DE00(v1467);
      OUTLINED_FUNCTION_7_21(v1517, v1518, v1519, v1520, v1521, v1522, v1523, v1524, v2642, v2850, v3057, v3262, v3468, v3674, v3880, v4088, v4292, v4499, v4707, v4915, v5123, v5331, v5539, v5747, v5954, v6161, v6368, v6575, v6782, v6989, v7192, v7395, v7598, v7801, v7998, v8083, v8100, v8117, v8134, v8151, v8168, v8185, v8202, v8219, v8236, v8253, v8270, v8287, v8304, v8321, v8338, v8355, v8372, v8389, v8406, v8423, v8440, v8457, v8474, v8491, v8508, v8525, v8542);
      v1525 = sub_1E3C3DE00(v1467);
      OUTLINED_FUNCTION_56_27(v1525, v1526, v1527, v1528, v1529, v1530, v1531, v1532, v2643, v2851, v3058, v3263, v3469, v3675, v3881, v4089, v4293, v4500, v4708, v4916, v5124, v5332, v5540, v5748, v5955, v6162, v6369, v6576, v6783);
      v1541 = OUTLINED_FUNCTION_6_138(v1533, v1534, v1535, v1536, v1537, v1538, v1539, v1540, v2644, v2852, v3059, v3264, v3470, v3676, v3882, v4090, v4294, v4501, v4709, v4917, v5125, v5333, v5541, v5749, v5956, v6163, v6370, v6577, v6784, v6990, v7193, v7396, v7599, v7802, v7999);
      sub_1E3C2FCB8(v1541, v1542);
      v1551 = OUTLINED_FUNCTION_64_20(v1543, v1544, v1545, v1546, v1547, v1548, v1549, v1550, v2645, v2853, v3060, v3265, v3471, v3677, v3883, v4091, v4295, v4502, v4710, v4918, v5126, v5334, v5542, v5750, v5957, v6164, v6371, v6578, v6785, v6991, v7194, v7397, v7600, v7803, v8000);
      memcpy(v1551, v1552, 0xE9uLL);
      v1553 = OUTLINED_FUNCTION_18();
      v1561 = OUTLINED_FUNCTION_21_74(v1553, v1554, v1555, v1556, v1557, v1558, v1559, v1560, v2646, v2854, v3061, v3266, v3472, v3678, v3884, v4092, v4296, v4503, v4711, v4919, v5127, v5335, v5543, v5751, v5958, v6165, v6372, v6579, v6786, v6992, v7195, v7398, v7601, v7804, v8001);
      (v1498)(v1561, 121);
      v1562 = *(v0 + 128);
      OUTLINED_FUNCTION_36();
      (*(v1563 + 2056))(1, 0);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v1564 = *(*v1562 + 680);
      v1565 = v1497;
      v1564(v1497);
      OUTLINED_FUNCTION_36();
      (*(v1566 + 2008))(1);
      OUTLINED_FUNCTION_36();
      (*(v1567 + 1984))(5);
      OUTLINED_FUNCTION_36();
      (*(v1568 + 464))(4);
      OUTLINED_FUNCTION_135_3();
      v8550[0] = 21;
      v8548[0] = 19;
      v1569 = OUTLINED_FUNCTION_99_9();
      v1570 = sub_1E3C3DE00(v1569);
      v1578 = OUTLINED_FUNCTION_0_211(v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v2647, v2855, v3062, v3267, v3473, v3679, v3885, v4093, v4297, v4504, v4712, v4920, v5128, v5336, v5544, v5752, v5959, v6166, v6373, v6580, v6787, v6993, v7196, v7399, v7602, v7805, v8002);
      OUTLINED_FUNCTION_184_1(v1578, v1579);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1588 = OUTLINED_FUNCTION_50_34(v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v2648, v2856, v3063, v3268, v3474, v3680, v3886, v4094, v4298, v4505, v4713, v4921, v5129, v5337, v5545, v5753, v5960, v6167, v6374, v6581, v6788, v6994, v7197, v7400, v7603, v7806, v8003);
      v1589(v1588);
      OUTLINED_FUNCTION_36();
      (*(v1590 + 1792))(10);
      OUTLINED_FUNCTION_36();
      v1591 = OUTLINED_FUNCTION_10_7();
      v1592(v1591);
      v1593 = v2[19];
      LOBYTE(v8084) = 0;
      OUTLINED_FUNCTION_69_20(2uLL);
      v1594 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00(v1594);
      OUTLINED_FUNCTION_17_97();
      sub_1E3C3DE00(v1594);
      OUTLINED_FUNCTION_26_72();
      sub_1E3C3DE00(v1594);
      OUTLINED_FUNCTION_116_7();
      LOBYTE(v4506) = v1595;
      v1605 = OUTLINED_FUNCTION_10_107(v1596, v1597, v1598, v1599, v1600, v1601, v1602, v1603, v2649, v2857, v3064, v3269, v3475, v3681, v3887, v4095, v1604, v4506, v4714, v4922, v5130, v5338, v5546, v5754, v5961, v6168, v6375, v6582, v6789, v6995, v7198, v7401, v7604, v7807, 1);
      sub_1E3C2FCB8(v1605, v1606);
      v1615 = OUTLINED_FUNCTION_64_20(v1607, v1608, v1609, v1610, v1611, v1612, v1613, v1614, v2650, v2858, v3065, v3270, v3476, v3682, v3888, v4096, v4299, v4507, v4715, v4923, v5131, v5339, v5547, v5755, v5962, v6169, v6376, v6583, v6790, v6996, v7199, v7402, v7605, v7808, v8004);
      memcpy(v1615, v1616, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1618 = *(v1617 + 1600);
      v1627 = OUTLINED_FUNCTION_6_126(v1619, v1620, v1621, v1622, v1623, v1624, v1625, v1626, v2651, v2859, v3066, v3271, v3477, v3683, v3889, v4097, v4300, v4508, v4716, v4924, v5132, v5340, v5548, v5756, v5963, v6170, v6377, v6584, v6791, v6997, v7200, v7403, v7606, v7809, v8005);
      (v1618)(v1627, 62);
      v1628 = *sub_1E3E5FD88();
      v1629 = *(*v1593 + 680);
      v1630 = v1628;
      v1629(v1628);
      OUTLINED_FUNCTION_135_3();
      v8550[0] = 19;
      v8548[0] = 17;
      v1631 = OUTLINED_FUNCTION_99_9();
      v1632 = sub_1E3C3DE00(v1631);
      v1640 = OUTLINED_FUNCTION_0_211(v1632, v1633, v1634, v1635, v1636, v1637, v1638, v1639, v2652, v2860, v3067, v3272, v3478, v3684, v3890, v4098, v4301, v4509, v4717, v4925, v5133, v5341, v5549, v5757, v5964, v6171, v6378, v6585, v6792, v6998, v7201, v7404, v7607, v7810, v8006);
      OUTLINED_FUNCTION_184_1(v1640, v1641);
      OUTLINED_FUNCTION_4_14();
      v1642 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1642, v1643, v1644, v1645, v1646, v1647, v1648, v1649, v2653, v2861, v3068, v3273, v3479, v3685, v3891, v4099, v4302, v4510, v4718, v4926, v5134, v5342, v5550, v5758, v5965, v6172, v6379, v6586, v6793, v6999, v7202, v7405, v7608, v7811, v8007);
      OUTLINED_FUNCTION_132_8();
      v1618();
      OUTLINED_FUNCTION_36();
      (*(v1650 + 1792))(10);
      OUTLINED_FUNCTION_36();
      v1651 = OUTLINED_FUNCTION_10_7();
      v1652(v1651);
      OUTLINED_FUNCTION_36();
      (*(v1653 + 1984))(5);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v8135) = 1;
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v1654, v1655, v1656, v1657);
      sub_1E3C3DE00(v1467);
      v1658 = OUTLINED_FUNCTION_118_8();
      sub_1E3C3DE00(v1658);
      OUTLINED_FUNCTION_42_50();
      v1659 = sub_1E3C3DE00(v1467);
      OUTLINED_FUNCTION_48_33(v1659, v1660, v1661, v1662, v1663, v1664, v1665, v1666, v2654, v2862, v3069, v3274, v3480, v3686, v3892, v4100, v4303, v4511, v4719, v4927, v5135, v5343, v5551, v5759, v5966, v6173, v6380, v6587, v6794, v7000, v7203, v7406, v7609, v7812, v8008, v8084, v8101, v8118, v8135, v8152, v8169, v8186, v8203, v8220, v8237, v8254, v8271, v8288, v8305, v8322, v8339, v8356, v8373, v8390, v8407, v8424, v8441, v8458, v8475, v8492, v8509, v8526, v8543);
      v1667 = sub_1E3C3DE00(v1467);
      OUTLINED_FUNCTION_192_1(v1667, v1668, v1669, v1670, v1671, v1672, v1673, v1674, v2655, v2863, v3070, v3275, v3481, v3687, v3893, v4101, v4304, v4512, v4720, v4928, v5136, v5344, v5552);
      OUTLINED_FUNCTION_20_14(v1675, v1676, v1677, v1678, v1679, v1680, v1681, v1682, v2656, v2864, v3071, v3276, v3482, v3688, v3894, v4102, v4305, v4513, v4721, v4929, v5137, v5345, v5553, v5760, v5967, v6174, v6381, v6588, v6795, v7001, v7204, v7407, v7610, v7813, v8009);
      OUTLINED_FUNCTION_201_2();
      sub_1E3C2FCB8(v1683, v1684);
      v1693 = OUTLINED_FUNCTION_64_20(v1685, v1686, v1687, v1688, v1689, v1690, v1691, v1692, v2657, v2865, v3072, v3277, v3483, v3689, v3895, v4103, v4306, v4514, v4722, v4930, v5138, v5346, v5554, v5761, v5968, v6175, v6382, v6589, v6796, v7002, v7205, v7408, v7611, v7814, v8010);
      memcpy(v1693, v1694, 0xE9uLL);
      v1695 = OUTLINED_FUNCTION_18();
      v1703 = OUTLINED_FUNCTION_15_105(v1695, v1696, v1697, v1698, v1699, v1700, v1701, v1702, v2658, v2866, v3073, v3278, v3484, v3690, v3896, v4104, v4307, v4515, v4723, v4931, v5139, v5347, v5555, v5762, v5969, v6176, v6383, v6590, v6797, v7003, v7206, v7409, v7612, v7815, v8011);
      (v1618)(v1703);
      LOBYTE(v8085) = 0;
      sub_1E3C2FC98();
      *v8548 = *v8550;
      v8548[8] = 0;
      sub_1E3C3DE00(v1594);
      OUTLINED_FUNCTION_49_39();
      sub_1E3C3DE00(v1594);
      OUTLINED_FUNCTION_31_51();
      sub_1E3C3DE00(v1594);
      OUTLINED_FUNCTION_76_15();
      v1704 = sub_1E3C3DE00(v1594);
      LOBYTE(v3279) = v4516;
      OUTLINED_FUNCTION_20_14(v1704, v1705, v1706, v1707, v1708, v1709, v1710, v1711, v2659, v2867, v4308, v3279, v3485, v3691, v3897, v4105, v4308, v4516, v4724, v4932, v5140, v5348, v5556, v5763, v5970, v6177, v6384, v6591, v6798, v7004, v7207, v7410, v7613, v7816, 1);
      OUTLINED_FUNCTION_173_2();
      sub_1E3C2FCB8(v1712, v1713);
      v1722 = OUTLINED_FUNCTION_64_20(v1714, v1715, v1716, v1717, v1718, v1719, v1720, v1721, v2660, v2868, v3074, v3280, v3486, v3692, v3898, v4106, v4309, v4517, v4725, v4933, v5141, v5349, v5557, v5764, v5971, v6178, v6385, v6592, v6799, v7005, v7208, v7411, v7614, v7817, v8012);
      memcpy(v1722, v1723, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1725 = *(v1724 + 1600);
      v1734 = OUTLINED_FUNCTION_6_126(v1726, v1727, v1728, v1729, v1730, v1731, v1732, v1733, v2661, v2869, v3075, v3281, v3487, v3693, v3899, v4107, v4310, v4518, v4726, v4934, v5142, v5350, v5558, v5765, v5972, v6179, v6386, v6593, v6800, v7006, v7209, v7412, v7615, v7818, v8013);
      (v1725)(v1734, 62);
      OUTLINED_FUNCTION_135_3();
      v8550[0] = 17;
      v8548[0] = 17;
      v1735 = OUTLINED_FUNCTION_99_9();
      v1736 = sub_1E3C3DE00(v1735);
      v1744 = OUTLINED_FUNCTION_0_211(v1736, v1737, v1738, v1739, v1740, v1741, v1742, v1743, v2662, v2870, v3076, v3282, v3488, v3694, v3900, v4108, v4311, v4519, v4727, v4935, v5143, v5351, v5559, v5766, v5973, v6180, v6387, v6594, v6801, v7007, v7210, v7413, v7616, v7819, v8014);
      OUTLINED_FUNCTION_184_1(v1744, v1745);
      OUTLINED_FUNCTION_10_100();
      v1746 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1746, v1747, v1748, v1749, v1750, v1751, v1752, v1753, v2663, v2871, v3077, v3283, v3489, v3695, v3901, v4109, v4312, v4520, v4728, v4936, v5144, v5352, v5560, v5767, v5974, v6181, v6388, v6595, v6802, v7008, v7211, v7414, v7617, v7820, v8015);
      OUTLINED_FUNCTION_132_8();
      v1725();
      OUTLINED_FUNCTION_36();
      (*(v1754 + 1792))(10);
      OUTLINED_FUNCTION_36();
      v1755 = OUTLINED_FUNCTION_8_5();
      v1756(v1755);
      OUTLINED_FUNCTION_36();
      (*(v1757 + 1984))(5);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v8136) = 1;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00(v1467);
      OUTLINED_FUNCTION_12_103();
      v1758 = sub_1E3C3DE00(v1467);
      OUTLINED_FUNCTION_7_21(v1758, v1759, v1760, v1761, v1762, v1763, v1764, v1765, v2664, v2872, v3078, v3284, v3490, v3696, v3902, v4110, v4313, v4521, v4729, v4937, v5145, v5353, v5561, v5768, v5975, v6182, v6389, v6596, v6803, v7009, v7212, v7415, v7618, v7821, v8016, v8085, v8102, v8119, v8136, v8153, v8170, v8187, v8204, v8221, v8238, v8255, v8272, v8289, v8306, v8323, v8340, v8357, v8374, v8391, v8408, v8425, v8442, v8459, v8476, v8493, v8510, v8527, v8544);
      v1766 = sub_1E3C3DE00(v1467);
      OUTLINED_FUNCTION_56_27(v1766, v1767, v1768, v1769, v1770, v1771, v1772, v1773, v2665, v2873, v3079, v3285, v3491, v3697, v3903, v4111, v4314, v4522, v4730, v4938, v5146, v5354, v5562, v5769, v5976, v6183, v6390, v6597, v6804);
      v1774 = sub_1E3C3DE00(v1467);
      LOBYTE(v3904) = v5147;
      OUTLINED_FUNCTION_20_14(v1774, v1775, v1776, v1777, v1778, v1779, v1780, v1781, v2666, v2874, v4315, v4523, v4731, v4939, v3904, v4112, v4315, v4523, v4731, v4939, v5147, v5355, v5563, v5770, v5977, v6184, v6391, v6598, v6805, v7010, v7213, v7416, v7619, v7822, v8017);
      OUTLINED_FUNCTION_173_2();
      sub_1E3C2FCB8(v1782, v1783);
      v1792 = OUTLINED_FUNCTION_64_20(v1784, v1785, v1786, v1787, v1788, v1789, v1790, v1791, v2667, v2875, v3080, v3286, v3492, v3698, v3905, v4113, v4316, v4524, v4732, v4940, v5148, v5356, v5564, v5771, v5978, v6185, v6392, v6599, v6806, v7011, v7214, v7417, v7620, v7823, v8018);
      memcpy(v1792, v1793, 0xE9uLL);
      v1794 = OUTLINED_FUNCTION_18();
      v1802 = OUTLINED_FUNCTION_15_105(v1794, v1795, v1796, v1797, v1798, v1799, v1800, v1801, v2668, v2876, v3081, v3287, v3493, v3699, v3906, v4114, v4317, v4525, v4733, v4941, v5149, v5357, v5565, v5772, v5979, v6186, v6393, v6600, v6807, v7012, v7215, v7418, v7621, v7824, v8019);
      (v1725)(v1802);
      goto LABEL_25;
    case 7:
      OUTLINED_FUNCTION_154_4();
      OUTLINED_FUNCTION_37_48();
      OUTLINED_FUNCTION_166_5();
      *v8548 = v3;
      OUTLINED_FUNCTION_47_37();
      v4 = MEMORY[0x1E69E7DE0];
      v5 = OUTLINED_FUNCTION_94_12();
      sub_1E3C3DE00(v5);
      OUTLINED_FUNCTION_17_97();
      v14 = OUTLINED_FUNCTION_1_194(v6, v7, v8, v9, v10, v11, v12, v13, v2519, v2727, v2935, v3139, v3345, v3551, v3757, v3965, v4173, v4376, v4584, v4792, v5000, v5208, v5416, v5624, v5831, v6038, v6245, v6452, v6659, v6866, v7069, v7272, v7475, v7678, v7881);
      OUTLINED_FUNCTION_178_3(v14, v15);
      v24 = OUTLINED_FUNCTION_64_20(v16, v17, v18, v19, v20, v21, v22, v23, v2520, v2728, v2936, v3140, v3346, v3552, v3758, v3966, v4174, v4377, v4585, v4793, v5001, v5209, v5417, v5625, v5832, v6039, v6246, v6453, v6660, v6867, v7070, v7273, v7476, v7679, v7882);
      memcpy(v24, v25, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_0();
      v27 = *(v26 + 1600);
      v36 = OUTLINED_FUNCTION_46_40(v28, v29, v30, v31, v32, v33, v34, v35, v2521, v2729, v2937, v3141, v3347, v3553, v3759, v3967, v4175, v4378, v4586, v4794, v5002, v5210, v5418, v5626, v5833, v6040, v6247, v6454, v6661, v6868, v7071, v7274, v7477, v7680, v7883);
      v27(v36);
      OUTLINED_FUNCTION_101_9();
      OUTLINED_FUNCTION_39_44();
      v37 = OUTLINED_FUNCTION_150_5();
      v41 = OUTLINED_FUNCTION_65_18(v37, v38, v39, v40);
      OUTLINED_FUNCTION_16_93(v41, v42, v43, v44);
      v45 = OUTLINED_FUNCTION_150_5();
      OUTLINED_FUNCTION_4_167(v45, v46, v47, v48);
      type metadata accessor for UIEdgeInsets();
      v50 = v49;
      sub_1E3C3DE00(v49);
      OUTLINED_FUNCTION_12_103();
      sub_1E3C3DE00(v50);
      OUTLINED_FUNCTION_7_154(v51, v52, v53, v54, v55, v56, v57, v58, v2522, v2730, v2938, v3142, v3348, v3554, v3760, v3968, v4176, v4379, v4587, v4795, v5003, v5211, v5419, v5627, v5834, v6041, v6248, v6455, v6662, v6869, v7072, v7275, v7478, v7681, v7884, *&v8072, *&v8089, *&v8106, *&v8123, *&v8140, *&v8157, *&v8174, *&v8191, *&v8208, *&v8225, *&v8242, *&v8259, *&v8276, *&v8293, *&v8310, *&v8327, *&v8344, *&v8361, *&v8378, *&v8395, *&v8412, *&v8429, *&v8446, *&v8463, *&v8480, *&v8497, *&v8514, *&v8531);
      sub_1E3C2FCB8(v59, v60);
      v69 = OUTLINED_FUNCTION_64_20(v61, v62, v63, v64, v65, v66, v67, v68, v2523, v2731, v2939, v3143, v3349, v3555, v3761, v3969, v4177, v4380, v4588, v4796, v5004, v5212, v5420, v5628, v5835, v6042, v6249, v6456, v6663, v6870, v7073, v7276, v7479, v7682, v7885);
      memcpy(v69, v70, 0xE9uLL);
      v71 = OUTLINED_FUNCTION_18();
      v79 = OUTLINED_FUNCTION_15_105(v71, v72, v73, v74, v75, v76, v77, v78, v2524, v2732, v2940, v3144, v3350, v3556, v3762, v3970, v4178, v4381, v4589, v4797, v5005, v5213, v5421, v5629, v5836, v6043, v6250, v6457, v6664, v6871, v7074, v7277, v7480, v7683, v7886);
      v27(v79);
      OUTLINED_FUNCTION_9_2();
      (*(v80 + 1928))(7);
      OUTLINED_FUNCTION_36();
      (*(v81 + 1808))(1);
      OUTLINED_FUNCTION_36();
      (*(v82 + 512))(1);
      OUTLINED_FUNCTION_75_16();
      OUTLINED_FUNCTION_107_7(0x4069000000000000);
      OUTLINED_FUNCTION_69_20(v83);
      OUTLINED_FUNCTION_78_15(0x4077C00000000000uLL);
      OUTLINED_FUNCTION_189_2();
      v92 = OUTLINED_FUNCTION_1_194(v84, v85, v86, v87, v88, v89, v90, v91, v2525, v2733, v2941, v3145, v3351, v3557, v3763, v3971, v4179, v4382, v4590, v4798, v5006, v5214, v5422, v5630, v5837, v6044, v6251, v6458, v6665, v6872, v7075, v7278, v7481, v7684, v7887);
      sub_1E3C2FCB8(v92, v93);
      v102 = OUTLINED_FUNCTION_64_20(v94, v95, v96, v97, v98, v99, v100, v101, v2526, v2734, v2942, v3146, v3352, v3558, v3764, v3972, v4180, v4383, v4591, v4799, v5007, v5215, v5423, v5631, v5838, v6045, v6252, v6459, v6666, v6873, v7076, v7279, v7482, v7685, v7888);
      memcpy(v102, v103, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v105 = *(v104 + 1600);
      v114 = OUTLINED_FUNCTION_25_70(v106, v107, v108, v109, v110, v111, v112, v113, v2527, v2735, v2943, v3147, v3353, v3559, v3765, v3973, v4181, v4384, v4592, v4800, v5008, v5216, v5424, v5632, v5839, v6046, v6253, v6460, v6667, v6874, v7077, v7280, v7483, v7686, v7889);
      v105(v114);
      OUTLINED_FUNCTION_139_8();
      OUTLINED_FUNCTION_107_7(0x404E000000000000);
      OUTLINED_FUNCTION_69_20(v115);
      OUTLINED_FUNCTION_206_0();
      OUTLINED_FUNCTION_61_22(v116);
      v125 = OUTLINED_FUNCTION_1_194(v117, v118, v119, v120, v121, v122, v123, v124, v2528, v2736, v2944, v3148, v3354, v3560, v3766, v3974, v4182, v4385, v4593, v4801, v5009, v5217, v5425, v5633, v5840, v6047, v6254, v6461, v6668, v6875, v7078, v7281, v7484, v7687, v7890);
      sub_1E3C2FCB8(v125, v126);
      v135 = OUTLINED_FUNCTION_64_20(v127, v128, v129, v130, v131, v132, v133, v134, v2529, v2737, v2945, v3149, v3355, v3561, v3767, v3975, v4183, v4386, v4594, v4802, v5010, v5218, v5426, v5634, v5841, v6048, v6255, v6462, v6669, v6876, v7079, v7282, v7485, v7688, v7891);
      memcpy(v135, v136, 0x59uLL);
      v137 = OUTLINED_FUNCTION_18();
      v145 = OUTLINED_FUNCTION_21_74(v137, v138, v139, v140, v141, v142, v143, v144, v2530, v2738, v2946, v3150, v3356, v3562, v3768, v3976, v4184, v4387, v4595, v4803, v5011, v5219, v5427, v5635, v5842, v6049, v6256, v6463, v6670, v6877, v7080, v7283, v7486, v7689, v7892);
      (v105)(v145, 8);
      sub_1E3952C94();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C94();
      v8555 = v146;
      v8556 = v147;
      v8557 = v148;
      v8558 = v149;
      v8559 = 0;
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v150, v151, v152, v153);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v154, v155, v156, v157);
      v158 = OUTLINED_FUNCTION_134_5();
      sub_1E3C3DE00(v158);
      OUTLINED_FUNCTION_12_103();
      sub_1E3C3DE00(v50);
      OUTLINED_FUNCTION_7_154(v159, v160, v161, v162, v163, v164, v165, v166, v2531, v2739, v2947, v3151, v3357, v3563, v3769, v3977, v4185, v4388, v4596, v4804, v5012, v5220, v5428, v5636, v5843, v6050, v6257, v6464, v6671, v6878, v7081, v7284, v7487, v7690, v7893, v8073, v8090, v8107, v8124, v8141, v8158, v8175, v8192, v8209, v8226, v8243, v8260, v8277, v8294, v8311, v8328, v8345, v8362, v8379, v8396, v8413, v8430, v8447, v8464, v8481, v8498, v8515, v8532);
      sub_1E3C2FCB8(v167, v168);
      v177 = OUTLINED_FUNCTION_64_20(v169, v170, v171, v172, v173, v174, v175, v176, v2532, v2740, v2948, v3152, v3358, v3564, v3770, v3978, v4186, v4389, v4597, v4805, v5013, v5221, v5429, v5637, v5844, v6051, v6258, v6465, v6672, v6879, v7082, v7285, v7488, v7691, v7894);
      memcpy(v177, v178, 0xE9uLL);
      v179 = OUTLINED_FUNCTION_18();
      v187 = OUTLINED_FUNCTION_15_105(v179, v180, v181, v182, v183, v184, v185, v186, v2533, v2741, v2949, v3153, v3359, v3565, v3771, v3979, v4187, v4390, v4598, v4806, v5014, v5222, v5430, v5638, v5845, v6052, v6259, v6466, v6673, v6880, v7083, v7286, v7489, v7692, v7895);
      v105(v187);
      v188 = *(v0 + 128);
      OUTLINED_FUNCTION_36();
      v189 = OUTLINED_FUNCTION_133();
      v190(v189);
      v191 = sub_1E3E5FD88();
      v192 = *v191;
      v193 = *(*v188 + 680);
      v194 = *v191;
      v193(v192);
      OUTLINED_FUNCTION_36();
      (*(v195 + 2008))(1);
      OUTLINED_FUNCTION_36();
      (*(v196 + 1984))(1);
      OUTLINED_FUNCTION_36();
      (*(v197 + 1792))(7);
      LOBYTE(v8555) = 2;
      v8550[0] = 1;
      v8548[0] = 3;
      sub_1E3C3DE00(&qword_1F5D549D8);
      OUTLINED_FUNCTION_111_7();
      v206 = OUTLINED_FUNCTION_1_194(v198, v199, v200, v201, v202, v203, v204, v205, v2534, v2742, v2950, v3154, v3360, v3566, v3772, v3980, v4188, v4391, v4599, v4807, v5015, v5223, v5431, v5639, v5846, v6053, v6260, v6467, v6674, v6881, v7084, v7287, v7490, v7693, 27);
      sub_1E3C2FCB8(v206, v207);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v209 = *(v208 + 1600);
      v218 = OUTLINED_FUNCTION_50_34(v210, v211, v212, v213, v214, v215, v216, v217, v2535, v2743, v2951, v3155, v3361, v3567, v3773, v3981, v4189, v4392, v4600, v4808, v5016, v5224, v5432, v5640, v5847, v6054, v6261, v6468, v6675, v6882, v7085, v7288, v7491, v7694, v7896);
      v209(v218);
      LOBYTE(v8555) = 4;
      v8550[0] = 4;
      OUTLINED_FUNCTION_199();
      v227 = OUTLINED_FUNCTION_1_194(v219, v220, v221, v222, v223, v224, v225, v226, v2536, v2744, v2952, v3156, v3362, v3568, v3774, v3982, v4190, v4393, v4601, v4809, v5017, v5225, v5433, v5641, v5848, v6055, v6262, v6469, v6676, v6883, v7086, v7289, v7492, v7695, 10);
      sub_1E3C2FCB8(v227, v228);
      OUTLINED_FUNCTION_4_14();
      v229 = OUTLINED_FUNCTION_18();
      v237 = OUTLINED_FUNCTION_21_74(v229, v230, v231, v232, v233, v234, v235, v236, v2537, v2745, v2953, v3157, v3363, v3569, v3775, v3983, v4191, v4394, v4602, v4810, v5018, v5226, v5434, v5642, v5849, v6056, v6263, v6470, v6677, v6884, v7087, v7290, v7493, v7696, v7897);
      (v209)(v237, 54);
      OUTLINED_FUNCTION_36();
      (*(v238 + 1720))(7);
      v239 = v2[19];
      OUTLINED_FUNCTION_36();
      v240 = OUTLINED_FUNCTION_133();
      v241(v240);
      v242 = *v191;
      v243 = *(*v239 + 680);
      v244 = v242;
      v243(v242);
      LOBYTE(v8555) = 17;
      v8550[0] = 15;
      v8548[0] = 15;
      sub_1E3C3DE00(&qword_1F5D549D8);
      OUTLINED_FUNCTION_111_7();
      v253 = OUTLINED_FUNCTION_1_194(v245, v246, v247, v248, v249, v250, v251, v252, v2538, v2746, v2954, v3158, v3364, v3570, v3776, v3984, v4192, v4395, v4603, v4811, v5019, v5227, v5435, v5643, v5850, v6057, v6264, v6471, v6678, v6885, v7088, v7291, v7494, v7697, 27);
      sub_1E3C2FCB8(v253, v254);
      OUTLINED_FUNCTION_10_100();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v256 = *(v255 + 1600);
      v265 = OUTLINED_FUNCTION_50_34(v257, v258, v259, v260, v261, v262, v263, v264, v2539, v2747, v2955, v3159, v3365, v3571, v3777, v3985, v4193, v4396, v4604, v4812, v5020, v5228, v5436, v5644, v5851, v6058, v6265, v6472, v6679, v6886, v7089, v7292, v7495, v7698, v7898);
      v256(v265);
      OUTLINED_FUNCTION_205(5);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_110();
      sub_1E3C3DE00(&unk_1F5D54CA8);
      OUTLINED_FUNCTION_111_7();
      sub_1E3C3DE00(&unk_1F5D54CA8);
      OUTLINED_FUNCTION_196_0();
      v274 = OUTLINED_FUNCTION_30_55(v266, v267, v268, v269, v270, v271, v272, v273, v2540, v2748, v2956, v3160, v3366, v3572, v3778, v3986, v4194, v4397, v4605, v4813, v5021, v5229, v5437, v5645, v5852, v6059, v6266, v6473, v6680, v6887, v7090, v7293, v7496, v7699, 1);
      sub_1E3C2FCB8(v274, v275);
      OUTLINED_FUNCTION_10_100();
      v276 = OUTLINED_FUNCTION_18();
      v284 = OUTLINED_FUNCTION_21_74(v276, v277, v278, v279, v280, v281, v282, v283, v2541, v2749, v2957, v3161, v3367, v3573, v3779, v3987, v4195, v4398, v4606, v4814, v5022, v5230, v5438, v5646, v5853, v6060, v6267, v6474, v6681, v6888, v7091, v7294, v7497, v7700, v7899);
      (v256)(v284, 59);
      OUTLINED_FUNCTION_157_6(MEMORY[0x1E69DDCE0]);
      OUTLINED_FUNCTION_8();
      (*(v285 + 184))(&v8555);
      OUTLINED_FUNCTION_139_8();
      OUTLINED_FUNCTION_35_44(0x4074000000000000uLL);
      OUTLINED_FUNCTION_166_5();
      OUTLINED_FUNCTION_86_8(v286);
      OUTLINED_FUNCTION_119_6();
      v287 = OUTLINED_FUNCTION_99_9();
      sub_1E3C3DE00(v287);
      OUTLINED_FUNCTION_31_51();
      v296 = OUTLINED_FUNCTION_0_211(v288, v289, v290, v291, v292, v293, v294, v295, v2542, v2750, v2958, v3162, v3368, v3574, v3780, v3988, v4196, v4399, v4607, v4815, v5023, v5231, v5439, v5647, v5854, v6061, v6268, v6475, v6682, v6889, v7092, v7295, v7498, v7701, v7900);
      OUTLINED_FUNCTION_184_1(v296, v297);
      v306 = OUTLINED_FUNCTION_64_20(v298, v299, v300, v301, v302, v303, v304, v305, v2543, v2751, v2959, v3163, v3369, v3575, v3781, v3989, v4197, v4400, v4608, v4816, v5024, v5232, v5440, v5648, v5855, v6062, v6269, v6476, v6683, v6890, v7093, v7296, v7499, v7702, v7901);
      memcpy(v306, v307, 0x59uLL);
      v308 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v308, v309, v310, v311, v312, v313, v314, v315, v2544, v2752, v2960, v3164, v3370, v3576, v3782, v3990, v4198, v4401, v4609, v4817, v5025, v5233, v5441, v5649, v5856, v6063, v6270, v6477, v6684, v6891, v7094, v7297, v7500, v7703, v7902);
      OUTLINED_FUNCTION_96_13();
      (v256)();
      OUTLINED_FUNCTION_36();
      (*(v316 + 1792))(4);
      OUTLINED_FUNCTION_36();
      (*(v317 + 1720))(7);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v318, v319, v320, v321);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v322, v323, v324, v325);
      sub_1E3952C94();
      OUTLINED_FUNCTION_9_113(v326, v327, v328, v329);
      v330 = OUTLINED_FUNCTION_118_8();
      sub_1E3C3DE00(v330);
      OUTLINED_FUNCTION_42_50();
      v331 = sub_1E3C3DE00(v50);
      OUTLINED_FUNCTION_41_43(v331, v332, v333, v334, v335, v336, v337, v338, v2545, v2753, v2961, v3165, v3371, v3577, v3783, v3991, v4199, v4402, v4610, v4818, v5026, v5234, v5442, v5650, v5857, v6064, v6271, v6478, v6685, v6892, v7095, v7298, v7501, v7704, v7903, v8074, v8091, v8108, v8125, v8142, v8159, v8176, v8193, v8210, v8227, v8244, v8261, v8278, v8295, v8312, v8329, v8346, v8363, v8380, v8397, v8414, v8431, v8448, v8465, v8482, v8499, v8516, v8533);
      v347 = OUTLINED_FUNCTION_142_9(v339, v340, v341, v342, v343, v344, v345, v346, v2546, v2754, v2962, v3166, v3372, v3578, v3784, v3992, v4200, v4403, v4611, v4819, v5027, v5235, v5443, v5651, v5858, v6065, v6272, v6479, v6686, v6893, v7096, v7299, v7502, v7705, v7904, v8075, v8092, v8109, v8126, v8143, v8160, v8177, v8194, v8211, v8228, v8245, v8262, v8279, v8296, v8313, v8330, v8347, v8364, v8381, v8398, v8415, v8432, v8449, v8466, v8483, v8500, v8517, v8534);
      sub_1E3C2FCB8(v347, v348);
      v357 = OUTLINED_FUNCTION_64_20(v349, v350, v351, v352, v353, v354, v355, v356, v2547, v2755, v2963, v3167, v3373, v3579, v3785, v3993, v4201, v4404, v4612, v4820, v5028, v5236, v5444, v5652, v5859, v6066, v6273, v6480, v6687, v6894, v7097, v7300, v7503, v7706, v7905);
      memcpy(v357, v358, 0xE9uLL);
      v359 = OUTLINED_FUNCTION_18();
      v367 = OUTLINED_FUNCTION_15_105(v359, v360, v361, v362, v363, v364, v365, v366, v2548, v2756, v2964, v3168, v3374, v3580, v3786, v3994, v4202, v4405, v4613, v4821, v5029, v5237, v5445, v5653, v5860, v6067, v6274, v6481, v6688, v6895, v7098, v7301, v7504, v7707, v7906);
      v256(v367);
      v368 = v2[13];
      OUTLINED_FUNCTION_111();
      v370 = (*(v369 + 200))();
      v371 = OUTLINED_FUNCTION_140(v370);
      if (!_ZF)
      {
        v371 = 0.0;
      }

      [v368 setMaxWidth_];
      v373 = v2[24];
      [v368 entitlementCueImageSize];
      (*(*v373 + 256))(v374, 0);
      [v368 entitlementCueImageSize];
      (*(*v373 + 360))(v375, 0);
      OUTLINED_FUNCTION_36();
      (*(v376 + 440))(0x3FF0000000000000, 0);
      OUTLINED_FUNCTION_36();
      (*(v377 + 584))(1);
      LOBYTE(v8076) = 0;
      OUTLINED_FUNCTION_69_20(0x402C000000000000uLL);
      OUTLINED_FUNCTION_78_15(0x4036000000000000uLL);
      v378 = OUTLINED_FUNCTION_53_31(0x4024000000000000uLL);
      sub_1E3C3DE00(v378);
      v379 = OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00(v379);
      OUTLINED_FUNCTION_26_72();
      v388 = OUTLINED_FUNCTION_142_9(v380, v381, v382, v383, v384, v385, v386, v387, v2549, v2757, v2965, v3169, v3375, v3581, v3787, v3995, v4203, v4406, v4614, v4822, v5030, v5238, v5446, v5654, v5861, v6068, v6275, v6482, v6689, v6896, v7099, v7302, v7505, v7708, 0x402C000000000000, v8076, v8093, v8110, v8127, v8144, v8161, v8178, v8195, v8212, v8229, v8246, v8263, v8280, v8297, v8314, v8331, v8348, v8365, v8382, v8399, v8416, v8433, v8450, v8467, v8484, v8501, v8518, v8535);
      sub_1E3C2FCB8(v388, v389);
      v398 = OUTLINED_FUNCTION_64_20(v390, v391, v392, v393, v394, v395, v396, v397, v2550, v2758, v2966, v3170, v3376, v3582, v3788, v3996, v4204, v4407, v4615, v4823, v5031, v5239, v5447, v5655, v5862, v6069, v6276, v6483, v6690, v6897, v7100, v7303, v7506, v7709, v7907);
      memcpy(v398, v399, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v408 = OUTLINED_FUNCTION_6_126(v400, v401, v402, v403, v404, v405, v406, v407, v2551, v2759, v2967, v3171, v3377, v3583, v3789, v3997, v4205, v4408, v4616, v4824, v5032, v5240, v5448, v5656, v5863, v6070, v6277, v6484, v6691, v6898, v7101, v7304, v7507, v7710, v7908);
      v409(v408, 100);
      v410 = v2[22];
      v411 = *sub_1E3E5FDEC();
      v412 = *(*v410 + 680);
      v413 = v411;
      v412(v411);
      OUTLINED_FUNCTION_9_2();
      (*(v414 + 1416))();
      OUTLINED_FUNCTION_34_6();
      (*(v415 + 1424))();
      OUTLINED_FUNCTION_34_6();
      (*(v416 + 1720))(7);
      OUTLINED_FUNCTION_34_6();
      v417 = OUTLINED_FUNCTION_10_7();
      v418(v417);
      OUTLINED_FUNCTION_34_6();
      (*(v419 + 1984))(1);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v420, v421, v422, v423);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v424, v425, v426, v427);
      sub_1E3952C88();
      OUTLINED_FUNCTION_9_113(v428, v429, v430, v431);
      sub_1E3952C88();
      OUTLINED_FUNCTION_40_48(v432, v433, v434, v435);
      v436 = OUTLINED_FUNCTION_104_9();
      v437 = sub_1E3C3DE00(v436);
      OUTLINED_FUNCTION_7_21(v437, v438, v439, v440, v441, v442, v443, v444, v2552, v2760, v2968, v3172, v3378, v3584, v3790, v3998, v4206, v4409, v4617, v4825, v5033, v5241, v5449, v5657, v5864, v6071, v6278, v6485, v6692, v6899, v7102, v7305, v7508, v7711, v7909, v8077, v8094, v8111, v8128, v8145, v8162, v8179, v8196, v8213, v8230, v8247, v8264, v8281, v8298, v8315, v8332, v8349, v8366, v8383, v8400, v8417, v8434, v8451, v8468, v8485, v8502, v8519, v8536);
      v453 = OUTLINED_FUNCTION_0_211(v445, v446, v447, v448, v449, v450, v451, v452, v2553, v2761, v2969, v3173, v3379, v3585, v3791, v3999, v4207, v4410, v4618, v4826, v5034, v5242, v5450, v5658, v5865, v6072, v6279, v6486, v6693, v6900, v7103, v7306, v7509, v7712, v7910);
      OUTLINED_FUNCTION_159_2(v453, v454);
      v463 = OUTLINED_FUNCTION_64_20(v455, v456, v457, v458, v459, v460, v461, v462, v2554, v2762, v2970, v3174, v3380, v3586, v3792, v4000, v4208, v4411, v4619, v4827, v5035, v5243, v5451, v5659, v5866, v6073, v6280, v6487, v6694, v6901, v7104, v7307, v7510, v7713, v7911);
      memcpy(v463, v464, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_34_6();
      v466 = *(v465 + 1600);
      v475 = OUTLINED_FUNCTION_19_88(v467, v468, v469, v470, v471, v472, v473, v474, v2555, v2763, v2971, v3175, v3381, v3587, v3793, v4001, v4209, v4412, v4620, v4828, v5036, v5244, v5452, v5660, v5867, v6074, v6281, v6488, v6695, v6902, v7105, v7308, v7511, v7714, v7912);
      (v466)(v475);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v8129) = 1;
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v476, v477, v478, v479);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v480, v481, v482, v483);
      sub_1E3952C88();
      OUTLINED_FUNCTION_9_113(v484, v485, v486, v487);
      v488 = OUTLINED_FUNCTION_118_8();
      sub_1E3C3DE00(v488);
      OUTLINED_FUNCTION_42_50();
      v489 = sub_1E3C3DE00(v50);
      OUTLINED_FUNCTION_48_33(v489, v490, v491, v492, v493, v494, v495, v496, v2556, v2764, v2972, v3176, v3382, v3588, v3794, v4002, v4210, v4413, v4621, v4829, v5037, v5245, v5453, v5661, v5868, v6075, v6282, v6489, v6696, v6903, v7106, v7309, v7512, v7715, v7913, v8078, v8095, v8112, v8129, v8146, v8163, v8180, v8197, v8214, v8231, v8248, v8265, v8282, v8299, v8316, v8333, v8350, v8367, v8384, v8401, v8418, v8435, v8452, v8469, v8486, v8503, v8520, v8537);
      v505 = OUTLINED_FUNCTION_3_160(v497, v498, v499, v500, v501, v502, v503, v504, v2557, v2765, v2973, v3177, v3383, v3589, v3795, v4003, v4211, v4414, v4622, v4830, v5038, v5246, v5454, v5662, v5869, v6076, v6283, v6490, v6697, v6904, v7107, v7310, v7513, v7716, v7914);
      sub_1E3C2FCB8(v505, v506);
      v515 = OUTLINED_FUNCTION_64_20(v507, v508, v509, v510, v511, v512, v513, v514, v2558, v2766, v2974, v3178, v3384, v3590, v3796, v4004, v4212, v4415, v4623, v4831, v5039, v5247, v5455, v5663, v5870, v6077, v6284, v6491, v6698, v6905, v7108, v7311, v7514, v7717, v7915);
      memcpy(v515, v516, 0xE9uLL);
      v517 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v517, v518, v519, v520, v521, v522, v523, v524, v2559, v2767, v2975, v3179, v3385, v3591, v3797, v4005, v4213, v4416, v4624, v4832, v5040, v5248, v5456, v5664, v5871, v6078, v6285, v6492, v6699, v6906, v7109, v7312, v7515, v7718, v7916);
      OUTLINED_FUNCTION_130_10();
      v466();
      OUTLINED_FUNCTION_139_8();
      OUTLINED_FUNCTION_36_44();
      OUTLINED_FUNCTION_119_6();
      v526 = OUTLINED_FUNCTION_53_31(v525);
      sub_1E3C3DE00(v526);
      v527 = OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00(v527);
      OUTLINED_FUNCTION_26_72();
      v536 = OUTLINED_FUNCTION_6_138(v528, v529, v530, v531, v532, v533, v534, v535, v2560, v2768, v2976, v3180, v3386, v3592, v3798, v4006, v4214, v4417, v4625, v4833, v5041, v5249, v5457, v5665, v5872, v6079, v6286, v6493, v6700, v6907, v7110, v7313, v7516, v7719, v7917);
      OUTLINED_FUNCTION_102_13(v536, v537);
      v546 = OUTLINED_FUNCTION_64_20(v538, v539, v540, v541, v542, v543, v544, v545, v2561, v2769, v2977, v3181, v3387, v3593, v3799, v4007, v4215, v4418, v4626, v4834, v5042, v5250, v5458, v5666, v5873, v6080, v6287, v6494, v6701, v6908, v7111, v7314, v7517, v7720, v7918);
      memcpy(v546, v547, 0x59uLL);
      v548 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v548, v549, v550, v551, v552, v553, v554, v555, v2562, v2770, v2978, v3182, v3388, v3594, v3800, v4008, v4216, v4419, v4627, v4835, v5043, v5251, v5459, v5667, v5874, v6081, v6288, v6495, v6702, v6909, v7112, v7315, v7518, v7721, v7919);
      OUTLINED_FUNCTION_96_13();
      v466();
      OUTLINED_FUNCTION_139_8();
      *v8550 = 0x407C600000000000;
      v8550[8] = 0;
      OUTLINED_FUNCTION_103_9();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00(v4);
      v556 = OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00(v556);
      OUTLINED_FUNCTION_26_72();
      OUTLINED_FUNCTION_180_3();
      OUTLINED_FUNCTION_116_7();
      LOBYTE(v4420) = v557;
      v567 = OUTLINED_FUNCTION_10_107(v558, v559, v560, v561, v562, v563, v564, v565, v2563, v2771, v2979, v3183, v3389, v3595, v3801, v4009, v566, v4420, v4628, v4836, v5044, v5252, v5460, v5668, v5875, v6082, v6289, v6496, v6703, v6910, v7113, v7316, v7519, v7722, v7920);
      sub_1E3C2FCB8(v567, v568);
      v577 = OUTLINED_FUNCTION_64_20(v569, v570, v571, v572, v573, v574, v575, v576, v2564, v2772, v2980, v3184, v3390, v3596, v3802, v4010, v4217, v4421, v4629, v4837, v5045, v5253, v5461, v5669, v5876, v6083, v6290, v6497, v6704, v6911, v7114, v7317, v7520, v7723, v7921);
      memcpy(v577, v578, 0x59uLL);
      v579 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v579, v580, v581, v582, v583, v584, v585, v586, v2565, v2773, v2981, v3185, v3391, v3597, v3803, v4011, v4218, v4422, v4630, v4838, v5046, v5254, v5462, v5670, v5877, v6084, v6291, v6498, v6705, v6912, v7115, v7318, v7521, v7724, v7922);
      OUTLINED_FUNCTION_129_8();
      v466();
      OUTLINED_FUNCTION_128_7();
      v587 = sub_1E3C3DE00(&qword_1F5D549D8);
      v595 = OUTLINED_FUNCTION_0_211(v587, v588, v589, v590, v591, v592, v593, v594, v2566, v2774, v2982, v3186, v3392, v3598, v3804, v4012, v4219, v4423, v4631, v4839, v5047, v5255, v5463, v5671, v5878, v6085, v6292, v6499, v6706, v6913, v7116, v7319, v7522, v7725, v7923);
      sub_1E3C2FCB8(v595, v596);
      OUTLINED_FUNCTION_10_100();
      v597 = OUTLINED_FUNCTION_18();
      v605 = OUTLINED_FUNCTION_21_74(v597, v598, v599, v600, v601, v602, v603, v604, v2567, v2775, v2983, v3187, v3393, v3599, v3805, v4013, v4220, v4424, v4632, v4840, v5048, v5256, v5464, v5672, v5879, v6086, v6293, v6500, v6707, v6914, v7117, v7320, v7523, v7726, v7924);
      (v466)(v605, 48);
      OUTLINED_FUNCTION_200_1();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_110();
      sub_1E3C3DE00(&qword_1F5D54AF8);
      OUTLINED_FUNCTION_111_7();
      sub_1E3C3DE00(&qword_1F5D54AF8);
      OUTLINED_FUNCTION_196_0();
      v606 = sub_1E3C3DE00(&qword_1F5D54AF8);
      LOBYTE(v4221) = v5465;
      v614 = OUTLINED_FUNCTION_10_107(v606, v607, v608, v609, v610, v611, v612, v613, v2568, v2776, v2984, v3188, v3394, v3600, v3806, v4014, v4221, v4425, v4633, v4841, v5049, v5257, v5465, v5673, v5880, v6087, v6294, v6501, v6708, v6915, v7118, v7321, v7524, v7727, v7925);
      sub_1E3C2FCB8(v614, v615);
      OUTLINED_FUNCTION_10_100();
      v616 = OUTLINED_FUNCTION_18();
      v624 = OUTLINED_FUNCTION_21_74(v616, v617, v618, v619, v620, v621, v622, v623, v2569, v2777, v2985, v3189, v3395, v3601, v3807, v4015, v4222, v4426, v4634, v4842, v5050, v5258, v5466, v5674, v5881, v6088, v6295, v6502, v6709, v6916, v7119, v7322, v7525, v7728, v7926);
      (v466)(v624, 54);
      sub_1E3CD8738();
      OUTLINED_FUNCTION_155_5();
      OUTLINED_FUNCTION_35_44(0x4062C00000000000uLL);
      sub_1E3C3DE00(v4);
      OUTLINED_FUNCTION_49_39();
      v625 = OUTLINED_FUNCTION_99_9();
      sub_1E3C3DE00(v625);
      OUTLINED_FUNCTION_31_51();
      v626 = OUTLINED_FUNCTION_177_2();
      sub_1E3C3DE00(v626);
      OUTLINED_FUNCTION_76_15();
      v635 = OUTLINED_FUNCTION_6_138(v627, v628, v629, v630, v631, v632, v633, v634, v2570, v2778, v2986, v3190, v3396, v3602, v3808, v4016, v4223, v4427, v4635, v4843, v5051, v5259, v5467, v5675, v5882, v6089, v6296, v6503, v6710, v6917, v7120, v7323, v7526, v7729, v7927);
      sub_1E3C2FCB8(v635, v636);
      v645 = OUTLINED_FUNCTION_64_20(v637, v638, v639, v640, v641, v642, v643, v644, v2571, v2779, v2987, v3191, v3397, v3603, v3809, v4017, v4224, v4428, v4636, v4844, v5052, v5260, v5468, v5676, v5883, v6090, v6297, v6504, v6711, v6918, v7121, v7324, v7527, v7730, v7928);
      memcpy(v645, v646, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v648 = *(v647 + 1600);
      v657 = OUTLINED_FUNCTION_6_126(v649, v650, v651, v652, v653, v654, v655, v656, v2572, v2780, v2988, v3192, v3398, v3604, v3810, v4018, v4225, v4429, v4637, v4845, v5053, v5261, v5469, v5677, v5884, v6091, v6298, v6505, v6712, v6919, v7122, v7325, v7528, v7731, v7929);
      (v648)(v657, 3);
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_36_44();
      OUTLINED_FUNCTION_119_6();
      v659 = OUTLINED_FUNCTION_53_31(v658);
      sub_1E3C3DE00(v659);
      v660 = OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00(v660);
      OUTLINED_FUNCTION_26_72();
      v669 = OUTLINED_FUNCTION_6_138(v661, v662, v663, v664, v665, v666, v667, v668, v2573, v2781, v2989, v3193, v3399, v3605, v3811, v4019, v4226, v4430, v4638, v4846, v5054, v5262, v5470, v5678, v5885, v6092, v6299, v6506, v6713, v6920, v7123, v7326, v7529, v7732, v7930);
      OUTLINED_FUNCTION_102_13(v669, v670);
      v679 = OUTLINED_FUNCTION_64_20(v671, v672, v673, v674, v675, v676, v677, v678, v2574, v2782, v2990, v3194, v3400, v3606, v3812, v4020, v4227, v4431, v4639, v4847, v5055, v5263, v5471, v5679, v5886, v6093, v6300, v6507, v6714, v6921, v7124, v7327, v7530, v7733, v7931);
      memcpy(v679, v680, 0x59uLL);
      v681 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v681, v682, v683, v684, v685, v686, v687, v688, v2575, v2783, v2991, v3195, v3401, v3607, v3813, v4021, v4228, v4432, v4640, v4848, v5056, v5264, v5472, v5680, v5887, v6094, v6301, v6508, v6715, v6922, v7125, v7328, v7531, v7734, v7932);
      OUTLINED_FUNCTION_96_13();
      v648();
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_103_9();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00(v4);
      v689 = OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00(v689);
      OUTLINED_FUNCTION_26_72();
      OUTLINED_FUNCTION_180_3();
      OUTLINED_FUNCTION_116_7();
      LOBYTE(v4433) = v690;
      v700 = OUTLINED_FUNCTION_10_107(v691, v692, v693, v694, v695, v696, v697, v698, v2576, v2784, v2992, v3196, v3402, v3608, v3814, v4022, v699, v4433, v4641, v4849, v5057, v5265, v5473, v5681, v5888, v6095, v6302, v6509, v6716, v6923, v7126, v7329, v7532, v7735, v7933);
      sub_1E3C2FCB8(v700, v701);
      v710 = OUTLINED_FUNCTION_64_20(v702, v703, v704, v705, v706, v707, v708, v709, v2577, v2785, v2993, v3197, v3403, v3609, v3815, v4023, v4229, v4434, v4642, v4850, v5058, v5266, v5474, v5682, v5889, v6096, v6303, v6510, v6717, v6924, v7127, v7330, v7533, v7736, v7934);
      memcpy(v710, v711, 0x59uLL);
      v712 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v712, v713, v714, v715, v716, v717, v718, v719, v2578, v2786, v2994, v3198, v3404, v3610, v3816, v4024, v4230, v4435, v4643, v4851, v5059, v5267, v5475, v5683, v5890, v6097, v6304, v6511, v6718, v6925, v7128, v7331, v7534, v7737, v7935);
      OUTLINED_FUNCTION_129_8();
      v648();
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v8130) = v410;
      v720 = OUTLINED_FUNCTION_215_0();
      OUTLINED_FUNCTION_16_93(v720, v721, v722, v723);
      v724 = OUTLINED_FUNCTION_215_0();
      OUTLINED_FUNCTION_4_167(v724, v725, v726, v727);
      v728 = sub_1E3952C10(20.0, 6.0);
      OUTLINED_FUNCTION_9_113(v728, v729, v730, v731);
      v732 = sub_1E3952C10(10.0, 4.0);
      OUTLINED_FUNCTION_40_48(v732, v733, v734, v735);
      v744 = OUTLINED_FUNCTION_0_211(v736, v737, v738, v739, v740, v741, v742, v743, v2579, v2787, v2995, v3199, v3405, v3611, v3817, v4025, v4231, v4436, v4644, v4852, v5060, v5268, v5476, v5684, v5891, v6098, v6305, v6512, v6719, v6926, v7129, v7332, v7535, v7738, v7936);
      OUTLINED_FUNCTION_181_1(v744, v745);
      v754 = OUTLINED_FUNCTION_64_20(v746, v747, v748, v749, v750, v751, v752, v753, v2580, v2788, v2996, v3200, v3406, v3612, v3818, v4026, v4232, v4437, v4645, v4853, v5061, v5269, v5477, v5685, v5892, v6099, v6306, v6513, v6720, v6927, v7130, v7333, v7536, v7739, v7937);
      memcpy(v754, v755, 0xE9uLL);
      v756 = OUTLINED_FUNCTION_18();
      v764 = OUTLINED_FUNCTION_15_105(v756, v757, v758, v759, v760, v761, v762, v763, v2581, v2789, v2997, v3201, v3407, v3613, v3819, v4027, v4233, v4438, v4646, v4854, v5062, v5270, v5478, v5686, v5893, v6100, v6307, v6514, v6721, v6928, v7131, v7334, v7537, v7740, v7938);
      (v648)(v764);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      __asm { FMOV            V0.2D, #20.0 }

      *&v8550[8] = _Q0;
      *v8550 = 0x4024000000000000;
      *&v8550[24] = 0x4034000000000000;
      v8551 = 0;
      *&v8548[8] = _Q0;
      *v8548 = 0x4024000000000000;
      *&v8548[24] = 0x4034000000000000;
      v8549 = 0;
      sub_1E3952C58();
      OUTLINED_FUNCTION_40_48(v769, v770, v771, v772);
      v773 = OUTLINED_FUNCTION_104_9();
      v774 = sub_1E3C3DE00(v773);
      OUTLINED_FUNCTION_7_21(v774, v775, v776, v777, v778, v779, v780, v781, v2582, v2790, v2998, v3202, v3408, v3614, v3820, v4028, v4234, v4439, v4647, v4855, v5063, v5271, v5479, v5687, v5894, v6101, v6308, v6515, v6722, v6929, v7132, v7335, v7538, v7741, v7939, v8079, v8096, v8113, v8130, v8147, v8164, v8181, v8198, v8215, v8232, v8249, v8266, v8283, v8300, v8317, v8334, v8351, v8368, v8385, v8402, v8419, v8436, v8453, v8470, v8487, v8504, v8521, v8538);
      v790 = OUTLINED_FUNCTION_0_211(v782, v783, v784, v785, v786, v787, v788, v789, v2583, v2791, v2999, v3203, v3409, v3615, v3821, v4029, v4235, v4440, v4648, v4856, v5064, v5272, v5480, v5688, v5895, v6102, v6309, v6516, v6723, v6930, v7133, v7336, v7539, v7742, v7940);
LABEL_7:
      sub_1E3C2FCB8(v790, v791);
      v1444 = OUTLINED_FUNCTION_64_20(v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v2584, v2792, v3000, v3204, v3410, v3616, v3822, v4030, v4236, v4441, v4649, v4857, v5065, v5273, v5481, v5689, v5896, v6103, v6310, v6517, v6724, v6931, v7134, v7337, v7540, v7743, v7941);
      memcpy(v1444, v1445, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1454 = OUTLINED_FUNCTION_6_126(v1446, v1447, v1448, v1449, v1450, v1451, v1452, v1453, v2638, v2846, v3053, v3258, v3464, v3670, v3876, v4084, v4288, v4495, v4703, v4911, v5119, v5327, v5535, v5743, v5950, v6157, v6364, v6571, v6778, v6985, v7188, v7391, v7594, v7797, v7994);
      v1456 = 0;
      goto LABEL_24;
    case 8:
      sub_1E3CD4568();
      goto LABEL_25;
    default:
      LOBYTE(v8072) = 1;
      OUTLINED_FUNCTION_37_48();
      OUTLINED_FUNCTION_206_0();
      OUTLINED_FUNCTION_61_22(v2310);
      v2319 = OUTLINED_FUNCTION_1_194(v2311, v2312, v2313, v2314, v2315, v2316, v2317, v2318, v2519, v2727, v2935, v3139, v3345, v3551, v3757, v3965, v4173, v4376, v4584, v4792, v5000, v5208, v5416, v5624, v5831, v6038, v6245, v6452, v6659, v6866, v7069, v7272, v7475, v7678, 0);
      OUTLINED_FUNCTION_179_2(v2319, v2320);
      v2329 = OUTLINED_FUNCTION_64_20(v2321, v2322, v2323, v2324, v2325, v2326, v2327, v2328, v2711, v2919, v3123, v3329, v3535, v3741, v3949, v4157, v4360, v4568, v4776, v4984, v5192, v5400, v5608, v5815, v6022, v6229, v6436, v6643, v6850, v7053, v7256, v7459, v7662, v7865, v8058);
      memcpy(v2329, v2330, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_0();
      v2332 = (v2331 + 1600);
      v2333 = *(v2331 + 1600);
      OUTLINED_FUNCTION_32_55(v2334, v2335, v2336, v2337, v2338, v2339, v2340, v2341, v2712, v2920, v3124, v3330, v3536, v3742, v3950, v4158, v4361, v4569, v4777, v4985, v5193, v5401, v5609, v5816, v6023, v6230, v6437, v6644, v6851, v7054, v7257, v7460, v7663, v7866, v8059);
      OUTLINED_FUNCTION_176_4();
      v2333();
      OUTLINED_FUNCTION_101_9();
      OUTLINED_FUNCTION_39_44();
      v2342 = OUTLINED_FUNCTION_150_5();
      v2346 = OUTLINED_FUNCTION_65_18(v2342, v2343, v2344, v2345);
      OUTLINED_FUNCTION_16_93(v2346, v2347, v2348, v2349);
      v2350 = OUTLINED_FUNCTION_150_5();
      OUTLINED_FUNCTION_4_167(v2350, v2351, v2352, v2353);
      type metadata accessor for UIEdgeInsets();
      v2355 = v2354;
      sub_1E3C3DE00(v2354);
      OUTLINED_FUNCTION_12_103();
      sub_1E3C3DE00(v2355);
      OUTLINED_FUNCTION_7_154(v2356, v2357, v2358, v2359, v2360, v2361, v2362, v2363, v2713, v2921, v3125, v3331, v3537, v3743, v3951, v4159, v4362, v4570, v4778, v4986, v5194, v5402, v5610, v5817, v6024, v6231, v6438, v6645, v6852, v7055, v7258, v7461, v7664, v7867, v8060, *&v8072, *&v8089, *&v8106, *&v8123, *&v8140, *&v8157, *&v8174, *&v8191, *&v8208, *&v8225, *&v8242, *&v8259, *&v8276, *&v8293, *&v8310, *&v8327, *&v8344, *&v8361, *&v8378, *&v8395, *&v8412, *&v8429, *&v8446, *&v8463, *&v8480, *&v8497, *&v8514, *&v8531);
      sub_1E3C2FCB8(v2364, v2365);
      v2374 = OUTLINED_FUNCTION_64_20(v2366, v2367, v2368, v2369, v2370, v2371, v2372, v2373, v2714, v2922, v3126, v3332, v3538, v3744, v3952, v4160, v4363, v4571, v4779, v4987, v5195, v5403, v5611, v5818, v6025, v6232, v6439, v6646, v6853, v7056, v7259, v7462, v7665, v7868, v8061);
      memcpy(v2374, v2375, 0xE9uLL);
      v2376 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_15_105(v2376, v2377, v2378, v2379, v2380, v2381, v2382, v2383, v2715, v2923, v3127, v3333, v3539, v3745, v3953, v4161, v4364, v4572, v4780, v4988, v5196, v5404, v5612, v5819, v6026, v6233, v6440, v6647, v6854, v7057, v7260, v7463, v7666, v7869, v8062);
      OUTLINED_FUNCTION_198();
      v2333();
      v2384 = v2[16];
      OUTLINED_FUNCTION_36();
      v2385 = OUTLINED_FUNCTION_133();
      v2386(v2385);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_81_12();
      v2387 = *(*v2384 + 680);
      v2388 = v2332;
      v2387(v2332);
      OUTLINED_FUNCTION_36();
      (*(v2389 + 2008))(1);
      OUTLINED_FUNCTION_36();
      (*(v2390 + 1984))(5);
      OUTLINED_FUNCTION_36();
      (*(v2391 + 1720))(7);
      OUTLINED_FUNCTION_36();
      (*(v2392 + 1792))(7);
      OUTLINED_FUNCTION_135_3();
      LOBYTE(v8555) = 2;
      v8550[0] = 1;
      v8548[0] = 3;
      v2393 = OUTLINED_FUNCTION_94_12();
      sub_1E3C3DE00(v2393);
      OUTLINED_FUNCTION_111_7();
      v2402 = OUTLINED_FUNCTION_1_194(v2394, v2395, v2396, v2397, v2398, v2399, v2400, v2401, v2716, v2924, v3128, v3334, v3540, v3746, v3954, v4162, v4365, v4573, v4781, v4989, v5197, v5405, v5613, v5820, v6027, v6234, v6441, v6648, v6855, v7058, v7261, v7464, v7667, v7870, v8063);
      OUTLINED_FUNCTION_178_3(v2402, v2403);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2412 = OUTLINED_FUNCTION_50_34(v2404, v2405, v2406, v2407, v2408, v2409, v2410, v2411, v2717, v2925, v3129, v3335, v3541, v3747, v3955, v4163, v4366, v4574, v4782, v4990, v5198, v5406, v5614, v5821, v6028, v6235, v6442, v6649, v6856, v7059, v7262, v7465, v7668, v7871, v8064);
      v2413(v2412);
      OUTLINED_FUNCTION_36();
      (*(v2414 + 1808))(1);
      OUTLINED_FUNCTION_36();
      (*(v2415 + 512))(1);
      OUTLINED_FUNCTION_75_16();
      OUTLINED_FUNCTION_107_7(0x4069000000000000);
      OUTLINED_FUNCTION_69_20(v2416);
      OUTLINED_FUNCTION_78_15(0x4077C00000000000uLL);
      OUTLINED_FUNCTION_189_2();
      v2425 = OUTLINED_FUNCTION_1_194(v2417, v2418, v2419, v2420, v2421, v2422, v2423, v2424, v2718, v2926, v3130, v3336, v3542, v3748, v3956, v4164, v4367, v4575, v4783, v4991, v5199, v5407, v5615, v5822, v6029, v6236, v6443, v6650, v6857, v7060, v7263, v7466, v7669, v7872, v8065);
      OUTLINED_FUNCTION_179_2(v2425, v2426);
      v2435 = OUTLINED_FUNCTION_64_20(v2427, v2428, v2429, v2430, v2431, v2432, v2433, v2434, v2719, v2927, v3131, v3337, v3543, v3749, v3957, v4165, v4368, v4576, v4784, v4992, v5200, v5408, v5616, v5823, v6030, v6237, v6444, v6651, v6858, v7061, v7264, v7467, v7670, v7873, v8066);
      memcpy(v2435, v2436, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2438 = *(v2437 + 1600);
      v2447 = OUTLINED_FUNCTION_32_55(v2439, v2440, v2441, v2442, v2443, v2444, v2445, v2446, v2720, v2928, v3132, v3338, v3544, v3750, v3958, v4166, v4369, v4577, v4785, v4993, v5201, v5409, v5617, v5824, v6031, v6238, v6445, v6652, v6859, v7062, v7265, v7468, v7671, v7874, v8067);
      v2438(v2447);
      OUTLINED_FUNCTION_107_7(0x404E000000000000);
      OUTLINED_FUNCTION_69_20(v2448);
      OUTLINED_FUNCTION_206_0();
      OUTLINED_FUNCTION_61_22(v2449);
      v2458 = OUTLINED_FUNCTION_1_194(v2450, v2451, v2452, v2453, v2454, v2455, v2456, v2457, v2721, v2929, v3133, v3339, v3545, v3751, v3959, v4167, v4370, v4578, v4786, v4994, v5202, v5410, v5618, v5825, v6032, v6239, v6446, v6653, v6860, v7063, v7266, v7469, v7672, v7875, 0);
      OUTLINED_FUNCTION_179_2(v2458, v2459);
      v2468 = OUTLINED_FUNCTION_64_20(v2460, v2461, v2462, v2463, v2464, v2465, v2466, v2467, v2722, v2930, v3134, v3340, v3546, v3752, v3960, v4168, v4371, v4579, v4787, v4995, v5203, v5411, v5619, v5826, v6033, v6240, v6447, v6654, v6861, v7064, v7267, v7470, v7673, v7876, v8068);
      memcpy(v2468, v2469, 0x59uLL);
      v2470 = OUTLINED_FUNCTION_18();
      v2478 = OUTLINED_FUNCTION_21_74(v2470, v2471, v2472, v2473, v2474, v2475, v2476, v2477, v2723, v2931, v3135, v3341, v3547, v3753, v3961, v4169, v4372, v4580, v4788, v4996, v5204, v5412, v5620, v5827, v6034, v6241, v6448, v6655, v6862, v7065, v7268, v7471, v7674, v7877, v8069);
      (v2438)(v2478, 8);
      v2479 = v2[13];
      OUTLINED_FUNCTION_111();
      v2481 = *(v2480 + 200);
      v2482 = v2481();
      v2483 = OUTLINED_FUNCTION_140(v2482);
      if (!_ZF)
      {
        v2483 = 0.0;
      }

      v2484 = [v2479 setMaxWidth_];
      v2485 = v2[14];
      if (v2485)
      {
        v2486 = (v2481)(v2484);
        v2487 = OUTLINED_FUNCTION_140(v2486);
        if (!_ZF)
        {
          v2487 = 0.0;
        }

        [v2485 setMaxWidth_];
      }

      sub_1E3CD8738();
      OUTLINED_FUNCTION_107_7(0x4074000000000000);
      *v8550 = 0;
      v8550[8] = 1;
      *v8548 = 0;
      v8548[8] = 1;
      v2496 = OUTLINED_FUNCTION_1_194(v2488, v2489, v2490, v2491, v2492, v2493, v2494, v2495, v2724, v2932, v3136, v3342, v3548, v3754, v3962, v4170, v4373, v4581, v4789, v4997, v5205, v5413, v5621, v5828, v6035, v6242, v6449, v6656, v6863, v7066, v7269, v7472, v7675, v7878, 0);
      OUTLINED_FUNCTION_179_2(v2496, v2497);
      v2506 = OUTLINED_FUNCTION_64_20(v2498, v2499, v2500, v2501, v2502, v2503, v2504, v2505, v2725, v2933, v3137, v3343, v3549, v3755, v3963, v4171, v4374, v4582, v4790, v4998, v5206, v5414, v5622, v5829, v6036, v6243, v6450, v6657, v6864, v7067, v7270, v7473, v7676, v7879, v8070);
      memcpy(v2506, v2507, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1454 = OUTLINED_FUNCTION_32_55(v2508, v2509, v2510, v2511, v2512, v2513, v2514, v2515, v2726, v2934, v3138, v3344, v3550, v3756, v3964, v4172, v4375, v4583, v4791, v4999, v5207, v5415, v5623, v5830, v6037, v6244, v6451, v6658, v6865, v7068, v7271, v7474, v7677, v7880, v8071);
LABEL_24:
      v1455(v1454, v1456);
LABEL_25:
      sub_1E3C37CBC(v2[16], 23);
      sub_1E3C37CBC(v2[17], 24);
      sub_1E3C37CBC(v2[18], 22);
      sub_1E3C37CBC(v2[19], 15);
      sub_1E3C37CBC(v2[21], 16);
      sub_1E3C37EC8(v2[22], &unk_1F5D7E7B8);
      sub_1E3C37CBC(v2[23], 39);
      sub_1E3C37CBC(v2[24], 40);
      sub_1E3C37EC8(v2[26], &unk_1F5D7E7E0);
      sub_1E3C37CBC(v2[25], 91);
      sub_1E3C37CBC(v2[36], 229);
      if (TVAppFeature.isEnabled.getter(10))
      {
        OUTLINED_FUNCTION_111();
        v2517 = (*(v2516 + 2112))();
      }

      else
      {
        v2517 = sub_1E3CCE874();
      }

      sub_1E3C37CBC(v2517, 234);

      result = TVAppFeature.isEnabled.getter(20);
      if (result)
      {
        sub_1E3C37CBC(v2[20], 30);
        return sub_1E3C37CBC(v2[29], 47);
      }

      return result;
  }
}

void sub_1E3CD2A48()
{
  *(v0 + 121) = 13;
  type metadata accessor for TextLayout();
  *(v0 + 128) = sub_1E383BCC0();
  *(v0 + 136) = sub_1E383BCC0();
  *(v0 + 144) = sub_1E383BCC0();
  *(v0 + 152) = sub_1E383BCC0();
  *(v0 + 160) = sub_1E383BCC0();
  *(v0 + 168) = sub_1E383BCC0();
  *(v0 + 176) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v0 + 184) = sub_1E3BD61D8();
  *(v0 + 192) = sub_1E3BD61D8();
  type metadata accessor for MediaShowcasingButtonsLayout();
  *(v0 + 200) = sub_1E3EEAD4C();
  type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  *(v0 + 208) = sub_1E3BBD964(0, v1 & 1, v2, v3 & 1);
  v4 = j__OUTLINED_FUNCTION_18();
  v5 = sub_1E3B050E8();
  v6 = j__OUTLINED_FUNCTION_18();
  *(v0 + 216) = sub_1E3BBD964(2, v4 & 1, v5, v6 & 1);
  *(v0 + 224) = 0x4046000000000000;
  *(v0 + 232) = sub_1E3BD61D8();
  type metadata accessor for MediaShowcasingScoreboardLayout();
  *(v0 + 288) = OUTLINED_FUNCTION_212();
  *(v0 + 296) = 3;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  v7 = [objc_opt_self() isTV];
  v8 = 8.0;
  if (v7)
  {
    v8 = 18.0;
  }

  *(v0 + 320) = v8;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3CD2BF4(__n128 a1, __n128 a2)
{
  v3 = v2;
  nullsub_1(a1, a2);
  result = sub_1E385050C();
  if (result)
  {
    type metadata accessor for TextBadgeLayout();
    result = swift_dynamicCastClass();
    if (result)
    {
      v5 = result;
      OUTLINED_FUNCTION_14_0();
      v3[31] = v5;
      swift_retain_n();

      OUTLINED_FUNCTION_36();
      v7 = (*(v6 + 2024))(1);
      (*(*v3 + 1992))(v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B28);
      sub_1E4148DE0(sub_1E3ACC738);

      sub_1E3CD2D48();
    }
  }

  return result;
}

uint64_t sub_1E3CD2D48()
{
  v1 = sub_1E42012F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 1992);
  result = v6();
  if (result)
  {
    sub_1E3952C94();
    v63 = v8;
    v64 = v9;
    v65 = v10;
    v66 = v11;
    v67 = 0;
    sub_1E3952C94();
    v58 = v12;
    v59 = v13;
    v60 = v14;
    v61 = v15;
    v62 = 0;
    sub_1E3952C94();
    v53 = v16;
    v54 = v17;
    v55 = v18;
    v56 = v19;
    v57 = 0;
    TVAppFeature.isEnabled.getter(20);
    sub_1E3952C94();
    v48 = v20;
    v49 = v21;
    v50 = v22;
    v51 = v23;
    v52 = 0;
    sub_1E3952C94();
    v42[0] = v24;
    v42[1] = v25;
    v42[2] = v26;
    v42[3] = v27;
    LOBYTE(v42[4]) = 0;
    type metadata accessor for UIEdgeInsets();
    v29 = v28;
    sub_1E3C3DE00(v28);
    v43[0] = v45;
    v43[1] = v46;
    v44 = v47;
    sub_1E3C2FCB8(v43, v68);
    memcpy(v42, v68, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v30 + 1600))(v42, 0, v31 & 1, v29);
  }

  if (*(v0 + 120) == 4)
  {
    v32 = (v6)(result);
    if (v32)
    {
      OUTLINED_FUNCTION_26_0();
      v34 = (*(v33 + 1848))();

      if (v34)
      {
        OUTLINED_FUNCTION_8();
        v35 = OUTLINED_FUNCTION_8_5();
        v36(v35);
      }
    }

    v37 = (v6)(v32);
    if (v37)
    {
      OUTLINED_FUNCTION_26_0();
      v39 = (*(v38 + 1848))();

      if (v39)
      {
        OUTLINED_FUNCTION_8();
        (*(v40 + 1984))(1);
      }
    }

    result = (v6)(v37);
    if (result)
    {
      (*(v2 + 104))(v4, *MEMORY[0x1E697E6C8], v1);
      OUTLINED_FUNCTION_36();
      (*(v41 + 2000))(v4);
    }
  }

  return result;
}

void sub_1E3CD3134(uint64_t a1, void *a2)
{
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0 || ((v4 = *(v2 + 120), v5 = v4 > 0xA, v6 = (1 << v4) & 0x630, !v5) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v18 = OUTLINED_FUNCTION_67_17();
    sub_1E3C35CF4(v18, v19);
    OUTLINED_FUNCTION_3_11();
    (*(v20 + 2112))();
    v21 = OUTLINED_FUNCTION_67_17();
    sub_1E392B4E0(v21, v22, v23);

    OUTLINED_FUNCTION_3_11();
    (*(v24 + 1968))();
    v25 = OUTLINED_FUNCTION_67_17();
    sub_1E3D379CC(v25, v26, v27);
  }

  else
  {
    if (a2)
    {
      a2 = sub_1E4206A64();
    }

    v28 = a2;
    v8 = OUTLINED_FUNCTION_67_17();
    sub_1E3C35CF4(v8, v9);
    OUTLINED_FUNCTION_3_11();
    (*(v10 + 2112))();
    v11 = OUTLINED_FUNCTION_67_17();
    sub_1E392B4E0(v11, v12, v13);

    OUTLINED_FUNCTION_3_11();
    (*(v14 + 1968))();
    v15 = OUTLINED_FUNCTION_67_17();
    sub_1E3D379CC(v15, v16, v17);
  }
}

uint64_t sub_1E3CD3394(char a1, double a2, double a3)
{
  v4 = v3;
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a2);
  v8 = *(*v3 + 456);
  v9 = v8();
  if (v9 == 7 || (LOBYTE(v95[0]) = v9, LOBYTE(v89) = 1, sub_1E3793D00(), (sub_1E4205E84() & 1) == 0) || (a1 & 1) != 0)
  {
    v10 = 0x4078900000000000;
  }

  else
  {
    v10 = 0x406FC00000000000;
  }

  OUTLINED_FUNCTION_188_1();
  v11 = MEMORY[0x1E69E7DE0];
  v12 = OUTLINED_FUNCTION_164_4();
  sub_1E3C3DE00(v12);
  OUTLINED_FUNCTION_85_13();
  sub_1E3C3DE00(v11);
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00(v11);
  OUTLINED_FUNCTION_45_43();
  sub_1E3C2FCB8(v13, v14);
  OUTLINED_FUNCTION_185_2(v15, v16, v17, v18, v19, v20, v21, v22, v89);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_43_44();
  v23();
  OUTLINED_FUNCTION_188_1();
  v91 = 0x406FC00000000000;
  v92 = 0;
  v24 = OUTLINED_FUNCTION_164_4();
  sub_1E3C3DE00(v24);
  OUTLINED_FUNCTION_85_13();
  sub_1E3C3DE00(v11);
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00(v11);
  OUTLINED_FUNCTION_45_43();
  sub_1E3C2FCB8(v25, v26);
  OUTLINED_FUNCTION_185_2(v27, v28, v29, v30, v31, v32, v33, v34, v89);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_43_44();
  v35();
  sub_1E3CD3B70();
  if (*(v3 + 120) & 0xFE) == 4 && (TVAppFeature.isEnabled.getter(20))
  {
    OUTLINED_FUNCTION_111();
    v37 = (*(v36 + 1560))();
    sub_1E3A24FDC(v37);
    v38 = *(v3 + 160);
    OUTLINED_FUNCTION_36();
    v40 = *(v39 + 1696);
    if (v41)
    {
      v40(17);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v42 = *(*v38 + 680);
      v43 = v11;
      v42(v11);
      OUTLINED_FUNCTION_36();
      (*(v44 + 2272))(1);
    }

    else
    {
      v40(14);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_81_12();
      v45 = *(*v38 + 680);
      v46 = v11;
      v45(v11);
      OUTLINED_FUNCTION_36();
      (*(v47 + 1792))(5);
    }
  }

  v90 = 1;
  v93 = 0;
  v94 = 1;
  v91 = v10;
  v92 = 0;
  v48 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_85_13();
  sub_1E3C3DE00(v48);
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00(v48);
  OUTLINED_FUNCTION_45_43();
  sub_1E3C2FCB8(v49, v50);
  OUTLINED_FUNCTION_185_2(v51, v52, v53, v54, v55, v56, v57, v58, 0);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_11();
  v61 = (*(v59 + 1600))(&v89, 4, v60 & 1, v48);
  (v8)(v61);
  OUTLINED_FUNCTION_3_11();
  (*(v62 + 464))();
  if (TVAppFeature.isEnabled.getter(20))
  {
    v63 = sub_1E3A2579C(a2);
    v64 = sub_1E3A24FDC(v63);
    v66 = v4[120];
    if (v64)
    {
      v65.n128_u64[0] = 26.0;
      if (v66 - 4 <= 6)
      {
        v65.n128_u64[0] = qword_1E42CA650[(v66 - 4)];
      }

      (*(*v4 + 1952))(v65);
    }

    else if (v66 > 0xA || (OUTLINED_FUNCTION_190_1(), v67))
    {
      OUTLINED_FUNCTION_111();
      v88.n128_u64[0] = 0x4050800000000000;
      (*(v87 + 1952))(v88);
    }

    else
    {
      v68 = [objc_opt_self() sharedInstance];
      v69 = [v68 mediaShowcaseConfig];

      [v69 heightThresholdForBottomPadding];
      v71 = v70;
      TVAppFeature.isEnabled.getter(10);
      OUTLINED_FUNCTION_9_2();
      if (v71 >= a3)
      {
        v74.n128_u64[0] = 0x4047000000000000;
        v75 = 34.0;
      }

      else
      {
        v74.n128_u64[0] = 0x4050800000000000;
        v75 = 42.0;
      }

      if (v72)
      {
        v74.n128_f64[0] = v75;
      }

      (*(v73 + 1952))(v74);
    }

    if ((TVAppFeature.isEnabled.getter(10) & 1) != 0 && v66 <= 0xA)
    {
      OUTLINED_FUNCTION_190_1();
      if (!v67)
      {
        OUTLINED_FUNCTION_111();
        v76 += 264;
        v77 = *v76;
        (*v76)();
        OUTLINED_FUNCTION_111();
        v79 = (*(v78 + 456))();
        if (v79 == 7 || (LOBYTE(v95[0]) = v79, LOBYTE(v89) = 1, sub_1E3793D00(), (sub_1E4205E84() & 1) == 0))
        {
          v80 = 1;
        }

        else
        {
          v80 = 2;
        }

        sub_1E392B18C(v80);

        (v77)(v81);
        sub_1E392DF94();

        (v77)(v82);
        v83 = *(MEMORY[0x1E69DDCE0] + 16);
        v95[0] = *MEMORY[0x1E69DDCE0];
        v95[1] = v83;
        v96 = 0;
        OUTLINED_FUNCTION_26_0();
        (*(v84 + 160))(v95);
      }
    }
  }

  OUTLINED_FUNCTION_111();
  (*(v85 + 2112))();
  sub_1E392C768(a2);
}

void sub_1E3CD3B70()
{
  v1 = v0;
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 248))();
  v5 = OUTLINED_FUNCTION_140(v4);
  if (!v6)
  {
    v5 = 340.0;
  }

  [v2 setMaxWidth_];
  OUTLINED_FUNCTION_36();
  if ((*(v7 + 456))() == 7)
  {
    v8 = 0;
  }

  else
  {
    sub_1E3793D00();
    v8 = sub_1E4205E84();
  }

  [v2 setCenterAlign_];
  sub_1E3CCE9B0();
  OUTLINED_FUNCTION_2_1();
  v10 = (*(v9 + 2048))();

  [v2 setLiveTextBadgeLayout_];

  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  [v2 setHighContrastBadgeTintColor_];

  v13 = [v2 textLayout];
  v14 = [v11 whiteColor];
  [v13 setHighContrastTintColor_];

  sub_1E3CCEA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v15 + 1832))(2);

  v16 = [v11 whiteColor];
  v17 = [v16 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v18 + 752))(v17);

  OUTLINED_FUNCTION_36();
  v20 = *(v19 + 2048);

  v22 = v20(v21);

  [v2 setTimeTextBadgeLayout_];

  if (v1[120] & 0xFE) == 4 && (TVAppFeature.isEnabled.getter(20))
  {
    v23 = (*v1 + 1560);
    v24 = *v23;
    v25 = (*v23)();
    sub_1E3A24FDC(v25);
    sub_1E3952C58();
    [v2 setMargin_];
    if (TVAppFeature.isEnabled.getter(20))
    {
      v26 = v24();
      [v2 updateLayoutForPhoneSizeClass_];
    }
  }
}

uint64_t sub_1E3CD3F50(int a1, double a2, double a3, double a4, double a5, double a6)
{
  OUTLINED_FUNCTION_8();
  (*(v12 + 1968))();
  sub_1E3D37C04(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1E3CD3FF8(void *a1)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 1968))();
  sub_1E3D38708(a1);
}

uint64_t sub_1E3CD4060()
{
}

id *sub_1E3CD4140()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3CD4228()
{
  v0 = sub_1E3CD4140();

  return MEMORY[0x1EEE6BDC0](v0, 328, 7);
}

unint64_t sub_1E3CD425C()
{
  result = qword_1ECF36E88;
  if (!qword_1ECF36E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E88);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for MediaShowcasingLayoutType(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 4)
    {
      v7 = v6 - 3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 8)
    {
      return (v7 - 7);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 10;
    if (a2 + 10 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 10);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaShowcasingLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF6)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF5)
  {
    v7 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3CD4434(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E3CD4448(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaShowcasingLayoutType.PostPlayType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3CD4568()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 512))(18);
  *&v3385 = 0x406C000000000000;
  BYTE8(v3385) = 0;
  OUTLINED_FUNCTION_69_20(0x407CC00000000000uLL);
  OUTLINED_FUNCTION_78_15(0x4071800000000000uLL);
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_49_39();
  v10 = OUTLINED_FUNCTION_23_67(v2, v3, v4, v5, v6, v7, v8, v9, v820, v888, v955, v1022, v1089, v1156, v1224, v1289, v1356, v1424, v1492, v1560, v1628, v1696, v1764, v1830, v1897, v1964, v2031, v2098, v2165, v2230, v2295, v2360, v2425, v2491, v2557, v2619, v2685, v2751, v2817, v2883, v2949, v3012, v3076, v3140, v3204, v3268, 0);
  sub_1E3C2FCB8(v10, v11);
  v20 = OUTLINED_FUNCTION_83_10(v12, v13, v14, v15, v16, v17, v18, v19, v821, v889, v956, v1023, v1090, v1157, v1225, v1290, v1357, v1425, v1493, v1561, v1629, v1697, v1765, v1831, v1898, v1965, v2032, v2099, v2166, v2231, v2296, v2361, v2426, v2492, v2558, v2620, v2686, v2752, v2818, v2884, v2950, v3013, v3077, v3141, v3205, v3269, v3332);
  memcpy(v20, v21, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_11();
  v23 = *(v22 + 1600);
  v32 = OUTLINED_FUNCTION_70_2(v24, v25, v26, v27, v28, v29, v30, v31, v822, v890, v957, v1024, v1091, v1158, v1226, v1291, v1358, v1426, v1494, v1562, v1630, v1698, v1766, v1832, v1899, v1966, v2033, v2100, v2167, v2232, v2297, v2362, v2427, v2493, v2559, v2621, v2687, v2753, v2819, v2885, v2951, v3014, v3078, v3142, v3206, v3270, v3333);
  (v23)(v32, 4);
  OUTLINED_FUNCTION_3_11();
  (*(v33 + 360))(0, 1);
  v3385 = xmmword_1E42CA3A0;
  v3386 = xmmword_1E42CA3A0;
  v3387 = 0;
  v34.n128_u64[1] = 0x4043000000000000;
  v34.n128_u64[0] = 8.0;
  v35 = j__OUTLINED_FUNCTION_7_78(v34);
  OUTLINED_FUNCTION_4_167(v35, v36, v37, v38);
  type metadata accessor for UIEdgeInsets();
  v40 = v39;
  sub_1E3C3DE00(v39);
  OUTLINED_FUNCTION_14_7();
  v49 = OUTLINED_FUNCTION_23_67(v41, v42, v43, v44, v45, v46, v47, v48, v823, v891, 0, 0x4038000000000000, v1092, v1159, v1227, v1292, v1359, v1427, v1495, v1563, v1631, v1699, v1767, v1833, v1900, v1967, v2034, v2101, v2168, v2233, v2298, v2363, v2428, v2494, v2560, v2622, v2688, v2754, v2820, v2886, v2952, v3015, v3079, v3143, v3207, v3271, 0);
  sub_1E3C2FCB8(v49, v50);
  v59 = OUTLINED_FUNCTION_83_10(v51, v52, v53, v54, v55, v56, v57, v58, v824, v892, v958, v1025, v1093, v1160, v1228, v1293, v1360, v1428, v1496, v1564, v1632, v1700, v1768, v1834, v1901, v1968, v2035, v2102, v2169, v2234, v2299, v2364, v2429, v2495, v2561, v2623, v2689, v2755, v2821, v2887, v2953, v3016, v3080, v3144, v3208, v3272, v3334);
  memcpy(v59, v60, 0xE9uLL);
  v61 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_1(v61, v62, v63, v64, v65, v66, v67, v68, v825, v893, v959, v1026, v1094, v1161, v1229, v1294, v1361, v1429, v1497, v1565, v1633, v1701, v1769, v1835, v1902, v1969, v2036, v2103, v2170, v2235, v2300, v2365, v2430, v2496, v2562, v2624, v2690, v2756, v2822, v2888, v2954, v3017, v3081, v3145, v3209, v3273, v3335);
  OUTLINED_FUNCTION_130_10();
  v23();
  OUTLINED_FUNCTION_108_9();
  v69.n128_u64[0] = 0x4042000000000000;
  v70 = j__OUTLINED_FUNCTION_7_78(v69);
  OUTLINED_FUNCTION_156_6(v70, v71, v72, v73);
  v74.n128_u64[0] = 0x4042000000000000;
  v75 = j__OUTLINED_FUNCTION_7_78(v74);
  OUTLINED_FUNCTION_28_55(v75, v76, v77, v78);
  v79.n128_u64[0] = 0x4050000000000000;
  v80 = j__OUTLINED_FUNCTION_7_78(v79);
  OUTLINED_FUNCTION_16_93(v80, v81, v82, v83);
  v84.n128_u64[0] = 28.0;
  v85 = j__OUTLINED_FUNCTION_7_78(v84);
  OUTLINED_FUNCTION_4_167(v85, v86, v87, v88);
  v89 = OUTLINED_FUNCTION_134_5();
  sub_1E3C3DE00(v89);
  OUTLINED_FUNCTION_14_7();
  v98 = OUTLINED_FUNCTION_23_67(v90, v91, v92, v93, v94, v95, v96, v97, v826, v894, v960, v1027, v1095, v1162, v1230, v1295, v1362, v1430, v1498, v1566, v1634, v1702, v1770, v1836, v1903, v1970, v2037, v2104, v2171, v2236, v2301, v2366, v2431, v2497, v2563, v2625, v2691, v2757, v2823, v2889, v2955, v3018, v3082, v3146, v3210, v3274, v3336);
  sub_1E3C2FCB8(v98, v99);
  v108 = OUTLINED_FUNCTION_83_10(v100, v101, v102, v103, v104, v105, v106, v107, v827, v895, v961, v1028, v1096, v1163, v1231, v1296, v1363, v1431, v1499, v1567, v1635, v1703, v1771, v1837, v1904, v1971, v2038, v2105, v2172, v2237, v2302, v2367, v2432, v2498, v2564, v2626, v2692, v2758, v2824, v2890, v2956, v3019, v3083, v3147, v3211, v3275, v3337);
  memcpy(v108, v109, 0xE9uLL);
  v110 = OUTLINED_FUNCTION_18();
  v118 = OUTLINED_FUNCTION_70_2(v110, v111, v112, v113, v114, v115, v116, v117, v828, v896, v962, v1029, v1097, v1164, v1232, v1297, v1364, v1432, v1500, v1568, v1636, v1704, v1772, v1838, v1905, v1972, v2039, v2106, v2173, v2238, v2303, v2368, v2433, v2499, v2565, v2627, v2693, v2759, v2825, v2891, v2957, v3020, v3084, v3148, v3212, v3276, v3338);
  (v23)(v118, 17);
  OUTLINED_FUNCTION_108_9();
  v119.n128_u64[0] = 18.0;
  v120 = j__OUTLINED_FUNCTION_7_78(v119);
  OUTLINED_FUNCTION_156_6(v120, v121, v122, v123);
  v124.n128_u64[0] = 18.0;
  v125 = j__OUTLINED_FUNCTION_7_78(v124);
  OUTLINED_FUNCTION_28_55(v125, v126, v127, v128);
  __asm { FMOV            V0.2D, #28.0 }

  _Q0.n128_u64[0] = 16.0;
  v134 = j__OUTLINED_FUNCTION_7_78(_Q0);
  OUTLINED_FUNCTION_4_167(v134, v135, v136, v137);
  v138 = OUTLINED_FUNCTION_134_5();
  sub_1E3C3DE00(v138);
  OUTLINED_FUNCTION_14_7();
  v147 = OUTLINED_FUNCTION_23_67(v139, v140, v141, v142, v143, v144, v145, v146, v829, v897, v963, v1030, v1098, v1165, v1233, v1298, v1365, v1433, v1501, v1569, v1637, v1705, v1773, v1839, v1906, v1973, v2040, v2107, v2174, v2239, v2304, v2369, v2434, v2500, v2566, v2628, v2694, v2760, v2826, v2892, v2958, v3021, v3085, v3149, v3213, v3277, v3339);
  sub_1E3C2FCB8(v147, v148);
  v157 = OUTLINED_FUNCTION_83_10(v149, v150, v151, v152, v153, v154, v155, v156, v830, v898, v964, v1031, v1099, v1166, v1234, v1299, v1366, v1434, v1502, v1570, v1638, v1706, v1774, v1840, v1907, v1974, v2041, v2108, v2175, v2240, v2305, v2370, v2435, v2501, v2567, v2629, v2695, v2761, v2827, v2893, v2959, v3022, v3086, v3150, v3214, v3278, v3340);
  memcpy(v157, v158, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v23();
  OUTLINED_FUNCTION_108_9();
  sub_1E3952C94();
  OUTLINED_FUNCTION_156_6(v159, v160, v161, v162);
  sub_1E3952C94();
  OUTLINED_FUNCTION_28_55(v163, v164, v165, v166);
  sub_1E3C3DE00(v40);
  OUTLINED_FUNCTION_55_5();
  sub_1E3C3DE00(v40);
  OUTLINED_FUNCTION_14_7();
  v167 = sub_1E3C3DE00(v40);
  OUTLINED_FUNCTION_191_2(v167, v168, v169, v170, v171, v172, v173, v174, v831, v899, v965, v1032, v1100, v1167, v1235, v0, v1367, v1435, v1503, v1571, v1639, v1707, v1775, v1841, v1908, v1975, v2042, v2109, v2176, v2241, v2306, v2371, v2436, v2502, v2568, v2630, v2696, v2762, v2828, v2894, v2960);
  v183 = OUTLINED_FUNCTION_71_25(v175, v176, v177, v178, v179, v180, v181, v182, v832, v900, v966, v1033, v1101, v1168, v1236, v1300, v1368, v1436, v1504, v1572, v1640, v1708, v1776, v1842, v1909, v1976, v2043, v2110, v2177, v2242, v2307, v2372, v2437, v2503, v2569, v2631, v2697, v2763, v2829, v2895, v2961, v3023, v3087, v3151, v3215, v3279, v3341);
  sub_1E3C2FCB8(v183, v184);
  v193 = OUTLINED_FUNCTION_83_10(v185, v186, v187, v188, v189, v190, v191, v192, v833, v901, v967, v1034, v1102, v1169, v1237, v1301, v1369, v1437, v1505, v1573, v1641, v1709, v1777, v1843, v1910, v1977, v2044, v2111, v2178, v2243, v2308, v2373, v2438, v2504, v2570, v2632, v2698, v2764, v2830, v2896, v2962, v3024, v3088, v3152, v3216, v3280, v3342);
  memcpy(v193, v194, 0xE9uLL);
  v195 = OUTLINED_FUNCTION_18();
  v203 = OUTLINED_FUNCTION_33_1(v195, v196, v197, v198, v199, v200, v201, v202, v834, v902, v968, v1035, v1103, v1170, v1238, v1302, v1370, v1438, v1506, v1574, v1642, v1710, v1778, v1844, v1911, v1978, v2045, v2112, v2179, v2244, v2309, v2374, v2439, v2505, v2571, v2633, v2699, v2765, v2831, v2897, v2963, v3025, v3089, v3153, v3217, v3281, v3343);
  (v23)(v203, 121);
  v204 = *(v0 + 128);
  OUTLINED_FUNCTION_36();
  v205 = OUTLINED_FUNCTION_8_5();
  v206(v205);
  v207 = *sub_1E3E5FD88();
  v208 = *(*v204 + 680);
  v209 = v207;
  v208(v207);
  OUTLINED_FUNCTION_36();
  (*(v210 + 2008))(1);
  OUTLINED_FUNCTION_36();
  (*(v211 + 1984))(5);
  OUTLINED_FUNCTION_36();
  (*(v212 + 464))(4);
  OUTLINED_FUNCTION_36();
  (*(v213 + 1720))(10);
  LOBYTE(v3385) = 19;
  v214 = sub_1E3C3DE00(&qword_1F5D549D8);
  v222 = OUTLINED_FUNCTION_23_67(v214, v215, v216, v217, v218, v219, v220, v221, v835, v903, v969, v1036, v1104, v1171, v1239, v1303, v1371, v1439, v1507, v1575, v1643, v1711, v1779, v1845, v1912, v1979, v2046, v2113, v2180, v2245, v2310, v2375, v2440, v2506, v2572, v2634, v2700, v2766, v2832, v2898, v2964, v3026, v3090, v3154, v3218, v3282, 27);
  sub_1E3C2FCB8(v222, v223);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v233 = OUTLINED_FUNCTION_70_2(v225, v226, v227, v228, v229, v230, v231, v232, v836, v904, v970, v1037, v1105, v1172, *(v224 + 1600), v1304, v1372, v1440, v1508, v1576, v1644, v1712, v1780, v1846, v1913, v1980, v2047, v2114, v2181, v2246, v2311, v2376, v2441, v2507, v2573, v2635, v2701, v2767, v2833, v2899, v2965, v3027, v3091, v3155, v3219, v3283, v3379);
  v234(v233, 48);
  *&v3385 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v235 = sub_1E3280A90(0, &qword_1EE23ADD0);
  sub_1E3C2FC98();
  sub_1E3C3DE00(v235);
  sub_1E3C3DE00(v235);
  OUTLINED_FUNCTION_165_6();
  v236 = sub_1E3C3DE00(v235);
  v244 = OUTLINED_FUNCTION_71_25(v236, v237, v238, v239, v240, v241, v242, v243, v837, v905, v971, v1038, v1106, v1173, v1240, v1305, v1373, v1441, v1509, v1577, v1645, v1713, v1781, v1847, v1914, v1981, v2048, v2115, v2574, v2247, v2312, v2377, v2442, v2508, v2574, v2636, v2702, v2768, v2834, v2900, v2966, v3028, v3092, v3156, v3220, v3284, 0);
  sub_1E3C2FCB8(v244, v245);
  v246 = OUTLINED_FUNCTION_18();
  v254 = OUTLINED_FUNCTION_33_1(v246, v247, v248, v249, v250, v251, v252, v253, v838, v906, v972, v1039, v1107, v1174, v1241, v1306, v1374, v1442, v1510, v1578, v1646, v1714, v1782, v1848, v1915, v1982, v2049, v2116, v2182, v2248, v2313, v2378, v2443, v2509, v2575, v2637, v2703, v2769, v2835, v2901, v2967, v3029, v3093, v3157, v3221, v3285, v3379);
  v1242(v254, 66);

  LOBYTE(v3385) = 10;
  sub_1E3C2FC98();
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v255 = sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v2576) = v2968;
  v263 = OUTLINED_FUNCTION_71_25(v255, v256, v257, v258, v259, v260, v261, v262, v839, v907, v973, v1040, v1108, v1175, v1242, v1307, v1375, v1443, v1511, v1579, v1647, v1715, v1783, v1849, v1916, v1983, v2050, v2117, v2183, v2249, v2314, v2379, v2444, v2510, v2576, v2638, v2704, v2770, v2836, v2902, v2968, v3030, v3094, v3158, v3222, v3286, 4);
  sub_1E3C2FCB8(v263, v264);
  OUTLINED_FUNCTION_136_4();
  v265 = OUTLINED_FUNCTION_18();
  v273 = OUTLINED_FUNCTION_33_1(v265, v266, v267, v268, v269, v270, v271, v272, v840, v908, v974, v1041, v1109, v1176, v1243, v1308, v1376, v1444, v1512, v1580, v1648, v1716, v1784, v1850, v1917, v1984, v2051, v2118, v2184, v2250, v2315, v2380, v2445, v2511, v2577, v2639, v2705, v2771, v2837, v2903, v2969, v3031, v3095, v3159, v3223, v3287, v3344);
  v274 = v1244;
  (v1244)(v273, 54);
  OUTLINED_FUNCTION_36();
  v275 = OUTLINED_FUNCTION_13_12();
  v276(v275);
  OUTLINED_FUNCTION_89_9();
  sub_1E3952CA4();
  v277 = *(MEMORY[0x1E69DDCE0] + 16);
  v3385 = *MEMORY[0x1E69DDCE0];
  v3386 = v277;
  v3387 = 0;
  v3378 = v3385;
  v3377 = v3385;
  v278 = OUTLINED_FUNCTION_118_8();
  sub_1E3C3DE00(v278);
  OUTLINED_FUNCTION_72_20();
  v287 = OUTLINED_FUNCTION_2_165(v279, v280, v281, v282, v283, v284, v285, v286, v841, v909, v975, v1042, v1110, v1177, v1244, v1309, v1377, v1445, v1513, v1581, v1649, v1717, v1785, v1851, v1918, v1985, v2052, v2119, v2185, v2251, v2316, v2381, v2446, v2512, v2578, v2640, v2706, v2772, v2838, v2904, v2970, v3032, v3096, v3160, v3224, v3288, v3345);
  sub_1E3C2FCB8(v287, v288);
  v297 = OUTLINED_FUNCTION_83_10(v289, v290, v291, v292, v293, v294, v295, v296, v842, v910, v976, v1043, v1111, v1178, v1245, v1310, v1378, v1446, v1514, v1582, v1650, v1718, v1786, v1852, v1919, v1986, v2053, v2120, v2186, v2252, v2317, v2382, v2447, v2513, v2579, v2641, v2707, v2773, v2839, v2905, v2971, v3033, v3097, v3161, v3225, v3289, v3346);
  memcpy(v297, v298, 0xE9uLL);
  v299 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_1(v299, v300, v301, v302, v303, v304, v305, v306, v843, v911, v977, v1044, v1112, v1179, v1246, v1311, v1379, v1447, v1515, v1583, v1651, v1719, v1787, v1853, v1920, v1987, v2054, v2121, v2187, v2253, v2318, v2383, v2448, v2514, v2580, v2642, v2708, v2774, v2840, v2906, v2972, v3034, v3098, v3162, v3226, v3290, v3347);
  OUTLINED_FUNCTION_130_10();
  v274();
  OUTLINED_FUNCTION_108_9();
  sub_1E3952C94();
  OUTLINED_FUNCTION_28_55(v307, v308, v309, v310);
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_55_5();
  sub_1E3C3DE00(v40);
  OUTLINED_FUNCTION_14_7();
  v311 = sub_1E3C3DE00(v40);
  OUTLINED_FUNCTION_191_2(v311, v312, v313, v314, v315, v316, v317, v318, v844, v912, v978, v1045, v1113, v1180, v1247, v1312, v1380, v1448, v1516, v1584, v1652, v1720, v1788, v1854, v1921, v1988, v2055, v2122, v2188, v2254, v2319, v2384, v2449, v2515, v2581, v2643, v2709, v2775, v2841, v2907, v2973);
  v319 = sub_1E3C3DE00(v40);
  OUTLINED_FUNCTION_56_27(v319, v320, v321, v322, v323, v324, v325, v326, v845, v913, v979, v1046, v1114, v1181, v1248, v1313, v1381, v1449, v1517, v1585, v1653, v1721, v1789, v1855, v1922, v1989, v2056, v2123, v2189);
  v335 = OUTLINED_FUNCTION_62_24(v327, v328, v329, v330, v331, v332, v333, v334, v846, v914, v980, v1047, v1115, v1182, v1249, v1314, v1382, v1450, v1518, v1586, v1654, v1722, v1790, v1856, v1923, v1990, v2057, v2124, v2190, v2255, v2320, v2385, v2450, v2516, v2582, v2644, v2710, v2776, v2842, v2908, v2974, v3035, v3099, v3163, v3227, v3291, v3348);
  sub_1E3C2FCB8(v335, v336);
  v345 = OUTLINED_FUNCTION_83_10(v337, v338, v339, v340, v341, v342, v343, v344, v847, v915, v981, v1048, v1116, v1183, v1250, v1315, v1383, v1451, v1519, v1587, v1655, v1723, v1791, v1857, v1924, v1991, v2058, v2125, v2191, v2256, v2321, v2386, v2451, v2517, v2583, v2645, v2711, v2777, v2843, v2909, v2975, v3036, v3100, v3164, v3228, v3292, v3349);
  memcpy(v345, v346, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v274();
  v347 = *(v1316 + 152);
  OUTLINED_FUNCTION_36();
  (*(v348 + 2056))(1, 0);
  v349 = *sub_1E3E5FDEC();
  v350 = *(*v347 + 680);
  v351 = v349;
  v350(v349);
  LOBYTE(v3378) = 21;
  LOBYTE(v3377) = 14;
  v352 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v2976) = 2;
  v360 = OUTLINED_FUNCTION_2_165(v352, v353, v354, v355, v356, v357, v358, v359, v848, v916, v982, v1049, v1117, v1184, v1251, v1316, v1384, v1452, v1520, v1588, v1656, v1724, v1792, v1858, v1925, v1992, v2059, v2126, v2192, v2257, v2322, v2387, v2452, v2518, v2584, v2646, v2712, v2778, v2844, v2910, v2976, v3037, v3101, v3165, v3229, v3293, 27);
  sub_1E3C2FCB8(v360, v361);
  OUTLINED_FUNCTION_136_4();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v363 = *(v362 + 1600);
  v372 = OUTLINED_FUNCTION_70_2(v364, v365, v366, v367, v368, v369, v370, v371, v849, v917, v983, v1050, v1118, v1185, v362 + 1600, v1317, v1385, v1453, v1521, v1589, v1657, v1725, v1793, v1859, v1926, v1993, v2060, v2127, v2193, v2258, v2323, v2388, v2453, v2519, v2585, v2647, v2713, v2779, v2845, v2911, v2977, v3038, v3102, v3166, v3230, v3294, v3350);
  (v363)(v372, 48);
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1E3C2FC98();
  sub_1E3C3DE00(v235);
  sub_1E3C3DE00(v235);
  v373 = sub_1E3C3DE00(v235);
  v381 = OUTLINED_FUNCTION_62_24(v373, v374, v375, v376, v377, v378, v379, v380, v850, v918, v984, v1051, v1119, v1186, v1252, v1318, v1386, v1454, v1522, v1590, v1658, v1726, v2194, v1860, v1927, v1994, v2061, v2128, v2194, v2259, v2324, v2389, v2454, v2520, v2978, v2648, v2714, v2780, v2846, v2912, v2978, v3039, v3103, v3167, v3231, v3295, 0);
  sub_1E3C2FCB8(v381, v382);
  v383 = OUTLINED_FUNCTION_18();
  v391 = OUTLINED_FUNCTION_33_1(v383, v384, v385, v386, v387, v388, v389, v390, v851, v919, v985, v1052, v1120, v1187, v1253, v1319, v1387, v1455, v1523, v1591, v1659, v1727, v1794, v1861, v1928, v1995, v2062, v2129, v2195, v2260, v2325, v2390, v2455, v2521, v2586, v2649, v2715, v2781, v2847, v2913, v2979, v3040, v3104, v3168, v3232, v3296, v3379);
  (v363)(v391, 66);

  OUTLINED_FUNCTION_36();
  (*(v392 + 1792))(10);
  OUTLINED_FUNCTION_36();
  (*(v393 + 1984))(5);
  OUTLINED_FUNCTION_36();
  v394 = OUTLINED_FUNCTION_13_12();
  v395(v394);
  OUTLINED_FUNCTION_89_9();
  v396 = sub_1E3952CA4();
  OUTLINED_FUNCTION_28_55(v396, v397, v398, v399);
  v400 = sub_1E3952CA4();
  OUTLINED_FUNCTION_16_93(v400, v401, v402, v403);
  v404 = sub_1E3952CA4();
  OUTLINED_FUNCTION_4_167(v404, v405, v406, v407);
  v408 = OUTLINED_FUNCTION_118_8();
  sub_1E3C3DE00(v408);
  OUTLINED_FUNCTION_72_20();
  v417 = OUTLINED_FUNCTION_2_165(v409, v410, v411, v412, v413, v414, v415, v416, v852, v920, v986, v1053, v1121, v1188, v1254, v1320, v1388, v1456, v1524, v1592, v1660, v1728, v1795, v1862, v1929, v1996, v2063, v2130, v2196, v2261, v2326, v2391, v2456, v2522, v2587, v2650, v2716, v2782, v2848, v2914, v2980, v3041, v3105, v3169, v3233, v3297, v3351);
  sub_1E3C2FCB8(v417, v418);
  v427 = OUTLINED_FUNCTION_83_10(v419, v420, v421, v422, v423, v424, v425, v426, v853, v921, v987, v1054, v1122, v1189, v1255, v1321, v1389, v1457, v1525, v1593, v1661, v1729, v1796, v1863, v1930, v1997, v2064, v2131, v2197, v2262, v2327, v2392, v2457, v2523, v2588, v2651, v2717, v2783, v2849, v2915, v2981, v3042, v3106, v3170, v3234, v3298, v3352);
  memcpy(v427, v428, 0xE9uLL);
  v429 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_1(v429, v430, v431, v432, v433, v434, v435, v436, v854, v922, v988, v1055, v1123, v1190, v1256, v1322, v1390, v1458, v1526, v1594, v1662, v1730, v1797, v1864, v1931, v1998, v2065, v2132, v2198, v2263, v2328, v2393, v2458, v2524, v2589, v2652, v2718, v2784, v2850, v2916, v2982, v3043, v3107, v3171, v3235, v3299, v3353);
  OUTLINED_FUNCTION_130_10();
  v363();
  OUTLINED_FUNCTION_108_9();
  sub_1E3C2FC98();
  sub_1E3C3DE00(v40);
  v437 = OUTLINED_FUNCTION_118_8();
  sub_1E3C3DE00(v437);
  OUTLINED_FUNCTION_72_20();
  sub_1E3C3DE00(v40);
  LOBYTE(v2459) = v2851;
  v438 = sub_1E3C3DE00(v40);
  OUTLINED_FUNCTION_192_1(v438, v439, v440, v441, v442, v443, v444, v445, v855, v923, v989, v1056, v1124, v1191, v1257, v1323, v1391, v1459, v1527, v1595, v1663, v1731, v1798);
  v454 = OUTLINED_FUNCTION_71_25(v446, v447, v448, v449, v450, v451, v452, v453, v856, v924, v990, v1057, v1125, v1192, v1258, v1324, v1392, v1460, v1528, v1596, v1664, v1732, v1799, v1865, v1932, v1999, v2066, v2133, v2590, v2653, v2719, v2785, v2459, v2525, v2590, v2653, v2719, v2785, v2851, v2917, v2983, v3044, v3108, v3172, v3236, v3300, v3354);
  sub_1E3C2FCB8(v454, v455);
  v464 = OUTLINED_FUNCTION_83_10(v456, v457, v458, v459, v460, v461, v462, v463, v857, v925, v991, v1058, v1126, v1193, v1259, v1325, v1393, v1461, v1529, v1597, v1665, v1733, v1800, v1866, v1933, v2000, v2067, v2134, v2199, v2264, v2329, v2394, v2460, v2526, v2591, v2654, v2720, v2786, v2852, v2918, v2984, v3045, v3109, v3173, v3237, v3301, v3355);
  memcpy(v464, v465, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v363();
  v466 = *(v1326 + 208);
  OUTLINED_FUNCTION_119_6();
  OUTLINED_FUNCTION_69_20(v467);
  OUTLINED_FUNCTION_78_15(0x4079C00000000000uLL);
  OUTLINED_FUNCTION_86_8(0x4070000000000000uLL);
  v468 = sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  LOBYTE(v3046) = v3376;
  v476 = OUTLINED_FUNCTION_2_165(v468, v469, v470, v471, v472, v473, v474, v475, v858, v926, v992, v1059, v1127, v1194, v1260, v1326, v1394, v1462, v1530, v1598, v1666, v1734, v1801, v1867, v1934, v2001, v2068, v2135, v2200, v2265, v2330, v2395, v2461, v2527, v2592, v2655, v2721, v2787, v2853, v2919, v3377, v3046, v3110, v3174, v3238, v3302, 0);
  sub_1E3C2FCB8(v476, v477);
  v486 = OUTLINED_FUNCTION_83_10(v478, v479, v480, v481, v482, v483, v484, v485, v859, v927, v993, v1060, v1128, v1195, v1261, v1327, v1395, v1463, v1531, v1599, v1667, v1735, v1802, v1868, v1935, v2002, v2069, v2136, v2201, v2266, v2331, v2396, v2462, v2528, v2593, v2656, v2722, v2788, v2854, v2920, v2985, v3047, v3111, v3175, v3239, v3303, v3356);
  memcpy(v486, v487, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_0_44();
  v489 = v488 + 1600;
  v490 = *(v488 + 1600);
  v499 = OUTLINED_FUNCTION_70_2(v491, v492, v493, v494, v495, v496, v497, v498, v860, v928, v994, v1061, v1129, v1196, v1262, v1328, v1396, v1464, v1532, v1600, v1668, v1736, v1803, v1869, v1936, v2003, v2070, v2137, v2202, v2267, v2332, v2397, v2463, v2529, v2594, v2657, v2723, v2789, v2855, v2921, v2986, v3048, v3112, v3176, v3240, v3304, v3357);
  (v490)(v499, 2);
  v500 = OUTLINED_FUNCTION_89_9();
  v501 = sub_1E3952C10(v500, 8.0);
  OUTLINED_FUNCTION_28_55(v501, v502, v503, v504);
  v505 = sub_1E3952C10(12.0, 8.0);
  OUTLINED_FUNCTION_16_93(v505, v506, v507, v508);
  v509 = sub_1E3952C10(20.0, 20.0);
  OUTLINED_FUNCTION_4_167(v509, v510, v511, v512);
  v513 = sub_1E3952C10(12.0, 12.0);
  OUTLINED_FUNCTION_9_113(v513, v514, v515, v516);
  v525 = OUTLINED_FUNCTION_13_114(v517, v518, v519, v520, v521, v522, v523, v524, v861, v929, v995, v1062, v1130, v490, v489, v1329, v1397, v1465, v1533, v1601, v1669, v1737, v1804, v1870, v1937, v2004, v2071, v2138, v2203, v2268, v2333, v2398, v2464, v2530, v2595, v2658, v2724, v2790, v2856, v2922, v2987, v3049, v3113, v3177, v3241, v3305, v3358);
  sub_1E3C2FCB8(v525, v526);
  v535 = OUTLINED_FUNCTION_83_10(v527, v528, v529, v530, v531, v532, v533, v534, v862, v40, v996, v1063, v1131, v1197, v1263, v1330, v1398, v1466, v1534, v1602, v1670, v1738, v1805, v1871, v1938, v2005, v2072, v2139, v2204, v2269, v2334, v2399, v2465, v2531, v2596, v2659, v2725, v2791, v2857, v2923, v2988, v3050, v3114, v3178, v3242, v3306, v3359);
  memcpy(v535, v536, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v537 = v466;
  v490();
  v538 = objc_opt_self();
  v539 = [v538 whiteColor];
  v3360 = v539;
  v540 = sub_1E3280A90(0, &qword_1EE23AE20);
  OUTLINED_FUNCTION_10_104();
  v541 = sub_1E4206F24();
  OUTLINED_FUNCTION_10_104();
  v542 = sub_1E4206F24();
  sub_1E3E5F2F8(v541, v542);

  sub_1E3C2FC98();
  sub_1E3C3DE00(v540);
  sub_1E3C3DE00(v540);
  v543 = sub_1E3C3DE00(v540);
  v551 = OUTLINED_FUNCTION_62_24(v543, v544, v545, v546, v547, v548, v549, v550, v863, v930, v997, v1064, v1132, v1198, v1264, v1331, v1399, v1467, v1535, v1603, v1671, v1739, v2205, v1872, v1939, v2006, v2073, v2140, v2205, v2270, v2335, v2400, v2466, v2532, v2989, v2660, v2726, v2792, v2858, v2924, v2989, v3051, v3115, v3179, v3243, v3307, v3360);
  sub_1E3C2FCB8(v551, v552);
  v553 = OUTLINED_FUNCTION_18();
  v561 = OUTLINED_FUNCTION_33_1(v553, v554, v555, v556, v557, v558, v559, v560, v864, v931, v998, v1065, v1133, v1199, v1265, v1332, v1400, v1468, v1536, v1604, v1672, v1740, v1806, v1873, v1940, v2007, v2074, v2141, v2206, v2271, v2336, v2401, v2467, v2533, v2597, v2661, v2727, v2793, v2859, v2925, v2990, v3052, v3116, v3180, v3244, v3308, v3379);
  v1200(v561, 24);

  v1201 = (*v537 + 2048);
  v1266 = *v1201;
  (*v1201)();
  v562 = OUTLINED_FUNCTION_182_3();
  v3361 = v562;
  v563 = [v538 blackColor];
  v564 = OUTLINED_FUNCTION_162_6();
  v565 = OUTLINED_FUNCTION_182_3();
  v566 = OUTLINED_FUNCTION_162_6();
  OUTLINED_FUNCTION_147_5(v566);
  OUTLINED_FUNCTION_165_6();
  v575 = OUTLINED_FUNCTION_2_165(v567, v568, v569, v570, v571, v572, v573, v574, v865, v932, v999, v1066, v1134, v1201, v1266, v1333, v1401, v1469, v1537, v1605, v1673, v1741, v1807, v1874, v1941, v2008, v2075, v2142, v2207, v2272, v2337, v2402, v2468, v2534, v2598, v2662, v2728, v2794, v2860, v2926, v2991, v3053, v3117, v3181, v3245, v3309, v3361);
  sub_1E3C2FCB8(v575, v576);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v585 = OUTLINED_FUNCTION_70_2(v577, v578, v579, v580, v581, v582, v583, v584, v866, v933, v1000, v1067, v1135, v1202, v1267, v1334, v1402, v1470, v1538, v1606, v1674, v1742, v1808, v1875, v1942, v2009, v2076, v2143, v2208, v2273, v2338, v2403, v2469, v2535, v2599, v2663, v2729, v2795, v2861, v2927, v2992, v3054, v3118, v3182, v3246, v3310, v3379);
  v586(v585, 21);

  v1268();
  v587 = OUTLINED_FUNCTION_162_6();
  v3362 = v587;
  v588 = OUTLINED_FUNCTION_182_3();
  v589 = OUTLINED_FUNCTION_182_3();
  v590 = OUTLINED_FUNCTION_162_6();
  v591 = OUTLINED_FUNCTION_162_6();
  OUTLINED_FUNCTION_147_5(v591);
  OUTLINED_FUNCTION_165_6();
  v600 = OUTLINED_FUNCTION_2_165(v592, v593, v594, v595, v596, v597, v598, v599, v867, v934, v1001, v1068, v1136, v1203, v1268, v1335, v1403, v1471, v1539, v1607, v1675, v1743, v1809, v1876, v1943, v2010, v2077, v2144, v2209, v2274, v2339, v2404, v2470, v2536, v2600, v2664, v2730, v2796, v2862, v2928, v2993, v3055, v3119, v3183, v3247, v3311, v3362);
  sub_1E3C2FCB8(v600, v601);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v610 = OUTLINED_FUNCTION_70_2(v602, v603, v604, v605, v606, v607, v608, v609, v868, v935, v1002, v1069, v1137, v1204, v1269, v1336, v1404, v1472, v1540, v1608, v1676, v1744, v1810, v1877, v1944, v2011, v2078, v2145, v2210, v2275, v2340, v2405, v2471, v2537, v2601, v2665, v2731, v2797, v2863, v2929, v2994, v3056, v3120, v3184, v3248, v3312, v3379);
  v611(v610, 29);

  v869 = *(*v537 + 2096);
  v869();
  v612 = [v538 whiteColor];
  v3363 = v612;
  v613 = [v538 blackColor];
  v614 = [v538 blackColor];
  v615 = [v538 whiteColor];
  OUTLINED_FUNCTION_147_5([v538 blackColor]);
  OUTLINED_FUNCTION_165_6();
  v624 = OUTLINED_FUNCTION_2_165(v616, v617, v618, v619, v620, v621, v622, v623, v869, v936, v1003, v1070, v537, v1205, v1270, v1337, v1405, v1473, v1541, v1609, v1677, v1745, v1811, v1878, v1945, v2012, v2079, v2146, v2211, v2276, v2341, v2406, v2472, v2538, v2602, v2666, v2732, v2798, v2864, v2930, v2995, v3057, v3121, v3185, v3249, v3313, v3363);
  sub_1E3C2FCB8(v624, v625);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v634 = OUTLINED_FUNCTION_70_2(v626, v627, v628, v629, v630, v631, v632, v633, v870, v937, v1004, v1071, v1138, v1206, v1271, v1338, v1406, v1474, v1542, v1610, v1678, v1746, v1812, v1879, v1946, v2013, v2080, v2147, v2212, v2277, v2342, v2407, v2473, v2539, v2603, v2667, v2733, v2799, v2865, v2931, v2996, v3058, v3122, v3186, v3250, v3314, v3379);
  v635(v634, 21);

  v636 = v871;
  v871();
  v637 = OUTLINED_FUNCTION_162_6();
  v3364 = v637;
  v638 = OUTLINED_FUNCTION_182_3();
  v639 = OUTLINED_FUNCTION_182_3();
  v640 = OUTLINED_FUNCTION_162_6();
  v641 = OUTLINED_FUNCTION_162_6();
  OUTLINED_FUNCTION_147_5(v641);
  OUTLINED_FUNCTION_165_6();
  v650 = OUTLINED_FUNCTION_2_165(v642, v643, v644, v645, v646, v647, v648, v649, v871, v938, v1005, v1072, v1139, v1207, v1272, v1339, v1407, v1475, v1543, v1611, v1679, v1747, v1813, v1880, v1947, v2014, v2081, v2148, v2213, v2278, v2343, v2408, v2474, v2540, v2604, v2668, v2734, v2800, v2866, v2932, v2997, v3059, v3123, v3187, v3251, v3315, v3364);
  sub_1E3C2FCB8(v650, v651);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v660 = OUTLINED_FUNCTION_70_2(v652, v653, v654, v655, v656, v657, v658, v659, v872, v939, v1006, v1073, v1140, v1208, v1273, v1340, v1408, v1476, v1544, v1612, v1680, v1748, v1814, v1881, v1948, v2015, v2082, v2149, v2214, v2279, v2344, v2409, v2475, v2541, v2605, v2669, v2735, v2801, v2867, v2933, v2998, v3060, v3124, v3188, v3252, v3316, v3379);
  v661(v660, 29);

  v636();
  OUTLINED_FUNCTION_131_9();
  v662 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_49_39();
  v663 = sub_1E3C3DE00(v662);
  LOBYTE(v2670) = v3061;
  v671 = OUTLINED_FUNCTION_13_114(v663, v664, v665, v666, v667, v668, v669, v670, v873, v940, v1007, v1074, v1141, v1209, v1274, v1341, v1409, v1477, v1545, v1613, v1681, v1749, v1815, v1882, v1949, v2016, v2083, v2150, v2215, v2280, v2345, v2410, v2476, v2542, v2999, v2670, v2736, v2802, v2868, v2934, v2999, v3061, v3125, v3189, v3253, v3317, 0);
  OUTLINED_FUNCTION_214_0(v671, v672);
  v681 = OUTLINED_FUNCTION_83_10(v673, v674, v675, v676, v677, v678, v679, v680, v874, v941, v1008, v1075, v1142, v1210, v1275, v1342, v1410, v1478, v1546, v1614, v1682, v1750, v1816, v1883, v1950, v2017, v2084, v2151, v2216, v2281, v2346, v2411, v2477, v2543, v2606, v2671, v2737, v2803, v2869, v2935, v3000, v3062, v3126, v3190, v3254, v3318, v3365);
  memcpy(v681, v682, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v691 = OUTLINED_FUNCTION_70_2(v683, v684, v685, v686, v687, v688, v689, v690, v875, v942, v1009, v1076, v1143, v1211, v1276, v1343, v1411, v1479, v1547, v1615, v1683, v1751, v1817, v1884, v1951, v2018, v2085, v2152, v2217, v2282, v2347, v2412, v2478, v2544, v2607, v2672, v2738, v2804, v2870, v2936, v3001, v3063, v3127, v3191, v3255, v3319, v3366);
  v692(v691, 2);

  (v636)(v693);
  OUTLINED_FUNCTION_131_9();
  sub_1E3C3DE00(v662);
  OUTLINED_FUNCTION_49_39();
  v694 = sub_1E3C3DE00(v662);
  LOBYTE(v2673) = v3064;
  v702 = OUTLINED_FUNCTION_13_114(v694, v695, v696, v697, v698, v699, v700, v701, v876, v943, v1010, v1077, v1144, v1212, v1277, v1344, v1412, v1480, v1548, v1616, v1684, v1752, v1818, v1885, v1952, v2019, v2086, v2153, v2218, v2283, v2348, v2413, v2479, v2545, v3002, v2673, v2739, v2805, v2871, v2937, v3002, v3064, v3128, v3192, v3256, v3320, 0);
  OUTLINED_FUNCTION_214_0(v702, v703);
  v712 = OUTLINED_FUNCTION_83_10(v704, v705, v706, v707, v708, v709, v710, v711, v877, v944, v1011, v1078, v1145, v1213, v1278, v1345, v1413, v1481, v1549, v1617, v1685, v1753, v1819, v1886, v1953, v2020, v2087, v2154, v2219, v2284, v2349, v2414, v2480, v2546, v2608, v2674, v2740, v2806, v2872, v2938, v3003, v3065, v3129, v3193, v3257, v3321, v3367);
  memcpy(v712, v713, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v722 = OUTLINED_FUNCTION_70_2(v714, v715, v716, v717, v718, v719, v720, v721, v878, v945, v1012, v1079, v1146, v1214, v1279, v1346, v1414, v1482, v1550, v1618, v1686, v1754, v1820, v1887, v1954, v2021, v2088, v2155, v2220, v2285, v2350, v2415, v2481, v2547, v2609, v2675, v2741, v2807, v2873, v2939, v3004, v3066, v3130, v3194, v3258, v3322, v3368);
  v723(v722, 6);

  (v636)(v724);
  OUTLINED_FUNCTION_26_0();
  (*(v725 + 160))(&v3385);

  v1280(v726);
  OUTLINED_FUNCTION_26_0();
  (*(v727 + 160))(&v3385);

  OUTLINED_FUNCTION_34_6();
  v728 = OUTLINED_FUNCTION_10_7();
  v729(v728);
  v730 = OUTLINED_FUNCTION_211();
  LOBYTE(v3067) = 0;
  v738 = OUTLINED_FUNCTION_2_165(v730, v731, v732, v733, v734, v735, v736, v737, v879, v946, v1013, v1080, v1147, v1215, v1280, v1347, v1415, v1483, v1551, v1619, v1687, v1755, v1821, v1888, v1955, v2022, v2089, v2156, v2221, v2286, v2351, v2416, v2482, v2548, v2610, v2676, v2742, v2808, v2874, v2940, v3378, v3067, v3131, v3195, v3259, v3323, 0);
  sub_1E3C2FCB8(v738, v739);
  v748 = OUTLINED_FUNCTION_83_10(v740, v741, v742, v743, v744, v745, v746, v747, v880, v947, v1014, v1081, v1148, v1216, v1281, v1348, v1416, v1484, v1552, v1620, v1688, v1756, v1822, v1889, v1956, v2023, v2090, v2157, v2222, v2287, v2352, v2417, v2483, v2549, v2611, v2677, v2743, v2809, v2875, v2941, v3005, v3068, v3132, v3196, v3260, v3324, v3369);
  memcpy(v748, v749, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v751 = *(v750 + 1600);
  v760 = OUTLINED_FUNCTION_70_2(v752, v753, v754, v755, v756, v757, v758, v759, v881, v948, v1015, v1082, v1149, v1217, v1282, v1349, v1417, v1485, v1553, v1621, v1689, v1757, v1823, v1890, v1957, v2024, v2091, v2158, v2223, v2288, v2353, v2418, v2484, v2550, v2612, v2678, v2744, v2810, v2876, v2942, v3006, v3069, v3133, v3197, v3261, v3325, v3370);
  (v751)(v760, 2);
  v761 = OUTLINED_FUNCTION_211();
  LOBYTE(v3070) = 0;
  v769 = OUTLINED_FUNCTION_2_165(v761, v762, v763, v764, v765, v766, v767, v768, v882, v949, v1016, v1083, v1150, v1218, v1283, v1350, v1418, v1486, v1554, v1622, v1690, v1758, v1824, v1891, v1958, v2025, v2092, v2159, v2224, v2289, v2354, v2419, v2485, v2551, v2613, v2679, v2745, v2811, v2877, v2943, v3378, v3070, v3134, v3198, v3262, v3326, 0);
  sub_1E3C2FCB8(v769, v770);
  v779 = OUTLINED_FUNCTION_83_10(v771, v772, v773, v774, v775, v776, v777, v778, v883, v950, v1017, v1084, v1151, v1219, v1284, v1351, v1419, v1487, v1555, v1623, v1691, v1759, v1825, v1892, v1959, v2026, v2093, v2160, v2225, v2290, v2355, v2420, v2486, v2552, v2614, v2680, v2746, v2812, v2878, v2944, v3007, v3071, v3135, v3199, v3263, v3327, v3371);
  memcpy(v779, v780, 0x59uLL);
  v781 = OUTLINED_FUNCTION_18();
  v789 = OUTLINED_FUNCTION_33_1(v781, v782, v783, v784, v785, v786, v787, v788, v884, v951, v1018, v1085, v1152, v1220, v1285, v1352, v1420, v1488, v1556, v1624, v1692, v1760, v1826, v1893, v1960, v2027, v2094, v2161, v2226, v2291, v2356, v2421, v2487, v2553, v2615, v2681, v2747, v2813, v2879, v2945, v3008, v3072, v3136, v3200, v3264, v3328, v3372);
  (v751)(v789, 6);
  OUTLINED_FUNCTION_108_9();
  __asm { FMOV            V0.2D, #20.0 }

  sub_1E3C3DE00(v952);
  OUTLINED_FUNCTION_72_20();
  v799 = OUTLINED_FUNCTION_2_165(v791, v792, v793, v794, v795, v796, v797, v798, v885, v952, v1019, v1086, v1153, v1221, v1286, v1353, v1421, v1489, v1557, v1625, v1693, v1761, v1827, v1894, v1961, v2028, v2095, v2162, v2227, v2292, v2357, v2422, v2488, v2554, v2616, v2682, v2748, v2814, v2880, v2946, v3009, v3073, v3137, v3201, v3265, v3329, v3373);
  sub_1E3C2FCB8(v799, v800);
  v809 = OUTLINED_FUNCTION_83_10(v801, v802, v803, v804, v805, v806, v807, v808, v886, v953, v1020, v1087, v1154, v1222, v1287, v1354, v1422, v1490, v1558, v1626, v1694, v1762, v1828, v1895, v1962, v2029, v2096, v2163, v2228, v2293, v2358, v2423, v2489, v2555, v2617, v2683, v2749, v2815, v2881, v2947, v3010, v3074, v3138, v3202, v3266, v3330, v3374);
  memcpy(v809, v810, 0xE9uLL);
  v811 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_1(v811, v812, v813, v814, v815, v816, v817, v818, v887, v954, v1021, v1088, v1155, v1223, v1288, v1355, v1423, v1491, v1559, v1627, v1695, v1763, v1829, v1896, v1963, v2030, v2097, v2164, v2229, v2294, v2359, v2424, v2490, v2556, v2618, v2684, v2750, v2816, v2882, v2948, v3011, v3075, v3139, v3203, v3267, v3331, v3375);
  OUTLINED_FUNCTION_130_10();
  return v751();
}

uint64_t sub_1E3CD5D78()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  (*(v2 + 512))(18);
  OUTLINED_FUNCTION_171_3();
  OUTLINED_FUNCTION_169_2(0x4077500000000000uLL);
  type metadata accessor for UIEdgeInsets();
  v4 = v3;
  sub_1E3C2FC98();
  __src[0] = *v540;
  __src[1] = *v541;
  LOBYTE(__src[2]) = v542;
  sub_1E3C3DE00(v4);
  OUTLINED_FUNCTION_143_6();
  OUTLINED_FUNCTION_170_3();
  sub_1E3C3DE00(v4);
  v602 = v605;
  v603 = v606;
  v604 = v607;
  v5 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v5, v6);
  v7 = OUTLINED_FUNCTION_121_8();
  memcpy(v7, v8, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v10 = *(v9 + 1600);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_130_10();
  v10();
  v11 = TVAppFeature.isEnabled.getter(20);
  TVAppFeature.isEnabled.getter(20);
  OUTLINED_FUNCTION_171_3();
  v13 = 0x4022000000000000;
  v14 = 0x4032000000000000;
  if ((v11 & 1) == 0)
  {
    v14 = 0x4022000000000000;
  }

  *&v566[8] = 0;
  *v566 = 0;
  *&v566[16] = v14;
  *&v566[24] = 0;
  v566[32] = 0;
  if (v12)
  {
    v13 = 0x4034000000000000;
  }

  v540[0] = 16;
  v540[1] = 0;
  v541[0] = v13;
  v541[1] = 0;
  LOBYTE(v542) = 0;
  __src[0] = 0uLL;
  __src[1] = xmmword_1E42CA3F0;
  LOBYTE(__src[2]) = 0;
  sub_1E3C3DE00(v4);
  OUTLINED_FUNCTION_143_6();
  OUTLINED_FUNCTION_170_3();
  v15 = OUTLINED_FUNCTION_18_82();
  sub_1E3C2FCB8(v15, v16);
  v17 = OUTLINED_FUNCTION_121_8();
  memcpy(v17, v18, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v10();
  v599[0] = 14;
  v566[0] = 3;
  LOBYTE(v565[0]) = 16;
  v19 = OUTLINED_FUNCTION_18_82();
  sub_1E3C2FCB8(v19, v20);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_40();
  OUTLINED_FUNCTION_198();
  v10();
  OUTLINED_FUNCTION_152_7(4);
  LOBYTE(__src[0]) = v21;
  LOBYTE(v584[0]) = v21;
  sub_1E3C3DE00(&unk_1F5D99680);
  LOBYTE(v559[0]) = 16;
  v22 = OUTLINED_FUNCTION_18_82();
  sub_1E3C2FCB8(v22, v23);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_40();
  OUTLINED_FUNCTION_198();
  v10();
  v596 = 0x4075400000000000;
  LOBYTE(v597) = 0;
  v594 = 0;
  LOBYTE(v595) = 1;
  v592 = 0x4071800000000000;
  LOBYTE(v593) = 0;
  v24 = TVAppFeature.isEnabled.getter(20);
  v25 = 0x407F400000000000;
  if (v24)
  {
    v25 = 0x4081D00000000000;
  }

  v590 = v25;
  LOBYTE(v591) = 0;
  v588 = 0x4072C00000000000;
  LOBYTE(v589) = 0;
  v26 = TVAppFeature.isEnabled.getter(20);
  v27 = 0x4079700000000000;
  if ((v26 & 1) == 0)
  {
    v27 = 0x4077200000000000;
  }

  *&__dst[0] = v27;
  BYTE8(__dst[0]) = 0;
  v28 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FCB8(&v596, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_43_44();
  v10();
  *v599 = 0;
  v599[8] = 1;
  *v566 = 0x4072C00000000000;
  v566[8] = 0;
  OUTLINED_FUNCTION_164_4();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_117_9();
  v29 = OUTLINED_FUNCTION_194_1();
  sub_1E3C3DE00(v29);
  v30 = OUTLINED_FUNCTION_149_5();
  sub_1E3C3DE00(v30);
  OUTLINED_FUNCTION_209();
  sub_1E3C3DE00(v28);
  v31 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v31, v32);
  v33 = OUTLINED_FUNCTION_121_8();
  memcpy(v33, v34, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_129_8();
  v10();
  v600 = 0u;
  *v599 = 0u;
  LOBYTE(v601) = 1;
  OUTLINED_FUNCTION_169_2(0x4073100000000000uLL);
  sub_1E3C2FC98();
  *v584 = *v540;
  *&v584[2] = *v541;
  LOBYTE(v584[4]) = v542;
  sub_1E3C3DE00(v4);
  OUTLINED_FUNCTION_113_8();
  sub_1E3C3DE00(v4);
  v35 = OUTLINED_FUNCTION_125_7();
  sub_1E3C3DE00(v35);
  *v585 = v602;
  *v586 = v603;
  LOBYTE(v587) = v604;
  v36 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v36, v37);
  v38 = OUTLINED_FUNCTION_121_8();
  memcpy(v38, v39, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_71();
  v40();
  v41 = v1[16];
  *v599 = 3;
  v599[8] = 0;
  *v566 = 2;
  v566[8] = 0;
  v540[0] = 2;
  LOBYTE(v540[1]) = 0;
  v584[0] = 2;
  LOBYTE(v584[1]) = 0;
  v42 = OUTLINED_FUNCTION_194_1();
  sub_1E3C3DE00(v42);
  v43 = OUTLINED_FUNCTION_149_5();
  sub_1E3C3DE00(v43);
  OUTLINED_FUNCTION_209();
  v44 = OUTLINED_FUNCTION_18_82();
  sub_1E3C2FCB8(v44, v45);
  v46 = OUTLINED_FUNCTION_121_8();
  memcpy(v46, v47, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v49 = *(v48 + 1600);
  v50 = OUTLINED_FUNCTION_81_16();
  (v49)(v50, 62);
  OUTLINED_FUNCTION_152_7(7);
  sub_1E3C3DE00(&unk_1F5D54CA8);
  LOBYTE(v565[0]) = 2;
  v51 = OUTLINED_FUNCTION_103_9();
  sub_1E3C3DE00(v51);
  OUTLINED_FUNCTION_109_6();
  sub_1E3C3DE00(&unk_1F5D54CA8);
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_18_82();
  OUTLINED_FUNCTION_153_5();
  sub_1E3C2FCB8(v52, v53);
  OUTLINED_FUNCTION_146_6();
  v54 = OUTLINED_FUNCTION_44_40();
  (v49)(v54, 59);
  OUTLINED_FUNCTION_36();
  (*(v55 + 2008))(1);
  v56 = sub_1E3E5FD88();
  OUTLINED_FUNCTION_81_12();
  v57 = *(*v41 + 680);
  v58 = &unk_1F5D54CA8;
  v57(&unk_1F5D54CA8);
  sub_1E3CD8684();
  OUTLINED_FUNCTION_36();
  (*(v59 + 608))();
  OUTLINED_FUNCTION_152_7(27);
  LOBYTE(v584[0]) = 3;
  LOBYTE(v565[0]) = 6;
  v60 = OUTLINED_FUNCTION_103_9();
  sub_1E3C3DE00(v60);
  LOBYTE(v608[0]) = v559[0];
  v61 = OUTLINED_FUNCTION_18_82();
  OUTLINED_FUNCTION_213(v61, v62);
  OUTLINED_FUNCTION_146_6();
  OUTLINED_FUNCTION_44_40();
  OUTLINED_FUNCTION_132_8();
  v49();
  if (TVAppFeature.isEnabled.getter(20))
  {
    OUTLINED_FUNCTION_8();
    v63 = OUTLINED_FUNCTION_158_7();
    v64(v63);
    OUTLINED_FUNCTION_36();
    (*(v65 + 1792))(10);
  }

  if (TVAppFeature.isEnabled.getter(20))
  {
    v66 = v1[17];
    OUTLINED_FUNCTION_8();
    v67 = OUTLINED_FUNCTION_8_5();
    v68(v67);
    v599[0] = 7;
    v566[0] = 1;
    LOBYTE(v540[0]) = 1;
    sub_1E3C3DE00(&unk_1F5D54CA8);
    LOBYTE(v565[0]) = v584[0];
    v69 = OUTLINED_FUNCTION_103_9();
    sub_1E3C3DE00(v69);
    OUTLINED_FUNCTION_109_6();
    sub_1E3C3DE00(&unk_1F5D54CA8);
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_18_82();
    OUTLINED_FUNCTION_153_5();
    sub_1E3C2FCB8(v70, v71);
    OUTLINED_FUNCTION_29_63();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v73 = *(v72 + 1600);
    v74 = OUTLINED_FUNCTION_81_16();
    (v73)(v74, 59);
    OUTLINED_FUNCTION_36();
    (*(v75 + 2008))(1);
    v76 = *v56;
    v77 = *(*v66 + 680);
    v78 = *v56;
    v77(v76);
    sub_1E3CD8684();
    OUTLINED_FUNCTION_36();
    (*(v79 + 608))();
    v599[0] = 27;
    v566[0] = 2;
    LOBYTE(v540[0]) = 2;
    LOBYTE(v584[0]) = 3;
    LOBYTE(v565[0]) = 6;
    v80 = OUTLINED_FUNCTION_103_9();
    sub_1E3C3DE00(v80);
    LOBYTE(v608[0]) = v559[0];
    v81 = OUTLINED_FUNCTION_18_82();
    OUTLINED_FUNCTION_213(v81, v82);
    OUTLINED_FUNCTION_29_63();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_40();
    OUTLINED_FUNCTION_132_8();
    v73();
    OUTLINED_FUNCTION_36();
    (*(v83 + 2128))(0x3FE947AE147AE148, 0);
    if (TVAppFeature.isEnabled.getter(20))
    {
      OUTLINED_FUNCTION_8();
      v84 = OUTLINED_FUNCTION_158_7();
      v85(v84);
    }
  }

  v86 = v1[18];
  *v599 = 2;
  v599[8] = 0;
  v87 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  v540[0] = *v566;
  LOBYTE(v540[1]) = v566[8];
  sub_1E3C3DE00(v87);
  v565[0] = v584[0];
  LOBYTE(v565[1]) = v584[1];
  v88 = OUTLINED_FUNCTION_103_9();
  sub_1E3C3DE00(v88);
  OUTLINED_FUNCTION_187_2();
  sub_1E3C3DE00(v87);
  *&v602 = v605;
  BYTE8(v602) = BYTE8(v605);
  sub_1E3C3DE00(v87);
  v574[0] = v585[0];
  LOBYTE(v574[1]) = v585[1];
  v89 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v89, v90);
  v91 = OUTLINED_FUNCTION_121_8();
  memcpy(v91, v92, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v94 = *(v93 + 1600);
  v95 = OUTLINED_FUNCTION_81_16();
  v94(v95, 62);
  v582 = 0;
  LOBYTE(v583) = 1;
  v580 = 0x3FE6666666666666;
  LOBYTE(v581) = 0;
  v96 = TVAppFeature.isEnabled.getter(20);
  v97 = 0x3FEB851EB851EB85;
  if ((v96 & 1) == 0)
  {
    v97 = 0;
  }

  *&__dst[0] = v97;
  BYTE8(__dst[0]) = (v96 & 1) == 0;
  v98 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  *v566 = *v599;
  v566[8] = v599[8];
  v99 = OUTLINED_FUNCTION_164_4();
  sub_1E3C3DE00(v99);
  OUTLINED_FUNCTION_117_9();
  v565[0] = v100;
  LOBYTE(v565[1]) = v101;
  v102 = OUTLINED_FUNCTION_103_9();
  sub_1E3C3DE00(v102);
  OUTLINED_FUNCTION_187_2();
  sub_1E3C2FCB8(&v582, v584);
  memcpy(__dst, v584, 0x59uLL);
  v103 = OUTLINED_FUNCTION_18();
  (v94)(__dst, 65, v103 & 1, v98);
  v599[0] = 7;
  v566[0] = 1;
  LOBYTE(v540[0]) = 1;
  v104 = OUTLINED_FUNCTION_194_1();
  sub_1E3C3DE00(v104);
  LOBYTE(v559[0]) = v565[0];
  sub_1E3C3DE00(&unk_1F5D54CA8);
  LOBYTE(v605) = v608[0];
  sub_1E3C3DE00(&unk_1F5D54CA8);
  LOBYTE(v585[0]) = v602;
  v105 = OUTLINED_FUNCTION_18_82();
  sub_1E3C2FCB8(v105, v106);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  v107 = OUTLINED_FUNCTION_44_40();
  v94(v107, 59);
  OUTLINED_FUNCTION_36();
  (*(v108 + 2008))(1);
  v426 = v56;
  v109 = *v56;
  v110 = *(*v86 + 680);
  v111 = v109;
  v110(v109);
  sub_1E3CD8684();
  OUTLINED_FUNCTION_36();
  (*(v112 + 608))();
  v577 = 1806;
  if (TVAppFeature.isEnabled.getter(20))
  {
    v113 = 2;
  }

  else
  {
    v113 = 7;
  }

  LOBYTE(__dst[0]) = v113;
  v599[0] = 2;
  sub_1E3C2FC98();
  LOBYTE(v540[0]) = v566[0];
  v114 = OUTLINED_FUNCTION_194_1();
  sub_1E3C3DE00(v114);
  LOBYTE(v559[0]) = v565[0];
  sub_1E3C2FCB8(&v577 + 1, &v578);
  LODWORD(__dst[0]) = v578;
  WORD2(__dst[0]) = v579;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_79_16();
  (v94)();
  v599[0] = 11;
  v566[0] = 7;
  OUTLINED_FUNCTION_164_4();
  sub_1E3C2FC98();
  LOBYTE(v565[0]) = v540[0];
  v115 = OUTLINED_FUNCTION_103_9();
  sub_1E3C3DE00(v115);
  OUTLINED_FUNCTION_109_6();
  sub_1E3C3DE00(&qword_1F5D54AF8);
  OUTLINED_FUNCTION_204();
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v574[0]) = v585[0];
  v116 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v116, v117);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  v118 = OUTLINED_FUNCTION_44_40();
  v94(v118, 54);
  OUTLINED_FUNCTION_36();
  (*(v119 + 1720))(7);
  sub_1E3952C88();
  OUTLINED_FUNCTION_167_5(v120, v121, v122, v123);
  sub_1E3952C88();
  OUTLINED_FUNCTION_54_28(v124, v125, v126, v127);
  sub_1E3952C88();
  OUTLINED_FUNCTION_106_0();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_113_8();
  sub_1E3C3DE00(v4);
  v128 = OUTLINED_FUNCTION_125_7();
  sub_1E3C3DE00(v128);
  *v585 = v602;
  *v586 = v603;
  LOBYTE(v587) = v604;
  v129 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v129, v130);
  v131 = OUTLINED_FUNCTION_121_8();
  memcpy(v131, v132, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  (v94)();
  if (TVAppFeature.isEnabled.getter(20))
  {
    OUTLINED_FUNCTION_8();
    v133 = OUTLINED_FUNCTION_158_7();
    v134(v133);
  }

  v135 = v1[19];
  v136 = OUTLINED_FUNCTION_133();
  v137(v136);
  *v599 = *v426;
  v138 = *v599;
  TVAppFeature.isEnabled.getter(20);
  v139 = OUTLINED_FUNCTION_163_5();
  if (v140)
  {
    v139 = sub_1E3E5FDEC();
  }

  *v566 = *v139;
  TVAppFeature.isEnabled.getter(20);
  v141 = OUTLINED_FUNCTION_163_5();
  if (v142)
  {
    v141 = sub_1E3E5FDEC();
  }

  v540[0] = *v141;
  TVAppFeature.isEnabled.getter(20);
  v143 = OUTLINED_FUNCTION_163_5();
  if (v144)
  {
    v143 = sub_1E3E5FDEC();
  }

  v565[0] = *v143;
  TVAppFeature.isEnabled.getter(20);
  v145 = OUTLINED_FUNCTION_163_5();
  if (v146)
  {
    v145 = sub_1E3E5FDEC();
  }

  v432 = v1;
  v559[0] = *v145;
  TVAppFeature.isEnabled.getter(20);
  v147 = OUTLINED_FUNCTION_163_5();
  if (v148)
  {
    v147 = sub_1E3E5FDEC();
  }

  *&v608[0] = *v147;
  sub_1E3280A90(0, &qword_1EE23AE20);
  v149 = OUTLINED_FUNCTION_18_82();
  OUTLINED_FUNCTION_210_0(v149, v150);
  v151 = __dst[0];
  v152 = __dst[1];
  v153 = __dst[2];
  *v599 = __dst[0];
  v600 = __dst[1];
  v601 = __dst[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_0_44();
  v155 = *(v154 + 1600);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_172();
  v155();

  OUTLINED_FUNCTION_0_44();
  (*(v156 + 2008))(1);
  sub_1E3CD8684();
  OUTLINED_FUNCTION_0_44();
  (*(v157 + 608))();
  v599[0] = 27;
  TVAppFeature.isEnabled.getter(20);
  v566[0] = 17;
  if (TVAppFeature.isEnabled.getter(20))
  {
    v158 = 14;
  }

  else
  {
    v158 = 17;
  }

  LOBYTE(v540[0]) = v158;
  LOBYTE(v565[0]) = 21;
  LOBYTE(v559[0]) = 15;
  LOBYTE(v608[0]) = 15;
  v159 = OUTLINED_FUNCTION_18_82();
  OUTLINED_FUNCTION_210_0(v159, v160);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_40();
  OUTLINED_FUNCTION_172();
  v155();
  OUTLINED_FUNCTION_0_44();
  (*(v161 + 256))(0x4076800000000000, 0);
  OUTLINED_FUNCTION_0_44();
  (*(v162 + 1792))(4);
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E3C8BE74();
    sub_1E3DEFBE8(1);
  }

  else if (TVAppFeature.isEnabled.getter(20))
  {
    (*(*v135 + 2272))(1);
  }

  (*(*v135 + 1720))(7);
  v599[0] = 7;
  v566[0] = 1;
  LOBYTE(v540[0]) = 1;
  LOBYTE(v565[0]) = 5;
  sub_1E3C3DE00(&unk_1F5D54CA8);
  OUTLINED_FUNCTION_109_6();
  sub_1E3C3DE00(&unk_1F5D54CA8);
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_18_82();
  OUTLINED_FUNCTION_153_5();
  sub_1E3C2FCB8(v163, v164);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_40();
  OUTLINED_FUNCTION_172();
  v155();
  type metadata accessor for RelationalLayout();
  v165 = sub_1E4177030();
  TVAppFeature.isEnabled.getter(20);
  sub_1E3952C88();
  nullsub_1(v166, v167);
  sub_1E41776B0(v168, v169, v170, v171);
  OUTLINED_FUNCTION_0_44();
  v173 = *(v172 + 1424);

  v420 = v165;
  v173(v174);
  memset(v608, 0, sizeof(v608));
  v609 = 1;
  sub_1E3952C58();
  *&v605 = v175;
  *(&v605 + 1) = v176;
  *&v606 = v177;
  *(&v606 + 1) = v178;
  v607 = 0;
  TVAppFeature.isEnabled.getter(20);
  sub_1E3952C58();
  *&v602 = v179;
  *(&v602 + 1) = v180;
  *&v603 = v181;
  *(&v603 + 1) = v182;
  v604 = 0;
  TVAppFeature.isEnabled.getter(20);
  sub_1E3952C88();
  v585[0] = v183;
  v585[1] = v184;
  v586[0] = v185;
  v586[1] = v186;
  LOBYTE(v587) = 0;
  TVAppFeature.isEnabled.getter(20);
  sub_1E3952C58();
  OUTLINED_FUNCTION_167_5(v187, v188, v189, v190);
  sub_1E3952C88();
  OUTLINED_FUNCTION_54_28(v191, v192, v193, v194);
  sub_1E3C2FCB8(v608, __dst);
  v195 = OUTLINED_FUNCTION_121_8();
  memcpy(v195, v196, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v155();
  if (TVAppFeature.isEnabled.getter(20))
  {
    v197 = v1[21];
    OUTLINED_FUNCTION_8();
    v198 = OUTLINED_FUNCTION_8_5();
    v199(v198);
    v200 = *sub_1E3E5FDEC();
    v201 = *(*v197 + 680);
    v202 = v200;
    v201(v200);
    OUTLINED_FUNCTION_36();
    (*(v203 + 2008))(1);
    sub_1E3CD8684();
    OUTLINED_FUNCTION_36();
    (*(v204 + 608))();
    OUTLINED_FUNCTION_186();
    LOBYTE(v565[0]) = v205;
    LOBYTE(v559[0]) = 21;
    LOBYTE(v574[0]) = 3;
    LOBYTE(v573) = 15;
    OUTLINED_FUNCTION_22_69();
    OUTLINED_FUNCTION_148_7();
    sub_1E3C2FCB8(v206, v207);
    OUTLINED_FUNCTION_38_39();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v209 = *(v208 + 1600);
    OUTLINED_FUNCTION_79_16();
    v209();
    OUTLINED_FUNCTION_36();
    (*(v210 + 1792))(5);
    OUTLINED_FUNCTION_36();
    (*(v211 + 2272))(1);
    OUTLINED_FUNCTION_36();
    (*(v212 + 1720))(7);
    LOBYTE(v540[0]) = 1;
    LOBYTE(v565[0]) = 1;
    LOBYTE(v559[0]) = 5;
    sub_1E3C3DE00(&unk_1F5D54CA8);
    LOBYTE(v573) = 3;
    v213 = OUTLINED_FUNCTION_207();
    sub_1E3C3DE00(v213);
    LOBYTE(v567[0]) = v570[0];
    v214 = OUTLINED_FUNCTION_22_69();
    sub_1E3C2FCB8(v214, v215);
    OUTLINED_FUNCTION_38_39();
    OUTLINED_FUNCTION_18();
    v216 = OUTLINED_FUNCTION_51_31();
    (v209)(v216, 59);
    memset(v566, 0, 32);
    v566[32] = 1;
    sub_1E3952C58();
    OUTLINED_FUNCTION_106_0();
    sub_1E3952C58();
    OUTLINED_FUNCTION_174_0(v217, v218, v219, v220);
    sub_1E3952C88();
    OUTLINED_FUNCTION_4_167(v221, v222, v223, v224);
    sub_1E3952C58();
    OUTLINED_FUNCTION_160_4(v225, v226, v227, v228);
    OUTLINED_FUNCTION_90_12(v229, v230, v231, v232);
    OUTLINED_FUNCTION_22_69();
    OUTLINED_FUNCTION_148_7();
    sub_1E3C2FCB8(v233, v234);
    OUTLINED_FUNCTION_183_3();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_24_71();
    v209();
    v235 = v1[20];
    OUTLINED_FUNCTION_36();
    (*(v236 + 2056))(1, 0);
    v237 = *v426;
    v238 = *(*v235 + 680);
    v239 = *v426;
    v238(v237);
    OUTLINED_FUNCTION_36();
    (*(v240 + 2008))(1);
    OUTLINED_FUNCTION_186();
    LOBYTE(v565[0]) = 14;
    LOBYTE(v559[0]) = 21;
    LOBYTE(v574[0]) = 15;
    LOBYTE(v573) = 15;
    OUTLINED_FUNCTION_22_69();
    OUTLINED_FUNCTION_148_7();
    sub_1E3C2FCB8(v241, v242);
    OUTLINED_FUNCTION_38_39();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v244 = *(v243 + 1600);
    OUTLINED_FUNCTION_79_16();
    v244();
    v566[0] = 4;
    LOBYTE(v540[0]) = 5;
    LOBYTE(v565[0]) = 5;
    LOBYTE(v559[0]) = 5;
    LOBYTE(v574[0]) = 10;
    LOBYTE(v573) = 6;
    OUTLINED_FUNCTION_22_69();
    OUTLINED_FUNCTION_148_7();
    sub_1E3C2FCB8(v245, v246);
    OUTLINED_FUNCTION_38_39();
    OUTLINED_FUNCTION_18();
    v247 = OUTLINED_FUNCTION_51_31();
    (v244)(v247, 54);
    OUTLINED_FUNCTION_36();
    (*(v248 + 1720))(7);
    v566[0] = 7;
    LOBYTE(v565[0]) = 1;
    LOBYTE(v559[0]) = 5;
    sub_1E3C3DE00(&unk_1F5D54CA8);
    LOBYTE(v573) = 10;
    v249 = OUTLINED_FUNCTION_207();
    sub_1E3C3DE00(v249);
    LOBYTE(v567[0]) = v570[0];
    v250 = OUTLINED_FUNCTION_22_69();
    sub_1E3C2FCB8(v250, v251);
    OUTLINED_FUNCTION_38_39();
    OUTLINED_FUNCTION_18();
    v252 = OUTLINED_FUNCTION_51_31();
    (v244)(v252, 59);
    *v540 = 0u;
    *v541 = 0u;
    LOBYTE(v542) = 1;
    sub_1E3952C58();
    OUTLINED_FUNCTION_174_0(v253, v254, v255, v256);
    sub_1E3952C58();
    OUTLINED_FUNCTION_4_167(v257, v258, v259, v260);
    sub_1E3952C88();
    OUTLINED_FUNCTION_54_28(v261, v262, v263, v264);
    sub_1E3952C58();
    OUTLINED_FUNCTION_160_4(v265, v266, v267, v268);
    OUTLINED_FUNCTION_90_12(v269, v270, v271, v272);
    OUTLINED_FUNCTION_148_7();
    sub_1E3C2FCB8(v273, v274);
    OUTLINED_FUNCTION_183_3();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_24_71();
    v244();
  }

  v275 = *sub_1E3E5FDEC();
  OUTLINED_FUNCTION_8();
  v277 = *(v276 + 680);
  v278 = v275;
  v277(v275);
  v279 = objc_opt_self();
  v280 = [v279 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v281 + 1960))();
  OUTLINED_FUNCTION_36();
  (*(v282 + 2008))(1);
  OUTLINED_FUNCTION_36();
  v283 = OUTLINED_FUNCTION_8_5();
  v284(v283);
  OUTLINED_FUNCTION_36();
  (*(v285 + 1720))(7);
  sub_1E3CD8684();
  OUTLINED_FUNCTION_36();
  (*(v286 + 608))();
  v566[0] = 21;
  LOBYTE(v540[0]) = 27;
  LOBYTE(v565[0]) = 27;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v287 = 25;
  }

  else
  {
    v287 = 22;
  }

  LOBYTE(v559[0]) = v287;
  if (TVAppFeature.isEnabled.getter(20))
  {
    v288 = 15;
  }

  else
  {
    v288 = 17;
  }

  LOBYTE(v574[0]) = v288;
  LOBYTE(v573) = 22;
  OUTLINED_FUNCTION_22_69();
  OUTLINED_FUNCTION_148_7();
  sub_1E3C2FCB8(v289, v290);
  OUTLINED_FUNCTION_38_39();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v292 = *(v291 + 1600);
  OUTLINED_FUNCTION_79_16();
  v292();
  v566[0] = 11;
  if (TVAppFeature.isEnabled.getter(20))
  {
    v293 = 5;
  }

  else
  {
    v293 = 10;
  }

  LOBYTE(v540[0]) = v293;
  LOBYTE(v565[0]) = 10;
  sub_1E3C2FC98();
  LOBYTE(v574[0]) = v559[0];
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v570[0]) = v573;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v552[0]) = v567[0];
  sub_1E3C2FCB8(v566, v599);
  OUTLINED_FUNCTION_38_39();
  OUTLINED_FUNCTION_18();
  v294 = OUTLINED_FUNCTION_51_31();
  (v292)(v294, 54);
  *v575 = 0u;
  *v574 = 0u;
  v576 = 1;
  sub_1E3952C88();
  OUTLINED_FUNCTION_90_12(v295, v296, v297, v298);
  TVAppFeature.isEnabled.getter(20);
  sub_1E3952C88();
  OUTLINED_FUNCTION_54_28(v299, v300, v301, v302);
  sub_1E3952C88();
  OUTLINED_FUNCTION_106_0();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_113_8();
  sub_1E3C3DE00(v4);
  *v567 = *v570;
  *v568 = *v571;
  LOBYTE(v569) = v572;
  sub_1E3C2FCB8(v574, v599);
  OUTLINED_FUNCTION_183_3();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v292();
  v303 = sub_1E4205F14();
  v305 = v304;
  v306 = sub_1E4205F14();
  sub_1E376C12C(v303, v305, v306, v307);
  OUTLINED_FUNCTION_36();
  (*(v308 + 1888))();
  if (TVAppFeature.isEnabled.getter(20))
  {
    OUTLINED_FUNCTION_8();
    (*(v309 + 1984))(1);
    OUTLINED_FUNCTION_8();
    (*(v310 + 2128))(0x3FE6666666666666, 0);
  }

  v311 = v432;
  OUTLINED_FUNCTION_8();
  (*(v312 + 1808))(1);
  OUTLINED_FUNCTION_36();
  (*(v313 + 512))(4);
  v314 = TVAppFeature.isEnabled.getter(20);
  v315 = 0x406FC00000000000;
  if (v314)
  {
    v315 = 0x406D600000000000;
  }

  v563 = v315;
  v564 = 0;
  v561 = 0x407A400000000000;
  v562 = 0;
  v316 = TVAppFeature.isEnabled.getter(20);
  v317 = 0x406E000000000000;
  if (v316)
  {
    v317 = 0x4070400000000000;
  }

  v559[12] = v317;
  v560 = 0;
  v318 = TVAppFeature.isEnabled.getter(20);
  v319 = 0x4077800000000000;
  if ((v318 & 1) == 0)
  {
    v319 = 0x4077200000000000;
  }

  *v566 = v319;
  v566[8] = 0;
  v320 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_117_9();
  v559[0] = v321;
  LOBYTE(v559[1]) = v322;
  v323 = OUTLINED_FUNCTION_207();
  sub_1E3C3DE00(v323);
  OUTLINED_FUNCTION_195_2();
  sub_1E3C2FCB8(&v563, v565);
  memcpy(v566, v565, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v325 = *(v324 + 1600);
  (v325)(v566, 4, v326 & 1, v320);
  v557 = 0x404E000000000000;
  v558 = 0;
  v555 = 0x405F800000000000;
  v556 = 0;
  v327 = TVAppFeature.isEnabled.getter(20);
  v328 = 0x404D000000000000;
  if ((v327 & 1) == 0)
  {
    v328 = 0x404E000000000000;
  }

  *v566 = v328;
  v566[8] = 0;
  OUTLINED_FUNCTION_207();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_195_2();
  sub_1E3C3DE00(v320);
  sub_1E3C2FCB8(&v557, v559);
  memcpy(v566, v559, 0x59uLL);
  OUTLINED_FUNCTION_18();
  v329 = OUTLINED_FUNCTION_51_31();
  v325(v329, 8);
  *v540 = 0u;
  *v541 = 0u;
  LOBYTE(v542) = 1;
  *v570 = xmmword_1E42A76C0;
  *v571 = xmmword_1E42CA400;
  LOBYTE(v572) = 0;
  *v567 = xmmword_1E42B8850;
  *v568 = xmmword_1E4296D10;
  LOBYTE(v569) = 0;
  v552[1] = 0;
  v552[0] = 0;
  v553 = xmmword_1E4296CE0;
  v554 = 0;
  v549 = xmmword_1E42CA410;
  v550 = xmmword_1E42CA420;
  v551 = 0;
  sub_1E3C3DE00(v4);
  v543 = v546;
  v544 = v547;
  v545 = v548;
  sub_1E3C2FCB8(v540, v566);
  v338 = OUTLINED_FUNCTION_203_1(v330, v331, v332, v333, v334, v335, v336, v337, v414, v420, v426, v432, v438, v443, v448, v453, v458, v464, v470, v476, v482, v488, v494, v500, v506, v512, v517, v523, v528, v534, v540[0]);
  memcpy(v338, v339, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  (v325)();
  if (TVAppFeature.isEnabled.getter(20))
  {
    v340 = [v279 blackColor];
    OUTLINED_FUNCTION_36();
    (*(v341 + 752))();
  }

  OUTLINED_FUNCTION_8();
  (*(v342 + 1808))(1);
  OUTLINED_FUNCTION_36();
  (*(v343 + 512))(4);
  LOBYTE(v540[0]) = 1;
  LOBYTE(v570[0]) = 4;
  LOBYTE(v567[0]) = 4;
  sub_1E3C2FC98();
  LOBYTE(v549) = v552[0];
  sub_1E3C3DE00(&unk_1F5D995F0);
  LOBYTE(v543) = v546;
  sub_1E3C3DE00(&unk_1F5D995F0);
  LOBYTE(v471) = v507;
  sub_1E3C2FCB8(v540, v566);
  LODWORD(v540[0]) = *v566;
  WORD2(v540[0]) = *&v566[4];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v345 = *(v344 + 1600);
  (v345)(v540, 14, v346 & 1, &unk_1F5D995F0);
  v540[0] = 0x4066800000000000;
  LOBYTE(v540[1]) = 0;
  v570[0] = 0x4070400000000000;
  LOBYTE(v570[1]) = 0;
  OUTLINED_FUNCTION_193_1(0x406A000000000000uLL);
  v347 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_34_52();
  v348 = sub_1E3C3DE00(v347);
  OUTLINED_FUNCTION_105_11(v348, v349, v350, v351, v352, v353, v354, v355, v415, v421, v427, v433, v439, v444, v449, v454, v459, v465, v471, v477, v483, v489, v495, v501, v507, v513, v518, v524, v529, v535, v540[0]);
  v364 = OUTLINED_FUNCTION_203_1(v356, v357, v358, v359, v360, v361, v362, v363, v416, v422, v428, v434, v440, v445, v450, v455, v460, v466, v472, v478, v484, v490, v496, v502, v508, v514, v519, v525, v530, v536, v540[0]);
  memcpy(v364, v365, 0x59uLL);
  v366 = OUTLINED_FUNCTION_18();
  (v345)(v540, 4, v366 & 1, v347);
  v540[0] = 0x4046000000000000;
  LOBYTE(v540[1]) = 0;
  v570[0] = 0x4049000000000000;
  LOBYTE(v570[1]) = 0;
  OUTLINED_FUNCTION_193_1(0x4044000000000000uLL);
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_34_52();
  v367 = sub_1E3C3DE00(v347);
  OUTLINED_FUNCTION_105_11(v367, v368, v369, v370, v371, v372, v373, v374, v417, v423, v429, v435, v441, v446, v451, v456, v461, v467, v473, v479, v485, v491, v497, v503, v509, v515, v520, v526, v531, v537, v540[0]);
  v383 = OUTLINED_FUNCTION_203_1(v375, v376, v377, v378, v379, v380, v381, v382, v418, v424, v430, v436, v442, v447, v452, v457, v462, v468, v474, v480, v486, v492, v498, v504, v510, v516, v521, v527, v532, v538, v540[0]);
  memcpy(v383, v384, 0x59uLL);
  v385 = OUTLINED_FUNCTION_18();
  (v345)(v540, 8, v385 & 1, v347);
  sub_1E3952C94();
  OUTLINED_FUNCTION_106_0();
  sub_1E3952C94();
  v570[0] = v386;
  v570[1] = v387;
  v571[0] = v388;
  v571[1] = v389;
  LOBYTE(v572) = 0;
  sub_1E3C2FC98();
  *v552 = *v567;
  v553 = *v568;
  v554 = v569;
  sub_1E3C3DE00(v4);
  v546 = v549;
  v547 = v550;
  v548 = v551;
  sub_1E3C3DE00(v4);
  v511 = v543;
  v522 = v544;
  LOBYTE(v533) = v545;
  sub_1E3C3DE00(v4);
  LOBYTE(v463) = v499;
  sub_1E3C2FCB8(v540, v566);
  v398 = OUTLINED_FUNCTION_203_1(v390, v391, v392, v393, v394, v395, v396, v397, v419, v425, v431, v437, v475, v481, v487, v493, v463, v469, v475, v481, v487, v493, v499, v505, v511, *(&v511 + 1), v522, *(&v522 + 1), v533, v539, v540[0]);
  memcpy(v398, v399, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v345();
  TVAppFeature.isEnabled.getter(20);
  v400 = *(v311 + 104);
  sub_1E3952C58();
  [v400 setMargin_];
  v401 = *(v311 + 120);
  v402 = [v400 textLayout];
  v403 = v402;
  if (v401 == 4)
  {
    [v402 setMaximumContentSizeCategory_];

    [v400 setEntitlementCueImageMaxContentSizeCategory_];
    OUTLINED_FUNCTION_34_6();
    (*(v404 + 1928))(10);
  }

  else
  {
    [v402 setMaximumContentSizeCategory_];

    OUTLINED_FUNCTION_34_6();
    (*(v405 + 1928))(7);
    [v400 setEntitlementCueImageMaxContentSizeCategory_];
  }

  v406 = [v400 textLayout];
  [v406 setBlendMode_];

  sub_1E3CD3B70();
  sub_1E3CCE874();
  OUTLINED_FUNCTION_2_1();
  (*(v407 + 800))(0);

  v408 = *(v311 + 272);

  v409.n128_u64[0] = 14.0;
  *v566 = j__OUTLINED_FUNCTION_7_78(v409);
  *&v566[8] = v410;
  *&v566[16] = v411;
  *&v566[24] = v412;
  v566[32] = 0;
  (*(*v408 + 560))(v566);

  sub_1E3CD2D48();
}

id sub_1E3CD8684()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  [v0 setShadowOffset_];
  [v0 setShadowBlurRadius_];
  sub_1E3280A90(0, &qword_1EE23AE20);
  v1 = sub_1E4206F24();
  [v0 setShadowColor_];

  return v0;
}

uint64_t sub_1E3CD8738()
{
  v1 = v0;
  OUTLINED_FUNCTION_111();
  v2 += 256;
  v561 = *v2;
  v590 = v2;
  (*v2)();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 872))(0);

  OUTLINED_FUNCTION_9_2();
  v503 = v4 + 2096;
  v532 = *(v4 + 2096);
  v532();
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 872))(0);

  OUTLINED_FUNCTION_9_2();
  (*(v6 + 2032))(1);
  v7 = objc_opt_self();
  v8 = [v7 configurationWithPointSize_];
  v647 = objc_opt_self();
  v9 = [v647 blackColor];
  v10 = [v7 configurationWithHierarchicalColor_];

  v11 = [v8 configurationByApplyingConfiguration_];
  OUTLINED_FUNCTION_3_0();
  v12 = *(v1 + 256);
  *(v1 + 256) = v11;

  v13 = [v7 configurationWithPointSize_];
  v14 = [v647 blackColor];
  v15 = [v7 configurationWithHierarchicalColor_];

  v16 = [v13 configurationByApplyingConfiguration_];
  OUTLINED_FUNCTION_3_0();
  v17 = *(v1 + 264);
  *(v1 + 264) = v16;

  BYTE8(v1188) = 1;
  OUTLINED_FUNCTION_114_6();
  *&v1220 = 0x4052000000000000;
  BYTE8(v1220) = 0;
  *&v1217 = 0x4044000000000000;
  BYTE8(v1217) = 0;
  v18 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_34_52();
  OUTLINED_FUNCTION_68_21(v19, v20, v21, v22, v23, v24, v25, v26, v389, v1, v446, v475, v503, v532, v561, v590, v619, v647, v676, v702, v729, v756, v783, v812, v841, v869, v898, v927, v956, v985, v1014, v1043, v1072, v1101, v1130, v1159, 0);
  v35 = OUTLINED_FUNCTION_112_10(v27, v28, v29, v30, v31, v32, v33, v34, v390, v418, v447, v476, v504, v533, v562, v591, v620, v648, v677, v703, v730, v757, v784, v813, v842, v870, v899, v928, v957, v986, v1015, v1044, v1073, v1102, v1131, v1160, v1188);
  memcpy(v35, v36, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  v38 = v37 + 1600;
  OUTLINED_FUNCTION_28_1(v39, v40, v41, v42, v43, v44, v45, v46, v391, v419, v448, v477, v505, v534, v563, v592, *(v37 + 1600), v649, v678, v704, v731, v758, v785, v814, v843, v871, v900, v929, v958, v987, v1016, v1045, v1074, v1103, v1132, v1161, v1188);
  OUTLINED_FUNCTION_176_4();
  v47();
  BYTE8(v1188) = 1;
  OUTLINED_FUNCTION_114_6();
  OUTLINED_FUNCTION_161_5();
  OUTLINED_FUNCTION_34_52();
  OUTLINED_FUNCTION_68_21(v48, v49, v50, v51, v52, v53, v54, v55, v392, v420, v449, v478, v506, v535, v564, v593, v621, v650, v679, v705, v732, v759, v786, v815, v844, v872, v901, v930, v959, v988, v1017, v1046, v1075, v1104, v1133, v1162, 0);
  v64 = OUTLINED_FUNCTION_112_10(v56, v57, v58, v59, v60, v61, v62, v63, v393, v421, v450, v479, v507, v536, v565, v594, v622, v651, v680, v706, v733, v760, v787, v816, v845, v873, v902, v931, v960, v989, v1018, v1047, v1076, v1105, v1134, v1163, v1188);
  memcpy(v64, v65, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v67 = *(v66 + 1600);
  v76 = OUTLINED_FUNCTION_28_1(v68, v69, v70, v71, v72, v73, v74, v75, v394, v422, v451, v480, v508, v537, v566, v595, v623, v652, v681, v707, v734, v761, v788, v817, v846, v874, v903, v932, v961, v990, v1019, v1048, v1077, v1106, v1135, v1164, v1188);
  v67(v76, 6);
  OUTLINED_FUNCTION_114_6();
  OUTLINED_FUNCTION_161_5();
  OUTLINED_FUNCTION_34_52();
  OUTLINED_FUNCTION_68_21(v77, v78, v79, v80, v81, v82, v83, v84, v395, v423, v452, v481, v509, v538, v567, v596, v624, v653, v682, v708, v735, v762, v789, v818, v847, v875, v904, v933, v962, v991, v1020, v1049, v1078, v1107, v1136, v1165, 0);
  v93 = OUTLINED_FUNCTION_112_10(v85, v86, v87, v88, v89, v90, v91, v92, v396, v424, v453, v482, v510, v539, v568, v597, v625, v654, v683, v709, v736, v763, v790, v819, v848, v876, v905, v934, v963, v992, v1021, v1050, v1079, v1108, v1137, v1166, v1188);
  memcpy(v93, v94, 0x59uLL);
  v95 = OUTLINED_FUNCTION_18();
  v103 = OUTLINED_FUNCTION_9_8(v95, v96, v97, v98, v99, v100, v101, v102, v397, v425, v454, v483, v511, v540, v569, v598, v626, v655, v684, v710, v737, v764, v791, v820, v849, v877, v906, v935, v964, v993, v1022, v1051, v1080, v1109, v1138, v1167, v1188);
  v67(v103, 2);
  *&v1188 = 0;
  BYTE8(v1188) = 1;
  v1230 = 126.0;
  LOBYTE(v1231) = 0;
  *&v1223 = 0x405F800000000000;
  BYTE8(v1223) = 0;
  sub_1E3C3DE00(v18);
  *&v1217 = 0x4052000000000000;
  BYTE8(v1217) = 0;
  sub_1E3C3DE00(v18);
  OUTLINED_FUNCTION_34_52();
  sub_1E3C3DE00(v18);
  OUTLINED_FUNCTION_117_9();
  v850 = v104;
  LOBYTE(v878) = v105;
  sub_1E3C2FCB8(&v1188, &v1226);
  v114 = OUTLINED_FUNCTION_112_10(v106, v107, v108, v109, v110, v111, v112, v113, v398, v426, v455, v484, v512, v541, v570, v599, v627, v656, v685, v711, v738, v765, v792, v821, v850, v878, v907, v936, v965, v994, v1023, v1052, v1081, v1110, v1139, v1168, v1188);
  memcpy(v114, v115, 0x59uLL);
  v116 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_8(v116, v117, v118, v119, v120, v121, v122, v123, v399, v427, v456, v485, v513, v542, v571, v600, v628, v657, v686, v712, v739, v766, v793, v822, v851, v879, v908, v937, v966, v995, v1024, v1053, v1082, v1111, v1140, v1169, v1188);
  OUTLINED_FUNCTION_176_4();
  v124 = v629;
  v629();
  v457 = v38;
  OUTLINED_FUNCTION_9_2();
  (*(v125 + 256))(0, 1);
  *&v1188 = [v658 whiteColor];
  v126 = sub_1E3280A90(0, &qword_1EE23AE20);
  OUTLINED_FUNCTION_10_104();
  v127 = sub_1E4206F24();
  OUTLINED_FUNCTION_10_104();
  v128 = sub_1E4206F24();
  v129 = sub_1E3E5F2F8(v127, v128);

  v1230 = *&v129;
  sub_1E3C2FC98();
  *&v1220 = v1223;
  sub_1E3C3DE00(v126);
  v1216 = v1217;
  sub_1E3C3DE00(v126);
  v1025 = v1213;
  sub_1E3C3DE00(v126);
  sub_1E3C2FCB8(&v1188, &v1226);
  v130 = v1226;
  v131 = v1227;
  v132 = v1228;
  v133 = v1229;
  v1188 = v1226;
  v1189 = v1227;
  v1190 = v1228;
  v1191 = v1229;
  v134 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_8(v134, v135, v136, v137, v138, v139, v140, v141, v400, v428, v457, v486, v514, v543, v572, v601, v629, v658, v852, v713, v740, v767, v794, v823, v852, v880, v909, v938, v967, v996, v1025, v1054, v1083, v1112, v1141, v1170, v1188);
  OUTLINED_FUNCTION_198();
  v124();

  type metadata accessor for RelationalLayout();
  v142 = sub_1E4177030();
  sub_1E3952C88();
  nullsub_1(v143, v144);
  sub_1E41776B0(v145, v146, v147, v148);
  sub_1E3952C88();
  nullsub_1(v149, v150);
  sub_1E41776B0(v151, v152, v153, v154);
  OUTLINED_FUNCTION_0_44();
  v156 = *(v155 + 1424);

  v158 = v156(v157);
  v159 = v544;
  v544(v158);
  OUTLINED_FUNCTION_26_0();
  (*(v160 + 208))(0x403C000000000000, 0);

  v544(v161);
  OUTLINED_FUNCTION_2_1();
  (*(v162 + 312))(0x403C000000000000, 0);

  v573(v163);
  v164 = [v659 blackColor];
  OUTLINED_FUNCTION_36();
  (*(v165 + 680))();

  v573(v166);
  LOBYTE(v1188) = 7;
  LOBYTE(v1230) = 7;
  LOBYTE(v1223) = 3;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v1217) = v1220;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v1213) = v1216;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v853) = v1026;
  sub_1E3C2FCB8(&v1217, &v1226);
  LODWORD(v1188) = v1226;
  WORD2(v1188) = WORD2(v1226);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_79_16();
  v167();

  v573(v168);
  v1230 = sub_1E3952C40();
  v1231 = v169;
  v1232 = v170;
  v1233 = v171;
  v1234 = 0;
  OUTLINED_FUNCTION_8();
  (*(v172 + 160))(&v1230);

  v544(v173);
  v174 = [v659 blackColor];
  OUTLINED_FUNCTION_36();
  (*(v175 + 680))();

  v1188 = 0u;
  v1189 = 0u;
  LOBYTE(v1190) = 1;
  v176 = sub_1E3952C10(12.0, 12.0);
  OUTLINED_FUNCTION_12_10(v176, v177, v178, v179);
  v180 = sub_1E3952C10(12.0, 12.0);
  OUTLINED_FUNCTION_11_19(v180, v181, v182, v183);
  *&v1217 = sub_1E3952C10(20.0, 20.0);
  *(&v1217 + 1) = v184;
  *&v1218 = v185;
  *(&v1218 + 1) = v186;
  v1219 = 0;
  v187 = sub_1E3952C10(10.0, 10.0);
  OUTLINED_FUNCTION_10_12(v187, v188, v189, v190);
  v1213 = 0u;
  v1214 = 0u;
  v1215 = 1;
  type metadata accessor for UIEdgeInsets();
  v192 = v191;
  v200 = OUTLINED_FUNCTION_73_15(v191, v193, v194, v195, v196, v197, v198, v199, v401, v429, v458, v142, v515, v544, v573, v602, v630, v659, v687, v714, v741, v768, v795, v824, v853, v881, v910, v939, v968, v997, v1026, v1055, v1084, v1113, v1142, v1171, v1188);
  sub_1E3C2FCB8(v200, v201);
  v210 = OUTLINED_FUNCTION_112_10(v202, v203, v204, v205, v206, v207, v208, v209, v402, v430, v459, v487, v516, v545, v574, v603, v631, v660, v688, v715, v742, v769, v796, v825, v854, v882, v911, v940, v969, v998, v1027, v1056, v1085, v1114, v1143, v1172, v1188);
  memcpy(v210, v211, 0xE9uLL);
  v212 = OUTLINED_FUNCTION_18();
  v220 = OUTLINED_FUNCTION_9_8(v212, v213, v214, v215, v216, v217, v218, v219, v403, v431, v460, v488, v517, v546, v575, v604, v632, v661, v689, v716, v743, v770, v797, v826, v855, v883, v912, v941, v970, v999, v1028, v1057, v1086, v1115, v1144, v1173, v1188);
  v221 = v633(v220, 0);
  v159(v221);
  *&v1188 = sub_1E3952C10(30.0, 30.0);
  *(&v1188 + 1) = v222;
  *&v1189 = v223;
  *(&v1189 + 1) = v224;
  LOBYTE(v1190) = 0;
  v225 = sub_1E3952C10(58.0, 42.0);
  OUTLINED_FUNCTION_12_10(v225, v226, v227, v228);
  v229 = sub_1E3952C10(24.0, 24.0);
  OUTLINED_FUNCTION_11_19(v229, v230, v231, v232);
  sub_1E3C2FC98();
  v233 = OUTLINED_FUNCTION_138_7();
  v234 = sub_1E3C3DE00(v233);
  OUTLINED_FUNCTION_115_6(v234, v235, v236, v237, v238, v239, v240, v241, v404, v432, v461, v489, v518, v547, v576, v605, v633, v662, v690, v717, v744, v771, v798, v827, v856, v884, v913, v942, v971, v1000, v1029, v1058, v1087, v1116, v1145, v1174, v1188, *(&v1188 + 1), v1189, *(&v1189 + 1), v1190, v1191, v1192, v1193, v1194, v1195, v1196, v1197, v1198, v1199, v1200, v1201, v1202, v1203, v1204, v1205, v1206, v1207, v1208, v1209, v1210, v1211, v1212);
  sub_1E3C3DE00(v192);
  LOBYTE(v799) = v972;
  sub_1E3C2FCB8(&v1188, &v1226);
  v250 = OUTLINED_FUNCTION_112_10(v242, v243, v244, v245, v246, v247, v248, v249, v405, v433, v462, v490, v519, v548, v577, v606, v634, v663, v857, v885, v914, v943, v799, v828, v857, v885, v914, v943, v972, v1001, v1030, v1059, v1088, v1117, v1146, v1175, v1188);
  memcpy(v250, v251, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v260 = OUTLINED_FUNCTION_28_1(v252, v253, v254, v255, v256, v257, v258, v259, v406, v434, v463, v491, v520, v549, v578, v607, v635, v664, v691, v718, v745, v772, v800, v829, v858, v886, v915, v944, v973, v1002, v1031, v1060, v1089, v1118, v1147, v1176, v1188);
  v261(v260, 1);

  v159(v262);
  OUTLINED_FUNCTION_2_1();
  (*(v263 + 464))(1);

  sub_1E3952C88();
  *&v1188 = v264;
  *(&v1188 + 1) = v265;
  *&v1189 = v266;
  *(&v1189 + 1) = v267;
  LOBYTE(v1190) = 0;
  v1223 = xmmword_1E42B5E30;
  v1224 = xmmword_1E42CA430;
  v1225 = 0;
  v1220 = xmmword_1E42B5E30;
  v1221 = xmmword_1E42CA430;
  v1222 = 0;
  v1217 = xmmword_1E42CA380;
  v1218 = xmmword_1E42CA440;
  v1219 = 0;
  sub_1E3952C58();
  OUTLINED_FUNCTION_10_12(v268, v269, v270, v271);
  v272 = sub_1E3C3DE00(v192);
  OUTLINED_FUNCTION_115_6(v272, v273, v274, v275, v276, v277, v278, v279, v407, v435, v464, v492, v521, v550, v579, v608, v636, v665, v692, v719, v746, v773, v801, v830, v859, v887, v916, v945, v974, v1003, v1032, v1061, v1090, v1119, v1148, v1177, v1188, *(&v1188 + 1), v1189, *(&v1189 + 1), v1190, v1191, v1192, v1193, v1194, v1195, v1196, v1197, v1198, v1199, v1200, v1201, v1202, v1203, v1204, v1205, v1206, v1207, v1208, v1209, v1210, v1211, v1212);
  v288 = OUTLINED_FUNCTION_73_15(v280, v281, v282, v283, v284, v285, v286, v287, v408, v436, v465, v493, v522, v551, v580, v609, v637, v666, v693, v720, v747, v774, v802, v831, v860, v888, v917, v946, v975, v1004, v1033, v1062, v1091, v1120, v1149, v1178, v1188);
  sub_1E3C2FCB8(v288, v289);
  v298 = OUTLINED_FUNCTION_112_10(v290, v291, v292, v293, v294, v295, v296, v297, v409, v437, v466, v494, v523, v552, v581, v610, v638, v667, v694, v721, v748, v775, v803, v832, v861, v889, v918, v947, v976, v1005, v1034, v1063, v1092, v1121, v1150, v1179, v1188);
  memcpy(v298, v299, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_0_44();
  v301 = *(v300 + 1600);
  v310 = OUTLINED_FUNCTION_28_1(v302, v303, v304, v305, v306, v307, v308, v309, v410, v438, v467, v495, v524, v553, v582, v611, v639, v668, v695, v722, v749, v776, v804, v833, v862, v890, v919, v948, v977, v1006, v1035, v1064, v1093, v1122, v1151, v1180, v1188);
  (v301)(v310, 0);
  *&v1188 = 0;
  BYTE8(v1188) = 1;
  *&v1223 = 0x4074000000000000;
  BYTE8(v1223) = 0;
  *&v1220 = 0x4074000000000000;
  BYTE8(v1220) = 0;
  *&v1217 = 0x4079000000000000;
  BYTE8(v1217) = 0;
  v311 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_34_52();
  sub_1E3C3DE00(v311);
  OUTLINED_FUNCTION_117_9();
  LOBYTE(v891) = v312;
  v322 = OUTLINED_FUNCTION_73_15(v313, v314, v315, v316, v317, v318, v319, v320, v411, v439, v468, v496, v525, v554, v583, v612, v640, v669, v696, v723, v750, v777, v805, v834, v321, v891, v920, v949, v978, v1007, v1036, v1065, v1094, v1123, v1152, v1181, v1188);
  sub_1E3C2FCB8(v322, v323);
  v332 = OUTLINED_FUNCTION_112_10(v324, v325, v326, v327, v328, v329, v330, v331, v412, v440, v469, v497, v526, v555, v584, v613, v641, v670, v697, v724, v751, v778, v806, v835, v863, v892, v921, v950, v979, v1008, v1037, v1066, v1095, v1124, v1153, v1182, v1188);
  memcpy(v332, v333, 0x59uLL);
  v334 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_8(v334, v335, v336, v337, v338, v339, v340, v341, v413, v441, v470, v498, v527, v556, v585, v614, v642, v671, v698, v725, v752, v779, v807, v836, v864, v893, v922, v951, v980, v1009, v1038, v1067, v1096, v1125, v1154, v1183, v1188);
  OUTLINED_FUNCTION_172();
  v301();
  v1188 = 0u;
  v1189 = 0u;
  LOBYTE(v1190) = 1;
  v342 = sub_1E3952C40();
  OUTLINED_FUNCTION_12_10(v342, v343, v344, v345);
  v346 = sub_1E3952C40();
  OUTLINED_FUNCTION_11_19(v346, v347, v348, v349);
  sub_1E3C3DE00(v192);
  v350 = OUTLINED_FUNCTION_138_7();
  v351 = sub_1E3C3DE00(v350);
  OUTLINED_FUNCTION_115_6(v351, v352, v353, v354, v355, v356, v357, v358, v414, v442, v471, v499, v528, v557, v586, v615, v643, v672, v699, v726, v753, v780, v808, v837, v865, v894, v923, v952, v981, v1010, v1039, v1068, v1097, v1126, v1155, v1184, v1188, *(&v1188 + 1), v1189, *(&v1189 + 1), v1190, v1191, v1192, v1193, v1194, v1195, v1196, v1197, v1198, v1199, v1200, v1201, v1202, v1203, v1204, v1205, v1206, v1207, v1208, v1209, v1210, v1211, v1212);
  v359 = sub_1E3C3DE00(v192);
  LOBYTE(v809) = v982;
  v367 = OUTLINED_FUNCTION_73_15(v359, v360, v361, v362, v363, v364, v365, v366, v415, v443, v472, v500, v529, v558, v587, v616, v644, v673, v866, v895, v924, v953, v809, v838, v866, v895, v924, v953, v982, v1011, v1040, v1069, v1098, v1127, v1156, v1185, v1188);
  sub_1E3C2FCB8(v367, v368);
  v377 = OUTLINED_FUNCTION_112_10(v369, v370, v371, v372, v373, v374, v375, v376, v416, v444, v473, v501, v530, v559, v588, v617, v645, v674, v700, v727, v754, v781, v810, v839, v867, v896, v925, v954, v983, v1012, v1041, v1070, v1099, v1128, v1157, v1186, v1188);
  memcpy(v377, v378, 0xE9uLL);
  v379 = OUTLINED_FUNCTION_18();
  v387 = OUTLINED_FUNCTION_9_8(v379, v380, v381, v382, v383, v384, v385, v386, v417, v445, v474, v502, v531, v560, v589, v618, v646, v675, v701, v728, v755, v782, v811, v840, v868, v897, v926, v955, v984, v1013, v1042, v1071, v1100, v1129, v1158, v1187, v1188);
  (v301)(v387, 1);
}

uint64_t OUTLINED_FUNCTION_53_31@<X0>(unint64_t a1@<X8>)
{
  STACK[0x250] = a1;
  LOBYTE(STACK[0x258]) = 0;
  return v1;
}

void OUTLINED_FUNCTION_68_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  sub_1E3C2FCB8(&a37, &STACK[0x2C0]);
}

__n128 OUTLINED_FUNCTION_113_8()
{
  v0 = STACK[0x330];
  result = *&STACK[0x310];
  v2 = *&STACK[0x320];
  *&STACK[0x280] = *&STACK[0x310];
  *&STACK[0x290] = v2;
  LOBYTE(STACK[0x2A0]) = v0;
  return result;
}

void OUTLINED_FUNCTION_114_6()
{
  *(v1 - 128) = v0;
  *(v1 - 120) = 0;
  STACK[0x290] = v0;
  LOBYTE(STACK[0x298]) = 0;
}

uint64_t OUTLINED_FUNCTION_125_7()
{
  v1 = STACK[0x7E0];
  v2 = *&STACK[0x7D0];
  *&STACK[0x790] = *&STACK[0x7C0];
  *&STACK[0x7A0] = v2;
  LOBYTE(STACK[0x7B0]) = v1;
  return v0;
}

void OUTLINED_FUNCTION_128_7()
{
  LOBYTE(STACK[0x2B0]) = 27;
  LOBYTE(STACK[0x280]) = 27;
  LOBYTE(STACK[0x250]) = 25;
}

void OUTLINED_FUNCTION_131_9()
{
  STACK[0x2E0] = v0;
  LOBYTE(STACK[0x2E8]) = 0;
  STACK[0x2B0] = v0;
  LOBYTE(STACK[0x2B8]) = 0;
  STACK[0x280] = v0;
  LOBYTE(STACK[0x288]) = 0;
}

uint64_t OUTLINED_FUNCTION_138_7()
{
  v1 = STACK[0x250];
  v2 = *&STACK[0x240];
  *&STACK[0x200] = *&STACK[0x230];
  *&STACK[0x210] = v2;
  LOBYTE(STACK[0x220]) = v1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_143_6()
{
  v2 = STACK[0x550];
  v3 = *&STACK[0x540];
  *&STACK[0x310] = *&STACK[0x530];
  *&STACK[0x320] = v3;
  LOBYTE(STACK[0x330]) = v2;

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_146_6()
{
  v1 = STACK[0x7EC];
  v2 = STACK[0x7ED];
  LODWORD(STACK[0x670]) = STACK[0x7E8];
  LOBYTE(STACK[0x674]) = v1;
  LOBYTE(STACK[0x675]) = v2;

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_147_5(unint64_t a1)
{
  STACK[0x250] = a1;

  return sub_1E3C3DE00(v1);
}

uint64_t OUTLINED_FUNCTION_149_5()
{
  v1 = STACK[0x318];
  STACK[0x280] = STACK[0x310];
  LOBYTE(STACK[0x288]) = v1;
  return v0;
}

double OUTLINED_FUNCTION_150_5()
{

  return sub_1E3952C64();
}

__n128 OUTLINED_FUNCTION_157_6@<Q0>(uint64_t a1@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 - 160) = *a1;
  *(v1 - 144) = v3;
  *(v1 - 128) = 0;
  return result;
}

void OUTLINED_FUNCTION_159_2(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

void OUTLINED_FUNCTION_160_4(double a1, double a2, double a3, double a4)
{
  *&STACK[0x4E0] = a1;
  *&STACK[0x4E8] = a2;
  *&STACK[0x4F0] = a3;
  *&STACK[0x4F8] = a4;
  LOBYTE(STACK[0x500]) = 0;

  sub_1E3952C88();
}

uint64_t OUTLINED_FUNCTION_161_5()
{
  STACK[0x260] = v2;
  LOBYTE(STACK[0x268]) = 0;
  STACK[0x230] = v1;
  LOBYTE(STACK[0x238]) = 0;

  return sub_1E3C3DE00(v0);
}

id OUTLINED_FUNCTION_162_6()
{
  v3 = *(v0 + 2336);

  return [v1 v3];
}

void OUTLINED_FUNCTION_167_5(double a1, double a2, double a3, double a4)
{
  *&STACK[0x670] = a1;
  *&STACK[0x678] = a2;
  *&STACK[0x680] = a3;
  *&STACK[0x688] = a4;
  LOBYTE(STACK[0x690]) = 0;
}

void OUTLINED_FUNCTION_169_2(unint64_t a1@<X8>)
{
  STACK[0x370] = a1;
  STACK[0x378] = 0;
  STACK[0x388] = 0;
  STACK[0x380] = 0;
  LOBYTE(STACK[0x390]) = 0;
}

__n128 OUTLINED_FUNCTION_170_3()
{
  v0 = STACK[0x2A0];
  result = *&STACK[0x280];
  v2 = *&STACK[0x290];
  *&STACK[0x7C0] = *&STACK[0x280];
  *&STACK[0x7D0] = v2;
  LOBYTE(STACK[0x7E0]) = v0;
  return result;
}

void OUTLINED_FUNCTION_171_3()
{
  STACK[0x670] = v0;
  STACK[0x678] = v1;
  STACK[0x680] = v2;
  STACK[0x688] = v3;
  LOBYTE(STACK[0x690]) = 0;
}

void OUTLINED_FUNCTION_174_0(double a1, double a2, double a3, double a4)
{
  *&STACK[0x310] = a1;
  *&STACK[0x318] = a2;
  *&STACK[0x320] = a3;
  *&STACK[0x328] = a4;
  LOBYTE(STACK[0x330]) = 0;
}

void OUTLINED_FUNCTION_178_3(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

void OUTLINED_FUNCTION_179_2(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_180_3()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_181_1(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

id OUTLINED_FUNCTION_182_3()
{

  return [v1 (v0 + 3704)];
}

void *OUTLINED_FUNCTION_183_3()
{

  return memcpy(&STACK[0x370], &STACK[0x670], 0xE9uLL);
}

void OUTLINED_FUNCTION_184_1(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

void *OUTLINED_FUNCTION_185_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, (v9 - 208), 0x59uLL);
}

void OUTLINED_FUNCTION_187_2()
{
  v0 = STACK[0x288];
  STACK[0x7C0] = STACK[0x280];
  LOBYTE(STACK[0x7C8]) = v0;
}

void OUTLINED_FUNCTION_193_1(unint64_t a1@<X8>)
{
  STACK[0x460] = a1;
  LOBYTE(STACK[0x468]) = 0;
  STACK[0x230] = a1;
  LOBYTE(STACK[0x238]) = 0;
}

void OUTLINED_FUNCTION_195_2()
{
  v0 = STACK[0x498];
  STACK[0x460] = STACK[0x490];
  LOBYTE(STACK[0x468]) = v0;
}

void OUTLINED_FUNCTION_197_0(double a1, double a2, double a3, double a4)
{
  *&STACK[0x200] = a3;
  *&STACK[0x208] = a4;
  LOBYTE(STACK[0x210]) = 0;
}

void OUTLINED_FUNCTION_199()
{
  LOBYTE(STACK[0x280]) = 11;
  LOBYTE(STACK[0x250]) = 11;
  LOBYTE(STACK[0x220]) = 11;
}

void OUTLINED_FUNCTION_209()
{
  v0 = STACK[0x7C8];
  STACK[0x790] = STACK[0x7C0];
  LOBYTE(STACK[0x798]) = v0;
}

void OUTLINED_FUNCTION_210_0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_211()
{
  STACK[0x250] = v0;
  LOBYTE(STACK[0x258]) = 0;

  return sub_1E3C3DE00(v1);
}

uint64_t *OUTLINED_FUNCTION_212()
{
  v0[15] = 0u;
  v0[16] = 0u;
  v0[17] = 0u;

  return sub_1E3D318D0();
}

void OUTLINED_FUNCTION_213(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

void OUTLINED_FUNCTION_214_0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

double OUTLINED_FUNCTION_215_0()
{

  return sub_1E3952C10(12.0, 4.0);
}

uint64_t sub_1E3CD9D14()
{
  type metadata accessor for AppEnvironment();
  swift_allocObject();
  result = sub_1E3CDA560();
  qword_1EE2AB1C0 = result;
  return result;
}

uint64_t *sub_1E3CD9D88()
{
  if (qword_1EE2A5F80 != -1)
  {
    OUTLINED_FUNCTION_0_212();
  }

  return &qword_1EE2AB1C0;
}

uint64_t sub_1E3CD9DC8()
{
  OUTLINED_FUNCTION_4_168();
  sub_1E3B50380(&v1);

  return v1;
}

uint64_t sub_1E3CD9E10(uint64_t a1, uint64_t a2, char a3)
{
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3 & 1;

  sub_1E3B50420(v9);

  OUTLINED_FUNCTION_111();
  v4 = COERCE_DOUBLE((*(v3 + 184))());
  if (v5)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(v6);
  OUTLINED_FUNCTION_111();
  return (*(v7 + 224))();
}

uint64_t (*sub_1E3CD9EDC(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  *a1 = sub_1E3CD9DC8();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return sub_1E3CD9F2C;
}

uint64_t sub_1E3CD9F68()
{
  OUTLINED_FUNCTION_4_168();
  sub_1E3B50380(&v1);

  return v1;
}

uint64_t sub_1E3CD9FAC(char a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);
}

uint64_t (*sub_1E3CD9FF8(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + OBJC_IVAR____TtC8VideosUI14AppEnvironment__sizeClass);

  sub_1E3B50380((a1 + 1));
  return sub_1E3A89D3C;
}

uint64_t sub_1E3CDA06C()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI14AppEnvironment_sidebarWidth;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E3CDA0B8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI14AppEnvironment_sidebarWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E3CDA168()
{
  OUTLINED_FUNCTION_4_168();
  sub_1E3B50380(&v1);

  return v1;
}

uint64_t sub_1E3CDA1B0(uint64_t a1, char a2)
{
  v3 = a1;
  v4 = a2 & 1;

  sub_1E3B50420(&v3);
}

void (*sub_1E3CDA204(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = *(v1 + OBJC_IVAR____TtC8VideosUI14AppEnvironment__sidebarSafeAreaInset);

  sub_1E3B50380(v3);
  return sub_1E3CDA27C;
}

void sub_1E3CDA27C(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_1E3B50420((v1 + 16));

  free(v1);
}

uint64_t sub_1E3CDA2E0()
{
  OUTLINED_FUNCTION_4_168();
  v0 = sub_1E38074D0();

  return v0;
}

uint64_t sub_1E3CDA318()
{
  v1 = OBJC_IVAR____TtC8VideosUI14AppEnvironment_isRTL;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E3CDA35C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI14AppEnvironment_isRTL;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3CDA3FC()
{
  type metadata accessor for AppEnvironment();
  swift_allocObject();
  v1 = sub_1E3CDA560();
  OUTLINED_FUNCTION_111();
  v3 = (*(v2 + 184))();
  v4 = (*(*v1 + 192))(v3);
  v5 = (*(*v0 + 304))(v4);
  (*(*v1 + 312))(v5 & 1);
  OUTLINED_FUNCTION_111();
  v7 = (*(v6 + 216))();
  (*(*v1 + 224))(v7);
  return v1;
}

uint64_t sub_1E3CDA560()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI14AppEnvironment__windowSize;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E90);
  v8 = 0;
  v9 = 0;
  v10 = 1;
  *(v0 + v2) = sub_1E3B508D0(&v8);
  v3 = OBJC_IVAR____TtC8VideosUI14AppEnvironment__sizeClass;
  v4 = sub_1E3A2532C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E98);
  LOBYTE(v8) = v4;
  *(v1 + v3) = sub_1E3B508D0(&v8);
  v5 = v1 + OBJC_IVAR____TtC8VideosUI14AppEnvironment_sidebarWidth;
  *v5 = 0;
  *(v5 + 8) = 0;
  v6 = OBJC_IVAR____TtC8VideosUI14AppEnvironment__sidebarSafeAreaInset;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36EA0);
  v8 = 0;
  LOBYTE(v9) = 0;
  *(v1 + v6) = sub_1E3B508D0(&v8);
  *(v1 + OBJC_IVAR____TtC8VideosUI14AppEnvironment_isRTL) = 0;
  return sub_1E3B500B4();
}

uint64_t type metadata accessor for AppEnvironment()
{
  result = qword_1EE2A5F70;
  if (!qword_1EE2A5F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3CDA6A8()
{
}

uint64_t sub_1E3CDA6FC()
{
  v0 = sub_1E3B4FF80();

  return v0;
}

uint64_t sub_1E3CDA750()
{
  v0 = sub_1E3CDA6FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3CDA7A4()
{
  sub_1E42074B4();

  strcpy(v7, "windowSize: ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  OUTLINED_FUNCTION_111();
  (*(v1 + 184))();
  v2 = sub_1E4206E54();
  MEMORY[0x1E69109E0](v2);

  v3 = MEMORY[0x1E69109E0](0x3A4C54527369202CLL, 0xE900000000000020);
  v4 = (*(*v0 + 304))(v3);
  v5 = sub_1E328692C(v4 & 1);
  MEMORY[0x1E69109E0](v5);

  return v7[0];
}

uint64_t sub_1E3CDA8E0(uint64_t a1)
{
  v2 = (*(*a1 + 304))();
  OUTLINED_FUNCTION_111();
  if ((v2 ^ (*(v3 + 304))()))
  {
LABEL_2:
    v4 = 0;
    return v4 & 1;
  }

  v5 = COERCE_DOUBLE((*(*a1 + 184))());
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_111();
  v11 = COERCE_DOUBLE((*(v10 + 184))());
  v4 = v9 & v13;
  if ((v9 & 1) == 0 && (v13 & 1) == 0)
  {
    if (v5 == v11)
    {
      v4 = v7 == v12;
      return v4 & 1;
    }

    goto LABEL_2;
  }

  return v4 & 1;
}

uint64_t static VUINetworkReachabilityMonitorObjCProxy.networkReachableUserInfoKey.getter()
{
  if (TVAppFeature.isEnabled.getter(12))
  {

    return sub_1E41FF234();
  }

  else
  {

    return sub_1E4205F14();
  }
}

id VUINetworkReachabilityMonitorObjCProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUINetworkReachabilityMonitorObjCProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUINetworkReachabilityMonitorObjCProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3CDAC78()
{
  *(v0 + 104) = 0;
  type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  *(v0 + 112) = sub_1E3BBD964(3, v1 & 1, v2, v3 & 1);
  v4 = sub_1E3C2F9A0();

  v35 = sub_1E3952C28(16.0);
  v36 = v5;
  v37 = v6;
  v38 = v7;
  v39 = 0;
  sub_1E3C2CC78();
  sub_1E37BD068();
  sub_1E39DFFC8();
  OUTLINED_FUNCTION_36();
  if (v9)
  {
    v10 = 15;
  }

  else
  {
    v10 = 19;
  }

  (*(v8 + 1696))(v10);

  OUTLINED_FUNCTION_36();
  v12 = *(v11 + 2056);

  v12(0, 0);

  sub_1E39DFFC8();
  OUTLINED_FUNCTION_36();
  if (v14)
  {
    v15 = 6;
  }

  else
  {
    v15 = 10;
  }

  (*(v13 + 1792))(v15);

  v16 = *(v4 + 104);

  if (sub_1E39DFFC8())
  {
    v17 = sub_1E3E5FD88();
  }

  else
  {
    v17 = sub_1E3E5FDEC();
  }

  v18 = *v17;
  v19 = *(*v16 + 680);
  v20 = *v17;
  v19(v18);

  v21 = *(v4 + 104);

  sub_1E3952C58();
  v33[0] = v22;
  v33[1] = v23;
  v33[2] = v24;
  v33[3] = v25;
  v34 = 0;
  (*(*v21 + 160))(v33);

  swift_beginAccess();
  OUTLINED_FUNCTION_36();
  v27 = *(v26 + 2048);

  v29 = v27(v28);

  (*(*v29 + 1696))(19);

  sub_1E3C37CBC(v30, 23);

  sub_1E3C37CBC(v31, 60);

  return v4;
}

uint64_t sub_1E3CDAFE8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315E8);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-v6];
  v8 = OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___extrasURL;
  OUTLINED_FUNCTION_31_19();
  sub_1E3CDB390(v1 + v8, v7, &qword_1ECF315E8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    return sub_1E3CDB428(v7, a1, &unk_1ECF363C0);
  }

  sub_1E325F748(v7, &qword_1ECF315E8);
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_13_8();
  sub_1E3CDB390(v14, v15, v16);
  OUTLINED_FUNCTION_8_118();
  OUTLINED_FUNCTION_158();
  sub_1E3CDB3DC(v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1E3CDB164()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315E8);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - v3;
  OUTLINED_FUNCTION_158();
  sub_1E3CDB428(v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
  v9 = OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___extrasURL;
  OUTLINED_FUNCTION_12_104();
  sub_1E3CDB3DC(v4, v0 + v9, &qword_1ECF315E8);
  return swift_endAccess();
}

void (*sub_1E3CDB25C(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_7_31(v5);
  sub_1E3CDAFE8(v6);
  return sub_1E3CDB2E8;
}

uint64_t (*sub_1E3CDB328(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E3CDB310();
  *(a1 + 8) = v3 & 1;
  return sub_1E3CDB378;
}

uint64_t sub_1E3CDB390(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3);
  OUTLINED_FUNCTION_1_20();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_1E3CDB3DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3);
  OUTLINED_FUNCTION_1_20();
  (*(v5 + 40))(v3, v4);
  return v3;
}

uint64_t sub_1E3CDB428(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3);
  OUTLINED_FUNCTION_1_20();
  (*(v5 + 32))(v3, v4);
  return v3;
}

void (*sub_1E3CDB480(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_7_31(v5);
  sub_1E3CDB384(v6);
  return sub_1E3CDB50C;
}

uint64_t sub_1E3CDB540(void *a1)
{
  v2 = v1 + *a1;
  if ((*(v2 + 9) & 1) == 0)
  {
    return *v2;
  }

  result = 0;
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t (*sub_1E3CDB580(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E3CDB534();
  *(a1 + 8) = v3 & 1;
  return sub_1E3CDB5D0;
}

uint64_t sub_1E3CDB5E8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22[-v5];
  OUTLINED_FUNCTION_31_19();
  OUTLINED_FUNCTION_158();
  sub_1E3CDB390(v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) != 1)
  {
    return sub_1E3CDB428(v6, a1, &unk_1ECF28E20);
  }

  sub_1E325F748(v6, &qword_1ECF2CDE0);
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_13_8();
  sub_1E3CDB390(v15, v16, v17);
  OUTLINED_FUNCTION_8_118();
  OUTLINED_FUNCTION_158();
  sub_1E3CDB3DC(v18, v19, v20);
  return swift_endAccess();
}

uint64_t sub_1E3CDB75C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1E3CDB428(a1, &v12 - v7, &unk_1ECF28E20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = *a2;
  OUTLINED_FUNCTION_12_104();
  sub_1E3CDB3DC(v8, v2 + v10, &qword_1ECF2CDE0);
  return swift_endAccess();
}

void (*sub_1E3CDB858(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_7_31(v5);
  sub_1E3CDB5DC(v6);
  return sub_1E3CDB8E4;
}

void sub_1E3CDB90C(uint64_t a1, char a2, void (*a3)(void *), uint64_t *a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2)
  {
    v8 = OUTLINED_FUNCTION_13_8();
    sub_1E3CDB390(v8, v9, v10);
    a3(v5);
    sub_1E325F748(v6, a4);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v6);

  free(v5);
}

uint64_t sub_1E3CDB9A8()
{
  v1 = OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___isSportingEvent;
  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___isSportingEvent);
  if (v2 == 2)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      LOBYTE(v2) = [v2 isSportingEvent];
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t (*sub_1E3CDBA30(void *a1))(uint64_t result)
{
  OUTLINED_FUNCTION_69_1(a1);
  *(v1 + 8) = sub_1E3CDB9A8() & 1;
  return sub_1E3CDBA78;
}

uint64_t sub_1E3CDBAC0()
{
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_13_8();
  return sub_1E3CDBB08(v0, v1);
}

uint64_t sub_1E3CDBB08(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v2 + OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___rentalID;
  *v8 = 0;
  *(v8 + 8) = 256;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = v2 + OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___rentalPlaybackDuration;
  *v13 = 0;
  *(v13 + 8) = 256;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
  *(v2 + OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___isSportingEvent) = 2;

  return a2(a1);
}

uint64_t sub_1E3CDBC00()
{
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___extrasURL, &qword_1ECF315E8);
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___rentalEndDate, &qword_1ECF2CDE0);
  return sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___rentalExpirationDate, &qword_1ECF2CDE0);
}

uint64_t sub_1E3CDBC80()
{
  v0 = sub_1E413CEFC();
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___extrasURL, &qword_1ECF315E8);
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___rentalEndDate, &qword_1ECF2CDE0);
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI27LibSidebandMovieMediaEntity____lazy_storage___rentalExpirationDate, &qword_1ECF2CDE0);
  return v0;
}

uint64_t sub_1E3CDBD0C()
{
  v0 = sub_1E3CDBC80();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3CDBEBC(uint64_t a1)
{
  result = sub_1E3CDBEE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3CDBEE4()
{
  result = qword_1ECF36EA8;
  if (!qword_1ECF36EA8)
  {
    type metadata accessor for LibSidebandMovieMediaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36EA8);
  }

  return result;
}

uint64_t type metadata accessor for LibSidebandMovieMediaEntity()
{
  result = qword_1ECF5ED30;
  if (!qword_1ECF5ED30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3CDBF90()
{
  sub_1E3C051CC(319, &qword_1ECF315F8, &unk_1ECF363C0);
  if (v0 <= 0x3F)
  {
    sub_1E3C051CC(319, &qword_1EE28A448, &unk_1ECF28E20);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E3CDC09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LibTVShowEpisodeListView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v12 = *(v11 + 24);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8);
  swift_storeEnumTagMultiPayload();
  v13 = (v10 + v6[7]);
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_10_108();
  sub_1E3CDD694(v14, v15);
  *v13 = sub_1E4201754();
  v13[1] = v16;
  v17 = v6[8];
  *(v10 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v18 = v10 + v6[10];
  type metadata accessor for UIEdgeInsets();
  sub_1E42038E4();
  *v18 = v23;
  *(v18 + 1) = v24;
  *(v18 + 4) = v25;
  *v10 = a1;

  v19 = sub_1E3C8DDFC();
  if (!a2)
  {
    a2 = *v19;
  }

  v10[1] = a2;
  OUTLINED_FUNCTION_2_4();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = v10 + v6[9];
  *v21 = sub_1E3CDC2A8;
  *(v21 + 1) = v20;
  v21[16] = 0;
  OUTLINED_FUNCTION_1_195();
  sub_1E3CE3D90(v10, a3);
}

uint64_t sub_1E3CDC2A8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for LibTVShowEpisodeListViewInteractor(0);
  v3 = swift_allocObject();

  v4 = OBJC_IVAR____TtC8VideosUIP33_F92474DAD60B3986E827BDF60B2455DF34LibTVShowEpisodeListViewInteractor_downloadActionHandler;
  v5 = v3 + OBJC_IVAR____TtC8VideosUIP33_F92474DAD60B3986E827BDF60B2455DF34LibTVShowEpisodeListViewInteractor_parsedViewModels;
  *v5 = 1;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v3 + v4) = 0;
  v6 = OBJC_IVAR____TtC8VideosUIP33_F92474DAD60B3986E827BDF60B2455DF34LibTVShowEpisodeListViewInteractor_eventSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  swift_allocObject();
  *(v3 + v6) = sub_1E4200544();
  v7 = OBJC_IVAR____TtC8VideosUIP33_F92474DAD60B3986E827BDF60B2455DF34LibTVShowEpisodeListViewInteractor_confirmationDialogViewModel;
  type metadata accessor for ConfirmationDialogViewModel();
  *(v3 + v7) = sub_1E40363DC();
  v8 = OBJC_IVAR____TtC8VideosUIP33_F92474DAD60B3986E827BDF60B2455DF34LibTVShowEpisodeListViewInteractor_layout;
  *(v3 + OBJC_IVAR____TtC8VideosUIP33_F92474DAD60B3986E827BDF60B2455DF34LibTVShowEpisodeListViewInteractor_viewModel) = v2;
  *(v3 + v8) = v1;

  v9 = sub_1E3B500B4();

  sub_1E3CE2640(v2, v1, v17);
  v10 = v18;
  v11 = v19;
  v12 = v20;

  v13 = OUTLINED_FUNCTION_17_98(v9 + OBJC_IVAR____TtC8VideosUIP33_F92474DAD60B3986E827BDF60B2455DF34LibTVShowEpisodeListViewInteractor_parsedViewModels);
  v14 = v17[1];
  *v15 = v17[0];
  *(v15 + 16) = v14;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  *(v15 + 48) = v12;
  sub_1E3CE2E8C(v13);

  return v9;
}

void sub_1E3CDC408()
{
  OUTLINED_FUNCTION_9_4();
  v49 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36EB0);
  OUTLINED_FUNCTION_0_10();
  v43 = v4;
  v44 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_63_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36EB8);
  OUTLINED_FUNCTION_0_10();
  v45 = v8;
  v46 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36EC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_4();
  sub_1E3CDC840();
  v48 = v0;
  v13 = *(v0 + 8);
  v42 = (*(*v13 + 792))();
  memset(v55, 0, sizeof(v55));
  v56 = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36EC8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36ED0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36ED8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36EE0);
  v17 = type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_1_33();
  v19 = sub_1E3A1558C(v18, &qword_1ECF36EE0);
  OUTLINED_FUNCTION_35_45();
  v22 = sub_1E3CDD694(v20, v21);
  v50 = v16;
  v51 = v17;
  v52 = v19;
  v53 = v22;
  OUTLINED_FUNCTION_34_53();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v15;
  v51 = OpaqueTypeConformance2;
  v24 = v11;
  OUTLINED_FUNCTION_33_50();
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_1E3CDD6D8();
  v50 = v41;
  v51 = v14;
  v52 = v25;
  v53 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v43;
  sub_1E3A6929C(v42, 0, 0, 1, v55, v43, v27);
  v29 = (*(v44 + 8))(v2, v28);
  (*(*v13 + 152))(&v50, v29);
  if (v54)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v32.n128_u64[0] = v52;
    v33.n128_u64[0] = v53;
    v30.n128_u64[0] = v50;
    v31.n128_u64[0] = v51;
    j_nullsub_1(v30, v31, v32, v33);
  }

  OUTLINED_FUNCTION_3();
  v34 = sub_1E4202734();
  (*(v45 + 32))(v1, v24, v46);
  v35 = v47;
  v36 = (v1 + *(v47 + 36));
  *v36 = v34;
  OUTLINED_FUNCTION_11_4(v36);
  OUTLINED_FUNCTION_53_32();
  OUTLINED_FUNCTION_39_45();
  OUTLINED_FUNCTION_0_213();
  sub_1E3CDD694(v37, v38);
  OUTLINED_FUNCTION_16_104();
  v39 = *(OUTLINED_FUNCTION_98_11() + OBJC_IVAR____TtC8VideosUIP33_F92474DAD60B3986E827BDF60B2455DF34LibTVShowEpisodeListViewInteractor_confirmationDialogViewModel);

  v40 = sub_1E3CDD7A8();
  sub_1E4036118(v39, v35, v40);

  sub_1E325F69C(v1, &qword_1ECF36EC0);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3CDC840()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v0;
  v157 = v5;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32278);
  OUTLINED_FUNCTION_0_10();
  v126[2] = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v146 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v144 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v12 - v11);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v126 - v14;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F28);
  OUTLINED_FUNCTION_0_10();
  v132 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v19 = v18;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F30);
  OUTLINED_FUNCTION_0_10();
  v136 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v22);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F38);
  OUTLINED_FUNCTION_0_10();
  v140 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v25);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F40);
  OUTLINED_FUNCTION_0_10();
  v139 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_2();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36EE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v149 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36ED8);
  OUTLINED_FUNCTION_0_10();
  v152 = v33;
  v153 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v150 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36EC8);
  OUTLINED_FUNCTION_0_10();
  v155 = v37;
  v156 = v36;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44();
  v154 = v39;
  v40 = type metadata accessor for LibTVShowEpisodeListView(0);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25_6();
  v159 = v42;
  v160 = v43;
  v44 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_3();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0);
  OUTLINED_FUNCTION_17_2(v48);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_20_1();
  sub_1E3AB3B98(v2);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v50);
  v130 = v41;
  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F69C(v2, &qword_1ECF31FF0);
  }

  else
  {
    MEMORY[0x1E690E3F0](v50);
    sub_1E325F69C(v2, &qword_1ECF31FC8);
    v52 = sub_1E4203BF4();
    (*(v46 + 8))(v3, v44);
    if (v52)
    {
      v53 = 0;
      v54 = 0;
      v55 = 1;
      goto LABEL_6;
    }
  }

  v56 = v159;
  sub_1E3CE3224(v4, v159);
  v57 = (*(v41 + 80) + 17) & ~*(v41 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = 1;
  OUTLINED_FUNCTION_1_195();
  sub_1E3CE3D90(v56, v58 + v57);
  v55 = 0;
  v53 = sub_1E3CE3288;
LABEL_6:
  sub_1E3CDDC74(v4);
  v59 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F50) + 36)];
  sub_1E3CDDFA0();
  v60 = sub_1E4203DA4();
  v62 = v61;
  v63 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F58) + 36)];
  *v63 = v60;
  v63[1] = v62;
  v15[*(v158 + 36)] = 0;
  v147 = v54;
  v148 = v1;
  v145 = v53;
  if ((v55 & 1) == 0)
  {
    sub_1E37FAED4(v53, v54);
  }

  v64 = sub_1E3CE3B48(&qword_1ECF36F60, &qword_1ECF36F20, &unk_1E42CAA50, sub_1E3CE33AC);
  OUTLINED_FUNCTION_167_0();
  v65 = v158;
  sub_1E3A9D80C(v66, v67, v68, v158, v64);
  v69 = OUTLINED_FUNCTION_146();
  sub_1E37FAED8(v69, v70);
  sub_1E325F69C(v15, &qword_1ECF36F20);
  v71 = v159;
  sub_1E3CE3224(v4, v159);
  v72 = (*(v130 + 80) + 16) & ~*(v130 + 80);
  v129 = *(v130 + 80);
  v73 = swift_allocObject();
  OUTLINED_FUNCTION_1_195();
  v130 = v72;
  sub_1E3CE3D90(v71, v74 + v72);
  v161 = v65;
  v162 = v64;
  v75 = OUTLINED_FUNCTION_45_44();
  v76 = v131;
  v77 = v134;
  sub_1E3783540(sub_1E3CE35C8, v73, v134, v75);

  OUTLINED_FUNCTION_15_5();
  v78(v19, v77);
  v79 = v143;
  sub_1E4202474();
  v161 = v77;
  v162 = v75;
  v80 = OUTLINED_FUNCTION_45_44();
  v81 = v133;
  v82 = v138;
  sub_1E4203224();
  (*(v144 + 8))(v79, v146);
  OUTLINED_FUNCTION_15_5();
  v84 = v83(v76, v82);
  MEMORY[0x1EEE9AC00](v84);
  v126[-2] = v4;
  v85 = OUTLINED_FUNCTION_146();
  __swift_instantiateConcreteTypeFromMangledNameV2(v85);
  v161 = v82;
  v162 = v80;
  OUTLINED_FUNCTION_45_44();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_167_0();
  sub_1E3A1558C(v86, v87);
  v88 = v137;
  v89 = v142;
  sub_1E42030F4();
  OUTLINED_FUNCTION_15_5();
  v90(v81, v89);
  v91 = *v4;
  v92 = *(v135 + 36);
  v93 = swift_retain_n();
  v94 = v148;
  sub_1E3AB3A44(v93, (v148 + v92));
  (*(v139 + 32))(v94, v88, v141);
  type metadata accessor for LibLockupViewModel();
  v158 = v91;
  v95 = swift_dynamicCastClass();
  if (v95)
  {
    v146 = (*(*v95 + 1184))();
  }

  else
  {
    v96 = v126[1];
    sub_1E42005D4();
    sub_1E3A1558C(&qword_1ECF322C0, &qword_1ECF32278);
    v97 = v127;
    v146 = sub_1E42006B4();
    OUTLINED_FUNCTION_15_5();
    v98(v96, v97);
  }

  v128 = v4;
  v99 = v159;
  sub_1E3CE3224(v4, v159);
  v100 = v130;
  v101 = swift_allocObject();
  sub_1E3CE3D90(v99, v101 + v100);
  OUTLINED_FUNCTION_2_4();
  v102 = swift_allocObject();
  *(v102 + 16) = sub_1E3CE3854;
  *(v102 + 24) = v101;
  v103 = v149;
  sub_1E3741EA0(v94, v149, &qword_1ECF36F48);
  v104 = v151;
  *(v103 + *(v151 + 52)) = v146;
  v105 = (v103 + *(v104 + 56));
  *v105 = sub_1E379E500;
  v105[1] = v102;
  v161 = v158;
  v106 = OUTLINED_FUNCTION_171_0();
  sub_1E3CE3224(v106, v107);
  v108 = swift_allocObject();
  sub_1E3CE3D90(v99, v108 + v100);
  v109 = type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_167_0();
  v112 = sub_1E3A1558C(v110, v111);
  OUTLINED_FUNCTION_35_45();
  v115 = sub_1E3CDD694(v113, v114);
  v116 = v150;
  sub_1E4203524();

  OUTLINED_FUNCTION_167_0();
  sub_1E325F69C(v117, v118);
  v119 = v128;
  v120 = v128[1];
  v161 = v104;
  v162 = v109;
  v163 = v112;
  v164 = v115;
  OUTLINED_FUNCTION_34_53();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v123 = v153;
  v122 = v154;
  sub_1E3A9D920(v120, v153, OpaqueTypeConformance2);
  v124 = (*(v152 + 8))(v116, v123);
  MEMORY[0x1EEE9AC00](v124);
  v126[-2] = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36ED0);
  v161 = v123;
  v162 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_33_50();
  swift_getOpaqueTypeConformance2();
  sub_1E3CDD6D8();
  v125 = v156;
  sub_1E4202E84();
  sub_1E37FAED8(v145, v147);
  (*(v155 + 8))(v122, v125);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CDD694(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3CDD6D8()
{
  result = qword_1ECF36EF0;
  if (!qword_1ECF36EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36ED0);
    sub_1E3A1558C(&qword_1ECF36EF8, &unk_1ECF36F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36EF0);
  }

  return result;
}

unint64_t sub_1E3CDD7A8()
{
  result = qword_1ECF36F08;
  if (!qword_1ECF36F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36EC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36ED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36ED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36EE0);
    type metadata accessor for ViewModel();
    sub_1E3A1558C(&qword_1ECF36EE8, &qword_1ECF36EE0);
    sub_1E3CDD694(&qword_1EE23BA60, type metadata accessor for ViewModel);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3CDD6D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36F08);
  }

  return result;
}

void sub_1E3CDDA24()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LibListCellLayout();
    if (v1 <= 0x3F)
    {
      sub_1E3AB3F5C();
      if (v2 <= 0x3F)
      {
        sub_1E381EC50();
        if (v3 <= 0x3F)
        {
          sub_1E3CDDC14(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1E3CDDB80();
            if (v5 <= 0x3F)
            {
              sub_1E3CDDC14(319, &qword_1EE288660, type metadata accessor for UIEdgeInsets, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E3CDDB80()
{
  if (!qword_1EE289E18)
  {
    type metadata accessor for LibTVShowEpisodeListViewInteractor(255);
    sub_1E3CDD694(qword_1EE240800, type metadata accessor for LibTVShowEpisodeListViewInteractor);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289E18);
    }
  }
}

void sub_1E3CDDC14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_40_3();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1E3CDDFA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37080);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37088);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  if (sub_1E39DFFC0())
  {
    sub_1E374E9C4();
    OUTLINED_FUNCTION_30();
    (*(v7 + 304))();

    v8 = *sub_1E374E9C4();
    (*(v8 + 432))();

    sub_1E374E9C4();
    OUTLINED_FUNCTION_30();
    (*(v9 + 152))(&v46);

    if ((v47 & 1) == 0)
    {
      OUTLINED_FUNCTION_96_14(v10, v11, v12, v13);
    }

    sub_1E374E9C4();
    OUTLINED_FUNCTION_30();
    (*(v14 + 152))(&v48);

    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_96_14(v15, v16, v17, v18);
    }

    *v0 = sub_1E4201D44();
    *(v0 + 8) = 0;
    *(v0 + 16) = 1;
    v19 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37098) + 44);
    sub_1E4203B04();
    v20 = sub_1E4202764();
    sub_1E4200A54();
    v21 = v1 + *(v3 + 36);
    *v21 = v20;
    *(v21 + 8) = v22;
    *(v21 + 16) = v23;
    *(v21 + 24) = v24;
    *(v21 + 32) = v25;
    *(v21 + 40) = 0;
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v26, v27, v28);
    *v19 = 0;
    *(v19 + 8) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF370A0);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v29, v30, v31);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v32, v33);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v34, v35);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v36, v37, v38);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E3A1558C(v39, v40);
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    return sub_1E325F69C(v41, v42);
  }

  else
  {
    OUTLINED_FUNCTION_34();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E3A1558C(v44, v45);
    return sub_1E4201F44();
  }
}