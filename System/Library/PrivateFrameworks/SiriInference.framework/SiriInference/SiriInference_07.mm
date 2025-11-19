void ContactHandle.hash(into:)()
{
  OUTLINED_FUNCTION_101_0();
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = *(v0 + 72);
  v10 = *(v0 + 73);
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](v3);
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD640E48();
  if (v10 != 2)
  {
    sub_1DD640E48();
  }

  sub_1DD640E48();
  OUTLINED_FUNCTION_100_0();
}

uint64_t ContactHandle.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  ContactHandle.hash(into:)();
  return sub_1DD640E78();
}

void ContactHandle.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC570, &qword_1DD646970);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[3];
  v10 = v2[4];
  v11 = OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_41_3(v11, v12);
  sub_1DD415DCC();
  sub_1DD640ED8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v31[0]) = 0;
    v13 = sub_1DD640B28();
    v15 = v14;
    LOBYTE(v30[0]) = 1;
    sub_1DD415E74();
    sub_1DD640B78();
    OUTLINED_FUNCTION_8_8(2);
    v26 = sub_1DD640B28();
    v29 = v16;
    OUTLINED_FUNCTION_8_8(3);
    v17 = sub_1DD640B28();
    v27 = v18;
    v25 = v17;
    OUTLINED_FUNCTION_8_8(4);
    v24 = sub_1DD640B28();
    v28 = v19;
    OUTLINED_FUNCTION_8_8(5);
    v23 = sub_1DD640B38();
    v20 = sub_1DD640AE8();
    v21 = OUTLINED_FUNCTION_23_8();
    v22(v21);
    v30[0] = v13;
    v30[1] = v15;
    LOBYTE(v30[2]) = 0;
    v30[3] = v26;
    v30[4] = v29;
    v30[5] = v25;
    v30[6] = v27;
    v30[7] = v24;
    v30[8] = v28;
    LOBYTE(v30[9]) = v23 & 1;
    BYTE1(v30[9]) = v20;
    memcpy(v4, v30, 0x4AuLL);
    sub_1DD3C6A40(v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v31[0] = v13;
    v31[1] = v15;
    v32 = 0;
    v33 = v26;
    v34 = v29;
    v35 = v25;
    v36 = v27;
    v37 = v24;
    v38 = v28;
    v39 = v23 & 1;
    v40 = v20;
    sub_1DD3C6A9C(v31);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD413544@<X0>(uint64_t *a1@<X8>)
{
  result = ContactHandle.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD41357C()
{
  sub_1DD640E28();
  ContactHandle.hash(into:)();
  return sub_1DD640E78();
}

uint64_t ContactSource.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_57_3();
  sub_1DD640EC8();
  if (!v2)
  {
    OUTLINED_FUNCTION_41_3(v11, v11[3]);
    OUTLINED_FUNCTION_57_3();
    v7 = sub_1DD640CE8();
    v8 = v6;
    v9 = v7 == 0xD00000000000001BLL && 0x80000001DD66B290 == v6;
    if (v9 || (sub_1DD640CD8() & 1) != 0)
    {

      v7 = 0;
      v8 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v7;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ContactSource.encode(to:)(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_20_2();
  sub_1DD640EE8();
  OUTLINED_FUNCTION_26_1();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);

  sub_1DD640CF8();

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t ContactSource.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x1E12B3140](0);
  }

  v1 = *v0;
  MEMORY[0x1E12B3140](1);
  OUTLINED_FUNCTION_11_0();

  return sub_1DD63FD28();
}

uint64_t ContactSource.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_79();
  if (v2)
  {
    MEMORY[0x1E12B3140](1);
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD4138B8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD640E28();
  if (v2)
  {
    MEMORY[0x1E12B3140](1);
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD413950(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7269666E6F636E75 && a2 == 0xEB0000000064656DLL;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x506D6F7246746F6ELL && a2 == 0xEB0000000053554CLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

uint64_t sub_1DD413A70(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](a1);
  return sub_1DD640E78();
}

uint64_t sub_1DD413AB0(char a1)
{
  if (!a1)
  {
    return 0x656D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x7269666E6F636E75;
  }

  return 0x506D6F7246746F6ELL;
}

uint64_t sub_1DD413B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD413950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD413B58(uint64_t a1)
{
  v2 = sub_1DD415F18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD413B94(uint64_t a1)
{
  v2 = sub_1DD415F18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD413BF0@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DD413C1C(uint64_t a1)
{
  v2 = sub_1DD416014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD413C58(uint64_t a1)
{
  v2 = sub_1DD416014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD413C94(uint64_t a1)
{
  v2 = sub_1DD415F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD413CD0(uint64_t a1)
{
  v2 = sub_1DD415F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD413D0C(uint64_t a1)
{
  v2 = sub_1DD415FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD413D48(uint64_t a1)
{
  v2 = sub_1DD415FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlusSuggestionStatus.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC578, &qword_1DD646978);
  v6 = OUTLINED_FUNCTION_0(v5);
  v41 = v7;
  v42 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_3();
  v40 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC580, &qword_1DD646980);
  v13 = OUTLINED_FUNCTION_0(v12);
  v38 = v14;
  v39 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_3();
  v37 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC588, &qword_1DD646988);
  v20 = OUTLINED_FUNCTION_0(v19);
  v35 = v21;
  v36 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_21_5();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC590, &qword_1DD646990);
  OUTLINED_FUNCTION_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_66_1();
  v31 = *v0;
  v32 = v4[4];
  OUTLINED_FUNCTION_41_3(v4, v4[3]);
  sub_1DD415F18();
  sub_1DD640EF8();
  if (v31)
  {
    if (v31 == 1)
    {
      OUTLINED_FUNCTION_58();
      sub_1DD415FC0();
      v1 = v37;
      OUTLINED_FUNCTION_52_0();
      v34 = v38;
      v33 = v39;
    }

    else
    {
      sub_1DD415F6C();
      v1 = v40;
      OUTLINED_FUNCTION_52_0();
      v34 = v41;
      v33 = v42;
    }
  }

  else
  {
    sub_1DD416014();
    OUTLINED_FUNCTION_52_0();
    v34 = v35;
    v33 = v36;
  }

  (*(v34 + 8))(v1, v33);
  (*(v27 + 8))(v2, v25);
  OUTLINED_FUNCTION_86();
}

uint64_t PlusSuggestionStatus.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

void PlusSuggestionStatus.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v73 = v0;
  v4 = v3;
  v68 = v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5A8, &qword_1DD646998);
  OUTLINED_FUNCTION_0(v72);
  v69 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_3();
  v71 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5B0, &qword_1DD6469A0);
  v12 = OUTLINED_FUNCTION_0(v11);
  v66 = v13;
  v67 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32_6();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5B8, &qword_1DD6469A8);
  OUTLINED_FUNCTION_0(v17);
  v65 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C0, &unk_1DD6469B0);
  OUTLINED_FUNCTION_0(v24);
  v70 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_22_4();
  v29 = v4[4];
  OUTLINED_FUNCTION_41_3(v4, v4[3]);
  sub_1DD415F18();
  v30 = v73;
  sub_1DD640ED8();
  if (v30)
  {
    goto LABEL_10;
  }

  v62 = v17;
  v63 = v23;
  v64 = v1;
  v32 = v71;
  v31 = v72;
  v73 = v4;
  v33 = sub_1DD640B98();
  sub_1DD4153EC(v33, 0);
  if (v36 == v37 >> 1)
  {
    goto LABEL_9;
  }

  v61 = 0;
  if (v36 < (v37 >> 1))
  {
    LODWORD(v38) = *(v35 + v36);
    sub_1DD417948(v36 + 1, v37 >> 1, v34, v35, v36, v37);
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    v43 = v40 == v42 >> 1;
    v44 = v69;
    if (v43)
    {
      if (v38)
      {
        if (v38 == 1)
        {
          OUTLINED_FUNCTION_58();
          sub_1DD415FC0();
          v45 = v64;
          OUTLINED_FUNCTION_104();
          v46 = v68;
          v47 = v24;
          v48 = v70;
          swift_unknownObjectRelease();
          (*(v66 + 8))(v45, v67);
          (*(v48 + 8))(v2, v47);
        }

        else
        {
          LODWORD(v67) = v38;
          sub_1DD415F6C();
          v56 = v61;
          sub_1DD640AB8();
          v46 = v68;
          v38 = v24;
          v57 = v70;
          if (v56)
          {
            (*(v70 + 8))(v2, v38);
            swift_unknownObjectRelease();
            v4 = v73;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v44 + 8))(v32, v31);
          (*(v57 + 8))(v2, v38);
          LOBYTE(v38) = v67;
        }
      }

      else
      {
        sub_1DD416014();
        v55 = v63;
        OUTLINED_FUNCTION_104();
        swift_unknownObjectRelease();
        (*(v65 + 8))(v55, v62);
        v58 = OUTLINED_FUNCTION_86_1();
        v59(v58);
        v46 = v68;
      }

      *v46 = v38;
      __swift_destroy_boxed_opaque_existential_1(v73);
      goto LABEL_11;
    }

LABEL_9:
    v49 = sub_1DD640938();
    swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C8, &qword_1DD6559A0) + 48);
    *v51 = &type metadata for PlusSuggestionStatus;
    sub_1DD640AC8();
    sub_1DD640928();
    v53 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_72(v49);
    (*(v54 + 104))(v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v2, v24);
    v4 = v73;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_11:
    OUTLINED_FUNCTION_86();
    return;
  }

  __break(1u);
}

void sub_1DD4147B4(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 isSuggested];
  v7 = [a1 identifier];
  v8 = sub_1DD63FDD8();
  v29 = v9;

  v10 = [a1 label];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1DD63FDD8();
    v27 = v13;
    v28 = v12;
  }

  else
  {
    v27 = 0xE000000000000000;
    v28 = 0;
  }

  v14 = [a1 value];
  v15 = sub_1DD63FDD8();
  v17 = v16;

  if (a2)
  {
    if (a2 == 1)
    {
      v18 = *MEMORY[0x1E69964B0];

      v19 = sub_1DD63FDA8();

      v20 = (*(v18 + 16))(v18, v19);

      v21 = sub_1DD63FDD8();
      v23 = v22;
    }

    else
    {
      sub_1DD3EB444();
      swift_bridgeObjectRetain_n();
      v25 = sub_1DD40B8E0();
      v21 = sub_1DD415480(v25);
      v23 = v26;

      if (!v23)
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }
    }
  }

  else
  {

    v21 = sub_1DD40B5BC();
    v23 = v24;
  }

  *a3 = v8;
  *(a3 + 8) = v29;
  *(a3 + 16) = a2;
  *(a3 + 24) = v28;
  *(a3 + 32) = v27;
  *(a3 + 40) = v15;
  *(a3 + 48) = v17;
  *(a3 + 56) = v21;
  *(a3 + 64) = v23;
  *(a3 + 72) = v6;
  *(a3 + 73) = 2;
}

void sub_1DD4149DC(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 isSuggested];
  v7 = [a1 identifier];
  v8 = sub_1DD63FDD8();
  v30 = v9;

  v10 = [a1 label];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1DD63FDD8();
    v28 = v13;
    v29 = v12;
  }

  else
  {
    v28 = 0xE000000000000000;
    v29 = 0;
  }

  v14 = [a1 value];
  v15 = [v14 stringValue];
  v16 = sub_1DD63FDD8();
  v18 = v17;

  if (a2)
  {
    if (a2 == 1)
    {
      v19 = *MEMORY[0x1E69964B0];

      v20 = sub_1DD63FDA8();

      v21 = (*(v19 + 16))(v19, v20);

      v22 = sub_1DD63FDD8();
      v24 = v23;
    }

    else
    {
      sub_1DD3EB444();
      swift_bridgeObjectRetain_n();
      v26 = sub_1DD40B8E0();
      v22 = sub_1DD415480(v26);
      v24 = v27;

      if (!v24)
      {
        v22 = 0;
        v24 = 0xE000000000000000;
      }
    }
  }

  else
  {

    v22 = sub_1DD40B5BC();
    v24 = v25;
  }

  *a3 = v8;
  *(a3 + 8) = v30;
  *(a3 + 16) = a2;
  *(a3 + 24) = v29;
  *(a3 + 32) = v28;
  *(a3 + 40) = v16;
  *(a3 + 48) = v18;
  *(a3 + 56) = v22;
  *(a3 + 64) = v24;
  *(a3 + 72) = v6;
  *(a3 + 73) = 2;
}

void sub_1DD414C20()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  v10 = v8[1];
  v11 = v4[3];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  v13 = sub_1DD5E8878(v9, v10, v3, v11, v12);
  v14 = v13;
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_31_0();
    *(v15 - 16) = v5;
    v17 = sub_1DD6043E4(sub_1DD417894, v16, v14);

    v14 = v17;
  }

  *v7 = v14;
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD414D00@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v18 - v8;
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 8))(v11, v12);
  v13 = sub_1DD63D168();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  sub_1DD3B7F10();
  v14 = sub_1DD6406C8();
  v16 = v15;
  result = sub_1DD417838(v9, &qword_1ECCDC3F0, &unk_1DD64AF50);
  *a3 = v14;
  a3[1] = v16;
  return result;
}

uint64_t sub_1DD414E38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6156656C646E6168 && a2 == 0xEC0000007365756CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD414EFC(char a1)
{
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](a1 & 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD414F3C(char a1)
{
  if (a1)
  {
    return 0x6156656C646E6168;
  }

  else
  {
    return 25705;
  }
}

void sub_1DD414F70()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC6D8, &qword_1DD647E40);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_5();
  v10 = v3[4];
  OUTLINED_FUNCTION_41_3(v3, v3[3]);
  sub_1DD417DAC();
  OUTLINED_FUNCTION_98_0();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_97_0();
  sub_1DD640C18();
  if (!v0)
  {
    OUTLINED_FUNCTION_58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD417E00(&unk_1EE1638D0);
    sub_1DD640C68();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD415100(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC6C8, &unk_1DD647E30);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_4();
  v7 = a1[4];
  OUTLINED_FUNCTION_41_3(a1, a1[3]);
  sub_1DD417DAC();
  sub_1DD640ED8();
  if (!v1)
  {
    v7 = sub_1DD640B28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD417E00(&unk_1EE160268);
    sub_1DD640B78();
    v9 = OUTLINED_FUNCTION_67();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1DD4152FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD414E38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD415324(uint64_t a1)
{
  v2 = sub_1DD417DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD415360(uint64_t a1)
{
  v2 = sub_1DD417DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD41539C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD415100(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_1DD4153CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DD414F70();
}

void sub_1DD4153EC(uint64_t a1, uint64_t a2)
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
    OUTLINED_FUNCTION_40_3();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1DD415424(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1DD63FDD8();
  }

  return OUTLINED_FUNCTION_15_0();
}

void *sub_1DD415480(void *a1)
{
  v1 = a1;
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  sub_1DD63FDD8();
  OUTLINED_FUNCTION_77_0();

  return v1;
}

uint64_t type metadata accessor for Contact()
{
  result = qword_1EE165DE0;
  if (!qword_1EE165DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD415538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4155A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD415648()
{
  result = qword_1ECCDC508;
  if (!qword_1ECCDC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC508);
  }

  return result;
}

unint64_t sub_1DD415704()
{
  result = qword_1ECCDC520;
  if (!qword_1ECCDC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC520);
  }

  return result;
}

unint64_t sub_1DD415758()
{
  result = qword_1EE163BE0;
  if (!qword_1EE163BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163BE0);
  }

  return result;
}

unint64_t sub_1DD4157AC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC550, &qword_1DD646958);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD415820()
{
  result = qword_1EE1659F0;
  if (!qword_1EE1659F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1659F0);
  }

  return result;
}

unint64_t sub_1DD415874()
{
  result = qword_1EE1659E0;
  if (!qword_1EE1659E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1659E0);
  }

  return result;
}

unint64_t sub_1DD4158C8()
{
  result = qword_1EE165210;
  if (!qword_1EE165210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165210);
  }

  return result;
}

uint64_t sub_1DD41591C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B3140](v3);
  if (v3)
  {
    v5 = (a2 + 105);
    do
    {
      v6 = *(v5 - 73);
      v7 = *(v5 - 65);
      v8 = *(v5 - 57);
      v9 = *(v5 - 41);
      v13 = *(v5 - 49);
      v14 = *(v5 - 33);
      v10 = *(v5 - 25);
      v15 = *(v5 - 17);
      v11 = *(v5 - 9);
      v16 = *(v5 - 1);
      v12 = *v5;

      sub_1DD63FD28();
      MEMORY[0x1E12B3140](v8);
      sub_1DD63FD28();
      sub_1DD63FD28();
      sub_1DD63FD28();
      sub_1DD640E48();
      if (v12 != 2)
      {
        sub_1DD640E48();
      }

      v5 += 80;
      sub_1DD640E48();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DD415A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B3140](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;

      sub_1DD63FD28();
      sub_1DD63FD28();
      sub_1DD63FD28();

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DD415B40(uint64_t a1)
{
  v2 = type metadata accessor for Contact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD415B9C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC548, &qword_1DD646950);
    sub_1DD415C20(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD415C20(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBC50, &qword_1DD644060);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD415C6C()
{
  result = qword_1EE1659E8;
  if (!qword_1EE1659E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1659E8);
  }

  return result;
}

unint64_t sub_1DD415CC0()
{
  result = qword_1EE1630B8;
  if (!qword_1EE1630B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1630B8);
  }

  return result;
}

unint64_t sub_1DD415D14()
{
  result = qword_1EE161D70[0];
  if (!qword_1EE161D70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE161D70);
  }

  return result;
}

uint64_t sub_1DD415D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD415DCC()
{
  result = qword_1EE165A08;
  if (!qword_1EE165A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A08);
  }

  return result;
}

unint64_t sub_1DD415E20()
{
  result = qword_1EE165A18;
  if (!qword_1EE165A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A18);
  }

  return result;
}

unint64_t sub_1DD415E74()
{
  result = qword_1EE1630D0;
  if (!qword_1EE1630D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1630D0);
  }

  return result;
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

unint64_t sub_1DD415F18()
{
  result = qword_1EE165260;
  if (!qword_1EE165260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165260);
  }

  return result;
}

unint64_t sub_1DD415F6C()
{
  result = qword_1EE165228;
  if (!qword_1EE165228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165228);
  }

  return result;
}

unint64_t sub_1DD415FC0()
{
  result = qword_1ECCDC598;
  if (!qword_1ECCDC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC598);
  }

  return result;
}

unint64_t sub_1DD416014()
{
  result = qword_1ECCDC5A0;
  if (!qword_1ECCDC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC5A0);
  }

  return result;
}

void sub_1DD416068(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_103(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      OUTLINED_FUNCTION_64_2();
      sub_1DD63FD28();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1DD4160C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_103(a1, a2);
  if (v2)
  {
    v4 = (v3 + 72);
    do
    {
      v5 = *(v4 - 40);
      v6 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      v4 += 6;
      v11 = v10;
      MEMORY[0x1E12B3140](v5);

      OUTLINED_FUNCTION_64_2();
      sub_1DD63FD28();
      sub_1DD63FD28();
      if (v10 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v11;
      }

      MEMORY[0x1E12B3170](*&v12);

      --v2;
    }

    while (v2);
  }
}

unint64_t sub_1DD4161A4()
{
  result = qword_1ECCDC5D8;
  if (!qword_1ECCDC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC5D8);
  }

  return result;
}

unint64_t sub_1DD4161FC()
{
  result = qword_1ECCDC5E0;
  if (!qword_1ECCDC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC5E0);
  }

  return result;
}

unint64_t sub_1DD416254()
{
  result = qword_1ECCDC5E8;
  if (!qword_1ECCDC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC5E8);
  }

  return result;
}

unint64_t sub_1DD4162A8()
{
  result = qword_1ECCDC5F0[0];
  if (!qword_1ECCDC5F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCDC5F0);
  }

  return result;
}

void sub_1DD416324()
{
  sub_1DD3BB974(319, &qword_1EE1638C8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1DD416480();
    if (v1 <= 0x3F)
    {
      sub_1DD4164E4();
      if (v2 <= 0x3F)
      {
        sub_1DD3BB974(319, &qword_1EE163940, &type metadata for ContactHandle, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD416480()
{
  if (!qword_1EE1638F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBC50, &qword_1DD644060);
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1638F8);
    }
  }
}

void sub_1DD4164E4()
{
  if (!qword_1EE166060)
  {
    sub_1DD63CBB8();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE166060);
    }
  }
}

uint64_t sub_1DD416544(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD4165C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 32) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1DD41674C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((v10 + 32) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
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
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DD4169A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1DD4169E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD416A70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_1DD416AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD416B24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD416B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Contact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Contact.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Contact.PostalAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Contact.PostalAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD416FE4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_82_1(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4170CC()
{
  result = qword_1ECCDC678;
  if (!qword_1ECCDC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC678);
  }

  return result;
}

unint64_t sub_1DD417124()
{
  result = qword_1ECCDC680;
  if (!qword_1ECCDC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC680);
  }

  return result;
}

unint64_t sub_1DD41717C()
{
  result = qword_1ECCDC688;
  if (!qword_1ECCDC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC688);
  }

  return result;
}

unint64_t sub_1DD4171D4()
{
  result = qword_1ECCDC690;
  if (!qword_1ECCDC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC690);
  }

  return result;
}

unint64_t sub_1DD41722C()
{
  result = qword_1ECCDC698;
  if (!qword_1ECCDC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC698);
  }

  return result;
}

unint64_t sub_1DD417284()
{
  result = qword_1EE165240;
  if (!qword_1EE165240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165240);
  }

  return result;
}

unint64_t sub_1DD4172DC()
{
  result = qword_1EE165248;
  if (!qword_1EE165248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165248);
  }

  return result;
}

unint64_t sub_1DD417334()
{
  result = qword_1EE165218;
  if (!qword_1EE165218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165218);
  }

  return result;
}

unint64_t sub_1DD41738C()
{
  result = qword_1EE165220;
  if (!qword_1EE165220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165220);
  }

  return result;
}

unint64_t sub_1DD4173E4()
{
  result = qword_1EE165230;
  if (!qword_1EE165230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165230);
  }

  return result;
}

unint64_t sub_1DD41743C()
{
  result = qword_1EE165238;
  if (!qword_1EE165238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165238);
  }

  return result;
}

unint64_t sub_1DD417494()
{
  result = qword_1EE165250;
  if (!qword_1EE165250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165250);
  }

  return result;
}

unint64_t sub_1DD4174EC()
{
  result = qword_1EE165258;
  if (!qword_1EE165258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165258);
  }

  return result;
}

unint64_t sub_1DD417544()
{
  result = qword_1EE1659F8;
  if (!qword_1EE1659F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1659F8);
  }

  return result;
}

unint64_t sub_1DD41759C()
{
  result = qword_1EE165A00;
  if (!qword_1EE165A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A00);
  }

  return result;
}

unint64_t sub_1DD4175F4()
{
  result = qword_1EE163BD0;
  if (!qword_1EE163BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163BD0);
  }

  return result;
}

unint64_t sub_1DD41764C()
{
  result = qword_1EE163BD8;
  if (!qword_1EE163BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163BD8);
  }

  return result;
}

unint64_t sub_1DD4176A4()
{
  result = qword_1ECCDC6A0;
  if (!qword_1ECCDC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6A0);
  }

  return result;
}

unint64_t sub_1DD4176FC()
{
  result = qword_1ECCDC6A8;
  if (!qword_1ECCDC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6A8);
  }

  return result;
}

unint64_t sub_1DD417754()
{
  result = qword_1ECCDC6B0;
  if (!qword_1ECCDC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6B0);
  }

  return result;
}

unint64_t sub_1DD4177AC()
{
  result = qword_1ECCDC6B8;
  if (!qword_1ECCDC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6B8);
  }

  return result;
}

uint64_t sub_1DD417838(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_72(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1DD4178B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DD4178F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DD417948(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_1DD4179C4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26[3] = a4;
  v26[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_72(a4);
  (*(v8 + 16))();
  memcpy(v25, a3, sizeof(v25));
  sub_1DD41E024();
  v10 = isUniquelyReferenced_nonNull_native;
  if (!*(isUniquelyReferenced_nonNull_native + 16))
  {
    v12 = a3[19];
    v11 = a3[20];
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_87_1();
        sub_1DD3BE2A4();
        v10 = isUniquelyReferenced_nonNull_native;
      }

      v14 = *(v10 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v10 + 24) >> 1)
      {
        v24 = v14 + 1;
        OUTLINED_FUNCTION_87_1();
        v23 = v22;
        sub_1DD3BE2A4();
        v14 = v23;
        v15 = v24;
        v10 = isUniquelyReferenced_nonNull_native;
      }

      *(v10 + 16) = v15;
      v16 = v10 + 16 * v14;
      *(v16 + 32) = v12;
      *(v16 + 40) = v11;
    }
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_31_0();
  *(v17 - 16) = v26;
  *(v17 - 8) = 1;
  *(v17 - 7) = a2 & 1;
  sub_1DD582E38();
  v19 = v18;

  v20 = sub_1DD41859C(v19);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v20;
}

uint64_t sub_1DD417B78(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[3] = a4;
  v25[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_72(a4);
  (*(v8 + 16))();
  isUniquelyReferenced_nonNull_native = sub_1DD40FB18();
  v10 = isUniquelyReferenced_nonNull_native;
  if (!*(isUniquelyReferenced_nonNull_native + 16))
  {
    v12 = *(a3 + 136);
    v11 = *(a3 + 144);
    OUTLINED_FUNCTION_92_0();
    if (v13)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_87_1();
        sub_1DD3BE2A4();
        v10 = isUniquelyReferenced_nonNull_native;
      }

      v14 = *(v10 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v10 + 24) >> 1)
      {
        v24 = v14 + 1;
        OUTLINED_FUNCTION_87_1();
        v23 = v22;
        sub_1DD3BE2A4();
        v14 = v23;
        v15 = v24;
        v10 = isUniquelyReferenced_nonNull_native;
      }

      *(v10 + 16) = v15;
      v16 = v10 + 16 * v14;
      *(v16 + 32) = v12;
      *(v16 + 40) = v11;
    }
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_31_0();
  *(v17 - 16) = v25;
  *(v17 - 8) = 1;
  *(v17 - 7) = a2 & 1;
  sub_1DD582E38();
  v19 = v18;

  v20 = sub_1DD41859C(v19);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

unint64_t sub_1DD417D04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD417D48()
{
  result = qword_1EE165A10;
  if (!qword_1EE165A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A10);
  }

  return result;
}

unint64_t sub_1DD417DAC()
{
  result = qword_1ECCDC6D0;
  if (!qword_1ECCDC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6D0);
  }

  return result;
}

unint64_t sub_1DD417E00(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFD20, &qword_1DD648290);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_1DD417E68(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_82_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD417F44()
{
  result = qword_1ECCDC6E0;
  if (!qword_1ECCDC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6E0);
  }

  return result;
}

unint64_t sub_1DD417F9C()
{
  result = qword_1ECCDC6E8;
  if (!qword_1ECCDC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6E8);
  }

  return result;
}

unint64_t sub_1DD417FF4()
{
  result = qword_1ECCDC6F0;
  if (!qword_1ECCDC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_17@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;

  return sub_1DD640C18();
}

uint64_t OUTLINED_FUNCTION_10_16@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  v3 = *(v1 - 128);
  v4 = *(v1 - 112);

  return sub_1DD640B28();
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return sub_1DD63FD28();
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return sub_1DD6406A8();
}

void OUTLINED_FUNCTION_51_3()
{

  JUMPOUT(0x1E12B2260);
}

void OUTLINED_FUNCTION_55_3()
{
  *(v0 + v1[21]) = 0;
  v2 = (v0 + v1[22]);
  *v2 = 0;
  v2[1] = 0;
  v3 = v1[23];
}

uint64_t OUTLINED_FUNCTION_59_1()
{
  result = *(v0 - 336);
  v2 = *(result + 16);
  v3 = *(v0 - 344);
  return result;
}

void OUTLINED_FUNCTION_62_2()
{
}

uint64_t OUTLINED_FUNCTION_80_0()
{

  return sub_1DD640C18();
}

void OUTLINED_FUNCTION_83_1()
{

  JUMPOUT(0x1E12B2260);
}

uint64_t OUTLINED_FUNCTION_84_1()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t OUTLINED_FUNCTION_102()
{
  v2 = *(v0 - 128);

  return sub_1DD640B28();
}

void OUTLINED_FUNCTION_103(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x1E12B3140);
}

uint64_t sub_1DD41859C(uint64_t a1)
{
  result = MEMORY[0x1E12B2590](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1DD56CE00(v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD41865C(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1(a1);
  v3 = sub_1DD41B5DC();
  result = MEMORY[0x1E12B2590](v2, &type metadata for AppEventValues, v3);
  v5 = 0;
  v12 = result;
  v6 = *(v1 + 16);
  for (i = (v1 + 48); ; i += 3)
  {
    if (v6 == v5)
    {

      return v12;
    }

    if (v5 >= *(v1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;
    v10 = *(i - 2);

    sub_1DD56CF8C(&v11, v10, v9, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD418734()
{
  OUTLINED_FUNCTION_43();
  v1 = sub_1DD63D2B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = *(v0 + 16);
  sub_1DD41B280(&qword_1EE1637E0, MEMORY[0x1E6969AD0]);
  v10 = OUTLINED_FUNCTION_1_26();
  v11 = MEMORY[0x1E12B2590](v10, v1);
  v22 = v11;
  v12 = *(v0 + 16);
  if (v12)
  {
    v15 = *(v2 + 16);
    v13 = v2 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = v0;
    v17 = v0 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v6, v17, v1);
      sub_1DD56D194();
      (*(v13 - 8))(v8, v1);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

void sub_1DD4188EC(uint64_t a1)
{
  v2 = 0;
  v16 = MEMORY[0x1E12B2590](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_4_1();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v2;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      sub_1DD56CE00(v15, v13, v14);
    }

    while (v7);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v10);
    ++v2;
    if (v7)
    {
      v2 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1DD4189F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DD63FF08();
  v14 = MEMORY[0x1E12B2590](v4, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E5EE8]);
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v10 = a1;
  v11 = a2;
  v12 = 0;
  v13 = v5;
  while (1)
  {
    v6 = sub_1DD63FF88();
    if (!v7)
    {
      break;
    }

    sub_1DD56DF64(v9, v6, v7);
  }

  return v14;
}

void sub_1DD418A94(uint64_t a1)
{
  sub_1DD3CC020(a1);
  v2 = sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  sub_1DD41B0B0();
  v3 = OUTLINED_FUNCTION_1_26();
  v7[1] = MEMORY[0x1E12B2590](v3, v2);
  v4 = sub_1DD3CC020(a1);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E12B2C10](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1DD56E030(v7, v6);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1DD418B8C(uint64_t a1)
{
  sub_1DD3CC020(a1);
  OUTLINED_FUNCTION_14();
  v5 = type metadata accessor for DateTimeConstraint();
  sub_1DD41B280(&qword_1ECCDC188, type metadata accessor for DateTimeConstraint);
  v6 = OUTLINED_FUNCTION_1_26();
  v8[1] = MEMORY[0x1E12B2590](v6, v5);
  sub_1DD3CC020(a1);
  OUTLINED_FUNCTION_8_9();
  while (1)
  {
    if (v5 == v1)
    {

      return;
    }

    if (v2)
    {
      v7 = MEMORY[0x1E12B2C10](v1, a1);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    sub_1DD56E250(v8, v7);

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1DD418CA4(uint64_t a1)
{
  sub_1DD3CC020(a1);
  OUTLINED_FUNCTION_14();
  v5 = type metadata accessor for DateTime();
  sub_1DD41B280(&qword_1ECCDC740, type metadata accessor for DateTime);
  v6 = OUTLINED_FUNCTION_1_26();
  v8[1] = MEMORY[0x1E12B2590](v6, v5);
  sub_1DD3CC020(a1);
  OUTLINED_FUNCTION_8_9();
  while (1)
  {
    if (v5 == v1)
    {

      return;
    }

    if (v2)
    {
      v7 = MEMORY[0x1E12B2C10](v1, a1);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    sub_1DD56E444(v8, v7);

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1DD418DBC(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1(a1);
  v3 = sub_1DD41B2C8();
  v4 = 0;
  v15 = MEMORY[0x1E12B2590](v2, &type metadata for DateTime.DateTimeRange.DefinedDateTimeRange, v3);
  v5 = *(v1 + 64);
  v6 = *(v1 + 32);
  OUTLINED_FUNCTION_4_1();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    do
    {
      v12 = v4;
LABEL_7:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1DD56E918(&v14, *(*(v1 + 48) + (v13 | (v12 << 6))));
    }

    while (v9);
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v9 = *(v1 + 64 + 8 * v12);
    ++v4;
    if (v9)
    {
      v4 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1DD418E9C(uint64_t a1)
{
  v2 = MEMORY[0x1E12B2590](*(a1 + 16), MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1DD56E934(&v7, *(a1 + v4));
      v4 += 4;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_1DD418F30(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1(a1);
  v3 = sub_1DD41B22C();
  result = MEMORY[0x1E12B2590](v2, &type metadata for ContactSharedIdentifier, v3);
  v5 = 0;
  v12 = result;
  v6 = *(v1 + 16);
  for (i = (v1 + 56); ; i += 4)
  {
    if (v6 == v5)
    {

      return v12;
    }

    if (v5 >= *(v1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;
    v11 = *(i - 3);
    v10 = *(i - 2);

    sub_1DD56F194();
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD419018(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1(a1);
  v3 = sub_1DD41B118();
  result = MEMORY[0x1E12B2590](v2, &type metadata for ContactSearchMatchType, v3);
  v5 = 0;
  v11 = result;
  v6 = *(v1 + 16);
  for (i = 32; ; i += 48)
  {
    if (v6 == v5)
    {

      return v11;
    }

    if (v5 >= *(v1 + 16))
    {
      break;
    }

    v8 = *(v1 + i + 16);
    v12 = *(v1 + i);
    v13[0] = v8;
    *(v13 + 9) = *(v1 + i + 25);
    ++v5;
    sub_1DD41B16C(&v12, v9);
    sub_1DD56EF28(v9, &v12);
    result = sub_1DD41B1C8(v9[0], v9[1], v9[2], v9[3], v9[4], v10);
  }

  __break(1u);
  return result;
}

uint64_t ContactGroupResolver.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactResolverCache();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_1DD419134@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33[-v8];
  v10 = type metadata accessor for ContactResolverCache();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33[-v15];
  sub_1DD41B424(v1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    sub_1DD41B520(v9, v16);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v24 = sub_1DD63F9F8();
    __swift_project_value_buffer(v24, qword_1EE16F068);
    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640368();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DD38D000, v25, v26, "using overridden cache", v27, 2u);
      MEMORY[0x1E12B3DA0](v27, -1, -1);
    }

    v28 = v16;
    return sub_1DD41B520(v28, a1);
  }

  sub_1DD41B494(v9);
  if (qword_1EE165270 != -1)
  {
    swift_once();
  }

  v17 = *(qword_1EE16F000 + 16);

  sub_1DD640488();

  if (__swift_getEnumTagSinglePayload(v7, 1, v10) != 1)
  {
    sub_1DD41B520(v7, v14);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v29 = sub_1DD63F9F8();
    __swift_project_value_buffer(v29, qword_1EE16F068);
    v30 = sub_1DD63F9D8();
    v31 = sub_1DD640358();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DD38D000, v30, v31, "using shared cache", v32, 2u);
      MEMORY[0x1E12B3DA0](v32, -1, -1);
    }

    v28 = v14;
    return sub_1DD41B520(v28, a1);
  }

  sub_1DD41B494(v7);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD63F9F8();
  __swift_project_value_buffer(v18, qword_1EE16F068);
  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640358();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DD38D000, v19, v20, "creating and using shared cache", v21, 2u);
    MEMORY[0x1E12B3DA0](v21, -1, -1);
  }

  v22 = sub_1DD447E80(a1);
  MEMORY[0x1EEE9AC00](v22);
  *&v33[-16] = a1;

  sub_1DD5FF92C();
}

uint64_t sub_1DD4195D0(uint64_t a1, uint64_t a2)
{
  sub_1DD41B494(a1);
  sub_1DD41B584(a2, a1);
  v4 = type metadata accessor for ContactResolverCache();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t ContactGroupResolver.findGroups(query:config:)(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  OUTLINED_FUNCTION_5_20();
  v5 = *(a2 + v4);

  v7 = sub_1DD41859C(v6);
  v8 = sub_1DD4196CC(v10, a2, v7);

  return v8;
}

uint64_t sub_1DD4196CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v17 = a2;
  v20 = sub_1DD63F9C8();
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v16 = *a1;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v11 = sub_1DD6408F8();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DD392BD8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_1DD63F998();

  sub_1DD419A18(v16, v8, v18, v17, v19, &v21);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  (*(v4 + 8))(v7, v20);
  return v21;
}

uint64_t ContactGroupResolver.findGroupsAsync(query:config:)(void *a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v4 = a1[1];
  v3[4] = *a1;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DD419978, 0, 0);
}

uint64_t sub_1DD419978()
{
  v12 = v0;
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v11[0] = v0[4];
  v11[1] = v1;
  OUTLINED_FUNCTION_5_20();
  v5 = *(v2 + v4);

  v7 = sub_1DD41859C(v6);
  v8 = sub_1DD4196CC(v11, v2, v7);

  v9 = v0[1];

  return v9(v8);
}

void sub_1DD419A18(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v117 = a5;
  v114 = a1;
  v109 = a6;
  v9 = sub_1DD63D168();
  v115 = *(v9 - 8);
  v10 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Expander = type metadata accessor for EmojiQueryExpander();
  v12 = *(*(Expander - 8) + 64);
  MEMORY[0x1EEE9AC00](Expander);
  v107 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for SiriVocabularySearcher(0);
  v14 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v110 = (&v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for StringTokenizer();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v104 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v103 - v20;
  v22 = type metadata accessor for ContactResolverCache();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v103 = (&v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v103 - v27);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v103 - v29;
  sub_1DD419134((&v103 - v29));
  v112 = v22;
  sub_1DD41B584(&v30[*(v22 + 60)], v21);
  sub_1DD41B3D0();
  v31 = sub_1DD4F9BB8();
  v118 = a3;
  v113 = v9;
  if (v31)
  {
    v32 = a4;
    v33 = 0;
  }

  else
  {
    v108 = a2;
    v120 = sub_1DD63D118();
    v121 = v34;
    v126 = 24938;
    v127 = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    v35 = sub_1DD63FD48();

    v32 = a4;
    if (v35)
    {
      v33 = 0;
    }

    else
    {
      v120 = sub_1DD63D118();
      v121 = v36;
      v126 = 28523;
      v127 = 0xE200000000000000;
      v37 = sub_1DD63FD48();

      v33 = v37 ^ 1;
    }

    a2 = v108;
  }

  v38 = v115;
  v39 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v114, a2, v33 & 1, 1);
  sub_1DD41B3D0();
  v40 = *(v38 + 16);
  v41 = v110;
  v111 = v32;
  v42 = v113;
  v40(v110, v32, v113);
  sub_1DD419134(v28);
  v43 = v112;
  v44 = *(v28 + *(v112 + 48));
  sub_1DD41B3D0();
  *(v41 + *(v128 + 20)) = v44;
  v45 = sub_1DD5F8668(v39, v117, 2);

  v128 = sub_1DD3CC020(v45);
  if (v128)
  {
    v46 = 0;
    v117 = (v45 & 0xFFFFFFFFFFFFFF8);
    v118 = (v45 & 0xC000000000000001);
    v115 = MEMORY[0x1E69E7CC0];
    v116 = v45;
    v47 = v119;
    v48 = v45;
    while (v128 != v46)
    {
      if (v118)
      {
        v49 = MEMORY[0x1E12B2C10](v46, v48);
      }

      else
      {
        if (v46 >= v117[2])
        {
          goto LABEL_61;
        }

        v49 = *(v48 + 8 * v46 + 32);
      }

      v39 = v49;
      if (__OFADD__(v46, 1))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v126 = v49;
      sub_1DD41A78C(&v126, &v120);

      v51 = v120;
      v50 = v121;
      v53 = v122;
      v52 = v123;
      v55 = v124;
      v54 = v125;
      if (v121)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v119 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = *(v115 + 16);
          sub_1DD3BFA60();
          v115 = v61;
        }

        v57 = *(v115 + 16);
        v39 = (v57 + 1);
        if (v57 >= *(v115 + 24) >> 1)
        {
          sub_1DD3BFA60();
          v115 = v62;
        }

        v58 = v115;
        *(v115 + 16) = v39;
        v59 = (v58 + 48 * v57);
        v59[4] = v51;
        v59[5] = v50;
        v59[6] = v53;
        v59[7] = v52;
        v59[8] = v55;
        v59[9] = v54;
        v47 = v119;
      }

      else
      {
        sub_1DD41B31C(v120, 0);
      }

      ++v46;
      v48 = v116;
    }

    goto LABEL_57;
  }

  v108 = a2;

  v63 = v106;
  v40(v106, v111, v42);
  v64 = v103;
  sub_1DD419134(v103);
  v65 = v104;
  sub_1DD41B584(v64 + *(v43 + 60), v104);
  sub_1DD41B3D0();
  v66 = v107;
  v40(v107, v63, v42);
  v67 = v66;
  v68 = Expander;
  sub_1DD41B584(v65, &v66[*(Expander + 20)]);
  v39 = sub_1DD39638C(0, &qword_1EE1601D8, 0x1E699BAD0);
  v69 = sub_1DD63D118();
  v71 = sub_1DD4BE624(v69, v70);
  v48 = v111;
  if (v71)
  {
    v72 = v71;
    sub_1DD41B3D0();
    (*(v115 + 8))(v63, v42);
    *&v66[*(v68 + 24)] = v72;
    v120 = v114;
    v121 = v108;
    v39 = sub_1DD4BE308(&v120);
    if (qword_1EE165FB0 != -1)
    {
LABEL_63:
      swift_once();
    }

    v73 = sub_1DD63F9F8();
    __swift_project_value_buffer(v73, qword_1EE16F068);

    v74 = sub_1DD63F9D8();
    v75 = sub_1DD640368();
    v76 = os_log_type_enabled(v74, v75);
    v77 = v117;
    if (v76)
    {
      v78 = swift_slowAlloc();
      *v78 = 134217984;
      *(v78 + 4) = v39[2];

      _os_log_impl(&dword_1DD38D000, v74, v75, "queries after EmojiQueryExpander: %ld", v78, 0xCu);
      MEMORY[0x1E12B3DA0](v78, -1, -1);
    }

    else
    {
    }

    v80 = v119;
    MEMORY[0x1EEE9AC00](v79);
    *(&v103 - 2) = v118;
    *(&v103 - 1) = v48;
    v81 = sub_1DD5E7FBC(sub_1DD41B36C, (&v103 - 4), v39);
    v67 = v80;

    v39 = &v103;
    MEMORY[0x1EEE9AC00](v82);
    *(&v103 - 2) = v110;
    *(&v103 - 1) = v77;
    v83 = sub_1DD5E80D8(sub_1DD41B388, (&v103 - 4), v81);

    v48 = 0;
    v113 = v83;
    v114 = 0;
    v111 = v83 + 32;
    v115 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v84 = 0;
      v85 = v48 & 0xFFFFFFFFFFFFFF8;
      if (v48 >= 0)
      {
        v86 = v48 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v86 = v48;
      }

      v112 = v86;
      v116 = v48;
      v117 = (v48 & 0xC000000000000001);
      v128 = v115;
      if (v48)
      {
        while (1)
        {
          if (v48 >> 62)
          {
            v87 = sub_1DD6407B8();
          }

          else
          {
            v87 = *(v85 + 16);
          }

          if (v84 == v87)
          {
            v115 = v128;
            goto LABEL_53;
          }

          if (v117)
          {
            v88 = MEMORY[0x1E12B2C10](v84, v48);
          }

          else
          {
            if (v84 >= *(v85 + 16))
            {
              goto LABEL_59;
            }

            v88 = *(v48 + 8 * v84 + 32);
          }

          v39 = v88;
          if (__OFADD__(v84, 1))
          {
            break;
          }

          v126 = v88;
          sub_1DD41A78C(&v126, &v120);
          if (v67)
          {
            goto LABEL_65;
          }

          v39 = v120;
          v89 = v121;
          v91 = v122;
          v90 = v123;
          v92 = v124;
          if (v121)
          {
            v118 = v125;
            v93 = swift_isUniquelyReferenced_nonNull_native();
            v119 = 0;
            if ((v93 & 1) == 0)
            {
              v98 = *(v128 + 16);
              sub_1DD3BFA60();
              v128 = v99;
            }

            v94 = *(v128 + 16);
            if (v94 >= *(v128 + 24) >> 1)
            {
              sub_1DD3BFA60();
              v128 = v100;
            }

            v95 = v128;
            *(v128 + 16) = v94 + 1;
            v96 = (v95 + 48 * v94);
            v96[4] = v39;
            v96[5] = v89;
            v96[6] = v91;
            v96[7] = v90;
            v97 = v118;
            v67 = v119;
            v96[8] = v92;
            v96[9] = v97;
            v48 = v116;
          }

          else
          {
            sub_1DD41B31C(v120, 0);
          }

          ++v84;
          if (!v48)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

LABEL_53:
      v101 = *(v113 + 16);
      if (v114 == v101)
      {
        break;
      }

      if (v114 >= v101)
      {
        goto LABEL_62;
      }

      v102 = v114 + 1;
      v39 = *(v111 + 8 * v114);

      v48 = v39;
      v114 = v102;
    }

    sub_1DD41B3D0();
LABEL_57:

    *v109 = v115;
    sub_1DD41B3D0();
    return;
  }

  __break(1u);
LABEL_65:

  __break(1u);
}

uint64_t sub_1DD41A54C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for StringTokenizer();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContactResolverCache();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = a1[1];
  sub_1DD419134(v12);
  sub_1DD41B584(v12 + *(v9 + 68), v7);
  sub_1DD41B3D0();
  if (sub_1DD4F9BB8())
  {
    goto LABEL_3;
  }

  v24 = sub_1DD63D118();
  v25 = v15;
  v22 = 24938;
  v23 = 0xE200000000000000;
  sub_1DD3B52B8();
  sub_1DD3B530C();
  v16 = sub_1DD63FD48();

  if (v16)
  {
LABEL_3:
    v17 = 0;
  }

  else
  {
    v24 = sub_1DD63D118();
    v25 = v18;
    v22 = 28523;
    v23 = 0xE200000000000000;
    v19 = sub_1DD63FD48();

    v17 = v19 ^ 1;
  }

  v20 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v13, v14, v17 & 1, 1);
  result = sub_1DD41B3D0();
  *a2 = v20;
  return result;
}

void __swiftcall ContactGroup.init(id:name:bundleId:)(SiriInference::ContactGroup *__return_ptr retstr, Swift::String id, Swift::String name, Swift::String bundleId)
{
  retstr->id = id;
  retstr->name = name;
  retstr->bundleId = bundleId;
}

double sub_1DD41A78C@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 vocabularyItem];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1DD5FA8C8(v5);
    if (v8)
    {
      v9 = v7;
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

    v11 = [v6 term];
    v12 = sub_1DD63FDD8();
    v14 = v13;

    v15 = [v3 originAppId];
    v16 = sub_1DD63FDD8();
    v18 = v17;

    swift_unknownObjectRelease();
    *a2 = v29;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v14;
    a2[4] = v16;
    a2[5] = v18;
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);
    v21 = v3;
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640378();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      [v21 vocabularyItem];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC750, &qword_1DD648228);
      v26 = sub_1DD63FE38();
      v28 = sub_1DD39565C(v26, v27, &v30);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1DD38D000, v22, v23, "wanted CKVCustomTerm, got %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E12B3DA0](v25, -1, -1);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
    }

    result = 0.0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t ContactGroupResolverConfig.locale.getter()
{
  v0 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_15_0();

  return v4(v3);
}

uint64_t ContactGroupResolverConfig.locale.setter()
{
  OUTLINED_FUNCTION_43();
  v1 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_1_26();

  return v5(v4, v0);
}

uint64_t ContactGroupResolverConfig.bundleIds.getter()
{
  OUTLINED_FUNCTION_5_20();
  v2 = *(v0 + v1);
}

uint64_t ContactGroupResolverConfig.bundleIds.setter()
{
  v2 = OUTLINED_FUNCTION_43();
  v3 = *(type metadata accessor for ContactGroupResolverConfig(v2) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t (*ContactGroupResolverConfig.bundleIds.modify())(void)
{
  v0 = OUTLINED_FUNCTION_43();
  v1 = *(type metadata accessor for ContactGroupResolverConfig(v0) + 20);
  return nullsub_1;
}

uint64_t ContactGroupResolverConfig.init(locale:bundleIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 32))(a3, a1);
  result = OUTLINED_FUNCTION_5_20();
  *(a3 + v9) = a2;
  return result;
}

uint64_t ContactGroupQuery.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactGroupQuery.name.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContactGroup.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactGroup.id.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContactGroup.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactGroup.name.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ContactGroup.bundleId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactGroup.bundleId.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void sub_1DD41AE44()
{
  sub_1DD41AEB0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD41AEB0()
{
  if (!qword_1EE166570)
  {
    type metadata accessor for ContactResolverCache();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE166570);
    }
  }
}

void sub_1DD41AF30()
{
  sub_1DD63D168();
  if (v0 <= 0x3F)
  {
    sub_1DD41AFB4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD41AFB4()
{
  if (!qword_1EE1638D8)
  {
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1638D8);
    }
  }
}

uint64_t sub_1DD41B014(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DD41B054(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DD41B0B0()
{
  result = qword_1ECCDC720;
  if (!qword_1ECCDC720)
  {
    sub_1DD39638C(255, &qword_1EE163880, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC720);
  }

  return result;
}

unint64_t sub_1DD41B118()
{
  result = qword_1ECCDC728;
  if (!qword_1ECCDC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC728);
  }

  return result;
}

uint64_t sub_1DD41B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  result = a2;
  if (!a6)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

unint64_t sub_1DD41B22C()
{
  result = qword_1ECCDC730;
  if (!qword_1ECCDC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC730);
  }

  return result;
}

uint64_t sub_1DD41B280(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD41B2C8()
{
  result = qword_1ECCDC748;
  if (!qword_1ECCDC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC748);
  }

  return result;
}

uint64_t sub_1DD41B31C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DD41B36C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1DD41A54C(a1, a2);
}

uint64_t sub_1DD41B388@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_1DD5F8668(*a1, v4, 2);
  *a2 = result;
  return result;
}

uint64_t sub_1DD41B3D0()
{
  v1 = OUTLINED_FUNCTION_43();
  v3 = v2(v1);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DD41B424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD41B494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD41B520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverCache();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD41B584(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v5 = v4(v3);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return a2;
}

unint64_t sub_1DD41B5DC()
{
  result = qword_1ECCDC758;
  if (!qword_1ECCDC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC758);
  }

  return result;
}

void sub_1DD41B664(uint64_t a1, id *a2, uint64_t *a3, void *a4)
{
  if (*a2)
  {
    v6 = *a2;
    v7 = sub_1DD63FDD8();
    v9 = v8;

    *a3 = v7;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD41B6C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE16F0C0;
  v9 = &v7[*(v4 + 20)];
  *v9 = "ContactPermissionChecker";
  *(v9 + 1) = 24;
  v9[16] = 2;
  v10 = v8;
  sub_1DD63F9B8();
  *&v7[*(v4 + 24)] = v10;
  v10;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD643F90;
  v12 = sub_1DD6408F8();
  v29 = v7;
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1DD392BD8();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v15 = v29;
  sub_1DD63F998();

  aBlock = a1;
  v31 = a2;
  v36 = 0x6C7070612E6D6F63;
  v37 = 0xEA00000000002E65;
  sub_1DD3B52B8();
  sub_1DD3B530C();
  if (sub_1DD63FD48())
  {
    v16 = 1;
LABEL_19:
    sub_1DD6404C8();
    sub_1DD63F9A8();
    sub_1DD41BFFC(v15);
    return v16;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  result = tcc_message_options_create();
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  tcc_message_options_set_reply_handler_policy();
  v28 = a1;
  sub_1DD63FE68();
  v19 = tcc_identity_create();

  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = tcc_server_create();
  if (result)
  {
    v34 = sub_1DD41BFDC;
    v35 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1DD41BF5C;
    v33 = &block_descriptor_2;
    v20 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    tcc_server_message_get_authorization_records_by_identity();
    _Block_release(v20);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_beginAccess();
    if (*(v17 + 16) == 1)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v21 = sub_1DD63F9F8();
      __swift_project_value_buffer(v21, qword_1EE16F068);

      v22 = sub_1DD63F9D8();
      v23 = sub_1DD640368();

      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_18;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *(v24 + 4) = OUTLINED_FUNCTION_1_27(4.8149e-34);
      v26 = "%s has permission to access 1p contacts";
    }

    else
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v27 = sub_1DD63F9F8();
      __swift_project_value_buffer(v27, qword_1EE16F068);

      v22 = sub_1DD63F9D8();
      v23 = sub_1DD640368();

      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_18;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *(v24 + 4) = OUTLINED_FUNCTION_1_27(4.8149e-34);
      v26 = "%s does not have permission to access 1p contacts";
    }

    _os_log_impl(&dword_1DD38D000, v22, v23, v26, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E12B3DA0](v25, -1, -1);
    MEMORY[0x1E12B3DA0](v24, -1, -1);
LABEL_18:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v15 = v29;
    v16 = *(v17 + 16);

    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_1DD41BC30(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    if (tcc_authorization_record_get_service())
    {
      tcc_service_get_name();
      v5 = sub_1DD63FF68();
      v7 = v6;
      if (qword_1ECCDB060 != -1)
      {
        swift_once();
      }

      v8 = v5 == qword_1ECD0DD50 && v7 == *algn_1ECD0DD58;
      if (v8 || (sub_1DD640CD8() & 1) != 0)
      {
        goto LABEL_20;
      }

      if (qword_1ECCDB058 != -1)
      {
        swift_once();
      }

      if (v5 == qword_1ECD0DD40 && v7 == *algn_1ECD0DD48)
      {
LABEL_20:
      }

      else
      {
        v10 = sub_1DD640CD8();

        if ((v10 & 1) == 0)
        {
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return;
        }
      }

      authorization_right = tcc_authorization_record_get_authorization_right();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_beginAccess();
      *(a3 + 16) = authorization_right == 2;
      return;
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v12 = qword_1EE165FB0;
    v13 = a2;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD63F9F8();
    __swift_project_value_buffer(v14, qword_1EE16F068);
    v15 = v13;
    oslog = sub_1DD63F9D8();
    v16 = sub_1DD640378();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315138;
      v24[3] = v15;
      type metadata accessor for CFError(0);
      v19 = v15;
      v20 = sub_1DD63FE38();
      v22 = sub_1DD39565C(v20, v21, v24);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1DD38D000, oslog, v16, "error when checking tcc: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
      MEMORY[0x1E12B3DA0](v17, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1DD41BF5C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD41BFFC(uint64_t a1)
{
  v2 = type metadata accessor for Signpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContactQuery.toUsoPerson()()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v14, v0, sizeof(v14));
  sub_1DD41C264();
  MEMORY[0x1E12B09F0]();
  sub_1DD63E6B8();
  sub_1DD63E7D8();
  v1 = v14[0];
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  sub_1DD3C9478(__dst, v14);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  sub_1DD3C9580(__dst);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    memcpy(v12, __dst, sizeof(v12));
    sub_1DD3C9478(__dst, v14);
    v7 = ContactQuery.description.getter();
    v9 = v8;
    memcpy(v14, v12, sizeof(v14));
    sub_1DD3C9580(v14);
    v10 = sub_1DD39565C(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DD38D000, v3, v4, "Converted ContactQuery %s to UsoEntity_common_person", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  return v1;
}

uint64_t sub_1DD41C264()
{
  v1 = sub_1DD63E658();
  v84 = *(v1 - 8);
  v85 = v1;
  v2 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v83 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DD63E448();
  v113 = *(v4 - 8);
  v5 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1DD63DEA8();
  v86 = *(v109 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v94 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = *(v0 + 16);
  v10 = *(v0 + 24);
  v96 = *(v0 + 32);
  v97 = v10;
  v11 = *(v0 + 40);
  v105 = *(v0 + 48);
  v106 = v11;
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);
  v16 = *(v0 + 96);
  v104 = *(v0 + 88);
  v17 = *(v0 + 120);
  v107 = *(v0 + 128);
  v18 = *(v0 + 144);
  v112 = *(v0 + 136);
  v110 = v17;
  v111 = v18;
  v19 = *(v0 + 152);
  v98 = *(v0 + 160);
  v99 = v19;
  v20 = *(v0 + 168);
  v21 = *(v0 + 176);
  v22 = *(v0 + 192);
  v100 = *(v0 + 184);
  v101 = v20;
  v87 = v21;
  v88 = v22;
  v23 = *(v0 + 200);
  v102 = *(v0 + 208);
  v24 = *(v0 + 224);
  v25 = *(v0 + 232);
  v89 = v23;
  v90 = v24;
  v26 = *(v0 + 240);
  v91 = v25;
  v92 = v26;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v95 = v7;
  v93 = v4;
  v27 = sub_1DD63F9F8();
  __swift_project_value_buffer(v27, qword_1EE16F068);
  v28 = sub_1DD63F9D8();
  v29 = sub_1DD640368();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1DD38D000, v28, v29, "Converting ContactQuery to Converting UsoEntity_common_Person", v30, 2u);
    MEMORY[0x1E12B3DA0](v30, -1, -1);
  }

  v31 = sub_1DD63EBD8();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_1DD63EBC8();
  v35 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v35 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    sub_1DD63EB98();
  }

  v36 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v36 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    sub_1DD63EBB8();
  }

  v37 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v37 = v104 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    sub_1DD63EBA8();
  }

  v38 = (v105 >> 56) & 0xF;
  if ((v105 & 0x2000000000000000) == 0)
  {
    v38 = v106 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    sub_1DD63EB68();
  }

  v39 = HIBYTE(v107) & 0xF;
  if ((v107 & 0x2000000000000000) == 0)
  {
    v39 = v110 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    sub_1DD63EB78();
  }

  v40 = HIBYTE(v111) & 0xF;
  if ((v111 & 0x2000000000000000) == 0)
  {
    v40 = v112 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    sub_1DD63EB88();
  }

  v41 = v93;
  v42 = *(v92 + 16);
  v43 = v94;
  v44 = v95;
  if (v42)
  {
    LODWORD(v107) = *MEMORY[0x1E69D1B30];
    v45 = *(v113 + 104);
    v105 = (v113 + 8);
    v106 = v45;
    v104 = (v86 + 8);
    v46 = (v92 + 72);
    v108 = v34;
    do
    {
      v47 = *(v46 - 3);
      v112 = *(v46 - 4);
      v113 = v42;
      v48 = *(v46 - 2);
      v49 = *(v46 - 1);
      v50 = *v46;
      v46 += 6;
      v110 = v48;
      v111 = v50;
      (v106)(v44, v107, v41);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DD63E438();
      (*v105)(v44, v41);
      sub_1DD63DE78();

      sub_1DD63DD38();
      (*v104)(v43, v109);
      v42 = v113 - 1;
    }

    while (v113 != 1);
  }

  v51 = sub_1DD63E9E8();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = sub_1DD63E9D8();

  sub_1DD63E978();

  v55 = HIBYTE(v96) & 0xF;
  if ((v96 & 0x2000000000000000) == 0)
  {
    v55 = v97 & 0xFFFFFFFFFFFFLL;
  }

  if (v55)
  {
    sub_1DD63E9C8();
  }

  v56 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v56 = v99 & 0xFFFFFFFFFFFFLL;
  }

  v57 = v101;
  v58 = v102;
  v59 = v100;
  if (v56)
  {
    v60 = sub_1DD63ED38();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    sub_1DD63ED28();
    sub_1DD63ED18();

    sub_1DD63E988();
  }

  v63 = v58;
  if (v59)
  {
    v64 = sub_1DD63EDD8();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();

    sub_1DD63EDC8();
    v67 = v87;
    sub_1DD63EDA8();
    if (v57)
    {
      memcpy(v115, (v57 + 16), sizeof(v115));
      memcpy(v114, (v57 + 16), sizeof(v114));

      v68 = sub_1DD3C9478(v115, v116);
      sub_1DD41C264(v68);
      memcpy(v116, v114, 0x108uLL);
      sub_1DD3C9580(v116);

      sub_1DD63EDB8();
    }

    sub_1DD63E998();

    sub_1DD4178B4(v57, v67, v59);
  }

  if (v63)
  {
    if (v88 == 1)
    {
      v72 = sub_1DD63ED08();
      v73 = *(v72 + 48);
      v74 = *(v72 + 52);
      swift_allocObject();
      sub_1DD63ECF8();
      sub_1DD63ECD8();
      sub_1DD63ECE8();
    }

    else
    {
      if (v88 == 2)
      {
        v69 = sub_1DD63ECA8();
        v70 = *(v69 + 48);
        v71 = *(v69 + 52);
        swift_allocObject();
        sub_1DD63EC98();
        sub_1DD63EC78();
        sub_1DD63EC88();
      }

      else
      {
        v75 = sub_1DD63ED78();
        v76 = *(v75 + 48);
        v77 = *(v75 + 52);
        swift_allocObject();
        sub_1DD63ED68();
        sub_1DD63ED48();
        sub_1DD63ED58();
      }
    }

    sub_1DD63E9A8();
  }

  if (v103)
  {
    v79 = v83;
    v78 = v84;
    v80 = v85;
    (*(v84 + 104))(v83, *MEMORY[0x1E69D1BE0], v85);
    sub_1DD63E968();

    (*(v78 + 8))(v79, v80);
  }

  else
  {
  }

  return v54;
}

uint64_t sub_1DD41CAB4(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  v1 = sub_1DD640278();

  return v1;
}

uint64_t sub_1DD41CB3C(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3)
{
  a1(&v6);
  v4 = MEMORY[0x1E12B2430](v6, a3);

  return v4;
}

uint64_t sub_1DD41CBA4(void (*a1)(void *__return_ptr))
{
  a1(v3);
  v1 = ContactQuery.description.getter();
  memcpy(__dst, v3, sizeof(__dst));
  sub_1DD3C9580(__dst);
  return v1;
}

uint64_t sub_1DD41CC10(uint64_t a1)
{
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  memcpy(__src, (v1 + 16), sizeof(__src));
  sub_1DD3C9478(__dst, v6);
  ContactQuery.hash(into:)(a1);
  memcpy(v6, __src, sizeof(v6));
  return sub_1DD3C9580(v6);
}

uint64_t sub_1DD41CC90()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  memcpy(__src, (v0 + 16), sizeof(__src));
  v1 = sub_1DD3C9478(__dst, v6);
  v2 = ContactQuery.description.getter(v1);
  memcpy(v6, __src, sizeof(v6));
  sub_1DD3C9580(v6);
  return v2;
}

uint64_t ContactQuery.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactQuery.id.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContactQuery.fullName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactQuery.fullName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t ContactQuery.namePrefix.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactQuery.namePrefix.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ContactQuery.givenName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactQuery.givenName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t ContactQuery.middleName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactQuery.middleName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t ContactQuery.familyName.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactQuery.familyName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t ContactQuery.previousFamilyName.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactQuery.previousFamilyName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t ContactQuery.nameSuffix.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactQuery.nameSuffix.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t ContactQuery.nickname.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactQuery.nickname.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t ContactQuery.organizationName.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactQuery.organizationName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t ContactQuery.relationship.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DD41D254(v2, v3, v4);
}

uint64_t sub_1DD41D254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 ContactQuery.relationship.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_1DD4178B4(v1[21], v1[22], v1[23]);
  result = v4;
  *(v1 + 21) = v4;
  v1[23] = v2;
  return result;
}

uint64_t ContactQuery.handle.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[24];
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[27];
  v6 = v1[28];
  v7 = v1[29];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1DD4178F8(v2, v3, v4);
}

__n128 ContactQuery.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[27];
  v6 = v1[28];
  v7 = v1[29];
  sub_1DD3FAA54(v1[24], v1[25], v1[26]);
  result = *a1;
  v9 = *(a1 + 16);
  *(v1 + 12) = *a1;
  *(v1 + 13) = v9;
  v1[28] = v3;
  v1[29] = v4;
  return result;
}

double ContactQuery.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xE000000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0xE000000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xE000000000000000;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 168) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = v2;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  return result;
}

uint64_t sub_1DD41D418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *a1;
  v30 = *(a1 + 16);
  v4 = *(a1 + 32);
  v40 = *(a1 + 24);
  v5 = *(a1 + 48);
  v38 = *(a1 + 40);
  v36 = *(a1 + 56);
  v34 = *(a1 + 72);
  v6 = *(a1 + 112);
  v7 = *(a1 + 128);
  v42 = *(a1 + 120);
  v43 = *(a1 + 104);
  v8 = *(a1 + 144);
  v41 = *(a1 + 136);
  v9 = *(a1 + 216);
  v35 = *(a1 + 64);
  v33 = *(a1 + 80);
  v31 = *(a1 + 8);
  if (v9[2])
  {
    v10 = v9[7];
    v29 = v9[6];

    v28 = v10;

    v11 = OUTLINED_FUNCTION_24_5();
    sub_1DD4178B4(v11, v12, v13);
  }

  else
  {

    v28 = 0;
    v29 = 0;
  }

  v14 = v5;
  v15 = v4;
  v39 = v8;
  v37 = v7;
  v16 = v6;
  v17 = *(a1 + *(type metadata accessor for Contact() + 80));
  if (*(v17 + 16))
  {
    v18 = *(v17 + 48);
    v20 = *(v17 + 56);
    v19 = *(v17 + 64);
    v22 = *(v17 + 72);
    v21 = *(v17 + 80);

    sub_1DD415B40(a1);
    v23 = OUTLINED_FUNCTION_24_5();
    result = sub_1DD3FAA54(v23, v24, v25);
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    result = sub_1DD415B40(a1);
    v18 = 0;
    v20 = 0;
    v19 = 0;
    v27 = 0;
    v22 = 0;
    v21 = 0;
  }

  *a2 = v32;
  *(a2 + 8) = v31;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = v40;
  *(a2 + 48) = v15;
  *(a2 + 56) = v38;
  *(a2 + 64) = v14;
  *(a2 + 72) = v36;
  *(a2 + 80) = v35;
  *(a2 + 88) = v34;
  *(a2 + 96) = v33;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0xE000000000000000;
  *(a2 + 120) = v43;
  *(a2 + 128) = v16;
  *(a2 + 136) = v42;
  *(a2 + 144) = v37;
  *(a2 + 152) = v41;
  *(a2 + 160) = v39;
  *(a2 + 168) = 0;
  *(a2 + 176) = v29;
  *(a2 + 184) = v28;
  *(a2 + 192) = v18;
  *(a2 + 200) = v20;
  *(a2 + 208) = v19;
  *(a2 + 216) = v27;
  *(a2 + 224) = v22;
  *(a2 + 232) = v21;
  *(a2 + 240) = MEMORY[0x1E69E7CC0];
  *(a2 + 248) = 1;
  *(a2 + 256) = 0;
  return result;
}

uint64_t ContactRelationshipQuery.init(label:fromContact:)(uint64_t a1, uint64_t a2, const void *a3)
{
  OUTLINED_FUNCTION_14_1();
  v7 = v6;
  memcpy(__dst, v8, sizeof(__dst));
  result = sub_1DD3C94D4(__dst);
  if (result == 1)
  {
    v10 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC760, &qword_1DD648250);
    v10 = swift_allocObject();
    result = memcpy((v10 + 16), a3, 0x108uLL);
  }

  *v7 = v10;
  v7[1] = v4;
  v7[2] = v3;
  return result;
}

uint64_t ContactQuery.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v40 = *(v0 + 16);
  v3 = v0[4];
  v41 = v0[3];
  v42 = v0[6];
  v43 = v0[5];
  v44 = v0[8];
  v45 = v0[7];
  v46 = v0[10];
  v47 = v0[9];
  v48 = v0[12];
  v49 = v0[11];
  v50 = v0[16];
  v53 = v0[17];
  v51 = v0[15];
  v52 = v0[18];
  v54 = v0[20];
  v55 = v0[19];
  v4 = v0[24];
  v5 = v0[25];
  v6 = *(v0 + 13);
  v8 = v0[28];
  v7 = v0[29];
  v58 = v0[30];
  v9 = *(v0 + 248);
  if (v0[23])
  {
    v39 = *(v0 + 13);
    v59 = *(v0 + 21);
    v10 = ContactRelationshipQuery.description.getter();
    *&v6 = v39;
    v56 = v10;
    v57 = v11;
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
  }

  v12 = 0xE000000000000000;
  if (v6)
  {
    v13 = ContactHandleQuery.description.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001DLL, 0x80000001DD66B620);
  LOBYTE(v60[0]) = v9;
  sub_1DD6409F8();
  v16 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v16 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v60[0] = 1029990688;
    v60[1] = 0xE400000000000000;
    MEMORY[0x1E12B2260](v1, v2);
    v17 = 1029990688;
    v12 = 0xE400000000000000;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x1E12B2260](v17, v12);

  if (v40)
  {
    v18 = 0x72743D654D736920;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (v40)
  {
    v20 = 0xEA00000000006575;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v18, v20);

  v21 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v21 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    strcpy(v60, " fullName=");
    BYTE3(v60[1]) = 0;
    HIDWORD(v60[1]) = -369098752;
    MEMORY[0x1E12B2260]();
    v22 = v60[0];
    v19 = v60[1];
  }

  else
  {
    v22 = 0;
  }

  MEMORY[0x1E12B2260](v22, v19);

  OUTLINED_FUNCTION_1_25();
  if (v23)
  {
    strcpy(v60, " namePrefix=");
    BYTE5(v60[1]) = 0;
    HIWORD(v60[1]) = -5120;
    MEMORY[0x1E12B2260]();
    v24 = v60[0];
    v25 = v60[1];
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v24, v25);

  OUTLINED_FUNCTION_1_25();
  if (v26)
  {
    strcpy(v60, " givenName=");
    HIDWORD(v60[1]) = -352321536;
    MEMORY[0x1E12B2260]();
    v27 = v60[0];
    v28 = v60[1];
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v27, v28);

  OUTLINED_FUNCTION_1_25();
  if (v29)
  {
    strcpy(v60, " middleName=");
    BYTE5(v60[1]) = 0;
    HIWORD(v60[1]) = -5120;
    MEMORY[0x1E12B2260]();
  }

  else
  {
    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  OUTLINED_FUNCTION_1_25();
  if (v30)
  {
    strcpy(v60, " familyName=");
    BYTE5(v60[1]) = 0;
    HIWORD(v60[1]) = -5120;
    MEMORY[0x1E12B2260]();
  }

  else
  {
    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  OUTLINED_FUNCTION_1_25();
  if (v31)
  {
    strcpy(v60, " nameSuffix=");
    BYTE5(v60[1]) = 0;
    HIWORD(v60[1]) = -5120;
    MEMORY[0x1E12B2260]();
  }

  else
  {
    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  OUTLINED_FUNCTION_1_25();
  if (v32)
  {
    strcpy(v60, " nickname=");
    BYTE3(v60[1]) = 0;
    HIDWORD(v60[1]) = -369098752;
    MEMORY[0x1E12B2260]();
  }

  else
  {
    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  v33 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v33 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    sub_1DD6408D8();

    v60[0] = 0xD000000000000012;
    v60[1] = 0x80000001DD66B640;
    MEMORY[0x1E12B2260](v55, v54);
  }

  OUTLINED_FUNCTION_43_4();

  v34 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v34 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    sub_1DD6408D8();

    strcpy(v60, " relationship=");
    HIBYTE(v60[1]) = -18;
    v35 = OUTLINED_FUNCTION_15();
    MEMORY[0x1E12B2260](v35);
  }

  else
  {

    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  v36 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v36 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    strcpy(v60, " handle=");
    BYTE1(v60[1]) = 0;
    WORD1(v60[1]) = 0;
    HIDWORD(v60[1]) = -402653184;
    MEMORY[0x1E12B2260](v13, v15);
  }

  else
  {

    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  if (*(v58 + 16))
  {
    sub_1DD6408D8();

    v60[0] = 0xD000000000000015;
    v60[1] = 0x80000001DD66B660;
    v37 = MEMORY[0x1E12B2430](v58, &unk_1F58B3190);
    MEMORY[0x1E12B2260](v37);
  }

  OUTLINED_FUNCTION_43_4();

  OUTLINED_FUNCTION_65();
  return 0;
}

uint64_t ContactRelationshipQuery.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  if (*v0)
  {
    v3 = sub_1DD41CC90();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_25_4();
    MEMORY[0x1E12B2260](v1, v2);
    v7 = v12;
    v8 = v13;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v7, v8);

  v9 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    MEMORY[0x1E12B2260](v3, v5);

    v10 = 0x3D6D6F726620;
    v5 = 0xE600000000000000;
  }

  else
  {

    v10 = OUTLINED_FUNCTION_31_6();
  }

  MEMORY[0x1E12B2260](v10, v5);

  OUTLINED_FUNCTION_65();
  return 40;
}

uint64_t ContactHandleQuery.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = 0xE000000000000000;
  LOBYTE(v16) = *v0;
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](40, 0xE100000000000000);
  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    OUTLINED_FUNCTION_25_4();
    MEMORY[0x1E12B2260](v1, v2);
    v8 = v16;
    v6 = v17;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1E12B2260](v8, v6);

  v9 = 0xE000000000000000;
  if (*(v4 + 16))
  {
    sub_1DD6408D8();

    v16 = 0xD000000000000012;
    v17 = 0x80000001DD66B680;
    v10 = MEMORY[0x1E12B2430](v4, MEMORY[0x1E69E6158]);
    MEMORY[0x1E12B2260](v10);

    v11 = 0xD000000000000012;
    v9 = 0x80000001DD66B680;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1E12B2260](v11, v9);

  v12 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v12 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_25_4();
    v13 = OUTLINED_FUNCTION_63_0();
    MEMORY[0x1E12B2260](v13);
    v14 = v16;
    v3 = v17;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_31_6();
  }

  MEMORY[0x1E12B2260](v14, v3);

  OUTLINED_FUNCTION_65();
  return 0;
}

void sub_1DD41E024()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[11];
  v5 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 64) = v6;
  *(inited + 72) = v5;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = (inited + 40 + 16 * v8);
  while (1)
  {
    if (v8 == 3)
    {
      swift_setDeallocating();
      sub_1DD46CAFC();
      return;
    }

    if (v8 > 2)
    {
      break;
    }

    ++v8;
    v12 = *(v10 - 1);
    v11 = *v10;
    v10 += 2;
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v9 + 16);
        sub_1DD42A2D4();
      }

      v15 = *(v9 + 16);
      if (v15 >= *(v9 + 24) >> 1)
      {
        sub_1DD42A2D4();
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1DD41E198()
{
  v1 = v0[4];
  v2 = v0[3] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    return 1;
  }

  v3 = v0[6];
  if ((v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v0[5] & 0xFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v5 = v0[8];
  v6 = v0[7] & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  if (v6)
  {
    return 1;
  }

  v7 = v0[10];
  v8 = v0[9] & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  if (v8)
  {
    return 1;
  }

  v9 = v0[12];
  v10 = v0[11] & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v9) & 0xF;
  }

  if (v10)
  {
    return 1;
  }

  v12 = v0[16];
  v13 = v0[18];
  v14 = v0[15] & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v12) & 0xF;
  }

  v15 = v0[17] & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v13) & 0xF;
  }

  v16 = v15 != 0;
  return v14 || v16;
}

void sub_1DD41E258()
{
  v1 = v0[4];
  v2 = v0[6];
  v3 = v0[8];
  v25 = v0[7];
  v26 = v0[5];
  v4 = v0[10];
  v5 = v0[12];
  v23 = v0[11];
  v24 = v0[9];
  v6 = v0[14];
  v21 = v0[3];
  v22 = v0[13];
  v27 = v0[16];
  v28 = v0[15];
  v7 = v0[18];
  v8 = v0[20];
  v19 = v0[19];
  v20 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD648240;
  *(inited + 32) = v21;
  *(inited + 40) = v1;
  *(inited + 48) = v26;
  *(inited + 56) = v2;
  *(inited + 64) = v25;
  *(inited + 72) = v3;
  *(inited + 80) = v24;
  *(inited + 88) = v4;
  *(inited + 96) = v23;
  *(inited + 104) = v5;
  *(inited + 112) = v22;
  *(inited + 120) = v6;
  *(inited + 128) = v20;
  *(inited + 136) = v7;
  *(inited + 144) = v19;
  *(inited + 152) = v8;
  *(inited + 160) = v28;
  *(inited + 168) = v27;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = (inited + 40 + 16 * v10);
  while (1)
  {
    if (v10 == 9)
    {
      swift_setDeallocating();
      sub_1DD46CAFC();
      return;
    }

    if (v10 > 8)
    {
      break;
    }

    ++v10;
    v14 = *(v12 - 1);
    v13 = *v12;
    v12 += 2;
    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v11 + 16);
        sub_1DD42A2D4();
      }

      v17 = *(v11 + 16);
      if (v17 >= *(v11 + 24) >> 1)
      {
        sub_1DD42A2D4();
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v13;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t static ContactQuery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v166 = *(a1 + 64);
  v167 = *(a1 + 56);
  v164 = *(a1 + 80);
  v165 = *(a1 + 72);
  v162 = *(a1 + 96);
  v163 = *(a1 + 88);
  v158 = *(a1 + 112);
  v159 = *(a1 + 104);
  v154 = *(a1 + 128);
  v155 = *(a1 + 120);
  v150 = *(a1 + 144);
  v151 = *(a1 + 136);
  v146 = *(a1 + 160);
  v147 = *(a1 + 152);
  v142 = *(a1 + 168);
  v143 = *(a1 + 176);
  v141 = *(a1 + 184);
  v128 = *(a1 + 192);
  v126 = *(a1 + 208);
  v137 = *(a1 + 216);
  v129 = *(a1 + 200);
  v130 = *(a1 + 224);
  v136 = *(a1 + 232);
  v125 = *(a1 + 240);
  v123 = *(a1 + 248);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v13 = *(a2 + 56);
  v12 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  v160 = *(a2 + 96);
  v161 = *(a2 + 88);
  v156 = *(a2 + 112);
  v157 = *(a2 + 104);
  v153 = *(a2 + 120);
  v152 = *(a2 + 128);
  v148 = *(a2 + 144);
  v149 = *(a2 + 136);
  v144 = *(a2 + 160);
  v145 = *(a2 + 152);
  v138 = *(a2 + 176);
  v139 = *(a2 + 184);
  v140 = *(a2 + 168);
  v132 = *(a2 + 192);
  v133 = *(a2 + 208);
  v134 = *(a2 + 200);
  v135 = *(a2 + 216);
  v124 = *(a2 + 240);
  v122 = *(a2 + 248);
  v127 = *(a2 + 232);
  v131 = *(a2 + 224);
  if (v6)
  {
    if (*(a1 + 16) != v7)
    {
      return 0;
    }
  }

  else
  {
    v118 = *(a1 + 16);
    v120 = *(a2 + 64);
    v121 = *(a2 + 40);
    v119 = *(a2 + 56);
    v16 = *(a1 + 48);
    v17 = *(a2 + 48);
    v18 = *(a2 + 72);
    v19 = *(a1 + 32);
    v20 = *(a2 + 24);
    v21 = sub_1DD640CD8();
    v8 = v20;
    v2 = v19;
    v14 = v18;
    v11 = v17;
    v4 = v16;
    v13 = v119;
    v12 = v120;
    v10 = v121;
    if (v21 & 1) == 0 || ((v118 ^ v7))
    {
      return 0;
    }
  }

  if (v3 != v8 || v2 != v9)
  {
    v23 = v4;
    v24 = sub_1DD640CD8();
    v4 = v23;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v25 = v5 == v10 && v4 == v11;
  if (!v25 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v26 = v167 == v13 && v166 == v12;
  if (!v26 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v165 != v14 || v164 != v15)
  {
    OUTLINED_FUNCTION_40_4();
    if ((sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  v28 = v163 == v161 && v162 == v160;
  if (!v28 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v29 = v159 == v157 && v158 == v156;
  if (!v29 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v30 = v155 == v153 && v154 == v152;
  if (!v30 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v31 = v151 == v149 && v150 == v148;
  if (!v31 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v32 = v147 == v145 && v146 == v144;
  if (!v32 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (!v141)
  {
    sub_1DD41D254(v142, v143, 0);
    if (!v139)
    {
      sub_1DD41D254(v140, v138, 0);
      sub_1DD4178B4(v142, v143, 0);
      goto LABEL_63;
    }

    v46 = OUTLINED_FUNCTION_36_3();
    sub_1DD41D254(v46, v47, v48);
    goto LABEL_61;
  }

  v170[0] = v142;
  v170[1] = v143;
  v170[2] = v141;
  if (!v139)
  {
    v49 = OUTLINED_FUNCTION_12_13();
    sub_1DD41D254(v49, v50, v51);
    sub_1DD41D254(v140, v138, 0);
    v52 = OUTLINED_FUNCTION_12_13();
    sub_1DD41D254(v52, v53, v54);

LABEL_61:
    v55 = OUTLINED_FUNCTION_12_13();
    sub_1DD4178B4(v55, v56, v57);
    v58 = OUTLINED_FUNCTION_36_3();
    sub_1DD4178B4(v58, v59, v60);
    return 0;
  }

  v169[0] = v140;
  v169[1] = v138;
  v169[2] = v139;
  v33 = OUTLINED_FUNCTION_12_13();
  sub_1DD41D254(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_36_3();
  sub_1DD41D254(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_12_13();
  sub_1DD41D254(v39, v40, v41);
  v42 = static ContactRelationshipQuery.== infix(_:_:)(v170, v169);

  v43 = OUTLINED_FUNCTION_12_13();
  sub_1DD4178B4(v43, v44, v45);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_63:
  if (!v126)
  {
    sub_1DD4178F8(v128, v129, 0);
    v72 = v133;
    if (!v133)
    {
      v100 = OUTLINED_FUNCTION_15_0();
      sub_1DD4178F8(v100, v101, 0);
LABEL_86:
      v102 = OUTLINED_FUNCTION_10_17();
      sub_1DD3FAA54(v102, v103, v104);
      goto LABEL_87;
    }

    v73 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_49_4(v73, v74, v133);
    goto LABEL_70;
  }

  if (!v133)
  {
    v75 = OUTLINED_FUNCTION_10_17();
    sub_1DD4178F8(v75, v76, v77);
    v78 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_49_4(v78, v79, 0);
    v80 = OUTLINED_FUNCTION_10_17();
    sub_1DD4178F8(v80, v81, v82);

    v72 = 0;

LABEL_70:
    v83 = OUTLINED_FUNCTION_10_17();
    sub_1DD3FAA54(v83, v84, v85);
    v69 = OUTLINED_FUNCTION_15_0();
    v71 = v72;
    goto LABEL_71;
  }

  if (v132 != v128 || (v129 == v134 ? (v87 = v126 == v133) : (v87 = 0), !v87 && (sub_1DD640CD8() & 1) == 0 || (sub_1DD3C3778(v137, v135) & 1) == 0))
  {
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_14_14();
    sub_1DD4178F8(v61, v62, v63);
    v64 = OUTLINED_FUNCTION_15_0();
    sub_1DD4178F8(v64, v65, v133);
    v66 = OUTLINED_FUNCTION_9_12();
    sub_1DD4178F8(v66, v67, v68);
    sub_1DD3FAA54(v132, v134, v133);

    v69 = OUTLINED_FUNCTION_9_12();
LABEL_71:
    sub_1DD3FAA54(v69, v70, v71);
    return 0;
  }

  if (v130 == v131 && v136 == v127)
  {
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_14_14();
    sub_1DD4178F8(v106, v107, v108);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_60_3();
    sub_1DD4178F8(v109, v110, v111);
    v112 = OUTLINED_FUNCTION_9_12();
    sub_1DD4178F8(v112, v113, v114);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_60_3();
    sub_1DD3FAA54(v115, v116, v117);

    goto LABEL_86;
  }

  v168 = sub_1DD640CD8();
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_14_14();
  sub_1DD4178F8(v89, v90, v91);
  v92 = OUTLINED_FUNCTION_15_0();
  sub_1DD4178F8(v92, v93, v133);
  v94 = OUTLINED_FUNCTION_9_12();
  sub_1DD4178F8(v94, v95, v96);
  sub_1DD3FAA54(v132, v134, v133);

  v97 = OUTLINED_FUNCTION_9_12();
  sub_1DD3FAA54(v97, v98, v99);
  if ((v168 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  sub_1DD3C4BBC(v125, v124);
  if ((v105 & 1) == 0)
  {
    return 0;
  }

  return sub_1DD3AFDCC(v123);
}

uint64_t sub_1DD41EBBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1699574633 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001DD66B460 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x66667553656D616ELL && a2 == 0xEA00000000007869;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000001DD66B480 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000013 && 0x80000001DD66B6A0 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x79676F6C6F746E6FLL && a2 == 0xEE00656372756F53;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x65646F4E6F7375 && a2 == 0xE700000000000000)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1DD640CD8();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

uint64_t sub_1DD41F0A8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 1699574633;
    case 2:
      v3 = 0x614E6C6C7566;
      goto LABEL_9;
    case 3:
      return 0x66657250656D616ELL;
    case 4:
      return 0x6D614E6E65766967;
    case 5:
      v4 = 0x656C6464696DLL;
      goto LABEL_16;
    case 6:
      v4 = 0x796C696D6166;
LABEL_16:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x66667553656D616ELL;
      break;
    case 9:
      v3 = 0x616E6B63696ELL;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6E6F6974616C6572;
      break;
    case 12:
      result = 0x656C646E6168;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x79676F6C6F746E6FLL;
      break;
    case 15:
      result = 0x65646F4E6F7375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD41F25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD41EBBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD41F284@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD41F0A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD41F2AC(uint64_t a1)
{
  v2 = sub_1DD420E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD41F2E8(uint64_t a1)
{
  v2 = sub_1DD420E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactQuery.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v62 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC768, &qword_1DD648258);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v13 = *v0;
  v12 = v0[1];
  v69 = *(v0 + 16);
  v14 = v0[3];
  v60 = v0[4];
  v61 = v14;
  v15 = v0[5];
  v58 = v0[6];
  v59 = v15;
  v16 = v0[7];
  v56 = v0[8];
  v57 = v16;
  v17 = v0[10];
  v54 = v0[9];
  v55 = v17;
  v18 = v0[12];
  v52 = v0[11];
  v53 = v18;
  v19 = v0[14];
  v50 = v0[13];
  v51 = v19;
  v20 = v0[16];
  v48 = v0[15];
  v49 = v20;
  v21 = v0[18];
  v46 = v0[17];
  v47 = v21;
  v22 = v0[20];
  v44 = v0[19];
  v45 = v22;
  v23 = v0[22];
  v41 = v0[21];
  v42 = v23;
  v24 = v0[24];
  v43 = v0[23];
  v35 = v24;
  v25 = v0[26];
  v36 = v0[25];
  v37 = v25;
  v26 = v0[28];
  v40 = v0[27];
  v39 = v26;
  v27 = v0[30];
  v38 = v0[29];
  v34 = v27;
  v33 = *(v0 + 248);
  v32 = v0[32];
  v28 = v3[4];
  OUTLINED_FUNCTION_41_3(v3, v3[3]);
  sub_1DD420E48();
  sub_1DD640EF8();
  LOBYTE(v63) = 0;
  v29 = v62;
  sub_1DD640C18();
  if (v29)
  {
    (*(v6 + 8))(v11, v4);
  }

  else
  {
    v62 = v6;
    LOBYTE(v63) = 1;
    sub_1DD640C28();
    OUTLINED_FUNCTION_22_5(2);
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_22_5(3);
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_22_5(4);
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_22_5(5);
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_22_5(6);
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_22_5(7);
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_22_5(8);
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_22_5(9);
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_22_5(10);
    sub_1DD640C18();
    v63 = v41;
    v64 = v42;
    v65 = v43;
    sub_1DD41D254(v41, v42, v43);
    sub_1DD420E9C();
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_47();
    sub_1DD640C08();
    sub_1DD4178B4(v63, v64, v65);
    v63 = v35;
    v64 = v36;
    v65 = v37;
    v66 = v40;
    v67 = v39;
    v68 = v38;
    sub_1DD4178F8(v35, v36, v37);
    sub_1DD420EF0();
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_47();
    sub_1DD640C08();
    sub_1DD3FAA54(v63, v64, v65);
    v63 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC770, &qword_1DD648260);
    sub_1DD4234FC(&unk_1EE1638E8);
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_47();
    sub_1DD640C68();
    LOBYTE(v63) = v33;
    sub_1DD420F98();
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_47();
    sub_1DD640C68();
    v63 = v32;
    v30 = OUTLINED_FUNCTION_15_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    sub_1DD424AF8(&unk_1EE165A90);
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_47();
    sub_1DD640C68();
    (*(v62 + 8))(v11, v4);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t ContactQuery.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v27 = v1[10];
  v28 = v1[9];
  v29 = v1[12];
  v30 = v1[11];
  v31 = v1[14];
  v32 = v1[13];
  v33 = v1[16];
  v34 = v1[15];
  v35 = v1[18];
  v36 = v1[17];
  v37 = v1[20];
  v38 = v1[19];
  v20 = v1[21];
  v21 = v1[22];
  v12 = v1[23];
  v25 = v1[25];
  v26 = v1[24];
  v39 = v1[26];
  v23 = v1[28];
  v24 = v1[27];
  v22 = v1[29];
  v40 = v1[30];
  v41 = *(v1 + 248);
  sub_1DD63FD28();
  sub_1DD640E48();
  sub_1DD63FD28();
  OUTLINED_FUNCTION_63_0();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  if (v12)
  {
    OUTLINED_FUNCTION_64();
    if (v20)
    {
      OUTLINED_FUNCTION_64();

      sub_1DD41CC10(a1);
    }

    else
    {
      OUTLINED_FUNCTION_66();
    }

    sub_1DD63FD28();
    v13 = OUTLINED_FUNCTION_12_13();
    sub_1DD4178B4(v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (v39)
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v26);

    sub_1DD63FD28();
    sub_1DD416068(a1, v24);
    sub_1DD63FD28();
    v16 = OUTLINED_FUNCTION_12_13();
    sub_1DD3FAA54(v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  sub_1DD4160C8(a1, v40);

  return sub_1DD409A40();
}

uint64_t ContactQuery.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  ContactQuery.hash(into:)(v1);
  return sub_1DD640E78();
}

void ContactQuery.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC780, &qword_1DD648270);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_39_3();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_41_3(v2, v9);
  sub_1DD420E48();
  sub_1DD640ED8();
  if (v0)
  {
    OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_62_3();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_21_6();
    v54 = v12;
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v92 = 0;
    *&v92[8] = 0xE000000000000000;
    v92[16] = 0;
    *&v92[17] = *v114;
    *&v92[20] = *&v114[3];
    v93 = v77;
    v94 = 0xE000000000000000;
    v95 = v75;
    v96 = 0xE000000000000000;
    v97 = v73;
    v98 = v10;
    v99 = v71;
    v100 = v9;
    v101 = v69;
    v102 = v5;
    OUTLINED_FUNCTION_30_7();
    v103 = v87;
    v104 = v85;
    v105 = v83;
    v106 = 0xE000000000000000;
    *(v13 + 176) = 0u;
    *(v13 + 192) = v54;
    v107 = v80;
    v108 = v59;
    v109 = v61;
    v110 = v63;
    OUTLINED_FUNCTION_45_3(v65);
    *(v15 + 249) = *v14;
    v111 = *(v14 + 3);
    v112 = 0;
  }

  else
  {
    v92[0] = 0;
    v11 = sub_1DD640B28();
    v52 = v16;
    v53 = v11;
    OUTLINED_FUNCTION_2_20(1);
    v51 = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_2_20(2);
    v17 = sub_1DD640B28();
    v50 = v18;
    v78 = v17;
    OUTLINED_FUNCTION_2_20(3);
    v19 = sub_1DD640B28();
    v49 = v20;
    v76 = v19;
    OUTLINED_FUNCTION_2_20(4);
    v21 = sub_1DD640B28();
    v48 = v22;
    v74 = v21;
    OUTLINED_FUNCTION_2_20(5);
    v23 = sub_1DD640B28();
    v47 = v24;
    v72 = v23;
    OUTLINED_FUNCTION_2_20(6);
    v25 = sub_1DD640B28();
    v46 = v26;
    v70 = v25;
    OUTLINED_FUNCTION_2_20(7);
    v27 = sub_1DD640B28();
    v58 = v28;
    v68 = v27;
    OUTLINED_FUNCTION_2_20(8);
    v29 = sub_1DD640B28();
    v57 = v30;
    v67 = v29;
    OUTLINED_FUNCTION_2_20(9);
    v31 = sub_1DD640B28();
    v86 = v32;
    v88 = v31;
    OUTLINED_FUNCTION_2_20(10);
    v33 = sub_1DD640B28();
    v82 = v34;
    v84 = v33;
    sub_1DD423454();
    OUTLINED_FUNCTION_13_11();
    sub_1DD640B18();
    v81 = *v92;
    v79 = *&v92[8];
    v35 = OUTLINED_FUNCTION_24_5();
    sub_1DD4178B4(v35, v36, v37);
    sub_1DD4234A8();
    OUTLINED_FUNCTION_13_11();
    sub_1DD640B18();
    v55 = *v92;
    v60 = *&v92[16];
    v62 = v93;
    v64 = v94;
    v66 = v95;
    v38 = OUTLINED_FUNCTION_24_5();
    sub_1DD3FAA54(v38, v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC770, &qword_1DD648260);
    sub_1DD4234FC(&unk_1EE160270);
    OUTLINED_FUNCTION_54_3();
    v56 = *v92;
    v89[0] = 14;
    sub_1DD4235C4();
    OUTLINED_FUNCTION_13_11();
    sub_1DD640B78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC778, &qword_1DD648268);
    v90 = 15;
    sub_1DD424AF8(&unk_1EE1632B0);
    OUTLINED_FUNCTION_54_3();
    v41 = OUTLINED_FUNCTION_8_10();
    v42(v41);
    v45 = v91;
    *v89 = v53;
    *&v89[8] = v52;
    v89[16] = v51;
    *&v89[24] = v78;
    *&v89[32] = v50;
    *&v89[40] = v76;
    *&v89[48] = v49;
    *&v89[56] = v74;
    *&v89[64] = v48;
    *&v89[72] = v72;
    *&v89[80] = v47;
    *&v89[88] = v70;
    *&v89[96] = v46;
    *&v89[104] = v68;
    *&v89[112] = v58;
    *&v89[120] = v67;
    *&v89[128] = v57;
    *&v89[136] = v88;
    *&v89[144] = v86;
    *&v89[152] = v84;
    *&v89[160] = v82;
    *&v89[168] = v81;
    *&v89[176] = v79;
    *&v89[192] = v55;
    *&v89[208] = v60;
    *&v89[216] = v62;
    *&v89[224] = v64;
    *&v89[232] = v66;
    *&v89[240] = v56;
    v89[248] = 0;
    *&v89[249] = *v113;
    *&v89[252] = *&v113[3];
    *&v89[256] = v91;
    memcpy(v4, v89, 0x108uLL);
    sub_1DD3C9478(v89, v92);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v92 = v53;
    *&v92[8] = v52;
    v92[16] = v51;
    *&v92[17] = *v114;
    *&v92[20] = *&v114[3];
    v93 = v78;
    v94 = v50;
    v95 = v76;
    v96 = v49;
    v97 = v74;
    v98 = v48;
    v99 = v72;
    v100 = v47;
    v101 = v70;
    v102 = v46;
    OUTLINED_FUNCTION_30_7();
    v103 = v88;
    v104 = v86;
    v105 = v84;
    v106 = v82;
    *(v43 + 176) = v79;
    *(v43 + 192) = v55;
    v107 = v81;
    v108 = v60;
    v109 = v62;
    v110 = v64;
    OUTLINED_FUNCTION_45_3(v66);
    *(v44 + 249) = *v113;
    v111 = *&v113[3];
    v112 = v45;
  }

  sub_1DD3C9580(v92);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD42050C()
{
  sub_1DD640E28();
  ContactQuery.hash(into:)(v1);
  return sub_1DD640E78();
}

uint64_t static ContactRelationshipQuery.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if (!*a1)
  {
    if (!v6)
    {
      goto LABEL_4;
    }

LABEL_10:
    v10 = 0;
    return v10 & 1;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  memcpy(__dst, (v3 + 16), sizeof(__dst));
  memcpy(__src, (v3 + 16), sizeof(__src));
  memcpy(v15, (v6 + 16), sizeof(v15));
  memcpy(v12, (v6 + 16), sizeof(v12));
  sub_1DD3C9478(__dst, v17);
  sub_1DD3C9478(v15, v17);
  v8 = static ContactQuery.== infix(_:_:)(__src, v12);
  memcpy(v16, v12, sizeof(v16));
  sub_1DD3C9580(v16);
  memcpy(v17, __src, sizeof(v17));
  sub_1DD3C9580(v17);
  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v2 == v5 && v4 == v7)
  {
    v10 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_40_4();
    v10 = sub_1DD640CD8();
  }

  return v10 & 1;
}

uint64_t sub_1DD42066C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6F436D6F7266 && a2 == 0xEB00000000746361;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD420734(char a1)
{
  if (a1)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x746E6F436D6F7266;
  }
}

uint64_t sub_1DD420778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD42066C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4207A0(uint64_t a1)
{
  v2 = sub_1DD423618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4207DC(uint64_t a1)
{
  v2 = sub_1DD423618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactRelationshipQuery.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC788, &qword_1DD648278);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_5();
  v9 = *v0;
  v15 = v0[2];
  v16 = v0[1];
  v10 = v2[4];
  OUTLINED_FUNCTION_41_3(v2, v2[3]);
  v11 = sub_1DD423618();

  sub_1DD640EF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC760, &qword_1DD648250);
  sub_1DD423714(&unk_1ECCDC798);
  OUTLINED_FUNCTION_32();
  sub_1DD640C08();

  if (!v11)
  {
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
  }

  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_15();
  v14(v13);
  OUTLINED_FUNCTION_86();
}

uint64_t ContactRelationshipQuery.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  if (*v1)
  {
    OUTLINED_FUNCTION_64();
    sub_1DD41CC10(a1);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_63_0();

  return sub_1DD63FD28();
}

uint64_t ContactRelationshipQuery.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_79();
  sub_1DD640E48();
  if (v2)
  {
    sub_1DD41CC10(v5);
  }

  sub_1DD63FD28();
  return sub_1DD640E78();
}

void ContactRelationshipQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_93();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC7A0, &qword_1DD648280);
  OUTLINED_FUNCTION_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  v19 = v12[4];
  OUTLINED_FUNCTION_41_3(v12, v12[3]);
  sub_1DD423618();
  OUTLINED_FUNCTION_48_4();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC760, &qword_1DD648250);
    sub_1DD423714(&unk_1ECCDC7A8);
    OUTLINED_FUNCTION_35_4();
    sub_1DD640B18();
    OUTLINED_FUNCTION_35_4();
    v20 = sub_1DD640B28();
    v22 = v21;
    v23 = OUTLINED_FUNCTION_41();
    v24(v23);
    *v14 = a10;
    v14[1] = v20;
    v14[2] = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD420CB4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1DD640E28();
  sub_1DD640E48();
  if (v2)
  {
    sub_1DD41CC10(v5);
  }

  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t ContactHandleQuery.normalizedLabels.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t static ContactHandleQuery.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v6 = a2[3];
  v5 = a2[4];
  v7 = a2[5];
  v8 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v8 && (sub_1DD640CD8() & 1) == 0 || (sub_1DD3C3778(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_40_4();

  return sub_1DD640CD8();
}

unint64_t sub_1DD420E48()
{
  result = qword_1EE165A88;
  if (!qword_1EE165A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A88);
  }

  return result;
}

unint64_t sub_1DD420E9C()
{
  result = qword_1EE164078;
  if (!qword_1EE164078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE164078);
  }

  return result;
}

unint64_t sub_1DD420EF0()
{
  result = qword_1EE1654C0;
  if (!qword_1EE1654C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1654C0);
  }

  return result;
}

unint64_t sub_1DD420F44()
{
  result = qword_1EE163A70;
  if (!qword_1EE163A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163A70);
  }

  return result;
}

unint64_t sub_1DD420F98()
{
  result = qword_1EE1651F8;
  if (!qword_1EE1651F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1651F8);
  }

  return result;
}

uint64_t sub_1DD420FEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001DD66B6C0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

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

unint64_t sub_1DD42114C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4211CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD420FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4211F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD421144();
  *a1 = result;
  return result;
}

uint64_t sub_1DD42121C(uint64_t a1)
{
  v2 = sub_1DD423788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD421258(uint64_t a1)
{
  v2 = sub_1DD423788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactHandleQuery.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC7B0, &qword_1DD648288);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_5();
  v10 = *v0;
  v18 = v0[2];
  v19 = v0[1];
  v16 = v0[4];
  v17 = v0[3];
  v15 = v0[5];
  v11 = v3[4];
  OUTLINED_FUNCTION_41_3(v3, v3[3]);
  sub_1DD423788();
  sub_1DD640EF8();
  sub_1DD415E20();
  OUTLINED_FUNCTION_32();
  sub_1DD640C68();
  if (!v1)
  {
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD417E00(&unk_1EE1638D0);
    OUTLINED_FUNCTION_32();
    sub_1DD640C68();
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
  }

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_15();
  v14(v13);
  OUTLINED_FUNCTION_86();
}

uint64_t ContactHandleQuery.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  MEMORY[0x1E12B3140](*v1);
  OUTLINED_FUNCTION_63_0();
  sub_1DD63FD28();
  sub_1DD416068(a1, v5);

  return sub_1DD63FD28();
}

uint64_t ContactHandleQuery.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](v1);
  sub_1DD63FD28();
  sub_1DD416068(v8, v4);
  sub_1DD63FD28();
  return sub_1DD640E78();
}

void ContactHandleQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13)
{
  OUTLINED_FUNCTION_93();
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC7C0, &qword_1DD648298);
  OUTLINED_FUNCTION_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v36 - v24;
  v26 = v15[4];
  OUTLINED_FUNCTION_41_3(v15, v15[3]);
  sub_1DD423788();
  sub_1DD640ED8();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_1DD415E74();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_57_4();
    sub_1DD640B78();
    OUTLINED_FUNCTION_57_4();
    v27 = sub_1DD640B28();
    v29 = v28;
    v38 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD417E00(&unk_1EE160268);
    OUTLINED_FUNCTION_57_4();
    sub_1DD640B78();
    v37 = a13;
    v30 = v39;
    OUTLINED_FUNCTION_57_4();
    v31 = sub_1DD640B28();
    v33 = v32;
    v34 = *(v20 + 8);
    v36 = v31;
    v34(v25, v18);
    *v17 = v37;
    *(v17 + 8) = v38;
    *(v17 + 16) = v29;
    v35 = v36;
    *(v17 + 24) = v30;
    *(v17 + 32) = v35;
    *(v17 + 40) = v33;

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD4218B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  sub_1DD63FD28();
  sub_1DD416068(v8, v4);
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD421948()
{
  v1 = v0;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](v1[1], v1[2]);
  MEMORY[0x1E12B2260](1029990696, 0xE400000000000000);
  MEMORY[0x1E12B2260](v1[3], v1[4]);
  MEMORY[0x1E12B2260](0x3D65726F637320, 0xE700000000000000);
  v2 = v0[5];
  sub_1DD640228();
  OUTLINED_FUNCTION_65();
  return 0;
}

BOOL sub_1DD4219FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v5 || (sub_1DD640CD8()) && (*(a1 + 3) == *(a2 + 3) ? (v6 = *(a1 + 4) == *(a2 + 4)) : (v6 = 0), v6 || (sub_1DD640CD8()))
  {
    return *(a1 + 5) == *(a2 + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD421A98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

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

uint64_t sub_1DD421BE0(char a1)
{
  result = 0x72656469766F7270;
  switch(a1)
  {
    case 1:
      result = 0x6449707061;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD421C50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC820, &qword_1DD648C98);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_5();
  v11 = a1[4];
  OUTLINED_FUNCTION_41_3(a1, a1[3]);
  sub_1DD424114();
  sub_1DD640EF8();
  v21 = *v3;
  sub_1DD424168();
  OUTLINED_FUNCTION_56();
  sub_1DD640C68();
  if (!v2)
  {
    v12 = *(v3 + 1);
    v13 = *(v3 + 2);
    OUTLINED_FUNCTION_56();
    sub_1DD640C18();
    v14 = *(v3 + 3);
    v15 = *(v3 + 4);
    OUTLINED_FUNCTION_56();
    sub_1DD640C18();
    v16 = *(v3 + 5);
    OUTLINED_FUNCTION_56();
    sub_1DD640C38();
  }

  v17 = *(v7 + 8);
  v18 = OUTLINED_FUNCTION_15();
  return v19(v18);
}

uint64_t sub_1DD421DEC()
{
  MEMORY[0x1E12B3140](*v0);
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_1DD63FD28();
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  sub_1DD63FD28();
  v5 = *(v0 + 5);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x1E12B3170](*&v5);
}

uint64_t sub_1DD421E48()
{
  OUTLINED_FUNCTION_79();
  sub_1DD421DEC();
  return sub_1DD640E78();
}

uint64_t sub_1DD421E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC828, &unk_1DD648CA0);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  OUTLINED_FUNCTION_41_3(a1, a1[3]);
  sub_1DD424114();
  OUTLINED_FUNCTION_48_4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1DD4241BC();
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_35_4();
  sub_1DD640B78();
  OUTLINED_FUNCTION_35_4();
  v10 = sub_1DD640B28();
  v12 = v11;
  v22 = v10;
  OUTLINED_FUNCTION_35_4();
  v13 = sub_1DD640B28();
  v15 = v14;
  v21 = v13;
  OUTLINED_FUNCTION_35_4();
  sub_1DD640B48();
  v17 = v16;
  v18 = OUTLINED_FUNCTION_0_0();
  v19(v18);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v12;
  *(a2 + 24) = v21;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_1DD4220C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61636F5669726973 && a2 == 0xE900000000000062;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1935894896 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD422198(char a1)
{
  if (a1)
  {
    return 1935894896;
  }

  else
  {
    return 0x61636F5669726973;
  }
}

void sub_1DD4221CC()
{
  OUTLINED_FUNCTION_93();
  v30 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC840, &qword_1DD648E88);
  v5 = OUTLINED_FUNCTION_0(v4);
  v28 = v6;
  v29 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC848, &qword_1DD648E90);
  OUTLINED_FUNCTION_0(v27);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_39_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC850, &qword_1DD648E98);
  OUTLINED_FUNCTION_0(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v27 - v23;
  v25 = v3[4];
  OUTLINED_FUNCTION_41_3(v3, v3[3]);
  sub_1DD424530();
  sub_1DD640EF8();
  v26 = (v19 + 8);
  if (v30)
  {
    sub_1DD424584();
    OUTLINED_FUNCTION_58_2();
    sub_1DD640BB8();
    (*(v28 + 8))(v11, v29);
  }

  else
  {
    sub_1DD4245D8();
    OUTLINED_FUNCTION_58_2();
    sub_1DD640BB8();
    (*(v13 + 8))(v0, v27);
  }

  (*v26)(v24, v17);
  OUTLINED_FUNCTION_86();
}

void sub_1DD422434()
{
  OUTLINED_FUNCTION_93();
  v48 = v0;
  v3 = v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC860, &qword_1DD648EA0);
  OUTLINED_FUNCTION_0(v47);
  v45 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC868, &qword_1DD648EA8);
  OUTLINED_FUNCTION_0(v10);
  v44 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_39_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC870, &unk_1DD648EB0);
  OUTLINED_FUNCTION_0(v15);
  v46 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v22 = v3[4];
  OUTLINED_FUNCTION_41_3(v3, v3[3]);
  sub_1DD424530();
  v23 = v48;
  sub_1DD640ED8();
  if (v23)
  {
    goto LABEL_8;
  }

  v42 = v10;
  v43 = v1;
  v48 = v3;
  v24 = v47;
  v25 = sub_1DD640B98();
  sub_1DD418088(v25, 0);
  if (v27 == v28 >> 1)
  {
LABEL_7:
    v34 = sub_1DD640938();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C8, &qword_1DD6559A0) + 48);
    *v36 = &unk_1F58B32C0;
    sub_1DD640AC8();
    sub_1DD640928();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v46 + 8))(v21, v15);
    v3 = v48;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_9:
    OUTLINED_FUNCTION_86();
    return;
  }

  v41 = 0;
  if (v27 < (v28 >> 1))
  {
    v29 = *(v26 + v27);
    sub_1DD41805C(v27 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if (v29)
      {
        LODWORD(v44) = v29;
        sub_1DD424584();
        OUTLINED_FUNCTION_53_3();
        swift_unknownObjectRelease();
        (*(v45 + 8))(v9, v24);
      }

      else
      {
        sub_1DD4245D8();
        v38 = v43;
        OUTLINED_FUNCTION_53_3();
        swift_unknownObjectRelease();
        (*(v44 + 8))(v38, v42);
      }

      v39 = OUTLINED_FUNCTION_27_7();
      v40(v39);
      __swift_destroy_boxed_opaque_existential_1(v48);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DD4228A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD421A98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4228CC(uint64_t a1)
{
  v2 = sub_1DD424114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD422908(uint64_t a1)
{
  v2 = sub_1DD424114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD422944@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DD421E80(a1, v6);
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

uint64_t sub_1DD4229AC()
{
  sub_1DD640E28();
  sub_1DD421DEC();
  return sub_1DD640E78();
}

uint64_t sub_1DD4229F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4220C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD422A1C(uint64_t a1)
{
  v2 = sub_1DD424530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD422A58(uint64_t a1)
{
  v2 = sub_1DD424530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD422A94(uint64_t a1)
{
  v2 = sub_1DD424584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD422AD0(uint64_t a1)
{
  v2 = sub_1DD424584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD422B0C(uint64_t a1)
{
  v2 = sub_1DD4245D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD422B48(uint64_t a1)
{
  v2 = sub_1DD4245D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD422B84(_BYTE *a1@<X8>)
{
  sub_1DD422434();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_1DD422BD0()
{
  v1 = *v0;
  v2 = 1;
  switch(*v0)
  {
    case 3:
      goto LABEL_6;
    default:
      v3 = sub_1DD640CD8();

      if (v3)
      {
        v2 = 1;
      }

      else
      {
        v2 = 1;
        switch(v1)
        {
          case 0:
          case 1:
          case 3:
          case 4:
            v2 = sub_1DD640CD8();
            break;
          case 2:
            break;
          default:
            JUMPOUT(0);
        }

LABEL_6:
      }

      return v2 & 1;
  }
}

SiriInference::ContactOntologySource_optional __swiftcall ContactOntologySource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactOntologySource.rawValue.getter()
{
  result = 0x6E6F737265506E69;
  switch(*v0)
  {
    case 1:
      result = 0x7372655033766C6ELL;
      break;
    case 2:
      result = 0x746E6567416F7375;
      break;
    case 3:
      result = 0x6F737265506F7375;
      break;
    case 4:
      result = 0x6863726165536669;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD422E94@<X0>(uint64_t *a1@<X8>)
{
  result = ContactOntologySource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD422F70(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = sub_1DD41E198() & 1;
  if (__dst[23])
  {
    if ((__dst[23] & 0x2000000000000000) != 0 ? HIBYTE(__dst[23]) & 0xFLL : __dst[22] & 0xFFFFFFFFFFFFLL)
    {
      v1 |= 2uLL;
    }
  }

  v3 = __dst[26];
  if (__dst[26])
  {
    v5 = __dst[28];
    v4 = __dst[29];
    v7 = __dst[24];
    v6 = __dst[25];

    sub_1DD3C9580(__dst);
    v8 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v1 |= 4uLL;
    }

    sub_1DD3FAA54(v7, v6, v3);
    v9 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v9 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      return v1 | 8;
    }
  }

  else
  {
    sub_1DD3C9580(__dst);
  }

  return v1;
}

uint64_t sub_1DD423088(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1DD3BE2A4();
  v2 = v3;
  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_28_4();
    v2 = v14;
  }

  *(v2 + 16) = v4 + 1;
  v5 = v2 + 16 * v4;
  *(v5 + 32) = 1701667182;
  *(v5 + 40) = 0xE400000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v2 = v15;
    }

    v6 = *(v2 + 16);
    if (v6 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_28_4();
      v2 = v16;
    }

    *(v2 + 16) = v6 + 1;
    v7 = v2 + 16 * v6;
    strcpy((v7 + 32), "relationship");
    *(v7 + 45) = 0;
    *(v7 + 46) = -5120;
  }

LABEL_12:
  if ((a1 & 4) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_23();
    v2 = v17;
  }

  v8 = *(v2 + 16);
  if (v8 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_28_4();
    v2 = v18;
  }

  *(v2 + 16) = v8 + 1;
  v9 = v2 + 16 * v8;
  *(v9 + 32) = 0x614C656C646E6168;
  *(v9 + 40) = 0xEB000000006C6562;
  if ((a1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v2 = v19;
    }

    v10 = *(v2 + 16);
    if (v10 >= *(v2 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v2 = v20;
    }

    *(v2 + 16) = v10 + 1;
    v11 = v2 + 16 * v10;
    *(v11 + 32) = 0x6156656C646E6168;
    *(v11 + 40) = 0xEB0000000065756CLL;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD424AF8(qword_1EE166498);
  v12 = sub_1DD63FD58();

  return v12;
}

uint64_t sub_1DD4232DC@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_14_23();
  *a1 = result;
  return result;
}

uint64_t sub_1DD423304@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD455C34(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DD423334@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD587164(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DD423364@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD455C58(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DD423394@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD455C2C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DD4233C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD455C28(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DD4233FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD455C48(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DD42342C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD455C50();
  *a1 = result;
  return result;
}

unint64_t sub_1DD423454()
{
  result = qword_1EE161740;
  if (!qword_1EE161740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161740);
  }

  return result;
}

unint64_t sub_1DD4234A8()
{
  result = qword_1EE1623E0;
  if (!qword_1EE1623E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1623E0);
  }

  return result;
}

unint64_t sub_1DD4234FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC770, &qword_1DD648260);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD423570()
{
  result = qword_1EE160370;
  if (!qword_1EE160370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160370);
  }

  return result;
}

unint64_t sub_1DD4235C4()
{
  result = qword_1EE161BE0;
  if (!qword_1EE161BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161BE0);
  }

  return result;
}

unint64_t sub_1DD423618()
{
  result = qword_1ECCDC790;
  if (!qword_1ECCDC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC790);
  }

  return result;
}

unint64_t sub_1DD42366C()
{
  result = qword_1EE163298;
  if (!qword_1EE163298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163298);
  }

  return result;
}

unint64_t sub_1DD4236C0()
{
  result = qword_1EE165A70;
  if (!qword_1EE165A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A70);
  }

  return result;
}

unint64_t sub_1DD423714(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC760, &qword_1DD648250);
    sub_1DD42366C();
    sub_1DD4236C0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD423788()
{
  result = qword_1ECCDC7B8;
  if (!qword_1ECCDC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7B8);
  }

  return result;
}

unint64_t sub_1DD4237E0()
{
  result = qword_1EE1632A0;
  if (!qword_1EE1632A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1632A0);
  }

  return result;
}

unint64_t sub_1DD423838()
{
  result = qword_1ECCDC7C8;
  if (!qword_1ECCDC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7C8);
  }

  return result;
}

unint64_t sub_1DD423890()
{
  result = qword_1ECCDC7D0;
  if (!qword_1ECCDC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7D0);
  }

  return result;
}

unint64_t sub_1DD4238E8()
{
  result = qword_1ECCDC7D8;
  if (!qword_1ECCDC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7D8);
  }

  return result;
}

uint64_t sub_1DD423944(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_1DD423984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactActionType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ContactOntologySource(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactQuery.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD423D0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DD423D4C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1DD423DA8()
{
  result = qword_1ECCDC7E0;
  if (!qword_1ECCDC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7E0);
  }

  return result;
}

unint64_t sub_1DD423E00()
{
  result = qword_1ECCDC7E8;
  if (!qword_1ECCDC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7E8);
  }

  return result;
}

unint64_t sub_1DD423E58()
{
  result = qword_1ECCDC7F0;
  if (!qword_1ECCDC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7F0);
  }

  return result;
}

unint64_t sub_1DD423EB0()
{
  result = qword_1ECCDC7F8;
  if (!qword_1ECCDC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7F8);
  }

  return result;
}