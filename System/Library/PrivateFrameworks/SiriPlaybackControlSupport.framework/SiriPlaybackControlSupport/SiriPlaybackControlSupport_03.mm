uint64_t sub_268BECD64(void (*a1)(char *, uint64_t), unint64_t a2, uint64_t a3)
{
  v45 = a1;
  v5 = sub_268C15A1C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_2802D2F10);
  v42 = v6[2];
  v43 = v13;
  v42(v12);

  v14 = sub_268C159FC();
  v15 = sub_268C15DFC();

  v16 = os_log_type_enabled(v14, v15);
  v46 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v41 = v9;
    v18 = v6;
    v19 = v17;
    v20 = swift_slowAlloc();
    v40 = a3;
    v21 = v20;
    v47 = v20;
    *v19 = 136315138;
    v22 = v45;
    *(v19 + 4) = sub_268BB3D28(v45, a2, &v47);
    _os_log_impl(&dword_268BAD000, v14, v15, "Finding closest match to user query: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v23 = v21;
    a3 = v40;
    MEMORY[0x26D628010](v23, -1, -1);
    MEMORY[0x26D628010](v19, -1, -1);

    v24 = v18;
    v9 = v41;
    v25 = v24[1];
    v25(v12, v5);
  }

  else
  {

    v25 = v6[1];
    v25(v12, v5);
    v22 = v45;
  }

  type metadata accessor for LocalizationProvider();
  inited = swift_initStaticObject();
  v27 = sub_268BF019C(v22, a2, a3, inited, 2, v44);
  v29 = v28;
  (v42)(v9, v43, v5);
  sub_268BF2768(v27, v29);
  v30 = sub_268C159FC();
  v31 = sub_268C15DFC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47 = v33;
    *v32 = 136315138;
    v34 = sub_268BE8898(v27, v29);
    v45 = v25;
    v35 = v34;
    v37 = v36;
    sub_268BF277C(v27, v29);
    v38 = sub_268BB3D28(v35, v37, &v47);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_268BAD000, v30, v31, "Closest match to the requested entity: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D628010](v33, -1, -1);
    MEMORY[0x26D628010](v32, -1, -1);

    v45(v9, v5);
  }

  else
  {
    sub_268BF277C(v27, v29);

    v25(v9, v5);
  }

  result = MEMORY[0x277D84F90];
  if (v29 != 3)
  {
    return v27;
  }

  return result;
}

uint64_t sub_268BED1A0(id *a1, unint64_t a2)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v66 - v10;
  MEMORY[0x28223BE20](v12);
  v71 = &v66 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v66 - v15);
  if (qword_2802CDB68 != -1)
  {
LABEL_37:
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_2802D2EC0);
  v18 = v5[2];
  v78 = v17;
  v79 = v5 + 2;
  v77 = v18;
  (v18)(v16);

  v19 = sub_268C159FC();
  v20 = sub_268C15DDC();
  v21 = os_log_type_enabled(v19, v20);
  v66 = v8;
  v67 = v11;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v76 = a1;
    v24 = a2;
    v25 = v23;
    v82 = v23;
    *v22 = 136315138;
    v26 = MEMORY[0x26D6272E0](v24, &type metadata for Accessory);
    v11 = v27;

    v28 = sub_268BB3D28(v26, v11, &v82);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_268BAD000, v19, v20, "Searching for devices matching predicate across accessories: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v29 = v25;
    a2 = v24;
    a1 = v76;
    MEMORY[0x26D628010](v29, -1, -1);
    MEMORY[0x26D628010](v22, -1, -1);
  }

  else
  {
  }

  v30 = v5[1];
  ++v5;
  v80 = v30;
  v31 = (v30)(v16, v4);
  v32 = 0;
  v69 = a1[2];
  v8 = a1[14];
  v72 = a1[13];
  v75 = a2 + 32;
  a2 = *(a2 + 16);
  v68 = MEMORY[0x277D84F90];
  v31.n128_u64[0] = 136315138;
  v70 = v31;
  v33 = v71;
  v76 = v8;
  v74 = a2;
LABEL_6:
  a1 = v72;
  while (a2 != v32)
  {
    if (v32 >= a2)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (__OFADD__(v32, 1))
    {
      goto LABEL_36;
    }

    v73 = v32 + 1;
    v84 = *(v75 + 8 * v32);
    v34 = v84;
    v77(v33, v78, v4);
    v35 = v84;
    v36 = v34;
    v37 = sub_268C159FC();
    v38 = sub_268C15DDC();

    if (os_log_type_enabled(v37, v38))
    {
      v11 = swift_slowAlloc();
      v39 = v5;
      v40 = v4;
      v41 = swift_slowAlloc();
      v81 = v35;
      v82 = v41;
      *v11 = v70.n128_u32[0];
      v42 = Accessory.description.getter();
      v44 = v43;

      v45 = sub_268BB3D28(v42, v44, &v82);
      v33 = v71;

      *(v11 + 4) = v45;
      _os_log_impl(&dword_268BAD000, v37, v38, "Checking if predicate matches device: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v46 = v41;
      v4 = v40;
      v5 = v39;
      a1 = v72;
      MEMORY[0x26D628010](v46, -1, -1);
      MEMORY[0x26D628010](v11, -1, -1);
    }

    else
    {
    }

    v80(v33, v4);
    v8 = v76;
    a2 = v74;
    if (v76)
    {
      v11 = [v35 deviceIdentifier];
      v47 = sub_268C15BFC();
      v16 = v48;

      if (a1 == v47 && v8 == v16)
      {
      }

      else
      {
        v50 = sub_268C1618C();

        if ((v50 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    v16 = &v84;
    Accessory.type.getter();
    DeviceCategory.init(homekitType:)(v51);
    if ((v83 & 1) == 0 && (v82 & ~v69) == 0)
    {
      v52 = v66;
      v77(v66, v78, v4);
      v53 = sub_268C159FC();
      v54 = sub_268C15DCC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_268BAD000, v53, v54, "Predicate matches, adding device", v55, 2u);
        MEMORY[0x26D628010](v55, -1, -1);
      }

      v80(v52, v4);
      v16 = v84;
      v56 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB3594(0, *(v56 + 16) + 1, 1, v56);
        v56 = v58;
      }

      v11 = *(v56 + 16);
      v57 = *(v56 + 24);
      if (v11 >= v57 >> 1)
      {
        sub_268BB3594(v57 > 1, v11 + 1, 1, v56);
        v56 = v59;
      }

      *(v56 + 16) = v11 + 1;
      v68 = v56;
      *(v56 + 8 * v11 + 32) = v16;
      v32 = v73;
      goto LABEL_6;
    }

LABEL_23:

    ++v32;
  }

  v60 = v67;
  v77(v67, v78, v4);
  v61 = v68;

  v62 = sub_268C159FC();
  v63 = sub_268C15DCC();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134217984;
    *(v64 + 4) = *(v61 + 16);

    _os_log_impl(&dword_268BAD000, v62, v63, "Found %ld devices", v64, 0xCu);
    MEMORY[0x26D628010](v64, -1, -1);

    v80(v60, v4);
  }

  else
  {

    v80(v60, v4);
  }

  return v61;
}

uint64_t sub_268BED8F4@<X0>(void *a1@<X0>, void **a2@<X2>, const void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15[-v10];
  v12 = a1;
  v13 = sub_268BEDA0C(v12, a2);
  memcpy(__dst, a3, 0x78uLL);
  memcpy(v16, a3, sizeof(v16));
  sub_268BDEF20(__dst, v15);
  sub_268BEDB0C(v12, a2, v11);
  return sub_268BEDC48(v12, v13 & 1, v16, v11, a4);
}

uint64_t sub_268BEDA0C(void *a1, void **a2)
{
  v3 = *a2;
  v10 = *a2;
  if (!a1)
  {
    if (!v3)
    {
      sub_268BDC5A8(&v10, &v9, &qword_2802CE538, &qword_268C18718);
      v6 = 1;
      return v6 & 1;
    }

LABEL_7:
    sub_268BDC5A8(&v10, &v9, &qword_2802CE538, &qword_268C18718);

    v6 = 0;
    return v6 & 1;
  }

  if (!v3)
  {
    v7 = a1;
    goto LABEL_7;
  }

  sub_268BB9B44(0, &qword_2802CE550, 0x277D82BB8);
  v4 = a1;
  sub_268BDC5A8(&v10, &v9, &qword_2802CE538, &qword_268C18718);
  v5 = v4;
  v6 = sub_268C15EEC();

  return v6 & 1;
}

uint64_t sub_268BEDB0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0) + 40));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  if ((*(v9 + 48))(v8, v9))
  {
    v10 = sub_268BEED54(a2);
    v11 = [a1 deviceIdentifier];
    v12 = sub_268C15BFC();
    v14 = v13;

    sub_268C0F4DC(v12, v14, v10, a3);
  }

  else
  {
    v16 = type metadata accessor for MediaGroup();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v16);
  }
}

uint64_t sub_268BEDC48@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 88) = xmmword_268C16D40;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  v7 = type metadata accessor for Device();
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0u;
  *(a5 + 168) = 0u;
  *(a5 + 184) = 0u;
  *(a5 + 200) = 0;
  v8 = v7[11];
  v9 = type metadata accessor for MediaGroup();
  __swift_storeEnumTagSinglePayload(a5 + v8, 1, 1, v9);
  v10 = v7[12];
  *(a5 + v10) = 0;
  v11 = [a1 name];
  v12 = sub_268C15BFC();
  v14 = v13;

  *(a5 + 32) = v12;
  *(a5 + 40) = v14;
  v15 = [a1 deviceIdentifier];
  v16 = sub_268C15BFC();
  v18 = v17;

  *a5 = v16;
  *(a5 + 8) = v18;
  Accessory.mediaSystemIdentifier.getter();
  *(a5 + 16) = v19;
  *(a5 + 24) = v20;
  v21 = [a1 room];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 name];
    v24 = sub_268C15BFC();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(a5 + 48) = v24;
  *(a5 + 56) = v26;
  Accessory.type.getter();
  DeviceCategory.init(homekitType:)(v27);
  if ((v39 & 1) == 0)
  {
    if (v38 == 16 && [a1 supportsNativeMatter])
    {
      if (qword_2802CDB88 != -1)
      {
        swift_once();
      }

      *(a5 + 64) = sub_268C0F474(1, off_2802CE1D8);
      *(a5 + 72) = v28;
      *(a5 + v10) = 1;
    }

    else
    {
      if (qword_2802CDBA0 != -1)
      {
        swift_once();
      }

      *(a5 + 64) = sub_268C0F474(v38, off_2802CE390);
      *(a5 + 72) = v29;
    }
  }

  v30 = [a1 siriEndpointProfile];
  v31 = v30;
  if (v30)
  {
  }

  v32 = v31 != 0;
  v33 = v7[13];

  *(a5 + v33) = v32;
  *(a5 + 80) = a2 & 1;
  sub_268BF248C(a3, a5 + 88, &qword_2802CE578, &qword_268C18750);
  return sub_268BF248C(a4, a5 + v8, &qword_2802CE568, &unk_268C18740);
}

uint64_t sub_268BEDF18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a2;
  memcpy(__dst, a2, sizeof(__dst));
  v8 = type metadata accessor for MediaGroup();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  v14 = sub_268C15A1C();
  v80 = *(v14 - 8);
  v15 = v80[8];
  MEMORY[0x28223BE20](v14);
  v72 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = &v65 - v18;
  v19 = *(a3 + 16);
  v77[0] = *a3;
  v77[1] = v19;
  v78 = *(a3 + 32);
  if (qword_2802CDB68 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v14, qword_2802D2EC0);
  v21 = v80[2];
  v69 = v20;
  v70 = v80 + 2;
  v68 = v21;
  (v21)(v75);
  v73 = a1;
  sub_268BF24DC(a1, v13);
  v22 = sub_268C159FC();
  v23 = sub_268C15DDC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v66 = a4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v67 = v4;
    v27 = v26;
    v76[0] = v26;
    *v25 = 136315138;
    v28 = MediaGroup.description.getter();
    v65 = v8;
    v30 = v29;
    sub_268BF25A0(v13);
    v31 = sub_268BB3D28(v28, v30, v76);
    v8 = v65;

    *(v25 + 4) = v31;
    _os_log_impl(&dword_268BAD000, v22, v23, "Checking if predicate matches media group: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x26D628010](v27, -1, -1);
    v32 = v25;
    a4 = v66;
    MEMORY[0x26D628010](v32, -1, -1);
  }

  else
  {

    sub_268BF25A0(v13);
  }

  v33 = v80[1];
  v33(v75, v14);
  v34 = v73;
  v35 = v73[2];
  if (v35 && (v36 = v74[1]) != 0 && (v37 = v73[1], v76[0] = *v74, v76[1] = v36, v76[15] = v37, v76[16] = v35, sub_268BB9A64(), !sub_268C15F5C()))
  {
    v68(v72, v69, v14);
    v42 = sub_268C159FC();
    v43 = sub_268C15DCC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_268BAD000, v42, v43, "Predicate matches, adding group", v44, 2u);
      v45 = v44;
      v34 = v73;
      MEMORY[0x26D628010](v45, -1, -1);
    }

    v46 = (v33)(v72, v14);
    v47 = *v34;
    MEMORY[0x28223BE20](v46);
    *(&v65 - 2) = v77;
    v49 = sub_268BC499C(sub_268BF26A0, (&v65 - 4), v48);
    v50 = v71;
    sub_268BF24DC(v34, v71);
    Device.init()(a4);
    v52 = *(v50 + 8);
    v51 = *(v50 + 16);
    v53 = *(a4 + 40);
    sub_268BDEF20(v74, v76);

    *(a4 + 32) = v52;
    *(a4 + 40) = v51;
    v54 = v50 + *(v8 + 24);
    v55 = sub_268C152EC();
    v57 = v56;
    v58 = *(a4 + 8);

    *a4 = v55;
    *(a4 + 8) = v57;
    if (qword_2802CDBA0 != -1)
    {
      swift_once();
    }

    v59 = sub_268C0F474(4, off_2802CE390);
    v61 = v60;
    v62 = *(a4 + 72);

    *(a4 + 64) = v59;
    *(a4 + 72) = v61;
    *(a4 + 80) = v49;
    memcpy(v76, (a4 + 88), 0x78uLL);
    sub_268BF2790(v76, &qword_2802CE578, &qword_268C18750);
    memcpy((a4 + 88), __dst, 0x78uLL);
    v63 = type metadata accessor for Device();
    v64 = *(v63 + 44);
    sub_268BF2790(a4 + v64, &qword_2802CE568, &unk_268C18740);
    sub_268BF2540(v50, a4 + v64, type metadata accessor for MediaGroup);
    __swift_storeEnumTagSinglePayload(a4 + v64, 0, 1, v8);
    v39 = a4;
    v40 = 0;
    v38 = v63;
  }

  else
  {
    v38 = type metadata accessor for Device();
    v39 = a4;
    v40 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v39, v40, 1, v38);
}

uint64_t sub_268BEE518(void *a1, void **a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 88))(v3, v4);
  v7 = v6;
  v8 = *a2;
  v18 = v8;
  if (v8)
  {
    v9 = v5;
    sub_268BDC5A8(&v18, v17, &qword_2802CE538, &qword_268C18718);
    v10 = [v8 deviceIdentifier];
    v11 = sub_268C15BFC();
    v13 = v12;

    if (v9 == v11 && v7 == v13)
    {

      v15 = 1;
    }

    else
    {
      v15 = sub_268C1618C();
    }
  }

  else
  {
    sub_268BDC5A8(&v18, v17, &qword_2802CE538, &qword_268C18718);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_268BEE660@<X0>(void *__src@<X3>, void *a2@<X0>, void **a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15[-v10];
  v12 = a2;
  v13 = sub_268BEDA0C(v12, a3);
  sub_268BDEF20(__src, v15);
  sub_268BEDB0C(v12, a3, v11);
  return sub_268BEDC48(v12, v13 & 1, __dst, v11, a4);
}

uint64_t sub_268BEE764()
{
  v0 = sub_268C061B4();
  v1 = sub_268C062D4();
  sub_268BB0378(v1);

  return sub_268BE6F40(v0);
}

uint64_t sub_268BEE7C4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_268BDA100(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_268BEE8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  sub_268BDCB60(a2, *a1, *(a1 + 8));
  v9 = v8;
  v10 = 0;
  v59 = *(v8 + 16);
  v57 = v8 + 32;
  v11 = MEMORY[0x277D84F90];
  v56 = v8;
LABEL_2:
  while (v10 != v59)
  {
    if (v10 >= *(v9 + 16))
    {
LABEL_35:
      __break(1u);
      return;
    }

    v12 = (v57 + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    ++v10;
    if (*(a3 + 16))
    {
      v15 = *(a3 + 40);
      sub_268C1624C();

      sub_268C15C3C();
      v16 = sub_268C1626C();
      v17 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v18 = v16 & v17;
        if (((*(a3 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        v19 = (*(a3 + 48) + 16 * v18);
        if (*v19 != v13 || v19[1] != v14)
        {
          v21 = sub_268C1618C();
          v16 = v18 + 1;
          if ((v21 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }
    }

    else
    {
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268BB4AB8(0, *(v11 + 16) + 1, 1);
    }

    v23 = *(v11 + 16);
    v22 = *(v11 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_268BB4AB8((v22 > 1), v23 + 1, 1);
    }

    *(v11 + 16) = v23 + 1;
    v24 = v11 + 16 * v23;
    *(v24 + 32) = v13;
    *(v24 + 40) = v14;
    v9 = v56;
  }

  v58[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5B0, &qword_268C18770);
  sub_268BDCF60();
  v25 = sub_268C15B9C();
  v27 = v26;

  v28 = 1 << *(a4 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a4 + 56);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  v59 = v27;
  if (v30)
  {
    while (1)
    {
      v33 = v32;
LABEL_27:
      v34 = (*(a4 + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v30)))));
      v35 = *v34;
      v36 = v34[1];
      v30 &= v30 - 1;
      v58[0] = v25;
      v58[1] = v27;
      sub_268BB9A64();

      v25 = sub_268C15F4C();
      v38 = v37;

      v27 = v38;
      if (!v30)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
LABEL_23:
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v33 >= v31)
    {
      break;
    }

    v30 = *(a4 + 56 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_27;
    }
  }

  swift_beginAccess();
  v39 = *a5;
  v40 = a5[1];

  v41 = sub_268C0E254(v39, v40, 0, v25, v27);

  if (v41 >= *a6)
  {
    if (v41 == *a6)
    {
      sub_268BBADD4();
      v46 = *(*a7 + 16);
      sub_268BBAEF0(v46);
      v47 = *a7;
      *(v47 + 16) = v46 + 1;
      v48 = v47 + 40 * v46;
      v49 = *a1;
      v50 = *(a1 + 16);
      *(v48 + 64) = *(a1 + 32);
      *(v48 + 32) = v49;
      *(v48 + 48) = v50;
      sub_268BDC5A8(a1, v58, &unk_2802CDCF0, &qword_268C170B8);
    }
  }

  else
  {
    *a6 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE590, &qword_268C170B0);
    v42 = swift_allocObject();
    v43 = *a1;
    v44 = *(a1 + 16);
    *(v42 + 16) = xmmword_268C172B0;
    *(v42 + 32) = v43;
    *(v42 + 48) = v44;
    *(v42 + 64) = *(a1 + 32);
    v45 = *a7;
    *a7 = v42;
    sub_268BDC5A8(a1, v58, &unk_2802CDCF0, &qword_268C170B8);
  }
}

uint64_t sub_268BEED54(uint64_t a1)
{
  v2 = type metadata accessor for MediaGroup();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_268C15B7C();
  v10 = *(a1 + 32);
  v35 = *(v10 + 16);
  if (!v35)
  {
    return v9;
  }

  v11 = 0;
  v34 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v39 = *(v3 + 72);
  while (1)
  {
    v36 = v11;
    sub_268BF24DC(v34 + v39 * v11, v8);
    v12 = *v8;
    v38 = *(*v8 + 16);
    if (v38)
    {
      break;
    }

LABEL_15:
    v11 = v36 + 1;
    sub_268BF25A0(v8);
    if (v11 == v35)
    {
      return v9;
    }
  }

  v13 = 0;
  v14 = v12 + 32;
  v37 = v12;
  while (v13 < *(v12 + 16))
  {
    sub_268BDFAE0(v14, v42);
    v15 = v43;
    v16 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v17 = (*(v16 + 88))(v15, v16);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0(v42);
    v20 = v8;
    sub_268BF24DC(v8, v40);
    swift_isUniquelyReferenced_nonNull_native();
    v41 = v9;
    v21 = sub_268BD99A0(v17, v19);
    if (__OFADD__(v9[2], (v22 & 1) == 0))
    {
      goto LABEL_18;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE580, &qword_268C18758);
    if (sub_268C1610C())
    {
      v25 = sub_268BD99A0(v17, v19);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

      v23 = v25;
    }

    if (v24)
    {

      v9 = v41;
      sub_268BF25FC(v40, v41[7] + v23 * v39);
    }

    else
    {
      v27 = v40;
      v9 = v41;
      v41[(v23 >> 6) + 8] |= 1 << v23;
      v28 = (v9[6] + 16 * v23);
      *v28 = v17;
      v28[1] = v19;
      sub_268BF2540(v27, v9[7] + v23 * v39, type metadata accessor for MediaGroup);
      v29 = v9[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_19;
      }

      v9[2] = v31;
    }

    ++v13;
    v14 += 40;
    v12 = v37;
    v8 = v20;
    if (v38 == v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_268C161CC();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DeviceSelector()
{
  result = qword_2802CE508;
  if (!qword_2802CE508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268BEF0D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268BEF114()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_OWORD *sub_268BEF158(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_268BD8290(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_268BEF1D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_268BEF21C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_268BEF260(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_268BEF2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_268BD99A0(a2, a3);
  OUTLINED_FUNCTION_4_7(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF10, &qword_268C17288);
  if ((sub_268C1610C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_268BD99A0(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_268C161CC();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
    OUTLINED_FUNCTION_14_3();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_268BEF1D4(v14, a2, a3, a1, v19);
    OUTLINED_FUNCTION_14_3();
  }
}

uint64_t sub_268BEF3D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_268BD9C8C();
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5C0, &qword_268C18778);
  if ((sub_268C1610C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_268BD9C8C();
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE1E0, &qword_268C17B10);
    result = sub_268C161CC();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v9);
    *(v15 + 8 * v9) = a1;
  }

  else
  {
    sub_268BEF21C(v9, a2, a1, v14);
  }
}

unint64_t sub_268BEF50C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_268BD9BEC(a2);
  OUTLINED_FUNCTION_4_7(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5F0, &qword_268C18790);
  if ((sub_268C1610C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v3;
  v15 = sub_268BD9BEC(a2);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_268C161CC();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  if (v13)
  {
    v17 = *(*v3 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
    OUTLINED_FUNCTION_14_3();
  }

  else
  {
    OUTLINED_FUNCTION_14_3();

    return sub_268BEF21C(v21, v22, v23, v24);
  }
}

uint64_t sub_268BEF61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_268BD99A0(a3, a4);
  OUTLINED_FUNCTION_4_7(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5E0, &qword_268C18788);
  if ((sub_268C1610C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_268BD99A0(a3, a4);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_268C161CC();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    sub_268BEF260(v16, a3, a4, a1, a2, v21);
    OUTLINED_FUNCTION_32_0();
  }
}

unint64_t *sub_268BEF754(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();
      a2 = sub_268BEFA38(v11, v6, v4, a2);
      MEMORY[0x26D628010](v11, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v7 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_268BF7C74(0, v6, v7);
  v8 = sub_268BEF8C4(v7, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v8;
  }

LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return a2;
}

unint64_t *sub_268BEF8C4(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(*(a3 + 48) + 8 * v12) + 16) == *a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_268BF8588(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_268BF8588(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_268BEF9BC(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

unint64_t *sub_268BEFA38(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_268BEF8C4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_268BEFAC0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x277D85DE8];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v6 = &v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_268BF7C74(0, v5, v6);
    v7 = sub_268BEFC60(v6, v5, v3, a2);
  }

  else
  {
    v10 = swift_slowAlloc();
    v7 = sub_268BEF9BC(v10, v5, sub_268BF2808);

    MEMORY[0x26D628010](v10, -1, -1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_268BEFC60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v25 = *(a3 + 16);
  v23 = result;
  v24 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v22 = v5;
LABEL_3:
    if (v6 == v25)
    {
      goto LABEL_19;
    }

    if (v6 >= v25)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v24 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v26 = v6 + 1;
    v11 = *(a4 + 40);
    sub_268C1624C();

    sub_268C15C3C();
    v12 = sub_268C1626C();
    v13 = ~(-1 << *(a4 + 32));
    do
    {
      v14 = v12 & v13;
      v15 = (v12 & v13) >> 6;
      v16 = 1 << (v12 & v13);
      if ((v16 & *(v7 + 8 * v15)) == 0)
      {

        v6 = v26;
        goto LABEL_3;
      }

      v17 = (*(a4 + 48) + 16 * v14);
      if (*v17 == v10 && v17[1] == v9)
      {
        break;
      }

      v19 = sub_268C1618C();
      v12 = v14 + 1;
    }

    while ((v19 & 1) == 0);

    v20 = v23[v15];
    v23[v15] = v20 | v16;
    v6 = v26;
    if ((v20 & v16) != 0)
    {
      goto LABEL_3;
    }

    v5 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_19:

      return sub_268BEFDEC(v23, a2, v22, a4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_268BEFDEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5D0, &qword_268C17D68);
  result = sub_268C1604C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_268C1624C();

    sub_268C15C3C();
    result = sub_268C1626C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_268BF0008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_268BEFC60(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_268BF0038(__int128 *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a1[1];
  v8 = *a1;
  v9[0] = v6;
  *(v9 + 9) = *(a1 + 25);
  return sub_268BE8A3C(&v8, a2, a3, a4, a5, a6);
}

uint64_t sub_268BF006C@<X0>(void **a1@<X0>, uint64_t a2@<X2>, const void *a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = *(a2 + 32);
  return sub_268BED8F4(v4, v7, a3, a4);
}

uint64_t sub_268BF00B4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = *(a2 + 32);
  return sub_268BE6D80(a1, v7, a3, a4, a5);
}

unint64_t *sub_268BF00E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = &off_287977A10;
  v10[0] = a1;
  v10[1] = a2;
  v9 = 0;
  v8[2] = a3;
  v8[3] = v10;
  v8[4] = &v9;

  v5 = sub_268BE7000(MEMORY[0x277D84F98], sub_268BF27E8, v8, a4);
  v6 = sub_268BEF754(v5, &v9);

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v6;
}

uint64_t sub_268BF019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v232 = a5;
  v237 = a4;
  v251 = a3;
  v250 = a2;
  v248 = a1;
  v239 = sub_268C15A1C();
  v238 = *(v239 - 8);
  v7 = *(v238 + 64);
  MEMORY[0x28223BE20](v239);
  v228 = &v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v227 = &v225 - v10;
  MEMORY[0x28223BE20](v11);
  v229 = &v225 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v225 - v14;
  MEMORY[0x28223BE20](v16);
  v231 = &v225 - v17;
  MEMORY[0x28223BE20](v18);
  v234 = &v225 - v19;
  MEMORY[0x28223BE20](v20);
  v233 = &v225 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v225 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE5A8, &qword_268C18768);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v225 - v27;
  v230 = 0;
  v29 = sub_268C1533C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v225 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  sub_268BDC5A8(a6 + *(v34 + 36), v28, &qword_2802CE5A8, &qword_268C18768);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v29);
  v241 = v30;
  v235 = v29;
  v226 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_268C1539C();
    __swift_project_boxed_opaque_existential_1(&v259, *(&v260 + 1));
    sub_268C1536C();
    __swift_destroy_boxed_opaque_existential_0(&v259);
    if (__swift_getEnumTagSinglePayload(v28, 1, v29) != 1)
    {
      sub_268BF2790(v28, &qword_2802CE5A8, &qword_268C18768);
    }
  }

  else
  {
    (*(v30 + 32))(v33, v28, v29);
  }

  v236 = v33;
  v249 = sub_268BEE764();
  v36 = 0;
  v240 = MEMORY[0x277D84F90];
  v37 = *(v251 + 16);
  v242 = v37;
LABEL_6:
  v38 = 40 * v36;
  while (v37 != v36)
  {
    if (v36 >= v37)
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      swift_once();
LABEL_24:
      v59 = v239;
      v60 = __swift_project_value_buffer(v239, qword_2802D2F10);
      v61 = v238;
      (*(v238 + 16))(v24, v60, v59);
      v62 = v24;
      v63 = v240;

      v64 = v250;

      v253 = v62;
      v65 = sub_268C159FC();
      v66 = sub_268C15DFC();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = v37;
        v70 = v68;
        *&v259 = v68;
        *v67 = v69[263];
        *(v67 + 4) = sub_268BB3D28(v248, v64, &v259);
        *(v67 + 12) = 2080;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
        v72 = MEMORY[0x26D6272E0](v63, v71);
        v74 = v73;

        v75 = sub_268BB3D28(v72, v74, &v259);

        *(v67 + 14) = v75;
        _os_log_impl(&dword_268BAD000, v65, v66, "Found perfect matches for user query: %s: %s", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D628010](v70, -1, -1);
        MEMORY[0x26D628010](v67, -1, -1);
      }

      else
      {
      }

      (*(v61 + 8))(v253, v59);
      (*(v15 + 8))(v236, v235);
      return v240;
    }

    if (__OFADD__(v36, 1))
    {
      goto LABEL_109;
    }

    v253 = v36;
    v247 = (v36 + 1);
    v15 = v24;
    v252 = v38;
    v39 = *(v251 + v38 + 32);
    v40 = *(v251 + v38 + 40);
    LODWORD(v245) = *(v251 + v38 + 48);
    v41 = *(v251 + v38 + 56);
    LODWORD(v243) = *(v251 + v38 + 64);
    v244 = v41;
    v42 = v41;

    v43 = v249;
    v246 = v39;
    sub_268BDCB60(v249, v39, v40);
    v255[0] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5B0, &qword_268C18770);
    sub_268BDCF60();
    v45 = sub_268C15B9C();
    v47 = v46;

    sub_268BDCB60(v43, v248, v250);
    v255[0] = v48;
    v49 = sub_268C15B9C();
    v51 = v50;

    if (v45 == v49 && v47 == v51)
    {

      v37 = v242;
LABEL_17:
      v54 = v240;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v259 = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268BB4AD8(0, *(v54 + 16) + 1, 1);
        v54 = v259;
      }

      v57 = *(v54 + 16);
      v56 = *(v54 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_268BB4AD8((v56 > 1), v57 + 1, 1);
        v54 = v259;
      }

      *(v54 + 16) = v57 + 1;
      v240 = v54;
      v58 = v54 + 40 * v57;
      *(v58 + 32) = v246;
      *(v58 + 40) = v40;
      *(v58 + 48) = v245;
      *(v58 + 56) = v244;
      *(v58 + 64) = v243;
      v36 = v247;
      goto LABEL_6;
    }

    v53 = sub_268C1618C();

    v37 = v242;
    if (v53)
    {
      goto LABEL_17;
    }

    v36 = v253 + 1;
    v38 = v252 + 40;
  }

  v37 = &unk_268C17000;
  if (*(v240 + 16))
  {

    v15 = v241;
    if (qword_2802CDBE0 != -1)
    {
      goto LABEL_112;
    }

    goto LABEL_24;
  }

  v76 = sub_268BF00E8(v248, v250, v249, v251);
  v77 = v76;
  v15 = v241;
  if (v76[2] <= 1)
  {
    v87 = sub_268BC3248(v76);
    v240 = v88;
    if (v87)
    {
    }

    else
    {
      v240 = MEMORY[0x277D84F90];
    }

    v89 = v239;
    v90 = v234;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
      v89 = v239;
    }

    v91 = __swift_project_value_buffer(v89, qword_2802D2F10);
    v92 = v238;
    v93 = *(v238 + 16);
    v244 = v91;
    v246 = v238 + 16;
    v245 = v93;
    (v93)(v90);
    v37 = v250;

    v94 = v240;

    v95 = sub_268C159FC();
    v96 = sub_268C15DFC();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v259 = v98;
      *v97 = 136315394;
      *(v97 + 4) = sub_268BB3D28(v248, v37, &v259);
      *(v97 + 12) = 2080;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
      v100 = MEMORY[0x26D6272E0](v94, v99);
      v102 = v101;

      v37 = sub_268BB3D28(v100, v102, &v259);

      *(v97 + 14) = v37;
      _os_log_impl(&dword_268BAD000, v95, v96, "Rooms with at least one matching token to: %s -> %s", v97, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D628010](v98, -1, -1);
      MEMORY[0x26D628010](v97, -1, -1);

      v103 = *(v238 + 8);
      v104 = v90;
      v105 = v239;
    }

    else
    {

      v103 = *(v92 + 8);
      v104 = v90;
      v105 = v89;
    }

    v247 = v103;
    v103(v104, v105);
    if (*(v94 + 16))
    {
      v106 = v94;
    }

    else
    {
      v106 = v251;
    }

    v107 = sub_268BC3248(v77);

    v251 = v106;
    if (v107)
    {
    }

    else
    {
      v107 = MEMORY[0x277D84FA0];
    }

    v108 = v249;

    v110 = sub_268BEE7C4(v109, v107);
    sub_268BDCB60(v108, v248, v250);
    v112 = v111;
    v113 = 0;
    v114 = *(v111 + 16);
    v253 = v111 + 32;
    v24 = (v110 + 56);
    v115 = MEMORY[0x277D84F90];
    v252 = v114;
LABEL_51:
    while (v113 != v114)
    {
      if (v113 >= *(v112 + 16))
      {
        goto LABEL_110;
      }

      v116 = v253 + 16 * v113;
      v37 = *v116;
      v117 = *(v116 + 8);
      ++v113;
      if (*(v110 + 16))
      {
        v118 = *(v110 + 40);
        sub_268C1624C();

        sub_268C15C3C();
        v119 = sub_268C1626C();
        v120 = ~(-1 << *(v110 + 32));
        while (1)
        {
          v121 = v119 & v120;
          if (((*&v24[((v119 & v120) >> 3) & 0xFFFFFFFFFFFFFF8] >> (v119 & v120)) & 1) == 0)
          {
            break;
          }

          v122 = (*(v110 + 48) + 16 * v121);
          if (*v122 != v37 || v122[1] != v117)
          {
            v124 = sub_268C1618C();
            v119 = v121 + 1;
            if ((v124 & 1) == 0)
            {
              continue;
            }
          }

          v15 = v241;
          goto LABEL_51;
        }
      }

      else
      {
      }

      v125 = swift_isUniquelyReferenced_nonNull_native();
      v255[0] = v115;
      if ((v125 & 1) == 0)
      {
        sub_268BB4AB8(0, *(v115 + 16) + 1, 1);
        v115 = v255[0];
      }

      v127 = *(v115 + 16);
      v126 = *(v115 + 24);
      if (v127 >= v126 >> 1)
      {
        sub_268BB4AB8((v126 > 1), v127 + 1, 1);
        v115 = v255[0];
      }

      *(v115 + 16) = v127 + 1;
      v128 = v115 + 16 * v127;
      *(v128 + 32) = v37;
      *(v128 + 40) = v117;
      v15 = v241;
      v114 = v252;
    }

    *&v259 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5B0, &qword_268C18770);
    sub_268BDCF60();
    v129 = sub_268C15B9C();
    v131 = v130;

    v132 = sub_268C0E9A4(v129, v131);
    v134 = v133;

    sub_268C0E9BC(v132, v134);

    v135 = sub_268C15C1C();
    v137 = v136;

    v138 = HIBYTE(v137) & 0xF;
    if ((v137 & 0x2000000000000000) == 0)
    {
      v138 = v135 & 0xFFFFFFFFFFFFLL;
    }

    if (v138)
    {
      v253 = v135;

      v139 = sub_268C062D4();
      v140 = sub_268BE6F40(v139);
      v141 = v140;
      v142 = v140 + 56;
      v143 = 1 << *(v140 + 32);
      v144 = -1;
      if (v143 < 64)
      {
        v144 = ~(-1 << v143);
      }

      v15 = v144 & *(v140 + 56);
      v24 = ((v143 + 63) >> 6);
      swift_bridgeObjectRetain_n();

      v145 = 0;
      v252 = v137;
      while (v15)
      {
        v146 = v145;
LABEL_79:
        v147 = (*(v141 + 48) + ((v146 << 10) | (16 * __clz(__rbit64(v15)))));
        v148 = *v147;
        v37 = v147[1];
        v15 &= v15 - 1;
        *&v259 = v253;
        *(&v259 + 1) = v137;
        v255[0] = v148;
        v255[1] = v37;
        v254[0] = 0;
        v254[1] = 0xE000000000000000;
        sub_268BB9A64();

        v253 = sub_268C15F4C();
        v137 = v149;
      }

      while (1)
      {
        v146 = v145 + 1;
        if (__OFADD__(v145, 1))
        {
          goto LABEL_111;
        }

        if (v146 >= v24)
        {
          swift_bridgeObjectRelease_n();

          v150 = v253;
          v258[0] = v253;
          v258[1] = v137;
          v151 = v231;
          v152 = v239;
          v245(v231, v244, v239);
          v153 = v251;

          v154 = sub_268C159FC();
          v155 = sub_268C15DFC();
          v156 = os_log_type_enabled(v154, v155);
          v243 = v137;
          if (v156)
          {
            v157 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            *&v259 = v158;
            *v157 = 136315394;

            v159 = sub_268BB3D28(v150, v137, &v259);

            *(v157 + 4) = v159;
            *(v157 + 12) = 2080;
            v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
            v161 = MEMORY[0x26D6272E0](v153, v160);
            v163 = v162;

            v164 = sub_268BB3D28(v161, v163, &v259);

            *(v157 + 14) = v164;
            _os_log_impl(&dword_268BAD000, v154, v155, "Searching for q: %s in containers: %s", v157, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D628010](v158, -1, -1);
            MEMORY[0x26D628010](v157, -1, -1);

            v165 = v231;
          }

          else
          {

            v165 = v151;
          }

          v247(v165, v152);
          v176 = v249;
          v257 = 0x7FFFFFFFFFFFFFFFLL;
          v256 = MEMORY[0x277D84F90];
          v177 = *(v153 + 16);

          for (i = 32; v177; --v177)
          {
            v179 = *(v153 + i);
            v180 = *(v153 + i + 16);
            LOBYTE(v261) = *(v153 + i + 32);
            v259 = v179;
            v260 = v180;
            sub_268BDC5A8(&v259, v255, &unk_2802CDCF0, &qword_268C170B8);
            sub_268BEE8C8(&v259, v176, v110, v141, v258, &v257, &v256);
            sub_268BF2790(&v259, &unk_2802CDCF0, &qword_268C170B8);
            i += 40;
          }

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v181 = v257;
          if (v257 <= v232)
          {
            v195 = v228;
            v196 = v239;
            v245(v228, v244, v239);
            v197 = v250;

            v198 = sub_268C159FC();
            v199 = sub_268C15DEC();

            if (os_log_type_enabled(v198, v199))
            {
              v200 = swift_slowAlloc();
              v201 = swift_slowAlloc();
              v255[0] = v201;
              *v200 = 136315906;
              *(v200 + 4) = sub_268BB3D28(v248, v197, v255);
              *(v200 + 12) = 2080;
              swift_beginAccess();
              v202 = v256;

              v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
              v204 = MEMORY[0x26D6272E0](v202, v203);
              v206 = v205;

              v207 = sub_268BB3D28(v204, v206, v255);

              *(v200 + 14) = v207;
              *(v200 + 22) = 2048;
              *(v200 + 24) = v181;
              *(v200 + 32) = 2048;
              *(v200 + 34) = v232;
              _os_log_impl(&dword_268BAD000, v198, v199, "Closest match to: %s is %s with score: %ld is within the acceptable threshold: %ld.", v200, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x26D628010](v201, -1, -1);
              MEMORY[0x26D628010](v200, -1, -1);
            }

            v247(v195, v196);
            (*(v241 + 8))(v236, v235);
            swift_beginAccess();
            v85 = v256;
          }

          else
          {
            v182 = v227;
            v183 = v239;
            v245(v227, v244, v239);
            v184 = sub_268C159FC();
            v185 = sub_268C15DEC();
            if (os_log_type_enabled(v184, v185))
            {
              v186 = swift_slowAlloc();
              v187 = v182;
              v188 = swift_slowAlloc();
              v254[0] = v188;
              *v186 = 136315650;
              swift_beginAccess();
              v189 = v256;

              v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
              v191 = MEMORY[0x26D6272E0](v189, v190);
              v193 = v192;

              v194 = sub_268BB3D28(v191, v193, v254);

              *(v186 + 4) = v194;
              *(v186 + 12) = 2048;
              *(v186 + 14) = v181;
              *(v186 + 22) = 2048;
              *(v186 + 24) = v232;
              _os_log_impl(&dword_268BAD000, v184, v185, "Closest match: %s has score: %ld outside of the acceptable threshold: %ld. Dropping", v186, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v188);
              MEMORY[0x26D628010](v188, -1, -1);
              MEMORY[0x26D628010](v186, -1, -1);

              v247(v187, v183);
            }

            else
            {

              v247(v182, v183);
            }

            (*(v241 + 8))(v236, v235);

            return 2;
          }

          return v85;
        }

        v15 = *(v142 + 8 * v146);
        ++v145;
        if (v15)
        {
          v145 = v146;
          goto LABEL_79;
        }
      }
    }

    v166 = v240;
    v167 = *(v240 + 16);
    v168 = MEMORY[0x277D84F90];
    if (v167)
    {
      v169 = v137;
      *&v259 = MEMORY[0x277D84F90];
      sub_268BB4AB8(0, v167, 0);
      v168 = v259;
      v170 = (v166 + 40);
      do
      {
        v172 = *(v170 - 1);
        v171 = *v170;
        *&v259 = v168;
        v173 = *(v168 + 16);
        v174 = *(v168 + 24);

        if (v173 >= v174 >> 1)
        {
          sub_268BB4AB8((v174 > 1), v173 + 1, 1);
          v168 = v259;
        }

        *(v168 + 16) = v173 + 1;
        v175 = v168 + 16 * v173;
        *(v175 + 32) = v172;
        *(v175 + 40) = v171;
        v170 += 5;
        --v167;
      }

      while (v167);
      v15 = v241;
      v137 = v169;
    }

    v208 = *(sub_268BE6F40(v168) + 16);

    if (v208 == 1)
    {
      v209 = v226;
      v210 = v239;
      v245(v226, v244, v239);
      v211 = v250;

      v212 = v240;

      v213 = sub_268C159FC();
      v214 = sub_268C15DFC();

      if (os_log_type_enabled(v213, v214))
      {
        v215 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        *&v259 = v216;
        *v215 = 136315394;
        *(v215 + 4) = sub_268BB3D28(v248, v211, &v259);
        *(v215 + 12) = 2080;
        v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
        v218 = MEMORY[0x26D6272E0](v212, v217);
        v252 = v137;
        v220 = v219;

        v221 = sub_268BB3D28(v218, v220, &v259);

        *(v215 + 14) = v221;
        _os_log_impl(&dword_268BAD000, v213, v214, "One container is the closest. Query: %s, result: %s. Returning", v215, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D628010](v216, -1, -1);
        MEMORY[0x26D628010](v215, -1, -1);
      }

      else
      {
      }

      v247(v209, v210);
      (*(v15 + 8))(v236, v235);

      return v240;
    }

    v245(v229, v244, v239);
    v222 = sub_268C159FC();
    v223 = sub_268C15DEC();
    if (os_log_type_enabled(v222, v223))
    {
      v224 = swift_slowAlloc();
      *v224 = 0;
      _os_log_impl(&dword_268BAD000, v222, v223, "query is empty after filtering out tokens. User needs to be more specific. Bailing", v224, 2u);
      MEMORY[0x26D628010](v224, -1, -1);
    }

    v247(v229, v239);
    (*(v15 + 8))(v236, v235);

    return 1;
  }

  else
  {

    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v78 = v239;
    v79 = __swift_project_value_buffer(v239, qword_2802D2F10);
    v80 = v238;
    v81 = v233;
    (*(v238 + 16))(v233, v79, v78);
    v82 = sub_268C159FC();
    v83 = sub_268C15DEC();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_268BAD000, v82, v83, "Found more than 1 group overlapping with the query but they don't intersect. Bailing", v84, 2u);
      MEMORY[0x26D628010](v84, -1, -1);
    }

    (*(v80 + 8))(v81, v78);
    (*(v15 + 8))(v236, v235);
    return 0;
  }
}

uint64_t sub_268BF1E08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 16);
  v6[0] = *a3;
  v6[1] = v4;
  v7 = *(a3 + 32);
  return sub_268BEDF18(a1, a2, v6, a4);
}

uint64_t sub_268BF1E3C(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4[0] = *a2;
  v4[1] = v2;
  v5 = *(a2 + 32);
  return sub_268BEE518(a1, v4) & 1;
}

uint64_t sub_268BF1E74@<X0>(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = *(a2 + 32);
  return sub_268BEE660(a3, v4, v7, a4);
}

void sub_268BF1EBC(__int128 *a1, void (*a2)(uint64_t **), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a1[1];
  v7 = *a1;
  v8[0] = v6;
  *(v8 + 9) = *(a1 + 25);
  sub_268BEA59C(&v7, a2, a3, a4, a5, a6);
}

uint64_t sub_268BF1EF0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  OUTLINED_FUNCTION_6_8(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 24);

  v9 = *(v0 + 36);
  v10 = sub_268C1533C();
  if (!OUTLINED_FUNCTION_10_7(v10))
  {
    (*(*(v2 - 8) + 8))(v1 + v5 + v9, v2);
  }

  OUTLINED_FUNCTION_8_8();
  v11 = *(v1 + v2 + 8);

  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_268BF1FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_268BF206C(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  OUTLINED_FUNCTION_28(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  OUTLINED_FUNCTION_9_6();
  v14 = (v1 + v13);
  v15 = *v14;
  v16 = v14[1];

  sub_268BF1EBC(a1, v10, v11, v1 + v12, v15, v16);
}

void sub_268BF2110()
{
  sub_268BF2224();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_268BF2224()
{
  if (!qword_2802CE518)
  {
    type metadata accessor for HomeManager();
    sub_268BF2288();
    v0 = type metadata accessor for HomeProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_2802CE518);
    }
  }
}

unint64_t sub_268BF2288()
{
  result = qword_2802CE520;
  if (!qword_2802CE520)
  {
    type metadata accessor for HomeManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE520);
  }

  return result;
}

uint64_t sub_268BF22E0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  OUTLINED_FUNCTION_6_8(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 24);

  v9 = *(v1 + 32);

  v10 = *(v0 + 36);
  v11 = sub_268C1533C();
  if (!OUTLINED_FUNCTION_10_7(v11))
  {
    (*(*(v2 - 8) + 8))(v1 + v5 + v10, v2);
  }

  OUTLINED_FUNCTION_8_8();
  __swift_destroy_boxed_opaque_existential_0((v1 + v2));
  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_268BF23F0(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  OUTLINED_FUNCTION_28(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  OUTLINED_FUNCTION_9_6();
  v14 = *(v1 + 32);

  return sub_268BF0038(a1, v10, v11, v14, v1 + v12, (v1 + v13));
}

uint64_t sub_268BF248C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_23_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_4(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_268BF24DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BF2540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_268BF25A0(uint64_t a1)
{
  v2 = type metadata accessor for MediaGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BF25FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaGroup();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BF26E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a4;
  }

  return result;
}

void sub_268BF2724(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

uint64_t sub_268BF2768(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t sub_268BF277C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t sub_268BF2790(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_8_8()
{
  v3 = (v1 + *(v0 + 40));

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

unint64_t UsoEntityBuilder_common_UserEntity.addName(displayName:)()
{
  sub_268C153FC();
  sub_268C1577C();
  result = sub_268C1564C();
  if (result)
  {
    v1 = result;
    v2 = sub_268BC4A94(result);
    v3 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      sub_268BC4F00(v2 - 1, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) == 0)
      {
        v4 = *(v1 + 8 * v3 + 32);

LABEL_5:

        return v4;
      }
    }

    v4 = MEMORY[0x26D627640](v3, v1);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UsoPrimitiveStringBuilder.addEntitySpans(entitySpanBuilders:)(Swift::OpaquePointer entitySpanBuilders)
{
  v3 = 0;
  v4 = *(entitySpanBuilders._rawValue + 2);
  while (v4 != v3)
  {
    v5 = *(type metadata accessor for UsoEntitySpanBuilder() - 8);
    sub_268BF2A54(entitySpanBuilders._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3++, v1);
  }
}

uint64_t sub_268BF2A54(uint64_t a1, uint64_t *a2)
{
  v35 = a2;
  v3 = type metadata accessor for UsoEntitySpanBuilder();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v34 - v8);
  v10 = sub_268C15A1C();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE600, &unk_268C18798);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - v16;
  v18 = sub_268C1551C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  UsoEntitySpanBuilder.build()(v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_268BF3498(v17);
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v10, qword_2802D2F10);
    v24 = v36;
    (*(v36 + 16))(v13, v23, v10);
    sub_268BF3500(a1, v9);
    sub_268BF3500(a1, v6);
    v25 = sub_268C159FC();
    v26 = sub_268C15DEC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v27 = 136315394;
      v28 = *v9;
      v29 = v9[1];

      sub_268BF3564(v9);
      v30 = sub_268BB3D28(v28, v29, &v37);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2048;
      v31 = v6[16];
      sub_268BF3564(v6);
      *(v27 + 14) = v31;
      _os_log_impl(&dword_268BAD000, v25, v26, "Unable to get usoEntitySpan for semanticValue: %s, and homeAutomationEntityType: %ld", v27, 0x16u);
      v32 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x26D628010](v32, -1, -1);
      MEMORY[0x26D628010](v27, -1, -1);

      return (*(v36 + 8))(v13, v10);
    }

    else
    {
      sub_268BF3564(v6);

      sub_268BF3564(v9);
      return (*(v24 + 8))(v13, v10);
    }
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    sub_268C1541C();
    return (*(v19 + 8))(v22, v18);
  }
}

Swift::Void __swiftcall UsoPrimitiveStringBuilder.addUsoIdentifiers(usoIdentifierBuilders:)(Swift::OpaquePointer usoIdentifierBuilders)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF58, &qword_268C17338);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_1_8(&v69[-v4]);
  v80 = sub_268C1570C();
  v5 = OUTLINED_FUNCTION_3_0(v80);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_8(v10);
  v78 = sub_268C156EC();
  v11 = OUTLINED_FUNCTION_3_0(v78);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_8(v16);
  v17 = sub_268C155DC();
  v18 = OUTLINED_FUNCTION_3_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v69[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v90 = &v69[-v24];
  MEMORY[0x28223BE20](v25);
  v76 = &v69[-v26];
  MEMORY[0x28223BE20](v27);
  v89 = &v69[-v28];
  v29 = 0;
  v30 = *(usoIdentifierBuilders._rawValue + 2);
  v82 = usoIdentifierBuilders._rawValue + 32;
  v83 = v30;
  v75 = *MEMORY[0x277D5E6A8];
  v74 = v13 + 104;
  v73 = v13 + 8;
  v72 = v7 + 104;
  v71 = v7 + 8;
  v88 = (v31 + 32);
  v70 = *MEMORY[0x277D5E6C0];
  v32 = (v31 + 16);
  v91 = v31;
  v33 = (v31 + 8);
  while (v29 != v83)
  {
    v34 = &v82[48 * v29];
    v35 = *(v34 + 10);
    v36 = v34[44];
    v37 = *(v34 + 3);
    v38 = *(v34 + 4);
    v39 = v34[16];
    v40 = *(v34 + 1);
    v97 = *v34;
    v98 = v40;
    v99 = v39;
    v100 = v37;
    v101 = v38;
    v92 = v35;
    v102 = v35;
    v103 = v36;

    v93 = v40;

    sub_268BBA140();
    v42 = v41;
    v94 = v38;
    if (v38)
    {
      v96 = v29;
      OUTLINED_FUNCTION_2_7(&v107);
      v95 = v42;
      v43 = v77;
      v87 = v37;
      v44 = v78;
      v45(v77, v75, v78);

      v46 = sub_268C156DC();
      v85 = v47;
      v86 = v46;
      OUTLINED_FUNCTION_2_7(&v106);
      v48(v43, v44);
      OUTLINED_FUNCTION_2_7(&v105);
      v49 = v79;
      v50 = v80;
      v51(v79, v70, v80);
      sub_268C156FC();
      v84 = v52;
      OUTLINED_FUNCTION_2_7(v104);
      v53(v49, v50);
      v54 = sub_268C1553C();
      __swift_storeEnumTagSinglePayload(v81, 1, 1, v54);
      LOBYTE(v97) = v36;
      v55 = v76;
      sub_268C1559C();
      v56 = v89;
      v92 = *v88;
      v92(v89, v55, v17);
      v57 = v56;
      v58 = v95;
      (*v32)(v90, v57, v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB31EC(0, *(v58 + 16) + 1, 1, v58);
        v58 = v67;
      }

      v60 = *(v58 + 16);
      v59 = *(v58 + 24);
      v61 = v58;
      v29 = v96;
      if (v60 >= v59 >> 1)
      {
        sub_268BB31EC(v59 > 1, v60 + 1, 1, v58);
        v61 = v68;
      }

      v62 = v91;
      (*(v91 + 8))(v89, v17);
      *(v61 + 16) = v60 + 1;
      v42 = v61;
      v92((v61 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v60), v90, v17);
    }

    ++v29;
    v63 = *(v42 + 16);
    if (v63)
    {
      v95 = v42;
      v96 = v29;
      v64 = v42 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
      v65 = *(v91 + 72);
      v66 = *(v91 + 16);
      do
      {
        v66(v22, v64, v17);
        sub_268C1540C();
        (*v33)(v22, v17);
        v64 += v65;
        --v63;
      }

      while (v63);

      v29 = v96;
    }

    else
    {
    }
  }
}

uint64_t sub_268BF3498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE600, &unk_268C18798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BF3500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsoEntitySpanBuilder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BF3564(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntitySpanBuilder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Reference.rawValue.getter()
{
  result = 6647407;
  switch(*v0)
  {
    case 1:
      result = 6645876;
      break;
    case 2:
      result = 2037277037;
      break;
    case 3:
      result = 0x6574696E69666564;
      break;
    case 4:
      result = 0x696E696665646E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FromEntity.init(haEntity:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_2_8();
  v8 = v7(v6);
  if (v9)
  {
    v10 = 2;
LABEL_11:
    *a2 = v10;
    a2[1] = v8;
    a2[2] = v9;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_6_9();
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_2_8();
  v8 = v14(v13);
  if (v9)
  {
    v10 = 0;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_9();
  v16 = *(v15 + 16);
  v17 = OUTLINED_FUNCTION_2_8();
  v8 = v18(v17);
  if (v9)
  {
    v10 = 1;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_9();
  v20 = *(v19 + 32);
  v21 = OUTLINED_FUNCTION_2_8();
  v8 = v22(v21);
  if (v9)
  {
    v10 = 3;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_9();
  v24 = *(v23 + 40);
  v25 = OUTLINED_FUNCTION_2_8();
  v8 = v26(v25);
  if (v9)
  {
    v10 = 4;
    goto LABEL_11;
  }

  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

BOOL HomeAutomationEntity.currentRoom.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 104))(&var1);
  v2 = var1;

  return sub_268BDD94C(v2, &unk_287975108);
}

uint64_t PlaceHint.rawValue.getter()
{
  result = 1936287860;
  switch(*v0)
  {
    case 1:
      return 0x657265685F6E69;
    case 2:
      return 0x6E69685F6D6F6F72;
    case 3:
      return 0x69685F6573756F68;
    case 4:
      return 0x725F6E6F6D6D6F63;
    case 5:
      return 1819042152;
    case 6:
      return 0x6E65686374696BLL;
    case 7:
      v3 = 1769367916;
      return v3 | 0x6F72676E00000000;
    case 8:
      v3 = 1768843620;
      return v3 | 0x6F72676E00000000;
    case 9:
      return 0x65636E6172746E65;
    case 0xA:
      return 0x6D6F6F7268746162;
    case 0xB:
      return 0x65636966666FLL;
    case 0xC:
      v2 = 1919182178;
      goto LABEL_18;
    case 0xD:
      return 0x625F72657473616DLL;
    case 0xE:
      return 0x746E656D65736162;
    case 0xF:
      return 1685217657;
    case 0x10:
      return 7174503;
    case 0x11:
      return 0x6F6F725F79616C70;
    case 0x12:
      v2 = 1918858868;
LABEL_18:
      result = v2 | 0x6D6F6F00000000;
      break;
    case 0x13:
      result = 0x706F68736B726F77;
      break;
    default:
      return result;
  }

  return result;
}

void DeviceType.rawValue.getter()
{
  switch(*v0)
  {
    case 8:
      OUTLINED_FUNCTION_15_5();
      break;
    default:
      return;
  }
}

uint64_t HomeAutomationEntity.name.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (!v4)
  {
    v5 = *(a2 + 32);
    v6 = OUTLINED_FUNCTION_15();
    return v7(v6);
  }

  return result;
}

uint64_t sub_268BF3C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 104))(&v6);
  v4 = v6;
  if (v6 == 20)
  {
    return 0;
  }

  return sub_268BB0EAC(v4, a3);
}

uint64_t HomeAutomationEntity.description.getter(uint64_t a1, void *a2)
{
  sub_268C1606C();
  OUTLINED_FUNCTION_13_5();
  MEMORY[0x26D627230]();
  v3 = a2[1];
  v4 = OUTLINED_FUNCTION_17();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
  sub_268C15C0C();
  OUTLINED_FUNCTION_19_6();

  MEMORY[0x26D627230](0x614E656E6F7A202CLL, 0xEC000000203A656DLL);
  v6 = a2[2];
  v7 = OUTLINED_FUNCTION_17();
  v8(v7);
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_19_6();

  OUTLINED_FUNCTION_13_5();
  MEMORY[0x26D627230](0xD000000000000011);
  v9 = a2[3];
  v10 = OUTLINED_FUNCTION_17();
  v11(v10);
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_19_6();

  MEMORY[0x26D627230](0x636976726573202CLL, 0xEF203A656D614E65);
  v12 = a2[4];
  v13 = OUTLINED_FUNCTION_17();
  v14(v13);
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_19_6();

  OUTLINED_FUNCTION_13_5();
  MEMORY[0x26D627230](v15, v16);
  v17 = a2[5];
  v18 = OUTLINED_FUNCTION_17();
  v19(v18);
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_16_5();

  MEMORY[0x26D627230](0x656369766564202CLL, 0xEE00203A65707954);
  v20 = a2[10];
  v21 = OUTLINED_FUNCTION_17();
  v22(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE608, &qword_268C187A8);
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_16_5();

  MEMORY[0x26D627230](0x486563616C70202CLL, 0xED0000203A746E69);
  v23 = a2[13];
  v24 = OUTLINED_FUNCTION_17();
  v25(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE610, &qword_268C187B0);
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_16_5();

  OUTLINED_FUNCTION_13_5();
  MEMORY[0x26D627230](v26, v27);
  v28 = a2[7];
  v29 = OUTLINED_FUNCTION_17();
  v30(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE618, &qword_268C187B8);
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_16_5();

  MEMORY[0x26D627230](0x657265666572202CLL, 0xED0000203A65636ELL);
  v31 = a2[14];
  v32 = OUTLINED_FUNCTION_17();
  v33(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE620, &unk_268C187C0);
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_16_5();

  OUTLINED_FUNCTION_13_5();
  MEMORY[0x26D627230](0xD000000000000011);
  v34 = a2[6];
  v35 = OUTLINED_FUNCTION_17();
  v37 = v36(v35);
  v38 = (v37 & 1) == 0;
  if (v37)
  {
    v39 = 1702195828;
  }

  else
  {
    v39 = 0x65736C6166;
  }

  if (v38)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x26D627230](v39, v40);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t HomeAutomationEntity.matches(haEntity:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v49[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49[-1] - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v49[-1] - v18;
  if (sub_268BF455C(a1, a2, a3))
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    __swift_project_value_buffer(v6, qword_2802D2F10);
    OUTLINED_FUNCTION_11_5();
    v20(v19);
    sub_268BDFAE0(a1, v49);
    v21 = sub_268C159FC();
    v22 = sub_268C15DCC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v23 = 136315138;
      v24 = OUTLINED_FUNCTION_5_6();
      v26 = OUTLINED_FUNCTION_7_7(v24, v25);

      *(v23 + 4) = v26;
      _os_log_impl(&dword_268BAD000, v21, v22, "HomeAutomation entities have a matching name: %s", v23, 0xCu);
      OUTLINED_FUNCTION_12_5();
      OUTLINED_FUNCTION_30();

      (*(v9 + 8))(v19, v6);
      return 1;
    }

    (*(v9 + 8))(v19, v6);
    goto LABEL_17;
  }

  if (sub_268BF46DC(a1, a2, a3))
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    __swift_project_value_buffer(v6, qword_2802D2F10);
    OUTLINED_FUNCTION_11_5();
    v27(v16);
    sub_268BDFAE0(a1, v49);
    v28 = sub_268C159FC();
    v29 = sub_268C15DCC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v30 = 136315138;
      v31 = OUTLINED_FUNCTION_5_6();
      v33 = OUTLINED_FUNCTION_7_7(v31, v32);

      *(v30 + 4) = v33;
      _os_log_impl(&dword_268BAD000, v28, v29, "HomeAutomation entities have a matching device type: %s", v30, 0xCu);
      OUTLINED_FUNCTION_12_5();
      OUTLINED_FUNCTION_30();

      (*(v9 + 8))(v16, v6);
      return 1;
    }

    (*(v9 + 8))(v16, v6);
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0(v49);
    return 1;
  }

  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  __swift_project_value_buffer(v6, qword_2802D2F10);
  OUTLINED_FUNCTION_11_5();
  v34(v13);
  sub_268BDFAE0(a1, v49);
  v35 = sub_268C159FC();
  v36 = sub_268C15DCC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v37 = 136315138;
    v38 = OUTLINED_FUNCTION_5_6();
    v40 = OUTLINED_FUNCTION_7_7(v38, v39);

    *(v37 + 4) = v40;
    _os_log_impl(&dword_268BAD000, v35, v36, "HomeAutomation entities did not match: %s", v37, 0xCu);
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_30();

    v41 = *(v9 + 8);
    v42 = OUTLINED_FUNCTION_15();
    v43(v42);
  }

  else
  {

    v45 = *(v9 + 8);
    v46 = OUTLINED_FUNCTION_15();
    v47(v46);
    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  return 0;
}

uint64_t sub_268BF455C(void *a1, uint64_t a2, uint64_t a3)
{
  HomeAutomationEntity.name.getter(a2, a3);
  if (v6)
  {

    v7 = HomeAutomationEntity.name.getter(a2, a3);
    v9 = v8;
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = HomeAutomationEntity.name.getter(v10, v11);
  }

  else
  {
    v14 = *(a3 + 8);
    v14(a2, a3);
    if (!v15)
    {
      v20 = 0;
      return v20 & 1;
    }

    v7 = (v14)(a2, a3);
    v9 = v16;
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    v12 = (*(v18 + 8))(v17, v18);
  }

  if (v9)
  {
    if (v13)
    {
      if (v7 == v12 && v9 == v13)
      {

        v20 = 1;
      }

      else
      {
        v20 = sub_268C1618C();
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    if (!v13)
    {
      v20 = 1;
      return v20 & 1;
    }

    v20 = 0;
  }

  return v20 & 1;
}

BOOL sub_268BF46DC(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 80))(&v10, a2, a3);
  if (v10 == 12)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 80))(&v10, v4, v5);
  if (v10 == 12)
  {
    return 0;
  }

  DeviceType.rawValue.getter();
  DeviceCategory.init(deviceType:)(v6);
  if (v11)
  {
    return 0;
  }

  v7 = v10;
  DeviceType.rawValue.getter();
  DeviceCategory.init(deviceType:)(v8);
  return v11 != 1 && (v7 & ~v10) == 0;
}

BOOL HomeAutomationEntity.isDeviceTypeOnly.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 80))(&v39);
  if (v39 != 12)
  {
    v3 = *(a2 + 8);
    v4 = OUTLINED_FUNCTION_15();
    v5(v4);
    if (v6)
    {
      goto LABEL_7;
    }

    v7 = *(a2 + 16);
    v8 = OUTLINED_FUNCTION_15();
    v9(v8);
    if (v10)
    {
      goto LABEL_7;
    }

    v11 = *(a2 + 24);
    v12 = OUTLINED_FUNCTION_15();
    v13(v12);
    if (v14 || (v15 = *(a2 + 32), v16 = OUTLINED_FUNCTION_15(), v17(v16), v18) || (v19 = *(a2 + 40), v20 = OUTLINED_FUNCTION_15(), v21(v20), v22))
    {
LABEL_7:
    }

    else
    {
      v24 = *(a2 + 48);
      v25 = OUTLINED_FUNCTION_15();
      if ((v26(v25) & 1) == 0)
      {
        v27 = *(a2 + 56);
        v28 = OUTLINED_FUNCTION_15();
        v29(v28);
        if (v38 == 5)
        {
          v30 = *(a2 + 104);
          v31 = OUTLINED_FUNCTION_15();
          v32(v31);
          if (v37 == 20)
          {
            v33 = *(a2 + 112);
            v34 = OUTLINED_FUNCTION_15();
            v35(v34);
            return v36 == 5;
          }
        }
      }
    }
  }

  return 0;
}

unint64_t Collection<>.getFilteringDeviceCategory()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a4;
  v7 = sub_268C15A1C();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v35 = v9;
  v36 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_268C15F1C();
  v17 = OUTLINED_FUNCTION_3_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v34 - v22;
  v38 = a1;
  v39 = a2;
  v40 = a3;
  sub_268C15CBC();
  if (__swift_getEnumTagSinglePayload(v23, 1, AssociatedTypeWitness) == 1)
  {
    (*(v19 + 8))(v23, v16);
LABEL_4:
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v25 = v36;
    v26 = __swift_project_value_buffer(v36, qword_2802D2F10);
    v27 = v35;
    (*(v35 + 16))(v13, v26, v25);
    v28 = sub_268C159FC();
    v29 = sub_268C15DFC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_268BAD000, v28, v29, "No entities found with a deviceType. Returning filtering DeviceCategory: .everything", v30, 2u);
      OUTLINED_FUNCTION_30();
    }

    result = (*(v27 + 8))(v13, v25);
    v32 = 15;
    goto LABEL_11;
  }

  (*(a3 + 80))(&v42, AssociatedTypeWitness, a3);
  v24 = v42;
  (*(*(AssociatedTypeWitness - 8) + 8))(v23, AssociatedTypeWitness);
  if (v24 == 12)
  {
    goto LABEL_4;
  }

  v41 = v24;
  DeviceType.rawValue.getter();
  result = DeviceCategory.init(deviceType:)(v33);
  v32 = 15;
  if (!v43)
  {
    v32 = v42;
  }

LABEL_11:
  *v37 = v32;
  return result;
}

BOOL sub_268BF4C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 80);
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5(&v9, AssociatedTypeWitness, a4);
  return v9 != 12;
}

uint64_t sub_268BF4D70@<X0>(uint64_t a1@<X2>, uint64_t (**a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a2[1];
  v6 = *(a1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v5(AssociatedTypeWitness, a2);
  if (v9 || (result = a2[2](AssociatedTypeWitness, a2), v9) || (result = a2[3](AssociatedTypeWitness, a2), v9) || (result = a2[4](AssociatedTypeWitness, a2), v9))
  {
    *a3 = result;
LABEL_6:
    a3[1] = v9;
    return result;
  }

  result = a2[5](AssociatedTypeWitness, a2);
  *a3 = result;
  if (v9)
  {
    goto LABEL_6;
  }

  a3[1] = 0;
  return result;
}

uint64_t sub_268BF4EE0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 48))(v1, v2) & 1;
}

uint64_t Collection<>.hasFromAndToEntities.getter(uint64_t a1, uint64_t a2)
{
  if (Collection<>.hasFromEntities.getter(a1, a2))
  {
    v3 = *(a2 + 8);
    v4 = sub_268C15CCC();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL sub_268BF4FAC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return ((*(v2 + 48))(v1, v2) & 1) == 0;
}

SiriPlaybackControlSupport::DeviceType __swiftcall DeviceType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172C0;
  *(inited + 32) = 0x76745F656C707061;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0x7674656C707061;
  *(inited + 56) = 0xE700000000000000;
  v16 = countAndFlagsBits;
  v17 = object;
  v15 = &v16;
  v6 = sub_268BC48EC(sub_268BC4C7C, v14, inited);
  swift_setDeallocating();
  sub_268BF5B34();
  if (v6)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v7 = byte_287974650[v8++ + 32];
      v16 = 0;
      v17 = 0xE000000000000000;
      v9 = 0xE800000000000000;
      v10 = 0x76745F656C707061;
      switch(v7)
      {
        case 1:
          v9 = 0xEA00000000006E6FLL;
          v10 = 0x69736976656C6574;
          break;
        case 2:
          v9 = 0xE700000000000000;
          v10 = 0x646F70656D6F68;
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x72656B61657073;
          break;
        case 4:
          v10 = 0x5F74726F70726961;
          v9 = 0xEF73736572707865;
          break;
        case 5:
          v9 = 0xE400000000000000;
          v10 = 1684099177;
          break;
        case 6:
          v9 = 0xE600000000000000;
          v10 = 0x656E6F685069;
          break;
        case 7:
          v10 = 0x5F79616C70726961;
          v9 = 0xEF72656B61657073;
          break;
        case 8:
          v10 = 0xD000000000000011;
          v9 = 0x8000000268C1B470;
          break;
        case 9:
          v10 = 0xD000000000000012;
          v9 = 0x8000000268C1B380;
          break;
        case 10:
          v10 = 0x636341726568746FLL;
          v9 = 0xEE0079726F737365;
          break;
        case 11:
          v9 = 0xE700000000000000;
          v10 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      MEMORY[0x26D627230](v10, v9);

      if (v16 == countAndFlagsBits && v17 == object)
      {
        break;
      }

      v12 = sub_268C1618C();

      if (v12)
      {
        goto LABEL_24;
      }

      if (v8 == 12)
      {
        LOBYTE(v7) = 11;
        goto LABEL_24;
      }
    }
  }

LABEL_24:

  *v4 = v7;
  return result;
}

void DeviceType.capabilities.getter(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 9;
  switch(*v1)
  {
    case 0:
    case 1:
      break;
    case 2:
    case 3:
    case 4:
    case 7:
    case 8:
      v2 = 0;
      v3 = 6;
      break;
    default:
      v3 = 0;
      v2 = 1;
      break;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_268BF53F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = DeviceType.init(rawValue:)(*a1);
  *a2 = v4;
  return result;
}

void sub_268BF5430(void *a1@<X8>)
{
  DeviceType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

SiriPlaybackControlSupport::PlaceHint_optional __swiftcall PlaceHint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C1619C();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
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
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_268BF5618@<X0>(uint64_t *a1@<X8>)
{
  result = PlaceHint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPlaybackControlSupport::DeviceQuantifier_optional __swiftcall DeviceQuantifier.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  sub_268C1615C();
  result.value = OUTLINED_FUNCTION_18_5();
  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t DeviceQuantifier.rawValue.getter()
{
  result = 6647407;
  switch(*v0)
  {
    case 1:
      result = 1752461154;
      break;
    case 2:
      result = 1701670771;
      break;
    case 3:
      result = 7105633;
      break;
    case 4:
      result = 0x747065637865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BF575C@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceQuantifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FromEntity.value.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

SiriPlaybackControlSupport::FromEntity::FromEntityType_optional __swiftcall FromEntity.FromEntityType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  sub_268C1615C();
  result.value = OUTLINED_FUNCTION_18_5();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void FromEntity.FromEntityType.rawValue.getter()
{
  switch(*v0)
  {
    case 2:
    case 3:
    case 4:
    case 5:
      return;
    default:
      OUTLINED_FUNCTION_15_5();
      break;
  }
}

uint64_t sub_268BF5914(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_268BB18D0();
}

void sub_268BF5944(void *a1@<X8>)
{
  FromEntity.FromEntityType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

SiriPlaybackControlSupport::Reference_optional __swiftcall Reference.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  sub_268C1615C();
  result.value = OUTLINED_FUNCTION_18_5();
  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_268BF5A04@<X0>(uint64_t *a1@<X8>)
{
  result = Reference.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MediaSettingName.init(rawValue:)()
{
  OUTLINED_FUNCTION_8_9();
  sub_268C1615C();
  result = OUTLINED_FUNCTION_18_5();
  *v0 = v1 != 0;
  return result;
}

uint64_t sub_268BF5AB8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return MediaSettingName.init(rawValue:)();
}

uint64_t sub_268BF5B34()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_268BF5BC0()
{
  result = qword_2802CE628;
  if (!qword_2802CE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE628);
  }

  return result;
}

unint64_t sub_268BF5C48()
{
  result = qword_2802CE640;
  if (!qword_2802CE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE640);
  }

  return result;
}

unint64_t sub_268BF5CD0()
{
  result = qword_2802CE658;
  if (!qword_2802CE658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE658);
  }

  return result;
}

unint64_t sub_268BF5D58()
{
  result = qword_2802CE670;
  if (!qword_2802CE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE670);
  }

  return result;
}

unint64_t sub_268BF5DE0()
{
  result = qword_2802CE688;
  if (!qword_2802CE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE688);
  }

  return result;
}

unint64_t sub_268BF5E68()
{
  result = qword_2802CE6A0;
  if (!qword_2802CE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE6A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x268BF6158);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceHint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PlaceHint(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
        JUMPOUT(0x268BF62E0);
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
          *result = a2 + 19;
        }

        break;
    }
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

uint64_t sub_268BF633C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_268BF637C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for FromEntity.FromEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FromEntity.FromEntityType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BF651CLL);
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

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268BF65D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x268BF66A4);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MRErrorEncoder(unsigned int *a1, int a2)
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

_BYTE *sub_268BF6748(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268BF67E4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_6()
{
  v1 = *(v0 - 96);
  v2 = *(v0 - 88);
  __swift_project_boxed_opaque_existential_1((v0 - 120), v1);

  return HomeAutomationEntity.description.getter(v1, v2);
}

uint64_t OUTLINED_FUNCTION_7_7(uint64_t a1, unint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_0((v2 - 120));

  return sub_268BB3D28(a1, a2, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_268C15C0C();
}

void OUTLINED_FUNCTION_12_5()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D628010);
}

void OUTLINED_FUNCTION_16_5()
{

  JUMPOUT(0x26D627230);
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_268C15C0C();
}

uint64_t OUTLINED_FUNCTION_18_5()
{
}

void OUTLINED_FUNCTION_19_6()
{

  JUMPOUT(0x26D627230);
}

double sub_268BF69E8()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  mach_timebase_info(v4);
  LODWORD(v0) = v4[0].denom;
  LODWORD(v1) = v4[0].numer;
  v2 = *MEMORY[0x277D85DE8];
  return v1 / v0 / 1000000000.0;
}

uint64_t sub_268BF6D2C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 32) = 8;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 4;
  *(v1 + 16) = v2;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_268BF6D54()
{
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000026, 0x8000000268C1C830);
  v7 = *(v0 + 24);
  v1 = sub_268C1616C();
  MEMORY[0x26D627230](v1);

  OUTLINED_FUNCTION_0_6();
  LOBYTE(v7) = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE6B8, &unk_268C19070);
  v2 = sub_268C15C0C();
  MEMORY[0x26D627230](v2);

  OUTLINED_FUNCTION_0_6();
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
  v3 = sub_268C15C0C();
  MEMORY[0x26D627230](v3);

  MEMORY[0x26D627230](0xD000000000000011, 0x8000000268C1C880);
  swift_beginAccess();
  v6 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE6C0, &unk_268C19080);
  v4 = sub_268C15C0C();
  MEMORY[0x26D627230](v4);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_268BF6F10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_268BF6F38()
{
  sub_268BF6F10();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void OUTLINED_FUNCTION_0_6()
{

  JUMPOUT(0x26D627230);
}

uint64_t sub_268BF6FD4()
{
  result = sub_268C15B7C();
  qword_2802CE6C8 = result;
  return result;
}

uint64_t sub_268BF7038()
{
  result = sub_268C15B7C();
  qword_2802CE6D0 = result;
  return result;
}

uint64_t sub_268BF709C(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t MRErrorEncoder.ResultError.errorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MRErrorEncoder.ResultError.errorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static MRErrorEncoder.createErrorRepresentationDomain(command:errorDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_2802CDBD0 != -1)
  {
    swift_once();
  }

  v8 = qword_2802CE6D0;

  v9 = sub_268BF7CD8(v8, a1, a2, sub_268BF8140, sub_268BF8140);
  sub_268BC31AC(v9);

  v10 = sub_268C1616C();
  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = 47;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = 0xE100000000000000;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v15 = v10;

  MEMORY[0x26D627230](v12, v13);

  MEMORY[0x26D627230](a3, a4);

  return v15;
}

uint64_t static MRErrorEncoder.commandResultErrorWrapper(commandResult:error:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = 1;
  v13 = 0;
  v14 = 0xE000000000000000;
  v15 = 0;
  sub_268BF792C(a2, &v13, &v15);
  v6 = v13;
  v5 = v14;
  if (a1)
  {
    a1 = [a1 error];
  }

  v14 = 0xE000000000000000;
  v15 = 0;
  v16 = 1;
  v13 = 0;
  sub_268BF792C(a1, &v13, &v15);

  v7 = v14;
  if (v16)
  {
    v8 = -1;
  }

  else
  {
    v8 = v15;
  }

  v9 = v13;
  v13 = v6;
  v14 = v5;

  MEMORY[0x26D627230](v9, v7);

  v11 = v13;
  v12 = v14;
  *a3 = v8;
  a3[1] = v11;
  a3[2] = v12;
  return result;
}

uint64_t static MRErrorEncoder.generateCommandEncoding(commandResult:)(void *a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_2802D2F10);
  v31 = v3[2];
  v31(v9, v10, v2);
  v11 = sub_268C159FC();
  v12 = sub_268C15DDC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_268BAD000, v11, v12, "MRErrorEncoder#generateCommandEncoding", v13, 2u);
    OUTLINED_FUNCTION_1_9();
    MEMORY[0x26D628010]();
  }

  v14 = v3[1];
  v14(v9, v2);
  v15 = [a1 playerPath];
  v16 = [v15 origin];

  v17 = [objc_opt_self() deviceInfoForOrigin_];
  v33 = 0;
  v34 = 0xE000000000000000;
  if (!v16 || ([v16 isLocallyHosted] & 1) == 0)
  {
    switch([v17 clusterType])
    {
      case 0u:
        v18 = 20545;
        goto LABEL_12;
      case 1u:
        v18 = 20563;
        goto LABEL_12;
      case 2u:
        v18 = 21576;
        goto LABEL_12;
      case 3u:
        v18 = 16711;
LABEL_12:
        v19 = 0xE200000000000000;
        break;
      default:
        v18 = 4935253;
        v19 = 0xE300000000000000;
        break;
    }

    MEMORY[0x26D627230](v18, v19);
  }

  v30 = v17;
  v31(v7, v10, v2);
  v20 = v33;
  v21 = v34;

  v22 = sub_268C159FC();
  v23 = v7;
  v24 = sub_268C15DDC();

  if (os_log_type_enabled(v22, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v14;
    v32 = v26;
    v27 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_268BB3D28(v20, v21, &v32);
    _os_log_impl(&dword_268BAD000, v22, v24, "MRErrorEncoder#generateCommandEncoding: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_1_9();
    MEMORY[0x26D628010]();
    OUTLINED_FUNCTION_1_9();
    MEMORY[0x26D628010]();

    (v31)(v23, v2);
  }

  else
  {

    v14(v23, v2);
  }

  return v20;
}

uint64_t static MRErrorEncoder.getStatusCode(commandResult:)(void *a1)
{
  if (!a1)
  {
    return 45;
  }

  v1 = [a1 resultStatuses];
  sub_268BF7EA4();
  v2 = sub_268C15D0C();

  if (sub_268BC4EF4(v2))
  {
    sub_268BC4F00(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D627640](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    [v4 statusCode];

    return sub_268C1616C();
  }

  else
  {

    return 45;
  }
}

void sub_268BF792C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_268C1523C();
    v6 = [v5 __msv_objectDescription];
    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = v6;
    v8 = sub_268C15BFC();
    v10 = v9;

    v20 = v8;
    v21 = v10;
    v18 = 0xD000000000000014;
    v19 = 0x8000000268C1C8A0;
    sub_268BB9A64();
    LOBYTE(v7) = sub_268C15F7C();

    if (v7)
    {
    }

    else
    {
LABEL_5:
      v11 = sub_268BF7AD4(v5);
      MEMORY[0x26D627230](v11);

      if (*(a3 + 8) == 1)
      {
        *a3 = [v5 code];
        *(a3 + 8) = 0;
      }

      v12 = [v5 underlyingErrors];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4E0, &qword_268C19100);
      v13 = sub_268C15D0C();

      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = 32;
        do
        {
          v16 = *(v13 + v15);
          v17 = v16;
          sub_268BF792C(v16, a2, a3);

          v15 += 8;
          --v14;
        }

        while (v14);
      }
    }
  }
}

uint64_t sub_268BF7AD4(void *a1)
{
  [a1 code];
  v2 = sub_268C1616C();
  v4 = v3;
  v5 = [a1 domain];
  v6 = sub_268C15BFC();
  v8 = v7;

  if (qword_2802CDBC8 != -1)
  {
    swift_once();
  }

  v9 = qword_2802CE6C8;

  v10 = sub_268BF7CD8(v9, v6, v8, sub_268BF7FCC, sub_268BF7FCC);
  sub_268BC31AC(v10);

  v11 = sub_268C1616C();
  MEMORY[0x26D627230](v11);

  MEMORY[0x26D627230](8236, 0xE200000000000000);
  MEMORY[0x26D627230](v2, v4);

  MEMORY[0x26D627230](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_268BF7C74(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_268C16D40;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_268BF7CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();

      OUTLINED_FUNCTION_0_7();
      a2 = sub_268BF829C(v16, v17, v18, v19, v20, a5);
      OUTLINED_FUNCTION_1_9();
      MEMORY[0x26D628010]();
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v12);
  sub_268BF7C74(0, v11, v21 - ((8 * v11 + 15) & 0x3FFFFFFFFFFFFFF0));

  OUTLINED_FUNCTION_0_7();
  v13 = a4();
  if (v5)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v13;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v14 = *MEMORY[0x277D85DE8];
  return a2;
}

unint64_t sub_268BF7EA4()
{
  result = qword_2802CE6D8;
  if (!qword_2802CE6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE6D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MRErrorEncoder(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268BF7F84);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BF7FCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v19 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v20 = *v14;
    v21 = v14[1];
    sub_268BB9A64();
    result = sub_268C15F7C();
    if (result)
    {
      *(v18 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_15:
        v16 = sub_268BF8354(v18, a2, v19, a3);

        return v16;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268BF8140(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 48) + 16 * v18);
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_268C1618C();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:
      v22 = sub_268BF8354(v24, a2, v8, a3);

      return v22;
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_268BF829C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_268BF8354(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE6E0, &qword_268C19108);
  result = sub_268C1614C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + 8 * v16);
    v21 = *(v9 + 40);
    sub_268C1624C();

    sub_268C15C3C();
    result = sub_268C1626C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_268BF8588(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE6E8, &unk_268C19110);
  result = sub_268C1614C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v21 = result + 64;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(*(v4 + 56) + 8 * v15);
    v18 = *(v9 + 40);
    sub_268C1624C();

    sub_268BF8744(__src, v16);
    sub_268C1626C();
    v19 = -1 << *(v9 + 32);
    result = sub_268C15FEC();
    *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(*(v9 + 48) + 8 * result) = v16;
    *(*(v9 + 56) + 8 * result) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_268BF8744(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_268C1626C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_268C1624C();

    sub_268C15C3C();
    v15 = sub_268C1626C();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x26D627820](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static LanguageOption.autoLanguage(localizationProvider:locale:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = 8;
  result = (*(v3 + 8))(&v8);
  v6 = 1869903169;
  if (v5)
  {
    v6 = result;
    v7 = v5;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  *a2 = 1869903201;
  *(a2 + 8) = 0xE400000000000000;
  *(a2 + 16) = 1869903201;
  *(a2 + 24) = 0xE400000000000000;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = MEMORY[0x277D84F90];
  *(a2 + 56) = 0;
  return result;
}

SiriPlaybackControlSupport::LanguageGroup_optional __swiftcall LanguageGroup.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  v2 = sub_268C1615C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t LanguageGroup.rawValue.getter()
{
  if (*v0)
  {
    result = 0x4F49445541;
  }

  else
  {
    result = 0x454C544954425553;
  }

  *v0;
  return result;
}

uint64_t sub_268BF8AC0@<X0>(uint64_t *a1@<X8>)
{
  result = LanguageGroup.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PlaybackControllingError.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v8 = *(v1 + 32);
    sub_268C1606C();

    OUTLINED_FUNCTION_22_5();
    v7 = 0xD000000000000016;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    v4 = v3[2];
    v5 = v3[3];
    v6 = v3[10];
    sub_268C1606C();

    OUTLINED_FUNCTION_22_5();
    v7 = 0xD00000000000001CLL;
LABEL_5:
    v19 = v7;
    MEMORY[0x26D627230](v4, v5);
    v9 = MEMORY[0x26D627230](8236, 0xE200000000000000);
    v10 = PlaybackControllingError.description.getter(v9);
    MEMORY[0x26D627230](v10);

    MEMORY[0x26D627230](41, 0xE100000000000000);
    return v19;
  }

  result = 0x6E776F6E6B6E75;
  switch(__ROR8__(v1 ^ 0x8000000000000000, 3))
  {
    case 1:
      OUTLINED_FUNCTION_0_8();
      result = v12 - 1;
      break;
    case 2:
      OUTLINED_FUNCTION_0_8();
      result = v14 + 2;
      break;
    case 3:
      OUTLINED_FUNCTION_0_8();
      result = v15 | 1;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      OUTLINED_FUNCTION_0_8();
      result = v17 + 10;
      break;
    case 6:
      OUTLINED_FUNCTION_0_8();
      result = v18 + 6;
      break;
    case 7:
      OUTLINED_FUNCTION_0_8();
      result = v16 | 8;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x616C50776F4E6F6ELL;
      break;
    case 0xALL:
      result = 0x6E65746E6F436F6ELL;
      break;
    case 0xBLL:
      result = 0x726F7774654E6F6ELL;
      break;
    case 0xCLL:
      OUTLINED_FUNCTION_0_8();
      result = v13 + 3;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static PlaybackControllingError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = PlaybackControllingError.description.getter();
  v5 = v4;
  if (v3 == PlaybackControllingError.description.getter() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_268C1618C();
  }

  return v8 & 1;
}

uint64_t PlaybackControllingError.reason.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    if (v2 != 1)
    {
      OUTLINED_FUNCTION_16_6();
      return OUTLINED_FUNCTION_2_5();
    }

    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t PlaybackControllingError.cmdID.getter()
{
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v2 = v0 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
  }

  else
  {
    OUTLINED_FUNCTION_16_6();
  }

  return OUTLINED_FUNCTION_2_5();
}

uint64_t PlaybackControllingError.playerPath.getter()
{
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v2 = v0 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_16_6();
  }

  return OUTLINED_FUNCTION_2_5();
}

uint64_t PlaybackControllingError.timestamp.getter()
{
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v2 = v0 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
  }

  else
  {
    OUTLINED_FUNCTION_16_6();
  }

  return OUTLINED_FUNCTION_2_5();
}

SiriPlaybackControlSupport::PlaybackControllingError::UserInfoKeys_optional __swiftcall PlaybackControllingError.UserInfoKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  v2 = sub_268C1615C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t PlaybackControllingError.UserInfoKeys.rawValue.getter()
{
  result = 0x726F727265;
  switch(*v0)
  {
    case 1:
      result = 0x4449646D63;
      break;
    case 2:
      result = 0x6150726579616C70;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BF9054@<X0>(uint64_t *a1@<X8>)
{
  result = PlaybackControllingError.UserInfoKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PlaybackControllingError.UserInfo.cmdID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_5();
}

uint64_t PlaybackControllingError.UserInfo.cmdID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PlaybackControllingError.UserInfo.playerPath.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t PlaybackControllingError.UserInfo.playerPath.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PlaybackControllingError.UserInfo.timestamp.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t PlaybackControllingError.UserInfo.timestamp.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void sub_268BF9214(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (a1 >> 62)
  {
    v4 = sub_268C1613C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0x8000000000000008;
  if (v4)
  {
    sub_268BC4F00(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D627640](0, a1);
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = v6;
    v8 = [v6 unsignedIntValue];

    if (v8 == 100)
    {
      v5 = 0x8000000000000010;
    }

    else if (v8 != 108)
    {
      if (v8 == 107)
      {
        v5 = 0x8000000000000028;
      }

      else
      {
        v5 = 0x8000000000000000;
      }
    }
  }

  else
  {
    v5 = 0x8000000000000020;
  }

  *a2 = v5;
}

unint64_t static PlaybackControllingError.flattenPlaybackControllingError(pce:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  if (!(v2 >> 62))
  {
    v3 = 32;
    goto LABEL_5;
  }

  if (v2 >> 62 == 1)
  {
    v2 &= 0x3FFFFFFFFFFFFFFFuLL;
    v3 = 80;
LABEL_5:
    v2 = *(v2 + v3);
  }

  *a2 = v2;
  return sub_268BB99C0(v2);
}

id static PlaybackControllingError.createUserActivityForResult<A>(result:fallbackError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268BD8218();
  v6 = sub_268C1627C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (v30 - v10);
  (*(v7 + 16))(v30 - v10, a1, v6, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = *v11 >> 62;
    if (v13 == 1)
    {
      v20 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v18 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v19 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v16 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v17 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v23 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);

      v15 = v23;
      goto LABEL_8;
    }

    if (!v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = *(v12 + 16);
      v21 = *(v12 + 24);
LABEL_8:

      v22 = static PlaybackControllingError.createUserActivityForErrorReason(errorReason:cmdID:playerPath:timestamp:)(v20, v21, v18, v19, v16, v17, v14, v15);

      sub_268BB99A4(v12);

      return v22;
    }

    if (a3)
    {
      sub_268BF98F0();
      v22 = OUTLINED_FUNCTION_5_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE108, &unk_268C19120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_268C172B0;
      OUTLINED_FUNCTION_3_9();
      v30[1] = v25;
      v30[2] = v26;
      v27 = MEMORY[0x277D837D0];
      sub_268C1601C();
      *(inited + 96) = v27;
      *(inited + 72) = a2;
      *(inited + 80) = a3;

      v28 = sub_268C15B7C();
      sub_268BFA71C(v28, v22);
      sub_268BB99A4(v12);
      return v22;
    }

    sub_268BB99A4(*v11);
  }

  else
  {
    (*(v7 + 8))(v11, v6);
  }

  return 0;
}

id static PlaybackControllingError.createUserActivityForErrorReason(errorReason:cmdID:playerPath:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v92 = a7;
  sub_268BF98F0();
  v15 = OUTLINED_FUNCTION_5_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE108, &unk_268C19120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  OUTLINED_FUNCTION_3_9();
  v101 = v17;
  v102 = v18;
  v19 = MEMORY[0x277D837D0];
  sub_268C1601C();
  *(inited + 96) = v19;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  v20 = sub_268C15B7C();
  sub_268BFA71C(v20, v15);
  if (a4)
  {

    v109 = sub_268BFA79C(v15);
    if (v109)
    {
      *&v106 = a3;
      *(&v106 + 1) = a4;
      OUTLINED_FUNCTION_20_4();
      v94 = v21;
      v98 = v22;
      v23 = OUTLINED_FUNCTION_15_6();
      OUTLINED_FUNCTION_6_10(v23, v24, v25, v26, v27, v28, v29, v30, v91, v92, v94, v98, v101, v102, v103, v104, v105, v106, v107, v19, v109, v110);
      sub_268BDAE1C(&v101);
      sub_268BE07E8(&v110);
      if (v109)
      {
        v31 = sub_268C15B4C();
      }

      else
      {
        v31 = 0;
      }

      v42 = OUTLINED_FUNCTION_9_7();
      [v42 v43];
    }

    else
    {

      v32 = OUTLINED_FUNCTION_9_7();
      v34 = [v32 v33];
      OUTLINED_FUNCTION_14_4(v34, v35, v36, v37, v38, v39, v40, v41, v91, v92, v93, v97, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, v108, 0, v110, v111);
    }
  }

  if (a6)
  {

    v109 = sub_268BFA79C(v15);
    if (v109)
    {
      v108 = v19;
      *&v106 = a5;
      *(&v106 + 1) = a6;
      OUTLINED_FUNCTION_8_10();
      v95 = v44;
      v99 = v45;
      v46 = OUTLINED_FUNCTION_15_6();
      OUTLINED_FUNCTION_6_10(v46, v47, v48, v49, v50, v51, v52, v53, v91, v92, v95, v99, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      sub_268BDAE1C(&v101);
      sub_268BE07E8(&v110);
      if (v109)
      {
        v54 = sub_268C15B4C();
      }

      else
      {
        v54 = 0;
      }

      v65 = OUTLINED_FUNCTION_9_7();
      [v65 v66];
    }

    else
    {

      v55 = OUTLINED_FUNCTION_9_7();
      v57 = [v55 v56];
      OUTLINED_FUNCTION_14_4(v57, v58, v59, v60, v61, v62, v63, v64, v91, v92, v93, v97, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, v108, v109, v110, v111);
    }
  }

  if (a8)
  {

    v109 = sub_268BFA79C(v15);
    if (v109)
    {
      v108 = v19;
      *&v106 = v92;
      *(&v106 + 1) = a8;
      OUTLINED_FUNCTION_10_9();
      v96 = v67;
      v100 = v68;
      v69 = OUTLINED_FUNCTION_15_6();
      OUTLINED_FUNCTION_6_10(v69, v70, v71, v72, v73, v74, v75, v76, v91, v92, v96, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      sub_268BDAE1C(&v101);
      sub_268BE07E8(&v110);
      if (v109)
      {
        v77 = sub_268C15B4C();
      }

      else
      {
        v77 = 0;
      }

      v88 = OUTLINED_FUNCTION_9_7();
      [v88 v89];
    }

    else
    {

      v78 = OUTLINED_FUNCTION_9_7();
      v80 = [v78 v79];
      OUTLINED_FUNCTION_14_4(v80, v81, v82, v83, v84, v85, v86, v87, v91, v92, v93, v97, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, v108, v109, v110, v111);
    }
  }

  return v15;
}

unint64_t sub_268BF98F0()
{
  result = qword_2802CE6F8;
  if (!qword_2802CE6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE6F8);
  }

  return result;
}

id sub_268BF9934()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_268C15BEC();

  v2 = [v0 initWithActivityType_];

  return v2;
}

uint64_t static PlaybackControllingError.checkIntentReponseForErrorDescription(intentResponse:)(void *a1)
{
  v1 = [a1 userActivity];
  if (!v1 || (v2 = sub_268BFA808(v1)) == 0)
  {
    OUTLINED_FUNCTION_17_7();
    goto LABEL_9;
  }

  v3 = v2;
  OUTLINED_FUNCTION_3_9();
  v21[0] = v4;
  v21[1] = v5;
  v6 = OUTLINED_FUNCTION_23_5();
  v14 = OUTLINED_FUNCTION_21_4(v6, v7, v8, v9, v10, v11, v12, v13, v19, v20[0]);
  sub_268C0F2AC(v14, v3, v15);

  sub_268BDAE1C(v20);
  if (!v21[3])
  {
LABEL_9:
    sub_268BE07E8(v21);
    return 0;
  }

  swift_dynamicCast();
  OUTLINED_FUNCTION_19_7();
  if (v17)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

void static PlaybackControllingError.checkIntentReponseForFullErrorDescription(intentResponse:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 userActivity];
  if (!v4 || (v5 = sub_268BFA808(v4)) == 0)
  {
    OUTLINED_FUNCTION_17_7();
    goto LABEL_11;
  }

  v6 = v5;
  OUTLINED_FUNCTION_20_4();
  v64 = v7;
  v65 = v8;
  v9 = OUTLINED_FUNCTION_23_5();
  v17 = OUTLINED_FUNCTION_21_4(v9, v10, v11, v12, v13, v14, v15, v16, v62, v63[0]);
  sub_268C0F2AC(v17, v6, v18);

  sub_268BDAE1C(v63);
  if (!v66)
  {
LABEL_11:
    sub_268BE07E8(&v64);
    v22 = 0;
    v23 = 0;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_8();
  OUTLINED_FUNCTION_19_7();
  if (v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  if (v19)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

LABEL_12:
  v24 = [a1 userActivity];
  if (!v24 || (v25 = sub_268BFA808(v24)) == 0)
  {
    OUTLINED_FUNCTION_17_7();
    goto LABEL_22;
  }

  v26 = v25;
  OUTLINED_FUNCTION_8_10();
  v64 = v27;
  v65 = v28;
  v29 = OUTLINED_FUNCTION_23_5();
  v37 = OUTLINED_FUNCTION_21_4(v29, v30, v31, v32, v33, v34, v35, v36, v62, v63[0]);
  sub_268C0F2AC(v37, v26, v38);

  sub_268BDAE1C(v63);
  if (!v66)
  {
LABEL_22:
    sub_268BE07E8(&v64);
    v42 = 0;
    v43 = 0;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_8();
  OUTLINED_FUNCTION_19_7();
  if (v39)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  if (v39)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

LABEL_23:
  v44 = [a1 userActivity];
  if (!v44 || (v45 = sub_268BFA808(v44)) == 0)
  {
    OUTLINED_FUNCTION_17_7();
    goto LABEL_33;
  }

  v46 = v45;
  OUTLINED_FUNCTION_10_9();
  v64 = v47;
  v65 = v48;
  v49 = OUTLINED_FUNCTION_23_5();
  v57 = OUTLINED_FUNCTION_21_4(v49, v50, v51, v52, v53, v54, v55, v56, v62, v63[0]);
  sub_268C0F2AC(v57, v46, v58);

  sub_268BDAE1C(v63);
  if (!v66)
  {
LABEL_33:
    sub_268BE07E8(&v64);
    v60 = 0;
    v61 = 0;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_7_8();
  OUTLINED_FUNCTION_19_7();
  if (v59)
  {
    v60 = 0;
  }

  if (v59)
  {
    v61 = 0;
  }

LABEL_34:
  *a2 = v22;
  a2[1] = v23;
  a2[2] = v42;
  a2[3] = v43;
  a2[4] = v60;
  a2[5] = v61;
}

uint64_t static PlaybackControllingError.checkIntentReponseForErrorDescriptionOrCode(intentResponse:errorCode:)(void *a1, uint64_t a2)
{
  static PlaybackControllingError.checkIntentReponseForErrorDescription(intentResponse:)(a1);
  if (v3)
  {
    sub_268BB9A64();
    v4 = sub_268C15F3C();

    v5 = sub_268BF9D4C(v4);
    v7 = v6;

    if (v7)
    {
      return v5;
    }
  }

  return a2;
}

uint64_t sub_268BF9D4C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_268BF9D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
}

uint64_t sub_268BF9DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t LanguageOption.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_5();
}

uint64_t LanguageOption.languageTag.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t LanguageOption.displayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t LanguageOption.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_268C1606C();
  OUTLINED_FUNCTION_18_6();
  MEMORY[0x26D627230](0xD000000000000018);
  MEMORY[0x26D627230](v5, v6);
  MEMORY[0x26D627230](0x203A676174202CLL, 0xE700000000000000);
  MEMORY[0x26D627230](v3, v4);
  MEMORY[0x26D627230](0x203A6469202CLL, 0xE600000000000000);
  MEMORY[0x26D627230](v1, v2);
  OUTLINED_FUNCTION_18_6();
  MEMORY[0x26D627230]();
  v9 = MEMORY[0x26D6272E0](v7, MEMORY[0x277D837D0]);
  MEMORY[0x26D627230](v9);

  MEMORY[0x26D627230](0x697463417369202CLL, 0xEC000000203A6576);
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v8)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v10, v11);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t static LanguageOption.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_268C1618C();
  }
}

uint64_t DurationInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_268C1606C();
  OUTLINED_FUNCTION_18_6();
  MEMORY[0x26D627230]();
  sub_268C15D9C();
  OUTLINED_FUNCTION_18_6();
  MEMORY[0x26D627230](0xD000000000000013);
  sub_268C15D9C();
  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t ShuffleMode.hashValue.getter()
{
  v1 = *v0;
  sub_268C1624C();
  MEMORY[0x26D627820](v1);
  return sub_268C1626C();
}

uint64_t sub_268BFA488()
{
  v1 = *v0;
  sub_268C1624C();
  MEMORY[0x26D627820](v1);
  return sub_268C1626C();
}

uint64_t sub_268BFA518()
{
  v1 = *v0;
  sub_268C1624C();
  MEMORY[0x26D627820](v1);
  return sub_268C1626C();
}

SiriPlaybackControlSupport::LanguageCharacteristic_optional __swiftcall LanguageCharacteristic.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  v2 = sub_268C1615C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t LanguageCharacteristic.rawValue.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 6841459;
      break;
    case 2:
      result = 25443;
      break;
    case 3:
      result = 25697;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BFA65C@<X0>(uint64_t *a1@<X8>)
{
  result = LanguageCharacteristic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268BFA684()
{
  result = sub_268C15B7C();
  qword_2802CE6F0 = result;
  return result;
}

uint64_t systemLanguageRegionToLanguageTagMap.getter()
{
  if (qword_2802CDBD8 != -1)
  {
    swift_once();
  }
}

void sub_268BFA71C(uint64_t a1, void *a2)
{
  v3 = sub_268C15B4C();

  [a2 setUserInfo_];
}

uint64_t sub_268BFA79C(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268C15B5C();

  return v3;
}

uint64_t sub_268BFA808(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268C15B5C();

  return v3;
}

unint64_t sub_268BFA884()
{
  result = qword_2802CE700;
  if (!qword_2802CE700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE700);
  }

  return result;
}

unint64_t sub_268BFA8DC()
{
  result = qword_2802CE708;
  if (!qword_2802CE708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE708);
  }

  return result;
}

unint64_t sub_268BFA934()
{
  result = qword_2802CE710;
  if (!qword_2802CE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE710);
  }

  return result;
}

unint64_t sub_268BFA98C()
{
  result = qword_2802CE718;
  if (!qword_2802CE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE718);
  }

  return result;
}

unint64_t sub_268BFA9E4()
{
  result = qword_2802CE720;
  if (!qword_2802CE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE720);
  }

  return result;
}

unint64_t sub_268BFAA3C()
{
  result = qword_2802CE728;
  if (!qword_2802CE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE728);
  }

  return result;
}

unint64_t sub_268BFAA94()
{
  result = qword_2802CE730;
  if (!qword_2802CE730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE730);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26SiriPlaybackControlSupport13LanguageErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_268BFADBC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268BFAE14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_268BFAE64(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t get_enum_tag_for_layout_string_26SiriPlaybackControlSupport0B16ControllingErrorO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_268BFAEAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_268BFAF00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_268BFAF60(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_268BFAFBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268BFB010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VolumeControllingError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BFB148);
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

uint64_t sub_268BFB198(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_268BFB1D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DurationInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DurationInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

_BYTE *sub_268BFB290(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BFB358);
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
          result = OUTLINED_FUNCTION_13_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlaybackState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BFB46CLL);
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

_BYTE *sub_268BFB4A0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BFB568);
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
          result = OUTLINED_FUNCTION_13_6(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_5_7()
{

  return sub_268BF9934();
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22)
{

  return sub_268C0F744(&a18, &a13, &a22);
}

uint64_t OUTLINED_FUNCTION_7_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24)
{
  a23 = 0u;
  a24 = 0u;

  return sub_268BE07E8(&a23);
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return sub_268C1601C();
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return sub_268C1601C();
}

void sub_268BFB7BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t Accessory.description.getter()
{
  v3 = 0x3E6C696E3CLL;
  v4 = *v0;
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000012, 0x8000000268C1CAF0);
  v5 = [v4 name];
  sub_268C15BFC();
  OUTLINED_FUNCTION_14_5();

  MEMORY[0x26D627230](v1, v2);

  v6 = OUTLINED_FUNCTION_5_8();
  MEMORY[0x26D627230](v6);
  v7 = [v4 deviceIdentifier];
  sub_268C15BFC();
  OUTLINED_FUNCTION_14_5();

  MEMORY[0x26D627230](v1, v2);

  MEMORY[0x26D627230](0xD000000000000019, 0x8000000268C1CB10);
  Accessory.mediaSystemIdentifier.getter();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0x3E6C696E3CLL;
    v10 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v8, v10);

  OUTLINED_FUNCTION_10_10();
  Accessory.type.getter();
  DeviceCategory.init(homekitType:)(v11);
  if (v32)
  {
    v12 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
  }

  else
  {
    v13 = DeviceCategory.description.getter();
    v12 = v14;
  }

  MEMORY[0x26D627230](v13, v12);

  MEMORY[0x26D627230](0x656469537369202CLL, 0xEE00203A6B63694BLL);
  v15 = [v4 siriEndpointProfile];
  if (v15)
  {

    v16 = 0xE400000000000000;
    v17 = 1702195828;
  }

  else
  {
    v16 = 0xE500000000000000;
    v17 = 0x65736C6166;
  }

  MEMORY[0x26D627230](v17, v16);

  OUTLINED_FUNCTION_10_10();
  v18 = [v4 room];
  if (v18)
  {
    v19 = v18;
    v20 = Room.description.getter();
    v22 = v21;
  }

  else
  {
    v22 = 0xE500000000000000;
    v20 = 0x3E6C696E3CLL;
  }

  MEMORY[0x26D627230](v20, v22);

  OUTLINED_FUNCTION_10_10();
  v23 = [v4 home];
  if (v23)
  {
    v24 = v23;
    v3 = Home.description.getter();
    v26 = v25;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v3, v26);

  MEMORY[0x26D627230](0xD000000000000018, 0x8000000268C1CB30);
  v27 = [v4 supportsNativeMatter];
  v28 = v27 == 0;
  if (v27)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v28)
  {
    v30 = 0xE500000000000000;
  }

  else
  {
    v30 = 0xE400000000000000;
  }

  MEMORY[0x26D627230](v29, v30);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

void Home.rooms.getter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = *v0;
  v2 = [v1 rooms];
  sub_268BB9B44(0, &qword_2802CE738, 0x277CD1D88);
  v3 = sub_268C15D0C();

  v4 = sub_268BC4EF4(v3);
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D627640](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      OUTLINED_FUNCTION_11_6();
      v6 = v16;
      goto LABEL_15;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_6();
      v6 = v11;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_268BB3578(v9 > 1, v10 + 1, 1, v6);
      v6 = v12;
    }

    *(v6 + 16) = v10 + 1;
    *(v6 + 8 * v10 + 32) = v8;
    ++v5;
  }

  v13 = [v1 roomForEntireHome];
  if (!v13)
  {
    goto LABEL_18;
  }

  v1 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v15 = *(v6 + 16);
  v14 = *(v6 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_268BB3578(v14 > 1, v15 + 1, 1, v6);
    v6 = v17;
  }

  *(v6 + 16) = v15 + 1;
  *(v6 + 8 * v15 + 32) = v1;
LABEL_18:
  OUTLINED_FUNCTION_32_0();
}

void Home.zones.getter()
{
  OUTLINED_FUNCTION_31_0();
  v4 = [*v0 zones];
  sub_268BB9B44(0, &qword_2802CE740, 0x277CD1F50);
  v5 = OUTLINED_FUNCTION_15_7();

  sub_268BC4EF4(v5);
  OUTLINED_FUNCTION_4_9();
  while (1)
  {
    if (v4 == v1)
    {

      OUTLINED_FUNCTION_32_0();
      return;
    }

    if (v2)
    {
      v8 = OUTLINED_FUNCTION_15();
      MEMORY[0x26D627640](v8);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v6 = *(v5 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_1_10();
      sub_268BB36F8(v9, v10, v11, v12);
    }

    OUTLINED_FUNCTION_7_9();
    if (v7)
    {
      OUTLINED_FUNCTION_6_11();
      sub_268BB36F8(v13, v14, v15, v16);
    }

    OUTLINED_FUNCTION_2_9();
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t Home.users.getter()
{
  v1 = [*v0 users];
  sub_268BB9B44(0, &qword_2802CE748, 0x277CD1EE0);
  v2 = sub_268C15D0C();

  v3 = sub_268BC4EF4(v2);

  result = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  return result;
}

id Home.homeKitHome.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t static Home.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_268BB9B44(0, &qword_2802CE550, 0x277D82BB8);
  return sub_268C15EEC() & 1;
}

void _s26SiriPlaybackControlSupport4HomeV11accessoriesSayAA9AccessoryVGvg_0()
{
  OUTLINED_FUNCTION_31_0();
  v4 = [*v0 accessories];
  sub_268BB9B44(0, &qword_2802CE528, 0x277CD1650);
  v5 = OUTLINED_FUNCTION_15_7();

  sub_268BC4EF4(v5);
  OUTLINED_FUNCTION_4_9();
  while (1)
  {
    if (v4 == v1)
    {

      OUTLINED_FUNCTION_32_0();
      return;
    }

    if (v2)
    {
      v8 = OUTLINED_FUNCTION_15();
      MEMORY[0x26D627640](v8);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v6 = *(v5 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_1_10();
      sub_268BB3594(v9, v10, v11, v12);
    }

    OUTLINED_FUNCTION_7_9();
    if (v7)
    {
      OUTLINED_FUNCTION_6_11();
      sub_268BB3594(v13, v14, v15, v16);
    }

    OUTLINED_FUNCTION_2_9();
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void Zone.rooms.getter()
{
  OUTLINED_FUNCTION_31_0();
  v4 = [*v0 rooms];
  sub_268BB9B44(0, &qword_2802CE738, 0x277CD1D88);
  v5 = OUTLINED_FUNCTION_15_7();

  sub_268BC4EF4(v5);
  OUTLINED_FUNCTION_4_9();
  while (1)
  {
    if (v4 == v1)
    {

      OUTLINED_FUNCTION_32_0();
      return;
    }

    if (v2)
    {
      v8 = OUTLINED_FUNCTION_15();
      MEMORY[0x26D627640](v8);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v6 = *(v5 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_1_10();
      sub_268BB3578(v9, v10, v11, v12);
    }

    OUTLINED_FUNCTION_7_9();
    if (v7)
    {
      OUTLINED_FUNCTION_6_11();
      sub_268BB3578(v13, v14, v15, v16);
    }

    OUTLINED_FUNCTION_2_9();
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t _s26SiriPlaybackControlSupport4HomeV10identifierSSvg_0()
{
  v1 = sub_268C1531C();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_0();
  v7 = [*v0 uniqueIdentifier];
  sub_268C152FC();

  v8 = sub_268C152EC();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_15();
  v11(v10);
  return v8;
}

uint64_t sub_268BFC2FC(uint64_t a1)
{
  v3 = sub_268C1531C();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_0();
  v9 = *v1;
  sub_268C1606C();

  v20 = a1;
  v10 = [v9 name];
  v11 = sub_268C15BFC();
  v13 = v12;

  MEMORY[0x26D627230](v11, v13);

  v14 = OUTLINED_FUNCTION_5_8();
  MEMORY[0x26D627230](v14);
  v15 = [v9 uniqueIdentifier];
  sub_268C152FC();

  sub_268C152EC();
  OUTLINED_FUNCTION_14_5();
  v16 = *(v6 + 8);
  v17 = OUTLINED_FUNCTION_15();
  v18(v17);
  MEMORY[0x26D627230](v9, v11);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return v20;
}

id Accessory.home.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 home];
  *a1 = result;
  return result;
}

id Accessory.room.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 room];
  *a1 = result;
  return result;
}

void Accessory.type.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C19970;
  v3 = *MEMORY[0x277CCE8B0];
  *(inited + 32) = sub_268C15BFC();
  *(inited + 40) = v4;
  v5 = *MEMORY[0x277CCE870];
  *(inited + 48) = sub_268C15BFC();
  *(inited + 56) = v6;
  v7 = *MEMORY[0x277CCE860];
  *(inited + 64) = sub_268C15BFC();
  *(inited + 72) = v8;
  v9 = *MEMORY[0x277CCE920];
  *(inited + 80) = sub_268C15BFC();
  *(inited + 88) = v10;
  v11 = *MEMORY[0x277CCE900];
  *(inited + 96) = sub_268C15BFC();
  *(inited + 104) = v12;
  v13 = [v1 category];
  v14 = [v13 categoryType];

  v15 = sub_268C15BFC();
  v17 = v16;

  v28[0] = v15;
  v28[1] = v17;
  v27[2] = v28;
  LOBYTE(v15) = sub_268BC48EC(sub_268BC4C7C, v27, inited);
  swift_setDeallocating();
  sub_268BF5B34();

  if (v15)
  {
    v18 = [v1 category];
    v19 = [v18 categoryType];
LABEL_13:
    v26 = v19;

    sub_268C15BFC();
  }

  else
  {
    v20 = [v1 profiles];
    sub_268BB9B44(0, &qword_2802CE750, 0x277CD1760);
    v21 = sub_268C15D0C();

    v22 = sub_268BC4EF4(v21);
    for (i = 0; ; ++i)
    {
      if (v22 == i)
      {

        v18 = [v1 category];
        v19 = [v18 categoryType];
        goto LABEL_13;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x26D627640](i, v21);
      }

      else
      {
        if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v24 = *(v21 + 8 * i + 32);
      }

      v25 = v24;
      if (__OFADD__(i, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        sub_268C15BFC();
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

uint64_t sub_268BFC800(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = sub_268C15BFC();

  return v3;
}

BOOL Accessory.isSideKick.getter()
{
  v1 = [*v0 siriEndpointProfile];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

void Accessory.mediaSystemIdentifier.getter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = sub_268C1531C();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v41 = v3;
  v42 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_0();
  v40 = v7 - v6;
  v44 = *v0;
  v8 = [*v0 home];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_34;
  }

  v10 = [v8 mediaSystems];

  sub_268BB9B44(0, &qword_2802CE758, 0x277CD1BE8);
  v11 = OUTLINED_FUNCTION_15_7();

  v37 = sub_268BC4EF4(v11);
  if (!v37)
  {
LABEL_30:

LABEL_34:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v12 = 0;
  v13 = v11 & 0xC000000000000001;
  v35 = v11 + 32;
  v36 = v11 & 0xC000000000000001;
  v14 = &qword_2802CE760;
  v15 = &off_279C44000;
  v16 = &off_279C44000;
  v39 = v11;
LABEL_4:
  sub_268BC4F00(v12, v13 == 0, v11);
  if (v13)
  {
    v17 = MEMORY[0x26D627640](v12, v11);
  }

  else
  {
    v17 = *(v35 + 8 * v12);
  }

  v18 = __OFADD__(v12, 1);
  v19 = v12 + 1;
  if (v18)
  {
    goto LABEL_37;
  }

  v38 = v19;
  v43 = v17;
  v20 = [v17 v15[303]];
  sub_268BB9B44(0, &qword_2802CE760, 0x277CD1C00);
  v21 = sub_268C15D0C();

  v22 = sub_268BC4EF4(v21);
  for (i = 0; ; ++i)
  {
    if (v22 == i)
    {

      v12 = v38;
      v11 = v39;
      v13 = v36;
      v14 = &qword_2802CE760;
      v15 = &off_279C44000;
      if (v38 != v37)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x26D627640](i, v21);
    }

    else
    {
      if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v24 = *(v21 + 8 * i + 32);
    }

    v25 = v24;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v26 = [v24 mediaProfile];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 accessory];

      if (v28)
      {
        v14 = [v28 v16[275]];

        v27 = sub_268C15BFC();
        v28 = v29;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = v16;
    v31 = [v44 v16[275]];
    sub_268C15BFC();
    OUTLINED_FUNCTION_14_5();

    if (v28)
    {
      if (v27 == v14 && v28 == v15)
      {

        goto LABEL_33;
      }

      v33 = sub_268C1618C();

      if (v33)
      {

LABEL_33:
        v34 = [v43 uniqueIdentifier];
        sub_268C152FC();

        sub_268C152EC();
        (*(v41 + 8))(v40, v42);
        goto LABEL_34;
      }
    }

    else
    {
    }

    v16 = v30;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void __swiftcall Accessory.getVolume()(Swift::Float_optional *__return_ptr retstr)
{
  v2 = [*v1 mediaProfile];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 mediaSession];

    if (v4)
    {
      v5 = [v4 audioControl];

      [v5 volume];
    }
  }
}

void Accessory.setVolume(volume:with:)(uint64_t a1, uint64_t a2, float a3)
{
  v7 = [*v3 mediaProfile];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 mediaSession];

    if (v9)
    {
      v10 = [v9 audioControl];

      v13[4] = a1;
      v13[5] = a2;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = sub_268BFB7BC;
      v13[3] = &block_descriptor_2;
      v11 = _Block_copy(v13);

      *&v12 = a3;
      [v10 updateVolume:v11 completionHandler:v12];
      _Block_release(v11);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_268BFCF50()
{
  result = qword_2802CE768;
  if (!qword_2802CE768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE768);
  }

  return result;
}

unint64_t sub_268BFCFA8()
{
  result = qword_2802CE770;
  if (!qword_2802CE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE770);
  }

  return result;
}

unint64_t sub_268BFD000()
{
  result = qword_2802CE778;
  if (!qword_2802CE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE778);
  }

  return result;
}

unint64_t sub_268BFD080()
{
  result = qword_2802CE780;
  if (!qword_2802CE780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE780);
  }

  return result;
}

unint64_t sub_268BFD0D4()
{
  result = qword_2802CE788;
  if (!qword_2802CE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE788);
  }

  return result;
}

unint64_t sub_268BFD154()
{
  result = qword_2802CE790;
  if (!qword_2802CE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE790);
  }

  return result;
}

unint64_t sub_268BFD1A8()
{
  result = qword_2802CE798;
  if (!qword_2802CE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE798);
  }

  return result;
}

unint64_t sub_268BFD228()
{
  result = qword_2802CE7A0;
  if (!qword_2802CE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7A0);
  }

  return result;
}

unint64_t sub_268BFD27C()
{
  result = qword_2802CE7A8;
  if (!qword_2802CE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7A8);
  }

  return result;
}

uint64_t sub_268BFD2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268BFD338()
{
  result = qword_2802CE7B0;
  if (!qword_2802CE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7B0);
  }

  return result;
}

unint64_t sub_268BFD38C()
{
  result = qword_2802CE7B8;
  if (!qword_2802CE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7B8);
  }

  return result;
}

uint64_t sub_268BFD418(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_268BFD458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_10_10()
{

  JUMPOUT(0x26D627230);
}

void OUTLINED_FUNCTION_11_6()
{
  v2 = *(v0 + 16) + 1;

  sub_268BB3578(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return sub_268C15D0C();
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isSiriXEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 89, 0x8000000268C1CBB0, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isSiriXv2Enabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 91, 0x8000000268C1CC10, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isResponseFrameworkEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 101, 0x8000000268C1CC70, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isControlsOnWatchEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 99, 0x8000000268C1CD50, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isPermanentSpeakerGroupsEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 106, 0x8000000268C1CDC0, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.shouldQuickStopCallBell()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 98, 0x8000000268C1CE30, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isCoordinatedVolumeEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 101, 0x8000000268C1CEA0, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isUnifySiriLocalVolumeEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 104, 0x8000000268C1CF10, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

uint64_t sub_268BFD940(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_268C15A1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = [objc_opt_self() shared];
  v45 = a1;
  v17 = sub_268C15BEC();
  v46 = a3;
  v18 = sub_268C15BEC();
  v19 = [v16 stateForFeature:v17 domain:v18];

  if (v19)
  {
    v20 = v9;
    v21 = v8;
    v22 = [v19 value];
    v23 = v22 == 1;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v8, qword_2802D2F10);
    v25 = v20;
    (*(v20 + 16))(v15, v24, v21);

    v26 = sub_268C159FC();
    v27 = sub_268C15DDC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v44 = v22 == 1;
      v29 = v28;
      v30 = swift_slowAlloc();
      v43 = v22;
      v31 = v30;
      v47 = v30;
      *v29 = 136446722;
      *(v29 + 4) = sub_268BB3D28(v45, a2, &v47);
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_268BB3D28(v46, a4, &v47);
      *(v29 + 22) = 2082;
      if (v43 == 1)
      {
        v32 = 0x64656C62616E65;
      }

      else
      {
        v32 = 0x64656C6261736964;
      }

      if (v43 == 1)
      {
        v33 = 0xE700000000000000;
      }

      else
      {
        v33 = 0xE800000000000000;
      }

      v34 = sub_268BB3D28(v32, v33, &v47);

      *(v29 + 24) = v34;
      _os_log_impl(&dword_268BAD000, v26, v27, "FeatureFlagProvider#featureIsEnabled Feature flag %{public}s/%{public}s : %{public}s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D628010](v31, -1, -1);
      v35 = v29;
      v23 = v44;
      MEMORY[0x26D628010](v35, -1, -1);
    }

    (*(v25 + 8))(v15, v21);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v8, qword_2802D2F10);
    (*(v9 + 16))(v12, v36, v8);

    v37 = sub_268C159FC();
    v38 = sub_268C15DDC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136446466;
      *(v39 + 4) = sub_268BB3D28(v45, a2, &v47);
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_268BB3D28(v46, a4, &v47);
      _os_log_impl(&dword_268BAD000, v37, v38, "FeatureFlagProvider#featureIsEnabled flag %{public}s/%{public}s : disabled", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D628010](v40, -1, -1);
      MEMORY[0x26D628010](v39, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return 0;
  }

  return v23;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProvider.isResponseFrameworkEnabled()()
{
  v1 = sub_268C15A1C();
  v2 = OUTLINED_FUNCTION_2_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_2();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v38[3] = &type metadata for Features;
  v38[4] = sub_268BFF138();
  LOBYTE(v38[0]) = 2;
  v13 = sub_268C153AC();
  __swift_destroy_boxed_opaque_existential_0(v38);
  v14 = [objc_opt_self() shared];
  v15 = sub_268C15BEC();
  v16 = sub_268C15BEC();
  v17 = [v14 stateForFeature:v15 domain:v16];

  if (v17)
  {
    v18 = [v17 value];
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    __swift_project_value_buffer(v0, qword_2802D2F10);
    v19 = *(v4 + 16);
    v20 = OUTLINED_FUNCTION_11_7();
    v21(v20);
    v22 = sub_268C159FC();
    v23 = sub_268C15DDC();
    if (os_log_type_enabled(v22, v23))
    {
      v36 = v18 == 1;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v0;
      v38[0] = v25;
      *v24 = 136446722;
      *(v24 + 4) = sub_268BB3D28(0xD00000000000001ALL, 0x8000000268C1CFA0, v38);
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_268BB3D28(0xD000000000000014, 0x8000000268C1B7C0, v38);
      *(v24 + 22) = 2082;
      v26 = v13 & v36;
      if ((v13 & v36) != 0)
      {
        v27 = 0x64656C62616E65;
      }

      else
      {
        v27 = 0x64656C6261736964;
      }

      if ((v13 & v36) != 0)
      {
        v28 = 0xE700000000000000;
      }

      else
      {
        v28 = 0xE800000000000000;
      }

      v29 = sub_268BB3D28(v27, v28, v38);

      *(v24 + 24) = v29;
      _os_log_impl(&dword_268BAD000, v22, v23, "FeatureFlagProvider#isResponseFrameworkEnabled Feature flag %{public}s/%{public}s : %{public}s", v24, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_37_0();

      (*(v4 + 8))(v12, v37);
    }

    else
    {

      (*(v4 + 8))(v12);
      v26 = v13 & (v18 == 1);
    }
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v30 = __swift_project_value_buffer(v0, qword_2802D2F10);
    (*(v4 + 16))(v9, v30);
    v31 = sub_268C159FC();
    v32 = sub_268C15DDC();
    if (OUTLINED_FUNCTION_34_0(v32))
    {
      v33 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v33 = 136446466;
      *(v33 + 4) = sub_268BB3D28(0xD00000000000001ALL, 0x8000000268C1CFA0, v38);
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_268BB3D28(0xD000000000000011, 0x8000000268C1CF80, v38);
      _os_log_impl(&dword_268BAD000, v31, v32, "FeatureFlagProvider#isResponseFrameworkEnabled Feature flag %{public}s/%{public}s : disabled", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_30();
    }

    (*(v4 + 8))(v9);
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t PlaybackControlsFeatureFlagProvider.shouldSuppressSnippetIfNeeded(deviceState:)(void *a1)
{
  v3 = sub_268C15A1C();
  v4 = OUTLINED_FUNCTION_2_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_2();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_268C1535C();
  if (v16)
  {
    if (qword_2802CDBE0 != -1)
    {
      v16 = OUTLINED_FUNCTION_18();
    }

    OUTLINED_FUNCTION_4_10(v16, qword_2802D2F10);
    v17(v14);
    v18 = sub_268C159FC();
    v19 = sub_268C15DDC();
    if (!OUTLINED_FUNCTION_34_0(v19))
    {
      v21 = 0;
      goto LABEL_13;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_268BAD000, v18, v19, "FeatureFlagProvider#shouldSuppressSnippetIfNeeded skipping on xr", v20, 2u);
    v21 = 0;
  }

  else
  {
    v22 = sub_268BFD940(0xD000000000000010, 0x8000000268C1CFC0, 0x495569726953, 0xE600000000000000);
    v21 = v22;
    if (qword_2802CDBE0 != -1)
    {
      v22 = OUTLINED_FUNCTION_18();
    }

    OUTLINED_FUNCTION_4_10(v22, qword_2802D2F10);
    v23(v11);
    v18 = sub_268C159FC();
    v24 = sub_268C15DDC();
    if (!OUTLINED_FUNCTION_34_0(v24))
    {
      v14 = v11;
      goto LABEL_13;
    }

    v25 = OUTLINED_FUNCTION_14_6();
    *v25 = 67109120;
    *(v25 + 4) = v21 & 1;
    _os_log_impl(&dword_268BAD000, v18, v24, "FeatureFlagProvider#shouldSuppressSnippetIfNeeded: %{BOOL}d", v25, 8u);
    v14 = v11;
  }

  OUTLINED_FUNCTION_37_0();
LABEL_13:

  (*(v6 + 8))(v14, v1);
  return v21 & 1;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProvider.isPermanentSpeakerGroupsEnabled()()
{
  v0 = sub_268C15A1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_17_2();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = [objc_opt_self() shared];
  v10 = sub_268C15BEC();
  v11 = sub_268C15BEC();
  v12 = [v9 stateForFeature:v10 domain:v11];

  if (v12)
  {
    v13 = [v12 value];
    v14 = v13 == 1;
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v15 = __swift_project_value_buffer(v0, qword_2802D2F10);
    (*(v1 + 16))(v8, v15, v0);
    v16 = v0;
    v17 = sub_268C159FC();
    v18 = sub_268C15DDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = v16;
      v20 = v19;
      v36 = swift_slowAlloc();
      v21 = OUTLINED_FUNCTION_8_11(4.8754e-34);
      v22 = OUTLINED_FUNCTION_6_12(v21);
      *(v20 + 14) = sub_268BB3D28(v22, 0xEB00000000737075, v23);
      *(v20 + 22) = 2080;
      if (v13 == 1)
      {
        v24 = 0x64656C62616E65;
      }

      else
      {
        v24 = 0x64656C6261736964;
      }

      if (v13 == 1)
      {
        v25 = 0xE700000000000000;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      v26 = sub_268BB3D28(v24, v25, &v36);

      *(v20 + 24) = v26;
      _os_log_impl(&dword_268BAD000, v17, v18, "FeatureFlagProvider#isPermanentSpeakerGroupsEnabled Feature flag %{public}s/%{public}s : %s", v20, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v1 + 8))(v8, v35);
    }

    else
    {

      (*(v1 + 8))(v8, v16);
    }
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v27 = __swift_project_value_buffer(v0, qword_2802D2F10);
    (*(v1 + 16))(v5, v27, v0);
    v28 = sub_268C159FC();
    v29 = sub_268C15DDC();
    if (OUTLINED_FUNCTION_34_0(v29))
    {
      v30 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v31 = OUTLINED_FUNCTION_8_11(4.8752e-34);
      v32 = OUTLINED_FUNCTION_6_12(v31);
      *(v30 + 14) = sub_268BB3D28(v32, 0xEB00000000737075, v33);
      _os_log_impl(&dword_268BAD000, v28, v29, "FeatureFlagProvider#isPermanentSpeakerGroupsEnabled Feature flag %{public}s/%{public}s : disabled", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }

  return v14;
}