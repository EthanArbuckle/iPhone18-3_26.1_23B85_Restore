uint64_t SEStorageManagementSheet.ProposedCredentialType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265348, &qword_1C7C94B78);
  v63 = *(v66 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v54[-v4];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265350, &qword_1C7C94B80);
  v62 = *(v60 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v54[-v6];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265358, &qword_1C7C94B88);
  v61 = *(v58 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265360, &qword_1C7C94B90);
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265368, &unk_1C7C94B98);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54[-v17];
  v20 = a1[3];
  v19 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1C7C62E04();
  v21 = v68;
  sub_1C7C7DB94();
  if (!v21)
  {
    v22 = v13;
    v56 = v10;
    v23 = v9;
    v24 = v64;
    v57 = 0;
    v26 = v65;
    v25 = v66;
    v68 = v15;
    v27 = v67;
    v28 = sub_1C7C7D9D4();
    v29 = (2 * *(v28 + 16)) | 1;
    v73 = v28;
    v74 = v28 + 32;
    v75 = 0;
    v76 = v29;
    v30 = sub_1C7BEAAD8();
    if (v30 == 4 || v75 != v76 >> 1)
    {
      v38 = sub_1C7C7D7C4();
      swift_allocError();
      v40 = v39;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
      *v40 = &type metadata for SEStorageManagementSheet.ProposedCredentialType;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
    }

    else
    {
      v55 = v30;
      if (v30 > 1u)
      {
        v37 = v27;
        if (v30 == 2)
        {
          LOBYTE(v69) = 2;
          sub_1C7C62F00();
          v43 = v24;
          v44 = v57;
          sub_1C7C7D944();
          v45 = v68;
          if (!v44)
          {
            sub_1C7C630A4();
            v46 = v60;
            sub_1C7C7D9B4();
            (*(v62 + 8))(v43, v46);
            (*(v45 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v34 = v69;
            v35 = v70;
            v33 = v71;
            v36 = v72;
            goto LABEL_19;
          }
        }

        else
        {
          LOBYTE(v69) = 3;
          sub_1C7C62E58();
          v50 = v57;
          sub_1C7C7D944();
          v51 = v68;
          if (!v50)
          {
            sub_1C7C63050();
            sub_1C7C7D9B4();
            (*(v63 + 8))(v26, v25);
            (*(v51 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v34 = v69;
            v35 = v70;
            v36 = 0uLL;
            v33 = v71;
            goto LABEL_19;
          }
        }
      }

      else if (v30)
      {
        LOBYTE(v69) = 1;
        sub_1C7C62FA8();
        v47 = v23;
        v48 = v57;
        sub_1C7C7D944();
        if (!v48)
        {
          v49 = v58;
          v34 = sub_1C7C7D984();
          v53 = v52;
          (*(v61 + 8))(v47, v49);
          (*(v68 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v33 = 0;
          v36 = 0uLL;
          v35 = v53;
          v37 = v27;
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v69) = 0;
        sub_1C7C62FFC();
        v31 = v57;
        sub_1C7C7D944();
        if (!v31)
        {
          sub_1C7BE5D18();
          v32 = v56;
          sub_1C7C7D9B4();
          (*(v59 + 8))(v22, v32);
          (*(v68 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v33 = 0;
          v34 = v69;
          v35 = 0uLL;
          v36 = 0uLL;
          v37 = v27;
LABEL_19:
          *v37 = v34;
          *(v37 + 8) = v35;
          *(v37 + 24) = v33;
          *(v37 + 32) = v36;
          *(v37 + 48) = v55;
          return __swift_destroy_boxed_opaque_existential_0Tm(v77);
        }
      }
    }

    (*(v68 + 8))(v18, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v77);
}

uint64_t sub_1C7C60BF8()
{
  if (*v0)
  {
    result = 0x6157646572696170;
  }

  else
  {
    result = 0x44746E6572727563;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C60C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44746E6572727563 && a2 == 0xED00006563697665;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6157646572696170 && a2 == 0xEB00000000686374)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C60D30(uint64_t a1)
{
  v2 = sub_1C7C630F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C60D6C(uint64_t a1)
{
  v2 = sub_1C7C630F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C60DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746F687370616E73 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C60E48(uint64_t a1)
{
  v2 = sub_1C7C631A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C60E84(uint64_t a1)
{
  v2 = sub_1C7C631A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C60EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001C7C9FC80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1C7C60F70(uint64_t a1)
{
  v2 = sub_1C7C6314C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C60FAC(uint64_t a1)
{
  v2 = sub_1C7C6314C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SEStorageManagementSheet.ProvisioningDeviceConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265380, &qword_1C7C94BA8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265388, &qword_1C7C94BB0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265390, &qword_1C7C94BB8);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v13 = &v22 - v12;
  v14 = *v1;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C630F8();
  sub_1C7C7DBA4();
  if (v14 < 0)
  {
    v18 = v14 & 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v27) = 1;
    sub_1C7C6314C();
    v19 = v22;
    v20 = v26;
    sub_1C7C7D9E4();
    v27 = v18;
    type metadata accessor for SESnapshot();
    sub_1C7C631F4(&qword_1EC2649D8);
    v21 = v24;
    sub_1C7C7DA44();
    (*(v23 + 8))(v19, v21);
    return (*(v10 + 8))(v13, v20);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_1C7C631A0();
    v16 = v26;
    sub_1C7C7D9E4();
    v27 = v14;
    type metadata accessor for SESnapshot();
    sub_1C7C631F4(&qword_1EC2649D8);
    sub_1C7C7DA44();
    (*(v25 + 8))(v9, v6);
    return (*(v10 + 8))(v13, v16);
  }
}

uint64_t SEStorageManagementSheet.ProvisioningDeviceConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2653B0, &qword_1C7C94BC0);
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2653B8, &qword_1C7C94BC8);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2653C0, &qword_1C7C94BD0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1C7C630F8();
  v19 = v37;
  sub_1C7C7DB94();
  if (!v19)
  {
    v20 = v36;
    v37 = v13;
    v21 = sub_1C7C7D9D4();
    v22 = (2 * *(v21 + 16)) | 1;
    v39 = v21;
    v40 = v21 + 32;
    v41 = 0;
    v42 = v22;
    v23 = sub_1C7BEAACC();
    if (v23 == 2 || v41 != v42 >> 1)
    {
      v25 = sub_1C7C7D7C4();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
      *v27 = &type metadata for SEStorageManagementSheet.ProvisioningDeviceConfiguration;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v37 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23)
      {
        LOBYTE(v43) = 1;
        sub_1C7C6314C();
        sub_1C7C7D944();
        v24 = v37;
        type metadata accessor for SESnapshot();
        sub_1C7C631F4(&qword_1EC264A70);
        v31 = v34;
        sub_1C7C7D9B4();
        (*(v35 + 8))(v7, v31);
        (*(v24 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v32 = v43 | 0x8000000000000000;
      }

      else
      {
        LOBYTE(v43) = 0;
        sub_1C7C631A0();
        sub_1C7C7D944();
        v30 = v37;
        type metadata accessor for SESnapshot();
        sub_1C7C631F4(&qword_1EC264A70);
        sub_1C7C7D9B4();
        (*(v33 + 8))(v11, v8);
        (*(v30 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v32 = v43;
      }

      *v20 = v32;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v38);
}

unint64_t sub_1C7C61920()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C61960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001C7C9FCA0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C7C9FCC0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C61A44(uint64_t a1)
{
  v2 = sub_1C7C63238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C61A80(uint64_t a1)
{
  v2 = sub_1C7C63238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C61ABC(uint64_t a1)
{
  v2 = sub_1C7C6328C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C61AF8(uint64_t a1)
{
  v2 = sub_1C7C6328C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C61B34(uint64_t a1)
{
  v2 = sub_1C7C632E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C61B70(uint64_t a1)
{
  v2 = sub_1C7C632E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SEStorageManagementSheet.DisplayConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2653C8, &qword_1C7C94BD8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2653D0, &qword_1C7C94BE0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2653D8, &qword_1C7C94BE8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C63238();
  sub_1C7C7DBA4();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1C7C6328C();
    v18 = v22;
    sub_1C7C7D9E4();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1C7C632E0();
    sub_1C7C7D9E4();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t SEStorageManagementSheet.DisplayConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

uint64_t SEStorageManagementSheet.DisplayConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2653F8, &qword_1C7C94BF0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265400, &qword_1C7C94BF8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265408, &qword_1C7C94C00);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C63238();
  v16 = v36;
  sub_1C7C7DB94();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1C7C7D9D4();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1C7BEAACC();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1C7C7D7C4();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
      *v26 = &type metadata for SEStorageManagementSheet.DisplayConfiguration;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1C7C6328C();
        sub_1C7C7D944();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1C7C632E0();
        sub_1C7C7D944();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_1C7C623BC()
{
  type metadata accessor for SEStorageManagementXPCClient();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EC2652D8 = v0;
  return result;
}

uint64_t SEStorageManagementSheet.ProposedCredentialType.discriminant.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 48);
  if (v2 < 2)
  {
    goto LABEL_4;
  }

  if (v2 == 3)
  {
    LOBYTE(v2) = 2;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = sub_1C7C7D8D4();
  __break(1u);
  return result;
}

uint64_t _s9SEService24SEStorageManagementSheetV13addMockPasses8fromPathySS_tYaAC9ErrorCodeOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for SEStorageManagementInternal.XPCRequest();
  v3[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C6255C, 0, 0);
}

uint64_t sub_1C7C6255C()
{
  v26 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_1C7C7D2E4();
  v5 = [v3 contentsAtPath_];

  if (v5)
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = sub_1C7C7D054();
    v10 = v9;

    *(v0 + 80) = v8;
    *(v0 + 88) = v10;
    sub_1C7C7D0F4();
    v11 = v6 + *(v7 + 20);
    *v11 = v8;
    *(v11 + 8) = v10;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 64;
    sub_1C7BED654(v8, v10);
    if (qword_1EC262218 != -1)
    {
      swift_once();
    }

    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *v12 = v0;
    v12[1] = sub_1C7C6287C;
    v13 = *(v0 + 72);

    return sub_1C7C187A0(v0 + 16, v13);
  }

  else
  {
    if (qword_1EC262228 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 48);
    v16 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v16, qword_1EC288368);

    v17 = sub_1C7C7D194();
    v18 = sub_1C7C7D584();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 40);
      v19 = *(v0 + 48);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1C7BE42F8(v20, v19, &v25);
      _os_log_impl(&dword_1C7B9A000, v17, v18, "Mock Pass file not found at %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x1CCA6C990](v22, -1, -1);
      MEMORY[0x1CCA6C990](v21, -1, -1);
    }

    **(v0 + 56) = 1;
    *(v0 + 33) = 1;
    sub_1C7C62D5C();
    swift_willThrowTypedImpl();
    v23 = *(v0 + 72);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1C7C6287C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1C7C62B40;
  }

  else
  {
    v3 = sub_1C7C62990;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C7C62990()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (!(v3 >> 6))
  {
    if (*(v0 + 32) > 1u)
    {
      if (v3 != 2)
      {
        v8 = 0x70605040203uLL >> (8 * v1);
        goto LABEL_16;
      }

      v7 = 2;
    }

    else
    {
      if (*(v0 + 32))
      {
        LOBYTE(v8) = 1;
        sub_1C7C193D4(v1, v2, 1u);
        goto LABEL_16;
      }

      v7 = 0;
    }

    sub_1C7C193D4(v1, v2, v7);
    LOBYTE(v8) = 1;
LABEL_16:
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);
    **(v0 + 56) = v8;
    *(v0 + 37) = v8;
    sub_1C7C62D5C();
    goto LABEL_17;
  }

  if (v3 >> 6 == 1)
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);
    **(v0 + 56) = 1;
    *(v0 + 36) = 1;
    sub_1C7C62D5C();
  }

  else
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);
    if (v2 | v1 || v3 != 128)
    {
      sub_1C7BF2504(*(v0 + 72));
      sub_1C7BDF778(v5, v4);

      v9 = *(v0 + 8);
      goto LABEL_18;
    }

    **(v0 + 56) = 1;
    *(v0 + 35) = 1;
    sub_1C7C62D5C();
  }

LABEL_17:
  swift_willThrowTypedImpl();
  sub_1C7BDF778(v5, v4);
  sub_1C7BF2504(v6);
  v10 = *(v0 + 72);

  v9 = *(v0 + 8);
LABEL_18:

  return v9();
}

uint64_t sub_1C7C62B40()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  **(v0 + 56) = 1;
  *(v0 + 34) = 1;
  sub_1C7C62D5C();
  swift_willThrowTypedImpl();

  sub_1C7BDF778(v3, v2);
  sub_1C7BF2504(v4);
  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

id _s9SEService24SEStorageManagementSheetV8supports13configurationSbAC31ProvisioningDeviceConfigurationO_tFZ_0(void *a1)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v9 = &type metadata for SESFeature.RuntimeFlag;
    v10 = sub_1C7C643D8();
    v7 = 6;
    goto LABEL_11;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    v4 = 0;
    HIDWORD(v6) = deviceClassNumber - 1;
    LODWORD(v6) = deviceClassNumber - 1;
    v5 = v6 >> 1;
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v9 = &type metadata for SESFeature.RuntimeFlag;
        v10 = sub_1C7C643D8();
        v7 = 4;
        goto LABEL_11;
      }

      if (v5 == 5)
      {
        v9 = &type metadata for SESFeature.RuntimeFlag;
        v10 = sub_1C7C643D8();
        v7 = 5;
        goto LABEL_11;
      }
    }

    else if (v5 <= 1)
    {
      v9 = &type metadata for SESFeature.RuntimeFlag;
      v10 = sub_1C7C643D8();
      v7 = 3;
LABEL_11:
      LOBYTE(v8[0]) = v7;
      v4 = sub_1C7C7D114();
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    return (v4 & 1);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SEStorageManagementSheet()
{
  result = qword_1EC265428;
  if (!qword_1EC265428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C7C62D5C()
{
  result = qword_1EC2652E0;
  if (!qword_1EC2652E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2652E0);
  }

  return result;
}

uint64_t sub_1C7C62DB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C62E04()
{
  result = qword_1EC265310;
  if (!qword_1EC265310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265310);
  }

  return result;
}

unint64_t sub_1C7C62E58()
{
  result = qword_1EC265318;
  if (!qword_1EC265318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265318);
  }

  return result;
}

unint64_t sub_1C7C62EAC()
{
  result = qword_1EC265320;
  if (!qword_1EC265320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265320);
  }

  return result;
}

unint64_t sub_1C7C62F00()
{
  result = qword_1EC265328;
  if (!qword_1EC265328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265328);
  }

  return result;
}

unint64_t sub_1C7C62F54()
{
  result = qword_1EC265330;
  if (!qword_1EC265330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265330);
  }

  return result;
}

unint64_t sub_1C7C62FA8()
{
  result = qword_1EC265338;
  if (!qword_1EC265338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265338);
  }

  return result;
}

unint64_t sub_1C7C62FFC()
{
  result = qword_1EC265340;
  if (!qword_1EC265340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265340);
  }

  return result;
}

unint64_t sub_1C7C63050()
{
  result = qword_1EC265370;
  if (!qword_1EC265370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265370);
  }

  return result;
}

unint64_t sub_1C7C630A4()
{
  result = qword_1EC265378;
  if (!qword_1EC265378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265378);
  }

  return result;
}

unint64_t sub_1C7C630F8()
{
  result = qword_1EC265398;
  if (!qword_1EC265398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265398);
  }

  return result;
}

unint64_t sub_1C7C6314C()
{
  result = qword_1EC2653A0;
  if (!qword_1EC2653A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2653A0);
  }

  return result;
}

unint64_t sub_1C7C631A0()
{
  result = qword_1EC2653A8;
  if (!qword_1EC2653A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2653A8);
  }

  return result;
}

uint64_t sub_1C7C631F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SESnapshot();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C63238()
{
  result = qword_1EC2653E0;
  if (!qword_1EC2653E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2653E0);
  }

  return result;
}

unint64_t sub_1C7C6328C()
{
  result = qword_1EC2653E8;
  if (!qword_1EC2653E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2653E8);
  }

  return result;
}

unint64_t sub_1C7C632E0()
{
  result = qword_1EC2653F0;
  if (!qword_1EC2653F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2653F0);
  }

  return result;
}

unint64_t sub_1C7C63338()
{
  result = qword_1EC265410;
  if (!qword_1EC265410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265410);
  }

  return result;
}

unint64_t sub_1C7C63390()
{
  result = qword_1EC265418;
  if (!qword_1EC265418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265418);
  }

  return result;
}

unint64_t sub_1C7C633E8()
{
  result = qword_1EC265420;
  if (!qword_1EC265420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265420);
  }

  return result;
}

void sub_1C7C63464()
{
  sub_1C7C634F8();
  if (v0 <= 0x3F)
  {
    sub_1C7C7D104();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C7C634F8()
{
  if (!qword_1EC265438)
  {
    v0 = sub_1C7C7D454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC265438);
    }
  }
}

uint64_t sub_1C7C63554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1C7C6359C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C7C63608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C7C63664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1C7C637CC()
{
  result = qword_1EC265440;
  if (!qword_1EC265440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265440);
  }

  return result;
}

unint64_t sub_1C7C63824()
{
  result = qword_1EC265448;
  if (!qword_1EC265448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265448);
  }

  return result;
}

unint64_t sub_1C7C6387C()
{
  result = qword_1EC265450;
  if (!qword_1EC265450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265450);
  }

  return result;
}

unint64_t sub_1C7C638D4()
{
  result = qword_1EC265458;
  if (!qword_1EC265458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265458);
  }

  return result;
}

unint64_t sub_1C7C6392C()
{
  result = qword_1EC265460;
  if (!qword_1EC265460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265460);
  }

  return result;
}

unint64_t sub_1C7C63984()
{
  result = qword_1EC265468;
  if (!qword_1EC265468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265468);
  }

  return result;
}

unint64_t sub_1C7C639DC()
{
  result = qword_1EC265470;
  if (!qword_1EC265470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265470);
  }

  return result;
}

unint64_t sub_1C7C63A34()
{
  result = qword_1EC265478;
  if (!qword_1EC265478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265478);
  }

  return result;
}

unint64_t sub_1C7C63A8C()
{
  result = qword_1EC265480;
  if (!qword_1EC265480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265480);
  }

  return result;
}

unint64_t sub_1C7C63AE4()
{
  result = qword_1EC265488;
  if (!qword_1EC265488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265488);
  }

  return result;
}

unint64_t sub_1C7C63B3C()
{
  result = qword_1EC265490;
  if (!qword_1EC265490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265490);
  }

  return result;
}

unint64_t sub_1C7C63B94()
{
  result = qword_1EC265498;
  if (!qword_1EC265498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265498);
  }

  return result;
}

unint64_t sub_1C7C63BEC()
{
  result = qword_1EC2654A0;
  if (!qword_1EC2654A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654A0);
  }

  return result;
}

unint64_t sub_1C7C63C44()
{
  result = qword_1EC2654A8;
  if (!qword_1EC2654A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654A8);
  }

  return result;
}

unint64_t sub_1C7C63C9C()
{
  result = qword_1EC2654B0;
  if (!qword_1EC2654B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654B0);
  }

  return result;
}

unint64_t sub_1C7C63CF4()
{
  result = qword_1EC2654B8;
  if (!qword_1EC2654B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654B8);
  }

  return result;
}

unint64_t sub_1C7C63D4C()
{
  result = qword_1EC2654C0;
  if (!qword_1EC2654C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654C0);
  }

  return result;
}

unint64_t sub_1C7C63DA4()
{
  result = qword_1EC2654C8;
  if (!qword_1EC2654C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654C8);
  }

  return result;
}

unint64_t sub_1C7C63DFC()
{
  result = qword_1EC2654D0;
  if (!qword_1EC2654D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654D0);
  }

  return result;
}

unint64_t sub_1C7C63E54()
{
  result = qword_1EC2654D8;
  if (!qword_1EC2654D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654D8);
  }

  return result;
}

unint64_t sub_1C7C63EAC()
{
  result = qword_1EC2654E0;
  if (!qword_1EC2654E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654E0);
  }

  return result;
}

unint64_t sub_1C7C63F04()
{
  result = qword_1EC2654E8;
  if (!qword_1EC2654E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654E8);
  }

  return result;
}

unint64_t sub_1C7C63F5C()
{
  result = qword_1EC2654F0;
  if (!qword_1EC2654F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654F0);
  }

  return result;
}

unint64_t sub_1C7C63FB4()
{
  result = qword_1EC2654F8;
  if (!qword_1EC2654F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654F8);
  }

  return result;
}

unint64_t sub_1C7C6400C()
{
  result = qword_1EC265500;
  if (!qword_1EC265500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265500);
  }

  return result;
}

unint64_t sub_1C7C64064()
{
  result = qword_1EC265508;
  if (!qword_1EC265508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265508);
  }

  return result;
}

unint64_t sub_1C7C640BC()
{
  result = qword_1EC265510;
  if (!qword_1EC265510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265510);
  }

  return result;
}

unint64_t sub_1C7C64114()
{
  result = qword_1EC265518;
  if (!qword_1EC265518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265518);
  }

  return result;
}

unint64_t sub_1C7C6416C()
{
  result = qword_1EC265520;
  if (!qword_1EC265520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265520);
  }

  return result;
}

unint64_t sub_1C7C641C4()
{
  result = qword_1EC265528;
  if (!qword_1EC265528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265528);
  }

  return result;
}

unint64_t sub_1C7C6421C()
{
  result = qword_1EC265530;
  if (!qword_1EC265530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265530);
  }

  return result;
}

uint64_t sub_1C7C64270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74656C6C6177 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616E6E656976 && a2 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666F72506D695365 && a2 == 0xEB00000000656C69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6569667269756DLL && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

unint64_t sub_1C7C643D8()
{
  result = qword_1EC265538;
  if (!qword_1EC265538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265538);
  }

  return result;
}

uint64_t SESnapshot.addReservation(type:metadata:removeFromStaged:)(uint64_t a1, uint64_t a2, char a3)
{
  v11 = *MEMORY[0x1E69E9840];
  *(v4 + 114) = a3;
  *(v4 + 240) = a2;
  *(v4 + 248) = v3;
  v6 = sub_1C7C7D104();
  *(v4 + 256) = v6;
  v7 = *(v6 - 8);
  *(v4 + 264) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = *a1;
  *(v4 + 115) = *(a1 + 16);
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C7C6454C, 0, 0);
}

uint64_t sub_1C7C6454C()
{
  v60 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 288);
  v3 = *(v0 + 115);
  v56 = *(v0 + 280);
  v2 = v56;
  v57 = v1;
  v58 = v3;
  CredentialType.init(fromLegacy:)(&v56, v54);
  v5 = v54[0];
  v4 = v54[1];
  *(v0 + 296) = v54[0];
  *(v0 + 304) = v4;
  v6 = v55;
  *(v0 + 116) = v55;
  sub_1C7BDF708(v2, v1, v3);
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 240);
  v8 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v8, qword_1EC288338);
  sub_1C7BDF708(v5, v4, v6);
  v9 = v7;
  v10 = sub_1C7C7D194();
  v11 = sub_1C7C7D564();
  sub_1C7BEA9D8(v5, v4, v6);

  if (os_log_type_enabled(v10, v11))
  {
    v53 = v11;
    v12 = *(v0 + 240);
    v13 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v56 = v52;
    *v13 = 136315906;
    *(v13 + 4) = sub_1C7BE42F8(0xD00000000000002FLL, 0x80000001C7C9FCE0, &v56);
    *(v13 + 12) = 2080;
    *(v0 + 192) = v5;
    *(v0 + 200) = v4;
    *(v0 + 208) = v6;
    sub_1C7BDF708(v5, v4, v6);
    v14 = sub_1C7C7D324();
    v16 = sub_1C7BE42F8(v14, v15, &v56);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2080;
    v17 = objc_opt_self();
    *(v0 + 232) = 0;
    v18 = [v17 dataWithJSONObject:v12 options:0 error:v0 + 232];
    v19 = *(v0 + 232);
    if (!v18)
    {
      v44 = v19;
      sub_1C7C7CFD4();

      swift_willThrow();
      v45 = *MEMORY[0x1E69E9840];

      return swift_unexpectedError();
    }

    v20 = sub_1C7C7D054();
    v22 = v21;

    v23 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v24 = sub_1C7C7D024();
    v25 = [v23 initWithData:v24 encoding:1];

    result = sub_1C7BDF778(v20, v22);
    if (!v25)
    {
      __break(1u);
      return result;
    }

    v27 = *(v0 + 114);
    v28 = sub_1C7C7D304();
    v30 = v29;

    v31 = sub_1C7BE42F8(v28, v30, &v56);

    *(v13 + 24) = v31;
    *(v13 + 32) = 1024;
    *(v13 + 34) = v27;
    _os_log_impl(&dword_1C7B9A000, v10, v53, "%s (%s, %s, %{BOOL}d)", v13, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v52, -1, -1);
    MEMORY[0x1CCA6C990](v13, -1, -1);
  }

  if (*(v0 + 114) == 1)
  {
    v32 = *(v0 + 248);
    v56 = v5;
    v57 = v4;
    v58 = v6;
    SESnapshot.removeFromSnapshot(credential:)(&v56);
  }

  v33 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264480, &qword_1C7C90020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7C8F930;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  sub_1C7BDF708(v5, v4, v6);
  SESnapshot.canFitWithReason(credentials:)(inited, &v56);
  swift_setDeallocating();
  sub_1C7C679BC(inited + 32);
  if ((v56 & 0x100) != 0)
  {
    v35 = *(v0 + 240);
    v36 = objc_opt_self();
    *(v0 + 216) = 0;
    v37 = [v36 dataWithPropertyList:v35 format:200 options:0 error:v0 + 216];
    v38 = *(v0 + 216);
    if (v37)
    {
      v39 = sub_1C7C7D054();
      v41 = v40;

      *(v0 + 312) = v39;
      *(v0 + 320) = v41;
      if (qword_1EC2621D8 != -1)
      {
        swift_once();
      }

      *(v0 + 120) = v5;
      *(v0 + 128) = v4;
      *(v0 + 136) = v6;
      v42 = swift_task_alloc();
      *(v0 + 328) = v42;
      *v42 = v0;
      v42[1] = sub_1C7C64C90;
      v43 = *MEMORY[0x1E69E9840];

      return SERInternalClient.addReservation(type:metadata:)(v0 + 96, v0 + 120, v39, v41);
    }

    v50 = *(v0 + 248);
    v51 = v38;
    sub_1C7C7CFD4();

    swift_willThrow();
    sub_1C7C6507C(v50, v5, v4, v6);
    sub_1C7BEA9D8(v5, v4, v6);
  }

  else
  {
    sub_1C7BEA9D8(v5, v4, v6);
    sub_1C7BEADA0();
    swift_allocError();
    *v46 = xmmword_1C7C90C50;
    *(v46 + 16) = 5;
    swift_willThrow();
  }

  v47 = *(v0 + 272);

  v48 = *(v0 + 8);
  v49 = *MEMORY[0x1E69E9840];

  return v48();
}

uint64_t sub_1C7C64C90()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 328);
  v5 = *v0;

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C7C64DB8, 0, 0);
}

uint64_t sub_1C7C64DB8()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 96);
  if (*(v0 + 113))
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 312);
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v30 = *(v0 + 248);
    v32 = *(v0 + 320);
    *(v0 + 144) = v1;
    *(v0 + 160) = v2;
    v6 = *(v0 + 116);
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 160);
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9;
    sub_1C7BDF778(v3, v32);
    sub_1C7C6507C(v30, v5, v4, v6);
    sub_1C7BEA9D8(v5, v4, v6);
    v11 = *(v0 + 272);

    v12 = *(v0 + 8);
    v13 = *MEMORY[0x1E69E9840];

    return v12();
  }

  else
  {
    v28 = *(v0 + 312);
    v29 = *(v0 + 320);
    v31 = *(v0 + 296);
    v33 = *(v0 + 304);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v18 = *(v0 + 248);
    v17 = *(v0 + 256);
    v19 = *(v18 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
    v20 = *(v0 + 96);
    v21 = *(v0 + 116);
    (*(v16 + 16))(v15, v1 + OBJC_IVAR____TtC9SEService11Reservation_uuid, v17);
    v22 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
    swift_beginAccess();
    v23 = v20;
    v24 = *(v19 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v19 + v22);
    *(v19 + v22) = 0x8000000000000000;
    sub_1C7C67F90(v23, v15, isUniquelyReferenced_nonNull_native);
    (*(v16 + 8))(v15, v17);
    *(v19 + v22) = v34;
    swift_endAccess();
    sub_1C7BDF778(v28, v29);
    sub_1C7C6507C(v18, v31, v33, v21);
    sub_1C7BEA9D8(v31, v33, v21);

    v26 = *(v0 + 8);
    v27 = *MEMORY[0x1E69E9840];

    return v26(v23);
  }
}

uint64_t sub_1C7C6507C(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a1;
  v9 = *(a1 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v10 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v11 = *(v9 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v9 + v10);
  v36 = v13;
  *(v9 + v10) = 0x8000000000000000;
  v14 = sub_1C7C70278(a2, a3, a4);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v4) = v15;
  if (v13[3] >= v19)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_6:
    *(v9 + v10) = v13;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1C7C704D4(v19, isUniquelyReferenced_nonNull_native);
  v14 = sub_1C7C70278(a2, a3, a4);
  if ((v4 & 1) == (v20 & 1))
  {
    goto LABEL_6;
  }

LABEL_12:
  v14 = sub_1C7C7DAF4();
  __break(1u);
LABEL_13:
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_14;
  }

  v35 = v14;
  sub_1C7C71E84();
  v14 = v35;
  v13 = v36;
  *(v8 + v9) = v36;
  if ((v4 & 1) == 0)
  {
LABEL_15:
    v8 = v14;
    sub_1C7C4F658(v14, a2, a3, a4, 0, v13);
    sub_1C7BDF708(a2, a3, a4);
    v14 = v8;
  }

LABEL_16:
  v30 = v13[7];
  v31 = *(v30 + 8 * v14);
  v18 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v18)
  {
    while (1)
    {
      __break(1u);
LABEL_22:
      v34 = v14;
      sub_1C7C71E84();
      v14 = v34;
      v13 = v36;
      *(v9 + v10) = v36;
      if ((v4 & 1) == 0)
      {
LABEL_7:
        v4 = v14;
        sub_1C7C4F658(v14, a2, a3, a4, 0, v13);
        sub_1C7BDF708(a2, a3, a4);
        v14 = v4;
      }

LABEL_8:
      v21 = v13[7];
      v22 = *(v21 + 8 * v14);
      v18 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v18)
      {
LABEL_19:
        __break(1u);
      }

      else
      {
        *(v21 + 8 * v14) = v23;
        swift_endAccess();
        v9 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
        swift_beginAccess();
        v24 = *(v8 + v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *(v8 + v9);
        v36 = v13;
        *(v8 + v9) = 0x8000000000000000;
        v14 = sub_1C7C70278(a2, a3, a4);
        v26 = v13[2];
        v27 = (v25 & 1) == 0;
        v18 = __OFADD__(v26, v27);
        v28 = v26 + v27;
        if (!v18)
        {
          LOBYTE(v4) = v25;
          if (v13[3] < v28)
          {
            sub_1C7C704D4(v28, isUniquelyReferenced_nonNull_native);
            v14 = sub_1C7C70278(a2, a3, a4);
            if ((v4 & 1) != (v29 & 1))
            {
              goto LABEL_12;
            }

LABEL_14:
            *(v8 + v9) = v13;
            if ((v4 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  *(v30 + 8 * v14) = v32;
  return swift_endAccess();
}

uint64_t SESnapshot.editReservation(uuid:newMetadata:)(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_1C7C7D104();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C7C65428, 0, 0);
}

uint64_t sub_1C7C65428()
{
  v52 = v0;
  v51[1] = *MEMORY[0x1E69E9840];
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v6, qword_1EC288338);
  (*(v2 + 16))(v1, v5, v3);
  v7 = v4;
  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D564();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 96);
  if (!v10)
  {

    (*(v12 + 8))(v11, v13);
LABEL_8:
    v33 = *(v0 + 88);
    v34 = objc_opt_self();
    *(v0 + 64) = 0;
    v35 = [v34 dataWithPropertyList:v33 format:200 options:0 error:v0 + 64];
    v36 = *(v0 + 64);
    if (v35)
    {
      v37 = sub_1C7C7D054();
      v39 = v38;

      *(v0 + 120) = v37;
      *(v0 + 128) = v39;
      if (qword_1EC2621D8 != -1)
      {
        swift_once();
      }

      v40 = swift_task_alloc();
      *(v0 + 136) = v40;
      *v40 = v0;
      v40[1] = sub_1C7C65954;
      v41 = *(v0 + 80);
      v42 = *MEMORY[0x1E69E9840];

      return SERInternalClient.editReservation(uuid:metadata:)(v0 + 16, v41, v37, v39);
    }

    else
    {
      v43 = v36;
      sub_1C7C7CFD4();

      swift_willThrow();
      v44 = *(v0 + 112);

      v45 = *(v0 + 8);
      v46 = *MEMORY[0x1E69E9840];

      return v45();
    }
  }

  v50 = *(v0 + 88);
  v14 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  v51[0] = v49;
  *v14 = 136315650;
  *(v14 + 4) = sub_1C7BE42F8(0xD000000000000022, 0x80000001C7C9FD40, v51);
  *(v14 + 12) = 2080;
  v15 = sub_1C7C7D0A4();
  v17 = v16;
  (*(v12 + 8))(v11, v13);
  v18 = sub_1C7BE42F8(v15, v17, v51);

  *(v14 + 14) = v18;
  *(v14 + 22) = 2080;
  v19 = objc_opt_self();
  *(v0 + 72) = 0;
  v20 = [v19 dataWithJSONObject:v50 options:0 error:v0 + 72];
  v21 = *(v0 + 72);
  if (v20)
  {
    v22 = sub_1C7C7D054();
    v24 = v23;

    v25 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v26 = sub_1C7C7D024();
    v27 = [v25 initWithData:v26 encoding:1];

    result = sub_1C7BDF778(v22, v24);
    if (!v27)
    {
      __break(1u);
      return result;
    }

    v29 = sub_1C7C7D304();
    v31 = v30;

    v32 = sub_1C7BE42F8(v29, v31, v51);

    *(v14 + 24) = v32;
    _os_log_impl(&dword_1C7B9A000, v8, v9, "%s (%s, %s)", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v49, -1, -1);
    MEMORY[0x1CCA6C990](v14, -1, -1);

    goto LABEL_8;
  }

  v47 = v21;
  sub_1C7C7CFD4();

  swift_willThrow();
  v48 = *MEMORY[0x1E69E9840];

  return swift_unexpectedError();
}

uint64_t sub_1C7C65954()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 136);
  v5 = *v0;

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C7C65A7C, 0, 0);
}

uint64_t sub_1C7C65A7C()
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  if (*(v0 + 33))
  {
    v3 = *(v0 + 32);
    *(v0 + 40) = *(v0 + 16);
    *(v0 + 56) = v3;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    sub_1C7BDF778(v1, v2);
    v8 = *(v0 + 112);

    v9 = *(v0 + 8);
    v10 = *MEMORY[0x1E69E9840];

    return v9();
  }

  else
  {
    v15 = *(v0 + 16);
    v12 = *(v0 + 112);
    sub_1C7BDF778(v1, v2);

    v13 = *(v0 + 8);
    v14 = *MEMORY[0x1E69E9840];

    return v13(v15);
  }
}

uint64_t SESnapshot.findReservation(uuid:fromCache:)(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C7C65CCC;

  return sub_1C7C682F0(a1, a2);
}

uint64_t sub_1C7C65CCC(void *a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  v6 = *(v5 + 8);
  if (v1)
  {

    return v6();
  }

  else
  {
    v9 = *(v5 + 8);
    v8 = a1;

    return v9(v8);
  }
}

uint64_t SESnapshot.removeReservation(uuid:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_1C7C7D104();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C65EC8, 0, 0);
}

uint64_t sub_1C7C65EC8()
{
  v23 = v0;
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[20];
  v5 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v5, qword_1EC288338);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1C7C7D194();
  v7 = sub_1C7C7D564();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1C7BE42F8(0xD000000000000018, 0x80000001C7C9FD70, &v22);
    *(v12 + 12) = 2080;
    sub_1C7BED798(&qword_1EC265540);
    v14 = sub_1C7C7DA74();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1C7BE42F8(v14, v16, &v22);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1C7B9A000, v6, v7, "%s (%s)", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v13, -1, -1);
    MEMORY[0x1CCA6C990](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[25] = v18;
  *v18 = v0;
  v18[1] = sub_1C7C66178;
  v19 = v0[20];
  v20 = v0[21];

  return sub_1C7C682F0(v19, 1);
}

uint64_t sub_1C7C66178(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v9 = *v2;

  if (v1)
  {

    v6 = sub_1C7C664C0;
  }

  else
  {
    *(v4 + 208) = a1;
    v7 = a1;
    v6 = sub_1C7C662AC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C7C662AC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  v3 = &v1[OBJC_IVAR____TtC9SEService11Reservation_type];
  v4 = *&v1[OBJC_IVAR____TtC9SEService11Reservation_type];
  *(v0 + 216) = v4;
  v5 = *(v3 + 1);
  *(v0 + 224) = v5;
  v6 = v3[16];
  *(v0 + 130) = v6;
  sub_1C7BDF708(v4, v5, v6);

  v7 = *(v2 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v8 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  *(v0 + 232) = v7;
  *(v0 + 240) = v8;
  swift_beginAccess();
  if (*(*(v7 + v8) + 16))
  {
    sub_1C7C70278(v4, v5, v6);
    v10 = v9;
    swift_endAccess();
    if (v10)
    {
      if (qword_1EC2621D8 != -1)
      {
        swift_once();
      }

      v11 = swift_task_alloc();
      *(v0 + 248) = v11;
      *v11 = v0;
      v11[1] = sub_1C7C6655C;
      v12 = *(v0 + 160);

      return SERInternalClient.removeReservation(uuid:)(v0 + 112, v12);
    }
  }

  else
  {
    swift_endAccess();
  }

  sub_1C7BEA9D8(v4, v5, v6);
  sub_1C7BEADA0();
  swift_allocError();
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 5;
  swift_willThrow();
  v15 = *(v0 + 192);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1C7C664C0()
{
  sub_1C7BEADA0();
  swift_allocError();
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 5;
  swift_willThrow();
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C7C6655C()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C66658, 0, 0);
}

uint64_t sub_1C7C66658()
{
  v1 = *(v0 + 112);
  if (*(v0 + 129))
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    sub_1C7BEA9D8(*(v0 + 216), *(v0 + 224), *(v0 + 130));
    *(v0 + 136) = v1;
    *(v0 + 144) = v2;
    *(v0 + 152) = v3;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    v8 = *(v0 + 192);

    v9 = *(v0 + 8);
LABEL_21:

    return v9();
  }

  LOBYTE(v10) = v0 + 40;
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v14 = *(v0 + 216);
  v13 = *(v0 + 224);
  v15 = *(v0 + 130);
  swift_beginAccess();
  v16 = *(v12 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v12 + v11);
  v63 = v18;
  *(v12 + v11) = 0x8000000000000000;
  v19 = sub_1C7C70278(v14, v13, v15);
  v21 = v18[2];
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = v20;
  if (v18[3] >= v24)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);
    v27 = *(v0 + 130);
    sub_1C7C704D4(v24, isUniquelyReferenced_nonNull_native);
    v19 = sub_1C7C70278(v26, v25, v27);
    if ((v13 & 1) != (v28 & 1))
    {
      goto LABEL_13;
    }
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  v29 = v63[7];
  v30 = *(v29 + 8 * v19);
  v23 = __OFSUB__(v30, 1);
  v31 = v30 - 1;
  if (v23)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    do
    {
      __break(1u);
LABEL_28:
      v60 = v19;
      sub_1C7C71E84();
      v19 = v60;
      if (v13)
      {
        goto LABEL_9;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      v61 = v19;
      sub_1C7C71E84();
      v19 = v61;
      v40 = v63;
      *(v12 + v13) = v63;
      if ((v10 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_19:
      v53 = v40[7];
      v54 = *(v53 + 8 * v19);
      v23 = __OFSUB__(v54, 1);
      v55 = v54 - 1;
    }

    while (v23);
    v57 = *(v0 + 216);
    v56 = *(v0 + 224);
    v58 = *(v0 + 192);
    v59 = *(v0 + 130);
    *(v53 + 8 * v19) = v55;
    swift_endAccess();
    sub_1C7BEA9D8(v57, v56, v59);

    v9 = *(v0 + 8);
    goto LABEL_21;
  }

  v33 = *(v0 + 232);
  v32 = *(v0 + 240);
  v34 = *(v0 + 216);
  v62 = *(v0 + 224);
  v35 = *(v0 + 160);
  v12 = *(v0 + 168);
  v36 = *(v0 + 130);
  *(v29 + 8 * v19) = v31;
  *(v33 + v32) = v63;
  swift_endAccess();
  swift_beginAccess();
  v37 = sub_1C7C66A48(v35);
  swift_endAccess();

  v13 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
  swift_beginAccess();
  v38 = *(v12 + v13);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v12 + v13);
  v63 = v40;
  *(v12 + v13) = 0x8000000000000000;
  v19 = sub_1C7C70278(v34, v62, v36);
  v42 = v40[2];
  v43 = (v41 & 1) == 0;
  v23 = __OFADD__(v42, v43);
  v44 = v42 + v43;
  if (v23)
  {
    goto LABEL_26;
  }

  LOBYTE(v10) = v41;
  if (v40[3] >= v44)
  {
    if ((v39 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  v46 = *(v0 + 216);
  v45 = *(v0 + 224);
  v47 = *(v0 + 130);
  sub_1C7C704D4(v44, v39);
  v19 = sub_1C7C70278(v46, v45, v47);
  if ((v10 & 1) == (v48 & 1))
  {
LABEL_17:
    *(v12 + v13) = v40;
    if (v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v51 = *(v0 + 216);
    v50 = *(v0 + 224);
    v52 = *(v0 + 130);
    v10 = v19;
    sub_1C7C4F658(v19, v51, v50, v52, 0, v40);
    sub_1C7BDF708(v51, v50, v52);
    v19 = v10;
    goto LABEL_19;
  }

LABEL_13:

  return sub_1C7C7DAF4();
}

uint64_t sub_1C7C66A48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1C7C703E8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C7C72450();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_1C7C7D104();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1C7C67A10(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t SESnapshot.reservations(fromCache:)(char a1)
{
  *(v2 + 112) = v1;
  *(v2 + 82) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20);
  *(v2 + 120) = v3;
  v4 = *(v3 - 8);
  *(v2 + 128) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C66BE0, 0, 0);
}

uint64_t sub_1C7C66BE0()
{
  v18 = v0;
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v1, qword_1EC288338);
  v2 = sub_1C7C7D194();
  v3 = sub_1C7C7D564();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 82);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1C7BE42F8(0xD000000000000018, 0x80000001C7C9FD90, &v17);
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_1C7B9A000, v2, v3, "%s (%{BOOL}d)", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x1CCA6C990](v6, -1, -1);
    MEMORY[0x1CCA6C990](v5, -1, -1);
  }

  if ((*(v0 + 82) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(*(v0 + 112) + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v8 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_1C7C67934(*(v9 + 16), 0);
    v12 = sub_1C7C6819C(&v17, v11 + 4, v10, v9);

    sub_1C7C0040C();
    if (v12 != v10)
    {
      __break(1u);
LABEL_9:
      if (qword_1EC2621D8 != -1)
      {
        swift_once();
      }

      v13 = swift_task_alloc();
      *(v0 + 144) = v13;
      *v13 = v0;
      v13[1] = sub_1C7C66EEC;

      return SERInternalClient.reservations()(v0 + 64);
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v0 + 136);

  v16 = *(v0 + 8);

  return v16(v11);
}

uint64_t sub_1C7C66EEC()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C66FE8, 0, 0);
}

size_t sub_1C7C66FE8()
{
  v48 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (*(v0 + 81))
  {
    v4 = *(v0 + 136);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v6;
    *(v8 + 16) = v7;

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(*(v0 + 112) + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  if (v1 >> 62)
  {
    v29 = *(v0 + 64);
    v12 = sub_1C7C7D6D4();
    v1 = v29;
    if (v12)
    {
LABEL_7:
      v13 = v1;
      v47 = MEMORY[0x1E69E7CC0];
      result = sub_1C7C25BCC(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        return result;
      }

      v42 = v2;
      v43 = v3;
      v44 = v11;
      v14 = 0;
      v15 = *(v0 + 128);
      v16 = v47;
      v17 = v13;
      v45 = v13 & 0xC000000000000001;
      v46 = *(v0 + 120);
      v18 = v13;
      do
      {
        if (v45)
        {
          v19 = MEMORY[0x1CCA6B7B0](v14, v17);
        }

        else
        {
          v19 = *(v17 + 8 * v14 + 32);
        }

        v20 = v19;
        v21 = *(v0 + 136);
        v22 = *(v46 + 48);
        v23 = OBJC_IVAR____TtC9SEService11Reservation_uuid;
        v24 = sub_1C7C7D104();
        (*(*(v24 - 8) + 16))(v21, v20 + v23, v24);
        *(v21 + v22) = v20;
        v47 = v16;
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1C7C25BCC(v25 > 1, v26 + 1, 1);
          v16 = v47;
        }

        v27 = *(v0 + 136);
        ++v14;
        *(v16 + 16) = v26 + 1;
        sub_1C7C68B10(v27, v16 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v26);
        v17 = v18;
      }

      while (v12 != v14);
      sub_1C7C68B80(v18, v42, v43, 0);
      v11 = v44;
      if (*(v16 + 16))
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_7;
    }
  }

  sub_1C7C68B80(v1, v2, v3, 0);
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264608, &qword_1C7C90808);
    v28 = sub_1C7C7D914();
    goto LABEL_20;
  }

LABEL_19:
  v28 = MEMORY[0x1E69E7CC8];
LABEL_20:
  v47 = v28;

  sub_1C7C31930(v30, 1, &v47);

  v31 = v47;
  v32 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
  swift_beginAccess();
  v33 = *(v11 + v32);
  *(v11 + v32) = v31;

  v34 = *(*(v0 + 112) + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v35 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
  swift_beginAccess();
  v36 = *(v34 + v35);
  v37 = *(v36 + 16);
  if (!v37)
  {
LABEL_23:
    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v38 = sub_1C7C67934(*(v36 + 16), 0);
  v39 = sub_1C7C6819C(&v47, v38 + 4, v37, v36);

  sub_1C7C0040C();
  if (v39 != v37)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  v40 = *(v0 + 136);

  v41 = *(v0 + 8);

  return v41(v38);
}

uint64_t sub_1C7C6748C()
{
  v9 = v0;
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v1, qword_1EC288338);
  v2 = sub_1C7C7D194();
  v3 = sub_1C7C7D564();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1C7BE42F8(0xD000000000000013, 0x80000001C7C9FDB0, &v8);
    _os_log_impl(&dword_1C7B9A000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x1CCA6C990](v5, -1, -1);
    MEMORY[0x1CCA6C990](v4, -1, -1);
  }

  if (qword_1EC2621D8 != -1)
  {
    swift_once();
  }

  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_1C7C67678;

  return SERInternalClient.clearReservations()(v0 + 112);
}

uint64_t sub_1C7C67678()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C67774, 0, 0);
}

uint64_t sub_1C7C67774()
{
  v1 = *(v0 + 160);
  if (*(v0 + 129))
  {
    v2 = *(v0 + 128);
    *(v0 + 136) = *(v0 + 112);
    *(v0 + 152) = v2;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v3 = *(v0 + 136);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    v7 = *(v1 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
    v8 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
    swift_beginAccess();
    v9 = *(v7 + v8);
    v10 = MEMORY[0x1E69E7CC8];
    *(v7 + v8) = MEMORY[0x1E69E7CC8];

    v11 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
    swift_beginAccess();
    v12 = *(v7 + v11);
    *(v7 + v11) = v10;
  }

  else
  {
    v14 = *(v1 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
    v15 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
    swift_beginAccess();
    v16 = *(v14 + v15);
    v17 = MEMORY[0x1E69E7CC8];
    *(v14 + v15) = MEMORY[0x1E69E7CC8];

    v18 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
    swift_beginAccess();
    v19 = *(v14 + v18);
    *(v14 + v18) = v17;
  }

  v13 = *(v0 + 8);

  return v13();
}

void *sub_1C7C67934(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265780, &unk_1C7C95D30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_1C7C67A10(int64_t a1, uint64_t a2)
{
  v43 = sub_1C7C7D104();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_1C7C7D694();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1C7BED798(&unk_1EC264F40);
      v26 = sub_1C7C7D284();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1C7C67D18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1C7C70278(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      sub_1C7C71E84();
      result = v21;
      goto LABEL_8;
    }

    sub_1C7C704D4(v18, a5 & 1);
    v22 = *v6;
    result = sub_1C7C70278(a2, a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_14:
      result = sub_1C7C7DAF4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    *(v24[7] + 8 * result) = a1;
  }

  else
  {
    sub_1C7C4F658(result, a2, a3, a4, a1, v24);

    return sub_1C7BDF708(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C7C67E60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1C7C70200(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1C7C72170();
      result = v19;
      goto LABEL_8;
    }

    sub_1C7C70A64(v16, a4 & 1);
    v20 = *v5;
    result = sub_1C7C70200(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1C7C7DAF4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_1C7C4F6A8(result, a2, a3, a1, v22);
  }

  return result;
}

void sub_1C7C67F90(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C7C7D104();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1C7C703E8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1C7C72450();
      goto LABEL_7;
    }

    sub_1C7C70F8C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1C7C703E8(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1C7C4F6F0(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_1C7C7DAF4();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

void sub_1C7C6815C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 < 4u)
  {
  }

  else if (a3 == 4)
  {
  }
}

void *sub_1C7C6819C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C7C682F0(uint64_t a1, char a2)
{
  *(v3 + 82) = a2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = sub_1C7C7D104();
  *(v3 + 128) = v4;
  v5 = *(v4 - 8);
  *(v3 + 136) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C683C0, 0, 0);
}

uint64_t sub_1C7C683C0()
{
  v41 = v0;
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v5, qword_1EC288338);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1C7C7D194();
  v8 = sub_1C7C7D564();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 152);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  if (v9)
  {
    v37 = *(v0 + 82);
    v36 = v8;
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40[0] = v38;
    *v13 = 136315650;
    *(v13 + 4) = sub_1C7BE42F8(0xD000000000000020, 0x80000001C7C9FDD0, v40);
    *(v13 + 12) = 2080;
    v14 = sub_1C7C7D0A4();
    v39 = v6;
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1C7BE42F8(v14, v16, v40);
    v6 = v39;

    *(v13 + 14) = v18;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v37;
    _os_log_impl(&dword_1C7B9A000, v7, v36, "%s (%s, %{BOOL}d)", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v38, -1, -1);
    MEMORY[0x1CCA6C990](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  *(v0 + 160) = v17;
  v19 = *(v0 + 82);
  v20 = *(*(v0 + 120) + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  *(v0 + 168) = v20;
  if (v19 == 1)
  {
    v21 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
    swift_beginAccess();
    v22 = *(v20 + v21);
    if (*(v22 + 16) && (v23 = sub_1C7C703E8(*(v0 + 112)), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
      swift_endAccess();
      v27 = *(v0 + 144);
      v26 = *(v0 + 152);

      v28 = *(v0 + 8);

      return v28(v25);
    }

    else
    {
      swift_endAccess();
      sub_1C7BEADA0();
      swift_allocError();
      *v32 = 0;
      *(v32 + 8) = 0;
      *(v32 + 16) = 5;
      swift_willThrow();
      v34 = *(v0 + 144);
      v33 = *(v0 + 152);

      v35 = *(v0 + 8);

      return v35();
    }
  }

  else
  {
    v6(*(v0 + 144), *(v0 + 112), *(v0 + 128));
    if (qword_1EC2621D8 != -1)
    {
      swift_once();
    }

    v30 = swift_task_alloc();
    *(v0 + 176) = v30;
    *v30 = v0;
    v30[1] = sub_1C7C6880C;
    v31 = *(v0 + 112);

    return SERInternalClient.findReservation(uuid:)(v0 + 64, v31);
  }
}

uint64_t sub_1C7C6880C()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C68908, 0, 0);
}

uint64_t sub_1C7C68908()
{
  v1 = *(v0 + 64);
  if (*(v0 + 81))
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v4 = *(v0 + 136) + 8;
    (*(v0 + 160))(*(v0 + 144), *(v0 + 128));
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v6;
    *(v8 + 16) = v7;
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);

    v11 = *(v0 + 8);

    return v11();
  }

  v14 = *(v0 + 160);
  v13 = *(v0 + 168);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 128);
  v18 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
  swift_beginAccess();
  v19 = *(v13 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v13 + v18);
  *(v13 + v18) = 0x8000000000000000;
  sub_1C7C67F90(v1, v15, isUniquelyReferenced_nonNull_native);
  v14(v15, v17);
  *(v13 + v18) = v26;
  result = swift_endAccess();
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C7C703E8(*(v0 + 112));
  if ((v21 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v22 = *(*(v26 + 56) + 8 * result);
  v24 = *(v0 + 144);
  v23 = *(v0 + 152);

  v25 = *(v0 + 8);

  return v25(v22);
}

uint64_t sub_1C7C68B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7C68B80(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_1C7C15F78(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t SECCredentialConfig.configUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C7C7D104();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SECCredentialConfig.configUUID.setter(uint64_t a1)
{
  v3 = sub_1C7C7D104();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SECCredentialConfig.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SECCredentialConfig() + 20));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  v7 = v3[4];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v7;
}

uint64_t type metadata accessor for SECCredentialConfig()
{
  result = qword_1EC2655F0;
  if (!qword_1EC2655F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 SECCredentialConfig.metadata.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = (v1 + *(type metadata accessor for SECCredentialConfig() + 20));
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[4];

  *v6 = v3;
  result = *(a1 + 1);
  *(v6 + 1) = result;
  v6[3] = v4;
  v6[4] = v5;
  return result;
}

__n128 SECCredentialConfig.init(configUUID:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[3];
  v8 = a2[4];
  v9 = sub_1C7C7D104();
  v12 = *(a2 + 1);
  (*(*(v9 - 8) + 32))(a3, a1, v9);
  v10 = a3 + *(type metadata accessor for SECCredentialConfig() + 20);
  *v10 = v6;
  result = v12;
  *(v10 + 8) = v12;
  *(v10 + 24) = v7;
  *(v10 + 32) = v8;
  return result;
}

unint64_t SECCredentialConfig.description.getter()
{
  sub_1C7C7D794();

  v1 = sub_1C7C7D0A4();
  MEMORY[0x1CCA6B380](v1);

  MEMORY[0x1CCA6B380](8202, 0xE200000000000000);
  v2 = (v0 + *(type metadata accessor for SECCredentialConfig() + 20));
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = v2[3];
  v8 = v2[4];
  v3 = SECMetadata.description.getter();
  MEMORY[0x1CCA6B380](v3);

  return 0xD000000000000012;
}

uint64_t static SECMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1C7C7DAA4() & 1) == 0 || (sub_1C7C699C4(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1C7C7DAA4();
}

uint64_t sub_1C7C6904C()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 0x55556769666E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C6908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x55556769666E6F63 && a2 == 0xEA00000000004449;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C69170(uint64_t a1)
{
  v2 = sub_1C7C6B668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C691AC(uint64_t a1)
{
  v2 = sub_1C7C6B668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SECCredentialConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265548, &qword_1C7C95D40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B668();
  sub_1C7C7DBA4();
  LOBYTE(v18) = 0;
  sub_1C7C7D104();
  sub_1C7BED798(&qword_1EC264680);
  sub_1C7C7DA44();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for SECCredentialConfig() + 20));
    v12 = v11[1];
    v14 = v11[2];
    v13 = v11[3];
    v15 = v11[4];
    v18 = *v11;
    v19 = v12;
    v20 = v14;
    v21 = v13;
    v22 = v15;
    v17[7] = 1;
    sub_1C7C6B6BC();

    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SECCredentialConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = sub_1C7C7D104();
  v30 = *(v33 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265560, &qword_1C7C95D48);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for SECCredentialConfig();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B668();
  sub_1C7C7DB94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v28 = v12;
  v17 = v15;
  v18 = v30;
  LOBYTE(v34) = 0;
  sub_1C7BED798(&qword_1EC262F00);
  v19 = v33;
  v20 = v31;
  sub_1C7C7D9B4();
  v21 = *(v18 + 32);
  v27 = v17;
  v21(v17, v6, v19);
  v38 = 1;
  sub_1C7C6B710();
  sub_1C7C7D9B4();
  (*(v32 + 8))(v11, v20);
  v22 = v36;
  v23 = v37;
  v24 = v27;
  v25 = v27 + *(v28 + 20);
  *v25 = v34;
  *(v25 + 8) = v35;
  *(v25 + 24) = v22;
  *(v25 + 32) = v23;
  sub_1C7C6B764(v24, v29);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1C7C3B128(v24);
}

uint64_t SECMetadata.credentialTypes.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SECMetadata.credentialTypes.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SECMetadata.appletInstances.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SECMetadata.friendlyName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SECMetadata.friendlyName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall SECMetadata.init(credentialTypes:appletInstances:friendlyName:)(SEService::SECMetadata *__return_ptr retstr, Swift::String credentialTypes, Swift::OpaquePointer appletInstances, Swift::String friendlyName)
{
  retstr->credentialTypes = credentialTypes;
  retstr->appletInstances = appletInstances;
  retstr->friendlyName = friendlyName;
}

unint64_t SECMetadata.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C7C7D794();

  MEMORY[0x1CCA6B380](v1, v2);
  MEMORY[0x1CCA6B380](0xD000000000000013, 0x80000001C7C9FE40);
  v4 = MEMORY[0x1CCA6B440](v3, &type metadata for SECCredentialInfo);
  MEMORY[0x1CCA6B380](v4);

  return 0xD000000000000011;
}

uint64_t sub_1C7C699C4(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v19 = a2 + 32;
  v20 = result + 32;
  while (v3 != v2)
  {
    v4 = (v20 + 72 * v3);
    v5 = *v4;
    v6 = (v19 + 72 * v3);
    v7 = *v6;
    v8 = *(*v4 + 16);
    if (v8 != *(*v6 + 16))
    {
      return 0;
    }

    v9 = v4[1];
    v10 = v4[2];
    v31 = v4[3];
    v22 = v4[8];
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v29 = v6[4];
    v30 = v4[4];
    v27 = v6[5];
    v28 = v4[5];
    v25 = v6[6];
    v26 = v4[6];
    if (v8)
    {
      v14 = v5 == v7;
    }

    else
    {
      v14 = 1;
    }

    v23 = v6[7];
    v24 = v4[7];
    v21 = v6[8];
    if (!v14)
    {
      v16 = (v5 + 40);
      v17 = (v7 + 40);
      while (v8)
      {
        result = *(v16 - 1);
        if (result != *(v17 - 1) || *v16 != *v17)
        {
          result = sub_1C7C7DAA4();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v16 += 2;
        v17 += 2;
        if (!--v8)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    if (v9 == v11 && v10 == v12)
    {
      result = 0;
    }

    else
    {
      v15 = sub_1C7C7DAA4();
      result = 0;
      if ((v15 & 1) == 0)
      {
        return result;
      }
    }

    if (v31 == v13 && v30 == v29 && v28 == v27 && v26 == v25 && v24 == v23 && v22 == v21)
    {
      ++v3;
      result = 1;
      if (v3 != v2)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7C69B9C(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1C7C7DAA4() & 1) == 0)
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

uint64_t sub_1C7C69C2C()
{
  v1 = 0x6E4974656C707061;
  if (*v0 != 1)
  {
    v1 = 0x796C646E65697266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746E6564657263;
  }
}

uint64_t sub_1C7C69CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C6C1CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C69CD0(uint64_t a1)
{
  v2 = sub_1C7C6B7C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C69D0C(uint64_t a1)
{
  v2 = sub_1C7C6B7C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SECMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265570, &qword_1C7C95D50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[2] = v1[3];
  v15 = v10;
  v14[1] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B7C8();
  sub_1C7C7DBA4();
  v20 = 0;
  v12 = v16;
  sub_1C7C7DA14();
  if (!v12)
  {
    v17 = v15;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265580, &qword_1C7C95D58);
    sub_1C7C6B870(&qword_1EC265588, sub_1C7C6B81C);
    sub_1C7C7DA44();
    v18 = 2;
    sub_1C7C7DA14();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SECMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265598, &qword_1C7C95D60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B7C8();
  sub_1C7C7DB94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = 0;
  v11 = sub_1C7C7D984();
  v13 = v12;
  v22 = a2;
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265580, &qword_1C7C95D58);
  v26 = 1;
  sub_1C7C6B870(&qword_1EC2655A0, sub_1C7C6B8E8);
  sub_1C7C7D9B4();
  v14 = v24;
  v25 = 2;
  v15 = sub_1C7C7D984();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v22;
  *v22 = v23;
  v19[1] = v13;
  v19[2] = v14;
  v19[3] = v18;
  v19[4] = v17;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1C7C6A250(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1C7C7DAA4() & 1) == 0 || (sub_1C7C699C4(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1C7C7DAA4();
}

uint64_t SECCredentialInfo.modulesAIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SECCredentialInfo.packageAid.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SECCredentialInfo.packageAid.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

__n128 SECCredentialInfo.containerSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 SECCredentialInfo.containerSize.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

__n128 SECCredentialInfo.requiredMemoryForCredential.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u64[0];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 SECCredentialInfo.requiredMemoryForCredential.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v2;
  return result;
}

void __swiftcall SECCredentialInfo.init(modulesAIDs:packageAid:containerSize:requiredMemoryForCredential:)(SEService::SECCredentialInfo *__return_ptr retstr, Swift::OpaquePointer modulesAIDs, Swift::String packageAid, SEService::SECMemoryInfo containerSize, SEService::SECMemoryInfo requiredMemoryForCredential)
{
  v5 = *(containerSize.corSize + 16);
  v6 = *(containerSize.codSize + 16);
  retstr->modulesAIDs = modulesAIDs;
  retstr->packageAid = packageAid;
  *&retstr->containerSize.corSize = *containerSize.corSize;
  retstr->containerSize.nvmSize = v5;
  *&retstr->requiredMemoryForCredential.corSize = *containerSize.codSize;
  retstr->requiredMemoryForCredential.nvmSize = v6;
}

uint64_t SECCredentialInfo.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[5];
  v10 = *(v0 + 3);
  v11 = *(v0 + 3);
  v5 = v0[8];
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0x4173656C75646F6DLL, 0xED0000203A734449);
  v6 = MEMORY[0x1CCA6B440](v2, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA6B380](v6);

  MEMORY[0x1CCA6B380](0x67616B636170200ALL, 0xEE00203A64694165);
  MEMORY[0x1CCA6B380](v1, v3);
  MEMORY[0x1CCA6B380](0xD000000000000011, 0x80000001C7C9FE60);
  v7 = SECMemoryInfo.description.getter();
  MEMORY[0x1CCA6B380](v7);

  MEMORY[0x1CCA6B380](0xD00000000000001FLL, 0x80000001C7C9FE80);
  v8 = SECMemoryInfo.description.getter();
  MEMORY[0x1CCA6B380](v8);

  MEMORY[0x1CCA6B380](10, 0xE100000000000000);
  return 0;
}

unint64_t sub_1C7C6A67C()
{
  v1 = 0x4173656C75646F6DLL;
  v2 = 0x656E6961746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0x416567616B636170;
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

uint64_t sub_1C7C6A714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C6C2F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C6A73C(uint64_t a1)
{
  v2 = sub_1C7C6B93C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C6A778(uint64_t a1)
{
  v2 = sub_1C7C6B93C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SECCredentialInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2655B0, &unk_1C7C95D68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v28 = v1[2];
  v29 = v9;
  v12 = v1[5];
  v26 = v1[4];
  v27 = v11;
  v13 = v1[7];
  v24 = v1[6];
  v25 = v12;
  v14 = v1[8];
  v22 = v13;
  v23 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B93C();

  sub_1C7C7DBA4();
  v30 = v10;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
  sub_1C7C2500C(&unk_1EC2643F0);
  sub_1C7C7DA44();

  if (!v2)
  {
    v16 = v25;
    v17 = v26;
    v18 = v27;
    v19 = v24;
    LOBYTE(v30) = 1;
    sub_1C7C7DA14();
    v30 = v18;
    v31 = v17;
    v32 = v16;
    v33 = 2;
    sub_1C7C6B990();
    sub_1C7C7DA44();
    v30 = v19;
    v31 = v22;
    v32 = v23;
    v33 = 3;
    sub_1C7C7DA44();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SECCredentialInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2655C8, &qword_1C7C95D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B93C();
  sub_1C7C7DB94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
  LOBYTE(v31) = 0;
  sub_1C7C2500C(&qword_1EC264408);
  sub_1C7C7D9B4();
  v11 = v36;
  LOBYTE(v36) = 1;
  v12 = sub_1C7C7D984();
  v29 = v13;
  v30 = v11;
  v28 = v12;
  LOBYTE(v31) = 2;
  sub_1C7C6B9E4();
  sub_1C7C7D9B4();
  v26 = v36;
  v25 = v37;
  v27 = v38;
  v47 = 3;
  sub_1C7C7D9B4();
  (*(v6 + 8))(v9, v5);
  v24 = v45;
  v14 = v46;
  v23 = *(&v45 + 1);
  v15 = v30;
  v16 = v28;
  *&v31 = v30;
  *(&v31 + 1) = v28;
  v17 = v29;
  v18 = v26;
  *&v32 = v29;
  *(&v32 + 1) = v26;
  v19 = v25;
  *&v33 = v25;
  *(&v33 + 1) = v27;
  v34 = v45;
  v35 = v46;
  *(a2 + 64) = v46;
  v20 = v32;
  *a2 = v31;
  *(a2 + 16) = v20;
  v21 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v21;
  sub_1C7C6BA38(&v31, &v36);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = v27;
  v42 = v24;
  v43 = v23;
  v44 = v14;
  return sub_1C7C6BA70(&v36);
}

SEService::SECMemoryInfo __swiftcall SECMemoryInfo.init(corSize:codSize:nvmSize:)(Swift::Int corSize, Swift::Int codSize, Swift::Int nvmSize)
{
  *v3 = corSize;
  v3[1] = codSize;
  v3[2] = nvmSize;
  result.nvmSize = nvmSize;
  result.codSize = codSize;
  result.corSize = corSize;
  return result;
}

uint64_t SECMemoryInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C7C7D794();

  v4 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v4);

  MEMORY[0x1CCA6B380](0x7A6953646F63202CLL, 0xEB00000000203A65);
  v5 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v5);

  MEMORY[0x1CCA6B380](0x7A69536D766E202CLL, 0xEB00000000203A65);
  v6 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v6);

  return 0x3A657A6953726F63;
}

uint64_t sub_1C7C6B020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C6C478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C6B048(uint64_t a1)
{
  v2 = sub_1C7C6BAA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C6B084(uint64_t a1)
{
  v2 = sub_1C7C6BAA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SECMemoryInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2655D8, &qword_1C7C95D80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6BAA0();
  sub_1C7C7DBA4();
  v16 = 0;
  sub_1C7C7DA34();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_1C7C7DA34();
  v14 = 2;
  sub_1C7C7DA34();
  return (*(v5 + 8))(v8, v4);
}

uint64_t SECMemoryInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2655E8, &qword_1C7C95D88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6BAA0();
  sub_1C7C7DB94();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_1C7C7D9A4();
    v18 = 1;
    v16 = sub_1C7C7D9A4();
    v17 = 2;
    v13 = sub_1C7C7D9A4();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

BOOL _s9SEService17SECCredentialInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v20 = a1[7];
  v21 = a1[6];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v18 = a2[6];
  v19 = a1[8];
  v16 = a2[8];
  v17 = a2[7];
  if ((sub_1C7C69B9C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    result = 0;
  }

  else
  {
    v13 = sub_1C7C7DAA4();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v4 == v9 && v5 == v11 && v6 == v10)
  {
    return v21 == v18 && v20 == v17 && v19 == v16;
  }

  return result;
}

uint64_t _s9SEService19SECCredentialConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1C7C7D0D4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SECCredentialConfig() + 20);
  v5 = a1 + v4;
  v6 = *(a1 + v4);
  v7 = *(a1 + v4 + 8);
  v9 = *(a1 + v4 + 16);
  v8 = *(a1 + v4 + 24);
  v10 = *(v5 + 32);
  v11 = (a2 + v4);
  v13 = v11[2];
  v12 = v11[3];
  v14 = v11[4];
  v15 = v6 == *v11 && v7 == v11[1];
  if (v15 || (sub_1C7C7DAA4()) && (sub_1C7C699C4(v9, v13) & 1) != 0 && (v8 == v12 ? (v16 = v10 == v14) : (v16 = 0), v16 || (sub_1C7C7DAA4()))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C7C6B668()
{
  result = qword_1EC265550;
  if (!qword_1EC265550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265550);
  }

  return result;
}

unint64_t sub_1C7C6B6BC()
{
  result = qword_1EC265558;
  if (!qword_1EC265558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265558);
  }

  return result;
}

unint64_t sub_1C7C6B710()
{
  result = qword_1EC265568;
  if (!qword_1EC265568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265568);
  }

  return result;
}

uint64_t sub_1C7C6B764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SECCredentialConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7C6B7C8()
{
  result = qword_1EC265578;
  if (!qword_1EC265578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265578);
  }

  return result;
}

unint64_t sub_1C7C6B81C()
{
  result = qword_1EC265590;
  if (!qword_1EC265590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265590);
  }

  return result;
}

uint64_t sub_1C7C6B870(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC265580, &qword_1C7C95D58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C6B8E8()
{
  result = qword_1EC2655A8;
  if (!qword_1EC2655A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2655A8);
  }

  return result;
}

unint64_t sub_1C7C6B93C()
{
  result = qword_1EC2655B8;
  if (!qword_1EC2655B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2655B8);
  }

  return result;
}

unint64_t sub_1C7C6B990()
{
  result = qword_1EC2655C0;
  if (!qword_1EC2655C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2655C0);
  }

  return result;
}

unint64_t sub_1C7C6B9E4()
{
  result = qword_1EC2655D0;
  if (!qword_1EC2655D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2655D0);
  }

  return result;
}

unint64_t sub_1C7C6BAA0()
{
  result = qword_1EC2655E0;
  if (!qword_1EC2655E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2655E0);
  }

  return result;
}

uint64_t sub_1C7C6BB1C()
{
  result = sub_1C7C7D104();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_1C7C6BBA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C7C6BBEC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C7C6BC68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C7C6BCB0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SECMemoryInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SECMemoryInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1C7C6BDB0()
{
  result = qword_1EC265600;
  if (!qword_1EC265600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265600);
  }

  return result;
}

unint64_t sub_1C7C6BE08()
{
  result = qword_1EC265608;
  if (!qword_1EC265608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265608);
  }

  return result;
}

unint64_t sub_1C7C6BE60()
{
  result = qword_1EC265610;
  if (!qword_1EC265610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265610);
  }

  return result;
}

unint64_t sub_1C7C6BEB8()
{
  result = qword_1EC265618;
  if (!qword_1EC265618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265618);
  }

  return result;
}

unint64_t sub_1C7C6BF10()
{
  result = qword_1EC265620;
  if (!qword_1EC265620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265620);
  }

  return result;
}

unint64_t sub_1C7C6BF68()
{
  result = qword_1EC265628;
  if (!qword_1EC265628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265628);
  }

  return result;
}

unint64_t sub_1C7C6BFC0()
{
  result = qword_1EC265630;
  if (!qword_1EC265630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265630);
  }

  return result;
}

unint64_t sub_1C7C6C018()
{
  result = qword_1EC265638;
  if (!qword_1EC265638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265638);
  }

  return result;
}

unint64_t sub_1C7C6C070()
{
  result = qword_1EC265640;
  if (!qword_1EC265640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265640);
  }

  return result;
}

unint64_t sub_1C7C6C0C8()
{
  result = qword_1EC265648;
  if (!qword_1EC265648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265648);
  }

  return result;
}

unint64_t sub_1C7C6C120()
{
  result = qword_1EC265650;
  if (!qword_1EC265650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265650);
  }

  return result;
}

unint64_t sub_1C7C6C178()
{
  result = qword_1EC265658;
  if (!qword_1EC265658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265658);
  }

  return result;
}

uint64_t sub_1C7C6C1CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6564657263 && a2 == 0xEF73657079546C61;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E4974656C707061 && a2 == 0xEF7365636E617473 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C646E65697266 && a2 == 0xEC000000656D614ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C6C2F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4173656C75646F6DLL && a2 == 0xEB00000000734449;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416567616B636170 && a2 == 0xEA00000000006469 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xED0000657A695372 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001C7C9E5C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C6C478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A6953726F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A6953646F63 && a2 == 0xE700000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A69536D766ELL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t SEState.instances.getter()
{
  v1 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  v9 = v3;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v2 + 16))
    {
      v8 = *(v2 + 32 + 16 * v5);
      sub_1C7BFCFA8(v8, *(&v8 + 1));
      sub_1C7BFAE78(&v9, &v8);
      ++v5;
      sub_1C7BFCF38(v8, *(&v8 + 1));
      if (v4 == v5)
      {
        v6 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);

    sub_1C7BFCF38(v8, *(&v8 + 1));

    __break(1u);
  }

  else
  {
    v6 = v3;
LABEL_7:

    return v6;
  }

  return result;
}

void SEState.hasSunsprite.getter()
{
  v1 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 40);
    while (v4 < *(v2 + 16))
    {
      v6 = *v5;
      if (!(*v5 >> 62))
      {
        v7 = *(v5 - 1);
        v8 = &v7[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
        swift_beginAccess();
        v9 = *v8;
        v10 = *(v8 + 1);
        v11 = v8[16];
        if ((v11 - 1) >= 2)
        {
          if (v8[16] && !(v9 ^ 5 | v10))
          {
            v16 = v7;
            sub_1C7BEA9D8(v9, v10, 3u);
            sub_1C7BEA9D8(5, 0, 3u);

            sub_1C7BFCF38(v7, v6);
            return;
          }
        }

        else
        {
          sub_1C7BDF708(*v8, *(v8 + 1), v8[16]);
        }

        v12 = v7;
        sub_1C7BEA9D8(v9, v10, v11);
        sub_1C7BEA9D8(5, 0, 3u);
        sub_1C7BEA9D8(v9, v10, v11);
        v13 = *v8;
        v14 = *(v8 + 1);
        v15 = v8[16];
        if (v15)
        {
          sub_1C7BDF708(v13, v14, v15);
          sub_1C7BDF708(v13, v14, v15);
          sub_1C7BEA9D8(v13, v14, v15);
          sub_1C7BEA9D8(25, 0, 0);
          sub_1C7BFCF38(v7, v6);
          sub_1C7BEA9D8(v13, v14, v15);
        }

        else
        {
          sub_1C7BEA9D8(v13, v14, 0);
          sub_1C7BEA9D8(25, 0, 0);
          sub_1C7BFCF38(v7, v6);
          if (v13 == 25)
          {

            return;
          }
        }
      }

      ++v4;
      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

uint64_t SEState.friendlyDetails.getter()
{
  v1 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_1C7C72FB0(MEMORY[0x1E69E7CC0]);
  v4 = 0;
  v5 = *(v2 + 16);
  while (1)
  {
    v6 = 16 * v4 + 40;
    do
    {
      if (v5 == v4)
      {

        return v3;
      }

      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      ++v4;
      v7 = v6 + 16;
      v8 = *(v2 + v6);
      v9 = v8 >> 62 == 3 || v8 >> 62 == 0;
      v6 += 16;
    }

    while (!v9);
    v10 = *(v2 + v7 - 24);
    v11 = &v10[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
    swift_beginAccess();
    v13 = *v11;
    v12 = *(v11 + 1);
    v14 = v11[16];
    v33 = v10;
    v34 = v10;
    sub_1C7BFCFA8(v10, v8);
    sub_1C7BDF708(v13, v12, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1C7C70278(v13, v12, v14);
    v18 = v3[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_22;
    }

    v22 = v17;
    if (v3[3] < v21)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v28 = v16;
    sub_1C7C71FF8();
    v16 = v28;
    v24 = v34;
    if (v22)
    {
LABEL_16:
      v25 = v16;
      sub_1C7BEA9D8(v13, v12, v14);
      v26 = v3[7];
      v27 = *(v26 + 8 * v25);
      *(v26 + 8 * v25) = v33;

      sub_1C7BFCF38(v24, v8);
      continue;
    }

LABEL_18:
    v3[(v16 >> 6) + 8] |= 1 << v16;
    v29 = v3[6] + 24 * v16;
    *v29 = v13;
    *(v29 + 8) = v12;
    *(v29 + 16) = v14;
    *(v3[7] + 8 * v16) = v33;

    sub_1C7BFCF38(v24, v8);
    v30 = v3[2];
    v20 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v20)
    {
      goto LABEL_23;
    }

    v3[2] = v31;
  }

  sub_1C7C70798(v21, isUniquelyReferenced_nonNull_native);
  v16 = sub_1C7C70278(v13, v12, v14);
  if ((v22 & 1) == (v23 & 1))
  {
LABEL_15:
    v24 = v34;
    if (v22)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_24:
  result = sub_1C7C7DAF4();
  __break(1u);
  return result;
}

void sub_1C7C6CB5C(uint64_t a1@<X0>, int64x2_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v12 = v3 != 26 || v4 != 0 || v5 != 3;
    v31 = v12;
    v32 = v8;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        return;
      }

      v21 = *(v7 + 16 * v9 + 32);
      v22 = *(v7 + 16 * v9 + 40);
      v23 = v22 >> 62;
      v33 = v21;
      if ((v22 >> 62) > 1)
      {
        break;
      }

      if (!v23)
      {
        v13 = v21.i64[0];
        v37 = v3;
        v38 = v4;
        v39 = v5;
        v14 = v21.i64[0] + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
LABEL_13:
        swift_beginAccess();
        v15 = *v14;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        v34 = v15;
        v35 = v16;
        v36 = v17;
        sub_1C7BFCFA8(v13, v22);
        sub_1C7BFCFA8(v13, v22);
        sub_1C7BDF708(v3, v4, v5);
        v18 = v15;
        v8 = v32;
        sub_1C7BDF708(v18, v16, v17);
        v19 = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(&v37, &v34);
        sub_1C7BEA9D8(v3, v4, v5);
        sub_1C7BFCF38(v13, v22);
        sub_1C7BEA9D8(v34, v35, v36);
        v20 = v33.i64[0];
        if (v19)
        {
          goto LABEL_32;
        }

        goto LABEL_14;
      }

      if (v5 != 2)
      {
        goto LABEL_29;
      }

      v24 = v21.i64[0];
      if (v3 == *(v21.i64[0] + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid) && v4 == *(v21.i64[0] + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid + 8))
      {
        sub_1C7BFCFA8(v21.i64[0], v22);
        sub_1C7BFCFA8(v24, v22);
        sub_1C7BDF708(v3, v4, 2u);
        sub_1C7BEA9D8(v3, v4, 2u);
        sub_1C7BFCF38(v24, v22);
LABEL_32:

LABEL_33:
        v27 = v33;
        goto LABEL_34;
      }

      v26 = sub_1C7C7DAA4();
      sub_1C7BFCFA8(v24, v22);
      sub_1C7BFCFA8(v24, v22);
      sub_1C7BDF708(v3, v4, 2u);
      sub_1C7BEA9D8(v3, v4, 2u);
      sub_1C7BFCF38(v24, v22);
      v20 = v33.i64[0];
      if (v26)
      {
        goto LABEL_32;
      }

LABEL_14:
      ++v9;
      sub_1C7BFCF38(v20, v22);
      if (v8 == v9)
      {
        goto LABEL_30;
      }
    }

    if (v23 == 2)
    {
      if (!v31)
      {
        v28 = v21.i64[0];
        sub_1C7BFCFA8(v21.i64[0], v22);
        v29 = v28;

        sub_1C7BEA9D8(26, 0, 3u);
        sub_1C7BFCF38(v28, v22);
        goto LABEL_33;
      }

LABEL_29:
      sub_1C7BFCFA8(v21.i64[0], v22);
      sub_1C7BDF708(v3, v4, v5);
      sub_1C7BEA9D8(v3, v4, v5);
      v20 = v33.i64[0];
      goto LABEL_14;
    }

    v13 = v21.i64[0];
    v37 = v3;
    v38 = v4;
    v39 = v5;
    v14 = v21.i64[0] + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
    goto LABEL_13;
  }

LABEL_30:

  v27 = vdupq_n_s64(0xF000000000000007);
LABEL_34:
  *a2 = v27;
}

void sub_1C7C6CEA4(uint64_t a1)
{
  v1 = a1;
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1C7C7D6D4();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1C7C25C6C(0, v2 & ~(v2 >> 63), 0);
    v3 = v36;
    if (v30)
    {
      v4 = sub_1C7C7D844();
    }

    else
    {
      v6 = -1 << *(v1 + 32);
      v4 = sub_1C7C7D684();
      v5 = *(v1 + 36);
    }

    v33 = v4;
    v34 = v5;
    v35 = v30 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v28 = v2;
      v29 = v1;
      while (v7 < v2)
      {
        if (__OFADD__(v7, 1))
        {
          goto LABEL_24;
        }

        v15 = v33;
        v16 = v35;
        v31 = v34;
        sub_1C7C72CB0(v32, v33, v34, v35, v1, &qword_1EC263470, 0x1E696AEC0, sub_1C7C70484, type metadata accessor for SEPackageDetails);
        v18 = v17;
        v19 = v32[0];
        v20 = sub_1C7C7D304();
        v22 = v21;

        v23 = v3;
        v36 = v3;
        v24 = *(v3 + 16);
        v25 = *(v23 + 24);
        if (v24 >= v25 >> 1)
        {
          sub_1C7C25C6C((v25 > 1), v24 + 1, 1);
          v23 = v36;
        }

        *(v23 + 16) = v24 + 1;
        v26 = (v23 + 24 * v24);
        v26[4] = v20;
        v26[5] = v22;
        v26[6] = v19;
        if (v30)
        {
          v1 = v29;
          if (!v16)
          {
            goto LABEL_26;
          }

          v3 = v23;
          if (sub_1C7C7D864())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v28;
          v14 = v7 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265790, &qword_1C7C968A0);
          v27 = sub_1C7C7D274();
          sub_1C7C7D8C4();
          v27(v32, 0);
        }

        else
        {
          v3 = v23;
          v1 = v29;
          sub_1C7C72880(v15, v31, v16, v29, &qword_1EC263470, 0x1E696AEC0, sub_1C7C70484);
          v9 = v8;
          v11 = v10;
          v13 = v12;
          sub_1C7C322B0(v15, v31, v16);
          v33 = v9;
          v34 = v11;
          v35 = v13 & 1;
          v2 = v28;
          v14 = v7 + 1;
        }

        ++v7;
        if (v14 == v2)
        {
          sub_1C7C322B0(v33, v34, v35);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t SEState.description.getter()
{
  v1 = v0;
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0x6F6D654D65657246, 0xEC000000203A7972);
  v2 = [*(v0 + OBJC_IVAR____TtC9SEService7SEState_freeMemory) description];
  v3 = sub_1C7C7D304();
  v5 = v4;

  MEMORY[0x1CCA6B380](v3, v5);

  MEMORY[0x1CCA6B380](0x4979726F6D654D0ALL, 0xED0000203A6F666ELL);
  v6 = [*(v1 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) description];
  v7 = sub_1C7C7D304();
  v9 = v8;

  MEMORY[0x1CCA6B380](v7, v9);

  MEMORY[0x1CCA6B380](0xD000000000000011, 0x80000001C7C9FEA0);
  v10 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v11 = *(v1 + v10);

  v13 = MEMORY[0x1CCA6B440](v12, &type metadata for SEStorageCredential);
  v15 = v14;

  MEMORY[0x1CCA6B380](v13, v15);

  MEMORY[0x1CCA6B380](0x3A6570795445530ALL, 0xE900000000000020);
  v16 = *(v1 + OBJC_IVAR____TtC9SEService7SEState_seType);
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      v17 = 0xE300000000000000;
      v18 = 5459781;
    }

    else if (v16 == 4)
    {
      v17 = 0xE400000000000000;
      v18 = 1869509962;
    }

    else
    {
      v17 = 0xE600000000000000;
      v18 = 0x313242534F45;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC9SEService7SEState_seType))
  {
    if (v16 == 1)
    {
      v17 = 0xE300000000000000;
      v18 = 3356496;
    }

    else
    {
      v17 = 0xE600000000000000;
      v18 = 0x303143333750;
    }
  }

  else
  {
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  MEMORY[0x1CCA6B380](v18, v17);

  return 0;
}

uint64_t SEState.stringValue.getter()
{
  swift_getObjectType();
  v0 = sub_1C7C7CFB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1C7C7CFA4();
  sub_1C7C74C20(&qword_1EC264F20, v3, type metadata accessor for SEState);
  v4 = sub_1C7C7CF94();
  v6 = v5;
  v7 = sub_1C7C7D034();
  sub_1C7BDF778(v4, v6);

  return v7;
}

uint64_t SEState.__allocating_init(seType:freeMemory:infoDictionary:)(char *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1C7C73434(a1, a2, a3);

  return v8;
}

uint64_t SEState.init(seType:freeMemory:infoDictionary:)(char *a1, void *a2, uint64_t a3)
{
  v4 = sub_1C7C73434(a1, a2, a3);

  return v4;
}

id SERMemoryInfo.__allocating_init(availableIndices:totalIndices:availablePersistentExcludingIndex:availableCommonPoolPersistent:reservedFlashForSE:reservedFlashForEUICC:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices] = a1;
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices] = a2;
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex] = a3;
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent] = a4;
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE] = a5;
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC] = a6;
  v15.receiver = v13;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id SEState.__allocating_init(seType:freeMemory:seStorageCredentials:memoryInfo:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR____TtC9SEService7SEState_seType] = *a1;
  *&v9[OBJC_IVAR____TtC9SEService7SEState_freeMemory] = a2;
  *&v9[OBJC_IVAR____TtC9SEService7SEState_memoryInfo] = a4;
  *&v9[OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials] = a3;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id SEState.init(seType:freeMemory:seStorageCredentials:memoryInfo:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC9SEService7SEState_seType] = *a1;
  *&v4[OBJC_IVAR____TtC9SEService7SEState_freeMemory] = a2;
  *&v4[OBJC_IVAR____TtC9SEService7SEState_memoryInfo] = a4;
  *&v4[OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials] = a3;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t SEState.debugDescription.getter()
{
  swift_getObjectType();
  sub_1C7C7D794();
  v0 = SEState.description.getter();

  v12 = v0;
  MEMORY[0x1CCA6B380](0x632067756265440ALL, 0xED0000203A65646FLL);
  v1 = sub_1C7C7CFB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1C7C7CFA4();
  sub_1C7C74C20(&qword_1EC264F20, v4, type metadata accessor for SEState);
  v5 = sub_1C7C7CF94();
  v7 = v6;
  v8 = sub_1C7C7D034();
  v10 = v9;
  sub_1C7BDF778(v5, v7);

  MEMORY[0x1CCA6B380](v8, v10);

  return v12;
}

uint64_t SEState.seStorageCredentials.getter()
{
  v1 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SEState.seStorageCredentials.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C7C6DC34()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC288350);
  __swift_project_value_buffer(v0, qword_1EC288350);
  return sub_1C7C7D1A4();
}

Swift::Void __swiftcall SEState.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9SEService7SEState_seType);
  if (v4 > 2 || v4 == 1 || v4 == 2)
  {
    v5 = sub_1C7C7D2E4();

    v6 = sub_1C7C7D2E4();
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

    v7 = *(v2 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    v8 = sub_1C7C7D2E4();
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

    v9 = *(v2 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo);
    v10 = sub_1C7C7D2E4();
    [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

    v11 = sub_1C7C7CEA4();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1C7C7CE94();
    v14 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
    swift_beginAccess();
    v20 = *(v2 + v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656C0, &qword_1C7C96570);
    sub_1C7C7410C(&qword_1EC2656C8, sub_1C7C73A9C);
    v15 = sub_1C7C7CE84();
    v17 = v16;

    v18 = sub_1C7C7D024();
    v19 = sub_1C7C7D2E4();
    [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

    sub_1C7BDF778(v15, v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t SEState.init(coder:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  sub_1C7BED6A8(0, &qword_1EC263470, 0x1E696AEC0);
  v6 = sub_1C7C7D5E4();
  if (!v6)
  {

LABEL_31:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  type metadata accessor for MemoryUsage();
  v8 = sub_1C7C7D5E4();
  if (!v8)
  {

    goto LABEL_31;
  }

  v9 = v8;
  v10._countAndFlagsBits = sub_1C7C7D304();
  SEType.init(plistString:)(v10);
  if (!v11)
  {
    if (v51 != 6)
    {
      v3[OBJC_IVAR____TtC9SEService7SEState_seType] = v51;
      v48 = OBJC_IVAR____TtC9SEService7SEState_freeMemory;
      *&v3[OBJC_IVAR____TtC9SEService7SEState_freeMemory] = v9;
      v12 = type metadata accessor for SERMemoryInfo();
      v13 = v9;
      v14 = sub_1C7C7D5E4();
      v49 = v13;
      if (!v14)
      {
        v15 = objc_allocWithZone(v12);
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices] = 0;
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices] = 0;
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex] = 0;
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent] = 0;
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE] = 0;
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC] = 0;
        v54.receiver = v15;
        v54.super_class = v12;
        v14 = objc_msgSendSuper2(&v54, sel_init);
      }

      v16 = OBJC_IVAR____TtC9SEService7SEState_memoryInfo;
      *&v3[OBJC_IVAR____TtC9SEService7SEState_memoryInfo] = v14;
      sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
      v17 = sub_1C7C7D5E4();
      if (v17)
      {
        v51 = xmmword_1C7C880C0;
        v18 = v17;
        sub_1C7C7D044();

        v13 = 0xF000000000000000;
      }

      type metadata accessor for SEPackageDetails();
      v19 = sub_1C7C7D5F4();
      if (v19)
      {
        sub_1C7C6CEA4(v19);
        v21 = v20;

        if (*(v21 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656D8, &qword_1C7C96578);
          v22 = sub_1C7C7D914();
        }

        else
        {
          v22 = MEMORY[0x1E69E7CC8];
        }

        v47 = v7;
        v48 = ObjectType;
        *&v51 = v22;

        sub_1C7C71AF4(v30, 1, &v51);

        v31 = v51;
        v53 = MEMORY[0x1E69E7CC0];
        v32 = v51 + 64;
        v33 = 1 << *(v51 + 32);
        v34 = -1;
        if (v33 < 64)
        {
          v34 = ~(-1 << v33);
        }

        v35 = v34 & *(v51 + 64);
        v16 = (v33 + 63) >> 6;

        for (i = 0; v35; i = v37)
        {
          v37 = i;
LABEL_26:
          v38 = __clz(__rbit64(v35)) | (v37 << 6);
          v39 = (*(v31 + 48) + 16 * v38);
          v40 = v39[1];
          v41 = *(*(v31 + 56) + 8 * v38);
          *&v51 = *v39;
          *(&v51 + 1) = v40;
          v52 = v41;

          v13 = v41;
          sub_1C7C73BB0(&v53, &v51);
          v35 &= v35 - 1;
        }

        while (1)
        {
          v37 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v37 >= v16)
          {

            *&v3[OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials] = v53;
            v50.receiver = v3;
            v50.super_class = v48;
            v42 = objc_msgSendSuper2(&v50, sel_init);

            return v42;
          }

          v35 = *(v32 + 8 * v37);
          ++i;
          if (v35)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        swift_once();
        v23 = sub_1C7C7D1B4();
        __swift_project_value_buffer(v23, qword_1EC288350);
        sub_1C7BED654(v32, v13);
        v24 = sub_1C7C7D194();
        v25 = sub_1C7C7D584();
        sub_1C7BE49C8(v32, v13);
        if (os_log_type_enabled(v24, v25))
        {
          log = v24;
          v26 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *&v51 = v44;
          *v26 = 136315138;
          v27 = sub_1C7C7D034();
          v45 = v32;
          v29 = sub_1C7BE42F8(v27, v28, &v51);

          *(v26 + 4) = v29;
          _os_log_impl(&dword_1C7B9A000, log, v25, "Failed to decode the SEStorageCredentials: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v44);
          MEMORY[0x1CCA6C990](v44, -1, -1);
          MEMORY[0x1CCA6C990](v26, -1, -1);

          sub_1C7BE49C8(v45, v13);
          goto LABEL_17;
        }

        sub_1C7BE49C8(v32, v13);
      }

      else
      {

LABEL_17:
      }

      goto LABEL_31;
    }

    __break(1u);

    __break(1u);
  }

  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1C7C6E92C()
{
  v1 = 0x657079546573;
  v2 = 0x6E4979726F6D656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x6F6D654D65657266;
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

uint64_t sub_1C7C6E9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C742D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C6E9D4(uint64_t a1)
{
  v2 = sub_1C7C741D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C6EA10(uint64_t a1)
{
  v2 = sub_1C7C741D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SEState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SEState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656F0, &qword_1C7C96580);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C741D8();
  sub_1C7C7DBA4();
  LOBYTE(v16) = *(v3 + OBJC_IVAR____TtC9SEService7SEState_seType);
  LOBYTE(v15) = 0;
  sub_1C7C7422C();
  sub_1C7C7DA44();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    LOBYTE(v15) = 1;
    type metadata accessor for MemoryUsage();
    sub_1C7C74C20(&qword_1EC265240, 255, type metadata accessor for MemoryUsage);
    sub_1C7C7DA44();
    v16 = *(v3 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo);
    LOBYTE(v15) = 2;
    type metadata accessor for SERMemoryInfo();
    sub_1C7C74C20(&qword_1EC265710, v11, type metadata accessor for SERMemoryInfo);
    sub_1C7C7DA44();
    v12 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
    swift_beginAccess();
    v15 = *(v3 + v12);
    v14[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656C0, &qword_1C7C96570);
    sub_1C7C7410C(&qword_1EC2656C8, sub_1C7C73A9C);
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v9, v5);
}

id SEState.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265718, &qword_1C7C96588);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &ObjectType - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C741D8();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    sub_1C7C74280();
    sub_1C7C7D9B4();
    v1[OBJC_IVAR____TtC9SEService7SEState_seType] = v15;
    type metadata accessor for MemoryUsage();
    v16 = 1;
    sub_1C7C74C20(&qword_1EC264410, 255, type metadata accessor for MemoryUsage);
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService7SEState_freeMemory] = v15;
    type metadata accessor for SERMemoryInfo();
    v16 = 2;
    sub_1C7C74C20(&qword_1EC265730, v12, type metadata accessor for SERMemoryInfo);
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService7SEState_memoryInfo] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656C0, &qword_1C7C96570);
    v16 = 3;
    sub_1C7C7410C(&qword_1EC2656E0, sub_1C7C74184);
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials] = v15;
    v14.receiver = v1;
    v14.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

id sub_1C7C6F200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SEState.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id SERMemoryInfo.init(availableIndices:totalIndices:availablePersistentExcludingIndex:availableCommonPoolPersistent:reservedFlashForSE:reservedFlashForEUICC:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices] = a1;
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices] = a2;
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex] = a3;
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent] = a4;
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE] = a5;
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC] = a6;
  v8.receiver = v6;
  v8.super_class = type metadata accessor for SERMemoryInfo();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t static SERMemoryInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC265660 = a1;
  return result;
}

void sub_1C7C6F460(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices);
  v4 = sub_1C7C7D2E4();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices);
  v6 = sub_1C7C7D2E4();
  [a1 encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  v8 = sub_1C7C7D2E4();
  [a1 encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent);
  v10 = sub_1C7C7D2E4();
  [a1 encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE);
  v12 = sub_1C7C7D2E4();
  [a1 encodeInteger:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC);
  v14 = sub_1C7C7D2E4();
  [a1 encodeInteger:v13 forKey:v14];
}

id SERMemoryInfo.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C7C74448(a1);

  return v4;
}

id SERMemoryInfo.init(coder:)(void *a1)
{
  v2 = sub_1C7C74448(a1);

  return v2;
}

id sub_1C7C6F770(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C7C7D2E4();

  return v5;
}

uint64_t sub_1C7C6F7E0()
{
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD000000000000013, 0x80000001C7C9FFD0);
  v8 = *(v0 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices);
  v1 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v1);

  MEMORY[0x1CCA6B380](0xD000000000000010, 0x80000001C7C9FFF0);
  v9 = *(v0 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices);
  v2 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v2);

  MEMORY[0x1CCA6B380](0xD000000000000025, 0x80000001C7CA0010);
  v10 = *(v0 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  v3 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v3);

  MEMORY[0x1CCA6B380](0xD000000000000021, 0x80000001C7CA0040);
  v11 = *(v0 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent);
  v4 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v4);

  MEMORY[0x1CCA6B380](0xD000000000000016, 0x80000001C7CA0070);
  v12 = *(v0 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE);
  v5 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v5);

  MEMORY[0x1CCA6B380](0xD000000000000019, 0x80000001C7CA0090);
  v13 = *(v0 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC);
  v6 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v6);

  MEMORY[0x1CCA6B380](93, 0xE100000000000000);
  return 0;
}

id SERMemoryInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C7C6FADC()
{
  v1 = *v0;
  if (v1 > 2)
  {
    v4 = 0xD000000000000015;
    if (v1 == 4)
    {
      v4 = 0xD000000000000012;
    }

    if (v1 == 3)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x646E496C61746F74;
    if (v1 != 1)
    {
      v2 = 0xD000000000000021;
    }

    if (*v0)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

uint64_t sub_1C7C6FBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C74A1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C6FBDC(uint64_t a1)
{
  v2 = sub_1C7C74638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C6FC18(uint64_t a1)
{
  v2 = sub_1C7C74638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SERMemoryInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SERMemoryInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C7C6FC88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265738, &qword_1C7C96590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C74638();
  sub_1C7C7DBA4();
  v11 = *(v3 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices);
  v18[15] = 0;
  sub_1C7C7DA34();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices);
  v18[14] = 1;
  sub_1C7C7DA34();
  v13 = *(v3 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  v18[13] = 2;
  sub_1C7C7DA34();
  v14 = *(v3 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent);
  v18[12] = 3;
  sub_1C7C7DA34();
  v15 = *(v3 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE);
  v18[11] = 4;
  sub_1C7C7DA34();
  v17 = *(v3 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC);
  v18[10] = 5;
  sub_1C7C7DA34();
  return (*(v6 + 8))(v9, v5);
}

id SERMemoryInfo.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265748, &qword_1C7C96598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C74638();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for SERMemoryInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices] = sub_1C7C7D9A4();
    v14 = 1;
    *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices] = sub_1C7C7D9A4();
    v14 = 2;
    *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex] = sub_1C7C7D9A4();
    v14 = 3;
    *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent] = sub_1C7C7D9A4();
    v14 = 4;
    *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE] = sub_1C7C7D9A4();
    v14 = 5;
    *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC] = sub_1C7C7D9A4();
    v12 = type metadata accessor for SERMemoryInfo();
    v13.receiver = v1;
    v13.super_class = v12;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

id sub_1C7C70188@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for SERMemoryInfo());
  result = SERMemoryInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C7C70200(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C7C7DB64();
  sub_1C7C7D364();
  v6 = sub_1C7C7DB84();

  return sub_1C7C71610(a1, a2, v6);
}

unint64_t sub_1C7C70278(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 40);
  sub_1C7C7DB64();
  CredentialType.hash(into:)();
  v8 = sub_1C7C7DB84();

  return sub_1C7C716C8(a1, a2, a3, v8);
}

unint64_t sub_1C7C70304(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C7C7D714();

  return sub_1C7C7179C(a1, v5);
}

unint64_t sub_1C7C70348(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C7C7D614();
  return sub_1C7C71864(a1, v5, &qword_1EC263460, 0x1E696AFB0);
}

unint64_t sub_1C7C70398(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C7C7D614();
  return sub_1C7C71864(a1, v5, &qword_1EC262ED0, 0x1E695DEF0);
}

unint64_t sub_1C7C703E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1C7C7D104();
  sub_1C7C74C20(&unk_1EC264F40, 255, MEMORY[0x1E69695A8]);
  v5 = sub_1C7C7D284();

  return sub_1C7C71930(a1, v5);
}

unint64_t sub_1C7C70484(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C7C7D614();
  return sub_1C7C71864(a1, v5, &qword_1EC263470, 0x1E696AEC0);
}

uint64_t sub_1C7C704D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
  v38 = a2;
  result = sub_1C7C7D904();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v39 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
        sub_1C7BDF708(v24, v25, v26);
      }

      v27 = *(v8 + 40);
      sub_1C7C7DB64();
      CredentialType.hash(into:)();
      result = sub_1C7C7DB84();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(*(v8 + 56) + 8 * v16) = v39;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C7C70798(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2657E0, &qword_1C7C968C0);
  v40 = a2;
  result = sub_1C7C7D904();
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
      v18 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {
        sub_1C7BDF708(*v23, *(v23 + 8), *(v23 + 16));
        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_1C7C7DB64();
      CredentialType.hash(into:)();
      result = sub_1C7C7DB84();
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
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v41 = (v20 - 1) & v20;
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

uint64_t sub_1C7C70A64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2657D8, &qword_1C7C968B8);
  v38 = a2;
  result = sub_1C7C7D904();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C7C7DB64();
      sub_1C7C7D364();
      result = sub_1C7C7DB84();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C7C70D2C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1C7C7D904();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      v27 = *(v10 + 40);
      result = sub_1C7C7D614();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v7 + 32);
      if (v35 >= 64)
      {
        bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v35;
      }

      *(v7 + 16) = 0;
    }

    v5 = v36;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_1C7C70F8C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1C7C7D104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264608, &qword_1C7C90808);
  v43 = a2;
  result = sub_1C7C7D904();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1C7C74C20(&unk_1EC264F40, 255, MEMORY[0x1E69695A8]);
      result = sub_1C7C7D284();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1C7C7136C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656D8, &qword_1C7C96578);
  v39 = a2;
  result = sub_1C7C7D904();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1C7C7DB64();
      sub_1C7C7D364();
      result = sub_1C7C7DB84();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1C7C71610(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C7C7DAA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C7C716C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v15[0] = a1;
  v15[1] = a2;
  v16 = a3;
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *(v8 + 8);
      v12 = *v8;
      v13 = v9;
      v14 = *(v8 + 16);
      sub_1C7BDF708(v12, v9, v14);
      v10 = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(&v12, v15);
      sub_1C7BEA9D8(v12, v13, v14);
      if (v10)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1C7C7179C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C7C74CE8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1CCA6B730](v9, a1);
      sub_1C7C2D790(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C7C71864(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1C7BED6A8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1C7C7D624();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1C7C71930(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1C7C7D104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1C7C74C20(&unk_1EC265798, 255, MEMORY[0x1E69695A8]);
      v16 = sub_1C7C7D2C4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1C7C71AF4(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1C7C70200(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1C7C7136C(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_1C7C70200(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1C7C7DAF4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_1C7C726C4();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C7C7D794();
    MEMORY[0x1CCA6B380](0xD00000000000001BLL, 0x80000001C7C9EFC0);
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](39, 0xE100000000000000);
    sub_1C7C7D8D4();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v28 = *v5;
      v29 = *a3;

      v10 = v28;
      v30 = sub_1C7C70200(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v29[3] < v34)
      {
        sub_1C7C7136C(v34, 1);
        v35 = *a3;
        v30 = sub_1C7C70200(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_1C7C71E84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
  v2 = *v0;
  v3 = sub_1C7C7D8F4();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = sub_1C7BDF708(v19, v20, v23);
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

id sub_1C7C71FF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2657E0, &qword_1C7C968C0);
  v2 = *v0;
  v3 = sub_1C7C7D8F4();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        sub_1C7BDF708(v19, v20, v23);
        result = v21;
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

void *sub_1C7C72170()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2657D8, &qword_1C7C968B8);
  v2 = *v0;
  v3 = sub_1C7C7D8F4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

id sub_1C7C72300(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C7C7D8F4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_1C7C72450()
{
  v1 = v0;
  v32 = sub_1C7C7D104();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264608, &qword_1C7C90808);
  v4 = *v0;
  v5 = sub_1C7C7D8F4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1C7C726C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656D8, &qword_1C7C96578);
  v2 = *v0;
  v3 = sub_1C7C7D8F4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void sub_1C7C72880(uint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6, void (*a7)())
{
  if (a3)
  {
    if (sub_1C7C7D874() == *(a4 + 36))
    {
      sub_1C7C7D884();
      sub_1C7BED6A8(0, a5, a6);
      swift_dynamicCast();
      a7();
      v12 = v11;

      if (v12)
      {
        sub_1C7C7D854();
        sub_1C7C7D8A4();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1C7C7D6A4();
  v13 = *(a4 + 36);
}

void sub_1C7C72A9C(void *a1, uint64_t a2, int a3, char a4, uint64_t a5, unint64_t *a6, uint64_t *a7, uint64_t (*a8)())
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_1C7C7D8B4();
      sub_1C7BED6A8(0, a6, a7);
      swift_dynamicCast();
      sub_1C7BED6A8(0, &qword_1EC2645D8, 0x1E696AD98);
      swift_dynamicCast();
      *a1 = v19;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_1C7C7D874() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1C7C7D884();
  sub_1C7BED6A8(0, a6, a7);
  swift_dynamicCast();
  a2 = a8();
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v16 = *(*(a5 + 48) + 8 * a2);
  v17 = *(*(a5 + 56) + 8 * a2);
  *a1 = v17;
  v16;
  v18 = v17;
}

void sub_1C7C72CB0(void *a1, uint64_t a2, int a3, char a4, uint64_t a5, unint64_t *a6, uint64_t *a7, uint64_t (*a8)(), void (*a9)(void))
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_1C7C7D8B4();
      sub_1C7BED6A8(0, a6, a7);
      swift_dynamicCast();
      a9(0);
      swift_dynamicCast();
      *a1 = v20;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_1C7C7D874() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1C7C7D884();
  sub_1C7BED6A8(0, a6, a7);
  swift_dynamicCast();
  a2 = a8();
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v17 = *(*(a5 + 48) + 8 * a2);
  v18 = *(*(a5 + 56) + 8 * a2);
  *a1 = v18;
  v17;
  v19 = v18;
}

unint64_t sub_1C7C72E94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
    v3 = sub_1C7C7D914();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_1C7BDF708(v5, v6, v7);
      result = sub_1C7C70278(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C7C72FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2657E0, &qword_1C7C968C0);
    v3 = sub_1C7C7D914();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_1C7BDF708(v5, v6, v7);
      v9 = v8;
      result = sub_1C7C70278(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 24 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C7C730F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2657D8, &qword_1C7C968B8);
    v3 = sub_1C7C7D914();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C7C70200(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C7C73208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2657A8, &qword_1C7C968A8);
    v3 = sub_1C7C7D914();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C7C74C68(v4, v13);
      result = sub_1C7C70304(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C7C74CD8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C7C73338(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C7C7D914();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1C7C70200(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C7C73434(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC9SEService7SEState_seType] = *a1;
  *&v4[OBJC_IVAR____TtC9SEService7SEState_freeMemory] = a2;
  v8 = type metadata accessor for SERMemoryInfo();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices] = 0;
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices] = 0;
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex] = 0;
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent] = 0;
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE] = 0;
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC] = 0;
  v63.receiver = v9;
  v63.super_class = v8;
  v10 = a2;
  v50 = v4;
  *&v4[OBJC_IVAR____TtC9SEService7SEState_memoryInfo] = objc_msgSendSuper2(&v63, sel_init);
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v57 = a3;

  v17 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  v55 = a3 + 64;
  v56 = v15;
  if (!v14)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    while (1)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = *(*(v57 + 56) + ((v17 << 9) | (8 * v19)));
      v21 = &v20[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
      swift_beginAccess();
      v23 = *v21;
      v24 = v21[16];
      if (v24 == 3)
      {
        break;
      }

      if (!v21[16])
      {
        v22.i32[0] = dword_1F474F9E0;
        if (vmaxv_u16(vceq_s16((vmovl_u8(v22).u64[0] & 0xFF00FF00FF00FFLL), (*&vdup_n_s16(v23) & 0xFF00FF00FF00FFLL))))
        {
          v25 = *(v21 + 1);
          v26 = *v21;
          if (v26 <= 0xA)
          {
            if (v26 == 9)
            {
              goto LABEL_34;
            }

            if (v26 == 10)
            {
LABEL_20:
              v28 = 1;
              goto LABEL_36;
            }

            goto LABEL_23;
          }

          if (v26 != 11)
          {
            if (v26 == 12)
            {
              goto LABEL_32;
            }

            goto LABEL_23;
          }

LABEL_35:
          v28 = 3;
          goto LABEL_36;
        }
      }

      v43 = 0;
LABEL_38:
      v45 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C7C2A9FC(0, *(v54 + 16) + 1, 1, v54);
        v54 = result;
      }

      v47 = *(v54 + 16);
      v46 = *(v54 + 24);
      if (v47 >= v46 >> 1)
      {
        result = sub_1C7C2A9FC((v46 > 1), v47 + 1, 1, v54);
        v54 = result;
      }

      *(v54 + 16) = v47 + 1;
      v48 = v54 + 16 * v47;
      *(v48 + 32) = v20;
      *(v48 + 40) = v43;
      v15 = v56;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v25 = *(v21 + 1);
    if ((v23 - 11) > 3)
    {
      v43 = 0;
      goto LABEL_37;
    }

    v27 = v23 & 0xF;
    if (v27 <= 0xC)
    {
      if (v27 != 11)
      {
        if (v27 == 12)
        {
          goto LABEL_20;
        }

        goto LABEL_23;
      }

LABEL_34:
      v28 = 2;
LABEL_36:
      type metadata accessor for SEStorageCredential.Endpoints();
      v44 = swift_allocObject();
      *(v44 + 16) = v28;
      *(v44 + 24) = MEMORY[0x1E69E7CC0];
      v43 = v44 | 0xC000000000000000;
      sub_1C7BDF708(v23, v25, v24);
      sub_1C7BDF708(v23, v25, v24);
LABEL_37:
      v11 = v55;
      goto LABEL_38;
    }

    if (v27 == 13)
    {
      goto LABEL_35;
    }

    if (v27 == 14)
    {
LABEL_32:
      v28 = 0;
      goto LABEL_36;
    }

LABEL_23:
    v29 = v20;
    sub_1C7BDF708(v23, v25, v24);
    v30 = v29;
    sub_1C7BDF708(v23, v25, v24);
    if (qword_1EC262230 != -1)
    {
      swift_once();
    }

    v31 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v31, qword_1EC265818);
    sub_1C7BDF708(v23, v25, v24);
    v32 = sub_1C7C7D194();
    v33 = sub_1C7C7D584();
    sub_1C7BEA9D8(v23, v25, v24);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v62[0] = v52;
      *v34 = 136315138;
      v59 = v23;
      v60 = v25;
      v61 = v24;
      sub_1C7BDF708(v23, v25, v24);
      sub_1C7C7D324();
      v51 = v33;
      v35 = sub_1C7C7D334();
      v53 = v30;
      v37 = v36;

      v38 = sub_1C7BE42F8(v35, v37, v62);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1C7B9A000, v32, v51, "Cannot initalize EndpointType using %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x1CCA6C990](v52, -1, -1);
      MEMORY[0x1CCA6C990](v34, -1, -1);

      sub_1C7BEA9D8(v23, v25, v24);
      v39 = v53;
    }

    else
    {

      sub_1C7BEA9D8(v23, v25, v24);
      v39 = v30;
    }

    sub_1C7C7D794();

    v62[0] = 0xD000000000000024;
    v62[1] = 0x80000001C7CA0150;
    v59 = v23;
    v60 = v25;
    v61 = v24;
    sub_1C7BDF708(v23, v25, v24);
    sub_1C7C7D324();
    v40 = sub_1C7C7D334();
    v42 = v41;

    sub_1C7BEA9D8(v23, v25, v24);
    MEMORY[0x1CCA6B380](v40, v42);

    v11 = v55;
    v15 = v56;
  }

  while (v14);
LABEL_5:
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      *&v50[OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials] = v54;
      v58.receiver = v50;
      v58.super_class = ObjectType;
      return objc_msgSendSuper2(&v58, sel_init);
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C7C73A9C()
{
  result = qword_1EC2656D0;
  if (!qword_1EC2656D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2656D0);
  }

  return result;
}

void *sub_1C7C73B14(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1C7C7D444();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void sub_1C7C73BB0(uint64_t *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = &v6[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
  swift_beginAccess();
  v8 = *(v7 + 1);
  v10 = v7[16];
  v49[0] = *v7;
  v9 = v49[0];
  v49[1] = v8;
  v50 = v10;
  v51 = xmmword_1C7C84BB0;
  v52 = 0;
  v11 = v6;
  sub_1C7BDF708(v49[0], v8, v10);
  if (!_s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(v49, &v51))
  {
    if (v10)
    {
      if (v10 != 3 || __PAIR128__((v9 >= 0xB) + v8 - 1, v9 - 11) >= 4)
      {
        sub_1C7BEA9D8(v9, v8, v10);
LABEL_16:
        v24 = *a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1C7C2A9FC(0, *(v24 + 16) + 1, 1, v24);
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          v24 = sub_1C7C2A9FC((v25 > 1), v26 + 1, 1, v24);
        }

        *(v24 + 16) = v26 + 1;
        v27 = v24 + 16 * v26;
        *(v27 + 32) = v11;
        *(v27 + 40) = 0;
LABEL_21:
        *a1 = v24;
        return;
      }
    }

    else if (!sub_1C7BDF6D8(v9, &unk_1F474FA10))
    {
      goto LABEL_16;
    }

    *&v51 = v9;
    *(&v51 + 1) = v8;
    v52 = v10;
    v19 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
    swift_beginAccess();
    v20 = *&v11[v19];
    if (v20 >> 62)
    {
      if (v20 < 0)
      {
        v42 = *&v11[v19];
      }

      v21 = sub_1C7C7D6D4();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1C7BDF708(v9, v8, v10);
    v22 = sub_1C7C73B14(0x6E776F6E6B6E75, 0xE700000000000000, v21);
    v23 = sub_1C7C78C70(&v51, v22);
    if (v2)
    {

      sub_1C7BEA9D8(v9, v8, v10);
      return;
    }

    v53 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265780, &unk_1C7C95D30);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C7C96560;
    *&v51 = v9;
    *(&v51 + 1) = v8;
    v52 = v10;
    v29 = CredentialType.instanceAID.getter();
    v43 = v30;
    v44 = v29;
    v46 = v9;
    v47 = v8;
    v48 = v10;
    v24 = CredentialType.moduleAID.getter();
    if (!*(v24 + 16))
    {

      __break(1u);
      return;
    }

    sub_1C7BEA9D8(v9, v8, v10);
    if (*(v24 + 16))
    {
      v32 = *(v24 + 32);
      v31 = *(v24 + 40);

      v33 = type metadata accessor for SEApplet();
      v34 = objc_allocWithZone(v33);
      v35 = &v34[OBJC_IVAR____TtC9SEService8SEApplet_identifier];
      *v35 = v44;
      *(v35 + 1) = v43;
      v36 = &v34[OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier];
      *v36 = v32;
      *(v36 + 1) = v31;
      *&v34[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState] = 15;
      v45.receiver = v34;
      v45.super_class = v33;
      *(v28 + 32) = objc_msgSendSuper2(&v45, sel_init);
      v37 = *&v11[v19];
      *&v11[v19] = v28;

      v24 = *a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v39 = *(v24 + 16);
        v38 = *(v24 + 24);
        if (v39 >= v38 >> 1)
        {
          v24 = sub_1C7C2A9FC((v38 > 1), v39 + 1, 1, v24);
        }

        v40 = v53 | 0xC000000000000000;
        *(v24 + 16) = v39 + 1;
        v41 = v24 + 16 * v39;
        *(v41 + 32) = v11;
        *(v41 + 40) = v40;
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    v24 = sub_1C7C2A9FC(0, *(v24 + 16) + 1, 1, v24);
    goto LABEL_25;
  }

  sub_1C7BEA9D8(v9, v8, v10);
  if (qword_1EC262220 != -1)
  {
    swift_once();
  }

  v12 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v12, qword_1EC288350);
  v13 = v11;

  v14 = sub_1C7C7D194();
  v15 = sub_1C7C7D584();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v49[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_1C7BE42F8(0x646F632874696E69, 0xEC000000293A7265, v49);
    *(v16 + 12) = 2048;
    *(v16 + 14) = 161;
    *(v16 + 22) = 2080;

    v18 = sub_1C7BE42F8(v5, v4, v49);

    *(v16 + 24) = v18;
    _os_log_impl(&dword_1C7B9A000, v14, v15, "%s:%ld Dropping Nightmare credential with AID %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v17, -1, -1);
    MEMORY[0x1CCA6C990](v16, -1, -1);
  }
}

uint64_t sub_1C7C7410C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2656C0, &qword_1C7C96570);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C74184()
{
  result = qword_1EC2656E8;
  if (!qword_1EC2656E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2656E8);
  }

  return result;
}

unint64_t sub_1C7C741D8()
{
  result = qword_1EC2656F8;
  if (!qword_1EC2656F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2656F8);
  }

  return result;
}

unint64_t sub_1C7C7422C()
{
  result = qword_1EC265700;
  if (!qword_1EC265700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265700);
  }

  return result;
}

unint64_t sub_1C7C74280()
{
  result = qword_1EC265720;
  if (!qword_1EC265720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265720);
  }

  return result;
}

uint64_t sub_1C7C742D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6D654D65657266 && a2 == 0xEA00000000007972 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E4979726F6D656DLL && a2 == 0xEA00000000006F66 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C7C9FEC0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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