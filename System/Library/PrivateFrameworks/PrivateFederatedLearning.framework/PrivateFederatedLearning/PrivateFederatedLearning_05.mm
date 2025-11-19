uint64_t PFLTaskDiscovery.__allocating_init(for:useCase:taskPreferences:allowsCellularAccess:policy:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t *a7)
{
  v15 = a7[3];
  v16 = a7[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a7, v15);
  v18 = sub_21A42F864(a1, a2, a3, a4, a5, a6, v17, v7, v15, v16);
  __swift_destroy_boxed_opaque_existential_0(a7);
  return v18;
}

uint64_t sub_21A425A3C()
{
  sub_21A451B04();
  sub_21A451144();

  return sub_21A451B24();
}

PrivateFederatedLearning::PFLTaskDiscoveryReachLocation_optional __swiftcall PFLTaskDiscoveryReachLocation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 100;
  if ((rawValue - 100) >= 0xB)
  {
    v2 = 11;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_21A425BB4()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 100);
  return sub_21A451B24();
}

uint64_t sub_21A425C2C()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 100);
  return sub_21A451B24();
}

uint64_t sub_21A425CCC()
{
  *v0;
  *v0;
  *v0;
  sub_21A451144();
}

uint64_t sub_21A425E08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21A430FA4();
  *a2 = result;
  return result;
}

void sub_21A425E38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x72505F4C4D646F44;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x69676174535F4B43;
  if (v2 != 5)
  {
    v5 = 0x69445F6C61636F4CLL;
    v4 = 0xEF79726F74636572;
  }

  v6 = 0xE700000000000000;
  v7 = 0x646F72505F4B43;
  if (v2 != 3)
  {
    v7 = 0x79727261435F4B43;
    v6 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEB00000000797272;
  v9 = 0x61435F4C4D646F44;
  if (v2 != 1)
  {
    v9 = 0x74535F4C4D646F44;
    v8 = 0xED0000676E696761;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEA0000000000646FLL;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_21A425F3C()
{
  v1 = *v0;
  v2 = 0x72505F4C4D646F44;
  v3 = 0x69676174535F4B43;
  if (v1 != 5)
  {
    v3 = 0x69445F6C61636F4CLL;
  }

  v4 = 0x646F72505F4B43;
  if (v1 != 3)
  {
    v4 = 0x79727261435F4B43;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x61435F4C4D646F44;
  if (v1 != 1)
  {
    v5 = 0x74535F4C4D646F44;
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

uint64_t sub_21A42603C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A430FA4();
  *a1 = result;
  return result;
}

uint64_t sub_21A42607C(uint64_t a1)
{
  v2 = sub_21A42F994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A4260B8(uint64_t a1)
{
  v2 = sub_21A42F994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PFLTaskSource.nonprodSource.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  if (v3 == 3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v3 = 4;
  }

  else
  {
    v5 = v1[2];
    v6 = v1[3];
    v4 = *v1;
    result = sub_21A3ED4E4(*v1, v1[1]);
  }

  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_21A426168(uint64_t a1)
{
  v2 = sub_21A42FA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A4261A4(uint64_t a1)
{
  v2 = sub_21A42FA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A4261E0(uint64_t a1)
{
  v2 = sub_21A42FAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A42621C(uint64_t a1)
{
  v2 = sub_21A42FAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A426258(uint64_t a1)
{
  v2 = sub_21A42FA3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A426294(uint64_t a1)
{
  v2 = sub_21A42FA3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A4262D0(uint64_t a1)
{
  v2 = sub_21A42FB8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A42630C(uint64_t a1)
{
  v2 = sub_21A42FB8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A426348(uint64_t a1)
{
  v2 = sub_21A42FBE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A426384(uint64_t a1)
{
  v2 = sub_21A42FBE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A4263C0(uint64_t a1)
{
  v2 = sub_21A42FB38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A4263FC(uint64_t a1)
{
  v2 = sub_21A42FB38();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21A426438()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6150657069636572;
  }

  *v0;
  return result;
}

uint64_t sub_21A42647C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6150657069636572 && a2 == 0xEA00000000006874;
  if (v6 || (sub_21A4519B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021A45C6B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A4519B4();

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

uint64_t sub_21A426574(uint64_t a1)
{
  v2 = sub_21A42F9E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A4265B0(uint64_t a1)
{
  v2 = sub_21A42F9E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PFLTaskSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A38, &qword_21A457F20);
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v62 = v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A40, &qword_21A457F28);
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A48, &qword_21A457F30);
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A50, &qword_21A457F38);
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v53 = v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A58, &qword_21A457F40);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v50 = v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A60, &qword_21A457F48);
  v48 = *(v18 - 8);
  v49 = v18;
  v19 = *(v48 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A68, &qword_21A457F50);
  v47 = *(v22 - 8);
  v23 = *(v47 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v46 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A70, &qword_21A457F58);
  v27 = *(v26 - 8);
  v65 = v26;
  v66 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = v46 - v29;
  v31 = v1[1];
  v46[2] = *v1;
  v32 = v1[3];
  v46[1] = v1[2];
  v46[0] = v32;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A42F994();
  v34 = v30;
  sub_21A451BC4();
  if (v31 > 2)
  {
    if (v31 == 3)
    {
      v71 = 3;
      sub_21A42FAE4();
      v40 = v53;
      v35 = v65;
      sub_21A451934();
      v42 = v54;
      v41 = v55;
    }

    else
    {
      v35 = v65;
      if (v31 != 4)
      {
        if (v31 == 5)
        {
          v73 = 5;
          sub_21A42FA3C();
          v36 = v59;
          sub_21A451934();
          v38 = v60;
          v37 = v61;
          goto LABEL_10;
        }

        goto LABEL_13;
      }

      v72 = 4;
      sub_21A42FA90();
      v40 = v56;
      sub_21A451934();
      v42 = v57;
      v41 = v58;
    }

    (*(v42 + 8))(v40, v41);
    return (*(v66 + 8))(v34, v35);
  }

  if (!v31)
  {
    v68 = 0;
    sub_21A42FBE0();
    v35 = v65;
    sub_21A451934();
    (*(v47 + 8))(v25, v22);
    return (*(v66 + 8))(v34, v35);
  }

  if (v31 == 1)
  {
    v69 = 1;
    sub_21A42FB8C();
    v35 = v65;
    sub_21A451934();
    (*(v48 + 8))(v21, v49);
    return (*(v66 + 8))(v34, v35);
  }

  v35 = v65;
  if (v31 == 2)
  {
    v70 = 2;
    sub_21A42FB38();
    v36 = v50;
    sub_21A451934();
    v38 = v51;
    v37 = v52;
LABEL_10:
    (*(v38 + 8))(v36, v37);
    return (*(v66 + 8))(v30, v35);
  }

LABEL_13:
  v76 = 6;
  sub_21A42F9E8();
  v43 = v62;
  sub_21A451934();
  v75 = 0;
  v44 = v64;
  v45 = v67;
  sub_21A451944();
  if (!v45)
  {
    v74 = 1;
    sub_21A451944();
  }

  (*(v63 + 8))(v43, v44);
  return (*(v66 + 8))(v30, v35);
}

uint64_t PFLTaskSource.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AB8, &qword_21A457F60);
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AC0, &qword_21A457F68);
  v81 = *(v6 - 8);
  v82 = v6;
  v7 = *(v81 + 64);
  MEMORY[0x28223BE20](v6);
  v90 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AC8, &qword_21A457F70);
  v10 = *(v9 - 8);
  v79 = v9;
  v80 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v89 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AD0, &qword_21A457F78);
  v14 = *(v13 - 8);
  v77 = v13;
  v78 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v88 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AD8, &qword_21A457F80);
  v75 = *(v17 - 8);
  v76 = v17;
  v18 = *(v75 + 64);
  MEMORY[0x28223BE20](v17);
  v85 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AE0, &qword_21A457F88);
  v73 = *(v20 - 8);
  v74 = v20;
  v21 = *(v73 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AE8, &qword_21A457F90);
  v72 = *(v24 - 8);
  v25 = *(v72 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v69 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AF0, &qword_21A457F98);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v69 - v31;
  v33 = a1[3];
  v34 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_21A42F994();
  v35 = v92;
  sub_21A451BB4();
  if (v35)
  {
    goto LABEL_11;
  }

  v70 = v24;
  v36 = v23;
  v38 = v88;
  v37 = v89;
  v71 = 0;
  v39 = v90;
  v92 = v29;
  v40 = v28;
  v41 = sub_21A451924();
  if (*(v41 + 16) != 1 || (v42 = *(v41 + 32), v42 == 7))
  {
    v51 = sub_21A4517D4();
    swift_allocError();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AF8, &unk_21A457FA0) + 48);
    *v53 = &type metadata for PFLTaskSource;
    sub_21A4518D4();
    sub_21A4517C4();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
    swift_willThrow();
    (*(v92 + 8))(v32, v40);
  }

  else
  {
    if (*(v41 + 32) > 2u)
    {
      if (*(v41 + 32) <= 4u)
      {
        if (v42 == 3)
        {
          v96 = 3;
          sub_21A42FAE4();
          v43 = v71;
          sub_21A4518C4();
          v44 = v87;
          v45 = v92;
          if (!v43)
          {
            (*(v78 + 8))(v38, v77);
            (*(v45 + 8))(v32, v28);
            swift_unknownObjectRelease();
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 3;
            v50 = v91;
LABEL_32:
            *v44 = v46;
            v44[1] = v49;
            v44[2] = v47;
            v44[3] = v48;
            return __swift_destroy_boxed_opaque_existential_0(v50);
          }
        }

        else
        {
          v97 = 4;
          sub_21A42FA90();
          v60 = v71;
          sub_21A4518C4();
          v44 = v87;
          v45 = v92;
          if (!v60)
          {
            (*(v80 + 8))(v37, v79);
            (*(v45 + 8))(v32, v28);
            swift_unknownObjectRelease();
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 4;
            v50 = v91;
            goto LABEL_32;
          }
        }

        (*(v45 + 8))(v32, v28);
        goto LABEL_10;
      }

      if (v42 == 5)
      {
        v98 = 5;
        sub_21A42FA3C();
        v57 = v71;
        sub_21A4518C4();
        if (!v57)
        {
          (*(v81 + 8))(v39, v82);
          (*(v92 + 8))(v32, v28);
          swift_unknownObjectRelease();
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 5;
          goto LABEL_31;
        }
      }

      else
      {
        v101 = 6;
        sub_21A42F9E8();
        v61 = v86;
        v62 = v71;
        sub_21A4518C4();
        if (!v62)
        {
          v100 = 0;
          v63 = v84;
          v64 = sub_21A4518E4();
          v89 = v32;
          v90 = v65;
          v88 = v64;
          v99 = 1;
          v66 = sub_21A4518E4();
          v67 = (v92 + 8);
          v47 = v66;
          v48 = v68;
          (*(v83 + 8))(v61, v63);
          (*v67)(v89, v28);
          swift_unknownObjectRelease();
          v46 = v88;
          v49 = v90;
          goto LABEL_31;
        }
      }

LABEL_23:
      (*(v92 + 8))(v32, v40);
      goto LABEL_10;
    }

    if (*(v41 + 32))
    {
      v56 = v71;
      if (v42 == 1)
      {
        v94 = 1;
        sub_21A42FB8C();
        sub_21A4518C4();
        if (!v56)
        {
          (*(v73 + 8))(v36, v74);
          (*(v92 + 8))(v32, v40);
          swift_unknownObjectRelease();
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 1;
LABEL_31:
          v50 = v91;
          v44 = v87;
          goto LABEL_32;
        }
      }

      else
      {
        v95 = 2;
        sub_21A42FB38();
        v59 = v85;
        sub_21A4518C4();
        if (!v56)
        {
          (*(v75 + 8))(v59, v76);
          (*(v92 + 8))(v32, v40);
          swift_unknownObjectRelease();
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 2;
          goto LABEL_31;
        }
      }

      goto LABEL_23;
    }

    v93 = 0;
    sub_21A42FBE0();
    v58 = v71;
    sub_21A4518C4();
    if (!v58)
    {
      (*(v72 + 8))(v27, v70);
      (*(v92 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v46 = 0;
      v49 = 0;
      v47 = 0;
      v48 = 0;
      goto LABEL_31;
    }

    (*(v92 + 8))(v32, v28);
  }

LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v50 = v91;
  return __swift_destroy_boxed_opaque_existential_0(v50);
}

uint64_t Dictionary<>.parameter<A>(for:default:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_21A4515F4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v22 - v14;
  if (*(a4 + 16) && (v16 = sub_21A3DCA2C(a1, a2), (v17 & 1) != 0))
  {
    sub_21A3D3B94(*(a4 + 56) + 32 * v16, v22);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28468, &unk_21A455FB0);
  v18 = swift_dynamicCast();
  v19 = *(a5 - 8);
  v20 = *(v19 + 56);
  if (v18)
  {
    v20(v15, 0, 1, a5);
    return (*(v19 + 32))(a6, v15, a5);
  }

  else
  {
    v20(v15, 1, 1, a5);
    return (*(v19 + 16))(a6, a3, a5);
  }
}

uint64_t PFLTaskDiscovery.init(for:useCase:taskPreferences:allowsCellularAccess:policy:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, char a6, uint64_t *a7)
{
  v15 = a7[3];
  v14 = a7[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a7, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_21A42F0E8(a1, a2, a3, a4, a5, a6, v19, v23[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_0(a7);
  return v21;
}

void sub_21A427C04()
{
  v1 = *(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries) = v3;
  }
}

uint64_t sub_21A427C44()
{
  v43 = v0;
  v1 = *(v0 + 1488);
  swift_beginAccess();
  sub_21A42FC34(v1 + 88, v0 + 496);
  v2 = *(v0 + 520);
  sub_21A3D3BF0(v0 + 496, &qword_27CD28B00, &qword_21A457FB8);
  v3 = *(v0 + 1488);
  if (v2)
  {
    sub_21A42FC34((v3 + 11), v0 + 896);
    if (!*(v0 + 920))
    {
      sub_21A3D3BF0(v0 + 896, &qword_27CD28B00, &qword_21A457FB8);
      goto LABEL_16;
    }

    sub_21A3C50DC((v0 + 896), v0 + 536);
    v4 = *(v0 + 560);
    v5 = *(v0 + 568);
    v6 = __swift_project_boxed_opaque_existential_1((v0 + 536), v4);
    v7 = *(v4 - 8);
    v8 = *(v7 + 64) + 15;
    v9 = swift_task_alloc();
    (*(v7 + 16))(v9, v6, v4);
    v10 = *(v5 + 16);
    *(v0 + 800) = swift_getAssociatedTypeWitness();
    *(v0 + 808) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 776));
    sub_21A451294();

    *(v0 + 1568) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries;
    *(v0 + 1576) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_maximumTasksToDeliver;
    *(v0 + 1584) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm;
    *(v0 + 1592) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences;
    *(v0 + 1600) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds;
    *(v0 + 1608) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy;
    v11 = *(v0 + 808);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 776, *(v0 + 800));
    sub_21A451634();
    if (!*(v0 + 960))
    {
LABEL_7:
      __swift_destroy_boxed_opaque_existential_0((v0 + 776));
      __swift_destroy_boxed_opaque_existential_0((v0 + 536));
LABEL_16:
      v29 = *(v0 + 8);

      return v29(0);
    }

    v12 = *(v0 + 1488);
    *(v0 + 1616) = 0;
    v13 = *(v0 + 1576);
    v14 = *(v0 + 1568);
    sub_21A3C50DC((v0 + 936), v0 + 576);
    v15 = *(v12 + v13);
    if (*(v12 + v14) >= v15 && (v15 & 0x8000000000000000) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 576));
      goto LABEL_7;
    }

    v30 = *(v0 + 1592);
    v31 = *(v0 + 1488);
    v32 = &v31[*(v0 + 1608)];
    *(v0 + 1624) = *(v31 + 2);
    *(v0 + 1632) = *(v31 + 3);
    v33 = *(v0 + 600);
    v34 = *(v0 + 608);
    __swift_project_boxed_opaque_existential_1((v0 + 576), v33);
    *(v0 + 1640) = (*(v34 + 48))(v33, v34);
    *(v0 + 1648) = v35;
    *(v0 + 1656) = *(v31 + 4);
    *(v0 + 1664) = *(v31 + 5);
    v36 = *(v32 + 3);
    v37 = *(v32 + 4);
    __swift_project_boxed_opaque_existential_1(v32, v36);
    v38 = *(v37 + 8);
    v41 = (v38 + *v38);
    v39 = v38[1];
    v40 = swift_task_alloc();
    *(v0 + 1672) = v40;
    *v40 = v0;
    v40[1] = sub_21A4293BC;

    return v41(v0 + 1464, v0 + 576, &v31[v30], v36, v37);
  }

  else
  {
    v16 = v3[10];
    __swift_project_boxed_opaque_existential_1(v3 + 6, v3[9]);
    *(v0 + 1496) = v3[2];
    *(v0 + 1504) = v3[3];
    v17 = (*(v16 + 16))();
    v19 = v18;
    *(v0 + 1512) = v17;
    *(v0 + 1520) = v18;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v20 = sub_21A450F24();
    *(v0 + 1528) = __swift_project_value_buffer(v20, qword_27CD28C90);

    v21 = sub_21A450F04();
    v22 = sub_21A451574();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_21A3E2554(v17, v19, &v42);
      _os_log_impl(&dword_21A3C2000, v21, v22, "Start download policy %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x21CEDB220](v24, -1, -1);
      MEMORY[0x21CEDB220](v23, -1, -1);
    }

    v25 = *(v0 + 1488);
    *(v0 + 1536) = *(v25 + 32);
    *(v0 + 1544) = *(v25 + 40);
    v26 = swift_task_alloc();
    *(v0 + 1552) = v26;
    *v26 = v0;
    v26[1] = sub_21A42825C;
    v27 = *(v0 + 1488);

    return sub_21A42E60C(v0 + 616);
  }
}

uint64_t sub_21A42825C()
{
  v2 = *(*v1 + 1552);
  v5 = *v1;
  *(*v1 + 1560) = v0;

  if (v0)
  {
    v3 = sub_21A428AC0;
  }

  else
  {
    v3 = sub_21A428370;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A428370()
{
  v1 = v0[188];
  v2 = v0[187];
  v3 = v0[186];
  swift_beginAccess();
  sub_21A42FCCC((v0 + 77), v3 + 88);
  swift_endAccess();
  v0[152] = v2;
  v0[153] = v1;
  v0[140] = 46;
  v4 = 0xE100000000000000;
  v0[141] = 0xE100000000000000;
  sub_21A3ED2CC();
  v5 = (sub_21A451644() + 16);
  if (*v5)
  {
    v6 = &v5[2 * *v5];
    v7 = *v6;
    v4 = v6[1];
  }

  else
  {
    v7 = 85;
  }

  v8 = v0[193];
  v9 = v0[192];

  if (v9 != v7 || v8 != v4)
  {
    v10 = v0[193];
    v11 = v0[192];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v12 = v0[193];

      v13 = v0[192];
    }
  }

  v14 = v0[190];
  v15 = v0[189];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21A456280;
  *(v16 + 32) = 0x6E6967756C70;
  *(v16 + 40) = 0xE600000000000000;
  v17 = sub_21A451054();

  *(v16 + 48) = v17;
  *(v16 + 56) = 0x64496B736174;
  *(v16 + 64) = 0xE600000000000000;
  v18 = sub_21A451054();

  *(v16 + 72) = v18;
  *(v16 + 80) = 0x6E6F697461636F6CLL;
  *(v16 + 88) = 0xE800000000000000;
  *(v16 + 96) = sub_21A451054();
  *(v16 + 104) = 0x65736143657375;
  *(v16 + 112) = 0xE700000000000000;
  v19 = sub_21A451054();

  *(v16 + 120) = v19;
  *(v16 + 128) = 0x646F43726F727265;
  *(v16 + 136) = 0xE900000000000065;
  *(v16 + 144) = sub_21A4514E4();
  *(v16 + 152) = 0x6D6F44726F727265;
  *(v16 + 160) = 0xEB000000006E6961;
  *(v16 + 168) = sub_21A451054();
  v20 = sub_21A3E57A0(v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = sub_21A451054();
  v0[54] = sub_21A3ED530;
  v0[55] = v21;
  v0[50] = MEMORY[0x277D85DD0];
  v0[51] = 1107296256;
  v0[52] = sub_21A432B2C;
  v0[53] = &block_descriptor_66;
  v23 = _Block_copy(v0 + 50);

  AnalyticsSendEventLazy();

  _Block_release(v23);
  v24 = v0[55];

  v25 = v0[195];
  sub_21A42FC34(v0[186] + 88, (v0 + 112));
  if (!v0[115])
  {
    sub_21A3D3BF0((v0 + 112), &qword_27CD28B00, &qword_21A457FB8);
    goto LABEL_16;
  }

  sub_21A3C50DC(v0 + 56, (v0 + 67));
  v26 = v0[70];
  v27 = v0[71];
  v28 = __swift_project_boxed_opaque_existential_1(v0 + 67, v26);
  v29 = *(v26 - 8);
  v30 = *(v29 + 64) + 15;
  v31 = swift_task_alloc();
  (*(v29 + 16))(v31, v28, v26);
  v32 = *(v27 + 16);
  v0[100] = swift_getAssociatedTypeWitness();
  v0[101] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 97);
  sub_21A451294();

  v0[196] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries;
  v0[197] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_maximumTasksToDeliver;
  v0[198] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm;
  v0[199] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences;
  v0[200] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds;
  v0[201] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy;
  v33 = v0[101];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 97), v0[100]);
  sub_21A451634();
  if (!v0[120])
  {
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
LABEL_16:
    v38 = v0[1];

    return v38(0);
  }

  v34 = v0[186];
  v0[202] = v25;
  v35 = v0[197];
  v36 = v0[196];
  sub_21A3C50DC((v0 + 117), (v0 + 72));
  v37 = *(v34 + v35);
  if (*(v34 + v36) >= v37 && (v37 & 0x8000000000000000) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 72);
    goto LABEL_14;
  }

  v40 = v0[199];
  v41 = v0[186];
  v42 = (v41 + v0[201]);
  v0[203] = v41[2];
  v0[204] = v41[3];
  v43 = v0[75];
  v44 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v43);
  v0[205] = (*(v44 + 48))(v43, v44);
  v0[206] = v45;
  v0[207] = v41[4];
  v0[208] = v41[5];
  v46 = v42[3];
  v47 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v46);
  v48 = *(v47 + 8);
  aBlock = v48 + *v48;
  v49 = v48[1];
  v50 = swift_task_alloc();
  v0[209] = v50;
  *v50 = v0;
  v50[1] = sub_21A4293BC;

  return (aBlock)(v0 + 183, v0 + 72, v41 + v40, v46, v47);
}

uint64_t sub_21A428AC0()
{
  v1 = v0[195];
  v2 = sub_21A450A74();
  [v2 code];

  v0[181] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 92);
  }

  else
  {
    v4 = v0[195];
    v5 = sub_21A450A74();
    v6 = [v5 domain];

    sub_21A451084();
  }

  v7 = v0[188];
  v0[154] = v0[187];
  v0[155] = v7;
  v0[148] = 46;
  v8 = 0xE100000000000000;
  v0[149] = 0xE100000000000000;
  sub_21A3ED2CC();
  v9 = (sub_21A451644() + 16);
  if (*v9)
  {
    v10 = &v9[2 * *v9];
    v11 = *v10;
    v8 = v10[1];
  }

  else
  {
    v11 = 85;
  }

  v12 = v0[193];
  v13 = v0[192];

  if (v13 != v11 || v12 != v8)
  {
    v14 = v0[193];
    v15 = v0[192];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v16 = v0[193];

      v17 = v0[192];
    }
  }

  v64 = v0[195];
  v65 = v0[191];
  v18 = v0[190];
  v19 = v0[189];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21A456280;
  *(v20 + 32) = 0x6E6967756C70;
  *(v20 + 40) = 0xE600000000000000;
  v21 = sub_21A451054();

  *(v20 + 48) = v21;
  *(v20 + 56) = 0x64496B736174;
  *(v20 + 64) = 0xE600000000000000;
  v22 = sub_21A451054();

  *(v20 + 72) = v22;
  *(v20 + 80) = 0x6E6F697461636F6CLL;
  *(v20 + 88) = 0xE800000000000000;
  *(v20 + 96) = sub_21A451054();
  *(v20 + 104) = 0x65736143657375;
  *(v20 + 112) = 0xE700000000000000;
  v23 = sub_21A451054();

  *(v20 + 120) = v23;
  *(v20 + 128) = 0x646F43726F727265;
  *(v20 + 136) = 0xE900000000000065;
  *(v20 + 144) = sub_21A4514E4();
  *(v20 + 152) = 0x6D6F44726F727265;
  *(v20 + 160) = 0xEB000000006E6961;
  v24 = sub_21A451054();

  *(v20 + 168) = v24;
  v25 = sub_21A3E57A0(v20);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = sub_21A451054();
  v0[48] = sub_21A3ED320;
  v0[49] = v26;
  v0[44] = MEMORY[0x277D85DD0];
  v0[45] = 1107296256;
  v0[46] = sub_21A432B2C;
  v0[47] = &block_descriptor_1;
  v28 = _Block_copy(v0 + 44);

  AnalyticsSendEventLazy();

  _Block_release(v28);
  v29 = v0[49];

  swift_willThrow();
  v30 = v64;
  v31 = sub_21A450F04();
  v32 = sub_21A451584();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[195];
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = v34;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_21A3C2000, v31, v32, "Failed to download policy with error %@", v35, 0xCu);
    sub_21A3D3BF0(v36, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v36, -1, -1);
    MEMORY[0x21CEDB220](v35, -1, -1);
  }

  else
  {
  }

  sub_21A42FC34(v0[186] + 88, (v0 + 112));
  if (!v0[115])
  {
    sub_21A3D3BF0((v0 + 112), &qword_27CD28B00, &qword_21A457FB8);
    goto LABEL_22;
  }

  sub_21A3C50DC(v0 + 56, (v0 + 67));
  v39 = v0[70];
  v40 = v0[71];
  v41 = __swift_project_boxed_opaque_existential_1(v0 + 67, v39);
  v42 = *(v39 - 8);
  v43 = *(v42 + 64) + 15;
  v44 = swift_task_alloc();
  (*(v42 + 16))(v44, v41, v39);
  v45 = *(v40 + 16);
  v0[100] = swift_getAssociatedTypeWitness();
  v0[101] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 97);
  sub_21A451294();

  v0[196] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries;
  v0[197] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_maximumTasksToDeliver;
  v0[198] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm;
  v0[199] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences;
  v0[200] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds;
  v0[201] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy;
  v46 = v0[101];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 97), v0[100]);
  sub_21A451634();
  if (!v0[120])
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
LABEL_22:
    v51 = v0[1];

    return v51(0);
  }

  v47 = v0[186];
  v0[202] = 0;
  v48 = v0[197];
  v49 = v0[196];
  sub_21A3C50DC((v0 + 117), (v0 + 72));
  v50 = *(v47 + v48);
  if (*(v47 + v49) >= v50 && (v50 & 0x8000000000000000) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 72);
    goto LABEL_20;
  }

  v53 = v0[199];
  v54 = v0[186];
  v55 = (v54 + v0[201]);
  v0[203] = v54[2];
  v0[204] = v54[3];
  v56 = v0[75];
  v57 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v56);
  v0[205] = (*(v57 + 48))(v56, v57);
  v0[206] = v58;
  v0[207] = v54[4];
  v0[208] = v54[5];
  v59 = v55[3];
  v60 = v55[4];
  __swift_project_boxed_opaque_existential_1(v55, v59);
  v61 = *(v60 + 8);
  aBlock = v61 + *v61;
  v62 = v61[1];
  v63 = swift_task_alloc();
  v0[209] = v63;
  *v63 = v0;
  v63[1] = sub_21A4293BC;

  return (aBlock)(v0 + 183, v0 + 72, v54 + v53, v59, v60);
}

uint64_t sub_21A4293BC()
{
  v1 = *(*v0 + 1672);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A4294B8, 0, 0);
}

uint64_t sub_21A4294B8()
{
  v305 = v0;
  v1 = v0[183];
  v0[210] = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      sub_21A3EC940();
      v2 = swift_allocError();
      *v3 = 52;
      swift_willThrow();
LABEL_10:
      v15 = sub_21A450A74();
      [v15 code];

      v0[180] = v2;
      v16 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
      v301 = v2;
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + 82);
      }

      else
      {
        v17 = sub_21A450A74();
        v18 = [v17 domain];

        sub_21A451084();
      }

      v19 = v0[204];
      v0[176] = v0[203];
      v0[177] = v19;
      v0[166] = 46;
      v20 = 0xE100000000000000;
      v0[167] = 0xE100000000000000;
      sub_21A3ED2CC();
      v21 = (sub_21A451644() + 16);
      if (*v21)
      {
        v22 = &v21[2 * *v21];
        v23 = *v22;
        v20 = v22[1];
      }

      else
      {
        v23 = 85;
      }

      v24 = v0[208];
      v25 = v0[207];

      if (v25 != v23 || v24 != v20)
      {
        v26 = v0[208];
        v27 = v0[207];
        if ((sub_21A4519B4() & 1) == 0)
        {
          v28 = v0[208];

          v29 = v0[207];
        }
      }

      v30 = v0[206];
      v31 = v0[205];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_21A456280;
      *(v32 + 32) = 0x6E6967756C70;
      *(v32 + 40) = 0xE600000000000000;
      v33 = sub_21A451054();

      *(v32 + 48) = v33;
      *(v32 + 56) = 0x64496B736174;
      *(v32 + 64) = 0xE600000000000000;
      v34 = sub_21A451054();

      *(v32 + 72) = v34;
      *(v32 + 80) = 0x6E6F697461636F6CLL;
      *(v32 + 88) = 0xE800000000000000;
      *(v32 + 96) = sub_21A451054();
      *(v32 + 104) = 0x65736143657375;
      *(v32 + 112) = 0xE700000000000000;
      v35 = sub_21A451054();

      *(v32 + 120) = v35;
      *(v32 + 128) = 0x646F43726F727265;
      *(v32 + 136) = 0xE900000000000065;
      *(v32 + 144) = sub_21A4514E4();
      *(v32 + 152) = 0x6D6F44726F727265;
      *(v32 + 160) = 0xEB000000006E6961;
      v36 = sub_21A451054();

      *(v32 + 168) = v36;
      v37 = sub_21A3E57A0(v32);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      v39 = sub_21A451054();
      v0[6] = sub_21A3ED530;
      v0[7] = v38;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_21A432B2C;
      v0[5] = &block_descriptor_9;
      v40 = _Block_copy(v0 + 2);

      AnalyticsSendEventLazy();

      _Block_release(v40);
      v41 = v0[7];

      swift_willThrow();

      goto LABEL_22;
    }

    v298 = v1;
    v300 = v0[202];
  }

  else
  {
    v298 = 0;
    v4 = v0[186];
    v5 = v4 + v0[199];
    v6 = v0[75];
    v7 = v0[76];
    __swift_project_boxed_opaque_existential_1(v0 + 72, v6);
    v9 = *(v4 + 128);
    v8 = *(v4 + 136);
    v10 = type metadata accessor for PFLTaskPreferences(0);
    if ((*(v5 + *(v10 + 24)) & 1) != 0 && (v11 = v0[186] + v0[199] + *(v10 + 20), (v12 = *(v11 + 32)) != 0))
    {
      v13 = *(v11 + 32);
    }

    else
    {
      v12 = sub_21A3E509C(MEMORY[0x277D84F90]);
    }

    v14 = v0[202];
    (*(v7 + 8))(v9, v8, v12, v6, v7);
    v2 = v14;

    if (v14)
    {
      goto LABEL_10;
    }

    v300 = 0;
  }

  v42 = v0[204];
  v43 = v0[203];
  *(v0 + 1744) = 0;
  v0[160] = v43;
  v0[161] = v42;
  v0[158] = 46;
  v44 = 0xE100000000000000;
  v0[159] = 0xE100000000000000;
  v0[211] = sub_21A3ED2CC();
  v45 = (sub_21A451644() + 16);
  if (*v45)
  {
    v46 = &v45[2 * *v45];
    v47 = *v46;
    v44 = v46[1];
  }

  else
  {
    v47 = 85;
  }

  v48 = v0[208];
  v49 = v0[207];

  if (v49 != v47 || v48 != v44)
  {
    v50 = v0[208];
    v51 = v0[207];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v52 = v0[208];

      aBlock = v0[207];
    }
  }

  v53 = v0[206];
  v54 = v0[205];
  v0[212] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_21A456280;
  *(v55 + 32) = 0x6E6967756C70;
  *(v55 + 40) = 0xE600000000000000;
  v56 = sub_21A451054();

  *(v55 + 48) = v56;
  *(v55 + 56) = 0x64496B736174;
  *(v55 + 64) = 0xE600000000000000;
  v57 = sub_21A451054();

  *(v55 + 72) = v57;
  *(v55 + 80) = 0x6E6F697461636F6CLL;
  *(v55 + 88) = 0xE800000000000000;
  *(v55 + 96) = sub_21A451054();
  *(v55 + 104) = 0x65736143657375;
  *(v55 + 112) = 0xE700000000000000;
  v58 = sub_21A451054();

  *(v55 + 120) = v58;
  *(v55 + 128) = 0x646F43726F727265;
  *(v55 + 136) = 0xE900000000000065;
  *(v55 + 144) = sub_21A4514E4();
  *(v55 + 152) = 0x6D6F44726F727265;
  *(v55 + 160) = 0xEB000000006E6961;
  *(v55 + 168) = sub_21A451054();
  v59 = sub_21A3E57A0(v55);
  swift_setDeallocating();
  v0[213] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  v61 = sub_21A451054();
  v0[60] = sub_21A3ED530;
  v0[61] = v60;
  v0[56] = MEMORY[0x277D85DD0];
  v0[57] = 1107296256;
  v0[58] = sub_21A432B2C;
  v0[59] = &block_descriptor_16;
  v62 = _Block_copy(v0 + 56);

  AnalyticsSendEventLazy();

  _Block_release(v62);
  v63 = v0[61];

  if (v0[218])
  {
    sub_21A42FCBC(v298);
    goto LABEL_34;
  }

  if (!v298)
  {
    v95 = v0[199];
    v96 = v0[186];
    v97 = *(v96 + v0[198]);
    v0[214] = v97;
    Current = CFAbsoluteTimeGetCurrent();
    swift_beginAccess();
    v99 = *(v97 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v304 = *(v97 + 16);
    *(v97 + 16) = 0x8000000000000000;
    sub_21A4033E8(0x6E776F446B736154, 0xEC00000064616F6CLL, isUniquelyReferenced_nonNull_native, Current);
    *(v97 + 16) = v304;
    swift_endAccess();
    v101 = v96[9];
    v102 = v96[10];
    __swift_project_boxed_opaque_existential_1(v96 + 6, v101);
    v103 = *(v102 + 24);
    v303 = (v103 + *v103);
    v104 = v103[1];
    v105 = swift_task_alloc();
    v0[215] = v105;
    *v105 = v0;
    v105[1] = sub_21A42BB08;

    return (v303)(v0 + 72, v96 + v95, v101, v102);
  }

  v83 = qword_27CD28170;

  if (v83 != -1)
  {
    swift_once();
  }

  v84 = sub_21A450F24();
  __swift_project_value_buffer(v84, qword_27CD28C90);
  sub_21A3F939C((v0 + 72), (v0 + 107));
  sub_21A3F939C((v0 + 107), (v0 + 102));
  __swift_destroy_boxed_opaque_existential_0(v0 + 107);
  v85 = sub_21A450F04();
  v86 = sub_21A451574();
  v284 = v84;
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v304 = v88;
    *v87 = 136315138;
    v89 = v0[105];
    v90 = v0[106];
    __swift_project_boxed_opaque_existential_1(v0 + 102, v89);
    v91 = (*(v90 + 48))(v89, v90);
    v93 = v92;
    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
    v94 = sub_21A3E2554(v91, v93, &v304);

    *(v87 + 4) = v94;
    _os_log_impl(&dword_21A3C2000, v85, v86, "Recipe %s is ready.", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x21CEDB220](v88, -1, -1);
    MEMORY[0x21CEDB220](v87, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
  }

  v106 = v0[211];
  v107 = v0[204];
  v108 = v0[203];
  v109 = v0[75];
  v110 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v109);
  (*(v110 + 48))(v109, v110);
  v0[162] = v108;
  v0[163] = v107;
  v0[164] = 46;
  v111 = 0xE100000000000000;
  v0[165] = 0xE100000000000000;
  v112 = (sub_21A451644() + 16);
  if (*v112)
  {
    v113 = &v112[2 * *v112];
    v114 = *v113;
    v111 = v113[1];
  }

  else
  {
    v114 = 85;
  }

  v115 = v0[208];
  v116 = v0[207];

  if (v116 != v114 || v115 != v111)
  {
    v117 = v0[208];
    v118 = v0[207];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v119 = v0[208];

      v120 = v0[207];
    }
  }

  v121 = v0[212];
  v288 = v0[204];
  v291 = v0[211];
  v285 = v0[213];
  v287 = v0[203];
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_21A456280;
  *(v122 + 32) = 0x6E6967756C70;
  *(v122 + 40) = 0xE600000000000000;
  v123 = sub_21A451054();

  *(v122 + 48) = v123;
  *(v122 + 56) = 0x64496B736174;
  *(v122 + 64) = 0xE600000000000000;
  v124 = sub_21A451054();

  *(v122 + 72) = v124;
  *(v122 + 80) = 0x6E6F697461636F6CLL;
  *(v122 + 88) = 0xE800000000000000;
  v125 = 0xE100000000000000;
  *(v122 + 96) = sub_21A451054();
  *(v122 + 104) = 0x65736143657375;
  *(v122 + 112) = 0xE700000000000000;
  v126 = sub_21A451054();

  *(v122 + 120) = v126;
  *(v122 + 128) = 0x646F43726F727265;
  *(v122 + 136) = 0xE900000000000065;
  *(v122 + 144) = sub_21A4514E4();
  *(v122 + 152) = 0x6D6F44726F727265;
  *(v122 + 160) = 0xEB000000006E6961;
  *(v122 + 168) = sub_21A451054();
  v127 = sub_21A3E57A0(v122);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v128 = swift_allocObject();
  *(v128 + 16) = v127;
  v129 = sub_21A451054();
  v0[30] = sub_21A3ED530;
  v0[31] = v128;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_21A432B2C;
  v0[29] = &block_descriptor_38;
  v130 = _Block_copy(v0 + 26);

  AnalyticsSendEventLazy();

  _Block_release(v130);
  v131 = v0[31];

  v132 = v0[75];
  v133 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v132);
  (*(v133 + 48))(v132, v133);
  v0[168] = v287;
  v0[169] = v288;
  v0[170] = 46;
  v0[171] = 0xE100000000000000;
  v134 = (sub_21A451644() + 16);
  if (*v134)
  {
    v135 = &v134[2 * *v134];
    v136 = *v135;
    v125 = v135[1];
  }

  else
  {
    v136 = 85;
  }

  v137 = v0[208];
  v138 = v0[207];

  v139 = v0[207];
  if (v138 == v136 && v137 == v125)
  {
    v289 = v0[207];
    v292 = v0[208];
  }

  else
  {
    v140 = sub_21A4519B4();
    v292 = v0[208];
    if ((v140 & 1) == 0)
    {
    }

    v289 = v0[207];
  }

  v141 = v0[212];
  v286 = v0[213];
  v142 = (v0[186] + v0[201]);
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_21A456280;
  *(v143 + 32) = 0x6E6967756C70;
  *(v143 + 40) = 0xE600000000000000;
  v144 = sub_21A451054();

  *(v143 + 48) = v144;
  *(v143 + 56) = 0x64496B736174;
  *(v143 + 64) = 0xE600000000000000;
  v145 = sub_21A451054();

  *(v143 + 72) = v145;
  *(v143 + 80) = 0x6E6F697461636F6CLL;
  *(v143 + 88) = 0xE800000000000000;
  v146 = 0xE100000000000000;
  *(v143 + 96) = sub_21A451054();
  *(v143 + 104) = 0x65736143657375;
  *(v143 + 112) = 0xE700000000000000;
  v147 = sub_21A451054();

  *(v143 + 120) = v147;
  *(v143 + 128) = 0x646F43726F727265;
  *(v143 + 136) = 0xE900000000000065;
  *(v143 + 144) = sub_21A4514E4();
  *(v143 + 152) = 0x6D6F44726F727265;
  *(v143 + 160) = 0xEB000000006E6961;
  *(v143 + 168) = sub_21A451054();
  v148 = sub_21A3E57A0(v143);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v149 = swift_allocObject();
  *(v149 + 16) = v148;
  v150 = sub_21A451054();
  v0[24] = sub_21A3ED530;
  v0[25] = v149;
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_21A432B2C;
  v0[23] = &block_descriptor_45;
  v151 = _Block_copy(v0 + 20);

  AnalyticsSendEventLazy();

  _Block_release(v151);
  v152 = v0[25];

  v153 = v0[75];
  v154 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v153);
  (*(v154 + 48))(v153, v154);
  v155 = v142[3];
  v156 = v142[4];
  __swift_project_boxed_opaque_existential_1(v142, v155);
  (*(v156 + 16))(v298, v289, v292, v155, v156);
  if (!v300)
  {
    v300 = v0 + 8;
    v159 = v0[211];
    v160 = v0[204];
    v0[172] = v0[203];
    v0[173] = v160;
    v0[156] = 46;
    v0[157] = 0xE100000000000000;
    v161 = (sub_21A451644() + 16);
    if (*v161)
    {
      v162 = &v161[2 * *v161];
      v163 = *v162;
      v146 = v162[1];
    }

    else
    {
      v163 = 85;
    }

    v221 = v0[208];
    v222 = v0[207];

    if (v222 == v163 && v221 == v146 || (v223 = v0[208], v224 = v0[207], (sub_21A4519B4() & 1) != 0))
    {
      v192 = 0;
    }

    else
    {
      v229 = v0[208];

      v192 = v0[207];
    }

    v230 = v0[213];
    v231 = v0[212];
    v290 = v0[186];
    v293 = v0[196];
    v232 = swift_allocObject();
    *(v232 + 16) = xmmword_21A456280;
    *(v232 + 32) = 0x6E6967756C70;
    *(v232 + 40) = 0xE600000000000000;
    v233 = sub_21A451054();

    *(v232 + 48) = v233;
    *(v232 + 56) = 0x64496B736174;
    *(v232 + 64) = 0xE600000000000000;
    v234 = sub_21A451054();

    *(v232 + 72) = v234;
    *(v232 + 80) = 0x6E6F697461636F6CLL;
    *(v232 + 88) = 0xE800000000000000;
    *(v232 + 96) = sub_21A451054();
    *(v232 + 104) = 0x65736143657375;
    *(v232 + 112) = 0xE700000000000000;
    v235 = sub_21A451054();

    *(v232 + 120) = v235;
    *(v232 + 128) = 0x646F43726F727265;
    *(v232 + 136) = 0xE900000000000065;
    *(v232 + 144) = sub_21A4514E4();
    *(v232 + 152) = 0x6D6F44726F727265;
    *(v232 + 160) = 0xEB000000006E6961;
    *(v232 + 168) = sub_21A451054();
    v236 = sub_21A3E57A0(v232);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v237 = swift_allocObject();
    *(v237 + 16) = v236;
    v191 = sub_21A451054();
    v0[12] = sub_21A3ED530;
    v0[13] = v237;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_21A432B2C;
    v0[11] = &block_descriptor_59;
    v238 = _Block_copy(v300);

    AnalyticsSendEventLazy();

    _Block_release(v238);
    v239 = v0[13];

    v240 = *&v290[v293];
    v241 = __OFADD__(v240, 1);
    v242 = v240 + 1;
    if (!v241)
    {
      v243 = v0[210];
      *(v0[186] + v0[196]) = v242;
      sub_21A42FCBC(v243);
      v69 = v298;
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_126;
  }

  v157 = sub_21A450A74();
  [v157 code];

  v0[179] = v300;
  v158 = v300;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  }

  else
  {
    v164 = sub_21A450A74();
    v165 = [v164 domain];

    sub_21A451084();
  }

  v166 = v0[211];
  v167 = v0[204];
  v0[138] = v0[203];
  v0[139] = v167;
  v0[174] = 46;
  v168 = 0xE100000000000000;
  v0[175] = 0xE100000000000000;
  v169 = (sub_21A451644() + 16);
  if (*v169)
  {
    v170 = &v169[2 * *v169];
    v171 = *v170;
    v168 = v170[1];
  }

  else
  {
    v171 = 85;
  }

  v172 = v0[208];
  v173 = v0[207];

  if (v173 != v171 || v172 != v168)
  {
    v174 = v0[208];
    v175 = v0[207];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v176 = v0[208];

      v177 = v0[207];
    }
  }

  v178 = v0[213];
  v179 = v0[212];
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_21A456280;
  *(v180 + 32) = 0x6E6967756C70;
  *(v180 + 40) = 0xE600000000000000;
  v181 = sub_21A451054();

  *(v180 + 48) = v181;
  *(v180 + 56) = 0x64496B736174;
  *(v180 + 64) = 0xE600000000000000;
  v182 = sub_21A451054();

  *(v180 + 72) = v182;
  *(v180 + 80) = 0x6E6F697461636F6CLL;
  *(v180 + 88) = 0xE800000000000000;
  *(v180 + 96) = sub_21A451054();
  *(v180 + 104) = 0x65736143657375;
  *(v180 + 112) = 0xE700000000000000;
  v183 = sub_21A451054();

  *(v180 + 120) = v183;
  *(v180 + 128) = 0x646F43726F727265;
  *(v180 + 136) = 0xE900000000000065;
  *(v180 + 144) = sub_21A4514E4();
  *(v180 + 152) = 0x6D6F44726F727265;
  *(v180 + 160) = 0xEB000000006E6961;
  v184 = sub_21A451054();

  *(v180 + 168) = v184;
  v185 = sub_21A3E57A0(v180);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v186 = swift_allocObject();
  *(v186 + 16) = v185;
  v187 = sub_21A451054();
  v0[18] = sub_21A3ED530;
  v0[19] = v186;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_21A432B2C;
  v0[17] = &block_descriptor_52;
  v188 = _Block_copy(v0 + 14);

  AnalyticsSendEventLazy();

  _Block_release(v188);
  v189 = v0[19];

  swift_willThrow();

  v0[184] = v300;
  v190 = v300;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  if (swift_dynamicCast())
  {
    v191 = *(v0 + 1136);
    v192 = v0[143];
    if (qword_27CD28170 == -1)
    {
LABEL_88:
      __swift_project_value_buffer(v284, qword_27CD28C90);
      v193 = v192;
      v194 = v192;
      v195 = sub_21A450F04();
      v196 = sub_21A451574();

      v299 = v191;
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v0[182] = v199;
        *v197 = 136315394;
        *(v197 + 4) = sub_21A3E2554(qword_21A458BA0[v299], 0xE100000000000000, v0 + 182);
        *(v197 + 12) = 2112;
        v200 = v192;
        v201 = _swift_stdlib_bridgeErrorToNSError();
        *(v197 + 14) = v201;
        *v198 = v201;
        _os_log_impl(&dword_21A3C2000, v195, v196, "Failed to download task with location: %s, error %@", v197, 0x16u);
        sub_21A3D3BF0(v198, &qword_27CD28608, &qword_21A456570);
        MEMORY[0x21CEDB220](v198, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v199);
        MEMORY[0x21CEDB220](v199, -1, -1);
        v202 = v197;
        v191 = v299;
        MEMORY[0x21CEDB220](v202, -1, -1);
      }

      v294 = qword_21A458BA0[v191];
      v203 = v0[75];
      v204 = v0[76];
      __swift_project_boxed_opaque_existential_1(v0 + 72, v203);
      (*(v204 + 48))(v203, v204);
      v0[185] = v192;
      v205 = v192;
      if (swift_dynamicCast())
      {
        v206 = *(v0 + 1745);
      }

      else
      {
        v206 = 0;
      }

      sub_21A3EC940();
      v209 = swift_allocError();
      *v210 = v206;
      v211 = sub_21A450A74();
      [v211 code];

      v0[178] = v209;
      v212 = v209;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
      v296 = v192;
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + 122);
      }

      else
      {
        v213 = sub_21A450A74();
        v214 = [v213 domain];

        sub_21A451084();
      }

      v215 = v0[211];
      v216 = v0[204];
      v0[144] = v0[203];
      v0[145] = v216;
      v0[146] = 46;
      v217 = 0xE100000000000000;
      v0[147] = 0xE100000000000000;
      v218 = (sub_21A451644() + 16);
      if (*v218)
      {
        v219 = &v218[2 * *v218];
        v220 = *v219;
        v217 = v219[1];
      }

      else
      {
        v220 = 85;
      }

      v225 = v0[208];
      v226 = v0[207];

      if (v226 != v220 || v225 != v217)
      {
        v227 = v0[208];
        v228 = v0[207];
        if ((sub_21A4519B4() & 1) == 0)
        {
          v244 = v0[208];

          v245 = v0[207];
        }
      }

      v246 = v0[213];
      v247 = v0[212];
      v248 = swift_allocObject();
      *(v248 + 16) = xmmword_21A456280;
      *(v248 + 32) = 0x6E6967756C70;
      *(v248 + 40) = 0xE600000000000000;
      v249 = sub_21A451054();

      *(v248 + 48) = v249;
      *(v248 + 56) = 0x64496B736174;
      *(v248 + 64) = 0xE600000000000000;
      v250 = sub_21A451054();

      *(v248 + 72) = v250;
      *(v248 + 80) = 0x6E6F697461636F6CLL;
      *(v248 + 88) = 0xE800000000000000;
      v251 = 0xE100000000000000;
      *(v248 + 96) = sub_21A451054();
      *(v248 + 104) = 0x65736143657375;
      *(v248 + 112) = 0xE700000000000000;
      v252 = sub_21A451054();

      *(v248 + 120) = v252;
      *(v248 + 128) = 0x646F43726F727265;
      *(v248 + 136) = 0xE900000000000065;
      *(v248 + 144) = sub_21A4514E4();
      *(v248 + 152) = 0x6D6F44726F727265;
      *(v248 + 160) = 0xEB000000006E6961;
      v253 = sub_21A451054();

      *(v248 + 168) = v253;
      v254 = sub_21A3E57A0(v248);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v255 = swift_allocObject();
      *(v255 + 16) = v254;
      v256 = sub_21A451054();
      v0[42] = sub_21A3ED530;
      v0[43] = v255;
      v0[38] = MEMORY[0x277D85DD0];
      v0[39] = 1107296256;
      v0[40] = sub_21A432B2C;
      v0[41] = &block_descriptor_24;
      v257 = _Block_copy(v0 + 38);

      AnalyticsSendEventLazy();

      _Block_release(v257);
      v258 = v0[43];

      if (v299 == 5)
      {
        v259 = v0[211];
        v260 = v0[204];
        v261 = v0[203];
        v262 = v0[75];
        v263 = v0[76];
        __swift_project_boxed_opaque_existential_1(v0 + 72, v262);
        (*(v263 + 48))(v262, v263);
        v0[150] = v261;
        v0[151] = v260;
        v0[136] = 46;
        v0[137] = 0xE100000000000000;
        v264 = (sub_21A451644() + 16);
        if (*v264)
        {
          v265 = &v264[2 * *v264];
          v266 = *v265;
          v251 = v265[1];
        }

        else
        {
          v266 = 85;
        }

        v267 = v0[208];
        v268 = v0[207];

        if (v268 != v266 || v267 != v251)
        {
          v269 = v0[208];
          v270 = v0[207];
          if ((sub_21A4519B4() & 1) == 0)
          {
            v271 = v0[208];

            v272 = v0[207];
          }
        }

        v273 = v0[213];
        v274 = v0[212];
        v295 = v0[210];
        v275 = swift_allocObject();
        *(v275 + 16) = xmmword_21A456280;
        *(v275 + 32) = 0x6E6967756C70;
        *(v275 + 40) = 0xE600000000000000;
        v276 = sub_21A451054();

        *(v275 + 48) = v276;
        *(v275 + 56) = 0x64496B736174;
        *(v275 + 64) = 0xE600000000000000;
        v277 = sub_21A451054();

        *(v275 + 72) = v277;
        *(v275 + 80) = 0x6E6F697461636F6CLL;
        *(v275 + 88) = 0xE800000000000000;
        *(v275 + 96) = sub_21A451054();
        *(v275 + 104) = 0x65736143657375;
        *(v275 + 112) = 0xE700000000000000;
        v278 = sub_21A451054();

        *(v275 + 120) = v278;
        *(v275 + 128) = 0x646F43726F727265;
        *(v275 + 136) = 0xE900000000000065;
        *(v275 + 144) = sub_21A4514E4();
        *(v275 + 152) = 0x6D6F44726F727265;
        *(v275 + 160) = 0xEB000000006E6961;
        *(v275 + 168) = sub_21A451054();
        v279 = sub_21A3E57A0(v275);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v280 = swift_allocObject();
        *(v280 + 16) = v279;
        v281 = sub_21A451054();
        v0[36] = sub_21A3ED530;
        v0[37] = v280;
        v0[32] = MEMORY[0x277D85DD0];
        v0[33] = 1107296256;
        v0[34] = sub_21A432B2C;
        v0[35] = &block_descriptor_31;
        v282 = _Block_copy(v0 + 32);

        AnalyticsSendEventLazy();

        _Block_release(v282);
        v283 = v0[37];

        sub_21A42FCBC(v295);
        goto LABEL_22;
      }

      v207 = v0[210];

      v208 = v296;
      goto LABEL_117;
    }

LABEL_126:
    swift_once();
    goto LABEL_88;
  }

  v207 = v0[210];
  v208 = v300;
LABEL_117:

  sub_21A42FCBC(v207);
LABEL_22:
  v300 = 0;
LABEL_34:
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  v64 = v0[101];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 97), v0[100]);
  sub_21A451634();
  if (!v0[120])
  {
    v69 = 0;
    goto LABEL_40;
  }

  v0[202] = v300;
  v65 = v0[197];
  v66 = v0[196];
  v67 = v0[186];
  sub_21A3C50DC((v0 + 117), (v0 + 72));
  v68 = *(v67 + v65);
  if (*(v67 + v66) >= v68 && (v68 & 0x8000000000000000) == 0)
  {
    v69 = 0;
LABEL_38:
    __swift_destroy_boxed_opaque_existential_0(v0 + 72);
LABEL_40:
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
    v70 = v0[1];

    return v70(v69);
  }

  v72 = v0[199];
  v73 = v0[186];
  v74 = (v73 + v0[201]);
  v0[203] = v73[2];
  v0[204] = v73[3];
  v75 = v0[75];
  v76 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v75);
  v0[205] = (*(v76 + 48))(v75, v76);
  v0[206] = v77;
  v0[207] = v73[4];
  v0[208] = v73[5];
  v78 = v74[3];
  v79 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v78);
  v80 = *(v79 + 8);
  v302 = (v80 + *v80);
  v81 = v80[1];
  v82 = swift_task_alloc();
  v0[209] = v82;
  *v82 = v0;
  v82[1] = sub_21A4293BC;

  return (v302)(v0 + 183, v0 + 72, v73 + v72, v78, v79);
}

uint64_t sub_21A42BB08(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1720);
  v6 = *v2;
  *(*v2 + 1728) = v1;

  if (v1)
  {
    v7 = sub_21A42D894;
  }

  else
  {
    *(v4 + 1736) = a1;
    v7 = sub_21A42BC30;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21A42BC30()
{
  v228 = v0;
  v1 = v0[214];
  v2 = v0[200];
  v3 = v0[186];
  *(v3 + v2) = sub_21A402C48(0x6E776F446B736154, 0xEC00000064616F6CLL);
  v224 = v0[217];
  v223 = v0[216];
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v211 = sub_21A450F24();
  __swift_project_value_buffer(v211, qword_27CD28C90);
  sub_21A3F939C((v0 + 72), (v0 + 107));
  sub_21A3F939C((v0 + 107), (v0 + 102));
  __swift_destroy_boxed_opaque_existential_0(v0 + 107);
  v4 = sub_21A450F04();
  v5 = sub_21A451574();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v227 = v7;
    *v6 = 136315138;
    v8 = v0[105];
    v9 = v0[106];
    __swift_project_boxed_opaque_existential_1(v0 + 102, v8);
    v10 = (*(v9 + 48))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
    v13 = sub_21A3E2554(v10, v12, &v227);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_21A3C2000, v4, v5, "Recipe %s is ready.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x21CEDB220](v7, -1, -1);
    MEMORY[0x21CEDB220](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
  }

  v14 = v0[211];
  v15 = v0[204];
  v16 = v0[203];
  v17 = v0[75];
  v18 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v17);
  (*(v18 + 48))(v17, v18);
  v0[162] = v16;
  v0[163] = v15;
  v0[164] = 46;
  v19 = 0xE100000000000000;
  v0[165] = 0xE100000000000000;
  v20 = (sub_21A451644() + 16);
  if (*v20)
  {
    v21 = &v20[2 * *v20];
    v22 = *v21;
    v19 = v21[1];
  }

  else
  {
    v22 = 85;
  }

  v23 = v0[208];
  v24 = v0[207];

  if (v24 != v22 || v23 != v19)
  {
    v25 = v0[208];
    v26 = v0[207];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v27 = v0[208];

      v212 = v0[207];
    }
  }

  v28 = v0[212];
  v215 = v0[204];
  v217 = v0[211];
  v214 = v0[203];
  v213 = v0[213];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21A456280;
  *(v29 + 32) = 0x6E6967756C70;
  *(v29 + 40) = 0xE600000000000000;
  v30 = sub_21A451054();

  *(v29 + 48) = v30;
  *(v29 + 56) = 0x64496B736174;
  *(v29 + 64) = 0xE600000000000000;
  v31 = sub_21A451054();

  *(v29 + 72) = v31;
  *(v29 + 80) = 0x6E6F697461636F6CLL;
  *(v29 + 88) = 0xE800000000000000;
  v32 = 0xE100000000000000;
  *(v29 + 96) = sub_21A451054();
  *(v29 + 104) = 0x65736143657375;
  *(v29 + 112) = 0xE700000000000000;
  v33 = sub_21A451054();

  *(v29 + 120) = v33;
  *(v29 + 128) = 0x646F43726F727265;
  *(v29 + 136) = 0xE900000000000065;
  *(v29 + 144) = sub_21A4514E4();
  *(v29 + 152) = 0x6D6F44726F727265;
  *(v29 + 160) = 0xEB000000006E6961;
  *(v29 + 168) = sub_21A451054();
  v34 = sub_21A3E57A0(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v36 = sub_21A451054();
  v0[30] = sub_21A3ED530;
  v0[31] = v35;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_21A432B2C;
  v0[29] = &block_descriptor_38;
  v37 = _Block_copy(v0 + 26);

  AnalyticsSendEventLazy();

  _Block_release(v37);
  v38 = v0[31];

  v39 = v0[75];
  v40 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v39);
  (*(v40 + 48))(v39, v40);
  v0[168] = v214;
  v0[169] = v215;
  v0[170] = 46;
  v0[171] = 0xE100000000000000;
  v41 = (sub_21A451644() + 16);
  if (*v41)
  {
    v42 = &v41[2 * *v41];
    v43 = *v42;
    v32 = v42[1];
  }

  else
  {
    v43 = 85;
  }

  v44 = v0[208];
  v45 = v0[207];

  v46 = v0[207];
  if (v45 == v43 && v44 == v32)
  {
    v216 = v0[207];
    v218 = v0[208];
  }

  else
  {
    v47 = sub_21A4519B4();
    v218 = v0[208];
    if ((v47 & 1) == 0)
    {
    }

    v216 = v0[207];
  }

  v48 = v0[213];
  v49 = v0[212];
  v50 = (v0[186] + v0[201]);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_21A456280;
  *(v51 + 32) = 0x6E6967756C70;
  *(v51 + 40) = 0xE600000000000000;
  v52 = sub_21A451054();

  *(v51 + 48) = v52;
  *(v51 + 56) = 0x64496B736174;
  *(v51 + 64) = 0xE600000000000000;
  v53 = sub_21A451054();

  *(v51 + 72) = v53;
  *(v51 + 80) = 0x6E6F697461636F6CLL;
  *(v51 + 88) = 0xE800000000000000;
  v54 = 0xE100000000000000;
  *(v51 + 96) = sub_21A451054();
  *(v51 + 104) = 0x65736143657375;
  *(v51 + 112) = 0xE700000000000000;
  v55 = sub_21A451054();

  *(v51 + 120) = v55;
  *(v51 + 128) = 0x646F43726F727265;
  *(v51 + 136) = 0xE900000000000065;
  *(v51 + 144) = sub_21A4514E4();
  *(v51 + 152) = 0x6D6F44726F727265;
  *(v51 + 160) = 0xEB000000006E6961;
  *(v51 + 168) = sub_21A451054();
  v56 = sub_21A3E57A0(v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  v58 = sub_21A451054();
  v0[24] = sub_21A3ED530;
  v0[25] = v57;
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_21A432B2C;
  v0[23] = &block_descriptor_45;
  v59 = _Block_copy(v0 + 20);

  AnalyticsSendEventLazy();

  _Block_release(v59);
  v60 = v0[25];

  v61 = v0[75];
  v62 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v61);
  (*(v62 + 48))(v61, v62);
  v63 = v50[3];
  v64 = v50[4];
  __swift_project_boxed_opaque_existential_1(v50, v63);
  (*(v64 + 16))(v224, v216, v218, v63, v64);
  if (!v223)
  {
    v67 = v0[211];
    v68 = v0[204];
    v0[172] = v0[203];
    v0[173] = v68;
    v0[156] = 46;
    v0[157] = 0xE100000000000000;
    v69 = (sub_21A451644() + 16);
    if (*v69)
    {
      v70 = &v69[2 * *v69];
      v71 = *v70;
      v54 = v70[1];
    }

    else
    {
      v71 = 85;
    }

    v129 = v0[208];
    v130 = v0[207];

    if (v130 == v71 && v129 == v54 || (v131 = v0[208], v132 = v0[207], (sub_21A4519B4() & 1) != 0))
    {
      v100 = 0;
    }

    else
    {
      v137 = v0[208];

      v100 = v0[207];
    }

    v138 = v0[213];
    v139 = v0[212];
    v223 = v0[196];
    v219 = v0[186];
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_21A456280;
    *(v140 + 32) = 0x6E6967756C70;
    *(v140 + 40) = 0xE600000000000000;
    v141 = sub_21A451054();

    *(v140 + 48) = v141;
    *(v140 + 56) = 0x64496B736174;
    *(v140 + 64) = 0xE600000000000000;
    v142 = sub_21A451054();

    *(v140 + 72) = v142;
    *(v140 + 80) = 0x6E6F697461636F6CLL;
    *(v140 + 88) = 0xE800000000000000;
    *(v140 + 96) = sub_21A451054();
    *(v140 + 104) = 0x65736143657375;
    *(v140 + 112) = 0xE700000000000000;
    v143 = sub_21A451054();

    *(v140 + 120) = v143;
    *(v140 + 128) = 0x646F43726F727265;
    *(v140 + 136) = 0xE900000000000065;
    *(v140 + 144) = sub_21A4514E4();
    *(v140 + 152) = 0x6D6F44726F727265;
    *(v140 + 160) = 0xEB000000006E6961;
    *(v140 + 168) = sub_21A451054();
    v144 = sub_21A3E57A0(v140);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v145 = swift_allocObject();
    *(v145 + 16) = v144;
    v99 = sub_21A451054();
    v0[12] = sub_21A3ED530;
    v0[13] = v145;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_21A432B2C;
    v0[11] = &block_descriptor_59;
    v146 = _Block_copy(v0 + 8);

    AnalyticsSendEventLazy();

    _Block_release(v146);
    v147 = v0[13];

    v148 = *&v223[v219];
    v149 = __OFADD__(v148, 1);
    v150 = v148 + 1;
    if (!v149)
    {
      v151 = v0[210];
      *(v0[186] + v0[196]) = v150;
      sub_21A42FCBC(v151);
      goto LABEL_79;
    }

    __break(1u);
LABEL_88:
    swift_once();
    goto LABEL_39;
  }

  v65 = sub_21A450A74();
  [v65 code];

  v0[179] = v223;
  v66 = v223;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  }

  else
  {
    v72 = sub_21A450A74();
    v73 = [v72 domain];

    sub_21A451084();
  }

  v74 = v0[211];
  v75 = v0[204];
  v0[138] = v0[203];
  v0[139] = v75;
  v0[174] = 46;
  v76 = 0xE100000000000000;
  v0[175] = 0xE100000000000000;
  v77 = (sub_21A451644() + 16);
  if (*v77)
  {
    v78 = &v77[2 * *v77];
    v79 = *v78;
    v76 = v78[1];
  }

  else
  {
    v79 = 85;
  }

  v80 = v0[208];
  v81 = v0[207];

  if (v81 != v79 || v80 != v76)
  {
    v82 = v0[208];
    v83 = v0[207];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v84 = v0[208];

      v85 = v0[207];
    }
  }

  v86 = v0[213];
  v87 = v0[212];
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_21A456280;
  *(v88 + 32) = 0x6E6967756C70;
  *(v88 + 40) = 0xE600000000000000;
  v89 = sub_21A451054();

  *(v88 + 48) = v89;
  *(v88 + 56) = 0x64496B736174;
  *(v88 + 64) = 0xE600000000000000;
  v90 = sub_21A451054();

  *(v88 + 72) = v90;
  *(v88 + 80) = 0x6E6F697461636F6CLL;
  *(v88 + 88) = 0xE800000000000000;
  *(v88 + 96) = sub_21A451054();
  *(v88 + 104) = 0x65736143657375;
  *(v88 + 112) = 0xE700000000000000;
  v91 = sub_21A451054();

  *(v88 + 120) = v91;
  *(v88 + 128) = 0x646F43726F727265;
  *(v88 + 136) = 0xE900000000000065;
  *(v88 + 144) = sub_21A4514E4();
  *(v88 + 152) = 0x6D6F44726F727265;
  *(v88 + 160) = 0xEB000000006E6961;
  v92 = sub_21A451054();

  *(v88 + 168) = v92;
  v93 = sub_21A3E57A0(v88);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v94 = swift_allocObject();
  *(v94 + 16) = v93;
  v95 = sub_21A451054();
  v0[18] = sub_21A3ED530;
  v0[19] = v94;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_21A432B2C;
  v0[17] = &block_descriptor_52;
  v96 = _Block_copy(v0 + 14);

  AnalyticsSendEventLazy();

  _Block_release(v96);
  v97 = v0[19];

  swift_willThrow();

  v0[184] = v223;
  v98 = v223;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v115 = v0[210];
    v116 = v223;
LABEL_68:

    v175 = v115;
    goto LABEL_76;
  }

  v99 = *(v0 + 1136);
  v100 = v0[143];
  if (qword_27CD28170 != -1)
  {
    goto LABEL_88;
  }

LABEL_39:
  __swift_project_value_buffer(v211, qword_27CD28C90);
  v101 = v100;
  v102 = v100;
  v103 = sub_21A450F04();
  v104 = sub_21A451574();

  v225 = v99;
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v0[182] = v107;
    *v105 = 136315394;
    *(v105 + 4) = sub_21A3E2554(qword_21A458BA0[v225], 0xE100000000000000, v0 + 182);
    *(v105 + 12) = 2112;
    v108 = v100;
    v109 = _swift_stdlib_bridgeErrorToNSError();
    *(v105 + 14) = v109;
    *v106 = v109;
    _os_log_impl(&dword_21A3C2000, v103, v104, "Failed to download task with location: %s, error %@", v105, 0x16u);
    sub_21A3D3BF0(v106, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v106, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v107);
    MEMORY[0x21CEDB220](v107, -1, -1);
    v110 = v105;
    v99 = v225;
    MEMORY[0x21CEDB220](v110, -1, -1);
  }

  aBlock = qword_21A458BA0[v99];
  v111 = v0[75];
  v112 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v111);
  (*(v112 + 48))(v111, v112);
  v0[185] = v100;
  v113 = v100;
  if (swift_dynamicCast())
  {
    v114 = *(v0 + 1745);
  }

  else
  {
    v114 = 0;
  }

  sub_21A3EC940();
  v117 = swift_allocError();
  *v118 = v114;
  v119 = sub_21A450A74();
  [v119 code];

  v0[178] = v117;
  v120 = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  v222 = v100;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 122);
  }

  else
  {
    v121 = sub_21A450A74();
    v122 = [v121 domain];

    sub_21A451084();
  }

  v123 = v0[211];
  v124 = v0[204];
  v0[144] = v0[203];
  v0[145] = v124;
  v0[146] = 46;
  v125 = 0xE100000000000000;
  v0[147] = 0xE100000000000000;
  v126 = (sub_21A451644() + 16);
  if (*v126)
  {
    v127 = &v126[2 * *v126];
    v128 = *v127;
    v125 = v127[1];
  }

  else
  {
    v128 = 85;
  }

  v133 = v0[208];
  v134 = v0[207];

  if (v134 != v128 || v133 != v125)
  {
    v135 = v0[208];
    v136 = v0[207];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v152 = v0[208];

      v153 = v0[207];
    }
  }

  v154 = v0[213];
  v155 = v0[212];
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_21A456280;
  *(v156 + 32) = 0x6E6967756C70;
  *(v156 + 40) = 0xE600000000000000;
  v157 = sub_21A451054();

  *(v156 + 48) = v157;
  *(v156 + 56) = 0x64496B736174;
  *(v156 + 64) = 0xE600000000000000;
  v158 = sub_21A451054();

  *(v156 + 72) = v158;
  *(v156 + 80) = 0x6E6F697461636F6CLL;
  *(v156 + 88) = 0xE800000000000000;
  v159 = 0xE100000000000000;
  *(v156 + 96) = sub_21A451054();
  *(v156 + 104) = 0x65736143657375;
  *(v156 + 112) = 0xE700000000000000;
  v160 = sub_21A451054();

  *(v156 + 120) = v160;
  *(v156 + 128) = 0x646F43726F727265;
  *(v156 + 136) = 0xE900000000000065;
  *(v156 + 144) = sub_21A4514E4();
  *(v156 + 152) = 0x6D6F44726F727265;
  *(v156 + 160) = 0xEB000000006E6961;
  v161 = sub_21A451054();

  *(v156 + 168) = v161;
  v162 = sub_21A3E57A0(v156);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v163 = swift_allocObject();
  *(v163 + 16) = v162;
  v164 = sub_21A451054();
  v0[42] = sub_21A3ED530;
  v0[43] = v163;
  v0[38] = MEMORY[0x277D85DD0];
  v0[39] = 1107296256;
  v0[40] = sub_21A432B2C;
  v0[41] = &block_descriptor_24;
  v165 = _Block_copy(v0 + 38);

  AnalyticsSendEventLazy();

  _Block_release(v165);
  v166 = v0[43];

  if (v225 != 5)
  {
    v115 = v0[210];

    v116 = v222;
    goto LABEL_68;
  }

  v167 = v0[211];
  v168 = v0[204];
  v169 = v0[203];
  v170 = v0[75];
  v171 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v170);
  (*(v171 + 48))(v170, v171);
  v0[150] = v169;
  v0[151] = v168;
  v0[136] = 46;
  v0[137] = 0xE100000000000000;
  v172 = (sub_21A451644() + 16);
  if (*v172)
  {
    v173 = &v172[2 * *v172];
    v174 = *v173;
    v159 = v173[1];
  }

  else
  {
    v174 = 85;
  }

  v176 = v0[208];
  v177 = v0[207];

  if (v177 != v174 || v176 != v159)
  {
    v178 = v0[208];
    v179 = v0[207];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v180 = v0[208];

      v181 = v0[207];
    }
  }

  v182 = v0[213];
  v183 = v0[212];
  aBlocka = v0[210];
  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_21A456280;
  *(v184 + 32) = 0x6E6967756C70;
  *(v184 + 40) = 0xE600000000000000;
  v185 = sub_21A451054();

  *(v184 + 48) = v185;
  *(v184 + 56) = 0x64496B736174;
  *(v184 + 64) = 0xE600000000000000;
  v186 = sub_21A451054();

  *(v184 + 72) = v186;
  *(v184 + 80) = 0x6E6F697461636F6CLL;
  *(v184 + 88) = 0xE800000000000000;
  *(v184 + 96) = sub_21A451054();
  *(v184 + 104) = 0x65736143657375;
  *(v184 + 112) = 0xE700000000000000;
  v187 = sub_21A451054();

  *(v184 + 120) = v187;
  *(v184 + 128) = 0x646F43726F727265;
  *(v184 + 136) = 0xE900000000000065;
  *(v184 + 144) = sub_21A4514E4();
  *(v184 + 152) = 0x6D6F44726F727265;
  *(v184 + 160) = 0xEB000000006E6961;
  *(v184 + 168) = sub_21A451054();
  v188 = sub_21A3E57A0(v184);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v189 = swift_allocObject();
  *(v189 + 16) = v188;
  v190 = sub_21A451054();
  v0[36] = sub_21A3ED530;
  v0[37] = v189;
  v0[32] = MEMORY[0x277D85DD0];
  v0[33] = 1107296256;
  v0[34] = sub_21A432B2C;
  v0[35] = &block_descriptor_31;
  v191 = _Block_copy(v0 + 32);

  AnalyticsSendEventLazy();

  _Block_release(v191);
  v192 = v0[37];

  v175 = aBlocka;
LABEL_76:
  sub_21A42FCBC(v175);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  v193 = v0[101];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 97), v0[100]);
  sub_21A451634();
  if (!v0[120])
  {
    v224 = 0;
    goto LABEL_81;
  }

  v0[202] = 0;
  v194 = v0[197];
  v195 = v0[196];
  v196 = v0[186];
  sub_21A3C50DC((v0 + 117), (v0 + 72));
  v197 = *(v196 + v194);
  if (*(v196 + v195) >= v197)
  {
    v224 = 0;
    if ((v197 & 0x8000000000000000) == 0)
    {
LABEL_79:
      __swift_destroy_boxed_opaque_existential_0(v0 + 72);
LABEL_81:
      __swift_destroy_boxed_opaque_existential_0(v0 + 97);
      __swift_destroy_boxed_opaque_existential_0(v0 + 67);
      v198 = v0[1];

      return v198(v224);
    }
  }

  v200 = v0[199];
  v201 = v0[186];
  v202 = (v201 + v0[201]);
  v0[203] = v201[2];
  v0[204] = v201[3];
  v203 = v0[75];
  v204 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v203);
  v0[205] = (*(v204 + 48))(v203, v204);
  v0[206] = v205;
  v0[207] = v201[4];
  v0[208] = v201[5];
  v206 = v202[3];
  v207 = v202[4];
  __swift_project_boxed_opaque_existential_1(v202, v206);
  v208 = *(v207 + 8);
  v226 = (v208 + *v208);
  v209 = v208[1];
  v210 = swift_task_alloc();
  v0[209] = v210;
  *v210 = v0;
  v210[1] = sub_21A4293BC;

  return (v226)(v0 + 183, v0 + 72, v201 + v200, v206, v207);
}

uint64_t sub_21A42D894()
{
  v1 = v0[216];
  v0[184] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = v0[210];
    v21 = v1;
LABEL_25:

    v59 = v20;
    goto LABEL_33;
  }

  v3 = *(v0 + 1136);
  v4 = v0[143];
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v5 = sub_21A450F24();
  __swift_project_value_buffer(v5, qword_27CD28C90);
  v6 = v4;
  v7 = v4;
  v8 = sub_21A450F04();
  v9 = sub_21A451574();

  v101 = v1;
  v102 = v3;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v0[182] = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_21A3E2554(qword_21A458BA0[v102], 0xE100000000000000, v0 + 182);
    *(v10 + 12) = 2112;
    v13 = v4;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_21A3C2000, v8, v9, "Failed to download task with location: %s, error %@", v10, 0x16u);
    sub_21A3D3BF0(v11, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v15 = v12;
    v3 = v102;
    MEMORY[0x21CEDB220](v15, -1, -1);
    MEMORY[0x21CEDB220](v10, -1, -1);
  }

  v97 = qword_21A458BA0[v3];
  v16 = v0[75];
  v17 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v16);
  (*(v17 + 48))(v16, v17);
  v0[185] = v4;
  v18 = v4;
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 1745);
  }

  else
  {
    v19 = 0;
  }

  sub_21A3EC940();
  v22 = swift_allocError();
  *v23 = v19;
  v24 = sub_21A450A74();
  [v24 code];

  v0[178] = v22;
  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  v98 = v22;
  v100 = v4;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 122);
  }

  else
  {
    v26 = sub_21A450A74();
    v27 = [v26 domain];

    sub_21A451084();
  }

  v28 = v0[211];
  v29 = v0[204];
  v0[144] = v0[203];
  v0[145] = v29;
  v0[146] = 46;
  v30 = 0xE100000000000000;
  v0[147] = 0xE100000000000000;
  v31 = (sub_21A451644() + 16);
  if (*v31)
  {
    v32 = &v31[2 * *v31];
    v33 = *v32;
    v30 = v32[1];
  }

  else
  {
    v33 = 85;
  }

  v34 = v0[208];
  v35 = v0[207];

  if (v35 != v33 || v34 != v30)
  {
    v36 = v0[208];
    v37 = v0[207];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v38 = v0[208];

      v95 = v0[207];
    }
  }

  v39 = v0[212];
  v96 = v0[213];
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_21A456280;
  *(v40 + 32) = 0x6E6967756C70;
  *(v40 + 40) = 0xE600000000000000;
  v41 = sub_21A451054();

  *(v40 + 48) = v41;
  *(v40 + 56) = 0x64496B736174;
  *(v40 + 64) = 0xE600000000000000;
  v42 = sub_21A451054();

  *(v40 + 72) = v42;
  *(v40 + 80) = 0x6E6F697461636F6CLL;
  *(v40 + 88) = 0xE800000000000000;
  v43 = 0xE100000000000000;
  *(v40 + 96) = sub_21A451054();
  *(v40 + 104) = 0x65736143657375;
  *(v40 + 112) = 0xE700000000000000;
  v44 = sub_21A451054();

  *(v40 + 120) = v44;
  *(v40 + 128) = 0x646F43726F727265;
  *(v40 + 136) = 0xE900000000000065;
  *(v40 + 144) = sub_21A4514E4();
  *(v40 + 152) = 0x6D6F44726F727265;
  *(v40 + 160) = 0xEB000000006E6961;
  v45 = sub_21A451054();

  *(v40 + 168) = v45;
  v46 = sub_21A3E57A0(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  v48 = sub_21A451054();
  v0[42] = sub_21A3ED530;
  v0[43] = v47;
  v0[38] = MEMORY[0x277D85DD0];
  v0[39] = 1107296256;
  v0[40] = sub_21A432B2C;
  v0[41] = &block_descriptor_24;
  v49 = _Block_copy(v0 + 38);

  AnalyticsSendEventLazy();

  _Block_release(v49);
  v50 = v0[43];

  if (v102 != 5)
  {
    v20 = v0[210];

    v21 = v100;
    goto LABEL_25;
  }

  v51 = v0[211];
  v52 = v0[204];
  v53 = v0[203];
  v54 = v0[75];
  v55 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v54);
  (*(v55 + 48))(v54, v55);
  v0[150] = v53;
  v0[151] = v52;
  v0[136] = 46;
  v0[137] = 0xE100000000000000;
  v56 = (sub_21A451644() + 16);
  if (*v56)
  {
    v57 = &v56[2 * *v56];
    v58 = *v57;
    v43 = v57[1];
  }

  else
  {
    v58 = 85;
  }

  v60 = v0[208];
  v61 = v0[207];

  if (v61 != v58 || v60 != v43)
  {
    v62 = v0[208];
    v63 = v0[207];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v64 = v0[208];

      v65 = v0[207];
    }
  }

  v66 = v0[213];
  v67 = v0[212];
  v99 = v0[210];
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_21A456280;
  *(v68 + 32) = 0x6E6967756C70;
  *(v68 + 40) = 0xE600000000000000;
  v69 = sub_21A451054();

  *(v68 + 48) = v69;
  *(v68 + 56) = 0x64496B736174;
  *(v68 + 64) = 0xE600000000000000;
  v70 = sub_21A451054();

  *(v68 + 72) = v70;
  *(v68 + 80) = 0x6E6F697461636F6CLL;
  *(v68 + 88) = 0xE800000000000000;
  *(v68 + 96) = sub_21A451054();
  *(v68 + 104) = 0x65736143657375;
  *(v68 + 112) = 0xE700000000000000;
  v71 = sub_21A451054();

  *(v68 + 120) = v71;
  *(v68 + 128) = 0x646F43726F727265;
  *(v68 + 136) = 0xE900000000000065;
  *(v68 + 144) = sub_21A4514E4();
  *(v68 + 152) = 0x6D6F44726F727265;
  *(v68 + 160) = 0xEB000000006E6961;
  *(v68 + 168) = sub_21A451054();
  v72 = sub_21A3E57A0(v68);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  v74 = sub_21A451054();
  v0[36] = sub_21A3ED530;
  v0[37] = v73;
  v0[32] = MEMORY[0x277D85DD0];
  v0[33] = 1107296256;
  v0[34] = sub_21A432B2C;
  v0[35] = &block_descriptor_31;
  v75 = _Block_copy(v0 + 32);

  AnalyticsSendEventLazy();

  _Block_release(v75);
  v76 = v0[37];

  v59 = v99;
LABEL_33:
  sub_21A42FCBC(v59);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  v77 = v0[101];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 97), v0[100]);
  sub_21A451634();
  if (!v0[120])
  {
LABEL_37:
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
    v82 = v0[1];

    return v82(0);
  }

  v0[202] = 0;
  v78 = v0[197];
  v79 = v0[196];
  v80 = v0[186];
  sub_21A3C50DC((v0 + 117), (v0 + 72));
  v81 = *(v80 + v78);
  if (*(v80 + v79) >= v81 && (v81 & 0x8000000000000000) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 72);
    goto LABEL_37;
  }

  v84 = v0[199];
  v85 = v0[186];
  v86 = (v85 + v0[201]);
  v0[203] = v85[2];
  v0[204] = v85[3];
  v87 = v0[75];
  v88 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v87);
  v0[205] = (*(v88 + 48))(v87, v88);
  v0[206] = v89;
  v0[207] = v85[4];
  v0[208] = v85[5];
  v90 = v86[3];
  v91 = v86[4];
  __swift_project_boxed_opaque_existential_1(v86, v90);
  v92 = *(v91 + 8);
  v103 = (v92 + *v92);
  v93 = v92[1];
  v94 = swift_task_alloc();
  v0[209] = v94;
  *v94 = v0;
  v94[1] = sub_21A4293BC;

  return (v103)(v0 + 183, v0 + 72, v85 + v84, v90, v91);
}

unint64_t sub_21A42E500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455F00;
  strcpy((inited + 32), "PolicyDownload");
  *(inited + 47) = -18;
  v2 = MEMORY[0x277D839F8];
  *(inited + 48) = *(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policyDownloadTimeSeconds);
  *(inited + 72) = v2;
  strcpy((inited + 80), "TaskDownload");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v3 = *(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds);
  *(inited + 120) = v2;
  *(inited + 96) = v3;
  v4 = sub_21A3E4F6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_21A42E60C(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_21A42E62C, 0, 0);
}

uint64_t sub_21A42E62C()
{
  v1 = v0[16];
  v2 = *(v1 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm);
  v0[17] = v2;
  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  v4 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_21A4033E8(0x6F447963696C6F50, 0xEE0064616F6C6E77, isUniquelyReferenced_nonNull_native, Current);
  *(v2 + 16) = v16;
  swift_endAccess();
  v6 = v1[9];
  v7 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v6);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v7 + 8);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_21A42E7FC;
  v13 = v0[15];

  return v15(v13, v8, v9, v6, v7);
}

uint64_t sub_21A42E7FC()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  *(v3 + 152) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21A42E930, 0, 0);
  }
}

uint64_t sub_21A42E930()
{
  v20 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 24))(v3, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(*(v0 + 120));
    v5 = *(v0 + 8);
  }

  else
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 120);
    v7 = sub_21A450F24();
    __swift_project_value_buffer(v7, qword_27CD28C90);
    sub_21A3F939C(v6, v0 + 16);
    v8 = sub_21A450F04();
    v9 = sub_21A451574();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      sub_21A3F939C(v0 + 16, v0 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28BC8, &qword_21A458B88);
      v12 = sub_21A4510C4();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v15 = sub_21A3E2554(v12, v14, &v19);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_21A3C2000, v8, v9, "Policy downloaded %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x21CEDB220](v11, -1, -1);
      MEMORY[0x21CEDB220](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    v16 = *(v0 + 128);
    v17 = *(v0 + 136);
    *(v16 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policyDownloadTimeSeconds) = sub_21A402C48(0x6F447963696C6F50, 0xEE0064616F6C6E77);
    v5 = *(v0 + 8);
  }

  return v5();
}

void *PFLTaskDiscovery.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_0(v0 + 6);
  sub_21A3D3BF0((v0 + 11), &qword_27CD28B00, &qword_21A457FB8);
  v3 = v0[17];

  sub_21A3D843C(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy));
  v4 = *(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm);

  return v0;
}

uint64_t PFLTaskDiscovery.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_0(v0 + 6);
  sub_21A3D3BF0((v0 + 11), &qword_27CD28B00, &qword_21A457FB8);
  v3 = v0[17];

  sub_21A3D843C(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy));
  v4 = *(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21A42ECCC(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21A42ED60;

  return sub_21A427C24();
}

uint64_t sub_21A42ED60(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_21A42EE74(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_21A4513E4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[4] = v4;
  v3[5] = v6;

  return MEMORY[0x2822009F8](sub_21A42EF08, v4, v6);
}

uint64_t sub_21A42EF08()
{
  v1 = **(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21A42EF9C;

  return sub_21A427C24();
}

uint64_t sub_21A42EF9C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_21A42F0C4, v5, v4);
}

uint64_t sub_21A42F0E8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47[3] = a9;
  v47[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a7, a9);
  *(a8 + 88) = 0u;
  *(a8 + 104) = 0u;
  *(a8 + 120) = 0;
  *(a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries) = 0;
  v17 = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm;
  type metadata accessor for PerformanceMeasure();
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x277D84F98];
  *(a8 + v17) = v18;
  *(a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policyDownloadTimeSeconds) = 0;
  *(a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds) = 0;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  v41 = a3;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  v19 = type metadata accessor for PFLTaskPreferences(0);
  v20 = (a5 + *(v19 + 20));
  v21 = (v20 + *(type metadata accessor for PFLDecodableTaskParameters(0) + 48));
  v22 = *v21;
  v39 = v21[1];
  if (*(a5 + *(v19 + 24)) == 1)
  {
    v23 = v20[1];
    if (v23 == 6)
    {
      v23 = a5[1];
      if (v23 == 3)
      {
        v38 = *v21;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v23 = 4;
LABEL_10:
        *&v43 = v24;
        *(&v43 + 1) = v23;
        v44 = v25;
        v45 = v26;
        v27 = type metadata accessor for PFLCKTaskDownloader();
        swift_allocObject();

        sub_21A3ED4E4(v24, v23);
        v28 = sub_21A3E8C70(&v43, v38, v39, v41, a4, a6 & 1);
        v45 = v27;
        v46 = &off_282B40358;
        sub_21A3ED49C(v24, v23);
        goto LABEL_12;
      }

      v25 = a5[2];
      v26 = a5[3];
      v24 = *a5;
    }

    else
    {
      v25 = v20[2];
      v26 = v20[3];
      v24 = *v20;
    }
  }

  else
  {
    v24 = *a5;
    v23 = a5[1];
    v25 = a5[2];
    v26 = a5[3];
  }

  sub_21A3ED4E4(v24, v23);
  if (v23 < 6)
  {
    v38 = v22;
    goto LABEL_10;
  }

  v29 = type metadata accessor for PFLLocalTaskDownloader();
  v28 = swift_allocObject();
  v28[2] = v24;
  v28[3] = v23;
  v28[4] = v25;
  v28[5] = v26;
  v45 = v29;
  v46 = &off_282B40FF0;

  sub_21A3ED49C(v24, v23);
LABEL_12:
  *&v43 = v28;
  sub_21A3C50DC(&v43, a8 + 48);
  type metadata accessor for PopulationSegmentation();
  swift_initStackObject();
  sub_21A401DA8();
  *&v43 = 0x2D676553706F50;
  *(&v43 + 1) = 0xE700000000000000;
  sub_21A3ED2CC();
  v30 = sub_21A451654();
  MEMORY[0x21CED98B0](v30);

  v31 = sub_21A402528(v43, *(&v43 + 1));
  v33 = v32;

  if (v33)
  {
  }

  else
  {
    v34 = sub_21A3ECA44(100) + 1;
    if (v34 <= 100)
    {
      if (v34 < 91)
      {
        if (v34 <= 80)
        {
          v31 = 0x6E69617274;
        }

        else
        {
          v31 = 7102838;
        }

        if (v34 <= 80)
        {
          v33 = 0xE500000000000000;
        }

        else
        {
          v33 = 0xE300000000000000;
        }
      }

      else
      {
        v33 = 0xE400000000000000;
        v31 = 1953719668;
      }
    }

    else
    {
      v33 = 0xEB00000000646572;
      v31 = 0x6574736575716573;
    }

    *&v43 = 0x2D676553706F50;
    *(&v43 + 1) = 0xE700000000000000;
    v35 = sub_21A451654();
    MEMORY[0x21CED98B0](v35);

    sub_21A4023B0(v43, *(&v43 + 1), v31, v33);
  }

  *(a8 + 128) = v31;
  *(a8 + 136) = v33;
  sub_21A3D83D8(a5, a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences);
  sub_21A3F939C(v47, a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy);
  v36 = (*(a10 + 24))(a5, a9);
  sub_21A3D843C(a5);
  *(a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_maximumTasksToDeliver) = v36;
  __swift_destroy_boxed_opaque_existential_0(v47);
  return a8;
}

uint64_t _s24PrivateFederatedLearning13PFLTaskSourceO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v21[0] = v3;
  v21[1] = v4;
  v21[2] = v5;
  v21[3] = v6;
  v21[4] = v7;
  v21[5] = v8;
  v21[6] = v9;
  v21[7] = v10;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        if (v8 != 3)
        {
          goto LABEL_26;
        }

        break;
      case 4:
        if (v8 != 4)
        {
          goto LABEL_26;
        }

        break;
      case 5:
        if (v8 != 5)
        {
          goto LABEL_26;
        }

        break;
      default:
LABEL_16:
        if (v8 >= 6)
        {
          if (v3 == v7 && v4 == v8)
          {
            goto LABEL_21;
          }

          v11 = v7;
          v12 = v8;
          v13 = v9;
          v14 = v10;
          v15 = sub_21A4519B4();
          v9 = v13;
          v10 = v14;
          v8 = v12;
          v16 = v15;
          v7 = v11;
          if (v16)
          {
LABEL_21:
            if (v5 == v9 && v6 == v10)
            {
              sub_21A3ED4E4(v7, v8);
              v17 = 1;
            }

            else
            {
              v19 = v7;
              v20 = v8;
              v17 = sub_21A4519B4();
              sub_21A3ED4E4(v19, v20);
            }

            goto LABEL_27;
          }
        }

LABEL_26:
        sub_21A3ED4E4(v7, v8);
        v17 = 0;
LABEL_27:
        sub_21A3ED4E4(v3, v4);
        goto LABEL_28;
    }
  }

  else
  {
    if (!v4)
    {
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (v4 != 1)
    {
      if (v4 == 2)
      {
        if (v8 == 2)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v8 != 1)
    {
      goto LABEL_26;
    }
  }

LABEL_24:
  v17 = 1;
LABEL_28:
  sub_21A3D3BF0(v21, &qword_27CD28628, &unk_21A458B90);
  return v17 & 1;
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

uint64_t sub_21A42F864(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a6;
  v24 = a5;
  v15 = *(a9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PFLTaskDiscovery();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v15 + 16))(v18, a7, a9);
  return sub_21A42F0E8(a1, a2, a3, a4, v24, v25, v18, v22, a9, a10);
}

unint64_t sub_21A42F994()
{
  result = qword_27CD28A78;
  if (!qword_27CD28A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A78);
  }

  return result;
}

unint64_t sub_21A42F9E8()
{
  result = qword_27CD28A80;
  if (!qword_27CD28A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A80);
  }

  return result;
}

unint64_t sub_21A42FA3C()
{
  result = qword_27CD28A88;
  if (!qword_27CD28A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A88);
  }

  return result;
}

unint64_t sub_21A42FA90()
{
  result = qword_27CD28A90;
  if (!qword_27CD28A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A90);
  }

  return result;
}

unint64_t sub_21A42FAE4()
{
  result = qword_27CD28A98;
  if (!qword_27CD28A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A98);
  }

  return result;
}

unint64_t sub_21A42FB38()
{
  result = qword_27CD28AA0;
  if (!qword_27CD28AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28AA0);
  }

  return result;
}

unint64_t sub_21A42FB8C()
{
  result = qword_27CD28AA8;
  if (!qword_27CD28AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28AA8);
  }

  return result;
}

unint64_t sub_21A42FBE0()
{
  result = qword_27CD28AB0;
  if (!qword_27CD28AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28AB0);
  }

  return result;
}

uint64_t sub_21A42FC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28B00, &qword_21A457FB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21A42FCBC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_21A42FCCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28B00, &qword_21A457FB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A42FD40()
{
  result = qword_27CD28B08;
  if (!qword_27CD28B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B08);
  }

  return result;
}

unint64_t sub_21A42FD98()
{
  result = qword_27CD28B10;
  if (!qword_27CD28B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD28B18, &qword_21A458098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B10);
  }

  return result;
}

unint64_t sub_21A42FE00()
{
  result = qword_27CD28B20;
  if (!qword_27CD28B20)
  {
    type metadata accessor for PFLTaskDiscovery();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B20);
  }

  return result;
}

uint64_t type metadata accessor for PFLTaskDiscovery()
{
  result = qword_27CD28B28;
  if (!qword_27CD28B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PFLTaskDiscoveryReachLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PFLTaskDiscoveryReachLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24PrivateFederatedLearning13PFLTaskSourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21A430024(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 32))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A43007C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_21A4300D0(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of PFLTaskDownloader.downloadRecipeDescriptors(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_21A3EC5D4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PFLTaskDownloader.downloadTask(rd:preference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21A3F8C48;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PFLTaskDiscoveryPolicy.resolveTask(for:taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_21A3EC5D4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_21A4305C8()
{
  result = type metadata accessor for PFLTaskPreferences(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of PFLTaskDiscovery.next()()
{
  v2 = *(*v0 + 304);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21A3F88EC;

  return v6();
}

uint64_t sub_21A430860(uint64_t a1, int a2)
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

uint64_t sub_21A4308A8(uint64_t result, int a2, int a3)
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

unint64_t sub_21A430978()
{
  result = qword_27CD28B38;
  if (!qword_27CD28B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B38);
  }

  return result;
}

unint64_t sub_21A4309D0()
{
  result = qword_27CD28B40;
  if (!qword_27CD28B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B40);
  }

  return result;
}

unint64_t sub_21A430A28()
{
  result = qword_27CD28B48;
  if (!qword_27CD28B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B48);
  }

  return result;
}

unint64_t sub_21A430A80()
{
  result = qword_27CD28B50;
  if (!qword_27CD28B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B50);
  }

  return result;
}

unint64_t sub_21A430AD8()
{
  result = qword_27CD28B58;
  if (!qword_27CD28B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B58);
  }

  return result;
}

unint64_t sub_21A430B30()
{
  result = qword_27CD28B60;
  if (!qword_27CD28B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B60);
  }

  return result;
}

unint64_t sub_21A430B88()
{
  result = qword_27CD28B68;
  if (!qword_27CD28B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B68);
  }

  return result;
}

unint64_t sub_21A430BE0()
{
  result = qword_27CD28B70;
  if (!qword_27CD28B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B70);
  }

  return result;
}

unint64_t sub_21A430C38()
{
  result = qword_27CD28B78;
  if (!qword_27CD28B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B78);
  }

  return result;
}

unint64_t sub_21A430C90()
{
  result = qword_27CD28B80;
  if (!qword_27CD28B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B80);
  }

  return result;
}

unint64_t sub_21A430CE8()
{
  result = qword_27CD28B88;
  if (!qword_27CD28B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B88);
  }

  return result;
}

unint64_t sub_21A430D40()
{
  result = qword_27CD28B90;
  if (!qword_27CD28B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B90);
  }

  return result;
}

unint64_t sub_21A430D98()
{
  result = qword_27CD28B98;
  if (!qword_27CD28B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B98);
  }

  return result;
}

unint64_t sub_21A430DF0()
{
  result = qword_27CD28BA0;
  if (!qword_27CD28BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28BA0);
  }

  return result;
}

unint64_t sub_21A430E48()
{
  result = qword_27CD28BA8;
  if (!qword_27CD28BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28BA8);
  }

  return result;
}

unint64_t sub_21A430EA0()
{
  result = qword_27CD28BB0;
  if (!qword_27CD28BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28BB0);
  }

  return result;
}

unint64_t sub_21A430EF8()
{
  result = qword_27CD28BB8;
  if (!qword_27CD28BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28BB8);
  }

  return result;
}

unint64_t sub_21A430F50()
{
  result = qword_27CD28BC0;
  if (!qword_27CD28BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28BC0);
  }

  return result;
}

uint64_t sub_21A430FA4()
{
  v0 = sub_21A4518A4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:forwardToMLHost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[47] = a8;
  v8[48] = v10;
  v8[45] = a6;
  v8[46] = a7;
  v8[43] = a4;
  v8[44] = a5;
  v8[41] = a2;
  v8[42] = a3;
  v8[40] = a1;
  return MEMORY[0x2822009F8](sub_21A431080, 0, 0);
}

uint64_t sub_21A431080()
{
  v1 = v0[48];
  v2 = sub_21A450A74();
  [v2 code];

  v0[39] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  }

  else
  {
    v4 = v0[48];
    v5 = sub_21A450A74();
    v6 = [v5 domain];

    sub_21A451084();
  }

  v7 = v0[43];
  v0[35] = v0[42];
  v0[36] = v7;
  v8 = 0xE100000000000000;
  v0[37] = 46;
  v0[38] = 0xE100000000000000;
  sub_21A3ED2CC();
  v9 = sub_21A451644();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 16 + 16 * v10);
    v12 = *v11;
    v8 = v11[1];
  }

  else
  {
    v12 = 85;
  }

  v13 = v0[46];
  v14 = v0[47];

  if (v12 != v13 || v8 != v14)
  {
    v15 = v0[46];
    v16 = v0[47];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v17 = v0[47];

      v33 = v0[46];
    }
  }

  v18 = v0[44];
  v19 = v0[45];
  v20 = v0[40];
  v32 = v0[41];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v22 = sub_21A451054();

  *(inited + 48) = v22;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_21A451054();
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v23 = sub_21A451054();

  *(inited + 120) = v23;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  v24 = sub_21A451054();

  *(inited + 168) = v24;
  v25 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = sub_21A451054();
  v0[28] = sub_21A433C6C;
  v0[29] = v26;
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_21A432B2C;
  v0[27] = &block_descriptor_2;
  v28 = _Block_copy(v0 + 24);

  AnalyticsSendEventLazy();

  _Block_release(v28);
  v29 = v0[29];

  v30 = v0[1];

  return v30();
}

uint64_t static PFLTelemetry.sendPFLPluginLocation<A>(location:plugin:taskId:useCase:force:forwardToMLHost:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 656) = v16;
  *(v8 + 632) = v15;
  *(v8 + 624) = a8;
  *(v8 + 616) = a7;
  *(v8 + 608) = a6;
  *(v8 + 600) = a5;
  *(v8 + 592) = a4;
  *(v8 + 584) = a3;
  *(v8 + 576) = a2;
  v13 = (v17 + *v17);
  v10 = v17[1];
  v11 = swift_task_alloc();
  *(v8 + 640) = v11;
  *v11 = v8;
  v11[1] = sub_21A4315F4;

  return v13(a1);
}

{
  *(v8 + 656) = v13;
  *(v8 + 648) = v12;
  *(v8 + 664) = v11;
  *(v8 + 640) = v10;
  *(v8 + 632) = a8;
  *(v8 + 624) = a7;
  *(v8 + 616) = a6;
  *(v8 + 608) = a5;
  *(v8 + 600) = a4;
  *(v8 + 592) = a3;
  *(v8 + 584) = a2;
  *(v8 + 576) = a1;
  return MEMORY[0x2822009F8](sub_21A431F80, 0, 0);
}

uint64_t sub_21A4315F4()
{
  v2 = *(*v1 + 640);
  v5 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_21A431AB0;
  }

  else
  {
    v3 = sub_21A431708;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A431708()
{
  if (*(v0 + 656) == 1)
  {
    v1 = v0[75];
    v0[67] = v0[74];
    v0[68] = v1;
    v0[69] = 46;
    v2 = 0xE100000000000000;
    v0[70] = 0xE100000000000000;
    sub_21A3ED2CC();
    v3 = sub_21A451644();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 16 + 16 * v4);
      v6 = *v5;
      v2 = v5[1];
    }

    else
    {
      v6 = 85;
    }

    v7 = v0[79];
    v8 = v0[78];

    if (v6 != v8 || v2 != v7)
    {
      v9 = v0[79];
      v10 = v0[78];
      if ((sub_21A4519B4() & 1) == 0)
      {
        v11 = v0[79];

        v26 = v0[78];
      }
    }

    v12 = v0[77];
    v13 = v0[76];
    v25 = v0[73];
    v14 = v0[72];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v16 = sub_21A451054();

    *(inited + 48) = v16;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v17 = sub_21A451054();

    *(inited + 120) = v17;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    *(inited + 168) = sub_21A451054();
    v18 = sub_21A3E57A0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
    swift_arrayDestroy();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = sub_21A451054();
    v0[56] = sub_21A433D0C;
    v0[57] = v19;
    v0[52] = MEMORY[0x277D85DD0];
    v0[53] = 1107296256;
    v0[54] = sub_21A432B2C;
    v0[55] = &block_descriptor_16_0;
    v21 = _Block_copy(v0 + 52);

    AnalyticsSendEventLazy();

    _Block_release(v21);
    v22 = v0[57];
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_21A431AB0()
{
  v1 = v0[81];
  v2 = sub_21A450A74();
  [v2 code];

  v0[71] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 58);
  }

  else
  {
    v4 = v0[81];
    v5 = sub_21A450A74();
    v6 = [v5 domain];

    sub_21A451084();
  }

  v7 = v0[75];
  v0[63] = v0[74];
  v0[64] = v7;
  v0[65] = 46;
  v8 = 0xE100000000000000;
  v0[66] = 0xE100000000000000;
  sub_21A3ED2CC();
  v9 = sub_21A451644();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 16 + 16 * v10);
    v12 = *v11;
    v8 = v11[1];
  }

  else
  {
    v12 = 85;
  }

  v13 = v0[79];
  v14 = v0[78];

  if (v12 != v14 || v8 != v13)
  {
    v15 = v0[79];
    v16 = v0[78];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v17 = v0[79];

      v34 = v0[78];
    }
  }

  v35 = v0[81];
  v18 = v0[77];
  v19 = v0[76];
  v33 = v0[73];
  v20 = v0[72];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v22 = sub_21A451054();

  *(inited + 48) = v22;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_21A451054();
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v23 = sub_21A451054();

  *(inited + 120) = v23;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  v24 = sub_21A451054();

  *(inited + 168) = v24;
  v25 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = sub_21A451054();
  v0[50] = sub_21A433D0C;
  v0[51] = v26;
  v0[46] = MEMORY[0x277D85DD0];
  v0[47] = 1107296256;
  v0[48] = sub_21A432B2C;
  v0[49] = &block_descriptor_7;
  v28 = _Block_copy(v0 + 46);

  AnalyticsSendEventLazy();

  _Block_release(v28);
  v29 = v0[51];

  swift_willThrow();
  v30 = v0[1];
  v31 = v0[81];

  return v30();
}

uint64_t sub_21A431F80()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 576);
  (*(v0 + 648))();
  if (*(v0 + 664) == 1)
  {
    v3 = *(v0 + 608);
    *(v0 + 536) = *(v0 + 600);
    *(v0 + 544) = v3;
    *(v0 + 552) = 46;
    v4 = 0xE100000000000000;
    *(v0 + 560) = 0xE100000000000000;
    sub_21A3ED2CC();
    v5 = sub_21A451644();
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 16 + 16 * v6);
      v8 = *v7;
      v4 = v7[1];
    }

    else
    {
      v8 = 85;
    }

    v9 = *(v0 + 640);
    v10 = *(v0 + 632);

    if (v8 != v10 || v4 != v9)
    {
      v11 = *(v0 + 640);
      v12 = *(v0 + 632);
      if ((sub_21A4519B4() & 1) == 0)
      {
        v13 = *(v0 + 640);

        v28 = *(v0 + 632);
      }
    }

    v14 = *(v0 + 624);
    v15 = *(v0 + 616);
    v27 = *(v0 + 592);
    v16 = *(v0 + 584);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v18 = sub_21A451054();

    *(inited + 48) = v18;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v19 = sub_21A451054();

    *(inited + 120) = v19;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    *(inited + 168) = sub_21A451054();
    v20 = sub_21A3E57A0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
    swift_arrayDestroy();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v22 = sub_21A451054();
    *(v0 + 448) = sub_21A433D0C;
    *(v0 + 456) = v21;
    *(v0 + 416) = MEMORY[0x277D85DD0];
    *(v0 + 424) = 1107296256;
    *(v0 + 432) = sub_21A432B2C;
    *(v0 + 440) = &block_descriptor_31_0;
    v23 = _Block_copy((v0 + 416));

    AnalyticsSendEventLazy();

    _Block_release(v23);
    v24 = *(v0 + 456);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t static PFLTelemetry.sendPFLPluginReachTelemetryLazy(location:plugin:taskId:useCase:errorCode:errorDomain:forwardToMLHost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 352) = v11;
  *(v8 + 336) = v10;
  *(v8 + 320) = a7;
  *(v8 + 328) = a8;
  *(v8 + 304) = a5;
  *(v8 + 312) = a6;
  *(v8 + 288) = a3;
  *(v8 + 296) = a4;
  *(v8 + 272) = a1;
  *(v8 + 280) = a2;
  return MEMORY[0x2822009F8](sub_21A43278C, 0, 0);
}

uint64_t sub_21A43278C()
{
  v0[30] = v0[36];
  v0[31] = v0[37];
  v0[32] = 46;
  v1 = 0xE100000000000000;
  v0[33] = 0xE100000000000000;
  sub_21A3ED2CC();
  v2 = sub_21A451644();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 16 + 16 * v3);
    v5 = *v4;
    v1 = v4[1];
  }

  else
  {
    v5 = 85;
  }

  v7 = v0[40];
  v6 = v0[41];

  if (v5 != v7 || v1 != v6)
  {
    v9 = v0[40];
    v10 = v0[41];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v30 = v0[41];

      v27 = v0[40];
    }
  }

  v28 = v0[43];
  v29 = v0[44];
  v26 = v0[42];
  v12 = v0[38];
  v11 = v0[39];
  v13 = v0[34];
  v14 = v0[35];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v16 = sub_21A451054();

  *(inited + 48) = v16;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_21A451054();
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v17 = sub_21A451054();

  *(inited + 120) = v17;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  *(inited + 168) = sub_21A451054();
  v18 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = sub_21A451054();
  v0[28] = sub_21A433D0C;
  v0[29] = v19;
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_21A432B2C;
  v0[27] = &block_descriptor_38_0;
  v21 = _Block_copy(v0 + 24);

  v22 = AnalyticsSendEventLazy();

  _Block_release(v21);
  v23 = v0[29];

  v24 = v0[1];

  return v24(v22);
}

id sub_21A432B2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_21A433C9C();
    v5 = sub_21A450F54();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:force:forwardToMLHost:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 656) = v13;
  *(v8 + 648) = v12;
  *(v8 + 664) = v11;
  *(v8 + 640) = v10;
  *(v8 + 632) = a8;
  *(v8 + 624) = a7;
  *(v8 + 616) = a6;
  *(v8 + 608) = a5;
  *(v8 + 600) = a4;
  *(v8 + 592) = a3;
  *(v8 + 584) = a2;
  *(v8 + 576) = a1;
  return MEMORY[0x2822009F8](sub_21A432C14, 0, 0);
}

{
  *(v8 + 656) = v15;
  *(v8 + 640) = v14;
  *(v8 + 632) = a8;
  *(v8 + 624) = a7;
  *(v8 + 616) = a6;
  *(v8 + 608) = a5;
  *(v8 + 600) = a4;
  *(v8 + 592) = a3;
  *(v8 + 584) = a2;
  *(v8 + 576) = a1;
  v12 = (v16 + *v16);
  v9 = v16[1];
  v10 = swift_task_alloc();
  *(v8 + 648) = v10;
  *v10 = v8;
  v10[1] = sub_21A433458;

  return v12();
}

uint64_t sub_21A432C14()
{
  v1 = *(v0 + 656);
  v2 = (*(v0 + 648))();
  if (v2)
  {
    if (*(v0 + 664) != 1)
    {
      goto LABEL_25;
    }

    v63 = v2;
    v3 = *(v0 + 600);
    *(v0 + 536) = *(v0 + 592);
    *(v0 + 544) = v3;
    *(v0 + 552) = 46;
    v4 = 0xE100000000000000;
    *(v0 + 560) = 0xE100000000000000;
    sub_21A3ED2CC();
    v5 = sub_21A451644();
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 16 + 16 * v6);
      v8 = *v7;
      v4 = v7[1];
    }

    else
    {
      v8 = 85;
    }

    aBlock = (v0 + 416);
    v39 = *(v0 + 632);
    v40 = *(v0 + 624);

    if (v8 != v40 || v4 != v39)
    {
      v41 = *(v0 + 632);
      v42 = *(v0 + 624);
      if ((sub_21A4519B4() & 1) == 0)
      {
        v43 = *(v0 + 632);

        v61 = *(v0 + 624);
      }
    }

    v44 = *(v0 + 616);
    v45 = *(v0 + 608);
    v46 = *(v0 + 584);
    v47 = *(v0 + 576);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v48 = sub_21A451054();

    *(inited + 48) = v48;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v49 = sub_21A451054();

    *(inited + 120) = v49;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    *(inited + 168) = sub_21A451054();
    v59 = 440;
    v60 = &block_descriptor_52_0;
    v34 = 432;
    v35 = 428;
    v36 = 424;
    v37 = 456;
    v38 = 448;
  }

  else
  {
    v63 = v2;
    v9 = *(v0 + 640);
    v10 = sub_21A450A74();
    [v10 code];

    *(v0 + 568) = v9;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 464));
    }

    else
    {
      v12 = *(v0 + 640);
      v13 = sub_21A450A74();
      v14 = [v13 domain];

      sub_21A451084();
    }

    v15 = *(v0 + 600);
    *(v0 + 504) = *(v0 + 592);
    *(v0 + 512) = v15;
    *(v0 + 520) = 46;
    v16 = 0xE100000000000000;
    *(v0 + 528) = 0xE100000000000000;
    sub_21A3ED2CC();
    v17 = sub_21A451644();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 16 + 16 * v18);
      v20 = *v19;
      v16 = v19[1];
    }

    else
    {
      v20 = 85;
    }

    aBlock = (v0 + 368);
    v21 = *(v0 + 632);
    v22 = *(v0 + 624);

    if (v20 != v22 || v16 != v21)
    {
      v23 = *(v0 + 632);
      v24 = *(v0 + 624);
      if ((sub_21A4519B4() & 1) == 0)
      {
        v25 = *(v0 + 632);

        v58 = *(v0 + 624);
      }
    }

    v26 = *(v0 + 616);
    v27 = *(v0 + 608);
    v28 = *(v0 + 584);
    v29 = *(v0 + 576);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v31 = sub_21A451054();

    *(inited + 48) = v31;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v32 = sub_21A451054();

    *(inited + 120) = v32;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    v33 = sub_21A451054();

    *(inited + 168) = v33;
    v59 = 392;
    v60 = &block_descriptor_45_0;
    v34 = 384;
    v35 = 380;
    v36 = 376;
    v37 = 408;
    v38 = 400;
  }

  v50 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  v52 = sub_21A451054();
  *(v0 + v38) = sub_21A433D0C;
  *(v0 + v37) = v51;
  *aBlock = MEMORY[0x277D85DD0];
  *(v0 + v36) = 1107296256;
  *(v0 + v35) = 0;
  *(v0 + v34) = sub_21A432B2C;
  *(v0 + v59) = v60;
  v53 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v53);
  v54 = *(v0 + v37);

  v2 = v63;
LABEL_25:
  v55 = *(v0 + 8);
  v56 = v2 & 1;

  return v55(v56);
}

uint64_t sub_21A433458(char a1)
{
  v2 = *(*v1 + 648);
  v4 = *v1;
  *(*v1 + 657) = a1;

  return MEMORY[0x2822009F8](sub_21A433558, 0, 0);
}

uint64_t sub_21A433558()
{
  if (*(v0 + 657))
  {
    if (*(v0 + 656) != 1)
    {
      goto LABEL_25;
    }

    v1 = *(v0 + 600);
    *(v0 + 536) = *(v0 + 592);
    *(v0 + 544) = v1;
    *(v0 + 552) = 46;
    v2 = 0xE100000000000000;
    *(v0 + 560) = 0xE100000000000000;
    sub_21A3ED2CC();
    v3 = sub_21A451644();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 16 + 16 * v4);
      v6 = *v5;
      v2 = v5[1];
    }

    else
    {
      v6 = 85;
    }

    aBlock = (v0 + 416);
    v37 = *(v0 + 632);
    v38 = *(v0 + 624);

    if (v6 != v38 || v2 != v37)
    {
      v39 = *(v0 + 632);
      v40 = *(v0 + 624);
      if ((sub_21A4519B4() & 1) == 0)
      {
        v41 = *(v0 + 632);

        v59 = *(v0 + 624);
      }
    }

    v42 = *(v0 + 616);
    v43 = *(v0 + 608);
    v44 = *(v0 + 584);
    v45 = *(v0 + 576);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v46 = sub_21A451054();

    *(inited + 48) = v46;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v47 = sub_21A451054();

    *(inited + 120) = v47;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    *(inited + 168) = sub_21A451054();
    v57 = 440;
    v58 = &block_descriptor_67;
    v32 = 432;
    v33 = 428;
    v34 = 424;
    v35 = 456;
    v36 = 448;
  }

  else
  {
    v7 = *(v0 + 640);
    v8 = sub_21A450A74();
    [v8 code];

    *(v0 + 568) = v7;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 464));
    }

    else
    {
      v10 = *(v0 + 640);
      v11 = sub_21A450A74();
      v12 = [v11 domain];

      sub_21A451084();
    }

    v13 = *(v0 + 600);
    *(v0 + 504) = *(v0 + 592);
    *(v0 + 512) = v13;
    *(v0 + 520) = 46;
    v14 = 0xE100000000000000;
    *(v0 + 528) = 0xE100000000000000;
    sub_21A3ED2CC();
    v15 = sub_21A451644();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 16 + 16 * v16);
      v18 = *v17;
      v14 = v17[1];
    }

    else
    {
      v18 = 85;
    }

    aBlock = (v0 + 368);
    v19 = *(v0 + 632);
    v20 = *(v0 + 624);

    if (v18 != v20 || v14 != v19)
    {
      v21 = *(v0 + 632);
      v22 = *(v0 + 624);
      if ((sub_21A4519B4() & 1) == 0)
      {
        v23 = *(v0 + 632);

        v56 = *(v0 + 624);
      }
    }

    v24 = *(v0 + 616);
    v25 = *(v0 + 608);
    v26 = *(v0 + 584);
    v27 = *(v0 + 576);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v29 = sub_21A451054();

    *(inited + 48) = v29;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v30 = sub_21A451054();

    *(inited + 120) = v30;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    v31 = sub_21A451054();

    *(inited + 168) = v31;
    v57 = 392;
    v58 = &block_descriptor_59_0;
    v32 = 384;
    v33 = 380;
    v34 = 376;
    v35 = 408;
    v36 = 400;
  }

  v48 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  v50 = sub_21A451054();
  *(v0 + v36) = sub_21A433D0C;
  *(v0 + v35) = v49;
  *aBlock = MEMORY[0x277D85DD0];
  *(v0 + v34) = 1107296256;
  *(v0 + v33) = 0;
  *(v0 + v32) = sub_21A432B2C;
  *(v0 + v57) = v58;
  v51 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v51);
  v52 = *(v0 + v35);

LABEL_25:
  v53 = *(v0 + 8);
  v54 = *(v0 + 657);

  return v53(v54);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21A433C9C()
{
  result = qword_27CD28BD0;
  if (!qword_27CD28BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD28BD0);
  }

  return result;
}

uint64_t sub_21A433D34()
{
  v40 = sub_21A450AB4();
  v0 = *(v40 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v40);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21A450D44();
  v4 = *(v38 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A450BE4();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  sub_21A450B24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21A455F00;
  *(v15 + 32) = 0x617474612D6C6670;
  *(v15 + 40) = 0xEF73746E656D6863;
  sub_21A450D34();
  v16 = sub_21A450D24();
  v18 = v17;
  (*(v4 + 8))(v7, v38);
  *(v15 + 48) = v16;
  *(v15 + 56) = v18;
  v20 = v39;
  v19 = v40;
  (*(v0 + 104))(v3, *MEMORY[0x277CC91C0], v40);
  sub_21A3ED2CC();
  sub_21A450BB4();

  (*(v0 + 8))(v3, v19);
  v21 = v41;
  v38 = *(v41 + 8);
  v38(v12, v8);
  v22 = OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl;
  v23 = *(v21 + 32);
  v24 = v14;
  v40 = v8;
  v23(v20 + OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl, v14, v8);
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v25 = sub_21A450F24();
  __swift_project_value_buffer(v25, qword_27CD28C90);

  v26 = sub_21A450F04();
  v27 = sub_21A451574();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315138;
    v30 = v40;
    v31 = v24;
    (*(v41 + 16))(v24, v20 + v22, v40);
    v32 = sub_21A450B84();
    v34 = v33;
    v38(v31, v30);
    v35 = sub_21A3E2554(v32, v34, &v42);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_21A3C2000, v26, v27, "Task path: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x21CEDB220](v29, -1, -1);
    MEMORY[0x21CEDB220](v28, -1, -1);
  }

  return v20;
}

void sub_21A4341BC(void (*a1)(void, void, void))
{
  v2 = v1;
  v156 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v153 = (&v138 - v5);
  v152 = sub_21A450AA4();
  v151 = *(v152 - 1);
  v6 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v155 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A450BE4();
  v154 = *(v8 - 8);
  isa = v154[8].isa;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v138 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v138 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v138 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v138 - v22;
  v24 = sub_21A3EC940();
  v25 = swift_allocError();
  *v26 = 39;

  v27 = v159;
  sub_21A3FA748(v25, v2);
  v159 = v27;
  if (v27)
  {

    return;
  }

  v141 = v21;
  v145 = v12;
  v142 = v15;
  v140 = v18;
  v148 = v24;
  v149 = v23;
  v150 = v8;

  v28 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v29 = sub_21A450B34();
  v30 = [v28 initWithURL_];

  if (!v30)
  {
    swift_allocError();
    *v68 = 36;
    swift_willThrow();
    return;
  }

  v31 = v30;
  [v31 open];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "extractPKZip");
  *(inited + 16) = xmmword_21A455F00;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v33 = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 72) = v33;
  *(inited + 80) = 0x7274537475706E69;
  *(inited + 88) = 0xEB000000006D6165;
  *(inited + 120) = sub_21A435628();
  *(inited + 96) = v31;
  v146 = v31;
  sub_21A3E4F6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();
  v34 = sub_21A450F54();

  BOMCopierNew();
  v35 = v154;
  v36 = v154[2].isa;
  v139 = OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl;
  v144 = v2;
  v37 = v149;
  v38 = v150;
  v39 = v154 + 2;
  v147 = v36;
  (v36)(v149, v2 + OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl, v150);
  v40 = sub_21A450B34();
  v41 = v35[1].isa;
  v41(v37, v38);
  [v40 fileSystemRepresentation];
  v42 = v40;
  v143 = v34;
  v43 = BOMCopierCopyWithOptions();
  v44 = v146;
  BOMCopierFree();
  [v44 close];
  if (v43)
  {
    LODWORD(v155) = v43;
    v159 = v35 + 1;

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v45 = sub_21A450F24();
    __swift_project_value_buffer(v45, qword_27CD28C90);
    v46 = v145;
    v47 = v150;
    v147(v145, v156, v150);
    v48 = v144;

    v49 = sub_21A450F04();
    v50 = sub_21A451584();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v156 = v39;
      v52 = v51;
      v154 = swift_slowAlloc();
      v157[0] = v154;
      *v52 = 136315650;
      sub_21A435674();
      v153 = v49;
      v53 = sub_21A451974();
      v54 = v46;
      v55 = v48;
      v57 = v56;
      v41(v54, v47);
      v58 = sub_21A3E2554(v53, v57, v157);
      LOBYTE(v57) = v50;
      v59 = v143;

      *(v52 + 4) = v58;
      *(v52 + 12) = 2080;
      v60 = v55 + v139;
      v61 = v149;
      v147(v149, v60, v47);
      v62 = sub_21A451974();
      v64 = v63;
      v41(v61, v47);
      v65 = sub_21A3E2554(v62, v64, v157);
      v44 = v146;

      *(v52 + 14) = v65;
      *(v52 + 22) = 1024;
      *(v52 + 24) = v155;
      v66 = v153;
      _os_log_impl(&dword_21A3C2000, v153, v57, "Failed to unzip %s to %s with error: %d", v52, 0x1Cu);
      v67 = v154;
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v67, -1, -1);
      MEMORY[0x21CEDB220](v52, -1, -1);
    }

    else
    {

      v41(v46, v47);
      v59 = v143;
    }

    swift_allocError();
    *v99 = 37;
    swift_willThrow();
  }

  else
  {
    v69 = [v44 streamError];

    v138 = v41;
    if (v69)
    {

      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v70 = sub_21A450F24();
      __swift_project_value_buffer(v70, qword_27CD28C90);
      v71 = v142;
      v72 = v150;
      v73 = v147;
      v147(v142, v156, v150);
      v74 = v144;

      v75 = v44;
      v76 = sub_21A450F04();
      v77 = sub_21A451584();

      LODWORD(v159) = v77;
      if (os_log_type_enabled(v76, v77))
      {
        v154 = v76;
        v78 = swift_slowAlloc();
        v156 = v39;
        v79 = v78;
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v157[0] = v153;
        *v79 = 136315650;
        sub_21A435674();
        v155 = v75;
        v80 = sub_21A451974();
        v82 = v81;
        v83 = v71;
        v84 = v74;
        v85 = v138;
        v138(v83, v72);
        v86 = sub_21A3E2554(v80, v82, v157);

        *(v79 + 4) = v86;
        *(v79 + 12) = 2080;
        v87 = v84 + v139;
        v88 = v149;
        v73(v149, v87, v72);
        v89 = sub_21A451974();
        v91 = v90;
        v85(v88, v72);
        v92 = sub_21A3E2554(v89, v91, v157);
        v75 = v155;

        *(v79 + 14) = v92;
        *(v79 + 22) = 2112;
        v93 = [v75 streamError];

        if (!v93)
        {
          __break(1u);
          return;
        }

        v94 = _swift_stdlib_bridgeErrorToNSError();
        *(v79 + 24) = v94;
        v95 = v152;
        *v152 = v94;
        v96 = v154;
        _os_log_impl(&dword_21A3C2000, v154, v159, "Failed to unzip %s to %s with stream error: %@", v79, 0x20u);
        sub_21A3D3BF0(v95, &qword_27CD28608, &qword_21A456570);
        MEMORY[0x21CEDB220](v95, -1, -1);
        v97 = v153;
        swift_arrayDestroy();
        MEMORY[0x21CEDB220](v97, -1, -1);
        MEMORY[0x21CEDB220](v79, -1, -1);

        v98 = v143;
      }

      else
      {

        v138(v71, v72);
        v98 = v143;
      }

      swift_allocError();
      *v122 = 38;
      swift_willThrow();

      return;
    }

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v100 = sub_21A450F24();
    __swift_project_value_buffer(v100, qword_27CD28C90);
    v101 = v141;
    v102 = v156;
    v103 = v150;
    v156 = v39;
    v147(v141, v102, v150);
    v104 = v144;

    v105 = sub_21A450F04();
    v106 = sub_21A451574();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v157[0] = v148;
      *v107 = 136315394;
      sub_21A435674();
      v145 = v105;
      v108 = sub_21A451974();
      v109 = v41;
      LODWORD(v142) = v106;
      v111 = v110;
      v41(v101, v150);
      v112 = sub_21A3E2554(v108, v111, v157);

      *(v107 + 4) = v112;
      *(v107 + 12) = 2080;
      v113 = v139;
      v114 = v149;
      v147(v149, v104 + v139, v150);
      v115 = sub_21A451974();
      v117 = v116;
      v109(v114, v150);
      v118 = sub_21A3E2554(v115, v117, v157);
      v44 = v146;

      *(v107 + 14) = v118;
      v119 = v145;
      _os_log_impl(&dword_21A3C2000, v145, v142, "Successfully unziped %s to %s ", v107, 0x16u);
      v120 = v148;
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v120, -1, -1);
      v121 = v107;
      v103 = v150;
      MEMORY[0x21CEDB220](v121, -1, -1);
    }

    else
    {

      v41(v101, v103);
      v114 = v149;
      v113 = v139;
    }

    v123 = [objc_opt_self() defaultManager];
    v147(v114, v104 + v113, v103);
    v124 = sub_21A451554();

    v138(v114, v103);
    v125 = v154;
    if (v124)
    {
      v126 = v155;
      sub_21A451544();
      sub_21A450A94();
      if (v158)
      {
        v127 = v125 + 7;
        v128 = v125 + 4;
        v129 = MEMORY[0x277D84F90];
        do
        {
          v130 = v128;
          v131 = v153;
          while (1)
          {
            v132 = swift_dynamicCast();
            v133 = v127->isa;
            v134 = v131;
            if (v132)
            {
              break;
            }

            v133(v131, 1, 1, v103);
            sub_21A3D3BF0(v131, &qword_27CD287D8, &qword_21A456BD0);
            sub_21A450A94();
            if (!v158)
            {
              v126 = v155;
              goto LABEL_39;
            }
          }

          v133(v131, 0, 1, v103);
          v128 = v130;
          v156 = v130->isa;
          v156(v140, v134, v103);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_21A408668(0, v129[2] + 1, 1, v129);
          }

          v126 = v155;
          v136 = v129[2];
          v135 = v129[3];
          if (v136 >= v135 >> 1)
          {
            v129 = sub_21A408668(v135 > 1, v136 + 1, 1, v129);
          }

          v129[2] = v136 + 1;
          v137 = v129 + ((LOBYTE(v154[10].isa) + 32) & ~LOBYTE(v154[10].isa)) + v154[9].isa * v136;
          v103 = v150;
          (v156)(v137);
          sub_21A450A94();
        }

        while (v158);
      }

LABEL_39:
      (*(v151 + 8))(v126, v152);
    }

    else
    {
    }
  }
}

id sub_21A4352F4(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21A450BE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl, v2);
  v8 = sub_21A450B34();
  (*(v3 + 8))(v6, v2);
  v12[0] = 0;
  LOBYTE(v2) = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:v12];

  if (v2)
  {
    result = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_21A450A84();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A4354A8()
{
  v1 = OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl;
  v2 = sub_21A450BE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PFLTaskStorage()
{
  result = qword_27CD28BD8;
  if (!qword_27CD28BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A435598()
{
  result = sub_21A450BE4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21A435628()
{
  result = qword_27CD28BE8;
  if (!qword_27CD28BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD28BE8);
  }

  return result;
}

unint64_t sub_21A435674()
{
  result = qword_27CD28CC0;
  if (!qword_27CD28CC0)
  {
    sub_21A450BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28CC0);
  }

  return result;
}

uint64_t sub_21A4356CC()
{
  v53[1] = *MEMORY[0x277D85DE8];
  v0 = sub_21A450AB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A450BE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  sub_21A450B24();
  (*(v1 + 104))(v4, *MEMORY[0x277CC91C0], v0);
  sub_21A3ED2CC();
  sub_21A450BB4();
  (*(v1 + 8))(v4, v0);
  v13 = *(v6 + 8);
  v13(v10, v5);
  v14 = sub_21A450B84();
  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  v52 = v14;
  v19 = sub_21A451054();
  v20 = [v18 fileExistsAtPath_];

  if (v20)
  {
    v21 = [v17 defaultManager];
    v22 = sub_21A450B34();
    v53[0] = 0;
    v23 = [v21 removeItemAtURL:v22 error:v53];

    if (v23)
    {
      v24 = qword_27CD28170;
      v25 = v53[0];
      v26 = v13;
      if (v24 != -1)
      {
        swift_once();
      }

      v27 = sub_21A450F24();
      __swift_project_value_buffer(v27, qword_27CD28C90);

      v28 = sub_21A450F04();
      v29 = sub_21A451574();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v53[0] = v31;
        *v30 = 136315138;
        v32 = sub_21A3E2554(v52, v16, v53);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_21A3C2000, v28, v29, "Removed %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x21CEDB220](v31, -1, -1);
        MEMORY[0x21CEDB220](v30, -1, -1);
      }

      else
      {
      }

      result = v26(v12, v5);
    }

    else
    {
      v34 = v53[0];
      v35 = sub_21A450A84();

      swift_willThrow();
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v36 = sub_21A450F24();
      __swift_project_value_buffer(v36, qword_27CD28C90);

      v37 = v35;
      v38 = sub_21A450F04();
      v39 = sub_21A451584();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v51 = v13;
        v41 = v40;
        v42 = swift_slowAlloc();
        v50 = v38;
        v43 = v42;
        v44 = swift_slowAlloc();
        v53[0] = v44;
        *v41 = 136315394;
        v45 = sub_21A3E2554(v52, v16, v53);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2112;
        v46 = v35;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v47;
        *v43 = v47;
        v48 = v50;
        _os_log_impl(&dword_21A3C2000, v50, v39, "Failed to remove %s: %@", v41, 0x16u);
        sub_21A3D3BF0(v43, &qword_27CD28608, &qword_21A456570);
        MEMORY[0x21CEDB220](v43, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x21CEDB220](v44, -1, -1);
        MEMORY[0x21CEDB220](v41, -1, -1);

        result = v51(v12, v5);
      }

      else
      {

        result = (v13)(v12, v5);
      }
    }
  }

  else
  {
    v13(v12, v5);
  }

  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A435CF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_21A450AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_21A450BE4();
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v37);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = type metadata accessor for PFLDecodableTaskParameters(0);
  v18 = a1;
  v19 = v17;
  if (v18)
  {
    v36 = v17;
    sub_21A450AF4();
    v38 = 0x6574656D61726170;
    v39 = 0xEF6E6F736A2E7372;
    (*(v5 + 104))(v8, *MEMORY[0x277CC91D0], v4);
    sub_21A3ED2CC();
    sub_21A450BC4();
    (*(v5 + 8))(v8, v4);
    v25 = sub_21A450C04();
    v27 = v26;
    v28 = sub_21A450974();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_21A450964();
    sub_21A438428();
    v31 = v36;
    sub_21A450954();

    sub_21A3E759C(v25, v27);
    v32 = *(v9 + 8);
    v33 = v37;
    v32(v14, v37);
    v32(v16, v33);
    return (*(*(v31 - 8) + 56))(a2, 0, 1, v31);
  }

  else
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v20 = sub_21A450F24();
    __swift_project_value_buffer(v20, qword_27CD28C90);
    v21 = sub_21A450F04();
    v22 = sub_21A451574();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21A3C2000, v21, v22, "No task folder", v23, 2u);
      MEMORY[0x21CEDB220](v23, -1, -1);
    }

    v24 = *(*(v19 - 8) + 56);

    return v24(a2, 1, 1, v19);
  }
}

uint64_t static PFLTaskPreferences.loadTaskPreferences(preferredTaskSource:from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28BF0, &qword_21A458C70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for PFLDecodableTaskParameters(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v37 = v17;
  sub_21A435CF8(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21A3D3BF0(v9, &qword_27CD28BF0, &qword_21A458C70);
    v19 = type metadata accessor for PFLTaskPreferences(0);
    v20 = a3 + *(v19 + 20);
    v21 = v10[8];
    v22 = v15;
    v23 = v15;
    v24 = v16;
    v25 = v16;
    v26 = v37;
    sub_21A3ED4E4(v23, v25);
    sub_21A450CF4();
    v27 = &v20[v10[9]];
    sub_21A450CB4();
    v28 = sub_21A3E4F6C(MEMORY[0x277D84F90]);
    v36 = xmmword_21A458C60;
    *v20 = xmmword_21A458C60;
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    v29 = &v20[v10[12]];
    sub_21A437FDC(0, 6uLL);
    *v20 = v36;
    *(v20 + 3) = 0;
    *(v20 + 4) = 0;
    *(v20 + 2) = 0;
    *v29 = 0;
    *(v29 + 1) = 0;
    v20[40] = 0;
    v20[v10[10]] = 0;
    v20[v10[11]] = 0;
    *(v20 + 6) = 0x3FF0000000000000;
    *&v20[v10[13]] = v28;
    v30 = *(v19 + 24);
    result = os_variant_has_internal_content();
    has_internal_content = result;
  }

  else
  {
    sub_21A437FEC(v9, v14);
    v33 = type metadata accessor for PFLTaskPreferences(0);
    sub_21A438050(v14, a3 + *(v33 + 20));
    v30 = *(v33 + 24);
    v22 = v15;
    v34 = v15;
    v24 = v16;
    v35 = v16;
    v26 = v37;
    sub_21A3ED4E4(v34, v35);
    has_internal_content = os_variant_has_internal_content();
    result = sub_21A4380B4(v14);
  }

  *(a3 + v30) = has_internal_content;
  *a3 = v22;
  a3[1] = v24;
  a3[2] = v26;
  a3[3] = v18;
  return result;
}

uint64_t sub_21A436818(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PFLTaskPreferences.privacyBudgetPrefix.getter()
{
  v1 = v0 + *(type metadata accessor for PFLTaskPreferences(0) + 20);
  v2 = (v1 + *(type metadata accessor for PFLDecodableTaskParameters(0) + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t PFLTaskPreferences.taskSource.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PFLTaskPreferences(0);
  if (*(v1 + *(result + 24)))
  {
    v4 = (v1 + *(result + 20));
    v5 = v4[1];
    if (v5 == 6)
    {
      v5 = v1[1];
      if (v5 == 3)
      {
        *a1 = xmmword_21A4562A0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        return result;
      }

      v7 = v1[2];
      v8 = v1[3];
      v6 = *v1;
    }

    else
    {
      v7 = v4[2];
      v8 = v4[3];
      v6 = *v4;
    }
  }

  else
  {
    v6 = *v1;
    v5 = v1[1];
    v7 = v1[2];
    v8 = v1[3];
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;

  return sub_21A3ED4E4(v6, v5);
}

uint64_t sub_21A436948(char a1)
{
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28C50, &qword_21A458D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28C30, &qword_21A458D10);
  sub_21A4385B4();
  sub_21A451914();
  if (v1)
  {
    return v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28420, &unk_21A458D20);
  result = sub_21A451854();
  v2 = result;
  v4 = 0;
  v26 = result;
  v27 = *&v28[0];
  v5 = 1 << *(*&v28[0] + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = *&v28[0] + 64;
  v8 = v6 & *(*&v28[0] + 64);
  v9 = (v5 + 63) >> 6;
  v25 = result + 64;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = v10 | (v4 << 6);
      v14 = 16 * v13;
      v15 = (*(v27 + 48) + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = 32 * v13;
      sub_21A438694(*(v27 + 56) + 32 * v13, v28);
      v19 = (v13 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v20 = 1 << v13;
      v2 = v26;
      *(v25 + v19) |= v20;
      v21 = (v26[6] + v14);
      *v21 = v16;
      v21[1] = v17;
      result = sub_21A3D3B38(v28, (v26[7] + v18));
      v22 = v26[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v26[2] = v24;

      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
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

        return v2;
      }

      v12 = *(v7 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A436B40@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A451BA4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v11);
    if (sub_21A451A14())
    {
      v6 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      *(&v13 + 1) = sub_21A43894C();
      *&v12 = v6;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v7 = sub_21A4519F4();
      *(&v13 + 1) = MEMORY[0x277D83B88];
      *&v12 = v7;
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
    v8 = v13;
    *a2 = v12;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21A437164(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x756F735F6B736174;
    v7 = 0xD000000000000019;
    if (a1 != 3)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000015;
    }

    if (a1)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656D69745F646E65;
    v2 = 0x617261506B736174;
    if (a1 == 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0x69745F7472617473;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21A4372F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21A437164(*a1);
  v5 = v4;
  if (v3 == sub_21A437164(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A4519B4();
  }

  return v8 & 1;
}

uint64_t sub_21A437378()
{
  v1 = *v0;
  sub_21A451B04();
  sub_21A437164(v1);
  sub_21A451144();

  return sub_21A451B24();
}

uint64_t sub_21A4373DC()
{
  sub_21A437164(*v0);
  sub_21A451144();
}

uint64_t sub_21A437430()
{
  v1 = *v0;
  sub_21A451B04();
  sub_21A437164(v1);
  sub_21A451144();

  return sub_21A451B24();
}

uint64_t sub_21A437490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21A43887C();
  *a2 = result;
  return result;
}

uint64_t sub_21A4374C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A437164(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21A437508@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A43887C();
  *a1 = result;
  return result;
}

uint64_t sub_21A43753C(uint64_t a1)
{
  v2 = sub_21A438480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A437578(uint64_t a1)
{
  v2 = sub_21A438480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A4375B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_21A450D14();
  v4 = *(v3 - 8);
  v76 = v3;
  v77 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A4510B4();
  v73 = *(v7 - 8);
  *&v74 = v7;
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28C30, &qword_21A458D10);
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  v15 = type metadata accessor for PFLDecodableTaskParameters(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v70 - v20;
  v80 = xmmword_21A458C60;
  *v21 = xmmword_21A458C60;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = a1[3];
  v23 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_21A438480();
  v24 = v81;
  sub_21A451BB4();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v82);
    v25 = *(v21 + 2);
    v26 = *(v21 + 3);
    return sub_21A437FDC(*v21, *(v21 + 1));
  }

  else
  {
    v70 = v19;
    v71 = v10;
    v81 = v15;
    v72 = &v21[*(v15 + 48)];
    LOBYTE(v84) = 10;
    v28 = v11;
    v29 = v14;
    sub_21A4518E4();
    v30 = v71;
    sub_21A4510A4();
    v31 = sub_21A451094();
    v33 = v32;

    (*(v73 + 8))(v30, v74);
    if (v33 >> 60 == 15)
    {
      v34 = v28;
      v83 = 0;
      sub_21A4384D4();
      sub_21A451914();
      v74 = v85;
      v80 = v84;
      v35 = v81;
      v36 = *(v21 + 2);
      v37 = *(v21 + 3);
      sub_21A437FDC(*v21, *(v21 + 1));
      v38 = v74;
      *v21 = v80;
      *(v21 + 1) = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28470, &qword_21A458CC0);
      v83 = 1;
      sub_21A438528();
      sub_21A451914();
      *(v21 + 4) = v84;
      LOBYTE(v84) = 2;
      v39 = sub_21A4518E4();
      v40 = v72;
      *v72 = v39;
      v40[1] = v41;
      LOBYTE(v84) = 3;
      v21[40] = sub_21A4518F4() & 1;
      LOBYTE(v84) = 4;
      v21[v35[10]] = sub_21A4518F4() & 1;
      LOBYTE(v84) = 5;
      v21[v35[11]] = sub_21A4518F4() & 1;
      LOBYTE(v84) = 6;
      sub_21A451904();
      *(v21 + 6) = v42;
      LOBYTE(v84) = 7;
      sub_21A451904();
      v43 = &v21[v35[8]];
      sub_21A450CD4();
      LOBYTE(v84) = 8;
      sub_21A451904();
      v44 = v79;
      v45 = &v21[v35[9]];
      sub_21A450CD4();
      v46 = sub_21A436948(9);
      v47 = v78;
      (*(v44 + 8))(v29, v34);
      v48 = v35 + 13;
    }

    else
    {
      v49 = sub_21A450974();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      sub_21A450964();
      sub_21A438428();
      v52 = v70;
      sub_21A450954();
      (*(v79 + 8))(v29, v28);

      sub_21A3ECC34(v31, v33);
      v53 = v52;
      v54 = *v52;
      v56 = *(v53 + 8);
      v55 = *(v53 + 16);
      v57 = *(v53 + 24);
      v59 = *v21;
      v58 = *(v21 + 1);
      v60 = *(v21 + 2);
      v79 = *(v21 + 3);
      *&v80 = v60;
      sub_21A4385A4(v54, v56);
      v61 = v58;
      v62 = v81;
      sub_21A437FDC(v59, v61);
      *v21 = v54;
      *(v21 + 1) = v56;
      *(v21 + 2) = v55;
      *(v21 + 3) = v57;
      *(v21 + 4) = *(v53 + 32);
      v63 = (v53 + v62[12]);
      v64 = *v63;
      v65 = v63[1];
      v66 = v72;
      *v72 = v64;
      v66[1] = v65;
      v21[40] = *(v53 + 40);
      v21[v62[10]] = *(v53 + v62[10]);
      v21[v62[11]] = *(v53 + v62[11]);
      *(v21 + 6) = *(v53 + 48);
      v67 = v76;
      v68 = *(v77 + 16);
      v68(&v21[v62[8]], v53 + v62[8], v76);
      v68(&v21[v62[9]], v53 + v62[9], v67);
      v69 = v62[13];
      v48 = v62 + 13;
      v46 = *(v53 + v69);

      sub_21A4380B4(v53);
      v47 = v78;
    }

    *&v21[*v48] = v46;
    sub_21A438050(v21, v47);
    __swift_destroy_boxed_opaque_existential_0(v82);
    return sub_21A4380B4(v21);
  }
}

uint64_t PFLTaskPreferences.customParameters.getter()
{
  v1 = v0 + *(type metadata accessor for PFLTaskPreferences(0) + 20);
  v2 = *(v1 + *(type metadata accessor for PFLDecodableTaskParameters(0) + 52));
}

uint64_t PFLTaskPreferences.decodeCustomParameters<A>()()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = v0 + *(type metadata accessor for PFLTaskPreferences(0) + 20);
  v3 = *(v2 + *(type metadata accessor for PFLDecodableTaskParameters(0) + 52));
  v4 = sub_21A450F54();
  v16[0] = 0;
  v5 = [v1 dataWithJSONObject:v4 options:0 error:v16];

  v6 = v16[0];
  if (v5)
  {
    v7 = sub_21A450C64();
    v9 = v8;

    v10 = sub_21A450974();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_21A450964();
    sub_21A450954();

    result = sub_21A3E759C(v7, v9);
  }

  else
  {
    v14 = v6;
    sub_21A450A84();

    result = swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A437FDC(uint64_t a1, unint64_t a2)
{
  if (a2 != 6)
  {
    return sub_21A3ED49C(a1, a2);
  }

  return a1;
}

uint64_t sub_21A437FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFLDecodableTaskParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A438050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFLDecodableTaskParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A4380B4(uint64_t a1)
{
  v2 = type metadata accessor for PFLDecodableTaskParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A438138()
{
  result = type metadata accessor for PFLDecodableTaskParameters(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21A4381E4()
{
  sub_21A438350(319, &qword_27CD28C08);
  if (v0 <= 0x3F)
  {
    sub_21A4382EC();
    if (v1 <= 0x3F)
    {
      sub_21A450D14();
      if (v2 <= 0x3F)
      {
        sub_21A438350(319, &qword_27CD28C18);
        if (v3 <= 0x3F)
        {
          sub_21A43839C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A4382EC()
{
  if (!qword_27CD28C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD28470, &qword_21A458CC0);
    v0 = sub_21A4515F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD28C10);
    }
  }
}

void sub_21A438350(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21A4515F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21A43839C()
{
  if (!qword_27CD28C20)
  {
    v0 = sub_21A450F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD28C20);
    }
  }
}

unint64_t sub_21A438400(uint64_t a1)
{
  result = sub_21A438428();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21A438428()
{
  result = qword_27CD28C28;
  if (!qword_27CD28C28)
  {
    type metadata accessor for PFLDecodableTaskParameters(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C28);
  }

  return result;
}

unint64_t sub_21A438480()
{
  result = qword_27CD28C38;
  if (!qword_27CD28C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C38);
  }

  return result;
}

unint64_t sub_21A4384D4()
{
  result = qword_27CD28C40;
  if (!qword_27CD28C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C40);
  }

  return result;
}

unint64_t sub_21A438528()
{
  result = qword_27CD28C48;
  if (!qword_27CD28C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD28470, &qword_21A458CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C48);
  }

  return result;
}

uint64_t sub_21A4385A4(uint64_t a1, unint64_t a2)
{
  if (a2 != 6)
  {
    return sub_21A3ED4E4(a1, a2);
  }

  return a1;
}

unint64_t sub_21A4385B4()
{
  result = qword_27CD28C58;
  if (!qword_27CD28C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD28C50, &qword_21A458D18);
    sub_21A438640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C58);
  }

  return result;
}

unint64_t sub_21A438640()
{
  result = qword_27CD28C60;
  if (!qword_27CD28C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C60);
  }

  return result;
}

uint64_t sub_21A4386CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21A438714(uint64_t result, int a2, int a3)
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

unint64_t sub_21A438778()
{
  result = qword_27CD28C68;
  if (!qword_27CD28C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C68);
  }

  return result;
}

unint64_t sub_21A4387D0()
{
  result = qword_27CD28C70;
  if (!qword_27CD28C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C70);
  }

  return result;
}

unint64_t sub_21A438828()
{
  result = qword_27CD28C78;
  if (!qword_27CD28C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C78);
  }

  return result;
}

uint64_t sub_21A43887C()
{
  v0 = sub_21A4518A4();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21A4388C8()
{
  result = qword_27CD28C88;
  if (!qword_27CD28C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD28C80, &unk_21A458ED0);
    sub_21A438640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C88);
  }

  return result;
}

unint64_t sub_21A43894C()
{
  result = qword_27CD28A18;
  if (!qword_27CD28A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD28A18);
  }

  return result;
}

uint64_t sub_21A4389FC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21A450F24();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21A450F14();
}

uint64_t sub_21A438A98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21A450F24();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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

uint64_t Buffer.__allocating_init(desc:bufferType:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  Buffer.init(desc:bufferType:)(a1, a2);
  return v4;
}

uint64_t Buffer.__allocating_init(from:size:)()
{
  v0 = swift_allocObject();
  Buffer.init(from:size:)();
  return v0;
}

uint64_t sub_21A438C54@<X0>(_BYTE *a1@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  type = e5rt_buffer_object_get_type();
  result = sub_21A3DCF54(type);
  if (!v1)
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BufferType.hashValue.getter()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1);
  return sub_21A451B24();
}

uint64_t Buffer.init(desc:bufferType:)(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a1 + 16);
  v6 = e5rt_tensor_desc_alloc_buffer_object();
  sub_21A3DCF54(v6);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  type metadata accessor for Buffer();
  swift_deallocPartialClassInstance();
  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t Buffer.init(from:size:)()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = e5rt_buffer_object_create_from_data_pointer();
  sub_21A3DCF54(v2);
  if (!v1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
  }

  type metadata accessor for Buffer();
  swift_deallocPartialClassInstance();
  v3 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t Buffer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Buffer.init(from:)(a1);
  return v2;
}

uint64_t Buffer.init(from:)(uint64_t *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_21A439AE8(a1);
  if (!v2)
  {
    if (!v4)
    {
      sub_21A3DCAA4();
      swift_allocError();
      v8 = 24;
LABEL_7:
      *v7 = v8;
      swift_willThrow();
      type metadata accessor for Buffer();
      swift_deallocPartialClassInstance();
      v11 = *MEMORY[0x277D85DE8];
      return v1;
    }

    v5 = *a1;
    v6 = a1[1] >> 62;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_13;
      }

      v9 = v5 + 16;
      v5 = *(v5 + 16);
      if (!__OFSUB__(*(v9 + 8), v5))
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v6)
    {
LABEL_13:
      v13 = 0;
      v10 = e5rt_buffer_object_create_from_data_pointer();
      sub_21A3DCF54(v10);
      sub_21A3DCAF8();
      swift_allocError();
      v8 = 6;
      goto LABEL_7;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      __break(1u);
      __break(1u);
    }

    goto LABEL_13;
  }

  type metadata accessor for Buffer();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t Buffer.__allocating_init(from:bufferType:)(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = swift_allocObject();
  Buffer.init(from:bufferType:)(a1, a2);
  return v4;
}

uint64_t Buffer.init(from:bufferType:)(uint64_t *a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a1;
  v6 = a1[1] >> 62;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_9;
    }

    v7 = v5 + 16;
    v5 = *(v5 + 16);
    if (!__OFSUB__(*(v7 + 8), v5))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v6)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    __break(1u);
  }

LABEL_9:
  v12 = 0;
  v8 = e5rt_buffer_object_alloc();
  sub_21A3DCF54(v8);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v9 = 6;
    swift_willThrow();
  }

  type metadata accessor for Buffer();
  swift_deallocPartialClassInstance();
  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t Buffer.deinit()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_buffer_object_release();
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t Buffer.__deallocating_deinit()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_buffer_object_release();
  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_21A439640(uint64_t a1, unint64_t a2)
{
  sub_21A3DCAA4();
  result = swift_allocError();
  *v6 = 23;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v8) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

  v8 = v8;
LABEL_10:
  if (v8 < *(v2 + 32))
  {
    return swift_willThrow();
  }

  v12 = *(v2 + 24);
  return sub_21A450CA4();
}

uint64_t sub_21A439714()
{
  v1 = sub_21A450C24();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  (*(v7 + 104))(v4, *MEMORY[0x277CC92A8]);
  return sub_21A439E78(v6, v5, v4);
}

uint64_t sub_21A4397E8()
{
  v1 = sub_21A450C24();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  (*(v7 + 104))(v4, *MEMORY[0x277CC92A8]);
  v8 = sub_21A439E78(v6, v5, v4);
  v10 = v9;
  v11 = Data.toArray<A>()();
  sub_21A3E759C(v8, v10);
  return v11;
}

uint64_t sub_21A4398E4()
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(v0 + 40))
  {
    sub_21A3DCAA4();
    swift_allocError();
    v3 = 41;
  }

  else
  {
    v5 = *(v0 + 16);
    iosurface = e5rt_buffer_object_get_iosurface();
    result = sub_21A3DCF54(iosurface);
    if (v1)
    {
      goto LABEL_5;
    }

    sub_21A3DCAF8();
    swift_allocError();
    v3 = 6;
  }

  *v2 = v3;
  result = swift_willThrow();
LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A4399E4()
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(v0 + 40) != 2)
  {
    sub_21A3DCAA4();
    swift_allocError();
    v6 = 41;
LABEL_5:
    *v5 = v6;
    swift_willThrow();
    goto LABEL_6;
  }

  v2 = *(v0 + 16);
  v3 = v1;
  mtlbuffer = e5rt_buffer_object_get_mtlbuffer();
  v0 = 0;
  swift_unknownObjectRetain();
  sub_21A3DCF54(mtlbuffer);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    v6 = 6;
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_21A439AE8(uint64_t *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *a1;

      sub_21A3E759C(v3, v2);
      v22 = v3;
      v23 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_21A458F20;
      sub_21A3E759C(0, 0xC000000000000000);
      sub_21A450BF4();
      v8 = v23;
      v9 = *(v22 + 16);
      result = sub_21A4509F4();
      if (!result)
      {
        __break(1u);
        goto LABEL_27;
      }

      v11 = result;
      v12 = sub_21A450A24();
      if (__OFSUB__(v9, v12))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v5 = (v9 - v12 + v11);
      sub_21A450A14();
      *a1 = v22;
      a1[1] = v8 | 0x8000000000000000;
    }

    else
    {
      v5 = &v22;
    }

LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    return v5;
  }

  if (!v4)
  {
    sub_21A3E759C(v3, v2);
    LOWORD(v23) = v2;
    BYTE2(v23) = BYTE2(v2);
    BYTE3(v23) = BYTE3(v2);
    BYTE4(v23) = BYTE4(v2);
    BYTE5(v23) = BYTE5(v2);
    v5 = &v22;
    v6 = v23 | ((WORD2(v23) | (BYTE6(v2) << 16)) << 32);
LABEL_19:
    *a1 = v3;
    a1[1] = v6;
    goto LABEL_20;
  }

  v13 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_21A3E759C(v3, v2);
  *a1 = xmmword_21A458F20;
  sub_21A3E759C(0, 0xC000000000000000);
  v14 = v3 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v14 < v3)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (sub_21A4509F4() && __OFSUB__(v3, sub_21A450A24()))
    {
LABEL_25:
      __break(1u);
    }

    v15 = sub_21A450A44();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_21A4509D4();

    v13 = v18;
  }

  if (v14 < v3)
  {
    goto LABEL_22;
  }

  result = sub_21A4509F4();
  if (result)
  {
    v19 = result;
    v20 = sub_21A450A24();
    if (!__OFSUB__(v3, v20))
    {
      v5 = (v3 - v20 + v19);
      sub_21A450A14();

      v6 = v13 | 0x4000000000000000;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21A439D94(uint64_t result, uint64_t a2)
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

    sub_21A450C34();
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

  v3 = sub_21A4509F4();
  if (v3)
  {
    result = sub_21A450A24();
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
  v4 = sub_21A450A14();
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

  v8 = sub_21A3DBEF8(v3, v7);

  return v8;
}

uint64_t sub_21A439E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A450C24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A450C14();
  if (a2)
  {
    v11 = sub_21A450A44();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_21A4509D4();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277CC92A8])
    {
      v15 = sub_21A450A34();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_21A439D94(v14, a2);
  }

  else
  {
    v17 = sub_21A450C14();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

unint64_t sub_21A43A0D8()
{
  result = qword_27CD28CA8;
  if (!qword_27CD28CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28CA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BufferType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BufferType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void MPSContext.init()(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD7850]) init];
  if (MTLCreateSystemDefaultDevice())
  {
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      v5 = objc_allocWithZone(MEMORY[0x277CD6CF8]);
      swift_unknownObjectRetain();
      v6 = [v5 init];
      [v6 setDisableIOFencing_];
      [v6 setEnableLowLatencySignalSharedEvent_];
      [v6 setEnableLowLatencyWaitSharedEvent_];
      [v6 setCommitsWithQoS_];
      [v4 newCommandQueueWithDescriptor_];
      swift_unknownObjectRelease();
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        v8 = v7;

        if ([v8 setBackgroundGPUPriority_])
        {
          *a1 = v4;
          a1[1] = v8;
          a1[2] = v2;
        }

        else
        {
          if (qword_27CD28170 != -1)
          {
            swift_once();
          }

          v19 = sub_21A450F24();
          __swift_project_value_buffer(v19, qword_27CD28C90);
          v20 = sub_21A450F04();
          v21 = sub_21A451584();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&dword_21A3C2000, v20, v21, "Failed to set background GPU priority", v22, 2u);
            MEMORY[0x21CEDB220](v22, -1, -1);
          }

          sub_21A3DCAA4();
          swift_allocError();
          *v23 = 42;
          swift_willThrow();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v14 = sub_21A450F24();
        __swift_project_value_buffer(v14, qword_27CD28C90);
        v15 = sub_21A450F04();
        v16 = sub_21A451584();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_21A3C2000, v15, v16, "Failed to make command queue", v17, 2u);
          MEMORY[0x21CEDB220](v17, -1, -1);
        }

        sub_21A3DCAA4();
        swift_allocError();
        *v18 = 39;
        swift_willThrow();

        swift_unknownObjectRelease();
      }

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v9 = sub_21A450F24();
  __swift_project_value_buffer(v9, qword_27CD28C90);
  v10 = sub_21A450F04();
  v11 = sub_21A451584();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21A3C2000, v10, v11, "Failed to create Metal device", v12, 2u);
    MEMORY[0x21CEDB220](v12, -1, -1);
  }

  sub_21A3DCAA4();
  swift_allocError();
  *v13 = 39;
  swift_willThrow();
}

uint64_t sub_21A43A898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v6 = sub_21A450AA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v33 = a3;
  v34 = a4;
  v12 = sub_21A451054();
  v13 = [v11 enumeratorAtPath_];

  if (!v13)
  {
    goto LABEL_17;
  }

  v29 = v7;
  v30 = v6;
  v28 = v13;
  sub_21A451544();
  sub_21A450A94();
  if (!v36)
  {
LABEL_16:
    (*(v29 + 8))(v10, v30);

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  while (1)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v14 = sub_21A451054();
    v15 = sub_21A451054();
    v16 = [v14 stringByAppendingPathComponent_];

    v17 = v16;
    if (!v16)
    {
      sub_21A451084();
      v17 = sub_21A451054();
    }

    v18 = sub_21A451084();
    LOBYTE(v35) = 0;
    v19 = [v11 fileExistsAtPath:v17 isDirectory:&v35];

    if (v19)
    {
      if (v35 == 1)
      {
        break;
      }
    }

LABEL_5:

LABEL_6:
    sub_21A450A94();
    if (!v36)
    {
      goto LABEL_16;
    }
  }

  v20 = sub_21A451054();

  v21 = [v20 lastPathComponent];

  v22 = sub_21A451084();
  v24 = v23;

  if (v22 != v32 || v24 != v31)
  {
    v25 = sub_21A4519B4();

    if (v25)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

LABEL_20:
  (*(v29 + 8))(v10, v30);

LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t sub_21A43AC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v156 = a1;
  v154 = a2;
  v155 = a3;
  v152 = a4;
  v161 = *MEMORY[0x277D85DE8];
  v4 = sub_21A450BE4();
  v153 = *(v4 - 8);
  v5 = *(v153 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v144 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v144 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v144 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v144 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v144 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v144 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v144 - v27;
  v159 = 0;
  v29 = *(v156 + 16);
  e5_bundle_path = e5rt_program_library_get_e5_bundle_path();
  v31 = v157;
  result = sub_21A3DCF54(e5_bundle_path);
  if (v31)
  {
    goto LABEL_2;
  }

  v157 = v4;
  v147 = v8;
  v148 = v17;
  v146 = v11;
  v149 = v14;
  v150 = v20;
  v34 = v155;
  v151 = v26;
  if (!v159)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v68 = 6;
    result = swift_willThrow();
    goto LABEL_2;
  }

  v156 = 0;
  v35 = sub_21A4511C4();
  v37 = v36;
  v38 = v154;
  v39 = v34;
  sub_21A43A898(v154, v34, v35, v36);
  if (v40)
  {
    v144 = v35;
    v158 = 1;
    v41 = v28;
    sub_21A450AF4();

    v145 = objc_opt_self();
    v42 = [v145 defaultManager];
    sub_21A450B84();
    v43 = sub_21A451054();

    v44 = [v42 fileExistsAtPath:v43 isDirectory:&v158];

    if (v44)
    {

      v159 = v154;
      v160 = v34;

      MEMORY[0x21CED98B0](0x6172675F73706D5FLL, 0xEA00000000006870);
      v45 = v151;
      sub_21A450B44();

      v46 = [v145 defaultManager];
      sub_21A450B84();
      v47 = sub_21A451054();

      v48 = [v46 fileExistsAtPath:v47 isDirectory:&v158];

      v49 = v157;
      if (v48)
      {
        v50 = v150;
        sub_21A450B54();
        v51 = [v145 defaultManager];
        sub_21A450B94();
        v52 = sub_21A451054();

        v53 = [v51 fileExistsAtPath_];

        if (v53)
        {
          v54 = v153;
          v55 = v155;
          if (qword_27CD28170 != -1)
          {
            swift_once();
          }

          v56 = sub_21A450F24();
          __swift_project_value_buffer(v56, qword_27CD28C90);
          v57 = v148;
          (*(v54 + 16))(v148, v50, v49);

          v58 = v55;
          v59 = sub_21A450F04();
          v60 = sub_21A451574();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v149 = swift_slowAlloc();
            v159 = v149;
            *v61 = 136315394;
            *(v61 + 4) = sub_21A3E2554(v154, v58, &v159);
            *(v61 + 12) = 2080;
            sub_21A435674();
            v62 = sub_21A451974();
            v64 = v63;
            v155 = v41;
            v65 = *(v153 + 8);
            v65(v57, v157);
            v66 = sub_21A3E2554(v62, v64, &v159);
            v54 = v153;

            *(v61 + 14) = v66;
            _os_log_impl(&dword_21A3C2000, v59, v60, "Found mil file for %s at %s.", v61, 0x16u);
            v67 = v149;
            swift_arrayDestroy();
            MEMORY[0x21CEDB220](v67, -1, -1);
            MEMORY[0x21CEDB220](v61, -1, -1);

            v65(v151, v157);
            v65(v155, v157);
            v49 = v157;
          }

          else
          {

            v127 = *(v54 + 8);
            v127(v57, v49);
            v127(v151, v49);
            v127(v41, v49);
          }

          v128 = v152;
          (*(v54 + 32))(v152, v150, v49);
LABEL_45:
          v125 = *(v54 + 56);
          v124 = v128;
          v126 = 0;
          goto LABEL_46;
        }

        v159 = 0;
        v160 = 0xE000000000000000;
        sub_21A451754();
        v104 = v155;

        v159 = v154;
        v160 = v104;
        MEMORY[0x21CED98B0](0xD00000000000001ALL, 0x800000021A45CE90);
        v105 = v149;
        sub_21A450B44();

        v106 = [v145 defaultManager];
        sub_21A450B84();
        v107 = sub_21A451054();

        v108 = [v106 &selRef_defaultCompilerProcessesCount + 1];

        v54 = v153;
        if (v108)
        {
          if (qword_27CD28170 != -1)
          {
            swift_once();
          }

          v109 = sub_21A450F24();
          __swift_project_value_buffer(v109, qword_27CD28C90);
          v110 = v146;
          (*(v54 + 16))(v146, v105, v49);
          v111 = v155;

          v112 = sub_21A450F04();
          v113 = sub_21A451574();

          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            v159 = v148;
            *v114 = 136315394;
            *(v114 + 4) = sub_21A3E2554(v154, v111, &v159);
            *(v114 + 12) = 2080;
            sub_21A435674();
            v115 = sub_21A451974();
            v117 = v116;
            v118 = v110;
            v119 = *(v153 + 8);
            v119(v118, v157);
            v120 = sub_21A3E2554(v115, v117, &v159);
            v54 = v153;

            *(v114 + 14) = v120;
            _os_log_impl(&dword_21A3C2000, v112, v113, "Found mpspackage file for %s at %s.", v114, 0x16u);
            v121 = v148;
            swift_arrayDestroy();
            MEMORY[0x21CEDB220](v121, -1, -1);
            v122 = v114;
            v105 = v149;
            MEMORY[0x21CEDB220](v122, -1, -1);

            v119(v150, v157);
            v119(v151, v157);
            v119(v41, v157);
            v49 = v157;
          }

          else
          {

            v142 = *(v54 + 8);
            v142(v110, v49);
            v142(v150, v49);
            v142(v151, v49);
            v142(v41, v49);
          }

          v128 = v152;
          (*(v54 + 32))(v152, v105, v49);
          goto LABEL_45;
        }

        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v129 = sub_21A450F24();
        __swift_project_value_buffer(v129, qword_27CD28C90);
        v130 = v147;
        v131 = v151;
        (*(v54 + 16))(v147, v151, v49);
        v132 = v155;

        v133 = sub_21A450F04();
        v134 = sub_21A451584();

        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v159 = v148;
          *v135 = 136315394;
          *(v135 + 4) = sub_21A3E2554(v154, v132, &v159);
          *(v135 + 12) = 2080;
          sub_21A435674();
          LODWORD(v155) = v134;
          v136 = sub_21A451974();
          v138 = v137;
          v139 = *(v153 + 8);
          v139(v130, v157);
          v140 = sub_21A3E2554(v136, v138, &v159);
          v54 = v153;

          *(v135 + 14) = v140;
          _os_log_impl(&dword_21A3C2000, v133, v155, "Cannot find mil or mpsgraphpackage file for %s at %s.", v135, 0x16u);
          v141 = v148;
          swift_arrayDestroy();
          MEMORY[0x21CEDB220](v141, -1, -1);
          MEMORY[0x21CEDB220](v135, -1, -1);

          v139(v105, v157);
          v139(v150, v157);
          v139(v151, v157);
          v139(v41, v157);
          v49 = v157;
        }

        else
        {

          v143 = *(v54 + 8);
          v143(v130, v49);
          v143(v105, v49);
          v143(v150, v49);
          v143(v131, v49);
          v143(v41, v49);
        }

        v125 = *(v54 + 56);
        v124 = v152;
      }

      else
      {
        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v87 = sub_21A450F24();
        __swift_project_value_buffer(v87, qword_27CD28C90);
        v88 = v153;
        v89 = v23;
        (*(v153 + 16))(v23, v41, v49);
        v90 = v155;

        v91 = sub_21A450F04();
        v92 = sub_21A451584();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = v89;
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v96 = v90;
          v97 = v95;
          v159 = v95;
          *v94 = 136315394;
          *(v94 + 4) = sub_21A3E2554(v154, v96, &v159);
          *(v94 + 12) = 2080;
          sub_21A435674();
          v98 = sub_21A451974();
          v100 = v99;
          v155 = v41;
          v101 = *(v153 + 8);
          v101(v93, v157);
          v102 = sub_21A3E2554(v98, v100, &v159);
          v88 = v153;

          *(v94 + 14) = v102;
          _os_log_impl(&dword_21A3C2000, v91, v92, "Cannot find %s_mps_graph directory at %s.", v94, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CEDB220](v97, -1, -1);
          MEMORY[0x21CEDB220](v94, -1, -1);

          v101(v151, v157);
          v101(v155, v157);
          v49 = v157;
        }

        else
        {

          v123 = *(v88 + 8);
          v123(v89, v49);
          v123(v45, v49);
          v123(v41, v49);
        }

        v124 = v152;
        v125 = *(v88 + 56);
      }

      v126 = 1;
LABEL_46:
      result = v125(v124, v126, 1, v49);
      goto LABEL_2;
    }

    v79 = v157;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v80 = sub_21A450F24();
    __swift_project_value_buffer(v80, qword_27CD28C90);
    v81 = v34;

    v82 = sub_21A450F04();
    v83 = sub_21A451584();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v159 = v85;
      *v84 = 136315394;
      *(v84 + 4) = sub_21A3E2554(v154, v81, &v159);
      *(v84 + 12) = 2080;
      v86 = sub_21A3E2554(v144, v37, &v159);

      *(v84 + 14) = v86;
      _os_log_impl(&dword_21A3C2000, v82, v83, "Cannot find %s directory at %s.", v84, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v85, -1, -1);
      MEMORY[0x21CEDB220](v84, -1, -1);
    }

    else
    {
    }

    v103 = v153;
    (*(v153 + 8))(v41, v79);
    result = (*(v103 + 56))(v152, 1, 1, v79);
  }

  else
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v69 = sub_21A450F24();
    __swift_project_value_buffer(v69, qword_27CD28C90);

    v70 = sub_21A450F04();
    v71 = sub_21A451584();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v153;
    if (v72)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = v39;
      v77 = v75;
      v159 = v75;
      *v74 = 136315394;
      *(v74 + 4) = sub_21A3E2554(v38, v76, &v159);
      *(v74 + 12) = 2080;
      v78 = sub_21A3E2554(v35, v37, &v159);

      *(v74 + 14) = v78;
      _os_log_impl(&dword_21A3C2000, v70, v71, "Cannot locate function %s at %s.", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v77, -1, -1);
      MEMORY[0x21CEDB220](v74, -1, -1);
    }

    else
    {
    }

    result = (*(v73 + 56))(v152, 1, 1, v157);
  }

LABEL_2:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_21A43BE28(uint64_t a1)
{
  v2 = sub_21A450BE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CD7810]) init];
  [v7 setAllowedComputeDevices_];
  sub_21A450B94();
  v8 = sub_21A451234();

  if (v8)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CD7848]) init];
    [v9 setCompilerOptions_];
    [v9 setCompilationDescriptor_];
    v10 = objc_allocWithZone(MEMORY[0x277CD7840]);
    v11 = sub_21A450B34();
    v12 = [v10 initWithMILProgramWithURL:v11 executableDescriptor:v9];
  }

  else
  {
    sub_21A450B94();
    v13 = sub_21A451234();

    if (v13)
    {
      v14 = objc_allocWithZone(MEMORY[0x277CD7840]);
      v15 = sub_21A450B34();
      v12 = [v14 initWithMPSGraphPackageAtURL:v15 compilationDescriptor:v7];
    }

    else
    {
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v16 = sub_21A450F24();
      __swift_project_value_buffer(v16, qword_27CD28C90);
      (*(v3 + 16))(v6, a1, v2);
      v17 = sub_21A450F04();
      v18 = sub_21A451574();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v27 = v20;
        *v19 = 136315138;
        v21 = sub_21A450B94();
        v23 = v22;
        (*(v3 + 8))(v6, v2);
        v24 = sub_21A3E2554(v21, v23, &v27);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_21A3C2000, v17, v18, "Unsupported file format for MPS function: %s.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x21CEDB220](v20, -1, -1);
        MEMORY[0x21CEDB220](v19, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      return 0;
    }
  }

  return v12;
}

void E5MBackgroundMPSFunction.init(functionName:library:mpsContext:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v123 = a1;
  v124 = a3;
  v127 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v119 - v10;
  v122 = sub_21A450BE4();
  v12 = *(v122 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v122);
  v16 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v121 = &v119 - v17;
  v19 = *a4;
  v18 = a4[1];
  v20 = a4[2];
  v21 = MEMORY[0x277D84F90];
  *(v6 + 144) = MEMORY[0x277D84F90];
  *(v6 + 152) = v21;
  *(v6 + 160) = v21;
  *(v6 + 168) = v21;
  *(v6 + 176) = sub_21A3E5AAC(v21);
  *(v6 + 184) = sub_21A3E5AAC(v21);
  if (v19)
  {
    *(v6 + 80) = v19;
    *(v6 + 88) = v18;
    *(v6 + 96) = v20;
  }

  else
  {
    MPSContext.init()(&v125);
    if (v5)
    {

LABEL_27:
      v73 = *(v6 + 144);

      v74 = *(v6 + 152);

      v75 = *(v6 + 160);

      v76 = *(v6 + 168);

      v77 = *(v6 + 176);

      v78 = *(v6 + 184);

      type metadata accessor for E5MBackgroundMPSFunction();
      swift_deallocPartialClassInstance();
      return;
    }

    v65 = v126;
    *(v6 + 80) = v125;
    *(v6 + 96) = v65;
  }

  v22 = v123;
  v23 = v124;
  v24 = v127;
  *&v125 = v123;
  *(&v125 + 1) = v127;

  MEMORY[0x21CED98B0](0x6172675F73706D5FLL, 0xEA00000000006870);
  v25 = *(&v125 + 1);
  *(v6 + 104) = v125;
  *(v6 + 112) = v25;
  sub_21A43AC0C(v23, v22, v24, v11);
  v26 = v12;
  if (v5)
  {

LABEL_21:

LABEL_22:
    v67 = 0;
    v68 = 0;
LABEL_23:
    v69 = *(v6 + 80);
    v70 = *(v6 + 88);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v71 = *(v6 + 112);

    if (v67)
    {
    }

    if (v68)
    {
      v72 = *(v6 + 128);
    }

    goto LABEL_27;
  }

  v27 = v122;
  if ((*(v12 + 48))(v11, 1, v122) == 1)
  {
    sub_21A43F43C(v11);
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v28 = sub_21A450F24();
    __swift_project_value_buffer(v28, qword_27CD28C90);

    v29 = sub_21A450F04();
    v30 = sub_21A451584();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v123;
    if (v31)
    {
      v33 = v24;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v125 = v35;
      *v34 = 136315138;
      v36 = sub_21A3E2554(v32, v33, &v125);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_21A3C2000, v29, v30, "Failed to find mil or mpspackage path for %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x21CEDB220](v35, -1, -1);
      MEMORY[0x21CEDB220](v34, -1, -1);
    }

    else
    {
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v66 = 43;
    swift_willThrow();
    goto LABEL_21;
  }

  v37 = v121;
  (*(v12 + 32))(v121, v11, v27);
  v38 = sub_21A43BE28(v37);
  if (!v38)
  {

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v79 = sub_21A450F24();
    __swift_project_value_buffer(v79, qword_27CD28C90);
    v80 = v122;
    (*(v12 + 16))(v16, v121, v122);
    v81 = sub_21A450F04();
    v82 = sub_21A451584();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v120 = v83;
      v127 = swift_slowAlloc();
      *&v125 = v127;
      *v83 = 136315138;
      sub_21A435674();
      LODWORD(v123) = v82;
      v84 = sub_21A451974();
      v86 = v85;
      v87 = *(v26 + 8);
      v87(v16, v80);
      v88 = sub_21A3E2554(v84, v86, &v125);

      v89 = v120;
      *(v120 + 4) = v88;
      v90 = v87;
      _os_log_impl(&dword_21A3C2000, v81, v123, "Failed to build MPSGraphExecutable for %s", v89, 0xCu);
      v91 = v127;
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x21CEDB220](v91, -1, -1);
      MEMORY[0x21CEDB220](v89, -1, -1);
    }

    else
    {

      v90 = *(v12 + 8);
      v90(v16, v80);
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v92 = 43;
    swift_willThrow();

    v90(v121, v80);
    goto LABEL_22;
  }

  *(v6 + 120) = v38;
  v39 = *(v6 + 104);
  v40 = *(v6 + 112);
  v41 = v38;

  v42 = v41;
  v43 = sub_21A451054();

  v44 = [v42 getInputShapesForFunction_];

  if (!v44)
  {
LABEL_35:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v93 = sub_21A450F24();
    __swift_project_value_buffer(v93, qword_27CD28C90);

    v94 = sub_21A450F04();
    v95 = sub_21A451584();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&v125 = v97;
      *v96 = 136315138;
      v98 = *(v6 + 104);
      v99 = *(v6 + 112);

      v100 = sub_21A3E2554(v98, v99, &v125);

      *(v96 + 4) = v100;
      _os_log_impl(&dword_21A3C2000, v94, v95, "Failed to get input names or shape for %s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x21CEDB220](v97, -1, -1);
      MEMORY[0x21CEDB220](v96, -1, -1);
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v101 = 43;
    swift_willThrow();

    (*(v26 + 8))(v121, v122);
    v68 = 0;
    v67 = 1;
    goto LABEL_23;
  }

  v120 = sub_21A3ED284(0, &qword_27CD28CC8, 0x277CD7880);
  v45 = sub_21A4512E4();

  v46 = *(v6 + 104);
  v47 = *(v6 + 112);

  v48 = sub_21A451054();

  v49 = [v42 inputNamesForFunction_];

  if (!v49)
  {

    goto LABEL_35;
  }

  v50 = sub_21A4512E4();

  v51 = *(v6 + 144);
  *(v6 + 144) = v50;

  v52 = sub_21A43F4A4(v50, v45);

  *(v6 + 128) = v52;
  v54 = *(v6 + 104);
  v53 = *(v6 + 112);

  v55 = sub_21A451054();

  v56 = [v42 getOutputShapesForFunction_];

  if (!v56)
  {
LABEL_41:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v102 = sub_21A450F24();
    __swift_project_value_buffer(v102, qword_27CD28C90);

    v103 = sub_21A450F04();
    v104 = sub_21A451584();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v125 = v106;
      *v105 = 136315138;
      v107 = *(v6 + 104);
      v108 = *(v6 + 112);

      v109 = sub_21A3E2554(v107, v108, &v125);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_21A3C2000, v103, v104, "Failed to get output names or shape for %s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x21CEDB220](v106, -1, -1);
      MEMORY[0x21CEDB220](v105, -1, -1);
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v110 = 43;
    swift_willThrow();

    (*(v26 + 8))(v121, v122);
    v67 = 1;
    v68 = 1;
    goto LABEL_23;
  }

  v57 = sub_21A4512E4();

  v58 = *(v6 + 104);
  v59 = *(v6 + 112);

  v60 = sub_21A451054();

  v61 = [v42 outputNamesForFunction_];

  if (!v61)
  {

    goto LABEL_41;
  }

  v62 = sub_21A4512E4();

  v63 = *(v6 + 152);
  *(v6 + 152) = v62;

  v64 = sub_21A43F4A4(v62, v57);

  *(v6 + 136) = v64;

  v111 = BaseE5Function.init(functionName:library:lazyPrepareOpForEncode:)(v123, v127, v23);

  v113 = MEMORY[0x21CEDA420](v112);
  sub_21A43CF24(v111, &v125);
  objc_autoreleasePoolPop(v113);
  v114 = v125;
  if (v125)
  {
    v115 = v111[19];

    v117 = sub_21A43F4A4(v116, v114);

    (*(v12 + 8))(v121, v122);
    v118 = v111[17];
    v111[17] = v117;
  }

  else
  {
    (*(v12 + 8))(v121, v122);
  }
}