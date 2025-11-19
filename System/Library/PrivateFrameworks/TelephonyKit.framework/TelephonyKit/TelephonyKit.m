__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Estimation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xED && a1[24])
  {
    return (*a1 + 237);
  }

  v3 = *a1;
  v4 = v3 >= 0x14;
  v5 = v3 - 20;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Estimation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 237;
    if (a3 >= 0xED)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xED)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 19;
    }
  }

  return result;
}

TelephonyKit::MigratorContext::Result_optional __swiftcall MigratorContext.Result.init(rawValue:)(TelephonyKit::MigratorContext::Result_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = TelephonyKit_MigratorContext_Result_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

unint64_t sub_26D24F3E4()
{
  result = qword_2804F5748;
  if (!qword_2804F5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5748);
  }

  return result;
}

uint64_t sub_26D24F438()
{
  v1 = *v0;
  sub_26D2627FC();
  sub_26D26281C();
  return sub_26D26282C();
}

uint64_t sub_26D24F4AC()
{
  v1 = *v0;
  sub_26D2627FC();
  sub_26D26281C();
  return sub_26D26282C();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D24F510(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 32))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26D24F554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MigratorContext.Result(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MigratorContext.Result(uint64_t result, unsigned int a2, unsigned int a3)
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

TelephonyKit::Reason_optional __swiftcall Reason.init(rawValue:)(TelephonyKit::Reason_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= TelephonyKit_Reason_unknownDefault)
  {
    value = TelephonyKit_Reason_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

unint64_t sub_26D24F73C()
{
  result = qword_2804F5750;
  if (!qword_2804F5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5750);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26D24F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v88 = a8;
  v89 = a7;
  v93 = a6;
  v96 = a1;
  v97 = a5;
  v91 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v92 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v90 = &v85 - v20;
  v21 = sub_26D26249C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v26);
  v27 = sub_26D26248C();
  v94 = v28;
  v95 = v27;
  result = (*(v22 + 8))(v25, v21);
  if ((a14 & 0x8000000000000000) == 0)
  {
    v86 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5768, &qword_26D263280);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26D263220;
    *(inited + 32) = 0x6165724365746144;
    *(inited + 40) = 0xEB00000000646574;
    *(inited + 72) = sub_26D26244C();
    __swift_allocate_boxed_opaque_existential_0((inited + 48));
    sub_26D26243C();
    strcpy((inited + 80), "SourceFileName");
    *(inited + 95) = -18;
    v31 = MEMORY[0x277D840E8];
    *(inited + 96) = a11;
    *(inited + 104) = a12;
    *(inited + 112) = a13;
    *(inited + 120) = v31;
    *(inited + 128) = 0x694C656372756F53;
    v32 = MEMORY[0x277D83E88];
    *(inited + 136) = 0xEA0000000000656ELL;
    *(inited + 144) = a14;
    v87 = a14;
    *(inited + 168) = v32;
    strcpy((inited + 176), "FunctionName");
    *(inited + 216) = v31;
    v33 = v88;
    *(inited + 189) = 0;
    *(inited + 190) = -5120;
    *(inited + 192) = v33;
    *(inited + 200) = a9;
    *(inited + 208) = a10;
    v34 = sub_26D250B00(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5770, &qword_26D263288);
    swift_arrayDestroy();
    v104 = v34;
    v35 = v89;
    if (v89)
    {
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5788, &unk_26D2632A0);
      *&v102 = v35;
      sub_26D250E94(&v102, v99);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v34;
      sub_26D2563A4(v99, 0xD000000000000013, 0x800000026D264380, isUniquelyReferenced_nonNull_native);
      v104 = v98;
    }

    else
    {
      sub_26D250A5C(0xD000000000000013, 0x800000026D264380, &v102);
      sub_26D250E34(&v102, &qword_2804F5778, &qword_26D263290);
    }

    v37 = v86;
    if (a2)
    {
      v103 = MEMORY[0x277D837D0];
      *&v102 = v96;
      *(&v102 + 1) = a2;
      sub_26D250E94(&v102, v99);

      v38 = v104;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v38;
      sub_26D2563A4(v99, 0xD00000000000001BLL, 0x800000026D264360, v39);
      v104 = v98;
    }

    else
    {
      sub_26D250A5C(0xD00000000000001BLL, 0x800000026D264360, &v102);
      sub_26D250E34(&v102, &qword_2804F5778, &qword_26D263290);
    }

    v40 = *MEMORY[0x277CCA760];
    v41 = sub_26D26251C();
    v43 = v42;
    v44 = v90;
    sub_26D250EA4(v97, v90, &qword_2804F5860, &qword_26D263600);
    v45 = sub_26D26240C();
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    if (v47(v44, 1, v45) == 1)
    {
      sub_26D250E34(v44, &qword_2804F5860, &qword_26D263600);
      sub_26D250A5C(v41, v43, &v102);

      sub_26D250E34(&v102, &qword_2804F5778, &qword_26D263290);
      v49 = v91;
      v48 = v92;
      if (a2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v103 = v45;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v102);
      (*(v46 + 32))(boxed_opaque_existential_0, v44, v45);
      sub_26D250E94(&v102, v99);
      v51 = v104;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v51;
      sub_26D2563A4(v99, v41, v43, v52);

      v104 = v98;
      v49 = v91;
      v48 = v92;
      if (a2)
      {
LABEL_10:
        if (v49)
        {
          *&v102 = v96;
          *(&v102 + 1) = a2;

          MEMORY[0x26D6B7AB0](8250, 0xE200000000000000);
          MEMORY[0x26D6B7AB0](v37, v49);
          a2 = *(&v102 + 1);
          v37 = v102;
        }

        else
        {

          v37 = v96;
        }

        goto LABEL_17;
      }
    }

    if (v49)
    {

      a2 = v49;
    }

    else
    {
      a2 = 0;
    }

LABEL_17:
    sub_26D250EA4(v97, v48, &qword_2804F5860, &qword_26D263600);
    if (v47(v48, 1, v45) == 1)
    {
      sub_26D250E34(v48, &qword_2804F5860, &qword_26D263600);
      if (!a2)
      {
LABEL_26:
        v63 = v93;
        v64 = *(v93 + 16);
        if (v64 < 2)
        {
          if (v64 != 1)
          {
LABEL_31:
            v81 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
            v82 = sub_26D2624FC();

            v83 = sub_26D2624BC();

            v84 = [v81 initWithDomain:v82 code:v87 userInfo:v83];

            return v84;
          }

          v71 = *MEMORY[0x277CCA7E8];
          v72 = sub_26D26251C();
          v74 = v73;
          v75 = *(v63 + 32);
          swift_getErrorValue();
          v76 = v100;
          v77 = v101;
          v103 = v101;
          v78 = __swift_allocate_boxed_opaque_existential_0(&v102);
          (*(*(v77 - 8) + 16))(v78, v76, v77);
          sub_26D250E94(&v102, v99);
          v79 = v104;
          v80 = swift_isUniquelyReferenced_nonNull_native();
          v98 = v79;
          sub_26D2563A4(v99, v72, v74, v80);
        }

        else
        {
          v65 = *MEMORY[0x277CCA578];
          v66 = sub_26D26251C();
          v68 = v67;
          v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5780, &qword_26D263298);
          *&v102 = v63;
          sub_26D250E94(&v102, v99);

          v69 = v104;
          v70 = swift_isUniquelyReferenced_nonNull_native();
          v98 = v69;
          sub_26D2563A4(v99, v66, v68, v70);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v53 = sub_26D2623FC();
      v54 = v48;
      v56 = v55;
      (*(v46 + 8))(v54, v45);
      if (!a2)
      {
        if (!v56)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if (v56)
      {
        *&v102 = v37;
        *(&v102 + 1) = a2;

        MEMORY[0x26D6B7AB0](8250, 0xE200000000000000);
        MEMORY[0x26D6B7AB0](v53, v56);

        v56 = *(&v102 + 1);
        v53 = v102;
LABEL_25:
        v57 = *MEMORY[0x277CCA450];
        v58 = sub_26D26251C();
        v60 = v59;
        v103 = MEMORY[0x277D837D0];
        *&v102 = v53;
        *(&v102 + 1) = v56;
        sub_26D250E94(&v102, v99);
        v61 = v104;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v61;
        sub_26D2563A4(v99, v58, v60, v62);

        v104 = v98;
        goto LABEL_26;
      }
    }

    v53 = v37;
    v56 = a2;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D25024C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_26D2627CC();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_26D2623EC();

  v11 = [v10 domain];
  v12 = sub_26D26251C();
  v14 = v13;

  v15 = [v10 code];
  v16 = [v10 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5760, &unk_26D263270);
  v17 = sub_26D2625FC();

  if (*(v17 + 16))
  {
    v18 = *(v17 + 32);
    v19 = v18;

    v26 = v12;
    v27 = v14;
    MEMORY[0x26D6B7AB0](58, 0xE100000000000000);
    v25 = v15;
    v20 = sub_26D2627BC();
    MEMORY[0x26D6B7AB0](v20);

    MEMORY[0x26D6B7AB0](47, 0xE100000000000000);
    swift_getErrorValue();
    v21 = sub_26D25024C(v24[2], v24[3]);
    MEMORY[0x26D6B7AB0](v21);
  }

  else
  {

    v26 = v12;
    v27 = v14;
    MEMORY[0x26D6B7AB0](58, 0xE100000000000000);
    v25 = v15;
    v22 = sub_26D2627BC();
    MEMORY[0x26D6B7AB0](v22);
  }

  return v26;
}

uint64_t sub_26D250518(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_26D2627CC();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_26D2623EC();

  v11 = [v10 userInfo];
  v12 = sub_26D2624CC();

  if (*(v12 + 16) && (v13 = sub_26D255A54(0xD00000000000001BLL, 0x800000026D264360), (v14 & 1) != 0))
  {
    sub_26D250D2C(*(v12 + 56) + 32 * v13, v17);

    if (swift_dynamicCast())
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_26D25072C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  DynamicType = swift_getDynamicType();
  v11 = sub_26D250CE0();
  v12 = *(v3 + 16);
  if (DynamicType == v11)
  {
    v12(v9, v1, a1);
    v14 = sub_26D2627CC();
    if (v14)
    {
      v15 = v14;
      (*(v3 + 8))(v9, a1);
    }

    else
    {
      v15 = swift_allocError();
      (*(v3 + 32))(v16, v9, a1);
    }

    v17 = sub_26D2623EC();

    v18 = [v17 localizedDescription];
    v19 = sub_26D26251C();

    return v19;
  }

  else
  {
    v12(v7, v1, a1);
    return sub_26D26252C();
  }
}

uint64_t sub_26D250920(uint64_t a1)
{
  v2 = sub_26D25072C(a1);
  v4 = v3;
  sub_26D250518(a1);
  if (v5)
  {

    MEMORY[0x26D6B7AB0](8250, 0xE200000000000000);
    v6 = sub_26D2625CC();

    if (v6)
    {
      v7 = sub_26D26257C();

      v8 = sub_26D250C30(v7, v2, v4);
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v2 = MEMORY[0x26D6B7A60](v8, v10, v12, v14);

      return v2;
    }
  }

  v15 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v15 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    return 0;
  }

  return v2;
}

double sub_26D250A5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26D255A54(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26D2567A0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_26D250E94((*(v12 + 56) + 32 * v9), a3);
    sub_26D256044(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_26D250B00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5880, &qword_26D263450);
    v3 = sub_26D26278C();
    v4 = a1 + 32;

    while (1)
    {
      sub_26D250EA4(v4, &v13, &qword_2804F5770, &qword_26D263288);
      v5 = v13;
      v6 = v14;
      result = sub_26D255A54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26D250E94(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_26D250C30(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_26D26259C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_26D2625EC();
}

unint64_t sub_26D250CE0()
{
  result = qword_2804F5758;
  if (!qword_2804F5758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804F5758);
  }

  return result;
}

uint64_t sub_26D250D2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_26D250E34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_26D250E94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26D250EA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t static Log.loggerForFile(flair:sourceFile:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_26D26249C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v8);
  v9 = sub_26D26248C();
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0x296C696E28;
  }

  if (!v11)
  {
    v11 = 0xE500000000000000;
  }

  if (a2)
  {
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
    MEMORY[0x26D6B7AB0](v12, v11);
  }

  return sub_26D26246C();
}

uint64_t static Log.loggerFor(flair:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
    MEMORY[0x26D6B7AB0](a3, a4);
  }

  else
  {
  }

  return sub_26D26246C();
}

uint64_t static Log.loggerFor(flair:subcategory:sourceFile:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = sub_26D26249C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v12);
  v13 = sub_26D26248C();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  v16 = 0x296C696E28;
  if (v15)
  {
    v16 = v13;
  }

  v17 = 0xE500000000000000;
  if (v15)
  {
    v17 = v15;
  }

  v22 = v16;
  v23 = v17;
  MEMORY[0x26D6B7AB0](47, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](a2, a3);
  v19 = v22;
  v18 = v23;
  if (a1)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
    MEMORY[0x26D6B7AB0](v19, v18);
  }

  return sub_26D26246C();
}

uint64_t getEnumTagSinglePayload for Log(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Log(_WORD *result, int a2, int a3)
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

void sub_26D251428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_26D26240C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D26267C();
  v16 = sub_26D26273C();
  v18 = v17;
  sub_26D253F50(a4, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_26D250E34(v10, &qword_2804F5860, &qword_26D263600);
    v19 = 0;
    v20 = 0;
    if (a5)
    {
LABEL_3:
      swift_getErrorValue();
      v21 = v30;
      v22 = a5;
      v23 = sub_26D25024C(v21);
      v28 = 0xABC220919B9FF0;
      v29 = 0xA700000000000000;
      MEMORY[0x26D6B7AB0](v23);

      MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
      v24 = v28;
      v25 = v29;
      v26 = a5;
      sub_26D251704(v16, v18, v19, v20, v24, v25, a5);

      return;
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v19 = sub_26D2623FC();
    v20 = v27;
    (*(v12 + 8))(v15, v11);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  sub_26D251704(v16, v18, v19, v20, 0, 0xE000000000000000, 0);
}

uint64_t sub_26D251704(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v7 = a7;
  if (!a7)
  {
    v120 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  swift_getErrorValue();
  v120 = sub_26D250518(v124);
  v14 = v13;
  swift_getErrorValue();
  v15 = sub_26D250920(v123);
  v17 = v15;
  v18 = v16;
  if (v16)
  {
    if (v14 && (v15 == v120 && v16 == v14 || (sub_26D2627DC() & 1) != 0))
    {

      v19 = v14;
LABEL_9:
      v17 = 0;
      v18 = 0;
      v14 = v19;
    }
  }

  else
  {
    v19 = 0;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  if (!a4)
  {
    if (a2)
    {
LABEL_18:
      a4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    a3 = 0;
    goto LABEL_18;
  }

  if (a2 && (a3 == a1 && a4 == a2 || (sub_26D2627DC() & 1) != 0))
  {
    goto LABEL_17;
  }

LABEL_19:
  if (v14)
  {
    if (v18)
    {
      if (a2)
      {
        if (a4)
        {
          v113 = v17;

          v20 = sub_26D26245C();
          v21 = sub_26D26267C();

          if (os_log_type_enabled(v20, v21))
          {
            v117 = v7;
            v22 = swift_slowAlloc();
            v112 = a6;
            v23 = a5;
            v24 = swift_slowAlloc();
            v125 = v24;
            *v22 = 136447234;
            *(v22 + 4) = sub_26D25AA9C(a1, a2, &v125);
            *(v22 + 12) = 2080;
            v25 = sub_26D25AA9C(a3, a4, &v125);

            *(v22 + 14) = v25;
            *(v22 + 22) = 2082;
            *(v22 + 24) = sub_26D25AA9C(v23, v112, &v125);
            *(v22 + 32) = 2082;
            v26 = sub_26D25AA9C(v120, v14, &v125);

            *(v22 + 34) = v26;
            *(v22 + 42) = 2080;
            v27 = sub_26D25AA9C(v113, v18, &v125);

            *(v22 + 44) = v27;
            _os_log_impl(&dword_26D24E000, v20, v21, "%{public}s: %s %{public}s%{public}s: %s", v22, 0x34u);
            swift_arrayDestroy();
            MEMORY[0x26D6B8170](v24, -1, -1);
            v28 = v22;
            v7 = v117;
LABEL_73:
            MEMORY[0x26D6B8170](v28, -1, -1);
            goto LABEL_74;
          }

          goto LABEL_63;
        }

        v20 = sub_26D26245C();
        v57 = sub_26D26267C();

        if (!os_log_type_enabled(v20, v57))
        {

          goto LABEL_64;
        }

        v58 = a6;
        v59 = a5;
        v32 = swift_slowAlloc();
        v118 = v7;
        v33 = swift_slowAlloc();
        v125 = v33;
        *v32 = 136446978;
        *(v32 + 4) = sub_26D25AA9C(a1, a2, &v125);
        *(v32 + 12) = 2082;
        *(v32 + 14) = sub_26D25AA9C(v59, v58, &v125);
        *(v32 + 22) = 2082;
        v60 = sub_26D25AA9C(v120, v14, &v125);

        *(v32 + 24) = v60;
        *(v32 + 32) = 2080;
        v61 = sub_26D25AA9C(v17, v18, &v125);

        *(v32 + 34) = v61;
        v36 = "%{public}s %{public}s%{public}s: %s";
        v37 = v57;
LABEL_45:
        _os_log_impl(&dword_26D24E000, v20, v37, v36, v32, 0x2Au);
        swift_arrayDestroy();
        v62 = v33;
        v7 = v118;
        MEMORY[0x26D6B8170](v62, -1, -1);
        v28 = v32;
        goto LABEL_73;
      }

      if (a4)
      {

        v43 = sub_26D26245C();
        v44 = sub_26D26267C();

        if (os_log_type_enabled(v43, v44))
        {
          v115 = v17;
          v45 = a6;
          v46 = a5;
          v47 = swift_slowAlloc();
          v119 = v7;
          v48 = swift_slowAlloc();
          v125 = v48;
          *v47 = 136315906;
          v49 = sub_26D25AA9C(a3, a4, &v125);

          *(v47 + 4) = v49;
          *(v47 + 12) = 2082;
          *(v47 + 14) = sub_26D25AA9C(v46, v45, &v125);
          *(v47 + 22) = 2082;
          v50 = sub_26D25AA9C(v120, v14, &v125);

          *(v47 + 24) = v50;
          *(v47 + 32) = 2080;
          v51 = sub_26D25AA9C(v115, v18, &v125);

          *(v47 + 34) = v51;
          _os_log_impl(&dword_26D24E000, v43, v44, "%s %{public}s%{public}s: %s", v47, 0x2Au);
          swift_arrayDestroy();
          v52 = v48;
          v7 = v119;
LABEL_82:
          MEMORY[0x26D6B8170](v52, -1, -1);
          v97 = v47;
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      v43 = sub_26D26245C();
      v85 = sub_26D26267C();

      if (!os_log_type_enabled(v43, v85))
      {

        goto LABEL_94;
      }

      v86 = v17;
      v87 = a6;
      v88 = a5;
      v47 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v125 = v89;
      *v47 = 136446722;
      *(v47 + 4) = sub_26D25AA9C(v88, v87, &v125);
      *(v47 + 12) = 2082;
      v90 = sub_26D25AA9C(v120, v14, &v125);

      *(v47 + 14) = v90;
      *(v47 + 22) = 2080;
      v91 = sub_26D25AA9C(v86, v18, &v125);

      *(v47 + 24) = v91;
      _os_log_impl(&dword_26D24E000, v43, v85, "%{public}s%{public}s: %s", v47, 0x20u);
      goto LABEL_80;
    }

    if (a2)
    {
      if (a4)
      {

        v20 = sub_26D26245C();
        v38 = sub_26D26267C();

        if (os_log_type_enabled(v20, v38))
        {
          v39 = a6;
          v40 = a5;
          v32 = swift_slowAlloc();
          v118 = v7;
          v33 = swift_slowAlloc();
          v125 = v33;
          *v32 = 136446978;
          *(v32 + 4) = sub_26D25AA9C(a1, a2, &v125);
          *(v32 + 12) = 2080;
          v41 = sub_26D25AA9C(a3, a4, &v125);

          *(v32 + 14) = v41;
          *(v32 + 22) = 2082;
          *(v32 + 24) = sub_26D25AA9C(v40, v39, &v125);
          *(v32 + 32) = 2082;
          v42 = sub_26D25AA9C(v120, v14, &v125);

          *(v32 + 34) = v42;
          v36 = "%{public}s: %s %{public}s%{public}s";
          v37 = v38;
          goto LABEL_45;
        }

        goto LABEL_63;
      }

      v81 = a5;

      v20 = sub_26D26245C();
      v82 = sub_26D26267C();

      if (!os_log_type_enabled(v20, v82))
      {
        goto LABEL_64;
      }

      v77 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v125 = v83;
      *v77 = 136446722;
      *(v77 + 4) = sub_26D25AA9C(a1, a2, &v125);
      *(v77 + 12) = 2082;
      *(v77 + 14) = sub_26D25AA9C(v81, a6, &v125);
      *(v77 + 22) = 2082;
      v84 = sub_26D25AA9C(v120, v14, &v125);

      *(v77 + 24) = v84;
      _os_log_impl(&dword_26D24E000, v20, v82, "%{public}s %{public}s%{public}s", v77, 0x20u);
      goto LABEL_71;
    }

    if (a4)
    {

      v43 = sub_26D26245C();
      v69 = sub_26D26267C();

      if (os_log_type_enabled(v43, v69))
      {
        v70 = a6;
        v71 = a5;
        v47 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v125 = v72;
        *v47 = 136315650;
        v73 = sub_26D25AA9C(a3, a4, &v125);

        *(v47 + 4) = v73;
        *(v47 + 12) = 2082;
        *(v47 + 14) = sub_26D25AA9C(v71, v70, &v125);
        *(v47 + 22) = 2082;
        v74 = sub_26D25AA9C(v120, v14, &v125);

        *(v47 + 24) = v74;
        _os_log_impl(&dword_26D24E000, v43, v69, "%s %{public}s%{public}s", v47, 0x20u);
        swift_arrayDestroy();
        v52 = v72;
        goto LABEL_82;
      }

LABEL_84:

      goto LABEL_94;
    }

    v43 = sub_26D26245C();
    v99 = sub_26D26267C();

    if (!os_log_type_enabled(v43, v99))
    {
      goto LABEL_94;
    }

    v104 = a6;
    v105 = a5;
    v47 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v125 = v89;
    *v47 = 136446466;
    *(v47 + 4) = sub_26D25AA9C(v105, v104, &v125);
    *(v47 + 12) = 2082;
    v106 = sub_26D25AA9C(v120, v14, &v125);

    *(v47 + 14) = v106;
    v103 = "%{public}s%{public}s";
LABEL_79:
    _os_log_impl(&dword_26D24E000, v43, v99, v103, v47, 0x16u);
LABEL_80:
    swift_arrayDestroy();
LABEL_81:
    v52 = v89;
    goto LABEL_82;
  }

  if (v18)
  {
    if (a2)
    {
      if (a4)
      {

        v20 = sub_26D26245C();
        v29 = sub_26D26267C();

        if (os_log_type_enabled(v20, v29))
        {
          v114 = v17;
          v30 = a6;
          v31 = a5;
          v32 = swift_slowAlloc();
          v118 = v7;
          v33 = swift_slowAlloc();
          v125 = v33;
          *v32 = 136446978;
          *(v32 + 4) = sub_26D25AA9C(a1, a2, &v125);
          *(v32 + 12) = 2080;
          v34 = sub_26D25AA9C(a3, a4, &v125);

          *(v32 + 14) = v34;
          *(v32 + 22) = 2082;
          *(v32 + 24) = sub_26D25AA9C(v31, v30, &v125);
          *(v32 + 32) = 2080;
          v35 = sub_26D25AA9C(v114, v18, &v125);

          *(v32 + 34) = v35;
          v36 = "%{public}s: %s %{public}s%s";
          v37 = v29;
          goto LABEL_45;
        }

LABEL_63:

LABEL_64:

LABEL_74:

        return sub_26D252BB0(v7);
      }

      v75 = a5;

      v20 = sub_26D26245C();
      v76 = sub_26D26267C();

      if (!os_log_type_enabled(v20, v76))
      {
        goto LABEL_64;
      }

      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v125 = v78;
      *v77 = 136446722;
      *(v77 + 4) = sub_26D25AA9C(a1, a2, &v125);
      *(v77 + 12) = 2082;
      *(v77 + 14) = sub_26D25AA9C(v75, a6, &v125);
      *(v77 + 22) = 2080;
      v79 = sub_26D25AA9C(v17, v18, &v125);

      *(v77 + 24) = v79;
      _os_log_impl(&dword_26D24E000, v20, v76, "%{public}s %{public}s%s", v77, 0x20u);
      swift_arrayDestroy();
      v80 = v78;
LABEL_72:
      MEMORY[0x26D6B8170](v80, -1, -1);
      v28 = v77;
      goto LABEL_73;
    }

    if (a4)
    {

      v43 = sub_26D26245C();
      v63 = sub_26D26267C();

      if (os_log_type_enabled(v43, v63))
      {
        v116 = v17;
        v64 = a6;
        v65 = a5;
        v47 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v125 = v66;
        *v47 = 136315650;
        v67 = sub_26D25AA9C(a3, a4, &v125);

        *(v47 + 4) = v67;
        *(v47 + 12) = 2082;
        *(v47 + 14) = sub_26D25AA9C(v65, v64, &v125);
        *(v47 + 22) = 2080;
        v68 = sub_26D25AA9C(v116, v18, &v125);

        *(v47 + 24) = v68;
        _os_log_impl(&dword_26D24E000, v43, v63, "%s %{public}s%s", v47, 0x20u);
        swift_arrayDestroy();
        v52 = v66;
        goto LABEL_82;
      }

      goto LABEL_84;
    }

    v43 = sub_26D26245C();
    v99 = sub_26D26267C();

    if (os_log_type_enabled(v43, v99))
    {
      v100 = a6;
      v101 = a5;
      v47 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v125 = v89;
      *v47 = 136446466;
      *(v47 + 4) = sub_26D25AA9C(v101, v100, &v125);
      *(v47 + 12) = 2080;
      v102 = sub_26D25AA9C(v17, v18, &v125);

      *(v47 + 14) = v102;
      v103 = "%{public}s%s";
      goto LABEL_79;
    }

LABEL_94:

    goto LABEL_95;
  }

  if (a2)
  {
    v121 = a5;
    if (a4)
    {

      v20 = sub_26D26245C();
      v53 = sub_26D26267C();

      if (os_log_type_enabled(v20, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v125 = v55;
        *v54 = 136446722;
        *(v54 + 4) = sub_26D25AA9C(v121, a6, &v125);
        *(v54 + 12) = 2082;
        *(v54 + 14) = sub_26D25AA9C(a1, a2, &v125);
        *(v54 + 22) = 2080;
        v56 = sub_26D25AA9C(a3, a4, &v125);

        *(v54 + 24) = v56;
        _os_log_impl(&dword_26D24E000, v20, v53, "%{public}s%{public}s: %s", v54, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D6B8170](v55, -1, -1);
        v28 = v54;
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    v20 = sub_26D26245C();
    v98 = sub_26D26267C();

    if (!os_log_type_enabled(v20, v98))
    {
      goto LABEL_74;
    }

    v77 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v125 = v83;
    *v77 = 136446466;
    *(v77 + 4) = sub_26D25AA9C(v121, a6, &v125);
    *(v77 + 12) = 2082;
    *(v77 + 14) = sub_26D25AA9C(a1, a2, &v125);
    _os_log_impl(&dword_26D24E000, v20, v98, "%{public}s%{public}s", v77, 0x16u);
LABEL_71:
    swift_arrayDestroy();
    v80 = v83;
    goto LABEL_72;
  }

  if (a4)
  {
    v92 = a5;

    v43 = sub_26D26245C();
    v93 = sub_26D26267C();

    if (os_log_type_enabled(v43, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v125 = v95;
      *v94 = 136446466;
      *(v94 + 4) = sub_26D25AA9C(v92, a6, &v125);
      *(v94 + 12) = 2080;
      v96 = sub_26D25AA9C(a3, a4, &v125);

      *(v94 + 14) = v96;
      _os_log_impl(&dword_26D24E000, v43, v93, "%{public}s%s", v94, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6B8170](v95, -1, -1);
      v97 = v94;
LABEL_83:
      MEMORY[0x26D6B8170](v97, -1, -1);
LABEL_95:

      return sub_26D252BB0(v7);
    }

    goto LABEL_94;
  }

  v107 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v107 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v107)
  {

    v43 = sub_26D26245C();
    v108 = sub_26D26267C();

    if (!os_log_type_enabled(v43, v108))
    {
      goto LABEL_95;
    }

    v109 = a6;
    v110 = a5;
    v47 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v125 = v89;
    *v47 = 136446210;
    *(v47 + 4) = sub_26D25AA9C(v110, v109, &v125);
    _os_log_impl(&dword_26D24E000, v43, v108, "%{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v89);
    goto LABEL_81;
  }

  return sub_26D252BB0(v7);
}

uint64_t sub_26D252BB0(void *a1)
{
  if (!a1 || (v2 = v1, v37 = a1, v3 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5760, &unk_26D263270), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5798, &qword_26D263308), (swift_dynamicCast() & 1) == 0))
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    return sub_26D250E34(&v38, &qword_2804F5790, &qword_26D263300);
  }

  v4 = *(&v39 + 1);
  if (!*(&v39 + 1))
  {
    return sub_26D250E34(&v38, &qword_2804F5790, &qword_26D263300);
  }

  v5 = v40;
  __swift_project_boxed_opaque_existential_1Tm(&v38, *(&v39 + 1));
  v6 = (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_26D2608F8(*(v6 + 16), 0);
    v9 = sub_26D253D94(&v38, v8 + 4, v7, v6);
    swift_bridgeObjectRetain_n();
    sub_26D253EEC();
    if (v9 != v7)
    {
      goto LABEL_25;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  *&v38 = v8;
  sub_26D2531B8(&v38);

  v12 = *(v38 + 16);
  if (!v12)
  {
  }

  v31[1] = v38;
  v9 = (v38 + 40);
  *&v11 = 136446466;
  v32 = v11;
  v33 = v2;
  v35 = v6;
  while (1)
  {
    v17 = --v12 ? 0x20AA8EE220 : 0x20A98EE220;
    if (!*(v6 + 16))
    {
      break;
    }

    v19 = *(v9 - 1);
    v18 = *v9;

    v20 = sub_26D255A54(v19, v18);
    if ((v21 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_26D250D2C(*(v6 + 56) + 32 * v20, &v38);
    v22 = *(&v39 + 1);
    v23 = __swift_project_boxed_opaque_existential_1Tm(&v38, *(&v39 + 1));
    v24 = *(*(v22 - 8) + 64);
    MEMORY[0x28223BE20](v23);
    (*(v26 + 16))(v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    v36 = sub_26D26252C();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0Tm(&v38);

    v29 = sub_26D26245C();
    v30 = sub_26D26267C();

    if (os_log_type_enabled(v29, v30))
    {
      v13 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *&v38 = v17;
      *v13 = v32;
      *(&v38 + 1) = 0xA500000000000000;

      MEMORY[0x26D6B7AB0](v19, v18);

      v14 = sub_26D25AA9C(v38, *(&v38 + 1), &v37);

      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      v15 = sub_26D25AA9C(v36, v28, &v37);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_26D24E000, v29, v30, "%{public}s: %s", v13, 0x16u);
      v16 = v34;
      swift_arrayDestroy();
      MEMORY[0x26D6B8170](v16, -1, -1);
      MEMORY[0x26D6B8170](v13, -1, -1);
    }

    else
    {
    }

    v9 += 2;
    v6 = v35;
    if (!v12)
    {
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_26D2530AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F57A8, &qword_26D263318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26D2531B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26D253F38(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26D253224(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26D253224(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26D2627AC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26D26260C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26D2533EC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26D25331C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26D25331C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_26D2627DC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26D2533EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_26D253C7C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_26D2539C8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_26D2627DC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_26D2627DC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26D253C90(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_26D253C90((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_26D2539C8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26D253C7C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26D253BF0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_26D2627DC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_26D2539C8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_26D2627DC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_26D2627DC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_26D253BF0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26D253C7C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_26D253C90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F57A0, &qword_26D263310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_26D253D94(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26D253F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26D25411C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 100;
  }

  else
  {
    v2 = 101;
  }

  if (*a2)
  {
    v3 = 100;
  }

  else
  {
    v3 = 101;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_26D2627DC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_26D254188()
{
  v1 = *v0;
  sub_26D2627FC();
  sub_26D26256C();

  return sub_26D26282C();
}

uint64_t sub_26D2541E4()
{
  *v0;
  sub_26D26256C();
}

uint64_t sub_26D254224()
{
  v1 = *v0;
  sub_26D2627FC();
  sub_26D26256C();

  return sub_26D26282C();
}

uint64_t sub_26D25427C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26D26279C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26D2542DC(uint64_t *a1@<X8>)
{
  v2 = 100;
  if (!*v1)
  {
    v2 = 101;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_26D2542F8()
{
  if (*v0)
  {
    result = 0x7461642B4D495365;
  }

  else
  {
    result = 1296651109;
  }

  *v0;
  return result;
}

unint64_t sub_26D254334()
{
  result = qword_2804F57B0;
  if (!qword_2804F57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F57B0);
  }

  return result;
}

uint64_t sub_26D254388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_26D2564F4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_26D255A54(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_26D256944();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_26D2561F4(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_26D254490(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    sub_26D256ABC(0, v2, 0);
    v29 = v32;
    v4 = a1 + 64;
    v5 = -1 << *(a1 + 32);
    result = sub_26D2626EC();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v26 = v2;
    v27 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v28 = v7;
      v11 = (*(a1 + 48) + 16 * v6);
      v12 = (*(a1 + 56) + 16 * v6);
      v14 = *v12;
      v13 = v12[1];
      v30 = *v11;
      v31 = v11[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x26D6B7AB0](61, 0xE100000000000000);
      MEMORY[0x26D6B7AB0](v14, v13);

      v15 = v29;
      v17 = *(v29 + 16);
      v16 = *(v29 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_26D256ABC((v16 > 1), v17 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v17 + 1;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = v30;
      *(v18 + 40) = v31;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v10);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v29 = v15;
      v8 = v27;
      if (v27 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (a1 + 72 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_26D2580C4(v6, v27, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_26D2580C4(v6, v27, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v9;
      if (v28 + 1 == v26)
      {
        return v29;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_26D254730()
{
  v0 = sub_26D26249C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26D26247C();
  __swift_allocate_value_buffer(v5, qword_2804F57C0);
  __swift_project_value_buffer(v5, qword_2804F57C0);
  v6 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v6);
  sub_26D26248C();
  (*(v1 + 8))(v4, v0);
  return sub_26D26246C();
}

uint64_t PairingParameters.description.getter()
{
  sub_26D26272C();

  if (*(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_mode))
  {
    v1 = 0x7461642B4D495365;
  }

  else
  {
    v1 = 1296651109;
  }

  if (*(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_mode))
  {
    v2 = 0xE900000000000061;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  MEMORY[0x26D6B7AB0](v1, v2);

  MEMORY[0x26D6B7AB0](0x6F6973736573202CLL, 0xEC0000003D44496ELL);
  MEMORY[0x26D6B7AB0](*(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID), *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID + 8));
  MEMORY[0x26D6B7AB0](0x3D65646F63202CLL, 0xE700000000000000);
  MEMORY[0x26D6B7AB0](*(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code), *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code + 8));
  return 0x3D65646F6DLL;
}

id PairingParameters.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PairingParameters.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26D254B2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v48 - v3;
  v4 = sub_26D26239C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID + 8);
  v54 = *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID);
  v55 = v9;

  sub_26D26238C();
  sub_26D257F60();
  v50 = sub_26D2626BC();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v8, v4);

  if (!v11)
  {
    if (qword_2804F5710 != -1)
    {
      swift_once();
    }

    v25 = sub_26D26247C();
    __swift_project_value_buffer(v25, qword_2804F57C0);
    v26 = sub_26D26240C();
    v27 = v49;
    (*(*(v26 - 8) + 56))(v49, 1, 1, v26);
    v28 = sub_26D26273C();
    v29 = v50;
    v31 = sub_26D24F91C(v28, v30, v50, 0, v27, MEMORY[0x277D84F90], 0, "toURL()", 7, 2, "TelephonyKit/PairingParameters.swift", 36, 2, 34);

    swift_getErrorValue();
    v32 = sub_26D25024C(v53);
    v34 = v33;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](11256352, 0xA300000000000000);
    MEMORY[0x26D6B7AB0](v32, v34);

    MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
    v35 = v54;
    v36 = v55;
    v37 = v31;
    v38 = v29;
    v39 = v29;
    goto LABEL_13;
  }

  v48 = v0;
  v13 = *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code + 8);
  v54 = *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code);
  v55 = v13;

  sub_26D26238C();
  v14 = sub_26D2626BC();
  v16 = v15;
  v12(v8, v4);

  if (!v16)
  {

    if (qword_2804F5710 != -1)
    {
      swift_once();
    }

    v40 = sub_26D26247C();
    __swift_project_value_buffer(v40, qword_2804F57C0);
    v41 = sub_26D26240C();
    v27 = v49;
    (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
    v42 = sub_26D26273C();
    v31 = sub_26D24F91C(v42, v43, v14, 0, v27, MEMORY[0x277D84F90], 0, "toURL()", 7, 2, "TelephonyKit/PairingParameters.swift", 36, 2, 37);

    swift_getErrorValue();
    v44 = sub_26D25024C(v52);
    v46 = v45;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](11256352, 0xA300000000000000);
    MEMORY[0x26D6B7AB0](v44, v46);

    MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
    v35 = v54;
    v36 = v55;
    v47 = v31;
    v38 = v14;
    v39 = v14;
LABEL_13:
    sub_26D251704(v38, 0, v39, 0, v35, v36, v31);

    sub_26D250E34(v27, &qword_2804F5860, &qword_26D263600);
    return swift_willThrow();
  }

  v17 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v17;
  sub_26D2564F4(v50, v11, 115, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v51 = v54;
  sub_26D254388(v14, v16, 112, 0xE100000000000000);
  v19 = sub_26D254490(v51);

  v54 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5888, qword_26D263458);
  sub_26D258018();
  v20 = sub_26D2624EC();
  v22 = v21;

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_26D26272C();

  v54 = 0xD000000000000019;
  v55 = 0x800000026D2645F0;
  if (*(v48 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_mode))
  {
    v23 = 100;
  }

  else
  {
    v23 = 101;
  }

  MEMORY[0x26D6B7AB0](v23, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](35, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](v20, v22);

  return v54;
}

Swift::Void __swiftcall PairingParameters.encode(with:)(NSCoder with)
{
  *(v1 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_mode);
  v3 = sub_26D2624FC();

  v4 = sub_26D2624FC();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID);
  v6 = *(v1 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID + 8);
  v7 = sub_26D2624FC();
  v8 = sub_26D2624FC();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code);
  v10 = *(v1 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code + 8);
  v11 = sub_26D2624FC();
  v12 = sub_26D2624FC();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
}

id PairingParameters.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t PairingParameters.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_26D2555E4();
  v2 = sub_26D26268C();
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v3 = v2;
    sub_26D26250C();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_26D2555E4()
{
  result = qword_2804F57F0;
  if (!qword_2804F57F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804F57F0);
  }

  return result;
}

unint64_t sub_26D255694@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_26D2625EC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_26D2605CC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_26D2605CC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_26D2625DC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_26D26258C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_26D26258C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_26D2625EC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_26D2605CC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_26D2625EC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_26D2605CC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_26D2605CC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_26D26258C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26D255A54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26D2627FC();
  sub_26D26256C();
  v6 = sub_26D26282C();

  return sub_26D2566E8(a1, a2, v6);
}

uint64_t sub_26D255ACC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5880, &qword_26D263450);
  v36 = a2;
  result = sub_26D26277C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_26D250E94(v25, v37);
      }

      else
      {
        sub_26D250D2C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_26D2627FC();
      sub_26D26256C();
      result = sub_26D26282C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26D250E94(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_26D255D84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5878, &qword_26D263448);
  v40 = a2;
  result = sub_26D26277C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_26D2627FC();
      sub_26D26256C();
      result = sub_26D26282C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26D256044(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26D2626FC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_26D2627FC();

      sub_26D26256C();
      v14 = sub_26D26282C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26D2561F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26D2626FC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26D2627FC();

      sub_26D26256C();
      v13 = sub_26D26282C();

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
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
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

  return result;
}

_OWORD *sub_26D2563A4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26D255A54(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26D2567A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26D255ACC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26D255A54(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26D2627EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_26D250E94(a1, v23);
  }

  else
  {
    sub_26D25667C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_26D2564F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26D255A54(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_26D255D84(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_26D255A54(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_26D2627EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_26D256944();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

_OWORD *sub_26D25667C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26D250E94(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_26D2566E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26D2627DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_26D2567A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5880, &qword_26D263450);
  v2 = *v0;
  v3 = sub_26D26276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_26D250D2C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26D250E94(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_26D256944()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5878, &qword_26D263448);
  v2 = *v0;
  v3 = sub_26D26276C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

char *sub_26D256ABC(char *a1, int64_t a2, char a3)
{
  result = sub_26D2530AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26D256ADC()
{
  sub_26D257F60();
  v0 = sub_26D2626AC();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v3 = 0;
  v4 = v0 + 40;
  v5 = MEMORY[0x277D84F90];
  v50 = v0 + 40;
  while (2)
  {
    v6 = (v4 + 16 * v3);
    v7 = v3;
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        result = sub_26D2627EC();
        __break(1u);
        return result;
      }

      v3 = v7 + 1;
      v53 = *(v6 - 1);
      v56 = *v6;

      v8 = sub_26D2626AC();
      if (v8[2] == 2)
      {
        break;
      }

      v6 += 2;
      ++v7;
      if (v2 == v3)
      {
        goto LABEL_21;
      }
    }

    v51 = v8;
    v54 = v8[4];
    v57 = v8[5];
    v9 = sub_26D2626CC();
    if (!v10)
    {
      v12 = v51[4];
      v11 = v51[5];

      v9 = v12;
    }

    v13 = v5;
    if (v51[2] < 2uLL)
    {
      goto LABEL_42;
    }

    v48 = v10;
    v49 = v9;
    v55 = v51[6];
    v58 = v51[7];
    v14 = sub_26D2626CC();
    if (v15)
    {
      v46 = v15;
      v47 = v14;
    }

    else
    {
      v46 = v51[7];
      v47 = v51[6];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_26D26038C(0, v5[2] + 1, 1, v5);
    }

    v16 = v13;
    v17 = v13[2];
    v18 = v16;
    v19 = v16[3];
    if (v17 >= v19 >> 1)
    {
      v18 = sub_26D26038C((v19 > 1), v17 + 1, 1, v18);
    }

    v18[2] = v17 + 1;
    v20 = &v18[4 * v17];
    v5 = v18;
    v20[4] = v49;
    v20[5] = v48;
    v20[6] = v47;
    v20[7] = v46;
    v4 = v50;
    if (v2 - 1 != v7)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v52 = v5[2];
  if (v52)
  {
    v21 = 0;
    v22 = v5 + 7;
    v23 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v21 >= v5[2])
      {
        goto LABEL_39;
      }

      v28 = *(v22 - 3);
      v27 = *(v22 - 2);
      v29 = *(v22 - 1);
      v30 = *v22;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = sub_26D255A54(v28, v27);
      v34 = v23[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_40;
      }

      v38 = v33;
      if (v23[3] < v37)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_31;
      }

      v44 = v32;
      sub_26D256944();
      v32 = v44;
      if (v38)
      {
LABEL_23:
        v24 = v32;

        v25 = (v23[7] + 16 * v24);
        v26 = v25[1];
        *v25 = v29;
        v25[1] = v30;

        goto LABEL_24;
      }

LABEL_32:
      v23[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v23[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v23[7] + 16 * v32);
      *v41 = v29;
      v41[1] = v30;
      v42 = v23[2];
      v36 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v36)
      {
        goto LABEL_41;
      }

      v23[2] = v43;
LABEL_24:
      ++v21;
      v22 += 4;
      if (v52 == v21)
      {
        goto LABEL_37;
      }
    }

    sub_26D255D84(v37, isUniquelyReferenced_nonNull_native);
    v32 = sub_26D255A54(v28, v27);
    if ((v38 & 1) != (v39 & 1))
    {
      goto LABEL_43;
    }

LABEL_31:
    if (v38)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v23 = MEMORY[0x277D84F98];
LABEL_37:

  return v23;
}

uint64_t sub_26D256EE4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v122 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5868, &qword_26D263440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v122 - v11;
  v13 = sub_26D2623DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = a1;
  sub_26D2623BC();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v126 = a2;
    v127 = v8;
    v32 = *(v14 + 32);
    v129 = v13;
    v32(v17, v12, v13);
    v128 = v17;
    v33 = sub_26D2623AC();
    v140 = 47;
    v141 = 0xE100000000000000;
    MEMORY[0x28223BE20](v33);
    v121[2] = &v140;
    v36 = sub_26D255694(0x7FFFFFFFFFFFFFFFLL, 1, sub_26D257F08, v121, v34, v35, v122);
    a2 = v36;
    v122[1] = v2;
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = 0;
      v39 = v36 + 56;
      v132 = *(v36 + 16);
      v123 = v37 - 1;
      v130 = MEMORY[0x277D84F90];
      v124 = v36 + 56;
      v125 = v14;
      do
      {
        v40 = (v39 + 32 * v38);
        v41 = v38;
        while (1)
        {
          if (v41 >= *(a2 + 16))
          {
            __break(1u);
            goto LABEL_56;
          }

          v42 = *(v40 - 3);
          v43 = *(v40 - 2);
          v38 = v41 + 1;
          v8 = *(v40 - 1);
          v44 = *v40;

          if (sub_26D26269C())
          {
            break;
          }

          v40 += 4;
          ++v41;
          if (v132 == v38)
          {
            v14 = v125;
            goto LABEL_18;
          }
        }

        v45 = MEMORY[0x26D6B7A60](v42, v43, v8, v44);
        v47 = v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = sub_26D2604C0(0, *(v130 + 2) + 1, 1, v130);
        }

        v14 = v125;
        v8 = *(v130 + 2);
        v48 = *(v130 + 3);
        if (v8 >= v48 >> 1)
        {
          v130 = sub_26D2604C0((v48 > 1), v8 + 1, 1, v130);
        }

        v49 = v130;
        *(v130 + 2) = v8 + 1;
        v50 = &v49[16 * v8];
        *(v50 + 4) = v45;
        *(v50 + 5) = v47;
        v39 = v124;
      }

      while (v123 != v41);
    }

    else
    {
      v130 = MEMORY[0x277D84F90];
    }

LABEL_18:

    v51 = v130;
    if (*(v130 + 2) != 2)
    {

      if (qword_2804F5710 != -1)
      {
        swift_once();
      }

      v57 = sub_26D26247C();
      v58 = __swift_project_value_buffer(v57, qword_2804F57C0);
      v59 = sub_26D26240C();
      v60 = v127;
      (*(*(v59 - 8) + 56))(v127, 1, 1, v59);
      v61 = sub_26D26273C();
      v63 = sub_26D24F91C(v61, v62, v131, v126, v60, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2, 58);

      swift_getErrorValue();
      v64 = v139;
      goto LABEL_28;
    }

    if ((*(v130 + 4) != 49 || *(v130 + 5) != 0xE100000000000000) && (sub_26D2627DC() & 1) == 0)
    {

      if (qword_2804F5710 != -1)
      {
        swift_once();
      }

      v90 = sub_26D26247C();
      v58 = __swift_project_value_buffer(v90, qword_2804F57C0);
      v91 = sub_26D26240C();
      v60 = v127;
      (*(*(v91 - 8) + 56))(v127, 1, 1, v91);
      v92 = sub_26D26273C();
      v63 = sub_26D24F91C(v92, v93, v131, v126, v60, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2, 63);

      swift_getErrorValue();
      v64 = v138;
      goto LABEL_28;
    }

    v52 = *(v51 + 6);
    v53 = *(v51 + 7);

    v54 = sub_26D26279C();

    if (v54)
    {
      v55 = v129;
      if (v54 != 1)
      {
        if (qword_2804F5710 != -1)
        {
          swift_once();
        }

        v94 = sub_26D26247C();
        v58 = __swift_project_value_buffer(v94, qword_2804F57C0);
        v95 = sub_26D26240C();
        v60 = v127;
        (*(*(v95 - 8) + 56))(v127, 1, 1, v95);
        v96 = sub_26D26273C();
        v63 = sub_26D24F91C(v96, v97, v131, v126, v60, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2, 68);

        swift_getErrorValue();
        v64 = v137;
        goto LABEL_28;
      }

      v56 = 1;
    }

    else
    {
      v56 = 0;
      v55 = v129;
    }

    v73 = sub_26D2623CC();
    if (!v74)
    {
      v102 = v73;
      if (qword_2804F5710 != -1)
      {
        swift_once();
      }

      v103 = sub_26D26247C();
      v104 = __swift_project_value_buffer(v103, qword_2804F57C0);
      v105 = sub_26D26240C();
      v106 = v127;
      (*(*(v105 - 8) + 56))(v127, 1, 1, v105);
      v107 = sub_26D26273C();
      v109 = sub_26D24F91C(v107, v108, v131, v126, v106, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2, 72);

      swift_getErrorValue();
      v110 = sub_26D25024C(v136);
      v112 = v111;
      v140 = 0;
      v141 = 0xE000000000000000;
      sub_26D2624DC();
      MEMORY[0x26D6B7AB0](11256352, 0xA300000000000000);
      MEMORY[0x26D6B7AB0](v110, v112);

      MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
      v113 = v140;
      v114 = v141;
      v115 = v109;
      v116 = v113;
      v31 = v104;
      sub_26D251704(v102, 0, v102, 0, v116, v114, v109);

      sub_26D250E34(v106, &qword_2804F5860, &qword_26D263600);
      goto LABEL_29;
    }

    v75 = sub_26D256ADC();

    if (*(v75 + 16) && (v76 = sub_26D255A54(115, 0xE100000000000000), (v77 & 1) != 0))
    {
      if (*(v75 + 16))
      {
        v78 = (*(v75 + 56) + 16 * v76);
        v80 = *v78;
        v79 = v78[1];

        v81 = sub_26D255A54(112, 0xE100000000000000);
        if (v82)
        {
          v83 = (*(v75 + 56) + 16 * v81);
          v85 = *v83;
          v84 = v83[1];

          v86 = type metadata accessor for PairingParameters();
          v87 = objc_allocWithZone(v86);
          v87[OBJC_IVAR____TtC12TelephonyKit17PairingParameters_mode] = v56;
          v88 = &v87[OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID];
          *v88 = v80;
          v88[1] = v79;
          v89 = &v87[OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code];
          *v89 = v85;
          v89[1] = v84;
          v133.receiver = v87;
          v133.super_class = v86;
          v31 = objc_msgSendSuper2(&v133, sel_init);
          (*(v14 + 8))(v128, v55);
          return v31;
        }
      }

      if (qword_2804F5710 != -1)
      {
        swift_once();
      }

      v117 = sub_26D26247C();
      v58 = __swift_project_value_buffer(v117, qword_2804F57C0);
      v118 = sub_26D26240C();
      v60 = v127;
      (*(*(v118 - 8) + 56))(v127, 1, 1, v118);
      v119 = sub_26D26273C();
      v63 = sub_26D24F91C(v119, v120, v131, v126, v60, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2, 80);

      swift_getErrorValue();
      v64 = v134;
    }

    else
    {

      if (qword_2804F5710 != -1)
      {
        swift_once();
      }

      v98 = sub_26D26247C();
      v58 = __swift_project_value_buffer(v98, qword_2804F57C0);
      v99 = sub_26D26240C();
      v60 = v127;
      (*(*(v99 - 8) + 56))(v127, 1, 1, v99);
      v100 = sub_26D26273C();
      v63 = sub_26D24F91C(v100, v101, v131, v126, v60, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2, 77);

      swift_getErrorValue();
      v64 = v135;
    }

LABEL_28:
    v65 = sub_26D25024C(v64);
    v67 = v66;
    v140 = 0;
    v141 = 0xE000000000000000;
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](11256352, 0xA300000000000000);
    MEMORY[0x26D6B7AB0](v65, v67);

    MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
    v68 = v140;
    v69 = v141;
    v70 = v63;
    v71 = v68;
    v31 = v58;
    sub_26D251704(0, 0, 0, 0, v71, v69, v63);

    sub_26D250E34(v60, &qword_2804F5860, &qword_26D263600);
LABEL_29:
    swift_willThrow();
    (*(v14 + 8))(v128, v129);
    return v31;
  }

  sub_26D250E34(v12, &qword_2804F5868, &qword_26D263440);
  if (qword_2804F5710 != -1)
  {
LABEL_56:
    swift_once();
  }

  v18 = sub_26D26247C();
  v19 = __swift_project_value_buffer(v18, qword_2804F57C0);
  v20 = sub_26D26240C();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = sub_26D26273C();
  v23 = sub_26D24F91C(v21, v22, v131, a2, v8, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2, 52);

  swift_getErrorValue();
  v24 = sub_26D25024C(v142);
  v26 = v25;
  v140 = 0;
  v141 = 0xE000000000000000;
  sub_26D2624DC();
  MEMORY[0x26D6B7AB0](11256352, 0xA300000000000000);
  MEMORY[0x26D6B7AB0](v24, v26);

  MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
  v27 = v140;
  v28 = v141;
  v29 = v23;
  v30 = v27;
  v31 = v19;
  sub_26D251704(0, 0, 0, 0, v30, v28, v23);

  sub_26D250E34(v8, &qword_2804F5860, &qword_26D263600);
  swift_willThrow();
  return v31;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26D257F08(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26D2627DC() & 1;
  }
}

unint64_t sub_26D257F60()
{
  result = qword_2804F5870;
  if (!qword_2804F5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5870);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_26D258018()
{
  result = qword_2804F5890;
  if (!qword_2804F5890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F5888, qword_26D263458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5890);
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

uint64_t sub_26D2580C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t dispatch thunk of Middleware.process(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_26D258200;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_26D258200(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

TelephonyKit::Selection_optional __swiftcall Selection.init(rawValue:)(TelephonyKit::Selection_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= TelephonyKit_Selection_unknownDefault)
  {
    value = TelephonyKit_Selection_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

unint64_t Selection.description.getter()
{
  result = 0x73656C6946;
  switch(*v0)
  {
    case 1:
      result = 1936748609;
      break;
    case 2:
      result = 0x73746361746E6F43;
      break;
    case 3:
      result = 0x7261646E656C6143;
      break;
    case 4:
      result = 0x736948206C6C6143;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x736567617373654DLL;
      break;
    case 7:
      result = 0x657061706C6C6157;
      break;
    case 8:
      result = 0x736F746F6850;
      break;
    case 9:
      result = 0x736D72616C41;
      break;
    case 0xA:
      result = 0x65726373656D6F48;
      break;
    case 0xB:
      result = 0x636973754DLL;
      break;
    case 0xC:
      result = 0x654D206563696F56;
      break;
    case 0xD:
      result = 0x74656C6C6157;
      break;
    case 0xE:
      result = 0x73746E756F636341;
      break;
    case 0xF:
      result = 0x6174614420707041;
      break;
    case 0x10:
      result = 0x7365746F4ELL;
      break;
    case 0x11:
      result = 0x64726F7773736150;
      break;
    case 0x12:
      result = 0x20726573776F7242;
      break;
    case 0x13:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26D2585A4()
{
  result = qword_2804F5900;
  if (!qword_2804F5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5900);
  }

  return result;
}

unint64_t sub_26D2585FC()
{
  result = qword_2804F5908;
  if (!qword_2804F5908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F5910, &qword_26D263518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Selection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Selection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26D2587B4()
{
  v0 = sub_26D26249C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26D26247C();
  __swift_allocate_value_buffer(v5, qword_2804F5918);
  __swift_project_value_buffer(v5, qword_2804F5918);
  v6 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v6);
  v7 = sub_26D26248C();
  v9 = v8;
  (*(v1 + 8))(v4, v0);
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0x296C696E28;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_26D2624DC();
  MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](v10, v11);

  return sub_26D26246C();
}

uint64_t sub_26D25895C()
{
  type metadata accessor for CrossPlatformCellularPlanClient.Actor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_2804F5930 = v0;
  return result;
}

uint64_t static CrossPlatformCellularPlanClient.Actor.shared.getter()
{
  if (qword_2804F5720 != -1)
  {
    swift_once();
  }
}

uint64_t CrossPlatformCellularPlanClient.Actor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26D258A5C()
{
  if (qword_2804F5720 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26D258AB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CrossPlatformCellularPlanClient.Actor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t CrossPlatformCellularPlanClient.Reason.hashValue.getter()
{
  v1 = *v0;
  sub_26D2627FC();
  MEMORY[0x26D6B7D10](v1);
  return sub_26D26282C();
}

uint64_t sub_26D258B78()
{
  v1 = *v0;
  sub_26D2627FC();
  MEMORY[0x26D6B7D10](v1);
  return sub_26D26282C();
}

uint64_t sub_26D258BEC()
{
  v1 = *v0;
  sub_26D2627FC();
  MEMORY[0x26D6B7D10](v1);
  return sub_26D26282C();
}

uint64_t CrossPlatformCellularPlanClient.Role.hashValue.getter()
{
  v1 = *v0;
  sub_26D2627FC();
  MEMORY[0x26D6B7D10](v1);
  return sub_26D26282C();
}

uint64_t CrossPlatformCellularPlanClient.Device.sessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CrossPlatformCellularPlanClient.ManualPairing.session.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CrossPlatformCellularPlanClient.ManualPairing.passcode.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

id CrossPlatformCellularPlanClient.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_26D258D84(v2, v3, v4);
}

id sub_26D258D84(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t CrossPlatformCellularPlanClient.code.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_26D250EA4(v0 + 168, v7, &qword_2804F5938, &qword_26D263608);
  if (v8)
  {
    v3 = *(*(*__swift_project_boxed_opaque_existential_1Tm(v7, v8) + 16) + 64);
    if (v3)
    {
      v4 = v3;
      v5 = sub_26D254B2C();
    }

    else
    {
      v5 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    sub_26D250E34(v7, &qword_2804F5938, &qword_26D263608);
    return 0;
  }

  return v5;
}

void CrossPlatformCellularPlanClient.manualPairing.getter(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_26D250EA4(v1 + 168, v21, &qword_2804F5938, &qword_26D263608);
  if (v22)
  {
    v5 = *(*(*__swift_project_boxed_opaque_existential_1Tm(v21, v22) + 16) + 64);
    if (v5)
    {
      v6 = v5;
      v7 = sub_26D254B2C();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0xE000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v14 = sub_26D256EE4(v7, v9);

    v15 = *&v14[OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID];
    v16 = *&v14[OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID + 8];
    v10 = sub_26D26253C();
    v12 = v17;
    v18 = *&v14[OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code];
    v19 = *&v14[OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code + 8];
    v11 = sub_26D26253C();
    v13 = v20;
  }

  else
  {
    sub_26D250E34(v21, &qword_2804F5938, &qword_26D263608);
    v10 = 0;
    v11 = 0;
    v12 = 0xE000000000000000;
    v13 = 0xE000000000000000;
  }

  *a1 = v10;
  a1[1] = v12;
  a1[2] = v11;
  a1[3] = v13;
}

uint64_t sub_26D259220@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26D25BBDC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_26D25B044(v3);
}

uint64_t sub_26D2592A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26D25BBB4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_26D25B044(v3);
  result = sub_26D25B054(v7);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t CrossPlatformCellularPlanClient.stateUpdateHandler.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_26D25B044(v1);
  return v1;
}

uint64_t CrossPlatformCellularPlanClient.stateUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  result = sub_26D25B054(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CrossPlatformCellularPlanClient.init(exporter:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v4 = sub_26D26247C();
  __swift_project_value_buffer(v4, qword_2804F5918);
  v5 = sub_26D26245C();
  v6 = sub_26D26266C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26D24E000, v5, v6, "init() with exporter", v7, 2u);
    MEMORY[0x26D6B8170](v7, -1, -1);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 24) = 3;
  sub_26D250E34(a2 + 48, &qword_2804F5940, &qword_26D263610);

  return sub_26D25B064(a1, a2 + 48);
}

uint64_t CrossPlatformCellularPlanClient.init(importer:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v4 = sub_26D26247C();
  __swift_project_value_buffer(v4, qword_2804F5918);
  v5 = sub_26D26245C();
  v6 = sub_26D26266C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26D24E000, v5, v6, "init() with importer", v7, 2u);
    MEMORY[0x26D6B8170](v7, -1, -1);
  }

  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 3;
  sub_26D250E34(a2 + 88, &qword_2804F5948, &qword_26D263618);

  return sub_26D25B064(a1, a2 + 88);
}

Swift::Void __swiftcall CrossPlatformCellularPlanClient.start()()
{
  v1 = v0;
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v2 = sub_26D26247C();
  __swift_project_value_buffer(v2, qword_2804F5918);
  v3 = sub_26D26245C();
  v4 = sub_26D26266C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26D24E000, v3, v4, "start()", v5, 2u);
    MEMORY[0x26D6B8170](v5, -1, -1);
  }

  if (*v1)
  {

    sub_26D2598CC();
  }

  else
  {

    sub_26D259770();
  }
}

uint64_t sub_26D259770()
{
  v1 = v0;
  result = sub_26D250EA4((v0 + 6), v13, &qword_2804F5940, &qword_26D263610);
  if (v14)
  {
    v3 = type metadata accessor for ReleaseCrossPlatformCellularPlanClientServerController();
    swift_allocObject();
    v4 = sub_26D25CE58(v13);
    v14 = v3;
    v15 = &off_287EA2368;
    v13[0] = v4;
    result = sub_26D25BC04(v13, (v0 + 16), &qword_2804F5950, &qword_26D263620);
    v5 = v0[19];
    if (v5)
    {
      v6 = v0[4];
      v7 = v1[5];
      v8 = v1[20];
      __swift_mutable_project_boxed_opaque_existential_1((v1 + 16), v1[19]);
      v9 = *(v8 + 8);
      v10 = *(v9 + 16);
      sub_26D25B044(v6);
      result = v10(v6, v7, v5, v9);
      if (v1[19])
      {
        sub_26D25B0CC((v1 + 16), v13);
        v11 = v14;
        v12 = v15;
        __swift_project_boxed_opaque_existential_1Tm(v13, v14);
        (*(v12[1] + 4))(v11);
        return __swift_destroy_boxed_opaque_existential_0Tm(v13);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D2598CC()
{
  v1 = v0;
  result = sub_26D250EA4((v0 + 11), &v13, &qword_2804F5948, &qword_26D263618);
  if (v14)
  {
    v3 = type metadata accessor for ReleaseCrossPlatformCellularPlanClientClientController();
    swift_allocObject();
    v4 = sub_26D25C6D0(&v13);
    v14 = v3;
    v15 = &off_287EA2310;
    *&v13 = v4;
    result = sub_26D25BC04(&v13, (v0 + 21), &qword_2804F5938, &qword_26D263608);
    v5 = v0[24];
    if (v5)
    {
      v6 = v0[4];
      v7 = v1[5];
      v8 = v1[25];
      __swift_mutable_project_boxed_opaque_existential_1((v1 + 21), v1[24]);
      v9 = *(v8 + 8);
      v10 = *(v9 + 16);
      sub_26D25B044(v6);
      result = v10(v6, v7, v5, v9);
      if (v1[24])
      {
        sub_26D25B0CC((v1 + 21), &v13);
        v11 = v14;
        v12 = v15;
        __swift_project_boxed_opaque_existential_1Tm(&v13, v14);
        (*(v12[1] + 4))(v11);
        return __swift_destroy_boxed_opaque_existential_0Tm(&v13);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall CrossPlatformCellularPlanClient.stop()()
{
  v1 = v0;
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v2 = sub_26D26247C();
  __swift_project_value_buffer(v2, qword_2804F5918);
  v3 = sub_26D26245C();
  v4 = sub_26D26266C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26D24E000, v3, v4, "stop()", v5, 2u);
    MEMORY[0x26D6B8170](v5, -1, -1);
  }

  if (*v1)
  {
    v6 = v1 + 168;
    v7 = *(v1 + 192);
    if (v7)
    {
      v8 = *(v1 + 200);
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 168, *(v1 + 192));
      (*(*(v8 + 8) + 16))(0, 0, v7);
      if (*(v1 + 192))
      {
        sub_26D25B0CC(v1 + 168, v17);
        v10 = v18;
        v9 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        (*(*(v9 + 8) + 48))(v10);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }
    }

    v11 = &qword_2804F5938;
    v12 = &qword_26D263608;
  }

  else
  {
    v6 = v1 + 128;
    v13 = *(v1 + 152);
    if (v13)
    {
      v14 = *(v1 + 160);
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 128, *(v1 + 152));
      (*(*(v14 + 8) + 16))(0, 0, v13);
      if (*(v1 + 152))
      {
        sub_26D25B0CC(v1 + 128, v17);
        v16 = v18;
        v15 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        (*(*(v15 + 8) + 48))(v16);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }
    }

    v11 = &qword_2804F5950;
    v12 = &qword_26D263620;
  }

  sub_26D250E34(v6, v11, v12);
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
}

Swift::Void __swiftcall CrossPlatformCellularPlanClient.cancel()()
{
  v1 = v0;
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v2 = sub_26D26247C();
  __swift_project_value_buffer(v2, qword_2804F5918);
  v3 = sub_26D26245C();
  v4 = sub_26D26266C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26D24E000, v3, v4, "cancel()", v5, 2u);
    MEMORY[0x26D6B8170](v5, -1, -1);
  }

  if (*v1)
  {
    v6 = v1 + 168;
    v7 = *(v1 + 192);
    if (v7)
    {
      v8 = *(v1 + 200);
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 168, *(v1 + 192));
      (*(*(v8 + 8) + 16))(0, 0, v7);
      if (*(v1 + 192))
      {
        sub_26D25B0CC(v1 + 168, v17);
        v10 = v18;
        v9 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        (*(*(v9 + 8) + 40))(v10);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }
    }

    v11 = &qword_2804F5938;
    v12 = &qword_26D263608;
  }

  else
  {
    v6 = v1 + 128;
    v13 = *(v1 + 152);
    if (v13)
    {
      v14 = *(v1 + 160);
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 128, *(v1 + 152));
      (*(*(v14 + 8) + 16))(0, 0, v13);
      if (*(v1 + 152))
      {
        sub_26D25B0CC(v1 + 128, v17);
        v16 = v18;
        v15 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        (*(*(v15 + 8) + 40))(v16);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }
    }

    v11 = &qword_2804F5950;
    v12 = &qword_26D263620;
  }

  sub_26D250E34(v6, v11, v12);
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
}

Swift::Void __swiftcall CrossPlatformCellularPlanClient.connect(code:)(Swift::String code)
{
  v2 = v1;
  object = code._object;
  countAndFlagsBits = code._countAndFlagsBits;
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v5 = sub_26D26247C();
  __swift_project_value_buffer(v5, qword_2804F5918);

  v6 = sub_26D26245C();
  v7 = sub_26D26266C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_26D25AA9C(countAndFlagsBits, object, v11);
    _os_log_impl(&dword_26D24E000, v6, v7, "connect() code=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x26D6B8170](v9, -1, -1);
    MEMORY[0x26D6B8170](v8, -1, -1);
  }

  if (*v2)
  {
    sub_26D26275C();
    __break(1u);
  }

  else
  {
    sub_26D250EA4((v2 + 128), v11, &qword_2804F5950, &qword_26D263620);
    if (v12)
    {
      v10 = *(*__swift_project_boxed_opaque_existential_1Tm(v11, v12) + 16);
      sub_26D25DA98();
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    else
    {
      sub_26D250E34(v11, &qword_2804F5950, &qword_26D263620);
    }
  }
}

uint64_t CrossPlatformCellularPlanClient.send(data:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  if (qword_2804F5720 != -1)
  {
    swift_once();
  }

  v4 = qword_2804F5930;
  v3[10] = qword_2804F5930;

  return MEMORY[0x2822009F8](sub_26D25A16C, v4, 0);
}

uint64_t sub_26D25A16C()
{
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = sub_26D26247C();
  __swift_project_value_buffer(v3, qword_2804F5918);
  sub_26D25B130(v1, v2);
  v4 = sub_26D26245C();
  v5 = sub_26D26266C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (!v6)
  {
    sub_26D25B184(*(v0 + 56), *(v0 + 64));
    goto LABEL_16;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v11 = *(*(v0 + 56) + 16);
    v12 = *(*(v0 + 56) + 24);
    v13 = __OFSUB__(v12, v11);
    v10 = v12 - v11;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v14 = *(v0 + 56);
    v15 = *(v0 + 60);
    v13 = __OFSUB__(v15, v14);
    v16 = v15 - v14;
    if (v13)
    {
      __break(1u);
      return result;
    }

    v10 = v16;
    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = *(v0 + 70);
LABEL_15:
  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  *(result + 4) = v10;
  v19 = result;
  sub_26D25B184(v18, v17);
  _os_log_impl(&dword_26D24E000, v4, v5, "send() bytes=%ld", v19, 0xCu);
  MEMORY[0x26D6B8170](v19, -1, -1);
LABEL_16:
  v20 = *(v0 + 72);

  if (*v20 != 1)
  {
    return sub_26D26275C();
  }

  sub_26D250EA4(*(v0 + 72) + 168, v0 + 16, &qword_2804F5938, &qword_26D263608);
  v21 = *(v0 + 40);
  if (v21)
  {
    v22 = *(*__swift_project_boxed_opaque_existential_1Tm((v0 + 16), v21) + 16);
    v23 = swift_task_alloc();
    *(v0 + 88) = v23;
    *v23 = v0;
    v23[1] = sub_26D25A444;
    v25 = *(v0 + 56);
    v24 = *(v0 + 64);

    return sub_26D25EB58(v25, v24);
  }

  else
  {
    sub_26D250E34(v0 + 16, &qword_2804F5938, &qword_26D263608);
    v26 = *(v0 + 8);

    return v26(0, 0xF000000000000000);
  }
}

uint64_t sub_26D25A444(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  return MEMORY[0x2822009F8](sub_26D25A55C, v5, 0);
}

uint64_t sub_26D25A55C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t CrossPlatformCellularPlanClient.sendNotification(data:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  if (qword_2804F5720 != -1)
  {
    swift_once();
  }

  v4 = qword_2804F5930;
  v3[10] = qword_2804F5930;

  return MEMORY[0x2822009F8](sub_26D25A660, v4, 0);
}

uint64_t sub_26D25A660()
{
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = sub_26D26247C();
  __swift_project_value_buffer(v3, qword_2804F5918);
  sub_26D25B130(v1, v2);
  v4 = sub_26D26245C();
  v5 = sub_26D26266C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (!v6)
  {
    sub_26D25B184(*(v0 + 56), *(v0 + 64));
    goto LABEL_16;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v11 = *(*(v0 + 56) + 16);
    v12 = *(*(v0 + 56) + 24);
    v13 = __OFSUB__(v12, v11);
    v10 = v12 - v11;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v14 = *(v0 + 56);
    v15 = *(v0 + 60);
    v13 = __OFSUB__(v15, v14);
    v16 = v15 - v14;
    if (v13)
    {
      __break(1u);
      return result;
    }

    v10 = v16;
    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = *(v0 + 70);
LABEL_15:
  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  *(result + 4) = v10;
  v19 = result;
  sub_26D25B184(v18, v17);
  _os_log_impl(&dword_26D24E000, v4, v5, "sendNotification() bytes=%ld", v19, 0xCu);
  MEMORY[0x26D6B8170](v19, -1, -1);
LABEL_16:
  v20 = *(v0 + 72);

  if (*v20)
  {
    return sub_26D26275C();
  }

  sub_26D250EA4(*(v0 + 72) + 128, v0 + 16, &qword_2804F5950, &qword_26D263620);
  v21 = *(v0 + 40);
  if (v21)
  {
    v22 = *(*__swift_project_boxed_opaque_existential_1Tm((v0 + 16), v21) + 16);
    v23 = swift_task_alloc();
    *(v0 + 88) = v23;
    *v23 = v0;
    v23[1] = sub_26D25A92C;
    v25 = *(v0 + 56);
    v24 = *(v0 + 64);

    return sub_26D25F01C(v25, v24);
  }

  else
  {
    sub_26D250E34(v0 + 16, &qword_2804F5950, &qword_26D263620);
    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_26D25A92C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26D25AA3C, v2, 0);
}

uint64_t sub_26D25AA3C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26D25AA9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26D25AB68(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26D250D2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_26D25AB68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26D25AC74(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26D26274C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26D25AC74(uint64_t a1, unint64_t a2)
{
  v4 = sub_26D25ACC0(a1, a2);
  sub_26D25ADF0(&unk_287EA1AA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26D25ACC0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26D25AEDC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26D26274C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26D2625BC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26D25AEDC(v10, 0);
        result = sub_26D26271C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26D25ADF0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26D25AF50(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26D25AEDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5970, &unk_26D263AC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26D25AF50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5970, &unk_26D263AC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_26D25B044(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26D25B054(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26D25B064(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t sub_26D25B0CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26D25B130(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26D25B184(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_26D25B1DC()
{
  result = qword_2804F5958;
  if (!qword_2804F5958)
  {
    type metadata accessor for CrossPlatformCellularPlanClient.Actor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5958);
  }

  return result;
}

unint64_t sub_26D25B258()
{
  result = qword_2804F5960;
  if (!qword_2804F5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5960);
  }

  return result;
}

unint64_t sub_26D25B2B0()
{
  result = qword_2804F5968;
  if (!qword_2804F5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5968);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12TelephonyKit31CrossPlatformCellularPlanClientV5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_12TelephonyKit31CrossPlatformCellularPlanClientV5StateOIeghn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12TelephonyKit31CrossPlatformCellularPlanClientV10Importable_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_26D25B394(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26D25B3F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D25B4B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26D25B4FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_26D25B540(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CrossPlatformCellularPlanClient.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrossPlatformCellularPlanClient.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D25B6D4(uint64_t a1, int a2)
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

uint64_t sub_26D25B71C(uint64_t result, int a2, int a3)
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

uint64_t sub_26D25B768(uint64_t a1, int a2)
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

uint64_t sub_26D25B7B0(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of CrossPlatformCellularPlanClient.Exportable.didReceive(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_26D258200;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CrossPlatformCellularPlanClient.Importable.didReceiveNotification(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_26D25BA88;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_26D25BA88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26D25BB7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D25BBB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26D25BBDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26D25BC04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t CrossPlatformCellularPlanClientMiddleware.process(data:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26D25BCAC, 0, 0);
}

uint64_t sub_26D25BCAC()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_26D25BDDC;
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_26D25BDDC()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2(0, 0xF000000000000000);
}

uint64_t CrossPlatformCellularPlanClientMiddleware.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26D25BF30(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_26D25BF58, 0, 0);
}

uint64_t sub_26D25BF58()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_26D25C0C4;
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v2, v3);
}

uint64_t CrossPlatformCellularPlanServerMiddleware.process(data:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26D25C104, 0, 0);
}

uint64_t sub_26D25C104()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_26D25C234;
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_26D25C234(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t CrossPlatformCellularPlanServerMiddleware.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26D25C390(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_26D25C3B8, 0, 0);
}

uint64_t sub_26D25C3B8()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_26D25C524;
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_26D25C528()
{
  v0 = sub_26D26249C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26D26247C();
  __swift_allocate_value_buffer(v5, qword_2804F5978);
  __swift_project_value_buffer(v5, qword_2804F5978);
  v6 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v6);
  v7 = sub_26D26248C();
  v9 = v8;
  (*(v1 + 8))(v4, v0);
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0x296C696E28;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_26D2624DC();
  MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](v10, v11);

  return sub_26D26246C();
}

uint64_t sub_26D25C6D0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for ClientProxy();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  swift_allocObject();
  v4 = sub_26D25D8AC();
  *(v2 + 16) = v4;
  sub_26D25B0CC(a1, &v8);
  v5 = type metadata accessor for CrossPlatformCellularPlanClientMiddleware();
  v6 = swift_allocObject();
  sub_26D25BC74(&v8, v6 + 16);
  v9 = v5;
  v10 = &protocol witness table for CrossPlatformCellularPlanClientMiddleware;
  *&v8 = v6;
  swift_beginAccess();

  sub_26D25CC40(&v8, v4 + 24);
  swift_endAccess();

  sub_26D25BC74(a1, v2 + 24);
  return v2;
}

uint64_t sub_26D25C7C0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2[11];
  v4 = v2[12];
  v2[11] = sub_26D25CBEC;
  v2[12] = v1;

  sub_26D25B054(v3);
  v5 = v2[15];
  v6 = v2[16];
  v2[15] = sub_26D25CC18;
  v2[16] = v1;

  sub_26D25B054(v5);
  return sub_26D25E9E0();
}

void sub_26D25C848(_BYTE *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (v2 == 2)
    {
      v2 = 0;
      v6 = 3;
      v5 = 4;
      v7 = v1[8];
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v2 != 1)
      {
        return;
      }

      v3 = *(v1[2] + 64);
      if (v3)
      {
        v4 = (v3 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID);
        v5 = *v4;
        v2 = v4[1];

        v6 = 0;
        v7 = v1[8];
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v10 = v1;
        if (qword_2804F5728 != -1)
        {
          swift_once();
        }

        v11 = sub_26D26247C();
        __swift_project_value_buffer(v11, qword_2804F5978);
        v12 = sub_26D26245C();
        v13 = sub_26D26267C();
        if (os_log_type_enabled(v12, v13))
        {
          v5 = 2;
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_26D24E000, v12, v13, "Found device, but missing pairing parameters", v14, 2u);
          MEMORY[0x26D6B8170](v14, -1, -1);

          v2 = 0;
        }

        else
        {

          v2 = 0;
          v5 = 2;
        }

        v6 = 2;
        v1 = v10;
        v7 = v10[8];
        if (!v7)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_10:
    v8 = v1[9];
    v15 = v5;
    v16 = v2;
    v17 = v6;
    v9 = v6;
    sub_26D25BC70(v7);
    sub_26D258D84(v5, v2, v9);
    v7(&v15);
    sub_26D25B054(v7);
    sub_26D25CC20(v5, v2, v9);
    sub_26D25CC20(v15, v16, v17);
    return;
  }

  v5 = 3;
  v6 = 3;
  v7 = v1[8];
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_18:

  sub_26D25CC20(v5, v2, v6);
}

_BYTE *sub_26D25CA64(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    v3 = *(a2 + 72);
    v6[1] = *result;
    sub_26D25C0C8(v6);
    v4[0] = v6[0];
    v4[1] = 0;
    v5 = 2;

    v2(v4);
    return sub_26D25B054(v2);
  }

  return result;
}

uint64_t sub_26D25CAE4()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v2 = v0[9];
  sub_26D25B054(v0[8]);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_26D25CB50(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 72);
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  return sub_26D25B054(v4);
}

uint64_t sub_26D25CB9C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v3;
  v6 = *(v5 + 16);
  v7 = *(v6 + 88);
  v8 = *(v6 + 96);
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  sub_26D25B054(v7);
  v9 = *(v5 + 16);
  v10 = *(v9 + 120);
  v11 = *(v9 + 128);
  *(v9 + 120) = 0;
  *(v9 + 128) = 0;
  sub_26D25B054(v10);
  v12 = *(v5 + 16);
  return sub_26D25EA9C(a3);
}

void sub_26D25CC20(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_26D25CC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5990, &qword_26D263CD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D25CCB0()
{
  v0 = sub_26D26249C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26D26247C();
  __swift_allocate_value_buffer(v5, qword_2804F5998);
  __swift_project_value_buffer(v5, qword_2804F5998);
  v6 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v6);
  v7 = sub_26D26248C();
  v9 = v8;
  (*(v1 + 8))(v4, v0);
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0x296C696E28;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_26D2624DC();
  MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](v10, v11);

  return sub_26D26246C();
}

uint64_t sub_26D25CE58(uint64_t *a1)
{
  v2 = v1;
  type metadata accessor for ServerProxy();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  swift_allocObject();
  v4 = sub_26D25D8AC();
  *(v2 + 16) = v4;
  sub_26D25B0CC(a1, &v8);
  v5 = type metadata accessor for CrossPlatformCellularPlanServerMiddleware();
  v6 = swift_allocObject();
  sub_26D25BC74(&v8, v6 + 16);
  v9 = v5;
  v10 = &protocol witness table for CrossPlatformCellularPlanServerMiddleware;
  *&v8 = v6;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  swift_beginAccess();
  sub_26D25CC40(&v8, v4 + 24);
  swift_endAccess();

  return v2;
}

uint64_t sub_26D25CF44()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2[11];
  v4 = v2[12];
  v2[11] = sub_26D25D308;
  v2[12] = v1;

  sub_26D25B054(v3);
  v5 = v2[15];
  v6 = v2[16];
  v2[15] = sub_26D25D334;
  v2[16] = v1;

  sub_26D25B054(v5);
  return sub_26D25E9E0();
}

void sub_26D25CFCC(_BYTE *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (v2 == 2)
    {
      v2 = 0;
      v6 = 3;
      v5 = 4;
      v7 = v1[3];
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v2 != 1)
      {
        return;
      }

      v3 = *(v1[2] + 64);
      if (v3)
      {
        v4 = (v3 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID);
        v5 = *v4;
        v2 = v4[1];

        v6 = 0;
        v7 = v1[3];
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v10 = v1;
        if (qword_2804F5730 != -1)
        {
          swift_once();
        }

        v11 = sub_26D26247C();
        __swift_project_value_buffer(v11, qword_2804F5998);
        v12 = sub_26D26245C();
        v13 = sub_26D26267C();
        if (os_log_type_enabled(v12, v13))
        {
          v5 = 2;
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_26D24E000, v12, v13, "Found device, but missing pairing parameters", v14, 2u);
          MEMORY[0x26D6B8170](v14, -1, -1);

          v2 = 0;
        }

        else
        {

          v2 = 0;
          v5 = 2;
        }

        v6 = 2;
        v1 = v10;
        v7 = v10[3];
        if (!v7)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_10:
    v8 = v1[4];
    v15 = v5;
    v16 = v2;
    v17 = v6;
    v9 = v6;
    sub_26D25BC70(v7);
    sub_26D258D84(v5, v2, v9);
    v7(&v15);
    sub_26D25B054(v7);
    sub_26D25CC20(v5, v2, v9);
    sub_26D25CC20(v15, v16, v17);
    return;
  }

  v5 = 3;
  v6 = 3;
  v7 = v1[3];
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_18:

  sub_26D25CC20(v5, v2, v6);
}

_BYTE *sub_26D25D1E8(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 32);
    v6[1] = *result;
    sub_26D25C0C8(v6);
    v4[0] = v6[0];
    v4[1] = 0;
    v5 = 2;

    v2(v4);
    return sub_26D25B054(v2);
  }

  return result;
}

uint64_t sub_26D25D268()
{
  v1 = v0[2];

  v2 = v0[4];
  sub_26D25B054(v0[3]);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26D25D2CC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 32);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return sub_26D25B054(v4);
}

uint64_t sub_26D25D4B4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_26D25D51C, 0, 0);
}

uint64_t sub_26D25D51C()
{
  v1 = *(v0 + 16);
  v1[2](v1, 2);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26D25D594()
{
  v0 = sub_26D25D97C();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_26D25D5E8()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D25D628()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26D25BA88;

  return sub_26D25D4B4(v2);
}

uint64_t sub_26D25D6D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26D25D8A8;

  return sub_26D260D30(v2, v3, v5);
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D25D7D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26D25D8A8;

  return sub_26D260E1C(a1, v4, v5, v7);
}

uint64_t sub_26D25D8AC()
{
  type metadata accessor for XPCConnection();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 24) = 0u;
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();
  sub_26D25CC40(v5, v0 + 24);
  swift_endAccess();
  v2 = *(v0 + 64);
  *(v0 + 64) = 0;

  swift_beginAccess();
  v3 = *(v0 + 80);
  *(v0 + 80) = 0;

  return v0;
}

uint64_t sub_26D25D97C()
{
  v1 = *(v0 + 16);

  sub_26D250E34(v0 + 24, &qword_2804F5990, &qword_26D263CD8);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);
  sub_26D25B054(*(v0 + 88));
  v5 = *(v0 + 112);
  sub_26D25B054(*(v0 + 104));
  v6 = *(v0 + 128);
  sub_26D25B054(*(v0 + 120));
  v7 = *(v0 + 144);
  sub_26D25B054(*(v0 + 136));
  v8 = *(v0 + 160);
  sub_26D25B054(*(v0 + 152));
  return v0;
}

void sub_26D25DA98()
{
  v1 = *(v0 + 16);
  v2 = sub_26D2619D0();
  if (v2)
  {
    v3 = v2;
    oslog = sub_26D2624FC();
    [v3 connectWithCode_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2804F5738 != -1)
    {
      swift_once();
    }

    v4 = sub_26D26247C();
    __swift_project_value_buffer(v4, qword_2804F59B8);
    oslog = sub_26D26245C();
    v5 = sub_26D26267C();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26D24E000, oslog, v5, "failed to establish xpc", v6, 2u);
      MEMORY[0x26D6B8170](v6, -1, -1);
    }
  }
}

TelephonyKit::XPCDaemonState_optional sub_26D25DBD0(Swift::UInt8 a1)
{
  result.value = XPCDaemonState.init(rawValue:)(a1).value;
  if (v6 != 10)
  {
    v3 = *(v1 + 88);
    if (v3)
    {
      v4 = *(v1 + 96);
      v5 = v6;

      v3(&v5);
      return sub_26D25B054(v3);
    }
  }

  return result;
}

TelephonyKit::Reason_optional sub_26D25DC38(Swift::UInt8 a1)
{
  result.value = Reason.init(rawValue:)(a1).value;
  if (v6 != 18)
  {
    v3 = *(v1 + 120);
    if (v3)
    {
      v4 = *(v1 + 128);
      v5 = v6;

      v3(&v5);
      return sub_26D25B054(v3);
    }
  }

  return result;
}

uint64_t sub_26D25DCA0(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_2804F5738 != -1)
  {
    swift_once();
  }

  v7 = sub_26D26247C();
  __swift_project_value_buffer(v7, qword_2804F59B8);

  v8 = sub_26D26245C();
  v9 = sub_26D26266C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_26D25AA9C(a1, a2, &v15);
    _os_log_impl(&dword_26D24E000, v8, v9, "Received code. code=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x26D6B8170](v11, -1, -1);
    MEMORY[0x26D6B8170](v10, -1, -1);
  }

  v12 = sub_26D256EE4(a1, a2);
  v13 = *(v2 + 64);
  *(v2 + 64) = v12;

  return MEMORY[0x2821F96F8]();
}

void sub_26D25DF60(Swift::UInt8 a1, uint64_t a2, uint64_t a3)
{
  Selection.init(rawValue:)(a1);
  v6 = v24[0];
  if (v24[0] == 20)
  {
    if (qword_2804F5738 != -1)
    {
      swift_once();
    }

    v7 = sub_26D26247C();
    __swift_project_value_buffer(v7, qword_2804F59B8);
    oslog = sub_26D26245C();
    v8 = sub_26D26267C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 16777472;
      v9[4] = a1;
      _os_log_impl(&dword_26D24E000, oslog, v8, "received an unexpected selection. selection=%hhu", v9, 5u);
      MEMORY[0x26D6B8170](v9, -1, -1);
    }
  }

  else
  {
    if (qword_2804F5738 != -1)
    {
      swift_once();
    }

    v10 = sub_26D26247C();
    __swift_project_value_buffer(v10, qword_2804F59B8);
    v11 = sub_26D26245C();
    v12 = sub_26D26266C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 16777984;
      *(v13 + 4) = v6;
      *(v13 + 5) = 2048;
      *(v13 + 7) = a2;
      *(v13 + 15) = 2048;
      *(v13 + 17) = a3;
      _os_log_impl(&dword_26D24E000, v11, v12, "estimated. selection=%hhu, bytes=%llu, items=%llu", v13, 0x19u);
      MEMORY[0x26D6B8170](v13, -1, -1);
    }

    v15 = sub_26D25D9F4();
    v16 = *v14;
    if (*v14)
    {
      v17 = v14;
      v18 = *v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_26D2606D8(0, *(v16 + 2) + 1, 1, v16);
        *v17 = v16;
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      if (v21 >= v20 >> 1)
      {
        v16 = sub_26D2606D8((v20 > 1), v21 + 1, 1, v16);
        *v17 = v16;
      }

      *(v16 + 2) = v21 + 1;
      v22 = &v16[24 * v21];
      v22[32] = v6;
      *(v22 + 5) = a2;
      *(v22 + 6) = a3;
      (v15)(v24, 0);
    }

    else
    {
      (v15)(v24, 0);
    }
  }
}

void sub_26D25E240(Swift::UInt8 a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Selection.init(rawValue:)(a1);
  v10 = v37[0];
  if (LOBYTE(v37[0]) == 20)
  {
    if (qword_2804F5738 != -1)
    {
      swift_once();
    }

    v11 = sub_26D26247C();
    __swift_project_value_buffer(v11, qword_2804F59B8);
    oslog = sub_26D26245C();
    v12 = sub_26D26267C();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 16777472;
      v13[4] = a1;
      _os_log_impl(&dword_26D24E000, oslog, v12, "received an unexpected selection. selection=%hhu", v13, 5u);
      MEMORY[0x26D6B8170](v13, -1, -1);
    }

LABEL_21:

    return;
  }

  if (a2 > 3u)
  {
    if (qword_2804F5738 != -1)
    {
      swift_once();
    }

    v28 = sub_26D26247C();
    __swift_project_value_buffer(v28, qword_2804F59B8);
    oslog = sub_26D26245C();
    v29 = sub_26D26267C();
    if (os_log_type_enabled(oslog, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37[0] = v31;
      *v30 = 136315394;
      v38 = v10;
      v32 = Selection.description.getter();
      v34 = sub_26D25AA9C(v32, v33, v37);

      *(v30 + 4) = v34;
      *(v30 + 12) = 256;
      *(v30 + 14) = a2;
      _os_log_impl(&dword_26D24E000, oslog, v29, "received an unexpected result. selection=%s, result=%hhu", v30, 0xFu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x26D6B8170](v31, -1, -1);
      MEMORY[0x26D6B8170](v30, -1, -1);

      return;
    }

    goto LABEL_21;
  }

  if (qword_2804F5738 != -1)
  {
    swift_once();
  }

  v14 = sub_26D26247C();
  __swift_project_value_buffer(v14, qword_2804F59B8);
  v15 = sub_26D26245C();
  v16 = sub_26D26266C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 16778496;
    *(v17 + 4) = v10;
    *(v17 + 5) = 256;
    *(v17 + 7) = a2;
    *(v17 + 8) = 2048;
    *(v17 + 10) = a3;
    *(v17 + 18) = 2048;
    *(v17 + 20) = a4;
    *(v17 + 28) = 2048;
    *(v17 + 30) = a5;
    _os_log_impl(&dword_26D24E000, v15, v16, "transferred. selection=%hhu, result=%hhu, bytes=%llu, items=%llu, errors=%llu", v17, 0x26u);
    MEMORY[0x26D6B8170](v17, -1, -1);
  }

  v19 = sub_26D25DA48();
  v20 = *v18;
  if (*v18)
  {
    v21 = v18;
    v22 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v21 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_26D2607F4(0, *(v20 + 2) + 1, 1, v20);
      *v21 = v20;
    }

    v25 = *(v20 + 2);
    v24 = *(v20 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v35 = sub_26D2607F4((v24 > 1), v25 + 1, 1, v20);
      v26 = v25 + 1;
      v20 = v35;
      *v21 = v35;
    }

    *(v20 + 2) = v26;
    v27 = &v20[32 * v25];
    v27[32] = v10;
    v27[33] = a2;
    *(v27 + 5) = a3;
    *(v27 + 6) = a4;
    *(v27 + 7) = a5;
    (v19)(v37, 0);
  }

  else
  {
    (v19)(v37, 0);
  }
}

uint64_t sub_26D25E688(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_26D25E6AC, 0, 0);
}

uint64_t sub_26D25E6AC()
{
  v1 = v0[17];
  swift_beginAccess();
  sub_26D26031C(v1 + 24, (v0 + 2));
  if (v0[5])
  {
    sub_26D25B0CC((v0 + 2), (v0 + 7));
    sub_26D250E34((v0 + 2), &qword_2804F5990, &qword_26D263CD8);
    v2 = v0[10];
    v3 = v0[11];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v2);
    v4 = *(v3 + 8);
    v11 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_26D25E87C;
    v8 = v0[15];
    v7 = v0[16];

    return v11(v8, v7, v2, v3);
  }

  else
  {
    sub_26D250E34((v0 + 2), &qword_2804F5990, &qword_26D263CD8);
    v10 = v0[1];

    return v10(0, 0xF000000000000000);
  }
}

uint64_t sub_26D25E87C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v6 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;

  return MEMORY[0x2822009F8](sub_26D25E97C, 0, 0);
}

uint64_t sub_26D25E97C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_26D25E9E0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  result = sub_26D261A74();
  if (result)
  {
    result = *(v2 + 16);
    if (result)
    {
      v4 = [result remoteObjectProxy];
      sub_26D2626DC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59D0, &qword_26D263E78);
      result = swift_dynamicCast();
      if (result)
      {
        [v5 addWithClient_];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_26D25EA9C(char a1)
{
  v3 = *(v1 + 16);
  result = sub_26D261A74();
  if (result)
  {
    result = *(v3 + 16);
    if (result)
    {
      v5 = [result remoteObjectProxy];
      sub_26D2626DC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59D0, &qword_26D263E78);
      result = swift_dynamicCast();
      if (result)
      {
        [v6 removeWithCancelled_];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_26D25EB58(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59F0, &qword_26D263E98);
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D25EC28, 0, 0);
}

uint64_t sub_26D25EC28()
{
  v1 = *(v0[27] + 16);
  if (sub_26D261A74() & 1) != 0 && (v2 = *(v1 + 16)) != 0 && ([v2 remoteObjectProxy], sub_26D2626DC(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59D0, &qword_26D263E78), (swift_dynamicCast()))
  {
    v4 = v0[29];
    v3 = v0[30];
    v5 = v0[28];
    v6 = v0[25];
    v7 = v0[26];
    v8 = v0[24];
    v0[31] = v8;
    v9 = sub_26D26241C();
    v0[32] = v9;
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_26D25EEBC;
    swift_continuation_init();
    v0[17] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59F8, &qword_26D263EA0);
    sub_26D26262C();
    (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26D25FFF0;
    v0[13] = &block_descriptor_68;
    [v8 sendWithData:v9 completionHandler:?];
    (*(v4 + 8))(boxed_opaque_existential_0, v5);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v11 = v0[30];

    v12 = v0[1];

    return v12(0, 0xF000000000000000);
  }
}

uint64_t sub_26D25EEBC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26D25EF9C, 0, 0);
}

uint64_t sub_26D25EF9C()
{
  v1 = v0[31];
  v2 = v0[32];
  swift_unknownObjectRelease();
  v4 = v0[22];
  v3 = v0[23];

  v5 = v0[30];

  v6 = v0[1];

  return v6(v4, v3);
}

uint64_t sub_26D25F01C(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59E8, &qword_26D263E90);
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D25F0EC, 0, 0);
}

uint64_t sub_26D25F0EC()
{
  v1 = *(v0[25] + 16);
  if (sub_26D261A74() & 1) != 0 && (v2 = *(v1 + 16)) != 0 && ([v2 remoteObjectProxy], sub_26D2626DC(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59D0, &qword_26D263E78), (swift_dynamicCast()))
  {
    v4 = v0[27];
    v3 = v0[28];
    v5 = v0[26];
    v6 = v0[23];
    v7 = v0[24];
    v8 = v0[22];
    v0[29] = v8;
    v9 = sub_26D26241C();
    v0[30] = v9;
    v0[2] = v0;
    v0[3] = sub_26D25F360;
    swift_continuation_init();
    v0[17] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    sub_26D26262C();
    (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26D26007C;
    v0[13] = &block_descriptor;
    [v8 sendNotificationWithData:v9 completionHandler:v0 + 10];
    (*(v4 + 8))(boxed_opaque_existential_0, v5);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v11 = v0[28];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_26D25F360()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26D25F440, 0, 0);
}

uint64_t sub_26D25F440()
{
  v1 = v0[29];
  v2 = v0[30];
  swift_unknownObjectRelease();

  v3 = v0[28];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26D25F4AC()
{
  v0 = sub_26D26249C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26D26247C();
  __swift_allocate_value_buffer(v5, qword_2804F59B8);
  __swift_project_value_buffer(v5, qword_2804F59B8);
  v6 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v6);
  sub_26D26248C();
  (*(v1 + 8))(v4, v0);
  return sub_26D26246C();
}

uint64_t sub_26D25F774(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_26D25F7DC, 0, 0);
}

uint64_t sub_26D25F7DC()
{
  v1 = *(v0 + 16);
  v1[2](v1, 0);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26D25F884(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

uint64_t sub_26D25FC30(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a1;

  v6 = sub_26D26242C();
  v8 = v7;

  v3[4] = v6;
  v3[5] = v8;
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_26D25FD0C;

  return sub_26D25E688(v6, v8);
}

uint64_t sub_26D25FD0C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  sub_26D25B184(v8, v7);

  if (a2 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_26D26241C();
    sub_26D26021C(a1, a2);
  }

  v12 = *(v5 + 24);
  (v12)[2](v12, v11);

  _Block_release(v12);
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_26D25FEC0(uint64_t result, double a2, double a3)
{
  v3 = *(result + 152);
  if (v3)
  {
    v5 = *(result + 160);
    v6 = a3 < 0.0;
    if (a3 >= 0.0)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0.0;
    }

    sub_26D25B044(v3);
    v3(*&v7, v6, a2);

    return sub_26D25B054(v3);
  }

  return result;
}

uint64_t sub_26D25FFF0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_26D26242C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59F0, &qword_26D263E98);
  return sub_26D26263C();
}

uint64_t sub_26D26007C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59E8, &qword_26D263E90);
  return sub_26D26263C();
}

uint64_t sub_26D2600C4()
{
  sub_26D25D97C();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_26D26011C()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D260164()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26D25D8A8;

  return sub_26D25FC30(v2, v3, v4);
}

uint64_t sub_26D26021C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D25B184(a1, a2);
  }

  return a1;
}

uint64_t sub_26D260230()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D260270()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26D25BA88;

  return sub_26D25F774(v2);
}

uint64_t sub_26D26031C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5990, &qword_26D263CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_26D26038C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5A00, &qword_26D263EA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5A08, &qword_26D263EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D2604C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F57A8, &qword_26D263318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D2605CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5A10, &qword_26D263EB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}