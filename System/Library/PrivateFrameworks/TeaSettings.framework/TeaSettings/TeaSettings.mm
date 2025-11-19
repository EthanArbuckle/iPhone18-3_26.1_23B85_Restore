uint64_t sub_26D185D60()
{
  type metadata accessor for SettingReader();
  v0 = swift_allocObject();
  type metadata accessor for SettingReader.Reader();
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_280AF2FD8 = v0;
  return result;
}

void *sub_26D185E00(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_26D185E84(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v8 = *(v2 - 8) + 64;
    v5 = type metadata accessor for Trait();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v9 = *(v5 - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return v3;
}

uint64_t sub_26D185FA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Option();
  result = sub_26D19B8B4();
  if (v3 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

char *Setting.init(_:defaultValue:domain:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  v6 = v5;
  v10 = *v6;
  v11 = *a4;
  v12 = a4[1];
  v13 = *a5;
  v14 = *(*v6 + 152);
  v15 = *(*v6 + 88);
  type metadata accessor for Trait();
  swift_storeEnumTagMultiPayload();
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  OUTLINED_FUNCTION_3_2();
  v17 = *(v16 + 112);
  OUTLINED_FUNCTION_5();
  v19 = v18;
  (*(v18 + 16))(&v6[v20], a3, v15);
  (*(*(v10 + 96) + 32))(v28, v15);
  OUTLINED_FUNCTION_3_2();
  sub_26D186BA8(v28, &v6[*(v21 + 120)]);
  OUTLINED_FUNCTION_3_2();
  v23 = &v6[*(v22 + 128)];
  *v23 = v11;
  *(v23 + 1) = v12;
  OUTLINED_FUNCTION_3_2();
  v6[*(v24 + 136)] = v13;
  sub_26D186BF4();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26D19C050;
  *(v25 + 56) = &type metadata for Access;
  *(v25 + 64) = &off_287E901D8;
  *(v25 + 32) = v13;
  (*(v19 + 8))(a3, v15);
  OUTLINED_FUNCTION_3_2();
  *&v6[*(v26 + 144)] = v25;
  return v6;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t result, uint64_t a2)
{
  *(v2 + 104) = 0;
  *(v2 + 112) = 2;
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    return 0;
  }

  return a10;
}

void Configurable.setting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_4_2();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *v26;
  v29 = *(*v26 + 88);
  v30 = sub_26D19B934();
  OUTLINED_FUNCTION_0_5(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20]();
  v36 = &a9 - v35;
  __swift_storeEnumTagSinglePayload(&a9 - v35, 1, 1, v29);
  (*(v23 + 16))(v27, v36, v29, *(v28 + 96), v25, v23);
  (*(v32 + 8))(v36, v30);
  OUTLINED_FUNCTION_3_3();
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = v2;
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return swift_dynamicCast();
}

void Configurable.setting<A>(_:defaultValue:)()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0;
  v3 = v2;
  v29 = v4;
  v28 = *v2;
  v5 = *(v28 + 88);
  v6 = sub_26D19B934();
  v7 = OUTLINED_FUNCTION_0_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = *(v5 - 8);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - v20;
  (*(v9 + 16))(v16, v1, v6);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    (*(v17 + 16))(v21, v3 + *(*v3 + 112), v5);
    if (__swift_getEnumTagSinglePayload(v16, 1, v5) != 1)
    {
      (*(v9 + 8))(v16, v6);
    }
  }

  else
  {
    (*(v17 + 32))(v21, v16, v5);
  }

  v22 = *(*v3 + 144);
  swift_beginAccess();
  v23 = *(v3 + v22);

  v25 = sub_26D186A68(v24);

  if (!v25)
  {
    goto LABEL_11;
  }

  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v26 = *(v28 + 96);
  v31[3] = type metadata accessor for Setting();
  v31[4] = swift_getWitnessTable();
  v30[3] = v5;
  v31[0] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  (*(v17 + 16))(boxed_opaque_existential_0, v21, v5);

  sub_26D1870F4(v31, v30, &v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v5);
    (*(v9 + 8))(v14, v6);
LABEL_11:
    (*(v17 + 32))(v29, v21, v5);
    goto LABEL_12;
  }

  (*(v17 + 8))(v21, v5);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v5);
  (*(v17 + 32))(v29, v14, v5);
LABEL_12:
  OUTLINED_FUNCTION_3_3();
}

uint64_t sub_26D1868C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84560];

  sub_26D1880EC(0, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_2()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = *(v2 + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

BOOL sub_26D186A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    sub_26D1868C4(v2, &v12);
    v4 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, v13);
    if ((*(v5 + 8))(v4, v5))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v12);
    }

    else
    {
      sub_26D1885C4(&v12, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26D18C908(0, *(i + 16) + 1, 1);
        i = v15;
      }

      v8 = *(i + 16);
      v7 = *(i + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26D18C908((v7 > 1), v8 + 1, 1);
        i = v15;
      }

      *(i + 16) = v8 + 1;
      sub_26D1885C4(v11, i + 40 * v8 + 32);
    }

    v2 += 40;
  }

  v9 = *(i + 16);

  return v9 == 0;
}

_OWORD *sub_26D186BA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double OUTLINED_FUNCTION_5_0()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  *(v0 + 80) = 12;
  return result;
}

void sub_26D186BF4()
{
  if (!qword_280AF30A0[0])
  {
    sub_26D186C4C();
    v0 = sub_26D19BA74();
    if (!v1)
    {
      atomic_store(v0, qword_280AF30A0);
    }
  }
}

unint64_t sub_26D186C4C()
{
  result = qword_280AF31A8[0];
  if (!qword_280AF31A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280AF31A8);
  }

  return result;
}

void sub_26D186CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_26D186D48();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26D186D48()
{
  if (!qword_280AF2F28[0])
  {
    v0 = sub_26D19B934();
    if (!v1)
    {
      atomic_store(v0, qword_280AF2F28);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_0@<X0>(__n128 *a1@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a1[1] = a3;
  a1[3].n128_u64[1] = a2;
  a1[4].n128_u64[0] = v3;
  a1[2].n128_u8[0] = v4;
  *(v5 + 96) = a1;
  return v5;
}

uint64_t Bool.toData()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = MEMORY[0x277D839B0];
  *a2 = result;
  return result;
}

uint64_t RawRepresentable<>.toData()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26D19B7E4();
  (*(a3 + 32))(AssociatedTypeWitness, a3);
  return (*(v6 + 8))(v11, AssociatedTypeWitness);
}

uint64_t String.toData()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x277D837D0];
  *a3 = a1;
  a3[1] = a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26D187058()
{
  if (!*v0)
  {
    return 1;
  }

  if (*v0 != 1)
  {
    return 0;
  }

  sub_26D19B634();
  return sub_26D19B624() & 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_26D1870F4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 56))(v6, v7);
  v9 = sub_26D186A68(v8);

  if (v9 && (OUTLINED_FUNCTION_8(), (*(v7 + 40))(&v161, v9, v7), v163 = v161, v159 = sub_26D187BA4(&v163), , v159))
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    (*(v11 + 16))(v10, v11);
    v12 = sub_26D187B08();

    if (v12)
    {
      v13 = a1[3];
      v14 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v13);
      (*(v14 + 64))(&v163, v13, v14);
      v15 = v163;
      v17 = a1[3];
      v16 = a1[4];
      v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
      switch(v15)
      {
        case 1:
          v100 = OUTLINED_FUNCTION_2_1();
          v101(v100);
          sub_26D19B714();
          v102 = OUTLINED_FUNCTION_16();
          v109 = OUTLINED_FUNCTION_18(v102, sel_stringArrayForKey_, v103, v104, v105, v106, v107, v108, v159);

          if (!v109)
          {
            goto LABEL_96;
          }

          v110 = MEMORY[0x277D837D0];
          v111 = sub_26D19B814();

          OUTLINED_FUNCTION_8();
          sub_26D18D09C(0, &qword_280AF2870, v110, MEMORY[0x277D83940]);
          v162 = v112;
          *&v161 = v111;
          goto LABEL_40;
        case 2:
          v61 = OUTLINED_FUNCTION_0_2();
          v62(v61);
          sub_26D19B714();
          v63 = OUTLINED_FUNCTION_17();
          v70 = OUTLINED_FUNCTION_12(v63, sel_BOOLForKey_, v64, v65, v66, v67, v68, v69, v159);
          v72 = [v70 v71];

          v162 = MEMORY[0x277D839B0];
          LOBYTE(v161) = v72;
          goto LABEL_43;
        case 3:
          v73 = OUTLINED_FUNCTION_0_2();
          v74(v73);
          sub_26D19B714();
          v75 = OUTLINED_FUNCTION_17();
          v82 = OUTLINED_FUNCTION_12(v75, sel_integerForKey_, v76, v77, v78, v79, v80, v81, v159);
          v84 = [v82 v83];

          v162 = MEMORY[0x277D83B88];
          *&v161 = v84;
          goto LABEL_43;
        case 4:
          v37 = OUTLINED_FUNCTION_2_1();
          v38(v37);
          sub_26D19B714();
          v39 = OUTLINED_FUNCTION_16();
          v46 = OUTLINED_FUNCTION_18(v39, &off_279D93C78, v40, v41, v42, v43, v44, v45, v159);

          if (!v46)
          {
            goto LABEL_96;
          }

          v47 = sub_26D19B724();
          v49 = v48;

          v50 = HIBYTE(v49) & 0xF;
          v51 = v47 & 0xFFFFFFFFFFFFLL;
          if ((v49 & 0x2000000000000000) != 0)
          {
            v52 = HIBYTE(v49) & 0xF;
          }

          else
          {
            v52 = v47 & 0xFFFFFFFFFFFFLL;
          }

          if (!v52)
          {

            goto LABEL_96;
          }

          if ((v49 & 0x1000000000000000) != 0)
          {
            v55 = sub_26D18F384(v47, v49, 10);
            v153 = v158;
LABEL_95:

            if ((v153 & 1) == 0)
            {
              v154 = a1[3];
              v155 = a1[4];
              __swift_project_boxed_opaque_existential_1(a1, v154);
              v162 = MEMORY[0x277D84A28];
              *&v161 = v55;
              v156 = *(v155 + 72);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              OUTLINED_FUNCTION_15(AssociatedTypeWitness);
              v156(&v161, v154, v155);
LABEL_44:

LABEL_45:
              __swift_destroy_boxed_opaque_existential_1Tm(&v161);
              goto LABEL_97;
            }

LABEL_96:

            sub_26D187C98(a2, a3);
LABEL_97:
            OUTLINED_FUNCTION_14();
            return;
          }

          if ((v49 & 0x2000000000000000) != 0)
          {
            *&v161 = v47;
            *(&v161 + 1) = v49 & 0xFFFFFFFFFFFFFFLL;
            if (v47 == 43)
            {
              if (v50)
              {
                if (v50 != 1)
                {
                  OUTLINED_FUNCTION_11();
                  while (1)
                  {
                    OUTLINED_FUNCTION_6();
                    if (!v57 & v56)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_3_1();
                    if (!v57)
                    {
                      break;
                    }

                    v55 = v148 + v147;
                    if (__OFADD__(v148, v147))
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_9();
                    if (v57)
                    {
                      goto LABEL_94;
                    }
                  }
                }

                goto LABEL_93;
              }

LABEL_105:
              __break(1u);
              JUMPOUT(0x26D187980);
            }

            if (v47 != 45)
            {
              if (v50)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_6();
                  if (!v57 & v56)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_3_1();
                  if (!v57)
                  {
                    break;
                  }

                  v55 = v152 + v151;
                  if (__OFADD__(v152, v151))
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_9();
                  if (v57)
                  {
                    goto LABEL_94;
                  }
                }
              }

              goto LABEL_93;
            }

            if (v50)
            {
              if (v50 != 1)
              {
                OUTLINED_FUNCTION_11();
                while (1)
                {
                  OUTLINED_FUNCTION_6();
                  if (!v57 & v56)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_3_1();
                  if (!v57)
                  {
                    break;
                  }

                  v55 = v144 - v143;
                  if (__OFSUB__(v144, v143))
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_9();
                  if (v57)
                  {
                    goto LABEL_94;
                  }
                }
              }

              goto LABEL_93;
            }
          }

          else
          {
            if ((v47 & 0x1000000000000000) != 0)
            {
              v53 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v53 = sub_26D19B9B4();
            }

            v54 = *v53;
            if (v54 == 43)
            {
              if (v51 >= 1)
              {
                if (v51 != 1)
                {
                  v55 = 0;
                  if (v53)
                  {
                    while (1)
                    {
                      OUTLINED_FUNCTION_6();
                      if (!v57 & v56)
                      {
                        goto LABEL_93;
                      }

                      OUTLINED_FUNCTION_3_1();
                      if (!v57)
                      {
                        goto LABEL_93;
                      }

                      v55 = v146 + v145;
                      if (__OFADD__(v146, v145))
                      {
                        goto LABEL_93;
                      }

                      OUTLINED_FUNCTION_9();
                      if (v57)
                      {
                        goto LABEL_94;
                      }
                    }
                  }

                  goto LABEL_84;
                }

                goto LABEL_93;
              }

              goto LABEL_104;
            }

            if (v54 != 45)
            {
              if (v51)
              {
                v55 = 0;
                if (v53)
                {
                  while (1)
                  {
                    v149 = *v53 - 48;
                    if (v149 > 9)
                    {
                      goto LABEL_93;
                    }

                    v150 = 10 * v55;
                    if ((v55 * 10) >> 64 != (10 * v55) >> 63)
                    {
                      goto LABEL_93;
                    }

                    v55 = v150 + v149;
                    if (__OFADD__(v150, v149))
                    {
                      goto LABEL_93;
                    }

                    ++v53;
                    if (!--v51)
                    {
                      goto LABEL_84;
                    }
                  }
                }

                goto LABEL_84;
              }

LABEL_93:
              v55 = 0;
              v60 = 1;
              goto LABEL_94;
            }

            if (v51 >= 1)
            {
              if (v51 != 1)
              {
                v55 = 0;
                if (v53)
                {
                  while (1)
                  {
                    OUTLINED_FUNCTION_6();
                    if (!v57 & v56)
                    {
                      goto LABEL_93;
                    }

                    OUTLINED_FUNCTION_3_1();
                    if (!v57)
                    {
                      goto LABEL_93;
                    }

                    v55 = v59 - v58;
                    if (__OFSUB__(v59, v58))
                    {
                      goto LABEL_93;
                    }

                    OUTLINED_FUNCTION_9();
                    if (v57)
                    {
                      goto LABEL_94;
                    }
                  }
                }

LABEL_84:
                v60 = 0;
LABEL_94:
                v153 = v60;
                goto LABEL_95;
              }

              goto LABEL_93;
            }

            __break(1u);
          }

          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        case 5:
          v115 = OUTLINED_FUNCTION_0_2();
          v116(v115);
          sub_26D19B714();
          v117 = OUTLINED_FUNCTION_17();
          v124 = OUTLINED_FUNCTION_12(v117, sel_floatForKey_, v118, v119, v120, v121, v122, v123, v159);
          [v124 v125];
          v127 = v126;

          v162 = MEMORY[0x277D83A90];
          LODWORD(v161) = v127;
          goto LABEL_43;
        case 6:
          v128 = OUTLINED_FUNCTION_0_2();
          v129(v128);
          sub_26D19B714();
          v130 = OUTLINED_FUNCTION_17();
          v137 = OUTLINED_FUNCTION_12(v130, sel_doubleForKey_, v131, v132, v133, v134, v135, v136, v159);
          [v137 v138];
          v140 = v139;

          v162 = MEMORY[0x277D839F8];
          *&v161 = v140;
LABEL_43:
          v141 = v16[9];
          v142 = swift_getAssociatedTypeWitness();
          OUTLINED_FUNCTION_15(v142);
          v141(&v161, v17, v16);
          goto LABEL_44;
        case 7:
          v85 = OUTLINED_FUNCTION_2_1();
          v86(v85);
          sub_26D19B714();
          v87 = OUTLINED_FUNCTION_16();
          v94 = OUTLINED_FUNCTION_18(v87, sel_dataForKey_, v88, v89, v90, v91, v92, v93, v159);

          if (!v94)
          {
            goto LABEL_96;
          }

          v95 = sub_26D19B5C4();
          v97 = v96;

          OUTLINED_FUNCTION_8();
          v162 = MEMORY[0x277CC9318];
          *&v161 = v95;
          *(&v161 + 1) = v97;
          v98 = v18[9];
          v99 = swift_getAssociatedTypeWitness();
          OUTLINED_FUNCTION_15(v99);
          sub_26D18ECD8(v95, v97);
          v98(&v161, v17, v18);

          sub_26D18FFD8(v95, v97);
          goto LABEL_45;
        default:
          v19 = OUTLINED_FUNCTION_2_1();
          v20(v19);
          sub_26D19B714();
          v21 = OUTLINED_FUNCTION_16();
          v28 = OUTLINED_FUNCTION_18(v21, sel_stringForKey_, v22, v23, v24, v25, v26, v27, v159);

          if (!v28)
          {
            goto LABEL_96;
          }

          v29 = sub_26D19B724();
          v31 = v30;

          OUTLINED_FUNCTION_8();
          v162 = MEMORY[0x277D837D0];
          *&v161 = v29;
          *(&v161 + 1) = v31;
LABEL_40:
          v113 = v18[9];
          v114 = swift_getAssociatedTypeWitness();
          OUTLINED_FUNCTION_15(v114);
          v113(&v161, v17, v18);
          goto LABEL_44;
      }
    }

    sub_26D187C98(a2, a3);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    OUTLINED_FUNCTION_14();

    sub_26D187C98(v32, v33);
  }
}

uint64_t sub_26D1879A0()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v1 + 144);
  swift_beginAccess();
  v3 = *(v0 + v2);
}

uint64_t sub_26D187A58()
{
  OUTLINED_FUNCTION_1_0();
  v2 = (v0 + *(v1 + 128));
  v3 = v2[1];
  *v4 = *v2;
  v4[1] = v3;
}

void *OUTLINED_FUNCTION_8()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v3);
}

void OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  Configurable.setting<A>(_:)(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

BOOL sub_26D187B08()
{
  v1 = sub_26D19B714();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_26D19B954();
    swift_unknownObjectRelease();
    sub_26D186BA8(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_26D187C3C(v5);
  return v2 != 0;
}

id sub_26D187BA4(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    objc_allocWithZone(MEMORY[0x277CBEBD0]);

    return sub_26D188DF4(v3, v2);
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = v5;
    return v5;
  }
}

uint64_t sub_26D187C0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_26D187C3C(uint64_t a1)
{
  sub_26D187CF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D187C98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_26D187CF4()
{
  if (!qword_280AF3098)
  {
    v0 = sub_26D19B934();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF3098);
    }
  }
}

unint64_t sub_26D187D64(uint64_t a1)
{
  result = sub_26D187D8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26D187D8C()
{
  result = qword_280AF2F20;
  if (!qword_280AF2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AF2F20);
  }

  return result;
}

void sub_26D187DE0()
{
  if (!qword_280AF2EB8)
  {
    v0 = type metadata accessor for Option();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF2EB8);
    }
  }
}

uint64_t Setting<>.init(_:defaultValue:domain:access:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4, char *a5)
{
  v7 = *a4;
  v8 = a4[1];
  v9 = *a5;
  v10 = *a3;
  sub_26D187FC4();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26D19CB00;
  *(v11 + 48) = 0;
  *(v11 + 32) = 0x746C7561666544;
  *(v11 + 40) = 0xE700000000000000;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 88) = 1;
  *(v11 + 72) = 0x64656C62616E45;
  *(v11 + 80) = 0xE700000000000000;
  *(v11 + 128) = 2;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 112) = 0x64656C6261736944;
  *(v11 + 120) = 0xE800000000000000;
  *(v11 + 136) = 0;
  *(v11 + 144) = 0;

  return sub_26D18801C(a1, a2, v10, v7, v8, v9, v11);
}

void sub_26D187F28()
{
  if (!qword_280AF2F08)
  {
    sub_26D18851C();
    v0 = type metadata accessor for Setting();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF2F08);
    }
  }
}

uint64_t Setting<>.init(_:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char *a4)
{
  v4 = *a4;
  v8 = *a3;
  v7[0] = 0;
  v7[1] = 0;
  v6 = v4;
  return Setting<>.init(_:defaultValue:domain:access:)(a1, a2, &v8, v7, &v6);
}

void sub_26D187FC4()
{
  if (!qword_280AF2EB0)
  {
    sub_26D187DE0();
    v0 = sub_26D19BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF2EB0);
    }
  }
}

uint64_t sub_26D18801C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_allocObject();
  v14 = sub_26D188154(a1, a2, a3, a4, a5, a6);
  swift_beginAccess();
  v15 = *(v14 + 104);
  *(v14 + 104) = a7;
  LOBYTE(a7) = *(v14 + 112);
  *(v14 + 112) = 0;

  sub_26D18850C(v15, a7);

  return v14;
}

void sub_26D1880EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_26D188250(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26D188154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_3(a1, a2);
  *(v6 + 32) = v10;
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0xE700000000000000;
      v12 = 0x64656C62616E65;
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x64656C6261736964;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    v12 = 0x746C7561666564;
  }

  v17 = MEMORY[0x277D837D0];
  *&v16 = v12;
  *(&v16 + 1) = v11;
  v13 = sub_26D186BA8(&v16, (v6 + 40));
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  OUTLINED_FUNCTION_0(v13, qword_280AF30A0, qword_280AF31A8, &protocol descriptor for ConditionType);
  v14 = swift_allocObject();
  return OUTLINED_FUNCTION_2_0(v14, &type metadata for Access, xmmword_26D19C050);
}

uint64_t sub_26D188250(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26D1882A4(uint64_t a1, char a2)
{
  sub_26D1883B0(a1, 3, &v6);
  if (v6)
  {
    a2 = v6 == 1;
    return a2 & 1;
  }

  if (a2 != 2)
  {
    return a2 & 1;
  }

  if (*(a1 + 32) && *(a1 + 32) == 1)
  {

    a2 = 1;
    return a2 & 1;
  }

  v5 = sub_26D19BA94();

  return v5 & 1;
}

uint64_t sub_26D1883B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  if (a2 == 3)
  {
    v3 = *(a1 + 32);
  }

  swift_beginAccess();
  v6 = *(a1 + 96);

  v8 = sub_26D186A68(v7);

  if (!v8)
  {
    goto LABEL_8;
  }

  if (qword_280AF3258 != -1)
  {
    swift_once();
  }

  sub_26D187F28();
  v12[3] = v10;
  v12[4] = sub_26D188570(&qword_280AF2F10, sub_26D187F28);
  v12[0] = a1;
  v11[3] = &type metadata for FeatureState;
  LOBYTE(v11[0]) = v3;

  sub_26D1870F4(v12, v11, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  result = swift_dynamicCast();
  if (result)
  {
    *a3 = v12[0];
  }

  else
  {
LABEL_8:
    *a3 = v3;
  }

  return result;
}

uint64_t sub_26D18850C(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

unint64_t sub_26D18851C()
{
  result = qword_280AF2F18;
  if (!qword_280AF2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AF2F18);
  }

  return result;
}

uint64_t sub_26D188570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D1885C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26D18862C()
{
  v1 = v0;
  v2 = [objc_opt_self() processInfo];
  v3 = sub_26D19B904();

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(v5 + 16))(v3, v4, v5);

  sub_26D1888C8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_26D19B674();
}

Swift::Void __swiftcall PresetManager.apply(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = 0;
  v17 = a1._rawValue + 32;
  v18 = *(a1._rawValue + 2);
LABEL_2:
  if (v3 != v18)
  {
    v4 = &v17[16 * v3];
    v6 = *v4;
    v5 = v4[1];
    swift_beginAccess();
    v7 = v2[4];

    v8 = sub_26D198E44(v6, v5, v7);
    if (v8)
    {
      v9 = v8;
      v19 = v3 + 1;
      swift_endAccess();

      v10 = sub_26D1893C4(v9);
      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {

          v3 = v19;
          goto LABEL_2;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x26D6B46D0](i, v9);
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v12 = *(v9 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v13 = v2[2];
        v14 = v2[3];
        ObjectType = swift_getObjectType();
        v16 = *(v14 + 32);
        swift_unknownObjectRetain();
        v16(v12, ObjectType, v14);

        swift_unknownObjectRelease();
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    else
    {
      swift_endAccess();
    }
  }
}

void sub_26D1888C8()
{
  if (!qword_280AF28A0)
  {
    v0 = sub_26D19B684();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF28A0);
    }
  }
}

uint64_t sub_26D18891C(uint64_t a1)
{
  sub_26D188E94();
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = sub_26D1893BC(v2);

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6B46D0](i, v2);
      v6 = result;
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = *(v6 + 32);
    (*(v6 + 24))(result);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_26D188A18()
{
  sub_26D188ACC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26D188ACC()
{
  if (!qword_280AF2F00)
  {
    sub_26D19B5B4();
    v0 = sub_26D19B934();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF2F00);
    }
  }
}

id AppGroup.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC11TeaSettings8AppGroup____lazy_storage___containerURL;
  v7 = sub_26D19B5B4();
  __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v8 = (v3 + OBJC_IVAR____TtC11TeaSettings8AppGroup_settingsDomain);
  *v8 = a1;
  v8[1] = a2;
  objc_allocWithZone(MEMORY[0x277CBEBD0]);
  swift_bridgeObjectRetain_n();
  result = sub_26D188DF4(a1, a2);
  if (result)
  {
    v10 = result;

    *(v3 + OBJC_IVAR____TtC11TeaSettings8AppGroup_userDefaults) = v10;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26D188BDC()
{
  if (!qword_280AF2CF8)
  {
    v0 = type metadata accessor for Setting();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF2CF8);
    }
  }
}

uint64_t sub_26D188C34()
{
  v0 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for SettingsStore();
  OUTLINED_FUNCTION_13();
  v1 = swift_allocObject();
  result = sub_26D188CB8(v0);
  qword_280AF3810 = v1;
  return result;
}

uint64_t sub_26D188CB8(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v1 selector:sel_defaultsDidChange name:*MEMORY[0x277CCA858] object:0];

  return v1;
}

void *PresetManager.init()()
{
  sub_26D189578();
  v0[4] = sub_26D19B6E4();
  type metadata accessor for Updater();
  v0[2] = swift_allocObject();
  v0[3] = &protocol witness table for Updater;
  return v0;
}

id sub_26D188DF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_26D19B714();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_26D188E94()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v4 = sub_26D1893BC(v2);

  v6 = 0;
  while (1)
  {
    if (v4 == v6)
    {

      v9 = *(v1 + 24);
      *(v1 + 24) = v3;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6B46D0](v6, v2);
    }

    else
    {
      if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v2 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = swift_unknownObjectRelease();
      MEMORY[0x26D6B4540](v8);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26D19B844();
      }

      result = sub_26D19B874();
      v3 = v10;
      ++v6;
    }

    else
    {

      ++v6;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26D188FF4()
{
  v1 = sub_26D19B694();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D19B6B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    sub_26D188E94();
    swift_beginAccess();
    v11 = *(v0 + 24);
    v12 = sub_26D1893BC(v11);

    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D6B46D0](i, v11);
        v15 = result;
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v15 = *(v11 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v16 = *(v15 + 32);
      (*(v15 + 24))(result);
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
    sub_26D1893E8();
    v17 = sub_26D19B914();
    aBlock[4] = sub_26D189638;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26D189534;
    aBlock[3] = &block_descriptor;
    v18 = _Block_copy(aBlock);

    sub_26D19B6A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26D18944C(&qword_280AF3090, MEMORY[0x277D85198]);
    sub_26D1894DC();
    sub_26D18944C(&qword_280AF3080, sub_26D1894DC);
    sub_26D19B964();
    MEMORY[0x26D6B4660](0, v10, v5, v18);
    _Block_release(v18);

    (*(v2 + 8))(v5, v1);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t Date.toData()@<X0>(void *a1@<X8>)
{
  result = sub_26D19B5E4();
  a1[3] = MEMORY[0x277D839F8];
  *a1 = v3;
  return result;
}

uint64_t sub_26D1893C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26D19BA44();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_26D1893E8()
{
  result = qword_280AF3078;
  if (!qword_280AF3078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280AF3078);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26D18944C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D189494(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26D1894DC()
{
  if (!qword_280AF3088)
  {
    sub_26D19B694();
    v0 = sub_26D19B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF3088);
    }
  }
}

uint64_t sub_26D189534(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_26D189578()
{
  if (!qword_280AF2898)
  {
    type metadata accessor for Preset();
    v0 = sub_26D19B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF2898);
    }
  }
}

uint64_t sub_26D189650()
{
  sub_26D188BDC();
  swift_allocObject();
  result = sub_26D1896B8(0xD00000000000002BLL, 0x800000026D19DAF0);
  qword_280AF2880 = result;
  return result;
}

uint64_t sub_26D1896B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_3(a1, a2);
  v4 = MEMORY[0x277D839B0];
  *(v2 + 32) = v5;
  *(v2 + 40) = v5;
  *(v2 + 64) = v4;
  *(v2 + 72) = v6;
  *(v2 + 80) = v7;
  *(v2 + 88) = v8;
  OUTLINED_FUNCTION_0(v3, qword_280AF30A0, qword_280AF31A8, &protocol descriptor for ConditionType);
  v9 = swift_allocObject();
  return OUTLINED_FUNCTION_2_0(v9, &type metadata for Access, xmmword_26D19C050);
}

uint64_t AppGroup.cachesDirectoryURL.getter()
{
  v0 = sub_26D19B5B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppGroup.containerURL.getter(v4);
  sub_26D19B594();
  return (*(v1 + 8))(v4, v0);
}

uint64_t AppGroup.containerURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_26D188ACC();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC11TeaSettings8AppGroup____lazy_storage___containerURL;
  swift_beginAccess();
  sub_26D1899DC(v1 + v10, v9);
  v11 = sub_26D19B5B4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  sub_26D189A40(v9);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  sub_26D189A9C(a1);
  (*(*(v11 - 8) + 16))(v7, a1, v11);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
  swift_beginAccess();
  sub_26D18A370(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_26D1899DC(uint64_t a1, uint64_t a2)
{
  sub_26D188ACC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D189A40(uint64_t a1)
{
  sub_26D188ACC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D189A9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26D19B5B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D188ACC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_26D19B714();
  v13 = [v11 containerURLForSecurityApplicationGroupIdentifier_];

  if (v13)
  {
    sub_26D19B5A4();

    v14 = *(v3 + 32);
    v14(v10, v6, v2);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v2);
    return (v14)(a1, v10, v2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v2);
    v16 = NSTemporaryDirectory();
    v17 = sub_26D19B724();
    v19 = v18;

    v20 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v21 = [v20 UUIDString];

    v22 = sub_26D19B724();
    v24 = v23;

    v25[0] = v17;
    v25[1] = v19;

    MEMORY[0x26D6B4490](v22, v24);

    sub_26D19B584();

    result = __swift_getEnumTagSinglePayload(v10, 1, v2);
    if (result != 1)
    {
      return sub_26D189A40(v10);
    }
  }

  return result;
}

uint64_t Option.init(label:value:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for Option();
  result = (*(*(a6 - 8) + 32))(&a7[*(v12 + 28)], a3, a6);
  v14 = &a7[*(v12 + 32)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

void *SettingGroup.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v23 = a3;
  v19 = a2;
  v18 = a1;
  v17 = *v3;
  v22 = sub_26D19BB14();
  v21 = *(v22 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = 0;
  v24 = type metadata accessor for SettingGroup();
  *(&v33[0] + 1) = v24;
  *&v32 = v4;

  sub_26D19BAF4();
  v20 = v7;
  sub_26D19BB04();
  sub_26D19BA04();

  while (1)
  {
    sub_26D19BA54();
    v33[0] = v30;
    v33[1] = v31;
    v32 = v29;
    if (!*(&v31 + 1))
    {
      break;
    }

    sub_26D186BA8(v33, &v28);
    sub_26D188250(0, &qword_280AF2CF0);
    if (swift_dynamicCast())
    {
      sub_26D1885C4(&v25, &v29);
      v8 = *(&v30 + 1);
      v9 = v31;
      __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
      *(&v26 + 1) = v24;
      v27 = &off_287E90150;
      *&v25 = v4;
      v10 = *(v9 + 80);

      v10(&v25, v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(&v25);
      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
    }

    else
    {
      v27 = 0;
      v26 = 0u;
      v25 = 0u;
      sub_26D18E728(&v25);
    }
  }

  v11 = v19;
  if (v19)
  {
    v12 = v18;
  }

  else
  {
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_26D19B974();

    *&v32 = 0xD000000000000011;
    *(&v32 + 1) = 0x800000026D19D870;
    v13 = sub_26D19BB24();
    MEMORY[0x26D6B4490](v13);

    v11 = *(&v32 + 1);
    v12 = v32;
  }

  sub_26D188BDC();
  swift_allocObject();
  v14 = sub_26D1896B8(v12, v11);
  (*(v21 + 8))(v20, v22);
  v15 = v4[2];
  v4[2] = v14;

  return v4;
}

uint64_t Setting<>.init(_:defaultValue:domain:access:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _BYTE *a5, uint64_t a6)
{
  v36 = a6;
  v33 = a1;
  v34 = a2;
  v10 = *(v6 + 88);
  v35 = type metadata accessor for Trait();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = (&v33 - v16);
  OUTLINED_FUNCTION_2();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a4;
  v26 = a4[1];
  LOBYTE(a5) = *a5;
  (*(v19 + 16))(v24, a3, v10);
  v37[0] = v25;
  v37[1] = v26;
  v38 = a5;
  v27 = Setting.__allocating_init(_:defaultValue:domain:access:)(v33, v34, v24, v37, &v38);
  (*(v19 + 8))(a3, v10);
  v28 = v35;
  *v17 = v36;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_0();
  v30 = *(v29 + 152);
  swift_beginAccess();
  v31 = *(v12 + 40);

  v31(v27 + v30, v17, v28);
  swift_endAccess();

  return v27;
}

uint64_t sub_26D18A370(uint64_t a1, uint64_t a2)
{
  sub_26D188ACC();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Setting.__allocating_init(_:defaultValue:domain:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  Setting.init(_:defaultValue:domain:access:)(a1, a2, a3, a4, a5);
  return v13;
}

void SettingProperty.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_4_2();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = *v20;
  v26 = *(*v20 + 80);
  OUTLINED_FUNCTION_2();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  OUTLINED_FUNCTION_2_2();
  swift_getFunctionTypeMetadata1();
  v34 = sub_26D19B854();
  v20[2] = v24;
  v20[3] = v34;
  OUTLINED_FUNCTION_4_3();
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v36[2] = v26;
  v36[3] = *(v25 + 88);
  v36[4] = v35;

  Configurable.setting<A>(_:_:)();

  (*(v28 + 8))(v33, v26);

  OUTLINED_FUNCTION_3_3();
}

uint64_t sub_26D18A69C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26D18A6D0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_26D18A708()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);

    sub_26D18A890(v2, 2);
  }

  else
  {
    __break(1u);
  }
}

void Configurable.setting<A>(_:_:)()
{
  OUTLINED_FUNCTION_4_2();
  v19[0] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v7;
  v10 = *(*v7 + 88);
  v11 = sub_26D19B934();
  OUTLINED_FUNCTION_0_5(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v16);
  v18 = v19 - v17;
  __swift_storeEnumTagSinglePayload(v19 - v17, 1, 1, v10);
  (*(v2 + 32))(v8, v18, v6, v4, v10, *(v9 + 96), v19[0], v2);
  (*(v13 + 8))(v18, v11);
  OUTLINED_FUNCTION_3_3();
}

uint64_t sub_26D18A890(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = a2;
  }

  swift_beginAccess();
  v4 = *(a1 + 96);

  v6 = sub_26D186A68(v5);

  if (v6)
  {
    if (qword_280AF3258 != -1)
    {
      swift_once();
    }

    sub_26D188BDC();
    v10[3] = v7;
    v10[4] = sub_26D188570(qword_280AF2D00, sub_26D188BDC);
    v10[0] = a1;
    v9[3] = MEMORY[0x277D839B0];
    LOBYTE(v9[0]) = v3 & 1;

    sub_26D1870F4(v10, v9, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    if (swift_dynamicCast())
    {
      v3 = v10[0];
    }
  }

  return v3 & 1;
}

void Configurable.setting<A>(_:defaultValue:_:)()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0;
  v3 = v2;
  v32 = v4;
  v33 = v5;
  v7 = v6;
  v34 = v8;
  v30 = *v6;
  v31 = v9;
  v10 = v30[11];
  v11 = sub_26D19B934();
  OUTLINED_FUNCTION_0_5(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v19 = v30[18];
  swift_beginAccess();
  v20 = *&v7[v19];

  LOBYTE(v19) = sub_26D186A68(v21);

  if (v19)
  {
    v22 = swift_allocBox();
    v24 = v23;
    (*(v1 + 8))(v7, v10, v30[12], v3, v1);
    if (qword_280AF3258 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v26[2] = v3;
    v26[3] = v1;
    v26[4] = v25;
    v26[5] = v7;
    v27 = v32;
    v28 = v33;
    v26[6] = v22;
    v26[7] = v27;
    v26[8] = v28;

    sub_26D18AF70(sub_26D18C0BC, v26, v35);

    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    sub_26D19B614();
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    swift_beginAccess();
    (*(*(v10 - 8) + 16))(v34, v24, v10);
  }

  else
  {
    (*(v13 + 16))(v18, v31, v11);
    if (__swift_getEnumTagSinglePayload(v18, 1, v10) == 1)
    {
      (*(*(v10 - 8) + 16))(v34, &v7[*(*v7 + 112)], v10);
      if (__swift_getEnumTagSinglePayload(v18, 1, v10) != 1)
      {
        (*(v13 + 8))(v18, v11);
      }
    }

    else
    {
      (*(*(v10 - 8) + 32))(v34, v18, v10);
    }
  }

  OUTLINED_FUNCTION_3_3();
}

uint64_t sub_26D18ADBC()
{
  MEMORY[0x26D6B4C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D18ADF4()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26D18AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_26D19B694();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v16 = v15 - v14;
  sub_26D19B6B4();
  OUTLINED_FUNCTION_2();
  v31 = v18;
  v32 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v23 = v22 - v21;
  v24 = type metadata accessor for SettingsStore.SettingObserver();
  swift_allocObject();

  v25 = sub_26D18B3D0(v4, a1, a2);
  if ([objc_opt_self() isMainThread])
  {
    sub_26D188E94();
    swift_beginAccess();

    MEMORY[0x26D6B4540](v26);
    sub_26D18B428(*((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_26D19B874();
    swift_endAccess();
  }

  else
  {
    sub_26D1893E8();
    v30 = sub_26D19B914();
    OUTLINED_FUNCTION_13();
    v27 = swift_allocObject();
    *(v27 + 16) = v4;
    *(v27 + 24) = v25;
    aBlock[4] = sub_26D18D7F4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26D189534;
    aBlock[3] = &block_descriptor_12;
    v28 = _Block_copy(aBlock);

    sub_26D19B6A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26D18944C(&qword_280AF3090, MEMORY[0x277D85198]);
    sub_26D1894DC();
    sub_26D18944C(&qword_280AF3080, sub_26D1894DC);
    sub_26D19B964();
    MEMORY[0x26D6B4660](0, v23, v16, v28);
    _Block_release(v28);

    (*(v10 + 8))(v16, v8);
    (*(v31 + 8))(v23, v32);
  }

  a3[3] = v24;
  result = sub_26D18944C(&qword_280AF2EA8, type metadata accessor for SettingsStore.SettingObserver);
  a3[4] = result;
  *a3 = v25;
  return result;
}

uint64_t sub_26D18B338()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_16()
{
}

id OUTLINED_FUNCTION_18(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{

  return [a9 a2];
}

uint64_t sub_26D18B3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_26D18B428(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_26D19B844();
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_15(uint64_t a1)
{
  v1[3] = a1;

  return __swift_allocate_boxed_opaque_existential_0(v1);
}

uint64_t sub_26D18B46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = sub_26D19B934();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  (*(*(v6 + 96) + 24))(a1, v7);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v15, v7);
  }

  v16 = *(*v3 + 112);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(a2, v3 + v18, v7);
  result = __swift_getEnumTagSinglePayload(v15, 1, v7);
  if (result != 1)
  {
    return (*(v10 + 8))(v15, v8);
  }

  return result;
}

uint64_t static RawRepresentable<>.convert(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_26D19B934();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  OUTLINED_FUNCTION_2();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v25 - v22;
  sub_26D187C98(a1, v27);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v23, v13, AssociatedTypeWitness);
    (*(v15 + 16))(v21, v23, AssociatedTypeWitness);
    sub_26D19B7F4();
    return (*(v15 + 8))(v23, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v13, v6);
    return __swift_storeEnumTagSinglePayload(v26, 1, 1, a2);
  }
}

uint64_t sub_26D18B8E0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v32 = a2;
  v6 = *v3;
  v7 = *v3;
  v8 = *(*v3 + 88);
  v9 = sub_26D19B934();
  OUTLINED_FUNCTION_2();
  v30 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  OUTLINED_FUNCTION_2();
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  v23 = *(v6 + 144);
  swift_beginAccess();
  v24 = *(v4 + v23);

  LOBYTE(v23) = sub_26D186A68(v25);

  if (v23)
  {
    v33 = v4;

    WitnessTable = swift_getWitnessTable();
    v27 = sub_26D18BC58(&v33, a1, v7, WitnessTable);

    if (!v27)
    {
      v32(a1);
      if (__swift_getEnumTagSinglePayload(v15, 1, v8) == 1)
      {
        (*(v30 + 8))(v15, v9);
      }

      else
      {
        (*(v17 + 32))(v22, v15, v8);
        sub_26D18F1CC(v4);
        (*(v17 + 8))(v22, v8);
      }
    }
  }
}

uint64_t static String.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v3);
  if (OUTLINED_FUNCTION_0_1())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t Setting.migrate(from:)(uint64_t a1)
{
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = qword_280AF3810;

  return sub_26D18BB68(a1, v2);
}

uint64_t sub_26D18BC30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static String.convert(from:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

BOOL sub_26D18BC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  (*(v7 + 16))(v12 - v11);
  v14 = *(a4 + 40);
  v15 = OUTLINED_FUNCTION_1_3();
  v16(v15);
  v23[0] = v23[1];
  v17 = sub_26D187BA4(v23);

  if (v17)
  {
    v18 = *(a4 + 16);
    v19 = OUTLINED_FUNCTION_1_3();
    v20(v19);
    v21 = sub_26D187B08();
  }

  else
  {
    v21 = 0;
  }

  (*(v7 + 8))(v13, a3);
  return v21;
}

unint64_t sub_26D18BEA0(uint64_t a1)
{
  result = sub_26D18BEC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26D18BEC8()
{
  result = qword_280AF2BD8[0];
  if (!qword_280AF2BD8[0])
  {
    sub_26D19B5F4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280AF2BD8);
  }

  return result;
}

uint64_t Updatable.save<A>(setting:value:)(void *a1)
{
  v2 = *a1;
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v3 = qword_280AF3810;
  v12 = a1;
  v6 = v2 + 88;
  v4 = *(v2 + 88);
  v5 = *(v6 + 8);
  v7 = *(v5 + 32);

  v7(v11, v4, v5);
  v8 = type metadata accessor for Setting();
  v9 = OUTLINED_FUNCTION_1_1();
  sub_26D18C38C(&v12, v11, v3, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_26D18C0D0(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v28 = a4;
  v10 = *a2;
  v11 = *(*a2 + 88);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v19 = swift_projectBox();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v10 + 96);
    (*(a7 + 8))(a2, v11, v21, a6, a7);
    swift_beginAccess();
    v26 = *(v12 + 16);
    v26(v16, v19, v11);
    v22 = *(v21 + 8);
    v23 = sub_26D19B704();
    v24 = *(v12 + 8);
    v24(v16, v11);
    if (v23)
    {
      v24(v18, v11);
      return swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      (*(v12 + 24))(v19, v18, v11);
      swift_beginAccess();
      v26(v16, v19, v11);
      v28(v16);
      swift_unknownObjectRelease();
      v24(v16, v11);
      return (v24)(v18, v11);
    }
  }

  return result;
}

uint64_t sub_26D18C38C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  (*(v9 + 16))(v14 - v13);
  v16 = a5[7];
  v17 = OUTLINED_FUNCTION_1_3();
  v19 = v18(v17);
  v20 = sub_26D186A68(v19);

  if (v20)
  {
    v21 = a5[5];
    v22 = OUTLINED_FUNCTION_1_3();
    v23(v22);
    v31[0] = v31[1];
    v24 = sub_26D187BA4(v31);

    if (v24)
    {
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v25 = sub_26D19BA84();
      v26 = a5[2];
      v27 = OUTLINED_FUNCTION_1_3();
      v28(v27);
      v29 = sub_26D19B714();

      [v24 setObject:v25 forKey:v29];

      swift_unknownObjectRelease();
    }
  }

  return (*(v9 + 8))(v15, a4);
}

_BYTE *storeEnumTagSinglePayload for FeatureState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26D18C624);
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

uint64_t OUTLINED_FUNCTION_17()
{
}

uint64_t getEnumTagSinglePayload for Access(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_26D18C6F8()
{
  result = qword_280AF2868;
  if (!qword_280AF2868)
  {
    sub_26D18C97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AF2868);
  }

  return result;
}

void *sub_26D18C768(void *result, int64_t a2, char a3, uint64_t a4, unint64_t *a5, unint64_t *a6, uint64_t a7, void (*a8)(uint64_t, int64_t, void *))
{
  v11 = result;
  if ((a3 & 1) == 0)
  {
    v13 = a2;
    goto LABEL_8;
  }

  v12 = *(a4 + 24);
  v13 = v12 >> 1;
  if ((v12 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v13 + 0x4000000000000000 >= 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v13 = a2;
    }

LABEL_8:
    v14 = *(a4 + 16);
    if (v13 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      sub_26D18C9CC(0, a5, a6);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 40);
      if (v11)
      {
LABEL_13:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v16;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26D188250(0, a6);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_26D18C894(uint64_t a1)
{
  result = sub_26D18C6F8();
  *(a1 + 8) = result;
  return result;
}

uint64_t static Bool.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v3);
  if (OUTLINED_FUNCTION_0_1())
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

void *sub_26D18C908(void *a1, int64_t a2, char a3)
{
  result = sub_26D18C768(a1, a2, a3, *v3, qword_280AF30A0, qword_280AF31A8, &protocol descriptor for ConditionType, sub_26D198D40);
  *v3 = result;
  return result;
}

uint64_t sub_26D18C954@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = static Bool.convert(from:)(a1);
  *a2 = result;
  return result;
}

void sub_26D18C97C()
{
  if (!qword_280AF2870)
  {
    v0 = sub_26D19B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF2870);
    }
  }
}

void sub_26D18C9CC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_26D188250(255, a3);
    v4 = sub_26D19BA74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Array<A>.toData()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_26D18C97C();
  a2[3] = v4;
  *a2 = a1;
}

uint64_t static SettingReader.shared.getter()
{
  if (qword_280AF2FD0 != -1)
  {
    swift_once();
  }
}

uint64_t Setting<>.init(_:defaultValue:min:max:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v35 = a4;
  v36 = a5;
  v34 = a2;
  v10 = *(v6 + 88);
  v11 = type metadata accessor for Trait();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  OUTLINED_FUNCTION_2();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a6) = *a6;
  (*(v20 + 16))(v25, a3, v10);
  v38 = a6;
  v37[0] = 0;
  v37[1] = 0;
  v26 = Setting.__allocating_init(_:defaultValue:domain:access:)(a1, v34, v25, v37, &v38);
  (*(v20 + 8))(a3, v10);
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  v28 = *(v20 + 32);
  v28(v18, v35, v10);
  v28(&v18[v27], v36, v10);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_0();
  v30 = *(v29 + 152);
  swift_beginAccess();
  v31 = *(v13 + 40);

  v31(v26 + v30, v18, v11);
  swift_endAccess();

  return v26;
}

uint64_t SettingGroup.__allocating_init(key:defaultValue:access:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5)
{
  v9 = *a5;
  v10 = a5[1];
  v19 = *a4;
  v11 = *(v5 + 136);

  result = v11(a1, a2, a3, &v19);
  v13 = *(result + 16);
  if (v13)
  {
    v14 = result;

    v15 = *(v13 + 16);
    v16 = *(v13 + 24);

    sub_26D188BDC();
    swift_allocObject();
    v17 = sub_26D1896B8(v15, v16);
    v18 = *(v14 + 16);
    *(v14 + 16) = v17;

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D18CE5C(uint64_t a1)
{
  sub_26D187C98(a1, v12);
  v1 = swift_dynamicCast();
  return OUTLINED_FUNCTION_3_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

uint64_t Setting.__deallocating_deinit()
{
  Setting.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D18CF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Int.convert(from:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

char *Setting.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  OUTLINED_FUNCTION_1_0();
  v4 = *(v3 + 112);
  v5 = *(v1 + 88);
  OUTLINED_FUNCTION_5();
  (*(v6 + 8))(&v0[v7], v5);
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v8 + 120)]);
  OUTLINED_FUNCTION_1_0();
  v10 = *&v0[*(v9 + 128) + 8];

  OUTLINED_FUNCTION_1_0();
  v12 = *&v0[*(v11 + 144)];

  OUTLINED_FUNCTION_1_0();
  v14 = *(v13 + 152);
  v15 = type metadata accessor for Trait();
  OUTLINED_FUNCTION_6_0(v15);
  (*(v16 + 8))(&v0[v14]);
  return v0;
}

void sub_26D18D09C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static Array<A>.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v3);
  sub_26D18C97C();
  if (OUTLINED_FUNCTION_0_1())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D18D144@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Array<A>.convert(from:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26D18D16C(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x64656C62616E65;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x746C7561666564;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x64656C62616E65;
    }

    else
    {
      v2 = 0x64656C6261736964;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D19BA94();
  }

  return v8 & 1;
}

uint64_t sub_26D18D268(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_1_0();
  v5 = *(v4 + 144);
  swift_beginAccess();
  sub_26D18D334();
  v6 = *(*(v1 + v5) + 16);
  sub_26D18D4DC(v6);
  v7 = *(v1 + v5);
  *(v7 + 16) = v6 + 1;
  sub_26D1868C4(a1, v7 + 40 * v6 + 32);
  *(v2 + v5) = v7;
  return swift_endAccess();
}

void *sub_26D18D334()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_26D18D398(result, v1[2] + 1, 1, v1, qword_280AF30A0, qword_280AF31A8);
    *v0 = result;
  }

  return result;
}

void *sub_26D18D398(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_26D18C9CC(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || &a4[5 * v11 + 4] <= v13 + 4)
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_26D188250(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_26D18D4DC(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_26D18D398((v2 > 1), result + 1, 1, *v1, qword_280AF30A0, qword_280AF31A8);
    *v1 = result;
  }

  return result;
}

uint64_t Configurable.isEnabled(_:with:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = sub_26D18851C();
  v8(&v11, a1, &type metadata for FeatureState, v9, a3, a4);
  if (v11)
  {
    a2 = v11 == 1;
  }

  else if (a2 == 2)
  {
    if (*(a1 + 32) && *(a1 + 32) == 1)
    {

      a2 = 1;
    }

    else
    {
      a2 = sub_26D19BA94();
    }
  }

  return a2 & 1;
}

uint64_t sub_26D18D654()
{
  v1 = *v0;
  sub_26D18A708();
  return v2 & 1;
}

uint64_t *Setting.migrate(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v6 = MEMORY[0x28223BE20](qword_280AF3810);
  v8[1] = *(v5 + 88);
  v9 = a1;
  v10 = a2;
  sub_26D18B8E0(v6, sub_26D1924F4, v8);
  return v2;
}

uint64_t sub_26D18D764(uint64_t a1)
{
  sub_26D188E94();
  swift_beginAccess();

  MEMORY[0x26D6B4540](v2);
  sub_26D18B428(*((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_26D19B874();
  return swift_endAccess();
}

uint64_t static Double.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v12);
  v1 = OUTLINED_FUNCTION_0_1();
  return OUTLINED_FUNCTION_3_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

uint64_t sub_26D18D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Double.convert(from:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26D18D878()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D18D8C0()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26D18D8F0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26D18D9B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26D18DB70()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D18DBA8()
{
  MEMORY[0x26D6B4C80](v0 + 16);
  OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26D18DBDC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

__n128 sub_26D18DC50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26D18DC5C()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_26D18DD40()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D18DDA8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

char *sub_26D18DDEC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

uint64_t sub_26D18DE14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26D1984C0();
  *a2 = result;
  return result;
}

uint64_t sub_26D18DE6C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_26D18DEA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_26D18DEE0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_26D18DF1C()
{
  v1 = *(v0 + 24);

  switch(*(v0 + 112))
  {
    case 0:
    case 8:
      goto LABEL_11;
    case 1:
      v9 = *(v0 + 32);

      v10 = *(v0 + 48);

      goto LABEL_7;
    case 2:
    case 3:
      v2 = *(v0 + 40);

      goto LABEL_3;
    case 4:
LABEL_3:
      v3 = *(v0 + 48);

LABEL_7:
      v11 = *(v0 + 64);
      goto LABEL_13;
    case 5:
      v13 = *(v0 + 64);

      v14 = *(v0 + 80);
      goto LABEL_13;
    case 6:
      v12 = *(v0 + 32);

      break;
    case 7:
      v18 = *(v0 + 32);

      v19 = *(v0 + 48);
      goto LABEL_13;
    case 9:
      v4 = *(v0 + 48);

      v5 = *(v0 + 64);

      v6 = *(v0 + 80);

      v7 = *(v0 + 88);

      v8 = *(v0 + 104);
      goto LABEL_13;
    case 0xA:
      v15 = *(v0 + 32);

LABEL_11:
      v16 = *(v0 + 40);

      v17 = *(v0 + 56);
LABEL_13:

      break;
    case 0xB:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
      break;
    default:
      break;
  }

  return MEMORY[0x2821FE8E8](v0, 114, 7);
}

uint64_t sub_26D18E054()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26D18E08C()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26D18E0C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *Preset.__allocating_init(extends:apply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *Preset.init(extends:apply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_26D18E194()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
}

uint64_t Preset.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t Preset.__deallocating_deinit()
{
  Preset.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26D18E24C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;

    v7 = sub_26D18E534(v3, 2, sub_26D18E508, v6);

    return v7 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D18E2F4(uint64_t result)
{
  if (*(v1 + 16))
  {
    v2 = result;
    v3 = *(v1 + 16);

    sub_26D18E34C(v4, v2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26D18E34C(void *a1, char a2)
{
  if (qword_280AF3258 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = a1[12];

  v6 = sub_26D186A68(v5);

  if (v6)
  {
    v7 = a1[10];
    v13[0] = a1[9];
    v13[1] = v7;

    v8 = sub_26D187BA4(v13);

    if (v8)
    {
      LOBYTE(v13[0]) = a2 & 1;
      v9 = sub_26D19BAA4();
      v10 = a1[2];
      v11 = a1[3];
      v12 = sub_26D19B714();
      [v8 setObject:v9 forKey:v12];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t SettingGroup.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_1();
  v6 = swift_allocObject();
  SettingGroup.init(key:defaultValue:access:)(a1, a2, a3);
  return v6;
}

uint64_t SettingGroup.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SettingGroup.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_26D18E508(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_26D18E534(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 96);

  v10 = sub_26D186A68(v9);

  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_26D18A890(a1, 2) & 1;
    if (qword_280AF3258 != -1)
    {
      swift_once();
    }

    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a1;
    v13[4] = v11;
    v13[5] = a3;
    v13[6] = a4;

    sub_26D18AF70(sub_26D18E8F8, v13, v15);

    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_26D19B614();
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    swift_beginAccess();
    a2 = *(v11 + 16);
  }

  else if (a2 == 2)
  {
    a2 = *(a1 + 32);
  }

  return a2 & 1;
}

uint64_t sub_26D18E728(uint64_t a1)
{
  sub_26D1880EC(0, &qword_280AF2888, &qword_280AF2CF0, &protocol descriptor for SettingType, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D18E824(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = sub_26D18A890(a2, 2) & 1;
    swift_beginAccess();
    if (v8 != *(a3 + 16))
    {
      swift_beginAccess();
      *(a3 + 16) = v8;
      v9 = v8;
      a4(&v9);
    }
  }

  return result;
}

uint64_t Access.hashValue.getter()
{
  v1 = *v0;
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](v1);
  return sub_26D19BAE4();
}

uint64_t sub_26D18E99C()
{
  v1 = *v0;
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](v1);
  return sub_26D19BAE4();
}

unint64_t sub_26D18E9E4()
{
  result = qword_2804DF278;
  if (!qword_2804DF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DF278);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Access(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26D18EB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Int64.convert(from:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t static Float.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v5);
  v1 = OUTLINED_FUNCTION_0_1();
  v2 = v4;
  v5[0] = v1 ^ 1;
  if (!v1)
  {
    v2 = 0;
  }

  return v2 | ((v1 ^ 1u) << 32);
}

unint64_t sub_26D18EC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Float.convert(from:)(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t static Data.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v3);
  if (OUTLINED_FUNCTION_0_1())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t Data.toData()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = MEMORY[0x277CC9318];
  *a3 = a1;
  a3[1] = a2;
  return sub_26D18ECD8(a1, a2);
}

uint64_t sub_26D18ECD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26D18ED34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Data.convert(from:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

char sub_26D18ED6C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_26D187C98(a1, v6);
  v3 = swift_dynamicCast();
  if (v3)
  {
    LOBYTE(v3) = FeatureState.init(rawValue:)(v5);
  }

  else
  {
    *a2 = 3;
  }

  return v3;
}

uint64_t sub_26D18EDDC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = 0xE700000000000000;
    v3 = 0x64656C62616E65;
    if (result != 1)
    {
      v3 = 0x64656C6261736964;
      v2 = 0xE800000000000000;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x746C7561666564;
  }

  a2[3] = MEMORY[0x277D837D0];
  *a2 = v3;
  a2[1] = v2;
  return result;
}

uint64_t static Date.convert(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26D187C98(a1, v6);
  if (OUTLINED_FUNCTION_0_1())
  {
    sub_26D19B5D4();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_26D19B5F4();
  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

unint64_t sub_26D18EEC4(uint64_t a1)
{
  result = sub_26D18EEEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26D18EEEC()
{
  result = qword_280AF2860;
  if (!qword_280AF2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AF2860);
  }

  return result;
}

uint64_t sub_26D18EFA0()
{
  sub_26D18FFB0(v0 + 16);
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26D18F004(void *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = a1[2];
  result = sub_26D1893BC(v4);
  v6 = result;
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      v12 = a1[3];
      v11 = a1[4];
      v15 = v3;
      v16 = &off_287E90460;
      v14[0] = v2;

      v12(v14);

      return __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6B46D0](i, v4);
      v8 = result;
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v8 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = *(v8 + 24);
    v9 = *(v8 + 32);
    v15 = v3;
    v16 = &off_287E90460;
    v14[0] = v2;

    v10(v14);

    result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_26D18F174()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_26D18F19C()
{
  sub_26D18F174();
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D18F1CC(void *a1)
{
  v2 = v1;
  v3 = *a1;
  v13 = a1;
  OUTLINED_FUNCTION_10();
  v5 = *(v4 + 96);
  v6 = *(v5 + 32);
  OUTLINED_FUNCTION_10();
  v8 = *(v7 + 88);

  v6(v12, v8, v5);
  v9 = type metadata accessor for Setting();
  OUTLINED_FUNCTION_7();
  WitnessTable = swift_getWitnessTable();
  sub_26D18C38C(&v13, v12, v2, v9, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_26D18F2A8(void *a1)
{
  v2 = *a1;
  v10 = a1;
  OUTLINED_FUNCTION_10();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_10();
  v6 = *(v5 + 96);
  v7 = type metadata accessor for Setting();

  OUTLINED_FUNCTION_7();
  WitnessTable = swift_getWitnessTable();
  sub_26D18FE20(&v10, v1, v7, WitnessTable);
}

unsigned __int8 *sub_26D18F384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_26D19B7A4();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26D18F90C(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26D19B9B4();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
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

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26D18F90C(uint64_t a1, unint64_t a2)
{
  v2 = sub_26D18F978(sub_26D18F974, 0, a1, a2);
  v6 = sub_26D18F9AC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26D18F978(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_26D18F9AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26D19B734();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_26D19B944();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26D18FB0C(v9, 0);
  v12 = sub_26D18FB94(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_26D19B734();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_26D19B9B4();
LABEL_4:

  return sub_26D19B734();
}

void *sub_26D18FB0C(uint64_t a1, uint64_t a2)
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

  sub_26D18D09C(0, &qword_2804DF280, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_26D18FB94(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_26D18FDA4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26D19B784();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26D19B9B4();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_26D18FDA4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_26D19B764();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26D18FDA4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26D19B794();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D6B44B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26D18FE20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  (*(v7 + 16))(v12 - v11);
  v14 = a4[7];
  v15 = OUTLINED_FUNCTION_1_3();
  v17 = v16(v15);
  v18 = sub_26D186A68(v17);

  if (v18)
  {
    v19 = a4[5];
    v20 = OUTLINED_FUNCTION_1_3();
    v21(v20);
    v28[0] = v28[1];
    v22 = sub_26D187BA4(v28);

    if (v22)
    {
      v23 = a4[2];
      v24 = OUTLINED_FUNCTION_1_3();
      v25(v24);
      v26 = sub_26D19B714();

      [v22 removeObjectForKey_];
    }
  }

  return (*(v7 + 8))(v13, a3);
}

uint64_t sub_26D18FFD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26D1900BC()
{
  v1 = *v0;
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](v1);
  return sub_26D19BAE4();
}

unint64_t sub_26D190108()
{
  result = qword_2804DF288;
  if (!qword_2804DF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DF288);
  }

  return result;
}

unint64_t sub_26D190160()
{
  result = qword_2804DF290;
  if (!qword_2804DF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DF290);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11TeaSettings16SettingCellStyleO(uint64_t a1)
{
  if ((*(a1 + 80) & 0xFu) <= 0xB)
  {
    return *(a1 + 80) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_26D1901E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 81))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 80);
  if (v3 >= 0xD)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D190220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_26D190274(uint64_t result, unsigned int a2)
{
  if (a2 > 0xB)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 12;
    LOBYTE(a2) = 12;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_26D1902AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26D190334(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t Group.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Group.footer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void Group.visibleItems.getter()
{
  v1 = 0;
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  v4 = v2 + 32;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    sub_26D1868C4(v4, &v22);
    v6 = v23;
    v7 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    if ((*(v7 + 32))(v6, v7))
    {
      sub_26D1885C4(&v22, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26D190C54(0, *(v5 + 16) + 1, 1);
        v5 = v25;
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_26D190C54((v9 > 1), v10 + 1, 1);
      }

      v11 = v20;
      v12 = v21;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      v14 = *(*(v11 - 8) + 64);
      MEMORY[0x28223BE20](v13);
      v16 = &v19[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      sub_26D190E34(v10, v16, &v25, v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      v5 = v25;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    }

    v4 += 40;
    ++v1;
  }
}

uint64_t Group.init(title:footer:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t Group.init(title:footer:group:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_26D18C9CC(0, &qword_2804DF298, &qword_2804DF2A0);
  result = swift_allocObject();
  *(result + 16) = xmmword_26D19C050;
  v14 = *(a5 + 16);
  if (v14)
  {
    v15 = result;
    *&v36[0] = 0x20656C62616E45;
    *(&v36[0] + 1) = 0xE700000000000000;

    v34 = a1;
    MEMORY[0x26D6B4490](a1, a2);

    v16 = v36[0];
    sub_26D190F1C();
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 48) = 1;
    *(v19 + 56) = 1065353216;
    *(v19 + 64) = 128;
    *(v19 + 16) = v14;
    *(v19 + 24) = v16;
    *(v19 + 66) = 0;
    *(v19 + 49) = 256;
    v20 = MEMORY[0x277D84F90];
    *(v19 + 32) = *(&v16 + 1);
    *(v19 + 40) = v20;
    v15[7] = v18;
    v15[8] = &protocol witness table for Item<A>;
    v15[4] = v19;
    v40 = v15;
    v21 = *(a6 + 16);
    if (v21)
    {
      v33 = a3;
      v39 = v20;
      sub_26D190CA0(0, v21, 0);
      v22 = v39;
      v23 = a6 + 32;
      do
      {
        sub_26D1868C4(v23, v36);
        *(&v37 + 1) = sub_26D18A460;
        v38 = a5;
        v39 = v22;
        v24 = *(v22 + 16);
        v25 = *(v22 + 24);

        if (v24 >= v25 >> 1)
        {
          sub_26D190CA0(v25 > 1, v24 + 1, 1);
          v22 = v39;
        }

        *(v22 + 16) = v24 + 1;
        v26 = v22 + 56 * v24;
        v27 = v36[0];
        v28 = v36[1];
        v29 = v37;
        *(v26 + 80) = v38;
        *(v26 + 48) = v28;
        *(v26 + 64) = v29;
        *(v26 + 32) = v27;
        v23 += 40;
        --v21;
      }

      while (v21);

      v30 = a4;
      a3 = v33;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
      v30 = a4;
    }

    v31 = sub_26D19091C(v22);

    sub_26D190A48(v31);

    v32 = v40;
    *a7 = v34;
    a7[1] = a2;
    a7[2] = a3;
    a7[3] = v30;
    a7[4] = v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D19091C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_26D190C54(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_26D191010(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_26D190C54((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for ConditionalItem;
      v10 = &protocol witness table for ConditionalItem;
      *&v8 = swift_allocObject();
      sub_26D191010(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_26D1885C4(&v8, v2 + 40 * v6 + 32);
      sub_26D19106C(v11);
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26D190A48(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26D190DBC(result, 1, sub_26D198AC4);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_26D188250(0, &qword_2804DF2A0);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26D190B3C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26D190DBC(result, 1, sub_26D198BD8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26D190C14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 48) = 1;
  *(v7 + 56) = 1065353216;
  *(v7 + 64) = 128;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 66) = a4 & 1;
  *(v7 + 50) = a5 & 1;
  *(v7 + 49) = a6 & 1;
  *(v7 + 32) = a3;
  *(v7 + 40) = a7;
  return v7;
}

void *sub_26D190C54(void *a1, int64_t a2, char a3)
{
  result = sub_26D18C768(a1, a2, a3, *v3, &qword_2804DF298, &qword_2804DF2A0, &protocol descriptor for Groupable, sub_26D198D40);
  *v3 = result;
  return result;
}

uint64_t sub_26D190CA0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26D190CC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26D190CC0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26D1910C0();
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_26D1987B4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D190DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_26D190E34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26D1885C4(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_26D190F1C()
{
  if (!qword_2804DF2A8)
  {
    v0 = type metadata accessor for Item();
    if (!v1)
    {
      atomic_store(v0, &qword_2804DF2A8);
    }
  }
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

uint64_t sub_26D190F88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D190FC8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_26D1910C0()
{
  if (!qword_2804DF2B0)
  {
    v0 = sub_26D19BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_2804DF2B0);
    }
  }
}

uint64_t AppGroup.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_26D191144(uint64_t a1, uint64_t *a2)
{
  v4 = sub_26D19B5B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return AppGroup.containerURL.setter(v7);
}

uint64_t AppGroup.containerURL.setter(uint64_t a1)
{
  sub_26D188ACC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D19B5B4();
  (*(*(v7 - 8) + 32))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC11TeaSettings8AppGroup____lazy_storage___containerURL;
  swift_beginAccess();
  sub_26D18A370(v6, v1 + v8);
  return swift_endAccess();
}

void (*AppGroup.containerURL.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_26D19B5B4();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  AppGroup.containerURL.getter(v7);
  return sub_26D1913DC;
}

void sub_26D1913DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    AppGroup.containerURL.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    AppGroup.containerURL.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t AppGroup.settingsDomain.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11TeaSettings8AppGroup_settingsDomain + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11TeaSettings8AppGroup_settingsDomain);
  a1[1] = v2;
}

uint64_t AppGroup.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  AppGroup.init(identifier:)(a1, a2);
  return v7;
}

uint64_t AppGroup.deinit()
{
  v1 = *(v0 + 24);

  sub_26D189A40(v0 + OBJC_IVAR____TtC11TeaSettings8AppGroup____lazy_storage___containerURL);
  v2 = *(v0 + OBJC_IVAR____TtC11TeaSettings8AppGroup_settingsDomain + 8);

  return v0;
}

uint64_t AppGroup.__deallocating_deinit()
{
  AppGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AppGroup()
{
  result = qword_280AF2EE8;
  if (!qword_280AF2EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingReader.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SettingReader.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t Option.description.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_26D19174C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26D191894(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26D191A74(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  for (i = (result + 64); v3; --v3)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = *(i - 3);

    sub_26D191B18(v5, a2);

    i += 5;
  }

  return result;
}

uint64_t sub_26D191B18(uint64_t result, uint64_t *a2)
{
  v2 = a2;
  v3 = 0;
  v4 = *(result + 16);
  v45 = result + 32;
  v33 = v4;
  while (v3 != v4)
  {
    v5 = v3 + 1;
    sub_26D1868C4(v45 + 40 * v3, v41);
    sub_26D188250(0, &qword_2804DF2A0);
    sub_26D188250(0, &qword_2804DF2B8);
    if (swift_dynamicCast())
    {
      v38 = v5;
      sub_26D1885C4(v39, v42);
      v6 = v43;
      v7 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v8 = (*(v7 + 8))(v6, v7);
      v9 = v8;
      v10 = v8 >> 62;
      if (v8 >> 62)
      {
        v11 = sub_26D19BA44();
      }

      else
      {
        v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = *v2;
      if (*v2 >> 62)
      {
        if (v12 < 0)
        {
          v32 = *v2;
        }

        result = sub_26D19BA44();
      }

      else
      {
        result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = result + v11;
      if (__OFADD__(result, v11))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

      v14 = *v2;
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v2 = v14;
      if (result)
      {
        if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
        {
          goto LABEL_19;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
        {
LABEL_19:
          sub_26D19BA44();
          goto LABEL_20;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = *(v15 + 16);
LABEL_20:
      result = sub_26D19B9A4();
      v14 = result;
      *v2 = result;
      v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v17 = *(v15 + 16);
      v18 = (*(v15 + 24) >> 1) - v17;
      v19 = v15 + 8 * v17;
      v37 = v15;
      if (v10)
      {
        v22 = sub_26D19BA44();
        if (v22)
        {
          v23 = v22;
          result = sub_26D19BA44();
          if (v18 < result)
          {
            goto LABEL_44;
          }

          if (v23 < 1)
          {
            goto LABEL_46;
          }

          v35 = result;
          v36 = v11;
          sub_26D1920D0();
          sub_26D192128();
          for (i = 0; i != v23; ++i)
          {
            v25 = sub_26D19AFA4(v41, i, v9);
            v27 = *v26;

            (v25)(v41, 0);
            *(v19 + 32 + 8 * i) = v27;
          }

          v4 = v33;
          v2 = a2;
          v21 = v35;
          v11 = v36;
          goto LABEL_31;
        }
      }

      else
      {
        v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          if (v18 < v20)
          {
            goto LABEL_44;
          }

          v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          type metadata accessor for SettingAction();
          swift_arrayInitWithCopy();
LABEL_31:

          v28 = v38;
          if (v21 < v11)
          {
            goto LABEL_43;
          }

          if (v21 > 0)
          {
            v29 = *(v37 + 16);
            v30 = __OFADD__(v29, v21);
            v31 = v29 + v21;
            if (v30)
            {
              goto LABEL_45;
            }

            *(v37 + 16) = v31;
          }

          goto LABEL_36;
        }
      }

      v28 = v38;
      if (v11 > 0)
      {
        goto LABEL_43;
      }

LABEL_36:
      *v2 = v14;
      result = __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v3 = v28;
    }

    else
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
      result = sub_26D19200C(v39);
      v3 = v5;
    }
  }

  return result;
}

TeaSettings::Page __swiftcall Page.init(title:_:)(Swift::String title, Swift::OpaquePointer _)
{
  *v2 = title;
  *(v2 + 16) = _;
  result.title = title;
  result.layout = _;
  return result;
}

uint64_t Page.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Page.cellStyle.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 16);
  *(a1 + 80) = 6;
}

uint64_t Page.reset()()
{
  v1 = *(v0 + 16);
  v3 = MEMORY[0x277D84F90];
  sub_26D191A74(v1, &v3);
  return v3;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D191F7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D191FBC(uint64_t result, int a2, int a3)
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

uint64_t sub_26D19200C(uint64_t a1)
{
  sub_26D192068();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26D192068()
{
  if (!qword_2804DF2C0)
  {
    sub_26D188250(255, &qword_2804DF2B8);
    v0 = sub_26D19B934();
    if (!v1)
    {
      atomic_store(v0, &qword_2804DF2C0);
    }
  }
}

void sub_26D1920D0()
{
  if (!qword_2804DF2C8)
  {
    type metadata accessor for SettingAction();
    v0 = sub_26D19B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2804DF2C8);
    }
  }
}

unint64_t sub_26D192128()
{
  result = qword_2804DF2D0[0];
  if (!qword_2804DF2D0[0])
  {
    sub_26D1920D0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804DF2D0);
  }

  return result;
}

uint64_t Updatable.reset<A>(setting:)(void *a1)
{
  v2 = *a1;
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v3 = qword_280AF3810;
  v9 = a1;
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  v6 = type metadata accessor for Setting();

  v7 = OUTLINED_FUNCTION_1_1();
  sub_26D18FE20(&v9, v3, v6, v7);
}

uint64_t sub_26D19223C(void *a1)
{
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  return sub_26D18F004(a1);
}

uint64_t Updatable.apply(preset:)(void *a1)
{
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  return sub_26D18F004(a1);
}

uint64_t Updatable.toggle(setting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D839B0];
  (*(*(a3 + 8) + 8))(&v9, a1, MEMORY[0x277D839B0], &protocol witness table for Bool, a2);
  v8 = (v9 & 1) == 0;
  return (*(a3 + 16))(a1, &v8, v6, &protocol witness table for Bool, a2, a3);
}

uint64_t sub_26D1923DC()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  OUTLINED_FUNCTION_1_0();
  v4 = *(v3 + 112);
  v5 = *(v1 + 88);
  OUTLINED_FUNCTION_5();
  (*(v6 + 8))(&v0[v7], v5);
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v8 + 120)]);
  OUTLINED_FUNCTION_1_0();
  v10 = *&v0[*(v9 + 128) + 8];

  OUTLINED_FUNCTION_1_0();
  v12 = *&v0[*(v11 + 144)];

  OUTLINED_FUNCTION_1_0();
  v14 = *(v13 + 152);
  v15 = type metadata accessor for Trait();
  OUTLINED_FUNCTION_6_0(v15);
  v17 = *(v16 + 8);

  return v17(&v0[v14]);
}

uint64_t sub_26D1924F4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(a1, &off_287E90438);
}

uint64_t sub_26D192550(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 8;
  if (((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) > 8)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 254;
}

void sub_26D1926B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t static Settings.CompositionalList.useDiffableDataSource.getter()
{
  if (qword_280AF2878 != -1)
  {
    swift_once();
  }
}

uint64_t getEnumTagSinglePayload for SettingAction.PostInstruction(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Settings.CompositionalList(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_26D192AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v7 = sub_26D19B694();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D19B6B4();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  if ([objc_opt_self() isMainThread])
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_26D192EC8(a1);
    }
  }

  else
  {
    sub_26D1893E8();
    v27 = v8;
    v26 = sub_26D19B914();
    (*(v17 + 16))(&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    v20 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v21 = swift_allocObject();
    v22 = v28;
    *(v21 + 2) = a3;
    *(v21 + 3) = v22;
    *(v21 + 4) = a2;
    (*(v17 + 32))(&v21[v20], &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    aBlock[4] = sub_26D193C30;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26D189534;
    aBlock[3] = &block_descriptor_0;
    v23 = _Block_copy(aBlock);

    sub_26D19B6A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26D189494(&qword_280AF3090, MEMORY[0x277D85198]);
    sub_26D1894DC();
    sub_26D189494(&qword_280AF3080, sub_26D1894DC);
    sub_26D19B964();
    v24 = v26;
    MEMORY[0x26D6B4660](0, v16, v11, v23);
    _Block_release(v23);

    (*(v27 + 8))(v11, v7);
    return (*(v29 + 8))(v16, v30);
  }

  return result;
}

uint64_t sub_26D192EC8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[3];
  v5 = *(v3 + 80);
  swift_getFunctionTypeMetadata1();

  v6 = sub_26D19B824();
  v12 = v6;
  if (v6 == sub_26D19B894())
  {
  }

  while (1)
  {
    v7 = sub_26D19B864();
    sub_26D19B834();
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = v4 + 32 + 16 * v6;
    v10 = *v8;
    v9 = *(v8 + 8);

    sub_26D19B8A4();
    v10(a1);

    v6 = v12;
    if (v12 == sub_26D19B894())
    {
    }
  }

  result = sub_26D19B984();
  __break(1u);
  return result;
}

uint64_t sub_26D19300C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26D192EC8(a2);
  }

  return result;
}

uint64_t sub_26D19306C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  return SettingProperty.wrappedValue.setter(v7);
}

uint64_t SettingProperty.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];

  Updatable.save<A>(setting:value:)(v5);

  v6 = *(*(*(v3 + 80) - 8) + 8);

  return v6(a1);
}

void (*SettingProperty.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_1_0();
  *(v5 + 8) = *(v4 + 80);
  OUTLINED_FUNCTION_2();
  *(v6 + 16) = v7;
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v3[4] = __swift_coroFrameAllocStub(v9);
  SettingProperty.wrappedValue.getter();
  return sub_26D1932D0;
}

void sub_26D1932D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    SettingProperty.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    SettingProperty.wrappedValue.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SettingProperty.observe(block:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  v6 = sub_26D19B6C4();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v14 = (v13 - v12);
  sub_26D1893E8();
  *v14 = sub_26D19B914();
  (*(v8 + 104))(v14, *MEMORY[0x277D85200], v6);
  v15 = sub_26D19B6D4();
  result = (*(v8 + 8))(v14, v6);
  if (v15)
  {
    v17 = swift_allocObject();
    v17[2] = *(v5 + 80);
    v17[3] = *(v5 + 88);
    v17[4] = a1;
    v17[5] = a2;
    swift_beginAccess();
    OUTLINED_FUNCTION_2_2();
    swift_getFunctionTypeMetadata1();
    sub_26D19B8B4();

    sub_26D19B884();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void SettingProperty.observe<A>(disposeOn:block:)()
{
  OUTLINED_FUNCTION_4_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = sub_26D19B6C4();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v16 = (v15 - v14);
  sub_26D1893E8();
  *v16 = sub_26D19B914();
  (*(v10 + 104))(v16, *MEMORY[0x277D85200], v8);
  v17 = sub_26D19B6D4();
  (*(v10 + 8))(v16, v8);
  if (v17)
  {
    OUTLINED_FUNCTION_4_3();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = *(v7 + 80);
    v19[3] = v2;
    v19[4] = *(v7 + 88);
    v19[5] = v18;
    v19[6] = v6;
    v19[7] = v4;
    swift_beginAccess();
    OUTLINED_FUNCTION_2_2();
    swift_getFunctionTypeMetadata1();
    sub_26D19B8B4();

    sub_26D19B884();
    swift_endAccess();

    OUTLINED_FUNCTION_3_3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26D193760(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3();
    return swift_unknownObjectRelease();
  }

  return result;
}

void SettingProperty.eagerObserve(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_4_2();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  OUTLINED_FUNCTION_1_0();
  v27 = *(v26 + 80);
  OUTLINED_FUNCTION_2();
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = sub_26D19B6C4();
  OUTLINED_FUNCTION_2();
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4_0();
  v43 = (v42 - v41);
  sub_26D1893E8();
  *v43 = sub_26D19B914();
  (*(v37 + 104))(v43, *MEMORY[0x277D85200], v35);
  v44 = sub_26D19B6D4();
  (*(v37 + 8))(v43, v35);
  if (v44)
  {
    v45 = SettingProperty.observe(block:)(v25, v23);
    SettingProperty.wrappedValue.getter(v45);
    v25(v34);
    (*(v29 + 8))(v34, v27);
    OUTLINED_FUNCTION_3_3();
  }

  else
  {
    __break(1u);
  }
}

void SettingProperty.eagerObserve<A>(disposeOn:block:)()
{
  OUTLINED_FUNCTION_4_2();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  v25 = *(v5 + 80);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = sub_26D19B6C4();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_0();
  v21 = (v20 - v19);
  sub_26D1893E8();
  *v21 = sub_26D19B914();
  (*(v15 + 104))(v21, *MEMORY[0x277D85200], v13);
  v22 = sub_26D19B6D4();
  (*(v15 + 8))(v21, v13);
  if (v22)
  {
    SettingProperty.observe<A>(disposeOn:block:)();
    SettingProperty.wrappedValue.getter(v23);
    v2(v4, v12);
    (*(v7 + 8))(v12, v25);
    OUTLINED_FUNCTION_3_3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t SettingProperty.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SettingProperty.__deallocating_deinit()
{
  SettingProperty.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26D193BCC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_26D193BF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 56);
  return sub_26D193760(a1, *(v1 + 40), *(v1 + 48));
}

uint64_t PresetApplicatorType.set<A>(_:to:)(void *a1)
{
  v2 = *a1;
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v3 = qword_280AF3810;
  v12 = a1;
  v6 = v2 + 88;
  v4 = *(v2 + 88);
  v5 = *(v6 + 8);
  v7 = *(v5 + 32);

  v7(v11, v4, v5);
  v8 = type metadata accessor for Setting();
  v9 = OUTLINED_FUNCTION_1_1();
  sub_26D18C38C(&v12, v11, v3, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t PresetApplicatorType.reset<A>(_:)(void *a1)
{
  v2 = *a1;
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v3 = qword_280AF3810;
  v9 = a1;
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  v6 = type metadata accessor for Setting();

  v7 = OUTLINED_FUNCTION_1_1();
  sub_26D18FE20(&v9, v3, v6, v7);
}

uint64_t If.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;

  a3(v5);
}

uint64_t If.label.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t If.cellStyle.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t If.isEnabled.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t If.isVisible.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1() & 1;
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

uint64_t sub_26D194048(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D194088(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t PresetItem.label.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *PresetItem.__allocating_init(_:label:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *PresetItem.init(_:label:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_26D194188@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 16) = sub_26D19423C;
  *(a1 + 24) = v1;
  *(a1 + 80) = 8;
}

uint64_t sub_26D1941DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (qword_280AF3258 != -1)
  {
    swift_once();
  }

  return sub_26D18F004(v1);
}

void *PresetItem.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t PresetItem.__deallocating_deinit()
{
  PresetItem.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

TeaSettings::FeatureState_optional __swiftcall FeatureState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26D19BA64();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeatureState.rawValue.getter()
{
  v1 = 0x64656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_26D19445C()
{
  sub_26D19B744();
}

uint64_t sub_26D1944F0()
{
  sub_26D19BAC4();
  sub_26D19B744();

  return sub_26D19BAE4();
}

uint64_t sub_26D19459C@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D1945C8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Option();
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

uint64_t sub_26D194678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_26D1946D0(a1, a2, a3);
  return v9;
}

char *sub_26D1946D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  *(v3 + 2) = a1;
  v7 = *(v6 + 104);
  v8 = *(v6 + 80);
  v9 = type metadata accessor for Option();
  (*(*(v9 - 8) + 32))(&v3[v7], a2, v9);
  OUTLINED_FUNCTION_1_0();
  *&v3[*(v10 + 112)] = a3;
  return v3;
}

char *sub_26D1948DC()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  OUTLINED_FUNCTION_1_0();
  v4 = *(v3 + 104);
  v5 = *(v1 + 80);
  v6 = type metadata accessor for Option();
  (*(*(v6 - 8) + 8))(&v0[v4], v6);
  OUTLINED_FUNCTION_1_0();
  v8 = *&v0[*(v7 + 112)];

  return v0;
}

uint64_t sub_26D194984()
{
  sub_26D1948DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D1949F4()
{
  OUTLINED_FUNCTION_1_0();
  v2 = (v0 + *(v1 + 104));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_26D194A38()
{
  OUTLINED_FUNCTION_1_0();
  *v2 = *(v0 + *(v1 + 112));
  *(v2 + 8) = sub_26D194C28;
  *(v2 + 16) = v0;
  *(v2 + 24) = sub_26D194C2C;
  *(v2 + 32) = v0;
  *(v2 + 80) = 1;
  swift_retain_n();
}

uint64_t sub_26D194ABC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (result)
  {
    v3 = a2[2];
    v4 = a2 + *(v2 + 104);
    v5 = *(v2 + 80);
    v6 = *(type metadata accessor for Option() + 28);
    return Updatable.save<A>(setting:value:)(v3);
  }

  return result;
}

uint64_t sub_26D194B48()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + 144);
  swift_beginAccess();
  v3 = *(v1 + v2);

  LOBYTE(v2) = sub_26D186A68(v4);

  return v2 & 1;
}

uint64_t Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6)
{
  v6 = *a5;
  v9 = *a4;
  v8 = v6;
  return sub_26D1952CC(a1, a2, a3, 0, &v9, &v8, a6);
}

uint64_t sub_26D194C74(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_26D19B8D4();
  if (!v26)
  {
    return sub_26D19B854();
  }

  v48 = v26;
  v52 = sub_26D19B9E4();
  v39 = sub_26D19B9F4();
  sub_26D19B9C4();
  result = sub_26D19B8C4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_26D19B8F4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_26D19B9D4();
      result = sub_26D19B8E4();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Item.ResetBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](v1);
  return sub_26D19BAE4();
}

uint64_t sub_26D195130()
{
  sub_26D19BAC4();
  Item.ResetBehavior.hash(into:)();
  return sub_26D19BAE4();
}

uint64_t Item.label.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void sub_26D1951B4(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t sub_26D195208(char a1)
{
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](a1 & 1);
  return sub_26D19BAE4();
}

BOOL sub_26D195250(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_26D1951D0(*a1, *a2);
}

uint64_t sub_26D195264(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_26D195208(*v1);
}

uint64_t sub_26D195274(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_26D1951E0(a1, *v2);
}

uint64_t sub_26D195284(uint64_t a1, uint64_t a2)
{
  sub_26D19BAC4();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_26D1951E0(v7, *v2);
  return sub_26D19BAE4();
}

uint64_t sub_26D1952CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, char *a6, uint64_t a7)
{
  result = swift_allocObject();
  v15 = *a5;
  v16 = *a6;
  *(result + 48) = 1;
  *(result + 56) = 1065353216;
  *(result + 64) = 128;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 66) = a4 & 1;
  *(result + 50) = v15;
  *(result + 49) = v16;
  *(result + 32) = a3;
  *(result + 40) = a7;
  return result;
}

void sub_26D195364(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = type metadata accessor for Trait();
  OUTLINED_FUNCTION_2();
  v86 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = (&v85 - v11);
  OUTLINED_FUNCTION_2();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = v1[2];
  sub_26D18AE44();
  switch(HIBYTE(v94))
  {
    case 1:
      v35 = *(v4 + 88);
      OUTLINED_FUNCTION_3_4();
      v36 = type metadata accessor for Item();
      OUTLINED_FUNCTION_8_0(v36, v36, &protocol witness table for Item<A>, v37, v38, v39, v40, v41, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      v42 = OUTLINED_FUNCTION_0_6();
      v43(v42);
      v44 = OUTLINED_FUNCTION_6_1();
      v45(v44);
      v46 = OUTLINED_FUNCTION_1_4();
      sub_26D18D09C(v46, v47, v48, v49);
      if (!OUTLINED_FUNCTION_4_4())
      {
        goto LABEL_11;
      }

      v50 = v1[5];
      *a1 = v88;
      *(a1 + 8) = v50;
      *(a1 + 16) = sub_26D1975B0;
      *(a1 + 24) = v2;
      *(a1 + 80) = 10;

      return;
    case 2:
      v51 = *(v4 + 88);
      OUTLINED_FUNCTION_3_4();
      v52 = type metadata accessor for Item();
      OUTLINED_FUNCTION_8_0(v52, v52, &protocol witness table for Item<A>, v53, v54, v55, v56, v57, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      v58 = OUTLINED_FUNCTION_0_6();
      v59(v58);
      v60 = OUTLINED_FUNCTION_6_1();
      v61(v60);
      if (!OUTLINED_FUNCTION_4_4())
      {
        goto LABEL_11;
      }

      v62 = v1[5];
      *a1 = v88;
      *(a1 + 8) = v62;
      *(a1 + 16) = sub_26D1976E8;
      *(a1 + 24) = v1;
      *(a1 + 80) = 0;

      return;
    case 3:
      v32 = MEMORY[0x277D83B88];
      v33 = sub_26D198204;
      v34 = sub_26D19822C;
      goto LABEL_16;
    case 4:
      v32 = MEMORY[0x277D84A28];
      v33 = sub_26D198204;
      v34 = sub_26D19822C;
      goto LABEL_16;
    case 5:
      v32 = MEMORY[0x277D83A90];
      v33 = sub_26D197588;
      v34 = sub_26D197590;
      goto LABEL_16;
    case 6:
      v32 = MEMORY[0x277D839F8];
      v33 = sub_26D197570;
      v34 = sub_26D19757C;
LABEL_16:

      sub_26D196708(v33, 0, v34, 0, v32, a1);
      return;
    case 7:
      goto LABEL_11;
    default:
      v17 = *(v4 + 88);
      OUTLINED_FUNCTION_3_4();
      v18 = type metadata accessor for Item();
      OUTLINED_FUNCTION_8_0(v18, v18, &protocol witness table for Item<A>, v19, v20, v21, v22, v23, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      v24 = OUTLINED_FUNCTION_0_6();
      v25(v24);
      v26 = OUTLINED_FUNCTION_6_1();
      v27(v26);
      if (OUTLINED_FUNCTION_4_4())
      {
        v29 = v88;
        v28 = v89;
        v30 = *(*v16 + 152);
        swift_beginAccess();
        (*(v86 + 16))(v12, v16 + v30, v6);
        if (swift_getEnumCaseMultiPayload())
        {
          if (*(v2 + 66))
          {

            v31 = OUTLINED_FUNCTION_5_0();
            (*(v86 + 8))(v12, v6, v31);
          }

          else
          {
            v80 = *(v2 + 65);
            v81 = *(v2 + 40);
            *a1 = v29;
            *(a1 + 8) = v28;
            *(a1 + 16) = v81;
            v82 = (v86 + 8);
            if (v80 == 1)
            {
              *(a1 + 24) = sub_26D1975C0;
              *(a1 + 32) = v2;
              v83 = 3;
            }

            else
            {
              *(a1 + 24) = sub_26D1975B8;
              *(a1 + 32) = v2;
              v83 = 2;
            }

            *(a1 + 80) = v83;
            v84 = *v82;

            v84(v12, v6);
          }
        }

        else
        {

          v88 = *v12;
          v63 = v88;
          type metadata accessor for Option();
          v64 = sub_26D19B8B4();
          OUTLINED_FUNCTION_3_4();
          v65 = type metadata accessor for OptionItem();
          v86 = v65;
          WitnessTable = swift_getWitnessTable();
          v85 = sub_26D194C74(sub_26D1975C8, v2, v64, v65, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v67);
          v88 = v63;
          MEMORY[0x28223BE20](v85);
          *(&v85 - 2) = v5;
          *(&v85 - 1) = v17;
          swift_getWitnessTable();
          v68 = MEMORY[0x277D837D0];
          v69 = sub_26D19B7C4();

          v88 = v69;
          v70 = OUTLINED_FUNCTION_1_4();
          sub_26D18D09C(v70, v71, v68, v72);
          sub_26D197604();
          v73 = sub_26D19B6F4();
          v75 = v74;

          sub_26D18D09C(0, &qword_2804DF360, &type metadata for Group, MEMORY[0x277D84560]);
          v76 = swift_allocObject();
          *(v76 + 16) = xmmword_26D19C050;
          sub_26D197680();
          v77 = v85;
          v78 = sub_26D19BA14();
          *(v76 + 32) = 0;
          *(v76 + 40) = 0;
          *(v76 + 48) = v73;
          *(v76 + 56) = v75;
          *(v76 + 64) = v78;
          v79 = swift_allocObject();
          v79[2] = v5;
          v79[3] = v17;
          v79[4] = v77;
          *a1 = v76;
          *(a1 + 8) = sub_26D1976DC;
          *(a1 + 16) = v79;
          *(a1 + 80) = 7;
        }
      }

      else
      {
LABEL_11:
        OUTLINED_FUNCTION_5_0();
      }

      return;
  }
}

uint64_t sub_26D195AA4@<X0>(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v21 = a3;
  v5 = *a2;
  v6 = *(*a2 + 80);
  v7 = sub_26D19B934();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = *(v6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v22[3] = MEMORY[0x277D839B0];
  LOBYTE(v22[0]) = a1;
  (*(*(v5 + 88) + 24))(v22, v6, *(v5 + 88));
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v6);
    (*(v14 + 32))(v17, v12, v6);
    v18 = a2[2];
    type metadata accessor for Item();
    Updatable.save<A>(setting:value:)(v18);
    result = (*(v14 + 8))(v17, v6);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v6);
    result = (*(v8 + 8))(v12, v7);
  }

  *v21 = *(a2 + 50);
  return result;
}

uint64_t sub_26D195D38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = *(*a2 + 80);
  v8 = type metadata accessor for Option();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = *(v6 + 88);
  type metadata accessor for OptionItem();
  v14 = a2[2];
  (*(v9 + 16))(v12, a1, v8);
  *a3 = sub_26D194678(v14, v12, a2[5]);
}

uint64_t sub_26D195E8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Option() + 32));
  result = *v3;
  if (v3[1])
  {
    MEMORY[0x26D6B4490](result);
    result = 547520738;
    v5 = 0xA400000000000000;
  }

  else
  {
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_26D195F08@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for OptionItem();
  sub_26D19B8B4();
  swift_getWitnessTable();
  result = sub_26D19B7D4();
  if (v5)
  {
    v4 = &off_287E90FA8;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[3] = v2;
  a1[4] = v4;
  return result;
}

uint64_t sub_26D195FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 80);
  v8 = sub_26D19B934();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v23 = *(v7 - 8);
  v14 = *(v23 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  v24[3] = MEMORY[0x277D837D0];
  v24[0] = a1;
  v24[1] = a2;
  v17 = *(v6 + 88);
  v18 = *(v17 + 24);

  v18(v24, v7, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v7);
    v19 = v23;
    (*(v23 + 32))(v16, v12, v7);
    v20 = a3[2];
    type metadata accessor for Item();
    Updatable.save<A>(setting:value:)(v20);
    return (*(v19 + 8))(v16, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v7);
    return (*(v22 + 8))(v12, v8);
  }
}

uint64_t sub_26D196268(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 80);
  v22 = sub_26D19B934();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v22);
  v12 = &v21 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v21 - v15;
  v23[3] = MEMORY[0x277D837D0];
  v23[0] = a1;
  v23[1] = a2;
  v17 = *(v6 + 88);
  v18 = *(v17 + 24);

  v18(v23, v7, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
  {
    return (*(v8 + 8))(v12, v22);
  }

  (*(v13 + 32))(v16, v12, v7);
  v20 = a3[2];
  type metadata accessor for Item();
  Updatable.save<A>(setting:value:)(v20);
  return (*(v13 + 8))(v16, v7);
}

uint64_t sub_26D1964A8(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 80);
  v21 = sub_26D19B934();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v21);
  v10 = &v20 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v20 - v13;
  sub_26D18D09C(0, &qword_280AF2870, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v22[3] = v15;
  v22[0] = a1;
  v16 = *(v4 + 88);
  v17 = *(v16 + 24);

  v17(v22, v5, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) == 1)
  {
    return (*(v6 + 8))(v10, v21);
  }

  (*(v11 + 32))(v14, v10, v5);
  v19 = a2[2];
  type metadata accessor for Item();
  Updatable.save<A>(setting:value:)(v19);
  return (*(v11 + 8))(v14, v5);
}

void *sub_26D196708@<X0>(float (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v151 = a4;
  v150 = a3;
  v148 = a2;
  v149 = a1;
  v163 = a6;
  v8 = *v6;
  v9 = *(*v6 + 80);
  v10 = type metadata accessor for Trait();
  v158 = *(v10 - 8);
  v159 = v10;
  v11 = *(v158 + 64);
  MEMORY[0x28223BE20](v10);
  v157 = &v139 - v12;
  v13 = sub_26D19B934();
  v161 = *(v13 - 8);
  v162 = v13;
  v14 = *(v161 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v144 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v147 = &v139 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v139 - v20;
  v22 = *(v9 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v153 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v154 = &v139 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v139 - v29;
  v156 = *(a5 - 8);
  v31 = *(v156 + 64);
  v32 = MEMORY[0x28223BE20](v28);
  v143 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v145 = &v139 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v139 - v36;
  v38 = v6[2];
  v39 = *(v8 + 88);
  v40 = type metadata accessor for Item();
  v160 = v6;
  Configurable.setting<A>(_:)(v38, v40, &protocol witness table for Item<A>, v41, v42, v43, v44, v45, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  v46 = *(v39 + 32);
  v155 = v39;
  v146 = v46;
  v46(v164, v9, v39);
  v152 = v22;
  v48 = (v22 + 8);
  v47 = *(v22 + 8);
  v49 = v30;
  v50 = v9;
  v47(v49, v9);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v21, 1, 1, a5);
    result = (*(v161 + 8))(v21, v162);
    goto LABEL_10;
  }

  v142 = v47;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, a5);
  v51 = v156;
  v52 = v21;
  v53 = *(v156 + 32);
  v141 = v156 + 32;
  v53(v37, v52, a5);
  v54 = *(*v38 + 152);
  swift_beginAccess();
  v55 = v157;
  (*(v158 + 16))(v157, v38 + v54, v159);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = v51;
  v58 = v37;
  if (!EnumCaseMultiPayload)
  {
    v162 = &v139;
    v164[0] = *v55;
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    v66 = v160;
    *(&v139 - 2) = a5;
    *(&v139 - 1) = v66;
    v159 = v67;
    v68 = v50;
    type metadata accessor for Option();
    v69 = sub_26D19B8B4();
    v70 = v155;
    v71 = type metadata accessor for OptionItem();
    WitnessTable = swift_getWitnessTable();
    v74 = sub_26D194C74(sub_26D1981A8, (&v139 - 4), v69, v71, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v73);

    sub_26D18D09C(0, &qword_2804DF360, &type metadata for Group, MEMORY[0x277D84560]);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_26D19C050;
    sub_26D197680();
    v76 = sub_26D19BA14();
    *(v75 + 32) = 0u;
    *(v75 + 48) = 0u;
    *(v75 + 64) = v76;
    (*(v57 + 8))(v159, a5);
    result = swift_allocObject();
    result[2] = v68;
    result[3] = a5;
    result[4] = v70;
    result[5] = v74;
    v77 = v163;
    *v163 = v75;
    v77[1] = sub_26D1981C8;
    v77[2] = result;
    *(v77 + 80) = 7;
    return result;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v78 = v160;
    if (*(v160 + 66))
    {
      result = (*(v51 + 8))(v37, a5);
      goto LABEL_10;
    }

    v109 = v160[7];
    v110 = *(v160 + 64);
    v111 = v163;
    if (v110 < 0)
    {
      v121 = v58;
      v122 = v149();
      (*(v57 + 8))(v121, a5);
      v123 = v78[5];
      v124 = swift_allocObject();
      v125 = v150;
      v124[2] = a5;
      v124[3] = v125;
      v124[4] = v151;
      v124[5] = v78;
      *v111 = v122;
      *(v111 + 1) = v109;
      v111[1] = 0x7F7FFFFF00000000;
      v111[2] = v123;
      v111[3] = sub_26D198208;
      v111[4] = v124;
      v118 = 4;
    }

    else
    {
      v112 = v58;
      v113 = v149();
      (*(v57 + 8))(v112, a5);
      v114 = v110 & 1;
      if (v110)
      {
        v109 = 0;
      }

      v115 = v78[5];
      v116 = swift_allocObject();
      v117 = v150;
      v116[2] = a5;
      v116[3] = v117;
      v116[4] = v151;
      v116[5] = v78;
      LOBYTE(v164[0]) = v114;
      *v111 = v113;
      v111[1] = v109;
      *(v111 + 16) = v114;
      *(v111 + 20) = 0x7F7FFFFF00000000;
      v111[4] = v115;
      v111[5] = sub_26D198208;
      v111[6] = v116;
      v118 = 5;
    }

    *(v111 + 80) = v118;

    goto LABEL_25;
  }

  v140 = v53;
  v158 = a5;
  v159 = v37;
  v59 = *(swift_getTupleTypeMetadata2() + 48);
  v60 = v50;
  v61 = *(v152 + 32);
  v62 = v154;
  v61(v154, v55, v60);
  v63 = v153;
  v61(v153, (v55 + v59), v60);
  if (*(v160 + 66))
  {
    v64 = v142;
    v142(v63, v60);
    v64(v62, v60);
    result = (*(v51 + 8))(v159, v158);
LABEL_10:
    v79 = 0uLL;
    v80 = v163;
LABEL_11:
    *(v80 + 3) = v79;
    *(v80 + 4) = v79;
    *(v80 + 1) = v79;
    *(v80 + 2) = v79;
    *v80 = v79;
    *(v80 + 80) = 12;
    return result;
  }

  v81 = v155;
  v82 = v146;
  v146(v164, v60, v155);
  v83 = v147;
  v84 = v158;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v119 = v83;
    v120 = v142;
    v142(v63, v60);
    v120(v62, v60);
    (*(v57 + 8))(v159, v84);
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v84);
    result = (*(v161 + 8))(v119, v162);
LABEL_27:
    v80 = v163;
    v79 = 0uLL;
    goto LABEL_11;
  }

  v157 = v48;
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v84);
  v85 = v145;
  v140(v145, v83, v84);
  v82(v164, v60, v81);
  v86 = v144;
  v87 = swift_dynamicCast();
  v88 = v63;
  v90 = v161;
  v89 = v162;
  if ((v87 & 1) == 0)
  {
    v126 = *(v57 + 8);
    v126(v85, v84);
    v127 = v142;
    v142(v88, v60);
    v127(v154, v60);
    v126(v159, v84);
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v84);
    result = (*(v90 + 8))(v86, v89);
    goto LABEL_27;
  }

  v161 = v60;
  v91 = v159;
  v92 = v57;
  __swift_storeEnumTagSinglePayload(v86, 0, 1, v84);
  v93 = v143;
  v140(v143, v86, v84);
  v94 = v160;
  v162 = v160[7];
  v95 = *(v160 + 64);
  v96 = v163;
  if ((v95 & 0x80000000) == 0)
  {
    v97 = v149;
    v98 = (v149)(v91);
    LODWORD(v155) = v95 & 1;
    v99 = v162;
    if (v95)
    {
      v99 = 0;
    }

    v162 = v99;
    v100 = v145;
    v101 = (v97)(v145);
    v102 = (v97)(v93);
    v103 = *(v92 + 8);
    v103(v93, v84);
    v103(v100, v84);
    v104 = v161;
    v105 = v142;
    v142(v153, v161);
    v105(v154, v104);
    v103(v91, v84);
    v106 = v94[5];
    v107 = swift_allocObject();
    v108 = v150;
    v107[2] = v84;
    v107[3] = v108;
    v107[4] = v151;
    v107[5] = v94;
    LOBYTE(v108) = v155;
    LOBYTE(v164[0]) = v155;
    *v96 = v98;
    v96[1] = v162;
    *(v96 + 16) = v108;
    *(v96 + 5) = v101;
    *(v96 + 6) = v102;
    v96[4] = v106;
    v96[5] = sub_26D198208;
    v96[6] = v107;
    *(v96 + 80) = 5;

LABEL_25:
  }

  v128 = v149;
  v129 = (v149)(v91);
  v130 = v145;
  v131 = (v128)(v145);
  v132 = (v128)(v93);
  v133 = *(v57 + 8);
  v133(v93, v84);
  v133(v130, v84);
  v134 = v161;
  v135 = v142;
  v142(v153, v161);
  v135(v154, v134);
  v133(v91, v84);
  v136 = v94[5];
  v137 = swift_allocObject();
  v138 = v150;
  v137[2] = v84;
  v137[3] = v138;
  v137[4] = v151;
  v137[5] = v94;
  *v96 = v129;
  *(v96 + 1) = v162;
  *(v96 + 2) = v131;
  *(v96 + 3) = v132;
  v96[2] = v136;
  v96[3] = sub_26D198188;
  v96[4] = v137;
  *(v96 + 80) = 4;
}

void sub_26D197528(void *a1@<X8>, float a2@<S0>)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 < 9.2234e18)
  {
    *a1 = a2;
    return;
  }

LABEL_7:
  __break(1u);
}

double sub_26D19757C@<D0>(double *a1@<X8>, float a2@<S0>)
{
  result = a2;
  *a1 = result;
  return result;
}

uint64_t sub_26D1975E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_26D195E8C(a1, a2);
}

unint64_t sub_26D197604()
{
  result = qword_2804DF358;
  if (!qword_2804DF358)
  {
    sub_26D18D09C(255, &qword_280AF2870, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DF358);
  }

  return result;
}

unint64_t sub_26D197680()
{
  result = qword_2804DF2A0;
  if (!qword_2804DF2A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2804DF2A0);
  }

  return result;
}

uint64_t sub_26D1976DC@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_26D195F08(a1);
}

void *Item.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t Item.__deallocating_deinit()
{
  Item.deinit();

  return MEMORY[0x2821FE8D8](v0, 67, 7);
}

uint64_t Item.reset()()
{
  v1 = *v0;
  if (*(v0 + 49))
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = v0[2];
  type metadata accessor for Item();
  Updatable.reset<A>(setting:)(v5);
  v6 = v0[5];
}

uint64_t Item<>.init(_:label:resetBehavior:type:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5)
{
  v5 = *a5;
  v6 = *(a5 + 8);
  v9 = *a4;
  v8 = 0;
  result = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)(a1, a2, a3, &v8, &v9, MEMORY[0x277D84F90]);
  *(result + 56) = v5;
  *(result + 64) = v6;
  return result;
}

uint64_t Item<>.init(_:label:resetBehavior:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v6 = *a4;
  return sub_26D1952CC(a1, a2, a3, 1, &v6 + 1, &v6, a5);
}

{
  v9 = *a4;
  sub_26D19796C();
  swift_allocObject();
  return sub_26D191110(a1, a2, a3, 0, 0, v9, a5);
}

void sub_26D19796C()
{
  if (!qword_2804DF368[0])
  {
    v0 = type metadata accessor for Item();
    if (!v1)
    {
      atomic_store(v0, qword_2804DF368);
    }
  }
}

uint64_t Item<>.init(_:label:secure:changeBehavior:resetBehavior:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v12 = *a6;
  sub_26D19796C();
  swift_allocObject();
  result = sub_26D191110(a1, a2, a3, 0, 0, v12, a7);
  *(result + 65) = a4;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26D197B54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 9))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26D197B9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_26D197C38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D197C58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26D197C88(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D197CA4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

_BYTE *sub_26D197CDC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26D197DDC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for OptionItem();
  sub_26D19B8B4();
  swift_getWitnessTable();
  result = sub_26D19B7D4();
  if (v5)
  {
    v4 = &off_287E90FA8;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[3] = v2;
  a1[4] = v4;
  return result;
}

uint64_t sub_26D197EAC(void (*a1)(float), uint64_t a2, void *a3, uint64_t a4, float a5)
{
  v28[1] = a2;
  v9 = *a3;
  v10 = *(*a3 + 80);
  v11 = sub_26D19B934();
  OUTLINED_FUNCTION_2();
  v28[0] = v12;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = v28 - v24;
  v29[3] = a4;
  __swift_allocate_boxed_opaque_existential_0(v29);
  a1(a5);
  (*(*(v9 + 88) + 24))(v29, v10, *(v9 + 88));
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v10);
    (*(v20 + 32))(v25, v18, v10);
    v26 = a3[2];
    type metadata accessor for Item();
    Updatable.save<A>(setting:value:)(v26);
    return (*(v20 + 8))(v25, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v10);
    return (*(v28[0] + 8))(v18, v11);
  }
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D1981C8@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return sub_26D197DDC(a1);
}

uint64_t sub_26D198240()
{
  type metadata accessor for SettingAction();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  v0[2] = 0x7070615F6C6C696BLL;
  v0[3] = 0xE800000000000000;
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = v1;
  sub_26D198620();

  qword_2804DF5F0 = v0;
  return result;
}

void *SettingAction.__allocating_init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  result[2] = a1;
  result[3] = a2;
  result[4] = v9;
  result[5] = a3;
  result[6] = a4;
  return result;
}

uint64_t static SettingActions.restart.getter()
{
  if (qword_2804DF270 != -1)
  {
    swift_once();
  }
}

uint64_t SettingAction.PostInstruction.hashValue.getter()
{
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](0);
  return sub_26D19BAE4();
}

uint64_t sub_26D198424()
{
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](0);
  return sub_26D19BAE4();
}

uint64_t SettingAction.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_26D198494(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26D1984F8(v4);
}

uint64_t sub_26D1984C0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_26D1984F8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *SettingAction.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84F90];
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = v5;
  v4[5] = a3;
  v4[6] = a4;
  return v4;
}

uint64_t sub_26D1985B0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    if (qword_280AF3258 != -1)
    {
      swift_once();
    }

    return v1(qword_280AF3810, &off_287E90478);
  }

  return result;
}

uint64_t sub_26D198620()
{
  swift_beginAccess();
  sub_26D1987DC();
  v1 = *(*(v0 + 32) + 16);
  sub_26D198828(v1);
  v2 = *(v0 + 32);
  *(v2 + 16) = v1 + 1;
  *(v0 + 32) = v2;
  swift_endAccess();
}

uint64_t sub_26D1986A0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];
  v4 = v0[6];

  return sub_26D198868(v3);
}

void *SettingAction.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];
  sub_26D198868(v0[5]);
  return v0;
}

uint64_t SettingAction.__deallocating_deinit()
{
  SettingAction.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t static SettingAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_26D19BA94();
  }
}