uint64_t sub_1D9EE9FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CA0, &unk_1D9F35D60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v24 - v12;
  v14 = sub_1D9F2B77C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3(a1, a2);
  sub_1D9F2B76C();
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    if (*(v19 + 16) && (v21 = sub_1D9EEA200(v18), (v22 & 1) != 0))
    {
      sub_1D9E722B0(*(v19 + 56) + 32 * v21, v25);
      (*(v15 + 8))(v18, v14);

      result = swift_dynamicCast();
      if (result)
      {
        v23 = v24[1];
        *(a5 + 24) = &type metadata for XPCValueContainer;
        *(a5 + 32) = a4;
        *a5 = v23;
        return result;
      }
    }

    else
    {

      result = (*(v15 + 8))(v18, v14);
    }

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1D9EEA200(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1D9F2B77C();
  v5 = sub_1D9F2B0DC();

  return sub_1D9EEA46C(a1, v5);
}

unint64_t sub_1D9EEA264(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1D9F2AD7C();
  sub_1D9EEAB00(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
  v5 = sub_1D9F2B0DC();

  return sub_1D9EEA604(a1, v5);
}

unint64_t sub_1D9EEA2FC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D9F2BAFC();
  type metadata accessor for CFString(0);
  sub_1D9EEAB00(&qword_1ECB75548, type metadata accessor for CFString);
  sub_1D9F2AD9C();
  v4 = sub_1D9F2BB4C();

  return sub_1D9EEA7C4(a1, v4);
}

unint64_t sub_1D9EEA3B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D9F2B63C();

  return sub_1D9EEA8D0(a1, v5);
}

unint64_t sub_1D9EEA3F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v6 = sub_1D9F2BB4C();

  return sub_1D9EEA998(a1, a2, v6);
}

unint64_t sub_1D9EEA46C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1D9F2B77C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_1D9F2B10C();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D9EEA604(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1D9F2AD7C();
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
      sub_1D9EEAB00(&qword_1ECB731E0, MEMORY[0x1E69695A8]);
      v16 = sub_1D9F2B10C();
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

unint64_t sub_1D9EEA7C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1D9EEAB00(&qword_1ECB75548, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D9F2AD8C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D9EEA8D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D9EEAA50(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA743430](v9, a1);
      sub_1D9EEAAAC(v9);
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

unint64_t sub_1D9EEA998(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D9F2BA1C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1D9EEAB00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9EEAB4C()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x676E69727473;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EEAB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9F49B90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EEAC68(uint64_t a1)
{
  v2 = sub_1D9EF08F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EEACA4(uint64_t a1)
{
  v2 = sub_1D9EF08F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EEACE0(uint64_t a1)
{
  v2 = sub_1D9EF0948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EEAD1C(uint64_t a1)
{
  v2 = sub_1D9EF0948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EEAD58(uint64_t a1)
{
  v2 = sub_1D9EF099C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EEAD94(uint64_t a1)
{
  v2 = sub_1D9EF099C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.Identity.Person.Name.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75550, &qword_1D9F420B0);
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v31 - v4;
  v5 = sub_1D9F2AB6C();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75558, &qword_1D9F420B8);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Contact.Identity.Person.Name(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75560, &qword_1D9F420C0);
  v16 = *(v39 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v19 = &v31 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF08F4();
  sub_1D9F2BB8C();
  sub_1D9EF11C8(v38, v15, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v34;
    v22 = v32;
    v23 = v15;
    v24 = v35;
    (*(v34 + 32))(v32, v23, v35);
    v41 = 1;
    sub_1D9EF0948();
    v25 = v33;
    v26 = v39;
    sub_1D9F2B8FC();
    sub_1D9EF09F0(&qword_1ECB75578, MEMORY[0x1E6968A70]);
    v27 = v37;
    sub_1D9F2B9AC();
    (*(v36 + 8))(v25, v27);
    (*(v21 + 8))(v22, v24);
  }

  else
  {
    v29 = *v15;
    v28 = v15[1];
    v40 = 0;
    sub_1D9EF099C();
    v26 = v39;
    sub_1D9F2B8FC();
    sub_1D9F2B95C();

    (*(v31 + 8))(v11, v8);
  }

  return (*(v16 + 8))(v19, v26);
}

uint64_t Contact.Identity.Person.Name.hash(into:)()
{
  v1 = sub_1D9F2AB6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Contact.Identity.Person.Name(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9EF11C8(v0, v9, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x1DA7438F0](1);
    sub_1D9EF09F0(&qword_1ECB75588, MEMORY[0x1E6968A70]);
    sub_1D9F2B0EC();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = *v9;
    v12 = v9[1];
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
  }
}

uint64_t Contact.Identity.Person.Name.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D9F2AB6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Contact.Identity.Person.Name(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9F2BAFC();
  sub_1D9EF11C8(v1, v10, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1DA7438F0](1);
    sub_1D9EF09F0(&qword_1ECB75588, MEMORY[0x1E6968A70]);
    sub_1D9F2B0EC();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    v12 = v10[1];
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

uint64_t Contact.Identity.Person.Name.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75590, &qword_1D9F420C8);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v51 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75598, &qword_1D9F420D0);
  v55 = *(v58 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v51 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755A0, &unk_1D9F420D8);
  v61 = *(v59 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v51 - v11;
  v13 = type metadata accessor for Contact.Identity.Person.Name(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D9EF08F4();
  v25 = v63;
  sub_1D9F2BB7C();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v52 = v20;
  v53 = v17;
  v26 = v9;
  v28 = v58;
  v27 = v59;
  v29 = v60;
  v54 = v22;
  v63 = v13;
  v30 = v62;
  v31 = sub_1D9F2B8DC();
  v32 = (2 * *(v31 + 16)) | 1;
  v65 = v31;
  v66 = v31 + 32;
  v67 = 0;
  v68 = v32;
  v33 = sub_1D9E4618C();
  if (v33 == 2 || v67 != v68 >> 1)
  {
    v39 = sub_1D9F2B6BC();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
    *v41 = v63;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v61 + 8))(v12, v27);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  if (v33)
  {
    v69 = 1;
    sub_1D9EF0948();
    sub_1D9F2B7DC();
    v34 = v54;
    sub_1D9F2AB6C();
    sub_1D9EF09F0(&qword_1ECB755A8, MEMORY[0x1E6968A70]);
    v35 = v53;
    v36 = v56;
    sub_1D9F2B89C();
    (*(v57 + 8))(v29, v36);
    (*(v61 + 8))(v12, v27);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v37 = v35;
    v38 = v62;
  }

  else
  {
    v69 = 0;
    sub_1D9EF099C();
    sub_1D9F2B7DC();
    v44 = v12;
    v45 = sub_1D9F2B84C();
    v46 = v61;
    v47 = v45;
    v49 = v48;
    (*(v55 + 8))(v26, v28);
    (*(v46 + 8))(v44, v27);
    swift_unknownObjectRelease();
    v50 = v52;
    *v52 = v47;
    v50[1] = v49;
    swift_storeEnumTagMultiPayload();
    v37 = v50;
    v38 = v30;
    v34 = v54;
  }

  sub_1D9EF16D8(v37, v34, type metadata accessor for Contact.Identity.Person.Name);
  sub_1D9EF16D8(v34, v38, type metadata accessor for Contact.Identity.Person.Name);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_1D9EEBCCC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D9F2AB6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9F2BAFC();
  sub_1D9EF11C8(v4, v13, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x1DA7438F0](1);
    sub_1D9EF09F0(&qword_1ECB75588, MEMORY[0x1E6968A70]);
    sub_1D9F2B0EC();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v14 = *v13;
    v15 = v13[1];
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

uint64_t Contact.Identity.Person.jobTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for Contact.Identity.Person(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Contact.Identity.Person.jobTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Contact.Identity.Person(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Contact.Identity.Person.department.getter()
{
  v1 = (v0 + *(type metadata accessor for Contact.Identity.Person(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Contact.Identity.Person.department.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Contact.Identity.Person(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Contact.Identity.Person.organization.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Contact.Identity.Person(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D9EF0AC8(v4, v5);
}

uint64_t Contact.Identity.Person.organization.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for Contact.Identity.Person(0) + 28));
  result = sub_1D9EF0ADC(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t Contact.Identity.Person.init(name:jobTitle:department:organization:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a6[1];
  v20 = *a6;
  v14 = type metadata accessor for Contact.Identity.Person.Name(0);
  (*(*(v14 - 8) + 56))(a7, 1, 1, v14);
  v15 = type metadata accessor for Contact.Identity.Person(0);
  v16 = (a7 + v15[5]);
  v17 = (a7 + v15[6]);
  v18 = (a7 + v15[7]);
  *v18 = xmmword_1D9F420A0;
  sub_1D9EF0A38(a1, a7);
  *v16 = a2;
  v16[1] = a3;
  *v17 = a4;
  v17[1] = a5;
  result = sub_1D9EF0ADC(*v18, v18[1]);
  *v18 = v20;
  v18[1] = v13;
  return result;
}

uint64_t sub_1D9EEC290()
{
  v1 = 1701667182;
  v2 = 0x656D747261706564;
  if (*v0 != 2)
  {
    v2 = 0x617A696E6167726FLL;
  }

  if (*v0)
  {
    v1 = 0x656C746954626F6ALL;
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

uint64_t sub_1D9EEC310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EF3010(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EEC338(uint64_t a1)
{
  v2 = sub_1D9EF106C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EEC374(uint64_t a1)
{
  v2 = sub_1D9EF106C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.Identity.Person.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B8, &qword_1D9F420F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF106C();
  sub_1D9F2BB8C();
  LOBYTE(v22) = 0;
  type metadata accessor for Contact.Identity.Person.Name(0);
  sub_1D9EF09F0(&qword_1ECB755C8, type metadata accessor for Contact.Identity.Person.Name);
  sub_1D9F2B94C();
  if (!v2)
  {
    v11 = type metadata accessor for Contact.Identity.Person(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v22) = 1;
    sub_1D9F2B90C();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v22) = 2;
    sub_1D9F2B90C();
    v18 = (v3 + v11[7]);
    v19 = v18[1];
    v22 = *v18;
    v23 = v19;
    v21[15] = 3;
    sub_1D9EF0AC8(v22, v19);
    sub_1D9EF10C0();
    sub_1D9F2B94C();
    sub_1D9EF0ADC(v22, v23);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Contact.Identity.Person.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D9F2AB6C();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Contact.Identity.Person.Name(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  sub_1D9E51E70(v1, &v31 - v16, &qword_1ECB755B0, &qword_1D9F420E8);
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9EF16D8(v17, v13, type metadata accessor for Contact.Identity.Person.Name);
    sub_1D9F2BB1C();
    sub_1D9EF11C8(v13, v11, type metadata accessor for Contact.Identity.Person.Name);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v31;
      v18 = v32;
      (*(v31 + 32))(v5, v11, v32);
      MEMORY[0x1DA7438F0](1);
      sub_1D9EF09F0(&qword_1ECB75588, MEMORY[0x1E6968A70]);
      sub_1D9F2B0EC();
      (*(v19 + 8))(v5, v18);
    }

    else
    {
      v20 = *v11;
      v21 = v11[1];
      MEMORY[0x1DA7438F0](0);
      sub_1D9F2B18C();
    }

    sub_1D9EF1114(v13, type metadata accessor for Contact.Identity.Person.Name);
  }

  v22 = type metadata accessor for Contact.Identity.Person(0);
  v23 = (v1 + v22[5]);
  if (v23[1])
  {
    v24 = *v23;
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
  }

  else
  {
    sub_1D9F2BB1C();
  }

  v25 = (v1 + v22[6]);
  if (v25[1])
  {
    v26 = *v25;
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
  }

  else
  {
    sub_1D9F2BB1C();
  }

  v27 = (v1 + v22[7]);
  v28 = v27[1];
  if (v28 == 1)
  {
    return sub_1D9F2BB1C();
  }

  v29 = *v27;
  sub_1D9F2BB1C();
  if (!v28)
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();
  return sub_1D9F2B18C();
}

uint64_t Contact.Identity.Person.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v31 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755D8, &qword_1D9F420F8);
  v34 = *(v37 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v31 - v7;
  v9 = type metadata accessor for Contact.Identity.Person(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Contact.Identity.Person.Name(0);
  v15 = *(*(v14 - 8) + 56);
  v33 = v14;
  v15(v13, 1, 1);
  v16 = &v13[v10[7]];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v13[v10[8]];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v13[v10[9]];
  *v18 = xmmword_1D9F420A0;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF106C();
  v36 = v8;
  v20 = v38;
  sub_1D9F2BB7C();
  if (!v20)
  {
    v38 = v18;
    v21 = v34;
    LOBYTE(v39) = 0;
    sub_1D9EF09F0(&qword_1ECB755E0, type metadata accessor for Contact.Identity.Person.Name);
    v23 = v35;
    v22 = v36;
    sub_1D9F2B83C();
    sub_1D9EF0A38(v23, v13);
    LOBYTE(v39) = 1;
    *v16 = sub_1D9F2B7FC();
    v16[1] = v24;
    LOBYTE(v39) = 2;
    *v17 = sub_1D9F2B7FC();
    v17[1] = v26;
    v41 = 3;
    sub_1D9EF1174();
    v27 = v37;
    sub_1D9F2B83C();
    (*(v21 + 8))(v22, v27);
    v28 = v39;
    v29 = v40;
    v30 = v38;
    sub_1D9EF0ADC(*v38, v38[1]);
    *v30 = v28;
    v30[1] = v29;
    sub_1D9EF11C8(v13, v32, type metadata accessor for Contact.Identity.Person);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9EF1114(v13, type metadata accessor for Contact.Identity.Person);
}

uint64_t Contact.Identity.Organization.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Contact.Identity.Organization.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

VisualActionPredictionSupport::Contact::Identity::Organization __swiftcall Contact.Identity.Organization.init(name:)(Swift::String_optional name)
{
  object = name.value._object;
  countAndFlagsBits = name.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.name.value._object = v6;
  result.name.value._countAndFlagsBits = v5;
  return result;
}

uint64_t static Contact.Identity.Organization.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1D9F2BA1C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D9EECF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EECFFC(uint64_t a1)
{
  v2 = sub_1D9EF1230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EED038(uint64_t a1)
{
  v2 = sub_1D9EF1230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.Identity.Organization.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755F0, &qword_1D9F42100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF1230();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Contact.Identity.Organization.hash(into:)()
{
  if (!v0[1])
  {
    return sub_1D9F2BB1C();
  }

  v1 = *v0;
  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t Contact.Identity.Organization.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  if (v2)
  {
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

uint64_t Contact.Identity.Organization.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75600, &qword_1D9F42108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF1230();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v11 = sub_1D9F2B7FC();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EED424(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755F0, &qword_1D9F42100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF1230();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D9EED564()
{
  if (*v0)
  {
    result = 0x617A696E6167726FLL;
  }

  else
  {
    result = 0x6E6F73726570;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EED5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EED680(uint64_t a1)
{
  v2 = sub_1D9EF1630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EED6BC(uint64_t a1)
{
  v2 = sub_1D9EF1630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EED6F8(uint64_t a1)
{
  v2 = sub_1D9EF1684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EED734(uint64_t a1)
{
  v2 = sub_1D9EF1684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EED770(uint64_t a1)
{
  v2 = sub_1D9EF1740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EED7AC(uint64_t a1)
{
  v2 = sub_1D9EF1740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.Identity.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75608, &qword_1D9F42110);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75610, &qword_1D9F42118);
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v28 - v7;
  v28 = type metadata accessor for Contact.Identity.Person(0);
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Contact.Identity(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75618, &qword_1D9F42120);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF1630();
  sub_1D9F2BB8C();
  sub_1D9EF11C8(v35, v14, type metadata accessor for Contact.Identity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v14;
    v21 = v14[1];
    LOBYTE(v36) = 1;
    sub_1D9EF1684();
    v23 = v30;
    sub_1D9F2B8FC();
    v36 = v22;
    v37 = v21;
    sub_1D9EF10C0();
    v24 = v34;
    sub_1D9F2B9AC();
    (*(v33 + 8))(v23, v24);
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    sub_1D9EF16D8(v14, v10, type metadata accessor for Contact.Identity.Person);
    LOBYTE(v36) = 0;
    sub_1D9EF1740();
    v26 = v29;
    sub_1D9F2B8FC();
    sub_1D9EF09F0(&qword_1ECB75638, type metadata accessor for Contact.Identity.Person);
    v27 = v32;
    sub_1D9F2B9AC();
    (*(v31 + 8))(v26, v27);
    sub_1D9EF1114(v10, type metadata accessor for Contact.Identity.Person);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t Contact.Identity.hash(into:)()
{
  v1 = sub_1D9F2AB6C();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Contact.Identity.Person.Name(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Contact.Identity.Person(0);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Contact.Identity(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9EF11C8(v0, v22, type metadata accessor for Contact.Identity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v22;
    v23 = v22[1];
    MEMORY[0x1DA7438F0](1);
    sub_1D9F2BB1C();
    if (v23)
    {
      sub_1D9F2B18C();
    }
  }

  else
  {
    sub_1D9EF16D8(v22, v18, type metadata accessor for Contact.Identity.Person);
    MEMORY[0x1DA7438F0](0);
    sub_1D9E51E70(v18, v14, &qword_1ECB755B0, &qword_1D9F420E8);
    if ((*(v5 + 48))(v14, 1, v4) == 1)
    {
      sub_1D9F2BB1C();
    }

    else
    {
      v25 = v14;
      v26 = v43;
      sub_1D9EF16D8(v25, v43, type metadata accessor for Contact.Identity.Person.Name);
      sub_1D9F2BB1C();
      sub_1D9EF11C8(v26, v9, type metadata accessor for Contact.Identity.Person.Name);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v40;
        v27 = v41;
        v29 = v42;
        (*(v41 + 32))(v40, v9, v42);
        MEMORY[0x1DA7438F0](1);
        sub_1D9EF09F0(&qword_1ECB75588, MEMORY[0x1E6968A70]);
        sub_1D9F2B0EC();
        (*(v27 + 8))(v28, v29);
      }

      else
      {
        v31 = *v9;
        v32 = v9[1];
        MEMORY[0x1DA7438F0](0);
        sub_1D9F2B18C();
      }

      sub_1D9EF1114(v26, type metadata accessor for Contact.Identity.Person.Name);
    }

    v33 = &v18[v15[5]];
    if (*(v33 + 1))
    {
      v34 = *v33;
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
    }

    else
    {
      sub_1D9F2BB1C();
    }

    v35 = &v18[v15[6]];
    if (*(v35 + 1))
    {
      v36 = *v35;
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
    }

    else
    {
      sub_1D9F2BB1C();
    }

    v37 = &v18[v15[7]];
    v38 = *(v37 + 1);
    if (v38 == 1 || (v39 = *v37, sub_1D9F2BB1C(), !v38))
    {
      sub_1D9F2BB1C();
    }

    else
    {
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
    }

    return sub_1D9EF1114(v18, type metadata accessor for Contact.Identity.Person);
  }
}

uint64_t sub_1D9EEE1EC(void (*a1)(_BYTE *))
{
  sub_1D9F2BAFC();
  a1(v3);
  return sub_1D9F2BB4C();
}

uint64_t Contact.Identity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75640, &qword_1D9F42128);
  v54 = *(v51 - 8);
  v3 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75648, &qword_1D9F42130);
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75650, &qword_1D9F42138);
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for Contact.Identity(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D9EF1630();
  v25 = v59;
  sub_1D9F2BB7C();
  if (!v25)
  {
    v49 = v17;
    v50 = v22;
    v59 = v20;
    v27 = v56;
    v26 = v57;
    v28 = v58;
    v29 = sub_1D9F2B8DC();
    v30 = (2 * *(v29 + 16)) | 1;
    v61 = v29;
    v62 = v29 + 32;
    v63 = 0;
    v64 = v30;
    v31 = sub_1D9E4618C();
    v32 = v9;
    if (v31 == 2 || v63 != v64 >> 1)
    {
      v39 = sub_1D9F2B6BC();
      swift_allocError();
      v41 = v40;
      v42 = v12;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
      *v41 = v13;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v27 + 8))(v42, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        LOBYTE(v60) = 1;
        sub_1D9EF1684();
        v33 = v55;
        sub_1D9F2B7DC();
        v34 = v28;
        sub_1D9EF1174();
        v35 = v51;
        sub_1D9F2B89C();
        (*(v54 + 8))(v33, v35);
        (*(v27 + 8))(v12, v32);
        swift_unknownObjectRelease();
        v36 = v49;
        *v49 = v60;
        swift_storeEnumTagMultiPayload();
        v37 = v36;
        v38 = v50;
        sub_1D9EF16D8(v37, v50, type metadata accessor for Contact.Identity);
      }

      else
      {
        LOBYTE(v60) = 0;
        sub_1D9EF1740();
        v45 = v26;
        sub_1D9F2B7DC();
        type metadata accessor for Contact.Identity.Person(0);
        sub_1D9EF09F0(&qword_1ECB75658, type metadata accessor for Contact.Identity.Person);
        v46 = v59;
        v47 = v52;
        sub_1D9F2B89C();
        (*(v53 + 8))(v45, v47);
        (*(v27 + 8))(v12, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v50;
        sub_1D9EF16D8(v46, v50, type metadata accessor for Contact.Identity);
        v34 = v58;
      }

      sub_1D9EF16D8(v38, v34, type metadata accessor for Contact.Identity);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_1D9EEE8D0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D9F2BAFC();
  a3(v5);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EEE934(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D9F2BAFC();
  a4(v6);
  return sub_1D9F2BB4C();
}

uint64_t Contact.emailAddresses.getter()
{
  v1 = *(v0 + *(type metadata accessor for Contact(0) + 20));
}

uint64_t Contact.emailAddresses.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Contact(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Contact.phoneNumbers.getter()
{
  v1 = *(v0 + *(type metadata accessor for Contact(0) + 24));
}

uint64_t Contact.phoneNumbers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Contact(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Contact.postalAddresses.getter()
{
  v1 = *(v0 + *(type metadata accessor for Contact(0) + 28));
}

uint64_t Contact.postalAddresses.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Contact(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Contact.socialProfiles.getter()
{
  v1 = *(v0 + *(type metadata accessor for Contact(0) + 32));
}

uint64_t Contact.socialProfiles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Contact(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Contact.links.getter()
{
  v1 = *(v0 + *(type metadata accessor for Contact(0) + 36));
}

uint64_t Contact.links.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Contact(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

int *Contact.init(identity:emailAddresses:phoneNumbers:postalAddresses:socialProfiles:links:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1D9EF16D8(a1, a7, type metadata accessor for Contact.Identity);
  result = type metadata accessor for Contact(0);
  *(a7 + result[5]) = a2;
  *(a7 + result[6]) = a3;
  *(a7 + result[7]) = a4;
  *(a7 + result[8]) = a5;
  *(a7 + result[9]) = a6;
  return result;
}

uint64_t sub_1D9EEEE18()
{
  v1 = *v0;
  v2 = 0x797469746E656469;
  v3 = 0x64416C6174736F70;
  v4 = 0x72506C6169636F73;
  if (v1 != 4)
  {
    v4 = 0x736B6E696CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6464416C69616D65;
  if (v1 != 1)
  {
    v5 = 0x6D754E656E6F6870;
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

uint64_t sub_1D9EEEEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EF3180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EEEF24(uint64_t a1)
{
  v2 = sub_1D9EF18D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EEEF60(uint64_t a1)
{
  v2 = sub_1D9EF18D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75660, &qword_1D9F42140);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF18D8();
  sub_1D9F2BB8C();
  LOBYTE(v15) = 0;
  type metadata accessor for Contact.Identity(0);
  sub_1D9EF09F0(&qword_1ECB75670, type metadata accessor for Contact.Identity);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v11 = type metadata accessor for Contact(0);
    v15 = *(v3 + v11[5]);
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75678, &qword_1D9F42148);
    sub_1D9EF1CD4(&qword_1ECB75680, &qword_1ECB75688);
    sub_1D9F2B9AC();
    v15 = *(v3 + v11[6]);
    v14 = 2;
    sub_1D9F2B9AC();
    v15 = *(v3 + v11[7]);
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75698, &qword_1D9F42158);
    sub_1D9EF192C();
    sub_1D9F2B9AC();
    v15 = *(v3 + v11[8]);
    v14 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756C0, &qword_1D9F42168);
    sub_1D9EF1A74();
    sub_1D9F2B9AC();
    v15 = *(v3 + v11[9]);
    v14 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756F0, &unk_1D9F42178);
    sub_1D9EF1C34();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Contact.hash(into:)(uint64_t a1)
{
  Contact.Identity.hash(into:)();
  v3 = type metadata accessor for Contact(0);
  sub_1D9E4F0BC(a1, *(v1 + v3[5]));
  sub_1D9E4F0BC(a1, *(v1 + v3[6]));
  sub_1D9E4EEB4(a1, *(v1 + v3[7]));
  sub_1D9E4EDA4(a1, *(v1 + v3[8]));
  v4 = *(v1 + v3[9]);

  return sub_1D9E4EBD0(a1, v4);
}

uint64_t Contact.hashValue.getter()
{
  sub_1D9F2BAFC();
  Contact.Identity.hash(into:)();
  v1 = type metadata accessor for Contact(0);
  sub_1D9E4F0BC(v3, *(v0 + v1[5]));
  sub_1D9E4F0BC(v3, *(v0 + v1[6]));
  sub_1D9E4EEB4(v3, *(v0 + v1[7]));
  sub_1D9E4EDA4(v3, *(v0 + v1[8]));
  sub_1D9E4EBD0(v3, *(v0 + v1[9]));
  return sub_1D9F2BB4C();
}

uint64_t Contact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for Contact.Identity(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75708, &qword_1D9F42188);
  v23 = *(v25 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Contact(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D9EF18D8();
  v26 = v10;
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v17 = v23;
  v18 = v24;
  v19 = v14;
  LOBYTE(v29) = 0;
  sub_1D9EF09F0(&qword_1ECB75710, type metadata accessor for Contact.Identity);
  v20 = v25;
  sub_1D9F2B89C();
  sub_1D9EF16D8(v7, v19, type metadata accessor for Contact.Identity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75678, &qword_1D9F42148);
  v28 = 1;
  sub_1D9EF1CD4(&qword_1ECB75718, &qword_1ECB75720);
  sub_1D9F2B89C();
  *(v19 + v11[5]) = v29;
  v28 = 2;
  v21 = v26;
  sub_1D9F2B89C();
  *(v19 + v11[6]) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75698, &qword_1D9F42158);
  v28 = 3;
  sub_1D9EF1DCC();
  sub_1D9F2B89C();
  *(v19 + v11[7]) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756C0, &qword_1D9F42168);
  v28 = 4;
  sub_1D9EF1EE4();
  sub_1D9F2B89C();
  *(v19 + v11[8]) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756F0, &unk_1D9F42178);
  v28 = 5;
  sub_1D9EF1F84();
  sub_1D9F2B89C();
  (*(v17 + 8))(v21, v20);
  *(v19 + v11[9]) = v29;
  sub_1D9EF11C8(v19, v18, type metadata accessor for Contact);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1D9EF1114(v19, type metadata accessor for Contact);
}

uint64_t sub_1D9EEFA40(int *a1)
{
  sub_1D9F2BAFC();
  Contact.Identity.hash(into:)();
  sub_1D9E4F0BC(v4, *(v1 + a1[5]));
  sub_1D9E4F0BC(v4, *(v1 + a1[6]));
  sub_1D9E4EEB4(v4, *(v1 + a1[7]));
  sub_1D9E4EDA4(v4, *(v1 + a1[8]));
  sub_1D9E4EBD0(v4, *(v1 + a1[9]));
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EEFAD4(uint64_t a1, int *a2)
{
  Contact.Identity.hash(into:)();
  sub_1D9E4F0BC(a1, *(v2 + a2[5]));
  sub_1D9E4F0BC(a1, *(v2 + a2[6]));
  sub_1D9E4EEB4(a1, *(v2 + a2[7]));
  sub_1D9E4EDA4(a1, *(v2 + a2[8]));
  v5 = *(v2 + a2[9]);

  return sub_1D9E4EBD0(a1, v5);
}

uint64_t sub_1D9EEFB60(uint64_t a1, int *a2)
{
  sub_1D9F2BAFC();
  Contact.Identity.hash(into:)();
  sub_1D9E4F0BC(v5, *(v2 + a2[5]));
  sub_1D9E4F0BC(v5, *(v2 + a2[6]));
  sub_1D9E4EEB4(v5, *(v2 + a2[7]));
  sub_1D9E4EDA4(v5, *(v2 + a2[8]));
  sub_1D9E4EBD0(v5, *(v2 + a2[9]));
  return sub_1D9F2BB4C();
}

uint64_t Contact.subentities.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731B8, &unk_1D9F2F580);
  v72 = *(v2 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v74 = &v70 - v4;
  v5 = type metadata accessor for DetectedEntity();
  v79 = *(v5 - 8);
  v6 = *(v79 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v71 = &v70 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v73 = &v70 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v70 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v70 - v17);
  v19 = MEMORY[0x1E69E7CC0];
  v83 = MEMORY[0x1E69E7CC0];
  v77 = type metadata accessor for Contact(0);
  v20 = *(v0 + *(v77 + 20));
  v21 = *(v20 + 16);
  v76 = v9;
  v75 = v0;
  v78 = v5;
  if (v21)
  {
    *&v81[0] = v19;
    sub_1D9E9482C(0, v21, 0);
    v19 = *&v81[0];
    v22 = (v20 + 56);
    do
    {
      v23 = *(v22 - 2);
      v24 = *(v22 - 1);
      v25 = *v22;
      *v18 = *(v22 - 3);
      v18[1] = v23;
      v18[2] = v24;
      v18[3] = v25;
      swift_storeEnumTagMultiPayload();
      *&v81[0] = v19;
      v26 = *(v19 + 16);
      v27 = *(v19 + 24);

      if (v26 >= v27 >> 1)
      {
        sub_1D9E9482C(v27 > 1, v26 + 1, 1);
        v19 = *&v81[0];
      }

      v22 += 4;
      *(v19 + 16) = v26 + 1;
      sub_1D9EF16D8(v18, v19 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v26, type metadata accessor for DetectedEntity);
      --v21;
    }

    while (v21);
    v9 = v76;
    v1 = v75;
  }

  sub_1D9EF0418(v19);
  v28 = *(v1 + *(v77 + 24));
  v29 = *(v28 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    *&v81[0] = MEMORY[0x1E69E7CC0];
    sub_1D9E9482C(0, v29, 0);
    v30 = *&v81[0];
    v31 = (v28 + 56);
    do
    {
      v32 = *(v31 - 2);
      v33 = *(v31 - 1);
      v34 = *v31;
      *v16 = *(v31 - 3);
      v16[1] = v32;
      v16[2] = v33;
      v16[3] = v34;
      swift_storeEnumTagMultiPayload();
      *&v81[0] = v30;
      v35 = *(v30 + 16);
      v36 = *(v30 + 24);

      if (v35 >= v36 >> 1)
      {
        sub_1D9E9482C(v36 > 1, v35 + 1, 1);
        v30 = *&v81[0];
      }

      v31 += 4;
      *(v30 + 16) = v35 + 1;
      sub_1D9EF16D8(v16, v30 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v35, type metadata accessor for DetectedEntity);
      --v29;
    }

    while (v29);
    v9 = v76;
    v1 = v75;
  }

  sub_1D9EF0418(v30);
  v37 = *(v1 + *(v77 + 28));
  v38 = *(v37 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v82 = MEMORY[0x1E69E7CC0];
    sub_1D9E9482C(0, v38, 0);
    v39 = v82;
    v40 = (v37 + 32);
    v41 = v73;
    do
    {
      v42 = v40[1];
      v81[0] = *v40;
      v81[1] = v42;
      v43 = v40[2];
      v44 = v40[3];
      v45 = v40[5];
      v81[4] = v40[4];
      v81[5] = v45;
      v81[2] = v43;
      v81[3] = v44;
      memmove(v41, v40, 0x60uLL);
      swift_storeEnumTagMultiPayload();
      sub_1D9E51E70(v81, v80, &qword_1ECB731D0, &qword_1D9F42160);
      v82 = v39;
      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1D9E9482C(v46 > 1, v47 + 1, 1);
        v41 = v73;
        v39 = v82;
      }

      *(v39 + 16) = v47 + 1;
      sub_1D9EF16D8(v41, v39 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v47, type metadata accessor for DetectedEntity);
      v40 += 6;
      --v38;
    }

    while (v38);
  }

  sub_1D9EF0418(v39);
  v48 = *(v1 + *(v77 + 32));
  v49 = *(v48 + 16);
  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    *&v81[0] = MEMORY[0x1E69E7CC0];
    sub_1D9E9482C(0, v49, 0);
    v50 = *&v81[0];
    v51 = (v48 + 72);
    v52 = v71;
    do
    {
      v53 = *(v51 - 4);
      v54 = *(v51 - 3);
      v55 = *(v51 - 2);
      v56 = *(v51 - 1);
      v57 = *v51;
      *v52 = *(v51 - 5);
      v52[1] = v53;
      v52[2] = v54;
      v52[3] = v55;
      v52[4] = v56;
      v52[5] = v57;
      swift_storeEnumTagMultiPayload();
      *&v81[0] = v50;
      v59 = *(v50 + 16);
      v58 = *(v50 + 24);

      if (v59 >= v58 >> 1)
      {
        sub_1D9E9482C(v58 > 1, v59 + 1, 1);
        v50 = *&v81[0];
      }

      v51 += 6;
      *(v50 + 16) = v59 + 1;
      sub_1D9EF16D8(v52, v50 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v59, type metadata accessor for DetectedEntity);
      --v49;
    }

    while (v49);
    v9 = v76;
    v1 = v75;
  }

  sub_1D9EF0418(v50);
  v60 = *(v1 + *(v77 + 36));
  v61 = *(v60 + 16);
  v62 = MEMORY[0x1E69E7CC0];
  if (v61)
  {
    *&v81[0] = MEMORY[0x1E69E7CC0];
    sub_1D9E9482C(0, v61, 0);
    v62 = *&v81[0];
    v63 = v60 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v77 = *(v72 + 72);
    v64 = v74;
    do
    {
      sub_1D9E51E70(v63, v64, &qword_1ECB731B8, &unk_1D9F2F580);
      v65 = sub_1D9F2AC4C();
      (*(*(v65 - 8) + 16))(v9, v64, v65);
      sub_1D9E51FE8(v64, &qword_1ECB731B8, &unk_1D9F2F580);
      swift_storeEnumTagMultiPayload();
      *&v81[0] = v62;
      v66 = v9;
      v68 = *(v62 + 16);
      v67 = *(v62 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_1D9E9482C(v67 > 1, v68 + 1, 1);
        v64 = v74;
        v62 = *&v81[0];
      }

      *(v62 + 16) = v68 + 1;
      sub_1D9EF16D8(v66, v62 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v68, type metadata accessor for DetectedEntity);
      v63 += v77;
      --v61;
      v9 = v66;
    }

    while (v61);
  }

  sub_1D9EF0418(v62);
  return v83;
}

uint64_t sub_1D9EF0418(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1D9F0C298(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for DetectedEntity();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV4NameO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v32 = sub_1D9F2AB6C();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Contact.Identity.Person.Name(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v31 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75868, &qword_1D9F42FF8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v31 - v18;
  v20 = (&v31 + *(v17 + 56) - v18);
  sub_1D9EF11C8(a1, &v31 - v18, type metadata accessor for Contact.Identity.Person.Name);
  sub_1D9EF11C8(a2, v20, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D9EF11C8(v19, v14, type metadata accessor for Contact.Identity.Person.Name);
    v25 = *v14;
    v24 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v25 == *v20 && v24 == v20[1])
      {
        v29 = v20[1];
      }

      else
      {
        v27 = v20[1];
        v28 = sub_1D9F2BA1C();

        if ((v28 & 1) == 0)
        {
          sub_1D9EF1114(v19, type metadata accessor for Contact.Identity.Person.Name);
          goto LABEL_8;
        }
      }

      sub_1D9EF1114(v19, type metadata accessor for Contact.Identity.Person.Name);
      v22 = 1;
      return v22 & 1;
    }

LABEL_7:
    sub_1D9E51FE8(v19, &qword_1ECB75868, &qword_1D9F42FF8);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  sub_1D9EF11C8(v19, v12, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v12, v32);
    goto LABEL_7;
  }

  v21 = v32;
  (*(v4 + 32))(v7, v20, v32);
  v22 = sub_1D9F2AB5C();
  v23 = *(v4 + 8);
  v23(v7, v21);
  v23(v12, v21);
  sub_1D9EF1114(v19, type metadata accessor for Contact.Identity.Person.Name);
  return v22 & 1;
}

unint64_t sub_1D9EF08F4()
{
  result = qword_1ECB75568;
  if (!qword_1ECB75568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75568);
  }

  return result;
}

unint64_t sub_1D9EF0948()
{
  result = qword_1ECB75570;
  if (!qword_1ECB75570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75570);
  }

  return result;
}

unint64_t sub_1D9EF099C()
{
  result = qword_1ECB75580;
  if (!qword_1ECB75580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75580);
  }

  return result;
}

uint64_t sub_1D9EF09F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9EF0A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EF0AC8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D9EF0ADC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact.Identity.Person.Name(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75860, &qword_1D9F42FF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v54 - v16;
  v18 = *(v15 + 56);
  sub_1D9E51E70(a1, &v54 - v16, &qword_1ECB755B0, &qword_1D9F420E8);
  sub_1D9E51E70(a2, &v17[v18], &qword_1ECB755B0, &qword_1D9F420E8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1D9E51E70(v17, v12, &qword_1ECB755B0, &qword_1D9F420E8);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1D9EF16D8(&v17[v18], v8, type metadata accessor for Contact.Identity.Person.Name);
      v22 = _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV4NameO2eeoiySbAI_AItFZ_0(v12, v8);
      sub_1D9EF1114(v8, type metadata accessor for Contact.Identity.Person.Name);
      sub_1D9EF1114(v12, type metadata accessor for Contact.Identity.Person.Name);
      sub_1D9E51FE8(v17, &qword_1ECB755B0, &qword_1D9F420E8);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_1D9EF1114(v12, type metadata accessor for Contact.Identity.Person.Name);
LABEL_6:
    sub_1D9E51FE8(v17, &qword_1ECB75860, &qword_1D9F42FF0);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D9E51FE8(v17, &qword_1ECB755B0, &qword_1D9F420E8);
LABEL_10:
  v23 = type metadata accessor for Contact.Identity.Person(0);
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    if (*v25 != *v27 || v26 != v28)
    {
      v29 = v23;
      v30 = sub_1D9F2BA1C();
      v23 = v29;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v31 = v23[6];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v23;
      v37 = sub_1D9F2BA1C();
      v23 = v36;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_24:
    v38 = v23[7];
    v39 = a1 + v38;
    v40 = *(a1 + v38);
    v41 = *(v39 + 8);
    v42 = (a2 + v38);
    v43 = *v42;
    v44 = v42[1];
    if (v41 == 1)
    {
      sub_1D9EF0AC8(v40, 1);
      if (v44 == 1)
      {
        v20 = 1;
        sub_1D9EF0AC8(v43, 1);
        sub_1D9EF0ADC(v40, 1);
        return v20;
      }

      sub_1D9EF0AC8(v43, v44);
      goto LABEL_30;
    }

    if (v44 == 1)
    {
      sub_1D9EF0AC8(v40, *(v39 + 8));
      sub_1D9EF0AC8(v43, 1);
      sub_1D9EF0AC8(v40, v41);

LABEL_30:
      sub_1D9EF0ADC(v40, v41);
      v45 = v43;
      v46 = v44;
LABEL_42:
      sub_1D9EF0ADC(v45, v46);
      return 0;
    }

    if (v41)
    {
      if (v44)
      {
        if (v40 == v43 && v41 == v44)
        {
          sub_1D9EF0AC8(v40, *(v39 + 8));
          sub_1D9EF0AC8(v40, v41);
          sub_1D9EF0AC8(v40, v41);
          v47 = v40;
          v48 = v41;
LABEL_38:
          sub_1D9EF0ADC(v47, v48);
LABEL_44:

          sub_1D9EF0ADC(v40, v41);
          return 1;
        }

        v50 = *(v39 + 8);
        v51 = *v42;
        v52 = v42[1];
        v53 = sub_1D9F2BA1C();
        sub_1D9EF0AC8(v40, v41);
        sub_1D9EF0AC8(v43, v44);
        sub_1D9EF0AC8(v40, v41);
        sub_1D9EF0ADC(v43, v44);
        if (v53)
        {
          goto LABEL_44;
        }

LABEL_41:

        v45 = v40;
        v46 = v41;
        goto LABEL_42;
      }

      sub_1D9EF0AC8(v40, *(v39 + 8));
      v49 = v41;
    }

    else
    {
      sub_1D9EF0AC8(v40, 0);
      v49 = 0;
      if (!v44)
      {
        sub_1D9EF0AC8(v43, 0);
        sub_1D9EF0AC8(v40, 0);
        v47 = v43;
        v48 = 0;
        goto LABEL_38;
      }
    }

    sub_1D9EF0AC8(v43, v44);
    sub_1D9EF0AC8(v40, v49);
    sub_1D9EF0ADC(v43, v44);
    goto LABEL_41;
  }

  if (!v35)
  {
    goto LABEL_24;
  }

  return 0;
}

unint64_t sub_1D9EF106C()
{
  result = qword_1ECB755C0;
  if (!qword_1ECB755C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB755C0);
  }

  return result;
}

unint64_t sub_1D9EF10C0()
{
  result = qword_1ECB755D0;
  if (!qword_1ECB755D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB755D0);
  }

  return result;
}

uint64_t sub_1D9EF1114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9EF1174()
{
  result = qword_1ECB755E8;
  if (!qword_1ECB755E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB755E8);
  }

  return result;
}

uint64_t sub_1D9EF11C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9EF1230()
{
  result = qword_1ECB755F8;
  if (!qword_1ECB755F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB755F8);
  }

  return result;
}

uint64_t _s29VisualActionPredictionSupport7ContactV8IdentityO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact.Identity.Person(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Contact.Identity(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75858, &qword_1D9F42FE8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v29 - v18;
  v20 = (&v29 + *(v17 + 56) - v18);
  sub_1D9EF11C8(a1, &v29 - v18, type metadata accessor for Contact.Identity);
  sub_1D9EF11C8(a2, v20, type metadata accessor for Contact.Identity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9EF11C8(v19, v12, type metadata accessor for Contact.Identity);
    v22 = *v12;
    v21 = v12[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v20[1];
      if (v21)
      {
        if (v23)
        {
          if (v22 != *v20 || v21 != v23)
          {
            v25 = v20[1];
            v26 = sub_1D9F2BA1C();

            if (v26)
            {
              goto LABEL_25;
            }

            goto LABEL_20;
          }

LABEL_24:

LABEL_25:
          sub_1D9EF1114(v19, type metadata accessor for Contact.Identity);
          v27 = 1;
          return v27 & 1;
        }
      }

      else
      {

        if (!v23)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      sub_1D9EF1114(v19, type metadata accessor for Contact.Identity);
      goto LABEL_21;
    }

LABEL_14:
    sub_1D9E51FE8(v19, &qword_1ECB75858, &qword_1D9F42FE8);
LABEL_21:
    v27 = 0;
    return v27 & 1;
  }

  sub_1D9EF11C8(v19, v14, type metadata accessor for Contact.Identity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9EF1114(v14, type metadata accessor for Contact.Identity.Person);
    goto LABEL_14;
  }

  sub_1D9EF16D8(v20, v7, type metadata accessor for Contact.Identity.Person);
  v27 = _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV2eeoiySbAG_AGtFZ_0(v14, v7);
  sub_1D9EF1114(v7, type metadata accessor for Contact.Identity.Person);
  sub_1D9EF1114(v14, type metadata accessor for Contact.Identity.Person);
  sub_1D9EF1114(v19, type metadata accessor for Contact.Identity);
  return v27 & 1;
}

unint64_t sub_1D9EF1630()
{
  result = qword_1ECB75620;
  if (!qword_1ECB75620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75620);
  }

  return result;
}

unint64_t sub_1D9EF1684()
{
  result = qword_1ECB75628;
  if (!qword_1ECB75628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75628);
  }

  return result;
}

uint64_t sub_1D9EF16D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9EF1740()
{
  result = qword_1ECB75630;
  if (!qword_1ECB75630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75630);
  }

  return result;
}

uint64_t sub_1D9EF1794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact.Identity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s29VisualActionPredictionSupport7ContactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s29VisualActionPredictionSupport7ContactV8IdentityO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Contact(0);
  if ((sub_1D9E49FC4(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (sub_1D9E49FC4(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0 || (sub_1D9E4A0A4(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0 || (sub_1D9E4A370(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[9];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1D9E4A49C(v6, v7);
}

unint64_t sub_1D9EF18D8()
{
  result = qword_1ECB75668;
  if (!qword_1ECB75668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75668);
  }

  return result;
}

unint64_t sub_1D9EF192C()
{
  result = qword_1ECB756A0;
  if (!qword_1ECB756A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75698, &qword_1D9F42158);
    sub_1D9EF1E6C(&qword_1ECB756A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756A0);
  }

  return result;
}

unint64_t sub_1D9EF19CC()
{
  result = qword_1ECB756B0;
  if (!qword_1ECB756B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756B0);
  }

  return result;
}

unint64_t sub_1D9EF1A20()
{
  result = qword_1ECB756B8;
  if (!qword_1ECB756B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756B8);
  }

  return result;
}

unint64_t sub_1D9EF1A74()
{
  result = qword_1ECB756C8;
  if (!qword_1ECB756C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB756C0, &qword_1D9F42168);
    sub_1D9EF1B14(&qword_1ECB756D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756C8);
  }

  return result;
}

uint64_t sub_1D9EF1B14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB756D8, &qword_1D9F42170);
    sub_1D9EF1B8C();
    sub_1D9EF1BE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EF1B8C()
{
  result = qword_1ECB756E0;
  if (!qword_1ECB756E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756E0);
  }

  return result;
}

unint64_t sub_1D9EF1BE0()
{
  result = qword_1ECB756E8;
  if (!qword_1ECB756E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756E8);
  }

  return result;
}

unint64_t sub_1D9EF1C34()
{
  result = qword_1ECB756F8;
  if (!qword_1ECB756F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB756F0, &unk_1D9F42178);
    sub_1D9EF2024(&qword_1ECB75700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756F8);
  }

  return result;
}

uint64_t sub_1D9EF1CD4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75678, &qword_1D9F42148);
    sub_1D9EF1D5C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9EF1D5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75690, &qword_1D9F42150);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EF1DCC()
{
  result = qword_1ECB75728;
  if (!qword_1ECB75728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75698, &qword_1D9F42158);
    sub_1D9EF1E6C(&qword_1ECB75730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75728);
  }

  return result;
}

uint64_t sub_1D9EF1E6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB731D0, &qword_1D9F42160);
    sub_1D9EF19CC();
    sub_1D9EF1A20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EF1EE4()
{
  result = qword_1ECB75738;
  if (!qword_1ECB75738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB756C0, &qword_1D9F42168);
    sub_1D9EF1B14(&qword_1ECB75740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75738);
  }

  return result;
}

unint64_t sub_1D9EF1F84()
{
  result = qword_1ECB75748;
  if (!qword_1ECB75748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB756F0, &unk_1D9F42178);
    sub_1D9EF2024(&qword_1ECB75750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75748);
  }

  return result;
}

uint64_t sub_1D9EF2024(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB731B8, &unk_1D9F2F580);
    v3 = MEMORY[0x1E6968FB0];
    sub_1D9EF09F0(&qword_1ECB743B8, MEMORY[0x1E6968FB0]);
    sub_1D9EF09F0(&qword_1ECB74390, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EF218C()
{
  result = qword_1ECB75768;
  if (!qword_1ECB75768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75768);
  }

  return result;
}

void sub_1D9EF2298()
{
  type metadata accessor for Contact.Identity(319);
  if (v0 <= 0x3F)
  {
    sub_1D9EF23C4(319, &qword_1EE0F2320, &qword_1ECB75690, &qword_1D9F42150);
    if (v1 <= 0x3F)
    {
      sub_1D9EF23C4(319, &qword_1EE0F2330, &qword_1ECB731D0, &qword_1D9F42160);
      if (v2 <= 0x3F)
      {
        sub_1D9EF23C4(319, &qword_1EE0F2328, &qword_1ECB756D8, &qword_1D9F42170);
        if (v3 <= 0x3F)
        {
          sub_1D9EF23C4(319, &qword_1EE0F2338, &qword_1ECB731B8, &unk_1D9F2F580);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9EF23C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1D9F2B2BC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D9EF2418()
{
  result = type metadata accessor for Contact.Identity.Person(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9EF24A8()
{
  sub_1D9EF2564();
  if (v0 <= 0x3F)
  {
    sub_1D9E3F9EC(319, &qword_1EE0F2358);
    if (v1 <= 0x3F)
    {
      sub_1D9E3F9EC(319, qword_1EE0F2630);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9EF2564()
{
  if (!qword_1EE0F25F0)
  {
    type metadata accessor for Contact.Identity.Person.Name(255);
    v0 = sub_1D9F2B59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0F25F0);
    }
  }
}

uint64_t sub_1D9EF25BC()
{
  result = sub_1D9F2AB6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D9EF26CC()
{
  result = qword_1ECB75780;
  if (!qword_1ECB75780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75780);
  }

  return result;
}

unint64_t sub_1D9EF2724()
{
  result = qword_1ECB75788;
  if (!qword_1ECB75788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75788);
  }

  return result;
}

unint64_t sub_1D9EF277C()
{
  result = qword_1ECB75790;
  if (!qword_1ECB75790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75790);
  }

  return result;
}

unint64_t sub_1D9EF27D4()
{
  result = qword_1ECB75798;
  if (!qword_1ECB75798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75798);
  }

  return result;
}

unint64_t sub_1D9EF282C()
{
  result = qword_1ECB757A0;
  if (!qword_1ECB757A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757A0);
  }

  return result;
}

unint64_t sub_1D9EF2884()
{
  result = qword_1ECB757A8;
  if (!qword_1ECB757A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757A8);
  }

  return result;
}

unint64_t sub_1D9EF28DC()
{
  result = qword_1ECB757B0;
  if (!qword_1ECB757B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757B0);
  }

  return result;
}

unint64_t sub_1D9EF2934()
{
  result = qword_1ECB757B8;
  if (!qword_1ECB757B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757B8);
  }

  return result;
}

unint64_t sub_1D9EF298C()
{
  result = qword_1ECB757C0;
  if (!qword_1ECB757C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757C0);
  }

  return result;
}

unint64_t sub_1D9EF29E4()
{
  result = qword_1ECB757C8;
  if (!qword_1ECB757C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757C8);
  }

  return result;
}

unint64_t sub_1D9EF2A3C()
{
  result = qword_1ECB757D0;
  if (!qword_1ECB757D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757D0);
  }

  return result;
}

unint64_t sub_1D9EF2A94()
{
  result = qword_1ECB757D8;
  if (!qword_1ECB757D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757D8);
  }

  return result;
}

unint64_t sub_1D9EF2AEC()
{
  result = qword_1ECB757E0;
  if (!qword_1ECB757E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757E0);
  }

  return result;
}

unint64_t sub_1D9EF2B44()
{
  result = qword_1ECB757E8;
  if (!qword_1ECB757E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757E8);
  }

  return result;
}

unint64_t sub_1D9EF2B9C()
{
  result = qword_1ECB757F0;
  if (!qword_1ECB757F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757F0);
  }

  return result;
}

unint64_t sub_1D9EF2BF4()
{
  result = qword_1ECB757F8;
  if (!qword_1ECB757F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB757F8);
  }

  return result;
}

unint64_t sub_1D9EF2C4C()
{
  result = qword_1ECB75800;
  if (!qword_1ECB75800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75800);
  }

  return result;
}

unint64_t sub_1D9EF2CA4()
{
  result = qword_1ECB75808;
  if (!qword_1ECB75808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75808);
  }

  return result;
}

unint64_t sub_1D9EF2CFC()
{
  result = qword_1ECB75810;
  if (!qword_1ECB75810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75810);
  }

  return result;
}

unint64_t sub_1D9EF2D54()
{
  result = qword_1ECB75818;
  if (!qword_1ECB75818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75818);
  }

  return result;
}

unint64_t sub_1D9EF2DAC()
{
  result = qword_1ECB75820;
  if (!qword_1ECB75820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75820);
  }

  return result;
}

unint64_t sub_1D9EF2E04()
{
  result = qword_1ECB75828;
  if (!qword_1ECB75828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75828);
  }

  return result;
}

unint64_t sub_1D9EF2E5C()
{
  result = qword_1ECB75830;
  if (!qword_1ECB75830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75830);
  }

  return result;
}

unint64_t sub_1D9EF2EB4()
{
  result = qword_1ECB75838;
  if (!qword_1ECB75838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75838);
  }

  return result;
}

unint64_t sub_1D9EF2F0C()
{
  result = qword_1ECB75840;
  if (!qword_1ECB75840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75840);
  }

  return result;
}

unint64_t sub_1D9EF2F64()
{
  result = qword_1ECB75848;
  if (!qword_1ECB75848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75848);
  }

  return result;
}

unint64_t sub_1D9EF2FBC()
{
  result = qword_1ECB75850;
  if (!qword_1ECB75850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75850);
  }

  return result;
}

uint64_t sub_1D9EF3010(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746954626F6ALL && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D747261706564 && a2 == 0xEA0000000000746ELL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EF3180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEE00736573736572 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64416C6174736F70 && a2 == 0xEF73657373657264 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72506C6169636F73 && a2 == 0xEE0073656C69666FLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1D9EF3414(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x706D6F4365746164;
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 0x79636E6572727563;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x754E746867696C66;
      break;
    case 7:
      result = 0x6C61636973796870;
      break;
    case 8:
    case 22:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x6464416C69616D65;
      break;
    case 10:
      result = 0x6D754E656E6F6870;
      break;
    case 11:
      result = 0x64416C6174736F70;
      break;
    case 12:
      result = 0x72506C6169636F73;
      break;
    case 13:
      result = 0x7261646E656C6163;
      break;
    case 14:
      result = 0x746361746E6F63;
      break;
    case 15:
      result = 0x696669746E656469;
      break;
    case 16:
      result = 1953720684;
      break;
    case 17:
      result = 0x4C676E696B726170;
      break;
    case 18:
      result = 0x746361736E617274;
      break;
    case 19:
      result = 1802465122;
      break;
    case 20:
      result = 0x6D75626C61;
      break;
    case 21:
      result = 0x636972656E6567;
      break;
    case 23:
      result = 0x65646F43707061;
      break;
    case 24:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9EF36F4(uint64_t a1)
{
  v2 = sub_1D9EFD228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3730(uint64_t a1)
{
  v2 = sub_1D9EFD228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF376C(uint64_t a1)
{
  v2 = sub_1D9EFD12C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF37A8(uint64_t a1)
{
  v2 = sub_1D9EFD12C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF37E4(uint64_t a1)
{
  v2 = sub_1D9EFD27C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3820(uint64_t a1)
{
  v2 = sub_1D9EFD27C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF385C(uint64_t a1)
{
  v2 = sub_1D9EFD5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3898(uint64_t a1)
{
  v2 = sub_1D9EFD5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF38DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EFFF38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EF3910(uint64_t a1)
{
  v2 = sub_1D9EFD030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF394C(uint64_t a1)
{
  v2 = sub_1D9EFD030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3988(uint64_t a1)
{
  v2 = sub_1D9EFD570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF39C4(uint64_t a1)
{
  v2 = sub_1D9EFD570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3A00(uint64_t a1)
{
  v2 = sub_1D9EFD9B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3A3C(uint64_t a1)
{
  v2 = sub_1D9EFD9B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3A78(uint64_t a1)
{
  v2 = sub_1D9EFDB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3AB4(uint64_t a1)
{
  v2 = sub_1D9EFDB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3AF0(uint64_t a1)
{
  v2 = sub_1D9EFDAB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3B2C(uint64_t a1)
{
  v2 = sub_1D9EFDAB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3B68(uint64_t a1)
{
  v2 = sub_1D9EFD960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3BA4(uint64_t a1)
{
  v2 = sub_1D9EFD960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3BE0(uint64_t a1)
{
  v2 = sub_1D9EFD714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3C1C(uint64_t a1)
{
  v2 = sub_1D9EFD714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3C58(uint64_t a1)
{
  v2 = sub_1D9EFD8B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3C94(uint64_t a1)
{
  v2 = sub_1D9EFD8B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3CD0(uint64_t a1)
{
  v2 = sub_1D9EFD1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3D0C(uint64_t a1)
{
  v2 = sub_1D9EFD1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3D48(uint64_t a1)
{
  v2 = sub_1D9EFD4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3D84(uint64_t a1)
{
  v2 = sub_1D9EFD4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3DC0(uint64_t a1)
{
  v2 = sub_1D9EFD420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3DFC(uint64_t a1)
{
  v2 = sub_1D9EFD420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3E38(uint64_t a1)
{
  v2 = sub_1D9EFD084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3E74(uint64_t a1)
{
  v2 = sub_1D9EFD084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3EB0(uint64_t a1)
{
  v2 = sub_1D9EFD0D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3EEC(uint64_t a1)
{
  v2 = sub_1D9EFD0D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3F28(uint64_t a1)
{
  v2 = sub_1D9EFD378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3F64(uint64_t a1)
{
  v2 = sub_1D9EFD378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF3FA0(uint64_t a1)
{
  v2 = sub_1D9EFD6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF3FDC(uint64_t a1)
{
  v2 = sub_1D9EFD6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF4018(uint64_t a1)
{
  v2 = sub_1D9EFD810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF4054(uint64_t a1)
{
  v2 = sub_1D9EFD810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF4090(uint64_t a1)
{
  v2 = sub_1D9EFD66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF40CC(uint64_t a1)
{
  v2 = sub_1D9EFD66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF4108(uint64_t a1)
{
  v2 = sub_1D9EFD768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF4144(uint64_t a1)
{
  v2 = sub_1D9EFD768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF4180(uint64_t a1)
{
  v2 = sub_1D9EFD618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF41BC(uint64_t a1)
{
  v2 = sub_1D9EFD618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF41F8(uint64_t a1)
{
  v2 = sub_1D9EFDB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF4234(uint64_t a1)
{
  v2 = sub_1D9EFDB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF4270(uint64_t a1)
{
  v2 = sub_1D9EFD2D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF42AC(uint64_t a1)
{
  v2 = sub_1D9EFD2D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF42E8(uint64_t a1)
{
  v2 = sub_1D9EFDA5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF4324(uint64_t a1)
{
  v2 = sub_1D9EFDA5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EF4360(uint64_t a1)
{
  v2 = sub_1D9EFD180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EF439C(uint64_t a1)
{
  v2 = sub_1D9EFD180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectedEntity.encode(to:)(void *a1)
{
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75870, &qword_1D9F43060);
  v303 = *(v304 - 8);
  v2 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v302 = &v214 - v3;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75878, &qword_1D9F43068);
  v300 = *(v301 - 8);
  v4 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v301);
  v299 = &v214 - v5;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75880, &qword_1D9F43070);
  v297 = *(v298 - 8);
  v6 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v298);
  v295 = &v214 - v7;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75888, &qword_1D9F43078);
  v294 = *(v296 - 8);
  v8 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v296);
  v293 = &v214 - v9;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75890, &qword_1D9F43080);
  v291 = *(v292 - 8);
  v10 = *(v291 + 64);
  MEMORY[0x1EEE9AC00](v292);
  v289 = &v214 - v11;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75898, &qword_1D9F43088);
  v288 = *(v290 - 8);
  v12 = *(v288 + 64);
  MEMORY[0x1EEE9AC00](v290);
  v285 = &v214 - v13;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758A0, &qword_1D9F43090);
  v286 = *(v287 - 8);
  v14 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v287);
  v284 = &v214 - v15;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758A8, &qword_1D9F43098);
  v282 = *(v283 - 8);
  v16 = *(v282 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v281 = &v214 - v17;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758B0, &qword_1D9F430A0);
  v279 = *(v280 - 8);
  v18 = *(v279 + 64);
  MEMORY[0x1EEE9AC00](v280);
  v278 = &v214 - v19;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758B8, &qword_1D9F430A8);
  v276 = *(v277 - 8);
  v20 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v277);
  v275 = &v214 - v21;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758C0, &qword_1D9F430B0);
  v273 = *(v274 - 8);
  v22 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](v274);
  v272 = &v214 - v23;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758C8, &qword_1D9F430B8);
  v270 = *(v271 - 8);
  v24 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v271);
  v269 = &v214 - v25;
  v267 = type metadata accessor for Contact(0);
  v26 = *(*(v267 - 8) + 64);
  MEMORY[0x1EEE9AC00](v267);
  v268 = &v214 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758D0, &qword_1D9F430C0);
  v265 = *(v266 - 8);
  v28 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v266);
  v264 = &v214 - v29;
  v260 = type metadata accessor for CalendarEvent();
  v30 = *(*(v260 - 8) + 64);
  MEMORY[0x1EEE9AC00](v260);
  v263 = &v214 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758D8, &qword_1D9F430C8);
  v261 = *(v262 - 8);
  v32 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v262);
  v257 = &v214 - v33;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758E0, &qword_1D9F430D0);
  v258 = *(v259 - 8);
  v34 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v259);
  v256 = &v214 - v35;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758E8, &qword_1D9F430D8);
  v254 = *(v255 - 8);
  v36 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v253 = &v214 - v37;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758F0, &qword_1D9F430E0);
  v251 = *(v252 - 8);
  v38 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v252);
  v250 = &v214 - v39;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB758F8, &qword_1D9F430E8);
  v248 = *(v249 - 8);
  v40 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v249);
  v247 = &v214 - v41;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75900, &qword_1D9F430F0);
  v245 = *(v246 - 8);
  v42 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v246);
  v244 = &v214 - v43;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75908, &qword_1D9F430F8);
  v242 = *(v243 - 8);
  v44 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v241 = &v214 - v45;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75910, &qword_1D9F43100);
  v239 = *(v240 - 8);
  v46 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v240);
  v238 = &v214 - v47;
  v236 = type metadata accessor for DateTimeSchedule();
  v48 = *(*(v236 - 8) + 64);
  MEMORY[0x1EEE9AC00](v236);
  v237 = &v214 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75918, &qword_1D9F43108);
  v234 = *(v235 - 8);
  v50 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v235);
  v233 = &v214 - v51;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75920, &qword_1D9F43110);
  v231 = *(v232 - 8);
  v52 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v228 = &v214 - v53;
  v230 = sub_1D9F2AC4C();
  v229 = *(v230 - 8);
  v54 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v227 = &v214 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75928, &qword_1D9F43118);
  v225 = *(v226 - 8);
  v56 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v222 = &v214 - v57;
  v224 = sub_1D9F2AACC();
  v223 = *(v224 - 8);
  v58 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v221 = &v214 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75930, &qword_1D9F43120);
  v219 = *(v220 - 8);
  v60 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v216 = &v214 - v61;
  v218 = sub_1D9F2AD0C();
  v217 = *(v218 - 8);
  v62 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v64 = &v214 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75938, &qword_1D9F43128);
  v215 = *(v65 - 8);
  v66 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v214 - v67;
  v69 = type metadata accessor for DetectedEntity();
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v214 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75940, &qword_1D9F43130);
  v307 = *(v308 - 8);
  v73 = *(v307 + 64);
  MEMORY[0x1EEE9AC00](v308);
  v75 = &v214 - v74;
  v76 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EFD030();
  v306 = v75;
  sub_1D9F2BB8C();
  sub_1D9EFDBAC(v305, v72, type metadata accessor for DetectedEntity);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v152 = v217;
      v153 = v218;
      (*(v217 + 32))(v64, v72, v218);
      LOBYTE(v317) = 1;
      sub_1D9EFDB04();
      v154 = v216;
      v155 = v308;
      v156 = v306;
      sub_1D9F2B8FC();
      sub_1D9EFDF64(&qword_1ECB73510, MEMORY[0x1E6969530]);
      v157 = v220;
      sub_1D9F2B9AC();
      (*(v219 + 8))(v154, v157);
      (*(v152 + 8))(v64, v153);
      return (*(v307 + 8))(v156, v155);
    case 2u:
      v134 = v223;
      v135 = v221;
      v136 = v224;
      (*(v223 + 32))(v221, v72, v224);
      LOBYTE(v317) = 2;
      sub_1D9EFDAB0();
      v137 = v222;
      v93 = v308;
      v94 = v306;
      sub_1D9F2B8FC();
      sub_1D9EFDF64(&qword_1ECB75A58, MEMORY[0x1E6968278]);
      v138 = v226;
      sub_1D9F2B9AC();
      v139 = &v257;
      goto LABEL_14;
    case 3u:
      v134 = v229;
      v135 = v227;
      v136 = v230;
      (*(v229 + 32))(v227, v72, v230);
      LOBYTE(v317) = 3;
      sub_1D9EFDA5C();
      v137 = v228;
      v93 = v308;
      v94 = v306;
      sub_1D9F2B8FC();
      sub_1D9EFDF64(&qword_1ECB74390, MEMORY[0x1E6968FB0]);
      v138 = v232;
      sub_1D9F2B9AC();
      v139 = &v263;
LABEL_14:
      (*(*(v139 - 32) + 8))(v137, v138);
      (*(v134 + 8))(v135, v136);
      return (*(v307 + 8))(v94, v93);
    case 4u:
      v105 = *v72;
      v104 = *(v72 + 1);
      v106 = *(v72 + 2);
      LOBYTE(v317) = 4;
      sub_1D9EFD9B4();
      v107 = v233;
      v108 = v308;
      v109 = v306;
      sub_1D9F2B8FC();
      *&v317 = v105;
      *(&v317 + 1) = v104;
      *&v318 = v106;
      sub_1D9EFDA08();
      v110 = v235;
      sub_1D9F2B9AC();
      v111 = &v266;
      goto LABEL_21;
    case 5u:
      v91 = v237;
      sub_1D9EFDC14(v72, v237, type metadata accessor for DateTimeSchedule);
      LOBYTE(v317) = 5;
      sub_1D9EFD960();
      v171 = v238;
      v93 = v308;
      v94 = v306;
      sub_1D9F2B8FC();
      sub_1D9EFDF64(&qword_1ECB743A8, type metadata accessor for DateTimeSchedule);
      v172 = v240;
      sub_1D9F2B9AC();
      (*(v239 + 8))(v171, v172);
      v96 = type metadata accessor for DateTimeSchedule;
      goto LABEL_23;
    case 6u:
      v178 = *v72;
      v177 = *(v72 + 1);
      v180 = *(v72 + 2);
      v179 = *(v72 + 3);
      LOBYTE(v317) = 6;
      sub_1D9EFD8B8();
      v86 = v241;
      v87 = v308;
      v88 = v306;
      sub_1D9F2B8FC();
      *&v317 = v178;
      *(&v317 + 1) = v177;
      *&v318 = v180;
      *(&v318 + 1) = v179;
      sub_1D9EFD90C();
      v89 = v243;
      sub_1D9F2B9AC();
      v90 = &v274;
      goto LABEL_30;
    case 7u:
      v149 = *v72;
      v151 = *(v72 + 1);
      v150 = *(v72 + 2);
      LOBYTE(v317) = 7;
      sub_1D9EFD810();
      v107 = v244;
      v108 = v308;
      v109 = v306;
      sub_1D9F2B8FC();
      *&v317 = v149;
      *(&v317 + 1) = v151;
      *&v318 = v150;
      sub_1D9EFD864();
      v110 = v246;
      sub_1D9F2B9AC();
      v111 = &v277;
      goto LABEL_21;
    case 8u:
      v192 = *v72;
      v191 = *(v72 + 1);
      v194 = *(v72 + 2);
      v193 = *(v72 + 3);
      LOBYTE(v317) = 8;
      sub_1D9EFD768();
      v86 = v247;
      v87 = v308;
      v88 = v306;
      sub_1D9F2B8FC();
      *&v317 = v192;
      *(&v317 + 1) = v191;
      *&v318 = v194;
      *(&v318 + 1) = v193;
      sub_1D9EFD7BC();
      v89 = v249;
      sub_1D9F2B9AC();
      v90 = &v280;
      goto LABEL_30;
    case 9u:
      v122 = *v72;
      v121 = *(v72 + 1);
      v124 = *(v72 + 2);
      v123 = *(v72 + 3);
      LOBYTE(v317) = 9;
      sub_1D9EFD714();
      v86 = v250;
      v87 = v308;
      v88 = v306;
      sub_1D9F2B8FC();
      *&v317 = v122;
      *(&v317 + 1) = v121;
      *&v318 = v124;
      *(&v318 + 1) = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75690, &qword_1D9F42150);
      sub_1D9EF1D5C(&qword_1ECB75688);
      v89 = v252;
      sub_1D9F2B9AC();
      v90 = &v283;
      goto LABEL_30;
    case 0xAu:
      v188 = *v72;
      v187 = *(v72 + 1);
      v190 = *(v72 + 2);
      v189 = *(v72 + 3);
      LOBYTE(v317) = 10;
      sub_1D9EFD6C0();
      v86 = v253;
      v87 = v308;
      v88 = v306;
      sub_1D9F2B8FC();
      *&v317 = v188;
      *(&v317 + 1) = v187;
      *&v318 = v190;
      *(&v318 + 1) = v189;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75690, &qword_1D9F42150);
      sub_1D9EF1D5C(&qword_1ECB75688);
      v89 = v255;
      sub_1D9F2B9AC();
      v90 = &v286;
      goto LABEL_30;
    case 0xBu:
      v97 = *(v72 + 3);
      v319 = *(v72 + 2);
      v320 = v97;
      v98 = *(v72 + 5);
      v321 = *(v72 + 4);
      v322 = v98;
      v99 = *(v72 + 1);
      v317 = *v72;
      v318 = v99;
      LOBYTE(v309) = 11;
      sub_1D9EFD66C();
      v100 = v256;
      v101 = v308;
      v102 = v306;
      sub_1D9F2B8FC();
      v311 = v319;
      v312 = v320;
      v313 = v321;
      v314 = v322;
      v309 = v317;
      v310 = v318;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731D0, &qword_1D9F42160);
      sub_1D9EF1E6C(&qword_1ECB756A8);
      v103 = v259;
      sub_1D9F2B9AC();
      (*(v258 + 8))(v100, v103);
      (*(v307 + 8))(v102, v101);
      return sub_1D9E51FE8(&v317, &qword_1ECB731D0, &qword_1D9F42160);
    case 0xCu:
      v113 = *v72;
      v112 = *(v72 + 1);
      v115 = *(v72 + 2);
      v114 = *(v72 + 3);
      v117 = *(v72 + 4);
      v116 = *(v72 + 5);
      LOBYTE(v317) = 12;
      sub_1D9EFD618();
      v118 = v257;
      v119 = v306;
      sub_1D9F2B8FC();
      *&v317 = v113;
      *(&v317 + 1) = v112;
      v305 = v112;
      *&v318 = v115;
      *(&v318 + 1) = v114;
      *&v319 = v117;
      *(&v319 + 1) = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756D8, &qword_1D9F42170);
      sub_1D9EF1B14(&qword_1ECB756D0);
      v120 = v262;
      sub_1D9F2B9AC();
      (*(v261 + 8))(v118, v120);
      (*(v307 + 8))(v119, v308);
      goto LABEL_32;
    case 0xDu:
      v91 = v263;
      sub_1D9EFDC14(v72, v263, type metadata accessor for CalendarEvent);
      LOBYTE(v317) = 13;
      sub_1D9EFD5C4();
      v175 = v264;
      v93 = v308;
      v94 = v306;
      sub_1D9F2B8FC();
      sub_1D9EFDF64(&qword_1ECB759D8, type metadata accessor for CalendarEvent);
      v176 = v266;
      sub_1D9F2B9AC();
      (*(v265 + 8))(v175, v176);
      v96 = type metadata accessor for CalendarEvent;
      goto LABEL_23;
    case 0xEu:
      v91 = v268;
      sub_1D9EFDC14(v72, v268, type metadata accessor for Contact);
      LOBYTE(v317) = 14;
      sub_1D9EFD570();
      v92 = v269;
      v93 = v308;
      v94 = v306;
      sub_1D9F2B8FC();
      sub_1D9EFDF64(&qword_1ECB759C8, type metadata accessor for Contact);
      v95 = v271;
      sub_1D9F2B9AC();
      (*(v270 + 8))(v92, v95);
      v96 = type metadata accessor for Contact;
LABEL_23:
      sub_1D9F008F4(v91, v96);
      return (*(v307 + 8))(v94, v93);
    case 0xFu:
      LODWORD(v305) = *v72;
      v140 = *(v72 + 2);
      v304 = *(v72 + 1);
      v142 = *(v72 + 3);
      v141 = *(v72 + 4);
      v144 = *(v72 + 5);
      v143 = *(v72 + 6);
      LOBYTE(v317) = 15;
      sub_1D9EFD4C8();
      v145 = v272;
      v146 = v308;
      v147 = v306;
      sub_1D9F2B8FC();
      LOBYTE(v317) = v305;
      *(&v317 + 1) = v304;
      *&v318 = v140;
      v305 = v140;
      *(&v318 + 1) = v142;
      *&v319 = v141;
      *(&v319 + 1) = v144;
      *&v320 = v143;
      sub_1D9EFD51C();
      v148 = v274;
      sub_1D9F2B9AC();
      (*(v273 + 8))(v145, v148);
      (*(v307 + 8))(v147, v146);

    case 0x10u:
      v82 = *v72;
      v84 = *(v72 + 1);
      v83 = *(v72 + 2);
      v85 = *(v72 + 3);
      LOBYTE(v317) = 16;
      sub_1D9EFD420();
      v86 = v275;
      v87 = v308;
      v88 = v306;
      sub_1D9F2B8FC();
      LOBYTE(v317) = v82;
      *(&v317 + 1) = v84;
      *&v318 = v83;
      *(&v318 + 1) = v85;
      sub_1D9EFD474();
      v89 = v277;
      sub_1D9F2B9AC();
      v90 = &v307;
      goto LABEL_30;
    case 0x11u:
      v159 = *v72;
      v158 = *(v72 + 1);
      v161 = *(v72 + 2);
      v160 = *(v72 + 3);
      LOBYTE(v317) = 17;
      sub_1D9EFD378();
      v86 = v278;
      v87 = v308;
      v88 = v306;
      sub_1D9F2B8FC();
      *&v317 = v159;
      *(&v317 + 1) = v158;
      *&v318 = v161;
      *(&v318 + 1) = v160;
      sub_1D9EFD3CC();
      v89 = v280;
      sub_1D9F2B9AC();
      v90 = &v309 + 1;
LABEL_30:
      (*(*(v90 - 32) + 8))(v86, v89);
      (*(v307 + 8))(v88, v87);
      goto LABEL_33;
    case 0x12u:
      v181 = *(v72 + 3);
      v319 = *(v72 + 2);
      v320 = v181;
      v321 = *(v72 + 4);
      LOBYTE(v322) = v72[80];
      v182 = *(v72 + 1);
      v317 = *v72;
      v318 = v182;
      LOBYTE(v309) = 18;
      sub_1D9EFD2D0();
      v183 = v281;
      v184 = v308;
      v185 = v306;
      sub_1D9F2B8FC();
      v311 = v319;
      v312 = v320;
      v313 = v321;
      LOBYTE(v314) = v322;
      v309 = v317;
      v310 = v318;
      sub_1D9EFD324();
      v186 = v283;
      sub_1D9F2B9AC();
      (*(v282 + 8))(v183, v186);
      (*(v307 + 8))(v185, v184);
      return sub_1D9E77278(&v317);
    case 0x13u:
      v205 = *(v72 + 5);
      v321 = *(v72 + 4);
      v322 = v205;
      v323 = *(v72 + 12);
      v206 = *(v72 + 1);
      v317 = *v72;
      v318 = v206;
      v207 = *(v72 + 3);
      v319 = *(v72 + 2);
      v320 = v207;
      LOBYTE(v309) = 19;
      sub_1D9EFD27C();
      v208 = v284;
      v209 = v308;
      v210 = v306;
      sub_1D9F2B8FC();
      v313 = v321;
      v314 = v322;
      v315 = v323;
      v309 = v317;
      v310 = v318;
      v312 = v320;
      v311 = v319;
      sub_1D9E50E8C();
      v211 = v287;
      sub_1D9F2B9AC();
      (*(v286 + 8))(v208, v211);
      (*(v307 + 8))(v210, v209);
      return sub_1D9EE7F58(&v317);
    case 0x14u:
      v162 = *(v72 + 1);
      v305 = *v72;
      v164 = *(v72 + 2);
      v163 = *(v72 + 3);
      v166 = *(v72 + 4);
      v165 = *(v72 + 5);
      LOBYTE(v317) = 20;
      sub_1D9EFD228();
      v167 = v285;
      v168 = v308;
      v169 = v306;
      sub_1D9F2B8FC();
      *&v317 = v305;
      *(&v317 + 1) = v162;
      v305 = v162;
      *&v318 = v164;
      *(&v318 + 1) = v163;
      *&v319 = v166;
      *(&v319 + 1) = v165;
      sub_1D9E50DE4();
      v170 = v290;
      sub_1D9F2B9AC();
      (*(v288 + 8))(v167, v170);
      (*(v307 + 8))(v169, v168);

    case 0x15u:
      v174 = *v72;
      v173 = *(v72 + 1);
      LOBYTE(v317) = 21;
      sub_1D9EFD1D4();
      v107 = v289;
      v108 = v308;
      v109 = v306;
      sub_1D9F2B8FC();
      *&v317 = v174;
      *(&v317 + 1) = v173;
      sub_1D9E50D3C();
      v110 = v292;
      sub_1D9F2B9AC();
      v111 = &v316;
LABEL_21:
      (*(*(v111 - 32) + 8))(v107, v110);
      (*(v307 + 8))(v109, v108);

    case 0x16u:
      v195 = *(v72 + 1);
      v305 = *v72;
      v197 = *(v72 + 2);
      v196 = *(v72 + 3);
      v198 = *(v72 + 8);
      v200 = *(v72 + 5);
      v199 = *(v72 + 6);
      LOBYTE(v317) = 22;
      sub_1D9EFD180();
      v201 = v293;
      v202 = v308;
      v203 = v306;
      sub_1D9F2B8FC();
      *&v317 = v305;
      *(&v317 + 1) = v195;
      v305 = v195;
      *&v318 = v197;
      *(&v318 + 1) = v196;
      LODWORD(v319) = v198;
      *(&v319 + 1) = v200;
      *&v320 = v199;
      sub_1D9E510FC();
      v204 = v296;
      sub_1D9F2B9AC();
      (*(v294 + 8))(v201, v204);
      (*(v307 + 8))(v203, v202);
LABEL_32:

LABEL_33:

    case 0x17u:
      v213 = *v72;
      v212 = *(v72 + 1);
      LOBYTE(v317) = 23;
      sub_1D9EFD12C();
      v127 = v295;
      v128 = v308;
      v129 = v306;
      sub_1D9F2B8FC();
      v130 = v298;
      sub_1D9F2B95C();

      v131 = &v319 + 8;
      goto LABEL_38;
    case 0x18u:
      v133 = *v72;
      v132 = *(v72 + 1);
      LOBYTE(v317) = 24;
      sub_1D9EFD0D8();
      v127 = v299;
      v128 = v308;
      v129 = v306;
      sub_1D9F2B8FC();
      v130 = v301;
      sub_1D9F2B95C();

      v131 = &v321;
      goto LABEL_38;
    case 0x19u:
      v126 = *v72;
      v125 = *(v72 + 1);
      LOBYTE(v317) = 25;
      sub_1D9EFD084();
      v127 = v302;
      v128 = v308;
      v129 = v306;
      sub_1D9F2B8FC();
      v130 = v304;
      sub_1D9F2B95C();

      v131 = &v322 + 8;
LABEL_38:
      (*(*(v131 - 32) + 8))(v127, v130);
      result = (*(v307 + 8))(v129, v128);
      break;
    default:
      v77 = *v72;
      v78 = *(v72 + 1);
      LOBYTE(v317) = 0;
      sub_1D9EFDB58();
      v79 = v308;
      v80 = v306;
      sub_1D9F2B8FC();
      sub_1D9F2B95C();

      (*(v215 + 8))(v68, v65);
      result = (*(v307 + 8))(v80, v79);
      break;
  }

  return result;
}

uint64_t DetectedEntity.hash(into:)(uint64_t a1)
{
  v150 = a1;
  v142 = type metadata accessor for Contact(0);
  v1 = *(*(v142 - 8) + 64);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v143 = &v139 - v5;
  v144 = type metadata accessor for CalendarEvent();
  v6 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v145 = (&v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DateTimeSchedule();
  v140 = *(v8 - 8);
  v9 = *(v140 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v139 - v13;
  v148 = sub_1D9F2AC4C();
  v147 = *(v148 - 8);
  v15 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9F2AACC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9F2AD0C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DetectedEntity();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9EFDBAC(v149, v30, type metadata accessor for DetectedEntity);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v23 + 32))(v26, v30, v22);
      MEMORY[0x1DA7438F0](1);
      sub_1D9EFDF64(&qword_1ECB75238, MEMORY[0x1E6969530]);
      sub_1D9F2B0EC();
      return (*(v23 + 8))(v26, v22);
    case 2u:
      (*(v18 + 32))(v21, v30, v17);
      MEMORY[0x1DA7438F0](2);
      sub_1D9EFDF64(&qword_1ECB75A68, MEMORY[0x1E6968278]);
      sub_1D9F2B0EC();
      return (*(v18 + 8))(v21, v17);
    case 3u:
      v71 = v147;
      v72 = v146;
      v73 = v30;
      v74 = v148;
      (*(v147 + 32))(v146, v73, v148);
      MEMORY[0x1DA7438F0](3);
      sub_1D9EFDF64(&qword_1ECB731C8, MEMORY[0x1E6968FB0]);
      sub_1D9F2B0EC();
      return (*(v71 + 8))(v72, v74);
    case 4u:
      v46 = *v30;
      v47 = *(v30 + 1);
      v48 = *(v30 + 2);
      MEMORY[0x1DA7438F0](4);
      sub_1D9F2B18C();
      v49 = 0.0;
      if (v48 != 0.0)
      {
        v49 = v48;
      }

      MEMORY[0x1DA743920](*&v49);

    case 5u:
      sub_1D9EFDC14(v30, v14, type metadata accessor for DateTimeSchedule);
      MEMORY[0x1DA7438F0](5);
      DateTimeSchedule.hash(into:)();
      return sub_1D9F008F4(v14, type metadata accessor for DateTimeSchedule);
    case 6u:
      v95 = *v30;
      v96 = *(v30 + 1);
      v98 = *(v30 + 2);
      v97 = *(v30 + 3);
      v83 = 6;
      goto LABEL_35;
    case 7u:
      v75 = *v30;
      v77 = *(v30 + 1);
      v76 = *(v30 + 2);
      MEMORY[0x1DA7438F0](7);
      v78 = 0.0;
      if (v75 != 0.0)
      {
        v78 = v75;
      }

      MEMORY[0x1DA743920](*&v78);
      goto LABEL_44;
    case 8u:
      v105 = *v30;
      v106 = *(v30 + 1);
      v108 = *(v30 + 2);
      v107 = *(v30 + 3);
      v83 = 8;
      goto LABEL_35;
    case 9u:
      v56 = *v30;
      v57 = *(v30 + 1);
      v58 = *(v30 + 2);
      v54 = *(v30 + 3);
      v59 = 9;
      goto LABEL_31;
    case 0xAu:
      v102 = *v30;
      v103 = *(v30 + 1);
      v104 = *(v30 + 2);
      v54 = *(v30 + 3);
      v59 = 10;
LABEL_31:
      MEMORY[0x1DA7438F0](v59);
      sub_1D9F2B18C();
      goto LABEL_32;
    case 0xBu:
      v42 = *(v30 + 3);
      v153 = *(v30 + 2);
      v154 = v42;
      v43 = *(v30 + 5);
      v155 = *(v30 + 4);
      v156 = v43;
      v44 = *(v30 + 1);
      v151 = *v30;
      v152 = v44;
      MEMORY[0x1DA7438F0](11);
      v159 = v153;
      v160 = v154;
      v161 = v155;
      v157 = v151;
      v158 = v152;
      PostalAddress.hash(into:)();
      v45 = *(&v156 + 1);

      sub_1D9E51FE8(&v151, &qword_1ECB731D0, &qword_1D9F42160);
      if (v45)
      {
        goto LABEL_6;
      }

      return sub_1D9F2BB1C();
    case 0xCu:
      v50 = *v30;
      v51 = *(v30 + 1);
      v52 = *(v30 + 2);
      v53 = *(v30 + 3);
      v55 = *(v30 + 4);
      v54 = *(v30 + 5);
      MEMORY[0x1DA7438F0](12);
      sub_1D9F2B18C();
      sub_1D9F2B18C();

LABEL_32:

      if (!v54)
      {
        return sub_1D9F2BB1C();
      }

LABEL_6:
      sub_1D9F2BB1C();
LABEL_44:
      sub_1D9F2B18C();

    case 0xDu:
      v92 = v145;
      sub_1D9EFDC14(v30, v145, type metadata accessor for CalendarEvent);
      MEMORY[0x1DA7438F0](13);
      if (v92[1])
      {
        v93 = *v92;
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (v92[3])
        {
LABEL_27:
          v94 = v92[2];
          sub_1D9F2BB1C();
          sub_1D9F2B18C();
          goto LABEL_50;
        }
      }

      else
      {
        sub_1D9F2BB1C();
        if (v92[3])
        {
          goto LABEL_27;
        }
      }

      sub_1D9F2BB1C();
LABEL_50:
      v129 = v147;
      if (v92[5])
      {
        v130 = v92[4];
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
      }

      else
      {
        sub_1D9F2BB1C();
      }

      v131 = v144;
      v132 = v143;
      sub_1D9E9354C(v92 + *(v144 + 28), v143);
      v133 = v148;
      if ((*(v129 + 48))(v132, 1, v148) == 1)
      {
        sub_1D9F2BB1C();
      }

      else
      {
        v134 = v146;
        (*(v129 + 32))(v146, v132, v133);
        sub_1D9F2BB1C();
        sub_1D9EFDF64(&qword_1ECB731C8, MEMORY[0x1E6968FB0]);
        sub_1D9F2B0EC();
        (*(v129 + 8))(v134, v133);
      }

      v135 = *(v92 + *(v131 + 32));
      MEMORY[0x1DA7438F0](*(v135 + 16));
      v136 = *(v135 + 16);
      if (v136)
      {
        v137 = v135 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
        v138 = *(v140 + 72);
        do
        {
          sub_1D9EFDBAC(v137, v12, type metadata accessor for DateTimeSchedule);
          DateTimeSchedule.hash(into:)();
          sub_1D9F008F4(v12, type metadata accessor for DateTimeSchedule);
          v137 += v138;
          --v136;
        }

        while (v136);
      }

      return sub_1D9F008F4(v92, type metadata accessor for CalendarEvent);
    case 0xEu:
      v38 = v141;
      sub_1D9EFDC14(v30, v141, type metadata accessor for Contact);
      v39 = v150;
      MEMORY[0x1DA7438F0](14);
      Contact.Identity.hash(into:)();
      v40 = v142;
      sub_1D9E4F0BC(v39, *(v38 + *(v142 + 20)));
      sub_1D9E4F0BC(v39, *(v38 + v40[6]));
      sub_1D9E4EEB4(v39, *(v38 + v40[7]));
      sub_1D9E4EDA4(v39, *(v38 + v40[8]));
      sub_1D9E4EBD0(v39, *(v38 + v40[9]));
      return sub_1D9F008F4(v38, type metadata accessor for Contact);
    case 0xFu:
      v64 = *v30;
      v66 = *(v30 + 1);
      v65 = *(v30 + 2);
      v68 = *(v30 + 3);
      v67 = *(v30 + 4);
      v70 = *(v30 + 5);
      v69 = *(v30 + 6);
      MEMORY[0x1DA7438F0](15);
      LOBYTE(v151) = v64;
      *(&v151 + 1) = v66;
      *&v152 = v65;
      *(&v152 + 1) = v68;
      *&v153 = v67;
      *(&v153 + 1) = v70;
      *&v154 = v69;
      Identification.hash(into:)();

    case 0x10u:
      v34 = *v30;
      v36 = *(v30 + 1);
      v35 = *(v30 + 2);
      v37 = *(v30 + 3);
      MEMORY[0x1DA7438F0](16);
      LOBYTE(v151) = v34;
      *(&v151 + 1) = v36;
      *&v152 = v35;
      *(&v152 + 1) = v37;
      List.hash(into:)();
      goto LABEL_36;
    case 0x11u:
      v79 = *v30;
      v80 = *(v30 + 1);
      v82 = *(v30 + 2);
      v81 = *(v30 + 3);
      v83 = 17;
LABEL_35:
      MEMORY[0x1DA7438F0](v83);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      goto LABEL_36;
    case 0x12u:
      v99 = *(v30 + 3);
      v153 = *(v30 + 2);
      v154 = v99;
      v155 = *(v30 + 4);
      LOBYTE(v156) = v30[80];
      v100 = *(v30 + 1);
      v151 = *v30;
      v152 = v100;
      v101 = v150;
      MEMORY[0x1DA7438F0](18);
      v159 = v153;
      v160 = v154;
      v161 = v155;
      v162 = v156;
      v157 = v151;
      v158 = v152;
      Transaction.hash(into:)(v101);
      return sub_1D9E77278(&v151);
    case 0x13u:
      v117 = *v30;
      v116 = *(v30 + 1);
      v119 = *(v30 + 2);
      v118 = *(v30 + 3);
      v121 = *(v30 + 4);
      v120 = *(v30 + 5);
      v122 = *(v30 + 7);
      v147 = *(v30 + 6);
      v146 = v122;
      v123 = *(v30 + 9);
      v148 = *(v30 + 8);
      v124 = *(v30 + 11);
      v149 = *(v30 + 10);
      v125 = *(v30 + 12);
      MEMORY[0x1DA7438F0](19);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      v126 = 0.0;
      if (v125 != 0.0)
      {
        v126 = v125;
      }

      MEMORY[0x1DA743920](*&v126);

    case 0x14u:
      v84 = *v30;
      v85 = *(v30 + 1);
      v86 = *(v30 + 2);
      v87 = *(v30 + 3);
      v89 = *(v30 + 4);
      v88 = *(v30 + 5);
      MEMORY[0x1DA7438F0](20);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();

      goto LABEL_36;
    case 0x15u:
      v91 = *v30;
      v90 = *(v30 + 1);
      v33 = 21;
      goto LABEL_43;
    case 0x16u:
      v110 = *v30;
      v109 = *(v30 + 1);
      v112 = *(v30 + 2);
      v111 = *(v30 + 3);
      v113 = *(v30 + 8);
      v115 = *(v30 + 5);
      v114 = *(v30 + 6);
      MEMORY[0x1DA7438F0](22);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2BB2C();
      sub_1D9F2BB1C();
      if (v114)
      {
        sub_1D9F2B18C();
      }

LABEL_36:

    case 0x17u:
      v128 = *v30;
      v127 = *(v30 + 1);
      v33 = 23;
      goto LABEL_43;
    case 0x18u:
      v63 = *v30;
      v62 = *(v30 + 1);
      v33 = 24;
      goto LABEL_43;
    case 0x19u:
      v61 = *v30;
      v60 = *(v30 + 1);
      v33 = 25;
      goto LABEL_43;
    default:
      v32 = *v30;
      v31 = *(v30 + 1);
      v33 = 0;
LABEL_43:
      MEMORY[0x1DA7438F0](v33);
      goto LABEL_44;
  }
}

uint64_t DetectedEntity.hashValue.getter()
{
  sub_1D9F2BAFC();
  DetectedEntity.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t DetectedEntity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v390 = a2;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75A70, &qword_1D9F43138);
  v364 = *(v365 - 8);
  v3 = *(v364 + 64);
  MEMORY[0x1EEE9AC00](v365);
  v389 = &v286 - v4;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75A78, &qword_1D9F43140);
  v362 = *(v363 - 8);
  v5 = *(v362 + 64);
  MEMORY[0x1EEE9AC00](v363);
  v388 = &v286 - v6;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75A80, &qword_1D9F43148);
  v360 = *(v361 - 8);
  v7 = *(v360 + 64);
  MEMORY[0x1EEE9AC00](v361);
  v387 = &v286 - v8;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75A88, &qword_1D9F43150);
  v358 = *(v359 - 8);
  v9 = *(v358 + 64);
  MEMORY[0x1EEE9AC00](v359);
  v386 = &v286 - v10;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75A90, &qword_1D9F43158);
  v356 = *(v357 - 8);
  v11 = *(v356 + 64);
  MEMORY[0x1EEE9AC00](v357);
  v385 = &v286 - v12;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75A98, &qword_1D9F43160);
  v354 = *(v355 - 8);
  v13 = *(v354 + 64);
  MEMORY[0x1EEE9AC00](v355);
  v384 = &v286 - v14;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AA0, &qword_1D9F43168);
  v352 = *(v353 - 8);
  v15 = *(v352 + 64);
  MEMORY[0x1EEE9AC00](v353);
  v383 = &v286 - v16;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AA8, &qword_1D9F43170);
  v350 = *(v351 - 8);
  v17 = *(v350 + 64);
  MEMORY[0x1EEE9AC00](v351);
  v382 = &v286 - v18;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AB0, &qword_1D9F43178);
  v348 = *(v349 - 8);
  v19 = *(v348 + 64);
  MEMORY[0x1EEE9AC00](v349);
  v381 = &v286 - v20;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AB8, &qword_1D9F43180);
  v346 = *(v347 - 8);
  v21 = *(v346 + 64);
  MEMORY[0x1EEE9AC00](v347);
  v380 = &v286 - v22;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AC0, &qword_1D9F43188);
  v344 = *(v345 - 8);
  v23 = *(v344 + 64);
  MEMORY[0x1EEE9AC00](v345);
  v379 = &v286 - v24;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AC8, &qword_1D9F43190);
  v342 = *(v343 - 8);
  v25 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v343);
  v378 = &v286 - v26;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AD0, &qword_1D9F43198);
  v340 = *(v341 - 8);
  v27 = *(v340 + 64);
  MEMORY[0x1EEE9AC00](v341);
  v377 = &v286 - v28;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AD8, &qword_1D9F431A0);
  v338 = *(v339 - 8);
  v29 = *(v338 + 64);
  MEMORY[0x1EEE9AC00](v339);
  v376 = &v286 - v30;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AE0, &qword_1D9F431A8);
  v336 = *(v337 - 8);
  v31 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v337);
  v375 = &v286 - v32;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AE8, &qword_1D9F431B0);
  v334 = *(v335 - 8);
  v33 = *(v334 + 64);
  MEMORY[0x1EEE9AC00](v335);
  v374 = &v286 - v34;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AF0, &qword_1D9F431B8);
  v332 = *(v333 - 8);
  v35 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v333);
  v373 = &v286 - v36;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75AF8, &qword_1D9F431C0);
  v330 = *(v331 - 8);
  v37 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](v331);
  v372 = &v286 - v38;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75B00, &qword_1D9F431C8);
  v328 = *(v329 - 8);
  v39 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v329);
  v371 = &v286 - v40;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75B08, &qword_1D9F431D0);
  v326 = *(v327 - 8);
  v41 = *(v326 + 64);
  MEMORY[0x1EEE9AC00](v327);
  v370 = &v286 - v42;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75B10, &qword_1D9F431D8);
  v324 = *(v325 - 8);
  v43 = *(v324 + 64);
  MEMORY[0x1EEE9AC00](v325);
  v369 = &v286 - v44;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75B18, &qword_1D9F431E0);
  v322 = *(v323 - 8);
  v45 = *(v322 + 64);
  MEMORY[0x1EEE9AC00](v323);
  v368 = &v286 - v46;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75B20, &qword_1D9F431E8);
  v320 = *(v321 - 8);
  v47 = *(v320 + 64);
  MEMORY[0x1EEE9AC00](v321);
  v367 = &v286 - v48;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75B28, &qword_1D9F431F0);
  v318 = *(v319 - 8);
  v49 = *(v318 + 64);
  MEMORY[0x1EEE9AC00](v319);
  v393 = &v286 - v50;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75B30, &qword_1D9F431F8);
  v317 = *(v316 - 8);
  v51 = *(v317 + 64);
  MEMORY[0x1EEE9AC00](v316);
  v391 = &v286 - v52;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75B38, &qword_1D9F43200);
  v314 = *(v315 - 8);
  v53 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v315);
  v366 = &v286 - v54;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75B40, &unk_1D9F43208);
  v395 = *(v392 - 8);
  v55 = *(v395 + 64);
  MEMORY[0x1EEE9AC00](v392);
  v406 = &v286 - v56;
  v394 = type metadata accessor for DetectedEntity();
  v57 = *(*(v394 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v394);
  v310 = (&v286 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = MEMORY[0x1EEE9AC00](v58);
  v309 = (&v286 - v61);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v307 = (&v286 - v63);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v308 = (&v286 - v65);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v305 = (&v286 - v67);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v304 = (&v286 - v69);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v306 = &v286 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v303 = &v286 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v302 = (&v286 - v75);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v301 = &v286 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v300 = &v286 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v313 = &v286 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v312 = &v286 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v298 = (&v286 - v85);
  v86 = MEMORY[0x1EEE9AC00](v84);
  v299 = &v286 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v297 = (&v286 - v89);
  v90 = MEMORY[0x1EEE9AC00](v88);
  v296 = (&v286 - v91);
  v92 = MEMORY[0x1EEE9AC00](v90);
  v295 = (&v286 - v93);
  v94 = MEMORY[0x1EEE9AC00](v92);
  v294 = (&v286 - v95);
  v96 = MEMORY[0x1EEE9AC00](v94);
  v293 = (&v286 - v97);
  v98 = MEMORY[0x1EEE9AC00](v96);
  v311 = &v286 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v102 = &v286 - v101;
  v103 = MEMORY[0x1EEE9AC00](v100);
  v105 = &v286 - v104;
  v106 = MEMORY[0x1EEE9AC00](v103);
  v108 = &v286 - v107;
  v109 = MEMORY[0x1EEE9AC00](v106);
  v111 = &v286 - v110;
  v112 = MEMORY[0x1EEE9AC00](v109);
  v114 = (&v286 - v113);
  MEMORY[0x1EEE9AC00](v112);
  v116 = &v286 - v115;
  v117 = a1[3];
  v118 = a1[4];
  v397 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v117);
  sub_1D9EFD030();
  v119 = v396;
  sub_1D9F2BB7C();
  if (v119)
  {
LABEL_8:
    v139 = v397;
    return __swift_destroy_boxed_opaque_existential_1(v139);
  }

  v287 = v114;
  v289 = v111;
  v290 = v108;
  v288 = v102;
  v291 = v105;
  v120 = v391;
  v121 = v393;
  v396 = 0;
  v292 = v116;
  v122 = v392;
  v123 = v406;
  v124 = sub_1D9F2B8DC();
  v125 = (2 * *(v124 + 16)) | 1;
  v402 = v124;
  v403 = v124 + 32;
  v404 = 0;
  v405 = v125;
  v126 = sub_1D9E41774();
  if (v404 != v405 >> 1)
  {
LABEL_6:
    v134 = sub_1D9F2B6BC();
    swift_allocError();
    v136 = v135;
    v137 = v122;
    v138 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
    *v136 = v394;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v134 - 8) + 104))(v136, *MEMORY[0x1E69E6AF8], v134);
    swift_willThrow();
    (*(v395 + 8))(v123, v137);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v127 = v123;
  switch(v126)
  {
    case 0:
      v398[0] = 0;
      sub_1D9EFDB58();
      v128 = v366;
      v129 = v396;
      sub_1D9F2B7DC();
      if (v129)
      {
        goto LABEL_60;
      }

      v130 = v315;
      v131 = sub_1D9F2B84C();
      v132 = v128;
      v133 = v395;
      v273 = v272;
      (*(v314 + 8))(v132, v130);
      (*(v133 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v274 = v287;
      *v287 = v131;
      v274[1] = v273;
      goto LABEL_66;
    case 1:
      v398[0] = 1;
      sub_1D9EFDB04();
      v204 = v120;
      v205 = v396;
      sub_1D9F2B7DC();
      if (!v205)
      {
        sub_1D9F2AD0C();
        sub_1D9EFDF64(&qword_1ECB73548, MEMORY[0x1E6969530]);
        v206 = v289;
        v207 = v316;
        sub_1D9F2B89C();
        (*(v317 + 8))(v204, v207);
        (*(v395 + 8))(v123, v122);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v275 = v206;
        goto LABEL_65;
      }

      (*(v395 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v139 = v397;
      return __swift_destroy_boxed_opaque_existential_1(v139);
    case 2:
      v398[0] = 2;
      sub_1D9EFDAB0();
      v187 = v396;
      sub_1D9F2B7DC();
      if (v187)
      {
        goto LABEL_46;
      }

      sub_1D9F2AACC();
      sub_1D9EFDF64(&qword_1ECB75B98, MEMORY[0x1E6968278]);
      v149 = v290;
      v188 = v319;
      sub_1D9F2B89C();
      v189 = v395;
      (*(v318 + 8))(v121, v188);
      (*(v189 + 8))(v123, v122);
      swift_unknownObjectRelease();
      goto LABEL_63;
    case 3:
      v398[0] = 3;
      sub_1D9EFDA5C();
      v194 = v367;
      v195 = v396;
      sub_1D9F2B7DC();
      if (v195)
      {
        goto LABEL_46;
      }

      sub_1D9F2AC4C();
      sub_1D9EFDF64(&qword_1ECB743B8, MEMORY[0x1E6968FB0]);
      v149 = v291;
      v196 = v321;
      sub_1D9F2B89C();
      v197 = v395;
      (*(v320 + 8))(v194, v196);
      (*(v197 + 8))(v127, v122);
      swift_unknownObjectRelease();
      goto LABEL_63;
    case 4:
      v398[0] = 4;
      sub_1D9EFD9B4();
      v156 = v368;
      v157 = v396;
      sub_1D9F2B7DC();
      if (v157)
      {
        goto LABEL_60;
      }

      sub_1D9EFDEC8();
      v158 = v323;
      sub_1D9F2B89C();
      v159 = v395;
      (*(v322 + 8))(v156, v158);
      (*(v159 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v160 = *&v398[8];
      v161 = *&v398[16];
      v146 = v288;
      *v288 = *v398;
      *(v146 + 1) = v160;
      *(v146 + 2) = v161;
      goto LABEL_64;
    case 5:
      v398[0] = 5;
      sub_1D9EFD960();
      v219 = v369;
      v220 = v396;
      sub_1D9F2B7DC();
      if (v220)
      {
        goto LABEL_46;
      }

      type metadata accessor for DateTimeSchedule();
      sub_1D9EFDF64(&qword_1ECB743C8, type metadata accessor for DateTimeSchedule);
      v149 = v311;
      v221 = v325;
      sub_1D9F2B89C();
      v222 = v395;
      (*(v324 + 8))(v219, v221);
      (*(v222 + 8))(v127, v122);
      swift_unknownObjectRelease();
      goto LABEL_63;
    case 6:
      v398[0] = 6;
      sub_1D9EFD8B8();
      v230 = v370;
      v231 = v396;
      sub_1D9F2B7DC();
      if (v231)
      {
        goto LABEL_60;
      }

      sub_1D9EFDE74();
      v232 = v327;
      sub_1D9F2B89C();
      v233 = v395;
      (*(v326 + 8))(v230, v232);
      (*(v233 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v234 = *&v398[16];
      v146 = v293;
      *v293 = *v398;
      v146[1] = v234;
      goto LABEL_64;
    case 7:
      v398[0] = 7;
      sub_1D9EFD810();
      v198 = v371;
      v199 = v396;
      sub_1D9F2B7DC();
      if (v199)
      {
        goto LABEL_60;
      }

      sub_1D9EFDE20();
      v200 = v329;
      sub_1D9F2B89C();
      v201 = v395;
      (*(v328 + 8))(v198, v200);
      (*(v201 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v202 = *&v398[8];
      v203 = *&v398[16];
      v146 = v294;
      *v294 = *v398;
      *(v146 + 1) = v202;
      *(v146 + 2) = v203;
      goto LABEL_64;
    case 8:
      v398[0] = 8;
      sub_1D9EFD768();
      v246 = v372;
      v247 = v396;
      sub_1D9F2B7DC();
      if (v247)
      {
        goto LABEL_60;
      }

      sub_1D9EFDDCC();
      v248 = v331;
      sub_1D9F2B89C();
      v249 = v395;
      (*(v330 + 8))(v246, v248);
      (*(v249 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v250 = *&v398[16];
      v146 = v295;
      *v295 = *v398;
      v146[1] = v250;
      goto LABEL_64;
    case 9:
      v398[0] = 9;
      sub_1D9EFD714();
      v167 = v373;
      v168 = v396;
      sub_1D9F2B7DC();
      if (v168)
      {
        goto LABEL_60;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75690, &qword_1D9F42150);
      sub_1D9EF1D5C(&qword_1ECB75720);
      v169 = v333;
      sub_1D9F2B89C();
      v170 = v395;
      (*(v332 + 8))(v167, v169);
      (*(v170 + 8))(v127, v122);
      swift_unknownObjectRelease();
      v171 = *&v398[8];
      v146 = v296;
      *v296 = *v398;
      *(v146 + 1) = v171;
      v146[1] = *&v398[16];
      goto LABEL_64;
    case 10:
      v398[0] = 10;
      sub_1D9EFD6C0();
      v241 = v374;
      v242 = v396;
      sub_1D9F2B7DC();
      if (v242)
      {
        goto LABEL_60;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75690, &qword_1D9F42150);
      sub_1D9EF1D5C(&qword_1ECB75720);
      v243 = v335;
      sub_1D9F2B89C();
      v244 = v395;
      (*(v334 + 8))(v241, v243);
      (*(v244 + 8))(v127, v122);
      swift_unknownObjectRelease();
      v245 = *&v398[8];
      v146 = v297;
      *v297 = *v398;
      *(v146 + 1) = v245;
      v146[1] = *&v398[16];
      goto LABEL_64;
    case 11:
      v398[0] = 11;
      sub_1D9EFD66C();
      v152 = v375;
      v153 = v396;
      sub_1D9F2B7DC();
      if (v153)
      {
        goto LABEL_60;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731D0, &qword_1D9F42160);
      sub_1D9EF1E6C(&qword_1ECB75730);
      v154 = v337;
      sub_1D9F2B89C();
      v155 = (v395 + 8);
      (*(v336 + 8))(v152, v154);
      (*v155)(v127, v122);
      swift_unknownObjectRelease();
      v267 = *&v398[48];
      v146 = v299;
      *(v299 + 2) = *&v398[32];
      v146[3] = v267;
      v268 = v400;
      v146[4] = v399;
      v146[5] = v268;
      v269 = *&v398[16];
      *v146 = *v398;
      v146[1] = v269;
      goto LABEL_64;
    case 12:
      v398[0] = 12;
      sub_1D9EFD618();
      v162 = v376;
      v163 = v396;
      sub_1D9F2B7DC();
      if (v163)
      {
        goto LABEL_60;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756D8, &qword_1D9F42170);
      sub_1D9EF1B14(&qword_1ECB75740);
      v164 = v339;
      sub_1D9F2B89C();
      v165 = v395;
      (*(v338 + 8))(v162, v164);
      (*(v165 + 8))(v127, v122);
      swift_unknownObjectRelease();
      v166 = *&v398[16];
      v146 = v298;
      *v298 = *v398;
      v146[1] = v166;
      v146[2] = *&v398[32];
      goto LABEL_64;
    case 13:
      v398[0] = 13;
      sub_1D9EFD5C4();
      v228 = v377;
      v229 = v396;
      sub_1D9F2B7DC();
      if (v229)
      {
        goto LABEL_46;
      }

      type metadata accessor for CalendarEvent();
      sub_1D9EFDF64(&qword_1ECB75B70, type metadata accessor for CalendarEvent);
      v149 = v312;
      v261 = v341;
      sub_1D9F2B89C();
      v262 = v395;
      (*(v340 + 8))(v228, v261);
      (*(v262 + 8))(v127, v122);
      swift_unknownObjectRelease();
      goto LABEL_63;
    case 14:
      v398[0] = 14;
      sub_1D9EFD570();
      v147 = v378;
      v148 = v396;
      sub_1D9F2B7DC();
      if (v148)
      {
LABEL_46:
        (*(v395 + 8))(v127, v122);
        swift_unknownObjectRelease();
        v139 = v397;
        return __swift_destroy_boxed_opaque_existential_1(v139);
      }

      type metadata accessor for Contact(0);
      sub_1D9EFDF64(&qword_1ECB75B68, type metadata accessor for Contact);
      v149 = v313;
      v150 = v343;
      sub_1D9F2B89C();
      v151 = v395;
      (*(v342 + 8))(v147, v150);
      (*(v151 + 8))(v127, v122);
      swift_unknownObjectRelease();
LABEL_63:
      swift_storeEnumTagMultiPayload();
      v275 = v149;
      goto LABEL_65;
    case 15:
      v398[0] = 15;
      sub_1D9EFD4C8();
      v190 = v379;
      v191 = v396;
      sub_1D9F2B7DC();
      if (v191)
      {
        goto LABEL_60;
      }

      sub_1D9EFDD78();
      v192 = v345;
      sub_1D9F2B89C();
      v193 = v395;
      (*(v344 + 8))(v190, v192);
      (*(v193 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v146 = v300;
      *v300 = v398[0];
      *(v146 + 8) = *&v398[8];
      *(v146 + 24) = *&v398[24];
      *(v146 + 40) = *&v398[40];
      goto LABEL_64;
    case 16:
      v398[0] = 16;
      sub_1D9EFD420();
      v141 = v380;
      v142 = v396;
      sub_1D9F2B7DC();
      if (v142)
      {
        goto LABEL_60;
      }

      sub_1D9EFDD24();
      v143 = v347;
      sub_1D9F2B89C();
      v144 = v395;
      (*(v346 + 8))(v141, v143);
      (*(v144 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v145 = *&v398[24];
      v146 = v301;
      *v301 = v398[0];
      *(v146 + 8) = *&v398[8];
      *(v146 + 3) = v145;
      goto LABEL_64;
    case 17:
      v398[0] = 17;
      sub_1D9EFD378();
      v208 = v381;
      v209 = v396;
      sub_1D9F2B7DC();
      if (v209)
      {
        goto LABEL_60;
      }

      sub_1D9EFDCD0();
      v210 = v349;
      sub_1D9F2B89C();
      v211 = v395;
      (*(v348 + 8))(v208, v210);
      (*(v211 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v212 = *&v398[16];
      v146 = v302;
      *v302 = *v398;
      v146[1] = v212;
      goto LABEL_64;
    case 18:
      v398[0] = 18;
      sub_1D9EFD2D0();
      v235 = v382;
      v236 = v396;
      sub_1D9F2B7DC();
      if (v236)
      {
        goto LABEL_60;
      }

      sub_1D9EFDC7C();
      v237 = v351;
      sub_1D9F2B89C();
      v238 = (v395 + 8);
      (*(v350 + 8))(v235, v237);
      (*v238)(v123, v122);
      swift_unknownObjectRelease();
      v239 = *&v398[48];
      v146 = v303;
      *(v303 + 2) = *&v398[32];
      v146[3] = v239;
      v146[4] = v399;
      *(v146 + 80) = v400;
      v240 = *&v398[16];
      *v146 = *v398;
      v146[1] = v240;
      goto LABEL_64;
    case 19:
      v398[0] = 19;
      sub_1D9EFD27C();
      v255 = v383;
      v256 = v396;
      sub_1D9F2B7DC();
      if (v256)
      {
        goto LABEL_60;
      }

      sub_1D9E50F88();
      v257 = v353;
      sub_1D9F2B89C();
      v258 = (v395 + 8);
      (*(v352 + 8))(v255, v257);
      (*v258)(v123, v122);
      swift_unknownObjectRelease();
      v278 = v400;
      v146 = v306;
      *(v306 + 4) = v399;
      v146[5] = v278;
      *(v146 + 12) = v401;
      v279 = *&v398[16];
      *v146 = *v398;
      v146[1] = v279;
      v280 = *&v398[48];
      v146[2] = *&v398[32];
      v146[3] = v280;
      goto LABEL_64;
    case 20:
      v398[0] = 20;
      sub_1D9EFD228();
      v213 = v384;
      v214 = v396;
      sub_1D9F2B7DC();
      if (v214)
      {
        goto LABEL_60;
      }

      sub_1D9E50F34();
      v215 = v355;
      sub_1D9F2B89C();
      v216 = v395;
      (*(v354 + 8))(v213, v215);
      (*(v216 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v217 = *&v398[16];
      v218 = *&v398[32];
      v146 = v304;
      *v304 = *v398;
      v146[1] = v217;
      v146[2] = v218;
      goto LABEL_64;
    case 21:
      v398[0] = 21;
      sub_1D9EFD1D4();
      v223 = v385;
      v224 = v396;
      sub_1D9F2B7DC();
      if (v224)
      {
        goto LABEL_60;
      }

      sub_1D9E50EE0();
      v225 = v357;
      sub_1D9F2B89C();
      v226 = v395;
      (*(v356 + 8))(v223, v225);
      (*(v226 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v227 = *&v398[8];
      v146 = v305;
      *v305 = *v398;
      *(v146 + 1) = v227;
      goto LABEL_64;
    case 22:
      v398[0] = 22;
      sub_1D9EFD180();
      v251 = v386;
      v252 = v396;
      sub_1D9F2B7DC();
      if (v252)
      {
        goto LABEL_60;
      }

      sub_1D9E5121C();
      v253 = v359;
      sub_1D9F2B89C();
      v254 = v395;
      (*(v358 + 8))(v251, v253);
      (*(v254 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v276 = *&v398[16];
      v277 = *&v398[32];
      v146 = v308;
      *v308 = *v398;
      v146[1] = v276;
      *(v146 + 8) = v277;
      *(v146 + 40) = *&v398[40];
LABEL_64:
      swift_storeEnumTagMultiPayload();
      v275 = v146;
      goto LABEL_65;
    case 23:
      v398[0] = 23;
      sub_1D9EFD12C();
      v259 = v387;
      v260 = v396;
      sub_1D9F2B7DC();
      if (v260)
      {
        goto LABEL_60;
      }

      v263 = v361;
      v264 = sub_1D9F2B84C();
      v265 = v259;
      v266 = v395;
      v283 = v264;
      v285 = v284;
      (*(v360 + 8))(v265, v263);
      (*(v266 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v274 = v307;
      *v307 = v283;
      v274[1] = v285;
      goto LABEL_66;
    case 24:
      v398[0] = 24;
      sub_1D9EFD0D8();
      v178 = v388;
      v179 = v396;
      sub_1D9F2B7DC();
      if (v179)
      {
        goto LABEL_60;
      }

      v180 = v363;
      v181 = sub_1D9F2B84C();
      v182 = v178;
      v183 = v395;
      v184 = v181;
      v186 = v185;
      (*(v362 + 8))(v182, v180);
      (*(v183 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v274 = v309;
      *v309 = v184;
      v274[1] = v186;
      goto LABEL_66;
    case 25:
      v398[0] = 25;
      sub_1D9EFD084();
      v172 = v389;
      v173 = v396;
      sub_1D9F2B7DC();
      if (v173)
      {
LABEL_60:
        (*(v395 + 8))(v127, v122);
        goto LABEL_7;
      }

      v174 = v365;
      v175 = sub_1D9F2B84C();
      v176 = v172;
      v177 = v395;
      v271 = v270;
      (*(v364 + 8))(v176, v174);
      (*(v177 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v274 = v310;
      *v310 = v175;
      v274[1] = v271;
LABEL_66:
      swift_storeEnumTagMultiPayload();
      v275 = v274;
LABEL_65:
      v281 = v292;
      sub_1D9EFDC14(v275, v292, type metadata accessor for DetectedEntity);
      v282 = v397;
      sub_1D9EFDC14(v281, v390, type metadata accessor for DetectedEntity);
      result = __swift_destroy_boxed_opaque_existential_1(v282);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

uint64_t sub_1D9EFAE5C()
{
  sub_1D9F2BAFC();
  DetectedEntity.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EFAEA0()
{
  sub_1D9F2BAFC();
  DetectedEntity.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EFAEE0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9EFDBAC(v2, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v27 = sub_1D9F2AD0C();
      v28 = v27;
      v29 = &protocol witness table for Date;
      goto LABEL_16;
    case 2:
      v27 = sub_1D9F2AACC();
      v28 = v27;
      v29 = &protocol witness table for DateComponents;
      goto LABEL_16;
    case 3:
      v27 = sub_1D9F2AC4C();
      v28 = v27;
      v29 = &protocol witness table for URL;
LABEL_16:
      a1[3] = v27;
      a1[4] = v29;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      return (*(*(v28 - 8) + 32))(boxed_opaque_existential_1, v7, v28);
    case 4:
      v32 = *v7;
      v33 = *(v7 + 1);
      v34 = *(v7 + 2);
      a1[3] = &type metadata for CurrencyAmount;
      a1[4] = &protocol witness table for CurrencyAmount;
      *a1 = v32;
      a1[1] = v33;
      a1[2] = v34;
      return result;
    case 5:
      a1[3] = type metadata accessor for DateTimeSchedule();
      a1[4] = &protocol witness table for DateTimeSchedule;
      v25 = __swift_allocate_boxed_opaque_existential_1(a1);
      v26 = type metadata accessor for DateTimeSchedule;
      return sub_1D9EFDC14(v7, v25, v26);
    case 6:
      v56 = *v7;
      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      a1[3] = &type metadata for FlightNumber;
      a1[4] = &protocol witness table for FlightNumber;
      goto LABEL_24;
    case 7:
      v48 = *v7;
      v49 = *(v7 + 1);
      v50 = *(v7 + 2);
      a1[3] = &type metadata for PhysicalValue;
      a1[4] = &protocol witness table for PhysicalValue;
      *a1 = v48;
      a1[1] = v49;
      a1[2] = v50;
      return result;
    case 8:
      v56 = *v7;
      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      a1[3] = &type metadata for ShipmentTrackingNumber;
      a1[4] = &protocol witness table for ShipmentTrackingNumber;
      goto LABEL_24;
    case 9:
    case 10:
      v56 = *v7;
      v13 = *(v7 + 2);
      v14 = *(v7 + 3);
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75690, &qword_1D9F42150);
      a1[4] = sub_1D9F0084C(&qword_1ECB75C90, &qword_1ECB75690, &qword_1D9F42150);
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v56;
      *(result + 32) = v13;
      *(result + 40) = v14;
      return result;
    case 11:
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731D0, &qword_1D9F42160);
      a1[4] = sub_1D9F0084C(&qword_1ECB75C88, &qword_1ECB731D0, &qword_1D9F42160);
      result = swift_allocObject();
      *a1 = result;
      v45 = *(v7 + 3);
      *(result + 48) = *(v7 + 2);
      *(result + 64) = v45;
      v46 = *(v7 + 5);
      *(result + 80) = *(v7 + 4);
      *(result + 96) = v46;
      goto LABEL_26;
    case 12:
      v21 = *v7;
      v55 = *(v7 + 1);
      v56 = v21;
      v22 = *(v7 + 4);
      v23 = *(v7 + 5);
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756D8, &qword_1D9F42170);
      a1[4] = sub_1D9F0084C(&qword_1ECB75C80, &qword_1ECB756D8, &qword_1D9F42170);
      result = swift_allocObject();
      *a1 = result;
      v24 = v55;
      *(result + 16) = v56;
      *(result + 32) = v24;
      *(result + 48) = v22;
      *(result + 56) = v23;
      return result;
    case 13:
      a1[3] = type metadata accessor for CalendarEvent();
      a1[4] = &protocol witness table for CalendarEvent;
      v25 = __swift_allocate_boxed_opaque_existential_1(a1);
      v26 = type metadata accessor for CalendarEvent;
      return sub_1D9EFDC14(v7, v25, v26);
    case 14:
      a1[3] = type metadata accessor for Contact(0);
      a1[4] = &protocol witness table for Contact;
      v25 = __swift_allocate_boxed_opaque_existential_1(a1);
      v26 = type metadata accessor for Contact;
      return sub_1D9EFDC14(v7, v25, v26);
    case 15:
      v17 = *v7;
      v18 = *(v7 + 5);
      v19 = *(v7 + 6);
      a1[3] = &type metadata for Identification;
      a1[4] = &protocol witness table for Identification;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v17;
      v20 = *(v7 + 8);
      *(result + 40) = *(v7 + 24);
      *(result + 24) = v20;
      *(result + 56) = v18;
      *(result + 64) = v19;
      return result;
    case 16:
      v30 = *v7;
      v56 = *(v7 + 8);
      v31 = *(v7 + 3);
      a1[3] = &type metadata for List;
      a1[4] = &protocol witness table for List;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v30;
      *(result + 24) = v56;
      *(result + 40) = v31;
      return result;
    case 17:
      v56 = *v7;
      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      a1[3] = &type metadata for ParkingLocation;
      a1[4] = &protocol witness table for ParkingLocation;
LABEL_24:
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v56;
      *(result + 32) = v16;
      *(result + 40) = v15;
      return result;
    case 18:
      a1[3] = &type metadata for Transaction;
      a1[4] = &protocol witness table for Transaction;
      result = swift_allocObject();
      *a1 = result;
      v36 = *(v7 + 3);
      *(result + 48) = *(v7 + 2);
      *(result + 64) = v36;
      *(result + 80) = *(v7 + 4);
      *(result + 96) = v7[80];
LABEL_26:
      v47 = *(v7 + 1);
      *(result + 16) = *v7;
      *(result + 32) = v47;
      return result;
    case 19:
      a1[3] = &type metadata for Book;
      a1[4] = &protocol witness table for Book;
      result = swift_allocObject();
      *a1 = result;
      v42 = *(v7 + 5);
      *(result + 80) = *(v7 + 4);
      *(result + 96) = v42;
      *(result + 112) = *(v7 + 12);
      v43 = *(v7 + 1);
      *(result + 16) = *v7;
      *(result + 32) = v43;
      v44 = *(v7 + 3);
      *(result + 48) = *(v7 + 2);
      *(result + 64) = v44;
      return result;
    case 20:
      v51 = *v7;
      v55 = *(v7 + 1);
      v56 = v51;
      v53 = *(v7 + 4);
      v52 = *(v7 + 5);
      a1[3] = &type metadata for Album;
      a1[4] = &protocol witness table for Album;
      result = swift_allocObject();
      *a1 = result;
      v54 = v55;
      *(result + 16) = v56;
      *(result + 32) = v54;
      *(result + 48) = v53;
      *(result + 56) = v52;
      return result;
    case 21:
      v9 = *v7;
      v10 = *(v7 + 1);
      v11 = &type metadata for GenericEntity;
      v12 = &protocol witness table for GenericEntity;
      goto LABEL_3;
    case 22:
      v56 = *v7;
      v37 = *(v7 + 2);
      v38 = *(v7 + 3);
      v39 = *(v7 + 8);
      v41 = *(v7 + 5);
      v40 = *(v7 + 6);
      a1[3] = &type metadata for VisualLookupResultItem;
      a1[4] = &protocol witness table for VisualLookupResultItem;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v56;
      *(result + 32) = v37;
      *(result + 40) = v38;
      *(result + 48) = v39;
      *(result + 56) = v41;
      *(result + 64) = v40;
      return result;
    default:
      v9 = *v7;
      v10 = *(v7 + 1);
      v11 = MEMORY[0x1E69E6158];
      v12 = &protocol witness table for String;
LABEL_3:
      a1[3] = v11;
      a1[4] = v12;
      *a1 = v9;
      a1[1] = v10;
      return result;
  }
}

uint64_t sub_1D9EFB544()
{
  sub_1D9EFAEE0(v5);
  v0 = v6;
  v1 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v2 = (*(v1 + 8))(v0, v1);
  v3 = sub_1D9F009E8(v2);

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D9EFB5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  sub_1D9EFDBAC(v4, a2, type metadata accessor for DetectedEntity);
  v6 = *(*(a1 - 8) + 56);

  return v6(a2, 0, 1, a1);
}

uint64_t _s29VisualActionPredictionSupport14DetectedEntityO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  *&v295 = a2;
  *&v294 = a1;
  v2 = type metadata accessor for Contact(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v266 = (&v260 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CalendarEvent();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v265 = (&v260 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DateTimeSchedule();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v264 = (&v260 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1D9F2AC4C();
  v271 = *(v11 - 8);
  v272 = v11;
  v12 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v263 = &v260 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9F2AACC();
  v269 = *(v14 - 8);
  v270 = v14;
  v15 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v262 = &v260 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9F2AD0C();
  v267 = *(v17 - 8);
  v268 = v17;
  v18 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v261 = &v260 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = type metadata accessor for DetectedEntity();
  v20 = *(*(v293 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v293);
  v290 = (&v260 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v21);
  v289 = (&v260 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v287 = (&v260 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v288 = &v260 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v286 = (&v260 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v285 = (&v260 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v292 = &v260 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v291 = &v260 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v281 = (&v260 - v38);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v282 = &v260 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v280 = &v260 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v284 = (&v260 - v44);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v283 = (&v260 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v279 = (&v260 - v48);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v278 = (&v260 - v50);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v277 = (&v260 - v52);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v276 = (&v260 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = (&v260 - v56);
  v58 = MEMORY[0x1EEE9AC00](v55);
  v274 = &v260 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v62 = (&v260 - v61);
  v63 = MEMORY[0x1EEE9AC00](v60);
  v275 = (&v260 - v64);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v67 = &v260 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v273 = &v260 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v72 = &v260 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70);
  v75 = &v260 - v74;
  MEMORY[0x1EEE9AC00](v73);
  v77 = (&v260 - v76);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75C98, &unk_1D9F45278);
  v79 = *(*(v78 - 8) + 64);
  v80 = MEMORY[0x1EEE9AC00](v78 - 8);
  v82 = &v260 - v81;
  v83 = &v260 + *(v80 + 56) - v81;
  sub_1D9EFDBAC(v294, &v260 - v81, type metadata accessor for DetectedEntity);
  v84 = v295;
  *&v295 = v83;
  sub_1D9EFDBAC(v84, v83, type metadata accessor for DetectedEntity);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D9EFDBAC(v82, v75, type metadata accessor for DetectedEntity);
      v162 = v295;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v163 = v267;
        v150 = v268;
        v164 = v261;
        (*(v267 + 32))(v261, v162, v268);
        v99 = sub_1D9F2ACDC();
        v153 = *(v163 + 8);
        v153(v164, v150);
        v154 = v75;
        goto LABEL_34;
      }

      (*(v267 + 8))(v75, v268);
      goto LABEL_105;
    case 2u:
      sub_1D9EFDBAC(v82, v72, type metadata accessor for DetectedEntity);
      v130 = v295;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v132 = v269;
        v131 = v270;
        v133 = v262;
        (*(v269 + 32))(v262, v130, v270);
        v99 = MEMORY[0x1DA7428A0](v72, v133);
        v134 = *(v132 + 8);
        v134(v133, v131);
        v134(v72, v131);
        goto LABEL_83;
      }

      (*(v269 + 8))(v72, v270);
      goto LABEL_105;
    case 3u:
      v148 = v273;
      sub_1D9EFDBAC(v82, v273, type metadata accessor for DetectedEntity);
      v149 = v295;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v271 + 8))(v148, v272);
        goto LABEL_105;
      }

      v151 = v271;
      v150 = v272;
      v152 = v263;
      (*(v271 + 32))(v263, v149, v272);
      v99 = sub_1D9F2AC0C();
      v153 = *(v151 + 8);
      v153(v152, v150);
      v154 = v148;
LABEL_34:
      v153(v154, v150);
      goto LABEL_83;
    case 4u:
      sub_1D9EFDBAC(v82, v67, type metadata accessor for DetectedEntity);
      v116 = *v67;
      v115 = *(v67 + 1);
      v117 = *(v67 + 2);
      v118 = v295;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_98;
      }

      v119 = *(v118 + 16);
      if (v116 == *v118 && v115 == *(v118 + 8))
      {
      }

      else
      {
        v253 = *(v118 + 8);
        v254 = sub_1D9F2BA1C();

        if ((v254 & 1) == 0)
        {
          goto LABEL_115;
        }
      }

      if (v117 == v119)
      {
        goto LABEL_111;
      }

      goto LABEL_115;
    case 5u:
      v100 = v275;
      sub_1D9EFDBAC(v82, v275, type metadata accessor for DetectedEntity);
      v189 = v295;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v102 = type metadata accessor for DateTimeSchedule;
        v103 = v264;
        sub_1D9EFDC14(v189, v264, type metadata accessor for DateTimeSchedule);
        v104 = _s29VisualActionPredictionSupport16DateTimeScheduleV2eeoiySbAC_ACtFZ_0(v100, v103);
        goto LABEL_61;
      }

      v249 = type metadata accessor for DateTimeSchedule;
      goto LABEL_101;
    case 6u:
      v165 = v82;
      sub_1D9EFDBAC(v82, v62, type metadata accessor for DetectedEntity);
      v168 = *v62;
      v167 = v62[1];
      v170 = v62[2];
      v169 = v62[3];
      v171 = v295;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_103;
      }

      goto LABEL_36;
    case 7u:
      v155 = v274;
      sub_1D9EFDBAC(v82, v274, type metadata accessor for DetectedEntity);
      v157 = *(v155 + 8);
      v156 = *(v155 + 16);
      v158 = v295;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_98;
      }

      v159 = *v155;
      v160 = *(v158 + 16);
      if (v159 == *v158)
      {
        v161 = *(v158 + 8);
LABEL_56:
        if (v157 == v161 && v156 == v160)
        {
LABEL_58:

LABEL_111:
          v255 = v82;
          goto LABEL_118;
        }

        v252 = sub_1D9F2BA1C();

        if (v252)
        {
          goto LABEL_111;
        }
      }

      else
      {
      }

LABEL_115:
      v256 = v82;
      goto LABEL_124;
    case 8u:
      v165 = v82;
      sub_1D9EFDBAC(v82, v57, type metadata accessor for DetectedEntity);
      v205 = *v57;
      v204 = v57[1];
      v207 = v57[2];
      v206 = v57[3];
      v208 = v295;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_103;
      }

      v209 = *v208;
      v210 = v208[1];
      v212 = v208[2];
      v211 = v208[3];
      if ((v205 != v209 || v204 != v210) && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_122;
      }

      if (v207 == v212 && v206 == v211)
      {
        goto LABEL_75;
      }

      goto LABEL_116;
    case 9u:
      v124 = v276;
      sub_1D9EFDBAC(v82, v276, type metadata accessor for DetectedEntity);
      v125 = v124[1];
      v126 = v124[3];
      v127 = v295;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_79;
      }

      goto LABEL_67;
    case 0xAu:
      v124 = v277;
      sub_1D9EFDBAC(v82, v277, type metadata accessor for DetectedEntity);
      v125 = v124[1];
      v126 = v124[3];
      v127 = v295;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_79;
      }

LABEL_67:
      v97 = v82;
      v99 = sub_1D9F00D14(*v124, v125, v124[2], v126, *v127, v127[1], v127[2], v127[3]);

      goto LABEL_68;
    case 0xBu:
      v105 = v278;
      sub_1D9EFDBAC(v82, v278, type metadata accessor for DetectedEntity);
      v106 = v105[3];
      v312 = v105[2];
      v313 = v106;
      v107 = v105[5];
      v314 = v105[4];
      v315 = v107;
      v108 = v105[1];
      v310 = *v105;
      v311 = v108;
      v109 = v295;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v110 = v109[3];
        v319 = v109[2];
        v320 = v110;
        v111 = v109[5];
        v321 = v109[4];
        v322 = v111;
        v112 = v109[1];
        v317 = *v109;
        v318 = v112;
        v99 = sub_1D9F00C64(&v310, &v317);
        v113 = &qword_1ECB731D0;
        v114 = &qword_1D9F42160;
        goto LABEL_16;
      }

      v250 = &qword_1ECB731D0;
      v251 = &qword_1D9F42160;
      goto LABEL_93;
    case 0xCu:
      v120 = v279;
      sub_1D9EFDBAC(v82, v279, type metadata accessor for DetectedEntity);
      v121 = v120[1];
      v310 = *v120;
      v311 = v121;
      v312 = v120[2];
      v122 = v295;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v123 = v122[1];
        v317 = *v122;
        v318 = v123;
        v319 = v122[2];
        v99 = sub_1D9F00B98(&v310, &v317);
        v113 = &qword_1ECB756D8;
        v114 = &qword_1D9F42170;
LABEL_16:
        sub_1D9E51FE8(&v317, v113, v114);
        sub_1D9E51FE8(&v310, v113, v114);
        goto LABEL_83;
      }

      v250 = &qword_1ECB756D8;
      v251 = &qword_1D9F42170;
LABEL_93:
      sub_1D9E51FE8(&v310, v250, v251);
      goto LABEL_105;
    case 0xDu:
      v100 = v283;
      sub_1D9EFDBAC(v82, v283, type metadata accessor for DetectedEntity);
      v192 = v295;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v102 = type metadata accessor for CalendarEvent;
        v103 = v265;
        sub_1D9EFDC14(v192, v265, type metadata accessor for CalendarEvent);
        v104 = static CalendarEvent.== infix(_:_:)(v100, v103);
        goto LABEL_61;
      }

      v249 = type metadata accessor for CalendarEvent;
      goto LABEL_101;
    case 0xEu:
      v100 = v284;
      sub_1D9EFDBAC(v82, v284, type metadata accessor for DetectedEntity);
      v101 = v295;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v102 = type metadata accessor for Contact;
        v103 = v266;
        sub_1D9EFDC14(v101, v266, type metadata accessor for Contact);
        v104 = _s29VisualActionPredictionSupport7ContactV2eeoiySbAC_ACtFZ_0(v100, v103);
LABEL_61:
        v99 = v104;
        sub_1D9F008F4(v103, v102);
        sub_1D9F008F4(v100, v102);
        goto LABEL_83;
      }

      v249 = type metadata accessor for Contact;
LABEL_101:
      sub_1D9F008F4(v100, v249);
      goto LABEL_105;
    case 0xFu:
      v135 = v280;
      sub_1D9EFDBAC(v82, v280, type metadata accessor for DetectedEntity);
      v136 = *(v135 + 16);
      v137 = *(v135 + 32);
      v138 = *(v135 + 48);
      v139 = v295;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_78;
      }

      v140 = *(v135 + 40);
      v141 = *(v135 + 24);
      v142 = *(v135 + 8);
      v143 = *v135;
      v144 = *v139;
      v145 = *(v139 + 1);
      v97 = v82;
      v146 = *(v139 + 6);
      LOBYTE(v317) = v143;
      *(&v317 + 1) = v142;
      *&v318 = v136;
      *(&v318 + 1) = v141;
      *&v319 = v137;
      *(&v319 + 1) = v140;
      *&v320 = v138;
      LOBYTE(v310) = v144;
      *(&v310 + 1) = v145;
      v147 = *(v139 + 2);
      v294 = *(v139 + 1);
      v295 = v147;
      v311 = v294;
      v312 = v147;
      *&v313 = v146;
      v99 = _s29VisualActionPredictionSupport14IdentificationV2eeoiySbAC_ACtFZ_0(&v317, &v310);

      goto LABEL_68;
    case 0x10u:
      v88 = v282;
      sub_1D9EFDBAC(v82, v282, type metadata accessor for DetectedEntity);
      v89 = *(v88 + 16);
      v90 = *(v88 + 24);
      v91 = v295;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_79;
      }

      v92 = *(v88 + 8);
      v93 = *v88;
      v94 = *v91;
      v95 = *(v91 + 1);
      v96 = *(v91 + 2);
      v97 = v82;
      v98 = *(v91 + 3);
      LOBYTE(v317) = v93;
      *(&v317 + 1) = v92;
      *&v318 = v89;
      *(&v318 + 1) = v90;
      LOBYTE(v310) = v94;
      *(&v310 + 1) = v95;
      *&v311 = v96;
      *(&v311 + 1) = v98;
      v99 = _s29VisualActionPredictionSupport4ListV2eeoiySbAC_ACtFZ_0(&v317, &v310);

LABEL_68:

      v203 = v97;
      goto LABEL_84;
    case 0x11u:
      v165 = v82;
      v166 = v281;
      sub_1D9EFDBAC(v82, v281, type metadata accessor for DetectedEntity);
      v168 = *v166;
      v167 = v166[1];
      v170 = v166[2];
      v169 = v166[3];
      v171 = v295;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
LABEL_103:

        v82 = v165;
        goto LABEL_105;
      }

LABEL_36:
      v172 = *v171;
      v173 = v171[1];
      v175 = v171[2];
      v174 = v171[3];
      if (v168 == v172 && v167 == v173 || (sub_1D9F2BA1C() & 1) != 0)
      {
        if (v170 == v175 && v169 == v174)
        {
LABEL_75:

LABEL_117:
          v255 = v165;
          goto LABEL_118;
        }

LABEL_116:
        v257 = sub_1D9F2BA1C();

        if (v257)
        {
          goto LABEL_117;
        }
      }

      else
      {
LABEL_122:
      }

      v256 = v165;
LABEL_124:
      sub_1D9F008F4(v256, type metadata accessor for DetectedEntity);
      v99 = 0;
      return v99 & 1;
    case 0x12u:
      v193 = v291;
      sub_1D9EFDBAC(v82, v291, type metadata accessor for DetectedEntity);
      v194 = *(v193 + 48);
      v319 = *(v193 + 32);
      v320 = v194;
      v321 = *(v193 + 64);
      LOBYTE(v322) = *(v193 + 80);
      v195 = *(v193 + 16);
      v317 = *v193;
      v318 = v195;
      v196 = v295;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v197 = v196[3];
        v198 = v196[1];
        v312 = v196[2];
        v313 = v197;
        v199 = v196[3];
        v314 = v196[4];
        v200 = v196[1];
        v310 = *v196;
        v311 = v200;
        v201 = *(v193 + 48);
        v305 = *(v193 + 32);
        v306 = v201;
        v307 = *(v193 + 64);
        v202 = *(v193 + 16);
        v303 = *v193;
        v304 = v202;
        v298 = v312;
        v299 = v199;
        v300 = v196[4];
        LOBYTE(v315) = *(v196 + 80);
        LOBYTE(v308) = *(v193 + 80);
        LOBYTE(v301) = *(v196 + 80);
        v296 = v310;
        v297 = v198;
        v99 = _s29VisualActionPredictionSupport11TransactionV2eeoiySbAC_ACtFZ_0(&v303, &v296);
        sub_1D9E77278(&v310);
        sub_1D9E77278(&v317);
        goto LABEL_83;
      }

      sub_1D9E77278(&v317);
      goto LABEL_105;
    case 0x13u:
      v230 = v292;
      sub_1D9EFDBAC(v82, v292, type metadata accessor for DetectedEntity);
      v231 = *(v230 + 80);
      v321 = *(v230 + 64);
      v322 = v231;
      v323 = *(v230 + 96);
      v232 = *(v230 + 16);
      v317 = *v230;
      v318 = v232;
      v233 = *(v230 + 48);
      v319 = *(v230 + 32);
      v320 = v233;
      v234 = v295;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        sub_1D9EE7F58(&v317);
        goto LABEL_105;
      }

      v235 = v234[3];
      v236 = v234[5];
      v314 = v234[4];
      v315 = v236;
      v237 = v234[1];
      v310 = *v234;
      v311 = v237;
      v238 = v234[3];
      v240 = *v234;
      v239 = v234[1];
      v312 = v234[2];
      v313 = v238;
      v241 = *(v230 + 80);
      v307 = *(v230 + 64);
      v308 = v241;
      v242 = *(v230 + 16);
      v303 = *v230;
      v304 = v242;
      v243 = *(v230 + 48);
      v305 = *(v230 + 32);
      v306 = v243;
      v244 = v234[5];
      v300 = v314;
      v301 = v244;
      v296 = v240;
      v297 = v239;
      v316 = *(v234 + 12);
      v309 = *(v230 + 96);
      v302 = *(v234 + 12);
      v298 = v312;
      v299 = v235;
      v99 = _s29VisualActionPredictionSupport4BookV2eeoiySbAC_ACtFZ_0(&v303, &v296);
      sub_1D9EE7F58(&v310);
      sub_1D9EE7F58(&v317);
LABEL_83:
      v203 = v82;
      goto LABEL_84;
    case 0x14u:
      v176 = v285;
      sub_1D9EFDBAC(v82, v285, type metadata accessor for DetectedEntity);
      v177 = *v176;
      v178 = v176[1];
      v180 = v176[2];
      v179 = v176[3];
      v182 = v176[4];
      v181 = v176[5];
      v183 = v295;
      if (swift_getEnumCaseMultiPayload() != 20)
      {

        goto LABEL_98;
      }

      v184 = *v183;
      *&v294 = v183[1];
      v186 = v183[2];
      v185 = v183[3];
      v292 = v82;
      v293 = v185;
      v187 = v183[4];
      v188 = v183[5];
      if ((v177 != v184 || v178 != v294) && (sub_1D9F2BA1C() & 1) == 0 || (v180 != v186 || v179 != v293) && (sub_1D9F2BA1C() & 1) == 0)
      {

        goto LABEL_121;
      }

      if (v182 == v187 && v181 == v188)
      {

        goto LABEL_120;
      }

      v258 = sub_1D9F2BA1C();

      if ((v258 & 1) == 0)
      {
LABEL_121:
        v256 = v292;
        goto LABEL_124;
      }

LABEL_120:
      v255 = v292;
LABEL_118:
      sub_1D9F008F4(v255, type metadata accessor for DetectedEntity);
      v99 = 1;
      return v99 & 1;
    case 0x15u:
      v190 = v286;
      sub_1D9EFDBAC(v82, v286, type metadata accessor for DetectedEntity);
      v157 = *v190;
      v156 = v190[1];
      v191 = v295;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_98;
      }

      v161 = *v191;
      v160 = v191[1];
      goto LABEL_56;
    case 0x16u:
      v213 = v288;
      sub_1D9EFDBAC(v82, v288, type metadata accessor for DetectedEntity);
      v214 = *(v213 + 8);
      v215 = *(v213 + 24);
      v216 = *(v213 + 48);
      v217 = v295;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        v218 = *(v213 + 40);
        v219 = *(v213 + 32);
        v220 = *(v213 + 16);
        v221 = *v213;
        v222 = v82;
        v223 = *v217;
        v224 = v217[1];
        v225 = v217[2];
        v226 = v217[3];
        v227 = *(v217 + 8);
        v228 = v217[5];
        v229 = v217[6];
        *&v317 = v221;
        *(&v317 + 1) = v214;
        *&v318 = v220;
        *(&v318 + 1) = v215;
        LODWORD(v319) = v219;
        *(&v319 + 1) = v218;
        *&v320 = v216;
        *&v310 = v223;
        *(&v310 + 1) = v224;
        *&v311 = v225;
        *(&v311 + 1) = v226;
        LODWORD(v312) = v227;
        *(&v312 + 1) = v228;
        *&v313 = v229;
        v99 = _s29VisualActionPredictionSupport0A16LookupResultItemV2eeoiySbAC_ACtFZ_0(&v317, &v310);

        v203 = v222;
LABEL_84:
        sub_1D9F008F4(v203, type metadata accessor for DetectedEntity);
      }

      else
      {
LABEL_78:

LABEL_79:

LABEL_98:

LABEL_105:
        sub_1D9E51FE8(v82, &qword_1ECB75C98, &unk_1D9F45278);
        v99 = 0;
      }

      return v99 & 1;
    case 0x17u:
      v245 = v287;
      sub_1D9EFDBAC(v82, v287, type metadata accessor for DetectedEntity);
      v86 = *v245;
      v85 = v245[1];
      v87 = v295;
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        goto LABEL_86;
      }

      goto LABEL_98;
    case 0x18u:
      v129 = v289;
      sub_1D9EFDBAC(v82, v289, type metadata accessor for DetectedEntity);
      v86 = *v129;
      v85 = v129[1];
      v87 = v295;
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        goto LABEL_86;
      }

      goto LABEL_98;
    case 0x19u:
      v128 = v290;
      sub_1D9EFDBAC(v82, v290, type metadata accessor for DetectedEntity);
      v86 = *v128;
      v85 = v128[1];
      v87 = v295;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        goto LABEL_86;
      }

      goto LABEL_98;
    default:
      sub_1D9EFDBAC(v82, v77, type metadata accessor for DetectedEntity);
      v86 = *v77;
      v85 = v77[1];
      v87 = v295;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_98;
      }

LABEL_86:
      v246 = *v87;
      v247 = v87[1];
      if (v86 == v246 && v85 == v247)
      {
        goto LABEL_58;
      }

      v248 = sub_1D9F2BA1C();

      if ((v248 & 1) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_111;
  }
}

uint64_t type metadata accessor for DetectedEntity()
{
  result = qword_1EE0F2DA0;
  if (!qword_1EE0F2DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D9EFD030()
{
  result = qword_1EE0F2F58;
  if (!qword_1EE0F2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F58);
  }

  return result;
}

unint64_t sub_1D9EFD084()
{
  result = qword_1ECB75948;
  if (!qword_1ECB75948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75948);
  }

  return result;
}

unint64_t sub_1D9EFD0D8()
{
  result = qword_1ECB75950;
  if (!qword_1ECB75950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75950);
  }

  return result;
}

unint64_t sub_1D9EFD12C()
{
  result = qword_1ECB75958;
  if (!qword_1ECB75958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75958);
  }

  return result;
}

unint64_t sub_1D9EFD180()
{
  result = qword_1ECB75960;
  if (!qword_1ECB75960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75960);
  }

  return result;
}

unint64_t sub_1D9EFD1D4()
{
  result = qword_1ECB75968;
  if (!qword_1ECB75968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75968);
  }

  return result;
}

unint64_t sub_1D9EFD228()
{
  result = qword_1ECB75970;
  if (!qword_1ECB75970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75970);
  }

  return result;
}

unint64_t sub_1D9EFD27C()
{
  result = qword_1ECB75978;
  if (!qword_1ECB75978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75978);
  }

  return result;
}

unint64_t sub_1D9EFD2D0()
{
  result = qword_1ECB75980;
  if (!qword_1ECB75980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75980);
  }

  return result;
}

unint64_t sub_1D9EFD324()
{
  result = qword_1ECB75988;
  if (!qword_1ECB75988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75988);
  }

  return result;
}

unint64_t sub_1D9EFD378()
{
  result = qword_1ECB75990;
  if (!qword_1ECB75990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75990);
  }

  return result;
}

unint64_t sub_1D9EFD3CC()
{
  result = qword_1ECB75998;
  if (!qword_1ECB75998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75998);
  }

  return result;
}

unint64_t sub_1D9EFD420()
{
  result = qword_1ECB759A0;
  if (!qword_1ECB759A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB759A0);
  }

  return result;
}

unint64_t sub_1D9EFD474()
{
  result = qword_1ECB759A8;
  if (!qword_1ECB759A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB759A8);
  }

  return result;
}

unint64_t sub_1D9EFD4C8()
{
  result = qword_1ECB759B0;
  if (!qword_1ECB759B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB759B0);
  }

  return result;
}

unint64_t sub_1D9EFD51C()
{
  result = qword_1ECB759B8;
  if (!qword_1ECB759B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB759B8);
  }

  return result;
}

unint64_t sub_1D9EFD570()
{
  result = qword_1ECB759C0;
  if (!qword_1ECB759C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB759C0);
  }

  return result;
}

unint64_t sub_1D9EFD5C4()
{
  result = qword_1ECB759D0;
  if (!qword_1ECB759D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB759D0);
  }

  return result;
}

unint64_t sub_1D9EFD618()
{
  result = qword_1ECB759E0;
  if (!qword_1ECB759E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB759E0);
  }

  return result;
}

unint64_t sub_1D9EFD66C()
{
  result = qword_1ECB759E8;
  if (!qword_1ECB759E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB759E8);
  }

  return result;
}

unint64_t sub_1D9EFD6C0()
{
  result = qword_1ECB759F0;
  if (!qword_1ECB759F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB759F0);
  }

  return result;
}

unint64_t sub_1D9EFD714()
{
  result = qword_1ECB759F8;
  if (!qword_1ECB759F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB759F8);
  }

  return result;
}

unint64_t sub_1D9EFD768()
{
  result = qword_1ECB75A00;
  if (!qword_1ECB75A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A00);
  }

  return result;
}

unint64_t sub_1D9EFD7BC()
{
  result = qword_1ECB75A08;
  if (!qword_1ECB75A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A08);
  }

  return result;
}

unint64_t sub_1D9EFD810()
{
  result = qword_1ECB75A10;
  if (!qword_1ECB75A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A10);
  }

  return result;
}

unint64_t sub_1D9EFD864()
{
  result = qword_1ECB75A18;
  if (!qword_1ECB75A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A18);
  }

  return result;
}

unint64_t sub_1D9EFD8B8()
{
  result = qword_1ECB75A20;
  if (!qword_1ECB75A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A20);
  }

  return result;
}

unint64_t sub_1D9EFD90C()
{
  result = qword_1ECB75A28;
  if (!qword_1ECB75A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A28);
  }

  return result;
}

unint64_t sub_1D9EFD960()
{
  result = qword_1ECB75A30;
  if (!qword_1ECB75A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A30);
  }

  return result;
}

unint64_t sub_1D9EFD9B4()
{
  result = qword_1ECB75A38;
  if (!qword_1ECB75A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A38);
  }

  return result;
}

unint64_t sub_1D9EFDA08()
{
  result = qword_1ECB75A40;
  if (!qword_1ECB75A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A40);
  }

  return result;
}

unint64_t sub_1D9EFDA5C()
{
  result = qword_1ECB75A48;
  if (!qword_1ECB75A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A48);
  }

  return result;
}

unint64_t sub_1D9EFDAB0()
{
  result = qword_1ECB75A50;
  if (!qword_1ECB75A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A50);
  }

  return result;
}

unint64_t sub_1D9EFDB04()
{
  result = qword_1ECB75A60;
  if (!qword_1ECB75A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75A60);
  }

  return result;
}

unint64_t sub_1D9EFDB58()
{
  result = qword_1EE0F2F00;
  if (!qword_1EE0F2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F00);
  }

  return result;
}

uint64_t sub_1D9EFDBAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9EFDC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9EFDC7C()
{
  result = qword_1ECB75B48;
  if (!qword_1ECB75B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75B48);
  }

  return result;
}

unint64_t sub_1D9EFDCD0()
{
  result = qword_1ECB75B50;
  if (!qword_1ECB75B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75B50);
  }

  return result;
}

unint64_t sub_1D9EFDD24()
{
  result = qword_1ECB75B58;
  if (!qword_1ECB75B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75B58);
  }

  return result;
}

unint64_t sub_1D9EFDD78()
{
  result = qword_1ECB75B60;
  if (!qword_1ECB75B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75B60);
  }

  return result;
}

unint64_t sub_1D9EFDDCC()
{
  result = qword_1ECB75B78;
  if (!qword_1ECB75B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75B78);
  }

  return result;
}

unint64_t sub_1D9EFDE20()
{
  result = qword_1ECB75B80;
  if (!qword_1ECB75B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75B80);
  }

  return result;
}

unint64_t sub_1D9EFDE74()
{
  result = qword_1ECB75B88;
  if (!qword_1ECB75B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75B88);
  }

  return result;
}

unint64_t sub_1D9EFDEC8()
{
  result = qword_1ECB75B90;
  if (!qword_1ECB75B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75B90);
  }

  return result;
}

uint64_t sub_1D9EFDF64(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D9EFDFAC()
{
  sub_1D9F2AD0C();
  if (v0 <= 0x3F)
  {
    sub_1D9F2AACC();
    if (v1 <= 0x3F)
    {
      sub_1D9F2AC4C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for DateTimeSchedule();
        if (v3 <= 0x3F)
        {
          sub_1D9EFE164(319, &qword_1EE0F2C70);
          if (v4 <= 0x3F)
          {
            sub_1D9EFE164(319, qword_1EE0F2C80);
            if (v5 <= 0x3F)
            {
              sub_1D9EFE164(319, &qword_1EE0F2C78);
              if (v6 <= 0x3F)
              {
                type metadata accessor for CalendarEvent();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for Contact(319);
                  if (v8 <= 0x3F)
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
}

void sub_1D9EFE164(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for LabeledContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1D9EFE364()
{
  result = qword_1ECB75BA8;
  if (!qword_1ECB75BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75BA8);
  }

  return result;
}

unint64_t sub_1D9EFE3BC()
{
  result = qword_1ECB75BB0;
  if (!qword_1ECB75BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75BB0);
  }

  return result;
}

unint64_t sub_1D9EFE414()
{
  result = qword_1ECB75BB8;
  if (!qword_1ECB75BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75BB8);
  }

  return result;
}

unint64_t sub_1D9EFE46C()
{
  result = qword_1ECB75BC0;
  if (!qword_1ECB75BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75BC0);
  }

  return result;
}

unint64_t sub_1D9EFE4C4()
{
  result = qword_1ECB75BC8;
  if (!qword_1ECB75BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75BC8);
  }

  return result;
}

unint64_t sub_1D9EFE51C()
{
  result = qword_1ECB75BD0;
  if (!qword_1ECB75BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75BD0);
  }

  return result;
}

unint64_t sub_1D9EFE574()
{
  result = qword_1ECB75BD8;
  if (!qword_1ECB75BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75BD8);
  }

  return result;
}

unint64_t sub_1D9EFE5CC()
{
  result = qword_1ECB75BE0;
  if (!qword_1ECB75BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75BE0);
  }

  return result;
}

unint64_t sub_1D9EFE624()
{
  result = qword_1ECB75BE8;
  if (!qword_1ECB75BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75BE8);
  }

  return result;
}

unint64_t sub_1D9EFE67C()
{
  result = qword_1ECB75BF0;
  if (!qword_1ECB75BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75BF0);
  }

  return result;
}

unint64_t sub_1D9EFE6D4()
{
  result = qword_1ECB75BF8;
  if (!qword_1ECB75BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75BF8);
  }

  return result;
}

unint64_t sub_1D9EFE72C()
{
  result = qword_1ECB75C00;
  if (!qword_1ECB75C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C00);
  }

  return result;
}

unint64_t sub_1D9EFE784()
{
  result = qword_1ECB75C08;
  if (!qword_1ECB75C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C08);
  }

  return result;
}

unint64_t sub_1D9EFE7DC()
{
  result = qword_1ECB75C10;
  if (!qword_1ECB75C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C10);
  }

  return result;
}

unint64_t sub_1D9EFE834()
{
  result = qword_1ECB75C18;
  if (!qword_1ECB75C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C18);
  }

  return result;
}

unint64_t sub_1D9EFE88C()
{
  result = qword_1ECB75C20;
  if (!qword_1ECB75C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C20);
  }

  return result;
}

unint64_t sub_1D9EFE8E4()
{
  result = qword_1ECB75C28;
  if (!qword_1ECB75C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C28);
  }

  return result;
}

unint64_t sub_1D9EFE93C()
{
  result = qword_1ECB75C30;
  if (!qword_1ECB75C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C30);
  }

  return result;
}

unint64_t sub_1D9EFE994()
{
  result = qword_1ECB75C38;
  if (!qword_1ECB75C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C38);
  }

  return result;
}

unint64_t sub_1D9EFE9EC()
{
  result = qword_1ECB75C40;
  if (!qword_1ECB75C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C40);
  }

  return result;
}

unint64_t sub_1D9EFEA44()
{
  result = qword_1ECB75C48;
  if (!qword_1ECB75C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C48);
  }

  return result;
}

unint64_t sub_1D9EFEA9C()
{
  result = qword_1ECB75C50;
  if (!qword_1ECB75C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C50);
  }

  return result;
}

unint64_t sub_1D9EFEAF4()
{
  result = qword_1ECB75C58;
  if (!qword_1ECB75C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C58);
  }

  return result;
}

unint64_t sub_1D9EFEB4C()
{
  result = qword_1ECB75C60;
  if (!qword_1ECB75C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C60);
  }

  return result;
}

unint64_t sub_1D9EFEBA4()
{
  result = qword_1ECB75C68;
  if (!qword_1ECB75C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C68);
  }

  return result;
}

unint64_t sub_1D9EFEBFC()
{
  result = qword_1ECB75C70;
  if (!qword_1ECB75C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C70);
  }

  return result;
}

unint64_t sub_1D9EFEC54()
{
  result = qword_1ECB75C78;
  if (!qword_1ECB75C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75C78);
  }

  return result;
}

unint64_t sub_1D9EFECAC()
{
  result = qword_1EE0F2EF0;
  if (!qword_1EE0F2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2EF0);
  }

  return result;
}

unint64_t sub_1D9EFED04()
{
  result = qword_1EE0F2EF8;
  if (!qword_1EE0F2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2EF8);
  }

  return result;
}

unint64_t sub_1D9EFED5C()
{
  result = qword_1EE0F2F18;
  if (!qword_1EE0F2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F18);
  }

  return result;
}

unint64_t sub_1D9EFEDB4()
{
  result = qword_1EE0F2F20;
  if (!qword_1EE0F2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F20);
  }

  return result;
}

unint64_t sub_1D9EFEE0C()
{
  result = qword_1EE0F2E10;
  if (!qword_1EE0F2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E10);
  }

  return result;
}

unint64_t sub_1D9EFEE64()
{
  result = qword_1EE0F2E18;
  if (!qword_1EE0F2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E18);
  }

  return result;
}

unint64_t sub_1D9EFEEBC()
{
  result = qword_1EE0F2F38;
  if (!qword_1EE0F2F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F38);
  }

  return result;
}

unint64_t sub_1D9EFEF14()
{
  result = qword_1EE0F2F40;
  if (!qword_1EE0F2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F40);
  }

  return result;
}

unint64_t sub_1D9EFEF6C()
{
  result = qword_1EE0F2E20;
  if (!qword_1EE0F2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E20);
  }

  return result;
}

unint64_t sub_1D9EFEFC4()
{
  result = qword_1EE0F2E28;
  if (!qword_1EE0F2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E28);
  }

  return result;
}

unint64_t sub_1D9EFF01C()
{
  result = qword_1EE0F2DE0;
  if (!qword_1EE0F2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2DE0);
  }

  return result;
}

unint64_t sub_1D9EFF074()
{
  result = qword_1EE0F2DE8;
  if (!qword_1EE0F2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2DE8);
  }

  return result;
}

unint64_t sub_1D9EFF0CC()
{
  result = qword_1EE0F2E70;
  if (!qword_1EE0F2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E70);
  }

  return result;
}

unint64_t sub_1D9EFF124()
{
  result = qword_1EE0F2E78;
  if (!qword_1EE0F2E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E78);
  }

  return result;
}

unint64_t sub_1D9EFF17C()
{
  result = qword_1EE0F2E50;
  if (!qword_1EE0F2E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E50);
  }

  return result;
}

unint64_t sub_1D9EFF1D4()
{
  result = qword_1EE0F2E58;
  if (!qword_1EE0F2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E58);
  }

  return result;
}

unint64_t sub_1D9EFF22C()
{
  result = qword_1EE0F2DB0;
  if (!qword_1EE0F2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2DB0);
  }

  return result;
}

unint64_t sub_1D9EFF284()
{
  result = qword_1EE0F2DB8;
  if (!qword_1EE0F2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2DB8);
  }

  return result;
}

unint64_t sub_1D9EFF2DC()
{
  result = qword_1EE0F2E80;
  if (!qword_1EE0F2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E80);
  }

  return result;
}

unint64_t sub_1D9EFF334()
{
  result = qword_1EE0F2E88;
  if (!qword_1EE0F2E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E88);
  }

  return result;
}

unint64_t sub_1D9EFF38C()
{
  result = qword_1EE0F2EA0;
  if (!qword_1EE0F2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2EA0);
  }

  return result;
}

unint64_t sub_1D9EFF3E4()
{
  result = qword_1EE0F2EA8;
  if (!qword_1EE0F2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2EA8);
  }

  return result;
}

unint64_t sub_1D9EFF43C()
{
  result = qword_1EE0F2E40;
  if (!qword_1EE0F2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E40);
  }

  return result;
}

unint64_t sub_1D9EFF494()
{
  result = qword_1EE0F2E48;
  if (!qword_1EE0F2E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E48);
  }

  return result;
}

unint64_t sub_1D9EFF4EC()
{
  result = qword_1EE0F2E30;
  if (!qword_1EE0F2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E30);
  }

  return result;
}

unint64_t sub_1D9EFF544()
{
  result = qword_1EE0F2E38;
  if (!qword_1EE0F2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E38);
  }

  return result;
}

unint64_t sub_1D9EFF59C()
{
  result = qword_1EE0F2E60;
  if (!qword_1EE0F2E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E60);
  }

  return result;
}

unint64_t sub_1D9EFF5F4()
{
  result = qword_1EE0F2E68;
  if (!qword_1EE0F2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E68);
  }

  return result;
}

unint64_t sub_1D9EFF64C()
{
  result = qword_1EE0F2EC0;
  if (!qword_1EE0F2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2EC0);
  }

  return result;
}

unint64_t sub_1D9EFF6A4()
{
  result = qword_1EE0F2EC8;
  if (!qword_1EE0F2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2EC8);
  }

  return result;
}

unint64_t sub_1D9EFF6FC()
{
  result = qword_1EE0F2E00;
  if (!qword_1EE0F2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E00);
  }

  return result;
}

unint64_t sub_1D9EFF754()
{
  result = qword_1EE0F2E08;
  if (!qword_1EE0F2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E08);
  }

  return result;
}

unint64_t sub_1D9EFF7AC()
{
  result = qword_1EE0F2F08;
  if (!qword_1EE0F2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F08);
  }

  return result;
}

unint64_t sub_1D9EFF804()
{
  result = qword_1EE0F2F10;
  if (!qword_1EE0F2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F10);
  }

  return result;
}

unint64_t sub_1D9EFF85C()
{
  result = qword_1EE0F2DF0;
  if (!qword_1EE0F2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2DF0);
  }

  return result;
}

unint64_t sub_1D9EFF8B4()
{
  result = qword_1EE0F2DF8;
  if (!qword_1EE0F2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2DF8);
  }

  return result;
}

unint64_t sub_1D9EFF90C()
{
  result = qword_1EE0F2E90;
  if (!qword_1EE0F2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E90);
  }

  return result;
}

unint64_t sub_1D9EFF964()
{
  result = qword_1EE0F2E98;
  if (!qword_1EE0F2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2E98);
  }

  return result;
}

unint64_t sub_1D9EFF9BC()
{
  result = qword_1EE0F2F28;
  if (!qword_1EE0F2F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F28);
  }

  return result;
}

unint64_t sub_1D9EFFA14()
{
  result = qword_1EE0F2F30;
  if (!qword_1EE0F2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F30);
  }

  return result;
}

unint64_t sub_1D9EFFA6C()
{
  result = qword_1EE0F2EE0;
  if (!qword_1EE0F2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2EE0);
  }

  return result;
}

unint64_t sub_1D9EFFAC4()
{
  result = qword_1EE0F2EE8;
  if (!qword_1EE0F2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2EE8);
  }

  return result;
}

unint64_t sub_1D9EFFB1C()
{
  result = qword_1EE0F2EB0;
  if (!qword_1EE0F2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2EB0);
  }

  return result;
}

unint64_t sub_1D9EFFB74()
{
  result = qword_1EE0F2EB8;
  if (!qword_1EE0F2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2EB8);
  }

  return result;
}

unint64_t sub_1D9EFFBCC()
{
  result = qword_1EE0F2F60;
  if (!qword_1EE0F2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F60);
  }

  return result;
}

unint64_t sub_1D9EFFC24()
{
  result = qword_1EE0F2F68;
  if (!qword_1EE0F2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F68);
  }

  return result;
}

unint64_t sub_1D9EFFC7C()
{
  result = qword_1EE0F2ED0;
  if (!qword_1EE0F2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2ED0);
  }

  return result;
}

unint64_t sub_1D9EFFCD4()
{
  result = qword_1EE0F2ED8;
  if (!qword_1EE0F2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2ED8);
  }

  return result;
}

unint64_t sub_1D9EFFD2C()
{
  result = qword_1EE0F2DC0;
  if (!qword_1EE0F2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2DC0);
  }

  return result;
}

unint64_t sub_1D9EFFD84()
{
  result = qword_1EE0F2DC8;
  if (!qword_1EE0F2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2DC8);
  }

  return result;
}

unint64_t sub_1D9EFFDDC()
{
  result = qword_1EE0F2DD0;
  if (!qword_1EE0F2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2DD0);
  }

  return result;
}

unint64_t sub_1D9EFFE34()
{
  result = qword_1EE0F2DD8;
  if (!qword_1EE0F2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2DD8);
  }

  return result;
}

unint64_t sub_1D9EFFE8C()
{
  result = qword_1EE0F2F48;
  if (!qword_1EE0F2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F48);
  }

  return result;
}

unint64_t sub_1D9EFFEE4()
{
  result = qword_1EE0F2F50;
  if (!qword_1EE0F2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F50);
  }

  return result;
}

uint64_t sub_1D9EFFF38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F4365746164 && a2 == 0xEE0073746E656E6FLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEE00746E756F6D41 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F49BE0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754E746867696C66 && a2 == 0xEC0000007265626DLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C61636973796870 && a2 == 0xED000065756C6156 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D9F49C00 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x64416C6174736F70 && a2 == 0xED00007373657264 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x72506C6169636F73 && a2 == 0xED0000656C69666FLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xED0000746E657645 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEE006E6F69746163 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 1953720684 && a2 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4C676E696B726170 && a2 == 0xEF6E6F697461636FLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEB000000006E6F69 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 1802465122 && a2 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D9F49C20 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x65646F43707061 && a2 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9F49C40 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F49C60 == a2)
  {

    return 25;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

uint64_t objectdestroy_162Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_165Tm(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[5];

  v5 = v1[7];

  v6 = v1[9];

  v7 = v1[11];

  v8 = v1[13];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1D9F0084C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_168Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9F008F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9F00954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_1D9F2B60C();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    *a2 = 0;
    v7 = 0uLL;
  }

  else
  {
    result = sub_1D9F1BAD4(result, *(a1 + 36), a1, v8);
    v7 = v9;
    v6 = v10;
    *a2 = v8[0];
  }

  *(a2 + 8) = v7;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1D9F009E8(uint64_t a1)
{
  v2 = type metadata accessor for DetectedEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D9E947CC(0, v7, 0);
    v8 = v15;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1D9F1BEE0(v9, v6, type metadata accessor for DetectedEntity);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB743F8, &unk_1D9F454E0);
      swift_dynamicCast();
      v15 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D9E947CC((v11 > 1), v12 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v12 + 1;
      sub_1D9E3EE4C(v14, v8 + 40 * v12 + 32);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1D9F00B98(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1D9F2BA1C() & 1) != 0)
  {
    v9 = v4 == v6 && v5 == v7;
    if (v9 || (sub_1D9F2BA1C() & 1) != 0)
    {
      v10 = a1[5];
      v11 = a2[5];
      if (v10)
      {
        if (v11 && (a1[4] == a2[4] && v10 == v11 || (sub_1D9F2BA1C() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v11)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D9F00C64(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v4;
  v5 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v5;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  if (_s29VisualActionPredictionSupport13PostalAddressV2eeoiySbAC_ACtFZ_0(v14, v13))
  {
    v10 = *(a1 + 88);
    v11 = *(a2 + 88);
    if (v10)
    {
      if (v11 && (*(a1 + 80) == *(a2 + 80) && v10 == v11 || (sub_1D9F2BA1C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D9F00D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1D9F2BA1C(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (sub_1D9F2BA1C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t VisualContext.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9F2AD7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for VisualContext()
{
  result = qword_1EE0F3400;
  if (!qword_1EE0F3400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VisualContext.clientContextID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VisualContext() + 20);

  return sub_1D9F00EF8(a1, v3);
}

uint64_t sub_1D9F00EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VisualContext.workflow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualContext();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t VisualContext.workflow.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VisualContext();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t VisualContext.builtInActionIdentities.getter()
{
  v1 = *(v0 + *(type metadata accessor for VisualContext() + 28));
}

uint64_t VisualContext.builtInActionIdentities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualContext() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t VisualContext.classifications.getter()
{
  v1 = *(v0 + *(type metadata accessor for VisualContext() + 32));
}

uint64_t VisualContext.classifications.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualContext() + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t VisualContext.init(id:clientContextID:classifications:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v12 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v12, qword_1EE0F1240);
  v13 = sub_1D9F2AE6C();
  v14 = sub_1D9F2B43C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D9E39000, v13, v14, "VisualContext.init(id:clientContextID:classifications:) is soft deprecated. Use init(id:clientContextID:builtInActionIdentities:classifications:) instead.", v15, 2u);
    MEMORY[0x1DA744270](v15, -1, -1);
  }

  v16 = sub_1D9F2AD7C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a4, a1, v16);
  sub_1D9E68C38(a2, v11, &qword_1ECB76010, &unk_1D9F3A9C0);
  (*(v17 + 8))(a1, v16);
  v18 = type metadata accessor for VisualContext();
  v19 = v18[5];
  (*(v17 + 56))(a4 + v19, 1, 1, v16);
  *(a4 + v18[6]) = 3;
  result = sub_1D9F00EF8(v11, a4 + v19);
  *(a4 + v18[7]) = MEMORY[0x1E69E7CC0];
  *(a4 + v18[8]) = a3;
  return result;
}

uint64_t VisualContext.init(id:clientContextID:builtInActionIdentities:classifications:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for VisualContext();
  v11 = v10[5];
  v12 = sub_1D9F2AD7C();
  v13 = *(v12 - 8);
  (*(v13 + 56))(a5 + v11, 1, 1, v12);
  *(a5 + v10[6]) = 3;
  (*(v13 + 32))(a5, a1, v12);
  result = sub_1D9F00EF8(a2, a5 + v11);
  *(a5 + v10[7]) = a3;
  *(a5 + v10[8]) = a4;
  return result;
}

uint64_t VisualContext.init(id:clientContextID:workflow:classifications:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v12 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v12, qword_1EE0F1240);
  v13 = sub_1D9F2AE6C();
  v14 = sub_1D9F2B43C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D9E39000, v13, v14, "VisualContext.init(id:clientContextID:workflow:classifications:) is soft deprecated. Use init(id:clientContextID:builtInActionIdentities:classifications:) instead.", v15, 2u);
    MEMORY[0x1DA744270](v15, -1, -1);
  }

  v16 = sub_1D9F2AD7C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a4, a1, v16);
  sub_1D9E68C38(a2, v11, &qword_1ECB76010, &unk_1D9F3A9C0);
  (*(v17 + 8))(a1, v16);
  v18 = type metadata accessor for VisualContext();
  v19 = v18[5];
  (*(v17 + 56))(a4 + v19, 1, 1, v16);
  *(a4 + v18[6]) = 3;
  result = sub_1D9F00EF8(v11, a4 + v19);
  *(a4 + v18[7]) = MEMORY[0x1E69E7CC0];
  *(a4 + v18[8]) = a3;
  return result;
}

uint64_t VisualContext.init(id:clientContextID:workflow:builtInActionIdentities:classifications:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v10 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v10, qword_1EE0F1240);
  v11 = sub_1D9F2AE6C();
  v12 = sub_1D9F2B43C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D9E39000, v11, v12, "VisualContext.init(id:clientContextID:workflow:builtInActionIdentities:classifications:) is soft deprecated. Use init(id:clientContextID:builtInActionIdentities:classifications:) instead.", v13, 2u);
    MEMORY[0x1DA744270](v13, -1, -1);
  }

  v14 = type metadata accessor for VisualContext();
  v15 = v14[5];
  v16 = sub_1D9F2AD7C();
  v17 = *(v16 - 8);
  (*(v17 + 56))(a5 + v15, 1, 1, v16);
  *(a5 + v14[6]) = 3;
  (*(v17 + 32))(a5, a1, v16);
  result = sub_1D9F00EF8(a2, a5 + v15);
  *(a5 + v14[7]) = a3;
  *(a5 + v14[8]) = a4;
  return result;
}

uint64_t sub_1D9F01918()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x776F6C666B726F77;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x6966697373616C63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43746E65696C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9F019C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9F1BB6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9F019EC(uint64_t a1)
{
  v2 = sub_1D9F0BFE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F01A28(uint64_t a1)
{
  v2 = sub_1D9F0BFE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CA0, &qword_1D9F45288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F0BFE8();
  sub_1D9F2BB8C();
  LOBYTE(v15) = 0;
  sub_1D9F2AD7C();
  sub_1D9F1C010(&qword_1EE0F3868, MEMORY[0x1E69695A8]);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v11 = type metadata accessor for VisualContext();
    v12 = v11[5];
    LOBYTE(v15) = 1;
    sub_1D9F2B94C();
    LOBYTE(v15) = *(v3 + v11[6]);
    v16 = 2;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
    v15 = *(v3 + v11[7]);
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CA8, &qword_1D9F45290);
    sub_1D9F0C0D8(&qword_1EE0F1190, sub_1D9E5A8BC);
    sub_1D9F2B9AC();
    v15 = *(v3 + v11[8]);
    v16 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CB0, &qword_1D9F45298);
    sub_1D9F0C03C(&qword_1EE0F1170, &qword_1EE0F21A8);
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t VisualContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v32 - v5;
  v6 = sub_1D9F2AD7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CB8, &qword_1D9F452A0);
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = type metadata accessor for VisualContext();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 20);
  v37 = v7;
  v20 = *(v7 + 56);
  v39 = v6;
  v20(&v18[v19], 1, 1, v6);
  v21 = *(v14 + 24);
  v18[v21] = 3;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F0BFE8();
  v43 = v13;
  v23 = v44;
  sub_1D9F2BB7C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D9E51FE8(&v18[v19], &qword_1ECB76010, &unk_1D9F3A9C0);
  }

  else
  {
    v33 = v21;
    v34 = v14;
    v24 = v37;
    v25 = v38;
    v35 = v18;
    v44 = v19;
    LOBYTE(v45) = 0;
    sub_1D9F1C010(&qword_1EE0F3860, MEMORY[0x1E69695A8]);
    v26 = v39;
    sub_1D9F2B89C();
    v27 = v35;
    (*(v24 + 32))(v35, v42, v26);
    LOBYTE(v45) = 1;
    sub_1D9F2B83C();
    sub_1D9F00EF8(v25, v27 + v44);
    v46 = 2;
    sub_1D9E57BE8();
    sub_1D9F2B89C();
    v28 = a1;
    *(v27 + v33) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CA8, &qword_1D9F45290);
    v46 = 3;
    sub_1D9F0C0D8(&qword_1EE0F1188, sub_1D9E5AB24);
    sub_1D9F2B89C();
    v29 = v34;
    v30 = v40;
    *(v27 + *(v34 + 28)) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CB0, &qword_1D9F45298);
    v46 = 4;
    sub_1D9F0C03C(&qword_1EE0F1168, &qword_1EE0F21A0);
    sub_1D9F2B89C();
    (*(v30 + 8))(v43, v41);
    *(v27 + *(v29 + 32)) = v45;
    sub_1D9F1BEE0(v27, v36, type metadata accessor for VisualContext);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return sub_1D9F1BF48(v27, type metadata accessor for VisualContext);
  }
}

double VisualContext.groundingData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = 0;
  v4 = *(v1 + *(type metadata accessor for VisualContext() + 32));
  v5 = *(v4 + 16);
  while (v5 != v3)
  {
    v6 = type metadata accessor for VisualClassification();
    v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v3++;
    v8 = v7 + *(v6 + 24);
    v9 = *(v8 + 80);
    if (v9 <= 0x1F)
    {
      v11 = *(v8 + 64);
      v10 = *(v8 + 72);
      v13 = *(v8 + 48);
      v12 = *(v8 + 56);
      v15 = *(v8 + 32);
      v14 = *(v8 + 40);
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      v20 = v8;
      v19 = *v8;
      v18 = *(v20 + 8);
      *a1 = v19;
      *(a1 + 8) = v18;
      *(a1 + 16) = v17;
      *(a1 + 24) = v16;
      *(a1 + 32) = v15;
      *(a1 + 40) = v14;
      *(a1 + 48) = v13;
      *(a1 + 56) = v12;
      *(a1 + 64) = v11;
      *(a1 + 72) = v10;
      *(a1 + 80) = v9;
      v23[0] = v19;
      v23[1] = v18;
      v23[2] = v17;
      v23[3] = v16;
      v23[4] = v15;
      v23[5] = v14;
      v23[6] = v13;
      v23[7] = v12;
      v23[8] = v11;
      v23[9] = v10;
      v24 = v9;
      sub_1D9EE9A80(v23, &v22);
      return result;
    }
  }

  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void VisualContext.category.getter(_BYTE *a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for VisualClassification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *(v1 + *(type metadata accessor for VisualContext() + 32));
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = 0;
  v10 = &v6[*(v2 + 24)];
  v11 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  v13 = v8 - 1;
  while (1)
  {
    sub_1D9F1BEE0(v11, v6, type metadata accessor for VisualClassification);
    v14 = *(v10 + 2);
    v15 = *(v10 + 4);
    v36 = *(v10 + 3);
    v37 = v15;
    v38 = v10[80];
    v16 = *(v10 + 1);
    v33 = *v10;
    v34 = v16;
    v35 = v14;
    sub_1D9E8A2F0(&v33, v32);
    sub_1D9F1BF48(v6, type metadata accessor for VisualClassification);
    if ((v38 & 0xE0) == 0xA0 && BYTE8(v34) == 1)
    {
      break;
    }

    sub_1D9E87D78(&v33);
    if (v13 == v9)
    {
      goto LABEL_9;
    }

    ++v9;
    v11 += v12;
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      break;
    }
  }

  v17 = v33;
  sub_1D9E87D78(&v33);
  if (v17 != 34)
  {
LABEL_19:
    *v31 = v17;
  }

  else
  {
LABEL_9:
    v18 = 0;
    while (*(v7 + 16) != v18)
    {
      v19 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18++;
      v20 = v19 + *(v2 + 24);
      if (*(v20 + 80) <= 0x1Fu)
      {
        v21 = *(v20 + 16);
        if (v21[2])
        {
          v23 = v21[4];
          v22 = v21[5];
          swift_bridgeObjectRetain_n();
          v24.value._countAndFlagsBits = v23;
          v24.value._object = v22;
          VisualContentCategory.init(category:)(v24);
          LOBYTE(v17) = v33;
          if (v33 != 34)
          {

            goto LABEL_19;
          }

          if (qword_1EE0F12C8 != -1)
          {
            swift_once();
          }

          v25 = sub_1D9F2AE8C();
          __swift_project_value_buffer(v25, qword_1EE0F12D0);

          v26 = sub_1D9F2AE6C();
          v27 = sub_1D9F2B43C();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *&v33 = v29;
            *v28 = 136315138;
            v30 = sub_1D9E71CA4(v23, v22, &v33);

            *(v28 + 4) = v30;
            _os_log_impl(&dword_1D9E39000, v26, v27, "Unknown grounding category: %s", v28, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v29);
            MEMORY[0x1DA744270](v29, -1, -1);
            MEMORY[0x1DA744270](v28, -1, -1);
          }

          else
          {
          }
        }

        break;
      }
    }

    *v31 = 34;
  }
}

uint64_t VisualContext.verticalIntegrationContentClassification.getter@<X0>(void *a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for VisualClassification();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for VisualContext();
  v28 = *(v1 + *(result + 32));
  v25 = *(v28 + 16);
  if (v25)
  {
    v6 = 0;
    v7 = v26 + *(v2 + 24);
    v24 = v28 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    while (v6 < *(v28 + 16))
    {
      v8 = v26;
      sub_1D9F1BEE0(v24 + *(v27 + 72) * v6, v26, type metadata accessor for VisualClassification);
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      v15 = *(v7 + 48);
      v14 = *(v7 + 56);
      v16 = *(v7 + 64);
      v17 = *(v7 + 72);
      v18 = *(v7 + 80);
      v30 = *v7;
      v31 = v10;
      v32 = v9;
      v29 = v14;
      sub_1D9F0CC18(v30, v9, v10, v11, v12, v13, v15, v14, v16, v17, v18);
      result = sub_1D9F1BF48(v8, type metadata accessor for VisualClassification);
      if ((v18 & 0xE0) == 0xA0 && v11 == 1)
      {
        v19 = v23;
        v20 = v31;
        v21 = v32;
        *v23 = v30;
        v19[1] = v21;
        v19[2] = v20;
        return result;
      }

      ++v6;
      result = sub_1D9F0CD2C(v30, v32, v31, v11, v12, v13, v15, v29, v16, v17, v18);
      if (v25 == v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v22 = v23;
    *v23 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

  return result;
}

char *VisualContext.labels.getter()
{
  v1 = *(v0 + *(type metadata accessor for VisualContext() + 32));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = type metadata accessor for VisualClassification();
  v4 = v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  v5 = *(*(v3 - 8) + 72);
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v4 + *(v3 + 24);
    v8 = *(v7 + 16);
    v22[0] = *v7;
    v9 = *(v7 + 80);
    v10 = *(v7 + 64);
    v11 = *(v7 + 32);
    v22[3] = *(v7 + 48);
    v22[4] = v10;
    v23 = v9;
    v22[1] = v8;
    v22[2] = v11;
    if (v9 <= 0x1F)
    {
      break;
    }

    v4 += v5;
    --v2;
  }

  while (v2);
  if ((v9 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = v22[0];
  sub_1D9E8A2F0(v22, v21);

  v13 = sub_1D9F0C9D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = *(v13 + 2);
  v15 = *(v13 + 3);
  v16 = v14 + 1;
  if (v14 >= v15 >> 1)
  {
    v19 = *(v13 + 2);
    v20 = v14 + 1;
    v13 = sub_1D9F0C9D8((v15 > 1), v16, 1, v13);
    v14 = v19;
    v16 = v20;
  }

  *(v13 + 2) = v16;
  *&v13[16 * v14 + 32] = v12;
  v17 = v13;
  sub_1D9E87D78(v22);
  return v17;
}

uint64_t VisualContext.textList.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74420, &unk_1D9F386E0);
  v2 = *(v52 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73898, &qword_1D9F32250);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for DetectedEntity();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v64 = MEMORY[0x1E69E7CD0];
  v62 = type metadata accessor for VisualContext();
  v63 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v60, v59);
  v53[2] = sub_1D9F0A4FC;
  v53[3] = 0;
  v53[4] = &v64;
  v54 = 0;
  sub_1D9EE14D0(v59, v56);
  v22 = v57;
  v21 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  (*(v21 + 24))(v22, v21);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D9E51FE8(v11, &qword_1ECB75CC0, &qword_1D9F452A8);
    v23 = v57;
    v24 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    sub_1D9EE12AC(sub_1D9F0CE3C, v53, v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v26 = v50;
    v25 = v51;
  }

  else
  {
    sub_1D9F1BFA8(v11, v19, type metadata accessor for DetectedEntity);
    sub_1D9F1BEE0(v19, v17, type metadata accessor for DetectedEntity);
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1D9F0CEA4(&v55, *v17, v17[1], v17[2], v17[3]);
    }

    else
    {
      sub_1D9F1BF48(v17, type metadata accessor for DetectedEntity);
    }

    sub_1D9F1BF48(v19, type metadata accessor for DetectedEntity);
    v26 = v50;
    v25 = v51;
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  __swift_destroy_boxed_opaque_existential_1(v59);
  sub_1D9F00954(v64, &v60);

  v27 = v62;
  if (v62)
  {
    v28 = v60;
    v29 = v61;
    v30 = sub_1D9F2ABDC();
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74868, &unk_1D9F3A9D0);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74870, &qword_1D9F452B0) - 8);
    v32 = *(v31 + 72);
    v47 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1D9F2F8F0;
    v33 = *(v27 + 16);
    if (v33)
    {
      v43 = v29;
      v44 = *(&v28 + 1);
      v45 = v28;
      v56[0] = MEMORY[0x1E69E7CC0];
      sub_1D9E9484C(0, v33, 0);
      v34 = v56[0];
      sub_1D9EAA024();
      v46 = v27;
      v35 = (v27 + 40);
      v36 = v49;
      do
      {
        v37 = *v35;
        *&v60 = *(v35 - 1);
        *(&v60 + 1) = v37;

        sub_1D9F2A95C();
        v56[0] = v34;
        v39 = *(v34 + 16);
        v38 = *(v34 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1D9E9484C(v38 > 1, v39 + 1, 1);
          v34 = v56[0];
        }

        *(v34 + 16) = v39 + 1;
        (*(v2 + 32))(v34 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v39, v36, v52);
        v35 += 2;
        --v33;
      }

      while (v33);
      sub_1D9F0CE60(v45, v44, v43, v46);
      v25 = v51;
    }

    else
    {
      sub_1D9F0CE60(v28, *(&v28 + 1), v29, v27);
    }

    sub_1D9EAA024();
    sub_1D9F2A9BC();
    sub_1D9F2A9CC();
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74290, &unk_1D9F37C80);
  return (*(*(v41 - 8) + 56))(v25, v40, 1, v41);
}