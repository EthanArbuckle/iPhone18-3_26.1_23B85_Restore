unint64_t sub_1A991E7E8()
{
  result = qword_1EB3B61B0;
  if (!qword_1EB3B61B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61B0);
  }

  return result;
}

unint64_t sub_1A991E840()
{
  result = qword_1EB3B61B8;
  if (!qword_1EB3B61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61B8);
  }

  return result;
}

unint64_t sub_1A991E898()
{
  result = qword_1EB3B61C0;
  if (!qword_1EB3B61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61C0);
  }

  return result;
}

unint64_t sub_1A991E8F0()
{
  result = qword_1EB3B61C8;
  if (!qword_1EB3B61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61C8);
  }

  return result;
}

unint64_t sub_1A991E948()
{
  result = qword_1EB3B61D0;
  if (!qword_1EB3B61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61D0);
  }

  return result;
}

unint64_t sub_1A991E9A0()
{
  result = qword_1EB3B61D8;
  if (!qword_1EB3B61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61D8);
  }

  return result;
}

unint64_t sub_1A991E9F8()
{
  result = qword_1EB3B61E0;
  if (!qword_1EB3B61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61E0);
  }

  return result;
}

uint64_t sub_1A991EA4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x755379636167656CLL && a2 == 0xED000074726F7070;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6909027 && a2 == 0xE300000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6D656164 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6568536572616873 && a2 == 0xEA00000000007465 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1886351202 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265646E6966 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74656C6C6177 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E706F7244726961 && a2 == 0xED0000656369746FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69577265646E6966 && a2 == 0xEC000000776F646ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x55706F7264726961 && a2 == 0xE900000000000049 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E8450 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x79636167656CLL && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 1230324804 && a2 == 0xE400000000000000)
  {

    return 13;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1A991EEC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B61E8, &unk_1A99A9560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Slice.initializeAll<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return sub_1A991F468(a1, a2, a3, a4, a5, AssociatedTypeWitness, a6, a7);
}

uint64_t UnsafeMutableBufferPointer.initialize(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  v4 = a2;
  if (a4 >= a2)
  {
    sub_1A99770B0();
    sub_1A99770B0();
    sub_1A9977050();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableBufferPointer.initialize(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_1A9977100();
  swift_getWitnessTable();
  v13 = sub_1A9977960();
  swift_getWitnessTable();
  result = sub_1A9976EC0();
  if (result < 1)
  {
    return 0;
  }

  v15 = result;
  if (result <= a6)
  {
    sub_1A99770B0();
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    MEMORY[0x1AC58A5F0](&v17, v13);
    sub_1A99770B0();
    sub_1A9977930();
    v16 = *(*(a7 - 8) + 72);
    sub_1A9977050();
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t Slice.initialize<A>(fromContentsOf:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99770F0();
  v6 = UnsafeMutableBufferPointer.initialize(fromContentsOf:)(a1, a2, v4, v5);
  sub_1A9977100();
  swift_getWitnessTable();
  sub_1A9977960();
  sub_1A9977930();
  result = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
  }

  return result;
}

uint64_t Slice.initialize<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = sub_1A99770F0();
  v15 = UnsafeMutableBufferPointer.initialize(fromContentsOf:)(a1, a2, a3, a4, v13, v14, a9);
  sub_1A9977100();
  swift_getWitnessTable();
  sub_1A9977960();
  sub_1A9977930();
  result = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeMutableBufferPointer.moveInitializeAll(fromContentsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result && a2)
  {
    if (a4 < a2)
    {
      __break(1u);
    }

    else
    {
      return sub_1A9977080();
    }
  }

  return result;
}

uint64_t sub_1A991F3EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a3)
  {
    return 0;
  }

  v7 = a2 - result;
  if (a2 == result)
  {
    return v7;
  }

  if (v7 <= a6)
  {
    v8 = *(*(a7 - 8) + 72);
    sub_1A9977080();
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A991F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1A99770F0();
  v15 = _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(a1, v13, v14, a6, a7, a8);
  v16 = __OFADD__(a2, v15);
  result = a2 + v15;
  if (v16)
  {
    __break(1u);
  }

  return result;
}

uint64_t Slice.initializeAll<A>(fromContentsOf:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A99770F0();

  return UnsafeMutableBufferPointer.initialize(fromContentsOf:)(a1, a2, v5, v4);
}

uint64_t Slice.initializeAll<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = sub_1A99770F0();

  return UnsafeMutableBufferPointer.initialize(fromContentsOf:)(a1, a2, a3, a4, v14, v13, a9);
}

uint64_t Slice.moveInitializeAll<A>(fromContentsOf:)(uint64_t a1, uint64_t a2)
{
  result = sub_1A99770F0();
  if (a1 && a2)
  {
    if (v5 < a2)
    {
      __break(1u);
    }

    else
    {

      return sub_1A9977080();
    }
  }

  return result;
}

uint64_t Slice.moveInitializeAll<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = sub_1A99770F0();

  return sub_1A991F3EC(a1, a2, a3, a4, v14, v13, a9);
}

uint64_t sub_1A991F704(uint64_t a1)
{
  v2 = sub_1A99201DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991F740(uint64_t a1)
{
  v2 = sub_1A99201DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991F77C()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0x54676E6974696177;
  v4 = 0x676E696E61656C63;
  if (v1 != 4)
  {
    v4 = 0x6465766F6D6572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x7661776B636F6873;
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

uint64_t sub_1A991F85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A99211D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A991F884(uint64_t a1)
{
  v2 = sub_1A9920134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991F8C0(uint64_t a1)
{
  v2 = sub_1A9920134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991F8FC(uint64_t a1)
{
  v2 = sub_1A992032C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991F938(uint64_t a1)
{
  v2 = sub_1A992032C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991F974(uint64_t a1)
{
  v2 = sub_1A99202D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991F9B0(uint64_t a1)
{
  v2 = sub_1A99202D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991F9EC(uint64_t a1)
{
  v2 = sub_1A9920188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991FA28(uint64_t a1)
{
  v2 = sub_1A9920188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991FA64(uint64_t a1)
{
  v2 = sub_1A9920284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991FAA0(uint64_t a1)
{
  v2 = sub_1A9920284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991FADC(uint64_t a1)
{
  v2 = sub_1A9920230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991FB18(uint64_t a1)
{
  v2 = sub_1A9920230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFShockwaveEffectState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B61F0, &qword_1A99A9570);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B61F8, &qword_1A99A9578);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6200, &qword_1A99A9580);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6208, &qword_1A99A9588);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6210, &qword_1A99A9590);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6218, &qword_1A99A9598);
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6220, &qword_1A99A95A0);
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9920134();
  sub_1A9977AA0();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_1A9920230();
      v29 = v41;
      v30 = v50;
      sub_1A9977640();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_1A99201DC();
      v29 = v44;
      v30 = v50;
      sub_1A9977640();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_1A9920188();
      v29 = v47;
      v30 = v50;
      sub_1A9977640();
      v32 = v48;
      v31 = v49;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v52 = 1;
      sub_1A99202D8();
      v29 = v35;
      v30 = v50;
      sub_1A9977640();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_1A9920284();
      v29 = v38;
      v30 = v50;
      sub_1A9977640();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_1A992032C();
  v30 = v50;
  sub_1A9977640();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
}

unint64_t sub_1A9920134()
{
  result = qword_1EB3B6228;
  if (!qword_1EB3B6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6228);
  }

  return result;
}

unint64_t sub_1A9920188()
{
  result = qword_1EB3B6230;
  if (!qword_1EB3B6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6230);
  }

  return result;
}

unint64_t sub_1A99201DC()
{
  result = qword_1EB3B6238;
  if (!qword_1EB3B6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6238);
  }

  return result;
}

unint64_t sub_1A9920230()
{
  result = qword_1EB3B6240;
  if (!qword_1EB3B6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6240);
  }

  return result;
}

unint64_t sub_1A9920284()
{
  result = qword_1EB3B6248;
  if (!qword_1EB3B6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6248);
  }

  return result;
}

unint64_t sub_1A99202D8()
{
  result = qword_1EB3B6250;
  if (!qword_1EB3B6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6250);
  }

  return result;
}

unint64_t sub_1A992032C()
{
  result = qword_1EB3B6258;
  if (!qword_1EB3B6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6258);
  }

  return result;
}

uint64_t SFShockwaveEffectState.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFShockwaveEffectState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6260, &qword_1A99A95A8);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6268, &qword_1A99A95B0);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v48 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6270, &qword_1A99A95B8);
  v55 = *(v50 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v62 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6278, &qword_1A99A95C0);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6280, &qword_1A99A95C8);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6288, &qword_1A99A95D0);
  v49 = *(v19 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6290, &unk_1A99A95D8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1A9920134();
  v30 = v65;
  sub_1A9977A70();
  if (!v30)
  {
    v31 = v22;
    v48 = v19;
    v65 = v18;
    v33 = v62;
    v32 = v63;
    v34 = v64;
    v35 = sub_1A9977620();
    v36 = (2 * *(v35 + 16)) | 1;
    v67 = v35;
    v68 = v35 + 32;
    v69 = 0;
    v70 = v36;
    v37 = sub_1A97B2984();
    v38 = v27;
    if (v37 == 6 || v69 != v70 >> 1)
    {
      v42 = sub_1A9977300();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v44 = &type metadata for SFShockwaveEffectState;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v24 + 8))(v27, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = v37;
      if (v37 > 2u)
      {
        v47 = v61;
        if (v37 == 3)
        {
          v72 = 3;
          sub_1A9920230();
          sub_1A9977530();
          (*(v55 + 8))(v33, v50);
        }

        else if (v37 == 4)
        {
          v72 = 4;
          sub_1A99201DC();
          sub_1A9977530();
          (*(v57 + 8))(v32, v56);
        }

        else
        {
          v72 = 5;
          sub_1A9920188();
          sub_1A9977530();
          (*(v58 + 8))(v34, v59);
        }

        (*(v24 + 8))(v38, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v37)
        {
          if (v37 == 1)
          {
            v72 = 1;
            sub_1A99202D8();
            v39 = v65;
            sub_1A9977530();
            v41 = v51;
            v40 = v52;
          }

          else
          {
            v72 = 2;
            sub_1A9920284();
            v39 = v60;
            sub_1A9977530();
            v41 = v53;
            v40 = v54;
          }

          (*(v41 + 8))(v39, v40);
        }

        else
        {
          v72 = 0;
          sub_1A992032C();
          sub_1A9977530();
          (*(v49 + 8))(v31, v48);
        }

        (*(v24 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v47 = v61;
      }

      *v47 = v71;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v66);
}

unint64_t sub_1A9920BAC()
{
  result = qword_1EB3B6298;
  if (!qword_1EB3B6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6298);
  }

  return result;
}

unint64_t sub_1A9920CB4()
{
  result = qword_1EB3B62A0;
  if (!qword_1EB3B62A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62A0);
  }

  return result;
}

unint64_t sub_1A9920D0C()
{
  result = qword_1EB3B62A8;
  if (!qword_1EB3B62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62A8);
  }

  return result;
}

unint64_t sub_1A9920D64()
{
  result = qword_1EB3B62B0;
  if (!qword_1EB3B62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62B0);
  }

  return result;
}

unint64_t sub_1A9920DBC()
{
  result = qword_1EB3B62B8;
  if (!qword_1EB3B62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62B8);
  }

  return result;
}

unint64_t sub_1A9920E14()
{
  result = qword_1EB3B62C0;
  if (!qword_1EB3B62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62C0);
  }

  return result;
}

unint64_t sub_1A9920E6C()
{
  result = qword_1EB3B62C8;
  if (!qword_1EB3B62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62C8);
  }

  return result;
}

unint64_t sub_1A9920EC4()
{
  result = qword_1EB3B62D0;
  if (!qword_1EB3B62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62D0);
  }

  return result;
}

unint64_t sub_1A9920F1C()
{
  result = qword_1EB3B62D8;
  if (!qword_1EB3B62D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62D8);
  }

  return result;
}

unint64_t sub_1A9920F74()
{
  result = qword_1EB3B62E0;
  if (!qword_1EB3B62E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62E0);
  }

  return result;
}

unint64_t sub_1A9920FCC()
{
  result = qword_1EB3B62E8;
  if (!qword_1EB3B62E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62E8);
  }

  return result;
}

unint64_t sub_1A9921024()
{
  result = qword_1EB3B62F0;
  if (!qword_1EB3B62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62F0);
  }

  return result;
}

unint64_t sub_1A992107C()
{
  result = qword_1EB3B62F8;
  if (!qword_1EB3B62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62F8);
  }

  return result;
}

unint64_t sub_1A99210D4()
{
  result = qword_1EB3B6300;
  if (!qword_1EB3B6300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6300);
  }

  return result;
}

unint64_t sub_1A992112C()
{
  result = qword_1EB3B6308;
  if (!qword_1EB3B6308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6308);
  }

  return result;
}

unint64_t sub_1A9921184()
{
  result = qword_1EB3B6310;
  if (!qword_1EB3B6310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6310);
  }

  return result;
}

uint64_t sub_1A99211D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEE00746E69486E6FLL;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E84B0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7661776B636F6873 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54676E6974696177 && a2 == 0xEF656C747465536FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696E61656C63 && a2 == 0xEA00000000007055 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A9921404()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B6318);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B6318);
  if (qword_1EB3ACCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3ACCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static SFAirDropReceive.PeerPayment.validateTransaction(for:)(uint64_t a1)
{
  v2 = sub_1A9976020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB3B0B78 != -1)
  {
    swift_once();
  }

  v7 = sub_1A99764A0();
  __swift_project_value_buffer(v7, qword_1EB3B6318);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_1A9976480();
  v9 = sub_1A9976F90();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20[1] = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    sub_1A9921848();
    v13 = sub_1A9977730();
    v15 = v14;
    (*(v3 + 8))(v6, v2);
    v16 = sub_1A97AF148(v13, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1A9662000, v8, v9, "PeerPayment: validating transaction for transactionURL: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1AC58D2C0](v12, -1, -1);
    MEMORY[0x1AC58D2C0](v11, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v17 = sub_1A9976030();
  sub_1A97B43C4(v17, v18);
  return 1;
}

unint64_t sub_1A9921848()
{
  result = qword_1EB3B1FA0;
  if (!qword_1EB3B1FA0)
  {
    sub_1A9976020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1FA0);
  }

  return result;
}

Sharing::SFMoveToAppShareSheetSettings_optional __swiftcall SFMoveToAppShareSheetSettings.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

id SFAirDropInvocations.MoveToAppShareSheet.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id SFAirDropInvocations.MoveToAppShareSheet.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SFXPCInvocation_name];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SFAirDropInvocations.MoveToAppShareSheet.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFAirDropInvocations.MoveToAppShareSheet.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SFAirDropInvocations.MoveToAppShareSheet.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFAirDropInvocations.MoveToAppShareSheet.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

id SFAirDropInvocations.MoveToAppShareSheet.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A9921B4C()
{
  result = qword_1EB3B6330;
  if (!qword_1EB3B6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6330);
  }

  return result;
}

uint64_t sub_1A9921BEC()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B6338);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B6338);
  if (qword_1EB3B0B08 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3B3620);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1A9921D7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1A9976820();

  v5 = a2;
  v4();
}

void sub_1A9921EB8(id a1)
{
  v54 = *MEMORY[0x1E69E9840];
  if ((qword_1EB3B3940 & 0x10) != 0)
  {
    goto LABEL_55;
  }

  if ((*(v1 + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_isAttemptingRepair) & 1) == 0)
  {
    if (([a1 problemFlags] & 0x10000) != 0)
    {
      if (qword_1EB3B0B80 != -1)
      {
        swift_once();
      }

      v16 = sub_1A99764A0();
      __swift_project_value_buffer(v16, qword_1EB3B6338);
      osloga = sub_1A9976480();
      v17 = sub_1A9976F90();
      if (os_log_type_enabled(osloga, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1A9662000, osloga, v17, "Ignoring proximity repair for WiFi 802.1x (needs user)", v18, 2u);
        MEMORY[0x1AC58D2C0](v18, -1, -1);
      }

      v19 = *MEMORY[0x1E69E9840];
      v14 = osloga;
      goto LABEL_16;
    }

    v12 = [a1 model];
    if (v12)
    {
      v13 = v12;
      sub_1A9976820();
    }

    if (([a1 problemFlags] & 0x10) != 0)
    {
      v20 = sub_1A9976980();

      if (v20)
      {
        LODWORD(v48) = 0;
        v21 = WiFiCopyCurrentNetworkInfoEx();
        if (v21)
        {
          v22 = v21;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            *&aBlock = 0;
            sub_1A99766F0();
          }
        }
      }
    }

    else
    {
    }

    if (!SFDeviceRepairSessionProblemCanFixSilently([a1 problemFlags]))
    {
      if (qword_1EB3B0B80 != -1)
      {
        swift_once();
      }

      v34 = sub_1A99764A0();
      __swift_project_value_buffer(v34, qword_1EB3B6338);
      v35 = sub_1A9976480();
      v36 = sub_1A9976F90();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1A9662000, v35, v36, "Ignoring device that has problems that are not silently fixable", v37, 2u);
        MEMORY[0x1AC58D2C0](v37, -1, -1);
      }

      goto LABEL_54;
    }

    v23 = OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession;
    v24 = *(v1 + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession);
    if (v24)
    {
      [v24 invalidate];
    }

    v25 = [objc_allocWithZone(SFDeviceRepairSession) init];
    [v25 setPeerDevice_];
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = sub_1A99230D8;
    v53 = v26;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v51 = sub_1A9922ED8;
    *(&v51 + 1) = &block_descriptor_11;
    v27 = _Block_copy(&aBlock);

    [v25 setProgressHandler_];
    _Block_release(v27);
    v28 = [a1 bleDevice];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 foundTicks];

      if (v30)
      {
        if (mach_absolute_time() < v30)
        {
          __break(1u);
          goto LABEL_57;
        }

        [v25 setTriggerMs_];
      }
    }

    if (MEMORY[0x1E69A53F8])
    {
      v31 = [objc_opt_self() sharedInstance];
      v32 = sub_1A99767E0();
      v33 = [v31 objectForKey_];

      if (v33)
      {
        sub_1A99771B0();
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      aBlock = v48;
      v51 = v49;
      sub_1A97E4448(&aBlock, &v48);
      if (*(&v49 + 1))
      {
        sub_1A99230F8();
        if (swift_dynamicCast())
        {
          v30 = v47;
          if ([v47 BOOLValue])
          {
            v2 = v1;
            if (qword_1EB3B0B80 == -1)
            {
LABEL_47:
              v38 = sub_1A99764A0();
              __swift_project_value_buffer(v38, qword_1EB3B6338);
              v39 = sub_1A9976480();
              v40 = sub_1A9976F90();
              if (os_log_type_enabled(v39, v40))
              {
                v41 = swift_slowAlloc();
                *v41 = 0;
                _os_log_impl(&dword_1A9662000, v39, v40, "Disabling silent auth due to server bag value", v41, 2u);
                MEMORY[0x1AC58D2C0](v41, -1, -1);
              }

              [v25 setDisableSilentAuth_];
              sub_1A9812E28(&aBlock);
              v1 = v2;
              goto LABEL_53;
            }

LABEL_57:
            swift_once();
            goto LABEL_47;
          }

          sub_1A9812E28(&aBlock);

          goto LABEL_53;
        }

        p_aBlock = &aBlock;
      }

      else
      {
        sub_1A9812E28(&aBlock);
        p_aBlock = &v48;
      }

      sub_1A9812E28(p_aBlock);
    }

LABEL_53:
    v43 = *(v1 + v23);
    *(v1 + v23) = v25;
    v35 = v25;

    [v35 activate];
LABEL_54:

    goto LABEL_55;
  }

  if (qword_1EB3B0B80 != -1)
  {
    swift_once();
  }

  v4 = sub_1A99764A0();
  __swift_project_value_buffer(v4, qword_1EB3B6338);
  v5 = a1;
  oslog = sub_1A9976480();
  v6 = sub_1A9976F90();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&aBlock = v8;
    *v7 = 136315138;
    *&v48 = [v5 bleDevice];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6368, &qword_1A99A9DD8);
    v9 = sub_1A9976880();
    v11 = sub_1A97AF148(v9, v10, &aBlock);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1A9662000, oslog, v6, "Ignoring proximity Repair with another %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1AC58D2C0](v8, -1, -1);
    MEMORY[0x1AC58D2C0](v7, -1, -1);

LABEL_55:
    v44 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = oslog;
  v15 = *MEMORY[0x1E69E9840];
LABEL_16:
}

void sub_1A992282C(int a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1A992289C(a1, a2);
  }
}

void sub_1A992289C(int a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EB3B0B80 != -1)
  {
    swift_once();
  }

  v6 = sub_1A99764A0();
  __swift_project_value_buffer(v6, qword_1EB3B6338);

  v7 = sub_1A9976480();
  v8 = sub_1A9976F90();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v56[0] = v10;
    *v9 = 136315394;
    LODWORD(v59[0]) = a1;
    type metadata accessor for SFDeviceSetupProgressEvent(0);
    v11 = sub_1A9976880();
    v13 = sub_1A97AF148(v11, v12, v56);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *&v59[0] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6378, &qword_1A99A9DE8);
    v14 = sub_1A9976880();
    v16 = sub_1A97AF148(v14, v15, v56);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1A9662000, v7, v8, "Repair silent progress: %s %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v10, -1, -1);
    MEMORY[0x1AC58D2C0](v9, -1, -1);
  }

  switch(a1)
  {
    case 20:
      v41 = sub_1A9976480();
      v42 = sub_1A9976F90();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1A9662000, v41, v42, "Repair finalized", v43, 2u);
        MEMORY[0x1AC58D2C0](v43, -1, -1);
      }

      break;
    case 96:
      v29 = v3;
      v30 = sub_1A9976480();
      v31 = sub_1A9976F90();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v56[0] = v33;
        *v32 = 136315138;
        v34 = *&v29[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession];
        if (v34)
        {
          v34 = [v34 peerDevice];
        }

        *&v59[0] = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6370, &qword_1A99A9DE0);
        v35 = sub_1A9976880();
        v37 = sub_1A97AF148(v35, v36, v56);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_1A9662000, v30, v31, "Repair completed: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x1AC58D2C0](v33, -1, -1);
        MEMORY[0x1AC58D2C0](v32, -1, -1);
      }

      v38 = OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession;
      v39 = *&v29[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession];
      if (v39)
      {
        [v39 invalidate];
        v40 = *&v29[v38];
      }

      else
      {
        v40 = 0;
      }

      *&v29[v38] = 0;

      v29[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_isAttemptingRepair] = 0;
      break;
    case 30:
      v17 = OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession;
      v18 = *&v3[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession];
      if (!v18)
      {
        goto LABEL_29;
      }

      v19 = [v18 peerDevice];
      if (v19)
      {
        v20 = v19;
        v21 = *&v3[v17];
        if (v21)
        {
          v22 = [v21 idsIdentifier];
          if (v22)
          {
            v23 = v22;
            v24 = sub_1A9976820();
            v26 = v25;

            v27 = *&v3[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_updateIDSCacheHandler];
            if (v27)
            {
              v28 = *&v3[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_updateIDSCacheHandler + 8];

              v27(v20, v24, v26);

              sub_1A967C46C(v27);

              goto LABEL_27;
            }
          }
        }
      }

LABEL_27:
      v44 = *&v3[v17];
      if (v44)
      {
        [v44 invalidate];
        v45 = *&v3[v17];
        goto LABEL_30;
      }

LABEL_29:
      v45 = 0;
LABEL_30:
      *&v3[v17] = 0;

      if (a2)
      {
        v57[0] = 28517;
        v57[1] = 0xE200000000000000;
        sub_1A9977250();
        if (*(a2 + 16))
        {
          v46 = sub_1A97BCF30(v56);
          if (v47)
          {
            sub_1A97AF7EC(*(a2 + 56) + 32 * v46, v59);
            sub_1A97C108C(v56);
LABEL_36:
            sub_1A97E4448(v59, v56);
            v48 = sub_1A9976480();
            v49 = sub_1A9976F70();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v58 = v51;
              *v50 = 136315138;
              sub_1A97E4448(v56, v57);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BA0, &unk_1A99923D0);
              v52 = sub_1A9976880();
              v54 = v53;
              sub_1A9812E28(v56);
              v55 = sub_1A97AF148(v52, v54, &v58);

              *(v50 + 4) = v55;
              _os_log_impl(&dword_1A9662000, v48, v49, "Repair silent done: %s", v50, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v51);
              MEMORY[0x1AC58D2C0](v51, -1, -1);
              MEMORY[0x1AC58D2C0](v50, -1, -1);
            }

            else
            {

              sub_1A9812E28(v56);
            }

            sub_1A9812E28(v59);
            return;
          }
        }

        sub_1A97C108C(v56);
      }

      memset(v59, 0, sizeof(v59));
      goto LABEL_36;
    default:
      return;
  }
}

uint64_t sub_1A9922ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = sub_1A9976700();
  }

  else
  {
    v6 = 0;
  }

  v5(a2, v6);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A99230F8()
{
  result = qword_1EB3AB620;
  if (!qword_1EB3AB620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3AB620);
  }

  return result;
}

void sub_1A9923144(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1A99767E0();
  (*(v3 + 16))(v3, a1, v4);
}

uint64_t sub_1A99231BC(uint64_t a1)
{
  v2 = sub_1A9925D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A99231F8(uint64_t a1)
{
  v2 = sub_1A9925D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9923234(uint64_t a1)
{
  v2 = sub_1A9925D74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9923270(uint64_t a1)
{
  v2 = sub_1A9925D74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A99232AC(uint64_t a1)
{
  v2 = sub_1A9925DC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A99232E8(uint64_t a1)
{
  v2 = sub_1A9925DC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.Transfer.Metrics.TransferResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6380, &qword_1A99A9DF0);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v28 - v4;
  v5 = type metadata accessor for SFAirDropReceive.Failure();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6388, &qword_1A99A9DF8);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6390, &qword_1A99A9E00);
  v17 = *(v36 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v20 = &v28 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9925D20();
  sub_1A9977AA0();
  sub_1A9925F40(v35, v16, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    v37 = 0;
    sub_1A9925DC8();
    v22 = v36;
    sub_1A9977640();
    (*(v29 + 8))(v12, v30);
    return (*(v17 + 8))(v20, v22);
  }

  else
  {
    v24 = v31;
    sub_1A9925E64(v16, v31, type metadata accessor for SFAirDropReceive.Failure);
    v38 = 1;
    sub_1A9925D74();
    v25 = v32;
    v26 = v36;
    sub_1A9977640();
    sub_1A9925E1C(&qword_1EB3B18F8, type metadata accessor for SFAirDropReceive.Failure);
    v27 = v34;
    sub_1A99776E0();
    (*(v33 + 8))(v25, v27);
    sub_1A9925FA8(v24, type metadata accessor for SFAirDropReceive.Failure);
    return (*(v17 + 8))(v20, v26);
  }
}

uint64_t SFAirDropReceive.Transfer.Metrics.TransferResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63B0, &qword_1A99A9E08);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63B8, &qword_1A99A9E10);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63C0, &qword_1A99A9E18);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1A9925D20();
  v25 = v58;
  sub_1A9977A70();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  v58 = v16;
  v49 = v20;
  v50 = v22;
  v27 = v55;
  v26 = v56;
  v28 = sub_1A9977620();
  v29 = (2 * *(v28 + 16)) | 1;
  v60 = v28;
  v61 = v28 + 32;
  v62 = 0;
  v63 = v29;
  v30 = sub_1A97B2970();
  v31 = v12;
  v32 = v15;
  if (v30 == 2 || v62 != v63 >> 1)
  {
    v35 = sub_1A9977300();
    swift_allocError();
    v37 = v36;
    v38 = v31;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v37 = v58;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v57 + 8))(v15, v38);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  if (v30)
  {
    v64 = 1;
    sub_1A9925D74();
    v33 = v27;
    sub_1A9977530();
    v34 = v57;
    v42 = v26;
    v43 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1A9925E1C(&qword_1EB3B1AA0, type metadata accessor for SFAirDropReceive.Failure);
    v44 = v49;
    v45 = v53;
    sub_1A99775F0();
    (*(v54 + 8))(v33, v45);
    (*(v34 + 8))(v32, v31);
    swift_unknownObjectRelease();
    (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
    v46 = v50;
    sub_1A9925E64(v44, v50, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  }

  else
  {
    v64 = 0;
    sub_1A9925DC8();
    sub_1A9977530();
    v41 = v57;
    v42 = v26;
    (*(v52 + 8))(v11, v51);
    (*(v41 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v47 = type metadata accessor for SFAirDropReceive.Failure();
    v46 = v50;
    (*(*(v47 - 8) + 56))(v50, 1, 1, v47);
  }

  sub_1A9925E64(v46, v42, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  return __swift_destroy_boxed_opaque_existential_0Tm(v59);
}

uint64_t SFAirDropReceive.Transfer.Metrics.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A9976230();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFAirDropReceive.Transfer.Metrics.sensitive.setter(char a1)
{
  result = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SFAirDropReceive.Transfer.Metrics.init(startDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  v5 = v4[5];
  v6 = sub_1A9976230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(a2 + v5, 1, 1, v6);
  v9 = v4[6];
  v10 = v4[7];
  v11 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  v13 = *(*(v11 - 8) + 56);
  (v13)((v11 - 8), a2 + v10, 1, 1, v11);
  (*(v7 + 32))(a2, a1, v6);
  sub_1A97B06FC(a2 + v5, &unk_1EB3B2A30, &unk_1A99983A0);
  v8(a2 + v5, 1, 1, v6);
  *(a2 + v9) = 2;
  sub_1A97B06FC(a2 + v10, &qword_1EB3B63C8, &unk_1A99A9E20);

  return v13(a2 + v10, 1, 1, v11);
}

uint64_t SFAirDropReceive.Transfer.Metrics.description.getter()
{
  v1 = v0;
  v2 = sub_1A99760A0();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A99760C0();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5550, &qword_1A99A5978);
  v10 = *(*(v56 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v56);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3650, &qword_1A999BA80);
  v15 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v53 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v53 - v19;
  v21 = sub_1A9976230();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  sub_1A97C13A4(v1 + *(v62 + 20), v20, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1A97B06FC(v20, &unk_1EB3B2A30, &unk_1A99983A0);
    goto LABEL_8;
  }

  v26 = v22 + 32;
  v27 = *(v22 + 32);
  (v27)(v25, v20, v21);
  if (sub_1A9976110())
  {
    sub_1A9925E1C(&qword_1EB3B5558, MEMORY[0x1E6969530]);
    v28 = v21;
    if (sub_1A9976770())
    {
      v30 = *(v22 + 16);
      v60 = v27;
      v61 = v1;
      v31 = v55;
      v30(v55, v1, v21);
      v32 = v56;
      v30((v31 + *(v56 + 48)), v25, v21);
      sub_1A97C13A4(v31, v13, &qword_1EB3B5550, &qword_1A99A5978);
      v59 = *(v32 + 48);
      v33 = v57;
      v34 = v60;
      v60(v57, v13, v21);
      v5 = *(v22 + 8);
      (v5)(&v13[v59], v21);
      sub_1A98F54F0(v31, v13);
      v34(v33 + *(v54 + 36), &v13[*(v32 + 48)], v21);
      (v5)(v13, v21);
      v65 = 0x203A656D6974;
      v66 = 0xE600000000000000;
      sub_1A98734C4();
      sub_1A9976F40();
      MEMORY[0x1AC5895B0](v63, v64);

      v26 = v65;
      v1 = v66;
      v13 = sub_1A97AE618(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v27 = *(v13 + 2);
      v29 = *(v13 + 3);
      v28 = v27 + 1;
      if (v27 < v29 >> 1)
      {
LABEL_6:
        sub_1A97B06FC(v57, &qword_1EB3B3650, &qword_1A999BA80);
        (v5)(v25, v21);
        v35 = v61;
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    v13 = sub_1A97AE618((v29 > 1), v28, 1, v13);
    goto LABEL_6;
  }

  (*(v22 + 8))(v25, v21);
LABEL_8:
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_1A99772B0();

  v65 = 0x203A656D6974;
  v66 = 0xE600000000000000;
  sub_1A99760B0();
  sub_1A9976090();
  v35 = v1;
  v36 = sub_1A9976200();
  v38 = v37;
  (*(v60 + 1))(v5, v61);
  (*(v58 + 8))(v9, v59);
  MEMORY[0x1AC5895B0](v36, v38);

  MEMORY[0x1AC5895B0](0x6D6F636E49202D20, 0xED00006574656C70);
  v26 = v65;
  v1 = v66;
  v13 = sub_1A97AE618(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v27 = *(v13 + 2);
  v39 = *(v13 + 3);
  v28 = v27 + 1;
  if (v27 >= v39 >> 1)
  {
    v13 = sub_1A97AE618((v39 > 1), v27 + 1, 1, v13);
  }

LABEL_10:
  *(v13 + 2) = v28;
  v40 = &v13[16 * v27];
  *(v40 + 4) = v26;
  *(v40 + 5) = v1;
  v41 = *(v35 + *(v62 + 24));
  if (v41 != 2)
  {
    v65 = 0x76697469736E6573;
    v66 = 0xEB00000000203A65;
    if (v41)
    {
      v42 = 1702195828;
    }

    else
    {
      v42 = 0x65736C6166;
    }

    if (v41)
    {
      v43 = 0xE400000000000000;
    }

    else
    {
      v43 = 0xE500000000000000;
    }

    MEMORY[0x1AC5895B0](v42, v43);

    v44 = v65;
    v45 = v66;
    v47 = *(v13 + 2);
    v46 = *(v13 + 3);
    if (v47 >= v46 >> 1)
    {
      v13 = sub_1A97AE618((v46 > 1), v47 + 1, 1, v13);
    }

    *(v13 + 2) = v47 + 1;
    v48 = &v13[16 * v47];
    *(v48 + 4) = v44;
    *(v48 + 5) = v45;
  }

  v65 = 123;
  v66 = 0xE100000000000000;
  v63 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v49 = sub_1A9976760();
  v51 = v50;

  MEMORY[0x1AC5895B0](v49, v51);

  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  return v65;
}

uint64_t sub_1A9924A60()
{
  v1 = 0x7461447472617473;
  v2 = 0x76697469736E6573;
  if (*v0 != 2)
  {
    v2 = 0x746C75736572;
  }

  if (*v0)
  {
    v1 = 0x65746144646E65;
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

uint64_t sub_1A9924AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9926648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9924B00(uint64_t a1)
{
  v2 = sub_1A9925EEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9924B3C(uint64_t a1)
{
  v2 = sub_1A9925EEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.Transfer.Metrics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63D0, &qword_1A99A9E30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9925EEC();
  sub_1A9977AA0();
  v20 = 0;
  sub_1A9976230();
  sub_1A9925E1C(&qword_1EB3B0C58, MEMORY[0x1E6969530]);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
    v12 = v11[5];
    v19 = 1;
    sub_1A9977680();
    v13 = *(v3 + v11[6]);
    v18 = 2;
    sub_1A9977660();
    v14 = v11[7];
    v17 = 3;
    type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
    sub_1A9925E1C(&qword_1EB3B63E0, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
    sub_1A9977680();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDropReceive.Transfer.Metrics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63C8, &unk_1A99A9E20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v33 - v8;
  v9 = sub_1A9976230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63E8, &qword_1A99A9E38);
  v38 = *(v41 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 20);
  v36 = v10;
  v22 = *(v10 + 56);
  v44 = v21;
  v22(&v20[v21], 1, 1, v9);
  v23 = *(v16 + 28);
  v24 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  v25 = *(*(v24 - 8) + 56);
  v43 = v23;
  v25(&v20[v23], 1, 1, v24);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9925EEC();
  v40 = v15;
  v27 = v42;
  sub_1A9977A70();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_1A97B06FC(&v20[v44], &unk_1EB3B2A30, &unk_1A99983A0);
    return sub_1A97B06FC(&v20[v43], &qword_1EB3B63C8, &unk_1A99A9E20);
  }

  else
  {
    v42 = v24;
    v29 = v36;
    v28 = v37;
    v48 = 0;
    sub_1A9925E1C(&qword_1EB3B0CE0, MEMORY[0x1E6969530]);
    sub_1A99775F0();
    (*(v29 + 32))(v20, v39, v9);
    v47 = 1;
    sub_1A9977590();
    sub_1A98F5488(v28, &v20[v44], &unk_1EB3B2A30, &unk_1A99983A0);
    v46 = 2;
    v30 = a1;
    v20[*(v16 + 24)] = sub_1A9977560();
    v45 = 3;
    sub_1A9925E1C(&qword_1EB3B63F0, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
    v31 = v35;
    sub_1A9977590();
    (*(v38 + 8))(v40, v41);
    sub_1A98F5488(v31, &v20[v43], &qword_1EB3B63C8, &unk_1A99A9E20);
    sub_1A9925F40(v20, v34, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    return sub_1A9925FA8(v20, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
  }
}

uint64_t _s7Sharing16SFAirDropReceiveO8TransferV7MetricsV0E6ResultO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6450, &qword_1A99AA3A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_1A9925F40(a1, &v22 - v16, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  sub_1A9925F40(a2, &v17[v18], type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1A9925F40(v17, v12, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1A9925E64(&v17[v18], v8, type metadata accessor for SFAirDropReceive.Failure);
      v20 = _s7Sharing16SFAirDropReceiveO7FailureO2eeoiySbAE_AEtFZ_0(v12, v8);
      sub_1A9925FA8(v8, type metadata accessor for SFAirDropReceive.Failure);
      sub_1A9925FA8(v12, type metadata accessor for SFAirDropReceive.Failure);
      sub_1A9925FA8(v17, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
      return v20 & 1;
    }

    sub_1A9925FA8(v12, type metadata accessor for SFAirDropReceive.Failure);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1A97B06FC(v17, &qword_1EB3B6450, &qword_1A99AA3A0);
    v20 = 0;
    return v20 & 1;
  }

  sub_1A9925FA8(v17, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  v20 = 1;
  return v20 & 1;
}

BOOL _s7Sharing16SFAirDropReceiveO8TransferV7MetricsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63C8, &unk_1A99A9E20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v48 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6458, &qword_1A99AA3A8);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v48 - v12;
  v14 = sub_1A9976230();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1EB8, &unk_1A99A5F30);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v48 - v24;
  if ((sub_1A99761E0() & 1) == 0)
  {
    return 0;
  }

  v52 = v4;
  v53 = v13;
  v49 = v7;
  v50 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  v51 = a1;
  v26 = v50[5];
  v27 = *(v22 + 48);
  sub_1A97C13A4(a1 + v26, v25, &unk_1EB3B2A30, &unk_1A99983A0);
  sub_1A97C13A4(a2 + v26, &v25[v27], &unk_1EB3B2A30, &unk_1A99983A0);
  v28 = *(v15 + 48);
  if (v28(v25, 1, v14) == 1)
  {
    if (v28(&v25[v27], 1, v14) == 1)
    {
      sub_1A97B06FC(v25, &unk_1EB3B2A30, &unk_1A99983A0);
      goto LABEL_12;
    }

LABEL_7:
    v29 = &qword_1EB3B1EB8;
    v30 = &unk_1A99A5F30;
    v31 = v25;
LABEL_8:
    sub_1A97B06FC(v31, v29, v30);
    return 0;
  }

  sub_1A97C13A4(v25, v21, &unk_1EB3B2A30, &unk_1A99983A0);
  if (v28(&v25[v27], 1, v14) == 1)
  {
    (*(v15 + 8))(v21, v14);
    goto LABEL_7;
  }

  v33 = v57;
  (*(v15 + 32))(v57, &v25[v27], v14);
  sub_1A9925E1C(&qword_1EB3B1EC0, MEMORY[0x1E6969530]);
  v34 = sub_1A99767A0();
  v35 = *(v15 + 8);
  v35(v33, v14);
  v35(v21, v14);
  sub_1A97B06FC(v25, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v36 = v50[6];
  v37 = *(v51 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    v40 = v52;
    v39 = v53;
    if (v38 != 2)
    {
      return 0;
    }

    goto LABEL_17;
  }

  result = 0;
  v40 = v52;
  v39 = v53;
  if (v38 != 2 && ((v38 ^ v37) & 1) == 0)
  {
LABEL_17:
    v41 = v50[7];
    v42 = *(v55 + 48);
    sub_1A97C13A4(v51 + v41, v39, &qword_1EB3B63C8, &unk_1A99A9E20);
    sub_1A97C13A4(a2 + v41, v39 + v42, &qword_1EB3B63C8, &unk_1A99A9E20);
    v43 = *(v56 + 48);
    if (v43(v39, 1, v40) == 1)
    {
      if (v43(v39 + v42, 1, v40) == 1)
      {
        sub_1A97B06FC(v39, &qword_1EB3B63C8, &unk_1A99A9E20);
        return 1;
      }
    }

    else
    {
      v44 = v54;
      sub_1A97C13A4(v39, v54, &qword_1EB3B63C8, &unk_1A99A9E20);
      if (v43(v39 + v42, 1, v40) != 1)
      {
        v45 = v39 + v42;
        v46 = v49;
        sub_1A9925E64(v45, v49, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
        v47 = _s7Sharing16SFAirDropReceiveO8TransferV7MetricsV0E6ResultO2eeoiySbAI_AItFZ_0(v44, v46);
        sub_1A9925FA8(v46, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
        sub_1A9925FA8(v44, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
        sub_1A97B06FC(v39, &qword_1EB3B63C8, &unk_1A99A9E20);
        return (v47 & 1) != 0;
      }

      sub_1A9925FA8(v44, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
    }

    v29 = &qword_1EB3B6458;
    v30 = &qword_1A99AA3A8;
    v31 = v39;
    goto LABEL_8;
  }

  return result;
}

unint64_t sub_1A9925D20()
{
  result = qword_1EB3B6398;
  if (!qword_1EB3B6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6398);
  }

  return result;
}

unint64_t sub_1A9925D74()
{
  result = qword_1EB3B63A0;
  if (!qword_1EB3B63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B63A0);
  }

  return result;
}

unint64_t sub_1A9925DC8()
{
  result = qword_1EB3B63A8;
  if (!qword_1EB3B63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B63A8);
  }

  return result;
}

uint64_t sub_1A9925E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A9925E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A9925EEC()
{
  result = qword_1EB3B63D8;
  if (!qword_1EB3B63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B63D8);
  }

  return result;
}

uint64_t sub_1A9925F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A9925FA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A9926030()
{
  sub_1A9976230();
  if (v0 <= 0x3F)
  {
    sub_1A992616C(319, &qword_1EB3AC8A0, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1A992611C();
      if (v2 <= 0x3F)
      {
        sub_1A992616C(319, &qword_1EB3AC540, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A992611C()
{
  if (!qword_1EB3AB698)
  {
    v0 = sub_1A99770A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AB698);
    }
  }
}

void sub_1A992616C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A99770A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A99261E8()
{
  v0 = type metadata accessor for SFAirDropReceive.Failure();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1A9926284()
{
  result = qword_1EB3B63F8;
  if (!qword_1EB3B63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B63F8);
  }

  return result;
}

unint64_t sub_1A99262DC()
{
  result = qword_1EB3B6400;
  if (!qword_1EB3B6400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6400);
  }

  return result;
}

unint64_t sub_1A9926334()
{
  result = qword_1EB3B6408;
  if (!qword_1EB3B6408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6408);
  }

  return result;
}

unint64_t sub_1A992638C()
{
  result = qword_1EB3B6410;
  if (!qword_1EB3B6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6410);
  }

  return result;
}

unint64_t sub_1A99263E4()
{
  result = qword_1EB3B6418;
  if (!qword_1EB3B6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6418);
  }

  return result;
}

unint64_t sub_1A992643C()
{
  result = qword_1EB3B6420;
  if (!qword_1EB3B6420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6420);
  }

  return result;
}

unint64_t sub_1A9926494()
{
  result = qword_1EB3B6428;
  if (!qword_1EB3B6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6428);
  }

  return result;
}

unint64_t sub_1A99264EC()
{
  result = qword_1EB3B6430;
  if (!qword_1EB3B6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6430);
  }

  return result;
}

unint64_t sub_1A9926544()
{
  result = qword_1EB3B6438;
  if (!qword_1EB3B6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6438);
  }

  return result;
}

unint64_t sub_1A992659C()
{
  result = qword_1EB3B6440;
  if (!qword_1EB3B6440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6440);
  }

  return result;
}

unint64_t sub_1A99265F4()
{
  result = qword_1EB3B6448;
  if (!qword_1EB3B6448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6448);
  }

  return result;
}

uint64_t sub_1A9926648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76697469736E6573 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t SFAirDrop.ContactRequest.description.getter()
{
  v1 = *(v0 + 3);
  if (!v1)
  {
    return 0x6F70707553746F6ELL;
  }

  if (v1 == 1)
  {
    return 0x656465654E746F6ELL;
  }

  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = v0[2];
  v8 = v0[3];
  v9 = *(v0 + 8);
  v3 = SFAirDrop.ContactInfo.description.getter();
  MEMORY[0x1AC5895B0](v3);

  MEMORY[0x1AC5895B0](41, 0xE100000000000000);
  return 0x28746361746E6F63;
}

uint64_t SFAirDrop.ContactRequest.contact.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 3);
  if (v3 >= 2)
  {
    v4 = *v1;
    *a1 = *v1;
    v5 = *(v1 + 2);
    *(a1 + 16) = v5;
    v6 = v1[2];
    v7 = v1[3];
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
    v8 = *(v1 + 8);
    *(a1 + 64) = v8;
    v11 = v4;
    v12 = v5;
    v13 = v3;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    result = sub_1A97B44C0(&v11, v10);
  }

  else
  {
    v3 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_1A9926928()
{
  v1 = 0x656465654E746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x746361746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F70707553746F6ELL;
  }
}

uint64_t sub_1A9926990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9927DF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A99269B8(uint64_t a1)
{
  v2 = sub_1A99277E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A99269F4(uint64_t a1)
{
  v2 = sub_1A99277E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9926A30(uint64_t a1)
{
  v2 = sub_1A9927834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9926A6C(uint64_t a1)
{
  v2 = sub_1A9927834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9926AA8(uint64_t a1)
{
  v2 = sub_1A9927888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9926AE4(uint64_t a1)
{
  v2 = sub_1A9927888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9926B20(uint64_t a1)
{
  v2 = sub_1A99278DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9926B5C(uint64_t a1)
{
  v2 = sub_1A99278DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.ContactRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6460, &qword_1A99AA3B0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6468, &qword_1A99AA3B8);
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6470, &qword_1A99AA3C0);
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6478, &qword_1A99AA3C8);
  v14 = *(v35 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v17 = &v26 - v16;
  v32 = v1;
  v18 = *(v1 + 3);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A99277E0();
  sub_1A9977AA0();
  if (v18 == 1)
  {
    LOBYTE(v36) = 1;
    sub_1A9927888();
    v22 = v35;
    sub_1A9977640();
    (*(v29 + 8))(v9, v30);
    return (*(v14 + 8))(v17, v22);
  }

  else
  {
    if (v18)
    {
      LOBYTE(v36) = 2;
      sub_1A9927834();
      v23 = v31;
      v20 = v35;
      sub_1A9977640();
      v36 = *v32;
      v37 = *(v32 + 2);
      v38 = v18;
      v24 = v32[3];
      v39 = v32[2];
      v40 = v24;
      v41 = *(v32 + 8);
      sub_1A97D7AEC();
      v25 = v34;
      sub_1A99776E0();
      (*(v33 + 8))(v23, v25);
    }

    else
    {
      LOBYTE(v36) = 0;
      sub_1A99278DC();
      v20 = v35;
      sub_1A9977640();
      (*(v27 + 8))(v13, v28);
    }

    return (*(v14 + 8))(v17, v20);
  }
}

uint64_t SFAirDrop.ContactRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B64A0, &qword_1A99AA3D0);
  v49 = *(v47 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v44 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B64A8, &qword_1A99AA3D8);
  v48 = *(v50 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B64B0, &qword_1A99AA3E0);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B64B8, &unk_1A99AA3E8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1A99277E0();
  v19 = v53;
  sub_1A9977A70();
  if (!v19)
  {
    v44 = v8;
    v45 = 0;
    v20 = v50;
    v53 = v13;
    v21 = v52;
    v22 = v16;
    v23 = sub_1A9977620();
    v24 = (2 * *(v23 + 16)) | 1;
    v59 = v23;
    v60 = v23 + 32;
    v61 = 0;
    v62 = v24;
    v25 = sub_1A97B297C();
    if (v25 == 3 || v61 != v62 >> 1)
    {
      v31 = sub_1A9977300();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v33 = &type metadata for SFAirDrop.ContactRequest;
      v26 = v22;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
    }

    else if (v25)
    {
      if (v25 != 1)
      {
        LOBYTE(v54) = 2;
        sub_1A9927834();
        v40 = v16;
        v41 = v45;
        sub_1A9977530();
        if (!v41)
        {
          v39 = v21;
          sub_1A97D8218();
          v42 = v47;
          sub_1A99775F0();
          v43 = v53;
          (*(v49 + 8))(0, v42);
          (*(v43 + 8))(v40, v12);
          swift_unknownObjectRelease();
          v30 = v54;
          v29 = v55;
          v37 = v56;
          v38 = v57;
          v28 = v58;
          goto LABEL_15;
        }

        (*(v53 + 8))(v16, v12);
        goto LABEL_10;
      }

      LOBYTE(v54) = 1;
      sub_1A9927888();
      v26 = v16;
      v27 = v45;
      sub_1A9977530();
      if (!v27)
      {
        (*(v48 + 8))(v7, v20);
        (*(v53 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v28 = 0;
        v29 = xmmword_1A998EED0;
        v30 = 0uLL;
LABEL_14:
        v37 = 0uLL;
        v38 = 0uLL;
        v39 = v21;
LABEL_15:
        *v39 = v30;
        *(v39 + 16) = v29;
        *(v39 + 32) = v37;
        *(v39 + 48) = v38;
        *(v39 + 64) = v28;
        return __swift_destroy_boxed_opaque_existential_0Tm(v63);
      }
    }

    else
    {
      LOBYTE(v54) = 0;
      sub_1A99278DC();
      v26 = v16;
      v36 = v45;
      sub_1A9977530();
      if (!v36)
      {
        (*(v46 + 8))(v11, v44);
        (*(v53 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v28 = 0;
        v30 = 0uLL;
        v29 = 0uLL;
        goto LABEL_14;
      }
    }

    (*(v53 + 8))(v26, v12);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v63);
}

uint64_t _s7Sharing9SFAirDropO14ContactRequestO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v29 = a1[2];
  v30 = v2;
  v4 = a1[1];
  v27 = *a1;
  v28 = v4;
  v5 = a2[3];
  v6 = a2[1];
  v33 = a2[2];
  v34 = v5;
  v7 = a2[1];
  v32[0] = *a2;
  v32[1] = v7;
  v8 = a1[3];
  v36[2] = v29;
  v36[3] = v8;
  v36[0] = v27;
  v36[1] = v3;
  v38 = v32[0];
  v41 = a2[3];
  v40 = v33;
  v31 = *(a1 + 8);
  v35 = *(a2 + 8);
  v9 = *(a2 + 8);
  v37 = *(a1 + 8);
  v42 = v9;
  v39 = v6;
  if (*(&v4 + 1) != 1)
  {
    if (*(&v28 + 1))
    {
      if (*(&v7 + 1) >= 2uLL)
      {
        v21 = *a1;
        v22 = *(a1 + 2);
        v23 = *(&v28 + 1);
        v11 = a1[3];
        v24 = a1[2];
        v25 = v11;
        v26 = *(a1 + 8);
        v15 = *a2;
        v16 = *(a2 + 2);
        v17 = *(&v7 + 1);
        v12 = a2[3];
        v18 = a2[2];
        v19 = v12;
        v20 = *(a2 + 8);
        sub_1A9927F1C(v32, v14);
        sub_1A9927F1C(&v27, v14);
        sub_1A9927F1C(v32, v14);
        sub_1A9927F1C(&v27, v14);
        v10 = _s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(&v21, &v15);
        sub_1A9927F54(v36);
        sub_1A97D7A44(v32);
        sub_1A97D7A44(&v27);
        return v10 & 1;
      }
    }

    else if (!*(&v7 + 1))
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1A9927F1C(v32, &v21);
    sub_1A9927F1C(&v27, &v21);
    sub_1A9927F54(v36);
    v10 = 0;
    return v10 & 1;
  }

  if (*(&v7 + 1) != 1)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1A9927F54(v36);
  v10 = 1;
  return v10 & 1;
}

unint64_t sub_1A99277E0()
{
  result = qword_1EB3B6480;
  if (!qword_1EB3B6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6480);
  }

  return result;
}

unint64_t sub_1A9927834()
{
  result = qword_1EB3B6488;
  if (!qword_1EB3B6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6488);
  }

  return result;
}

unint64_t sub_1A9927888()
{
  result = qword_1EB3B6490;
  if (!qword_1EB3B6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6490);
  }

  return result;
}

unint64_t sub_1A99278DC()
{
  result = qword_1EB3B6498;
  if (!qword_1EB3B6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6498);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Sharing9SFAirDropO14ContactRequestO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A9927948(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 72))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A992799C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1A9927A04(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1A9927A8C()
{
  result = qword_1EB3B64C0;
  if (!qword_1EB3B64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64C0);
  }

  return result;
}

unint64_t sub_1A9927AE4()
{
  result = qword_1EB3B64C8;
  if (!qword_1EB3B64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64C8);
  }

  return result;
}

unint64_t sub_1A9927B3C()
{
  result = qword_1EB3B64D0;
  if (!qword_1EB3B64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64D0);
  }

  return result;
}

unint64_t sub_1A9927B94()
{
  result = qword_1EB3B64D8;
  if (!qword_1EB3B64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64D8);
  }

  return result;
}

unint64_t sub_1A9927BEC()
{
  result = qword_1EB3B64E0;
  if (!qword_1EB3B64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64E0);
  }

  return result;
}

unint64_t sub_1A9927C44()
{
  result = qword_1EB3B64E8;
  if (!qword_1EB3B64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64E8);
  }

  return result;
}

unint64_t sub_1A9927C9C()
{
  result = qword_1EB3B64F0;
  if (!qword_1EB3B64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64F0);
  }

  return result;
}

unint64_t sub_1A9927CF4()
{
  result = qword_1EB3B64F8;
  if (!qword_1EB3B64F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64F8);
  }

  return result;
}

unint64_t sub_1A9927D4C()
{
  result = qword_1EB3B6500;
  if (!qword_1EB3B6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6500);
  }

  return result;
}

unint64_t sub_1A9927DA4()
{
  result = qword_1EB3B6508;
  if (!qword_1EB3B6508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6508);
  }

  return result;
}

uint64_t sub_1A9927DF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656465654E746F6ELL && a2 == 0xE900000000000064 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A9927F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6510, &qword_1A99AA988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9927FBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  v4 = 0x6D79615072656570;
  v5 = 0xEB00000000746E65;
  v6 = 0xE400000000000000;
  if (a1 != 5)
  {
    v4 = 1230324804;
    v5 = 0xE400000000000000;
  }

  v7 = 1952802157;
  if (a1 != 3)
  {
    v7 = 0x6572616873;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x636972656E6567;
  if (a1 != 1)
  {
    v8 = 0x706F7244726961;
  }

  if (!a1)
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v3 <= 2)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    v11 = 0xE700000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 0x636972656E6567)
        {
          goto LABEL_36;
        }
      }

      else if (v9 != 0x706F7244726961)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v11 = 0xEB00000000746E65;
        if (v9 != 0x6D79615072656570)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v11 = 0xE400000000000000;
        if (v9 != 1230324804)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1952802157)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v11 = 0xE500000000000000;
    v2 = 0x6572616873;
  }

  if (v9 != v2)
  {
LABEL_36:
    v12 = sub_1A99777E0();
    goto LABEL_37;
  }

LABEL_33:
  if (v10 != v11)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_1A99281B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000544341544ELL;
  if (a1 > 3u)
  {
    v3 = 0x80000001A99E2640;
    if (a1 == 6)
    {
      v9 = 0xD000000000000024;
    }

    else
    {
      v9 = 0x4F435F454259414DLL;
    }

    if (a1 != 6)
    {
      v3 = 0xED0000544341544ELL;
    }

    v5 = 0x80000001A99E25E0;
    if (a1 != 4)
    {
      v5 = 0x80000001A99E2610;
    }

    v7 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v8 = 0xD000000000000023;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0x80000001A99E2590;
    v4 = 0xD000000000000025;
    if (a1 != 2)
    {
      v4 = 0xD000000000000017;
      v3 = 0x80000001A99E25C0;
    }

    v5 = 0x80000001A99E2530;
    v6 = 0xD000000000000022;
    if (a1)
    {
      v5 = 0x80000001A99E2560;
    }

    else
    {
      v6 = 0xD000000000000023;
    }

    v7 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }
  }

  if (v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = v3;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v11 = "ASK_TO_AIRDROP_RECEIVER_PRIVACY_ONE";
      }

      else
      {
        v11 = "ASK_TO_AIRDROP_RECEIVER_PRIVACY_TWO";
      }

LABEL_39:
      v2 = (v11 - 32) | 0x8000000000000000;
      if (v8 != 0xD000000000000023)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    if (a2 == 6)
    {
      v2 = 0x80000001A99E2640;
      if (v8 != 0xD000000000000024)
      {
        goto LABEL_46;
      }
    }

    else if (v8 != 0x4F435F454259414DLL)
    {
LABEL_46:
      v12 = sub_1A99777E0();
      goto LABEL_47;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x80000001A99E2590;
      if (v8 != 0xD000000000000025)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v2 = 0x80000001A99E25C0;
      if (v8 != 0xD000000000000017)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (!a2)
    {
      v11 = "ASK_TO_AIRDROP_SENDER_PRIVACY_TITLE";
      goto LABEL_39;
    }

    v2 = 0x80000001A99E2560;
    if (v8 != 0xD000000000000022)
    {
      goto LABEL_46;
    }
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_46;
  }

  v12 = 1;
LABEL_47:

  return v12 & 1;
}

uint64_t sub_1A9928400(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x436C6F72746E6F43;
    v10 = 0xED00007265746E65;
    if (a1 != 6)
    {
      v9 = 0x73746361746E6F63;
      v10 = 0xE900000000000064;
    }

    v11 = 0xE600000000000000;
    v12 = 0x7265646E6946;
    if (a1 != 4)
    {
      v12 = 0x6F42676E69727053;
      v11 = 0xEB00000000647261;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE700000000000000;
    v5 = 0x706F7244726941;
    if (a1 != 2)
    {
      v5 = 0x55706F7244726941;
      v4 = 0xE900000000000049;
    }

    v6 = 0xD000000000000012;
    if (a1)
    {
      v3 = 0x80000001A99E24C0;
    }

    else
    {
      v6 = 0x64676E6972616873;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xED00007265746E65;
        if (v7 != 0x436C6F72746E6F43)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE900000000000064;
        if (v7 != 0x73746361746E6F63)
        {
LABEL_47:
          v14 = sub_1A99777E0();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x7265646E6946)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEB00000000647261;
      if (v7 != 0x6F42676E69727053)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x706F7244726941)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE900000000000049;
      if (v7 != 0x55706F7244726941)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0x80000001A99E24C0;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x64676E6972616873)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_1A99286B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001CLL;
  v3 = "";
  if (a1 <= 3u)
  {
    v4 = "ySubjectOtherContactsCount";
    v5 = 0xD000000000000022;
    if (a1 != 2)
    {
      v5 = 0xD000000000000026;
      v4 = "ySubjectEventTitle";
    }

    v8 = "SFAirDropActivitySubjectMain";
    v9 = 0xD00000000000002ALL;
    if (!a1)
    {
      v9 = 0xD00000000000001CLL;
      v8 = "";
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = "ySubjectiTunesStoreLinkType";
    v5 = 0xD000000000000024;
    v6 = "ySubjectMapsLinkType";
    v7 = 0xD000000000000028;
    if (a1 != 7)
    {
      v7 = 0xD000000000000020;
      v6 = "ySubjectMusicAppLinkType";
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "ySubjectEventStartDate";
    v9 = 0xD000000000000025;
    if (a1 != 4)
    {
      v9 = 0xD00000000000002BLL;
      v8 = "ySubjectEventIsAllDay";
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v3 = "ySubjectOtherContactsCount";
        v2 = 0xD000000000000022;
      }

      else
      {
        v3 = "ySubjectEventTitle";
        v2 = 0xD000000000000026;
      }
    }

    else if (a2)
    {
      v3 = "SFAirDropActivitySubjectMain";
      v2 = 0xD00000000000002ALL;
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v3 = "ySubjectEventStartDate";
      v2 = 0xD000000000000025;
    }

    else
    {
      v3 = "ySubjectEventIsAllDay";
      v2 = 0xD00000000000002BLL;
    }
  }

  else if (a2 == 6)
  {
    v3 = "ySubjectiTunesStoreLinkType";
    v2 = 0xD000000000000024;
  }

  else if (a2 == 7)
  {
    v3 = "ySubjectMapsLinkType";
    v2 = 0xD000000000000028;
  }

  else
  {
    v3 = "ySubjectMusicAppLinkType";
    v2 = 0xD000000000000020;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1A99777E0();
  }

  return v13 & 1;
}

uint64_t sub_1A99288F0()
{
  sub_1A99768D0();
}

uint64_t sub_1A9928A3C()
{
  sub_1A99768D0();
}

uint64_t sub_1A9928B8C()
{
  sub_1A99768D0();
}

uint64_t sub_1A9928CBC()
{
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

uint64_t sub_1A9928E20()
{
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

uint64_t sub_1A9928F80()
{
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

uint64_t sub_1A992924C(uint64_t a1)
{
  v2 = sub_1A9929914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9929288(uint64_t a1)
{
  v2 = sub_1A9929914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A99292C4()
{
  v1 = 0x65766973736170;
  if (*v0 != 1)
  {
    v1 = 1819047270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_1A992931C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9934A84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9929344(uint64_t a1)
{
  v2 = sub_1A9929818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9929380(uint64_t a1)
{
  v2 = sub_1A9929818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A99293BC(uint64_t a1)
{
  v2 = sub_1A992986C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A99293F8(uint64_t a1)
{
  v2 = sub_1A992986C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9929434(uint64_t a1)
{
  v2 = sub_1A99298C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9929470(uint64_t a1)
{
  v2 = sub_1A99298C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingDiscovery.PollingType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6520, &qword_1A99AA998);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6528, &qword_1A99AA9A0);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6530, &qword_1A99AA9A8);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6538, &qword_1A99AA9B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9929818();
  sub_1A9977AA0();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1A99298C0();
      v12 = v26;
      sub_1A9977640();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1A992986C();
      v12 = v29;
      sub_1A9977640();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1A9929914();
    sub_1A9977640();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1A9929818()
{
  result = qword_1EB3ABBE0;
  if (!qword_1EB3ABBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBE0);
  }

  return result;
}

unint64_t sub_1A992986C()
{
  result = qword_1EB3B6540;
  if (!qword_1EB3B6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6540);
  }

  return result;
}

unint64_t sub_1A99298C0()
{
  result = qword_1EB3B6548;
  if (!qword_1EB3B6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6548);
  }

  return result;
}

unint64_t sub_1A9929914()
{
  result = qword_1EB3ABBA8;
  if (!qword_1EB3ABBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBA8);
  }

  return result;
}

uint64_t SFAirDrop.NearbySharingDiscovery.PollingType.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFAirDrop.NearbySharingDiscovery.PollingType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6550, &qword_1A99AA9B8);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6558, &qword_1A99AA9C0);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6560, &qword_1A99AA9C8);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6568, &unk_1A99AA9D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1A9929818();
  v20 = v43;
  sub_1A9977A70();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1A9977620();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1A97B297C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1A9977300();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v30 = &type metadata for SFAirDrop.NearbySharingDiscovery.PollingType;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1A99298C0();
          sub_1A9977530();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1A992986C();
          v33 = v22;
          sub_1A9977530();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1A9929914();
        sub_1A9977530();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.pollingType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.publicKey.getter()
{
  v1 = v0 + *(type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0) + 28);
  v2 = *v1;
  sub_1A97C1554(*v1, *(v1 + 8));
  return v2;
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.publicKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0) + 28);
  result = sub_1A97D8688(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.init(pollingType:applicationLabel:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
  *(a4 + v8[7]) = xmmword_1A999DA90;
  sub_1A99762B0();
  *(a4 + v8[5]) = v7;
  result = sub_1A9976980();
  if ((result & 1) == 0)
  {
    MEMORY[0x1AC5895B0](a2, a3);

    MEMORY[0x1AC5895B0](46, 0xE100000000000000);

    a2 = 0xD000000000000011;
    a3 = 0x80000001A99E2EC0;
  }

  v10 = (a4 + v8[6]);
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.init(pollingType:applicationLabel:publicKey:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  SFAirDrop.NearbySharingDiscovery.Request.init(pollingType:applicationLabel:)(&v11, a2, a3, a6);
  v9 = a6 + *(type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0) + 28);
  result = sub_1A97D8688(*v9, *(v9 + 8));
  *v9 = a4;
  *(v9 + 8) = a5;
  return result;
}

unint64_t sub_1A992A218()
{
  v1 = 25705;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x654B63696C627570;
  }

  if (*v0)
  {
    v1 = 0x54676E696C6C6F70;
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

uint64_t sub_1A992A298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9934BA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A992A2C0(uint64_t a1)
{
  v2 = sub_1A992A590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992A2FC(uint64_t a1)
{
  v2 = sub_1A992A590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6570, &qword_1A99AA9E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992A590();
  sub_1A9977AA0();
  LOBYTE(v19) = 0;
  sub_1A99762C0();
  sub_1A992AAB8(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
    LOBYTE(v19) = *(v3 + v11[5]);
    v21 = 1;
    sub_1A992A5E4();
    sub_1A99776E0();
    v12 = (v3 + v11[6]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v19) = 2;
    sub_1A9977690();
    v15 = (v3 + v11[7]);
    v16 = v15[1];
    v19 = *v15;
    v20 = v16;
    v21 = 3;
    sub_1A97C1554(v19, v16);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v19, v20);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A992A590()
{
  result = qword_1EB3ABB80;
  if (!qword_1EB3ABB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB80);
  }

  return result;
}

unint64_t sub_1A992A5E4()
{
  result = qword_1EB3ABB90;
  if (!qword_1EB3ABB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB90);
  }

  return result;
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1A99762C0();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6578, &qword_1A99AA9E8);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &v15[*(v13 + 28)];
  *v36 = xmmword_1A999DA90;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992A590();
  sub_1A9977A70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_1A97D8688(*v36, *(v36 + 1));
  }

  else
  {
    v17 = v15;
    v18 = v32;
    LOBYTE(v37) = 0;
    sub_1A992AAB8(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
    v19 = v34;
    sub_1A99775F0();
    v20 = *(v18 + 32);
    v21 = v17;
    v22 = v35;
    v35 = v4;
    v20(v17, v22, v4);
    v39 = 1;
    sub_1A992AB00();
    sub_1A99775F0();
    v17[*(v11 + 20)] = v37;
    LOBYTE(v37) = 2;
    v23 = sub_1A99775A0();
    v24 = v33;
    v25 = (v21 + *(v11 + 24));
    *v25 = v23;
    v25[1] = v26;
    v39 = 3;
    sub_1A97B446C();
    sub_1A9977590();
    (*(v24 + 8))(v10, v19);
    v27 = v37;
    v28 = v38;
    v29 = v36;
    sub_1A97D8688(*v36, *(v36 + 1));
    *v29 = v27;
    *(v29 + 1) = v28;
    sub_1A992AB54(v21, v31, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_1A992B5F4(v21, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);
  }
}

uint64_t sub_1A992AAB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A992AB00()
{
  result = qword_1EB3ABB88;
  if (!qword_1EB3ABB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB88);
  }

  return result;
}

uint64_t sub_1A992AB54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SFAirDrop.NearbySharingAssertion.nearbySharingInteractionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDrop.NearbySharingAssertion(0) + 20);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A992ACA0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t SFAirDrop.NearbySharingAssertion.init(nearbySharingInteractionID:explanation:client:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1A99762B0();
  v10 = type metadata accessor for SFAirDrop.NearbySharingAssertion(0);
  v11 = v10[5];
  v12 = sub_1A99762C0();
  (*(*(v12 - 8) + 32))(a5 + v11, a1, v12);
  v13 = (a5 + v10[6]);
  *v13 = a2;
  v13[1] = a3;
  return sub_1A9932D14(a4, a5 + v10[7], type metadata accessor for SFClientIdentity);
}

uint64_t SFAirDrop.NearbySharingAssertionRequest.explanation.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDrop.NearbySharingAssertionRequest.init(nearbySharingInteractionID:explanation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A99762C0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

unint64_t sub_1A992AEE0()
{
  if (*v0)
  {
    result = 0x74616E616C707865;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_1A992AF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001A99E8630 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A99777E0();

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

uint64_t sub_1A992B014(uint64_t a1)
{
  v2 = sub_1A992B248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992B050(uint64_t a1)
{
  v2 = sub_1A992B248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingAssertionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6580, &qword_1A99AA9F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992B248();
  sub_1A9977AA0();
  v15[15] = 0;
  sub_1A99762C0();
  sub_1A992AAB8(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_1A9977690();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A992B248()
{
  result = qword_1EB3B6588;
  if (!qword_1EB3B6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6588);
  }

  return result;
}

uint64_t SFAirDrop.NearbySharingAssertionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1A99762C0();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6590, &qword_1A99AA9F8);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992B248();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_1A992AAB8(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
  v18 = v30;
  sub_1A99775F0();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_1A99775A0();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_1A992AB54(v23, v22, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A992B5F4(v23, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);
}

uint64_t sub_1A992B5F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A992B690(uint64_t a1)
{
  v2 = sub_1A992B81C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992B6CC(uint64_t a1)
{
  v2 = sub_1A992B81C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.PresenceContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6598, &unk_1A99AAA00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992B81C();
  sub_1A9977AA0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1A992B81C()
{
  result = qword_1EB3B65A0;
  if (!qword_1EB3B65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65A0);
  }

  return result;
}

uint64_t sub_1A992B898(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6598, &unk_1A99AAA00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992B81C();
  sub_1A9977AA0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A9977510();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6D79615072656570;
  if (v1 != 5)
  {
    v3 = 1230324804;
  }

  v4 = 1952802157;
  if (v1 != 3)
  {
    v4 = 0x6572616873;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x636972656E6567;
  if (v1 != 1)
  {
    v5 = 0x706F7244726961;
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

uint64_t sub_1A992BAEC()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_1A99768D0();
}

uint64_t sub_1A992BBF4@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.init(rawValue:)(a1);
}

void sub_1A992BC00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEB00000000746E65;
  v6 = 0x6D79615072656570;
  v7 = 0xE400000000000000;
  if (v2 != 5)
  {
    v6 = 1230324804;
    v5 = 0xE400000000000000;
  }

  v8 = 1952802157;
  if (v2 != 3)
  {
    v8 = 0x6572616873;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x636972656E6567;
  if (v2 != 1)
  {
    v9 = 0x706F7244726961;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceName.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceModel.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.accountID.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.accountID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.isSameAccount.setter(char a1)
{
  result = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.transactionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 44);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.transactionIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 44);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.publicKey.getter()
{
  v1 = v0 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 52);
  v2 = *v1;
  sub_1A97C1554(*v1, *(v1 + 8));
  return v2;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.publicKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 52);
  result = sub_1A97D8688(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.init(type:transactionIdentifier:endpointIdentifier:contactIdentifier:deviceName:deviceModel:accountID:isSameAccount:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v54 = a7;
  v55 = a8;
  v53 = a6;
  v52 = a13;
  v50 = a12;
  v51 = a5;
  v48 = a11;
  v49 = a4;
  v46 = a2;
  v47 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v20;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  v43 = &v39 - v21;
  sub_1A97B06FC(a3, &unk_1EB3B29B0, &qword_1A9990640);
  v44 = *a1;
  v23 = sub_1A99762C0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v25(v22, 1, 1, v23);
  v25(v20, 1, 1, v23);
  v26 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v42 = v26[5];
  v25(&a9[v42], 1, 1, v23);
  v27 = &a9[v26[6]];
  v40 = &a9[v26[7]];
  v28 = &a9[v26[8]];
  v29 = &a9[v26[9]];
  v41 = v26[10];
  v30 = v26[12];
  v25(&a9[v30], 1, 1, v23);
  v31 = &a9[v26[13]];
  v39 = xmmword_1A999DA90;
  *v31 = xmmword_1A999DA90;
  *a9 = v44;
  (*(v24 + 32))(&a9[v26[11]], v46, v23);
  sub_1A98F5488(v43, &a9[v30], &unk_1EB3B29B0, &qword_1A9990640);
  sub_1A97D8688(*v31, *(v31 + 1));
  *v31 = v39;
  result = sub_1A98F5488(v45, &a9[v42], &unk_1EB3B29B0, &qword_1A9990640);
  v33 = v51;
  *v27 = v49;
  v27[1] = v33;
  v34 = v54;
  v36 = v40;
  v35 = v41;
  *v40 = v53;
  v36[1] = v34;
  v37 = v47;
  *v28 = v55;
  v28[1] = v37;
  v38 = v50;
  *v29 = v48;
  v29[1] = v38;
  a9[v35] = v52;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.init(type:transactionIdentifier:bonjourListenerUUID:publicKey:endpointIdentifier:contactIdentifier:deviceName:deviceModel:accountID:isSameAccount:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v28 = *a1;
  v17 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v18 = v17[5];
  v31 = v18;
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(&a9[v18], 1, 1, v19);
  v22 = &a9[v17[6]];
  v29 = &a9[v17[7]];
  v23 = &a9[v17[8]];
  v24 = &a9[v17[9]];
  v30 = v17[10];
  v25 = v17[12];
  v21(&a9[v25], 1, 1, v19);
  v26 = &a9[v17[13]];
  *v26 = xmmword_1A999DA90;
  *a9 = v28;
  (*(v20 + 32))(&a9[v17[11]], a2, v19);
  sub_1A98F5488(a3, &a9[v25], &unk_1EB3B29B0, &qword_1A9990640);
  sub_1A97D8688(*v26, *(v26 + 1));
  *v26 = a4;
  *(v26 + 1) = a5;
  result = sub_1A98F5488(a6, &a9[v31], &unk_1EB3B29B0, &qword_1A9990640);
  *v22 = a7;
  v22[1] = a8;
  *v29 = a10;
  v29[1] = a11;
  *v23 = a12;
  v23[1] = a13;
  *v24 = a14;
  v24[1] = a15;
  a9[v30] = a16;
  return result;
}

uint64_t sub_1A992CA3C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000013;
    if (a1 != 8)
    {
      v4 = 0x654B63696C627570;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000015;
    }

    v5 = 0x49746E756F636361;
    if (a1 != 5)
    {
      v5 = 0x6341656D61537369;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 0x614E656369766564;
    if (a1 != 3)
    {
      v2 = 0x6F4D656369766564;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A992CBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9934D14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A992CBCC(uint64_t a1)
{
  v2 = sub_1A99329CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992CC08(uint64_t a1)
{
  v2 = sub_1A99329CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B65A8, &qword_1A99AAA10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A99329CC();
  sub_1A9977AA0();
  LOBYTE(v31) = *v3;
  v33 = 0;
  sub_1A9932A20();
  sub_1A99776E0();
  if (!v2)
  {
    v11 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
    v12 = v11[5];
    LOBYTE(v31) = 1;
    sub_1A99762C0();
    sub_1A992AAB8(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
    sub_1A9977680();
    v13 = &v3[v11[6]];
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v31) = 2;
    sub_1A9977650();
    v16 = &v3[v11[7]];
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v31) = 3;
    sub_1A9977650();
    v19 = &v3[v11[8]];
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v31) = 4;
    sub_1A9977650();
    v22 = &v3[v11[9]];
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v31) = 5;
    sub_1A9977650();
    v25 = v3[v11[10]];
    LOBYTE(v31) = 6;
    sub_1A9977660();
    v26 = v11[11];
    LOBYTE(v31) = 7;
    sub_1A99776E0();
    v27 = v11[12];
    LOBYTE(v31) = 8;
    sub_1A9977680();
    v28 = &v3[v11[13]];
    v29 = v28[1];
    v31 = *v28;
    v32 = v29;
    v33 = 9;
    sub_1A97C1554(v31, v29);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v31, v32);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1A99762C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v59 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B65C0, &qword_1A99AAA18);
  v15 = *(v14 - 8);
  v60 = v14;
  v61 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v57 - v17;
  v19 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 20);
  v63 = v4;
  v25 = *(v4 + 56);
  v69 = v24;
  v25(&v23[v24], 1, 1, v3);
  v70 = *(v19 + 48);
  v65 = v3;
  v25(&v23[v70], 1, 1, v3);
  v64 = v19;
  v26 = *(v19 + 52);
  v71 = v23;
  v67 = a1;
  v68 = &v23[v26];
  *v68 = xmmword_1A999DA90;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A99329CC();
  v62 = v18;
  v28 = v66;
  sub_1A9977A70();
  if (v28)
  {
    v30 = v69;
    v31 = v71;
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    sub_1A97B06FC(&v31[v30], &unk_1EB3B29B0, &qword_1A9990640);

    sub_1A97B06FC(&v31[v70], &unk_1EB3B29B0, &qword_1A9990640);
    return sub_1A97D8688(*v68, *(v68 + 1));
  }

  else
  {
    v29 = v13;
    v74 = 0;
    sub_1A9932A74();
    sub_1A99775F0();
    v32 = v71;
    *v71 = v72;
    LOBYTE(v72) = 1;
    v33 = sub_1A992AAB8(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
    sub_1A9977590();
    sub_1A98F5488(v29, &v32[v69], &unk_1EB3B29B0, &qword_1A9990640);
    LOBYTE(v72) = 2;
    v34 = sub_1A9977550();
    v35 = v32;
    v36 = v64;
    v37 = &v35[v64[6]];
    *v37 = v34;
    v37[1] = v38;
    v66 = v38;
    LOBYTE(v72) = 3;
    v39 = sub_1A9977550();
    v57[0] = v33;
    v57[1] = v40;
    v41 = &v71[v36[7]];
    *v41 = v39;
    v41[1] = v40;
    LOBYTE(v72) = 4;
    v42 = sub_1A9977550();
    v43 = &v71[v36[8]];
    *v43 = v42;
    v43[1] = v44;
    LOBYTE(v72) = 5;
    v45 = sub_1A9977550();
    v46 = &v71[v36[9]];
    *v46 = v45;
    v46[1] = v47;
    LOBYTE(v72) = 6;
    v48 = sub_1A9977560();
    v49 = v36[10];
    v50 = v71;
    v71[v49] = v48;
    LOBYTE(v72) = 7;
    v51 = v59;
    sub_1A99775F0();
    (*(v63 + 32))(&v50[v64[11]], v51, v65);
    LOBYTE(v72) = 8;
    sub_1A9977590();
    sub_1A98F5488(v11, &v50[v70], &unk_1EB3B29B0, &qword_1A9990640);
    v74 = 9;
    sub_1A97B446C();
    sub_1A9977590();
    (*(v61 + 8))(v62, v60);
    v52 = v72;
    v53 = v73;
    v54 = v68;
    sub_1A97D8688(*v68, *(v68 + 1));
    *v54 = v52;
    *(v54 + 1) = v53;
    v55 = v71;
    sub_1A992AB54(v71, v58, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    return sub_1A992B5F4(v55, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
  }
}

BOOL static SFAirDrop.NearbySharingInteraction.FailureType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_1A992D850()
{
  if (*v0)
  {
    result = 0x726F707075736E75;
  }

  else
  {
    result = 0x796177416C6C7570;
  }

  *v0;
  return result;
}

uint64_t sub_1A992D894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796177416C6C7570 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A992D974(uint64_t a1)
{
  v2 = sub_1A9932AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992D9B0(uint64_t a1)
{
  v2 = sub_1A9932AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992D9EC(uint64_t a1)
{
  v2 = sub_1A9932B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992DA28(uint64_t a1)
{
  v2 = sub_1A9932B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992DA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x796C6C61636F6CLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A992DB04(uint64_t a1)
{
  v2 = sub_1A9932B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992DB40(uint64_t a1)
{
  v2 = sub_1A9932B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.FailureType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B65D0, &qword_1A99AAA20);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B65D8, &qword_1A99AAA28);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B65E0, &qword_1A99AAA30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9932AC8();
  sub_1A9977AA0();
  if (v15 == 2)
  {
    v25 = 0;
    sub_1A9932B70();
    sub_1A9977640();
    (*(v20 + 8))(v9, v21);
  }

  else
  {
    v26 = 1;
    sub_1A9932B1C();
    v18 = v22;
    sub_1A9977640();
    v19 = v24;
    sub_1A99776A0();
    (*(v23 + 8))(v18, v19);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t SFAirDrop.NearbySharingInteraction.FailureType.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6600, &qword_1A99AAA38);
  v39 = *(v37 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6608, &qword_1A99AAA40);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6610, &qword_1A99AAA48);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A9932AC8();
  v17 = v41;
  sub_1A9977A70();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  v36 = v6;
  v41 = v11;
  v18 = v40;
  v19 = sub_1A9977620();
  v20 = (2 * *(v19 + 16)) | 1;
  v43 = v19;
  v44 = v19 + 32;
  v45 = 0;
  v46 = v20;
  v21 = sub_1A97B2970();
  v22 = v10;
  if (v21 == 2 || v45 != v46 >> 1)
  {
    v25 = sub_1A9977300();
    swift_allocError();
    v27 = v26;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v27 = &type metadata for SFAirDrop.NearbySharingInteraction.FailureType;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v41 + 8))(v14, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  if (v21)
  {
    v47 = 1;
    sub_1A9932B1C();
    v23 = v5;
    sub_1A9977530();
    v24 = v41;
    v31 = v18;
    v32 = v37;
    v33 = sub_1A99775B0();
    (*(v39 + 8))(v23, v32);
    (*(v24 + 8))(v14, v22);
    swift_unknownObjectRelease();
    v34 = v33 & 1;
  }

  else
  {
    v47 = 0;
    sub_1A9932B70();
    sub_1A9977530();
    v30 = v41;
    v31 = v18;
    (*(v38 + 8))(v9, v36);
    (*(v30 + 8))(v14, v10);
    swift_unknownObjectRelease();
    v34 = 2;
  }

  *v31 = v34;
  return __swift_destroy_boxed_opaque_existential_0Tm(v42);
}

BOOL sub_1A992E398(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t sub_1A992E3DC()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0x657463656E6E6F63;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x6465646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1A992E48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A993505C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A992E4B4(uint64_t a1)
{
  v2 = sub_1A9932BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E4F0(uint64_t a1)
{
  v2 = sub_1A9932BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992E52C(uint64_t a1)
{
  v2 = sub_1A9932D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E568(uint64_t a1)
{
  v2 = sub_1A9932D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992E5A4(uint64_t a1)
{
  v2 = sub_1A9932DD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E5E0(uint64_t a1)
{
  v2 = sub_1A9932DD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992E61C(uint64_t a1)
{
  v2 = sub_1A9932C6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E658(uint64_t a1)
{
  v2 = sub_1A9932C6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992E694(uint64_t a1)
{
  v2 = sub_1A9932C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E6D0(uint64_t a1)
{
  v2 = sub_1A9932C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992E70C(uint64_t a1)
{
  v2 = sub_1A9932E24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E748(uint64_t a1)
{
  v2 = sub_1A9932E24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.State.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6618, &qword_1A99AAA50);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6620, &qword_1A99AAA58);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v41 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6628, &qword_1A99AAA60);
  v46 = *(v54 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v41 - v9;
  v43 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6630, &qword_1A99AAA68);
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6638, &qword_1A99AAA70);
  v41 = *(v16 - 8);
  v17 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  v20 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6640, &qword_1A99AAA78);
  v56 = *(v24 - 8);
  v57 = v24;
  v25 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v41 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9932BC4();
  sub_1A9977AA0();
  sub_1A992AB54(v55, v23, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v35 = v53;
    v34 = v54;
    if (EnumCaseMultiPayload)
    {
      sub_1A9932D14(v23, v12, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      v60 = 2;
      sub_1A9932D7C();
      v36 = v57;
      sub_1A9977640();
      sub_1A992AAB8(&qword_1EB3B6670, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      sub_1A99776E0();
      (*(v46 + 8))(v35, v34);
      sub_1A992B5F4(v12, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    }

    else
    {
      v58 = 0;
      sub_1A9932E24();
      v36 = v57;
      sub_1A9977640();
      sub_1A9932E78();
      sub_1A99776E0();
      (*(v41 + 8))(v19, v16);
    }

    return (*(v56 + 8))(v27, v36);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v37 = *v23;
    v62 = 3;
    sub_1A9932C6C();
    v38 = v47;
    v36 = v57;
    sub_1A9977640();
    v61 = v37;
    sub_1A9932CC0();
    v39 = v50;
    sub_1A99776E0();
    (*(v49 + 8))(v38, v39);
    return (*(v56 + 8))(v27, v36);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v59 = 1;
    sub_1A9932DD0();
    v30 = v42;
    v31 = v57;
    sub_1A9977640();
    v33 = v44;
    v32 = v45;
  }

  else
  {
    v63 = 4;
    sub_1A9932C18();
    v30 = v48;
    v31 = v57;
    sub_1A9977640();
    v33 = v51;
    v32 = v52;
  }

  (*(v33 + 8))(v30, v32);
  return (*(v56 + 8))(v27, v31);
}

uint64_t SFAirDrop.NearbySharingInteraction.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6690, &qword_1A99AAA80);
  v73 = *(v77 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v64 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6698, &qword_1A99AAA88);
  v78 = *(v75 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v85 = &v64 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66A0, &qword_1A99AAA90);
  v74 = *(v76 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v84 = &v64 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66A8, &qword_1A99AAA98);
  v72 = *(v69 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v79 = &v64 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66B0, &qword_1A99AAAA0);
  v70 = *(v71 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v82 = &v64 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66B8, &qword_1A99AAAA8);
  v81 = *(v83 - 8);
  v13 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v15 = &v64 - v14;
  v16 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v64 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v64 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v64 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1A9932BC4();
  v31 = v88;
  sub_1A9977A70();
  if (v31)
  {
    v32 = v87;
  }

  else
  {
    v65 = v26;
    v66 = v20;
    v67 = v23;
    v33 = v82;
    v34 = v84;
    v35 = v85;
    v88 = v16;
    v68 = v28;
    v36 = v86;
    v37 = v83;
    v38 = sub_1A9977620();
    v39 = (2 * *(v38 + 16)) | 1;
    v89 = v38;
    v90 = v38 + 32;
    v91 = 0;
    v92 = v39;
    v40 = sub_1A97B2978();
    if (v40 == 5 || v91 != v92 >> 1)
    {
      v43 = sub_1A9977300();
      swift_allocError();
      v44 = v37;
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v46 = v88;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v43 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v43);
      swift_willThrow();
      (*(v81 + 8))(v15, v44);
      swift_unknownObjectRelease();
      v32 = v87;
    }

    else
    {
      if (v40 <= 1u)
      {
        if (v40)
        {
          v93 = 1;
          sub_1A9932DD0();
          v52 = v79;
          sub_1A9977530();
          v41 = v87;
          v53 = v81;
          v57 = v36;
          (*(v72 + 8))(v52, v69);
          (*(v53 + 8))(v15, v37);
          swift_unknownObjectRelease();
          v62 = v68;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v93 = 0;
          sub_1A9932E24();
          v48 = v33;
          sub_1A9977530();
          v41 = v87;
          v49 = v37;
          v50 = v81;
          v57 = v36;
          sub_1A9932F20();
          v58 = v71;
          sub_1A99775F0();
          (*(v70 + 8))(v48, v58);
          (*(v50 + 8))(v15, v49);
          swift_unknownObjectRelease();
          v59 = v65;
          swift_storeEnumTagMultiPayload();
          v62 = v68;
          sub_1A9932D14(v59, v68, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
        }
      }

      else if (v40 == 2)
      {
        v93 = 2;
        sub_1A9932D7C();
        sub_1A9977530();
        v57 = v36;
        type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
        sub_1A992AAB8(&qword_1EB3B66C8, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        v54 = v67;
        v55 = v76;
        sub_1A99775F0();
        v56 = v81;
        (*(v74 + 8))(v34, v55);
        (*(v56 + 8))(v15, v37);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v62 = v68;
        sub_1A9932D14(v54, v68, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
        v41 = v87;
      }

      else
      {
        if (v40 == 3)
        {
          v93 = 3;
          sub_1A9932C6C();
          sub_1A9977530();
          v41 = v87;
          sub_1A9932ECC();
          v42 = v75;
          sub_1A99775F0();
          (*(v78 + 8))(v35, v42);
          (*(v81 + 8))(v15, v37);
          swift_unknownObjectRelease();
          v60 = v66;
          *v66 = v93;
          swift_storeEnumTagMultiPayload();
          v61 = v60;
          v62 = v68;
          sub_1A9932D14(v61, v68, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
        }

        else
        {
          v93 = 4;
          sub_1A9932C18();
          v51 = v80;
          sub_1A9977530();
          v41 = v87;
          (*(v73 + 8))(v51, v77);
          (*(v81 + 8))(v15, v37);
          swift_unknownObjectRelease();
          v62 = v68;
          swift_storeEnumTagMultiPayload();
        }

        v57 = v36;
      }

      sub_1A9932D14(v62, v57, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
      v32 = v41;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v32);
}

uint64_t SFAirDrop.NearbySharingInteraction.state.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction(0) + 20);

  return sub_1A9865834(a1, v3);
}

uint64_t SFAirDrop.NearbySharingInteraction.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction(0) + 24);
  v4 = sub_1A9976230();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDrop.NearbySharingInteraction.isInitiatorRoleExpected.setter(char a1)
{
  result = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.isInitiator.setter(char a1)
{
  result = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.init(state:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_1A99762C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  v15 = v14[7];
  v16 = sub_1A99773D0();
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  *(a3 + v14[8]) = 0;
  *(a3 + v14[9]) = 0;
  sub_1A97C13A4(a2, v8, &unk_1EB3B29B0, &qword_1A9990640);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_1A99762B0();
    if (v17(v8, 1, v9) != 1)
    {
      sub_1A97B06FC(v8, &unk_1EB3B29B0, &qword_1A9990640);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  (*(v10 + 32))(a3, v13, v9);
  v18 = a3 + v14[6];
  sub_1A9976220();
  sub_1A97B06FC(a2, &unk_1EB3B29B0, &qword_1A9990640);
  return sub_1A9932D14(v21, a3 + v14[5], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
}

uint64_t sub_1A992FF3C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x697463656E6E6F63;
  v4 = 0xD000000000000017;
  if (v1 != 4)
  {
    v4 = 0x616974696E497369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6574617473;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461657263;
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

uint64_t sub_1A9930008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9935228(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9930030(uint64_t a1)
{
  v2 = sub_1A9932F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993006C(uint64_t a1)
{
  v2 = sub_1A9932F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66D8, &qword_1A99AAAB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9932F74();
  sub_1A9977AA0();
  v18[15] = 0;
  sub_1A99762C0();
  sub_1A992AAB8(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v12 = v11[5];
    v18[14] = 1;
    type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
    sub_1A992AAB8(&qword_1EB3B33B8, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    sub_1A99776E0();
    v13 = v11[6];
    v18[13] = 2;
    sub_1A9976230();
    sub_1A992AAB8(&qword_1EB3B0C58, MEMORY[0x1E6969530]);
    sub_1A99776E0();
    v14 = v11[7];
    v18[12] = 3;
    sub_1A99773D0();
    sub_1A992AAB8(&qword_1EB3B66E8, MEMORY[0x1E69E87E8]);
    sub_1A9977680();
    v15 = *(v3 + v11[8]);
    v18[11] = 4;
    sub_1A99776A0();
    v16 = *(v3 + v11[9]);
    v18[10] = 5;
    sub_1A99776A0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDrop.NearbySharingInteraction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6518, &qword_1A99AA990);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = v38 - v5;
  v6 = sub_1A9976230();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  v9 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1A99762C0();
  v44 = *(v49 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v46 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66F0, &qword_1A99AAAB8);
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v38 - v16;
  v18 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  v19 = *(*(v18 - 1) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 28);
  v24 = sub_1A99773D0();
  v25 = *(*(v24 - 8) + 56);
  v26 = v22;
  v52 = v23;
  v25(&v22[v23], 1, 1, v24);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9932F74();
  v50 = v17;
  v28 = v51;
  sub_1A9977A70();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_1A97B06FC(v26 + v52, &qword_1EB3B6518, &qword_1A99AA990);
  }

  else
  {
    v38[1] = v24;
    v51 = a1;
    v58 = 0;
    sub_1A992AAB8(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
    v29 = v46;
    sub_1A99775F0();
    (*(v44 + 32))(v26, v29, v49);
    v57 = 1;
    sub_1A992AAB8(&qword_1EB3B33C8, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    sub_1A99775F0();
    sub_1A9932D14(v11, v26 + v18[5], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    v56 = 2;
    sub_1A992AAB8(&qword_1EB3B0CE0, MEMORY[0x1E6969530]);
    v30 = v41;
    v31 = v43;
    v46 = 0;
    sub_1A99775F0();
    (*(v42 + 32))(v26 + v18[6], v30, v31);
    v55 = 3;
    sub_1A992AAB8(&qword_1EB3B66F8, MEMORY[0x1E69E87E8]);
    v32 = v40;
    sub_1A9977590();
    sub_1A98F5488(v32, v26 + v52, &qword_1EB3B6518, &qword_1A99AA990);
    v54 = 4;
    v33 = sub_1A99775B0();
    v34 = v51;
    *(v26 + v18[8]) = v33 & 1;
    v53 = 5;
    v35 = sub_1A99775B0();
    v36 = v18[9];
    (*(v47 + 8))(v50, v48);
    *(v26 + v36) = v35 & 1;
    sub_1A992AB54(v26, v39, type metadata accessor for SFAirDrop.NearbySharingInteraction);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    return sub_1A992B5F4(v26, type metadata accessor for SFAirDrop.NearbySharingInteraction);
  }
}

uint64_t SFAirDrop.NearbySharingInteraction.State.connectionContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A992AB54(v2, v7, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A9932D14(v7, a1, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }

  else
  {
    v10 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    return sub_1A992B5F4(v7, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  }
}

BOOL SFAirDrop.NearbySharingInteraction.State.isConnected.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6700, &qword_1A99AAAC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  sub_1A992AB54(v1, v5, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A9932D14(v5, v9, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    v10 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v10 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1A992B5F4(v5, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  }

  type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) != 1;
  sub_1A97B06FC(v9, &qword_1EB3B6700, &qword_1A99AAAC0);
  return v11;
}

uint64_t SFAirDrop.NearbySharingInteraction.State.description.getter()
{
  v1 = v0;
  v2 = 0x7463656E6E6F632ELL;
  v3 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A992AB54(v1, v10, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1A9932D14(v10, v6, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      v13 = 0;
      v14 = 0xE000000000000000;
      MEMORY[0x1AC5895B0](0x7463656E6E6F632ELL, 0xEB00000000286465);
      sub_1A9977400();
      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v2 = v13;
      sub_1A992B5F4(v6, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    }

    else
    {
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1A99772B0();
      MEMORY[0x1AC5895B0](0xD000000000000012, 0x80000001A99E8610);
      sub_1A9977400();
      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      return v13;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return 0xD000000000000016;
  }

  else if (EnumCaseMultiPayload != 3)
  {
    return 0x6465646E652ELL;
  }

  return v2;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x796150726565702ELL;
  if (v1 != 5)
  {
    v3 = 0x495544442ELL;
  }

  v4 = 0x7465656D2ELL;
  if (v1 != 3)
  {
    v4 = 0x65726168732ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x636972656E65672ELL;
  if (v1 != 1)
  {
    v5 = 0x706F72447269612ELL;
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

uint64_t sub_1A9931300()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x796150726565702ELL;
  if (v1 != 5)
  {
    v3 = 0x495544442ELL;
  }

  v4 = 0x7465656D2ELL;
  if (v1 != 3)
  {
    v4 = 0x65726168732ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x636972656E65672ELL;
  if (v1 != 1)
  {
    v5 = 0x706F72447269612ELL;
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

uint64_t sub_1A99313D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1A9975EB0();
    if (v10)
    {
      v11 = sub_1A9975ED0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1A9975EC0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1A9975EB0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1A9975ED0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1A9975EC0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1A9931604(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1A9931794(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1A97B43C4(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1A99313D4(v14, a3, a4, &v13);
  v10 = v4;
  sub_1A97B43C4(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1A9931794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1A9975EB0();
  v11 = result;
  if (result)
  {
    result = sub_1A9975ED0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1A9975EC0();
  sub_1A99313D4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1A993184C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1A97B40FC(a3, a4);
          return sub_1A9931604(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s7Sharing9SFAirDropO06NearbyA11InteractionV5StateO1loiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - v7;
  v9 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6850, &qword_1A99AC360);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v42 - v23;
  v25 = *(v22 + 56);
  sub_1A992AB54(v42, &v42 - v23, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  sub_1A992AB54(v43, &v24[v25], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v27 = swift_getEnumCaseMultiPayload();
        if (v27 == 4 || v27 == 2)
        {
          goto LABEL_24;
        }

        if (v27 != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_13;
      }

      goto LABEL_25;
    }

    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_25;
    }

LABEL_24:
    sub_1A992B5F4(v24, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    return 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1A992AB54(v24, v19, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 == 1)
    {
      sub_1A9932D14(v19, v15, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      v35 = v13;
      sub_1A9932D14(&v24[v25], v13, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      v36 = v9;
      v37 = *(v9 + 24);
      if (*&v15[v37 + 8] || !*(v35 + v37 + 8))
      {
        sub_1A97C13A4(&v15[*(v9 + 20)], v8, &unk_1EB3B29B0, &qword_1A9990640);
        sub_1A992B5F4(v15, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        v38 = sub_1A99762C0();
        v39 = *(*(v38 - 8) + 48);
        v40 = v39(v8, 1, v38);
        sub_1A97B06FC(v8, &unk_1EB3B29B0, &qword_1A9990640);
        if (v40 == 1)
        {
          sub_1A97C13A4(v35 + *(v36 + 20), v6, &unk_1EB3B29B0, &qword_1A9990640);
          sub_1A992B5F4(v35, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
          v41 = v39(v6, 1, v38);
          sub_1A97B06FC(v6, &unk_1EB3B29B0, &qword_1A9990640);
          if (v41 != 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1A992B5F4(v35, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        }

        sub_1A992B5F4(v24, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
        return 0;
      }

      sub_1A992B5F4(v35, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      v31 = v15;
      v30 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext;
      goto LABEL_23;
    }

    if (v32 == 4 || v32 == 2)
    {
      v30 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext;
      v31 = v19;
      goto LABEL_23;
    }

    sub_1A992B5F4(v19, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    goto LABEL_25;
  }

  v29 = swift_getEnumCaseMultiPayload();
  if ((v29 - 2) < 3)
  {
    goto LABEL_24;
  }

  if (v29)
  {
LABEL_13:
    v30 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State;
    v31 = &v24[v25];
LABEL_23:
    sub_1A992B5F4(v31, v30);
    goto LABEL_24;
  }

LABEL_25:
  sub_1A97B06FC(v24, &qword_1EB3B6850, &qword_1A99AC360);
  return 0;
}

BOOL _s7Sharing9SFAirDropO06NearbyA11InteractionV5StateO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6850, &qword_1A99AC360);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v24 - v18;
  v20 = *(v17 + 56);
  sub_1A992AB54(a1, &v24 - v18, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  sub_1A992AB54(a2, &v19[v20], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1A992AB54(v19, v14, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1A9932D14(v14, v10, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        sub_1A9932D14(&v19[v20], v8, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        v22 = _s7Sharing9SFAirDropO06NearbyA11InteractionV17ConnectionContextV2eeoiySbAG_AGtFZ_0(v10, v8);
        sub_1A992B5F4(v8, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        sub_1A992B5F4(v10, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        sub_1A992B5F4(v19, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
        return v22;
      }

      sub_1A992B5F4(v14, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    }

    else if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_12;
    }

LABEL_16:
    sub_1A97B06FC(v19, &qword_1EB3B6850, &qword_1A99AC360);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_16;
  }

LABEL_12:
  sub_1A992B5F4(v19, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  return 1;
}

BOOL _s7Sharing9SFAirDropO06NearbyA11InteractionV17ConnectionContextV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1A99762C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v75 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6858, &qword_1A99AC368);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v75 - v21;
  if ((sub_1A9927FBC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v77 = v13;
  v78 = v20;
  v79 = v8;
  v23 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v82 = v5;
  v80 = v23;
  v24 = *(v23 + 20);
  v25 = *(v16 + 48);
  sub_1A97C13A4(&a1[v24], v22, &unk_1EB3B29B0, &qword_1A9990640);
  v81 = a2;
  v26 = &a2[v24];
  v27 = v82;
  sub_1A97C13A4(v26, &v22[v25], &unk_1EB3B29B0, &qword_1A9990640);
  v28 = *(v27 + 48);
  if (v28(v22, 1, v4) == 1)
  {
    if (v28(&v22[v25], 1, v4) != 1)
    {
      goto LABEL_7;
    }

    v76 = v28;
    sub_1A97B06FC(v22, &unk_1EB3B29B0, &qword_1A9990640);
  }

  else
  {
    sub_1A97C13A4(v22, v15, &unk_1EB3B29B0, &qword_1A9990640);
    if (v28(&v22[v25], 1, v4) == 1)
    {
      (*(v27 + 8))(v15, v4);
      goto LABEL_7;
    }

    v76 = v28;
    v30 = v79;
    (*(v27 + 32))(v79, &v22[v25], v4);
    sub_1A992AAB8(&qword_1EB3ACCD0, MEMORY[0x1E69695A8]);
    v31 = sub_1A99767A0();
    v32 = *(v27 + 8);
    v32(v30, v4);
    v32(v15, v4);
    sub_1A97B06FC(v22, &unk_1EB3B29B0, &qword_1A9990640);
    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  v34 = v80;
  v33 = v81;
  v35 = v80[6];
  v36 = &a1[v35];
  v37 = *&a1[v35 + 8];
  v38 = &v81[v35];
  v39 = *(v38 + 1);
  if (v37)
  {
    if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = v34[7];
  v41 = &a1[v40];
  v42 = *&a1[v40 + 8];
  v43 = &v33[v40];
  v44 = *(v43 + 1);
  if (v42)
  {
    if (!v44 || (*v41 != *v43 || v42 != v44) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v45 = v34[8];
  v46 = &a1[v45];
  v47 = *&a1[v45 + 8];
  v48 = &v33[v45];
  v49 = *(v48 + 1);
  if (v47)
  {
    if (!v49 || (*v46 != *v48 || v47 != v49) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  v50 = v34[9];
  v51 = &a1[v50];
  v52 = *&a1[v50 + 8];
  v53 = &v33[v50];
  v54 = *(v53 + 1);
  if (v52)
  {
    if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  v55 = v34[10];
  v56 = a1[v55];
  v57 = v33[v55];
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      return 0;
    }

LABEL_44:
    v58 = v34[11];
    if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
    {
      return 0;
    }

    v59 = v34[12];
    v60 = *(v16 + 48);
    v22 = v78;
    sub_1A97C13A4(&a1[v59], v78, &unk_1EB3B29B0, &qword_1A9990640);
    sub_1A97C13A4(&v33[v59], &v22[v60], &unk_1EB3B29B0, &qword_1A9990640);
    v61 = v76;
    if (v76(v22, 1, v4) == 1)
    {
      if (v61(&v22[v60], 1, v4) == 1)
      {
        sub_1A97B06FC(v22, &unk_1EB3B29B0, &qword_1A9990640);
LABEL_51:
        v67 = v34[13];
        v68 = &a1[v67];
        v70 = *&a1[v67];
        v69 = *(v68 + 1);
        v71 = &v81[v67];
        v73 = *v71;
        v72 = v71[1];
        if (v69 >> 60 == 15)
        {
          if (v72 >> 60 == 15)
          {
            sub_1A97C1554(v70, *(v68 + 1));
            sub_1A97C1554(v73, v72);
            sub_1A97D8688(v70, v69);
            return 1;
          }
        }

        else if (v72 >> 60 != 15)
        {
          sub_1A97C1554(v70, *(v68 + 1));
          sub_1A97C1554(v73, v72);
          v74 = sub_1A993184C(v70, v69, v73, v72);
          sub_1A97D8688(v73, v72);
          sub_1A97D8688(v70, v69);
          return (v74 & 1) != 0;
        }

        sub_1A97C1554(v70, *(v68 + 1));
        sub_1A97C1554(v73, v72);
        sub_1A97D8688(v70, v69);
        sub_1A97D8688(v73, v72);
        return 0;
      }
    }

    else
    {
      v62 = v77;
      sub_1A97C13A4(v22, v77, &unk_1EB3B29B0, &qword_1A9990640);
      if (v61(&v22[v60], 1, v4) != 1)
      {
        v63 = v82;
        v64 = v79;
        (*(v82 + 32))(v79, &v22[v60], v4);
        sub_1A992AAB8(&qword_1EB3ACCD0, MEMORY[0x1E69695A8]);
        v65 = sub_1A99767A0();
        v66 = *(v63 + 8);
        v66(v64, v4);
        v66(v62, v4);
        sub_1A97B06FC(v22, &unk_1EB3B29B0, &qword_1A9990640);
        if ((v65 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      (*(v82 + 8))(v62, v4);
    }

LABEL_7:
    sub_1A97B06FC(v22, &qword_1EB3B6858, &qword_1A99AC368);
    return 0;
  }

  result = 0;
  if (v57 != 2 && ((v57 ^ v56) & 1) == 0)
  {
    goto LABEL_44;
  }

  return result;
}

unint64_t sub_1A99329CC()
{
  result = qword_1EB3B65B0;
  if (!qword_1EB3B65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65B0);
  }

  return result;
}

unint64_t sub_1A9932A20()
{
  result = qword_1EB3B65B8;
  if (!qword_1EB3B65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65B8);
  }

  return result;
}

unint64_t sub_1A9932A74()
{
  result = qword_1EB3B65C8;
  if (!qword_1EB3B65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65C8);
  }

  return result;
}

unint64_t sub_1A9932AC8()
{
  result = qword_1EB3B65E8;
  if (!qword_1EB3B65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65E8);
  }

  return result;
}

unint64_t sub_1A9932B1C()
{
  result = qword_1EB3B65F0;
  if (!qword_1EB3B65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65F0);
  }

  return result;
}

unint64_t sub_1A9932B70()
{
  result = qword_1EB3B65F8;
  if (!qword_1EB3B65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65F8);
  }

  return result;
}

unint64_t sub_1A9932BC4()
{
  result = qword_1EB3B6648;
  if (!qword_1EB3B6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6648);
  }

  return result;
}

unint64_t sub_1A9932C18()
{
  result = qword_1EB3B6650;
  if (!qword_1EB3B6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6650);
  }

  return result;
}

unint64_t sub_1A9932C6C()
{
  result = qword_1EB3B6658;
  if (!qword_1EB3B6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6658);
  }

  return result;
}

unint64_t sub_1A9932CC0()
{
  result = qword_1EB3B6660;
  if (!qword_1EB3B6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6660);
  }

  return result;
}

uint64_t sub_1A9932D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A9932D7C()
{
  result = qword_1EB3B6668;
  if (!qword_1EB3B6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6668);
  }

  return result;
}

unint64_t sub_1A9932DD0()
{
  result = qword_1EB3B6678;
  if (!qword_1EB3B6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6678);
  }

  return result;
}

unint64_t sub_1A9932E24()
{
  result = qword_1EB3B6680;
  if (!qword_1EB3B6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6680);
  }

  return result;
}

unint64_t sub_1A9932E78()
{
  result = qword_1EB3B6688;
  if (!qword_1EB3B6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6688);
  }

  return result;
}

unint64_t sub_1A9932ECC()
{
  result = qword_1EB3B66C0;
  if (!qword_1EB3B66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B66C0);
  }

  return result;
}

unint64_t sub_1A9932F20()
{
  result = qword_1EB3B66D0;
  if (!qword_1EB3B66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B66D0);
  }

  return result;
}

unint64_t sub_1A9932F74()
{
  result = qword_1EB3B66E0;
  if (!qword_1EB3B66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B66E0);
  }

  return result;
}

unint64_t sub_1A9932FCC()
{
  result = qword_1EB3B6708;
  if (!qword_1EB3B6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6708);
  }

  return result;
}

unint64_t sub_1A9933024()
{
  result = qword_1EB3B6710;
  if (!qword_1EB3B6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6710);
  }

  return result;
}

void sub_1A9933108()
{
  sub_1A99762C0();
  if (v0 <= 0x3F)
  {
    sub_1A97D8914(319, &qword_1EB3AC8A8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A99331DC()
{
  result = sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SFClientIdentity();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A9933298()
{
  result = sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A9933334()
{
  sub_1A99762C0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction.State(319);
    if (v1 <= 0x3F)
    {
      sub_1A9976230();
      if (v2 <= 0x3F)
      {
        sub_1A993357C(319, &qword_1EB3AC8C8, MEMORY[0x1E69E87E8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A993344C()
{
  sub_1A993357C(319, &qword_1EB3ACCC8, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    sub_1A97D8914(319, &qword_1EB3AB718);
    if (v1 <= 0x3F)
    {
      sub_1A97D8914(319, &qword_1EB3AB698);
      if (v2 <= 0x3F)
      {
        sub_1A99762C0();
        if (v3 <= 0x3F)
        {
          sub_1A97D8914(319, &qword_1EB3AC8A8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A993357C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A99770A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s24NearbySharingInteractionV17ConnectionContextV15InteractionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s24NearbySharingInteractionV17ConnectionContextV15InteractionTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s24NearbySharingInteractionV11FailureTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s24NearbySharingInteractionV11FailureTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A9933884(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A99338A0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1A99338C8()
{
  result = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A9933A60()
{
  result = qword_1EB3B6720;
  if (!qword_1EB3B6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6720);
  }

  return result;
}

unint64_t sub_1A9933AB8()
{
  result = qword_1EB3B6728;
  if (!qword_1EB3B6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6728);
  }

  return result;
}

unint64_t sub_1A9933B10()
{
  result = qword_1EB3B6730;
  if (!qword_1EB3B6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6730);
  }

  return result;
}

unint64_t sub_1A9933B68()
{
  result = qword_1EB3B6738;
  if (!qword_1EB3B6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6738);
  }

  return result;
}

unint64_t sub_1A9933BC0()
{
  result = qword_1EB3B6740;
  if (!qword_1EB3B6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6740);
  }

  return result;
}

unint64_t sub_1A9933C18()
{
  result = qword_1EB3B6748;
  if (!qword_1EB3B6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6748);
  }

  return result;
}

unint64_t sub_1A9933C70()
{
  result = qword_1EB3B6750;
  if (!qword_1EB3B6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6750);
  }

  return result;
}

unint64_t sub_1A9933CC8()
{
  result = qword_1EB3B6758;
  if (!qword_1EB3B6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6758);
  }

  return result;
}

unint64_t sub_1A9933D20()
{
  result = qword_1EB3B6760;
  if (!qword_1EB3B6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6760);
  }

  return result;
}

unint64_t sub_1A9933D78()
{
  result = qword_1EB3B6768;
  if (!qword_1EB3B6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6768);
  }

  return result;
}

unint64_t sub_1A9933DD0()
{
  result = qword_1EB3B6770;
  if (!qword_1EB3B6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6770);
  }

  return result;
}

unint64_t sub_1A9933E28()
{
  result = qword_1EB3B6778;
  if (!qword_1EB3B6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6778);
  }

  return result;
}

unint64_t sub_1A9933E80()
{
  result = qword_1EB3B6780;
  if (!qword_1EB3B6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6780);
  }

  return result;
}

unint64_t sub_1A9933ED8()
{
  result = qword_1EB3B6788;
  if (!qword_1EB3B6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6788);
  }

  return result;
}

unint64_t sub_1A9933F30()
{
  result = qword_1EB3B6790;
  if (!qword_1EB3B6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6790);
  }

  return result;
}

unint64_t sub_1A9933F88()
{
  result = qword_1EB3B6798;
  if (!qword_1EB3B6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6798);
  }

  return result;
}

unint64_t sub_1A9933FE0()
{
  result = qword_1EB3B67A0;
  if (!qword_1EB3B67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67A0);
  }

  return result;
}

unint64_t sub_1A9934038()
{
  result = qword_1EB3B67A8;
  if (!qword_1EB3B67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67A8);
  }

  return result;
}

unint64_t sub_1A9934090()
{
  result = qword_1EB3B67B0;
  if (!qword_1EB3B67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67B0);
  }

  return result;
}

unint64_t sub_1A99340E8()
{
  result = qword_1EB3B67B8;
  if (!qword_1EB3B67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67B8);
  }

  return result;
}

unint64_t sub_1A9934140()
{
  result = qword_1EB3B67C0;
  if (!qword_1EB3B67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67C0);
  }

  return result;
}

unint64_t sub_1A9934198()
{
  result = qword_1EB3B67C8;
  if (!qword_1EB3B67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67C8);
  }

  return result;
}

unint64_t sub_1A99341F0()
{
  result = qword_1EB3B67D0;
  if (!qword_1EB3B67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67D0);
  }

  return result;
}

unint64_t sub_1A9934248()
{
  result = qword_1EB3B67D8;
  if (!qword_1EB3B67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67D8);
  }

  return result;
}

unint64_t sub_1A99342A0()
{
  result = qword_1EB3B67E0;
  if (!qword_1EB3B67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67E0);
  }

  return result;
}

unint64_t sub_1A99342F8()
{
  result = qword_1EB3B67E8;
  if (!qword_1EB3B67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67E8);
  }

  return result;
}

unint64_t sub_1A9934350()
{
  result = qword_1EB3B67F0;
  if (!qword_1EB3B67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67F0);
  }

  return result;
}

unint64_t sub_1A99343A8()
{
  result = qword_1EB3B67F8;
  if (!qword_1EB3B67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67F8);
  }

  return result;
}

unint64_t sub_1A9934400()
{
  result = qword_1EB3B6800;
  if (!qword_1EB3B6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6800);
  }

  return result;
}

unint64_t sub_1A9934458()
{
  result = qword_1EB3B6808;
  if (!qword_1EB3B6808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6808);
  }

  return result;
}

unint64_t sub_1A99344B0()
{
  result = qword_1EB3B6810;
  if (!qword_1EB3B6810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6810);
  }

  return result;
}

unint64_t sub_1A9934508()
{
  result = qword_1EB3B6818;
  if (!qword_1EB3B6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6818);
  }

  return result;
}

unint64_t sub_1A9934560()
{
  result = qword_1EB3B6820;
  if (!qword_1EB3B6820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6820);
  }

  return result;
}

unint64_t sub_1A99345B8()
{
  result = qword_1EB3B6828;
  if (!qword_1EB3B6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6828);
  }

  return result;
}

unint64_t sub_1A9934610()
{
  result = qword_1EB3B6830;
  if (!qword_1EB3B6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6830);
  }

  return result;
}

unint64_t sub_1A9934668()
{
  result = qword_1EB3B6838;
  if (!qword_1EB3B6838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6838);
  }

  return result;
}

unint64_t sub_1A99346C0()
{
  result = qword_1EB3B6840;
  if (!qword_1EB3B6840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6840);
  }

  return result;
}

unint64_t sub_1A9934718()
{
  result = qword_1EB3ABB70;
  if (!qword_1EB3ABB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB70);
  }

  return result;
}

unint64_t sub_1A9934770()
{
  result = qword_1EB3ABB78;
  if (!qword_1EB3ABB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB78);
  }

  return result;
}

unint64_t sub_1A99347C8()
{
  result = qword_1EB3ABB98;
  if (!qword_1EB3ABB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB98);
  }

  return result;
}

unint64_t sub_1A9934820()
{
  result = qword_1EB3ABBA0;
  if (!qword_1EB3ABBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBA0);
  }

  return result;
}

unint64_t sub_1A9934878()
{
  result = qword_1EB3ABBB0;
  if (!qword_1EB3ABBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBB0);
  }

  return result;
}

unint64_t sub_1A99348D0()
{
  result = qword_1EB3ABBB8;
  if (!qword_1EB3ABBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBB8);
  }

  return result;
}

unint64_t sub_1A9934928()
{
  result = qword_1EB3ABBC0;
  if (!qword_1EB3ABBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBC0);
  }

  return result;
}

unint64_t sub_1A9934980()
{
  result = qword_1EB3ABBC8;
  if (!qword_1EB3ABBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBC8);
  }

  return result;
}

unint64_t sub_1A99349D8()
{
  result = qword_1EB3ABBD0;
  if (!qword_1EB3ABBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBD0);
  }

  return result;
}

unint64_t sub_1A9934A30()
{
  result = qword_1EB3ABBD8;
  if (!qword_1EB3ABBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBD8);
  }

  return result;
}

uint64_t sub_1A9934A84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766973736170 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A9934BA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54676E696C6C6F70 && a2 == 0xEB00000000657079 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E6BB0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A9934D14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E7200 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5540 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6341656D61537369 && a2 == 0xED0000746E756F63 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E8650 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E8670 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
  {

    return 9;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1A993505C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A99E8690 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E84B0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465646E65 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A9935228(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEE00656D69546E6FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A99E86B0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616974696E497369 && a2 == 0xEB00000000726F74)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A99777E0();

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

unint64_t sub_1A9935430()
{
  result = qword_1EB3B6848;
  if (!qword_1EB3B6848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6848);
  }

  return result;
}

uint64_t SFNoThrowAsyncSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  return sub_1A993559C(a1, a2, a3, a4, sub_1A9935B4C, a5);
}

{
  return sub_1A993559C(a1, a2, a3, a4, sub_1A9935BE4, a5);
}

uint64_t sub_1A99354B4()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B6860);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B6860);
  if (qword_1EB3B0B18 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3B3638);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1A993559C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v14 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  result = (*(v12 + 32))(&v15[v14], a1, a3);
  *a6 = a5;
  a6[1] = v15;
  return result;
}

void *sub_1A993567C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = sub_1A9976500();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  sub_1A99764F0();
  v13 = swift_allocBox();
  MEMORY[0x1AC589270](a2, a3);
  sub_1A99764D0();
  (*(v9 + 8))(v12, v8);
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = v13;
  *a4 = &unk_1A99AC638;
  a4[1] = result;
  return result;
}

uint64_t sub_1A99357D0(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1A99764F0();
  v1[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A9935858, 0, 0);
}

uint64_t sub_1A9935858()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(MEMORY[0x1E695BF28] + 4);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1A9935908;
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x1EEDB5C50](v6, v4);
}

uint64_t sub_1A9935908()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  swift_endAccess();
  v2 = *(v4 + 8);

  return v2();
}

void *sub_1A9935A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v14 = swift_allocBox();
  (*(v10 + 16))(v13, a1, a3);
  sub_1A9976D30();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = v14;
  *a5 = &unk_1A99AC648;
  a5[1] = result;
  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A9935C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a1;
  v5[16] = swift_getAssociatedTypeWitness();
  v5[17] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A9935CE4, 0, 0);
}

uint64_t sub_1A9935CE4()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1A9935DC8;
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[13];

  return MEMORY[0x1EEE6D8C8](v10, v8, AssociatedConformanceWitness);
}

uint64_t sub_1A9935DC8()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  *(v3 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9935F04, 0, 0);
  }

  else
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1A9935F04()
{
  v22 = v0;
  swift_endAccess();
  if (qword_1EB3B0B88 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_1A99764A0();
  __swift_project_value_buffer(v2, qword_1EB3B6860);
  v3 = v1;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[10];
    v12 = sub_1A99778E0();
    v14 = sub_1A97AF148(v12, v13, v21);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1A9662000, v4, v5, "Unexpected error by sequence in SFNoThrowAsyncSequence {error: %s}", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1AC58D2C0](v8, -1, -1);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
  }

  v15 = v0[19];
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000035, 0x80000001A99E86F0);
  swift_getErrorValue();
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[7];
  v19 = sub_1A99778E0();
  MEMORY[0x1AC5895B0](v19);

  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  return sub_1A9977470();
}

uint64_t SFNoThrowAsyncSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A97E0380, 0, 0);
}

uint64_t sub_1A9936168(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97BD530;

  return SFNoThrowAsyncSequence.AsyncIterator.next()(a1);
}

uint64_t sub_1A9936200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A99362CC;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1A99362CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t SFNoThrowAsyncSequence.makeAsyncIterator()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t SFThrowingAsyncSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  return sub_1A9936884(a1, a2, a3, a4, a5, sub_1A9936574, a6);
}

{
  return sub_1A9936884(a1, a2, a3, a4, a5, sub_1A9936B3C, a6);
}

void *sub_1A9936410@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v18 = a2;
  v9 = sub_1A99765B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1A99765A0();
  v14 = swift_allocBox();
  MEMORY[0x1AC589260](a3, a4);
  sub_1A9976580();
  (*(v10 + 8))(v13, v9);
  result = swift_allocObject();
  v16 = v18;
  result[2] = a1;
  result[3] = v16;
  result[4] = a3;
  result[5] = a4;
  result[6] = v14;
  *a5 = &unk_1A99AC628;
  a5[1] = result;
  return result;
}

uint64_t sub_1A993658C(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1A99765A0();
  v1[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A9936614, 0, 0);
}

uint64_t sub_1A9936614()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(MEMORY[0x1E695BFB8] + 4);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1A99366C4;
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x1EEDB5D38](v6, v4);
}

uint64_t sub_1A99366C4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9936800, 0, 0);
  }

  else
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1A9936800()
{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_1A9936884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  result = (*(v14 + 32))(&v17[v16], a1, a4);
  *a7 = a6;
  a7[1] = v17;
  return result;
}

void *sub_1A9936968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v16 = swift_allocBox();
  (*(v12 + 16))(v15, a1, a4);
  sub_1A9976D30();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  result[6] = v16;
  *a6 = &unk_1A99AC618;
  a6[1] = result;
  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A9936B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a1;
  v6[8] = swift_getAssociatedTypeWitness();
  v6[9] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A97DD748, 0, 0);
}

uint64_t SFThrowingAsyncSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A97E0380, 0, 0);
}

uint64_t sub_1A9936C58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2638;

  return SFThrowingAsyncSequence.AsyncIterator.next()(a1);
}

uint64_t sub_1A9936D34()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9936D88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9936DDC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9936E30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9936E84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A9936B9C(a1, v8, v4, v5, v6, v7);
}

uint64_t sub_1A9936F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2638;

  return sub_1A993658C(a1);
}

uint64_t sub_1A9937014(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2638;

  return sub_1A99357D0(a1);
}

uint64_t sub_1A99370D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A9935C44(a1, v6, v4, v5, v7);
}

uint64_t SFAirDrop.TXTRecord.init(txtRecord:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_1A9976600();
  if (!v5)
  {
    v15 = sub_1A99765F0();
    result = (*(*(v15 - 8) + 8))(a1, v15);
LABEL_22:
    v16 = 2;
LABEL_69:
    *a2 = v16;
    return result;
  }

  v6 = v5;
  v7 = HIBYTE(v5) & 0xF;
  v8 = result & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v33 = sub_1A99765F0();
    (*(*(v33 - 8) + 8))(a1, v33);

    goto LABEL_22;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v36 = 0;
    v11 = sub_1A99376CC(result, v6, 10);
    v31 = v34;
LABEL_66:
    v32 = sub_1A99765F0();
    (*(*(v32 - 8) + 8))(a1, v32);

    if (v31 & 1 | (v11 > 3))
    {
      v16 = 2;
    }

    else
    {
      v16 = v11;
    }

    goto LABEL_69;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1A9977340();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v20 = (result + 1);
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_64;
              }

              v22 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_64;
              }

              v11 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_64;
              }

              ++v20;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_75;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        v11 = 0;
        if (result)
        {
          while (1)
          {
            v26 = *result - 48;
            if (v26 > 9)
            {
              goto LABEL_64;
            }

            v27 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_64;
            }

            v11 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_64;
            }

            ++result;
            if (!--v8)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      v11 = 0;
      LOBYTE(v7) = 1;
      goto LABEL_65;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v11 = 0;
        if (result)
        {
          v12 = (result + 1);
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_64;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_64;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_64;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v7) = 0;
LABEL_65:
        v36 = v7;
        v31 = v7;
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v35[0] = result;
  v35[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v7)
      {
        v11 = 0;
        v28 = v35;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v7)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v7)
    {
      if (--v7)
      {
        v11 = 0;
        v17 = v35 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v7)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_74;
  }

  if (v7)
  {
    if (--v7)
    {
      v11 = 0;
      v23 = v35 + 1;
      while (1)
      {
        v24 = *v23 - 48;
        if (v24 > 9)
        {
          break;
        }

        v25 = 10 * v11;
        if ((v11 * 10) >> 64 != (10 * v11) >> 63)
        {
          break;
        }

        v11 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        ++v23;
        if (!--v7)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t SFAirDrop.TXTRecord.addToEndpoint(_:)()
{
  v1 = *v0;
  dictionary_with_initial_length = nw_txt_record_create_dictionary_with_initial_length();
  sub_1A9977730();
  v3 = sub_1A99768E0();
  v4 = sub_1A9976890();

  nw_txt_record_set_key(dictionary_with_initial_length, "deviceRelationship", (v4 + 32), v3);

  nw_endpoint_set_txt_record();
  return swift_unknownObjectRelease();
}

void *sub_1A9937658(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1238, &unk_1A9991A40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1A99376CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1A99769C0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1A99381E4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1A9977340();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1A9937C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1A99769C0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1A99381E4();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1A9977340();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
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

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1A99381E4()
{
  v0 = sub_1A99769D0();
  v4 = sub_1A9938264(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1A9938264(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1A99768C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1A9977130();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1A9937658(v9, 0);
  v12 = sub_1A99383BC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1A99768C0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1A9977340();
LABEL_4:

  return sub_1A99768C0();
}

unint64_t sub_1A99383BC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1A99385DC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1A9976960();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1A9977340();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1A99385DC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1A9976940();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A99385DC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A9976970();
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
    v5 = MEMORY[0x1AC5895F0](15, a1 >> 16);
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

uint64_t combineLatest<A, B, C, D, E>(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  v45 = a8;
  v54 = a5;
  v47 = a2;
  v56 = a9;
  v55 = a12;
  v53 = a13;
  v51 = a11;
  v52 = a4;
  v48 = *(a11 - 8);
  v49 = a3;
  v16 = *(v48 + 64);
  v50 = a14;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v46 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a10 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v21);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v27);
  v35 = &v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v39 = &v45 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v39);
  (*(v31 + 16))(v35, v47, a7);
  v41 = v45;
  (*(v25 + 16))(v29, v49, v45);
  (*(v19 + 16))(v23, v52, a10);
  v42 = v46;
  v43 = v51;
  (*(v48 + 16))(v46, v54, v51);
  return sub_1A99389D8(v39, v35, v29, v23, v42, a6, a7, v41, v56, a10, v43);
}

uint64_t sub_1A99389D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v17 = type metadata accessor for AsyncCombineLatest5Sequence();
  (*(*(a7 - 8) + 32))(a9 + v17[25], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v17[26], a3, a8);
  (*(*(a10 - 8) + 32))(a9 + v17[27], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v17[28], a5, a11);
}

uint64_t AsyncCombineLatest5Sequence.Iterator.next()(uint64_t a1, void *a2)
{
  *(v2 + 208) = a1;
  v27 = a2[2];
  v28 = a2[7];
  *(v2 + 216) = swift_getAssociatedTypeWitness();
  v25 = a2[3];
  v26 = a2[8];
  *(v2 + 224) = swift_getAssociatedTypeWitness();
  v23 = a2[4];
  v24 = a2[9];
  *(v2 + 232) = swift_getAssociatedTypeWitness();
  *(v2 + 240) = swift_getTupleTypeMetadata3();
  v4 = a2[10];
  v5 = a2[5];
  *(v2 + 248) = swift_getAssociatedTypeWitness();
  v6 = a2[11];
  v7 = a2[6];
  *(v2 + 256) = swift_getAssociatedTypeWitness();
  *(v2 + 264) = swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v2 + 272) = TupleTypeMetadata2;
  v9 = sub_1A99770A0();
  *(v2 + 280) = v9;
  v10 = *(v9 - 8);
  *(v2 + 288) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  *(v2 + 296) = v12;
  v13 = *(TupleTypeMetadata2 - 8);
  *(v2 + 304) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();
  v15 = swift_task_alloc();
  *(v2 + 16) = v27;
  *(v2 + 360) = v15;
  *(v2 + 24) = v25;
  *(v2 + 32) = v23;
  *(v2 + 40) = v28;
  *(v2 + 48) = v26;
  *(v2 + 56) = v24;
  v16 = type metadata accessor for AsyncCombineLatest3Sequence();
  *&v17 = v5;
  *(&v17 + 1) = v7;
  *&v18 = v4;
  *(&v18 + 1) = v6;
  *(v2 + 160) = v18;
  *(v2 + 144) = v17;
  v19 = type metadata accessor for AsyncCombineLatest2Sequence();
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  *(v2 + 176) = v16;
  *(v2 + 184) = v19;
  *(v2 + 192) = WitnessTable;
  *(v2 + 200) = v21;
  type metadata accessor for AsyncCombineLatest2Sequence.Iterator();
  *v15 = v2;
  v15[1] = sub_1A9938F24;

  return AsyncCombineLatest2Sequence.Iterator.next()(v12);
}

uint64_t sub_1A9938F24()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_1A99397B4;
  }

  else
  {
    v3 = sub_1A9939038;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9939038()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 272);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 232);
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    v64 = v6;
    v66 = *(v0 + 248);
    (*(*(v0 + 288) + 8))(v1, *(v0 + 280));
    *(v0 + 64) = v64;
    *(v0 + 80) = v4;
    *(v0 + 88) = v66;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    (*(*(TupleTypeMetadata - 8) + 56))(v5, 1, 1, TupleTypeMetadata);
  }

  else
  {
    v54 = *(v0 + 352);
    v59 = *(v0 + 336);
    v60 = *(v0 + 344);
    v58 = *(v0 + 328);
    v57 = *(v0 + 320);
    v51 = *(v0 + 312);
    v8 = *(v0 + 256);
    v29 = *(v0 + 264);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v11 = *(v0 + 224);
    v12 = *(v0 + 232);
    v63 = v8;
    v13 = *(v0 + 216);
    v31 = *(v0 + 208);
    v50 = *(v2 + 32);
    v50();
    *(v0 + 104) = v13;
    *(v0 + 112) = v11;
    *(v0 + 120) = v12;
    *(v0 + 128) = v9;
    *(v0 + 136) = v8;
    v30 = swift_getTupleTypeMetadata();
    v61 = v30[12];
    v35 = v30[16];
    v37 = v30[20];
    v38 = v30[24];
    v14 = *(v2 + 16);
    v14(v60, v54, v3);
    v48 = *(v10 + 64);
    v49 = *(v10 + 48);
    v47 = v60 + *(v3 + 48);
    v46 = *(v29 + 48);
    v67 = *(v13 - 8);
    (*(v67 + 32))(v31, v60, v13);
    v14(v59, v54, v3);
    v44 = v59 + *(v3 + 48);
    v45 = *(v10 + 64);
    v43 = *(v29 + 48);
    v65 = *(v11 - 8);
    (*(v65 + 32))(v31 + v61, v59 + *(v10 + 48));
    v14(v58, v54, v3);
    v41 = v58 + *(v3 + 48);
    v42 = *(v10 + 48);
    v40 = *(v29 + 48);
    v62 = *(v12 - 8);
    (*(v62 + 32))(v31 + v35, v58 + *(v10 + 64));
    v14(v57, v54, v3);
    v34 = *(v10 + 64);
    v36 = *(v10 + 48);
    v32 = v57 + *(v3 + 48);
    v33 = *(v29 + 48);
    v15 = *(v9 - 8);
    (*(v15 + 32))(v31 + v37);
    (v50)(v51, v54, v3);
    v52 = *(v10 + 48);
    v55 = *(v10 + 64);
    v16 = v51 + *(v3 + 48);
    v17 = *(v63 - 8);
    (*(v17 + 32))(v31 + v38, v16 + *(v29 + 48));
    (*(*(v30 - 1) + 56))(v31, 0, 1);
    v39 = *(v15 + 8);
    v39(v16, v9);
    v18 = *(v62 + 8);
    v18(v51 + v55, v12);
    v56 = *(v65 + 8);
    v56(v51 + v52, v11);
    v53 = *(v67 + 8);
    v53(v51, v13);
    v19 = *(v17 + 8);
    v19(v32 + v33, v63);
    v18(v57 + v34, v12);
    v56(v57 + v36, v11);
    v53(v57, v13);
    v19(v41 + v40, v63);
    v39(v41, v9);
    v56(v58 + v42, v11);
    v53(v58, v13);
    v19(v44 + v43, v63);
    v39(v44, v9);
    v18(v59 + v45, v12);
    v53(v59, v13);
    v19(v47 + v46, v63);
    v39(v47, v9);
    v18(v60 + v48, v12);
    v56(v60 + v49, v11);
  }

  v21 = *(v0 + 344);
  v20 = *(v0 + 352);
  v23 = *(v0 + 328);
  v22 = *(v0 + 336);
  v25 = *(v0 + 312);
  v24 = *(v0 + 320);
  v26 = *(v0 + 296);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1A99397B4()
{
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[37];

  v8 = v0[1];
  v9 = v0[46];

  return v8();
}

uint64_t sub_1A9939864(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2638;

  return AsyncCombineLatest5Sequence.Iterator.next()(a1, a2);
}

uint64_t sub_1A993990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v12 = *(a5 + 56);
  v13 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[4] = v15;
  v16 = *(v15 + 64) + 15;
  v6[5] = swift_task_alloc();
  v17 = *(MEMORY[0x1E69E85D8] + 4);
  v18 = swift_task_alloc();
  v6[6] = v18;
  *v18 = v6;
  v18[1] = sub_1A97FF5F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t AsyncCombineLatest5Sequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = *(a1 + 16);
  v36 = *(a1 + 24);
  v37 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v34 = *(a1 + 56);
  v35 = v6;
  v33 = v7;
  v30 = *(a1 + 72);
  v39 = v5;
  v40 = v36;
  v41 = v6;
  v42 = v34;
  v43 = v7;
  v44 = v30;
  v8 = type metadata accessor for AsyncCombineLatest3Sequence();
  v9 = *(a1 + 80);
  v31 = *(a1 + 40);
  v32 = v9;
  v10 = type metadata accessor for AsyncCombineLatest2Sequence();
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v39 = v8;
  v40 = v10;
  v41 = WitnessTable;
  v42 = v28;
  v27 = type metadata accessor for AsyncCombineLatest2Sequence();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v27);
  v15 = &v27 - v14;
  v16 = *(v10 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &v27 - v19;
  v21 = *(v8 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v27 - v23;
  combineLatest<A, B, C>(_:_:_:)(v3, v3 + *(a1 + 100), v3 + *(a1 + 104), v37, v36, v35, v34, v33, &v27 - v23);
  combineLatest<A, B>(_:_:)(v3 + *(a1 + 108), v3 + *(a1 + 112), v31, *(&v31 + 1), v20);
  combineLatest<A, B>(_:_:)(v24, v20, v8, v10, v15);
  v25 = v27;
  AsyncCombineLatest2Sequence.makeAsyncIterator()(v27, &v39);
  (*(v11 + 8))(v15, v25);
  (*(v16 + 8))(v20, v10);
  result = (*(v21 + 8))(v24, v8);
  *v38 = v39;
  return result;
}

uint64_t sub_1A9939D7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A9939E3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AsyncCombineLatest5Sequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1A9939EA4(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A9939F84(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v42 = *(a3[2] - 8);
  v4 = *(v42 + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v42 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3[6] - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(*(a3[4] - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(a3[2] - 8) + 64) + v17;
  v25 = *(*(v8 - 8) + 64) + v22;
  v26 = a2 - v23;
  if (a2 > v23)
  {
    v27 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
    v28 = 8 * v27;
    if (v27 <= 3)
    {
      v30 = ((v26 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v30))
      {
        v29 = *(a1 + v27);
        if (!v29)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 > 0xFF)
      {
        v29 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 < 2)
      {
LABEL_36:
        if (v23)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    v29 = *(a1 + v27);
    if (!*(a1 + v27))
    {
      goto LABEL_36;
    }

LABEL_23:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v23 + (v33 | v31) + 1;
  }

LABEL_37:
  if (v4 == v23)
  {
    v34 = *(v42 + 48);

    return v34();
  }

  v36 = (a1 + v24) & ~v17;
  if (v6 == v23)
  {
    v37 = *(v5 + 48);
    v38 = *(v5 + 84);
    v39 = a3[3];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v10 == v23)
  {
    v37 = *(v9 + 48);
    v38 = *(v9 + 84);
    v39 = a3[4];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v13 == v23)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = a3[5];

    return v37(v36, v38, v39);
  }

  v40 = *(v15 + 48);
  v41 = (v25 + v36) & ~v22;

  return v40(v41, v16);
}

char *sub_1A993A424(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v42 = a4[3];
  v43 = *(a4[2] - 8);
  v5 = *(v43 + 84);
  v6 = *(v42 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v43 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a4[5];
  v41 = a4[4];
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4[6] - 8);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v6 + 80);
  v19 = *(*(v42 - 8) + 64);
  v20 = *(v10 + 80);
  v21 = *(*(v41 - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(*(v9 - 8) + 64);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  v26 = v23 + v24;
  v27 = ((v23 + v24 + ((v21 + v22 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20)) & ~v22)) & ~v24) + *(*(a4[6] - 8) + 64);
  v28 = a3 >= v25;
  v29 = a3 - v25;
  if (v29 != 0 && v28)
  {
    if (v27 <= 3)
    {
      v34 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v34))
      {
        v30 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 < a2)
  {
    v31 = ~v25 + a2;
    if (v27 < 4)
    {
      v33 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v36 = v31 & ~(-1 << (8 * v27));
        v37 = result;
        bzero(result, v27);
        result = v37;
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v37 = v36;
            if (v30 > 1)
            {
LABEL_60:
              if (v30 == 2)
              {
                *&result[v27] = v33;
              }

              else
              {
                *&result[v27] = v33;
              }

              return result;
            }
          }

          else
          {
            *v37 = v31;
            if (v30 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v37 = v36;
        v37[2] = BYTE2(v36);
      }

      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = result;
      bzero(result, v27);
      result = v32;
      *v32 = v31;
      v33 = 1;
      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v30)
    {
      result[v27] = v33;
    }

    return result;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&result[v27] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  result[v27] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v5 == v25)
  {
    v38 = *(v43 + 56);

    return v38();
  }

  else
  {
    v39 = &result[v17 + v18] & ~v18;
    if (v7 == v25)
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v39 = (v39 + v19 + v20) & ~v20;
      if (v11 == v25)
      {
        v40 = *(v10 + 56);
      }

      else
      {
        v39 = (v39 + v21 + v22) & ~v22;
        if (v14 == v25)
        {
          v40 = *(v13 + 56);
        }

        else
        {
          v40 = *(v16 + 56);
          v39 = (v26 + v39) & ~v24;
        }
      }
    }

    return v40(v39);
  }
}

uint64_t sub_1A993A954()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t SFProgressTask.initialValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for SFProgressContinuation();
  v8 = *(*(v6 - 8) + 16);
  v9 = v4 + *(v7 + 44);

  return v8(a2, v9, v6);
}

uint64_t SFProgressTask.finalValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v5 = sub_1A9975F80();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A40, &qword_1A99983B0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = sub_1A9976020();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = *(v4 - 8);
  v4 -= 8;
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v14 = *(v4 + 24);
  v3[18] = v14;
  v15 = *(v14 - 8);
  v3[19] = v15;
  v16 = *(v15 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = *(v4 + 32);
  v17 = type metadata accessor for SFProgressContinuation.Value();
  v3[24] = v17;
  v18 = *(v17 - 8);
  v3[25] = v18;
  v19 = *(v18 + 64) + 15;
  v3[26] = swift_task_alloc();
  v20 = sub_1A99770A0();
  v3[27] = v20;
  v21 = *(v20 - 8);
  v3[28] = v21;
  v22 = *(v21 + 64) + 15;
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v3[30] = sub_1A9976550();
  v3[31] = swift_getWitnessTable();
  v23 = sub_1A99765B0();
  v3[32] = v23;
  v24 = *(v23 - 8);
  v3[33] = v24;
  v25 = *(v24 + 64) + 15;
  v3[34] = swift_task_alloc();
  v26 = sub_1A99765A0();
  v3[35] = v26;
  v27 = *(v26 - 8);
  v3[36] = v27;
  v28 = *(v27 + 64) + 15;
  v3[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A993AE74, 0, 0);
}

uint64_t sub_1A993AE74()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 184);
  v8 = *(v0 + 144);
  v9 = *(v0 + 48);
  v10 = *(*(v0 + 40) + 36);
  *(v0 + 328) = v10;
  v11 = v9 + v10;
  v12 = type metadata accessor for SFProgressContinuation();
  *(v0 + 304) = v12;
  v13 = *(v11 + *(v12 + 40));
  *(v0 + 312) = v13;
  *(v0 + 16) = v13;
  MEMORY[0x1AC589260](v6, v5);
  sub_1A9976580();
  (*(v3 + 8))(v2, v4);
  v14 = *(v0 + 280);
  v15 = *(MEMORY[0x1E69E85D8] + 4);
  v16 = swift_task_alloc();
  *(v0 + 320) = v16;
  WitnessTable = swift_getWitnessTable();
  *v16 = v0;
  v16[1] = sub_1A993AFDC;
  v18 = *(v0 + 296);
  v19 = *(v0 + 280);
  v20 = *(v0 + 232);

  return MEMORY[0x1EEE6D8E0](v20, 0, 0, v19, WitnessTable);
}

uint64_t sub_1A993AFDC()
{
  v2 = *(*v1 + 320);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1A993BA4C;
  }

  else
  {
    v3 = sub_1A993B0EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A993B0EC()
{
  v122 = v0;
  v1 = *(v0 + 232);
  if ((*(*(v0 + 200) + 48))(v1, 1, *(v0 + 192)) == 1)
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 208);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
    sub_1A9976530();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = *(v0 + 296);
        v6 = *(v0 + 272);
        v7 = *(v0 + 232);
        v8 = *(v0 + 176);
        v10 = *(v0 + 160);
        v9 = *(v0 + 168);
        v11 = *(v0 + 128);
        v12 = *(v0 + 136);
        log = *(v0 + 120);
        v109 = *(v0 + 104);
        v113 = *(v0 + 80);
        v117 = *(v0 + 72);
        (*(*(*(v0 + 184) - 8) + 32))(*(v0 + 32), *(v0 + 208));

        v13 = *(v0 + 8);
LABEL_18:

        return v13();
      }

      v120 = **(v0 + 208);
      swift_willThrow();
    }

    else
    {
      (*(*(v0 + 152) + 32))(*(v0 + 176), *(v0 + 208), *(v0 + 144));
      if (sub_1A9976CC0())
      {
        if (qword_1EB3B0B90 != -1)
        {
          swift_once();
        }

        v21 = *(v0 + 168);
        v22 = *(v0 + 144);
        v23 = *(v0 + 152);
        v24 = *(v0 + 136);
        v110 = *(v0 + 128);
        v114 = *(v0 + 176);
        v25 = *(v0 + 112);
        v118 = *(v0 + 120);
        v27 = *(v0 + 40);
        v26 = *(v0 + 48);
        v28 = sub_1A99764A0();
        __swift_project_value_buffer(v28, qword_1EB3B6A78);
        v29 = *(v25 + 16);
        v29(v24, v26, v27);
        v30 = *(v23 + 16);
        v30(v21, v114, v22);
        v29(v110, v26, v27);
        v29(v118, v26, v27);
        v31 = sub_1A9976480();
        v32 = sub_1A9976F70();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = *(v0 + 304);
          v111 = v33;
          v93 = *(v0 + 160);
          v94 = *(v0 + 168);
          v34 = *(v0 + 144);
          v35 = *(v0 + 152);
          loga = v31;
          v36 = *(v0 + 136);
          v119 = *(v0 + 128);
          v37 = *(v0 + 112);
          v104 = *(v0 + 120);
          v95 = *(v0 + 96);
          v96 = *(v0 + 80);
          v100 = *(v0 + 72);
          v98 = *(v0 + 88);
          v99 = *(v0 + 64);
          v101 = *(v0 + 56);
          v102 = *(v0 + 104);
          v38 = *(v0 + 40);
          v92 = v30;
          v39 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v121[0] = v105;
          *v39 = 136315906;
          v40 = (v36 + *(v38 + 36) + *(v33 + 48));
          v103 = v32;
          v42 = *v40;
          v41 = v40[1];
          v43 = *(v37 + 8);
          v97 = v43;

          (v43)(v36, v38);
          v44 = sub_1A97AF148(v42, v41, v121);

          *(v39 + 4) = v44;
          *(v39 + 12) = 2080;
          v92(v93, v94, v34);
          v45 = sub_1A9976860();
          v47 = v46;
          v115 = *(v35 + 8);
          v115(v94, v34);
          v48 = sub_1A97AF148(v45, v47, v121);

          *(v39 + 14) = v48;
          *(v39 + 22) = 2080;
          v49 = (v119 + *(v38 + 36) + *(v111 + 52));
          v50 = *v49;
          v51 = v49[1];
          (*(v95 + 56))(v96, 1, 1, v98);
          (*(v99 + 104))(v100, *MEMORY[0x1E6968F70], v101);

          sub_1A9976010();
          v52 = sub_1A9975FB0();
          v54 = v53;
          v55 = v115;
          (*(v95 + 8))(v102, v98);
          (v97)(v119, v38);
          v56 = sub_1A97AF148(v52, v54, v121);

          *(v39 + 24) = v56;
          *(v39 + 32) = 2048;
          v57 = *(v104 + *(v38 + 36) + *(v111 + 56));
          v97();
          *(v39 + 34) = v57;
          _os_log_impl(&dword_1A9662000, loga, v103, "SFProgressTask was cancelled {name: %s progress: %s} [%s:%ld]", v39, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1AC58D2C0](v105, -1, -1);
          MEMORY[0x1AC58D2C0](v39, -1, -1);
        }

        else
        {
          v72 = *(v0 + 168);
          v74 = *(v0 + 144);
          v73 = *(v0 + 152);
          v76 = *(v0 + 128);
          v75 = *(v0 + 136);
          v77 = *(v0 + 40);
          v78 = *(*(v0 + 112) + 8);
          v78(*(v0 + 120), v77);

          v78(v76, v77);
          v55 = *(v73 + 8);
          v55(v72, v74);
          v78(v75, v77);
        }

        v79 = *(v0 + 176);
        v80 = *(v0 + 144);
        sub_1A9976BC0();
        sub_1A97FC63C();
        swift_allocError();
        sub_1A99766C0();
        swift_willThrow();
        v55(v79, v80);
      }

      else
      {
        v58 = *(v0 + 304);
        v59 = *(v0 + 176);
        v61 = *(v0 + 152);
        v60 = *(v0 + 160);
        v62 = *(v0 + 144);
        v63 = *(v0 + 48) + *(v0 + 328);
        v121[0] = 0;
        v121[1] = 0xE000000000000000;
        sub_1A99772B0();
        MEMORY[0x1AC5895B0](0xD000000000000040, 0x80000001A99E8750);
        MEMORY[0x1AC5895B0](*(v63 + v58[12]), *(v63 + v58[12] + 8));
        MEMORY[0x1AC5895B0](0x6572676F7270202CLL, 0xEC000000203A7373);
        (*(v61 + 16))(v60, v59, v62);
        v64 = sub_1A9976860();
        MEMORY[0x1AC5895B0](v64);

        MEMORY[0x1AC5895B0](125, 0xE100000000000000);
        v65 = v58[14];
        v66 = (v63 + v58[13]);
        v68 = *v66;
        v67 = v66[1];
        v69 = *(v63 + v65);
        sub_1A97BCDE0();
        swift_allocError();
        *v70 = 0;
        v70[1] = 0xE000000000000000;
        v70[2] = v68;
        v70[3] = v67;
        v70[4] = v69;
        v70[10] = 0;
        swift_willThrow();
        v71 = *(v61 + 8);

        v71(v59, v62);
      }
    }

    v81 = *(v0 + 296);
    v82 = *(v0 + 272);
    v83 = *(v0 + 232);
    v84 = *(v0 + 208);
    v86 = *(v0 + 168);
    v85 = *(v0 + 176);
    v87 = *(v0 + 160);
    v89 = *(v0 + 128);
    v88 = *(v0 + 136);
    v90 = *(v0 + 120);
    logb = *(v0 + 104);
    v112 = *(v0 + 80);
    v116 = *(v0 + 72);

    v13 = *(v0 + 8);
    goto LABEL_18;
  }

  (*(*(v0 + 224) + 8))(v1, *(v0 + 216));
  v14 = *(v0 + 280);
  v15 = *(MEMORY[0x1E69E85D8] + 4);
  v16 = swift_task_alloc();
  *(v0 + 320) = v16;
  WitnessTable = swift_getWitnessTable();
  *v16 = v0;
  v16[1] = sub_1A993AFDC;
  v18 = *(v0 + 296);
  v19 = *(v0 + 280);
  v20 = *(v0 + 232);

  return MEMORY[0x1EEE6D8E0](v20, 0, 0, v19, WitnessTable);
}

uint64_t sub_1A993BA4C()
{
  (*(v0[36] + 8))(v0[37], v0[35]);
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[29];
  v4 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[9];
  v16 = v0[3];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A993BB78()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B6A78);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B6A78);
  if (qword_1EB3B0B18 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3B3638);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFProgressContinuation.init(_:initialProgress:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a5;
  v46 = a6;
  v43 = a2;
  v44 = a4;
  v39 = a3;
  v42 = a1;
  v41 = type metadata accessor for SFProgressContinuation.Value();
  v10 = *(*(v41 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - v12;
  v35 = *(a7 - 8);
  v13 = v35;
  v14 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v17 = sub_1A9976D60();
  v37 = *(v17 - 8);
  v38 = v17;
  v18 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v36 = &v35 - v19;
  v20 = sub_1A9976D70();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v35 - v23;
  sub_1A993BFF0(&v35 - v23);
  v25 = type metadata accessor for SFProgressContinuation();
  v26 = v25[9];
  sub_1A9976D50();
  (*(v21 + 8))(v24, v20);
  v27 = *(v13 + 16);
  v28 = v39;
  v27(v16, v39, a7);
  sub_1A9976DA0();
  v29 = v36;
  sub_1A9976D80();
  (*(v37 + 8))(v29, v38);
  sub_1A9976550();
  v27(v40, v28, a7);
  swift_storeEnumTagMultiPayload();
  *(a8 + v25[10]) = sub_1A9976560();
  result = (*(v35 + 32))(a8 + v25[11], v28, a7);
  v31 = (a8 + v25[12]);
  v32 = v43;
  *v31 = v42;
  v31[1] = v32;
  v33 = (a8 + v25[13]);
  v34 = v45;
  *v33 = v44;
  v33[1] = v34;
  *(a8 + v25[14]) = v46;
  return result;
}

uint64_t sub_1A993BFF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v3 = sub_1A9976D70();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SFProgressContinuation.yield(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v26 = a2;
  v6 = type metadata accessor for SFProgressContinuation.Value();
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25 - v10;
  v12 = *(v4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v27 = sub_1A9976D60();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v19 = &v25 - v18;
  v25 = *(a2 + 36);
  v20 = *(v12 + 16);
  v20(v15, a1, v4);
  sub_1A9976DA0();
  v21 = v28;
  sub_1A9976D80();
  (*(v16 + 8))(v19, v27);
  v22 = *(v21 + *(v26 + 40));
  v20(v11, a1, v4);
  v23 = v29;
  swift_storeEnumTagMultiPayload();
  sub_1A9976520();
  return (*(v30 + 8))(v11, v23);
}

uint64_t SFProgressContinuation.finish(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for SFProgressContinuation.Value();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = *(a2 + 36);
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976DA0();
  sub_1A9976D90();
  v14 = *(v3 + *(a2 + 40));
  (*(*(v7 - 8) + 16))(v12, a1, v7);
  swift_storeEnumTagMultiPayload();
  sub_1A9976520();
  (*(v9 + 8))(v12, v8);
  v17 = 0;
  return sub_1A9976510();
}

void SFProgressContinuation.fail(with:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = type metadata accessor for SFProgressContinuation.Value();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v18 - v11);
  v13 = *(a2 + 36);
  v19 = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976DA0();
  sub_1A9976D90();
  v15 = *(v3 + *(a2 + 40));
  *v12 = a1;
  swift_storeEnumTagMultiPayload();
  v16 = a1;
  sub_1A9976520();
  (*(v9 + 8))(v12, v8);
  v19 = a1;
  v17 = a1;
  sub_1A9976510();
}

void SFProgressContinuation.cancel(_:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    sub_1A9976BC0();
    sub_1A97FC63C();
    v3 = swift_allocError();
    sub_1A99766C0();
    a1 = 0;
  }

  v4 = a1;
  SFProgressContinuation.fail(with:)(v3, a2);
}

uint64_t SFProgressContinuation.task.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  return sub_1A993C784(v6, a2);
}

uint64_t sub_1A993C784@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for SFProgressTask();
  v5 = v4[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B6A90, &qword_1A99AC7C0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *&a2[v5] = v6;
  *&a2[v4[11]] = 0;
  v7 = v4[9];
  v8 = type metadata accessor for SFProgressContinuation();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&a2[v7], a1, v8);
  v10 = (a1 + *(v8 + 48));
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v9 + 8);

  result = v13(a1, v8);
  *a2 = v12;
  *(a2 + 1) = v11;
  return result;
}

uint64_t SFProgressTask.init(_:initialProgress:operation:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a7;
  v52 = a8;
  v50 = a6;
  v53 = a4;
  v54 = a5;
  v56 = a3;
  v47 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v49 = &v43 - v16;
  v55 = *(a10 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SFProgressContinuation();
  v20 = *(v45 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v45);
  v46 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  v44 = a10;
  v25 = type metadata accessor for SFProgressTask();
  v26 = v25[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B6A90, &qword_1A99AC7C0);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = 0;
  v28 = v47;
  *(v47 + v26) = v27;
  v48 = v25[11];
  *v28 = a1;
  v28[1] = a2;
  v29 = a2;
  v30 = v28;
  (*(v55 + 16))(v19, v56, a10);

  SFProgressContinuation.init(_:initialProgress:file:line:)(a1, v29, v19, v50, v51, v52, a10, v24);
  v31 = v25[9];
  v32 = *(v20 + 16);
  v33 = v45;
  v32(v30 + v31, v24, v45);
  v34 = sub_1A9976C00();
  v35 = v49;
  (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  v36 = v46;
  v32(v46, v24, v33);
  v37 = (*(v20 + 80) + 64) & ~*(v20 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  v39 = v44;
  *(v38 + 4) = v44;
  *(v38 + 5) = a11;
  v40 = v54;
  *(v38 + 6) = v53;
  *(v38 + 7) = v40;
  (*(v20 + 32))(&v38[v37], v36, v33);
  v41 = sub_1A97B4F40(0, 0, v35, &unk_1A99AC7D0, v38);
  (*(v55 + 8))(v56, v39);
  result = (*(v20 + 8))(v24, v33);
  *(v30 + v48) = v41;
  return result;
}

uint64_t sub_1A993CC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = type metadata accessor for SFProgressContinuation();
  v8[7] = v10;
  v11 = *(v10 - 8);
  v8[8] = v11;
  v8[9] = *(v11 + 64);
  v8[10] = swift_task_alloc();
  v12 = *(a8 - 8);
  v8[11] = v12;
  v13 = *(v12 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A993CD78, 0, 0);
}

uint64_t sub_1A993CD78()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  v12 = *(v0 + 40);
  (*(v3 + 16))(v1, *(v0 + 32), v2);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 104) = v6;
  *(v6 + 16) = v12;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v13 = (v4 + *v4);
  v7 = v4[1];
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_1A993CF18;
  v9 = *(v0 + 96);
  v10 = *(v0 + 24);

  return v13(v9, sub_1A993F8BC, v6);
}

uint64_t sub_1A993CF18()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1A993D118;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1A993D034;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A993D034()
{
  v1 = v0[15];
  sub_1A9976CD0();
  v3 = v0[11];
  v2 = v0[12];
  if (v1)
  {
    (*(v3 + 8))(v2, v0[6]);
    v4 = v0[4];
    SFProgressContinuation.fail(with:)(v1, v0[7]);
  }

  else
  {
    v5 = v0[6];
    v6 = v0[4];
    v7 = v0[12];
    SFProgressContinuation.finish(with:)(v2, v0[7]);
    (*(v3 + 8))(v7, v5);
  }

  v8 = v0[12];
  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A993D118()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[4];
  SFProgressContinuation.fail(with:)(v2, v0[7]);

  v4 = v0[12];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t SFProgressTask.cancel(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 36);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for SFProgressContinuation();
  SFProgressContinuation.cancel(_:)(a1, v9);
  result = *(v3 + *(a2 + 44));
  if (result)
  {

    return sub_1A9976CB0();
  }

  return result;
}

uint64_t SFProgressTask.makeAsyncIterator()(uint64_t a1)
{
  sub_1A993D2C0(*(v1 + *(a1 + 40)), a1);
  v3 = *(a1 + 36);
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976DE0();
  return sub_1A9976C70();
}

void sub_1A993D2C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock((a1 + 24));
  sub_1A993F89C((a1 + 16));
  os_unfair_lock_unlock((a1 + 24));
}

void *sub_1A993D31C(void *result, uint64_t a2)
{
  if (*result)
  {
    sub_1A99772B0();
    MEMORY[0x1AC5895B0](0xD000000000000034, 0x80000001A99E8810);
    v3 = a2 + *(type metadata accessor for SFProgressTask() + 36);
    v4 = (v3 + *(type metadata accessor for SFProgressContinuation() + 48));
    MEMORY[0x1AC5895B0](*v4, v4[1]);
    result = sub_1A9977470();
    __break(1u);
  }

  else
  {
    *result = 1;
  }

  return result;
}

uint64_t sub_1A993D404(uint64_t a1)
{
  SFProgressTask.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t SFProgressTask.split()(char *a1, char *a2, uint64_t a3)
{
  v66 = a1;
  v67 = a2;
  v64 = *(a3 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v57 - v9;
  v10 = *(a3 + 16);
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 24);
  v68 = a3;
  v69 = v14;
  v15 = type metadata accessor for SFProgressContinuation();
  v62 = *(v15 - 8);
  v60 = *(v62 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v61 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v57 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v70 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v71 = &v57 - v22;
  v24 = *v3;
  v25 = v3[1];
  v26 = v3;
  v57 = v3;
  v74 = v24;
  v75 = v25;

  MEMORY[0x1AC5895B0](0x654C74696C70732DLL, 0xEA00000000007466);
  v27 = v74;
  v28 = v75;
  v29 = v26 + *(a3 + 36);
  v30 = *(v15 + 44);
  v31 = *(v73 + 16);
  v73 += 16;
  v31(v13, &v29[v30], v10);
  v58 = v10;
  SFProgressContinuation.init(_:initialProgress:file:line:)(v27, v28, v13, 0xD00000000000004CLL, 0x80000001A99E87A0, 190, v10, v23);
  v74 = v24;
  v75 = v25;

  MEMORY[0x1AC5895B0](0x695274696C70732DLL, 0xEB00000000746867);
  v32 = v74;
  v33 = v75;
  v34 = v68;
  v35 = v57;
  v31(v13, v57 + *(v68 + 36) + *(v15 + 44), v10);
  v36 = v70;
  SFProgressContinuation.init(_:initialProgress:file:line:)(v32, v33, v13, 0xD00000000000004CLL, 0x80000001A99E87A0, 191, v10, v70);
  v37 = sub_1A9976C00();
  (*(*(v37 - 8) + 56))(v72, 1, 1, v37);
  v39 = v63;
  v38 = v64;
  (*(v64 + 16))(v63, v35, v34);
  v40 = v62;
  v41 = *(v62 + 16);
  v42 = v59;
  v41(v59, v71, v15);
  v43 = v61;
  v41(v61, v36, v15);
  v44 = v38;
  v45 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v46 = *(v40 + 80);
  v47 = (v65 + v45 + v46) & ~v46;
  v48 = (v60 + v46 + v47) & ~v46;
  v49 = swift_allocObject();
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  v50 = v68;
  v51 = v69;
  *(v49 + 4) = v58;
  *(v49 + 5) = v51;
  (*(v44 + 32))(&v49[v45], v39, v50);
  v52 = *(v40 + 32);
  v52(&v49[v47], v42, v15);
  v52(&v49[v48], v43, v15);
  sub_1A97B4F40(0, 0, v72, &unk_1A99AC7E0, v49);

  v53 = v71;
  SFProgressContinuation.task.getter(v15, v66);
  v54 = v70;
  SFProgressContinuation.task.getter(v15, v67);
  v55 = *(v40 + 8);
  v55(v54, v15);
  return (v55)(v53, v15);
}

uint64_t sub_1A993D9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v10 = *(a8 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();
  v12 = *(a7 - 8);
  v8[10] = v12;
  v13 = *(v12 + 64) + 15;
  v8[11] = swift_task_alloc();
  v14 = *(*(sub_1A99770A0() - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v15 = sub_1A9976DD0();
  v8[13] = v15;
  v16 = *(v15 - 8);
  v8[14] = v16;
  v17 = *(v16 + 64) + 15;
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A993DBBC, 0, 0);
}

uint64_t sub_1A993DBBC()
{
  v1 = v0[15];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  v5 = type metadata accessor for SFProgressTask();
  v0[16] = v5;
  SFProgressTask.makeAsyncIterator()(v5);
  v6 = *(MEMORY[0x1E69E87A8] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_1A993DC84;
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[13];

  return MEMORY[0x1EEE6DB90](v9, 0, 0, v10, v0 + 2);
}

uint64_t sub_1A993DC84()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1A993E234;
  }

  else
  {
    v3 = sub_1A993DD98;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A993DD98()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[6];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[18];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_1A9976CD0();
    if (v4)
    {
      v5 = v0[6];
      v6 = v0[7];
      v8 = v0[4];
      v7 = v0[5];
      v9 = type metadata accessor for SFProgressContinuation();
      SFProgressContinuation.fail(with:)(v4, v9);
      SFProgressContinuation.fail(with:)(v4, v9);

      v10 = v0[15];
      v11 = v0[11];
      v12 = v0[12];
      v13 = v0[9];

      v14 = v0[1];

      return v14();
    }

    else
    {
      v26 = swift_task_alloc();
      v0[19] = v26;
      *v26 = v0;
      v26[1] = sub_1A993E040;
      v27 = v0[16];
      v28 = v0[9];
      v29 = v0[3];

      return SFProgressTask.finalValue.getter(v28, v27);
    }
  }

  else
  {
    v16 = v0[11];
    v17 = v0[7];
    v18 = v0[4];
    v19 = v0[5];
    (*(v2 + 32))(v16, v1, v3);
    v20 = type metadata accessor for SFProgressContinuation();
    SFProgressContinuation.yield(_:)(v16, v20);
    SFProgressContinuation.yield(_:)(v16, v20);
    (*(v2 + 8))(v16, v3);
    v21 = *(MEMORY[0x1E69E87A8] + 4);
    v22 = swift_task_alloc();
    v0[17] = v22;
    *v22 = v0;
    v22[1] = sub_1A993DC84;
    v23 = v0[15];
    v24 = v0[12];
    v25 = v0[13];

    return MEMORY[0x1EEE6DB90](v24, 0, 0, v25, v0 + 2);
  }
}

uint64_t sub_1A993E040()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1A993E310;
  }

  else
  {
    v3 = sub_1A993E154;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A993E154()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = type metadata accessor for SFProgressContinuation();
  SFProgressContinuation.finish(with:)(v1, v7);
  SFProgressContinuation.finish(with:)(v1, v7);
  (*(v2 + 8))(v1, v4);
  v8 = v0[15];
  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A993E234()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[2];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = type metadata accessor for SFProgressContinuation();
  SFProgressContinuation.fail(with:)(v1, v6);
  SFProgressContinuation.fail(with:)(v1, v6);

  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A993E310()
{
  v1 = v0[20];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = type metadata accessor for SFProgressContinuation();
  SFProgressContinuation.fail(with:)(v1, v6);
  SFProgressContinuation.fail(with:)(v1, v6);

  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t withProgressTask<A, B>(_:initialProgress:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v37 = a4;
  v38 = a5;
  v34 = a3;
  v36 = a1;
  v39 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v35 = &v34 - v14;
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SFProgressContinuation();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  (*(v15 + 16))(v18, v34, a6);

  v26 = v18;
  v27 = a7;
  SFProgressContinuation.init(_:initialProgress:file:line:)(v36, a2, v26, 0xD00000000000004CLL, 0x80000001A99E87A0, 217, a6, v25);
  v28 = sub_1A9976C00();
  v29 = v35;
  (*(*(v28 - 8) + 56))(v35, 1, 1, v28);
  (*(v20 + 16))(v23, v25, v19);
  v30 = (*(v20 + 80) + 64) & ~*(v20 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = a6;
  *(v31 + 5) = v27;
  v32 = v38;
  *(v31 + 6) = v37;
  *(v31 + 7) = v32;
  (*(v20 + 32))(&v31[v30], v23, v19);

  sub_1A97B4F40(0, 0, v29, &unk_1A99AC7F0, v31);

  SFProgressContinuation.task.getter(v19, v39);
  return (*(v20 + 8))(v25, v19);
}

uint64_t sub_1A993E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A993E72C, 0, 0);
}

uint64_t sub_1A993E72C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v3;
  v7 = *(MEMORY[0x1E69E88F0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1A993E850;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v8, &unk_1A99AC8C0, v4, sub_1A993F864, v6, 0, 0, v9);
}

uint64_t sub_1A993E850()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1A993E974;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_1A9852E14;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A993E974()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  v7 = type metadata accessor for SFProgressContinuation();
  SFProgressContinuation.fail(with:)(v1, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A993EA1C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A97B2638;

  return v9(a4);
}

uint64_t sub_1A993EB44(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(type metadata accessor for SFProgressContinuation() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1A97B2988;

  return sub_1A993CC4C(a1, v8, v9, v10, v11, v1 + v7, v5, v4);
}

uint64_t sub_1A993EC64(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for SFProgressTask() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for SFProgressContinuation() - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = (*(v10 + 64) + v11 + v12) & ~v11;
  v14 = v1[2];
  v15 = v1[3];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1A97B2638;

  return sub_1A993D9F8(a1, v14, v15, v1 + v8, v1 + v12, v1 + v13, v6, v5);
}

uint64_t objectdestroyTm_4()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for SFProgressContinuation() - 8);
  v4 = (*(*v3 + 80) + 64) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v8 = sub_1A9976DE0();
  (*(*(v8 - 8) + 8))(&v0[v4], v8);
  v9 = v3[11];
  v10 = sub_1A9976DA0();
  (*(*(v10 - 8) + 8))(&v0[v4 + v9], v10);
  v11 = *&v0[v4 + v3[12]];

  (*(*(v2 - 8) + 8))(&v0[v4 + v3[13]], v2);
  v12 = *&v0[v4 + 8 + v3[14]];

  v13 = *&v0[v4 + 8 + v3[15]];

  return swift_deallocObject();
}

uint64_t sub_1A993EFE4(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(type metadata accessor for SFProgressContinuation() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1A97B2988;

  return sub_1A993E704(a1, v8, v9, v10, v11, v1 + v7, v5, v4);
}

uint64_t sub_1A993F120(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  result = sub_1A9976DE0();
  if (v4 <= 0x3F)
  {
    result = sub_1A9976DA0();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      type metadata accessor for SFProgressContinuation.Value();
      result = sub_1A9976550();
      if (v7 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1A993F278(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for SFProgressContinuation();
  if (v3 <= 0x3F)
  {
    sub_1A993F350();
    if (v4 <= 0x3F)
    {
      sub_1A993F3A0();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A993F350()
{
  if (!qword_1EB3B6B18)
  {
    v0 = sub_1A9976470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3B6B18);
    }
  }
}

void sub_1A993F3A0()
{
  if (!qword_1EB3B6B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    v0 = sub_1A99770A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3B6B20);
    }
  }
}

unint64_t sub_1A993F404(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = sub_1A97F3654();
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A993F494(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = 8;
  if (v3 > 8)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1A993F5C8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_41:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_26;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_1A993F79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2638;

  return sub_1A993EA1C(a1, v6, v7, v8);
}

void sub_1A993F864()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = type metadata accessor for SFProgressContinuation();
  SFProgressContinuation.cancel(_:)(0, v4);
}

void *sub_1A993F89C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1A993D31C(a1, v1[4]);
}

uint64_t sub_1A993F8BC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for SFProgressContinuation();
  v6 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  return SFProgressContinuation.yield(_:)(a1, v5);
}

uint64_t static NWParameters.airDropClientBrowserParameters(domain:type:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1A9976610();
  sub_1A9976620();
  v8 = xpc_array_create(0, 0);
  v9 = sub_1A99764B0();
  v10 = sub_1A9976890();
  xpc_array_set_string(v8, v9, (v10 + 32));

  v11 = xpc_array_create(0, 0);
  v12 = sub_1A99764B0();
  v13 = sub_1A9976890();
  xpc_array_set_string(v11, v12, (v13 + 32));

  swift_unknownObjectRetain();
  nw_parameters_set_required_netagent_classes();
  if (a6)
  {
    sub_1A9976890();
    nw_parameters_set_attributed_bundle_identifier();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  return v7;
}

uint64_t static NWParameters.airDropNetworkBrowserParameters(domain:type:)()
{
  v0 = sub_1A9976610();
  sub_1A9976620();
  v1 = xpc_array_create(0, 0);
  v2 = sub_1A99764B0();
  v3 = sub_1A9976890();
  xpc_array_set_string(v1, v2, (v3 + 32));

  v4 = xpc_array_create(0, 0);
  v5 = sub_1A99764B0();
  v6 = sub_1A9976890();
  xpc_array_set_string(v4, v5, (v6 + 32));

  swift_unknownObjectRetain();
  nw_parameters_set_required_netagent_classes();
  nw_parameters_set_include_ble();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  return v0;
}

uint64_t SFNWInterfaceType.description.getter()
{
  v1 = *v0;
  v2 = 1818523489;
  v3 = 1768319351;
  if (v1 != 5)
  {
    v3 = 0x6465726977;
  }

  v4 = 0x4669576C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x726568746FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x72616C756C6C6563;
  if (v1 != 1)
  {
    v5 = 0x6957746365726964;
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

uint64_t sub_1A993FC70(uint64_t a1)
{
  v2 = sub_1A99409AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FCAC(uint64_t a1)
{
  v2 = sub_1A99409AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FCE8(uint64_t a1)
{
  v2 = sub_1A9940958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FD24(uint64_t a1)
{
  v2 = sub_1A9940958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9941BB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A993FD94(uint64_t a1)
{
  v2 = sub_1A9940760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FDD0(uint64_t a1)
{
  v2 = sub_1A9940760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FE0C(uint64_t a1)
{
  v2 = sub_1A9940904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FE48(uint64_t a1)
{
  v2 = sub_1A9940904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FE84(uint64_t a1)
{
  v2 = sub_1A99408B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FEC0(uint64_t a1)
{
  v2 = sub_1A99408B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FEFC(uint64_t a1)
{
  v2 = sub_1A994085C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FF38(uint64_t a1)
{
  v2 = sub_1A994085C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FF74(uint64_t a1)
{
  v2 = sub_1A9940808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FFB0(uint64_t a1)
{
  v2 = sub_1A9940808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FFEC(uint64_t a1)
{
  v2 = sub_1A99407B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9940028(uint64_t a1)
{
  v2 = sub_1A99407B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFNWInterfaceType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B28, &qword_1A99AC900);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B30, &qword_1A99AC908);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B38, &qword_1A99AC910);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B40, &qword_1A99AC918);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v47 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B48, &qword_1A99AC920);
  v64 = *(v48 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v63 = &v47 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B50, &qword_1A99AC928);
  v62 = *(v47 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B58, &qword_1A99AC930);
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B60, &qword_1A99AC938);
  v25 = *(v66 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v47 - v27;
  v29 = *v2;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9940760();
  v65 = v28;
  sub_1A9977AA0();
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
        sub_1A9940958();
        v42 = v65;
        v41 = v66;
        sub_1A9977640();
        (*(v38 + 8))(v20, v47);
      }

      else
      {
        v69 = 2;
        sub_1A9940904();
        v46 = v39;
        v42 = v65;
        v41 = v66;
        sub_1A9977640();
        (*(v40 + 8))(v46, v48);
      }

      return (*v31)(v42, v41);
    }

    else
    {
      v67 = 0;
      sub_1A99409AC();
      v43 = v65;
      v44 = v66;
      sub_1A9977640();
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
        sub_1A9940808();
        v32 = v55;
        v33 = v65;
        v34 = v66;
        sub_1A9977640();
        v36 = v56;
        v35 = v57;
      }

      else
      {
        v73 = 6;
        sub_1A99407B4();
        v32 = v58;
        v33 = v65;
        v34 = v66;
        sub_1A9977640();
        v36 = v59;
        v35 = v60;
      }
    }

    else if (v29 == 3)
    {
      v70 = 3;
      sub_1A99408B0();
      v32 = v49;
      v33 = v65;
      v34 = v66;
      sub_1A9977640();
      v36 = v50;
      v35 = v51;
    }

    else
    {
      v71 = 4;
      sub_1A994085C();
      v32 = v52;
      v33 = v65;
      v34 = v66;
      sub_1A9977640();
      v36 = v53;
      v35 = v54;
    }

    (*(v36 + 8))(v32, v35);
    return (*v31)(v33, v34);
  }
}

unint64_t sub_1A9940760()
{
  result = qword_1EB3B6B68;
  if (!qword_1EB3B6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B68);
  }

  return result;
}

unint64_t sub_1A99407B4()
{
  result = qword_1EB3B6B70;
  if (!qword_1EB3B6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B70);
  }

  return result;
}

unint64_t sub_1A9940808()
{
  result = qword_1EB3B6B78;
  if (!qword_1EB3B6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B78);
  }

  return result;
}

unint64_t sub_1A994085C()
{
  result = qword_1EB3B6B80;
  if (!qword_1EB3B6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B80);
  }

  return result;
}

unint64_t sub_1A99408B0()
{
  result = qword_1EB3B6B88;
  if (!qword_1EB3B6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B88);
  }

  return result;
}

unint64_t sub_1A9940904()
{
  result = qword_1EB3B6B90;
  if (!qword_1EB3B6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B90);
  }

  return result;
}

unint64_t sub_1A9940958()
{
  result = qword_1EB3B6B98;
  if (!qword_1EB3B6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B98);
  }

  return result;
}

unint64_t sub_1A99409AC()
{
  result = qword_1EB3B6BA0;
  if (!qword_1EB3B6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6BA0);
  }

  return result;
}

uint64_t SFNWInterfaceType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BA8, &qword_1A99AC940);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BB0, &qword_1A99AC948);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BB8, &qword_1A99AC950);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BC0, &qword_1A99AC958);
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v57 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BC8, &qword_1A99AC960);
  v62 = *(v63 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v73 = &v57 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BD0, &qword_1A99AC968);
  v60 = *(v61 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BD8, &qword_1A99AC970);
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BE0, &unk_1A99AC978);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1A9940760();
  v31 = v79;
  sub_1A9977A70();
  if (!v31)
  {
    v32 = v23;
    v57 = v20;
    v58 = v19;
    v33 = v75;
    v34 = v76;
    v35 = v77;
    v79 = v25;
    v36 = sub_1A9977620();
    v37 = (2 * *(v36 + 16)) | 1;
    v80 = v36;
    v81 = v36 + 32;
    v82 = 0;
    v83 = v37;
    v38 = sub_1A97AB9CC();
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
            sub_1A9940808();
            v54 = v72;
            sub_1A9977530();
            (*(v68 + 8))(v54, v69);
          }

          else
          {
            v85 = 6;
            sub_1A99407B4();
            sub_1A9977530();
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
            sub_1A99408B0();
            sub_1A9977530();
            (*(v64 + 8))(v33, v65);
          }

          else
          {
            v85 = 4;
            sub_1A994085C();
            sub_1A9977530();
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
          sub_1A9940904();
          v56 = v73;
          sub_1A9977530();
          v50 = *(v62 + 8);
          v51 = v56;
          v55 = v63;
          goto LABEL_19;
        }

        v85 = 1;
        sub_1A9940958();
        v49 = v58;
        sub_1A9977530();
        v50 = *(v60 + 8);
        v51 = v49;
        v52 = &v87;
      }

      else
      {
        v85 = 0;
        sub_1A99409AC();
        sub_1A9977530();
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
      return __swift_destroy_boxed_opaque_existential_0Tm(v47);
    }

    v43 = sub_1A9977300();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v45 = &type metadata for SFNWInterfaceType;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v79 + 8))(v39, v24);
    swift_unknownObjectRelease();
  }

  v47 = v78;
  return __swift_destroy_boxed_opaque_existential_0Tm(v47);
}

uint64_t SFNWInterfaceTypeCategory.description.getter()
{
  v1 = 0x6465726977;
  if (*v0 != 1)
  {
    v1 = 0x72616C75676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616C756C6C6563;
  }
}

uint64_t sub_1A9941400()
{
  v1 = 0x6465726977;
  if (*v0 != 1)
  {
    v1 = 0x72616C75676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616C756C6C6563;
  }
}

Sharing::SFNWInterfaceTypeCategory __swiftcall SFNWInterfaceType.category()()
{
  v2 = *v1;
  if (v2 >= 7)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0x1020202010002uLL >> (8 * v2);
  }

  *v0 = v3;
  return result;
}

unint64_t sub_1A994148C()
{
  result = qword_1EB3B6BE8;
  if (!qword_1EB3B6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6BE8);
  }

  return result;
}

unint64_t sub_1A99414E4()
{
  result = qword_1EB3B6BF0;
  if (!qword_1EB3B6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6BF0);
  }

  return result;
}

unint64_t sub_1A99415DC()
{
  result = qword_1EB3B6BF8;
  if (!qword_1EB3B6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6BF8);
  }

  return result;
}

unint64_t sub_1A9941634()
{
  result = qword_1EB3B6C00;
  if (!qword_1EB3B6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C00);
  }

  return result;
}

unint64_t sub_1A994168C()
{
  result = qword_1EB3B6C08;
  if (!qword_1EB3B6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C08);
  }

  return result;
}

unint64_t sub_1A99416E4()
{
  result = qword_1EB3B6C10;
  if (!qword_1EB3B6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C10);
  }

  return result;
}

unint64_t sub_1A994173C()
{
  result = qword_1EB3B6C18;
  if (!qword_1EB3B6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C18);
  }

  return result;
}

unint64_t sub_1A9941794()
{
  result = qword_1EB3B6C20;
  if (!qword_1EB3B6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C20);
  }

  return result;
}

unint64_t sub_1A99417EC()
{
  result = qword_1EB3B6C28;
  if (!qword_1EB3B6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C28);
  }

  return result;
}

unint64_t sub_1A9941844()
{
  result = qword_1EB3B6C30;
  if (!qword_1EB3B6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C30);
  }

  return result;
}

unint64_t sub_1A994189C()
{
  result = qword_1EB3B6C38;
  if (!qword_1EB3B6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C38);
  }

  return result;
}

unint64_t sub_1A99418F4()
{
  result = qword_1EB3B6C40;
  if (!qword_1EB3B6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C40);
  }

  return result;
}

unint64_t sub_1A994194C()
{
  result = qword_1EB3B6C48;
  if (!qword_1EB3B6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C48);
  }

  return result;
}

unint64_t sub_1A99419A4()
{
  result = qword_1EB3B6C50;
  if (!qword_1EB3B6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C50);
  }

  return result;
}

unint64_t sub_1A99419FC()
{
  result = qword_1EB3B6C58;
  if (!qword_1EB3B6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C58);
  }

  return result;
}

unint64_t sub_1A9941A54()
{
  result = qword_1EB3B6C60;
  if (!qword_1EB3B6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C60);
  }

  return result;
}

unint64_t sub_1A9941AAC()
{
  result = qword_1EB3B6C68;
  if (!qword_1EB3B6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C68);
  }

  return result;
}

unint64_t sub_1A9941B04()
{
  result = qword_1EB3B6C70;
  if (!qword_1EB3B6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C70);
  }

  return result;
}

unint64_t sub_1A9941B5C()
{
  result = qword_1EB3B6C78;
  if (!qword_1EB3B6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C78);
  }

  return result;
}

uint64_t sub_1A9941BB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1818523489 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C756C6C6563 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6957746365726964 && a2 == 0xEB00000000646572 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4669576C61636F6CLL && a2 == 0xE900000000000069 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1768319351 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6465726977 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t SFAppleIDAddKeyToKeychain(void *a1, uint64_t a2, int a3, void *a4)
{
  v55[4] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = 0;
  result = 0;
  v8 = 4294960591;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (!v6 || !a2)
  {
    goto LABEL_72;
  }

  v14 = MEMORY[0x1E697AD38];
  if (!a3)
  {
    v14 = MEMORY[0x1E697AD40];
  }

  v13 = *v14;
  v15 = *MEMORY[0x1E697AFF8];
  v16 = *MEMORY[0x1E697B020];
  v17 = *MEMORY[0x1E697AD30];
  v54[0] = *MEMORY[0x1E697AFF8];
  v54[1] = v17;
  v55[0] = v16;
  v55[1] = v13;
  v18 = *MEMORY[0x1E697B320];
  v54[2] = *MEMORY[0x1E697B3D0];
  v54[3] = v18;
  v55[2] = a2;
  v55[3] = MEMORY[0x1E695E118];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:4];
  v10 = v19;
  if (!v19)
  {
    v7 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v8 = 4294960534;
    goto LABEL_72;
  }

  v20 = SecItemCopyMatching(v19, &result);
  v21 = 0x1E695D000uLL;
  v50 = v6;
  if (v20 == -25300)
  {
    goto LABEL_15;
  }

  v22 = v20;
  if (v20)
  {
    OUTLINED_FUNCTION_4_2();
    if (v26 ^ v27 | v25)
    {
      v23 = v21;
      if (v24 != -1 || _LogCategory_Initialize())
      {
        v47 = v22;
        LogPrintF();
      }

      goto LABEL_16;
    }

LABEL_15:
    v23 = v21;
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v12 = result;
  if (result)
  {
    v23 = 0x1E695D000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v12;
      v11 = v12;
      goto LABEL_18;
    }
  }

  else
  {
    v23 = 0x1E695D000uLL;
  }

LABEL_17:
  v11 = 0;
LABEL_18:
  v28 = [MEMORY[0x1E695DF90] dictionary];
  v7 = v28;
  if (!v28)
  {
    v9 = 0;
    v8 = 4294960568;
    goto LABEL_71;
  }

  [v28 setObject:@"com.apple.sharing.appleidauthentication" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  [v7 setObject:*MEMORY[0x1E697ABE8] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
  if (v11)
  {
    v29 = *MEMORY[0x1E697B3C8];
    v52[0] = v15;
    v52[1] = v29;
    v53[0] = v16;
    v53[1] = v11;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
    v9 = v30;
    if (!v30)
    {
      v8 = 4294960534;
      goto LABEL_71;
    }

    v31 = SecItemUpdate(v30, v7);
    if (!v31)
    {
      v6 = v50;
      if (gLogCategory_SFAppleIDKeychainUtilities <= 30)
      {
        v33 = a4;
        if (gLogCategory_SFAppleIDKeychainUtilities == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      }

      goto LABEL_57;
    }

    if (gLogCategory_SFAppleIDKeychainUtilities <= 60)
    {
      v32 = v31;
      if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
      {
        v48 = v32;
        LogPrintF();
      }
    }

    if (SecItemDelete(v9))
    {
      OUTLINED_FUNCTION_4_2();
      if (v26 ^ v27 | v25)
      {
        v36 = v34;
        if (v35 != -1 || _LogCategory_Initialize())
        {
          v48 = v36;
          LogPrintF();
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  [v7 addEntriesFromDictionary:{v10, v48}];
  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  [v7 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E697AEB0]];
  if (!SecItemAdd(v7, &result))
  {
LABEL_51:
    v41 = result;

    v42 = *(v23 + 3824);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v41;

      v6 = v50;
      if (gLogCategory_SFAppleIDKeychainUtilities <= 30)
      {
        if (gLogCategory_SFAppleIDKeychainUtilities != -1)
        {
          v11 = v12;
          v33 = a4;
LABEL_55:
          LogPrintF();
          goto LABEL_58;
        }

        v33 = a4;
        if (_LogCategory_Initialize())
        {
          v11 = v12;
          goto LABEL_55;
        }

        v11 = v12;
LABEL_58:
        if (v33)
        {
          v43 = v11;
          v8 = 0;
          *v33 = v11;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_72;
      }

      v11 = v12;
LABEL_57:
      v33 = a4;
      goto LABEL_58;
    }

    v8 = 4294960540;
    v12 = v41;
LABEL_71:
    v6 = v50;
    goto LABEL_72;
  }

  OUTLINED_FUNCTION_4_2();
  if (v26 ^ v27 | v25 && (v37 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v38 = SecItemDelete(v7);
  if (!v38)
  {
    v40 = SecItemAdd(v7, &result);
    if (v40)
    {
      v8 = v40;
      OUTLINED_FUNCTION_4_2();
      if (v26 ^ v27 | v25 && (v46 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_71;
    }

    goto LABEL_51;
  }

  v8 = v38;
  OUTLINED_FUNCTION_4_2();
  if (!(v26 ^ v27 | v25))
  {
    goto LABEL_71;
  }

  v6 = v50;
  if (v39 != -1 || _LogCategory_Initialize())
  {
    LogPrintF();
  }

LABEL_72:

  v44 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t SFAppleIDRemoveKeyFromKeychain(void *a1, void *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x1E697B020];
    v7 = *MEMORY[0x1E697B3C8];
    v14[0] = *MEMORY[0x1E697AFF8];
    v14[1] = v7;
    v15[0] = v6;
    v15[1] = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v9 = v8;
    if (v8)
    {
      v10 = SecItemDelete(v8);
      if (v10 == -25300)
      {
        if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v11 = 4294941996;
      }

      else
      {
        v11 = v10;
        if (v10)
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        else
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 30 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 4294960534;
    }
  }

  else
  {
    v9 = 0;
    v11 = 4294960591;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t SFAppleIDCopyKeyFromKeychainForReference(void *a1, CFTypeRef *a2)
{
  result[7] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  result[0] = 0;
  if (v3)
  {
    v5 = *MEMORY[0x1E697B3C8];
    result[1] = *MEMORY[0x1E697AFF8];
    result[2] = v5;
    result[4] = *MEMORY[0x1E697B020];
    result[5] = v3;
    result[3] = *MEMORY[0x1E697B328];
    result[6] = MEMORY[0x1E695E118];
    OUTLINED_FUNCTION_1_1();
    v7 = [v6 dictionaryWithObjects:? forKeys:? count:?];
    v8 = SecItemCopyMatching(v7, result);
    if (v8)
    {
      v11 = v8;
      if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else if (result[0])
    {
      v9 = CFGetTypeID(result[0]);
      TypeID = SecKeyGetTypeID();
      v11 = 0;
      if (a2 && v9 == TypeID)
      {
        v11 = 0;
        *a2 = result[0];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v7 = 0;
    v11 = 4294960591;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t SFAppleIDCopyKeychainReferenceForKey(const void *a1, void *a2)
{
  result[7] = *MEMORY[0x1E69E9840];
  result[0] = 0;
  if (a1)
  {
    v3 = *MEMORY[0x1E697B3D0];
    result[1] = *MEMORY[0x1E697AFF8];
    result[2] = v3;
    result[4] = *MEMORY[0x1E697B020];
    result[5] = a1;
    result[3] = *MEMORY[0x1E697B320];
    result[6] = MEMORY[0x1E695E118];
    OUTLINED_FUNCTION_1_1();
    v5 = [v4 dictionaryWithObjects:? forKeys:? count:?];
    v6 = SecItemCopyMatching(v5, result);
    if (v6)
    {
      v8 = v6;
      if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else if (result[0])
    {
      v7 = CFGetTypeID(result[0]);
      if (v7 == CFDataGetTypeID())
      {
        v8 = 0;
        if (a2)
        {
          *a2 = result[0];
        }
      }

      else
      {
        v8 = 4294960540;
      }
    }

    else
    {
      v8 = 4294960534;
    }
  }

  else
  {
    v5 = 0;
    v8 = 4294960591;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t SFAppleIDRemoveCertificateFromKeychain(void *a1, void *a2)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x1E697B3C8];
    v13[0] = *MEMORY[0x1E697AFF8];
    v13[1] = v6;
    v14[0] = *MEMORY[0x1E697B000];
    v14[1] = v4;
    v13[2] = *MEMORY[0x1E697B328];
    v14[2] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v8 = v7;
    if (v7)
    {
      v9 = SecItemDelete(v7);
      if (v9 == -25300)
      {
        if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v10 = 4294941996;
      }

      else
      {
        v10 = v9;
        if (v9)
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        else
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 30 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 4294960534;
    }
  }

  else
  {
    v8 = 0;
    v10 = 4294960591;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t SFAppleIDCopyCertificateFromKeychainForReference(void *a1, CFTypeRef *a2)
{
  result[7] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  result[0] = 0;
  if (!v3)
  {
    v7 = 0;
    v8 = 4294960591;
    goto LABEL_15;
  }

  v5 = *MEMORY[0x1E697B3C8];
  result[1] = *MEMORY[0x1E697AFF8];
  result[2] = v5;
  result[4] = *MEMORY[0x1E697B000];
  result[5] = v3;
  result[3] = *MEMORY[0x1E697B328];
  result[6] = MEMORY[0x1E695E118];
  OUTLINED_FUNCTION_1_1();
  v7 = [v6 dictionaryWithObjects:? forKeys:? count:?];
  v8 = SecItemCopyMatching(v7, result);
  if (v8)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if (!result[0])
    {
      v8 = 0;
      goto LABEL_15;
    }

    v9 = CFGetTypeID(result[0]);
    TypeID = SecCertificateGetTypeID();
    if (a2 && v9 == TypeID)
    {
      v8 = 0;
      *a2 = result[0];
      result[0] = 0;
      goto LABEL_15;
    }
  }

  if (result[0])
  {
    CFRelease(result[0]);
  }

LABEL_15:

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t SFAppleIDCopyKeychainReferenceForCertificate(const void *a1, void *a2)
{
  result[7] = *MEMORY[0x1E69E9840];
  result[0] = 0;
  if (!a1)
  {
    v5 = 0;
    v8 = 4294960591;
    goto LABEL_10;
  }

  v3 = *MEMORY[0x1E697B3D0];
  result[1] = *MEMORY[0x1E697AFF8];
  result[2] = v3;
  result[4] = *MEMORY[0x1E697B000];
  result[5] = a1;
  result[3] = *MEMORY[0x1E697B320];
  result[6] = MEMORY[0x1E695E118];
  OUTLINED_FUNCTION_1_1();
  v5 = [v4 dictionaryWithObjects:? forKeys:? count:?];
  v6 = SecItemCopyMatching(v5, result);
  if (v6)
  {
    v8 = v6;
    if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if (!result[0])
    {
      v8 = 4294960534;
      goto LABEL_10;
    }

    v7 = CFGetTypeID(result[0]);
    if (v7 == CFDataGetTypeID())
    {
      if (a2)
      {
        v8 = 0;
        *a2 = result[0];
        result[0] = 0;
        goto LABEL_10;
      }

      v8 = 0;
    }

    else
    {
      v8 = 4294960540;
    }
  }

  if (result[0])
  {
    CFRelease(result[0]);
  }

LABEL_10:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t SFAppleIDCreateCertificateWithPEMString(void *a1, SecCertificateRef *a2)
{
  v3 = a1;
  if (!v3)
  {
    v5 = 0;
LABEL_12:
    v7 = 0;
    v9 = 4294960591;
    goto LABEL_10;
  }

  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if (![v5 hasPrefix:@"-----BEGIN CERTIFICATE-----"] || !objc_msgSend(v5, "hasSuffix:", @"-----END CERTIFICATE-----"))
  {
    goto LABEL_12;
  }

  v6 = [v5 substringFromIndex:{objc_msgSend(@"-----BEGIN CERTIFICATE-----", "length")}];

  v5 = [v6 substringWithRange:{0, objc_msgSend(v6, "length") - objc_msgSend(@"-----END CERTIFICATE-----", "length")}];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:1];
  if (!v7)
  {
LABEL_14:
    v9 = 4294960579;
    goto LABEL_10;
  }

  v8 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v7);
  if (v8)
  {
    if (a2)
    {
      v9 = 0;
      *a2 = v8;
    }

    else
    {
      CFRelease(v8);
      v9 = 0;
    }
  }

  else
  {
    v9 = 4294960534;
  }

LABEL_10:

  return v9;
}

void SFAppleIDCreateKeyPair(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = dispatch_get_global_queue(0, 0);
  v9 = v8;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  if (v7)
  {
    if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __SFAppleIDCreateKeyPair_block_invoke;
      block[3] = &unk_1E788A570;
      v12 = &v17;
      v17 = v5;
      v18 = v11;
      v19 = v7;
      dispatch_async(v9, block);
    }

    else
    {
      if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __SFAppleIDCreateKeyPair_block_invoke_3;
      v13[3] = &unk_1E788A598;
      v12 = &v14;
      v14 = v7;
      v15 = -6705;
      dispatch_async(v11, v13);
    }
  }
}

void __SFAppleIDCreateKeyPair_block_invoke(uint64_t a1)
{
  v39[4] = *MEMORY[0x1E69E9840];
  error = 0;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_16;
  }

  [v2 setObject:*MEMORY[0x1E697ADA8] forKeyedSubscript:*MEMORY[0x1E697AD68]];
  [v3 setObject:&unk_1F1D7CBE0 forKeyedSubscript:*MEMORY[0x1E697AD50]];
  v4 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = &stru_1F1D30528;
  }

  v7 = [v5 initWithFormat:@"Apple ID %@ private key", v6];
  if (v7)
  {
    v8 = *MEMORY[0x1E697AD18];
    v9 = *MEMORY[0x1E697ABD8];
    v38[0] = *MEMORY[0x1E697AD18];
    v38[1] = v9;
    v10 = *MEMORY[0x1E697ABE8];
    v39[0] = v4;
    v39[1] = v10;
    v11 = *MEMORY[0x1E697AEB0];
    v12 = a1;
    v13 = *MEMORY[0x1E697ADC8];
    v38[2] = *MEMORY[0x1E697AEB0];
    v38[3] = v13;
    v39[2] = MEMORY[0x1E695E110];
    v39[3] = v7;
    v29 = v7;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = *(v12 + 32);
    if (!v16)
    {
      v16 = &stru_1F1D30528;
    }

    v28 = v12;
    v17 = [v15 initWithFormat:@"Apple ID %@ public key", v16];
    v18 = v17;
    if (v17)
    {
      v36[0] = v8;
      v36[1] = v9;
      v37[0] = MEMORY[0x1E695E118];
      v37[1] = v10;
      v36[2] = v11;
      v36[3] = v13;
      v37[2] = MEMORY[0x1E695E110];
      v37[3] = v17;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:4];
      [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x1E697B2D0]];
      [v3 setObject:v19 forKeyedSubscript:*MEMORY[0x1E697B300]];
      [v3 setObject:@"com.apple.sharing.appleidauthentication" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
      v20 = SecKeyCreateRandomKey(v3, &error);
      if (v20)
      {
        v21 = v20;
        v22 = SecKeyCopyPublicKey(v20);
        a1 = v28;
        if (v22)
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            v27 = *(v28 + 32);
            LogPrintF();
          }

          v23 = 0;
        }

        else
        {
          CFRelease(v21);
          v21 = 0;
          v23 = -6762;
        }
      }

      else
      {
        a1 = v28;
        if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v26 = error;
        v23 = NSErrorToOSStatus();

        v22 = 0;
        v21 = 0;
      }
    }

    else
    {
      v19 = 0;
      v22 = 0;
      v21 = 0;
      v23 = -6728;
      a1 = v28;
    }
  }

  else
  {
LABEL_16:
    v18 = 0;
    v19 = 0;
    v29 = 0;
    v14 = 0;
    v22 = 0;
    v21 = 0;
    v23 = -6728;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SFAppleIDCreateKeyPair_block_invoke_2;
  block[3] = &unk_1E788A548;
  v24 = *(a1 + 40);
  v31 = *(a1 + 48);
  v32 = v21;
  v33 = v22;
  v34 = v23;
  dispatch_async(v24, block);

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t SFAppleIDCommonNameForCertificate(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v5 = SecCertificateCopyCommonNames();
      if (v5)
      {
        v2 = v5;
        if ([v5 count])
        {
          v3 = [v2 objectAtIndexedSubscript:0];
          v6 = 0;
          *a2 = v3;
        }

        else
        {
          v6 = 201208;
          if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v3 = 0;
        }
      }

      else
      {
        v6 = 201208;
        if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        OUTLINED_FUNCTION_6_0();
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_0();
      v6 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_0();
    v6 = 4294960591;
  }

  return v6;
}

uint64_t SFAppleIDCreationDateForKey(uint64_t a1, void *a2)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v15 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_2_3();
    v9 = 0;
    v8 = 4294960591;
    goto LABEL_12;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_2_3();
    v9 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v6 = *MEMORY[0x1E697B3D0];
  v16[0] = *MEMORY[0x1E697AFF8];
  v16[1] = v6;
  v17[0] = *MEMORY[0x1E697B020];
  v17[1] = a1;
  v16[2] = *MEMORY[0x1E697B310];
  v17[2] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v7 = SecItemCopyMatching(v2, &v15);
  if (v7)
  {
    v8 = v7;
    v3 = 0;
    v4 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v9 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = 0;
    v4 = 0;
LABEL_11:
    v8 = 4294960569;
    goto LABEL_12;
  }

  v10 = v9;
  v3 = v10;
  if (!v10)
  {
    v4 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E697ACD0]];
  v4 = v11;
  if (v11)
  {
    v12 = v11;
    v8 = 0;
    *a2 = v4;
  }

  else
  {
    v8 = 4294960569;
  }

  v9 = v3;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t SFAppleIDExpirationDateForCertificate(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (!a2)
  {
    return 0;
  }

  SecCertificateNotValidAfter();
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  if (v3)
  {
    v4 = v3;
    *a2 = v4;

    return 0;
  }

  return 4294960534;
}

uint64_t SFAppleIDSerialNumberForCertificate(__SecCertificate *a1, void *a2)
{
  error = 0;
  if (a1)
  {
    if (a2)
    {
      v6 = SecCertificateCopySerialNumberData(a1, &error);
      v2 = error;
      if (v6)
      {
        v3 = v6;
        v7 = malloc_type_malloc((2 * [(__CFData *)v6 length]) | 1, 0x100004077774924uLL);
        if (v7)
        {
          v8 = v7;
          [(__CFData *)v3 bytes];
          [(__CFData *)v3 length];
          DataToHexCStringEx();
          v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
          v4 = v9;
          if (v9)
          {
            v10 = v9;
            v11 = 0;
            *a2 = v4;
          }

          else
          {
            v11 = 4294960534;
          }

          free(v8);
        }

        else
        {
          v4 = 0;
          v11 = 4294960568;
        }
      }

      else
      {
        v11 = NSErrorToOSStatus();
        if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v3 = 0;
        v4 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_3();
      v11 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
    v11 = 4294960591;
  }

  return v11;
}

uint64_t parseValidationRecord(void *a1)
{
  v1 = a1;
  if (v1)
  {
    AppleIDValidationRecordSigningPolicy = SecPolicyCreateAppleIDValidationRecordSigningPolicy();
    if (AppleIDValidationRecordSigningPolicy)
    {
      v3 = AppleIDValidationRecordSigningPolicy;
      if (SecCMSVerifyCopyDataAndAttributes())
      {
        v5 = 201211;
        if (gLogCategory_SFAppleIDKeychainUtilities > 90 || gLogCategory_SFAppleIDKeychainUtilities == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_21;
        }
      }

      else
      {
        v5 = 201211;
        if (gLogCategory_SFAppleIDKeychainUtilities > 90 || gLogCategory_SFAppleIDKeychainUtilities == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_21;
        }
      }

      LogPrintF();
LABEL_21:
      CFRelease(v3);

      goto LABEL_5;
    }

    if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = 4294960534;
  }

  else
  {
    v5 = 4294960591;
  }

LABEL_5:

  return v5;
}

id handleValidationRecordTrustResultSync(void *a1, void *a2)
{
  v4 = a1;
  if (a2 != 1 && a2 != 4)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities > 60 || gLogCategory_SFAppleIDKeychainUtilities == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  Int64 = CFDictionaryGetInt64();
  if ((Int64 - 101) <= 0xFFFFFFFFFFFFFF9BLL)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities > 60)
    {
      goto LABEL_18;
    }

    a2 = Int64;
    if (gLogCategory_SFAppleIDKeychainUtilities == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_18;
    }

LABEL_16:
    LogPrintF();
LABEL_18:
    v12 = 0;
    v9 = 0;
    OUTLINED_FUNCTION_6_0();
    goto LABEL_19;
  }

  CFDateGetTypeID();
  a2 = CFDictionaryGetTypedValue();
  if (a2)
  {
    CFDictionaryGetDouble();
    v8 = v7;
    v2 = [MEMORY[0x1E695DF00] date];
    v9 = [a2 dateByAddingTimeInterval:-86400.0];
    if ([v9 compare:v2] == -1)
    {
      v10 = 2592000.0;
      if (v8 != 0.0)
      {
        v10 = v8;
      }

      v11 = [a2 dateByAddingTimeInterval:v10];

      if ([v2 compare:v11] == -1)
      {
        v12 = v4;
      }

      else
      {
        v12 = 0;
      }

      v9 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v9 = 0;
    v2 = 0;
  }

LABEL_19:

  return v12;
}

void SFAppleIDParseValidationRecordData(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v22 = 0;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
  }

  v9 = v8;
  v10 = 201211;
  v21 = 0;
  v11 = parseValidationRecord(v5);
  v12 = 0;
  v13 = v12;
  if (!v11)
  {
    result[0] = MEMORY[0x1E69E9820];
    result[1] = 3221225472;
    result[2] = __SFAppleIDParseValidationRecordData_block_invoke;
    result[3] = &unk_1E788A5C0;
    v19 = v12;
    v20 = v7;
    v14 = SecTrustEvaluateAsync(v22, v9, result);

    if (v14)
    {
      v10 = 201214;
    }

    else
    {
      v10 = 0;
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v7 && v10)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __SFAppleIDParseValidationRecordData_block_invoke_2;
    v15[3] = &unk_1E788A598;
    v16 = v7;
    v17 = v10;
    dispatch_async(v9, v15);
  }
}

void __SFAppleIDParseValidationRecordData_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = handleValidationRecordTrustResultSync(v4, a3);
  if (v6)
  {
    v6[2](v6, v5, 0);
  }
}

uint64_t SFAppleIDVerifyCertificateChainSync(void *a1, int *a2)
{
  v3 = a1;
  trust = 0;
  error = 0;
  if (v3)
  {
    AppleIDAuthorityPolicy = SecPolicyCreateAppleIDAuthorityPolicy();
    if (AppleIDAuthorityPolicy)
    {
      if (SecTrustCreateWithCertificates(v3, AppleIDAuthorityPolicy, &trust))
      {
        if (gLogCategory_SFAppleIDKeychainUtilities > 90 || gLogCategory_SFAppleIDKeychainUtilities == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (trust)
        {
          if (SecTrustEvaluateWithError(trust, &error))
          {
            v5 = 0;
            v6 = 0;
            v7 = 1;
          }

          else
          {
            v6 = error;
            if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v5 = NSErrorToOSStatus();
            v7 = 0;
          }

LABEL_7:
          if (trust)
          {
            CFRelease(trust);
          }

          if (!AppleIDAuthorityPolicy)
          {
LABEL_11:
            if (!a2)
            {
              goto LABEL_19;
            }

            goto LABEL_12;
          }

LABEL_10:
          CFRelease(AppleIDAuthorityPolicy);
          goto LABEL_11;
        }

        if (gLogCategory_SFAppleIDKeychainUtilities > 90)
        {
          v6 = 0;
          v7 = 0;
          v5 = -6762;
          goto LABEL_10;
        }

        if (gLogCategory_SFAppleIDKeychainUtilities == -1 && !_LogCategory_Initialize())
        {
LABEL_31:
          v6 = 0;
          v7 = 0;
          v5 = -6762;
          goto LABEL_7;
        }
      }
    }

    else if (gLogCategory_SFAppleIDKeychainUtilities > 90 || gLogCategory_SFAppleIDKeychainUtilities == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_31;
    }

    LogPrintF();
    goto LABEL_31;
  }

  v6 = 0;
  v7 = 0;
  v5 = -6705;
  if (!a2)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = -6700;
  }

  *a2 = v9;
LABEL_19:

  return v7;
}

uint64_t SFAppleIDSignedHashForData(void *a1, __SecKey *a2, const __CFData **a3)
{
  v5 = a1;
  error = 0;
  v6 = 4294960591;
  if (v5 && a2)
  {
    if (a3)
    {
      v7 = malloc_type_malloc(0x20uLL, 0x3B067BDDuLL);
      if (v7)
      {
        v8 = v7;
        if (CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v7))
        {
          v9 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:32];
          if (v9)
          {
            v10 = v9;
            v11 = SecKeyCreateSignature(a2, *MEMORY[0x1E697B1C8], v9, &error);
            if (v11)
            {
              v12 = v11;
              *a3 = v12;

              v6 = 0;
            }

            else
            {
              if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v14 = error;
              v6 = NSErrorToOSStatus();
            }
          }

          else
          {
            v6 = 4294960568;
          }
        }

        else
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v6 = 4294960534;
        }

        free(v8);
      }

      else
      {
        v6 = 4294960568;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t SFAppleIDVerifySignedHashForData(void *a1, void *a2, __SecKey *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  error = 0;
  v8 = 4294960591;
  if (v5 && v6 && a3)
  {
    v9 = malloc_type_malloc(0x20uLL, 0x4610950EuLL);
    if (v9)
    {
      v10 = v9;
      if (CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v9))
      {
        v11 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:32];
        if (v11)
        {
          if (SecKeyVerifySignature(a3, *MEMORY[0x1E697B1C8], v11, v7, &error))
          {
            v8 = 0;
          }

          else
          {
            if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v13 = error;
            v8 = NSErrorToOSStatus();
          }
        }

        else
        {
          v8 = 4294960568;
        }
      }

      else
      {
        if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v11 = 0;
        v8 = 4294960534;
      }

      free(v10);
    }

    else
    {
      v8 = 4294960568;
    }
  }

  return v8;
}

uint64_t SFAppleIDGetAllCertificatePersistentReferencesFromKeychain(void *a1)
{
  v47[4] = *MEMORY[0x1E69E9840];
  result = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_3();
    v5 = 0;
    v10 = 0;
    v13 = 0;
    goto LABEL_48;
  }

  v4 = a1;
  v5 = [MEMORY[0x1E695DF70] array];
  if (!v5)
  {
    OUTLINED_FUNCTION_3();
    v10 = 0;
    v13 = 4294960568;
    goto LABEL_48;
  }

  if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *MEMORY[0x1E697B000];
  v7 = *MEMORY[0x1E697B260];
  v46[0] = *MEMORY[0x1E697AFF8];
  v46[1] = v7;
  v8 = *MEMORY[0x1E697B268];
  v47[0] = v6;
  v47[1] = v8;
  v9 = *MEMORY[0x1E697B328];
  v46[2] = *MEMORY[0x1E697ABD0];
  v46[3] = v9;
  v47[2] = @"com.apple.sharing.appleidauthentication";
  v47[3] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:4];
  v11 = SecItemCopyMatching(v10, &result);
  if (v11 == -25300)
  {
    v12 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    result = v12;
  }

  else
  {
    v13 = v11;
    if (v11)
    {
      OUTLINED_FUNCTION_4_2();
      if (v24 ^ v25 | v23 && (v31 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      OUTLINED_FUNCTION_3();
      goto LABEL_48;
    }

    v12 = result;
  }

  if (!v12)
  {
    OUTLINED_FUNCTION_3();
    v13 = 4294960534;
    goto LABEL_48;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v1 = v12;
  v3 = [v1 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v3)
  {
    v2 = 0;
    goto LABEL_43;
  }

  v33 = v4;
  v34 = v10;
  v35 = v5;
  v36 = 0;
  v2 = 0;
  v14 = 0;
  v37 = 0;
  v15 = *v41;
  do
  {
    v16 = 0;
    do
    {
      v17 = v14;
      if (*v41 != v15)
      {
        objc_enumerationMutation(v1);
      }

      v14 = *(*(&v40 + 1) + 8 * v16);

      result = v14;
      v18 = CFGetTypeID(v14);
      if (v18 == SecCertificateGetTypeID())
      {
        v19 = result;

        v39 = 0;
        v20 = SFAppleIDCommonNameForCertificate(v19, &v39);
        v21 = v39;
        v2 = v21;
        if (v20)
        {
          OUTLINED_FUNCTION_4_2();
          if (v24 ^ v25 | v23 && (v22 != -1 || _LogCategory_Initialize()))
          {
            v32 = v20;
LABEL_25:
            LogPrintF();
          }
        }

        else if ([v21 hasPrefix:@"com.apple.idms.appleid."])
        {

          v38 = 0;
          v26 = SFAppleIDCopyKeychainReferenceForCertificate(v19, &v38);
          v37 = v38;
          if (v26)
          {
            if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              v32 = v26;
              goto LABEL_25;
            }
          }

          else
          {
            if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              v32 = v2;
              LogPrintF();
            }

            [v35 addObject:{v37, v32}];
            ++v36;
          }
        }
      }

      v16 = v16 + 1;
    }

    while (v3 != v16);
    v27 = [v1 countByEnumeratingWithState:&v40 objects:v45 count:16];
    v3 = v27;
  }

  while (v27);

  v10 = v34;
  v5 = v35;
  v4 = v33;
  v3 = v37;
LABEL_43:

  if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v28 = v5;
  v13 = 0;
  *v4 = v5;
LABEL_48:

  v29 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t SFAppleIDGetAllKeyPersistentReferencesFromKeychain(unint64_t a1, unint64_t a2)
{
  v65[3] = *MEMORY[0x1E69E9840];
  result = 0;
  if (!(a1 | a2))
  {
    OUTLINED_FUNCTION_0_0();
    v6 = 0;
    v7 = 0;
    v12 = 0;
    v15 = 0;
    goto LABEL_79;
  }

  v4 = a2;
  v5 = a1;
  v6 = [MEMORY[0x1E695DF70] array];
  if (!v6)
  {
    OUTLINED_FUNCTION_0_0();
    v7 = 0;
LABEL_83:
    v12 = 0;
    v15 = 4294960568;
    goto LABEL_79;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  if (!v7)
  {
    OUTLINED_FUNCTION_0_0();
    goto LABEL_83;
  }

  if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = *MEMORY[0x1E697B020];
  v9 = *MEMORY[0x1E697B260];
  v51 = *MEMORY[0x1E697AFF8];
  v62[0] = *MEMORY[0x1E697AFF8];
  v62[1] = v9;
  v10 = *MEMORY[0x1E697B268];
  v50 = v8;
  v63[0] = v8;
  v63[1] = v10;
  v11 = *MEMORY[0x1E697B328];
  v62[2] = *MEMORY[0x1E697ABD0];
  v62[3] = v11;
  v63[2] = @"com.apple.sharing.appleidauthentication";
  v63[3] = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:4];
  v13 = SecItemCopyMatching(v12, &result);
  if (v13 == -25300)
  {
    v14 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    result = v14;
  }

  else
  {
    v15 = v13;
    if (v13)
    {
      if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      OUTLINED_FUNCTION_0_0();
      goto LABEL_79;
    }

    v14 = result;
  }

  if (!v14)
  {
    OUTLINED_FUNCTION_0_0();
    v15 = 4294960534;
    goto LABEL_79;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v14;
  v3 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (!v3)
  {
    v2 = 0;
    v47 = 0;
    goto LABEL_74;
  }

  v40 = v5;
  v41 = v4;
  v42 = v12;
  v43 = v7;
  v44 = v6;
  v45 = 0;
  v2 = 0;
  v49 = 0;
  v16 = 0;
  v46 = 0;
  v47 = 0;
  v17 = *v56;
  v18 = *MEMORY[0x1E697B3D0];
  v19 = *MEMORY[0x1E697B310];
  v48 = *MEMORY[0x1E697ADC8];
  do
  {
    v20 = 0;
    do
    {
      v21 = v16;
      if (*v56 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v55 + 1) + 8 * v20);

      result = v16;
      v22 = CFGetTypeID(v16);
      if (v22 == SecKeyGetTypeID())
      {
        v23 = result;

        cf = 0;
        if (v23)
        {
          v64[0] = v51;
          v64[1] = v18;
          v65[0] = v50;
          v65[1] = v23;
          v64[2] = v19;
          v65[2] = MEMORY[0x1E695E118];
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:3];
          v25 = SecItemCopyMatching(v24, &cf);
          if (v25)
          {
            v29 = v25;
            if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              v39 = v29;
              LogPrintF();
            }

            goto LABEL_60;
          }

          if (cf)
          {
            v26 = CFGetTypeID(cf);
            if (v26 == CFDictionaryGetTypeID())
            {
              v27 = cf;
              v28 = cf;
              v29 = 0;
              cf = 0;
              goto LABEL_24;
            }

            v29 = 4294960540;
LABEL_60:
            if (cf)
            {
              CFRelease(cf);
            }

            v27 = 0;
          }

          else
          {
            v27 = 0;
            v29 = 4294960534;
          }
        }

        else
        {
          v27 = 0;
          v24 = 0;
          v29 = 4294960591;
        }

LABEL_24:

        v30 = v27;
        v2 = v30;
        if (v29)
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            v39 = v29;
            LogPrintF();
          }

          goto LABEL_35;
        }

        if (!v30)
        {
          goto LABEL_35;
        }

        CFStringGetTypeID();
        v31 = CFDictionaryGetTypedValue();

        if ([v31 length] && objc_msgSend(v31, "hasPrefix:", @"Apple ID "))
        {
          if (![v31 hasSuffix:@" private key"])
          {
            goto LABEL_32;
          }

          v54 = 0;
          v32 = SFAppleIDCopyKeychainReferenceForKey(v23, &v54);
          v47 = v54;
          if (v32)
          {
            if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              v39 = v32;
              goto LABEL_45;
            }
          }

          else
          {
            if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              v39 = v31;
              LogPrintF();
            }

            [v44 addObject:{v47, v39}];
            ++v46;
LABEL_32:
            if ([v31 hasSuffix:{@" public key", v39}])
            {

              v53 = 0;
              v33 = SFAppleIDCopyKeychainReferenceForKey(v23, &v53);
              v47 = v53;
              if (v33)
              {
                if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
                {
                  v39 = v33;
LABEL_45:
                  LogPrintF();
                }
              }

              else
              {
                if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
                {
                  v39 = v31;
                  LogPrintF();
                }

                [v43 addObject:{v47, v39}];
                ++v45;
              }
            }
          }
        }

        v49 = v31;
      }

LABEL_35:
      v20 = v20 + 1;
    }

    while (v3 != v20);
    v34 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    v3 = v34;
  }

  while (v34);

  v7 = v43;
  v6 = v44;
  v4 = v41;
  v12 = v42;
  v5 = v40;
  v3 = v49;
LABEL_74:

  if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v35 = v6;
  *v5 = v6;
  v36 = v7;
  v15 = 0;
  *v4 = v7;
LABEL_79:

  v37 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t SFAppleIDRemoveAllCertificatesFromKeychain(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v23 = 0;
  v2 = SFAppleIDGetAllCertificatePersistentReferencesFromKeychain(&v23);
  v3 = v23;
  v4 = v3;
  if (v2)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          v12 = v9;
          if (*v20 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v19 + 1) + 8 * i);

          v2 = SFAppleIDRemoveCertificateFromKeychain(v1, v9);
          if (v2)
          {
            OUTLINED_FUNCTION_5_0();
            if (v15 ^ v16 | v14 && (v13 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }
          }

          else
          {
            ++v8;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);

      if (v8 && gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {

      v2 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t SFAppleIDRemoveAllKeysFromKeychain(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v40 = 0;
  v41 = 0;
  v2 = SFAppleIDGetAllKeyPersistentReferencesFromKeychain(&v41, &v40);
  v3 = v41;
  v4 = v40;
  if (v2)
  {
    OUTLINED_FUNCTION_5_0();
    if (v16 ^ v17 | v15 && (v29 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v43 count:16];
    v31 = v4;
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          v12 = v9;
          if (*v37 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v36 + 1) + 8 * i);

          v13 = SFAppleIDRemoveKeyFromKeychain(v1, v9);
          if (v13)
          {
            OUTLINED_FUNCTION_5_0();
            if (v16 ^ v17 | v15 && (v14 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }
          }

          else
          {
            ++v8;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v7);

      if (v8 && gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v4 = v31;
    }

    else
    {

      v13 = 0;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = v4;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = 0;
      v23 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          v25 = v22;
          if (*v33 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v32 + 1) + 8 * j);

          v2 = SFAppleIDRemoveKeyFromKeychain(v1, v22);
          if (v2)
          {
            OUTLINED_FUNCTION_5_0();
            if (v16 ^ v17 | v15 && (v26 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }
          }

          else
          {
            ++v21;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v20);

      if (v21)
      {
        v3 = v30;
        if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        v3 = v30;
      }

      v4 = v31;
    }

    else
    {

      v2 = v13;
      v3 = v30;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v2;
}

void SFBrowserCreate_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void SFBrowserSetDispatchQueue_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void SFBrowserSetMode_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void SFBrowserSetOptions_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void SFBrowserGetRootNode_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1A9662000, v0, v1, "SFBrowserGetRootNode (browser = %p)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SFBrowserCopyChildren_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void SFBrowserCopyChildren_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1A9662000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SFBrowserCopySidebarChildren_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1A9662000, v0, v1, "SFBrowserCopySidebarChildren (browser = %p)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SFBrowserOpenNode_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void SFBrowserAddNode_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void SFBrowserRemoveNode_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void SFBrowserCloseNode_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void SFBrowserInvalidate_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1A9662000, v0, v1, "SFBrowserInvalidate (browser = %p)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SFBrowserCopyNodeForURL_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void xpcDictionaryCopyCFStringForKey()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFStringForKey xpcNode is not a dictionary", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFStringForKey result is not a string", v2, v3, v4, v5, v6);
}

void xpcDictionaryCopyCFArrayForKey()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFArrayForKey xpcNode is not a dictionary", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFArrayForKey result is not a array", v2, v3, v4, v5, v6);
}

void xpcDictionaryCopyCFDataForKey()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFDataForKey xpcNode is not a dictionary", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFDataForKey result is not a data", v2, v3, v4, v5, v6);
}

void xpcDictionaryCopyCFNumberForKey()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFNumberForKey xpcNode is not a dictionary", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFNumberForKey result is not a number", v2, v3, v4, v5, v6);
}

void xpcDictionaryCopyCFURLForKey()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFURLForKey xpcNode is not a dictionary", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFURLForKey result is not a url", v2, v3, v4, v5, v6);
}

void __getCKContainerIDClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKContainerIDClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingMailRequest.m" lineNumber:21 description:{@"Unable to find class %s", "CKContainerID"}];

  __break(1u);
}

void CloudKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationCloudSharingMailRequest.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKShareClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKShareClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingMailRequest.m" lineNumber:22 description:{@"Unable to find class %s", "CKShare"}];

  __break(1u);
}

void __getCKContainerSetupInfoClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKContainerSetupInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingMailRequest.m" lineNumber:20 description:{@"Unable to find class %s", "CKContainerSetupInfo"}];

  __break(1u);
}

void SFOperationCreate_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_1A9662000, v0, v1, "SFOperationCreate (alloc = %p, kind = %@)");
  v2 = *MEMORY[0x1E69E9840];
}

void _SFOperationCreateInternal_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1A9662000, v0, v1, "SFOperationCreate (kind = %@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SFOperationSetDispatchQueue_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_1A9662000, v0, v1, "SFOperationSetDispatchQueue (%@, queue = %p)");
  v2 = *MEMORY[0x1E69E9840];
}

void SFOperationCopyProperty_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_1A9662000, v0, v1, "SFOperationCopyProperty (%@, name = %@)");
  v2 = *MEMORY[0x1E69E9840];
}

void SFOperationResume_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1A9662000, v0, v1, "SFOperationResume (%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SFOperationCancel_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1A9662000, v0, v1, "SFOperationCancel (%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _SFOperationAddSandboxExtensionForFileURL_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v6 = 136315394;
  v7 = a1;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "sandbox_extension_issue_file failed for file %s with error %d", &v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void _SFOperationAddSandboxExtensionForFileURL_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _SFOperationAddSandboxExtensionForFileURL_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __getAFPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFSiriController.m" lineNumber:37 description:{@"Unable to find class %s", "AFPreferences"}];

  __break(1u);
}

void __getAFPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFSiriController.m" lineNumber:36 description:{@"%s", *a1}];

  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVTPreferencesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFSiriController.m" lineNumber:31 description:{@"Unable to find class %s", "VTPreferences"}];

  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VoiceTriggerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFSiriController.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void __getUNNotificationSettingsCenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUNNotificationSettingsCenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFSiriController.m" lineNumber:46 description:{@"Unable to find class %s", "UNNotificationSettingsCenter"}];

  __break(1u);
}

void UserNotificationsSettingsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UserNotificationsSettingsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFSiriController.m" lineNumber:44 description:{@"%s", *a1}];

  __break(1u);
}

void __getUNMutableNotificationSystemSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUNMutableNotificationSystemSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFSiriController.m" lineNumber:45 description:{@"Unable to find class %s", "UNMutableNotificationSystemSettings"}];

  __break(1u);
}

void __getTUUserConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUUserConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFSiriController.m" lineNumber:41 description:{@"Unable to find class %s", "TUUserConfiguration"}];

  __break(1u);
}

void __getTUUserConfigurationClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFSiriController.m" lineNumber:40 description:{@"%s", *a1}];

  __break(1u);
}

void createURL_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "createURL: CFURLSetResourcePropertyForKey %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void SFIsBluetoothEnabled_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void SFCreateLivePhotoBundle_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 path];
  OUTLINED_FUNCTION_2();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1A9662000, a3, OS_LOG_TYPE_ERROR, "Failed write live photo bundle to %@ (%@)", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void SFIsiCloudFamilyLink_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 targetApplicationProxy];
  v2 = [v1 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void SFIsiCloudFamilyLink_cold_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a2 description];
  OUTLINED_FUNCTION_4_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void SFIsiCloudFamilyLink_cold_3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 scheme];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void SFRemoteTextInputPayloadFromLegacyAPI_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void SFRTIDataPayloadForData_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void SFAirDropDownloadsURL_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void SFRealpathForFileURL_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void SFRealpathForFileURL_cold_2(uint64_t a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v4;
  _os_log_fault_impl(&dword_1A9662000, log, OS_LOG_TYPE_FAULT, "SFRealpathForFileURL: realpath for %s failed: %d", buf, 0x12u);
}

void SFRealpathForFileURL_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __SFCreateThumbnailForAirDropItem_block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void SFPerformDataMigrationIfNeeded_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIDMPerformMigrationIfNeeded(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFUtilities.m" lineNumber:105 description:{@"%s", dlerror()}];

  __break(1u);
}

void SFAirDropModelImageNameFromModelString_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __getDMPerformMigrationIfNeededSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DataMigrationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFUtilities.m" lineNumber:104 description:{@"%s", *a1}];

  __break(1u);
}

void SFAppleIDClientCopyCertificate(uint64_t a1, void *a2)
{
  v5 = OUTLINED_FUNCTION_21(a1, a2);
  v6 = v2;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = SFMainQueue(v6);
  }

  v9 = v8;
  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    v10 = objc_alloc_init(SFAppleIDClient);
    if (v10)
    {
      OUTLINED_FUNCTION_20(v10, v11);
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_17();
      v27 = v7;
      v12 = v4;
      OUTLINED_FUNCTION_14();
      [v13 copyCertificateForAppleID:? withCompletion:?];

LABEL_8:
      goto LABEL_9;
    }

LABEL_11:
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_16();
    v14 = v7;
    OUTLINED_FUNCTION_13(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, __SFAppleIDClientCopyCertificate_block_invoke_2, &unk_1E788A598, v24, v26);
    v4 = v25;
    goto LABEL_8;
  }

LABEL_9:
}

void SFAppleIDClientCopyCertificateInfo(uint64_t a1, void *a2)
{
  v5 = OUTLINED_FUNCTION_21(a1, a2);
  v6 = v2;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = SFMainQueue(v6);
  }

  v9 = v8;
  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v13 = 201201;
    goto LABEL_13;
  }

  if (v7)
  {
    v10 = objc_alloc_init(SFAppleIDClient);
    if (v10)
    {
      OUTLINED_FUNCTION_20(v10, v11);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __SFAppleIDClientCopyCertificateInfo_block_invoke;
      v17[3] = &unk_1E788C438;
      v20 = v3;
      v18 = v4;
      v19 = v7;
      v12 = v4;
      [v12 myAccountWithCompletion:v17];

LABEL_8:
      goto LABEL_9;
    }

    v13 = -6762;
LABEL_13:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SFAppleIDClientCopyCertificateInfo_block_invoke_2;
    block[3] = &unk_1E788A598;
    v15 = v7;
    v16 = v13;
    dispatch_async(v9, block);
    v12 = v15;
    goto LABEL_8;
  }

LABEL_9:
}

void __SFAppleIDClientCopyCertificateInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v7 = NSErrorToOSStatus();
  if (v7)
  {
    OUTLINED_FUNCTION_15();
  }

  else if (v18)
  {
    a3 = [v18 appleID];
    v3 = [a3 isEqualToString:*(a1 + 48)];

    if (v3)
    {
      a3 = [MEMORY[0x1E695DF90] dictionary];
      if (a3)
      {
        v8 = [v18 altDSID];

        if (v8)
        {
          v9 = [v18 altDSID];
          [a3 setObject:v9 forKeyedSubscript:@"encDsId"];
        }

        v10 = [v18 identity];
        v3 = [v10 copyCertificate];

        if (v3)
        {
          [a3 setObject:v3 forKeyedSubscript:@"CertificateReference"];
        }

        v11 = [v18 identity];
        v12 = [v11 serialNumber];

        if (v12)
        {
          v13 = [v18 identity];
          v14 = [v13 serialNumber];
          [a3 setObject:v14 forKeyedSubscript:@"SerialNumber"];
        }

        v15 = [v18 validationRecord];
        v4 = [v15 data];

        if (v4)
        {
          [a3 setObject:v4 forKeyedSubscript:@"AppleIDAccountValidationRecordData"];
        }

        v7 = 0;
      }

      else
      {
        v4 = 0;
        v3 = 0;
        v7 = 4294960568;
      }
    }

    else
    {
      OUTLINED_FUNCTION_15();
      v7 = 201201;
    }
  }

  else
  {
    OUTLINED_FUNCTION_15();
    v7 = 4294960534;
  }

  v16 = *(a1 + 40);
  v17 = a3;
  (*(v16 + 16))(v16, v17, v7);
  [*(a1 + 32) invalidate];
  if (v3)
  {
    CFRelease(v3);
  }
}

void SFAppleIDClientCopyIdentity(uint64_t a1, void *a2)
{
  v5 = OUTLINED_FUNCTION_21(a1, a2);
  v6 = v2;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = SFMainQueue(v6);
  }

  v9 = v8;
  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    v10 = objc_alloc_init(SFAppleIDClient);
    if (v10)
    {
      OUTLINED_FUNCTION_20(v10, v11);
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_17();
      v27 = v7;
      v12 = v4;
      OUTLINED_FUNCTION_14();
      [v13 copyIdentityForAppleID:? withCompletion:?];

LABEL_8:
      goto LABEL_9;
    }

LABEL_11:
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_16();
    v14 = v7;
    OUTLINED_FUNCTION_13(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, __SFAppleIDClientCopyIdentity_block_invoke_2, &unk_1E788A598, v24, v26);
    v4 = v25;
    goto LABEL_8;
  }

LABEL_9:
}

void SFAppleIDClientCopyMyAccountInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = SFMainQueue(v4);
  }

  v7 = v6;
  if (v5)
  {
    v8 = objc_alloc_init(SFAppleIDClient);
    if (v8)
    {
      v9 = v8;
      [(SFAppleIDClient *)v8 setDispatchQueue:v7];
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_17();
      v25 = __SFAppleIDClientCopyMyAccountInfo_block_invoke;
      v26 = &unk_1E788C488;
      v27 = v9;
      v28 = v5;
      v10 = v9;
      [(SFAppleIDClient *)v10 myAccountWithCompletion:v24];
    }

    else
    {
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_16();
      v11 = v5;
      OUTLINED_FUNCTION_18(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, __SFAppleIDClientCopyMyAccountInfo_block_invoke_2, &unk_1E788A598, v21, v23);
      v10 = v22;
    }
  }
}

void __SFAppleIDClientCopyMyAccountInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  if (v5)
  {
    NSErrorToOSStatus();
  }

  else if (v33)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    if (v6)
    {
      v7 = [v33 appleID];

      if (v7)
      {
        v8 = [v33 appleID];
        [v6 setObject:v8 forKeyedSubscript:@"AppleID"];
      }

      v9 = [v33 identity];
      v10 = [v9 certificateExpirationDate];

      if (v10)
      {
        v11 = [v33 identity];
        v12 = [v11 certificateExpirationDate];
        OUTLINED_FUNCTION_19();
      }

      v13 = [v33 identity];
      v14 = [v13 serialNumber];

      if (v14)
      {
        v15 = [v33 identity];
        v16 = [v15 serialNumber];
        OUTLINED_FUNCTION_19();
      }

      v17 = [v33 contactInfo];
      v18 = [v17 firstName];

      if (v18)
      {
        v19 = [v33 contactInfo];
        v20 = [v19 firstName];
        OUTLINED_FUNCTION_19();
      }

      v21 = [v33 contactInfo];
      v22 = [v21 lastName];

      if (v22)
      {
        v23 = [v33 contactInfo];
        v24 = [v23 lastName];
        OUTLINED_FUNCTION_19();
      }

      v25 = [v33 contactInfo];
      v26 = [v25 validatedEmailAddresses];

      if (v26)
      {
        v27 = [v33 contactInfo];
        v28 = [v27 validatedEmailAddresses];
        OUTLINED_FUNCTION_19();
      }

      v29 = [v33 contactInfo];
      v30 = [v29 validatedPhoneNumbers];

      if (v30)
      {
        v31 = [v33 contactInfo];
        v32 = [v31 validatedPhoneNumbers];
        OUTLINED_FUNCTION_19();
      }

      if (![v6 count])
      {
      }
    }
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void SFAppleIDClientCopyMyAppleID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = SFMainQueue(v4);
  }

  v7 = v6;
  if (v5)
  {
    v8 = objc_alloc_init(SFAppleIDClient);
    if (v8)
    {
      v9 = v8;
      [(SFAppleIDClient *)v8 setDispatchQueue:v7];
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_17();
      v25 = __SFAppleIDClientCopyMyAppleID_block_invoke;
      v26 = &unk_1E788C488;
      v27 = v9;
      v28 = v5;
      v10 = v9;
      [(SFAppleIDClient *)v10 myAccountWithCompletion:v24];
    }

    else
    {
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_16();
      v11 = v5;
      OUTLINED_FUNCTION_18(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, __SFAppleIDClientCopyMyAppleID_block_invoke_2, &unk_1E788A598, v21, v23);
      v10 = v22;
    }
  }
}

void SFAppleIDClientCopyPersonInfo(uint64_t a1, void *a2)
{
  v5 = OUTLINED_FUNCTION_21(a1, a2);
  v6 = v2;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = SFMainQueue(v6);
  }

  v9 = v8;
  if (v7)
  {
    if (v3 && (v10 = objc_alloc_init(SFAppleIDClient)) != 0)
    {
      OUTLINED_FUNCTION_20(v10, v11);
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_17();
      v27 = v7;
      v12 = v4;
      OUTLINED_FUNCTION_14();
      [v13 personInfoWithEmailOrPhone:? completion:?];
    }

    else
    {
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_16();
      v14 = v7;
      OUTLINED_FUNCTION_13(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, __SFAppleIDClientCopyPersonInfo_block_invoke_2, &unk_1E788A598, v24, v26);
      v4 = v25;
    }
  }
}

void __SFAppleIDClientCopyPersonInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    NSErrorToOSStatus();
    v7 = 0;
  }

  else if (v5)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    if (v7)
    {
      v8 = [v5 accountIdentifier];

      if (v8)
      {
        v9 = [v5 accountIdentifier];
        [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];
      }

      v10 = [v5 altDSID];

      if (v10)
      {
        v11 = [v5 altDSID];
        [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];
      }

      v12 = [v5 matchedValue];

      if (v12)
      {
        v13 = [v5 matchedValue];
        [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];
      }

      v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "certificateStatus")}];
      [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];

      v16[0] = v7;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      objc_claimAutoreleasedReturnValue();
    }
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];

  v15 = *MEMORY[0x1E69E9840];
}

void ExtensionFoundationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ExtensionFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFShareSheetSessionTestingSnapshot.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getSLCollaborationFooterViewModelClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSLCollaborationFooterViewModelClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationItem.m" lineNumber:33 description:{@"Unable to find class %s", "SLCollaborationFooterViewModel"}];

  __break(1u);
}

void __getSLCollaborationFooterViewModelClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SocialLayerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationItem.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void SharedWithYouCoreLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharedWithYouCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationUtilities.m" lineNumber:120 description:{@"%s", *a1}];

  __break(1u);
}

void get_CKCloudKitPreShareType_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *get_CKCloudKitPreShareType(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:68 description:{@"%s", dlerror()}];

  __break(1u);
}

void get_CKCloudKitPostShareType_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *get_CKCloudKitPostShareType(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:69 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_CKSharingAccessTypeFromOptionsGroups_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CKShareParticipantPermission soft_CKSharingAccessTypeFromOptionsGroups(NSArray<_SWCollaborationOptionsGroup *> *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:79 description:{@"%s", dlerror()}];

  __break(1u);
}

void getCKShareTitleKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCKShareTitleKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:98 description:{@"%s", dlerror()}];

  __break(1u);
}

void get_SWPendingCollaborationTypeIdentifier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *get_SWPendingCollaborationTypeIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:128 description:{@"%s", dlerror()}];

  __break(1u);
}

void getUTCollaborationOptionsTypeIdentifier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getUTCollaborationOptionsTypeIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:122 description:{@"%s", dlerror()}];

  __break(1u);
}

void getCKErrorDomain_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCKErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:71 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getFPItemManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFPItemManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:55 description:{@"Unable to find class %s", "FPItemManager"}];

  __break(1u);
}

void FileProviderLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationUtilities.m" lineNumber:54 description:{@"%s", *a1}];

  __break(1u);
}

void CloudKitLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationUtilities.m" lineNumber:66 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKAllowedSharingOptionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKAllowedSharingOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:77 description:{@"Unable to find class %s", "CKAllowedSharingOptions"}];

  __break(1u);
}

void __getCloudSharingClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCloudSharingClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:47 description:{@"Unable to find class %s", "CloudSharing"}];

  __break(1u);
}

void __getCloudSharingClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudSharingLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationUtilities.m" lineNumber:46 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKPostSharingContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKPostSharingContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:97 description:{@"Unable to find class %s", "CKPostSharingContext"}];

  __break(1u);
}

void __getCKPreSharingContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKPreSharingContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:96 description:{@"Unable to find class %s", "CKPreSharingContext"}];

  __break(1u);
}

void __getCKContainerSetupInfoClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKContainerSetupInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:74 description:{@"Unable to find class %s", "CKContainerSetupInfo"}];

  __break(1u);
}

void __getLPiCloudSharingMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPiCloudSharingMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:105 description:{@"Unable to find class %s", "LPiCloudSharingMetadata"}];

  __break(1u);
}

void LinkPresentationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationUtilities.m" lineNumber:104 description:{@"%s", *a1}];

  __break(1u);
}

void __getLPImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:106 description:{@"Unable to find class %s", "LPImage"}];

  __break(1u);
}

void __getLPSharedObjectMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPSharedObjectMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:108 description:{@"Unable to find class %s", "LPSharedObjectMetadata"}];

  __break(1u);
}

void __getLPLinkMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:107 description:{@"Unable to find class %s", "LPLinkMetadata"}];

  __break(1u);
}

void __getFPProviderDomainClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFPProviderDomainClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:56 description:{@"Unable to find class %s", "FPProviderDomain"}];

  __break(1u);
}

int *_btServiceEventHandler_cold_1(uint64_t a1, int **a2)
{
  result = *a2;
  v3 = **a2;
  if (v3 <= 90)
  {
    if (v3 != -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_2_10();
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v5 = *a2;
      goto LABEL_3;
    }
  }

  return result;
}

int *_btServiceEventHandler_cold_2(int **a1)
{
  result = *a1;
  if (*result <= 30)
  {
    if (*result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = *a1;
      return LogPrintF();
    }
  }

  return result;
}

int *_btPairingAgentUserConfirmationHandler_cold_1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 136);
  if (*result <= 90)
  {
    if (*result != -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_2_10();
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = *(a2 + 136);
      goto LABEL_3;
    }
  }

  return result;
}

void *SFLocalizePhoneNumber(void *a1)
{
  v1 = a1;
  active = CPPhoneNumberCopyActiveCountryCode();
  v3 = PNCopyBestGuessNormalizedNumberForCountry();
  if (v3)
  {
    [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    v4 = CFPhoneNumberCreate();
    free(v3);
    if (v4)
    {
      CFPhoneNumberCreateString();
      v5 = OUTLINED_FUNCTION_1_14();
      CFRelease(v5);
    }

    else
    {
      v3 = 0;
    }
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  v7 = v6;

  return v6;
}

void *SFNormalizePhoneNumber(void *a1)
{
  v1 = a1;
  active = CPPhoneNumberCopyActiveCountryCode();
  v3 = PNCopyBestGuessNormalizedNumberForCountry();
  if (v3)
  {
    [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    v4 = CFPhoneNumberCreate();
    free(v3);
    if (v4 && (String = CFPhoneNumberCreateString(), CFRelease(v4), String))
    {
      v6 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+"];
      v3 = [String stringByTrimmingCharactersInSet:v6];
    }

    else
    {
      v3 = 0;
    }
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v1;
  }

  v8 = v7;

  return v7;
}

void __getCNContactClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNContactClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFPeopleSuggestion.m" lineNumber:18 description:{@"Unable to find class %s", "CNContact"}];

  __break(1u);
}

void ContactsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFPeopleSuggestion.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getCNMutableContactClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNMutableContactClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFPeopleSuggestion.m" lineNumber:19 description:{@"Unable to find class %s", "CNMutableContact"}];

  __break(1u);
}

void __getINImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFPeopleSuggestion.m" lineNumber:22 description:{@"Unable to find class %s", "INImage"}];

  __break(1u);
}

void __getINImageClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntentsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFPeopleSuggestion.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void SFDeviceSetupHomeKitInfo_cold_2(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void SFDeviceSetupHomeKitInfo_cold_3(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void SFDeviceSetupHomeKitInfo_cold_4(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void __getCKShareClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKShareClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingRequest.m" lineNumber:23 description:{@"Unable to find class %s", "CKShare"}];

  __break(1u);
}

void CloudKitLibrary_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationCloudSharingRequest.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKContainerSetupInfoClass_block_invoke_cold_1_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKContainerSetupInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingRequest.m" lineNumber:21 description:{@"Unable to find class %s", "CKContainerSetupInfo"}];

  __break(1u);
}

uint64_t _handleServerPairSetupShowPIN(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v7 = a4;
  if (a3 < 5)
  {
    v12 = 4294960553;
  }

  else
  {
    RandomString();
    v8 = v7[19];
    if (v8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = @"?";
      }

      (*(v8 + 16))(v8, a1, v11);
    }

    v12 = 0;
  }

  return v12;
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10(&dword_1A9662000, v0, v1, "%s: Unexpected selector name %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_1_17(&dword_1A9662000, v1, v2, "%s: Unexpected number of arguments %ld", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_3(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectAtIndexedSubscript:0];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_17(&dword_1A9662000, v2, v3, "%s: Unsafe operand %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_4(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectAtIndexedSubscript:1];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_17(&dword_1A9662000, v2, v3, "%s: Unsafe operand %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_6()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10(&dword_1A9662000, v0, v1, "%s: Argument expression not safe to execute %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_7(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 136315650;
  *(a3 + 4) = "_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
  *(a3 + 12) = 2112;
  *(a3 + 14) = a1;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  v6 = a2;
  _os_log_debug_impl(&dword_1A9662000, a4, OS_LOG_TYPE_DEBUG, "%s: Keypath not of expected class (%@, %@)", a3, 0x20u);
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_8()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10(&dword_1A9662000, v0, v1, "%s: Operand expression not safe to execute %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_9(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
  _os_log_debug_impl(&dword_1A9662000, log, OS_LOG_TYPE_DEBUG, "%s: No operand expression", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_10()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_3_10(&dword_1A9662000, v0, v1, "%s: Unexpected NSExpression type %ld", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __getCNContactFormatterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getCNContactFormatterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFShareAudioService.m" lineNumber:26 description:{@"Unable to find class %s", "CNContactFormatter"}];

  __break(1u);
}

void __getCNContactFormatterClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void * _Nonnull ContactsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFShareAudioService.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}