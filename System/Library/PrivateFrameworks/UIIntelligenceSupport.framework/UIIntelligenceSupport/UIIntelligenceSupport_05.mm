uint64_t IntelligenceFile.__deallocating_deinit()
{
  IntelligenceFile.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BBAF08BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BF58);
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BF60);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BF68);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v48 - v8;
  v10 = type metadata accessor for IntelligenceFile.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BF70);
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v14 = v48 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAFAF98();
  v61 = v14;
  sub_1BBB84478();
  sub_1BBAF8DD8(v58, v12, type metadata accessor for IntelligenceFile.InternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8);
      v17 = &v12[*(v16 + 48)];
      v18 = *(v17 + 1);
      v51 = *v17;
      v52 = v18;
      v19 = *(v17 + 3);
      v54 = *(v17 + 2);
      v55 = v19;
      v20 = *(v17 + 5);
      v58 = *(v17 + 4);
      v50 = v20;
      v70 = v17[48];
      v48[3] = v12[*(v16 + 64)];
      v21 = sub_1BBB833F8();
      v49 = v48;
      v22 = *(v21 - 8);
      v23 = MEMORY[0x1EEE9AC00](v21);
      v25 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 32))(v25, v12, v21, v23);
      LOBYTE(v63) = 1;
      sub_1BBAFB094();
      v26 = v53;
      v28 = v61;
      v27 = v62;
      sub_1BBB84208();
      LOBYTE(v63) = 0;
      sub_1BBAFBE18(&qword_1EBC7BF98, MEMORY[0x1EEE78698]);
      v29 = v57;
      v30 = v59;
      sub_1BBB84288();
      if (v30)
      {
        sub_1BBAB42C8(v51, v52);
        (*(v56 + 8))(v26, v29);
        (*(v22 + 8))(v25, v21);
        return (*(v60 + 8))(v28, v27);
      }

      else
      {
        v63 = v51;
        v64 = v52;
        v65 = v54;
        v66 = v55;
        v67 = v58;
        v68 = v50;
        v69 = v70;
        v71 = 1;
        sub_1BBAFB040();
        sub_1BBB84238();
        LOBYTE(v63) = 2;
        sub_1BBB84258();
        sub_1BBAB42C8(v51, v52);
        (*(v56 + 8))(v26, v29);
        (*(v22 + 8))(v25, v21);
        return (*(v60 + 8))(v61, v62);
      }
    }

    else
    {
      v36 = *v12;
      v37 = *(v12 + 1);
      v38 = *(v12 + 3);
      v53 = *(v12 + 2);
      v39 = *(v12 + 4);
      v40 = *(v12 + 5);
      v56 = v38;
      v57 = v39;
      v41 = *(v12 + 6);
      v50 = *(v12 + 7);
      v51 = v41;
      LODWORD(v58) = v12[64];
      v70 = v12[65];
      LOBYTE(v63) = 2;
      sub_1BBAFAFEC();
      v42 = v52;
      v44 = v61;
      v43 = v62;
      sub_1BBB84208();
      v63 = v36;
      v64 = v37;
      v71 = 0;
      sub_1BBA8845C();
      v45 = v55;
      v46 = v59;
      sub_1BBB84288();
      if (v46)
      {
        sub_1BBAB42C8(v53, v56);
        (*(v54 + 8))(v42, v45);
        (*(v60 + 8))(v44, v43);
        return sub_1BBA885E8(v36, v37);
      }

      else
      {
        v63 = v53;
        v64 = v56;
        v65 = v57;
        v66 = v40;
        v67 = v51;
        v68 = v50;
        v69 = v58;
        v71 = 1;
        sub_1BBAFB040();
        sub_1BBB84238();
        LOBYTE(v63) = 2;
        sub_1BBB84258();
        v47 = v61;
        sub_1BBAB42C8(v53, v56);
        sub_1BBA885E8(v36, v37);
        (*(v54 + 8))(v42, v45);
        return (*(v60 + 8))(v47, v62);
      }
    }
  }

  else
  {
    v32 = *v12;
    v33 = *(v12 + 1);
    LOBYTE(v63) = 0;
    sub_1BBAFB0E8();
    v35 = v61;
    v34 = v62;
    sub_1BBB84208();
    v63 = v32;
    v64 = v33;
    sub_1BBA8845C();
    sub_1BBB84288();
    (*(v7 + 8))(v9, v6);
    (*(v60 + 8))(v35, v34);
    return sub_1BBA885E8(v32, v33);
  }
}

uint64_t sub_1BBAF11F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BFA8);
  v71 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v75 = &v60 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BFB0);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v60 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BFB8);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v74 = &v60 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BFC0);
  v73 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v7 = &v60 - v6;
  v8 = type metadata accessor for IntelligenceFile.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v20 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1BBAFAF98();
  v21 = v78;
  sub_1BBB84458();
  if (!v21)
  {
    v62 = v16;
    v22 = v74;
    v61 = v10;
    v64 = v13;
    v23 = v75;
    v63 = v19;
    v65 = v8;
    v24 = v76;
    v25 = v77;
    v26 = v73;
    v78 = v7;
    v27 = sub_1BBB841F8();
    v28 = (2 * *(v27 + 16)) | 1;
    v88 = v27;
    v89 = v27 + 32;
    v90 = 0;
    v91 = v28;
    v29 = sub_1BBA854A8();
    if (v29 != 3 && v90 == v91 >> 1)
    {
      if (v29)
      {
        if (v29 != 1)
        {
          LOBYTE(v80) = 2;
          sub_1BBAFAFEC();
          sub_1BBB84118();
          LOBYTE(v80) = 0;
          sub_1BBAAB454();
          v44 = v68;
          sub_1BBB841B8();
          v45 = v23;
          v47 = v86;
          v46 = v87;
          v92 = 1;
          sub_1BBAFB13C();
          sub_1BBB84178();
          v66 = *(&v80 + 1);
          v48 = v80;
          v49 = v81;
          v67 = v82;
          v69 = v83;
          v70 = v84;
          LODWORD(v72) = v85;
          v92 = 2;
          v50 = sub_1BBB84198();
          v74 = 0;
          v54 = v50;
          (*(v71 + 8))(v45, v44);
          (*(v26 + 8))(v78, v77);
          swift_unknownObjectRelease();
          v55 = v61;
          *v61 = v47;
          v55[1] = v46;
          v56 = v66;
          v55[2] = v48;
          v55[3] = v56;
          v57 = v67;
          v55[4] = v49;
          v55[5] = v57;
          v58 = v70;
          v55[6] = v69;
          v55[7] = v58;
          *(v55 + 64) = v72;
          *(v55 + 65) = v54 & 1;
          swift_storeEnumTagMultiPayload();
          v59 = v55;
          v41 = v63;
          sub_1BBAFB190(v59, v63, type metadata accessor for IntelligenceFile.InternalRepresentation);
          goto LABEL_10;
        }

        LOBYTE(v80) = 1;
        sub_1BBAFB094();
        v30 = v72;
        v31 = v78;
        sub_1BBB84118();
        sub_1BBB833F8();
        LOBYTE(v80) = 0;
        sub_1BBAFBE18(&qword_1EBC7BFD0, MEMORY[0x1EEE78698]);
        v43 = v70;
        sub_1BBB841B8();
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8);
        LOBYTE(v80) = 1;
        sub_1BBAFB13C();
        sub_1BBB84178();
        LOBYTE(v80) = 2;
        LODWORD(v74) = sub_1BBB84198();
        v51 = *(v75 + 16);
        (*(v69 + 8))(v30, v43);
        (*(v26 + 8))(v31, v77);
        swift_unknownObjectRelease();
        v52 = v64;
        v64[v51] = v74 & 1;
        swift_storeEnumTagMultiPayload();
        v53 = v52;
      }

      else
      {
        LOBYTE(v80) = 0;
        sub_1BBAFB0E8();
        v36 = v22;
        v37 = v77;
        v38 = v78;
        sub_1BBB84118();
        sub_1BBAAB454();
        v39 = v67;
        sub_1BBB841B8();
        (*(v66 + 8))(v36, v39);
        (*(v26 + 8))(v38, v37);
        swift_unknownObjectRelease();
        v40 = v62;
        *v62 = v80;
        swift_storeEnumTagMultiPayload();
        v53 = v40;
      }

      v41 = v63;
      sub_1BBAFB190(v53, v63, type metadata accessor for IntelligenceFile.InternalRepresentation);
LABEL_10:
      sub_1BBAFB190(v41, v24, type metadata accessor for IntelligenceFile.InternalRepresentation);
      return __swift_destroy_boxed_opaque_existential_1(v79);
    }

    v32 = sub_1BBB84058();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
    *v34 = v65;
    v35 = v78;
    sub_1BBB84128();
    sub_1BBB84048();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v26 + 8))(v35, v25);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_1BBAF1D94(uint64_t a1)
{
  v2 = sub_1BBAFAFEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAF1DD0(uint64_t a1)
{
  v2 = sub_1BBAFAFEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBAF1E0C()
{
  v1 = 0x4C5255656C6966;
  if (*v0 != 1)
  {
    v1 = 0x6B72616D6B6F6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1BBAF1E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBAFAD14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBAF1E90(uint64_t a1)
{
  v2 = sub_1BBAFAF98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAF1ECC(uint64_t a1)
{
  v2 = sub_1BBAFAF98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBAF1F08(uint64_t a1)
{
  v2 = sub_1BBAFB0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAF1F44(uint64_t a1)
{
  v2 = sub_1BBAFB0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBAF1F80(uint64_t a1)
{
  v2 = sub_1BBAFB094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAF1FBC(uint64_t a1)
{
  v2 = sub_1BBAFB094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceFile.hash(into:)(uint64_t a1)
{
  v45 = type metadata accessor for IntelligenceFile.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v45);
  v4 = (v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1BBB83658();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v43 - v10;
  sub_1BBB83AC8();
  v44 = v1;
  v12 = v1 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes;
  sub_1BBA8BC5C(v1 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, v11, &qword_1EBC7B858);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_1BBB84408();
    sub_1BBAFA1B0(&qword_1ED6BE4B0, MEMORY[0x1E69E8450]);
    sub_1BBB83918();
    (*(v6 + 8))(v8, v5);
  }

  v13 = type metadata accessor for IntelligenceFile.Attributes(0);
  v14 = (v12 + *(v13 + 20));
  v15 = *(v14 + 8);
  v46 = a1;
  if (v15 == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    v16 = *v14;
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v16);
  }

  v17 = *(v13 + 24);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
  v43[2] = v43;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v43 - v20;
  sub_1BBA8BC5C(v12 + v17, v43 - v20, &qword_1EBC7B860);
  v22 = sub_1BBB83498();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v21, 1, v22);
  if (v25 == 1)
  {
    v26 = sub_1BBB84408();
  }

  else
  {
    v43[1] = v43;
    v27 = MEMORY[0x1EEE9AC00](v25);
    v29 = v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 32))(v29, v21, v22, v27);
    sub_1BBB84408();
    sub_1BBAFBE18(&qword_1EBC7BEF0, MEMORY[0x1EEE78828]);
    sub_1BBB83918();
    v26 = (*(v23 + 8))(v29, v22);
  }

  MEMORY[0x1EEE9AC00](v26);
  sub_1BBA8BC5C(v12 + v30, v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1EBC7B860);
  v31 = v24(v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v22);
  if (v31 == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    v32 = MEMORY[0x1EEE9AC00](v31);
    v34 = v43 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 32))(v34, v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v32);
    sub_1BBB84408();
    sub_1BBAFBE18(&qword_1EBC7BEF0, MEMORY[0x1EEE78828]);
    sub_1BBB83918();
    (*(v23 + 8))(v34, v22);
  }

  sub_1BBAF8DD8(v44 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation, v4, type metadata accessor for IntelligenceFile.InternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8);
      sub_1BBAB42C8(*(v4 + *(v36 + 48)), *(v4 + *(v36 + 48) + 8));
      sub_1BBB84408();
      v37 = sub_1BBB833F8();
      return (*(*(v37 - 8) + 8))(v4, v37);
    }

    else
    {
      v41 = *v4;
      v42 = v4[1];
      sub_1BBAB42C8(v4[2], v4[3]);
      sub_1BBA885E8(v41, v42);
      return sub_1BBB84408();
    }
  }

  else
  {
    v39 = *v4;
    v40 = v4[1];
    sub_1BBB83478();
    return sub_1BBA885E8(v39, v40);
  }
}

uint64_t sub_1BBAF26B0(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701667182;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 0x7475626972747461;
  if (v3 == 1)
  {
    v5 = 1701667182;
  }

  else
  {
    v4 = 0xEA00000000007365;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x80000001BBB9A6F0;
  }

  v8 = 0xE400000000000000;
  if (*a2 != 1)
  {
    v2 = 0x7475626972747461;
    v8 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000016;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x80000001BBB9A6F0;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBAF27AC()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBAF2850()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBAF28E0()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBAF2980@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBAFAF4C();
  *a1 = result;
  return result;
}

void sub_1BBAF29B0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  if (v2 != 1)
  {
    v4 = 0x7475626972747461;
    v3 = 0xEA00000000007365;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (v5)
  {
    v3 = 0x80000001BBB9A6F0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1BBAF2A10()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x7475626972747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1BBAF2A6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBAFAF4C();
  *a1 = result;
  return result;
}

uint64_t sub_1BBAF2A94(uint64_t a1)
{
  v2 = sub_1BBAFA2FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAF2AD0(uint64_t a1)
{
  v2 = sub_1BBAFA2FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceFile.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEF8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v13 - v7;
  sub_1BBAEFD00(v13 - v7);
  v9 = sub_1BBB833F8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BBA8BCC4(v8, &qword_1EBC7BB98);
  }

  else
  {
    sub_1BBAEF4AC(1);
    (*(v10 + 8))(v8, v9);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAFA2FC();
  sub_1BBB84478();
  v16 = 0;
  type metadata accessor for IntelligenceFile.InternalRepresentation(0);
  sub_1BBAFA1B0(&qword_1EBC7BF08, type metadata accessor for IntelligenceFile.InternalRepresentation);
  v11 = v13[1];
  sub_1BBB84288();
  if (!v11)
  {
    v15 = 1;
    sub_1BBB84248();
    v14 = 2;
    type metadata accessor for IntelligenceFile.Attributes(0);
    sub_1BBAFA1B0(&qword_1EBC7ADF8, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBB84288();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t IntelligenceFile.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  IntelligenceFile.init(from:)(a1);
  return v2;
}

void *IntelligenceFile.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v58 = v2;
  v59 = v5;
  v53 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for IntelligenceFile.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v56);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BF10);
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC0);
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  *(v15 + 16) = xmmword_1BBB89870;
  *(v15 + 32) = xmmword_1BBB89870;
  *(v1 + v14) = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAFA2FC();
  v16 = v58;
  sub_1BBB84458();
  if (v16)
  {

    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v1;
  }

  else
  {
    v17 = v8;
    v52 = v14;
    v58 = a1;
    v62 = 0;
    sub_1BBAFA1B0(&qword_1EBC7BF18, type metadata accessor for IntelligenceFile.InternalRepresentation);
    v18 = v57;
    sub_1BBB841B8();
    v51 = v11;
    v19 = sub_1BBB833F8();
    v50 = &v44;
    v20 = *(v19 - 8);
    MEMORY[0x1EEE9AC00](v19);
    v47 = v21;
    v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BBAF8DD8(v18, v17, type metadata accessor for IntelligenceFile.InternalRepresentation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v48 = v20;
    v49 = v19;
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8) + 48);
      v26 = *v24;
      v25 = *(v24 + 8);
      v27 = v17;
      v28 = *(v24 + 16);
      v46 = *(v24 + 24);
      v29 = *(v24 + 40);
      v45 = *(v24 + 32);
      v44 = v29;
      LODWORD(v56) = *(v24 + 48);
      (*(v20 + 32))(v22, v27, v19);
      if (v25 >> 60 != 15)
      {
        v60[0] = v26;
        v60[1] = v25;
        v60[2] = v28;
        v60[3] = v46;
        v60[4] = v45;
        v60[5] = v44;
        v61 = v56 & 1;
        sub_1BBAFC6A4(v60, 1);
        sub_1BBAB42C8(v26, v25);
      }

      (*(v20 + 8))(v22, v19);
    }

    else
    {
      sub_1BBAFA0FC(v17, type metadata accessor for IntelligenceFile.InternalRepresentation);
    }

    sub_1BBAF8DD8(v57, v3 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation, type metadata accessor for IntelligenceFile.InternalRepresentation);
    v62 = 1;
    v3[2] = sub_1BBB84188();
    v3[3] = v30;
    v62 = 2;
    sub_1BBAFA1B0(&qword_1EBC7ADF0, type metadata accessor for IntelligenceFile.Attributes);
    v31 = v54;
    sub_1BBB841B8();
    v33 = v13;
    v34 = v3;
    v35 = sub_1BBAFB190(v31, v3 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, type metadata accessor for IntelligenceFile.Attributes);
    v59 = &v44;
    MEMORY[0x1EEE9AC00](v35);
    v37 = &v44 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
    MEMORY[0x1EEE9AC00](v38 - 8);
    v40 = &v44 - v39;
    v41 = v34;
    sub_1BBAEFD00(&v44 - v39);
    v42 = v48;
    v43 = v49;
    if ((*(v48 + 48))(v40, 1, v49) == 1)
    {
      sub_1BBAFA0FC(v57, type metadata accessor for IntelligenceFile.InternalRepresentation);
      (*(v55 + 8))(v33, v51);
      sub_1BBA8BCC4(v40, &qword_1EBC7BB98);
    }

    else
    {
      (*(v42 + 32))(v37, v40, v43);
      sub_1BBAEF4AC(0);
      sub_1BBAF0320(1);
      (*(v42 + 8))(v37, v43);
      sub_1BBAFA0FC(v57, type metadata accessor for IntelligenceFile.InternalRepresentation);
      (*(v55 + 8))(v33, v51);
    }

    __swift_destroy_boxed_opaque_existential_1(v58);
    return v41;
  }
}

uint64_t IntelligenceFile.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceFile.hash(into:)(v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBAF3728()
{
  sub_1BBB843D8();
  IntelligenceFile.hash(into:)(v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBAF3790()
{
  sub_1BBB843D8();
  IntelligenceFile.hash(into:)(v1);
  return sub_1BBB84438();
}

void *sub_1BBAF37D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = IntelligenceFile.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t IntelligenceFile.Attributes.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v48 - v2;
  v4 = sub_1BBB83658();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v0;
  sub_1BBA8BC5C(v0, v3, &qword_1EBC7B858);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1BBA8BCC4(v3, &qword_1EBC7B858);
    v49 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_1BBB84028();

    strcpy(v55, "contentType: ");
    HIBYTE(v55[1]) = -18;
    sub_1BBAFA1B0(&qword_1EBC7BB70, MEMORY[0x1E69E8450]);
    v8 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v8);

    MEMORY[0x1BFB16150](34, 0xE100000000000000);
    v9 = v55[0];
    v10 = v55[1];
    v11 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1BBA86A94((v12 > 1), v13 + 1, 1, v11);
    }

    (*(v5 + 8))(v7, v4);
    *(v11 + 2) = v13 + 1;
    v49 = v11;
    v14 = &v11[16 * v13];
    *(v14 + 4) = v9;
    *(v14 + 5) = v10;
  }

  v15 = sub_1BBB83498();
  v51 = v48;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v50 = type metadata accessor for IntelligenceFile.Attributes(0);
  v18 = *(v50 + 24);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v48 - v21;
  sub_1BBA8BC5C(v53 + v18, v48 - v21, &qword_1EBC7B860);
  v23 = *(v16 + 48);
  v24 = v23(v22, 1, v15);
  v52 = v16;
  if (v24 == 1)
  {
    v25 = sub_1BBA8BCC4(v22, &qword_1EBC7B860);
    v26 = v15;
    v27 = v49;
  }

  else
  {
    (*(v16 + 32))(v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v15);
    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_1BBB84028();

    strcpy(v55, "creationDate: ");
    HIBYTE(v55[1]) = -18;
    sub_1BBAFBE18(&qword_1EBC7BF20, MEMORY[0x1EEE78828]);
    v48[1] = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v28);

    v29 = v55[0];
    v48[0] = v55[1];
    v27 = v49;
    v26 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1BBA86A94(0, *(v27 + 2) + 1, 1, v27);
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    if (v31 >= v30 >> 1)
    {
      v27 = sub_1BBA86A94((v30 > 1), v31 + 1, 1, v27);
    }

    v25 = (*(v52 + 8))();
    *(v27 + 2) = v31 + 1;
    v32 = &v27[16 * v31];
    v33 = v48[0];
    *(v32 + 4) = v29;
    *(v32 + 5) = v33;
  }

  MEMORY[0x1EEE9AC00](v25);
  v34 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  sub_1BBA8BC5C(v53 + v36, v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1EBC7B860);
  if (v23(v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v26) == 1)
  {
    sub_1BBA8BCC4(v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1EBC7B860);
  }

  else
  {
    v37 = v52;
    (*(v52 + 32))(v34, v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_1BBB84028();

    v55[0] = 0xD000000000000012;
    v55[1] = 0x80000001BBB9B6D0;
    sub_1BBAFBE18(&qword_1EBC7BF20, MEMORY[0x1EEE78828]);
    v38 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v38);

    v39 = v55[0];
    v40 = v55[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1BBA86A94(0, *(v27 + 2) + 1, 1, v27);
    }

    v42 = *(v27 + 2);
    v41 = *(v27 + 3);
    if (v42 >= v41 >> 1)
    {
      v27 = sub_1BBA86A94((v41 > 1), v42 + 1, 1, v27);
    }

    (*(v37 + 8))(v34, v26);
    *(v27 + 2) = v42 + 1;
    v43 = &v27[16 * v42];
    *(v43 + 4) = v39;
    *(v43 + 5) = v40;
  }

  strcpy(v55, "Attributes(");
  HIDWORD(v55[1]) = -352321536;
  v54 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v44 = sub_1BBB83938();
  v46 = v45;

  MEMORY[0x1BFB16150](v44, v46);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v55[0];
}

uint64_t IntelligenceFile.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v41 - v2;
  v4 = sub_1BBB83658();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v42, "name: ");
  v42[1] = 0xE700000000000000;
  MEMORY[0x1BFB16150](*(v0 + 16), *(v0 + 24), v6);
  MEMORY[0x1BFB16150](34, 0xE100000000000000);
  v9 = v42[0];
  v10 = v42[1];
  v11 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1BBA86A94((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[16 * v13];
  *(v14 + 4) = v9;
  *(v14 + 5) = v10;
  sub_1BBA8BC5C(v0 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, v3, &qword_1EBC7B858);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1BBA8BCC4(v3, &qword_1EBC7B858);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v42[0] = 0;
    v42[1] = 0xE000000000000000;
    sub_1BBB84028();

    strcpy(v42, "contentType: ");
    HIBYTE(v42[1]) = -18;
    sub_1BBAFA1B0(&qword_1EBC7BB70, MEMORY[0x1E69E8450]);
    v15 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v15);

    MEMORY[0x1BFB16150](34, 0xE100000000000000);
    v16 = v42[0];
    v17 = v42[1];
    v19 = *(v11 + 2);
    v18 = *(v11 + 3);
    if (v19 >= v18 >> 1)
    {
      v11 = sub_1BBA86A94((v18 > 1), v19 + 1, 1, v11);
    }

    (*(v5 + 8))(v8, v4);
    *(v11 + 2) = v19 + 1;
    v20 = &v11[16 * v19];
    *(v20 + 4) = v16;
    *(v20 + 5) = v17;
  }

  v21 = sub_1BBB833F8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = v41 - v26;
  IntelligenceFile.fileURL.getter(v41 - v26);
  if ((*(v22 + 48))(v27, 1, v21) == 1)
  {
    sub_1BBA8BCC4(v27, &qword_1EBC7BB98);
    v29 = *(v11 + 2);
    v28 = *(v11 + 3);
    if (v29 >= v28 >> 1)
    {
      v11 = sub_1BBA86A94((v28 > 1), v29 + 1, 1, v11);
    }

    *(v11 + 2) = v29 + 1;
    v30 = &v11[16 * v29];
    *(v30 + 4) = 0x6361622D61746144;
    *(v30 + 5) = 0xEB0000000064656BLL;
  }

  else
  {
    (*(v22 + 32))(v24, v27, v21);
    strcpy(v42, "fileURL: ");
    BYTE3(v42[1]) = 0;
    HIDWORD(v42[1]) = -369098752;
    v31 = sub_1BBB833B8();
    MEMORY[0x1BFB16150](v31);

    MEMORY[0x1BFB16150](34, 0xE100000000000000);
    v32 = v42[0];
    v33 = v42[1];
    v35 = *(v11 + 2);
    v34 = *(v11 + 3);
    if (v35 >= v34 >> 1)
    {
      v11 = sub_1BBA86A94((v34 > 1), v35 + 1, 1, v11);
    }

    (*(v22 + 8))(v24, v21);
    *(v11 + 2) = v35 + 1;
    v36 = &v11[16 * v35];
    *(v36 + 4) = v32;
    *(v36 + 5) = v33;
  }

  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  sub_1BBB84028();

  v42[0] = 0xD000000000000011;
  v42[1] = 0x80000001BBB9B6F0;
  v41[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v37 = sub_1BBB83938();
  v39 = v38;

  MEMORY[0x1BFB16150](v37, v39);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v42[0];
}

uint64_t sub_1BBAF4660()
{
  if ((sub_1BBB832C8() & 1) == 0)
  {
    sub_1BBB84028();
    MEMORY[0x1BFB16150](0xD00000000000003ALL, 0x80000001BBB9B8D0);
    v33 = sub_1BBB832F8();
    MEMORY[0x1BFB16150](v33);

    result = sub_1BBB840A8();
    __break(1u);
    return result;
  }

  v34[0] = v0;
  v37 = sub_1BBB833C8();
  v38 = v1;
  v35 = sub_1BBB83A48();
  v36 = v34;
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BBB83A38();
  sub_1BBAE8250();
  v5 = sub_1BBB83EE8();
  v6 = *(v2 + 8);
  v7 = v35;
  v6(v34 - v4, v35);

  v36 = v34;
  v37 = 0xD00000000000002ALL;
  v38 = 0x80000001BBB9B940;
  MEMORY[0x1EEE9AC00](v8);
  v9 = v34 - v4;

  sub_1BBB83A38();
  v10 = sub_1BBB83EE8();
  v6(v9, v7);
  if (v5)
  {
    v11 = (v5 + 32);
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = (v10 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = getxattr(v11, v12, 0, 0, 0, 1);

  if (v13 < 0)
  {

    v24 = MEMORY[0x1BFB15E60](v23);
    if (v24 != 93)
    {
      v25 = v24;
      sub_1BBAFB29C();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
      MEMORY[0x1EEE9AC00](v26 - 8);
      v28 = v34 - v27;
      v29 = sub_1BBB833F8();
      v30 = *(v29 - 8);
      (*(v30 + 16))(v28, v34[0], v29);
      (*(v30 + 56))(v28, 0, 1, v29);
      sub_1BBB3E6B8(v25, v28);
      return swift_willThrow();
    }

    return 0;
  }

  if (!v13)
  {

    return 0;
  }

  v37 = sub_1BBAFB314(v13);
  v38 = v14;
  v15 = v34[1];
  v16 = sub_1BBAFB734(&v37, v5, v13, sub_1BBAFB3B4);

  if (v16)
  {
    sub_1BBAFB29C();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
    MEMORY[0x1EEE9AC00](v17 - 8);
    v19 = v34 - v18;
    v20 = sub_1BBB833F8();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v19, v34[0], v20);
    (*(v21 + 56))(v19, 0, 1, v20);
    sub_1BBB3E6B8(v16, v19);
    swift_willThrow();
    return sub_1BBA885E8(v37, v38);
  }

  else
  {
    sub_1BBB82E68();
    swift_allocObject();
    sub_1BBB82E58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C008);
    v31 = v37;
    v32 = v38;
    sub_1BBAE58D8(v37, v38);
    sub_1BBAFBE7C(&qword_1EBC7C010, sub_1BBAFBDA4);
    sub_1BBB82E48();
    sub_1BBA885E8(v31, v32);
    sub_1BBA885E8(v31, v32);

    if (!v15)
    {
      return v39;
    }
  }

  return result;
}

uint64_t sub_1BBAF4C30()
{
  if ((sub_1BBB832C8() & 1) == 0)
  {
    sub_1BBB84028();
    MEMORY[0x1BFB16150](0xD00000000000003ALL, 0x80000001BBB9B8D0);
    v33 = sub_1BBB832F8();
    MEMORY[0x1BFB16150](v33);

    result = sub_1BBB840A8();
    __break(1u);
    return result;
  }

  v35 = v0;
  v38 = sub_1BBB833C8();
  v39 = v1;
  v37 = sub_1BBB83A48();
  v41 = &v34;
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BBB83A38();
  sub_1BBAE8250();
  v5 = sub_1BBB83EE8();
  v6 = *(v2 + 8);
  v7 = v37;
  v6(&v34 - v4, v37);

  v41 = &v34;
  v38 = 0xD000000000000028;
  v39 = 0x80000001BBB9B910;
  MEMORY[0x1EEE9AC00](v8);
  v9 = &v34 - v4;

  sub_1BBB83A38();
  v10 = sub_1BBB83EE8();
  v6(v9, v7);
  if (v5)
  {
    v11 = (v5 + 32);
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = (v10 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = getxattr(v11, v12, 0, 0, 0, 1);

  if (v13 < 0)
  {

    v24 = MEMORY[0x1BFB15E60](v23);
    if (v24 != 93)
    {
      v25 = v24;
      sub_1BBAFB29C();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
      MEMORY[0x1EEE9AC00](v26 - 8);
      v28 = &v34 - v27;
      v29 = sub_1BBB833F8();
      v30 = *(v29 - 8);
      (*(v30 + 16))(v28, v35, v29);
      (*(v30 + 56))(v28, 0, 1, v29);
      sub_1BBB3E6B8(v25, v28);
      return swift_willThrow();
    }

    return 0;
  }

  if (!v13)
  {

    return 0;
  }

  v38 = sub_1BBAFB314(v13);
  v39 = v14;
  v15 = v36;
  v16 = sub_1BBAFB734(&v38, v5, v13, sub_1BBAFB574);

  if (v16)
  {
    sub_1BBAFB29C();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
    MEMORY[0x1EEE9AC00](v17 - 8);
    v19 = &v34 - v18;
    v20 = sub_1BBB833F8();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v19, v35, v20);
    (*(v21 + 56))(v19, 0, 1, v20);
    sub_1BBB3E6B8(v16, v19);
    swift_willThrow();
    return sub_1BBA885E8(v38, v39);
  }

  else
  {
    sub_1BBB82E68();
    swift_allocObject();
    sub_1BBB82E58();
    v31 = v38;
    v32 = v39;
    sub_1BBAE58D8(v38, v39);
    sub_1BBB82E48();
    sub_1BBA885E8(v31, v32);
    sub_1BBA885E8(v31, v32);

    if (!v15)
    {
      return v40;
    }
  }

  return result;
}

uint64_t sub_1BBAF51C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v6 = (a5 + 32);
    v7 = v5 - 1;
    do
    {
      v9 = *v6;
      v8 = v6[1];
      v6 += 2;
      v10 = v9 ^ a1 | *(&v9 + 1) ^ a2 | v8 ^ a3 | *(&v8 + 1) ^ a4;
      v5 = v10 == 0;
      if (v10)
      {
        v11 = v7 == 0;
      }

      else
      {
        v11 = 1;
      }

      --v7;
    }

    while (!v11);
  }

  return v5;
}

uint64_t sub_1BBAF5268(uint64_t a1, uint64_t a2, char a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    goto LABEL_2;
  }

  *task_info_out = 0u;
  v23 = 0u;
  task_info_outCnt = 8;
  v9 = task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt);
  if (v9)
  {
    v10 = v9;
    sub_1BBAFB248();
    swift_allocError();
    *v11 = v10;
    return swift_willThrow();
  }

  else
  {
    v19 = v23;
    v20 = *task_info_out;
    result = sub_1BBAF4660();
    if (!v3)
    {
      v5 = 0;
      if (result)
      {
        v4 = result;
      }

      else
      {
        v4 = MEMORY[0x1E69E7CC0];
      }

      v12 = sub_1BBAF51C8(v20 | (DWORD1(v20) << 32), DWORD2(v20) | (HIDWORD(v20) << 32), v19 | (DWORD1(v19) << 32), DWORD2(v19) | (HIDWORD(v19) << 32), v4);

      if ((v12 & 1) == 0)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      }

      v3 = 0;
LABEL_2:
      while (1)
      {
        result = sub_1BBAF4C30();
        if (v3)
        {
          break;
        }

        if (v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = result;
        }

        if (!__OFADD__(v8, 1))
        {
          return sub_1BBAF5A8C(v8 + 1, 0);
        }

        __break(1u);
LABEL_24:
        v4 = sub_1BBABECD0(0, *(v4 + 2) + 1, 1, v4);
LABEL_18:
        v3 = v5;
        v14 = v19;
        v13 = v20;
        v16 = *(v4 + 2);
        v15 = *(v4 + 3);
        if (v16 >= v15 >> 1)
        {
          v18 = sub_1BBABECD0((v15 > 1), v16 + 1, 1, v4);
          v14 = v19;
          v13 = v20;
          v3 = v5;
          v4 = v18;
        }

        *(v4 + 2) = v16 + 1;
        v17 = &v4[32 * v16];
        *(v17 + 2) = v13;
        *(v17 + 3) = v14;
        sub_1BBAF54BC(v4);
        if (v3)
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BBAF54BC(unint64_t a1)
{
  v3 = v1;
  if (sub_1BBB832C8())
  {
    if (a1)
    {
      v46 = a1;
      sub_1BBB82EA8();
      swift_allocObject();

      sub_1BBB82E98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C008);
      sub_1BBAFBE7C(&qword_1EBC7C038, sub_1BBAFBEF4);
      v5 = sub_1BBB82E88();
      if (v2)
      {
      }

      else
      {
        v28 = v5;
        v29 = v6;
        MEMORY[0x1EEE9AC00](v5);
        v41[2] = v1;
        v41[3] = v30;
        v41[4] = v29;
        v31 = sub_1BBAF665C(sub_1BBAFBF48, v41, v28, v29);
        if (!v31)
        {

          sub_1BBA885E8(v28, v29);
        }

        v32 = v31;
        v48 = sub_1BBAFB29C();
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
        MEMORY[0x1EEE9AC00](v33 - 8);
        v35 = &v42 - v34;
        v36 = sub_1BBB833F8();
        v37 = v3;
        v38 = v36;
        v39 = *(v36 - 8);
        (*(v39 + 16))(v35, v37, v36);
        (*(v39 + 56))(v35, 0, 1, v38);
        sub_1BBB3E6B8(v32, v35);
        swift_willThrow();

        sub_1BBA885E8(v28, v29);
      }
    }

    else
    {
      v43 = v1;
      v7 = sub_1BBB833C8();
      v48 = v8;
      v46 = v7;
      v47 = v8;
      v44 = sub_1BBB83A48();
      v45 = &v42;
      v9 = *(v44 - 8);
      v10 = *(v9 + 64);
      MEMORY[0x1EEE9AC00](v44);
      v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
      sub_1BBB83A38();
      sub_1BBAE8250();
      v12 = sub_1BBB83EE8();
      v13 = *(v9 + 8);
      v14 = v44;
      v13(&v42 - v11, v44);

      v48 = &v42;
      v46 = 0xD00000000000002ALL;
      v47 = 0x80000001BBB9B940;
      MEMORY[0x1EEE9AC00](v15);
      v16 = &v42 - v11;
      sub_1BBB83A38();
      v17 = sub_1BBB83EE8();
      v13(v16, v14);
      if (v12)
      {
        v18 = (v12 + 32);
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = (v17 + 32);
      }

      else
      {
        v19 = 0;
      }

      v20 = removexattr(v18, v19, 1);

      if (v20)
      {
        result = MEMORY[0x1BFB15E60](result);
        if (result != 93)
        {
          v22 = result;
          sub_1BBAFB29C();
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
          MEMORY[0x1EEE9AC00](v23 - 8);
          v25 = &v42 - v24;
          v26 = sub_1BBB833F8();
          v27 = *(v26 - 8);
          (*(v27 + 16))(v25, v43, v26);
          (*(v27 + 56))(v25, 0, 1, v26);
          sub_1BBB3E6B8(v22, v25);
          return swift_willThrow();
        }
      }
    }
  }

  else
  {
    sub_1BBB84028();
    MEMORY[0x1BFB16150](0xD00000000000003ALL, 0x80000001BBB9B8D0);
    v40 = sub_1BBB832F8();
    MEMORY[0x1BFB16150](v40);

    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBAF5A8C(uint64_t a1, char a2)
{
  v4 = v2;
  if (sub_1BBB832C8())
  {
    if (a2)
    {
      v48 = v3;
      v43 = v2;
      v46 = sub_1BBB833C8();
      v47 = v7;
      v44 = sub_1BBB83A48();
      v45 = &v42;
      v8 = *(v44 - 8);
      v9 = *(v8 + 64);
      MEMORY[0x1EEE9AC00](v44);
      v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      sub_1BBB83A38();
      sub_1BBAE8250();
      v11 = sub_1BBB83EE8();
      v12 = *(v8 + 8);
      v13 = v44;
      v12(&v42 - v10, v44);

      v46 = 0xD000000000000028;
      v47 = 0x80000001BBB9B910;
      MEMORY[0x1EEE9AC00](v14);
      v15 = &v42 - v10;
      sub_1BBB83A38();
      v16 = sub_1BBB83EE8();
      v12(v15, v13);
      if (v11)
      {
        v17 = (v11 + 32);
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = (v16 + 32);
      }

      else
      {
        v18 = 0;
      }

      v19 = removexattr(v17, v18, 1);

      if (v19)
      {
        result = MEMORY[0x1BFB15E60](result);
        if (result != 93)
        {
          v21 = result;
          sub_1BBAFB29C();
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
          MEMORY[0x1EEE9AC00](v22 - 8);
          v24 = &v42 - v23;
          v25 = sub_1BBB833F8();
          v26 = *(v25 - 8);
          (*(v26 + 16))(v24, v43, v25);
          (*(v26 + 56))(v24, 0, 1, v25);
          sub_1BBB3E6B8(v21, v24);
          return swift_willThrow();
        }
      }
    }

    else
    {
      v46 = a1;
      sub_1BBB82EA8();
      swift_allocObject();
      sub_1BBB82E98();
      v27 = sub_1BBB82E88();
      if (!v3)
      {
        v29 = v27;
        v30 = v28;
        MEMORY[0x1EEE9AC00](v27);
        v41[2] = v2;
        v41[3] = v31;
        v41[4] = v30;
        v32 = sub_1BBAF665C(sub_1BBAFB2E8, v41, v29, v30);
        if (v32)
        {
          v33 = v32;
          v48 = sub_1BBAFB29C();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
          MEMORY[0x1EEE9AC00](v34 - 8);
          v35 = v4;
          v37 = &v42 - v36;
          v38 = sub_1BBB833F8();
          v39 = *(v38 - 8);
          (*(v39 + 16))(v37, v35, v38);
          (*(v39 + 56))(v37, 0, 1, v38);
          sub_1BBB3E6B8(v33, v37);
          swift_willThrow();
        }

        sub_1BBA885E8(v29, v30);
      }
    }
  }

  else
  {
    sub_1BBB84028();
    MEMORY[0x1BFB16150](0xD00000000000003ALL, 0x80000001BBB9B8D0);
    v40 = sub_1BBB832F8();
    MEMORY[0x1BFB16150](v40);

    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

void sub_1BBAF6000(uint64_t a1, uint64_t a2, char a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    v24 = sub_1BBAF4660();
    if (v3 || !v24)
    {
      return;
    }

    v25 = v24;
    *task_info_out = 0u;
    v55 = 0u;
    task_info_outCnt = 8;
    v26 = task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt);
    if (v26)
    {
      v27 = v26;

      sub_1BBAFB248();
      swift_allocError();
      *v28 = v27;
LABEL_26:
      swift_willThrow();
      return;
    }

    v44 = sub_1BBAF51C8(*task_info_out, *&task_info_out[2], v55, *(&v55 + 1), v25);

    if ((v44 & 1) == 0)
    {
      return;
    }
  }

  v7 = sub_1BBAF4C30();
  if (v3)
  {
    return;
  }

  if ((v8 & 1) == 0)
  {
    if (v7 >= 2)
    {
      sub_1BBAF5A8C(v7 - 1, 0);
      return;
    }

    if (a3)
    {
      sub_1BBB840A8();
      __break(1u);
      return;
    }

    v52 = 0;
    if (qword_1ED6BDEB8 != -1)
    {
      swift_once();
    }

    v29 = sub_1BBB83758();
    __swift_project_value_buffer(v29, qword_1ED6BDEC0);
    v30 = sub_1BBB833F8();
    v31 = *(v30 - 8);
    v32 = MEMORY[0x1EEE9AC00](v30);
    v34 = &v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34, a2, v30, v32);
    v35 = sub_1BBB83738();
    v36 = sub_1BBB83D58();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v51 = &v50;
      v38 = v37;
      v50 = swift_slowAlloc();
      *task_info_out = v50;
      *v38 = 136315138;
      v39 = sub_1BBB833B8();
      v41 = v40;
      (*(v31 + 8))(v34, v30);
      v42 = sub_1BBA85E50(v39, v41, task_info_out);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1BBA81000, v35, v36, "IntelligenceFile performing automatic deletion of file at %s", v38, 0xCu);
      v43 = v50;
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1BFB174E0](v43, -1, -1);
      MEMORY[0x1BFB174E0](v38, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v34, v30);
    }

    v45 = [objc_opt_self() defaultManager];
    v46 = sub_1BBB83328();
    *task_info_out = 0;
    v47 = [v45 removeItemAtURL:v46 error:task_info_out];

    if (v47)
    {
      v48 = *task_info_out;
      return;
    }

    v49 = *task_info_out;
    sub_1BBB83268();

    goto LABEL_26;
  }

  v52 = 0;
  if (qword_1ED6BDEB8 != -1)
  {
    swift_once();
  }

  v9 = sub_1BBB83758();
  __swift_project_value_buffer(v9, qword_1ED6BDEC0);
  v10 = sub_1BBB833F8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = sub_1BBB83738();
  v16 = sub_1BBB83D48();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v51 = &v50;
    v18 = v17;
    v19 = swift_slowAlloc();
    *task_info_out = v19;
    *v18 = 136446210;
    v20 = sub_1BBB833B8();
    v22 = v21;
    (*(v11 + 8))(v14, v10);
    v23 = sub_1BBA85E50(v20, v22, task_info_out);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1BBA81000, v15, v16, "Missing deletion reference count for file at %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1BFB174E0](v19, -1, -1);
    MEMORY[0x1BFB174E0](v18, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }
}

void *sub_1BBAF665C(void *(*a1)(uint64_t *__return_ptr, void *, char *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v12[0] = a3;
      LOWORD(v12[1]) = a4;
      BYTE2(v12[1]) = BYTE2(a4);
      BYTE3(v12[1]) = BYTE3(a4);
      BYTE4(v12[1]) = BYTE4(a4);
      BYTE5(v12[1]) = BYTE5(a4);
      v7 = v12 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_1BBAF8BF8(v8, v9, a1);
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    return sub_1BBAF8BF8(v8, v9, a1);
  }

  memset(v12, 0, 14);
  v7 = v12;
LABEL_9:
  result = a1(&v11, v12, v7);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1BBAF67AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1BBB833F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = sub_1BBB83398();
  MEMORY[0x1EEE9AC00](v6);
  sub_1BBB83398();
  v1(&v9 - v5, &v9 - v5);
  v7 = *(v3 + 8);
  v7(&v9 - v5, v2);
  return (v7)(&v9 - v5, v2);
}

uint64_t sub_1BBAF68E4(__int128 *a1, uint64_t a2)
{
  v93 = a1;
  v4 = sub_1BBB83658();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69 - v8;
  v91 = v2;
  v10 = *v2;
  v11 = *(a2 + 80);
  v105 = *(a2 + 64);
  *v106 = v11;
  *&v106[9] = *(a2 + 89);
  v12 = *(a2 + 16);
  v101 = *a2;
  v102 = v12;
  v13 = *(a2 + 48);
  v103 = *(a2 + 32);
  v104 = v13;
  sub_1BBB843D8();
  IntelligenceImage.Representation.hash(into:)();
  v14 = sub_1BBB84438();
  v15 = v10 + 56;
  v16 = -1 << *(v10 + 32);
  v17 = v14 & ~v16;
  v18 = *(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17;
  v92 = a2;
  if ((v18 & 1) == 0)
  {
LABEL_43:
    v50 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v99[0] = *v50;
    v52 = v92;
    sub_1BBACB4D0(v92, &v101);
    sub_1BBAF7A54(v52, v17, isUniquelyReferenced_nonNull_native);
    *v50 = *&v99[0];
    v53 = v52[5];
    v54 = v93;
    v93[4] = v52[4];
    v54[5] = v53;
    *(v54 + 89) = *(v52 + 89);
    v55 = v52[1];
    *v54 = *v52;
    v54[1] = v55;
    v56 = v52[3];
    result = 1;
    v54[2] = v52[2];
    v54[3] = v56;
    return result;
  }

  v19 = v10;
  v84 = v9;
  v85 = v4;
  v20 = ~v16;
  v73 = *(a2 + 104);
  v21 = *(a2 + 96);
  v22 = *(a2 + 8);
  v96 = *(a2 + 16);
  v23 = *(a2 + 24);
  v94 = *(a2 + 32);
  v97 = *(a2 + 40);
  v24 = *(a2 + 48);
  v95 = *(a2 + 56);
  v25 = *(a2 + 64);
  v88 = *(a2 + 72);
  v26 = *a2;
  v83 = v5 + 16;
  v86 = v5;
  v81 = v24;
  v82 = (v5 + 8);
  v28 = *(a2 + 80);
  v27 = *(a2 + 88);
  v78 = v25;
  v79 = v28;
  v90 = v27;
  while (1)
  {
    v29 = (*(v19 + 48) + 112 * v17);
    v31 = v29[1];
    v30 = v29[2];
    v101 = *v29;
    v102 = v31;
    v103 = v30;
    v32 = v29[3];
    v33 = v29[4];
    v34 = v29[5];
    *&v106[9] = *(v29 + 89);
    v105 = v33;
    *v106 = v34;
    v104 = v32;
    if (*(&v101 + 1))
    {
      if (!v22)
      {
        goto LABEL_4;
      }

      if (v101 != __PAIR128__(v22, v26))
      {
        v35 = v15;
        v36 = v19;
        v37 = sub_1BBB842F8();
        v15 = v35;
        v19 = v36;
        if ((v37 & 1) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    else if (v22)
    {
      goto LABEL_4;
    }

    if (BYTE8(v102))
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v23 & 1) != 0 || v102 != v96)
    {
      goto LABEL_4;
    }

    if (BYTE8(v103))
    {
      if ((v97 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v97 & 1) != 0 || v103 != v94)
    {
      goto LABEL_4;
    }

    if (BYTE8(v104))
    {
      if ((v95 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v95 & 1) != 0 || v104 != v81)
    {
      goto LABEL_4;
    }

    if (BYTE8(v105))
    {
      if ((v88 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v88 & 1) != 0 || v105 != v78)
    {
      goto LABEL_4;
    }

    if (*v106 != v79)
    {
      goto LABEL_4;
    }

    v80 = *&v106[8];
    v38 = *(*&v106[8] + 16);
    if (v38 != *(v90 + 16))
    {
      goto LABEL_4;
    }

    if (v38 && v80 != v90)
    {
      break;
    }

LABEL_39:
    if (*&v106[16] == v21 && ((v106[24] ^ v73) & 1) == 0)
    {
      v57 = v19;
      sub_1BBAC7878(v92);
      v58 = (*(v57 + 48) + 112 * v17);
      v59 = v58[3];
      v60 = v58[4];
      v61 = v58[5];
      *(v100 + 9) = *(v58 + 89);
      v99[4] = v60;
      v100[0] = v61;
      v99[3] = v59;
      v62 = *v58;
      v63 = v58[2];
      v99[1] = v58[1];
      v99[2] = v63;
      v99[0] = v62;
      v64 = v58[1];
      v65 = v93;
      *v93 = *v58;
      v65[1] = v64;
      v66 = v58[2];
      v67 = v58[3];
      *(v65 + 89) = *(v58 + 89);
      v68 = v58[5];
      v65[4] = v58[4];
      v65[5] = v68;
      v65[2] = v66;
      v65[3] = v67;
      sub_1BBACB4D0(v99, &v98);
      return 0;
    }

LABEL_4:
    v17 = (v17 + 1) & v20;
    if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v69 = v26;
  v70 = v15;
  v71 = v23;
  v72 = v19;
  v39 = v86;
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v77 = v80 + v40;
  v75 = v90 + v40;
  result = sub_1BBACB4D0(&v101, v99);
  v42 = 0;
  v76 = v20;
  v74 = v38;
  while (v42 < *(v80 + 16))
  {
    v43 = *(v39 + 72) * v42;
    v44 = *(v39 + 16);
    v46 = v84;
    v45 = v85;
    result = (v44)(v84, v77 + v43, v85);
    if (v42 >= *(v90 + 16))
    {
      goto LABEL_45;
    }

    v47 = v89;
    v44();
    sub_1BBAFA1B0(&qword_1EBC7B9E8, MEMORY[0x1E69E8450]);
    v48 = v47;
    v87 = sub_1BBB83968();
    v49 = *v82;
    (*v82)(v48, v45);
    result = v49(v46, v45);
    if ((v87 & 1) == 0)
    {
      sub_1BBAC7878(&v101);
      v19 = v72;
      v20 = v76;
      v23 = v71;
      v26 = v69;
      v15 = v70;
      goto LABEL_4;
    }

    ++v42;
    v39 = v86;
    v20 = v76;
    if (v74 == v42)
    {
      sub_1BBAC7878(&v101);
      v19 = v72;
      v23 = v71;
      v26 = v69;
      v15 = v70;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1BBAF6EE8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1BBB83A18();
  sub_1BBB843D8();
  sub_1BBB83AC8();
  v7 = sub_1BBB84438();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1BBB83A18();
      v13 = v12;
      if (v11 == sub_1BBB83A18() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1BBB842F8();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1BBAF814C(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1BBAF7094(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BFD8);
    v2 = sub_1BBB83FF8();
    v14 = v2;
    sub_1BBB83F68();
    if (sub_1BBB83F98())
    {
      type metadata accessor for IntelligenceFragmentCollector();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1BBAF7760();
        }

        v2 = v14;
        sub_1BBB843D8();
        MEMORY[0x1BFB16A50]();
        result = sub_1BBB84438();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1BBB83F98());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1BBAF7294()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9E0);
  result = sub_1BBB83FE8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = (*(v2 + 48) + 112 * (v11 | (v5 << 6)));
      v21 = v14[4];
      *v22 = v14[5];
      *&v22[9] = *(v14 + 89);
      v17 = *v14;
      v18 = v14[1];
      v19 = v14[2];
      v20 = v14[3];
      sub_1BBB843D8();
      IntelligenceImage.Representation.hash(into:)();
      sub_1BBB84438();
      result = sub_1BBB83F58();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v15 = (*(v4 + 48) + 112 * result);
      v15[4] = v21;
      v15[5] = *v22;
      *(v15 + 89) = *&v22[9];
      *v15 = v17;
      v15[1] = v18;
      v15[2] = v19;
      v15[3] = v20;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    v16 = 1 << *(v2 + 32);
    if (v16 >= 64)
    {
      bzero((v2 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v16;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BBAF74E4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C048);
  result = sub_1BBB83FE8();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1BBB83A18();
      sub_1BBB843D8();
      sub_1BBB83AC8();
      v17 = sub_1BBB84438();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BBAF7760()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BFD8);
  result = sub_1BBB83FE8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1BBB843D8();
      MEMORY[0x1BFB16A50](v16);
      result = sub_1BBB84438();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1BBAF79B0(uint64_t a1, uint64_t a2)
{
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](a1);
  sub_1BBB84438();
  result = sub_1BBB83F58();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1BBAF7A54(__int128 *a1, unint64_t a2, char a3)
{
  v7 = sub_1BBB83658();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v62 - v13;
  v15 = *(*v3 + 16);
  v16 = *(*v3 + 24);
  v88 = v3;
  if (v16 <= v15 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v17 = v12;
      v18 = v11;
      sub_1BBAF7294();
    }

    else
    {
      if (v16 > v15)
      {
        sub_1BBAF8334();
        goto LABEL_50;
      }

      v17 = v12;
      v18 = v11;
      sub_1BBAF876C();
    }

    v19 = *v3;
    v20 = a1[5];
    v94 = a1[4];
    *v95 = v20;
    *&v95[9] = *(a1 + 89);
    v21 = a1[1];
    v90 = *a1;
    v91 = v21;
    v22 = a1[3];
    v92 = a1[2];
    v93 = v22;
    sub_1BBB843D8();
    IntelligenceImage.Representation.hash(into:)();
    v23 = sub_1BBB84438();
    v24 = v19 + 56;
    v85 = v19;
    v25 = -1 << *(v19 + 32);
    a2 = v23 & ~v25;
    if ((*(v24 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v78 = v14;
      v76 = v9;
      v79 = v18;
      v26 = ~v25;
      v65 = *(a1 + 104);
      v27 = *(a1 + 12);
      v28 = *(a1 + 2);
      v29 = *(a1 + 24);
      v84 = *(a1 + 4);
      v87 = *(a1 + 40);
      v74 = *(a1 + 6);
      v86 = *(a1 + 56);
      v71 = *(a1 + 8);
      v82 = *(a1 + 72);
      v30 = *a1;
      v31 = *(a1 + 1);
      v77 = v17 + 16;
      v80 = v17;
      v75 = (v17 + 8);
      v32 = *(a1 + 11);
      v72 = *(a1 + 10);
      v83 = v32;
      v33 = v85;
      do
      {
        v34 = (*(v33 + 48) + 112 * a2);
        v36 = v34[1];
        v35 = v34[2];
        v90 = *v34;
        v91 = v36;
        v92 = v35;
        v37 = v34[3];
        v38 = v34[4];
        v39 = v34[5];
        *&v95[9] = *(v34 + 89);
        v94 = v38;
        *v95 = v39;
        v93 = v37;
        if (*(&v90 + 1))
        {
          if (!v31)
          {
            goto LABEL_11;
          }

          if (v90 != __PAIR128__(v31, v30))
          {
            v40 = v29;
            v41 = sub_1BBB842F8();
            v29 = v40;
            if ((v41 & 1) == 0)
            {
              goto LABEL_11;
            }
          }
        }

        else if (v31)
        {
          goto LABEL_11;
        }

        if (BYTE8(v91))
        {
          if ((v29 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if ((v29 & 1) != 0 || v91 != v28)
        {
          goto LABEL_11;
        }

        if (BYTE8(v92))
        {
          if ((v87 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if ((v87 & 1) != 0 || v92 != v84)
        {
          goto LABEL_11;
        }

        if (BYTE8(v93))
        {
          if ((v86 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if ((v86 & 1) != 0 || v93 != v74)
        {
          goto LABEL_11;
        }

        if (BYTE8(v94))
        {
          if ((v82 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if ((v82 & 1) != 0 || v94 != v71)
        {
          goto LABEL_11;
        }

        if (*v95 == v72)
        {
          v73 = *&v95[8];
          v42 = *(*&v95[8] + 16);
          if (v42 == *(v83 + 16))
          {
            if (v42 && v73 != v83)
            {
              v66 = *(*&v95[8] + 16);
              v63 = v30;
              v64 = v29;
              v43 = v80;
              v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
              v70 = v73 + v44;
              v67 = v83 + v44;
              sub_1BBACB4D0(&v90, v89);
              v45 = 0;
              v69 = v28;
              v68 = v26;
              while (v45 < *(v73 + 16))
              {
                v46 = *(v43 + 72) * v45;
                v47 = *(v43 + 16);
                v48 = v78;
                v49 = v79;
                v47(v78, v70 + v46, v79);
                if (v45 >= *(v83 + 16))
                {
                  goto LABEL_54;
                }

                v50 = v67 + v46;
                v51 = v76;
                v47(v76, v50, v49);
                sub_1BBAFA1B0(&qword_1EBC7B9E8, MEMORY[0x1E69E8450]);
                v52 = v51;
                v81 = sub_1BBB83968();
                v53 = *v75;
                (*v75)(v52, v49);
                v53(v48, v49);
                if ((v81 & 1) == 0)
                {
                  sub_1BBAC7878(&v90);
                  v33 = v85;
                  v28 = v69;
                  v29 = v64;
                  v30 = v63;
                  v26 = v68;
                  goto LABEL_11;
                }

                ++v45;
                v43 = v80;
                v33 = v85;
                v28 = v69;
                v26 = v68;
                if (v66 == v45)
                {
                  sub_1BBAC7878(&v90);
                  v29 = v64;
                  v30 = v63;
                  goto LABEL_46;
                }
              }

              goto LABEL_53;
            }

LABEL_46:
            if (*&v95[16] == v27 && ((v95[24] ^ v65) & 1) == 0)
            {
              goto LABEL_55;
            }
          }
        }

LABEL_11:
        a2 = (a2 + 1) & v26;
      }

      while (((*(v24 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_50:
  v54 = *v88;
  *(v54 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v55 = (*(v54 + 48) + 112 * a2);
  v56 = a1[1];
  *v55 = *a1;
  v55[1] = v56;
  *(v55 + 89) = *(a1 + 89);
  v57 = a1[5];
  v55[4] = a1[4];
  v55[5] = v57;
  v58 = a1[3];
  v55[2] = a1[2];
  v55[3] = v58;
  v59 = *(v54 + 16);
  v60 = __OFADD__(v59, 1);
  v61 = v59 + 1;
  if (v60)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    sub_1BBB84368();
    __break(1u);
  }

  else
  {
    *(v54 + 16) = v61;
  }
}

uint64_t sub_1BBAF814C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1BBAF74E4();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1BBAF84CC();
      goto LABEL_16;
    }

    sub_1BBAF89A4();
  }

  v9 = *v3;
  sub_1BBB83A18();
  sub_1BBB843D8();
  sub_1BBB83AC8();
  v10 = sub_1BBB84438();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = sub_1BBB83A18();
      v15 = v14;
      if (v13 == sub_1BBB83A18() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1BBB842F8();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1BBB84368();
  __break(1u);
  return result;
}

void *sub_1BBAF8334()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9E0);
  v2 = *v0;
  v3 = sub_1BBB83FD8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 112 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[3];
        v20 = v18[4];
        v21 = v18[5];
        *&v26[9] = *(v18 + 89);
        v25[4] = v20;
        *v26 = v21;
        v25[3] = v19;
        v23 = v18[1];
        v22 = v18[2];
        v25[0] = *v18;
        v25[1] = v23;
        v25[2] = v22;
        memmove((*(v4 + 48) + v17), v18, 0x69uLL);
        result = sub_1BBACB4D0(v25, &v24);
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1BBAF84CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C048);
  v2 = *v0;
  v3 = sub_1BBB83FD8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1BBAF861C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BFD8);
  v2 = *v0;
  v3 = sub_1BBB83FD8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

unint64_t sub_1BBAF876C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9E0);
  result = sub_1BBB83FE8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; ++*(v4 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = (*(v2 + 48) + 112 * (v10 | (v5 << 6)));
      v15 = *v13;
      v14 = v13[1];
      v37 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      *(v40 + 9) = *(v13 + 89);
      v39 = v17;
      v40[0] = v18;
      v38 = v16;
      v35 = v15;
      v36 = v14;
      v19 = v13[5];
      v33 = v13[4];
      v34[0] = v19;
      *(v34 + 9) = *(v13 + 89);
      v20 = v13[1];
      v29 = *v13;
      v30 = v20;
      v21 = v13[3];
      v31 = v13[2];
      v32 = v21;
      sub_1BBB843D8();
      sub_1BBACB4D0(&v35, v28);
      IntelligenceImage.Representation.hash(into:)();
      sub_1BBB84438();
      result = sub_1BBB83F58();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v22 = (*(v4 + 48) + 112 * result);
      v24 = v36;
      v23 = v37;
      *v22 = v35;
      v22[1] = v24;
      v22[2] = v23;
      v25 = v38;
      v26 = v39;
      v27 = v40[0];
      *(v22 + 89) = *(v40 + 9);
      v22[4] = v26;
      v22[5] = v27;
      v22[3] = v25;
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {

        v1 = v0;
        goto LABEL_16;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BBAF89A4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C048);
  result = sub_1BBB83FE8();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1BBB83A18();
      sub_1BBB843D8();
      v17 = v16;
      sub_1BBB83AC8();
      v18 = sub_1BBB84438();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

void *sub_1BBAF8BF8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_1BBB82F58();
  v8 = result;
  if (result)
  {
    result = sub_1BBB82F88();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1BBB82F78();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

BOOL _s21UIIntelligenceSupport16IntelligenceFileC20SandboxExtensionTypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (*(a1 + 32) == 1)
  {
    v5 = a1[2] | a1[1] | v2 | a1[3];
    v6 = a2[2] | v4 | v3 | a2[3];
    v7 = v6 == 0;
    if (!*(a2 + 32))
    {
      v7 = 0;
    }

    v8 = v6 != 0;
    if ((a2[4] & 1) == 0)
    {
      v8 = 0;
    }

    if (v5)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    return (a2[4] & 1) == 0 && v2 == v3 && a1[1] == v4 && a1[2] == a2[2] && a1[3] == a2[3];
  }
}

uint64_t sub_1BBAF8DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s21UIIntelligenceSupport16IntelligenceFileC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFile.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BFE0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v61 - v8;
  v10 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v10 || (sub_1BBB842F8()) && _s21UIIntelligenceSupport16IntelligenceFileC10AttributesV2eeoiySbAE_AEtFZ_0(a1 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, a2 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes))
  {
    v69 = v9;
    v70 = v7;
    v65 = v6;
    v71 = v4;
    v11 = sub_1BBB833F8();
    v72 = v61;
    v12 = *(v11 - 8);
    v13 = v12[8];
    MEMORY[0x1EEE9AC00](v11);
    v67 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = (v61 - v67);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
    v73 = v61;
    v15 = *(*(v14 - 8) + 64);
    MEMORY[0x1EEE9AC00](v14 - 8);
    v66 = v16;
    v17 = (v61 - v16);
    IntelligenceFile.fileURL.getter(v61 - v16);
    v18 = v12[6];
    if ((v18)(v17, 1, v11) == 1)
    {
      sub_1BBA8BCC4(v17, &qword_1EBC7BB98);
    }

    else
    {
      v64 = v12;
      v19 = v68;
      v63 = v12[4];
      v20 = v63(v68, v17, v11);
      v73 = v61;
      v61[1] = v13;
      MEMORY[0x1EEE9AC00](v20);
      v21 = (v61 - v67);
      v67 = v61;
      v62 = v15;
      MEMORY[0x1EEE9AC00](v22);
      v23 = (v61 - v66);
      v24 = v11;
      IntelligenceFile.fileURL.getter(v61 - v66);
      v66 = v18;
      v25 = (v18)(v23, 1, v11);
      v26 = v64;
      if (v25 != 1)
      {
        v63(v21, v23, v11);
        v35 = sub_1BBB83368();
        if ((v35 & 1) == 0)
        {
          v50 = v26[1];
          v50(v21, v11);
          v50(v19, v11);
          v33 = 0;
          return v33 & 1;
        }

        v65 = v12 + 4;
        v69 = v21;
        v71 = v61;
        v36 = v62;
        MEMORY[0x1EEE9AC00](v35);
        v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
        v38 = v61 - v37;
        v39 = sub_1BBAEFD00(v61 - v37);
        v70 = v61;
        MEMORY[0x1EEE9AC00](v39);
        v40 = v61 - v37;
        sub_1BBAEFD00(v61 - v37);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BFE8);
        v67 = v61;
        MEMORY[0x1EEE9AC00](v41 - 8);
        v43 = v61 - v42;
        v45 = *(v44 + 56);
        sub_1BBA8BC5C(v61 - v37, v61 - v42, &qword_1EBC7BB98);
        sub_1BBA8BC5C(v61 - v37, &v43[v45], &qword_1EBC7BB98);
        v46 = v66;
        v47 = (v66)(v43, 1, v24);
        if (v47 == 1)
        {
          v48 = v46;
          sub_1BBA8BCC4(v40, &qword_1EBC7BB98);
          sub_1BBA8BCC4(v38, &qword_1EBC7BB98);
          v49 = v64[1];
          v49(v69, v24);
          v49(v68, v24);
          if ((v48)(&v43[v45], 1, v24) == 1)
          {
            sub_1BBA8BCC4(v43, &qword_1EBC7BB98);
            v33 = 1;
            return v33 & 1;
          }
        }

        else
        {
          v61[0] = v61;
          MEMORY[0x1EEE9AC00](v47);
          v53 = v61 - v37;
          sub_1BBA8BC5C(v43, v53, &qword_1EBC7BB98);
          v54 = (v46)(&v43[v45], 1, v24);
          if (v54 != 1)
          {
            v66 = v61;
            v56 = MEMORY[0x1EEE9AC00](v54);
            v58 = v61 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
            (v63)(v58, &v43[v45], v24, v56);
            sub_1BBAFBE18(&qword_1EBC7BFF0, MEMORY[0x1EEE78698]);
            v33 = sub_1BBB83968();
            v59 = v53;
            v60 = v64[1];
            v60(v58, v24);
            sub_1BBA8BCC4(v40, &qword_1EBC7BB98);
            sub_1BBA8BCC4(v38, &qword_1EBC7BB98);
            v60(v69, v24);
            v60(v68, v24);
            v60(v59, v24);
            sub_1BBA8BCC4(v43, &qword_1EBC7BB98);
            return v33 & 1;
          }

          sub_1BBA8BCC4(v40, &qword_1EBC7BB98);
          sub_1BBA8BCC4(v38, &qword_1EBC7BB98);
          v55 = v64[1];
          v55(v69, v24);
          v55(v68, v24);
          v55(v53, v24);
        }

        sub_1BBA8BCC4(v43, &qword_1EBC7BFE8);
        v33 = 0;
        return v33 & 1;
      }

      (v64[1])(v19, v11);
      sub_1BBA8BCC4(v23, &qword_1EBC7BB98);
    }

    v27 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation;
    v28 = v69;
    v29 = &v69[*(v70 + 12)];
    sub_1BBAF8DD8(a1 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation, v69, type metadata accessor for IntelligenceFile.InternalRepresentation);
    sub_1BBAF8DD8(a2 + v27, v29, type metadata accessor for IntelligenceFile.InternalRepresentation);
    if (!swift_getEnumCaseMultiPayload())
    {
      v30 = v65;
      sub_1BBAF8DD8(v28, v65, type metadata accessor for IntelligenceFile.InternalRepresentation);
      v31 = *v30;
      v32 = v30[1];
      if (!swift_getEnumCaseMultiPayload())
      {
        v52 = *v29;
        v51 = v29[1];
        v33 = sub_1BBB5D6B0(v31, v32, v52, v51);
        sub_1BBA885E8(v52, v51);
        sub_1BBA885E8(v31, v32);
        sub_1BBAFA0FC(v28, type metadata accessor for IntelligenceFile.InternalRepresentation);
        return v33 & 1;
      }

      sub_1BBA885E8(v31, v32);
    }

    sub_1BBA8BCC4(v28, &qword_1EBC7BFE0);
  }

  v33 = 0;
  return v33 & 1;
}

BOOL _s21UIIntelligenceSupport16IntelligenceFileC10AttributesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBB83658();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C020);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v59[-v12];
  v15 = *(v14 + 56);
  sub_1BBA8BC5C(a1, &v59[-v12], &qword_1EBC7B858);
  sub_1BBA8BC5C(a2, &v13[v15], &qword_1EBC7B858);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BBA8BCC4(v13, &qword_1EBC7B858);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_1BBA8BC5C(v13, v10, &qword_1EBC7B858);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1BBA8BCC4(v13, &qword_1EBC7C020);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1BBAFA1B0(&qword_1EBC7B9E8, MEMORY[0x1E69E8450]);
  v18 = sub_1BBB83968();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1BBA8BCC4(v13, &qword_1EBC7B858);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v20 = type metadata accessor for IntelligenceFile.Attributes(0);
  v21 = *(v20 + 20);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v65 = v20;
  v26 = *(v20 + 24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C028);
  v67 = v59;
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v59[-v29];
  v64 = v31;
  v32 = *(v31 + 48);
  sub_1BBA8BC5C(a1 + v26, &v59[-v29], &qword_1EBC7B860);
  sub_1BBA8BC5C(a2 + v26, &v30[v32], &qword_1EBC7B860);
  v33 = sub_1BBB83498();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v30, 1, v33) == 1)
  {
    if (v35(&v30[v32], 1, v33) == 1)
    {
      v66 = v35;
      v62 = v34;
      v36 = sub_1BBA8BCC4(v30, &qword_1EBC7B860);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v66 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
  v63 = v59;
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v59[-v38];
  sub_1BBA8BC5C(v30, &v59[-v38], &qword_1EBC7B860);
  v40 = (v66)(&v30[v32], 1, v33);
  if (v40 == 1)
  {
    (*(v34 + 8))(v39, v33);
LABEL_20:
    sub_1BBA8BCC4(v30, &qword_1EBC7C028);
    return 0;
  }

  v61 = v59;
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v59[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v34 + 32))(v43, &v30[v32], v33, v41);
  sub_1BBAFBE18(&qword_1EBC7C030, MEMORY[0x1EEE78828]);
  v60 = sub_1BBB83968();
  v62 = v34;
  v44 = *(v34 + 8);
  v44(v43, v33);
  v44(v39, v33);
  v36 = sub_1BBA8BCC4(v30, &qword_1EBC7B860);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v45 = *(v65 + 28);
  MEMORY[0x1EEE9AC00](v36);
  v46 = &v59[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = *(v64 + 48);
  sub_1BBA8BC5C(a1 + v45, v46, &qword_1EBC7B860);
  sub_1BBA8BC5C(a2 + v45, &v46[v47], &qword_1EBC7B860);
  v48 = v66;
  if (v66(v46, 1, v33) == 1)
  {
    if (v48(&v46[v47], 1, v33) == 1)
    {
      sub_1BBA8BCC4(v46, &qword_1EBC7B860);
      return 1;
    }

    goto LABEL_27;
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v51 = &v59[-v50];
  sub_1BBA8BC5C(v46, &v59[-v50], &qword_1EBC7B860);
  v52 = (v48)(&v46[v47], 1, v33);
  if (v52 == 1)
  {
    (*(v62 + 8))(v51, v33);
LABEL_27:
    sub_1BBA8BCC4(v46, &qword_1EBC7C028);
    return 0;
  }

  v53 = v62;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = &v59[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v53 + 32))(v56, &v46[v47], v33, v54);
  sub_1BBAFBE18(&qword_1EBC7C030, MEMORY[0x1EEE78828]);
  v57 = sub_1BBB83968();
  v58 = *(v53 + 8);
  v58(v56, v33);
  v58(v51, v33);
  sub_1BBA8BCC4(v46, &qword_1EBC7B860);
  return (v57 & 1) != 0;
}

uint64_t sub_1BBAFA094(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBAFA0FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BBAFA15C()
{
  result = qword_1EBC7B048;
  if (!qword_1EBC7B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B048);
  }

  return result;
}

uint64_t sub_1BBAFA1B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BBAFA1F8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BBB83AE8();

    return sub_1BBB83B88();
  }

  return result;
}

uint64_t sub_1BBAFA2AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5[0] = xmmword_1BBB89870;
  memset(&v5[1], 0, 32);
  v6 = 0;
  return sub_1BBAEEFA4(v2, v3, v5, a1);
}

unint64_t sub_1BBAFA2FC()
{
  result = qword_1EBC7BF00;
  if (!qword_1EBC7BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BF00);
  }

  return result;
}

uint64_t sub_1BBAFA408()
{
  result = type metadata accessor for IntelligenceFile.Attributes(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IntelligenceFile.InternalRepresentation(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1BBAFA5B8()
{
  sub_1BBAFA6D0(319, &qword_1ED6BEDA8, MEMORY[0x1E69E8450]);
  if (v0 <= 0x3F)
  {
    sub_1BBAFA680();
    if (v1 <= 0x3F)
    {
      sub_1BBAFA6D0(319, &unk_1ED6BEF00, MEMORY[0x1EEE78838]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBAFA680()
{
  if (!qword_1ED6BED98)
  {
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6BED98);
    }
  }
}

void sub_1BBAFA6D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BBB83E98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for IntelligenceFile.SandboxExtensionType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy33_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFile.SandboxExtensionType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntelligenceFile.SandboxExtensionType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 4) = 0;
    *(result + 25) = 0;
    *(result + 20) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1BBAFA7C0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBAFA7DC(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

void sub_1BBAFA830()
{
  sub_1BBAFA8B0();
  if (v0 <= 0x3F)
  {
    sub_1BBAFA938();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BBAFA8B0()
{
  if (!qword_1ED6BED80)
  {
    sub_1BBB833F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BED0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED6BED80);
    }
  }
}

void sub_1BBAFA938()
{
  if (!qword_1ED6BED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BED0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED6BED78);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBAFA9FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BBAFAA58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_1BBAFAABC()
{
  result = qword_1EBC7BF38;
  if (!qword_1EBC7BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BF38);
  }

  return result;
}

unint64_t sub_1BBAFAB14()
{
  result = qword_1EBC7BF40;
  if (!qword_1EBC7BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BF40);
  }

  return result;
}

unint64_t sub_1BBAFAB6C()
{
  result = qword_1EBC7BF48;
  if (!qword_1EBC7BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BF48);
  }

  return result;
}

unint64_t sub_1BBAFABC4()
{
  result = qword_1EBC7BF50;
  if (!qword_1EBC7BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BF50);
  }

  return result;
}

unint64_t sub_1BBAFAC1C()
{
  result = qword_1EBC7B038;
  if (!qword_1EBC7B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B038);
  }

  return result;
}

unint64_t sub_1BBAFAC74()
{
  result = qword_1EBC7B040;
  if (!qword_1EBC7B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B040);
  }

  return result;
}

uint64_t sub_1BBAFACC8()
{
  v0 = sub_1BBB84108();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBAFAD14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEC00000061746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBB842F8();

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

uint64_t sub_1BBAFAE30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BBB9B970 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001BBB9B990 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBB842F8();

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

uint64_t sub_1BBAFAF4C()
{
  v0 = sub_1BBB84108();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1BBAFAF98()
{
  result = qword_1EBC7BF78;
  if (!qword_1EBC7BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BF78);
  }

  return result;
}

unint64_t sub_1BBAFAFEC()
{
  result = qword_1EBC7BF80;
  if (!qword_1EBC7BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BF80);
  }

  return result;
}

unint64_t sub_1BBAFB040()
{
  result = qword_1EBC7BF88;
  if (!qword_1EBC7BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BF88);
  }

  return result;
}

unint64_t sub_1BBAFB094()
{
  result = qword_1EBC7BF90;
  if (!qword_1EBC7BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BF90);
  }

  return result;
}

unint64_t sub_1BBAFB0E8()
{
  result = qword_1EBC7BFA0;
  if (!qword_1EBC7BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BFA0);
  }

  return result;
}

unint64_t sub_1BBAFB13C()
{
  result = qword_1EBC7BFC8;
  if (!qword_1EBC7BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BFC8);
  }

  return result;
}

uint64_t sub_1BBAFB190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBAFB248()
{
  result = qword_1EBC7BFF8;
  if (!qword_1EBC7BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BFF8);
  }

  return result;
}

unint64_t sub_1BBAFB29C()
{
  result = qword_1EBC7C000;
  if (!qword_1EBC7C000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC7C000);
  }

  return result;
}

uint64_t sub_1BBAFB314(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1BBB29140(result);
    }

    else
    {
      sub_1BBB82FA8();
      swift_allocObject();
      sub_1BBB82F68();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1BBB83448();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1BBAFB3B4(void *a1, uint64_t a2, size_t a3)
{
  v16[0] = 0xD00000000000002ALL;
  v16[1] = 0x80000001BBB9B940;
  v6 = sub_1BBB83A48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB83A38();
  sub_1BBAE8250();
  v10 = sub_1BBB83EE8();
  (*(v7 + 8))(v9, v6);
  if (!a1)
  {
    __break(1u);
LABEL_14:
    result = sub_1BBB840A8();
    __break(1u);
    return result;
  }

  if (a2)
  {
    v11 = (a2 + 32);
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = (v10 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = getxattr(v11, v12, a1, a3, 0, 1);

  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 == a3)
    {
      return 0;
    }

    goto LABEL_14;
  }

  return MEMORY[0x1BFB15E60](v14);
}

uint64_t sub_1BBAFB574(void *a1, uint64_t a2, size_t a3)
{
  v16[0] = 0xD000000000000028;
  v16[1] = 0x80000001BBB9B910;
  v6 = sub_1BBB83A48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB83A38();
  sub_1BBAE8250();
  v10 = sub_1BBB83EE8();
  (*(v7 + 8))(v9, v6);
  if (!a1)
  {
    __break(1u);
LABEL_14:
    result = sub_1BBB840A8();
    __break(1u);
    return result;
  }

  if (a2)
  {
    v11 = (a2 + 32);
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = (v10 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = getxattr(v11, v12, a1, a3, 0, 1);

  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 == a3)
    {
      return 0;
    }

    goto LABEL_14;
  }

  return MEMORY[0x1BFB15E60](v14);
}

uint64_t sub_1BBAFB734(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, uint64_t))
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      *(&v33 + 7) = 0;
      *&v33 = 0;
      return a4(&v33, a2);
    }

    swift_bridgeObjectRetain_n();
    sub_1BBAE58D8(v8, v7);
    sub_1BBA885E8(v8, v7);
    *&v33 = v8;
    *(&v33 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1BBB87880;
    sub_1BBA885E8(0, 0xC000000000000000);
    sub_1BBB83408();
    v16 = *(&v33 + 1);
    v17 = *(v33 + 16);

    result = sub_1BBB82F58();
    if (!result)
    {
      __break(1u);
      goto LABEL_31;
    }

    v18 = result;
    v19 = sub_1BBB82F88();
    v20 = __OFSUB__(v17, v19);
    v21 = v17 - v19;
    if (!v20)
    {
      sub_1BBB82F78();
      v22 = (a4)(v21 + v18, a2, a3);
      if (v4)
      {
        result = swift_bridgeObjectRelease_n();
      }

      else
      {
        v26 = v22;
        swift_bridgeObjectRelease_n();
        result = v26;
      }

      *a1 = v33;
      a1[1] = v16 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v9)
  {
    swift_bridgeObjectRetain_n();
    sub_1BBA885E8(v8, v7);
    *&v33 = v8;
    WORD4(v33) = v7;
    BYTE10(v33) = BYTE2(v7);
    BYTE11(v33) = BYTE3(v7);
    BYTE12(v33) = BYTE4(v7);
    BYTE13(v33) = BYTE5(v7);
    BYTE14(v33) = BYTE6(v7);
    v10 = (a4)(&v33, a2, a3);
    v11 = v33;
    v12 = DWORD2(v33) | ((WORD6(v33) | (BYTE14(v33) << 16)) << 32);
    result = swift_bridgeObjectRelease_n();
    *a1 = v11;
    a1[1] = v12;
    if (!v4)
    {
      return v10;
    }

    return result;
  }

  v24 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  swift_bridgeObjectRetain_n();
  sub_1BBAE58D8(v8, v7);
  sub_1BBA885E8(v8, v7);
  *a1 = xmmword_1BBB87880;
  sub_1BBA885E8(0, 0xC000000000000000);
  v25 = v8 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v25 < v8)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (sub_1BBB82F58() && __OFSUB__(v8, sub_1BBB82F88()))
    {
LABEL_29:
      __break(1u);
    }

    sub_1BBB82FA8();
    swift_allocObject();
    v27 = sub_1BBB82F38();

    v24 = v27;
  }

  if (v25 < v8)
  {
    goto LABEL_26;
  }

  result = sub_1BBB82F58();
  if (!result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = sub_1BBB82F88();
  v30 = v8 - v29;
  if (__OFSUB__(v8, v29))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1BBB82F78();
  v10 = (a4)(v30 + v28, a2, a3);

  result = swift_bridgeObjectRelease_n();
  *a1 = v8;
  a1[1] = v24 | 0x4000000000000000;
  if (!v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1BBAFBB5C(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v24 = a4;
  v22 = a3;
  v27 = a1;
  v25 = sub_1BBB833C8();
  v26 = v4;
  v5 = sub_1BBB83A48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BBB83A38();
  sub_1BBAE8250();
  v23 = sub_1BBB83EE8();
  v9 = *(v6 + 8);
  v9(&v22 - v8, v5);

  v25 = 0xD000000000000028;
  v26 = 0x80000001BBB9B910;
  MEMORY[0x1EEE9AC00](v10);
  sub_1BBB83A38();
  v11 = sub_1BBB83EE8();
  result = (v9)(&v22 - v8, v5);
  v13 = v27;
  if (!v27)
  {
    goto LABEL_23;
  }

  v14 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v14 != 2)
    {
      v15 = 0;
      goto LABEL_12;
    }

    v17 = *(v22 + 16);
    v16 = *(v22 + 24);
    v15 = v16 - v17;
    if (!__OFSUB__(v16, v17))
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v14)
  {
LABEL_9:
    if (!__OFSUB__(HIDWORD(v22), v22))
    {
      v15 = HIDWORD(v22) - v22;
      goto LABEL_12;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v15 = BYTE6(v24);
LABEL_12:
  if (v23)
  {
    v18 = (v23 + 32);
  }

  else
  {
    v18 = 0;
  }

  if (v11)
  {
    v19 = (v11 + 32);
  }

  else
  {
    v19 = 0;
  }

  v20 = setxattr(v18, v19, v13, v15, 0, 1);

  if (v20)
  {
    return MEMORY[0x1BFB15E60](v21);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BBAFBDA4()
{
  result = qword_1EBC7C018;
  if (!qword_1EBC7C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C018);
  }

  return result;
}

uint64_t sub_1BBAFBE18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BBAFBE7C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7C008);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBAFBEF4()
{
  result = qword_1EBC7C040;
  if (!qword_1EBC7C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C040);
  }

  return result;
}

uint64_t sub_1BBAFBF74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void)@<X2>, _DWORD *a3@<X8>)
{
  result = a2(a1, v3[2], v3[3], v3[4]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1BBAFBFB0(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v24 = a4;
  v22 = a3;
  v27 = a1;
  v25 = sub_1BBB833C8();
  v26 = v4;
  v5 = sub_1BBB83A48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BBB83A38();
  sub_1BBAE8250();
  v23 = sub_1BBB83EE8();
  v9 = *(v6 + 8);
  v9(&v22 - v8, v5);

  v25 = 0xD00000000000002ALL;
  v26 = 0x80000001BBB9B940;
  MEMORY[0x1EEE9AC00](v10);
  sub_1BBB83A38();
  v11 = sub_1BBB83EE8();
  result = (v9)(&v22 - v8, v5);
  v13 = v27;
  if (!v27)
  {
    goto LABEL_23;
  }

  v14 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v14 != 2)
    {
      v15 = 0;
      goto LABEL_12;
    }

    v17 = *(v22 + 16);
    v16 = *(v22 + 24);
    v15 = v16 - v17;
    if (!__OFSUB__(v16, v17))
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v14)
  {
LABEL_9:
    if (!__OFSUB__(HIDWORD(v22), v22))
    {
      v15 = HIDWORD(v22) - v22;
      goto LABEL_12;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v15 = BYTE6(v24);
LABEL_12:
  if (v23)
  {
    v18 = (v23 + 32);
  }

  else
  {
    v18 = 0;
  }

  if (v11)
  {
    v19 = (v11 + 32);
  }

  else
  {
    v19 = 0;
  }

  v20 = setxattr(v18, v19, v13, v15, 0, 1);

  if (v20)
  {
    return MEMORY[0x1BFB15E60](v21);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BBAFC23C()
{
  result = qword_1EBC7C050;
  if (!qword_1EBC7C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C050);
  }

  return result;
}

unint64_t sub_1BBAFC294()
{
  result = qword_1EBC7C058;
  if (!qword_1EBC7C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C058);
  }

  return result;
}

unint64_t sub_1BBAFC2EC()
{
  result = qword_1EBC7C060;
  if (!qword_1EBC7C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C060);
  }

  return result;
}

unint64_t sub_1BBAFC344()
{
  result = qword_1EBC7C068;
  if (!qword_1EBC7C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C068);
  }

  return result;
}

unint64_t sub_1BBAFC39C()
{
  result = qword_1EBC7C070;
  if (!qword_1EBC7C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C070);
  }

  return result;
}

unint64_t sub_1BBAFC3F4()
{
  result = qword_1EBC7C078;
  if (!qword_1EBC7C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C078);
  }

  return result;
}

unint64_t sub_1BBAFC44C()
{
  result = qword_1EBC7C080;
  if (!qword_1EBC7C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C080);
  }

  return result;
}

unint64_t sub_1BBAFC4A4()
{
  result = qword_1EBC7C088;
  if (!qword_1EBC7C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C088);
  }

  return result;
}

unint64_t sub_1BBAFC4FC()
{
  result = qword_1EBC7C090;
  if (!qword_1EBC7C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C090);
  }

  return result;
}

unint64_t sub_1BBAFC554()
{
  result = qword_1EBC7C098;
  if (!qword_1EBC7C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C098);
  }

  return result;
}

unint64_t sub_1BBAFC5AC()
{
  result = qword_1EBC7C0A0;
  if (!qword_1EBC7C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C0A0);
  }

  return result;
}

unint64_t sub_1BBAFC604()
{
  result = qword_1EBC7C0A8;
  if (!qword_1EBC7C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C0A8);
  }

  return result;
}

void sub_1BBAFC6A4(uint64_t a1, char a2)
{
  v3 = v2;
  if ((sub_1BBB832C8() & 1) == 0)
  {
    sub_1BBB84028();
    MEMORY[0x1BFB16150](0xD000000000000039, 0x80000001BBB9BA80);
    v24 = sub_1BBB832F8();
    MEMORY[0x1BFB16150](v24);

    sub_1BBB840A8();
    __break(1u);
    return;
  }

  v5 = sub_1BBB83328();
  v6 = MEMORY[0x1BFB16CF0]();

  if (v6)
  {
    if ((a2 & 1) == 0)
    {
      return;
    }

    if (qword_1ED6BDEB8 != -1)
    {
      swift_once();
    }

    v7 = sub_1BBB83758();
    __swift_project_value_buffer(v7, qword_1ED6BDEC0);
    v8 = sub_1BBB833F8();
    v9 = *(v8 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v3, v8, v10);
    v13 = sub_1BBB83738();
    v14 = sub_1BBB83D58();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25[1] = v25;
      v16 = v15;
      v25[0] = swift_slowAlloc();
      v26 = v25[0];
      *v16 = 136315138;
      sub_1BBAFDDF8();
      v17 = sub_1BBB842D8();
      v19 = v18;
      (*(v9 + 8))(v12, v8);
      v20 = sub_1BBA85E50(v17, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1BBA81000, v13, v14, "Attaching a sandbox extension to a file URL that already has one attached; the existing one will be replaced: %s", v16, 0xCu);
      v21 = v25[0];
      __swift_destroy_boxed_opaque_existential_1(v25[0]);
      MEMORY[0x1BFB174E0](v21, -1, -1);
      MEMORY[0x1BFB174E0](v16, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }

  v22 = sub_1BBB83328();
  v23 = sub_1BBB83458();
  MEMORY[0x1BFB16CE0](v22, v23);
}

uint64_t sub_1BBAFC9E4@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1BBB832C8();
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C0D8);
  sub_1BBB83378();
  v6 = v26;
  if (!v26)
  {
    sub_1BBAFB29C();
    v19 = MEMORY[0x1BFB15E60]();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
    MEMORY[0x1EEE9AC00](v20 - 8);
    v22 = &v26 - v21;
    v23 = sub_1BBB833F8();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v22, v2, v23);
    (*(v24 + 56))(v22, 0, 1, v23);
    sub_1BBB3E6B8(v19, v22);
    return swift_willThrow();
  }

  v7 = strlen(v26);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
LABEL_9:
    sub_1BBB84028();
    MEMORY[0x1BFB16150](0xD000000000000039, 0x80000001BBB9BA80);
    v25 = sub_1BBB832F8();
    MEMORY[0x1BFB16150](v25);

    result = sub_1BBB840A8();
    __break(1u);
    return result;
  }

  v9 = sub_1BBB83438();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v12, *MEMORY[0x1E6969008], v10);
  result = sub_1BBAFD8F0(v6, v8, v12);
  v16 = *(a1 + 32);
  v17 = 0uLL;
  v18 = 0uLL;
  if ((v16 & 1) == 0)
  {
    v17 = *a1;
    v18 = a1[1];
  }

  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 48) = v16 & 1;
  return result;
}

uint64_t sub_1BBAFCD48()
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(v0 + 48) & 1) == 0)
  {
    *task_info_out = 0u;
    v28 = 0u;
    task_info_outCnt[0] = 8;
    if (!task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, task_info_outCnt))
    {
      v24[0] = *task_info_out;
      v24[1] = v28;
      v1 = *(v0 + 32);
      *task_info_outCnt = *(v0 + 16);
      v26 = v1;
      v2 = *task_info_outCnt == *task_info_out && *&task_info_outCnt[2] == *&task_info_out[2];
      v3 = v2 && v1 == v28;
      if (v3 && *(&v1 + 1) == *(&v28 + 1))
      {
        return 0;
      }
    }
  }

  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *task_info_out = *v0;
      task_info_out[2] = v6;
      LOWORD(task_info_out[3]) = WORD2(v6);
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v7 == 2)
  {
    v8 = *(v5 + 16);
    if (!sub_1BBB82F58())
    {
      goto LABEL_24;
    }

    v9 = sub_1BBB82F88();
    v5 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_21:
    v10 = v5;
    if (v5 > v5 >> 32)
    {
      __break(1u);
    }

    else if (!sub_1BBB82F58() || !__OFSUB__(v10, sub_1BBB82F88()))
    {
LABEL_24:
      sub_1BBB82F78();
      goto LABEL_26;
    }

    __break(1u);
  }

  *(&task_info_out[1] + 2) = 0;
  *task_info_out = 0;
LABEL_26:
  v11 = sandbox_extension_consume();
  if (v11 == -1)
  {
    v15 = sub_1BBAFB29C();
    v19 = MEMORY[0x1BFB15E60](v15, v16, v17, v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
    MEMORY[0x1EEE9AC00](v20 - 8);
    v22 = v24 - v21;
    v23 = sub_1BBB833F8();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    sub_1BBB3E6B8(v19, v22);
    return swift_willThrow();
  }

  else
  {
    _s16SandboxExtensionV6HandleCMa();
    v12 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C0C8);
    v13 = swift_allocObject();
    result = v12;
    *(v13 + 20) = 0;
    *(v13 + 16) = 0;
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
  }

  return result;
}

void sub_1BBAFCFEC()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));
  if ((v2 & 1) == 0 && sandbox_extension_release() == -1)
  {
    sub_1BBAFB29C();
    v3 = MEMORY[0x1BFB15E60]();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
    MEMORY[0x1EEE9AC00](v4 - 8);
    v6 = &v8 - v5;
    v7 = sub_1BBB833F8();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_1BBB3E6B8(v3, v6);
    swift_willThrow();
  }
}

uint64_t sub_1BBAFD110()
{
  sub_1BBAFCFEC();

  return swift_deallocClassInstance();
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

uint64_t sub_1BBAFD1BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 49))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BBAFD210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1BBAFD280(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C0C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAFDD6C();
  sub_1BBB84478();
  v14 = *v3;
  v13 = 0;
  sub_1BBAFDDC0(v3, v11);
  sub_1BBA8845C();
  sub_1BBB84288();
  sub_1BBA885E8(v14, *(&v14 + 1));
  if (!v2)
  {
    v9 = *(v3 + 32);
    v11[0] = *(v3 + 16);
    v11[1] = v9;
    v12 = *(v3 + 48);
    LOBYTE(v14) = 1;
    sub_1BBAFBEF4();
    sub_1BBB84238();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BBAFD430()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x7461446E656B6F74;
  }
}

uint64_t sub_1BBAFD474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461446E656B6F74 && a2 == 0xE900000000000061;
  if (v6 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BBB9BAC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

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

uint64_t sub_1BBAFD560(uint64_t a1)
{
  v2 = sub_1BBAFDD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAFD59C(uint64_t a1)
{
  v2 = sub_1BBAFDD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBAFD5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1BBAFD74C(v5, v7) & 1;
}

double sub_1BBAFD634@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BBAFDB48(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1BBAFD6C8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (*(a1 + 32))
  {
    result = sandbox_extension_issue_file();
  }

  else
  {
    result = sandbox_extension_issue_file_to_process();
  }

  *a2 = result;
  return result;
}

uint64_t sub_1BBAFD74C(uint64_t a1, uint64_t a2)
{
  if (sub_1BBB5D6B0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    v4 = *(a1 + 48) & *(a2 + 48);
    if ((*(a1 + 48) & 1) == 0 && (*(a2 + 48) & 1) == 0)
    {
      v6 = *(a2 + 16);
      v5 = *(a2 + 32);
      v7 = *(a1 + 32);
      v12 = *(a1 + 16);
      v4 = v12 == v6 && *(&v12 + 1) == *(&v6 + 1) && v7 == v5 && *(&v7 + 1) == *(&v5 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1BBAFD80C(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1BBB83448();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1BBB82F58();
  if (v3)
  {
    result = sub_1BBB82F88();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1BBB82F78();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1BBB29160(v3, v7);

  return v8;
}

uint64_t sub_1BBAFD8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BBB83428();
  if (a2)
  {
    sub_1BBB82FA8();
    swift_allocObject();

    v6 = sub_1BBB82F38();
    v7 = sub_1BBB83438();
    v8 = *(v7 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v11, a3, v7, v9);
    v12 = (*(v8 + 88))(v11, v7);
    if (MEMORY[0x1E6969018] && v12 == *MEMORY[0x1E6969018])
    {
      v13 = sub_1BBB82F98();
      *v14 |= 0x8000000000000000;
      v13(v19, 0);
    }

    else
    {
      (*(v8 + 8))(v11, v7);
    }

    v15 = sub_1BBAFD80C(v6, a2);
  }

  else
  {
    v16 = sub_1BBB83428();
    v16(a1, 0);

    v15 = 0;
  }

  v17 = sub_1BBB83438();
  (*(*(v17 - 8) + 8))(a3, v17);
  return v15;
}

uint64_t sub_1BBAFDB48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C0B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAFDD6C();
  sub_1BBB84458();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  sub_1BBAAB454();
  sub_1BBB841B8();
  v9 = v15;
  v18 = 1;
  sub_1BBAFBDA4();
  sub_1BBB84178();
  (*(v6 + 8))(v8, v5);
  v10 = v17;
  v13 = v16;
  v14 = v15;
  sub_1BBAE58D8(v9, *(&v9 + 1));
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = sub_1BBA885E8(v9, *(&v9 + 1));
  *a2 = v9;
  v12 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

unint64_t sub_1BBAFDD6C()
{
  result = qword_1EBC7C0B8;
  if (!qword_1EBC7C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C0B8);
  }

  return result;
}

unint64_t sub_1BBAFDDF8()
{
  result = qword_1EBC7C0D0;
  if (!qword_1EBC7C0D0)
  {
    sub_1BBB833F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C0D0);
  }

  return result;
}

unint64_t sub_1BBAFDE74()
{
  result = qword_1EBC7C0E0;
  if (!qword_1EBC7C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C0E0);
  }

  return result;
}

unint64_t sub_1BBAFDECC()
{
  result = qword_1EBC7C0E8;
  if (!qword_1EBC7C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C0E8);
  }

  return result;
}

unint64_t sub_1BBAFDF24()
{
  result = qword_1EBC7C0F0;
  if (!qword_1EBC7C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C0F0);
  }

  return result;
}

uint64_t sub_1BBAFDFE8()
{
  v0 = sub_1BBB82F18();
  __swift_allocate_value_buffer(v0, qword_1EBC7B360);
  __swift_project_value_buffer(v0, qword_1EBC7B360);
  sub_1BBB82EC8();
  sub_1BBB82EE8();
  sub_1BBB82EE8();
  sub_1BBB82EE8();
  sub_1BBB82EE8();
  sub_1BBB82EE8();
  sub_1BBB82EE8();
  sub_1BBB82EE8();
  sub_1BBB82EE8();
  sub_1BBB82EE8();
  sub_1BBB82EE8();
  sub_1BBB82EE8();
  return sub_1BBB82EE8();
}

uint64_t sub_1BBAFE098()
{
  v0 = sub_1BBB82F18();
  __swift_allocate_value_buffer(v0, qword_1EBC7B228);
  v1 = __swift_project_value_buffer(v0, qword_1EBC7B228);
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BBB82ED8();
  if (qword_1EBC7B358 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EBC7B360);
  MEMORY[0x1EEE9AC00](v5);
  (*(v2 + 16))(&v8 - v4);
  sub_1BBB82EB8();
  v6 = *(v2 + 8);
  v6(&v8 - v4, v0);
  return (v6)(&v8 - v4, v0);
}

Swift::String __swiftcall String.trimmed(maximumLength:trimWhitespace:)(Swift::Int_optional maximumLength, Swift::Bool trimWhitespace)
{
  is_nil = maximumLength.is_nil;
  value = maximumLength.value;
  v5 = sub_1BBB83148();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BBB831F8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1BBB831E8();

  sub_1BBB83158();
  v18.is_nil = is_nil;
  v18.value = value;
  AttributedString.trim(maximumLength:trimWhitespace:)(v18, trimWhitespace);
  v10 = sub_1BBB82FF8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1BBB82FD8();
  sub_1BBA8BDB4(&qword_1EBC7AE88, MEMORY[0x1EEE77F60]);
  v11 = sub_1BBB83B68();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v14 = v11;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

Swift::Bool __swiftcall String.trim(maximumLength:trimWhitespace:)(Swift::Int_optional maximumLength, Swift::Bool trimWhitespace)
{
  v3 = v2;
  is_nil = maximumLength.is_nil;
  value = maximumLength.value;
  v7 = sub_1BBB83148();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BBB831F8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1BBB831E8();
  sub_1BBB83158();
  v19.is_nil = is_nil;
  v19.value = value;
  v12 = AttributedString.trim(maximumLength:trimWhitespace:)(v19, trimWhitespace);
  v13 = sub_1BBB82FF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1BBB82FD8();
  sub_1BBA8BDB4(&qword_1EBC7AE88, MEMORY[0x1EEE77F60]);
  v14 = sub_1BBB83B68();
  v16 = v15;
  (*(v8 + 8))(v10, v7);
  *v3 = v14;
  v3[1] = v16;
  return v12;
}

BOOL AttributedString.trimmed(maximumLength:trimWhitespace:)@<W0>(Swift::Int a1@<X0>, char a2@<W1>, Swift::Bool a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_1BBB83148();
  (*(*(v9 - 8) + 16))(a4, v4, v9);
  v11.is_nil = a2 & 1;
  v11.value = a1;
  return AttributedString.trim(maximumLength:trimWhitespace:)(v11, a3);
}

uint64_t sub_1BBAFE694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BBB83118();
  v18 = *(v4 - 8);
  v5 = (*(v18 + 16))(a2, a1, v4);
  v6 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BBB82FE8();
  v7 = sub_1BBB83058();
  v16 = *(v7 - 8);
  v17 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v20 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB83028();
  sub_1BBA8BDB4(&qword_1EBC7C0F8, MEMORY[0x1EEE78020]);
  v19 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BBB83948())
  {
    v9 = (v18 + 40);
    do
    {
      if (qword_1EBC7B220 != -1)
      {
        swift_once();
      }

      v10 = sub_1BBB82F18();
      __swift_project_value_buffer(v10, qword_1EBC7B228);
      sub_1BBB83068();
      v11 = sub_1BBB82EF8();
      if (v11)
      {
        break;
      }

      MEMORY[0x1EEE9AC00](v11);
      sub_1BBB83148();
      sub_1BBA8BDB4(&unk_1EBC7B388, MEMORY[0x1EEE78060]);
      sub_1BBB83288();
      (*v9)(a2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    }

    while ((sub_1BBB83948() & 1) != 0);
  }

  if (sub_1BBB83108())
  {
    sub_1BBB83148();
    v12 = sub_1BBA8BDB4(&unk_1EBC7B388, MEMORY[0x1EEE78060]);
    v13 = (v18 + 40);
    do
    {
      MEMORY[0x1EEE9AC00](v12);
      sub_1BBB83278();
      (*v13)(a2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v12 = sub_1BBB83108();
    }

    while ((v12 & 1) != 0);
  }

  (*(v16 + 8))(v20, v17);
  return (*(v18 + 8))(v19, v4);
}

unint64_t sub_1BBAFEA58()
{
  result = qword_1EBC7C108;
  if (!qword_1EBC7C108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C108);
  }

  return result;
}

unint64_t sub_1BBAFEABC()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceImage(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IntelligenceImage.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BBB083D8(v1, v7, type metadata accessor for IntelligenceImage.InternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;
  if (EnumCaseMultiPayload == 1)
  {
    v10 = *(*v9 + *MEMORY[0x1E69E6B68] + 16);
    v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
    v12 = *v7;
    os_unfair_lock_lock((v9 + v11));
    v13 = *(v12 + v10);
    os_unfair_lock_unlock((v12 + v11));

    if (v13)
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B868);
    sub_1BBB08440(v7 + *(v15 + 48), type metadata accessor for IntelligenceFile.Attributes);
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1BBB84028();

  v21 = 0xD000000000000017;
  v22 = 0x80000001BBB9BF70;
  sub_1BBB019D8(v4);
  v16 = sub_1BBB00EFC();
  v17 = sub_1BBB01314(v16);
  sub_1BBB08440(v4, type metadata accessor for IntelligenceImage);
  v18 = *(v17 + 16);

  v20[1] = v18;
  v19 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v19);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v21;
}

uint64_t IntelligenceImage.Representation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (qword_1ED6BDDC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&qword_1ED6BDDE0;
  *(a1 + 16) = xmmword_1ED6BDDD0;
  *(a1 + 32) = v1;
  *(a1 + 48) = xmmword_1ED6BDDF0;
  *(a1 + 57) = *(&xmmword_1ED6BDDF0 + 9);
  *(a1 + 80) = 72;
  if (qword_1ED6BEB10 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  *(a1 + 88) = qword_1ED6BEB18;
  *(a1 + 96) = 0x3FE999999999999ALL;
  *(a1 + 104) = 0;
}

BOOL sub_1BBAFEE1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 40);
    for (i = (a1 + 40); *(i - 2) == *(v3 - 2); i = (i + 136))
    {
      v5 = i[5];
      *&a.m31 = i[4];
      *&a.m33 = v5;
      v6 = i[7];
      *&a.m41 = i[6];
      *&a.m43 = v6;
      v7 = i[1];
      *&a.m11 = *i;
      *&a.m13 = v7;
      v8 = i[3];
      *&a.m21 = i[2];
      *&a.m23 = v8;
      v9 = v3[5];
      *&v14.m31 = v3[4];
      *&v14.m33 = v9;
      v10 = v3[7];
      *&v14.m41 = v3[6];
      *&v14.m43 = v10;
      v11 = v3[1];
      *&v14.m11 = *v3;
      *&v14.m13 = v11;
      v12 = v3[3];
      *&v14.m21 = v3[2];
      *&v14.m23 = v12;
      result = CATransform3DEqualToTransform(&a, &v14);
      if (!result)
      {
        return result;
      }

      v3 = (v3 + 136);
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1BBAFEEE8(uint64_t a1, uint64_t a2)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BE38);
  MEMORY[0x1EEE9AC00](v60);
  v5 = v49 - v4;
  v6 = type metadata accessor for IntelligenceDataSourceItem();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v49 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v49 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    goto LABEL_24;
  }

  if (!v20 || a1 == a2)
  {
    v40 = 1;
    return v40 & 1;
  }

  v51 = v15;
  v52 = v14;
  v53 = v19;
  v54 = v18;
  v61 = v49 - v17;
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v59 = *(v16 + 72);
  v50 = v5;
  v49[1] = v6;
  v55 = v12;
  while (1)
  {
    v24 = v61;
    sub_1BBB083D8(v22, v61, type metadata accessor for IntelligenceDataSourceItem);
    sub_1BBB083D8(v23, v12, type metadata accessor for IntelligenceDataSourceItem);
    v25 = &v5[*(v60 + 48)];
    sub_1BBB083D8(v24, v5, type metadata accessor for IntelligenceDataSourceItem);
    sub_1BBB083D8(v12, v25, type metadata accessor for IntelligenceDataSourceItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v43 = v53;
        sub_1BBB083D8(v5, v53, type metadata accessor for IntelligenceDataSourceItem);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_23;
        }

        v40 = *v43 == *v25;
      }

      else
      {
        v47 = v54;
        sub_1BBB083D8(v5, v54, type metadata accessor for IntelligenceDataSourceItem);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_1BBA8BCC4((v47 + 1), &qword_1EBC7C230);
          goto LABEL_23;
        }

        v40 = *v47 == *v25;
        sub_1BBA8BCC4(v25 + 8, &qword_1EBC7C230);
        sub_1BBA8BCC4((v47 + 1), &qword_1EBC7C230);
      }

      goto LABEL_16;
    }

    if (EnumCaseMultiPayload)
    {
      break;
    }

    v27 = v51;
    sub_1BBB083D8(v5, v51, type metadata accessor for IntelligenceDataSourceItem);
    v28 = swift_getEnumCaseMultiPayload();
    v29 = sub_1BBB83548();
    v30 = v29;
    v31 = *(v29 - 8);
    v32 = v31;
    if (v28)
    {
      (*(v31 + 8))(v27, v29);
      v12 = v55;
      v24 = v61;
      goto LABEL_23;
    }

    v58 = v49;
    v33 = *(v31 + 64);
    v34 = MEMORY[0x1EEE9AC00](v29);
    v56 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
    v35 = v49 - v56;
    v36 = (*(v32 + 32))(v49 - v56, v27, v30, v34);
    v57 = v49;
    v37 = MEMORY[0x1EEE9AC00](v36);
    v38 = v49 - v56;
    v39(v49 - v56, v25, v30, v37);
    v40 = sub_1BBB83528();
    v41 = *(v32 + 8);
    v42 = v38;
    v5 = v50;
    v41(v42, v30);
    v41(v35, v30);
    v12 = v55;
LABEL_16:
    sub_1BBB08440(v5, type metadata accessor for IntelligenceDataSourceItem);
    sub_1BBB08440(v12, type metadata accessor for IntelligenceDataSourceItem);
    sub_1BBB08440(v61, type metadata accessor for IntelligenceDataSourceItem);
    if (v40)
    {
      v23 += v59;
      v22 += v59;
      if (--v20)
      {
        continue;
      }
    }

    return v40 & 1;
  }

  v44 = v52;
  sub_1BBB083D8(v5, v52, type metadata accessor for IntelligenceDataSourceItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *(v44 + 16);
    v64[0] = *v44;
    v64[1] = v45;
    v65 = *(v44 + 32);
    v46 = *(v25 + 16);
    v62[0] = *v25;
    v62[1] = v46;
    v63 = *(v25 + 32);
    v40 = MEMORY[0x1BFB16610](v64, v62);
    sub_1BBAE81B0(v62);
    sub_1BBAE81B0(v64);
    goto LABEL_16;
  }

  sub_1BBAE81B0(v44);
LABEL_23:
  sub_1BBA8BCC4(v5, &qword_1EBC7BE38);
  sub_1BBB08440(v12, type metadata accessor for IntelligenceDataSourceItem);
  sub_1BBB08440(v24, type metadata accessor for IntelligenceDataSourceItem);
LABEL_24:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_1BBAFF548(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1BBB842F8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1BBAFF5D8(uint64_t a1, uint64_t a2)
{
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v32 = v11;
  v33 = v10;
  v34 = v9;
  v35 = v8;
  v36 = v7;
  v37 = v6;
  v38 = v5;
  v39 = v4;
  v40 = v2;
  v41 = v3;
  v13 = (a1 + 32);
  v14 = (a2 + 32);
  for (i = v12 - 1; ; --i)
  {
    v16 = v13[1];
    v27[0] = *v13;
    v27[1] = v16;
    *v28 = v13[2];
    *&v28[9] = *(v13 + 41);
    v17 = v16;
    v18 = v27[0];
    *&v31[9] = *(v14 + 41);
    v19 = v14[2];
    v30 = v14[1];
    *v31 = v19;
    v29 = *v14;
    v20 = v29;
    v21 = v30;
    sub_1BBA9B788(v27, v26);
    sub_1BBA9B788(&v29, v26);
    v42.origin = v18;
    v42.size = v17;
    v43.origin = v20;
    v43.size = v21;
    if (!CGRectEqualToRect(v42, v43) || (v22 = *v31, v25 = *v31, v26[0] = *v28, sub_1BBA8BD24(*v28), sub_1BBA8BD24(v22), LOBYTE(v22) = _s21UIIntelligenceSupport19IntelligenceElementV7ContentO2eeoiySbAE_AEtFZ_0(v26, &v25), sub_1BBA8ABF8(v25), sub_1BBA8ABF8(v26[0]), (v22 & 1) == 0) || (sub_1BBAFF5D8(*&v28[8], *&v31[8]) & 1) == 0)
    {
      sub_1BBA9E174(&v29);
      sub_1BBA9E174(v27);
      return 0;
    }

    v23 = sub_1BBA9A01C(*&v28[16], *&v31[16]);
    sub_1BBA9E174(&v29);
    sub_1BBA9E174(v27);
    if ((v23 & 1) == 0 || v28[24] != v31[24])
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v13 += 4;
    v14 += 4;
  }

  return 1;
}

uint64_t sub_1BBAFF79C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_1BBB084A0(v27, v14);
    sub_1BBB084A0(v32, v14);
    v12 = _s21UIIntelligenceSupport19IntelligenceCommandV2eeoiySbAC_ACtFZ_0(&v21, &v15);
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_1BBB084FC(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_1BBB084FC(v39);
    if (!v12)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

void sub_1BBAFF90C()
{
  *&xmmword_1ED6BDDD0 = 0;
  BYTE8(xmmword_1ED6BDDD0) = 1;
  qword_1ED6BDDE0 = 0;
  byte_1ED6BDDE8 = 1;
  *&xmmword_1ED6BDDF0 = 0;
  BYTE8(xmmword_1ED6BDDF0) = 1;
  qword_1ED6BDE00 = 0;
  byte_1ED6BDE08 = 1;
}

uint64_t sub_1BBAFF954()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B630);
  sub_1BBB83658();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BBB8A7A0;
  sub_1BBB83618();
  sub_1BBB83628();
  result = sub_1BBB83608();
  qword_1ED6BEB18 = v0;
  return result;
}

uint64_t IntelligenceImage.Representation.hint.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IntelligenceImage.Representation.hint.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1BBAFFAC4(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if ((v3 & 1) != 0 || v2 > 0)
  {
    *a2 = v2;
    *(a2 + 8) = v3;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t IntelligenceImage.Representation.SizeConstraints.maxPixelWidth.setter(uint64_t result, char a2)
{
  if ((a2 & 1) != 0 || result > 0)
  {
    *v2 = result;
    *(v2 + 8) = a2 & 1;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t (*IntelligenceImage.Representation.SizeConstraints.maxPixelWidth.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  return sub_1BBAFFBF4;
}

uint64_t sub_1BBAFFBF4(uint64_t result)
{
  v1 = *(result + 8);
  if (*result > 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(result + 8);
  }

  if (v2)
  {
    v3 = *(result + 16);
    *v3 = *result;
    *(v3 + 8) = v1;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBAFFC88(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if ((v3 & 1) != 0 || v2 > 0)
  {
    *(a2 + 16) = v2;
    *(a2 + 24) = v3;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t IntelligenceImage.Representation.SizeConstraints.maxPixelHeight.setter(uint64_t result, char a2)
{
  if ((a2 & 1) != 0 || result > 0)
  {
    *(v2 + 16) = result;
    *(v2 + 24) = a2 & 1;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t (*IntelligenceImage.Representation.SizeConstraints.maxPixelHeight.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  return sub_1BBAFFDB8;
}

uint64_t sub_1BBAFFDB8(uint64_t result)
{
  v1 = *(result + 8);
  if (*result > 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(result + 8);
  }

  if (v2)
  {
    v3 = *(result + 16);
    *(v3 + 16) = *result;
    *(v3 + 24) = v1;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBAFFE4C(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if ((v3 & 1) != 0 || v2 > 0)
  {
    *(a2 + 32) = v2;
    *(a2 + 40) = v3;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t IntelligenceImage.Representation.SizeConstraints.longestDimensionMaxPixelLength.setter(uint64_t result, char a2)
{
  if ((a2 & 1) != 0 || result > 0)
  {
    *(v2 + 32) = result;
    *(v2 + 40) = a2 & 1;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t (*IntelligenceImage.Representation.SizeConstraints.longestDimensionMaxPixelLength.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  return sub_1BBAFFF7C;
}

uint64_t sub_1BBAFFF7C(uint64_t result)
{
  v1 = *(result + 8);
  if (*result > 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(result + 8);
  }

  if (v2)
  {
    v3 = *(result + 16);
    *(v3 + 32) = *result;
    *(v3 + 40) = v1;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBB00010(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if ((v3 & 1) != 0 || v2 > 0)
  {
    *(a2 + 48) = v2;
    *(a2 + 56) = v3;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t IntelligenceImage.Representation.SizeConstraints.shortestDimensionMaxPixelLength.setter(uint64_t result, char a2)
{
  if ((a2 & 1) != 0 || result > 0)
  {
    *(v2 + 48) = result;
    *(v2 + 56) = a2 & 1;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t (*IntelligenceImage.Representation.SizeConstraints.shortestDimensionMaxPixelLength.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  return sub_1BBB00140;
}

uint64_t sub_1BBB00140(uint64_t result)
{
  v1 = *(result + 8);
  if (*result > 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(result + 8);
  }

  if (v2)
  {
    v3 = *(result + 16);
    *(v3 + 48) = *result;
    *(v3 + 56) = v1;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t IntelligenceImage.Representation.SizeConstraints.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[6];
  v6 = *(v0 + 56);
  if (*(v0 + 8) == 1)
  {
    sub_1BBB84408();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *v0;
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v8);
    if (!v2)
    {
LABEL_3:
      sub_1BBB84408();
      MEMORY[0x1BFB16A50](v1);
      if (!v4)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1BBB84408();
      if (!v6)
      {
        goto LABEL_5;
      }

      return sub_1BBB84408();
    }
  }

  sub_1BBB84408();
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1BBB84408();
  MEMORY[0x1BFB16A50](v3);
  if (!v6)
  {
LABEL_5:
    sub_1BBB84408();
    return MEMORY[0x1BFB16A50](v5);
  }

  return sub_1BBB84408();
}

uint64_t IntelligenceImage.Representation.SizeConstraints.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceImage.Representation.SizeConstraints.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB002EC()
{
  sub_1BBB843D8();
  IntelligenceImage.Representation.SizeConstraints.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB00330()
{
  sub_1BBB843D8();
  IntelligenceImage.Representation.SizeConstraints.hash(into:)();
  return sub_1BBB84438();
}

__n128 IntelligenceImage.Representation.sizeConstraints.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 48);
  result = *(v1 + 57);
  *(a1 + 41) = result;
  return result;
}

__n128 IntelligenceImage.Representation.sizeConstraints.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 57) = result;
  return result;
}

void *sub_1BBB003D0(void *result, uint64_t a2)
{
  if (*result < 1)
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  else
  {
    *(a2 + 80) = *result;
  }

  return result;
}

uint64_t IntelligenceImage.Representation.dpi.setter(uint64_t result)
{
  if (result < 1)
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  else
  {
    *(v1 + 80) = result;
  }

  return result;
}

uint64_t *(*IntelligenceImage.Representation.dpi.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = *(v1 + 80);
  a1[1] = v1;
  return sub_1BBB004DC;
}

uint64_t *sub_1BBB004DC(uint64_t *result, char a2)
{
  v2 = *result;
  if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  if (v2 < 1)
  {
    do
    {
      result = sub_1BBB840A8();
      __break(1u);
LABEL_4:
      ;
    }

    while (v2 <= 0);
  }

  *(result[1] + 80) = v2;
  return result;
}

uint64_t sub_1BBB0056C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  sub_1BBB005D8(v4);

  *(a2 + 88) = v3;
  return result;
}

uint64_t IntelligenceImage.Representation.preferredFormats.setter(uint64_t a1)
{
  sub_1BBB005D8(a1);

  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_1BBB005D8(uint64_t a1)
{
  v2 = sub_1BBB83658();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    while (1)
    {
LABEL_7:
      sub_1BBB840A8();
      __break(1u);
    }
  }

  v12 = *(v6 + 16);
  v11 = v6 + 16;
  v22 = v12;
  v13 = (v11 - 8);
  v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v15 = *(v11 + 56);
  do
  {
    v16 = v11;
    v22(v9, v14, v2, v7);
    sub_1BBB83638();
    v17 = sub_1BBB83648();
    v18 = *v13;
    (*v13)(v4, v2);
    if ((v17 & 1) == 0)
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1BBB84028();

      v23 = 0x2074616D726F46;
      v24 = 0xE700000000000000;
      sub_1BBB07708(&qword_1EBC7BB70, MEMORY[0x1E69E8450]);
      v20 = sub_1BBB842D8();
      MEMORY[0x1BFB16150](v20);

      MEMORY[0x1BFB16150](0xD00000000000001BLL, 0x80000001BBB9BDD0);
      goto LABEL_7;
    }

    result = (v18)(v9, v2);
    v14 += v15;
    --v10;
    v11 = v16;
  }

  while (v10);
  return result;
}

uint64_t (*IntelligenceImage.Representation.preferredFormats.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 88);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_1BBB008D0;
}

uint64_t sub_1BBB008D0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *a1;
  if (a2)
  {

    sub_1BBB005D8(v5);

    *(v2 + 88) = v3;
  }

  else
  {
    sub_1BBB005D8(v4);

    *(v2 + 88) = v3;
  }

  return result;
}

double *sub_1BBB00954(double *result, uint64_t a2)
{
  v2 = *result;
  if (*result < 0.0 || v2 > 1.0)
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  else
  {
    *(a2 + 96) = v2;
  }

  return result;
}

uint64_t IntelligenceImage.Representation.lossyCompressionQuality.setter(double a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  else
  {
    *(v1 + 96) = a1;
  }

  return result;
}

double *(*IntelligenceImage.Representation.lossyCompressionQuality.modify(void *a1))(double *result, char a2)
{
  a1[1] = v1;
  *a1 = *(v1 + 96);
  return sub_1BBB00A74;
}

double *sub_1BBB00A74(double *result, char a2)
{
  v2 = *result;
  v3 = *result >= 0.0;
  if (*result > 1.0)
  {
    v3 = 0;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  while (!v3)
  {
    result = sub_1BBB840A8();
    __break(1u);
LABEL_6:
    ;
  }

  *(*(result + 1) + 96) = v2;
  return result;
}

uint64_t IntelligenceImage.Representation.hash(into:)()
{
  v1 = sub_1BBB83658();
  v31 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v24 = *(v0 + 32);
  v25 = v8;
  LODWORD(v8) = *(v0 + 56);
  v28 = v7;
  v29 = v8;
  v26 = *(v0 + 64);
  v27 = *(v0 + 72);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 96);
  v30 = *(v0 + 104);
  if (v4)
  {
    sub_1BBB84408();
    sub_1BBB83AC8();
    if (v6)
    {
LABEL_3:
      sub_1BBB84408();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BBB84408();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  sub_1BBB84408();
  MEMORY[0x1BFB16A50](v5);
LABEL_6:
  v12 = v10;
  v13 = v27;
  v14 = v29;
  if (v28)
  {
    sub_1BBB84408();
    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_1BBB84408();
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_1BBB84408();
  MEMORY[0x1BFB16A50](v24);
  if (v14)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1BBB84408();
  MEMORY[0x1BFB16A50](v25);
  if (!v13)
  {
LABEL_9:
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v26);
    goto LABEL_13;
  }

LABEL_12:
  sub_1BBB84408();
LABEL_13:
  MEMORY[0x1BFB16A50](v12);
  MEMORY[0x1BFB16A50](*(v9 + 16));
  v15 = *(v9 + 16);
  if (v15)
  {
    v16 = v31 + 16;
    v17 = *(v31 + 16);
    v18 = v9 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v19 = *(v31 + 72);
    v20 = (v31 + 8);
    do
    {
      v21 = v16;
      v17(v3, v18, v1);
      sub_1BBB07708(&qword_1ED6BE4B0, MEMORY[0x1E69E8450]);
      sub_1BBB83918();
      (*v20)(v3, v1);
      v16 = v21;
      v18 += v19;
      --v15;
    }

    while (v15);
  }

  v22 = 0.0;
  if (v11 != 0.0)
  {
    v22 = v11;
  }

  MEMORY[0x1BFB16A80](*&v22);
  return sub_1BBB84408();
}

uint64_t IntelligenceImage.Representation.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceImage.Representation.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB00E50()
{
  sub_1BBB843D8();
  IntelligenceImage.Representation.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB00E94()
{
  sub_1BBB843D8();
  IntelligenceImage.Representation.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceImage.representations.getter()
{
  v0 = sub_1BBB00EFC();

  return sub_1BBB01314(v0);
}

uint64_t sub_1BBB00EFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for IntelligenceImage.InternalRepresentation(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v23 - v8);
  v10 = type metadata accessor for IntelligenceImage(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB083D8(v0, v9, type metadata accessor for IntelligenceImage.InternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *v9;
  if (EnumCaseMultiPayload == 1)
  {
    v16 = v15 + *(*v15 + *MEMORY[0x1E69E6B68] + 16);
    v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v15 + v17));
    sub_1BBB01C98();
    v18 = type metadata accessor for IntelligenceImage.ProviderState(0);
    sub_1BBA8BC5C(v16 + *(v18 + 20), v3, &qword_1EBC7B7F8);
    if ((*(v11 + 48))(v3, 1, v10) == 1)
    {
      sub_1BBA8BCC4(v3, &qword_1EBC7B7F8);
      goto LABEL_9;
    }

    sub_1BBB07860(v3, v13, type metadata accessor for IntelligenceImage);
    os_unfair_lock_unlock((v15 + v17));
  }

  else
  {

    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B868) + 48);
    sub_1BBB083D8(v0, v13, type metadata accessor for IntelligenceImage);
    sub_1BBB08440(v9 + v19, type metadata accessor for IntelligenceFile.Attributes);
  }

  sub_1BBB07860(v13, v7, type metadata accessor for IntelligenceImage.InternalRepresentation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = *v7;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B868);
    sub_1BBB08440(v7 + *(v21 + 48), type metadata accessor for IntelligenceFile.Attributes);
    return v20;
  }

  sub_1BBB08440(v7, type metadata accessor for IntelligenceImage.InternalRepresentation);
LABEL_9:
  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

uint64_t sub_1BBB01314(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BBACAB80();
  result = MEMORY[0x1BFB16300](v2, &type metadata for IntelligenceImage.Representation, v3);
  v5 = 0;
  v6 = *(a1 + 64);
  v23 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      v11 = v5;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = (*(a1 + 48) + 112 * (v12 | (v11 << 6)));
      v15 = v13[1];
      v14 = v13[2];
      v24[0] = *v13;
      v24[1] = v15;
      v24[2] = v14;
      v17 = v13[4];
      v16 = v13[5];
      v18 = v13[3];
      *(v25 + 9) = *(v13 + 89);
      v24[4] = v17;
      v25[0] = v16;
      v24[3] = v18;
      sub_1BBACB4D0(v24, v21);
      sub_1BBAF68E4(v19, v24);
      v21[4] = v19[4];
      v22[0] = v20[0];
      *(v22 + 9) = *(v20 + 9);
      v21[0] = v19[0];
      v21[1] = v19[1];
      v21[2] = v19[2];
      v21[3] = v19[3];
      result = sub_1BBAC7878(v21);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v23;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t IntelligenceImage.image(for:)(_OWORD *a1)
{
  v1 = a1[5];
  v9[4] = a1[4];
  v10[0] = v1;
  *(v10 + 9) = *(a1 + 89);
  v2 = a1[1];
  v9[0] = *a1;
  v9[1] = v2;
  v3 = a1[3];
  v9[2] = a1[2];
  v9[3] = v3;
  v4 = sub_1BBB00EFC();
  if (*(v4 + 16) && (v5 = sub_1BBAE35CC(v9), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for IntelligenceImage.InternalRepresentation(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v24 - v10);
  v12 = type metadata accessor for IntelligenceImage(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB083D8(v1, v11, type metadata accessor for IntelligenceImage.InternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *v11;
  if (EnumCaseMultiPayload == 1)
  {
    v18 = v17 + *(*v17 + *MEMORY[0x1E69E6B68] + 16);
    v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v17 + v19));
    sub_1BBB01C98();
    v20 = type metadata accessor for IntelligenceImage.ProviderState(0);
    sub_1BBA8BC5C(v18 + *(v20 + 20), v5, &qword_1EBC7B7F8);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {
      sub_1BBA8BCC4(v5, &qword_1EBC7B7F8);
      goto LABEL_9;
    }

    sub_1BBB07860(v5, v15, type metadata accessor for IntelligenceImage);
    os_unfair_lock_unlock((v17 + v19));
  }

  else
  {

    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B868) + 48);
    sub_1BBB083D8(v1, v15, type metadata accessor for IntelligenceImage);
    sub_1BBB08440(v11 + v21, type metadata accessor for IntelligenceFile.Attributes);
  }

  sub_1BBB07860(v15, v9, type metadata accessor for IntelligenceImage.InternalRepresentation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B868);
    return sub_1BBB07860(&v9[*(v22 + 48)], a1, type metadata accessor for IntelligenceFile.Attributes);
  }

  sub_1BBB08440(v9, type metadata accessor for IntelligenceImage.InternalRepresentation);
LABEL_9:
  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

uint64_t sub_1BBB019D8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for IntelligenceImage.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BBB083D8(v1, v8, type metadata accessor for IntelligenceImage.InternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v8;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = v10 + *(*v10 + *MEMORY[0x1E69E6B68] + 16);
    v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v10 + v12));
    sub_1BBB01C98();
    v13 = type metadata accessor for IntelligenceImage.ProviderState(0);
    sub_1BBA8BC5C(v11 + *(v13 + 20), v5, &qword_1EBC7B7F8);
    v14 = type metadata accessor for IntelligenceImage(0);
    if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
    {
      sub_1BBA8BCC4(v5, &qword_1EBC7B7F8);
      result = sub_1BBB840A8();
      __break(1u);
    }

    else
    {
      sub_1BBB07860(v5, a1, type metadata accessor for IntelligenceImage);
      os_unfair_lock_unlock((v10 + v12));
    }
  }

  else
  {

    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B868) + 48);
    sub_1BBB083D8(v1, a1, type metadata accessor for IntelligenceImage);
    return sub_1BBB08440(v8 + v16, type metadata accessor for IntelligenceFile.Attributes);
  }

  return result;
}

uint64_t sub_1BBB01C98()
{
  v1 = type metadata accessor for IntelligenceImage.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IntelligenceImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v43 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v21 = &v43 - v18;
  v22 = *v0;
  if (*v0)
  {
    v46 = v1;
    v47 = v3;
    v48 = v7;
    v49 = v19;
    v51 = v20;
    v23 = v0[1];
    v24 = *(v5 + 56);
    *v0 = 0;
    v0[1] = 0;
    v53 = v0;
    v25 = v22;
    v26 = v24(&v43 - v18, 1, 1, v4);
    v50 = v23;
    v52 = v25;
    v25(v26);
    sub_1BBA8BCC4(v21, &qword_1EBC7B7F8);
    v44 = v24;
    v45 = v5 + 56;
    v24(v16, 0, 1, v4);
    sub_1BBAA6758(v16, v21, &qword_1EBC7B7F8);
    sub_1BBA8BC5C(v21, v13, &qword_1EBC7B7F8);
    v27 = v5;
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_1BBA8BCC4(v13, &qword_1EBC7B7F8);
      v28 = v51;
      v29 = v44;
    }

    else
    {
      v30 = v48;
      sub_1BBB07860(v13, v48, type metadata accessor for IntelligenceImage);
      v31 = v47;
      sub_1BBB083D8(v30, v47, type metadata accessor for IntelligenceImage.InternalRepresentation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v28 = v51;
      if (EnumCaseMultiPayload == 1)
      {
        v33 = v4;
        sub_1BBB08440(v31, type metadata accessor for IntelligenceImage.InternalRepresentation);
        if (qword_1ED6BDEB8 != -1)
        {
          swift_once();
        }

        v34 = sub_1BBB83758();
        __swift_project_value_buffer(v34, qword_1ED6BDEC0);
        v35 = sub_1BBB83738();
        v36 = sub_1BBB83D48();
        v37 = os_log_type_enabled(v35, v36);
        v29 = v44;
        if (v37)
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_1BBA81000, v35, v36, "Provider IntelligenceImage provided another provider image. Ignoring the provided image.", v38, 2u);
          v39 = v38;
          v30 = v48;
          MEMORY[0x1BFB174E0](v39, -1, -1);
        }

        sub_1BBB08440(v30, type metadata accessor for IntelligenceImage);
        sub_1BBA8BCC4(v21, &qword_1EBC7B7F8);
        v4 = v33;
        v29(v21, 1, 1, v33);
      }

      else
      {
        sub_1BBB08440(v30, type metadata accessor for IntelligenceImage);
        sub_1BBB08440(v31, type metadata accessor for IntelligenceImage.InternalRepresentation);
        v29 = v44;
      }
    }

    sub_1BBA8BC5C(v21, v28, &qword_1EBC7B7F8);
    if ((*(v27 + 48))(v28, 1, v4) == 1)
    {
      sub_1BBA8BCC4(v28, &qword_1EBC7B7F8);
      v40 = v49;
      sub_1BBB024E4(v49);
      sub_1BBAB3C5C(v52);
      sub_1BBA8BCC4(v21, &qword_1EBC7B7F8);
      v29(v40, 0, 1, v4);
      sub_1BBAA6758(v40, v21, &qword_1EBC7B7F8);
    }

    else
    {
      sub_1BBAB3C5C(v52);
      sub_1BBA8BCC4(v28, &qword_1EBC7B7F8);
    }

    v41 = v53;
    v42 = type metadata accessor for IntelligenceImage.ProviderState(0);
    return sub_1BBAA6910(v21, v41 + *(v42 + 20), &qword_1EBC7B7F8);
  }

  return result;
}

uint64_t IntelligenceImage.init(provider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for IntelligenceImage.ProviderState(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 28);
  v11 = type metadata accessor for IntelligenceImage(0);
  (*(*(v11 - 8) + 56))(&v8[v10], 1, 1, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C118);
  v12 = swift_allocObject();
  *(v12 + ((*(*v12 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1BBB07860(v8, v12 + *(*v12 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for IntelligenceImage.ProviderState);
  *a3 = v12;
  type metadata accessor for IntelligenceImage.InternalRepresentation(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BBB024E4@<X0>(unint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v22 = &v21 - v2;
  v4 = type metadata accessor for IntelligenceFile.Attributes(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BBAC70F4(MEMORY[0x1E69E7CC0]);
  v8 = sub_1BBB83658();
  v21 = *(*(v8 - 8) + 56);
  v21(v3, 1, 1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BBB83498();
  v13 = *(*(v12 - 8) + 56);
  v14 = v13(v11, 1, 1, v12);
  MEMORY[0x1EEE9AC00](v14);
  v13(v11, 1, 1, v12);
  v21(v7, 1, 1, v8);
  v15 = v5[8];
  v16 = &v7[v5[7]];
  v13(&v7[v15], 1, 1, v12);
  v17 = v5[9];
  v13(&v7[v17], 1, 1, v12);
  sub_1BBAA6910(v22, v7, &qword_1EBC7B858);
  *v16 = 0;
  v16[8] = 1;
  sub_1BBAA6910(v11, &v7[v15], &qword_1EBC7B860);
  sub_1BBAA6910(v11, &v7[v17], &qword_1EBC7B860);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B868) + 48);
  v19 = v24;
  *v24 = v23;
  sub_1BBB07860(v7, v19 + v18, type metadata accessor for IntelligenceFile.Attributes);
  type metadata accessor for IntelligenceImage.InternalRepresentation(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t IntelligenceImage.hash(into:)(__int128 *a1)
{
  v2 = sub_1BBB83658();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v34 - v7;
  v9 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BBB00EFC();
  sub_1BBB02D8C(a1, v12);

  _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v11);
  sub_1BBA8BC5C(v11, v8, &qword_1EBC7B858);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1BBB84408();
    sub_1BBB07708(&qword_1ED6BE4B0, MEMORY[0x1E69E8450]);
    sub_1BBB83918();
    (*(v3 + 8))(v5, v2);
  }

  v13 = &v11[*(v9 + 20)];
  if (v13[8] == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    v14 = *v13;
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v14);
  }

  v15 = *(v9 + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
  v34[1] = v34;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v34 - v18;
  sub_1BBA8BC5C(&v11[v15], v34 - v18, &qword_1EBC7B860);
  v20 = sub_1BBB83498();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v19, 1, v20);
  if (v23 == 1)
  {
    v24 = sub_1BBB84408();
  }

  else
  {
    v34[0] = v34;
    v25 = MEMORY[0x1EEE9AC00](v23);
    v27 = v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 32))(v27, v19, v20, v25);
    sub_1BBB84408();
    sub_1BBB07558();
    sub_1BBB83918();
    v24 = (*(v21 + 8))(v27, v20);
  }

  MEMORY[0x1EEE9AC00](v24);
  sub_1BBA8BC5C(&v11[v28], v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1EBC7B860);
  v29 = v22(v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v20);
  if (v29 == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    v31 = MEMORY[0x1EEE9AC00](v29);
    v33 = v34 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 32))(v33, v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v31);
    sub_1BBB84408();
    sub_1BBB07558();
    sub_1BBB83918();
    (*(v21 + 8))(v33, v20);
  }

  return sub_1BBB08440(v11, type metadata accessor for IntelligenceFile.Attributes);
}

uint64_t sub_1BBB02D8C(__int128 *a1, uint64_t a2)
{
  v44 = a1;
  v3 = sub_1BBB83658();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;
  v41 = v4 + 16;
  v39 = v4;
  v40 = (v4 + 8);
  v45 = a2;

  v13 = 0;
  v14 = 0;
  v43 = a2 + 64;
  v42 = v11;
  while (v10)
  {
LABEL_12:
    v17 = __clz(__rbit64(v10)) | (v14 << 6);
    v18 = *(v45 + 56);
    v19 = (*(v45 + 48) + 112 * v17);
    v20 = *v19;
    v21 = v19[2];
    v58 = v19[1];
    v59 = v21;
    v57 = v20;
    v22 = *(v19 + 89);
    v23 = v19[3];
    v24 = v19[5];
    v61 = v19[4];
    *v62 = v24;
    v60 = v23;
    *&v62[9] = v22;
    v25 = *(v18 + 8 * v17);
    v52 = v58;
    v54 = v57;
    v51 = v23;
    v50 = v21;
    v53 = *v62;
    v49 = v61;
    v26 = v22 >> 56;
    v27 = HIBYTE(v22);
    sub_1BBACB4D0(&v57, v55);

    v28 = *(&v53 + 1);
    if (!*(&v53 + 1))
    {
LABEL_31:

      return MEMORY[0x1BFB16A50](v13);
    }

    v57 = v54;
    v58 = v52;
    v59 = v50;
    v60 = v51;
    v61 = v49;
    *v62 = v53;
    *&v62[16] = v26;
    v62[24] = v27;
    v29 = v44[3];
    v55[2] = v44[2];
    v55[3] = v29;
    v56 = *(v44 + 8);
    v30 = *v44;
    v55[1] = v44[1];
    v55[0] = v30;
    if (*(&v54 + 1))
    {
      sub_1BBB84408();

      sub_1BBB83AC8();
    }

    else
    {
      sub_1BBB84408();
    }

    *&v51 = v59;
    v31 = BYTE8(v59);
    *&v53 = v60;
    v32 = BYTE8(v60);
    *&v52 = v61;
    LODWORD(v54) = BYTE8(v61);
    v48 = v13;
    if (BYTE8(v58) == 1)
    {
      sub_1BBB84408();
      if (!v31)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v33 = v58;
      sub_1BBB84408();
      MEMORY[0x1BFB16A50](v33);
      if (!v31)
      {
LABEL_19:
        sub_1BBB84408();
        MEMORY[0x1BFB16A50](v51);
        if (!v32)
        {
          goto LABEL_20;
        }

        goto LABEL_23;
      }
    }

    sub_1BBB84408();
    if (!v32)
    {
LABEL_20:
      sub_1BBB84408();
      MEMORY[0x1BFB16A50](v53);
      goto LABEL_24;
    }

LABEL_23:
    sub_1BBB84408();
LABEL_24:
    *&v53 = v14;
    v47 = v10;
    v46 = v25;
    if (v54)
    {
      sub_1BBB84408();
    }

    else
    {
      sub_1BBB84408();
      MEMORY[0x1BFB16A50](v52);
    }

    MEMORY[0x1BFB16A50](*v62);
    MEMORY[0x1BFB16A50](*(v28 + 16));
    *&v54 = v28;
    v34 = *(v28 + 16);
    v35 = v40;
    if (v34)
    {
      v36 = v54 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v37 = *(v39 + 72);
      v38 = *(v39 + 16);
      do
      {
        v38(v6, v36, v3);
        sub_1BBB07708(&qword_1ED6BE4B0, MEMORY[0x1E69E8450]);
        sub_1BBB83918();
        (*v35)(v6, v3);
        v36 += v37;
        --v34;
      }

      while (v34);
    }

    v10 = (v47 - 1) & v47;

    v15 = *&v62[16];
    if (*&v62[16] == 0.0)
    {
      v15 = 0.0;
    }

    MEMORY[0x1BFB16A80](*&v15);
    sub_1BBB84408();
    sub_1BBAC7878(&v57);
    IntelligenceFile.hash(into:)(v55);

    result = sub_1BBB84438();
    v13 = result ^ v48;
    v7 = v43;
    v11 = v42;
    v14 = v53;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_31;
    }

    v10 = *(v7 + 8 * v16);
    ++v14;
    if (v10)
    {
      v14 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

BOOL static IntelligenceImage.== infix(_:_:)()
{
  v0 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = sub_1BBB00EFC();
  v7 = sub_1BBB00EFC();
  v8 = sub_1BBADF440(v6, v7);

  if (v8)
  {
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v5);
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v2);
    v9 = _s21UIIntelligenceSupport16IntelligenceFileC10AttributesV2eeoiySbAE_AEtFZ_0(v5, v2);
    sub_1BBB08440(v2, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBB08440(v5, type metadata accessor for IntelligenceFile.Attributes);
  }

  else
  {
    return 0;
  }

  return v9;
}

uint64_t IntelligenceImage.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceImage.hash(into:)(v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBB0348C()
{
  sub_1BBB843D8();
  IntelligenceImage.hash(into:)(v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBB034D0()
{
  sub_1BBB843D8();
  IntelligenceImage.hash(into:)(v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBB0350C()
{
  v0 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = sub_1BBB00EFC();
  v7 = sub_1BBB00EFC();
  v8 = sub_1BBADF440(v6, v7);

  if (v8)
  {
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v5);
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v2);
    v9 = static IntelligenceFile.Attributes.== infix(_:_:)(v5, v2);
    sub_1BBB08440(v2, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBB08440(v5, type metadata accessor for IntelligenceFile.Attributes);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t IntelligenceImage.description.getter()
{
  v1 = type metadata accessor for IntelligenceImage.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BBB083D8(v0, v3, type metadata accessor for IntelligenceImage.InternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
    v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
    v8 = *v3;
    os_unfair_lock_lock((v5 + v7));
    v9 = *(v8 + v6);
    os_unfair_lock_unlock((v8 + v7));

    if (v9)
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B868);
    sub_1BBB08440(v3 + *(v11 + 48), type metadata accessor for IntelligenceFile.Attributes);
  }

  v29 = 0xD000000000000012;
  v30 = 0x80000001BBB9BC30;
  result = sub_1BBB00EFC();
  v12 = result;
  v13 = 0;
  v14 = result + 64;
  v15 = 1 << *(result + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(result + 64);
  for (i = (v15 + 63) >> 6; v17; result = )
  {
    v19 = v13;
LABEL_13:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = (*(v12 + 48) + 112 * (v20 | (v19 << 6)));
    v22 = *v21;
    v23 = v21[1];
    v27 = 539828234;
    v28 = 0xE400000000000000;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0x656D616E206F6E28;
    }

    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE900000000000029;
    }

    MEMORY[0x1BFB16150](v24, v25);

    MEMORY[0x1BFB16150](8250, 0xE200000000000000);
    v26 = IntelligenceFile.description.getter();
    MEMORY[0x1BFB16150](v26);

    MEMORY[0x1BFB16150](v27, v28);
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      MEMORY[0x1BFB16150](10506, 0xE200000000000000);
      return v29;
    }

    v17 = *(v14 + 8 * v19);
    ++v13;
    if (v17)
    {
      v13 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBB039A0(int a1)
{
  v61 = sub_1BBB83658();
  v59 = *(v61 - 8);
  v3 = MEMORY[0x1EEE9AC00](v61);
  v60 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[10];
  v5 = v1[11];
  v7 = *(v1 + 12);
  v8 = *(v1 + 104);
  if (v1[1])
  {
    v9 = *v1;
    *&v64 = 0x203A746E6968;
    *(&v64 + 1) = 0xE600000000000000;
    MEMORY[0x1BFB16150](*&v9, v3);
    v10 = v64;
    v11 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1BBA86A94((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    *&v11[16 * v13 + 32] = v10;
    if ((a1 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    if ((a1 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v14 = *(v1 + 2);
  v64 = *(v1 + 1);
  v65 = v14;
  v66[0] = *(v1 + 3);
  *(v66 + 9) = *(v1 + 57);
  if (qword_1ED6BDDC8 != -1)
  {
    swift_once();
  }

  v62[0] = xmmword_1ED6BDDD0;
  v62[1] = *&qword_1ED6BDDE0;
  v63[0] = xmmword_1ED6BDDF0;
  *(v63 + 9) = *(&xmmword_1ED6BDDF0 + 9);
  if (_s21UIIntelligenceSupport17IntelligenceImageV14RepresentationV15SizeConstraintsV2eeoiySbAG_AGtFZ_0(&v64, v62))
  {
LABEL_15:
    if (v6 == 72)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_10:
  *&v64 = 0;
  *(&v64 + 1) = 0xE000000000000000;
  sub_1BBB84028();

  *&v62[0] = 0xD000000000000011;
  *(&v62[0] + 1) = 0x80000001BBB9BD50;
  v15 = *(v1 + 2);
  v64 = *(v1 + 1);
  v65 = v15;
  v66[0] = *(v1 + 3);
  *(v66 + 9) = *(v1 + 57);
  v16 = sub_1BBB04304(1);
  MEMORY[0x1BFB16150](v16);

  v17 = v62[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1BBA86A94(0, *(v11 + 2) + 1, 1, v11);
  }

  v19 = *(v11 + 2);
  v18 = *(v11 + 3);
  if (v19 >= v18 >> 1)
  {
    v11 = sub_1BBA86A94((v18 > 1), v19 + 1, 1, v11);
  }

  *(v11 + 2) = v19 + 1;
  *&v11[16 * v19 + 32] = v17;
  if (a1)
  {
    goto LABEL_15;
  }

LABEL_16:
  *&v64 = 0x203A697064;
  *(&v64 + 1) = 0xE500000000000000;
  *&v62[0] = v6;
  v20 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v20);

  v21 = v64;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1BBA86A94(0, *(v11 + 2) + 1, 1, v11);
  }

  v23 = *(v11 + 2);
  v22 = *(v11 + 3);
  if (v23 >= v22 >> 1)
  {
    v11 = sub_1BBA86A94((v22 > 1), v23 + 1, 1, v11);
  }

  *(v11 + 2) = v23 + 1;
  *&v11[16 * v23 + 32] = v21;
  if ((a1 & 1) == 0)
  {
LABEL_24:
    v24 = *(v5 + 16);
    v25 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v55 = a1;
      v56 = v8;
      v57 = v11;
      *&v64 = MEMORY[0x1E69E7CC0];
      sub_1BBAE4F00(0, v24, 0);
      v25 = v64;
      v26 = v59 + 16;
      v59 = *(v59 + 16);
      v27 = v5 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v58 = *(v26 + 56);
      v28 = (v26 - 8);
      do
      {
        v30 = v60;
        v29 = v61;
        (v59)(v60, v27, v61);
        v31 = sub_1BBB835D8();
        v33 = v32;
        (*v28)(v30, v29);
        *&v64 = v25;
        v35 = *(v25 + 16);
        v34 = *(v25 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1BBAE4F00((v34 > 1), v35 + 1, 1);
          v25 = v64;
        }

        *(v25 + 16) = v35 + 1;
        v36 = v25 + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
        v27 += v58;
        --v24;
      }

      while (v24);
      v11 = v57;
      v8 = v56;
      LOBYTE(a1) = v55;
    }

    *&v64 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
    sub_1BBA86BA4();
    v37 = sub_1BBB83938();
    v39 = v38;

    *&v64 = 0;
    *(&v64 + 1) = 0xE000000000000000;
    sub_1BBB84028();

    *&v64 = 0xD000000000000013;
    *(&v64 + 1) = 0x80000001BBB9BD70;
    MEMORY[0x1BFB16150](v37, v39);

    MEMORY[0x1BFB16150](93, 0xE100000000000000);
    v40 = v64;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1BBA86A94(0, *(v11 + 2) + 1, 1, v11);
    }

    v42 = *(v11 + 2);
    v41 = *(v11 + 3);
    if (v42 >= v41 >> 1)
    {
      v11 = sub_1BBA86A94((v41 > 1), v42 + 1, 1, v11);
    }

    *(v11 + 2) = v42 + 1;
    *&v11[16 * v42 + 32] = v40;
    if ((a1 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_21:
  if (qword_1ED6BEB10 != -1)
  {
    swift_once();
  }

  if ((sub_1BBA94D48(v5, qword_1ED6BEB18) & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_35:
  if (v7 == 0.8)
  {
    goto LABEL_41;
  }

LABEL_36:
  *&v64 = 0;
  *(&v64 + 1) = 0xE000000000000000;
  sub_1BBB84028();
  MEMORY[0x1BFB16150](0xD000000000000019, 0x80000001BBB9BD90);
  sub_1BBB83C98();
  v43 = v64;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1BBA86A94(0, *(v11 + 2) + 1, 1, v11);
  }

  v45 = *(v11 + 2);
  v44 = *(v11 + 3);
  if (v45 >= v44 >> 1)
  {
    v11 = sub_1BBA86A94((v44 > 1), v45 + 1, 1, v11);
  }

  *(v11 + 2) = v45 + 1;
  *&v11[16 * v45 + 32] = v43;
  if (a1)
  {
LABEL_41:
    if (!v8)
    {
      goto LABEL_53;
    }
  }

  *&v64 = 0;
  *(&v64 + 1) = 0xE000000000000000;
  sub_1BBB84028();

  *&v64 = 0xD000000000000015;
  *(&v64 + 1) = 0x80000001BBB9BDB0;
  if (v8)
  {
    v46 = 1702195828;
  }

  else
  {
    v46 = 0x65736C6166;
  }

  if (v8)
  {
    v47 = 0xE400000000000000;
  }

  else
  {
    v47 = 0xE500000000000000;
  }

  MEMORY[0x1BFB16150](v46, v47);

  v48 = v64;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1BBA86A94(0, *(v11 + 2) + 1, 1, v11);
  }

  v50 = *(v11 + 2);
  v49 = *(v11 + 3);
  if (v50 >= v49 >> 1)
  {
    v11 = sub_1BBA86A94((v49 > 1), v50 + 1, 1, v11);
  }

  *(v11 + 2) = v50 + 1;
  *&v11[16 * v50 + 32] = v48;
LABEL_53:
  *&v64 = 0;
  *(&v64 + 1) = 0xE000000000000000;
  sub_1BBB84028();

  *&v64 = 0x6E65736572706552;
  *(&v64 + 1) = 0xEF286E6F69746174;
  *&v62[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v51 = sub_1BBB83938();
  v53 = v52;

  MEMORY[0x1BFB16150](v51, v53);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v64;
}

unint64_t sub_1BBB04304(char a1)
{
  v3 = v1[24];
  v39 = v1[40];
  v4 = v1[56];
  if (v1[8])
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (v1[24])
    {
      goto LABEL_19;
    }

    if ((a1 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_9:
    v40 = 0x686769654878616DLL;
    v42 = 0xEB00000000203A74;
LABEL_14:
    v15 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v15);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1BBA86A94(0, *(v5 + 2) + 1, 1, v5);
    }

    v17 = *(v5 + 2);
    v16 = *(v5 + 3);
    if (v17 >= v16 >> 1)
    {
      v5 = sub_1BBA86A94((v16 > 1), v17 + 1, 1, v5);
    }

    *(v5 + 2) = v17 + 1;
    v18 = &v5[16 * v17];
    *(v18 + 4) = v40;
    *(v18 + 5) = v42;
    goto LABEL_19;
  }

  v6 = v1[56];
  if (a1)
  {
    v7 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v7);

    v5 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v5 + 2);
    v8 = *(v5 + 3);
    if (v9 >= v8 >> 1)
    {
      v5 = sub_1BBA86A94((v8 > 1), v9 + 1, 1, v5);
    }

    *(v5 + 2) = v9 + 1;
    v10 = &v5[16 * v9];
    *(v10 + 4) = 0x687464695778616DLL;
    *(v10 + 5) = 0xEA0000000000203ALL;
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1BBB84028();

    v11 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v11);

    v5 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    if (v13 >= v12 >> 1)
    {
      v5 = sub_1BBA86A94((v12 > 1), v13 + 1, 1, v5);
    }

    *(v5 + 2) = v13 + 1;
    v14 = &v5[16 * v13];
    *(v14 + 4) = 0x6C6578695078616DLL;
    *(v14 + 5) = 0xEF203A6874646957;
    v4 = v6;
    if ((v3 & 1) == 0)
    {
LABEL_13:
      sub_1BBB84028();

      v40 = 0xD000000000000010;
      v42 = 0x80000001BBB9BD30;
      goto LABEL_14;
    }
  }

LABEL_19:
  if ((v39 & 1) == 0)
  {
    if (a1)
    {
      sub_1BBB84028();

      v19 = sub_1BBB842D8();
      MEMORY[0x1BFB16150](v19);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BBA86A94(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v20 = *(v5 + 3);
      if (v21 >= v20 >> 1)
      {
        v5 = sub_1BBA86A94((v20 > 1), v21 + 1, 1, v5);
      }

      *(v5 + 2) = v21 + 1;
      v22 = &v5[16 * v21];
      *(v22 + 4) = 0xD000000000000012;
      *(v22 + 5) = 0x80000001BBB9BD10;
      if (v4)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    sub_1BBB84028();

    v27 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v27);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1BBA86A94(0, *(v5 + 2) + 1, 1, v5);
    }

    v29 = *(v5 + 2);
    v28 = *(v5 + 3);
    if (v29 >= v28 >> 1)
    {
      v5 = sub_1BBA86A94((v28 > 1), v29 + 1, 1, v5);
    }

    *(v5 + 2) = v29 + 1;
    v30 = &v5[16 * v29];
    *(v30 + 4) = 0xD000000000000020;
    *(v30 + 5) = 0x80000001BBB9BCE0;
    if (v4)
    {
      goto LABEL_47;
    }

LABEL_42:
    sub_1BBB84028();

    v31 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v31);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1BBA86A94(0, *(v5 + 2) + 1, 1, v5);
    }

    v33 = *(v5 + 2);
    v32 = *(v5 + 3);
    if (v33 >= v32 >> 1)
    {
      v5 = sub_1BBA86A94((v32 > 1), v33 + 1, 1, v5);
    }

    *(v5 + 2) = v33 + 1;
    v34 = &v5[16 * v33];
    *(v34 + 4) = 0xD000000000000021;
    *(v34 + 5) = 0x80000001BBB9BC90;
    goto LABEL_47;
  }

  if ((v4 & 1) == 0)
  {
    if (a1)
    {
LABEL_31:
      sub_1BBB84028();

      v23 = sub_1BBB842D8();
      MEMORY[0x1BFB16150](v23);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BBA86A94(0, *(v5 + 2) + 1, 1, v5);
      }

      v25 = *(v5 + 2);
      v24 = *(v5 + 3);
      if (v25 >= v24 >> 1)
      {
        v5 = sub_1BBA86A94((v24 > 1), v25 + 1, 1, v5);
      }

      *(v5 + 2) = v25 + 1;
      v26 = &v5[16 * v25];
      *(v26 + 4) = 0xD000000000000013;
      *(v26 + 5) = 0x80000001BBB9BCC0;
      goto LABEL_36;
    }

    goto LABEL_42;
  }

  if ((a1 & 1) == 0)
  {
LABEL_47:
    sub_1BBB84028();

    v41 = 0xD000000000000010;
    goto LABEL_48;
  }

LABEL_36:
  v41 = 40;
LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v35 = sub_1BBB83938();
  v37 = v36;

  MEMORY[0x1BFB16150](v35, v37);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v41;
}

uint64_t sub_1BBB04A94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x656761726F7473;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x80000001BBB9A710;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x656761726F7473;
  }

  if (*a2)
  {
    v6 = 0x80000001BBB9A710;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BBB842F8();
  }

  return v8 & 1;
}

uint64_t sub_1BBB04B40()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB04BC8()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB04C3C()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB04CC0@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

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

  *a1 = v4;
  return result;
}

void sub_1BBB04D20(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BBB9A710;
  v3 = 0x656761726F7473;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1BBB04D64()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x656761726F7473;
  }
}

uint64_t sub_1BBB04DA4@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

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

  *a1 = v4;
  return result;
}

uint64_t sub_1BBB04E08(uint64_t a1)
{
  v2 = sub_1BBB075A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB04E44(uint64_t a1)
{
  v2 = sub_1BBB075A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceImage.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = v36 - v5;
  v6 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v46 = v36 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C120);
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB075A4();
  sub_1BBB84478();
  v17 = *(sub_1BBB00EFC() + 16);

  v43 = v6;
  if (v17)
  {
    v50 = sub_1BBB00EFC();
    v49 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C130);
    sub_1BBB075F8();
    v18 = v47;
    sub_1BBB84288();

    if (v18)
    {
      return (*(v44 + 8))(v16, v14);
    }

    v41 = v16;
    v42 = v14;
    v37 = v8;
    v47 = 0;
  }

  else
  {
    v41 = v16;
    v42 = v14;
    v37 = v8;
  }

  _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v46);
  v20 = sub_1BBB83658();
  v38 = *(*(v20 - 8) + 56);
  v36[1] = v2;
  v38(v45, 1, 1, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
  v40 = v36;
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BBB83498();
  v25 = *(*(v24 - 8) + 56);
  v26 = v25(v23, 1, 1, v24);
  v39 = v36;
  v27 = MEMORY[0x1EEE9AC00](v26);
  (v25)(v23, 1, 1, v24, v27);
  v38(v11, 1, 1, v20);
  v28 = v43;
  v29 = *(v43 + 24);
  v30 = &v11[*(v43 + 20)];
  v25(&v11[v29], 1, 1, v24);
  v31 = *(v28 + 28);
  v25(&v11[v31], 1, 1, v24);
  sub_1BBAA6910(v45, v11, &qword_1EBC7B858);
  *v30 = 0;
  v30[8] = 1;
  sub_1BBAA6910(v23, &v11[v29], &qword_1EBC7B860);
  sub_1BBAA6910(v23, &v11[v31], &qword_1EBC7B860);
  v32 = v46;
  LOBYTE(v22) = _s21UIIntelligenceSupport16IntelligenceFileC10AttributesV2eeoiySbAE_AEtFZ_0(v46, v11);
  sub_1BBB08440(v32, type metadata accessor for IntelligenceFile.Attributes);
  sub_1BBB08440(v11, type metadata accessor for IntelligenceFile.Attributes);
  if (v22)
  {
    return (*(v44 + 8))(v41, v42);
  }

  v33 = v37;
  _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v37);
  v48 = 1;
  sub_1BBB07708(&qword_1EBC7ADF8, type metadata accessor for IntelligenceFile.Attributes);
  v34 = v42;
  v35 = v41;
  sub_1BBB84288();
  sub_1BBB08440(v33, type metadata accessor for IntelligenceFile.Attributes);
  return (*(v44 + 8))(v35, v34);
}

uint64_t IntelligenceImage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B848);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v48 - v6;
  v7 = type metadata accessor for IntelligenceFile.Attributes(0);
  v59 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C148);
  v62 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for IntelligenceImage(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB075A4();
  v16 = v64;
  sub_1BBB84458();
  if (!v16)
  {
    v58 = v15;
    v64 = v9;
    v17 = v62;
    v18 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C130);
    v66 = 0;
    sub_1BBB07750();
    sub_1BBB84178();
    v19 = v10;
    if (v67)
    {
      v57 = v67;
    }

    else
    {
      v57 = sub_1BBAC70F4(MEMORY[0x1E69E7CC0]);
    }

    v20 = v61;
    v21 = v7;
    v65 = 1;
    sub_1BBB07708(&qword_1EBC7ADF0, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBB84178();
    v17[1](v12, v19);
    v22 = v60;
    v23 = v59 + 48;
    v24 = *(v59 + 48);
    if ((v24)(v20, 1, v21) == 1)
    {
      v25 = sub_1BBB83658();
      v59 = v23;
      v52 = v25;
      v26 = *(v25 - 8);
      v51 = *(v26 + 56);
      v53 = v26 + 56;
      v51(v22, 1, 1, v25);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
      v55 = &v48;
      v28 = *(v27 - 8);
      v62 = v24;
      v29 = *(v28 + 64);
      MEMORY[0x1EEE9AC00](v27 - 8);
      v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
      v50 = &v48 - v30;
      v31 = sub_1BBB83498();
      v32 = *(v31 - 8);
      v56 = v21;
      v33 = *(v32 + 56);
      v34 = (v33)(&v48 - v30, 1, 1, v31);
      v54 = &v48;
      v35 = MEMORY[0x1EEE9AC00](v34);
      v49 = &v48 - v30;
      v33(v35);
      v36 = v64;
      v51(v64, 1, 1, v52);
      v37 = v56;
      v38 = *(v56 + 20);
      v53 = *(v56 + 24);
      v39 = v36 + v38;
      (v33)(v36 + v53, 1, 1, v31);
      v40 = *(v37 + 28);
      (v33)(v36 + v40, 1, 1, v31);
      sub_1BBAA6910(v60, v36, &qword_1EBC7B858);
      *v39 = 0;
      *(v39 + 8) = 1;
      sub_1BBAA6910(v50, v36 + v53, &qword_1EBC7B860);
      v41 = v36 + v40;
      v42 = v61;
      sub_1BBAA6910(v49, v41, &qword_1EBC7B860);
      v43 = (v62)(v42, 1, v56);
      v44 = v18;
      v45 = v58;
      if (v43 != 1)
      {
        sub_1BBA8BCC4(v42, &qword_1EBC7B848);
      }
    }

    else
    {
      v36 = v64;
      sub_1BBB07860(v20, v64, type metadata accessor for IntelligenceFile.Attributes);
      v44 = v18;
      v45 = v58;
    }

    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B868) + 48);
    *v45 = v57;
    sub_1BBB07860(v36, v45 + v46, type metadata accessor for IntelligenceFile.Attributes);
    type metadata accessor for IntelligenceImage.InternalRepresentation(0);
    swift_storeEnumTagMultiPayload();
    sub_1BBB07860(v45, v44, type metadata accessor for IntelligenceImage);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB05B50()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB05C48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB08340();
  *a1 = result;
  return result;
}

void sub_1BBB05C78(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1953393000;
  v5 = 0xD000000000000010;
  v6 = 0x80000001BBB9A740;
  v7 = 0x80000001BBB9A760;
  v8 = 0xD000000000000017;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001BBB9A780;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEF73746E69617274;
  v10 = 0x736E6F43657A6973;
  if (v2 != 1)
  {
    v10 = 6910052;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1BBB05D38()
{
  v1 = *v0;
  v2 = 1953393000;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000017;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x736E6F43657A6973;
  if (v1 != 1)
  {
    v5 = 6910052;
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

uint64_t sub_1BBB05DF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB08340();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB05E28(uint64_t a1)
{
  v2 = sub_1BBB078C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB05E64(uint64_t a1)
{
  v2 = sub_1BBB078C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceImage.Representation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C160);
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = *(v3 + 8);
  v9 = *(v3 + 88);
  v16 = *(v3 + 80);
  v17 = v9;
  v10 = *(v3 + 96);
  HIDWORD(v15) = *(v3 + 104);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB078C8();
  sub_1BBB84478();
  if (!v8 || (LOBYTE(v21) = 0, sub_1BBB84248(), !v2))
  {
    v11 = *(v3 + 32);
    v21 = *(v3 + 16);
    v22 = v11;
    v23[0] = *(v3 + 48);
    *(v23 + 9) = *(v3 + 57);
    if (qword_1ED6BDDC8 != -1)
    {
      swift_once();
    }

    v19[0] = xmmword_1ED6BDDD0;
    v19[1] = *&qword_1ED6BDDE0;
    v20[0] = xmmword_1ED6BDDF0;
    *(v20 + 9) = *(&xmmword_1ED6BDDF0 + 9);
    if (_s21UIIntelligenceSupport17IntelligenceImageV14RepresentationV15SizeConstraintsV2eeoiySbAG_AGtFZ_0(&v21, v19) || (v12 = *(v3 + 32), v21 = *(v3 + 16), v22 = v12, v23[0] = *(v3 + 48), *(v23 + 9) = *(v3 + 57), LOBYTE(v19[0]) = 1, sub_1BBB0791C(), sub_1BBB84288(), !v2))
    {
      v13 = v17;
      if (v16 == 72 || (LOBYTE(v21) = 2, sub_1BBB84278(), !v2))
      {
        if (qword_1ED6BEB10 != -1)
        {
          swift_once();
        }

        if ((sub_1BBA94D48(v13, qword_1ED6BEB18) & 1) != 0 || (sub_1BBB0620C(v13, 3, &qword_1EBC7C160, &unk_1BBB8A800), !v2))
        {
          if (v10 == 0.8 || (LOBYTE(v21) = 4, sub_1BBB84268(), !v2))
          {
            if (HIDWORD(v15))
            {
              LOBYTE(v21) = 5;
              sub_1BBB84258();
            }
          }
        }
      }
    }
  }

  return (*(v18 + 8))(v7, v5);
}