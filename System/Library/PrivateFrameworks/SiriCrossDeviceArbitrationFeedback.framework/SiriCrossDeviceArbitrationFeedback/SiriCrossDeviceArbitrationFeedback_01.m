id Advertisement.asCDAAdvertisement.getter(uint64_t a1, void *a2)
{
  result = [objc_allocWithZone(MEMORY[0x277D56C98]) init];
  if (result)
  {
    v4 = result;
    v5 = a2[3];
    v6 = OUTLINED_FUNCTION_5();
    v8 = v7(v6);
    OUTLINED_FUNCTION_21_1(v8, sel_setConfidenceScore_);
    v9 = a2[4];
    v10 = OUTLINED_FUNCTION_5();
    v11(v10);
    [v4 setDeviceClass_];
    v12 = a2[5];
    v13 = OUTLINED_FUNCTION_5();
    v15 = v14(v13);
    OUTLINED_FUNCTION_21_1(v15, sel_setDeviceGroup_);
    v16 = a2[6];
    v17 = OUTLINED_FUNCTION_5();
    v19 = v18(v17);
    OUTLINED_FUNCTION_21_1(v19, sel_setGoodnessScore_);
    v20 = a2[7];
    v21 = OUTLINED_FUNCTION_5();
    [v4 setAudioHash_];
    v23 = a2[8];
    v24 = OUTLINED_FUNCTION_5();
    v25(v24);
    [v4 setProductType_];
    v26 = a2[9];
    v27 = OUTLINED_FUNCTION_5();
    v29 = v28(v27);
    OUTLINED_FUNCTION_21_1(v29, sel_setTieBreaker_);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266A7B2A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
  if (v4 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361;
    if (v6 || (sub_266ABE1C4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7247656369766564 && a2 == 0xEB0000000070756FLL;
      if (v7 || (sub_266ABE1C4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7373656E646F6F67 && a2 == 0xED000065726F6353;
        if (v8 || (sub_266ABE1C4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1752392040 && a2 == 0xE400000000000000;
          if (v9 || (sub_266ABE1C4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079;
            if (v10 || (sub_266ABE1C4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6B61657242656974 && a2 == 0xEA00000000007265)
            {

              return 6;
            }

            else
            {
              v12 = sub_266ABE1C4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_266A7B500(unsigned __int8 a1)
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](a1);
  return sub_266ABE2A4();
}

uint64_t sub_266A7B55C()
{
  v1 = *v0;
  sub_266ABE244();
  MEMORY[0x26D5E8B00](v1);
  return sub_266ABE2A4();
}

uint64_t sub_266A7B5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A7B2A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A7B5E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A7B4F8();
  *a1 = result;
  return result;
}

uint64_t sub_266A7B610(uint64_t a1)
{
  v2 = sub_266A71374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A7B64C(uint64_t a1)
{
  v2 = sub_266A71374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdvertisementModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D28, &qword_266AC1008);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A71374();
  sub_266ABE2B4();
  if (!v2)
  {
    v33 = 0;
    OUTLINED_FUNCTION_4_1();
    v14 = sub_266ABE094();
    v31 = 1;
    sub_266A7BB44();
    OUTLINED_FUNCTION_20_0();
    v15 = v32;
    v30 = 2;
    OUTLINED_FUNCTION_4_1();
    v23 = sub_266ABE094();
    v24 = v15;
    v29 = 3;
    OUTLINED_FUNCTION_4_1();
    LOBYTE(v15) = sub_266ABE094();
    v28 = 4;
    OUTLINED_FUNCTION_4_1();
    v22 = sub_266ABE0A4();
    v26 = 5;
    sub_266A7BB98();
    OUTLINED_FUNCTION_20_0();
    v21 = v27;
    v25 = 6;
    OUTLINED_FUNCTION_4_1();
    v17 = sub_266ABE094();
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    v18 = v23;
    *(a2 + 1) = v24;
    *(a2 + 2) = v18;
    *(a2 + 3) = v15;
    v19 = v21;
    *(a2 + 4) = v22;
    *(a2 + 6) = v19;
    *(a2 + 7) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AdvertisementModel.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[6];
  v3 = *v0;
  OUTLINED_FUNCTION_7_0();
  sub_266ABE264();
  MEMORY[0x26D5E8B00](v1);
  sub_266ABE264();
  sub_266ABE264();
  sub_266ABE274();
  MEMORY[0x26D5E8B00](v2);
  return sub_266ABE264();
}

uint64_t AdvertisementModel.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[6];
  v3 = *v0;
  OUTLINED_FUNCTION_7_0();
  sub_266ABE244();
  sub_266ABE264();
  MEMORY[0x26D5E8B00](v1);
  sub_266ABE264();
  sub_266ABE264();
  sub_266ABE274();
  MEMORY[0x26D5E8B00](v2);
  sub_266ABE264();
  return sub_266ABE2A4();
}

uint64_t sub_266A7BA80()
{
  v1 = v0[1];
  v2 = v0[6];
  v3 = *v0;
  OUTLINED_FUNCTION_7_0();
  sub_266ABE244();
  sub_266ABE264();
  MEMORY[0x26D5E8B00](v1);
  sub_266ABE264();
  sub_266ABE264();
  sub_266ABE274();
  MEMORY[0x26D5E8B00](v2);
  sub_266ABE264();
  return sub_266ABE2A4();
}

uint64_t sub_266A7BB30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_266A6A5B4(a1, a2);
  }

  return a1;
}

unint64_t sub_266A7BB44()
{
  result = qword_2800B1D30;
  if (!qword_2800B1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D30);
  }

  return result;
}

unint64_t sub_266A7BB98()
{
  result = qword_2800B1D38;
  if (!qword_2800B1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D38);
  }

  return result;
}

unint64_t sub_266A7BBEC(uint64_t a1)
{
  result = sub_266A7BC14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_266A7BC14()
{
  result = qword_2800B1D40;
  if (!qword_2800B1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D40);
  }

  return result;
}

unint64_t sub_266A7BC6C()
{
  result = qword_2800B1D48;
  if (!qword_2800B1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D48);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AdvertisementModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 6) = a2 + 8;
    }
  }

  return result;
}

unint64_t sub_266A7BDC4()
{
  result = qword_2800B1D50;
  if (!qword_2800B1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D50);
  }

  return result;
}

unint64_t sub_266A7BE1C()
{
  result = qword_2800B1D58;
  if (!qword_2800B1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D58);
  }

  return result;
}

unint64_t sub_266A7BE74()
{
  result = qword_2800B1D60;
  if (!qword_2800B1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D60);
  }

  return result;
}

uint64_t sub_266A7BEC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v10 = *MEMORY[0x277D85DE8];
  a4(0);
  sub_266A6CF84(a5, a6);
  result = sub_266ABD924();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Array<A>.collate()(uint64_t a1)
{
  sub_266A7C080();
  sub_266A7C4F8();
  v4 = v3;
  v5 = *v1;
  v6 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
  v10 = sub_266ABDF14();
  sub_266A7F950(v4);
  sub_266A7CB98(v10);

  sub_266A7D1C0();
  v8 = v7;

  return v8;
}

void sub_266A7C080()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_2_1();
  v47 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
  v58 = sub_266ABD9B4();
  v50 = v0;
  v54 = *v0;
  v51 = v2;

  OUTLINED_FUNCTION_0_0();
  swift_getWitnessTable();
  sub_266ABDBC4();

  v53[0] = v54;
  swift_getWitnessTable();
  sub_266ABDD24();
  v13 = v54;
  v12 = v55;
  if (v54 == v55)
  {
LABEL_20:

    OUTLINED_FUNCTION_30();
  }

  else
  {
    if (v55 >= v54)
    {
      v49 = *(v2 + 48);
      v46 = v55;
      while (v13 < v12)
      {
        OUTLINED_FUNCTION_24_0();
        v14 = OUTLINED_FUNCTION_16_2();
        v16 = v15(v14);
        OUTLINED_FUNCTION_17_1();
        v48 = *v17;
        (*v17)(v11, v4);
        v18 = *(v16 + 16);

        if (v18)
        {
          v19 = 0;
          v20 = 0;
          while (1)
          {
            OUTLINED_FUNCTION_24_0();
            v21 = OUTLINED_FUNCTION_16_2();
            v23 = v22(v21);
            OUTLINED_FUNCTION_17_1();
            v48();
            if (v20 >= *(v23 + 16))
            {
              break;
            }

            sub_266A6FFD8(v23 + v19 + 32, &v54);

            v24 = v57;
            __swift_project_boxed_opaque_existential_1(&v54, v56);
            v25 = *(v24 + 168);
            v26 = OUTLINED_FUNCTION_29_0();
            v27(v26);
            if (v28)
            {
              v29 = v58;
              if (*(v58 + 16))
              {
                v30 = sub_266AB0B30();
                v32 = v31;

                if (v32)
                {
                  sub_266A6FFD8(*(v29 + 56) + 40 * v30, v52);
                  sub_266A6DBC4(v52, v53);
                  sub_266ABDC64();
                  v33 = *v50;
                  sub_266A8135C(v13, *v50);
                  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
                  v35 = v33 & 0xFFFFFFFFFFFFFF8;
                  if ((isClassOrObjCExistentialType & 1) == 0)
                  {
                    v35 = v33;
                  }

                  v36 = v35 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v13;
                  v37 = (*(v51 + 64))(v52, v4);
                  v39 = v38;
                  v40 = *v38;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *v39 = v40;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_266AB1064(v40);
                    v40 = v45;
                    *v39 = v45;
                  }

                  if (v20 >= *(v40 + 16))
                  {
                    goto LABEL_22;
                  }

                  v42 = v40 + v19;
                  v43 = *(v40 + v19 + 56);
                  v44 = *(v42 + 64);
                  __swift_mutable_project_boxed_opaque_existential_1(v42 + 32, v43);
                  Device.saturate(device:)(v53, v43, v44);
                  v37(v52, 0);
                  __swift_destroy_boxed_opaque_existential_1Tm(v53);
                }
              }

              else
              {
              }
            }

            ++v20;
            __swift_destroy_boxed_opaque_existential_1Tm(&v54);
            v19 += 40;
            if (v18 == v20)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
          break;
        }

LABEL_19:
        ++v13;
        v12 = v46;
        if (v13 == v46)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_266A7C4F8()
{
  OUTLINED_FUNCTION_31();
  v74 = v1;
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8) - 8) + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_1(v6, v73);
  v7 = type metadata accessor for ParticipantModel();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v86 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_33_1();
  v87 = v16;
  v75 = v3;
  v17 = *(v3 + 16);
  OUTLINED_FUNCTION_2_1();
  v19 = v18;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_33_1();
  v80 = v26;
  sub_266A81434();
  v27 = v7;
  v104[0] = sub_266ABD9B4();
  v28 = *v0;

  v29 = sub_266ABDC34();
  v103 = v29;
  OUTLINED_FUNCTION_32_0();
  if (v29 == sub_266ABDC94())
  {
    goto LABEL_2;
  }

  v79 = (v19 + 16);
  v78 = (v19 + 32);
  v76 = v28;
  v83 = v17;
  v84 = v7;
  v85 = v14;
  v77 = v19;
  v82 = v25;
  while (1)
  {
    OUTLINED_FUNCTION_32_0();
    v33 = sub_266ABDC84();
    sub_266ABDC54();
    if (v33)
    {
      (*(v77 + 16))(v25, v28 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v29, v17);
    }

    else
    {
      v72 = sub_266ABDEC4();
      if (v73 != 8)
      {
        goto LABEL_27;
      }

      v102[0] = v72;
      (*v79)(v25, v102, v17);
      swift_unknownObjectRelease();
    }

    (*v78)(v80, v25, v17);
    sub_266ABDCB4();
    v34 = v81;
    v35 = v27;
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_storeEnumTagSinglePayload(v34, 1, 1, v27);
      sub_266A798F4(v34, &qword_2800B1CB0, &qword_266AC0FB8);
      goto LABEL_21;
    }

    __swift_storeEnumTagSinglePayload(v34, 0, 1, v27);
    v36 = v87;
    sub_266A7977C(v34, v87);
    v37 = *(v36 + *(v27 + 48));
    v38 = *(v37 + 16);
    v39 = v37 + 32;
    if (v38)
    {
      break;
    }

LABEL_19:
    v27 = v35;
    sub_266A6A63C(v87);
LABEL_21:
    v28 = v76;
    OUTLINED_FUNCTION_32_0();
    v71 = sub_266ABDC94();
    v29 = v103;
    if (v103 == v71)
    {
LABEL_2:

      v102[0] = v28;
      MEMORY[0x28223BE20](v30);
      v31 = v74;
      *(&v73 - 4) = v17;
      *(&v73 - 3) = v31;
      *(&v73 - 2) = v104;

      OUTLINED_FUNCTION_0_0();
      swift_getWitnessTable();
      sub_266ABDBC4();

      v32 = v104[0];

      sub_266AAC7F0(MEMORY[0x277D84F90], v32, v104);
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_30();
      return;
    }
  }

  while (1)
  {
    sub_266A6FFD8(v39, v102);
    v40 = OUTLINED_FUNCTION_29_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
    if (!swift_dynamicCast())
    {
      goto LABEL_18;
    }

    v93 = v38;
    v94 = v39;
    v42 = v95;
    v43 = v96;
    v44 = v97;
    v45 = v14;
    v46 = v98;
    v47 = v99;
    v48 = v100;
    v49 = v101;
    sub_266A6E9E4(v87, v45);
    v50 = v104[0];
    swift_isUniquelyReferenced_nonNull_native();
    v102[0] = v50;
    v91 = v43;
    v92 = v42;
    v89 = v46;
    v90 = v44;
    v88 = v47;
    v51 = v42 | (v43 << 8) | (v44 << 16) | (v46 << 24) | (v47 << 32);
    v52 = v48;
    v53 = v51 | (v48 << 48) | (v49 << 56);
    sub_266AB0C10(v53);
    OUTLINED_FUNCTION_23_0();
    if (__OFADD__(v56, v57))
    {
      break;
    }

    v14 = v54;
    v58 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF8, &unk_266AC1320);
    if (sub_266ABDF34())
    {
      v59 = sub_266AB0C10(v53);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_28;
      }

      v14 = v59;
    }

    v61 = v102[0];
    v39 = v94;
    if (v58)
    {
      v62 = OUTLINED_FUNCTION_20_1();
      sub_266A81518(v62, v63);
    }

    else
    {
      *(v102[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v64 = *(v61 + 48) + 8 * v14;
      v65 = v91;
      *v64 = v92;
      *(v64 + 1) = v65;
      *(v64 + 2) = v90;
      *(v64 + 3) = v89;
      *(v64 + 4) = v88;
      *(v64 + 6) = v52;
      *(v64 + 7) = v49;
      v66 = OUTLINED_FUNCTION_20_1();
      sub_266A7977C(v66, v67);
      v68 = *(v61 + 16);
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_26;
      }

      *(v61 + 16) = v70;
    }

    v104[0] = v61;
    v17 = v83;
    v35 = v84;
    v25 = v82;
    v38 = v93;
LABEL_18:
    v39 += 40;
    if (!--v38)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_266ABE1F4();
  __break(1u);
}

uint64_t sub_266A7CB98(uint64_t a1)
{
  v68 = sub_266ABD7A4();
  v2 = OUTLINED_FUNCTION_1_0(v68);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_2();
  v67 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF0, &qword_266AC6360);
  v12 = swift_allocObject();
  v62 = xmmword_266AC0EB0;
  *(v12 + 16) = xmmword_266AC0EB0;
  v63 = v12;
  *(v12 + 32) = MEMORY[0x277D84F90];
  *&v77 = a1;

  sub_266AAC928(&v77);
  v13 = v77;
  v14 = *(v77 + 16);
  v65 = v77;
  if (v14)
  {
    OUTLINED_FUNCTION_19_1();
    sub_266A6FFD8(v15 + 32, &v77);
    OUTLINED_FUNCTION_19_1();
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
  }

  v64 = v13 + 32;
  v17 = &unk_266AC1310;
  v66 = (v4 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_37();
    if (!*(&v75 + 1))
    {

      sub_266A798F4(&v74, &qword_2800B1C48, &unk_266AC1310);
      sub_266A798F4(&v77, &qword_2800B1C48, &unk_266AC1310);
      return v63;
    }

    sub_266A798F4(&v74, &qword_2800B1C48, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
    v18 = swift_allocObject();
    *(v18 + 16) = v62;
    OUTLINED_FUNCTION_37();
    if (!*(&v75 + 1))
    {
      break;
    }

    sub_266A6DBC4(&v74, v18 + 32);
    if (v16 == v14)
    {
      v76 = 0;
      v16 = v14;
      v74 = 0u;
      v75 = 0u;
      goto LABEL_12;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

    OUTLINED_FUNCTION_19_1();
    if (v16 >= *(v19 + 16))
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_17_1();
    sub_266A6FFD8(v20 + 40 * v16++, &v74);
LABEL_12:
    while (1)
    {
      OUTLINED_FUNCTION_34_0();
      v21 = *(&v72 + 1);
      sub_266A798F4(&v71, &qword_2800B1C48, v17);
      if (!v21)
      {
        break;
      }

      v22 = *(&v78 + 1);
      if (!*(&v78 + 1))
      {
        goto LABEL_34;
      }

      v70 = v18;
      v23 = v79;
      __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
      OUTLINED_FUNCTION_2_1();
      v25 = v24;
      v27 = *(v26 + 64);
      MEMORY[0x28223BE20](v28);
      OUTLINED_FUNCTION_2();
      v31 = v30 - v29;
      (*(v25 + 16))(v30 - v29);
      (*(v23 + 88))(v22, v23);
      (*(v25 + 8))(v31, v22);
      v32 = *(&v75 + 1);
      if (!*(&v75 + 1))
      {
        goto LABEL_33;
      }

      v33 = v76;
      __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
      v69 = &v62;
      OUTLINED_FUNCTION_2_1();
      v35 = v34;
      v37 = *(v36 + 64);
      MEMORY[0x28223BE20](v38);
      OUTLINED_FUNCTION_2();
      v41 = v40 - v39;
      (*(v35 + 16))(v40 - v39);
      v42 = v17;
      v43 = v16;
      v44 = v14;
      v45 = v11;
      v46 = v67;
      (*(v33 + 88))(v32, v33);
      (*(v35 + 8))(v41, v32);
      sub_266ABD704();
      v48 = v47;
      v49 = *v66;
      v50 = v46;
      v11 = v45;
      v14 = v44;
      v16 = v43;
      v17 = v42;
      v51 = v68;
      (*v66)(v50, v68);
      v49(v11, v51);
      v18 = v70;
      if (v48 > 2.0)
      {
        break;
      }

      OUTLINED_FUNCTION_34_0();
      if (!*(&v72 + 1))
      {
        goto LABEL_35;
      }

      v53 = *(v18 + 16);
      v52 = *(v18 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_7_1(v52);
        sub_266A98074();
        v18 = v56;
      }

      *(v18 + 16) = v53 + 1;
      sub_266A6DBC4(&v71, v18 + 40 * v53 + 32);
      if (v16 == v14)
      {
        v73 = 0;
        v16 = v14;
        v71 = 0u;
        v72 = 0u;
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_19_1();
        if (v16 >= *(v54 + 16))
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_17_1();
        sub_266A6FFD8(v55 + 40 * v16++, &v71);
      }

      sub_266A81488(&v71, &v74);
    }

    v57 = v63;
    v59 = *(v63 + 16);
    v58 = *(v63 + 24);
    if (v59 >= v58 >> 1)
    {
      OUTLINED_FUNCTION_7_1(v58);
      sub_266A980BC();
      v57 = v60;
    }

    *(v57 + 16) = v59 + 1;
    v63 = v57;
    *(v57 + 8 * v59 + 32) = v18;
    sub_266A81488(&v74, &v77);
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_266A7D1C0()
{
  OUTLINED_FUNCTION_31();
  v156 = 0;
  *&v146 = *(v0 + 16);
  if (!v146)
  {
    inited = MEMORY[0x277D84F90];
LABEL_109:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_110;
  }

  v1 = 0;
  inited = MEMORY[0x277D84F90];
  *(&v146 + 1) = v0 + 32;
  v154 = xmmword_266AC0EB0;
LABEL_3:
  v3 = *(*(&v146 + 1) + 8 * v1);
  v149 = inited;
  v150 = v1 + 1;
  v157 = *(v3 + 16);
  v4 = v3 + 32;

  v5 = 0;
  v6 = v3 + 32;
  v7 = MEMORY[0x277D84F90];
  while (v157 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      sub_266AB107C(inited);
      inited = v144;
LABEL_110:
      v143 = *(inited + 16);
      *&v161[0] = inited + 32;
      *(&v161[0] + 1) = v143;
      sub_266AB10C0();
      OUTLINED_FUNCTION_30();
      return;
    }

    sub_266A6FFD8(v6, v161);
    v8 = OUTLINED_FUNCTION_3_2();
    v9(v8);
    if (v160[0] == 3 || (v10 = OUTLINED_FUNCTION_3_2(), v11(v10), v160[0] == 2))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
    }

    else
    {
      sub_266A6DBC4(v161, v160);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v159[0] = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = *(v7 + 16);
        OUTLINED_FUNCTION_35();
        v7 = v159[0];
      }

      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_14(v14);
        sub_266A98BE8();
      }

      v16 = *&v160[24];
      inited = *&v160[32];
      __swift_mutable_project_boxed_opaque_existential_1(v160, *&v160[24]);
      OUTLINED_FUNCTION_2_1();
      v18 = *(v17 + 64);
      MEMORY[0x28223BE20](v19);
      OUTLINED_FUNCTION_2();
      v22 = v21 - v20;
      (*(v23 + 16))(v21 - v20);
      sub_266A9E8BC(v15, v22, v159, v16, inited);
      __swift_destroy_boxed_opaque_existential_1Tm(v160);
      v7 = v159[0];
    }

    v6 += 40;
    ++v5;
  }

  v151 = v7;
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  while (v157 != v24)
  {
    if (v24 >= *(v3 + 16))
    {
      goto LABEL_112;
    }

    sub_266A6FFD8(v4, v161);
    v26 = OUTLINED_FUNCTION_3_2();
    v27(v26);
    if (v160[0] == 3 || (v28 = OUTLINED_FUNCTION_3_2(), v29(v28), v160[0] == 2))
    {
      sub_266A6DBC4(v161, v160);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v159[0] = v25;
      if ((v30 & 1) == 0)
      {
        v31 = *(v25 + 16);
        OUTLINED_FUNCTION_35();
        v25 = v159[0];
      }

      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_14(v32);
        sub_266A98BE8();
      }

      v34 = *&v160[24];
      inited = *&v160[32];
      __swift_mutable_project_boxed_opaque_existential_1(v160, *&v160[24]);
      OUTLINED_FUNCTION_2_1();
      v36 = *(v35 + 64);
      MEMORY[0x28223BE20](v37);
      OUTLINED_FUNCTION_2();
      v40 = v39 - v38;
      (*(v41 + 16))(v39 - v38);
      sub_266A9E8BC(v33, v40, v159, v34, inited);
      __swift_destroy_boxed_opaque_existential_1Tm(v160);
      v25 = v159[0];
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
    }

    v4 += 40;
    ++v24;
  }

  v42 = 0;
  v43 = MEMORY[0x277D84F98];
  inited = *(v25 + 16);
  v44 = v25 + 32;
  v153 = v25 + 32;
  v158 = inited;
  v159[0] = MEMORY[0x277D84F98];
  while (1)
  {
    if (inited == v42)
    {
      v162 = v43;
      v66 = *(v25 + 16);
      if (!v66)
      {
LABEL_71:

        v100 = sub_266AB3C0C(v43);
        v101 = *(v100 + 64);
        v102 = *(v100 + 32);
        OUTLINED_FUNCTION_15_1();
        inited = v103 >> 6;

        v104 = 0;
        if (!v42)
        {
          goto LABEL_73;
        }

        do
        {
          v105 = v104;
LABEL_77:
          v106 = (v105 << 9) | (8 * __clz(__rbit64(v42)));
          v107 = *(*(v100 + 56) + v106);
          v42 &= v42 - 1;
          *&v161[0] = *(*(v100 + 48) + v106);
          *(&v161[0] + 1) = v107;

          sub_266A7F108();
        }

        while (v42);
LABEL_73:
        while (1)
        {
          v105 = v104 + 1;
          if (__OFADD__(v104, 1))
          {
            goto LABEL_113;
          }

          if (v105 >= inited)
          {

            v108 = v162;
            v110 = *(v162 + 64);
            v109 = v162 + 64;
            v111 = *(v162 + 32);
            OUTLINED_FUNCTION_15_1();
            v113 = v112 >> 6;
            swift_bridgeObjectRetain_n();
            i = 0;
            v115 = MEMORY[0x277D84F90];
            while (1)
            {
              v116 = i + 1;
              if (__OFADD__(i, 1))
              {
                goto LABEL_114;
              }

              if (v116 >= v113)
              {

                v121 = *(v115 + 16);
                if (v121)
                {
                  v122 = v115 + 32;
                  v123 = MEMORY[0x277D84F90];
                  v1 = v150;
                  do
                  {
                    memcpy(v159, v161, sizeof(v159));
                    if (v159[1])
                    {
                      memcpy(v160, v161, sizeof(v160));
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v126 = *(v123 + 16);
                        OUTLINED_FUNCTION_21_0();
                        sub_266A982D4();
                        v123 = v127;
                      }

                      v125 = *(v123 + 16);
                      v124 = *(v123 + 24);
                      if (v125 >= v124 >> 1)
                      {
                        OUTLINED_FUNCTION_14(v124);
                        sub_266A982D4();
                        v123 = v128;
                      }

                      *(v123 + 16) = v125 + 1;
                      memcpy((v123 + 72 * v125 + 32), v160, 0x48uLL);
                    }

                    else
                    {
                    }

                    v122 += 72;
                    --v121;
                  }

                  while (v121);
                }

                else
                {

                  v123 = MEMORY[0x277D84F90];
                  v1 = v150;
                }

                inited = v149;
                if (*(v123 + 16))
                {
                  sub_266A9444C(v123, v129, v130, v131, v132, v133, v134, v135, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, v156, v158, v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], *v160, *&v160[8], *&v160[16], *&v160[24]);
                  v137 = v136;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v140 = *(inited + 16);
                    OUTLINED_FUNCTION_21_0();
                    sub_266A982B0();
                    inited = v141;
                  }

                  v139 = *(inited + 16);
                  v138 = *(inited + 24);
                  if (v139 >= v138 >> 1)
                  {
                    OUTLINED_FUNCTION_7_1(v138);
                    sub_266A982B0();
                    inited = v142;
                  }

                  *&v161[2] = &protocol witness table for RequestModel;
                  *(&v161[1] + 1) = &type metadata for RequestModel;
                  *&v161[0] = v137;
                  *(inited + 16) = v139 + 1;
                  sub_266A6DBC4(v161, inited + 40 * v139 + 32);
                }

                else
                {
                }

                if (v1 != v146)
                {
                  goto LABEL_3;
                }

                goto LABEL_109;
              }

              v117 = *(v109 + 8 * v116);
              ++i;
              if (v117)
              {
                for (i = v116; ; v116 = i)
                {
                  v118 = __clz(__rbit64(v117));
                  v117 &= v117 - 1;
                  v119 = *(*(v108 + 56) + ((v116 << 9) | (8 * v118)));
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD0, &unk_266AC6340);
                  inited = swift_initStackObject();
                  *(inited + 16) = v154;
                  *&v161[0] = v119;
                  swift_bridgeObjectRetain_n();

                  sub_266A7F950(v120);
                  sub_266AB5D18(*&v161[0], inited + 32);
                  *&v161[0] = v115;
                  sub_266A7FA00(inited);

                  v115 = *&v161[0];
                  if (!v117)
                  {
                    break;
                  }
                }
              }
            }
          }

          v42 = *(v100 + 64 + 8 * v105);
          ++v104;
          if (v42)
          {
            v104 = v105;
            goto LABEL_77;
          }
        }
      }

      v67 = v25 + 32;
      while (1)
      {
        sub_266A6FFD8(v67, v161);
        v68 = *(&v161[1] + 1);
        v69 = *&v161[2];
        __swift_project_boxed_opaque_existential_1(v161, *(&v161[1] + 1));
        (*(v69 + 16))(v160, v68, v69);
        if (!*&v160[24])
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
        if (swift_dynamicCast())
        {
          v158 = LODWORD(v159[0]);
          v42 = WORD2(v159[0]);
          v153 = BYTE6(v159[0]);
          v152 = HIBYTE(v159[0]);
          v70 = *(&v161[1] + 1);
          v71 = *&v161[2];
          __swift_project_boxed_opaque_existential_1(v161, *(&v161[1] + 1));
          (*(v71 + 128))(v160, v70, v71);
          if (!*&v160[24])
          {
            break;
          }

          if (swift_dynamicCast())
          {
            if (v43[2])
            {
              inited = LODWORD(v159[0]);
              v72 = WORD2(v159[0]);
              v148 = BYTE6(v159[0]);
              v147 = HIBYTE(v159[0]);
              v73 = v158 | (v42 << 32) | (v153 << 48) | (v152 << 56);
              v74 = sub_266AB0BA4(v73);
              if (v75)
              {
                v76 = *(v43[7] + 8 * v74);
                v77 = sub_266AB0BA4(v73);
                if (v78)
                {
                  v79 = v77;

                  v80 = v162;
                  swift_isUniquelyReferenced_nonNull_native();
                  *v160 = v80;
                  v81 = *(v80 + 24);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DA8, &qword_266AC6350);
                  sub_266ABDF34();
                  v43 = *v160;
                  v82 = *(*(*v160 + 56) + 8 * v79);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB0, &unk_266AC12D0);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD8, &unk_266AC1300);
                  sub_266A813B0();
                  sub_266ABDF44();
                  v162 = v43;
                }

                else
                {
                }

                if (v43[2] && (v83 = sub_266AB0BA4(inited | (v72 << 32) | (v148 << 48) | (v147 << 56)), (v84 & 1) != 0))
                {
                  v85 = *(v43[7] + 8 * v83);
                }

                else
                {
                  v86 = MEMORY[0x277D84F90];
                }

                *v160 = v76;
                sub_266A7F950(v86);
                v158 = *v160;
                v87 = v162;
                swift_isUniquelyReferenced_nonNull_native();
                *v160 = v87;
                v42 = inited | (v72 << 32) | (v148 << 48) | (v147 << 56);
                sub_266AB0BA4(v42);
                OUTLINED_FUNCTION_23_0();
                if (__OFADD__(v90, v91))
                {
                  goto LABEL_118;
                }

                v92 = v88;
                inited = v89;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DA8, &qword_266AC6350);
                if (sub_266ABDF34())
                {
                  v93 = sub_266AB0BA4(v42);
                  if ((inited & 1) != (v94 & 1))
                  {
                    goto LABEL_122;
                  }

                  v92 = v93;
                }

                v43 = *v160;
                if (inited)
                {
                  v95 = *(*v160 + 56);
                  v96 = *(v95 + 8 * v92);
                  *(v95 + 8 * v92) = v158;
                }

                else
                {
                  OUTLINED_FUNCTION_30_0(*v160 + 8 * (v92 >> 6));
                  *(v97 + 8 * v92) = v42;
                  *(v43[7] + 8 * v92) = v158;
                  v98 = v43[2];
                  v61 = __OFADD__(v98, 1);
                  v99 = v98 + 1;
                  if (v61)
                  {
                    goto LABEL_119;
                  }

                  v43[2] = v99;
                }

                v162 = v43;
              }
            }
          }
        }

LABEL_55:
        __swift_destroy_boxed_opaque_existential_1Tm(v161);
        v67 += 40;
        if (!--v66)
        {
          goto LABEL_71;
        }
      }

      sub_266A798F4(v160, &qword_2800B1CC8, &unk_266AC0FD0);
      goto LABEL_55;
    }

    if (v42 >= *(v25 + 16))
    {
      goto LABEL_115;
    }

    sub_266A6FFD8(v44, v161);
    sub_266A7EDD4(v161, &v162);
    if (v156)
    {
      break;
    }

    v46 = sub_266AB0BA4(v162);
    v47 = v43[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_116;
    }

    v50 = v45;
    if (v43[3] < v49)
    {
      sub_266AB3808(v49, 1);
      v43 = v159[0];
      v51 = sub_266AB0BA4(v162);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_122;
      }

      v46 = v51;
    }

    if (v50)
    {
      v53 = v43[7];
      sub_266A6DBC4(v161, v160);
      v54 = *(v53 + 8 * v46);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *(v53 + 8 * v46) = v54;
      if ((v55 & 1) == 0)
      {
        v63 = *(v54 + 16);
        OUTLINED_FUNCTION_21_0();
        sub_266A98074();
        v54 = v64;
        *(v53 + 8 * v46) = v64;
      }

      v57 = *(v54 + 16);
      v56 = *(v54 + 24);
      if (v57 >= v56 >> 1)
      {
        OUTLINED_FUNCTION_14(v56);
        sub_266A98074();
        v54 = v65;
        *(v53 + 8 * v46) = v65;
      }

      *(v54 + 16) = v57 + 1;
      sub_266A6DBC4(v160, v54 + 40 * v57 + 32);
      inited = v158;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
      v58 = swift_allocObject();
      *(v58 + 16) = v154;
      sub_266A6DBC4(v161, v58 + 32);
      OUTLINED_FUNCTION_30_0(&v43[v46 >> 6]);
      *(v59 + 8 * v46) = v162;
      *(v43[7] + 8 * v46) = v58;
      v60 = v43[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_117;
      }

      v43[2] = v62;
    }

    v44 += 40;
    ++v42;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v161);

  __break(1u);
LABEL_122:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB0, &unk_266AC12D0);
  sub_266ABE1F4();
  __break(1u);
}

uint64_t sub_266A7DEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  v6 = *(a4 + 32);
  v6(v14, a3, a4);
  v7 = v15;
  v8 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v9 = (*(v8 + 168))(v7, v8);
  if (!v10)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  v11 = v9;
  v12 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  v6(v14, a3, a4);
  return sub_266AAC4E0(v14, v11, v12);
}

uint64_t sub_266A7DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14[-1] - v8;
  (*(a4 + 16))(v14, a3, a4);
  if (!v14[3])
  {
    return sub_266A798F4(v14, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v13;
    v12 = type metadata accessor for ParticipantModel();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
    return sub_266AAC2C8(v9, v11);
  }

  return result;
}

void sub_266A7E130(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0) - 8) + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_1(v10, v129._countAndFlagsBits);
  v147 = sub_266ABD864();
  v11 = OUTLINED_FUNCTION_1_0(v147);
  v142 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_2();
  v149 = (v15 - v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_33_1();
  v145 = v18;
  v19 = sub_266ABD8B4();
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v146 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v150 = v25 - v24;
  v26 = type metadata accessor for ParticipantModel();
  v27 = OUTLINED_FUNCTION_1_0(v26);
  v152 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_2();
  v148 = v31 - v32;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v129 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v129 - v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_33_1();
  v153 = v40;
  v41 = *a3;
  if (!*(*a3 + 16))
  {
    goto LABEL_9;
  }

  v42 = *a1;
  v43 = *a2;
  v44 = a2[1];
  v45 = a2[2];
  v46 = a2[3];
  v47 = *(a2 + 2);
  v48 = a2[6];
  v49 = a2[7];
  v141 = v43;
  v143 = v44;
  v140 = v45;
  v139 = v46;
  v138 = v47;
  v151 = v48;
  v50 = v43 | (v44 << 8) | (v45 << 16) | (v46 << 24) | (v47 << 32) | (v48 << 48) | (v49 << 56);
  v51 = sub_266AB0C10(v50);
  if ((v52 & 1) == 0)
  {
LABEL_9:
    *a4 = MEMORY[0x277D84F90];
    return;
  }

  v137 = v49;
  v135 = v42;
  v53 = *(v41 + 56);
  v134 = *(v152 + 72);
  sub_266A6E9E4(v53 + v134 * v51, v39);
  sub_266A7977C(v39, v153);
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v54 = sub_266ABD8D4();
  __swift_project_value_buffer(v54, qword_280BB7028);
  v55 = sub_266ABD8C4();
  v56 = sub_266ABDD54();
  v57 = os_log_type_enabled(v55, v56);
  v136 = a4;
  v133 = v19;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v155 = v59;
    *v58 = 136315138;
    v60 = sub_266A6FBB0(v50);
    v62 = sub_266A66D34(v60, v61, &v155);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_266A65000, v55, v56, "#feedback found advertisement %s for unknown participant", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  v64 = v150;
  v63 = v151;
  v65 = v149;
  v66 = v145;
  switch(v143)
  {
    case 1:
      if (!v151)
      {
        goto LABEL_18;
      }

      v73 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v73);
      v68 = &unk_28783E7B0;
      v69 = 7;
      break;
    case 2:
      v72 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v72);
      v69 = 0;
      v68 = &unk_28783E6F0;
      break;
    case 3:
      v75 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v75);
      v68 = &unk_28783E6C0;
      v69 = 1;
      break;
    case 4:
      v76 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v76);
      v68 = &unk_28783E630;
      v69 = 4;
      break;
    case 5:
    case 7:
      v70 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v70);
      if (v63 == 3)
      {
        v68 = &unk_28783E660;
      }

      else
      {
        v68 = &unk_28783E690;
      }

      v69 = 5;
      break;
    case 6:
    case 10:
      v71 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v71);
      v68 = &unk_28783E750;
      v69 = 3;
      break;
    case 9:
LABEL_18:
      v74 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v74);
      v68 = &unk_28783E720;
      v69 = 6;
      break;
    default:
      v67 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v67);
      v68 = &unk_28783E7E0;
      v69 = 8;
      break;
  }

  LOBYTE(v154[0]) = v69;
  LOBYTE(v159) = v63;
  v77 = DeviceClass.displayName(productType:)(&v159);
  countAndFlagsBits = v77._countAndFlagsBits;
  object = v77._object;
  v156 = &type metadata for DeviceModel;
  v157 = sub_266A6DA44();
  v78 = swift_allocObject();
  *&v155 = v78;
  if (v68[2])
  {
    v80 = v68[4];
    v79 = v68[5];

    v81._countAndFlagsBits = v80;
    v81._object = v79;
    DeviceClass.init(model:)(v81);
    LOBYTE(v159) = 0;
    v129 = DeviceClass.displayName(productType:)(&v159);
  }

  else
  {
    v129._object = 0xEB00000000657365;
    OUTLINED_FUNCTION_28_0();
    v129._countAndFlagsBits = v82;
  }

  sub_266ABD884();
  v83 = v144;
  sub_266ABD8A4();
  v84 = v83;
  v85 = v83;
  v86 = v147;
  if (__swift_getEnumTagSinglePayload(v85, 1, v147) == 1)
  {
    v87 = 0x30303030303023;
    (*(v146 + 8))(v64, v133);
    sub_266A798F4(v84, &qword_2800B1D88, &qword_266AC20D0);
  }

  else
  {
    v88 = v84;
    v89 = v142;
    (*(v142 + 32))(v66, v88, v86);
    (*(v89 + 16))(v65, v66, v86);
    v90 = v66;
    if ((*(v89 + 88))(v65, v86) == *MEMORY[0x277D85508])
    {
      (*(v89 + 96))(v65, v86);
      v87 = sub_266AA6004(*v65, v65[1], v65[2]);
      v91 = v86;
      v93 = v92;
      (*(v89 + 8))(v90, v91);
      v94 = OUTLINED_FUNCTION_25_0();
      v95(v94);
      goto LABEL_30;
    }

    v87 = 0x30303030303023;
    v96 = *(v89 + 8);
    v96(v90, v86);
    v97 = OUTLINED_FUNCTION_25_0();
    v98(v97);
    v96(v149, v86);
  }

  v93 = 0xE700000000000000;
LABEL_30:
  *(v78 + 16) = 0u;
  *(v78 + 32) = 0u;
  *(v78 + 48) = v87;
  *(v78 + 56) = v93;
  *(v78 + 64) = 0;
  *(v78 + 72) = 0;
  v99 = object;
  *(v78 + 80) = countAndFlagsBits;
  *(v78 + 88) = v99;
  v100 = v129._object;
  *(v78 + 96) = v129._countAndFlagsBits;
  *(v78 + 104) = v100;
  *(v78 + 112) = v68;
  *(v78 + 120) = 0u;
  *(v78 + 136) = 0u;
  *(v78 + 152) = 0u;
  *(v78 + 168) = 0u;
  v101 = v26[16];
  sub_266A6F968(v153 + v101, v154, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v154[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    v102 = swift_dynamicCast();
    v103 = v151;
    if ((v102 & 1) != 0 && BYTE6(v159) != 9)
    {
      v154[0] = v159;
      if (v151 == 9)
      {
        goto LABEL_35;
      }

      LOBYTE(v159) = v141;
      BYTE1(v159) = v143;
      OUTLINED_FUNCTION_19_1();
      BYTE2(v159) = v104;
      OUTLINED_FUNCTION_17_1();
      BYTE3(v159) = v105;
      WORD2(v159) = v138;
      BYTE6(v159) = v106;
      HIBYTE(v159) = v137;
      if (!static AdvertisementModel.== infix(_:_:)(v154, &v159, v107, v108))
      {
        goto LABEL_35;
      }

LABEL_38:
      v109 = 3;
      goto LABEL_39;
    }
  }

  else
  {
    sub_266A798F4(v154, &qword_2800B1CC8, &unk_266AC0FD0);
    v103 = v151;
  }

  if (v103 == 9)
  {
    goto LABEL_38;
  }

LABEL_35:
  v109 = 2;
LABEL_39:
  v110 = v26[11];
  v111 = sub_266ABD7A4();
  OUTLINED_FUNCTION_16(v111);
  v113 = v153;
  (*(v112 + 16))(&v36[v110], v153 + v110, v111);
  __swift_storeEnumTagSinglePayload(&v36[v26[15]], 1, 1, v111);
  sub_266A6F968(v113 + v101, &v36[v26[16]], &qword_2800B1CC8, &unk_266AC0FD0);
  *v36 = v141;
  v36[1] = v143;
  OUTLINED_FUNCTION_19_1();
  v36[2] = v114;
  OUTLINED_FUNCTION_17_1();
  v36[3] = v115;
  *(v36 + 2) = v138;
  v36[6] = v151;
  v36[7] = v137;
  *(v36 + 8) = v158;
  v116 = v132;
  *(v36 + 3) = &type metadata for AdvertisementModel;
  *(v36 + 4) = v116;
  v117 = MEMORY[0x277D84F90];
  *(v36 + 5) = MEMORY[0x277D84F90];
  sub_266A6DBC4(&v155, (v36 + 48));
  *(v36 + 11) = 0;
  *(v36 + 12) = 0;
  *(v36 + 13) = v117;
  v36[112] = v109;
  *(v36 + 113) = 256;
  *&v36[v26[12]] = v117;
  *&v36[v26[13]] = v117;
  OUTLINED_FUNCTION_9_1(v26[14]);
  OUTLINED_FUNCTION_9_1(v26[17]);
  OUTLINED_FUNCTION_9_1(v26[18]);
  v36[v26[19]] = 0;
  v36[v26[20]] = 0;
  v36[v26[21]] = 0;
  v36[v26[22]] = 0;
  OUTLINED_FUNCTION_9_1(v26[23]);
  OUTLINED_FUNCTION_27_0(v26[24]);
  *(v118 + 8) = 1;
  OUTLINED_FUNCTION_27_0(v26[25]);
  *(v119 + 8) = 1;
  OUTLINED_FUNCTION_9_1(v26[26]);
  v120 = v148;
  sub_266A6E9E4(v36, v148);
  sub_266A98500();
  v122 = v121;
  v124 = *(v121 + 16);
  v123 = *(v121 + 24);
  if (v124 >= v123 >> 1)
  {
    OUTLINED_FUNCTION_7_1(v123);
    sub_266A98500();
    v122 = v128;
  }

  v125 = v136;
  *(v122 + 16) = v124 + 1;
  sub_266A7977C(v120, v122 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + v124 * v134);
  sub_266A94558();
  v127 = v126;

  v154[0] = v135;

  sub_266A7F950(v127);
  sub_266A6A63C(v36);
  sub_266A6A63C(v153);
  *v125 = v154[0];
}

uint64_t sub_266A7EC68(void *a1, void *a2)
{
  v4 = sub_266ABD7A4();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = *(v16 + 88);
  v18 = OUTLINED_FUNCTION_12_1();
  v19(v18);
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v21 = *(v20 + 88);
  v22 = OUTLINED_FUNCTION_12_1();
  v23(v22);
  LOBYTE(a1) = sub_266ABD724();
  v24 = *(v7 + 8);
  v24(v12, v4);
  v24(v15, v4);
  return a1 & 1;
}

void sub_266A7EDD4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 128))(v25, v4, v5);
  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (swift_dynamicCast())
    {
      v6 = v22[0];
      goto LABEL_14;
    }
  }

  else
  {
    sub_266A798F4(v25, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v7 = sub_266ABD8D4();
  __swift_project_value_buffer(v7, qword_280BB7028);
  sub_266A6FFD8(a1, v25);
  v8 = sub_266ABD8C4();
  v9 = sub_266ABDD64();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v13 = *(v12 + 16);
    v14 = OUTLINED_FUNCTION_29_0();
    v15(v14);
    if (v23)
    {
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = *(v16 + 8);
      v18 = sub_266ABE194();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    else
    {
      sub_266A798F4(v22, &qword_2800B1CC8, &unk_266AC0FD0);
      v20 = 0xE700000000000000;
      v18 = 0x6E776F6E6B6E55;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v21 = sub_266A66D34(v18, v20, &v28);

    *(v10 + 4) = v21;
    _os_log_impl(&dword_266A65000, v8, v9, "#feedback Found a winner without a winning advertisement. This is likely a data integrity issue. Advertisement: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  v6 = 0x9000000000000;
LABEL_14:
  *a2 = v6;
}

BOOL sub_266A7F060(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 32;
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 40;
    sub_266A6FFD8(v2, v8 + 1);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1((v8 + 1), v9);
    (*(v6 + 72))(v8, v5, v6);
    LODWORD(v5) = LOBYTE(v8[0]);
    __swift_destroy_boxed_opaque_existential_1Tm((v8 + 1));
    v2 = v4;
  }

  while (v5 != 3);
  return v3 == 0;
}

void sub_266A7F108()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0) - 8) + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v7);
  v9 = &v91 - v8;
  v10 = sub_266ABD864();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_2();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v91 - v20;
  v22 = sub_266ABD8B4();
  v23 = OUTLINED_FUNCTION_1_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2();
  v28 = *v5;
  if ((v28 & 0xFF000000000000) != 0x9000000000000)
  {
    LOBYTE(v29) = 6;
    v98 = v27;
    v99 = v26;
    v94 = v1;
    switch(BYTE1(v28))
    {
      case 1:
        if ((v28 & 0xFF000000000000) != 0)
        {
          LOBYTE(v29) = 7;
        }

        else
        {
          LOBYTE(v29) = 6;
        }

        break;
      case 2:
        LOBYTE(v29) = 0;
        break;
      case 3:
        LOBYTE(v29) = 1;
        break;
      case 4:
      case 5:
        v29 = v28 >> 8;
        break;
      case 6:
      case 0xA:
        LOBYTE(v29) = 3;
        break;
      case 7:
        LOBYTE(v29) = 5;
        break;
      case 9:
        break;
      default:
        LOBYTE(v29) = 8;
        break;
    }

    v93 = v28 >> 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266AC0EB0;
    v92 = sub_266A6D9F0();
    v30 = &unk_28783E630;
    v100 = v3;
    switch(v29)
    {
      case 1:
        v30 = &unk_28783E6C0;
        goto LABEL_22;
      case 2:
        goto LABEL_41;
      case 3:
        v30 = &unk_28783E750;
        goto LABEL_22;
      case 4:
        goto LABEL_22;
      case 5:
        if (BYTE6(v28) == 3)
        {
          v30 = &unk_28783E660;
        }

        else
        {
          v30 = &unk_28783E690;
        }

        goto LABEL_22;
      case 6:
        v30 = &unk_28783E720;
        goto LABEL_22;
      case 7:
        v30 = &unk_28783E7B0;
        goto LABEL_22;
      case 8:
        v30 = &unk_28783E7E0;
        goto LABEL_22;
      default:
        v30 = &unk_28783E6F0;
LABEL_22:
        v102 = v28;
        LOBYTE(v106) = v29;
        v91 = HIWORD(v28);
        LOBYTE(v103[0]) = BYTE6(v28);
        v31 = DeviceClass.displayName(productType:)(v103);
        countAndFlagsBits = v31._countAndFlagsBits;
        object = v31._object;
        v107 = &type metadata for DeviceModel;
        v108 = sub_266A6DA44();
        v32 = swift_allocObject();
        *&v106 = v32;
        if (v30[2])
        {
          v34 = v30[4];
          v33 = v30[5];

          v35._countAndFlagsBits = v34;
          v35._object = v33;
          DeviceClass.init(model:)(v35);
          LOBYTE(v109) = 0;
          v36 = DeviceClass.displayName(productType:)(&v109);
          v95 = v36._countAndFlagsBits;
          v37 = v36._object;
        }

        else
        {
          v37 = 0xEB00000000657365;
          OUTLINED_FUNCTION_28_0();
          v95 = v38;
        }

        sub_266ABD884();
        sub_266ABD8A4();
        if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
        {
          v39 = 0x30303030303023;
          v40 = OUTLINED_FUNCTION_6_1();
          v41(v40);
          sub_266A798F4(v9, &qword_2800B1D88, &qword_266AC20D0);
        }

        else
        {
          (*(v13 + 32))(v21, v9, v10);
          v42 = *(v13 + 16);
          v43 = OUTLINED_FUNCTION_29_0();
          v44(v43);
          if ((*(v13 + 88))(v18, v10) == *MEMORY[0x277D85508])
          {
            (*(v13 + 96))(v18, v10);
            v39 = sub_266AA6004(*v18, v18[1], v18[2]);
            v46 = v45;
            (*(v13 + 8))(v21, v10);
            v47 = OUTLINED_FUNCTION_6_1();
            v48(v47);
            goto LABEL_31;
          }

          v39 = 0x30303030303023;
          v49 = *(v13 + 8);
          v49(v21, v10);
          v50 = OUTLINED_FUNCTION_6_1();
          v51(v50);
          v49(v18, v10);
        }

        v46 = 0xE700000000000000;
LABEL_31:
        *(v32 + 16) = 0u;
        *(v32 + 32) = 0u;
        *(v32 + 48) = v39;
        *(v32 + 56) = v46;
        *(v32 + 64) = 0;
        *(v32 + 72) = 0;
        OUTLINED_FUNCTION_17_1();
        *(v32 + 80) = v53;
        *(v32 + 88) = v52;
        *(v32 + 96) = v95;
        *(v32 + 104) = v37;
        *(v32 + 112) = v30;
        *(v32 + 120) = v54;
        *(v32 + 136) = v54;
        *(v32 + 152) = v54;
        *(v32 + 168) = v54;
        sub_266A79954(v100, v103);
        v55 = v104;
        if (!v104)
        {
          goto LABEL_41;
        }

        v56 = v102;
        v100 = HIBYTE(v102);
        v99 = HIDWORD(v102);
        v57 = v102 >> 24;
        v58 = v105;
        v59 = v102 >> 16;
        __swift_project_boxed_opaque_existential_1(v103, v104);
        v60 = *(v58 + 88);
        v61 = type metadata accessor for ParticipantModel();
        v62 = inited;
        *(inited + 56) = v61;
        *(v62 + 64) = sub_266A81304();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v62 + 32));
        v64 = boxed_opaque_existential_1 + v61[11];
        v60(v55, v58);
        v65 = v61[15];
        v66 = sub_266ABD7A4();
        __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v65, 1, 1, v66);
        v67 = boxed_opaque_existential_1 + v61[16];
        v68 = v92;
        *(v67 + 3) = &type metadata for AdvertisementModel;
        *(v67 + 4) = v68;
        *v67 = v56;
        v69 = v93;
        v67[1] = v93;
        v67[2] = v59;
        v67[3] = v57;
        v70 = v99;
        *(v67 + 2) = v99;
        v71 = v91;
        v67[6] = v91;
        v72 = v100;
        v67[7] = v100;
        *boxed_opaque_existential_1 = v56;
        *(boxed_opaque_existential_1 + 1) = v69;
        *(boxed_opaque_existential_1 + 2) = v59;
        *(boxed_opaque_existential_1 + 3) = v57;
        *(boxed_opaque_existential_1 + 2) = v70;
        *(boxed_opaque_existential_1 + 6) = v71;
        *(boxed_opaque_existential_1 + 7) = v72;
        *(boxed_opaque_existential_1 + 1) = v109;
        boxed_opaque_existential_1[3] = &type metadata for AdvertisementModel;
        boxed_opaque_existential_1[4] = v68;
        v73 = MEMORY[0x277D84F90];
        boxed_opaque_existential_1[5] = MEMORY[0x277D84F90];
        sub_266A6DBC4(&v106, (boxed_opaque_existential_1 + 6));
        boxed_opaque_existential_1[11] = 0;
        boxed_opaque_existential_1[12] = 0;
        boxed_opaque_existential_1[13] = v73;
        *(boxed_opaque_existential_1 + 56) = 3;
        *(boxed_opaque_existential_1 + 114) = 1;
        *(boxed_opaque_existential_1 + v61[12]) = v73;
        *(boxed_opaque_existential_1 + v61[13]) = v73;
        OUTLINED_FUNCTION_9_1(v61[14]);
        OUTLINED_FUNCTION_9_1(v61[17]);
        OUTLINED_FUNCTION_9_1(v61[18]);
        *(boxed_opaque_existential_1 + v61[19]) = 0;
        *(boxed_opaque_existential_1 + v61[20]) = 0;
        *(boxed_opaque_existential_1 + v61[21]) = 0;
        *(boxed_opaque_existential_1 + v61[22]) = 0;
        OUTLINED_FUNCTION_9_1(v61[23]);
        OUTLINED_FUNCTION_27_0(v61[24]);
        *(v74 + 8) = 1;
        OUTLINED_FUNCTION_27_0(v61[25]);
        *(v75 + 8) = 1;
        OUTLINED_FUNCTION_9_1(v61[26]);
        __swift_destroy_boxed_opaque_existential_1Tm(v103);
        v76 = v94;
        v77 = *v94;
        swift_isUniquelyReferenced_nonNull_native();
        v103[0] = *v76;
        *v76 = 0x8000000000000000;
        sub_266AB0BA4(v56);
        OUTLINED_FUNCTION_23_0();
        if (__OFADD__(v80, v81))
        {
          __break(1u);
LABEL_41:
          __break(1u);
        }

        else
        {
          v82 = v78;
          v83 = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DA8, &qword_266AC6350);
          v84 = sub_266ABDF34();
          v85 = v103[0];
          if ((v84 & 1) == 0)
          {
LABEL_36:
            v88 = *v76;
            *v76 = v85;

            v89 = *v76;
            if ((v83 & 1) == 0)
            {
              sub_266AB44B4(v82, v102, MEMORY[0x277D84F90], v89);
            }

            v90 = v89[7] + 8 * v82;
            sub_266A7F950(inited);
            break;
          }

          v86 = sub_266AB0BA4(v102);
          if ((v83 & 1) == (v87 & 1))
          {
            v82 = v86;
            goto LABEL_36;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB0, &unk_266AC12D0);
        sub_266ABE1F4();
        __break(1u);
        return;
    }
  }

  OUTLINED_FUNCTION_30();
}

void sub_266A7F950(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266A98A38(v4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
  OUTLINED_FUNCTION_38();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_266A7FA00(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266A98AC0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_38();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_266A7FAB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266A98B50(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for ParticipantModel();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_266A7FBA0(void *a1, void *a2)
{
  v4 = sub_266ABD7A4();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v45 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = *(v16 + 16);
  v18 = OUTLINED_FUNCTION_12_1();
  v20 = v19(v18);
  sub_266A79954(v20, &v48);

  if (!v49)
  {
    sub_266A798F4(&v48, &qword_2800B1D78, "^X");
LABEL_6:
    v42 = 0;
    return v42 & 1;
  }

  sub_266A6DBC4(&v48, v50);
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v22 = *(v21 + 16);
  v23 = OUTLINED_FUNCTION_12_1();
  v25 = v24(v23);
  sub_266A79954(v25, &v46);

  if (!v47)
  {
    sub_266A798F4(&v46, &qword_2800B1D78, "^X");
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    goto LABEL_6;
  }

  sub_266A6DBC4(&v46, &v48);
  OUTLINED_FUNCTION_40(v50);
  v27 = *(v26 + 32);
  v28 = OUTLINED_FUNCTION_11_1();
  v29(v28);
  OUTLINED_FUNCTION_40(&v46);
  v31 = *(v30 + 88);
  v32 = OUTLINED_FUNCTION_11_1();
  v33(v32);
  OUTLINED_FUNCTION_40(&v48);
  v35 = *(v34 + 32);
  v36 = OUTLINED_FUNCTION_11_1();
  v37(v36);
  OUTLINED_FUNCTION_40(v45);
  v39 = *(v38 + 88);
  v40 = OUTLINED_FUNCTION_11_1();
  v41(v40);
  OUTLINED_FUNCTION_32_0();
  v42 = sub_266ABD724();
  v43 = *(v7 + 8);
  v43(v12, v4);
  v43(v15, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  __swift_destroy_boxed_opaque_existential_1Tm(&v46);
  __swift_destroy_boxed_opaque_existential_1Tm(&v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  return v42 & 1;
}

uint64_t Array<A>.firstWinner.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_266ABDDF4();
  OUTLINED_FUNCTION_1_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v13);
  v15 = &v18[-v14];
  v21 = a1;
  v19 = a2;
  v20 = a3;
  sub_266ABDCC4();
  OUTLINED_FUNCTION_0_0();
  swift_getWitnessTable();
  sub_266ABDBB4();
  if (__swift_getEnumTagSinglePayload(v15, 1, a2) == 1)
  {
    result = (*(v10 + 8))(v15, v8);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    *(a4 + 24) = a2;
    *(a4 + 32) = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    return (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, v15, a2);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t Array<A>.asCDAPaticipants.getter()
{
  sub_266ABDCC4();
  sub_266A6AE78(0, &qword_2800B1D70, 0x277D56D28);
  OUTLINED_FUNCTION_0_0();
  swift_getWitnessTable();
  return sub_266ABDB94();
}

void sub_266A8011C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v109 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v114 = (&v100 - v10);
  v115 = sub_266ABD7A4();
  v111 = *(v115 - 8);
  v11 = *(v111 + 64);
  MEMORY[0x28223BE20](v115);
  v110 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DC0, &unk_266AC12F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v103 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v104 = &v100 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v100 - v19;
  v112 = sub_266ABD7F4();
  v106 = *(v112 - 8);
  v21 = *(v106 + 64);
  v22 = MEMORY[0x28223BE20](v112);
  v101 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v102 = &v100 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v105 = &v100 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v100 - v28;
  v30 = [objc_allocWithZone(MEMORY[0x277D56D28]) init];
  if (!v30)
  {
LABEL_73:
    __break(1u);
LABEL_74:

    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = [objc_allocWithZone(MEMORY[0x277D56D18]) init];
  v107 = *(a3 + 72);
  v108 = a3 + 72;
  v107(v116, a2, a3);
  if (LOBYTE(v116[0]) == 3)
  {
    v33 = 1;
  }

  else
  {
    v33 = 2 * (LOBYTE(v116[0]) == 2);
  }

  v119 = v31;
  [v31 setDecision_];
  v34 = *(a3 + 144);
  v113 = a1;
  v34(a2, a3);
  v35 = v112;
  if (v36)
  {
    sub_266ABD7B4();

    if (__swift_getEnumTagSinglePayload(v20, 1, v35) == 1)
    {
      sub_266A798F4(v20, &qword_2800B1DC0, &unk_266AC12F0);
    }

    else
    {
      v100 = a2;
      v37 = v35;
      v38 = v106;
      (*(v106 + 32))(v29, v20, v37);
      sub_266A6AE78(0, &qword_2800B1DC8, 0x277D5AC78);
      v39 = v105;
      (*(v38 + 16))(v105, v29, v37);
      v40 = sub_266A8FD8C(v39);
      [v119 setCdaId_];

      v41 = v38;
      v35 = v37;
      a2 = v100;
      (*(v41 + 8))(v29, v35);
    }
  }

  (*(a3 + 136))(a2, a3);
  v43 = v114;
  v42 = v115;
  if (v44)
  {
    v45 = v104;
    sub_266ABD7B4();
    v46 = v45;

    if (__swift_getEnumTagSinglePayload(v45, 1, v35) == 1)
    {
      sub_266A798F4(v45, &qword_2800B1DC0, &unk_266AC12F0);
    }

    else
    {
      v47 = v106;
      v48 = v102;
      (*(v106 + 32))(v102, v46, v35);
      sub_266A6AE78(0, &qword_2800B1DC8, 0x277D5AC78);
      v49 = a2;
      v50 = v35;
      v51 = v105;
      (*(v47 + 16))(v105, v48, v50);
      v52 = v51;
      v35 = v50;
      a2 = v49;
      v43 = v114;
      v53 = sub_266A8FD8C(v52);
      [v119 setRequestId_];

      v54 = v47;
      v42 = v115;
      (*(v54 + 8))(v48, v35);
    }
  }

  (*(a3 + 120))(a2, a3);
  if (__swift_getEnumTagSinglePayload(v43, 1, v42) == 1)
  {
    sub_266A798F4(v43, &qword_2800B1DB8, "h9");
    v55 = v119;
    goto LABEL_19;
  }

  (*(v111 + 32))(v110, v43, v42);
  sub_266ABD754();
  if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v56 <= -1.0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v56 >= 1.84467441e19)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v55 = v119;
  [v119 setVoiceTriggerTimeNS_];
  (*(v111 + 8))(v110, v42);
LABEL_19:
  v57 = (*(a3 + 80))(a2, a3);
  if ((v57 & 0x100) == 0)
  {
    [v55 setRawGoodnessScore_];
  }

  v58 = (*(a3 + 104))(a2, a3);
  if (*(v58 + 16))
  {
    v59 = *(v58 + 32);

    v60 = v59;
    switch(v59)
    {
      case 1:
        break;
      case 2:
        v60 = 2;
        break;
      case 3:
        v60 = 3;
        break;
      case 4:
        v60 = 4;
        break;
      case 5:
        v60 = 5;
        break;
      case 6:
        v60 = 6;
        break;
      case 7:
        v60 = 7;
        break;
      case 8:
        v60 = 8;
        break;
      default:
        goto LABEL_25;
    }

    [v55 setTrumpReason_];
    if (v32)
    {
      [v32 setTrumpReason_];
      v61 = 1;
      goto LABEL_35;
    }
  }

  else
  {

LABEL_25:
    if (v32)
    {
      v61 = 0;
LABEL_35:
      [v32 setIsTrump_];
    }
  }

  v114 = *(a3 + 32);
  v115 = a3 + 32;
  v114(v116, a2, a3, v60);
  v62 = v117;
  v63 = v118;
  __swift_project_boxed_opaque_existential_1(v116, v117);
  (v63[24])(v62, v63);
  if (v64)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    v65 = v103;
    sub_266ABD7B4();

    if (__swift_getEnumTagSinglePayload(v65, 1, v35) == 1)
    {
      sub_266A798F4(v65, &qword_2800B1DC0, &unk_266AC12F0);
    }

    else
    {
      v66 = v106;
      v67 = *(v106 + 32);
      v100 = a2;
      v68 = v35;
      v69 = v101;
      v67(v101, v65, v68);
      sub_266A6AE78(0, &qword_2800B1DC8, 0x277D5AC78);
      v70 = v105;
      (*(v66 + 16))(v105, v69, v68);
      v71 = sub_266A8FD8C(v70);
      [v119 setSiriSpeechId_];

      v72 = v68;
      a2 = v100;
      (*(v66 + 8))(v69, v72);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
  }

  v73 = (*(a3 + 24))(a2, a3);
  v74 = 0;
  v75 = *(v73 + 16);
  v76 = v73 + 32;
  while (v75 != v74)
  {
    if (v74 >= *(v73 + 16))
    {
      __break(1u);
      goto LABEL_68;
    }

    sub_266A6FFD8(v76, v116);
    sub_266A810A8(v116, v32);
    if (v4)
    {
      goto LABEL_74;
    }

    ++v74;
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    v76 += 40;
  }

  (*(a3 + 160))(v116, a2, a3);
  v77 = v119;
  [v119 setAlarmState_];
  (*(a3 + 152))(v116, a2, a3);
  [v77 setTimerState_];
  (*(a3 + 168))(v116, a2, a3);
  [v77 setMediaState_];
  (*(a3 + 176))(v116, a2, a3);
  [v77 setTriggerType_];
  (v114)(v116, a2, a3);
  v78 = v117;
  v79 = v118;
  __swift_project_boxed_opaque_existential_1(v116, v117);
  (v79[28])(v78, v79);
  if (v80)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    v81 = sub_266ABDA74();

    [v77 setRoomNameHash_];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
  }

  v82 = (*(a3 + 184))(a2, a3);
  if ((v83 & 1) == 0)
  {
    if (v82 < 0)
    {
      goto LABEL_71;
    }

    [v77 setTimeSinceLastWinInMilliseconds_];
  }

  v84 = (*(a3 + 192))(a2, a3);
  if ((v85 & 1) == 0)
  {
    if (v84 < 0)
    {
      goto LABEL_72;
    }

    [v77 setTimeSinceTriggerInMilliseconds_];
  }

  [v77 setScoreBoosters_];
  (*(a3 + 16))(v116, a2, a3);
  v86 = v117;
  if (v117)
  {
    v87 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v86 = Advertisement.asCDAAdvertisement.getter(v86, v87);
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
  }

  else
  {
    sub_266A798F4(v116, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  [v77 setAdvertisement_];

  v107(v116, a2, a3);
  [v77 setIsNearMiss_];
  if ((Participant.unknownParticipant.getter(a2, a3) & 1) == 0)
  {
    (v114)(v116, a2, a3);
    v88 = v117;
    v89 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    (v89[5])(v88, v89);
    if (v90)
    {
      v91 = sub_266ABDA74();
    }

    else
    {
      v91 = 0;
    }

    v92 = v119;
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    [v92 setBuild_];

    (v114)(v116, a2, a3);
    v93 = v117;
    v94 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    (v94[11])(v93, v94);
    if (v95)
    {
      v96 = sub_266ABDA74();
    }

    else
    {
      v96 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    v77 = v119;
    [v119 setLocale_];

    (v114)(v116, a2, a3);
    v97 = v117;
    v98 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    (v98[17])(v97, v98);
    v99 = sub_266ABDC14();

    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    [v77 setProductTypes_];
  }

  *v109 = v77;
}

uint64_t getEnumTagSinglePayload for CollationConfiguration(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for CollationConfiguration(_BYTE *result, int a2, int a3)
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

void sub_266A810A8(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 32);
  v5(v13, v3, v4);
  v6 = v13[0];
  if ((v13[0] & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  if ((~v13[0] & 0x7F80000000000000) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = *(v13 + 1);
  if (*(v13 + 1) <= -1.0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v13 + 1) < 4295000000.0)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_6:
  v5(v13, v3, v4);
  v6 = v13[0];
  if ((v13[0] & 0x80000000) == 0)
  {
    return;
  }

  if ((~v13[0] & 0x7F80000000000000) == 0)
  {
    goto LABEL_25;
  }

  v7 = *(v13 + 1);
  if (*(v13 + 1) <= -1.0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
LABEL_12:
    v9 = sub_266ABD8D4();
    __swift_project_value_buffer(v9, qword_280BB7028);
    v10 = sub_266ABD8C4();
    v11 = sub_266ABDD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = 0;
      _os_log_impl(&dword_266A65000, v10, v11, "#feedback - Trying to track an unknown boost: %ld", v12, 0xCu);
      MEMORY[0x26D5E9280](v12, -1, -1);
    }

    return;
  }

  if (*(v13 + 1) >= 4295000000.0)
  {
    goto LABEL_27;
  }

LABEL_10:
  v8 = v7;
  switch(v6)
  {
    case 1:
      [a2 setDeviceBoost_];
      break;
    case 2:
      [a2 setRecentUnlockBoost_];
      break;
    case 3:
      [a2 setRecentRaiseToWakeBoost_];
      break;
    case 4:
      [a2 setRecentSiriRequestBoost_];
      break;
    case 5:
      [a2 setRecentMotionBoost_];
      break;
    case 6:
      [a2 setRecentPlaybackBoost_];
      break;
    case 7:
      [a2 setRecentAlarmBoost_];
      break;
    default:
      if (qword_280BB6C30 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
  }
}

unint64_t sub_266A81304()
{
  result = qword_2800B1DA0;
  if (!qword_2800B1DA0)
  {
    type metadata accessor for ParticipantModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1DA0);
  }

  return result;
}

uint64_t sub_266A8135C(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_266A813B0()
{
  result = qword_2800B1DE0;
  if (!qword_2800B1DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1DB0, &unk_266AC12D0);
    sub_266A81434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1DE0);
  }

  return result;
}

unint64_t sub_266A81434()
{
  result = qword_2800B1DE8;
  if (!qword_2800B1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1DE8);
  }

  return result;
}

uint64_t sub_266A81488(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C48, &unk_266AC1310);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A81518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantModel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_1()
{
  v2 = *(*(v1 - 296) + 8);
  result = v0;
  v4 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_0()
{
  v4 = **(v2 - 288);

  return MEMORY[0x2821FC3C0](v0, v4, v1);
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return sub_266A6F968(v2 - 208, v2 - 256, v0, v1);
}

void OUTLINED_FUNCTION_35()
{

  sub_266A98BE8();
}

uint64_t SCDAFeedbackModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SCDAFeedbackModel.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_266A81738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E08, &qword_266AC1370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SCDAFeedbackModel.request.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 64));

  return sub_266A6DBC4(a1, v1 + 64);
}

uint64_t SCDAFeedbackModel.userInput.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 112));

  return sub_266A6DBC4(a1, v1 + 112);
}

uint64_t SCDAFeedbackModel.init(id:request:dataCollectionGroup:deviceSelectedByHAL:submitted:userInput:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, __int128 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a4;
  v14 = *a8;
  *(a9 + 40) = 0u;
  *(a9 + 56) = 0;
  *(a9 + 24) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v13;
  sub_266A81738(a5, a9 + 24);
  sub_266A6DBC4(a3, a9 + 64);
  *(a9 + 104) = a6;
  result = sub_266A6DBC4(a7, a9 + 112);
  *(a9 + 152) = v14;
  return result;
}

uint64_t sub_266A819B8()
{
  v0 = sub_266ABDFD4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266A81A0C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x74736575716572;
      break;
    case 4:
      result = 0x657474696D627573;
      break;
    case 5:
      result = 0x75706E4972657375;
      break;
    case 6:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266A81C64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266A819B8();
  *a2 = result;
  return result;
}

unint64_t sub_266A81C94@<X0>(unint64_t *a1@<X8>)
{
  result = sub_266A81A0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266A81CDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A81A04();
  *a1 = result;
  return result;
}

uint64_t sub_266A81D10(uint64_t a1)
{
  v2 = sub_266A82294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A81D4C(uint64_t a1)
{
  v2 = sub_266A82294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SCDAFeedbackModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E10, &qword_266AC1378);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v9 = a1[3];
  v10 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_266A82294();
  sub_266ABE2B4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    return sub_266A6CBB4(v26, &qword_2800B1E08, &qword_266AC1370);
  }

  else
  {
    v22[0] = 0;
    OUTLINED_FUNCTION_2_2();
    v24[0] = sub_266ABE044();
    v24[1] = v11;
    v21[0] = 1;
    sub_266A822E8();
    OUTLINED_FUNCTION_2_2();
    sub_266ABE084();
    v25 = 0;
    v21[175] = 2;
    sub_266A8233C();
    OUTLINED_FUNCTION_2_2();
    sub_266ABE024();
    memcpy(v21, v22, 0xA8uLL);
    if (sub_266A82390(v21) == 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v23[1] = 0;
      v23[2] = 0;
    }

    else
    {
      v15 = sub_266A6DA44();
      v13 = swift_allocObject();
      memcpy((v13 + 16), v21, 0xA8uLL);
      v14 = &type metadata for DeviceModel;
    }

    v23[0] = v13;
    v23[3] = v14;
    v23[4] = v15;
    sub_266A81738(v23, v26);
    v19 = &type metadata for RequestModel;
    v20 = &protocol witness table for RequestModel;
    sub_266A823A8();
    OUTLINED_FUNCTION_2_2();
    sub_266ABE084();
    sub_266A6DBC4(&v18, v28);
    LOBYTE(v18) = 4;
    OUTLINED_FUNCTION_2_2();
    v28[40] = sub_266ABE054() & 1;
    v19 = &type metadata for UserInputModel;
    v20 = &protocol witness table for UserInputModel;
    *&v18 = swift_allocObject();
    sub_266A82464();
    OUTLINED_FUNCTION_2_2();
    sub_266ABE084();
    sub_266A6DBC4(&v18, v29);
    sub_266A824B8();
    OUTLINED_FUNCTION_2_2();
    sub_266ABE084();
    v16 = OUTLINED_FUNCTION_1_1();
    v17(v16);
    v29[40] = v18;
    sub_266A8250C(v24, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    return sub_266A82544(v24);
  }
}

unint64_t sub_266A82294()
{
  result = qword_2800B1E18;
  if (!qword_2800B1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E18);
  }

  return result;
}

unint64_t sub_266A822E8()
{
  result = qword_2800B1E20;
  if (!qword_2800B1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E20);
  }

  return result;
}

unint64_t sub_266A8233C()
{
  result = qword_2800B1E28;
  if (!qword_2800B1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E28);
  }

  return result;
}

uint64_t sub_266A82390(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_266A823A8()
{
  result = qword_2800B1E30;
  if (!qword_2800B1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E30);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x26D5E9280);
  }

  return result;
}

uint64_t sub_266A8244C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

unint64_t sub_266A82464()
{
  result = qword_2800B1E38;
  if (!qword_2800B1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E38);
  }

  return result;
}

unint64_t sub_266A824B8()
{
  result = qword_2800B1E40;
  if (!qword_2800B1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E40);
  }

  return result;
}

uint64_t SCDAFeedbackModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E48, &unk_266AC1380);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23[-v11];
  sub_266A6FFD8((v3 + 8), v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
  if (swift_dynamicCast())
  {
    v29 = v8;
    v13 = v25[0];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_266A82294();
    sub_266ABE2C4();
    v15 = *v3;
    v16 = v3[1];
    LOBYTE(v26[0]) = 0;
    sub_266ABE114();
    if (v2)
    {
      (*(v29 + 8))(v12, v5);
    }

    else
    {
      LOBYTE(v26[0]) = *(v3 + 16);
      LOBYTE(v25[0]) = 1;
      sub_266A82A30();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_0_1();
      sub_266ABE154();
      sub_266A83CCC((v3 + 3), v27, &qword_2800B1E08, &qword_266AC1370);
      if (v28)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
        if (swift_dynamicCast())
        {
          memcpy(v25, v26, 0xA8uLL);
          memcpy(v24, v26, sizeof(v24));
          v23[7] = 2;
          sub_266A71BAC();
          OUTLINED_FUNCTION_0_1();
          sub_266ABE154();
          sub_266A72578(v25);
        }
      }

      else
      {
        sub_266A6CBB4(v27, &qword_2800B1E08, &qword_266AC1370);
      }

      v26[0] = v13;
      LOBYTE(v25[0]) = 3;
      sub_266A82A84();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_0_1();
      sub_266ABE154();

      v18 = *(v3 + 104);
      LOBYTE(v26[0]) = 4;
      OUTLINED_FUNCTION_0_1();
      sub_266ABE124();
      sub_266A6FFD8((v3 + 14), v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E68, &qword_266AC1390);
      if (swift_dynamicCast())
      {
        v19 = OUTLINED_FUNCTION_4_3();
        memcpy(v19, v20, 0x5AuLL);
        LOBYTE(v25[0]) = 5;
        sub_266A82B2C();
        OUTLINED_FUNCTION_4_3();
        OUTLINED_FUNCTION_0_1();
        sub_266ABE154();
        sub_266A82B80(v26);
      }

      else
      {
        memset(v25, 0, 48);
        v25[6] = 1;
        memset(&v25[7], 0, 34);
        sub_266A6CBB4(v25, &qword_2800B1E70, &qword_266AC1398);
      }

      LOBYTE(v26[0]) = *(v3 + 152);
      LOBYTE(v25[0]) = 6;
      sub_266A82AD8();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_0_1();
      sub_266ABE154();
      v21 = OUTLINED_FUNCTION_3_3();
      return v22(v21);
    }
  }

  else
  {
    sub_266A829DC();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_266A829DC()
{
  result = qword_2800B1E50;
  if (!qword_2800B1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E50);
  }

  return result;
}

unint64_t sub_266A82A30()
{
  result = qword_2800B1E58;
  if (!qword_2800B1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E58);
  }

  return result;
}

unint64_t sub_266A82A84()
{
  result = qword_2800B1E60;
  if (!qword_2800B1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E60);
  }

  return result;
}

unint64_t sub_266A82AD8()
{
  result = qword_2800B1E78;
  if (!qword_2800B1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E78);
  }

  return result;
}

unint64_t sub_266A82B2C()
{
  result = qword_2800B1E80;
  if (!qword_2800B1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E80);
  }

  return result;
}

uint64_t static SCDAFeedbackModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_266ABE1C4() & 1) == 0 || (sub_266A93848(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_266A83CCC(a1 + 24, v33, &qword_2800B1E08, &qword_266AC1370);
  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      nullsub_1(__dst);
      memcpy(v28, __dst, 0xA8uLL);
    }

    else
    {
      sub_266A83CC4(v28);
    }

    OUTLINED_FUNCTION_5_1(v35);
  }

  else
  {
    sub_266A6CBB4(v33, &qword_2800B1E08, &qword_266AC1370);
    sub_266A83CC4(v35);
  }

  sub_266A83CCC(a2 + 24, v30, &qword_2800B1E08, &qword_266AC1370);
  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
    if (swift_dynamicCast())
    {
      memcpy(v29, __src, sizeof(v29));
      nullsub_1(v29);
      memcpy(v28, v29, 0xA8uLL);
    }

    else
    {
      sub_266A83CC4(v28);
    }

    OUTLINED_FUNCTION_5_1(__dst);
  }

  else
  {
    sub_266A6CBB4(v30, &qword_2800B1E08, &qword_266AC1370);
    sub_266A83CC4(__dst);
  }

  memcpy(v28, v35, 0xA8uLL);
  memcpy(&v28[21], __dst, 0xA8uLL);
  memcpy(v29, v35, sizeof(v29));
  if (sub_266A82390(v29) == 1)
  {
    memcpy(__src, &v28[21], 0xA8uLL);
    if (sub_266A82390(__src) == 1)
    {
      OUTLINED_FUNCTION_5_1(v22);
      sub_266A6CBB4(v22, &qword_2800B1E98, &qword_266AC13B0);
      goto LABEL_27;
    }

LABEL_24:
    memcpy(__src, v28, sizeof(__src));
    v5 = &unk_2800B1E90;
    v6 = &unk_266AC13A8;
LABEL_25:
    sub_266A6CBB4(__src, v5, v6);
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_5_1(v22);
  OUTLINED_FUNCTION_5_1(v21);
  memcpy(__src, &v28[21], 0xA8uLL);
  if (sub_266A82390(__src) == 1)
  {
    OUTLINED_FUNCTION_5_1(v20);
    sub_266A83CCC(v22, v19, &qword_2800B1E98, &qword_266AC13B0);
    sub_266A72578(v20);
    goto LABEL_24;
  }

  memcpy(v20, &v28[21], sizeof(v20));
  sub_266A83CCC(v22, v19, &qword_2800B1E98, &qword_266AC13B0);
  v7 = static DeviceModel.== infix(_:_:)(v21, v20);
  memcpy(v18, v20, sizeof(v18));
  sub_266A72578(v18);
  memcpy(v19, v21, sizeof(v19));
  sub_266A72578(v19);
  OUTLINED_FUNCTION_5_1(v20);
  OUTLINED_FUNCTION_8_2(v20);
  if ((v7 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_27:
  sub_266A6FFD8(a1 + 64, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
  v8 = swift_dynamicCast();
  v9 = *&__src[0];
  sub_266A6FFD8(a2 + 64, __src);
  if (swift_dynamicCast())
  {
    v10 = *&v22[0];
  }

  else
  {
    v10 = 0;
  }

  if (!v8 || !v9)
  {
    if (!v10)
    {
      goto LABEL_39;
    }

LABEL_38:

    goto LABEL_50;
  }

  if (!v10)
  {
    goto LABEL_38;
  }

  v12 = sub_266A95214(v11);
  v13 = sub_266A95214(v10);
  if (!v12)
  {
    if (v13)
    {
      goto LABEL_49;
    }

    swift_bridgeObjectRelease_n();
LABEL_39:

    goto LABEL_40;
  }

  if (!v13)
  {
LABEL_49:

    swift_bridgeObjectRelease_n();
    goto LABEL_50;
  }

  v14 = sub_266A839A8(v12, v13);
  swift_bridgeObjectRelease_n();

  if ((v14 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_40:
  if (*(a1 + 104) != *(a2 + 104))
  {
    goto LABEL_50;
  }

  sub_266A6FFD8(a1 + 112, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E68, &qword_266AC1390);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(__src, 0, 48);
    *&__src[3] = 1;
    *(&__src[3] + 8) = 0u;
    *(&__src[4] + 8) = 0u;
    WORD4(__src[5]) = 0;
  }

  sub_266A6FFD8(a2 + 112, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v22, 0, sizeof(v22));
    v23 = 1;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  sub_266A83CCC(__src, v28, &qword_2800B1E70, &qword_266AC1398);
  sub_266A83CCC(v22, &v28[12], &qword_2800B1E70, &qword_266AC1398);
  if (v28[6] == 1)
  {
    if (v28[18] == 1)
    {
      OUTLINED_FUNCTION_8_2(v28);
      OUTLINED_FUNCTION_8_2(v22);
      OUTLINED_FUNCTION_8_2(__src);
LABEL_57:
      v15 = sub_266A937E0(*(a1 + 152), *(a2 + 152));
      return v15 & 1;
    }

    goto LABEL_54;
  }

  sub_266A83CCC(v28, v21, &qword_2800B1E70, &qword_266AC1398);
  if (v28[18] == 1)
  {
    sub_266A82B80(v21);
LABEL_54:
    sub_266A6CBB4(v28, &qword_2800B1EA0, &qword_266AC13B8);
    sub_266A6CBB4(v22, &qword_2800B1E70, &qword_266AC1398);
    v5 = &qword_2800B1E70;
    v6 = &qword_266AC1398;
    goto LABEL_25;
  }

  memcpy(v20, &v28[12], 0x5AuLL);
  v17 = static UserInputModel.== infix(_:_:)(v21, v20);
  sub_266A82B80(v20);
  sub_266A82B80(v21);
  sub_266A6CBB4(v28, &qword_2800B1E70, &qword_266AC1398);
  sub_266A6CBB4(v22, &qword_2800B1E70, &qword_266AC1398);
  sub_266A6CBB4(__src, &qword_2800B1E70, &qword_266AC1398);
  if (v17)
  {
    goto LABEL_57;
  }

LABEL_50:
  v15 = 0;
  return v15 & 1;
}

uint64_t SCDAFeedbackModel.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_266ABDB04();
  sub_266A6FFD8((v1 + 8), __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
  if (OUTLINED_FUNCTION_7_2())
  {
    v5 = sub_266A95214(*&v9[0]);
    if (v5)
    {
      sub_266A9C670(a1, v5);
    }
  }

  *(v1 + 16);
  sub_266ABDB04();

  sub_266A83CCC((v1 + 3), v11, &qword_2800B1E08, &qword_266AC1370);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
    if (swift_dynamicCast())
    {
      memcpy(v9, __src, 0xA8uLL);
      if (*&v9[7])
      {
        sub_266ABE264();
        sub_266ABDB04();
      }

      else
      {
        sub_266ABE264();
      }

      if (*(&v9[0] + 1))
      {
        sub_266ABE264();
        sub_266ABDB04();
      }

      else
      {
        sub_266ABE264();
      }

      sub_266A72578(v9);
    }
  }

  else
  {
    sub_266A6CBB4(v11, &qword_2800B1E08, &qword_266AC1370);
  }

  sub_266A6FFD8((v1 + 14), v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E68, &qword_266AC1390);
  if (swift_dynamicCast())
  {
    memcpy(__src, v9, 0x5AuLL);
    UserInputModel.hash(into:)();
    sub_266A82B80(__src);
  }

  else
  {
    memset(v9, 0, 48);
    *&v9[3] = 1;
    *(&v9[3] + 8) = 0u;
    *(&v9[4] + 8) = 0u;
    WORD4(v9[5]) = 0;
    sub_266A6CBB4(v9, &qword_2800B1E70, &qword_266AC1398);
  }

  sub_266A6FFD8((v1 + 8), __src);
  if (OUTLINED_FUNCTION_7_2())
  {
    v6 = sub_266A95214(*&v9[0]);
    if (v6)
    {
      sub_266A9C670(a1, v6);
    }
  }

  v7 = *(v1 + 104);
  sub_266ABE264();
  *(v1 + 152);
  sub_266ABDB04();
}

uint64_t SCDAFeedbackModel.hashValue.getter()
{
  sub_266ABE244();
  SCDAFeedbackModel.hash(into:)(v1);
  return sub_266ABE2A4();
}

uint64_t sub_266A8368C()
{
  sub_266ABE244();
  SCDAFeedbackModel.hash(into:)(v1);
  return sub_266ABE2A4();
}

uint64_t sub_266A836C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v4 - 2);
      if ((v5 & 0x80000000) != 0)
      {
        if ((v6 & 0x80000000) == 0)
        {
          return 0;
        }

        if (v6 != v5 || *(&v5 + 1) != *(&v6 + 1))
        {
          return 0;
        }
      }

      else
      {
        if ((v6 & 0x80000000) != 0)
        {
          return 0;
        }

        v7 = v6 == v5 && *(&v5 + 1) == *(&v6 + 1);
        v8 = v7 && *(v3 - 1) == *(v4 - 1);
        if (!v8 || *v3 != *v4)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_266A8377C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 168)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_266A6E078(__dst, v7);
      sub_266A6E078(v11, v7);
      v5 = static DeviceModel.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_266A72578(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_266A72578(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 168;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_266A8388C(uint64_t result, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || result == a2)
  {
    return 1;
  }

  v5 = 0;
  while (v4)
  {
    a3.i32[0] = *(result + v5 + 32);
    a4.i32[0] = *(a2 + v5 + 32);
    a4 = (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL);
    a3 = vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), a4);
    LODWORD(v6) = vminv_u16(a3) & (*(result + v5 + 38) == *(a2 + v5 + 38));
    if (*(result + v5 + 39) != *(a2 + v5 + 39))
    {
      LODWORD(v6) = 0;
    }

    if (*(result + v5 + 36) == *(a2 + v5 + 36))
    {
      v6 = v6;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 != 1 || v4-- == 1;
    v5 += 8;
    if (v7)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266A8394C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266A839A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_266A841B0(v3, v11);
      sub_266A841B0(v4, v10);
      sub_266A95358();
      v6 = v5;
      sub_266A95358();
      if (v6)
      {
        if (!v7)
        {
          goto LABEL_13;
        }

        v8 = sub_266A83AC4(v6, v7);

        sub_266A8420C(v10);
        sub_266A8420C(v11);
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7)
        {
LABEL_13:

          sub_266A8420C(v10);
          sub_266A8420C(v11);
          return 0;
        }

        sub_266A8420C(v10);
        sub_266A8420C(v11);
      }

      v3 += 72;
      v4 += 72;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_266A83AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantModel();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_266A6E9E4(v14, v11);
        sub_266A6E9E4(v15, v8);
        static ParticipantModel.== infix(_:_:)();
        v18 = v17;
        sub_266A6A63C(v8);
        sub_266A6A63C(v11);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_266A83C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_266ABE1C4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_266A83CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_266A83D38()
{
  result = qword_2800B1EA8;
  if (!qword_2800B1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1EA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_34SiriCrossDeviceArbitrationFeedback0C0_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266A83F14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_266A83F54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SCDAFeedbackModel.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266A840AC()
{
  result = qword_2800B1EB0;
  if (!qword_2800B1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1EB0);
  }

  return result;
}

unint64_t sub_266A84104()
{
  result = qword_2800B1EB8;
  if (!qword_2800B1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1EB8);
  }

  return result;
}

unint64_t sub_266A8415C()
{
  result = qword_2800B1EC0;
  if (!qword_2800B1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1EC0);
  }

  return result;
}

double sub_266A84288()
{
  v1 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_historyLengthSeconds;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266A842F0(double a1)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_historyLengthSeconds;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_266A84390()
{
  result = [objc_allocWithZone(type metadata accessor for GlobalsImpl()) init];
  qword_280BB6C58 = result;
  return result;
}

id GlobalsImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static GlobalsImpl.shared.getter()
{
  if (qword_280BB6C50 != -1)
  {
    swift_once();
  }

  v1 = qword_280BB6C58;

  return v1;
}

id sub_266A844AC()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    return internalBuild;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266A844F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_266A6B150(v2, v3);
}

id GlobalsImpl.init()()
{
  *&v0[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_historyLengthSeconds] = 0x4082C00000000000;
  v1 = &v0[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_localDeviceAssistantIdentifier];
  v2 = type metadata accessor for GlobalsImpl();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id GlobalsImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlobalsImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

SiriCrossDeviceArbitrationFeedback::MediaState_optional __swiftcall MediaState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_266A8480C()
{
  result = qword_2800B1ED8;
  if (!qword_2800B1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1ED8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t NotificationConstants.Actions.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_266ABDFD4();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_266A84A24()
{
  result = qword_2800B1EE8;
  if (!qword_2800B1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1EE8);
  }

  return result;
}

uint64_t sub_266A84A84@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return NotificationConstants.Actions.init(rawValue:)(a1);
}

_BYTE *sub_266A84AC4(_BYTE *result, int a2, int a3)
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

SiriCrossDeviceArbitrationFeedback::AlarmTimerState_optional __swiftcall AlarmTimerState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_266A84B90()
{
  result = qword_2800B1EF0;
  if (!qword_2800B1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1EF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AlarmTimerState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Array<A>.userFriendlyDeviceDescription.getter(uint64_t a1)
{
  swift_getKeyPath();
  v2 = sub_266A949F0(a1);

  return v2;
}

uint64_t Array<A>.userFriendlyProductTypes.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x277D84F90];
    do
    {
      sub_266A6FFD8(v2, v25);
      v4 = v26;
      v5 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v6 = Device.userFriendlyProductTypes.getter(v4, v5);
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v3 + 16);
        sub_266A6CFCC();
        v3 = v12;
      }

      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        sub_266A6CFCC();
        v3 = v13;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v8;
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  KeyPath = swift_getKeyPath();
  sub_266A94B78(v3, KeyPath, v15, v16, v17, v18, v19, v20, v24, v25[0]);
  v22 = v21;

  return v22;
}

SiriCrossDeviceArbitrationFeedback::UserFeedbackPromptFrequency_optional __swiftcall UserFeedbackPromptFrequency.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x726576656ELL && rawValue._object == 0xE500000000000000;
  if (v5 || (OUTLINED_FUNCTION_7_3() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x6F486E4165636E6FLL && object == 0xEA00000000007275;
    if (v8 || (OUTLINED_FUNCTION_7_3() & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 0x7961444165636E6FLL && object == 0xE800000000000000;
      if (v9 || (OUTLINED_FUNCTION_7_3() & 1) != 0)
      {

        v7 = 2;
      }

      else if (countAndFlagsBits == 0x7165527972657665 && object == 0xEC00000074736575)
      {

        v7 = 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_7_3();

        if (v11)
        {
          v7 = 3;
        }

        else
        {
          v7 = 4;
        }
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t UserFeedbackPromptFrequency.ordinal.getter()
{
  result = sub_266A85048(*v0, &unk_28783E9D8);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266A85048(unsigned __int8 a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t UserFeedbackPromptFrequency.debugDescription.getter()
{
  result = 0x726576654ELL;
  switch(*v0)
  {
    case 1:
      result = 0x206E412065636E4FLL;
      break;
    case 2:
      result = 0x4420412065636E4FLL;
      break;
    case 3:
      result = 0x6552207972657645;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t UserFeedbackPromptFrequency.description.getter()
{
  v1 = sub_266ABD814();
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v5 = sub_266ABDA64();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  *v0;
  sub_266ABDA04();
  sub_266A85294();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  return OUTLINED_FUNCTION_4();
}

unint64_t sub_266A85294()
{
  result = qword_2800B1C90;
  if (!qword_2800B1C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800B1C90);
  }

  return result;
}

uint64_t static UserFeedbackPromptFrequency.groupTitle.getter()
{
  v0 = sub_266ABD814();
  v1 = OUTLINED_FUNCTION_21(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v4 = sub_266ABDA64();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  sub_266ABDA04();
  sub_266A85294();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  return OUTLINED_FUNCTION_4();
}

uint64_t sub_266A853C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576656ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F486E4165636E6FLL && a2 == 0xEA00000000007275;
    if (v6 || (sub_266ABE1C4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7961444165636E6FLL && a2 == 0xE800000000000000;
      if (v7 || (sub_266ABE1C4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7165527972657665 && a2 == 0xEC00000074736575)
      {

        return 3;
      }

      else
      {
        v9 = sub_266ABE1C4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266A85530(char a1)
{
  result = 0x726576656ELL;
  switch(a1)
  {
    case 1:
      result = 0x6F486E4165636E6FLL;
      break;
    case 2:
      result = 0x7961444165636E6FLL;
      break;
    case 3:
      result = 0x7165527972657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266A855D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A853C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A85600@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A85528();
  *a1 = result;
  return result;
}

uint64_t sub_266A85628(uint64_t a1)
{
  v2 = sub_266A85C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A85664(uint64_t a1)
{
  v2 = sub_266A85C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A856C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A855BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_266A856EC(uint64_t a1)
{
  v2 = sub_266A85CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A85728(uint64_t a1)
{
  v2 = sub_266A85CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A85764(uint64_t a1)
{
  v2 = sub_266A85DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A857A0(uint64_t a1)
{
  v2 = sub_266A85DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A857DC(uint64_t a1)
{
  v2 = sub_266A85D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A85818(uint64_t a1)
{
  v2 = sub_266A85D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A85854(uint64_t a1)
{
  v2 = sub_266A85D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A85890(uint64_t a1)
{
  v2 = sub_266A85D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserFeedbackPromptFrequency.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F00, &qword_266AC1A50);
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v55 = v5;
  v56 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_3();
  v54 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F08, &qword_266AC1A58);
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v52 = v12;
  v53 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_3();
  v51 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F10, &qword_266AC1A60);
  v18 = OUTLINED_FUNCTION_1_0(v17);
  v49 = v19;
  v50 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_3();
  v48 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F18, &qword_266AC1A68);
  v25 = OUTLINED_FUNCTION_1_0(v24);
  v46 = v26;
  v47 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v29);
  v31 = &v46 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F20, &qword_266AC1A70);
  OUTLINED_FUNCTION_1_0(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v37);
  v39 = &v46 - v38;
  v40 = *v1;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A85C88();
  sub_266ABE2C4();
  switch(v40)
  {
    case 1:
      v58 = 1;
      sub_266A85D84();
      v42 = v48;
      OUTLINED_FUNCTION_5_2();
      v44 = v49;
      v43 = v50;
      goto LABEL_6;
    case 2:
      v59 = 2;
      sub_266A85D30();
      v42 = v51;
      OUTLINED_FUNCTION_5_2();
      v44 = v52;
      v43 = v53;
      goto LABEL_6;
    case 3:
      v60 = 3;
      sub_266A85CDC();
      v42 = v54;
      OUTLINED_FUNCTION_5_2();
      v44 = v55;
      v43 = v56;
LABEL_6:
      (*(v44 + 8))(v42, v43);
      break;
    default:
      v57 = 0;
      sub_266A85DD8();
      sub_266ABE0C4();
      (*(v46 + 8))(v31, v47);
      break;
  }

  return (*(v34 + 8))(v39, v32);
}

unint64_t sub_266A85C88()
{
  result = qword_2800B1F28;
  if (!qword_2800B1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1F28);
  }

  return result;
}

unint64_t sub_266A85CDC()
{
  result = qword_2800B1F30;
  if (!qword_2800B1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1F30);
  }

  return result;
}

unint64_t sub_266A85D30()
{
  result = qword_2800B1F38;
  if (!qword_2800B1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1F38);
  }

  return result;
}

unint64_t sub_266A85D84()
{
  result = qword_2800B1F40;
  if (!qword_2800B1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1F40);
  }

  return result;
}

unint64_t sub_266A85DD8()
{
  result = qword_2800B1F48;
  if (!qword_2800B1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1F48);
  }

  return result;
}

uint64_t UserFeedbackPromptFrequency.hashValue.getter()
{
  v1 = *v0;
  sub_266ABE244();
  MEMORY[0x26D5E8B00](v1);
  return sub_266ABE2A4();
}

void UserFeedbackPromptFrequency.init(from:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v79 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F50, &qword_266AC1A78);
  OUTLINED_FUNCTION_1_0(v82);
  v78 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_3();
  v81 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F58, &qword_266AC1A80);
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v75 = v10;
  v76 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_3();
  v77 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F60, &qword_266AC1A88);
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v73 = v17;
  v74 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F68, &qword_266AC1A90);
  OUTLINED_FUNCTION_1_0(v23);
  v72 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F70, &qword_266AC1A98);
  OUTLINED_FUNCTION_1_0(v30);
  v80 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v34);
  v36 = &v66 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A85C88();
  v38 = v83;
  sub_266ABE2B4();
  if (v38)
  {
    goto LABEL_9;
  }

  v69 = v23;
  v70 = v29;
  v71 = v22;
  v39 = v81;
  v40 = v82;
  v83 = a1;
  v41 = v36;
  v42 = sub_266ABE0B4();
  sub_266A86550(v42, 0);
  if (v45 == v46 >> 1)
  {
    goto LABEL_8;
  }

  v68 = 0;
  if (v45 >= (v46 >> 1))
  {
    __break(1u);
    return;
  }

  v47 = *(v44 + v45);
  sub_266A86B48(v45 + 1, v46 >> 1, v43, v44, v45, v46);
  v49 = v48;
  v51 = v50;
  swift_unknownObjectRelease();
  if (v49 != v51 >> 1)
  {
LABEL_8:
    v57 = v80;
    v58 = sub_266ABDEF4();
    swift_allocError();
    v60 = v59;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F78, &qword_266AC1AA0) + 48);
    *v60 = &type metadata for UserFeedbackPromptFrequency;
    sub_266ABDFF4();
    sub_266ABDEE4();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v41, v30);
    a1 = v83;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return;
  }

  v52 = v79;
  v53 = v80;
  v67 = v47;
  v54 = v47;
  v55 = v78;
  switch(v54)
  {
    case 1:
      v85 = 1;
      sub_266A85D84();
      v62 = v71;
      OUTLINED_FUNCTION_6_2();
      swift_unknownObjectRelease();
      v64 = v73;
      v63 = v74;
      goto LABEL_18;
    case 2:
      v86 = 2;
      sub_266A85D30();
      v62 = v77;
      OUTLINED_FUNCTION_6_2();
      swift_unknownObjectRelease();
      v64 = v75;
      v63 = v76;
LABEL_18:
      (*(v64 + 8))(v62, v63);
      goto LABEL_19;
    case 3:
      v87 = 3;
      sub_266A85CDC();
      v65 = v68;
      sub_266ABDFE4();
      if (v65)
      {
        (*(v53 + 8))(v41, v30);
        swift_unknownObjectRelease();
        a1 = v83;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
      (*(v55 + 8))(v39, v40);
LABEL_19:
      (*(v53 + 8))(v41, v30);
      *v52 = v67;
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      break;
    default:
      v84 = 0;
      sub_266A85DD8();
      v56 = v70;
      OUTLINED_FUNCTION_6_2();
      swift_unknownObjectRelease();
      (*(v72 + 8))(v56, v69);
      goto LABEL_19;
  }
}

uint64_t sub_266A86528@<X0>(uint64_t *a1@<X8>)
{
  result = UserFeedbackPromptFrequency.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_266A86550(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_2();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_266A8658C()
{
  result = qword_2800B1F80;
  if (!qword_2800B1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1F80);
  }

  return result;
}

unint64_t sub_266A865E4()
{
  result = qword_2800B1F88;
  if (!qword_2800B1F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1F90, &qword_266AC1B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1F88);
  }

  return result;
}

_BYTE *sub_266A86664(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266A86784()
{
  result = qword_2800B1F98;
  if (!qword_2800B1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1F98);
  }

  return result;
}

unint64_t sub_266A867DC()
{
  result = qword_2800B1FA0;
  if (!qword_2800B1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1FA0);
  }

  return result;
}

unint64_t sub_266A86834()
{
  result = qword_2800B1FA8;
  if (!qword_2800B1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1FA8);
  }

  return result;
}

unint64_t sub_266A8688C()
{
  result = qword_2800B1FB0;
  if (!qword_2800B1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1FB0);
  }

  return result;
}

unint64_t sub_266A868E4()
{
  result = qword_2800B1FB8;
  if (!qword_2800B1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1FB8);
  }

  return result;
}

unint64_t sub_266A8693C()
{
  result = qword_2800B1FC0;
  if (!qword_2800B1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1FC0);
  }

  return result;
}

unint64_t sub_266A86994()
{
  result = qword_2800B1FC8;
  if (!qword_2800B1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1FC8);
  }

  return result;
}

unint64_t sub_266A869EC()
{
  result = qword_2800B1FD0;
  if (!qword_2800B1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1FD0);
  }

  return result;
}

unint64_t sub_266A86A44()
{
  result = qword_2800B1FD8;
  if (!qword_2800B1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1FD8);
  }

  return result;
}

unint64_t sub_266A86A9C()
{
  result = qword_2800B1FE0;
  if (!qword_2800B1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1FE0);
  }

  return result;
}

unint64_t sub_266A86AF4()
{
  result = qword_2800B1FE8;
  if (!qword_2800B1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1FE8);
  }

  return result;
}

uint64_t sub_266A86B48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  v2 = *(v0 - 208);

  return sub_266ABDFE4();
}

uint64_t Device.saturate(device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  v7 = v6(a2, a3);
  if (v8)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9;
  }

  if (v11)
  {
    v12 = OUTLINED_FUNCTION_1();
    (v6)(v12);
  }

  else
  {
    OUTLINED_FUNCTION_3_4();
    v14 = *(v13 + 40);
    v15 = OUTLINED_FUNCTION_5_3();
    v16(v15);
  }

  v17 = *(a3 + 48);
  OUTLINED_FUNCTION_8_4();
  v18();
  v19 = *(a3 + 64);
  v20 = OUTLINED_FUNCTION_5();
  if ((v19)(v20) == 0x30303030303023 && v21 == 0xE700000000000000)
  {
  }

  else
  {
    v23 = sub_266ABE1C4();

    if ((v23 & 1) == 0)
    {
      v24 = OUTLINED_FUNCTION_1();
      v19(v24);
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_3_4();
  v26 = *(v25 + 64);
  v27 = OUTLINED_FUNCTION_5_3();
  v28(v27);
LABEL_20:
  v29 = *(a3 + 72);
  OUTLINED_FUNCTION_8_4();
  v30();
  v31 = *(a3 + 88);
  v32 = OUTLINED_FUNCTION_5();
  v33 = v31(v32);
  if (v34)
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v35;
  }

  if (v37)
  {
    v38 = OUTLINED_FUNCTION_1();
    v31(v38);
  }

  else
  {
    OUTLINED_FUNCTION_3_4();
    v40 = *(v39 + 88);
    v41 = OUTLINED_FUNCTION_5_3();
    v42(v41);
  }

  v43 = *(a3 + 96);
  OUTLINED_FUNCTION_8_4();
  v44();
  v45 = *(a3 + 136);
  v46 = OUTLINED_FUNCTION_5();
  v47 = *(v45(v46) + 16);

  if (v47)
  {
    v48 = OUTLINED_FUNCTION_1();
    v49 = v45(v48);
  }

  else
  {
    OUTLINED_FUNCTION_3_4();
    v51 = *(v50 + 136);
    v52 = OUTLINED_FUNCTION_5_3();
    v49 = v53(v52);
  }

  (*(a3 + 144))(v49, a2, a3);
  v54 = *(a3 + 112);
  v55 = OUTLINED_FUNCTION_5();
  v54(v55);

  if (v100)
  {
    v56 = v99 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v56 = 0;
  }

  if (v100)
  {
    v57 = v100;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  v58 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v58 = v56;
  }

  if (v58)
  {
    v59 = OUTLINED_FUNCTION_1();
    v54(v59);
  }

  else
  {
    v60 = *(a1 + 24);
    v61 = *(a1 + 32);
    v62 = OUTLINED_FUNCTION_10_2();
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v64 = *(v61 + 112);
    v65 = OUTLINED_FUNCTION_5_3();
    v66(v65);
  }

  v67 = OUTLINED_FUNCTION_1();
  v54(v67);

  (*(a3 + 120))(&v99, a2, a3);
  v68 = *(a3 + 168);
  v69 = OUTLINED_FUNCTION_5();
  v70(v69);
  if (v71)
  {
  }

  OUTLINED_FUNCTION_3_4();
  v73 = *(v72 + 168);
  v74 = OUTLINED_FUNCTION_5_3();
  v75(v74);
  v76 = *(a3 + 176);
  OUTLINED_FUNCTION_8_4();
  v77();
  v78 = *(a3 + 192);
  v79 = OUTLINED_FUNCTION_5();
  v80(v79);
  if (v81)
  {
  }

  OUTLINED_FUNCTION_3_4();
  v83 = *(v82 + 192);
  v84 = OUTLINED_FUNCTION_5_3();
  v85(v84);
  v86 = *(a3 + 200);
  OUTLINED_FUNCTION_8_4();
  v87();
  v88 = *(a3 + 16);
  v89 = OUTLINED_FUNCTION_5();
  v90(v89);
  if (v91)
  {
  }

  OUTLINED_FUNCTION_3_4();
  v93 = *(v92 + 16);
  v94 = OUTLINED_FUNCTION_5_3();
  v96 = v95(v94);
  v97 = *(a3 + 24);

  return v97(v96);
}

uint64_t Device.userFriendlyProductTypes.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 136))();
  swift_getKeyPath();
  v2 = OUTLINED_FUNCTION_9_2();
  sub_266A94B78(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  v11 = v10;

  return v11;
}

uint64_t DeviceName.userProvided.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_9_2();
}

uint64_t DeviceName.userProvided.setter()
{
  OUTLINED_FUNCTION_11_2();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceName.fallback.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_9_2();
}

uint64_t DeviceName.fallback.setter()
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t _s34SiriCrossDeviceArbitrationFeedback0C4NameV10guaranteedSSvg_0()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v1 = v0[2];
    v3 = v0[3];
  }

  return v1;
}

uint64_t static DeviceName.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_266ABE1C4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  OUTLINED_FUNCTION_9_2();

  return sub_266ABE1C4();
}

uint64_t sub_266A872EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766F725072657375 && a2 == 0xEC00000064656469;
  if (v4 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266ABE1C4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266A873C0(char a1)
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](a1 & 1);
  return sub_266ABE2A4();
}

uint64_t sub_266A87410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A872EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A87438@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A873B8();
  *a1 = result;
  return result;
}

uint64_t sub_266A87460(uint64_t a1)
{
  v2 = sub_266A72470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A8749C(uint64_t a1)
{
  v2 = sub_266A72470();

  return MEMORY[0x2821FE720](a1, v2);
}

void DeviceName.init(from:)()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2000, &qword_266AC20C8);
  OUTLINED_FUNCTION_1_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = v2[3];
  v14 = v2[4];
  v15 = OUTLINED_FUNCTION_23_1();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_266A72470();
  sub_266ABE2B4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v17 = sub_266ABE004();
    v19 = v18;
    v20 = sub_266ABE044();
    v22 = v21;
    v23 = *(v7 + 8);
    v25 = v20;
    v23(v12, v5);
    *v4 = v17;
    v4[1] = v19;
    v4[2] = v25;
    v4[3] = v22;

    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  OUTLINED_FUNCTION_30_1();
}

void *Device.symbols.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v126 = 0;
  v6 = 0xD000000000000011;
  v7 = OUTLINED_FUNCTION_1_0(a1);
  v122 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_2();
  v117 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_33_1();
  v120 = v14;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0) - 8) + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v16);
  v18 = (&v112 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2008, &qword_266AC20D8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_4_2();
  v125 = v21 - v22;
  v24 = MEMORY[0x28223BE20](v23);
  v128 = &v112 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v112 - v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_33_1();
  v118 = v29;
  v30 = *(a2 + 160);
  v132 = a1;
  v123 = v30;
  v124 = a2 + 160;
  v30(v135, a1, a2);
  strcpy(v131, "noneofthese");
  HIDWORD(v131[1]) = -352321536;
  switch(LOBYTE(v135[0]))
  {
    case 9:

      goto LABEL_4;
    default:
      v31 = sub_266ABE1C4();

      if (v31)
      {
LABEL_4:
        v32 = "thermometer.medium";
      }

      else
      {
        v32 = "f keys found, expected one.";
        v6 = 0xD000000000000013;
      }

      v130 = v32 | 0x8000000000000000;
      v33 = a2 + 136;
      v34 = *(a2 + 136);
      v35 = v132;
      v36 = OUTLINED_FUNCTION_24_1();
      v37 = v34(v36);
      if (!v37[2])
      {

        return v6;
      }

      v39 = v37[4];
      v38 = v37[5];
      v127 = v39;
      v129 = v38;

      v40 = OUTLINED_FUNCTION_24_1();
      v41 = *(v34(v40) + 16);

      v114 = v6;
      v116 = v3;
      v115 = v34;
      v121 = a2;
      if (v41 < 2)
      {
        v119 = 0;
        v120 = 0;
        v76 = 0;
LABEL_20:
        v34 = v18;
        v18 = v126;
        goto LABEL_21;
      }

      v42 = OUTLINED_FUNCTION_24_1();
      v43 = v34(v42);
      if (v43[2] < 2uLL)
      {
        __break(1u);
        goto LABEL_53;
      }

      v44 = v43[6];
      v45 = v43[7];

      v35 = v132;
      v46 = sub_266A88628(v44, v45);
      if ((v47 & 1) == 0)
      {
        v76 = v46;

        v119 = 0;
        v120 = 0;
        goto LABEL_20;
      }

      v48 = OUTLINED_FUNCTION_24_1();
      v49 = v115;
      v113 = a2 + 136;
      v50 = v115(v48);
      if (v50[2] < 2uLL)
      {
        __break(1u);
        goto LABEL_55;
      }

      v34 = v18;
      v51 = v50[6];
      v52 = v50[7];

      v53 = sub_266ABD864();
      __swift_storeEnumTagSinglePayload(v18, 1, 1, v53);
      v35 = v118;
      sub_266ABD894();
      sub_266A8A120(v35, v28);
      v54 = sub_266ABD8B4();
      result = __swift_getEnumTagSinglePayload(v28, 1, v54);
      v18 = v126;
      if (result == 1)
      {
        goto LABEL_59;
      }

      sub_266A8A190();
      sub_266ABD874();
      (*(*(v54 - 8) + 8))(v28, v54);
      v56 = OUTLINED_FUNCTION_21_2();
      v58 = sub_266A88754(v56, v57, 0, 0);
      if (!v18)
      {
        v108 = v58;
        v109 = [v58 name];
        v110 = sub_266ABDA84();
        v119 = v111;
        v120 = v110;

        sub_266A6CBB4(v35, &qword_2800B2008, &qword_266AC20D8);
        v76 = 0;
        v35 = v132;
        goto LABEL_51;
      }

      v44 = v122;
      v45 = v116;
      if (qword_280BB6C30 != -1)
      {
        goto LABEL_56;
      }

      while (1)
      {
        v59 = sub_266ABD8D4();
        __swift_project_value_buffer(v59, qword_280BB7028);
        v60 = v120;
        v61 = v132;
        (*(v44 + 16))(v120, v45, v132);
        v62 = v18;
        v63 = sub_266ABD8C4();
        v64 = sub_266ABDD64();

        if (os_log_type_enabled(v63, v64))
        {
          break;
        }

        (*(v44 + 8))(v60, v61);
        sub_266A6CBB4(v35, &qword_2800B2008, &qword_266AC20D8);
        v119 = 0;
        v120 = 0;
        v76 = 0;
        v18 = 0;
        v35 = v61;
LABEL_51:
        v33 = v113;
LABEL_21:
        v123(v135, v35, v121);
        v35 = v128;
        v77 = 0x656E6F687069;
        switch(LOBYTE(v135[0]))
        {
          case 1:
            v79 = 0xE400000000000000;
            v80 = 1684107369;
            goto LABEL_30;
          case 2:
            v77 = 1685024873;
            v78 = 0xE400000000000000;
            goto LABEL_27;
          case 3:
            v79 = 0xE500000000000000;
            v80 = 0x6863746177;
            goto LABEL_30;
          case 4:
            v79 = 0xE700000000000000;
            v80 = 0x7674656C707061;
            goto LABEL_30;
          case 5:

            goto LABEL_32;
          case 6:
            v79 = 0xE300000000000000;
            v80 = 6513005;
            goto LABEL_30;
          case 7:
            strcpy(v131, "realitydevice");
            HIWORD(v131[1]) = -4864;
            break;
          case 8:
            v79 = 0xE700000000000000;
            v80 = 0x6E776F6E6B6E75;
LABEL_30:
            v131[0] = v80;
            v131[1] = v79;
            break;
          case 9:
            break;
          default:
            v78 = 0xE600000000000000;
LABEL_27:
            v131[0] = v77;
            v131[1] = v78;
            break;
        }

        v81 = sub_266ABE1C4();

        if (v81)
        {
LABEL_32:
          v82 = v125;
          if ((v76 & 2) == 0)
          {
            v76 |= 2uLL;
          }
        }

        else
        {
          v82 = v125;
        }

        v83 = sub_266ABD864();
        __swift_storeEnumTagSinglePayload(v34, 1, 1, v83);

        sub_266ABD894();
        sub_266A8A120(v35, v82);
        v84 = sub_266ABD8B4();
        result = __swift_getEnumTagSinglePayload(v82, 1, v84);
        if (result == 1)
        {
          goto LABEL_58;
        }

        sub_266A8A190();
        v85 = sub_266ABD874();
        v87 = v86;
        v88 = *(*(v84 - 8) + 8);
        v89 = OUTLINED_FUNCTION_21_2();
        v90(v89);
        v91 = sub_266A88754(v85, v87, 0, v76);
        if (!v18)
        {
          v93 = v91;

          v94 = [v93 name];
          v6 = sub_266ABDA84();

          sub_266A6CBB4(v35, &qword_2800B2008, &qword_266AC20D8);
          return v6;
        }

        v135[0] = v127;
        v135[1] = v129;
        v133 = 0x45544154532D4245;
        v134 = 0xE800000000000000;
        sub_266A6D62C();
        v92 = sub_266ABDE04();

        if (v92)
        {

          sub_266A6CBB4(v35, &qword_2800B2008, &qword_266AC20D8);
          return 0xD000000000000012;
        }

        if (qword_280BB6C30 != -1)
        {
LABEL_53:
          OUTLINED_FUNCTION_10();
        }

        v95 = sub_266ABD8D4();
        __swift_project_value_buffer(v95, qword_280BB7028);
        v96 = v122;
        v97 = v117;
        v98 = v132;
        (*(v122 + 16))(v117, v116, v132);
        v99 = v18;
        v100 = sub_266ABD8C4();
        v45 = sub_266ABDD64();

        if (!os_log_type_enabled(v100, v45))
        {

          (*(v96 + 8))(v97, v98);
          v107 = v35;
          goto LABEL_45;
        }

        v44 = swift_slowAlloc();
        v35 = v33;
        v49 = swift_slowAlloc();
        v131[1] = swift_slowAlloc();
        v135[0] = v131[1];
        *v44 = 136315394;
        v101 = (v115)(v98, v121);
        if (v101[2])
        {
          v102 = v101[4];
          v103 = v101[5];

          (*(v122 + 8))(v97, v98);
          v104 = sub_266A66D34(v102, v103, v135);

          *(v44 + 4) = v104;
          *(v44 + 12) = 2112;
          v105 = v18;
          v106 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 14) = v106;
          *v49 = v106;
          _os_log_impl(&dword_266A65000, v100, v45, "#feedback - Unknown symbol for product type %s. Error: %@", v44, 0x16u);
          sub_266A6CBB4(v49, &unk_2800B2110, &unk_266AC20E0);
          OUTLINED_FUNCTION_8();
          __swift_destroy_boxed_opaque_existential_1Tm(v131[1]);
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_8();

          v107 = v128;
LABEL_45:
          sub_266A6CBB4(v107, &qword_2800B2008, &qword_266AC20D8);
          return v114;
        }

LABEL_55:
        __break(1u);
LABEL_56:
        OUTLINED_FUNCTION_10();
      }

      LODWORD(v126) = v64;
      v65 = v61;
      v66 = v60;
      v67 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v135[0] = v119;
      *v67 = 136315394;
      v35 = v65;
      v68 = v65;
      v69 = v113;
      result = v49(v68, v121);
      if (result[2] >= 2uLL)
      {
        v33 = v69;
        v70 = result[6];
        v71 = result[7];

        (*(v122 + 8))(v66, v35);
        v72 = sub_266A66D34(v70, v71, v135);

        *(v67 + 4) = v72;
        *(v67 + 12) = 2112;
        v73 = v18;
        v74 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 14) = v74;
        v75 = v112;
        *v112 = v74;
        _os_log_impl(&dword_266A65000, v63, v126, "#feedback - Unknown accessory symbol for product type %s. Error: %@", v67, 0x16u);
        sub_266A6CBB4(v75, &unk_2800B2110, &unk_266AC20E0);
        OUTLINED_FUNCTION_8();
        __swift_destroy_boxed_opaque_existential_1Tm(v119);
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_8();

        sub_266A6CBB4(v118, &qword_2800B2008, &qword_266AC20D8);
        v119 = 0;
        v120 = 0;
        v76 = 0;
        v18 = 0;
        goto LABEL_21;
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
  }
}

uint64_t sub_266A88628(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000011 && 0x8000000266ABF520 == a2;
  if (v2 || (sub_266ABE1C4() & 1) != 0)
  {
    return 0x800000;
  }

  sub_266A6D62C();
  if (sub_266ABDE04())
  {
    return 0x400000;
  }

  if (sub_266ABDE04())
  {
    return 0x1000000;
  }

  return 0;
}

id sub_266A88754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_266ABDA74();

  v12[0] = 0;
  v7 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v6 withResolutionStrategy:a3 variantOptions:a4 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_266ABD594();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void static Device.roomNameHash(assistantIdentifier:roomName:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_266ABD964();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_266ABD954();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_2();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_33_1();
  if (a4 && a2)
  {
    v60 = a1;
    v61 = a2;
    v57 = v25;
    v58 = v23;
    v26 = v24;

    v27 = OUTLINED_FUNCTION_29_1();
    MEMORY[0x26D5E83C0](v27);
    sub_266A6C69C(v60, v61);
    sub_266A6CD34(&qword_2800B1D68, MEMORY[0x277CC5540]);
    sub_266ABD944();
    v28 = OUTLINED_FUNCTION_23_1();
    sub_266A6CCDC(v28, v29);
    v30 = OUTLINED_FUNCTION_23_1();
    sub_266A6CD7C(v30, v31, v14);
    v32 = OUTLINED_FUNCTION_23_1();
    sub_266A6A5B4(v32, v33);
    sub_266ABD934();
    v34 = *(v10 + 8);
    v35 = OUTLINED_FUNCTION_24_1();
    v36(v35);
    v37 = OUTLINED_FUNCTION_23_1();
    sub_266A6A5B4(v37, v38);
    v39 = *(v57 + 16);
    v56 = v26;
    v39(v21, v26, v58);
    sub_266A6CD34(&qword_2800B2020, MEMORY[0x277CC5290]);
    sub_266ABDB84();
    v40 = v60;
    v41 = v61;
    v42 = *(v60 + 16);
    v43 = MEMORY[0x277D84F90];
    if (v61 == v42)
    {
LABEL_4:

      v60 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
      sub_266A6D26C();
      sub_266ABD9E4();

      (*(v57 + 8))(v56, v58);
    }

    else
    {
      v59 = xmmword_266AC0EB0;
      v44 = v61;
      while ((v41 & 0x8000000000000000) == 0)
      {
        if (v44 >= *(v40 + 16))
        {
          goto LABEL_16;
        }

        v45 = *(v40 + 32 + v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF0, &unk_266AC0FF0);
        v46 = swift_allocObject();
        *(v46 + 16) = v59;
        *(v46 + 56) = MEMORY[0x277D84B78];
        *(v46 + 64) = MEMORY[0x277D84BC0];
        *(v46 + 32) = v45;
        v47 = sub_266ABDAA4();
        v49 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = *(v43 + 16);
          sub_266A6CFCC();
          v43 = v53;
        }

        v50 = *(v43 + 16);
        if (v50 >= *(v43 + 24) >> 1)
        {
          sub_266A6CFCC();
          v43 = v54;
        }

        ++v44;
        *(v43 + 16) = v50 + 1;
        v51 = v43 + 16 * v50;
        *(v51 + 32) = v47;
        *(v51 + 40) = v49;
        if (v42 == v44)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }
  }
}

uint64_t Device.description.getter(uint64_t a1, uint64_t a2)
{
  v44[0] = 0x3D656D616ELL;
  v44[1] = 0xE500000000000000;
  (*(a2 + 112))(&v41);
  v3 = v42;
  if (v42)
  {
    v4 = v41;
  }

  else
  {
    v4 = v43;
  }

  MEMORY[0x26D5E83C0](v4, v3);

  v41 = v44[0];
  v42 = v44[1];
  v5 = *(a2 + 16);
  v6 = OUTLINED_FUNCTION_1();
  v7(v6);
  if (v8)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0]();

    OUTLINED_FUNCTION_12_2();
  }

  v9 = *(a2 + 168);
  v10 = OUTLINED_FUNCTION_1();
  v12 = v11(v10);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    sub_266ABDEA4();

    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0](v14, v15);

    OUTLINED_FUNCTION_12_2();
  }

  v16 = *(a2 + 192);
  v17 = OUTLINED_FUNCTION_1();
  v18(v17);
  if (v19)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0]();

    OUTLINED_FUNCTION_12_2();
  }

  v20 = *(a2 + 40);
  v21 = OUTLINED_FUNCTION_1();
  v22(v21);
  if (v23)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0]();

    OUTLINED_FUNCTION_12_2();
  }

  v24 = *(a2 + 216);
  v25 = OUTLINED_FUNCTION_1();
  v26(v25);
  if (v27)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0]();

    OUTLINED_FUNCTION_12_2();
  }

  v28 = *(a2 + 88);
  v29 = OUTLINED_FUNCTION_1();
  v30(v29);
  if (v31)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0]();

    OUTLINED_FUNCTION_12_2();
  }

  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_266ABDEA4();

  v44[0] = 0xD000000000000010;
  v44[1] = 0x8000000266ABFE90;
  v32 = *(a2 + 136);
  v33 = OUTLINED_FUNCTION_1();
  v34(v33);
  MEMORY[0x26D5E84F0]();

  v35 = OUTLINED_FUNCTION_10_2();
  MEMORY[0x26D5E83C0](v35);

  OUTLINED_FUNCTION_12_2();

  strcpy(v44, " | enclosure=");
  HIWORD(v44[1]) = -4864;
  v36 = *(a2 + 64);
  v37 = OUTLINED_FUNCTION_1();
  v39 = v38(v37);
  MEMORY[0x26D5E83C0](v39);

  MEMORY[0x26D5E83C0](v44[0], v44[1]);

  return v41;
}

uint64_t DeviceModel.idsId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_9_2();
}

uint64_t DeviceModel.idsId.setter()
{
  OUTLINED_FUNCTION_11_2();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceModel.build.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_9_2();
}

uint64_t DeviceModel.build.setter()
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DeviceModel.enclosureColor.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_9_2();
}

uint64_t DeviceModel.enclosureColor.setter()
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t DeviceModel.locale.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_9_2();
}

uint64_t DeviceModel.locale.setter()
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t DeviceModel.name.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 64);
  *(a1 + 8) = *(v1 + 72);
  *(a1 + 24) = v2;
}

__n128 DeviceModel.name.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1[4].n128_u64[1];
  v5 = v1[5].n128_u64[1];

  result = v7;
  v1[4] = v7;
  v1[5].n128_u64[0] = v2;
  v1[5].n128_u64[1] = v3;
  return result;
}

uint64_t DeviceModel.productTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t DeviceModel.assistantId.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_9_2();
}

uint64_t DeviceModel.assistantId.setter()
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t DeviceModel.speechId.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_9_2();
}

uint64_t DeviceModel.speechId.setter()
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t DeviceModel.roomName.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_9_2();
}

uint64_t DeviceModel.roomName.setter()
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t DeviceModel.roomNameHash.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_9_2();
}

uint64_t DeviceModel.roomNameHash.setter()
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t static DeviceModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v15 = *(a1 + 112);
  v14 = *(a1 + 120);
  v16 = *(a1 + 128);
  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);
  v21 = *(a2 + 64);
  v22 = *(a2 + 80);
  v23 = *(a2 + 88);
  v24 = *(a2 + 112);
  v25 = *(a2 + 128);
  if (v4)
  {
    v26 = *(a2 + 8);
    if (v26)
    {
      if (*a1 != *a2 || v4 != v26)
      {
        v28 = *(a2 + 8);
        goto LABEL_21;
      }

      return 1;
    }
  }

  if (v15 && v24)
  {
    if (v13 != *(a2 + 104) || v15 != v24)
    {
      v30 = *(a2 + 104);
      v31 = *(a2 + 112);
      goto LABEL_21;
    }

    return 1;
  }

  if (v16 && v25)
  {
    if (v14 != *(a2 + 120) || v16 != v25)
    {
      goto LABEL_21;
    }

    return 1;
  }

  v41 = *(a2 + 64);
  v42 = v9;
  v39 = v8;
  v40 = v7;
  if ((sub_266A83C38(v12, *(a2 + 96)) & 1) == 0)
  {
    return 0;
  }

  v46 = v42;
  v47 = v10;
  v48 = v11;
  v43 = v41;
  v44 = v22;
  v45 = v23;
  if ((static DeviceName.== infix(_:_:)(&v46, &v43) & 1) == 0)
  {
    return 0;
  }

  if (!v6)
  {
    v34 = v39;
    v35 = v40;
    if (!v17)
    {
      goto LABEL_33;
    }

    return 0;
  }

  v34 = v39;
  v35 = v40;
  if (!v17)
  {
    return 0;
  }

  if (v5 != v18 || v6 != v17)
  {
    OUTLINED_FUNCTION_10_2();
    v37 = sub_266ABE1C4();
    v34 = v39;
    v35 = v40;
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_33:
  result = (v34 | v20) == 0;
  if (!v34 || !v20)
  {
    return result;
  }

  if (v35 == v19 && v34 == v20)
  {
    return 1;
  }

LABEL_21:

  return sub_266ABE1C4();
}

uint64_t DeviceModel.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (!v0[14])
  {
    sub_266ABE264();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_266ABE264();
  }

  v3 = v0[13];
  sub_266ABE264();
  OUTLINED_FUNCTION_10_2();
  sub_266ABDB04();
  if (!v2)
  {
    return sub_266ABE264();
  }

LABEL_3:
  sub_266ABE264();

  return sub_266ABDB04();
}

uint64_t DeviceModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[13];
  v4 = v0[14];
  sub_266ABE244();
  sub_266ABE264();
  if (v4)
  {
    sub_266ABDB04();
  }

  sub_266ABE264();
  if (v2)
  {
    sub_266ABDB04();
  }

  return sub_266ABE2A4();
}

uint64_t sub_266A89974()
{
  v0 = sub_266ABDFD4();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266A899D0()
{
  sub_266ABE244();
  DeviceModel.hash(into:)();
  return sub_266ABE2A4();
}

uint64_t sub_266A89A30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266A89974();
  *a2 = result;
  return result;
}

uint64_t sub_266A89A60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266A71FF8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266A89A8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A899C0();
  *a1 = result;
  return result;
}

uint64_t sub_266A89AC0(uint64_t a1)
{
  v2 = sub_266A71F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A89AFC(uint64_t a1)
{
  v2 = sub_266A71F88();

  return MEMORY[0x2821FE720](a1, v2);
}

void DeviceModel.init(from:)()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2028, &qword_266AC20F8);
  OUTLINED_FUNCTION_1_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = v2[3];
  v12 = v2[4];
  v49 = v2;
  v13 = __swift_project_boxed_opaque_existential_1(v2, v11);
  sub_266A71F88();
  sub_266ABE2B4();
  if (v0)
  {
    OUTLINED_FUNCTION_6_3();
    v50 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);

    if (v10)
    {
    }

    if (v13)
    {
    }
  }

  else
  {
    v14 = v4;
    LOBYTE(v54) = 0;
    v15 = sub_266ABE004();
    v44 = v16;
    OUTLINED_FUNCTION_1_3(1);
    v17 = sub_266ABE004();
    v43 = v18;
    OUTLINED_FUNCTION_1_3(2);
    v42 = sub_266ABE044();
    v48 = v19;
    OUTLINED_FUNCTION_1_3(3);
    v40 = sub_266ABE004();
    v41 = v15;
    v50 = v20;
    LOBYTE(v53[0]) = 4;
    sub_266A8A1D4();
    sub_266ABE084();
    v38 = v54;
    v39 = v56;
    v46 = v55;
    v47 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    LOBYTE(v53[0]) = 5;
    sub_266A7250C(&qword_2800B2040);
    sub_266ABE084();
    v45 = v54;
    OUTLINED_FUNCTION_1_3(6);
    v21 = sub_266ABE004();
    v52 = v22;
    OUTLINED_FUNCTION_1_3(7);
    v37 = sub_266ABE004();
    v51 = v23;
    OUTLINED_FUNCTION_1_3(8);
    v35 = sub_266ABE004();
    v36 = v21;
    v25 = v24;
    v26 = sub_266ABE004();
    v34 = v27;
    v28 = v26;
    v29 = OUTLINED_FUNCTION_4_4();
    v30(v29);
    v31 = v44;
    v53[0] = v41;
    v53[1] = v44;
    v53[2] = v17;
    v53[3] = v43;
    v32 = v48;
    v53[4] = v42;
    v53[5] = v48;
    v33 = v50;
    v53[6] = v40;
    v53[7] = v50;
    v53[8] = v38;
    v53[9] = v46;
    v53[10] = v39;
    v53[11] = v47;
    v53[12] = v45;
    v53[13] = v36;
    v53[14] = v52;
    v53[15] = v37;
    v53[16] = v51;
    v53[17] = v35;
    v53[18] = v25;
    v53[19] = v28;
    v53[20] = v34;
    memcpy(v14, v53, 0xA8uLL);
    sub_266A6E078(v53, &v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    v54 = v41;
    v55 = v31;
    v56 = v17;
    v57 = v43;
    v58 = v42;
    v59 = v32;
    v60 = v40;
    v61 = v33;
    v62 = v38;
    v63 = v46;
    v64 = v39;
    v65 = v47;
    v66 = v45;
    v67 = v36;
    v68 = v52;
    v69 = v37;
    v70 = v51;
    v71 = v35;
    v72 = v25;
    v73 = v28;
    v74 = v34;
    sub_266A72578(&v54);
  }

  OUTLINED_FUNCTION_30_1();
}

uint64_t sub_266A8A120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2008, &qword_266AC20D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266A8A190()
{
  result = qword_2800B2010;
  if (!qword_2800B2010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800B2010);
  }

  return result;
}

unint64_t sub_266A8A1D4()
{
  result = qword_2800B2038;
  if (!qword_2800B2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2038);
  }

  return result;
}

void *sub_266A8A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_266A8A700(sub_266A8B1A0, v5, a1, a2);
}

uint64_t sub_266A8A27C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_266A6A5B4(v6, v5);
      *v4 = xmmword_266AC2090;
      sub_266A6A5B4(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_266ABD524() && __OFSUB__(v6, sub_266ABD544()))
      {
        goto LABEL_24;
      }

      v13 = sub_266ABD554();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_266ABD504();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_266A8A764(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_266A6A5B4(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_266AC2090;
      sub_266A6A5B4(0, 0xC000000000000000);
      sub_266ABD654();
      v6 = v20;
      v9 = sub_266A8A764(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_266A6A5B4(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_266A8A640@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_266ABD644();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x26D5E7F10]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x26D5E7F30]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_266A8A6B8(uint64_t result)
{
  if (result)
  {
    result = sub_266ABDEB4();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_266A8A700(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_266A8A764(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_266ABD524();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_266ABD544();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_266ABD534();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_266A8A818(void *a1)
{
  v1 = [a1 productTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266ABDC24();

  return v3;
}

uint64_t sub_266A8A870(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_266ABDA84();
  }

  return OUTLINED_FUNCTION_9_2();
}

unint64_t sub_266A8A8CC(uint64_t a1)
{
  result = sub_266A8A8F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_266A8A8F4()
{
  result = qword_2800B2060;
  if (!qword_2800B2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2060);
  }

  return result;
}

unint64_t sub_266A8A94C()
{
  result = qword_2800B2068;
  if (!qword_2800B2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2068);
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

uint64_t sub_266A8A9AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266A8A9EC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_266A8AC5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_266A8AC9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Version(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DeviceName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266A8AE84()
{
  result = qword_2800B2070;
  if (!qword_2800B2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2070);
  }

  return result;
}

unint64_t sub_266A8AEDC()
{
  result = qword_2800B2078;
  if (!qword_2800B2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2078);
  }

  return result;
}

unint64_t sub_266A8AF34()
{
  result = qword_2800B2080;
  if (!qword_2800B2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2080);
  }

  return result;
}

unint64_t sub_266A8AF8C()
{
  result = qword_2800B2088;
  if (!qword_2800B2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2088);
  }

  return result;
}

unint64_t sub_266A8AFE4()
{
  result = qword_2800B2090;
  if (!qword_2800B2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2090);
  }

  return result;
}

unint64_t sub_266A8B03C()
{
  result = qword_2800B2098;
  if (!qword_2800B2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2098);
  }

  return result;
}

void *sub_266A8B090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_266A8A228(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_266A8B0E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_266ABDB64();
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
    v5 = MEMORY[0x26D5E83F0](15, a1 >> 16);
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

uint64_t sub_266A8B160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_266A8A6B8(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

_BYTE *sub_266A8B204(_BYTE *result, int a2, int a3)
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

unint64_t sub_266A8B2B4()
{
  result = qword_2800B20B0;
  if (!qword_2800B20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B20B0);
  }

  return result;
}

unint64_t sub_266A8B30C()
{
  result = qword_2800B20B8;
  if (!qword_2800B20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B20B8);
  }

  return result;
}

uint64_t sub_266A8B360()
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](0);
  return sub_266ABE2A4();
}

uint64_t sub_266A8B3A4()
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](0);
  return sub_266ABE2A4();
}

void sub_266A8B404(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_266A8B478(v2);
}

void *sub_266A8B434()
{
  v1 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_center;
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_266A8B478(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_center;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_266A8B530(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return sub_266A8B5B4(v5, v3);
}

uint64_t sub_266A8B56C()
{
  v1 = v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate;
  OUTLINED_FUNCTION_18();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_266A8B5B4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_266A8B620(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_266A8B6AC;
}

char *sub_266A8B6B0(void *a1)
{
  v35 = sub_266ABDD84();
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = sub_266ABDD74();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v9 = sub_266ABD914();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_2();
  *&v1[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_center] = 0;
  *&v1[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v34 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_queue;
  sub_266A6AE78(0, &qword_280BB6C08, 0x277D85C78);
  sub_266ABD904();
  aBlock = MEMORY[0x277D84F90];
  sub_266A8CBAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B20E8, &qword_266AC2860);
  sub_266A8CC04();
  sub_266ABDE24();
  (*(v2 + 104))(v6, *MEMORY[0x277D85260], v35);
  *&v1[v34] = sub_266ABDDB4();
  v43.receiver = v1;
  v43.super_class = type metadata accessor for LocalNotificationCenterImpl();
  v11 = objc_msgSendSuper2(&v43, sel_init);
  v12 = v11;
  if (a1)
  {
    v13 = a1;
LABEL_5:
    v17 = a1;

    v18 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_center;
    swift_beginAccess();
    v19 = *&v12[v18];
    *&v12[v18] = v13;
    v20 = v13;

    [v20 setDelegate:v12];
    v41 = sub_266A8BCA0;
    v42 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_266A77ACC;
    v40 = &block_descriptor_0;
    v21 = _Block_copy(&aBlock);
    [v20 getNotificationSettingsWithCompletionHandler:v21];
    _Block_release(v21);
    v22 = swift_allocObject();
    *(v22 + 16) = v12;
    v41 = sub_266A8CC80;
    v42 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_266A8C1FC;
    v40 = &block_descriptor_10;
    v23 = _Block_copy(&aBlock);
    v24 = v12;

    [v20 requestAuthorizationWithOptions:4 completionHandler:v23];
    _Block_release(v23);
    sub_266A6AE78(0, &qword_280BB6BF8, 0x277CE1F98);
    v25 = sub_266A8C274(0xD00000000000003FLL, 0x8000000266ABFC40, MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0, 0xE000000000000000, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B20F0, &unk_266AC2868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266AC2790;
    *(inited + 32) = v25;
    if (sub_266A6AF8C(inited))
    {
      v27 = v25;
      sub_266A8EBE4(inited);
    }

    else
    {
      swift_setDeallocating();
      v28 = v25;
      sub_266AB9878();
    }

    sub_266A8CC88();
    v29 = sub_266ABDD04();

    [v20 setNotificationCategories:v29];

    [v20 setWantsNotificationResponsesDelivered];
    goto LABEL_9;
  }

  v14 = *&v11[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_queue];
  v15 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v16 = sub_266A8C984(0xD000000000000036, 0x8000000266ABFF90, v14);
  if (v16)
  {
    v13 = v16;
    goto LABEL_5;
  }

  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v31 = sub_266ABD8D4();
  __swift_project_value_buffer(v31, qword_280BB7028);
  v20 = sub_266ABD8C4();
  v32 = sub_266ABDD64();
  if (os_log_type_enabled(v20, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_266A65000, v20, v32, "#feedback LocalNotificationCenter - file notification center must not be nil", v33, 2u);
    MEMORY[0x26D5E9280](v33, -1, -1);
  }

LABEL_9:

  return v12;
}

void sub_266A8BCA0(void *a1)
{
  if (qword_280BB6C30 != -1)
  {
    swift_once();
  }

  v2 = sub_266ABD8D4();
  __swift_project_value_buffer(v2, qword_280BB7028);
  v3 = a1;
  oslog = sub_266ABD8C4();
  v4 = sub_266ABDD54();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_266A65000, oslog, v4, "#feedback LocalNotificationCenter - requestAuthorization settings: %@", v5, 0xCu);
    sub_266A8CCF0(v6);
    MEMORY[0x26D5E9280](v6, -1, -1);
    MEMORY[0x26D5E9280](v5, -1, -1);
  }
}

void sub_266A8BDDC(char a1, id a2, void *a3)
{
  v6 = 0x280BB6000uLL;
  if (a2)
  {
    v7 = a2;
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v8 = sub_266ABD8D4();
    __swift_project_value_buffer(v8, qword_280BB7028);
    v9 = a2;
    v10 = sub_266ABD8C4();
    v11 = sub_266ABDD64();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38[0] = v13;
      *v12 = 136315138;
      v39 = a2;
      v14 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2108, &unk_266AC3670);
      v15 = sub_266ABDAE4();
      v17 = sub_266A66D34(v15, v16, v38);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_266A65000, v10, v11, "#feedback LocalNotificationCenter - permission not granted. Error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x26D5E9280](v13, -1, -1);
      v18 = v12;
      v6 = 0x280BB6000;
      MEMORY[0x26D5E9280](v18, -1, -1);
    }

    else
    {
    }
  }

  if (*(v6 + 3120) != -1)
  {
    swift_once();
  }

  v19 = sub_266ABD8D4();
  __swift_project_value_buffer(v19, qword_280BB7028);
  v20 = a2;
  v21 = sub_266ABD8C4();
  v22 = sub_266ABDD54();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38[0] = v24;
    *v23 = 67109378;
    *(v23 + 4) = a1 & 1;
    *(v23 + 8) = 2080;
    v39 = a2;
    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2100, &qword_266AC0FA0);
    v26 = sub_266ABDAE4();
    v28 = sub_266A66D34(v26, v27, v38);

    *(v23 + 10) = v28;
    _os_log_impl(&dword_266A65000, v21, v22, "#feedback LocalNotificationCenter - granted:%{BOOL}d requested: %s", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D5E9280](v24, -1, -1);
    MEMORY[0x26D5E9280](v23, -1, -1);
  }

  v29 = a3;
  v30 = sub_266ABD8C4();
  v31 = sub_266ABDD54();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v32 = 136315138;
    v34 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_center;
    swift_beginAccess();
    [*&v29[v34] delegate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B20F8, &qword_266AC2878);
    v35 = sub_266ABDAE4();
    v37 = sub_266A66D34(v35, v36, &v39);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_266A65000, v30, v31, "#feedback LocalNotificationCenter - delegate:%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x26D5E9280](v33, -1, -1);
    MEMORY[0x26D5E9280](v32, -1, -1);
  }
}

void sub_266A8C1FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_266A8C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_266ABDA74();

  sub_266A6AE78(0, &qword_280BB6C00, 0x277CE1F80);
  v9 = sub_266ABDC14();

  v10 = sub_266ABDC14();

  v11 = sub_266ABDA74();

  v12 = [swift_getObjCClassFromMetadata() categoryWithIdentifier:v8 actions:v9 intentIdentifiers:v10 hiddenPreviewsBodyPlaceholder:v11 options:a7];

  return v12;
}

id LocalNotificationCenterImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalNotificationCenterImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalNotificationCenterImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_266A8C514(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return sub_266A8CD60;
}

void sub_266A8C5A4(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  a4[2](a4, 16);

  _Block_release(a4);
}

uint64_t LocalNotificationCenterImpl.userNotificationCenter(_:didReceive:withCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v9 = sub_266ABD8D4();
  __swift_project_value_buffer(v9, qword_280BB7028);
  v10 = v4;
  v11 = sub_266ABD8C4();
  v12 = sub_266ABDD54();

  if (os_log_type_enabled(v11, v12))
  {
    v29 = a3;
    v30 = a2;
    v13 = a4;
    v14 = swift_slowAlloc();
    v15 = a1;
    v16 = swift_slowAlloc();
    v31[0] = v16;
    *v14 = 136315138;
    v17 = &v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate];
    OUTLINED_FUNCTION_18();
    Strong = swift_unknownObjectWeakLoadStrong();
    v19 = *(v17 + 1);
    v31[1] = Strong;
    v31[2] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B20D0, &qword_266AC27A0);
    v20 = sub_266ABDAE4();
    v22 = sub_266A66D34(v20, v21, v31);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_266A65000, v11, v12, "#feedback LocalNotificationCenter - didReceive passing to delegate:%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v23 = v16;
    a1 = v15;
    MEMORY[0x26D5E9280](v23, -1, -1);
    v24 = v14;
    a4 = v13;
    a3 = v29;
    a2 = v30;
    MEMORY[0x26D5E9280](v24, -1, -1);
  }

  v25 = &v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate];
  OUTLINED_FUNCTION_18();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = *(v25 + 1);
    ObjectType = swift_getObjectType();
    (*(v27 + 8))(a1, a2, a3, a4, ObjectType, v27);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_266A8C984(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_266ABDA74();

  v6 = [v3 initWithBundleIdentifier:v5 queue:a3];

  return v6;
}

unint64_t sub_266A8CBAC()
{
  result = qword_280BB6C10;
  if (!qword_280BB6C10)
  {
    sub_266ABDD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB6C10);
  }

  return result;
}

unint64_t sub_266A8CC04()
{
  result = qword_280BB6C20;
  if (!qword_280BB6C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B20E8, &qword_266AC2860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB6C20);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266A8CC88()
{
  result = qword_280BB6BE8;
  if (!qword_280BB6BE8)
  {
    sub_266A6AE78(255, &qword_280BB6BF8, 0x277CE1F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB6BE8);
  }

  return result;
}

uint64_t sub_266A8CCF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800B2110, &unk_266AC20E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void UserInputModel.distanceFromExpectedDevice.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t UserInputModel.distanceFromExpectedDevice.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t UserInputModel.failureReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_266A8CE78(v2, v3, v4);
}

uint64_t sub_266A8CE78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_266A8CE8C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_266A8CE8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t UserInputModel.failureReason.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_266A8CEE4(*(v1 + 72), *(v1 + 80), *(v1 + 88));
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

uint64_t sub_266A8CEE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_266A8244C(a1, a2, a3);
  }

  return a1;
}

uint64_t UserInputModel.init(distanceFromExpectedDevice:didNotWantResponse:expectedParticipant:expectedDeviceAnswered:failureReason:multipleDevicesResponded:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 16);
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0;
  *(a7 + 24) = 0u;
  *(a7 + 72) = 0;
  *(a7 + 80) = 0;
  *(a7 + 88) = -1;
  *(a7 + 8) = v10;
  *(a7 + 16) = v11;
  *a7 = a2;
  sub_266A81488(a3, a7 + 24);
  *(a7 + 64) = a4;
  result = sub_266A8CEE4(*(a7 + 72), *(a7 + 80), *(a7 + 88));
  *(a7 + 72) = v12;
  *(a7 + 80) = v13;
  *(a7 + 88) = v14;
  *(a7 + 89) = a6;
  return result;
}

uint64_t sub_266A8CFE0()
{
  v0 = sub_266ABDFD4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266A8D034(char a1)
{
  result = 0x526572756C696166;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_266A8D124(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return UserInputModel.distanceFromExpectedDevice.setter(&v3);
}

uint64_t sub_266A8D1FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266A8CFE0();
  *a2 = result;
  return result;
}

unint64_t sub_266A8D22C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_266A8D034(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266A8D274@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A8D02C();
  *a1 = result;
  return result;
}

uint64_t sub_266A8D2A8(uint64_t a1)
{
  v2 = sub_266A8D6D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A8D2E4(uint64_t a1)
{
  v2 = sub_266A8D6D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserInputModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2120, &qword_266AC2880);
  OUTLINED_FUNCTION_1_0(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v16);
  v34 = 0;
  v35 = 1;
  memset(v36, 0, sizeof(v36));
  v39 = 0uLL;
  v37 = 0;
  v40 = -1;
  v17 = a1[3];
  v18 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_266A8D6D0();
  sub_266ABE2B4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    sub_266A798F4(v36, &qword_2800B1C48, &unk_266AC1310);
    return sub_266A8CEE4(v39, *(&v39 + 1), v40);
  }

  else
  {
    v28 = a2;
    v42 = 3;
    sub_266A8D724();
    OUTLINED_FUNCTION_6_4();
    v34 = v30;
    v35 = BYTE8(v30);
    v19 = type metadata accessor for ParticipantModel();
    v42 = 1;
    sub_266A8DC7C(&qword_2800B1C88);
    sub_266ABE024();
    if (__swift_getEnumTagSinglePayload(v10, 1, v19) == 1)
    {
      sub_266A798F4(v10, &qword_2800B1CB0, &qword_266AC0FB8);
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
    }

    else
    {
      *(&v31 + 1) = v19;
      v32 = sub_266A8DC7C(&qword_2800B1DA0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      sub_266A7977C(v10, boxed_opaque_existential_1);
    }

    sub_266A81488(&v30, v36);
    LOBYTE(v30) = 0;
    v38 = OUTLINED_FUNCTION_3_5() & 1;
    v42 = 2;
    sub_266A8D778();
    OUTLINED_FUNCTION_6_4();
    v21 = v30;
    v22 = v31;
    sub_266A8CEE4(v39, *(&v39 + 1), v40);
    v39 = v21;
    v40 = v22;
    LOBYTE(v30) = 4;
    v41 = OUTLINED_FUNCTION_3_5() & 1;
    LOBYTE(v30) = 5;
    v23 = OUTLINED_FUNCTION_3_5();
    v24 = *(v13 + 8);
    v25 = OUTLINED_FUNCTION_2_3();
    v26(v25);
    v33[0] = v23 & 1;
    sub_266A8D7CC(v33, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    return sub_266A82B80(v33);
  }
}