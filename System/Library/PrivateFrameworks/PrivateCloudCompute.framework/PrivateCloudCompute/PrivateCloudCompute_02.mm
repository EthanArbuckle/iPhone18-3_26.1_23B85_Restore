uint64_t sub_1CEF5BE70(uint64_t a1)
{
  v2 = sub_1CEF5C8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BEAC(uint64_t a1)
{
  v2 = sub_1CEF5C8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BEE8(uint64_t a1)
{
  v2 = sub_1CEF5C848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BF24(uint64_t a1)
{
  v2 = sub_1CEF5C848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BF60(uint64_t a1)
{
  v2 = sub_1CEF5C998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BF9C(uint64_t a1)
{
  v2 = sub_1CEF5C998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BFD8(uint64_t a1)
{
  v2 = sub_1CEF5C7F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5C014(uint64_t a1)
{
  v2 = sub_1CEF5C7F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.AvailabilityInfo.Reason.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9510, &qword_1CEFAC0B8);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9518, &qword_1CEFAC0C0);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9520, &qword_1CEFAC0C8);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9528, &qword_1CEFAC0D0);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v47 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9530, &qword_1CEFAC0D8);
  v64 = *(v48 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v63 = &v47 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9538, &qword_1CEFAC0E0);
  v62 = *(v47 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9540, &qword_1CEFAC0E8);
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9548, &qword_1CEFAC0F0);
  v25 = *(v66 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v47 - v27;
  v29 = *v2;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5C74C();
  v65 = v28;
  sub_1CEFA8A60();
  v31 = (v25 + 8);
  if (v29 <= 2)
  {
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    if (v29)
    {
      if (v29 == 1)
      {
        v68 = 1;
        sub_1CEF5C944();
        v42 = v65;
        v41 = v66;
        sub_1CEFA8820();
        (*(v38 + 8))(v20, v47);
      }

      else
      {
        v69 = 2;
        sub_1CEF5C8F0();
        v46 = v39;
        v42 = v65;
        v41 = v66;
        sub_1CEFA8820();
        (*(v40 + 8))(v46, v48);
      }

      return (*v31)(v42, v41);
    }

    else
    {
      v67 = 0;
      sub_1CEF5C998();
      v43 = v65;
      v44 = v66;
      sub_1CEFA8820();
      (*(v37 + 8))(v24, v21);
      return (*v31)(v43, v44);
    }
  }

  else
  {
    if (v29 > 4)
    {
      if (v29 == 5)
      {
        v72 = 5;
        sub_1CEF5C7F4();
        v32 = v55;
        v33 = v65;
        v34 = v66;
        sub_1CEFA8820();
        v36 = v56;
        v35 = v57;
      }

      else
      {
        v73 = 6;
        sub_1CEF5C7A0();
        v32 = v58;
        v33 = v65;
        v34 = v66;
        sub_1CEFA8820();
        v36 = v59;
        v35 = v60;
      }
    }

    else if (v29 == 3)
    {
      v70 = 3;
      sub_1CEF5C89C();
      v32 = v49;
      v33 = v65;
      v34 = v66;
      sub_1CEFA8820();
      v36 = v50;
      v35 = v51;
    }

    else
    {
      v71 = 4;
      sub_1CEF5C848();
      v32 = v52;
      v33 = v65;
      v34 = v66;
      sub_1CEFA8820();
      v36 = v53;
      v35 = v54;
    }

    (*(v36 + 8))(v32, v35);
    return (*v31)(v33, v34);
  }
}

unint64_t sub_1CEF5C74C()
{
  result = qword_1EC4A9550;
  if (!qword_1EC4A9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9550);
  }

  return result;
}

unint64_t sub_1CEF5C7A0()
{
  result = qword_1EC4A9558;
  if (!qword_1EC4A9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9558);
  }

  return result;
}

unint64_t sub_1CEF5C7F4()
{
  result = qword_1EC4A9560;
  if (!qword_1EC4A9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9560);
  }

  return result;
}

unint64_t sub_1CEF5C848()
{
  result = qword_1EC4A9568;
  if (!qword_1EC4A9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9568);
  }

  return result;
}

unint64_t sub_1CEF5C89C()
{
  result = qword_1EC4A9570;
  if (!qword_1EC4A9570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9570);
  }

  return result;
}

unint64_t sub_1CEF5C8F0()
{
  result = qword_1EC4A9578;
  if (!qword_1EC4A9578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9578);
  }

  return result;
}

unint64_t sub_1CEF5C944()
{
  result = qword_1EC4A9580;
  if (!qword_1EC4A9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9580);
  }

  return result;
}

unint64_t sub_1CEF5C998()
{
  result = qword_1EC4A9588;
  if (!qword_1EC4A9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9588);
  }

  return result;
}

uint64_t TrustedCloudComputeError.AvailabilityInfo.Reason.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9590, &qword_1CEFAC0F8);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9598, &qword_1CEFAC100);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95A0, &qword_1CEFAC108);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95A8, &qword_1CEFAC110);
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v57 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95B0, &qword_1CEFAC118);
  v62 = *(v63 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v73 = &v57 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95B8, &qword_1CEFAC120);
  v60 = *(v61 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95C0, &qword_1CEFAC128);
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95C8, &unk_1CEFAC130);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1CEF5C74C();
  v31 = v79;
  sub_1CEFA8A50();
  if (!v31)
  {
    v32 = v23;
    v57 = v20;
    v58 = v19;
    v33 = v75;
    v34 = v76;
    v35 = v77;
    v79 = v25;
    v36 = sub_1CEFA8800();
    v37 = (2 * *(v36 + 16)) | 1;
    v80 = v36;
    v81 = v36 + 32;
    v82 = 0;
    v83 = v37;
    v38 = sub_1CEF3F4B8();
    v39 = v28;
    if (v38 != 7 && v82 == v83 >> 1)
    {
      v84 = v38;
      if (v38 > 2u)
      {
        if (v38 > 4u)
        {
          v42 = v74;
          v53 = v79;
          if (v38 == 5)
          {
            v85 = 5;
            sub_1CEF5C7F4();
            v54 = v72;
            sub_1CEFA8710();
            (*(v68 + 8))(v54, v69);
          }

          else
          {
            v85 = 6;
            sub_1CEF5C7A0();
            sub_1CEFA8710();
            (*(v70 + 8))(v35, v71);
          }

          (*(v53 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v78;
        }

        else
        {
          v40 = v78;
          v41 = v79;
          v42 = v74;
          if (v38 == 3)
          {
            v85 = 3;
            sub_1CEF5C89C();
            sub_1CEFA8710();
            (*(v64 + 8))(v33, v65);
          }

          else
          {
            v85 = 4;
            sub_1CEF5C848();
            sub_1CEFA8710();
            (*(v66 + 8))(v34, v67);
          }

          (*(v41 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v40;
        }

        goto LABEL_24;
      }

      if (v38)
      {
        if (v38 != 1)
        {
          v85 = 2;
          sub_1CEF5C8F0();
          v56 = v73;
          sub_1CEFA8710();
          v50 = *(v62 + 8);
          v51 = v56;
          v55 = v63;
          goto LABEL_19;
        }

        v85 = 1;
        sub_1CEF5C944();
        v49 = v58;
        sub_1CEFA8710();
        v50 = *(v60 + 8);
        v51 = v49;
        v52 = &v87;
      }

      else
      {
        v85 = 0;
        sub_1CEF5C998();
        sub_1CEFA8710();
        v50 = *(v59 + 8);
        v51 = v32;
        v52 = &v86;
      }

      v55 = *(v52 - 32);
LABEL_19:
      v50(v51, v55);
      (*(v79 + 8))(v39, v24);
      swift_unknownObjectRelease();
      v47 = v78;
      v42 = v74;
LABEL_24:
      *v42 = v84;
      return __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v43 = sub_1CEFA8680();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20) + 48);
    *v45 = &type metadata for TrustedCloudComputeError.AvailabilityInfo.Reason;
    sub_1CEFA8720();
    sub_1CEFA8670();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v79 + 8))(v39, v24);
    swift_unknownObjectRelease();
  }

  v47 = v78;
  return __swift_destroy_boxed_opaque_existential_0(v47);
}

uint64_t sub_1CEF5D364(uint64_t a1)
{
  v2 = sub_1CEF5D5AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5D3A0(uint64_t a1)
{
  v2 = sub_1CEF5D5AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.AvailabilityInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95D0, &qword_1CEFAC140);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5D5AC();
  sub_1CEFA8A60();
  v13[15] = *v3;
  v13[14] = 0;
  sub_1CEF5D600();
  sub_1CEFA8870();
  if (!v2)
  {
    v11 = *(type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0) + 20);
    v13[13] = 1;
    sub_1CEFA8030();
    sub_1CEF5BA2C(&qword_1EDE380D8, MEMORY[0x1E6969530]);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1CEF5D5AC()
{
  result = qword_1EC4A95D8;
  if (!qword_1EC4A95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A95D8);
  }

  return result;
}

unint64_t sub_1CEF5D600()
{
  result = qword_1EC4A95E0;
  if (!qword_1EC4A95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A95E0);
  }

  return result;
}

uint64_t TrustedCloudComputeError.AvailabilityInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1CEFA8030();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95E8, &qword_1CEFAC148);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5D5AC();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = v10;
  v15 = v13;
  v17 = v26;
  v16 = v27;
  v30 = 0;
  sub_1CEF5D98C();
  v18 = v28;
  sub_1CEFA8770();
  v22 = v15;
  *v15 = v31;
  v29 = 1;
  sub_1CEF5BA2C(&qword_1EC4A8FE8, MEMORY[0x1E6969530]);
  sub_1CEFA87D0();
  (*(v17 + 8))(v9, v18);
  v19 = v22;
  (*(v24 + 32))(&v22[*(v23 + 20)], v6, v16);
  sub_1CEF5D9E0(v19, v25, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1CEF5DA48(v19, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
}

unint64_t sub_1CEF5D98C()
{
  result = qword_1EC4A95F0;
  if (!qword_1EC4A95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A95F0);
  }

  return result;
}

uint64_t sub_1CEF5D9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF5DA48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEF5DB28@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1CEFA8030();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1CEF5DBE4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1CEFA8030();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1CEF5DCC4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v6 = *(a3(0) + 20);
  v7 = sub_1CEFA8030();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a2, v7);
}

unint64_t sub_1CEF5DD50()
{
  v1 = 0xD000000000000013;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1CEF5DDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF76CFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF5DDE4(uint64_t a1)
{
  v2 = sub_1CEF5E474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5DE20(uint64_t a1)
{
  v2 = sub_1CEF5E474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5DE5C(uint64_t a1)
{
  v2 = sub_1CEF5E570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5DE98(uint64_t a1)
{
  v2 = sub_1CEF5E570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5DED4(uint64_t a1)
{
  v2 = sub_1CEF5E51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5DF10(uint64_t a1)
{
  v2 = sub_1CEF5E51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5DF4C(uint64_t a1)
{
  v2 = sub_1CEF5E4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5DF88(uint64_t a1)
{
  v2 = sub_1CEF5E4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5DFC4(uint64_t a1)
{
  v2 = sub_1CEF5E5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5E000(uint64_t a1)
{
  v2 = sub_1CEF5E5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.TimeoutErrorInfo.Reason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95F8, &qword_1CEFAC150);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9600, &qword_1CEFAC158);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9608, &qword_1CEFAC160);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9610, &qword_1CEFAC168);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9618, &qword_1CEFAC170);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5E474();
  sub_1CEFA8A60();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1CEF5E51C();
      v24 = v33;
      sub_1CEFA8820();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1CEF5E4C8();
      v24 = v36;
      sub_1CEFA8820();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1CEF5E570();
    v24 = v30;
    sub_1CEFA8820();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1CEF5E5C4();
  sub_1CEFA8820();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1CEF5E474()
{
  result = qword_1EC4A9620;
  if (!qword_1EC4A9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9620);
  }

  return result;
}

unint64_t sub_1CEF5E4C8()
{
  result = qword_1EC4A9628;
  if (!qword_1EC4A9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9628);
  }

  return result;
}

unint64_t sub_1CEF5E51C()
{
  result = qword_1EC4A9630;
  if (!qword_1EC4A9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9630);
  }

  return result;
}

unint64_t sub_1CEF5E570()
{
  result = qword_1EC4A9638;
  if (!qword_1EC4A9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9638);
  }

  return result;
}

unint64_t sub_1CEF5E5C4()
{
  result = qword_1EC4A9640;
  if (!qword_1EC4A9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9640);
  }

  return result;
}

uint64_t TrustedCloudComputeError.TimeoutErrorInfo.Reason.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9648, &qword_1CEFAC178);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9650, &qword_1CEFAC180);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9658, &qword_1CEFAC188);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9660, &qword_1CEFAC190);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9668, &qword_1CEFAC198);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1CEF5E474();
  v21 = v53;
  sub_1CEFA8A50();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1CEFA8800();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1CEF43794();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1CEFA8680();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20) + 48);
      *v34 = &type metadata for TrustedCloudComputeError.TimeoutErrorInfo.Reason;
      sub_1CEFA8720();
      sub_1CEFA8670();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1CEF5E570();
        v39 = v42;
        sub_1CEFA8710();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1CEF5E5C4();
        v31 = v42;
        sub_1CEFA8710();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_0(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1CEF5E51C();
      v38 = v42;
      sub_1CEFA8710();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1CEF5E4C8();
      v40 = v42;
      sub_1CEFA8710();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t sub_1CEF5ECA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v6 || (sub_1CEFA8950() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEE00657461447265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CEFA8950();

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

uint64_t sub_1CEF5ED84(uint64_t a1)
{
  v2 = sub_1CEF5EFCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5EDC0(uint64_t a1)
{
  v2 = sub_1CEF5EFCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.TimeoutErrorInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9670, &qword_1CEFAC1A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5EFCC();
  sub_1CEFA8A60();
  v13[15] = *v3;
  v13[14] = 0;
  sub_1CEF5F020();
  sub_1CEFA8870();
  if (!v2)
  {
    v11 = *(type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0) + 20);
    v13[13] = 1;
    sub_1CEFA8030();
    sub_1CEF5BA2C(&qword_1EDE380D8, MEMORY[0x1E6969530]);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1CEF5EFCC()
{
  result = qword_1EC4A9678;
  if (!qword_1EC4A9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9678);
  }

  return result;
}

unint64_t sub_1CEF5F020()
{
  result = qword_1EC4A9680;
  if (!qword_1EC4A9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9680);
  }

  return result;
}

uint64_t TrustedCloudComputeError.TimeoutErrorInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1CEFA8030();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9688, &qword_1CEFAC1A8);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5EFCC();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = v10;
  v15 = v13;
  v17 = v26;
  v16 = v27;
  v30 = 0;
  sub_1CEF5F3AC();
  v18 = v28;
  sub_1CEFA8770();
  v22 = v15;
  *v15 = v31;
  v29 = 1;
  sub_1CEF5BA2C(&qword_1EC4A8FE8, MEMORY[0x1E6969530]);
  sub_1CEFA87D0();
  (*(v17 + 8))(v9, v18);
  v19 = v22;
  (*(v24 + 32))(&v22[*(v23 + 20)], v6, v16);
  sub_1CEF5D9E0(v19, v25, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1CEF5DA48(v19, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
}

unint64_t sub_1CEF5F3AC()
{
  result = qword_1EC4A9690;
  if (!qword_1EC4A9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9690);
  }

  return result;
}

uint64_t sub_1CEF5F4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5764696C61766E69 && a2 == 0xEF64616F6C6B726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF5F530(uint64_t a1)
{
  v2 = sub_1CEF5F7F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5F56C(uint64_t a1)
{
  v2 = sub_1CEF5F7F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5F5A8(uint64_t a1)
{
  v2 = sub_1CEF5F84C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5F5E4(uint64_t a1)
{
  v2 = sub_1CEF5F84C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.Reason.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9698, &qword_1CEFAC1B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96A0, &qword_1CEFAC1B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5F7F8();
  sub_1CEFA8A60();
  sub_1CEF5F84C();
  sub_1CEFA8820();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1CEF5F7F8()
{
  result = qword_1EC4A96A8;
  if (!qword_1EC4A96A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A96A8);
  }

  return result;
}

unint64_t sub_1CEF5F84C()
{
  result = qword_1EC4A96B0;
  if (!qword_1EC4A96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A96B0);
  }

  return result;
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.Reason.hashValue.getter()
{
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](0);
  return sub_1CEFA8A40();
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.Reason.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96B8, &qword_1CEFAC1C0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96C0, &qword_1CEFAC1C8);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5F7F8();
  sub_1CEFA8A50();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1CEFA8800();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if (sub_1CEF3F4EC() || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1CEFA8680();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20) + 48);
    *v19 = &type metadata for TrustedCloudComputeError.InvalidRequestErrorInfo.Reason;
    sub_1CEFA8720();
    sub_1CEFA8670();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  sub_1CEF5F84C();
  sub_1CEFA8710();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_1CEF5FC70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9698, &qword_1CEFAC1B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96A0, &qword_1CEFAC1B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5F7F8();
  sub_1CEFA8A60();
  sub_1CEF5F84C();
  sub_1CEFA8820();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1CEF5FE5C(uint64_t a1)
{
  v2 = sub_1CEF60020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5FE98(uint64_t a1)
{
  v2 = sub_1CEF60020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96C8, &qword_1CEFAC1D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF60020();
  sub_1CEFA8A60();
  v12 = v8;
  sub_1CEF60074();
  sub_1CEFA8870();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CEF60020()
{
  result = qword_1EC4A96D0;
  if (!qword_1EC4A96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A96D0);
  }

  return result;
}

unint64_t sub_1CEF60074()
{
  result = qword_1EC4A96D8;
  if (!qword_1EC4A96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A96D8);
  }

  return result;
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96E0, &qword_1CEFAC1D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF60020();
  sub_1CEFA8A50();
  if (!v2)
  {
    sub_1CEF60234();
    sub_1CEFA8770();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1CEF60234()
{
  result = qword_1EC4A96E8;
  if (!qword_1EC4A96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A96E8);
  }

  return result;
}

unint64_t sub_1CEF60310()
{
  v1 = 0x6C42746E616E6574;
  v2 = 0x64616F6C6B726F77;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6572617774666F73;
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

uint64_t sub_1CEF603B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF76E6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF603DC(uint64_t a1)
{
  v2 = sub_1CEF60A6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF60418(uint64_t a1)
{
  v2 = sub_1CEF60A6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF60454(uint64_t a1)
{
  v2 = sub_1CEF60AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF60490(uint64_t a1)
{
  v2 = sub_1CEF60AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF604CC(uint64_t a1)
{
  v2 = sub_1CEF60B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF60508(uint64_t a1)
{
  v2 = sub_1CEF60B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF60544(uint64_t a1)
{
  v2 = sub_1CEF60BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF60580(uint64_t a1)
{
  v2 = sub_1CEF60BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF605BC(uint64_t a1)
{
  v2 = sub_1CEF60B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF605F8(uint64_t a1)
{
  v2 = sub_1CEF60B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.Reason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96F0, &qword_1CEFAC1E0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96F8, &qword_1CEFAC1E8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9700, &qword_1CEFAC1F0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9708, &qword_1CEFAC1F8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9710, &qword_1CEFAC200);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF60A6C();
  sub_1CEFA8A60();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1CEF60B14();
      v24 = v33;
      sub_1CEFA8820();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1CEF60AC0();
      v24 = v36;
      sub_1CEFA8820();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1CEF60B68();
    v24 = v30;
    sub_1CEFA8820();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1CEF60BBC();
  sub_1CEFA8820();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1CEF60A6C()
{
  result = qword_1EC4A9718;
  if (!qword_1EC4A9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9718);
  }

  return result;
}

unint64_t sub_1CEF60AC0()
{
  result = qword_1EC4A9720;
  if (!qword_1EC4A9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9720);
  }

  return result;
}

unint64_t sub_1CEF60B14()
{
  result = qword_1EC4A9728;
  if (!qword_1EC4A9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9728);
  }

  return result;
}

unint64_t sub_1CEF60B68()
{
  result = qword_1EC4A9730;
  if (!qword_1EC4A9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9730);
  }

  return result;
}

unint64_t sub_1CEF60BBC()
{
  result = qword_1EC4A9738;
  if (!qword_1EC4A9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9738);
  }

  return result;
}

uint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.Reason.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9740, &qword_1CEFAC208);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9748, &qword_1CEFAC210);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9750, &qword_1CEFAC218);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9758, &qword_1CEFAC220);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9760, &qword_1CEFAC228);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1CEF60A6C();
  v21 = v53;
  sub_1CEFA8A50();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1CEFA8800();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1CEF43794();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1CEFA8680();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20) + 48);
      *v34 = &type metadata for TrustedCloudComputeError.UnauthorizedErrorInfo.Reason;
      sub_1CEFA8720();
      sub_1CEFA8670();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1CEF60B68();
        v39 = v42;
        sub_1CEFA8710();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1CEF60BBC();
        v31 = v42;
        sub_1CEFA8710();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_0(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1CEF60B14();
      v38 = v42;
      sub_1CEFA8710();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1CEF60AC0();
      v40 = v42;
      sub_1CEFA8710();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t sub_1CEF612CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF61350(uint64_t a1)
{
  v2 = sub_1CEF61514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6138C(uint64_t a1)
{
  v2 = sub_1CEF61514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9768, &qword_1CEFAC230);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF61514();
  sub_1CEFA8A60();
  v12 = v8;
  sub_1CEF61568();
  sub_1CEFA8870();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CEF61514()
{
  result = qword_1EC4A9770;
  if (!qword_1EC4A9770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9770);
  }

  return result;
}

unint64_t sub_1CEF61568()
{
  result = qword_1EC4A9778;
  if (!qword_1EC4A9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9778);
  }

  return result;
}

uint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9780, &unk_1CEFAC238);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF61514();
  sub_1CEFA8A50();
  if (!v2)
  {
    sub_1CEF61728();
    sub_1CEFA8770();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1CEF61728()
{
  result = qword_1EC4A9788;
  if (!qword_1EC4A9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9788);
  }

  return result;
}

uint64_t sub_1CEF617E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RopesResponseMetadata();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.retryable.setter(char a1)
{
  result = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.retryAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0) + 24);

  return sub_1CEF6196C(v3, a1);
}

uint64_t sub_1CEF6196C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.retryAfterDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0) + 24);

  return sub_1CEF4E644(a1, v3);
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.init(responseMetadata:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  v9 = *(v8 + 24);
  v10 = sub_1CEFA8030();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(a2 + v9, 1, 1, v10);
  sub_1CEF5D9E0(a1, a2, type metadata accessor for RopesResponseMetadata);
  if (a1[64] == 1)
  {
    v13 = a1[16];
    if (v13 == 255 || (v13 & 1) != 0 || (*(a1 + 1) - 17) >= 0x1Cu || ((0xF0C0E13u >> (*(a1 + 1) - 17)) & 1) == 0)
    {
      v17 = a1[1];
      if (v17 > 0xE || (LOBYTE(v14) = 1, ((1 << v17) & 0x4110) == 0))
      {
        v18 = *a1;
        v19 = v18 >= 0x2D;
        v14 = 0x108002000000uLL >> v18;
        if (v19)
        {
          LOBYTE(v14) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v14) = 1;
    }

    *(a2 + *(v8 + 20)) = v14 & 1;
    v20 = type metadata accessor for RopesResponseMetadata();
    (*(v11 + 16))(v7, &a1[*(v20 + 60)], v10);
  }

  else
  {
    v15 = *(a1 + 7);
    *(a2 + *(v8 + 20)) = 1;
    v16 = &a1[*(type metadata accessor for RopesResponseMetadata() + 60)];
    sub_1CEFA7FF0();
  }

  sub_1CEF5DA48(a1, type metadata accessor for RopesResponseMetadata);
  v12(v7, 0, 1, v10);
  return sub_1CEF4E644(v7, a2 + v9);
}

unint64_t sub_1CEF61CB4()
{
  v1 = 0x6C62617972746572;
  if (*v0 != 1)
  {
    v1 = 0x7466417972746572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1CEF61D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF76FF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF61D4C(uint64_t a1)
{
  v2 = sub_1CEF61FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF61D88(uint64_t a1)
{
  v2 = sub_1CEF61FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9790, &qword_1CEFAC248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF61FF4();
  sub_1CEFA8A60();
  v15[15] = 0;
  type metadata accessor for RopesResponseMetadata();
  sub_1CEF5BA2C(&qword_1EC4A97A0, type metadata accessor for RopesResponseMetadata);
  sub_1CEFA88D0();
  if (!v2)
  {
    v11 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
    v12 = *(v3 + *(v11 + 20));
    v15[14] = 1;
    sub_1CEFA8890();
    v13 = *(v11 + 24);
    v15[13] = 2;
    sub_1CEFA8030();
    sub_1CEF5BA2C(&qword_1EDE380D8, MEMORY[0x1E6969530]);
    sub_1CEFA8870();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1CEF61FF4()
{
  result = qword_1EC4A9798;
  if (!qword_1EC4A9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9798);
  }

  return result;
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for RopesResponseMetadata();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97A8, &qword_1CEFAC250);
  v31 = *(v33 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v29 - v11;
  v13 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 24);
  v19 = sub_1CEFA8030();
  v20 = *(*(v19 - 8) + 56);
  v35 = v18;
  v36 = v17;
  v20(&v17[v18], 1, 1, v19);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF61FF4();
  v22 = v34;
  sub_1CEFA8A50();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1CEF6249C(&v36[v35]);
  }

  else
  {
    v23 = v31;
    v39 = 0;
    sub_1CEF5BA2C(&qword_1EC4A97B0, type metadata accessor for RopesResponseMetadata);
    sub_1CEFA87D0();
    v24 = v36;
    sub_1CEF6AB6C(v32, v36, type metadata accessor for RopesResponseMetadata);
    v38 = 1;
    *(v24 + *(v13 + 20)) = sub_1CEFA8790() & 1;
    v37 = 2;
    sub_1CEF5BA2C(&qword_1EC4A8FE8, MEMORY[0x1E6969530]);
    v25 = v24;
    v26 = v6;
    v27 = v33;
    sub_1CEFA8770();
    (*(v23 + 8))(v12, v27);
    sub_1CEF4E644(v26, v25 + v35);
    sub_1CEF5D9E0(v25, v30, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1CEF5DA48(v25, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
  }
}

uint64_t sub_1CEF6249C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.privacyProxyErrorReason.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.privacyProxyErrorReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall TrustedCloudComputeError.InternalErrorInfo.init(message:)(PrivateCloudCompute::TrustedCloudComputeError::InternalErrorInfo *__return_ptr retstr, Swift::String message)
{
  retstr->message = message;
  retstr->reason.value = PrivateCloudCompute_TrustedCloudComputeError_InternalErrorInfo_Reason_unknownDefault;
  retstr->privacyProxyErrorReason.value._countAndFlagsBits = 0;
  retstr->privacyProxyErrorReason.value._object = 0;
}

unint64_t sub_1CEF62650(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
    case 28:
      result = 0xD000000000000013;
      break;
    case 2:
    case 29:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 9:
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
    case 11:
      result = 0xD000000000000021;
      break;
    case 8:
    case 32:
      result = 0xD000000000000019;
      break;
    case 10:
    case 33:
      result = 0xD000000000000017;
      break;
    case 12:
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
    case 19:
    case 20:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0xD00000000000001ELL;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0xD000000000000027;
      break;
    case 22:
      result = 0xD000000000000025;
      break;
    case 23:
      result = 0xD000000000000026;
      break;
    case 24:
      result = 0xD00000000000002CLL;
      break;
    case 25:
      result = 0xD000000000000032;
      break;
    case 31:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CEF62904(uint64_t a1)
{
  v2 = sub_1CEF6583C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62940(uint64_t a1)
{
  v2 = sub_1CEF6583C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF77124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF629B8(uint64_t a1)
{
  v2 = sub_1CEF657E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF629F4(uint64_t a1)
{
  v2 = sub_1CEF657E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62A30(uint64_t a1)
{
  v2 = sub_1CEF65938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62A6C(uint64_t a1)
{
  v2 = sub_1CEF65938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62AA8(uint64_t a1)
{
  v2 = sub_1CEF662BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62AE4(uint64_t a1)
{
  v2 = sub_1CEF662BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62B20(uint64_t a1)
{
  v2 = sub_1CEF65CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62B5C(uint64_t a1)
{
  v2 = sub_1CEF65CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62B98(uint64_t a1)
{
  v2 = sub_1CEF65A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62BD4(uint64_t a1)
{
  v2 = sub_1CEF65A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62C10(uint64_t a1)
{
  v2 = sub_1CEF65A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62C4C(uint64_t a1)
{
  v2 = sub_1CEF65A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62C88(uint64_t a1)
{
  v2 = sub_1CEF6598C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62CC4(uint64_t a1)
{
  v2 = sub_1CEF6598C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62D00(uint64_t a1)
{
  v2 = sub_1CEF65D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62D3C(uint64_t a1)
{
  v2 = sub_1CEF65D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62D78(uint64_t a1)
{
  v2 = sub_1CEF6601C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62DB4(uint64_t a1)
{
  v2 = sub_1CEF6601C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62DF0(uint64_t a1)
{
  v2 = sub_1CEF65F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62E2C(uint64_t a1)
{
  v2 = sub_1CEF65F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62E68(uint64_t a1)
{
  v2 = sub_1CEF66118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62EA4(uint64_t a1)
{
  v2 = sub_1CEF66118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62EE0(uint64_t a1)
{
  v2 = sub_1CEF660C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62F1C(uint64_t a1)
{
  v2 = sub_1CEF660C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62F58(uint64_t a1)
{
  v2 = sub_1CEF65E24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62F94(uint64_t a1)
{
  v2 = sub_1CEF65E24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62FD0(uint64_t a1)
{
  v2 = sub_1CEF6616C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6300C(uint64_t a1)
{
  v2 = sub_1CEF6616C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63048(uint64_t a1)
{
  v2 = sub_1CEF65F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63084(uint64_t a1)
{
  v2 = sub_1CEF65F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF630C0(uint64_t a1)
{
  v2 = sub_1CEF65D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF630FC(uint64_t a1)
{
  v2 = sub_1CEF65D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63138(uint64_t a1)
{
  v2 = sub_1CEF661C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63174(uint64_t a1)
{
  v2 = sub_1CEF661C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF631B0(uint64_t a1)
{
  v2 = sub_1CEF66214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF631EC(uint64_t a1)
{
  v2 = sub_1CEF66214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63228(uint64_t a1)
{
  v2 = sub_1CEF65ECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63264(uint64_t a1)
{
  v2 = sub_1CEF65ECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF632A0(uint64_t a1)
{
  v2 = sub_1CEF66268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF632DC(uint64_t a1)
{
  v2 = sub_1CEF66268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63318(uint64_t a1)
{
  v2 = sub_1CEF65FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63354(uint64_t a1)
{
  v2 = sub_1CEF65FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63390(uint64_t a1)
{
  v2 = sub_1CEF66070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF633CC(uint64_t a1)
{
  v2 = sub_1CEF66070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63408(uint64_t a1)
{
  v2 = sub_1CEF65DD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63444(uint64_t a1)
{
  v2 = sub_1CEF65DD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63480(uint64_t a1)
{
  v2 = sub_1CEF65E78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF634BC(uint64_t a1)
{
  v2 = sub_1CEF65E78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF634F8(uint64_t a1)
{
  v2 = sub_1CEF65C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63534(uint64_t a1)
{
  v2 = sub_1CEF65C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63570(uint64_t a1)
{
  v2 = sub_1CEF65BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF635AC(uint64_t a1)
{
  v2 = sub_1CEF65BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF635E8(uint64_t a1)
{
  v2 = sub_1CEF65B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63624(uint64_t a1)
{
  v2 = sub_1CEF65B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63660(uint64_t a1)
{
  v2 = sub_1CEF65B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6369C(uint64_t a1)
{
  v2 = sub_1CEF65B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF636D8(uint64_t a1)
{
  v2 = sub_1CEF65ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63714(uint64_t a1)
{
  v2 = sub_1CEF65ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63750(uint64_t a1)
{
  v2 = sub_1CEF65C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6378C(uint64_t a1)
{
  v2 = sub_1CEF65C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF637C8(uint64_t a1)
{
  v2 = sub_1CEF659E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63804(uint64_t a1)
{
  v2 = sub_1CEF659E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63840(uint64_t a1)
{
  v2 = sub_1CEF65890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6387C(uint64_t a1)
{
  v2 = sub_1CEF65890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF638B8(uint64_t a1)
{
  v2 = sub_1CEF658E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF638F4(uint64_t a1)
{
  v2 = sub_1CEF658E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63930(uint64_t a1)
{
  v2 = sub_1CEF66310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6396C(uint64_t a1)
{
  v2 = sub_1CEF66310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.Reason.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97B8, &qword_1CEFAC258);
  v223 = *(v4 - 8);
  v224 = v4;
  v5 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v222 = &v125 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97C0, &qword_1CEFAC260);
  v220 = *(v7 - 8);
  v221 = v7;
  v8 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v219 = &v125 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97C8, &qword_1CEFAC268);
  v217 = *(v10 - 8);
  v218 = v10;
  v11 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v216 = &v125 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97D0, &qword_1CEFAC270);
  v214 = *(v13 - 8);
  v215 = v13;
  v14 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v213 = &v125 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97D8, &qword_1CEFAC278);
  v211 = *(v16 - 8);
  v212 = v16;
  v17 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v210 = &v125 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97E0, &qword_1CEFAC280);
  v208 = *(v19 - 8);
  v209 = v19;
  v20 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v207 = &v125 - v21;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97E8, &qword_1CEFAC288);
  v205 = *(v206 - 8);
  v22 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v204 = &v125 - v23;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97F0, &qword_1CEFAC290);
  v202 = *(v203 - 8);
  v24 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v125 - v25;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97F8, &qword_1CEFAC298);
  v199 = *(v200 - 8);
  v26 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v125 - v27;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9800, &qword_1CEFAC2A0);
  v196 = *(v197 - 8);
  v28 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v195 = &v125 - v29;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9808, &qword_1CEFAC2A8);
  v193 = *(v194 - 8);
  v30 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v192 = &v125 - v31;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9810, &qword_1CEFAC2B0);
  v190 = *(v191 - 8);
  v32 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v189 = &v125 - v33;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9818, &qword_1CEFAC2B8);
  v187 = *(v188 - 8);
  v34 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v125 - v35;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9820, &qword_1CEFAC2C0);
  v184 = *(v185 - 8);
  v36 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v125 - v37;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9828, &qword_1CEFAC2C8);
  v181 = *(v182 - 8);
  v38 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v125 - v39;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9830, &qword_1CEFAC2D0);
  v178 = *(v179 - 8);
  v40 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v177 = &v125 - v41;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9838, &qword_1CEFAC2D8);
  v175 = *(v176 - 8);
  v42 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v125 - v43;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9840, &qword_1CEFAC2E0);
  v172 = *(v173 - 8);
  v44 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v125 - v45;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9848, &qword_1CEFAC2E8);
  v169 = *(v170 - 8);
  v46 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v125 - v47;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9850, &qword_1CEFAC2F0);
  v166 = *(v167 - 8);
  v48 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v125 - v49;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9858, &qword_1CEFAC2F8);
  v163 = *(v164 - 8);
  v50 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v125 - v51;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9860, &qword_1CEFAC300);
  v160 = *(v161 - 8);
  v52 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v125 - v53;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9868, &qword_1CEFAC308);
  v157 = *(v158 - 8);
  v54 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v125 - v55;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9870, &qword_1CEFAC310);
  v154 = *(v155 - 8);
  v56 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v125 - v57;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9878, &qword_1CEFAC318);
  v151 = *(v152 - 8);
  v58 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v125 - v59;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9880, &qword_1CEFAC320);
  v148 = *(v149 - 8);
  v60 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v125 - v61;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9888, &qword_1CEFAC328);
  v145 = *(v146 - 8);
  v62 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v125 - v63;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9890, &qword_1CEFAC330);
  v142 = *(v143 - 8);
  v64 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v125 - v65;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9898, &qword_1CEFAC338);
  v139 = *(v140 - 8);
  v66 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v125 - v67;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98A0, &qword_1CEFAC340);
  v136 = *(v137 - 8);
  v68 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v125 - v69;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98A8, &qword_1CEFAC348);
  v133 = *(v134 - 8);
  v70 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v125 - v71;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98B0, &qword_1CEFAC350);
  v130 = *(v131 - 8);
  v72 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v125 - v73;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98B8, &qword_1CEFAC358);
  v127 = *(v128 - 8);
  v74 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v76 = &v125 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98C0, &qword_1CEFAC360);
  v126 = *(v77 - 8);
  v78 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v125 - v79;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98C8, &qword_1CEFAC368);
  v81 = *(v226 - 8);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v84 = &v125 - v83;
  v85 = *v2;
  v86 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF657E8();
  v225 = v84;
  sub_1CEFA8A60();
  v87 = (v81 + 8);
  switch(v85)
  {
    case 1:
      v228 = 1;
      sub_1CEF662BC();
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v127 + 8);
      v95 = v76;
      v96 = &v160;
      goto LABEL_37;
    case 2:
      v228 = 2;
      sub_1CEF66268();
      v108 = v129;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v130 + 8);
      v95 = v108;
      v96 = &v163;
      goto LABEL_37;
    case 3:
      v228 = 3;
      sub_1CEF66214();
      v110 = v132;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v133 + 8);
      v95 = v110;
      v96 = &v166;
      goto LABEL_37;
    case 4:
      v228 = 4;
      sub_1CEF661C0();
      v103 = v135;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v136 + 8);
      v95 = v103;
      v96 = &v169;
      goto LABEL_37;
    case 5:
      v228 = 5;
      sub_1CEF6616C();
      v114 = v138;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v139 + 8);
      v95 = v114;
      v96 = &v172;
      goto LABEL_37;
    case 6:
      v228 = 6;
      sub_1CEF66118();
      v117 = v141;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v142 + 8);
      v95 = v117;
      v96 = &v175;
      goto LABEL_37;
    case 7:
      v228 = 7;
      sub_1CEF660C4();
      v111 = v144;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v145 + 8);
      v95 = v111;
      v96 = &v178;
      goto LABEL_37;
    case 8:
      v228 = 8;
      sub_1CEF66070();
      v120 = v147;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v148 + 8);
      v95 = v120;
      v96 = &v181;
      goto LABEL_37;
    case 9:
      v228 = 9;
      sub_1CEF6601C();
      v105 = v150;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v151 + 8);
      v95 = v105;
      v96 = &v184;
      goto LABEL_37;
    case 10:
      v228 = 10;
      sub_1CEF65FC8();
      v119 = v153;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v154 + 8);
      v95 = v119;
      v96 = &v187;
      goto LABEL_37;
    case 11:
      v228 = 11;
      sub_1CEF65F74();
      v102 = v156;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v157 + 8);
      v95 = v102;
      v96 = &v190;
      goto LABEL_37;
    case 12:
      v228 = 12;
      sub_1CEF65F20();
      v104 = v159;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v160 + 8);
      v95 = v104;
      v96 = &v193;
      goto LABEL_37;
    case 13:
      v228 = 13;
      sub_1CEF65ECC();
      v116 = v162;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v163 + 8);
      v95 = v116;
      v96 = &v196;
      goto LABEL_37;
    case 14:
      v228 = 14;
      sub_1CEF65E78();
      v98 = v165;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v166 + 8);
      v95 = v98;
      v96 = &v199;
      goto LABEL_37;
    case 15:
      v228 = 15;
      sub_1CEF65E24();
      v109 = v168;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v169 + 8);
      v95 = v109;
      v96 = &v202;
      goto LABEL_37;
    case 16:
      v228 = 16;
      sub_1CEF65DD0();
      v97 = v171;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v172 + 8);
      v95 = v97;
      v96 = &v205;
      goto LABEL_37;
    case 17:
      v228 = 17;
      sub_1CEF65D7C();
      v112 = v174;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v175 + 8);
      v95 = v112;
      v96 = &v208;
      goto LABEL_37;
    case 18:
      v228 = 18;
      sub_1CEF65D28();
      v118 = v177;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v178 + 8);
      v95 = v118;
      v96 = &v211;
      goto LABEL_37;
    case 19:
      v228 = 19;
      sub_1CEF65CD4();
      v122 = v180;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v181 + 8);
      v95 = v122;
      v96 = &v214;
      goto LABEL_37;
    case 20:
      v228 = 20;
      sub_1CEF65C80();
      v113 = v183;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v184 + 8);
      v95 = v113;
      v96 = &v217;
      goto LABEL_37;
    case 21:
      v228 = 21;
      sub_1CEF65C2C();
      v115 = v186;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v187 + 8);
      v95 = v115;
      v96 = &v220;
      goto LABEL_37;
    case 22:
      v228 = 22;
      sub_1CEF65BD8();
      v121 = v189;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v190 + 8);
      v95 = v121;
      v96 = &v223;
      goto LABEL_37;
    case 23:
      v228 = 23;
      sub_1CEF65B84();
      v123 = v192;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v193 + 8);
      v95 = v123;
      v96 = &v226;
      goto LABEL_37;
    case 24:
      v228 = 24;
      sub_1CEF65B30();
      v107 = v195;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v196 + 8);
      v95 = v107;
      v96 = &v227;
      goto LABEL_37;
    case 25:
      v228 = 25;
      sub_1CEF65ADC();
      v106 = v198;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v199 + 8);
      v95 = v106;
      v96 = &v229;
      goto LABEL_37;
    case 26:
      v228 = 26;
      sub_1CEF65A88();
      v124 = v201;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v202 + 8);
      v95 = v124;
      v96 = &v230;
      goto LABEL_37;
    case 27:
      v228 = 27;
      sub_1CEF65A34();
      v91 = v204;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v94 = *(v205 + 8);
      v95 = v91;
      v96 = &v231;
LABEL_37:
      v94(v95, *(v96 - 32));
      goto LABEL_38;
    case 28:
      v228 = 28;
      sub_1CEF659E0();
      v99 = v207;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v101 = v208;
      v100 = v209;
      goto LABEL_35;
    case 29:
      v228 = 29;
      sub_1CEF6598C();
      v99 = v210;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v101 = v211;
      v100 = v212;
      goto LABEL_35;
    case 30:
      v228 = 30;
      sub_1CEF65938();
      v99 = v213;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v101 = v214;
      v100 = v215;
      goto LABEL_35;
    case 31:
      v228 = 31;
      sub_1CEF658E4();
      v99 = v216;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v101 = v217;
      v100 = v218;
      goto LABEL_35;
    case 32:
      v228 = 32;
      sub_1CEF65890();
      v99 = v219;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v101 = v220;
      v100 = v221;
      goto LABEL_35;
    case 33:
      v228 = 33;
      sub_1CEF6583C();
      v99 = v222;
      v93 = v225;
      v92 = v226;
      sub_1CEFA8820();
      v101 = v223;
      v100 = v224;
LABEL_35:
      (*(v101 + 8))(v99, v100);
LABEL_38:
      result = (*v87)(v93, v92);
      break;
    default:
      v228 = 0;
      sub_1CEF66310();
      v88 = v225;
      v89 = v226;
      sub_1CEFA8820();
      (*(v126 + 8))(v80, v77);
      result = (*v87)(v88, v89);
      break;
  }

  return result;
}

unint64_t sub_1CEF657E8()
{
  result = qword_1EC4A98D0;
  if (!qword_1EC4A98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98D0);
  }

  return result;
}

unint64_t sub_1CEF6583C()
{
  result = qword_1EC4A98D8;
  if (!qword_1EC4A98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98D8);
  }

  return result;
}

unint64_t sub_1CEF65890()
{
  result = qword_1EC4A98E0;
  if (!qword_1EC4A98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98E0);
  }

  return result;
}

unint64_t sub_1CEF658E4()
{
  result = qword_1EC4A98E8;
  if (!qword_1EC4A98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98E8);
  }

  return result;
}

unint64_t sub_1CEF65938()
{
  result = qword_1EC4A98F0;
  if (!qword_1EC4A98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98F0);
  }

  return result;
}

unint64_t sub_1CEF6598C()
{
  result = qword_1EC4A98F8;
  if (!qword_1EC4A98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98F8);
  }

  return result;
}

unint64_t sub_1CEF659E0()
{
  result = qword_1EC4A9900;
  if (!qword_1EC4A9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9900);
  }

  return result;
}

unint64_t sub_1CEF65A34()
{
  result = qword_1EC4A9908;
  if (!qword_1EC4A9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9908);
  }

  return result;
}

unint64_t sub_1CEF65A88()
{
  result = qword_1EC4A9910;
  if (!qword_1EC4A9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9910);
  }

  return result;
}

unint64_t sub_1CEF65ADC()
{
  result = qword_1EC4A9918;
  if (!qword_1EC4A9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9918);
  }

  return result;
}

unint64_t sub_1CEF65B30()
{
  result = qword_1EC4A9920;
  if (!qword_1EC4A9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9920);
  }

  return result;
}

unint64_t sub_1CEF65B84()
{
  result = qword_1EC4A9928;
  if (!qword_1EC4A9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9928);
  }

  return result;
}

unint64_t sub_1CEF65BD8()
{
  result = qword_1EC4A9930;
  if (!qword_1EC4A9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9930);
  }

  return result;
}

unint64_t sub_1CEF65C2C()
{
  result = qword_1EC4A9938;
  if (!qword_1EC4A9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9938);
  }

  return result;
}

unint64_t sub_1CEF65C80()
{
  result = qword_1EC4A9940;
  if (!qword_1EC4A9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9940);
  }

  return result;
}

unint64_t sub_1CEF65CD4()
{
  result = qword_1EC4A9948;
  if (!qword_1EC4A9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9948);
  }

  return result;
}

unint64_t sub_1CEF65D28()
{
  result = qword_1EC4A9950;
  if (!qword_1EC4A9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9950);
  }

  return result;
}

unint64_t sub_1CEF65D7C()
{
  result = qword_1EC4A9958;
  if (!qword_1EC4A9958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9958);
  }

  return result;
}

unint64_t sub_1CEF65DD0()
{
  result = qword_1EC4A9960;
  if (!qword_1EC4A9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9960);
  }

  return result;
}

unint64_t sub_1CEF65E24()
{
  result = qword_1EC4A9968;
  if (!qword_1EC4A9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9968);
  }

  return result;
}

unint64_t sub_1CEF65E78()
{
  result = qword_1EC4A9970;
  if (!qword_1EC4A9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9970);
  }

  return result;
}

unint64_t sub_1CEF65ECC()
{
  result = qword_1EC4A9978;
  if (!qword_1EC4A9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9978);
  }

  return result;
}

unint64_t sub_1CEF65F20()
{
  result = qword_1EC4A9980;
  if (!qword_1EC4A9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9980);
  }

  return result;
}

unint64_t sub_1CEF65F74()
{
  result = qword_1EC4A9988;
  if (!qword_1EC4A9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9988);
  }

  return result;
}

unint64_t sub_1CEF65FC8()
{
  result = qword_1EC4A9990;
  if (!qword_1EC4A9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9990);
  }

  return result;
}

unint64_t sub_1CEF6601C()
{
  result = qword_1EC4A9998;
  if (!qword_1EC4A9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9998);
  }

  return result;
}

unint64_t sub_1CEF66070()
{
  result = qword_1EC4A99A0;
  if (!qword_1EC4A99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99A0);
  }

  return result;
}

unint64_t sub_1CEF660C4()
{
  result = qword_1EC4A99A8;
  if (!qword_1EC4A99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99A8);
  }

  return result;
}

unint64_t sub_1CEF66118()
{
  result = qword_1EC4A99B0;
  if (!qword_1EC4A99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99B0);
  }

  return result;
}

unint64_t sub_1CEF6616C()
{
  result = qword_1EC4A99B8;
  if (!qword_1EC4A99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99B8);
  }

  return result;
}

unint64_t sub_1CEF661C0()
{
  result = qword_1EC4A99C0;
  if (!qword_1EC4A99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99C0);
  }

  return result;
}

unint64_t sub_1CEF66214()
{
  result = qword_1EC4A99C8;
  if (!qword_1EC4A99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99C8);
  }

  return result;
}

unint64_t sub_1CEF66268()
{
  result = qword_1EC4A99D0;
  if (!qword_1EC4A99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99D0);
  }

  return result;
}

unint64_t sub_1CEF662BC()
{
  result = qword_1EC4A99D8;
  if (!qword_1EC4A99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99D8);
  }

  return result;
}

unint64_t sub_1CEF66310()
{
  result = qword_1EC4A99E0;
  if (!qword_1EC4A99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99E0);
  }

  return result;
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.Reason.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v267 = a2;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A99E8, &qword_1CEFAC370);
  v233 = *(v266 - 8);
  v3 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v266);
  v262 = &v163 - v4;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A99F0, &qword_1CEFAC378);
  v231 = *(v232 - 8);
  v5 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v261 = &v163 - v6;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A99F8, &qword_1CEFAC380);
  v229 = *(v230 - 8);
  v7 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v260 = &v163 - v8;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A00, &qword_1CEFAC388);
  v227 = *(v228 - 8);
  v9 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v228);
  v259 = &v163 - v10;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A08, &qword_1CEFAC390);
  v225 = *(v226 - 8);
  v11 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v258 = &v163 - v12;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A10, &qword_1CEFAC398);
  v223 = *(v224 - 8);
  v13 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v257 = &v163 - v14;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A18, &qword_1CEFAC3A0);
  v221 = *(v222 - 8);
  v15 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v222);
  v256 = &v163 - v16;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A20, &qword_1CEFAC3A8);
  v219 = *(v220 - 8);
  v17 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v255 = &v163 - v18;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A28, &qword_1CEFAC3B0);
  v217 = *(v218 - 8);
  v19 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v254 = &v163 - v20;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A30, &qword_1CEFAC3B8);
  v215 = *(v216 - 8);
  v21 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v253 = &v163 - v22;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A38, &qword_1CEFAC3C0);
  v213 = *(v214 - 8);
  v23 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v252 = &v163 - v24;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A40, &qword_1CEFAC3C8);
  v211 = *(v212 - 8);
  v25 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v251 = &v163 - v26;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A48, &qword_1CEFAC3D0);
  v209 = *(v210 - 8);
  v27 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v250 = &v163 - v28;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A50, &qword_1CEFAC3D8);
  v207 = *(v208 - 8);
  v29 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v249 = &v163 - v30;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A58, &qword_1CEFAC3E0);
  v205 = *(v206 - 8);
  v31 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v248 = &v163 - v32;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A60, &qword_1CEFAC3E8);
  v203 = *(v204 - 8);
  v33 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v247 = &v163 - v34;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A68, &qword_1CEFAC3F0);
  v201 = *(v202 - 8);
  v35 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v246 = &v163 - v36;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A70, &qword_1CEFAC3F8);
  v199 = *(v200 - 8);
  v37 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v245 = &v163 - v38;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A78, &qword_1CEFAC400);
  v197 = *(v198 - 8);
  v39 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v244 = &v163 - v40;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A80, &qword_1CEFAC408);
  v195 = *(v196 - 8);
  v41 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v243 = &v163 - v42;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A88, &qword_1CEFAC410);
  v193 = *(v194 - 8);
  v43 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v242 = &v163 - v44;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A90, &qword_1CEFAC418);
  v191 = *(v192 - 8);
  v45 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v241 = &v163 - v46;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A98, &qword_1CEFAC420);
  v189 = *(v190 - 8);
  v47 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v240 = &v163 - v48;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AA0, &qword_1CEFAC428);
  v187 = *(v188 - 8);
  v49 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v239 = &v163 - v50;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AA8, &qword_1CEFAC430);
  v186 = *(v185 - 8);
  v51 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v236 = &v163 - v52;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AB0, &qword_1CEFAC438);
  v184 = *(v183 - 8);
  v53 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v265 = &v163 - v54;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AB8, &qword_1CEFAC440);
  v181 = *(v182 - 8);
  v55 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v264 = &v163 - v56;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AC0, &qword_1CEFAC448);
  v179 = *(v180 - 8);
  v57 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v238 = &v163 - v58;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AC8, &qword_1CEFAC450);
  v177 = *(v178 - 8);
  v59 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v237 = &v163 - v60;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AD0, &qword_1CEFAC458);
  v175 = *(v176 - 8);
  v61 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v263 = &v163 - v62;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AD8, &qword_1CEFAC460);
  v173 = *(v174 - 8);
  v63 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v235 = &v163 - v64;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AE0, &qword_1CEFAC468);
  v171 = *(v172 - 8);
  v65 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v234 = &v163 - v66;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AE8, &qword_1CEFAC470);
  v169 = *(v170 - 8);
  v67 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v69 = &v163 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AF0, &qword_1CEFAC478);
  v168 = *(v70 - 8);
  v71 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v163 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AF8, &qword_1CEFAC480);
  v75 = *(v74 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v163 - v77;
  v80 = a1[3];
  v79 = a1[4];
  v268 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v80);
  sub_1CEF657E8();
  v81 = v269;
  sub_1CEFA8A50();
  if (v81)
  {
LABEL_8:
    v98 = v268;
    return __swift_destroy_boxed_opaque_existential_0(v98);
  }

  v165 = v73;
  v164 = v70;
  v166 = v69;
  v82 = v263;
  v83 = v264;
  v84 = v265;
  v167 = 0;
  v86 = v266;
  v85 = v267;
  v269 = v75;
  v87 = v78;
  v88 = sub_1CEFA8800();
  v89 = (2 * *(v88 + 16)) | 1;
  v270 = v88;
  v271 = v88 + 32;
  v272 = 0;
  v273 = v89;
  v90 = sub_1CEF3F54C();
  if (v272 != v273 >> 1)
  {
LABEL_6:
    v94 = sub_1CEFA8680();
    swift_allocError();
    v96 = v95;
    v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20) + 48);
    *v96 = &type metadata for TrustedCloudComputeError.InternalErrorInfo.Reason;
    sub_1CEFA8720();
    sub_1CEFA8670();
    (*(*(v94 - 8) + 104))(v96, *MEMORY[0x1E69E6AF8], v94);
    swift_willThrow();
LABEL_7:
    (*(v269 + 8))(v87, v74);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v91 = v90;
  switch(v90)
  {
    case 0:
      v274 = 0;
      sub_1CEF66310();
      v92 = v165;
      v93 = v167;
      sub_1CEFA8710();
      if (v93)
      {
        goto LABEL_7;
      }

      (*(v168 + 8))(v92, v164);
      goto LABEL_76;
    case 1:
      v274 = 1;
      sub_1CEF662BC();
      v126 = v166;
      v127 = v167;
      sub_1CEFA8710();
      if (v127)
      {
        goto LABEL_7;
      }

      (*(v169 + 8))(v126, v170);
      goto LABEL_76;
    case 2:
      v274 = 2;
      sub_1CEF66268();
      v119 = v234;
      v120 = v167;
      sub_1CEFA8710();
      if (v120)
      {
        goto LABEL_7;
      }

      (*(v171 + 8))(v119, v172);
      goto LABEL_76;
    case 3:
      v274 = 3;
      sub_1CEF66214();
      v123 = v235;
      v124 = v167;
      sub_1CEFA8710();
      if (v124)
      {
        goto LABEL_7;
      }

      (*(v173 + 8))(v123, v174);
      goto LABEL_76;
    case 4:
      v274 = 4;
      sub_1CEF661C0();
      v110 = v167;
      sub_1CEFA8710();
      if (v110)
      {
        goto LABEL_7;
      }

      (*(v175 + 8))(v82, v176);
      goto LABEL_76;
    case 5:
      v274 = 5;
      sub_1CEF6616C();
      v134 = v237;
      v135 = v167;
      sub_1CEFA8710();
      if (v135)
      {
        goto LABEL_7;
      }

      (*(v177 + 8))(v134, v178);
      goto LABEL_76;
    case 6:
      v274 = 6;
      sub_1CEF66118();
      v140 = v238;
      v141 = v167;
      sub_1CEFA8710();
      if (v141)
      {
        goto LABEL_7;
      }

      (*(v179 + 8))(v140, v180);
      goto LABEL_76;
    case 7:
      v274 = 7;
      sub_1CEF660C4();
      v125 = v167;
      sub_1CEFA8710();
      if (v125)
      {
        goto LABEL_7;
      }

      (*(v181 + 8))(v83, v182);
      goto LABEL_76;
    case 8:
      v274 = 8;
      sub_1CEF66070();
      v146 = v167;
      sub_1CEFA8710();
      if (v146)
      {
        goto LABEL_7;
      }

      (*(v184 + 8))(v84, v183);
      goto LABEL_76;
    case 9:
      v274 = 9;
      sub_1CEF6601C();
      v113 = v236;
      v114 = v167;
      sub_1CEFA8710();
      if (v114)
      {
        goto LABEL_7;
      }

      (*(v186 + 8))(v113, v185);
      goto LABEL_76;
    case 10:
      v274 = 10;
      sub_1CEF65FC8();
      v144 = v239;
      v145 = v167;
      sub_1CEFA8710();
      if (v145)
      {
        goto LABEL_7;
      }

      (*(v187 + 8))(v144, v188);
      goto LABEL_76;
    case 11:
      v274 = 11;
      sub_1CEF65F74();
      v108 = v240;
      v109 = v167;
      sub_1CEFA8710();
      if (v109)
      {
        goto LABEL_7;
      }

      (*(v189 + 8))(v108, v190);
      goto LABEL_76;
    case 12:
      v274 = 12;
      sub_1CEF65F20();
      v111 = v241;
      v112 = v167;
      sub_1CEFA8710();
      if (v112)
      {
        goto LABEL_7;
      }

      (*(v191 + 8))(v111, v192);
      goto LABEL_76;
    case 13:
      v274 = 13;
      sub_1CEF65ECC();
      v138 = v242;
      v139 = v167;
      sub_1CEFA8710();
      if (v139)
      {
        goto LABEL_7;
      }

      (*(v193 + 8))(v138, v194);
      goto LABEL_76;
    case 14:
      v274 = 14;
      sub_1CEF65E78();
      v104 = v243;
      v105 = v167;
      sub_1CEFA8710();
      if (v105)
      {
        goto LABEL_7;
      }

      (*(v195 + 8))(v104, v196);
      goto LABEL_76;
    case 15:
      v274 = 15;
      sub_1CEF65E24();
      v121 = v244;
      v122 = v167;
      sub_1CEFA8710();
      if (v122)
      {
        goto LABEL_7;
      }

      (*(v197 + 8))(v121, v198);
      goto LABEL_76;
    case 16:
      v274 = 16;
      sub_1CEF65DD0();
      v102 = v245;
      v103 = v167;
      sub_1CEFA8710();
      if (v103)
      {
        goto LABEL_7;
      }

      (*(v199 + 8))(v102, v200);
      goto LABEL_76;
    case 17:
      v274 = 17;
      sub_1CEF65D7C();
      v130 = v246;
      v131 = v167;
      sub_1CEFA8710();
      if (v131)
      {
        goto LABEL_7;
      }

      (*(v201 + 8))(v130, v202);
      goto LABEL_76;
    case 18:
      v274 = 18;
      sub_1CEF65D28();
      v142 = v247;
      v143 = v167;
      sub_1CEFA8710();
      if (v143)
      {
        goto LABEL_7;
      }

      (*(v203 + 8))(v142, v204);
      goto LABEL_76;
    case 19:
      v274 = 19;
      sub_1CEF65CD4();
      v153 = v248;
      v154 = v167;
      sub_1CEFA8710();
      if (v154)
      {
        goto LABEL_7;
      }

      (*(v205 + 8))(v153, v206);
      goto LABEL_76;
    case 20:
      v274 = 20;
      sub_1CEF65C80();
      v132 = v249;
      v133 = v167;
      sub_1CEFA8710();
      if (v133)
      {
        goto LABEL_7;
      }

      (*(v207 + 8))(v132, v208);
      goto LABEL_76;
    case 21:
      v274 = 21;
      sub_1CEF65C2C();
      v136 = v250;
      v137 = v167;
      sub_1CEFA8710();
      if (v137)
      {
        goto LABEL_7;
      }

      (*(v209 + 8))(v136, v210);
      goto LABEL_76;
    case 22:
      v274 = 22;
      sub_1CEF65BD8();
      v151 = v251;
      v152 = v167;
      sub_1CEFA8710();
      if (v152)
      {
        goto LABEL_7;
      }

      (*(v211 + 8))(v151, v212);
      goto LABEL_76;
    case 23:
      v274 = 23;
      sub_1CEF65B84();
      v155 = v252;
      v156 = v167;
      sub_1CEFA8710();
      if (v156)
      {
        goto LABEL_7;
      }

      (*(v213 + 8))(v155, v214);
      goto LABEL_76;
    case 24:
      v274 = 24;
      sub_1CEF65B30();
      v117 = v253;
      v118 = v167;
      sub_1CEFA8710();
      if (v118)
      {
        goto LABEL_7;
      }

      (*(v215 + 8))(v117, v216);
      goto LABEL_76;
    case 25:
      v274 = 25;
      sub_1CEF65ADC();
      v115 = v254;
      v116 = v167;
      sub_1CEFA8710();
      if (v116)
      {
        goto LABEL_7;
      }

      (*(v217 + 8))(v115, v218);
      goto LABEL_76;
    case 26:
      v274 = 26;
      sub_1CEF65A88();
      v161 = v255;
      v162 = v167;
      sub_1CEFA8710();
      if (v162)
      {
        goto LABEL_7;
      }

      (*(v219 + 8))(v161, v220);
      goto LABEL_76;
    case 27:
      v274 = 27;
      sub_1CEF65A34();
      v100 = v256;
      v101 = v167;
      sub_1CEFA8710();
      if (v101)
      {
        goto LABEL_7;
      }

      (*(v221 + 8))(v100, v222);
      goto LABEL_76;
    case 28:
      v274 = 28;
      sub_1CEF659E0();
      v157 = v257;
      v158 = v167;
      sub_1CEFA8710();
      if (v158)
      {
        goto LABEL_7;
      }

      (*(v223 + 8))(v157, v224);
      goto LABEL_76;
    case 29:
      v274 = 29;
      sub_1CEF6598C();
      v159 = v258;
      v160 = v167;
      sub_1CEFA8710();
      if (v160)
      {
        goto LABEL_7;
      }

      (*(v225 + 8))(v159, v226);
      goto LABEL_76;
    case 30:
      v274 = 30;
      sub_1CEF65938();
      v147 = v259;
      v148 = v167;
      sub_1CEFA8710();
      if (v148)
      {
        goto LABEL_7;
      }

      (*(v227 + 8))(v147, v228);
      goto LABEL_76;
    case 31:
      v274 = 31;
      sub_1CEF658E4();
      v128 = v260;
      v129 = v167;
      sub_1CEFA8710();
      if (v129)
      {
        goto LABEL_7;
      }

      (*(v229 + 8))(v128, v230);
      goto LABEL_76;
    case 32:
      v274 = 32;
      sub_1CEF65890();
      v149 = v261;
      v150 = v167;
      sub_1CEFA8710();
      if (v150)
      {
        goto LABEL_7;
      }

      (*(v231 + 8))(v149, v232);
LABEL_76:
      (*(v269 + 8))(v87, v74);
      swift_unknownObjectRelease();
      v98 = v268;
      goto LABEL_77;
    case 33:
      v274 = 33;
      sub_1CEF6583C();
      v106 = v262;
      v107 = v167;
      sub_1CEFA8710();
      if (v107)
      {
        (*(v269 + 8))(v87, v74);
        swift_unknownObjectRelease();
        v98 = v268;
      }

      else
      {
        (*(v233 + 8))(v106, v86);
        (*(v269 + 8))(v87, v74);
        swift_unknownObjectRelease();
        v98 = v268;
LABEL_77:
        *v85 = v91;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v98);
}

uint64_t sub_1CEF68634()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_1CEF68690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF77B50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF686B8(uint64_t a1)
{
  v2 = sub_1CEF688FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF686F4(uint64_t a1)
{
  v2 = sub_1CEF688FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B00, &qword_1CEFAC488);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v15 = *(v1 + 16);
  v10 = v1[3];
  v14[1] = v1[4];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF688FC();
  sub_1CEFA8A60();
  v19 = 0;
  v12 = v14[3];
  sub_1CEFA8880();
  if (!v12)
  {
    v18 = v15;
    v17 = 1;
    sub_1CEF68950();
    sub_1CEFA8870();
    v16 = 2;
    sub_1CEFA8830();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CEF688FC()
{
  result = qword_1EC4A9B08;
  if (!qword_1EC4A9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B08);
  }

  return result;
}

unint64_t sub_1CEF68950()
{
  result = qword_1EC4A9B10;
  if (!qword_1EC4A9B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B10);
  }

  return result;
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B18, &qword_1CEFAC490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF688FC();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = 0;
  v11 = sub_1CEFA8780();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  sub_1CEF68BF0();
  sub_1CEFA8770();
  v22 = v25;
  v23 = 2;
  v15 = sub_1CEFA8730();
  v18 = v17;
  v19 = *(v6 + 8);
  v21 = v15;
  v19(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v22;
  *(a2 + 24) = v21;
  *(a2 + 32) = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1CEF68BF0()
{
  result = qword_1EC4A9B20;
  if (!qword_1EC4A9B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B20);
  }

  return result;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.message.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall TrustedCloudComputeError.NetworkErrorInfo.init(domain:code:message:)(PrivateCloudCompute::TrustedCloudComputeError::NetworkErrorInfo *__return_ptr retstr, Swift::String domain, Swift::Int code, Swift::String message)
{
  retstr->domain = domain;
  retstr->code = code;
  retstr->message = message;
}

uint64_t sub_1CEF68DC4()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1CEF68E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF77C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF68E3C(uint64_t a1)
{
  v2 = sub_1CEF69078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF68E78(uint64_t a1)
{
  v2 = sub_1CEF69078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B28, &qword_1CEFAC498);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF69078();
  sub_1CEFA8A60();
  v17 = 0;
  v12 = v14[3];
  sub_1CEFA8880();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = 1;
  sub_1CEFA88B0();
  v15 = 2;
  sub_1CEFA8880();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CEF69078()
{
  result = qword_1EC4A9B30;
  if (!qword_1EC4A9B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B30);
  }

  return result;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B38, &unk_1CEFAC4A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF69078();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v11 = sub_1CEFA8780();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  v22 = sub_1CEFA87B0();
  v23 = 2;
  v15 = sub_1CEFA8780();
  v18 = v17;
  v19 = *(v6 + 8);
  v21 = v15;
  v19(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  v20 = v21;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TrustedCloudComputeError.rawCode.getter()
{
  v1 = type metadata accessor for TrustedCloudComputeError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v0, v4, type metadata accessor for TrustedCloudComputeError);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (result > 5)
    {
      if (result == 6)
      {
        sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError);
        return 6;
      }

      else
      {
        sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError);
        return 7;
      }
    }

    else if (result == 4)
    {
      return 4;
    }

    else
    {
      sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      return 5;
    }
  }

  else if (result > 1)
  {
    if (result == 2)
    {
      sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      return 2;
    }

    else
    {
      return result;
    }
  }

  else if (result)
  {
    sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
    return 1;
  }

  else
  {
    sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
    return 0;
  }
}

uint64_t sub_1CEF69504()
{
  v1 = type metadata accessor for TrustedCloudComputeError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v0, v4, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError);
        return 0x6C616E7265746E49;
      }

      else
      {
        sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError);
        return 0x456B726F7774654ELL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000011;
    }

    else
    {
      sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      return 0x7245726576726553;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      return 0x4574756F656D6954;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
    return 0xD000000000000017;
  }

  else
  {
    sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
    return 0xD000000000000014;
  }
}

uint64_t sub_1CEF69778@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1CEFA8100();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for TrustedCloudComputeError(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CEF5D9E0(v1, v14, type metadata accessor for TrustedCloudComputeError);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v15 = v14[1];
    v29 = *v14;
    v16 = v14[4];
  }

  else
  {
    countAndFlagsBits = TrustedCloudComputeError.errorCaseString()()._countAndFlagsBits;
    v30 = 0xD00000000000001ELL;
    v31 = 0x80000001CEFB5F00;
    MEMORY[0x1D38665A0](countAndFlagsBits);

    v29 = v30;
    sub_1CEF5DA48(v14, type metadata accessor for TrustedCloudComputeError);
  }

  v18 = sub_1CEF69A70();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v30 = sub_1CEF69ECC();
    v31 = v22;
    MEMORY[0x1D38665A0](8251, 0xE200000000000000);
    MEMORY[0x1D38665A0](v20, v21);
  }

  else
  {
    sub_1CEF69ECC();
  }

  sub_1CEF6A424();

  TrustedCloudComputeError.retryAfterDate.getter(v10);
  TrustedCloudComputeError.category.getter(v6);
  sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  v23 = sub_1CEFA80E0();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1CEFA80D0();
  a1[3] = v23;
  result = sub_1CEF5BA2C(&qword_1EC4AA230, MEMORY[0x1E698C278]);
  a1[4] = result;
  *a1 = v26;
  return result;
}

uint64_t sub_1CEF69A70()
{
  v1 = v0;
  v2 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TrustedCloudComputeError(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v1, v21, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v28 = *(v21 + 1);
        v29 = v21[16];
        v30 = *(v21 + 3);
        v31 = *(v21 + 4);
        v39 = *v21;
        v40 = v28;
        v41 = v29;
        v42 = v30;
        v43 = v31;
        v32 = TrustedCloudComputeError.InternalErrorInfo.description.getter();

        return v32;
      }

      else
      {
        v35 = *v21;
        v34 = *(v21 + 1);
        v36 = *(v21 + 2);
        v37 = *(v21 + 4);
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_1CEFA8650();

        v39 = 0x3D6E69616D6F64;
        v40 = 0xE700000000000000;
        MEMORY[0x1D38665A0](v35, v34);
        MEMORY[0x1D38665A0](0x3D65646F6320, 0xE600000000000000);
        v44 = v36;
        v38 = sub_1CEFA8910();
        MEMORY[0x1D38665A0](v38);

        return v39;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      LOBYTE(v39) = *v21;
      return TrustedCloudComputeError.UnauthorizedErrorInfo.description.getter();
    }

    else
    {
      sub_1CEF6AB6C(v21, v5, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      v33 = TrustedCloudComputeError.ServerErrorInfo.description.getter();
      sub_1CEF5DA48(v5, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      return v33;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1CEF6AB6C(v21, v9, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      v27 = TrustedCloudComputeError.TimeoutErrorInfo.description.getter();
      sub_1CEF5DA48(v9, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      return v27;
    }

    else
    {
      LOBYTE(v39) = *v21;
      return TrustedCloudComputeError.InvalidRequestErrorInfo.description.getter();
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1CEF6AB6C(v21, v13, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
      v23 = TrustedCloudComputeError.AvailabilityInfo.description.getter();
      v24 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo;
      v25 = v13;
    }

    else
    {
      sub_1CEF6AB6C(v21, v17, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
      v23 = TrustedCloudComputeError.RateLimitInfo.description.getter();
      v24 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo;
      v25 = v17;
    }

    sub_1CEF5DA48(v25, v24);
    return v23;
  }
}

uint64_t sub_1CEF69ECC()
{
  v1 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TrustedCloudComputeError(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CEF5D9E0(v0, v16, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v18 = *v16;
        v23 = v16[1];
        v24 = v16[4];
      }

      else
      {
        v26 = v16[1];
        v18 = v16[3];
        v27 = v16[4];
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v21 = *v16;
      if (v21 <= 1)
      {
        if (*v16)
        {
          return 0xD000000000000021;
        }

        else
        {
          return 0xD000000000000011;
        }
      }

      else if (v21 == 2)
      {
        return 0xD000000000000013;
      }

      else if (v21 == 3)
      {
        return 0xD000000000000014;
      }

      else
      {
        return 0x726F687475616E75;
      }
    }

    else
    {
      sub_1CEF5DA48(v16, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      return 0xD000000000000015;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1CEF6AB6C(v16, v12, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
        v18 = TrustedCloudComputeError.RateLimitInfo.message.getter();
        v19 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo;
        v20 = v12;
LABEL_51:
        sub_1CEF5DA48(v20, v19);
        return v18;
      }

      sub_1CEF6AB6C(v16, v8, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
      v25 = *v8;
      if (v25 <= 3)
      {
        if (*v8 <= 1u)
        {
          if (!*v8)
          {
            v18 = 0xD000000000000010;
LABEL_50:
            v19 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo;
            v20 = v8;
            goto LABEL_51;
          }

LABEL_47:
          v18 = 0xD000000000000012;
          goto LABEL_50;
        }

        if (v25 == 2)
        {
          v18 = 0x7562207365646F6ELL;
          goto LABEL_50;
        }

LABEL_48:
        v18 = 0xD000000000000018;
        goto LABEL_50;
      }

      if (*v8 > 5u)
      {
        if (v25 == 6)
        {
          goto LABEL_48;
        }
      }

      else if (v25 != 4)
      {
        goto LABEL_47;
      }

      v18 = 0xD00000000000001ALL;
      goto LABEL_50;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1CEF6AB6C(v16, v4, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      v22 = *v4;
      if (v22 <= 1)
      {
        if (*v4)
        {
LABEL_45:
          v18 = 0xD000000000000022;
          goto LABEL_46;
        }

        v18 = 0xD000000000000020;
      }

      else if (v22 == 2)
      {
        v18 = 0xD00000000000001CLL;
      }

      else
      {
        if (v22 == 3)
        {
          goto LABEL_45;
        }

        v18 = 0xD000000000000015;
      }

LABEL_46:
      v19 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo;
      v20 = v4;
      goto LABEL_51;
    }

    if (*v16)
    {
      v18 = 0x2064696C61766E69;
    }

    else
    {
      v18 = 0xD000000000000010;
    }

    *v16;
  }

  return v18;
}

uint64_t sub_1CEF6A424()
{
  v1 = v0;
  v2 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TrustedCloudComputeError(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v1, v13, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v18 = *(v13 + 1);
        v19 = v13[16];
        v20 = *(v13 + 4);

        return qword_1CEFB1270[v19];
      }

      else
      {
        v22 = *(v13 + 1);
        v23 = *(v13 + 2);
        v24 = *(v13 + 4);

        return v23;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v16 = *v13;
      if (v16 == 4)
      {
        return 32017;
      }

      else
      {
        return v16 + 32018;
      }
    }

    else
    {
      sub_1CEF5DA48(v13, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      return 32058;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1CEF6AB6C(v13, v5, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      v17 = *v5;
      sub_1CEF5DA48(v5, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      if (v17 == 4)
      {
        return 32010;
      }

      else
      {
        return v17 + 32011;
      }
    }

    else if (*v13)
    {
      return 32015;
    }

    else
    {
      return 32016;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1CEF6AB6C(v13, v9, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
    v21 = *v9;
    sub_1CEF5DA48(v9, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
    if (v21 == 7)
    {
      return 32002;
    }

    else
    {
      return v21 + 32003;
    }
  }

  else
  {
    sub_1CEF5DA48(v13, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
    return 32001;
  }
}

uint64_t TrustedCloudComputeError.retryAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TrustedCloudComputeError(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v33, v20, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) >= 2)
    {
      if ((EnumCaseMultiPayload - 6) >= 2)
      {
        sub_1CEF6AB6C(v20, v4, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
        sub_1CEF6196C(&v4[*(v1 + 24)], v34);
        return sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      }

      sub_1CEF5DA48(v20, type metadata accessor for TrustedCloudComputeError);
    }

    v27 = sub_1CEFA8030();
    return (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CEF6AB6C(v20, v12, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
      v22 = *(v9 + 20);
      v23 = sub_1CEFA8030();
      v24 = *(v23 - 8);
      v25 = *(v24 + 32);
      v26 = &v12[v22];
    }

    else
    {
      sub_1CEF6AB6C(v20, v8, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      v32 = *(v5 + 20);
      v23 = sub_1CEFA8030();
      v24 = *(v23 - 8);
      v25 = *(v24 + 32);
      v26 = &v8[v32];
    }

    v31 = v34;
    v25(v34, v26, v23);
  }

  else
  {
    sub_1CEF6AB6C(v20, v16, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
    v29 = *(v13 + 40);
    v23 = sub_1CEFA8030();
    v24 = *(v23 - 8);
    v30 = &v16[v29];
    v31 = v34;
    (*(v24 + 16))(v34, v30, v23);
    sub_1CEF5DA48(v16, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
  }

  return (*(v24 + 56))(v31, 0, 1, v23);
}

uint64_t sub_1CEF6AB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TrustedCloudComputeError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TrustedCloudComputeError(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v2, v7, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1CEF5DA48(v7, type metadata accessor for TrustedCloudComputeError);
        v12 = MEMORY[0x1E698C2B0];
      }

      else
      {
        sub_1CEF5DA48(v7, type metadata accessor for TrustedCloudComputeError);
        v12 = MEMORY[0x1E698C328];
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v17 = *MEMORY[0x1E698C2A8];
        v18 = sub_1CEFA8100();
        (*(*(v18 - 8) + 104))(a1, v17, v18);
        v11 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo;
        return sub_1CEF5DA48(v7, v11);
      }

      v12 = MEMORY[0x1E698C2E0];
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v15 = *MEMORY[0x1E698C2D0];
        v16 = sub_1CEFA8100();
        (*(*(v16 - 8) + 104))(a1, v15, v16);
        v11 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo;
      }

      else
      {
        v9 = *MEMORY[0x1E698C2C0];
        v10 = sub_1CEFA8100();
        (*(*(v10 - 8) + 104))(a1, v9, v10);
        v11 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo;
      }

      return sub_1CEF5DA48(v7, v11);
    }

    if (EnumCaseMultiPayload == 2)
    {
      v13 = *MEMORY[0x1E698C338];
      v14 = sub_1CEFA8100();
      (*(*(v14 - 8) + 104))(a1, v13, v14);
      v11 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo;
      return sub_1CEF5DA48(v7, v11);
    }

    v12 = MEMORY[0x1E698C2A0];
  }

  v20 = *v12;
  v21 = sub_1CEFA8100();
  return (*(*(v21 - 8) + 104))(a1, v20, v21);
}

uint64_t TrustedCloudComputeError.underlyingErrors.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9320, &qword_1CEFAB3A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CEFAA480;
  sub_1CEF69778((v0 + 32));
  return v0;
}

uint64_t sub_1CEF6AF28()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6C616E7265746E69;
    if (v1 != 6)
    {
      v5 = 0x456B726F7774656ELL;
    }

    v6 = 0xD000000000000011;
    if (v1 != 4)
    {
      v6 = 0x7245726576726573;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x4574756F656D6974;
    if (v1 != 2)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000017;
    if (!*v0)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1CEF6B048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF77D80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF6B07C(uint64_t a1)
{
  v2 = sub_1CEF6C81C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B0B8(uint64_t a1)
{
  v2 = sub_1CEF6C81C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001CEFB5EE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B1A4(uint64_t a1)
{
  v2 = sub_1CEF6CBB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B1E0(uint64_t a1)
{
  v2 = sub_1CEF6CBB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696D694C65746172 && a2 == 0xED00006F666E4974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF6B2D0(uint64_t a1)
{
  v2 = sub_1CEF6CC0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B30C(uint64_t a1)
{
  v2 = sub_1CEF6CC0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001CEFB5E60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B3F8(uint64_t a1)
{
  v2 = sub_1CEF6C918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B434(uint64_t a1)
{
  v2 = sub_1CEF6C918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001CEFB5EA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B520(uint64_t a1)
{
  v2 = sub_1CEF6CABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B55C(uint64_t a1)
{
  v2 = sub_1CEF6CABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001CEFB5E40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B648(uint64_t a1)
{
  v2 = sub_1CEF6C870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B684(uint64_t a1)
{
  v2 = sub_1CEF6C870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7245726576726573 && a2 == 0xEF6F666E49726F72)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF6B774(uint64_t a1)
{
  v2 = sub_1CEF6C9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B7B0(uint64_t a1)
{
  v2 = sub_1CEF6C9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001CEFB5EC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B89C(uint64_t a1)
{
  v2 = sub_1CEF6CB64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B8D8(uint64_t a1)
{
  v2 = sub_1CEF6CB64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001CEFB5E80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B9C4(uint64_t a1)
{
  v2 = sub_1CEF6CA14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6BA00(uint64_t a1)
{
  v2 = sub_1CEF6CA14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B40, &qword_1CEFAC4B0);
  v109 = *(v2 - 8);
  v110 = v2;
  v3 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v108 = &v81 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B48, &qword_1CEFAC4B8);
  v106 = *(v5 - 8);
  v107 = v5;
  v6 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B50, &qword_1CEFAC4C0);
  v103 = *(v8 - 8);
  v104 = v8;
  v9 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v81 - v10;
  v100 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  v11 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B58, &qword_1CEFAC4C8);
  v98 = *(v99 - 8);
  v13 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v81 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B60, &qword_1CEFAC4D0);
  v95 = *(v96 - 8);
  v15 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v81 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B68, &qword_1CEFAC4D8);
  v92 = *(v93 - 8);
  v17 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v81 - v18;
  v89 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  v19 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B70, &qword_1CEFAC4E0);
  v87 = *(v88 - 8);
  v21 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v81 - v22;
  v84 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  v23 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B78, &qword_1CEFAC4E8);
  v82 = *(v83 - 8);
  v25 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v27 = &v81 - v26;
  v28 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TrustedCloudComputeError(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B80, &qword_1CEFAC4F0);
  v37 = *(v36 - 8);
  v113 = v36;
  v114 = v37;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v81 - v39;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF6C81C();
  v112 = v40;
  sub_1CEFA8A60();
  sub_1CEF5D9E0(v111, v35, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1CEF6AB6C(v35, v31, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
        LOBYTE(v115) = 0;
        sub_1CEF6CC0C();
        v44 = v112;
        v43 = v113;
        sub_1CEFA8820();
        sub_1CEF5BA2C(&qword_1EC4A9C08, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
        v45 = v83;
        sub_1CEFA88D0();
        (*(v82 + 8))(v27, v45);
        sub_1CEF5DA48(v31, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
        return (*(v114 + 8))(v44, v43);
      }

      v53 = v85;
      sub_1CEF6AB6C(v35, v85, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
      LOBYTE(v115) = 1;
      sub_1CEF6CBB8();
      v69 = v86;
      v56 = v112;
      v55 = v113;
      sub_1CEFA8820();
      sub_1CEF5BA2C(&qword_1EC4A9BF8, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
      v70 = v88;
      sub_1CEFA88D0();
      (*(v87 + 8))(v69, v70);
      v58 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v53 = v90;
      sub_1CEF6AB6C(v35, v90, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      LOBYTE(v115) = 2;
      sub_1CEF6CB64();
      v54 = v91;
      v56 = v112;
      v55 = v113;
      sub_1CEFA8820();
      sub_1CEF5BA2C(&qword_1EC4A9BE8, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      v57 = v93;
      sub_1CEFA88D0();
      (*(v92 + 8))(v54, v57);
      v58 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo;
LABEL_13:
      sub_1CEF5DA48(v53, v58);
      return (*(v114 + 8))(v56, v55);
    }

    v75 = *v35;
    LOBYTE(v115) = 3;
    sub_1CEF6CABC();
    v49 = v94;
    v47 = v112;
    v50 = v113;
    sub_1CEFA8820();
    LOBYTE(v115) = v75;
    sub_1CEF6CB10();
    v51 = v96;
    sub_1CEFA88D0();
    v52 = &v120;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v59 = v112;
    if (EnumCaseMultiPayload == 6)
    {
      v61 = *v35;
      v60 = *(v35 + 1);
      v62 = v35[16];
      v64 = *(v35 + 3);
      v63 = *(v35 + 4);
      LOBYTE(v115) = 6;
      sub_1CEF6C918();
      v65 = v105;
      v66 = v113;
      sub_1CEFA8820();
      v115 = v61;
      v116 = v60;
      LOBYTE(v117) = v62;
      v118 = v64;
      v119 = v63;
      sub_1CEF6C96C();
      v67 = v107;
      sub_1CEFA88D0();
      v68 = v106;
    }

    else
    {
      v77 = *v35;
      v76 = *(v35 + 1);
      v78 = *(v35 + 2);
      v79 = *(v35 + 3);
      v80 = *(v35 + 4);
      LOBYTE(v115) = 7;
      sub_1CEF6C870();
      v65 = v108;
      v66 = v113;
      sub_1CEFA8820();
      v115 = v77;
      v116 = v76;
      v117 = v78;
      v118 = v79;
      v119 = v80;
      sub_1CEF6C8C4();
      v67 = v110;
      sub_1CEFA88D0();
      v68 = v109;
    }

    (*(v68 + 8))(v65, v67);
    (*(v114 + 8))(v59, v66);
  }

  else
  {
    v47 = v112;
    if (EnumCaseMultiPayload == 4)
    {
      v48 = *v35;
      LOBYTE(v115) = 4;
      sub_1CEF6CA14();
      v49 = v97;
      v50 = v113;
      sub_1CEFA8820();
      LOBYTE(v115) = v48;
      sub_1CEF6CA68();
      v51 = v99;
      sub_1CEFA88D0();
      v52 = &v121;
LABEL_17:
      (*(*(v52 - 32) + 8))(v49, v51);
      return (*(v114 + 8))(v47, v50);
    }

    v71 = v101;
    sub_1CEF6AB6C(v35, v101, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
    LOBYTE(v115) = 5;
    sub_1CEF6C9C0();
    v72 = v102;
    v73 = v113;
    sub_1CEFA8820();
    sub_1CEF5BA2C(&qword_1EC4A9BB8, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
    v74 = v104;
    sub_1CEFA88D0();
    (*(v103 + 8))(v72, v74);
    sub_1CEF5DA48(v71, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
    return (*(v114 + 8))(v47, v73);
  }
}

unint64_t sub_1CEF6C81C()
{
  result = qword_1EC4A9B88;
  if (!qword_1EC4A9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B88);
  }

  return result;
}

unint64_t sub_1CEF6C870()
{
  result = qword_1EC4A9B90;
  if (!qword_1EC4A9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B90);
  }

  return result;
}

unint64_t sub_1CEF6C8C4()
{
  result = qword_1EC4A9B98;
  if (!qword_1EC4A9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B98);
  }

  return result;
}

unint64_t sub_1CEF6C918()
{
  result = qword_1EC4A9BA0;
  if (!qword_1EC4A9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BA0);
  }

  return result;
}

unint64_t sub_1CEF6C96C()
{
  result = qword_1EC4A9BA8;
  if (!qword_1EC4A9BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BA8);
  }

  return result;
}

unint64_t sub_1CEF6C9C0()
{
  result = qword_1EC4A9BB0;
  if (!qword_1EC4A9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BB0);
  }

  return result;
}

unint64_t sub_1CEF6CA14()
{
  result = qword_1EC4A9BC0;
  if (!qword_1EC4A9BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BC0);
  }

  return result;
}

unint64_t sub_1CEF6CA68()
{
  result = qword_1EC4A9BC8;
  if (!qword_1EC4A9BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BC8);
  }

  return result;
}

unint64_t sub_1CEF6CABC()
{
  result = qword_1EC4A9BD0;
  if (!qword_1EC4A9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BD0);
  }

  return result;
}

unint64_t sub_1CEF6CB10()
{
  result = qword_1EC4A9BD8;
  if (!qword_1EC4A9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BD8);
  }

  return result;
}

unint64_t sub_1CEF6CB64()
{
  result = qword_1EC4A9BE0;
  if (!qword_1EC4A9BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BE0);
  }

  return result;
}

unint64_t sub_1CEF6CBB8()
{
  result = qword_1EC4A9BF0;
  if (!qword_1EC4A9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BF0);
  }

  return result;
}

unint64_t sub_1CEF6CC0C()
{
  result = qword_1EC4A9C00;
  if (!qword_1EC4A9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C00);
  }

  return result;
}

uint64_t TrustedCloudComputeError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C10, &qword_1CEFAC4F8);
  v124 = *(v119 - 8);
  v3 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v134 = &v99 - v4;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C18, &qword_1CEFAC500);
  v122 = *(v123 - 8);
  v5 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v133 = &v99 - v6;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C20, &qword_1CEFAC508);
  v120 = *(v121 - 8);
  v7 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v128 = &v99 - v8;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C28, &qword_1CEFAC510);
  v117 = *(v118 - 8);
  v9 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v127 = &v99 - v10;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C30, &qword_1CEFAC518);
  v115 = *(v116 - 8);
  v11 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v126 = &v99 - v12;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C38, &qword_1CEFAC520);
  v114 = *(v111 - 8);
  v13 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v132 = &v99 - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C40, &qword_1CEFAC528);
  v112 = *(v113 - 8);
  v15 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v131 = &v99 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C48, &qword_1CEFAC530);
  v109 = *(v110 - 8);
  v17 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v125 = &v99 - v18;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C50, &qword_1CEFAC538);
  v135 = *(v130 - 8);
  v19 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v21 = &v99 - v20;
  v129 = type metadata accessor for TrustedCloudComputeError(0);
  v22 = *(*(v129 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v129);
  v107 = (&v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v106 = (&v99 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v108 = &v99 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v105 = &v99 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v99 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v99 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v99 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v99 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v99 - v43;
  v45 = a1[3];
  v46 = a1[4];
  v146 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v45);
  sub_1CEF6C81C();
  v137 = v21;
  v47 = v138;
  sub_1CEFA8A50();
  if (!v47)
  {
    v101 = v42;
    v102 = v39;
    v100 = v33;
    v103 = v36;
    v48 = v131;
    v49 = v132;
    v138 = 0;
    v50 = v133;
    v51 = v134;
    v104 = v44;
    v53 = v136;
    v52 = v137;
    v54 = v130;
    v55 = sub_1CEFA8800();
    v56 = (2 * *(v55 + 16)) | 1;
    v142 = v55;
    v143 = v55 + 32;
    v144 = 0;
    v145 = v56;
    v57 = sub_1CEF3F580();
    if (v57 == 8 || v144 != v145 >> 1)
    {
      v65 = v52;
      v66 = sub_1CEFA8680();
      swift_allocError();
      v68 = v67;
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20) + 48);
      *v68 = v129;
      sub_1CEFA8720();
      sub_1CEFA8670();
      (*(*(v66 - 8) + 104))(v68, *MEMORY[0x1E69E6AF8], v66);
      swift_willThrow();
      (*(v135 + 8))(v65, v54);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v146);
    }

    if (v57 <= 3u)
    {
      v58 = v138;
      if (v57 <= 1u)
      {
        if (!v57)
        {
          LOBYTE(v139) = 0;
          sub_1CEF6CC0C();
          v59 = v125;
          v60 = v52;
          sub_1CEFA8710();
          v61 = v135;
          if (!v58)
          {
            type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
            sub_1CEF5BA2C(&qword_1EC4A9C90, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
            v62 = v101;
            v63 = v110;
            sub_1CEFA87D0();
            (*(v109 + 8))(v59, v63);
            (*(v61 + 8))(v52, v54);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v64 = v104;
            sub_1CEF6AB6C(v62, v104, type metadata accessor for TrustedCloudComputeError);
            v53 = v136;
LABEL_38:
            sub_1CEF6AB6C(v64, v53, type metadata accessor for TrustedCloudComputeError);
            return __swift_destroy_boxed_opaque_existential_0(v146);
          }

          goto LABEL_24;
        }

        LOBYTE(v139) = 1;
        sub_1CEF6CBB8();
        v81 = v48;
        v60 = v52;
        sub_1CEFA8710();
        v61 = v135;
        if (v58)
        {
LABEL_24:
          (*(v61 + 8))(v60, v54);
          goto LABEL_10;
        }

        type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        sub_1CEF5BA2C(&qword_1EC4A9C88, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
        v85 = v102;
        v93 = v113;
        sub_1CEFA87D0();
        (*(v112 + 8))(v81, v93);
        (*(v61 + 8))(v137, v54);
        swift_unknownObjectRelease();
        goto LABEL_36;
      }

      if (v57 == 2)
      {
        LOBYTE(v139) = 2;
        sub_1CEF6CB64();
        v77 = v52;
        sub_1CEFA8710();
        if (v58)
        {
LABEL_18:
          (*(v135 + 8))(v52, v54);
          goto LABEL_10;
        }

        type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
        sub_1CEF5BA2C(&qword_1EC4A9C80, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
        v85 = v103;
        v91 = v111;
        sub_1CEFA87D0();
        v92 = v135;
        (*(v114 + 8))(v49, v91);
        (*(v92 + 8))(v77, v54);
        swift_unknownObjectRelease();
LABEL_36:
        swift_storeEnumTagMultiPayload();
        v98 = v85;
        goto LABEL_37;
      }

      LOBYTE(v139) = 3;
      sub_1CEF6CABC();
      v87 = v126;
      sub_1CEFA8710();
      if (v58)
      {
        goto LABEL_18;
      }

      sub_1CEF6DF60();
      v88 = v116;
      sub_1CEFA87D0();
      (*(v115 + 8))(v87, v88);
      (*(v135 + 8))(v52, v54);
      swift_unknownObjectRelease();
      v76 = v100;
      *v100 = v139;
LABEL_35:
      swift_storeEnumTagMultiPayload();
      v98 = v76;
LABEL_37:
      v64 = v104;
      sub_1CEF6AB6C(v98, v104, type metadata accessor for TrustedCloudComputeError);
      goto LABEL_38;
    }

    v71 = v135;
    if (v57 > 5u)
    {
      if (v57 == 6)
      {
        LOBYTE(v139) = 6;
        sub_1CEF6C918();
        v78 = v50;
        v73 = v52;
        v79 = v138;
        sub_1CEFA8710();
        if (!v79)
        {
          sub_1CEF6DEB8();
          v80 = v123;
          sub_1CEFA87D0();
          (*(v122 + 8))(v78, v80);
          (*(v71 + 8))(v52, v54);
          swift_unknownObjectRelease();
          v94 = v140;
          v95 = v141[0];
          v76 = v106;
          *v106 = v139;
          *(v76 + 1) = v94;
          v76[16] = v95;
          *(v76 + 24) = *&v141[8];
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      LOBYTE(v139) = 7;
      sub_1CEF6C870();
      v83 = v52;
      v89 = v138;
      sub_1CEFA8710();
      if (!v89)
      {
        sub_1CEF6DE64();
        v90 = v119;
        sub_1CEFA87D0();
        (*(v124 + 8))(v51, v90);
        (*(v71 + 8))(v52, v54);
        swift_unknownObjectRelease();
        v96 = v140;
        v97 = *&v141[16];
        v76 = v107;
        *v107 = v139;
        *(v76 + 1) = v96;
        *(v76 + 1) = *v141;
        *(v76 + 4) = v97;
        goto LABEL_35;
      }
    }

    else
    {
      if (v57 == 4)
      {
        LOBYTE(v139) = 4;
        sub_1CEF6CA14();
        v72 = v127;
        v73 = v52;
        v74 = v138;
        sub_1CEFA8710();
        if (!v74)
        {
          sub_1CEF6DF0C();
          v75 = v118;
          sub_1CEFA87D0();
          (*(v117 + 8))(v72, v75);
          (*(v71 + 8))(v52, v54);
          swift_unknownObjectRelease();
          v76 = v105;
          *v105 = v139;
          goto LABEL_35;
        }

LABEL_22:
        (*(v71 + 8))(v73, v54);
        goto LABEL_10;
      }

      LOBYTE(v139) = 5;
      sub_1CEF6C9C0();
      v82 = v128;
      v83 = v52;
      v84 = v138;
      sub_1CEFA8710();
      if (!v84)
      {
        type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
        sub_1CEF5BA2C(&qword_1EC4A9C68, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
        v85 = v108;
        v86 = v121;
        sub_1CEFA87D0();
        (*(v120 + 8))(v82, v86);
        (*(v71 + 8))(v137, v54);
        swift_unknownObjectRelease();
        goto LABEL_36;
      }
    }

    (*(v71 + 8))(v83, v54);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v146);
}

unint64_t sub_1CEF6DE64()
{
  result = qword_1EC4A9C58;
  if (!qword_1EC4A9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C58);
  }

  return result;
}

unint64_t sub_1CEF6DEB8()
{
  result = qword_1EC4A9C60;
  if (!qword_1EC4A9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C60);
  }

  return result;
}

unint64_t sub_1CEF6DF0C()
{
  result = qword_1EC4A9C70;
  if (!qword_1EC4A9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C70);
  }

  return result;
}

unint64_t sub_1CEF6DF60()
{
  result = qword_1EC4A9C78;
  if (!qword_1EC4A9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C78);
  }

  return result;
}

uint64_t sub_1CEF6DFB4(uint64_t a1)
{
  v2 = sub_1CEF5BA2C(&qword_1EC4A9CC0, type metadata accessor for TrustedCloudComputeError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CEF6E020(uint64_t a1)
{
  v2 = sub_1CEF5BA2C(&qword_1EC4A9CC0, type metadata accessor for TrustedCloudComputeError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CEF6E0C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9320, &qword_1CEFAB3A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CEFAA480;
  sub_1CEF69778((v0 + 32));
  return v0;
}

void sub_1CEF6E128()
{
  sub_1CEF5BA2C(&qword_1EC4AA228, type metadata accessor for TrustedCloudComputeError);

  JUMPOUT(0x1D3866390);
}

void sub_1CEF6E198()
{
  sub_1CEF5BA2C(&qword_1EC4AA228, type metadata accessor for TrustedCloudComputeError);

  JUMPOUT(0x1D38663C0);
}

uint64_t TrustedCloudComputeError.init(file:line:)@<X0>(uint64_t a1@<X8>)
{
  sub_1CEFA8650();

  v2 = sub_1CEFA8660();
  MEMORY[0x1D38665A0](v2);

  MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
  v3 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v3);

  *a1 = 0xD000000000000014;
  *(a1 + 8) = 0x80000001CEFB5430;
  *(a1 + 16) = 34;
  type metadata accessor for TrustedCloudComputeError(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t TrustedCloudComputeError.init(file:line:message:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  sub_1CEFA8650();

  MEMORY[0x1D38665A0](0x3D656C696620, 0xE600000000000000);
  v6 = sub_1CEFA8660();
  MEMORY[0x1D38665A0](v6);

  MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
  v7 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v7);

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 34;
  type metadata accessor for TrustedCloudComputeError(0);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t static TrustedCloudComputeError.xpcConnectionInterrupted.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x80000001CEFB5450;
  *(a1 + 16) = 0;
  type metadata accessor for TrustedCloudComputeError(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t TrustedCloudComputeError.init(responseMetadata:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v141 = a2;
  v140 = type metadata accessor for RopesResponseMetadata();
  v3 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v5 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  v6 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CEFA8030();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v138 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v138 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v138 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v138 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v138 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v138 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v138 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v138 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v47 = a1;
  v48 = &v138 - v43;
  v49 = *(v47 + 16);
  if (v49 == 255 || (v49 & 1) != 0)
  {
LABEL_3:
    v50 = v47;
    sub_1CEF5D9E0(v47, v5, type metadata accessor for RopesResponseMetadata);
    TrustedCloudComputeError.ServerErrorInfo.init(responseMetadata:)(v5, v141);
    sub_1CEF5DA48(v50, type metadata accessor for RopesResponseMetadata);
    type metadata accessor for TrustedCloudComputeError(0);
  }

  else
  {
    switch(*(v47 + 8))
    {
      case 2u:
        sub_1CEF5DA48(v47, type metadata accessor for RopesResponseMetadata);
        *v141 = 0;
        type metadata accessor for TrustedCloudComputeError(0);
        goto LABEL_36;
      case 0x11u:
        v60 = v39;
        if (*(v47 + 64))
        {
          v61 = v44;
          v67 = v47;
          v63 = v42;
          (*(v44 + 16))(v42, v47 + *(v140 + 60), v39);
        }

        else
        {
          v109 = *(v47 + 56);
          v110 = v47 + *(v140 + 60);
          v61 = v44;
          v67 = v47;
          v63 = v42;
          sub_1CEFA7FF0();
        }

        v103 = v141;
        sub_1CEF5DA48(v67, type metadata accessor for RopesResponseMetadata);
        *v103 = 0;
        goto LABEL_73;
      case 0x12u:
        v60 = v39;
        if (*(v47 + 64))
        {
          v61 = v44;
          v76 = v47;
          v63 = v41;
          (*(v44 + 16))(v41, v47 + *(v140 + 60), v39);
        }

        else
        {
          v121 = *(v47 + 56);
          v122 = v47 + *(v140 + 60);
          v61 = v44;
          v76 = v47;
          v63 = v41;
          sub_1CEFA7FF0();
        }

        v103 = v141;
        sub_1CEF5DA48(v76, type metadata accessor for RopesResponseMetadata);
        v104 = 1;
        goto LABEL_72;
      case 0x13u:
        v60 = v39;
        if (*(v47 + 64))
        {
          v63 = v40;
          v61 = v44;
          v75 = v47;
          (*(v44 + 16))(v40, v47 + *(v140 + 60), v39);
        }

        else
        {
          v119 = *(v47 + 56);
          v120 = v47 + *(v140 + 60);
          v61 = v44;
          v75 = v47;
          v63 = v40;
          sub_1CEFA7FF0();
        }

        v103 = v141;
        sub_1CEF5DA48(v75, type metadata accessor for RopesResponseMetadata);
        v104 = 2;
        goto LABEL_72;
      case 0x14u:
        v60 = v39;
        if (*(v47 + 64))
        {
          v61 = v44;
          v62 = v47;
          v63 = v46;
          (*(v44 + 16))(v46, v47 + *(v140 + 60), v39);
        }

        else
        {
          v101 = *(v47 + 56);
          v102 = v47 + *(v140 + 60);
          v61 = v44;
          v62 = v47;
          v63 = v46;
          sub_1CEFA7FF0();
        }

        v103 = v141;
        sub_1CEF5DA48(v62, type metadata accessor for RopesResponseMetadata);
        v104 = 3;
        goto LABEL_72;
      case 0x15u:
        v68 = v39;
        if (*(v47 + 64))
        {
          v69 = v44;
          v70 = v47;
          (*(v44 + 16))(&v138 - v43, v47 + *(v140 + 60), v39);
          v71 = 0;
        }

        else
        {
          v71 = *(v47 + 56);
          v111 = v47 + *(v140 + 60);
          v69 = v44;
          v70 = v47;
          sub_1CEFA7FF0();
        }

        v112 = v141;
        v114 = v138;
        v113 = v139;
        *(v139 + 1) = 0u;
        *(v113 + 32) = 0u;
        *v113 = 0u;
        sub_1CEF5DA48(v70, type metadata accessor for RopesResponseMetadata);
        *(v113 + 48) = MEMORY[0x1E69E7CC0];
        *(v113 + 56) = 0;
        *(v113 + 64) = v71;
        (*(v69 + 32))(v113 + *(v114 + 40), v48, v68);
        sub_1CEF6AB6C(v113, v112, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
        type metadata accessor for TrustedCloudComputeError(0);
        return swift_storeEnumTagMultiPayload();
      case 0x16u:
        sub_1CEF5DA48(v47, type metadata accessor for RopesResponseMetadata);
        *v141 = 0;
        goto LABEL_35;
      case 0x17u:
        sub_1CEF5DA48(v47, type metadata accessor for RopesResponseMetadata);
        v77 = 1;
        goto LABEL_34;
      case 0x18u:
        sub_1CEF5DA48(v47, type metadata accessor for RopesResponseMetadata);
        v77 = 2;
        goto LABEL_34;
      case 0x19u:
        sub_1CEF5DA48(v47, type metadata accessor for RopesResponseMetadata);
        v77 = 3;
LABEL_34:
        *v141 = v77;
LABEL_35:
        type metadata accessor for TrustedCloudComputeError(0);
LABEL_36:

        return swift_storeEnumTagMultiPayload();
      case 0x1Au:
        v57 = v39;
        if (*(v47 + 64))
        {
          v58 = v44;
          v59 = v47;
          (*(v44 + 16))(v38, v47 + *(v140 + 60), v39);
        }

        else
        {
          v97 = *(v47 + 56);
          v98 = v47 + *(v140 + 60);
          v58 = v44;
          v59 = v47;
          sub_1CEFA7FF0();
        }

        sub_1CEF5DA48(v59, type metadata accessor for RopesResponseMetadata);
        v99 = v141;
        *v141 = 0;
        v100 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v58 + 32))(&v99[*(v100 + 20)], v38, v57);
        goto LABEL_69;
      case 0x1Bu:
        v72 = v39;
        if (*(v47 + 64))
        {
          v73 = v44;
          v74 = v47;
          (*(v44 + 16))(v35, v47 + *(v140 + 60), v39);
        }

        else
        {
          v115 = *(v47 + 56);
          v116 = v47 + *(v140 + 60);
          v73 = v44;
          v74 = v47;
          sub_1CEFA7FF0();
        }

        v117 = v141;
        sub_1CEF5DA48(v74, type metadata accessor for RopesResponseMetadata);
        *v117 = 1;
        v118 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v73 + 32))(&v117[*(v118 + 20)], v35, v72);
        goto LABEL_69;
      case 0x1Cu:
        v64 = v39;
        if (*(v47 + 64))
        {
          v65 = v44;
          v66 = v47;
          (*(v44 + 16))(v32, v47 + *(v140 + 60), v39);
        }

        else
        {
          v105 = *(v47 + 56);
          v106 = v47 + *(v140 + 60);
          v65 = v44;
          v66 = v47;
          sub_1CEFA7FF0();
        }

        v107 = v141;
        sub_1CEF5DA48(v66, type metadata accessor for RopesResponseMetadata);
        *v107 = 2;
        v108 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v65 + 32))(&v107[*(v108 + 20)], v32, v64);
        goto LABEL_69;
      case 0x1Du:
        v54 = v39;
        if (*(v47 + 64))
        {
          v55 = v44;
          v56 = v47;
          (*(v44 + 16))(v26, v47 + *(v140 + 60), v39);
        }

        else
        {
          v93 = *(v47 + 56);
          v94 = v47 + *(v140 + 60);
          v55 = v44;
          v56 = v47;
          sub_1CEFA7FF0();
        }

        v95 = v141;
        sub_1CEF5DA48(v56, type metadata accessor for RopesResponseMetadata);
        *v95 = 4;
        v96 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v55 + 32))(&v95[*(v96 + 20)], v26, v54);
        goto LABEL_69;
      case 0x1Eu:
        v78 = v39;
        if (*(v47 + 64))
        {
          v79 = v44;
          v80 = v47;
          (*(v44 + 16))(v23, v47 + *(v140 + 60), v39);
        }

        else
        {
          v123 = *(v47 + 56);
          v124 = v47 + *(v140 + 60);
          v79 = v44;
          v80 = v47;
          sub_1CEFA7FF0();
        }

        v125 = v141;
        sub_1CEF5DA48(v80, type metadata accessor for RopesResponseMetadata);
        *v125 = 5;
        v126 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v79 + 32))(&v125[*(v126 + 20)], v23, v78);
        goto LABEL_69;
      case 0x1Fu:
        v81 = v39;
        if (*(v47 + 64))
        {
          v82 = v44;
          v83 = v47;
          (*(v44 + 16))(v20, v47 + *(v140 + 60), v39);
        }

        else
        {
          v127 = *(v47 + 56);
          v128 = v47 + *(v140 + 60);
          v82 = v44;
          v83 = v47;
          sub_1CEFA7FF0();
        }

        v129 = v141;
        sub_1CEF5DA48(v83, type metadata accessor for RopesResponseMetadata);
        *v129 = 6;
        v130 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v82 + 32))(&v129[*(v130 + 20)], v20, v81);
        goto LABEL_69;
      case 0x23u:
        v60 = v39;
        if (*(v47 + 64))
        {
          v61 = v44;
          v88 = v47;
          v63 = v45;
          (*(v44 + 16))(v45, v47 + *(v140 + 60), v39);
        }

        else
        {
          v135 = *(v47 + 56);
          v136 = v47 + *(v140 + 60);
          v61 = v44;
          v88 = v47;
          v63 = v45;
          sub_1CEFA7FF0();
        }

        v103 = v141;
        sub_1CEF5DA48(v88, type metadata accessor for RopesResponseMetadata);
        v104 = 4;
LABEL_72:
        *v103 = v104;
LABEL_73:
        v137 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
        (*(v61 + 32))(&v103[*(v137 + 20)], v63, v60);
        type metadata accessor for TrustedCloudComputeError(0);
        return swift_storeEnumTagMultiPayload();
      case 0x24u:
        v85 = v39;
        if (*(v47 + 64))
        {
          v86 = v44;
          v87 = v47;
          (*(v44 + 16))(v17, v47 + *(v140 + 60), v39);
        }

        else
        {
          v131 = *(v47 + 56);
          v132 = v47 + *(v140 + 60);
          v86 = v44;
          v87 = v47;
          sub_1CEFA7FF0();
        }

        sub_1CEF5DA48(v87, type metadata accessor for RopesResponseMetadata);
        v133 = v141;
        *v141 = 7;
        v134 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v86 + 32))(&v133[*(v134 + 20)], v17, v85);
        goto LABEL_69;
      case 0x29u:
        v51 = v39;
        if (*(v47 + 64))
        {
          v52 = v44;
          v53 = v47;
          (*(v44 + 16))(v29, v47 + *(v140 + 60), v39);
        }

        else
        {
          v89 = *(v47 + 56);
          v90 = v47 + *(v140 + 60);
          v52 = v44;
          v53 = v47;
          sub_1CEFA7FF0();
        }

        v91 = v141;
        sub_1CEF5DA48(v53, type metadata accessor for RopesResponseMetadata);
        *v91 = 3;
        v92 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v52 + 32))(&v91[*(v92 + 20)], v29, v51);
LABEL_69:
        type metadata accessor for TrustedCloudComputeError(0);
        break;
      default:
        goto LABEL_3;
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t TrustedCloudComputeError.retryable.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrustedCloudComputeError(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v1, v9, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v12 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo;
      }

      else
      {
        v12 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo;
      }
    }

    else
    {
      v12 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo;
    }

    sub_1CEF5DA48(v9, v12);
    return 1;
  }

  else if (EnumCaseMultiPayload > 5)
  {
    sub_1CEF5DA48(v9, type metadata accessor for TrustedCloudComputeError);
    return 0;
  }

  else if ((EnumCaseMultiPayload - 3) >= 2)
  {
    sub_1CEF6AB6C(v9, v5, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
    v13 = v5[*(v2 + 20)];
    sub_1CEF5DA48(v5, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t TrustedCloudComputeError.description.getter()
{
  v0 = TrustedCloudComputeError.errorCaseString()();
  sub_1CEF69778(&v7._countAndFlagsBits);
  v1 = v9;
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  v2 = *(v1 + 24);
  v3 = sub_1CEFA8910();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_0(&v7._countAndFlagsBits);
  v7 = v0;
  MEMORY[0x1D38665A0](8250, 0xE200000000000000);
  MEMORY[0x1D38665A0](v3, v5);

  return v7._countAndFlagsBits;
}

unint64_t TrustedCloudComputeError.RateLimitInfo.message.getter()
{
  if (!*(v0 + 56))
  {
    return 0xD00000000000003ALL;
  }

  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD000000000000017, 0x80000001CEFB5470);
  v1 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v1);

  MEMORY[0x1D38665A0](47, 0xE100000000000000);
  v2 = *(v0 + 64);
  sub_1CEFA8510();
  MEMORY[0x1D38665A0](0xD00000000000001ALL, 0x80000001CEFB5490);
  return 0;
}

unint64_t TrustedCloudComputeError.AvailabilityInfo.message.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000018;
    v6 = 0xD00000000000001ALL;
    if (v1 != 6)
    {
      v5 = 0xD00000000000001ALL;
    }

    if (v1 != 4)
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x7562207365646F6ELL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000018;
    }

    v3 = 0xD000000000000010;
    if (*v0)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t TrustedCloudComputeError.TimeoutErrorInfo.message.getter()
{
  v1 = 0xD000000000000022;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  v4 = 0xD000000000000015;
  if (v2 == 3)
  {
    v4 = 0xD000000000000022;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.message.getter()
{
  if (*v0)
  {
    result = 0x2064696C61766E69;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

unint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.message.getter()
{
  v1 = *v0;
  v2 = 0x726F687475616E75;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000011;
  if (*v0)
  {
    v3 = 0xD000000000000021;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CEF6F958()
{
  v0 = TrustedCloudComputeError.errorCaseString()();
  sub_1CEF69778(&v7._countAndFlagsBits);
  v1 = v9;
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  v2 = *(v1 + 24);
  v3 = sub_1CEFA8910();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_0(&v7._countAndFlagsBits);
  v7 = v0;
  MEMORY[0x1D38665A0](8250, 0xE200000000000000);
  MEMORY[0x1D38665A0](v3, v5);

  return v7._countAndFlagsBits;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.description.getter()
{
  v1 = sub_1CEFA7FD0();
  v89 = *(v1 - 8);
  v90 = v1;
  v2 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v88 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CEFA7FB0();
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CEFA7F90();
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1CEFA7FA0();
  v75 = *(v77 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CEFA80A0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CEFA7FE0();
  v79 = *(v15 - 8);
  v80 = v15;
  v16 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0[1])
  {
    v21 = MEMORY[0x1E69E7CC0];
    if (!v0[3])
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v18 = *v0;
  strcpy(v93, "bundleID=");
  WORD1(v93[1]) = 0;
  HIDWORD(v93[1]) = -385875968;
  MEMORY[0x1D38665A0](v18);
  v19 = v93[0];
  v20 = v93[1];
  v21 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1CEF47FD8((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[16 * v23];
  *(v24 + 4) = v19;
  *(v24 + 5) = v20;
  if (v0[3])
  {
LABEL_7:
    v25 = v0[2];
    strcpy(v93, "featureID=");
    BYTE3(v93[1]) = 0;
    HIDWORD(v93[1]) = -369098752;
    MEMORY[0x1D38665A0](v25);
    v26 = v93[0];
    v27 = v93[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1CEF47FD8(0, *(v21 + 2) + 1, 1, v21);
    }

    v29 = *(v21 + 2);
    v28 = *(v21 + 3);
    if (v29 >= v28 >> 1)
    {
      v21 = sub_1CEF47FD8((v28 > 1), v29 + 1, 1, v21);
    }

    *(v21 + 2) = v29 + 1;
    v30 = &v21[16 * v29];
    *(v30 + 4) = v26;
    *(v30 + 5) = v27;
  }

LABEL_12:
  if (v0[5])
  {
    v31 = v0[4];
    strcpy(v93, "workloadType=");
    HIWORD(v93[1]) = -4864;
    MEMORY[0x1D38665A0](v31);
    v32 = v93[0];
    v33 = v93[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1CEF47FD8(0, *(v21 + 2) + 1, 1, v21);
    }

    v35 = *(v21 + 2);
    v34 = *(v21 + 3);
    if (v35 >= v34 >> 1)
    {
      v21 = sub_1CEF47FD8((v34 > 1), v35 + 1, 1, v21);
    }

    *(v21 + 2) = v35 + 1;
    v36 = &v21[16 * v35];
    *(v36 + 4) = v32;
    *(v36 + 5) = v33;
  }

  v91 = v0;
  v37 = v0[6];
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = (v37 + 56);
    do
    {
      v41 = *(v39 - 3);
      v40 = *(v39 - 2);
      v42 = *(v39 - 1);
      v43 = *v39;
      v93[0] = 0;
      v93[1] = 0xE000000000000000;

      sub_1CEFA8650();

      v93[0] = 0x64616F6C6B726F77;
      v93[1] = 0xEF283D6D61726150;
      MEMORY[0x1D38665A0](v41, v40);

      MEMORY[0x1D38665A0](44, 0xE100000000000000);
      MEMORY[0x1D38665A0](v42, v43);

      MEMORY[0x1D38665A0](41, 0xE100000000000000);
      v44 = v93[0];
      v45 = v93[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1CEF47FD8(0, *(v21 + 2) + 1, 1, v21);
      }

      v47 = *(v21 + 2);
      v46 = *(v21 + 3);
      if (v47 >= v46 >> 1)
      {
        v21 = sub_1CEF47FD8((v46 > 1), v47 + 1, 1, v21);
      }

      *(v21 + 2) = v47 + 1;
      v48 = &v21[16 * v47];
      *(v48 + 4) = v44;
      *(v48 + 5) = v45;
      v39 += 4;
      --v38;
    }

    while (v38);
  }

  v93[0] = 0x3D746E756F63;
  v93[1] = 0xE600000000000000;
  v49 = v91;
  v92 = v91[7];
  v50 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v50);

  v51 = v93[0];
  v52 = v93[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1CEF47FD8(0, *(v21 + 2) + 1, 1, v21);
  }

  v54 = *(v21 + 2);
  v53 = *(v21 + 3);
  if (v54 >= v53 >> 1)
  {
    v21 = sub_1CEF47FD8((v53 > 1), v54 + 1, 1, v21);
  }

  *(v21 + 2) = v54 + 1;
  v55 = &v21[16 * v54];
  *(v55 + 4) = v51;
  *(v55 + 5) = v52;
  v93[0] = 0;
  v93[1] = 0xE000000000000000;
  MEMORY[0x1D38665A0](0x6E6F697461727564, 0xE90000000000003DLL);
  v56 = v49[8];
  sub_1CEFA8510();
  v57 = v93[0];
  v58 = v93[1];
  v60 = *(v21 + 2);
  v59 = *(v21 + 3);
  if (v60 >= v59 >> 1)
  {
    v21 = sub_1CEF47FD8((v59 > 1), v60 + 1, 1, v21);
  }

  *(v21 + 2) = v60 + 1;
  v61 = &v21[16 * v60];
  *(v61 + 4) = v57;
  *(v61 + 5) = v58;
  v62 = *(type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0) + 40);
  sub_1CEFA8090();
  (*(v75 + 104))(v81, *MEMORY[0x1E6969360], v77);
  (*(v82 + 104))(v84, *MEMORY[0x1E6969358], v83);
  (*(v85 + 104))(v87, *MEMORY[0x1E6969370], v86);
  (*(v89 + 104))(v88, *MEMORY[0x1E6969380], v90);
  v63 = v76;
  sub_1CEFA7FC0();
  v64 = sub_1CEFA7F80();
  v66 = v65;
  (*(v79 + 8))(v63, v80);
  v93[0] = 0;
  v93[1] = 0xE000000000000000;
  sub_1CEFA8650();

  v93[0] = 0x7466417972746572;
  v93[1] = 0xEF3D657461447265;
  MEMORY[0x1D38665A0](v64, v66);

  v67 = v93[0];
  v68 = v93[1];
  v70 = *(v21 + 2);
  v69 = *(v21 + 3);
  if (v70 >= v69 >> 1)
  {
    v21 = sub_1CEF47FD8((v69 > 1), v70 + 1, 1, v21);
  }

  *(v21 + 2) = v70 + 1;
  v71 = &v21[16 * v70];
  *(v71 + 4) = v67;
  *(v71 + 5) = v68;
  v93[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v72 = sub_1CEFA82E0();

  return v72;
}

uint64_t TrustedCloudComputeError.AvailabilityInfo.description.getter()
{
  v1 = sub_1CEFA7FD0();
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1CEFA7FB0();
  v43 = *(v45 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1CEFA7F90();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CEFA7FA0();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CEFA80A0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v41 = sub_1CEFA7FE0();
  v16 = *(v41 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  v20 = *v0;
  if (v20 == 7)
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    MEMORY[0x1D38665A0](0x3D6E6F73616572, 0xE700000000000000);
    v50 = v20;
    sub_1CEFA86A0();
    v38 = v52;
    v39 = v51;
    v21 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1CEF47FD8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[16 * v23];
    v25 = v38;
    *(v24 + 4) = v39;
    *(v24 + 5) = v25;
  }

  v26 = *(type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0) + 20);
  sub_1CEFA8090();
  (*(v10 + 104))(v13, *MEMORY[0x1E6969360], v40);
  (*(v6 + 104))(v9, *MEMORY[0x1E6969358], v42);
  (*(v43 + 104))(v44, *MEMORY[0x1E6969370], v45);
  (*(v47 + 104))(v46, *MEMORY[0x1E6969380], v48);
  sub_1CEFA7FC0();
  v27 = sub_1CEFA7F80();
  v29 = v28;
  (*(v16 + 8))(v19, v41);
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1CEFA8650();

  v51 = 0x7466417972746572;
  v52 = 0xEF3D657461447265;
  MEMORY[0x1D38665A0](v27, v29);

  v30 = v51;
  v31 = v52;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1CEF47FD8(0, *(v21 + 2) + 1, 1, v21);
  }

  v33 = *(v21 + 2);
  v32 = *(v21 + 3);
  if (v33 >= v32 >> 1)
  {
    v21 = sub_1CEF47FD8((v32 > 1), v33 + 1, 1, v21);
  }

  *(v21 + 2) = v33 + 1;
  v34 = &v21[16 * v33];
  *(v34 + 4) = v30;
  *(v34 + 5) = v31;
  v51 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v35 = sub_1CEFA82E0();

  return v35;
}

uint64_t TrustedCloudComputeError.TimeoutErrorInfo.description.getter()
{
  v1 = sub_1CEFA7FD0();
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1CEFA7FB0();
  v43 = *(v45 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1CEFA7F90();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CEFA7FA0();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CEFA80A0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v41 = sub_1CEFA7FE0();
  v16 = *(v41 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  v20 = *v0;
  if (v20 == 4)
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    MEMORY[0x1D38665A0](0x3D6E6F73616572, 0xE700000000000000);
    v50 = v20;
    sub_1CEFA86A0();
    v38 = v52;
    v39 = v51;
    v21 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1CEF47FD8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[16 * v23];
    v25 = v38;
    *(v24 + 4) = v39;
    *(v24 + 5) = v25;
  }

  v26 = *(type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0) + 20);
  sub_1CEFA8090();
  (*(v10 + 104))(v13, *MEMORY[0x1E6969360], v40);
  (*(v6 + 104))(v9, *MEMORY[0x1E6969358], v42);
  (*(v43 + 104))(v44, *MEMORY[0x1E6969370], v45);
  (*(v47 + 104))(v46, *MEMORY[0x1E6969380], v48);
  sub_1CEFA7FC0();
  v27 = sub_1CEFA7F80();
  v29 = v28;
  (*(v16 + 8))(v19, v41);
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1CEFA8650();

  v51 = 0x7466417972746572;
  v52 = 0xEF3D657461447265;
  MEMORY[0x1D38665A0](v27, v29);

  v30 = v51;
  v31 = v52;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1CEF47FD8(0, *(v21 + 2) + 1, 1, v21);
  }

  v33 = *(v21 + 2);
  v32 = *(v21 + 3);
  if (v33 >= v32 >> 1)
  {
    v21 = sub_1CEF47FD8((v32 > 1), v33 + 1, 1, v21);
  }

  *(v21 + 2) = v33 + 1;
  v34 = &v21[16 * v33];
  *(v34 + 4) = v30;
  *(v34 + 5) = v31;
  v51 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v35 = sub_1CEFA82E0();

  return v35;
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.description.getter()
{
  if ((*v0 & 1) == 0)
  {
    MEMORY[0x1D38665A0](0x3D6E6F73616572, 0xE700000000000000);
    sub_1CEFA86A0();
    v1 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1CEF47FD8((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0;
    *(v4 + 5) = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v5 = sub_1CEFA82E0();

  return v5;
}

uint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.description.getter()
{
  if (*v0 != 4)
  {
    MEMORY[0x1D38665A0](0x3D6E6F73616572, 0xE700000000000000);
    sub_1CEFA86A0();
    v1 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1CEF47FD8((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0;
    *(v4 + 5) = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v5 = sub_1CEFA82E0();

  return v5;
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.description.getter()
{
  v1 = sub_1CEFA7FD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v106 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CEFA7FB0();
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CEFA7F90();
  v100 = *(v8 - 8);
  v101 = v8;
  v9 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1CEFA7FA0();
  v11 = *(v95 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v99 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CEFA80A0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v96 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CEFA7FE0();
  v97 = *(v17 - 8);
  v98 = v17;
  v18 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1CEFA8030();
  v92 = *(v94 - 8);
  v20 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v0;
  if (v23 == 47)
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v109[0] = 0;
    v109[1] = 0xE000000000000000;
    sub_1CEFA8650();
    MEMORY[0x1D38665A0](0x65736E6F70736572, 0xEE003D65646F632DLL);
    LOBYTE(v108) = v23;
    sub_1CEFA86A0();
    v25 = v109[0];
    v26 = v109[1];
    v24 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v28 = *(v24 + 2);
    v27 = *(v24 + 3);
    if (v28 >= v27 >> 1)
    {
      v24 = sub_1CEF47FD8((v27 > 1), v28 + 1, 1, v24);
    }

    *(v24 + 2) = v28 + 1;
    v29 = &v24[16 * v28];
    *(v29 + 4) = v25;
    *(v29 + 5) = v26;
  }

  v30 = v0[1];
  if (v30 != 17)
  {
    v109[0] = 0;
    v109[1] = 0xE000000000000000;
    MEMORY[0x1D38665A0](0x3D737574617473, 0xE700000000000000);
    LOBYTE(v108) = v30;
    sub_1CEFA86A0();
    v31 = v109[0];
    v32 = v109[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1CEF47FD8(0, *(v24 + 2) + 1, 1, v24);
    }

    v34 = *(v24 + 2);
    v33 = *(v24 + 3);
    if (v34 >= v33 >> 1)
    {
      v24 = sub_1CEF47FD8((v33 > 1), v34 + 1, 1, v24);
    }

    *(v24 + 2) = v34 + 1;
    v35 = &v24[16 * v34];
    *(v35 + 4) = v31;
    *(v35 + 5) = v32;
  }

  v36 = v0[16];
  v107 = v1;
  if (v36 != 255)
  {
    if (v36)
    {
      goto LABEL_20;
    }

    v37 = *(v0 + 1);
    v109[0] = 0;
    v109[1] = 0xE000000000000000;
    MEMORY[0x1D38665A0](0x6F632D726F727265, 0xEB000000003D6564);
    LOBYTE(v108) = v37;
    sub_1CEFA86A0();
    v39 = v109[0];
    v38 = v109[1];
    v40 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1CEF47FD8(0, *(v24 + 2) + 1, 1, v24);
    }

    v42 = *(v24 + 2);
    v41 = *(v24 + 3);
    if (v42 >= v41 >> 1)
    {
      v24 = sub_1CEF47FD8((v41 > 1), v42 + 1, 1, v24);
    }

    *(v24 + 2) = v42 + 1;
    v43 = &v24[16 * v42];
    *(v43 + 4) = v39;
    *(v43 + 5) = v38;
    v44 = v0[16];
    v2 = v40;
    if (v44 != 255 && (v44 & 1) != 0)
    {
LABEL_20:
      v45 = *(v0 + 1);
      strcpy(v109, "error-code=");
      HIDWORD(v109[1]) = -352321536;
      v108 = v45;
      v46 = sub_1CEFA8910();
      MEMORY[0x1D38665A0](v46);

      v47 = v109[0];
      v48 = v109[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1CEF47FD8(0, *(v24 + 2) + 1, 1, v24);
      }

      v50 = *(v24 + 2);
      v49 = *(v24 + 3);
      if (v50 >= v49 >> 1)
      {
        v24 = sub_1CEF47FD8((v49 > 1), v50 + 1, 1, v24);
      }

      *(v24 + 2) = v50 + 1;
      v51 = &v24[16 * v50];
      *(v51 + 4) = v47;
      *(v51 + 5) = v48;
    }
  }

  if (*(v0 + 4))
  {
    v52 = *(v0 + 3);
    strcpy(v109, "description=");
    BYTE5(v109[1]) = 0;
    HIWORD(v109[1]) = -5120;
    MEMORY[0x1D38665A0](v52);
    v53 = v109[0];
    v54 = v109[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1CEF47FD8(0, *(v24 + 2) + 1, 1, v24);
    }

    v56 = *(v24 + 2);
    v55 = *(v24 + 3);
    if (v56 >= v55 >> 1)
    {
      v24 = sub_1CEF47FD8((v55 > 1), v56 + 1, 1, v24);
    }

    *(v24 + 2) = v56 + 1;
    v57 = &v24[16 * v56];
    *(v57 + 4) = v53;
    *(v57 + 5) = v54;
  }

  if (*(v0 + 6))
  {
    v58 = *(v0 + 5);
    v109[0] = 0x3D6573756163;
    v109[1] = 0xE600000000000000;
    MEMORY[0x1D38665A0](v58);
    v59 = v109[0];
    v60 = v109[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1CEF47FD8(0, *(v24 + 2) + 1, 1, v24);
    }

    v62 = *(v24 + 2);
    v61 = *(v24 + 3);
    if (v62 >= v61 >> 1)
    {
      v24 = sub_1CEF47FD8((v61 > 1), v62 + 1, 1, v24);
    }

    *(v24 + 2) = v62 + 1;
    v63 = &v24[16 * v62];
    *(v63 + 4) = v59;
    *(v63 + 5) = v60;
  }

  v64 = *(v0 + 7);
  v65 = v0[64];
  if (v65 != 1 || (v66 = v0[16], v66 != 255) && (v66 & 1) == 0 && (v74 = *(v0 + 1), v74 <= 0x2Cu) && ((1 << v74) & 0x1E181C260000) != 0 || (v67 = v0[1], v67 <= 0xE) && ((1 << v67) & 0x4110) != 0 || (v68 = *v0, v68 <= 0x2C) && ((1 << v68) & 0x108002000000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1CEF47FD8(0, *(v24 + 2) + 1, 1, v24);
    }

    v75 = v11;
    v77 = *(v24 + 2);
    v76 = *(v24 + 3);
    v78 = v2;
    if (v77 >= v76 >> 1)
    {
      v24 = sub_1CEF47FD8((v76 > 1), v77 + 1, 1, v24);
    }

    *(v24 + 2) = v77 + 1;
    v79 = &v24[16 * v77];
    strcpy(v79 + 32, "retryable=yes");
    *(v79 + 23) = -4864;
    v80 = *(type metadata accessor for RopesResponseMetadata() + 60);
    if (v65)
    {
      v81 = v22;
      v82 = v92;
      v83 = v94;
      (*(v92 + 16))(v81, &v0[v80], v94);
    }

    else
    {
      sub_1CEFA7FF0();
      v83 = v94;
      v81 = v22;
      v82 = v92;
    }

    sub_1CEFA8090();
    (*(v75 + 104))(v99, *MEMORY[0x1E6969360], v95);
    (*(v100 + 104))(v102, *MEMORY[0x1E6969358], v101);
    (*(v103 + 104))(v105, *MEMORY[0x1E6969370], v104);
    (*(v78 + 104))(v106, *MEMORY[0x1E6969380], v107);
    v84 = v93;
    sub_1CEFA7FC0();
    v85 = sub_1CEFA7F80();
    v87 = v86;
    (*(v97 + 8))(v84, v98);
    (*(v82 + 8))(v81, v83);
    v109[0] = 0;
    v109[1] = 0xE000000000000000;
    sub_1CEFA8650();

    v109[0] = 0x7466417972746572;
    v109[1] = 0xEF3D657461447265;
    MEMORY[0x1D38665A0](v85, v87);

    v73 = v109[0];
    v69 = v109[1];
    v71 = *(v24 + 2);
    v88 = *(v24 + 3);
    v72 = v71 + 1;
    if (v71 >= v88 >> 1)
    {
      v24 = sub_1CEF47FD8((v88 > 1), v71 + 1, 1, v24);
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1CEF47FD8(0, *(v24 + 2) + 1, 1, v24);
    }

    v69 = 0xEC0000006F6E3D65;
    v71 = *(v24 + 2);
    v70 = *(v24 + 3);
    v72 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      v24 = sub_1CEF47FD8((v70 > 1), v71 + 1, 1, v24);
    }

    v73 = 0x6C62617972746572;
  }

  *(v24 + 2) = v72;
  v89 = &v24[16 * v71];
  *(v89 + 4) = v73;
  *(v89 + 5) = v69;
  v109[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v90 = sub_1CEFA82E0();

  return v90;
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.description.getter()
{
  if (*(v0 + 16) != 34)
  {
    MEMORY[0x1D38665A0](0x3D6E6F73616572, 0xE700000000000000);
    sub_1CEFA86A0();
    v1 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1CEF47FD8((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0;
    *(v4 + 5) = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v5 = sub_1CEFA82E0();

  return v5;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CEFA8650();

  MEMORY[0x1D38665A0](v1, v2);
  MEMORY[0x1D38665A0](0x3D65646F6320, 0xE600000000000000);
  v4 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v4);

  return 0x3D6E69616D6F64;
}

unint64_t sub_1CEF71F08()
{
  result = qword_1EC4A9C98;
  if (!qword_1EC4A9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C98);
  }

  return result;
}

unint64_t sub_1CEF71F60()
{
  result = qword_1EC4A9CA0;
  if (!qword_1EC4A9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CA0);
  }

  return result;
}

unint64_t sub_1CEF71FB8()
{
  result = qword_1EC4A9CA8;
  if (!qword_1EC4A9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CA8);
  }

  return result;
}

unint64_t sub_1CEF72010()
{
  result = qword_1EC4A9CB0;
  if (!qword_1EC4A9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CB0);
  }

  return result;
}

unint64_t sub_1CEF72068()
{
  result = qword_1EC4A9CB8;
  if (!qword_1EC4A9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CB8);
  }

  return result;
}

void sub_1CEF72194()
{
  sub_1CEF722F0(319, &qword_1EDE38350, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
  if (v0 <= 0x3F)
  {
    sub_1CEF722F0(319, qword_1EDE382A0, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
    if (v1 <= 0x3F)
    {
      sub_1CEF722F0(319, &qword_1EDE383F8, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      if (v2 <= 0x3F)
      {
        sub_1CEF7233C();
        if (v3 <= 0x3F)
        {
          sub_1CEF7236C();
          if (v4 <= 0x3F)
          {
            sub_1CEF722F0(319, &qword_1EDE384A0, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
            if (v5 <= 0x3F)
            {
              sub_1CEF7239C();
              if (v6 <= 0x3F)
              {
                sub_1CEF723CC();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CEF722F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_1CEF7233C()
{
  result = qword_1EDE384A8;
  if (!qword_1EDE384A8)
  {
    result = &type metadata for TrustedCloudComputeError.InvalidRequestErrorInfo;
    atomic_store(&type metadata for TrustedCloudComputeError.InvalidRequestErrorInfo, &qword_1EDE384A8);
  }

  return result;
}

ValueMetadata *sub_1CEF7236C()
{
  result = qword_1EDE384B0;
  if (!qword_1EDE384B0)
  {
    result = &type metadata for TrustedCloudComputeError.UnauthorizedErrorInfo;
    atomic_store(&type metadata for TrustedCloudComputeError.UnauthorizedErrorInfo, &qword_1EDE384B0);
  }

  return result;
}

ValueMetadata *sub_1CEF7239C()
{
  result = qword_1EDE38358[0];
  if (!qword_1EDE38358[0])
  {
    result = &type metadata for TrustedCloudComputeError.InternalErrorInfo;
    atomic_store(&type metadata for TrustedCloudComputeError.InternalErrorInfo, qword_1EDE38358);
  }

  return result;
}

ValueMetadata *sub_1CEF723CC()
{
  result = qword_1EDE38400[0];
  if (!qword_1EDE38400[0])
  {
    result = &type metadata for TrustedCloudComputeError.NetworkErrorInfo;
    atomic_store(&type metadata for TrustedCloudComputeError.NetworkErrorInfo, qword_1EDE38400);
  }

  return result;
}

void sub_1CEF72424()
{
  sub_1CEF72660(319, qword_1EDE385E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1CEF72660(319, &qword_1EDE38100, &type metadata for TrustedCloudComputeError.RateLimitInfo.WorkloadTag, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1CEFA8030();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CEF725C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1CEF72660(319, a4, a5, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    sub_1CEFA8030();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CEF72660(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for TrustedCloudComputeError.InvalidRequestErrorInfo(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for TrustedCloudComputeError.InvalidRequestErrorInfo(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrustedCloudComputeError.UnauthorizedErrorInfo(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

void sub_1CEF728CC()
{
  type metadata accessor for RopesResponseMetadata();
  if (v0 <= 0x3F)
  {
    sub_1CEF53598();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CEF72A38(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1CEF72AC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CEF72F5C()
{
  result = qword_1EC4A9CE0;
  if (!qword_1EC4A9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CE0);
  }

  return result;
}

unint64_t sub_1CEF72FB4()
{
  result = qword_1EC4A9CE8;
  if (!qword_1EC4A9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CE8);
  }

  return result;
}

unint64_t sub_1CEF7300C()
{
  result = qword_1EC4A9CF0;
  if (!qword_1EC4A9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CF0);
  }

  return result;
}

unint64_t sub_1CEF73064()
{
  result = qword_1EC4A9CF8;
  if (!qword_1EC4A9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CF8);
  }

  return result;
}

unint64_t sub_1CEF730BC()
{
  result = qword_1EC4A9D00;
  if (!qword_1EC4A9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D00);
  }

  return result;
}

unint64_t sub_1CEF73114()
{
  result = qword_1EC4A9D08;
  if (!qword_1EC4A9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D08);
  }

  return result;
}

unint64_t sub_1CEF7316C()
{
  result = qword_1EC4A9D10;
  if (!qword_1EC4A9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D10);
  }

  return result;
}

unint64_t sub_1CEF731C4()
{
  result = qword_1EC4A9D18;
  if (!qword_1EC4A9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D18);
  }

  return result;
}

unint64_t sub_1CEF7321C()
{
  result = qword_1EC4A9D20;
  if (!qword_1EC4A9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D20);
  }

  return result;
}

unint64_t sub_1CEF73274()
{
  result = qword_1EC4A9D28;
  if (!qword_1EC4A9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D28);
  }

  return result;
}

unint64_t sub_1CEF732CC()
{
  result = qword_1EC4A9D30;
  if (!qword_1EC4A9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D30);
  }

  return result;
}

unint64_t sub_1CEF73324()
{
  result = qword_1EC4A9D38;
  if (!qword_1EC4A9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D38);
  }

  return result;
}

unint64_t sub_1CEF7337C()
{
  result = qword_1EC4A9D40;
  if (!qword_1EC4A9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D40);
  }

  return result;
}

unint64_t sub_1CEF733D4()
{
  result = qword_1EC4A9D48;
  if (!qword_1EC4A9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D48);
  }

  return result;
}

unint64_t sub_1CEF7342C()
{
  result = qword_1EC4A9D50;
  if (!qword_1EC4A9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D50);
  }

  return result;
}

unint64_t sub_1CEF73484()
{
  result = qword_1EC4A9D58;
  if (!qword_1EC4A9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D58);
  }

  return result;
}

unint64_t sub_1CEF734DC()
{
  result = qword_1EC4A9D60;
  if (!qword_1EC4A9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D60);
  }

  return result;
}

unint64_t sub_1CEF73534()
{
  result = qword_1EC4A9D68;
  if (!qword_1EC4A9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D68);
  }

  return result;
}

unint64_t sub_1CEF7358C()
{
  result = qword_1EC4A9D70;
  if (!qword_1EC4A9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D70);
  }

  return result;
}

unint64_t sub_1CEF735E4()
{
  result = qword_1EC4A9D78;
  if (!qword_1EC4A9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D78);
  }

  return result;
}

unint64_t sub_1CEF7363C()
{
  result = qword_1EC4A9D80;
  if (!qword_1EC4A9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D80);
  }

  return result;
}

unint64_t sub_1CEF73694()
{
  result = qword_1EC4A9D88;
  if (!qword_1EC4A9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D88);
  }

  return result;
}

unint64_t sub_1CEF736EC()
{
  result = qword_1EC4A9D90;
  if (!qword_1EC4A9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D90);
  }

  return result;
}

unint64_t sub_1CEF73744()
{
  result = qword_1EC4A9D98;
  if (!qword_1EC4A9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D98);
  }

  return result;
}

unint64_t sub_1CEF7379C()
{
  result = qword_1EC4A9DA0;
  if (!qword_1EC4A9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DA0);
  }

  return result;
}

unint64_t sub_1CEF737F4()
{
  result = qword_1EC4A9DA8;
  if (!qword_1EC4A9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DA8);
  }

  return result;
}

unint64_t sub_1CEF7384C()
{
  result = qword_1EC4A9DB0;
  if (!qword_1EC4A9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DB0);
  }

  return result;
}

unint64_t sub_1CEF738A4()
{
  result = qword_1EC4A9DB8;
  if (!qword_1EC4A9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DB8);
  }

  return result;
}

unint64_t sub_1CEF738FC()
{
  result = qword_1EC4A9DC0;
  if (!qword_1EC4A9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DC0);
  }

  return result;
}

unint64_t sub_1CEF73954()
{
  result = qword_1EC4A9DC8;
  if (!qword_1EC4A9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DC8);
  }

  return result;
}

unint64_t sub_1CEF739AC()
{
  result = qword_1EC4A9DD0;
  if (!qword_1EC4A9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DD0);
  }

  return result;
}

unint64_t sub_1CEF73A04()
{
  result = qword_1EC4A9DD8;
  if (!qword_1EC4A9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DD8);
  }

  return result;
}

unint64_t sub_1CEF73A5C()
{
  result = qword_1EC4A9DE0;
  if (!qword_1EC4A9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DE0);
  }

  return result;
}

unint64_t sub_1CEF73AB4()
{
  result = qword_1EC4A9DE8;
  if (!qword_1EC4A9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DE8);
  }

  return result;
}

unint64_t sub_1CEF73B0C()
{
  result = qword_1EC4A9DF0;
  if (!qword_1EC4A9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DF0);
  }

  return result;
}

unint64_t sub_1CEF73B64()
{
  result = qword_1EC4A9DF8;
  if (!qword_1EC4A9DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DF8);
  }

  return result;
}

unint64_t sub_1CEF73BBC()
{
  result = qword_1EC4A9E00;
  if (!qword_1EC4A9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E00);
  }

  return result;
}

unint64_t sub_1CEF73C14()
{
  result = qword_1EC4A9E08;
  if (!qword_1EC4A9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E08);
  }

  return result;
}

unint64_t sub_1CEF73C6C()
{
  result = qword_1EC4A9E10;
  if (!qword_1EC4A9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E10);
  }

  return result;
}

unint64_t sub_1CEF73CC4()
{
  result = qword_1EC4A9E18;
  if (!qword_1EC4A9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E18);
  }

  return result;
}

unint64_t sub_1CEF73D1C()
{
  result = qword_1EC4A9E20;
  if (!qword_1EC4A9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E20);
  }

  return result;
}

unint64_t sub_1CEF73D74()
{
  result = qword_1EC4A9E28;
  if (!qword_1EC4A9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E28);
  }

  return result;
}

unint64_t sub_1CEF73DCC()
{
  result = qword_1EC4A9E30;
  if (!qword_1EC4A9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E30);
  }

  return result;
}

unint64_t sub_1CEF73E24()
{
  result = qword_1EC4A9E38;
  if (!qword_1EC4A9E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E38);
  }

  return result;
}

unint64_t sub_1CEF73E7C()
{
  result = qword_1EC4A9E40;
  if (!qword_1EC4A9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E40);
  }

  return result;
}

unint64_t sub_1CEF73ED4()
{
  result = qword_1EC4A9E48;
  if (!qword_1EC4A9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E48);
  }

  return result;
}

unint64_t sub_1CEF73F2C()
{
  result = qword_1EC4A9E50;
  if (!qword_1EC4A9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E50);
  }

  return result;
}

unint64_t sub_1CEF73F84()
{
  result = qword_1EC4A9E58;
  if (!qword_1EC4A9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E58);
  }

  return result;
}

unint64_t sub_1CEF73FDC()
{
  result = qword_1EC4A9E60;
  if (!qword_1EC4A9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E60);
  }

  return result;
}

unint64_t sub_1CEF74034()
{
  result = qword_1EC4A9E68;
  if (!qword_1EC4A9E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E68);
  }

  return result;
}

unint64_t sub_1CEF7408C()
{
  result = qword_1EC4A9E70;
  if (!qword_1EC4A9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E70);
  }

  return result;
}

unint64_t sub_1CEF740E4()
{
  result = qword_1EC4A9E78;
  if (!qword_1EC4A9E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E78);
  }

  return result;
}

unint64_t sub_1CEF7413C()
{
  result = qword_1EC4A9E80;
  if (!qword_1EC4A9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E80);
  }

  return result;
}

unint64_t sub_1CEF74194()
{
  result = qword_1EC4A9E88;
  if (!qword_1EC4A9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E88);
  }

  return result;
}

unint64_t sub_1CEF741EC()
{
  result = qword_1EC4A9E90;
  if (!qword_1EC4A9E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E90);
  }

  return result;
}

unint64_t sub_1CEF74244()
{
  result = qword_1EC4A9E98;
  if (!qword_1EC4A9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E98);
  }

  return result;
}

unint64_t sub_1CEF7429C()
{
  result = qword_1EC4A9EA0;
  if (!qword_1EC4A9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EA0);
  }

  return result;
}

unint64_t sub_1CEF742F4()
{
  result = qword_1EC4A9EA8;
  if (!qword_1EC4A9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EA8);
  }

  return result;
}

unint64_t sub_1CEF7434C()
{
  result = qword_1EC4A9EB0;
  if (!qword_1EC4A9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EB0);
  }

  return result;
}

unint64_t sub_1CEF743A4()
{
  result = qword_1EC4A9EB8;
  if (!qword_1EC4A9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EB8);
  }

  return result;
}

unint64_t sub_1CEF743FC()
{
  result = qword_1EC4A9EC0;
  if (!qword_1EC4A9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EC0);
  }

  return result;
}

unint64_t sub_1CEF74454()
{
  result = qword_1EC4A9EC8;
  if (!qword_1EC4A9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EC8);
  }

  return result;
}

unint64_t sub_1CEF744AC()
{
  result = qword_1EC4A9ED0;
  if (!qword_1EC4A9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9ED0);
  }

  return result;
}

unint64_t sub_1CEF74504()
{
  result = qword_1EC4A9ED8;
  if (!qword_1EC4A9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9ED8);
  }

  return result;
}

unint64_t sub_1CEF7455C()
{
  result = qword_1EC4A9EE0;
  if (!qword_1EC4A9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EE0);
  }

  return result;
}

unint64_t sub_1CEF745B4()
{
  result = qword_1EC4A9EE8;
  if (!qword_1EC4A9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EE8);
  }

  return result;
}

unint64_t sub_1CEF7460C()
{
  result = qword_1EC4A9EF0;
  if (!qword_1EC4A9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EF0);
  }

  return result;
}

unint64_t sub_1CEF74664()
{
  result = qword_1EC4A9EF8;
  if (!qword_1EC4A9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EF8);
  }

  return result;
}

unint64_t sub_1CEF746BC()
{
  result = qword_1EC4A9F00;
  if (!qword_1EC4A9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F00);
  }

  return result;
}

unint64_t sub_1CEF74714()
{
  result = qword_1EC4A9F08;
  if (!qword_1EC4A9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F08);
  }

  return result;
}

unint64_t sub_1CEF7476C()
{
  result = qword_1EC4A9F10;
  if (!qword_1EC4A9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F10);
  }

  return result;
}

unint64_t sub_1CEF747C4()
{
  result = qword_1EC4A9F18;
  if (!qword_1EC4A9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F18);
  }

  return result;
}

unint64_t sub_1CEF7481C()
{
  result = qword_1EC4A9F20;
  if (!qword_1EC4A9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F20);
  }

  return result;
}

unint64_t sub_1CEF74874()
{
  result = qword_1EC4A9F28;
  if (!qword_1EC4A9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F28);
  }

  return result;
}

unint64_t sub_1CEF748CC()
{
  result = qword_1EC4A9F30;
  if (!qword_1EC4A9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F30);
  }

  return result;
}

unint64_t sub_1CEF74924()
{
  result = qword_1EC4A9F38;
  if (!qword_1EC4A9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F38);
  }

  return result;
}

unint64_t sub_1CEF7497C()
{
  result = qword_1EC4A9F40;
  if (!qword_1EC4A9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F40);
  }

  return result;
}