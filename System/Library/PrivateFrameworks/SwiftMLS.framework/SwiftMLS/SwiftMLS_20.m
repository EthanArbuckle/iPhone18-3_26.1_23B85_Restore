uint64_t sub_26BF7D6D8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_26BF7D8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_26BF7D8F0, 0, 0);
}

uint64_t sub_26BF7D8F0()
{
  v1 = *(v0 + 240);
  swift_beginAccess();
  if (*(v1 + 312) == 1)
  {
    sub_26BE2E1F0(*(v0 + 240) + 160, v0 + 96, &qword_28045FA20, &qword_26C029070);
    if (*(v0 + 120))
    {
      v2 = *(v0 + 248);
      v3 = *(v0 + 256);
      sub_26BE03890((v0 + 96), v0 + 56);
      v4 = *(v0 + 80);
      v5 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v4);
      *(v0 + 224) = v2;
      *(v0 + 232) = v3;
      v6 = *(v5 + 8);
      sub_26BE00608(v2, v3);
      v19 = (v6 + *v6);
      v7 = v6[1];
      v8 = swift_task_alloc();
      *(v0 + 264) = v8;
      *v8 = v0;
      v8[1] = sub_26BF7DC5C;

      return v19(v0 + 224, v4, v5);
    }

    else
    {
      sub_26BE2E258(v0 + 96, &qword_28045FA20, &qword_26C029070);
      sub_26BE01654();
      swift_allocError();
      *v17 = 0xD000000000000029;
      *(v17 + 8) = 0x800000026C02CFB0;
      *(v17 + 112) = 2;
      swift_willThrow();
      v18 = *(v0 + 8);

      return v18();
    }
  }

  else
  {
    sub_26BE038A8(*(v0 + 240) + 120, v0 + 16);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
    v12 = *(v11 + 8);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 280) = v14;
    *v14 = v0;
    v14[1] = sub_26BF7DDE8;
    v16 = *(v0 + 248);
    v15 = *(v0 + 256);

    return v20(v16, v15, v10, v11);
  }
}

uint64_t sub_26BF7DC5C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[17] = v3;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = v2;
  v6 = v4[33];
  v9 = *v3;
  v5[34] = v2;

  sub_26BE00258(v5[28], v5[29]);
  if (v2)
  {
    v7 = sub_26BF7DF6C;
  }

  else
  {
    v7 = sub_26BF7DD80;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF7DD80()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_26BF7DDE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[21] = v3;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = v2;
  v6 = v4[35];
  v9 = *v3;
  v5[36] = v2;

  if (v2)
  {
    v7 = sub_26BF7DFD0;
  }

  else
  {
    v7 = sub_26BF7DF04;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF7DF04()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_26BF7DF6C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[34];
  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF7DFD0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[36];
  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF7E034(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return sub_26BF5E158(a1, v5, v4);
}

uint64_t sub_26BF7E13C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return sub_26BF60E6C(a1, v5, v4);
}

uint64_t sub_26BF7E23C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return sub_26BF6C23C(a1, v5, v4);
}

unint64_t sub_26BF7E2EC()
{
  result = qword_28045FAD0;
  if (!qword_28045FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FAD0);
  }

  return result;
}

uint64_t sub_26BF7E340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 160);
}

uint64_t type metadata accessor for MLS.Group.PureSwiftGroup()
{
  result = qword_28045FAD8;
  if (!qword_28045FAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BF7E3E4()
{
  sub_26BF7EBD0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26BF7EC34();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MLS.Group.PureSwiftGroup.currentState.getter(uint64_t a1)
{
  v4 = *(*v1 + 1000);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE28F58;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.PureSwiftGroup.stateForEpoch(_:allowEndMLS:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 1072);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE2E3F4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Group.PureSwiftGroup.updateStorage(_:)(uint64_t a1)
{
  v4 = *(*v1 + 1088);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.PureSwiftGroup.updateStorageV1(_:)(uint64_t a1)
{
  v4 = *(*v1 + 1096);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.PureSwiftGroup.updateStorageV2(_:)(uint64_t a1)
{
  v4 = *(*v1 + 1120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

void sub_26BF7EBD0()
{
  if (!qword_28045FAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E8E0, &unk_26C0204E0);
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045FAE8);
    }
  }
}

void sub_26BF7EC34()
{
  if (!qword_28045FAF0)
  {
    type metadata accessor for FileInfoAndSender();
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045FAF0);
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BF7EDDC()
{
  result = qword_28045FB58;
  if (!qword_28045FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FB58);
  }

  return result;
}

uint64_t sub_26BF7EE30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.GroupState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF7EFF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BF7F05C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BF7F0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BF7F124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BF7F22C(unsigned __int16 *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 52);
  v6 = *(a1 + 68);
  v54 = *(a1 + 60);
  v55 = v6;
  v34 = *(a1 + 20);
  v56 = *(a1 + 19);
  v7 = *(a1 + 20);
  v8 = *(a1 + 36);
  v50 = *(a1 + 28);
  v51 = v8;
  v52 = *(a1 + 44);
  v53 = v5;
  v48 = *(a1 + 12);
  v49 = v7;
  LOWORD(v37[0]) = 256;
  v9 = MEMORY[0x277D838B0];
  v10 = MEMORY[0x277CC9C18];
  *(&v40 + 1) = MEMORY[0x277D838B0];
  *&v41 = MEMORY[0x277CC9C18];
  *&v39 = v37;
  *(&v39 + 1) = v37 + 2;
  v11 = __swift_project_boxed_opaque_existential_1(&v39, MEMORY[0x277D838B0]);
  v13 = *v11;
  v12 = v11[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v39);
  LOWORD(v37[0]) = bswap32(v2) >> 16;
  *(&v40 + 1) = v9;
  *&v41 = v10;
  *&v39 = v37;
  *(&v39 + 1) = v37 + 2;
  v14 = __swift_project_boxed_opaque_existential_1(&v39, v9);
  v16 = *v14;
  v15 = v14[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v17 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_11;
  }

  v20 = *(v3 + 16);
  v19 = *(v3 + 24);
  v18 = v19 - v20;
  if (__OFSUB__(v19, v20))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      goto LABEL_22;
    }

    v18 = HIDWORD(v3) - v3;
  }

LABEL_11:
  result = sub_26BF30414(v18);
  if (!v1)
  {
    v22 = result;
    sub_26BE11228(v3, v4);
    v23 = v22 + v18;
    if (__OFADD__(v22, v18))
    {
      __break(1u);
    }

    else
    {
      v24 = v23 + 4;
      if (!__OFADD__(v23, 4))
      {
        v45 = v54;
        v46 = v55;
        v47 = v56;
        v41 = v50;
        v42 = v51;
        v43 = v52;
        v44 = v53;
        v39 = v48;
        v40 = v49;
        sub_26BE00758(&v48, v37);
        v25 = sub_26BE7DD28(&v39);
        v37[6] = v45;
        v37[7] = v46;
        v38 = v47;
        v37[2] = v41;
        v37[3] = v42;
        v37[4] = v43;
        v37[5] = v44;
        v37[0] = v39;
        v37[1] = v40;
        v26 = v25;
        sub_26BE00854(v37);
        v27 = __OFADD__(v24, v26);
        v28 = v24 + v26;
        if (!v27)
        {
          v35 = xmmword_26C00BBD0;
          v36 = 0;
          v29 = sub_26BEEAC24(0, v34);
          v30 = v29;
          v32 = sub_26BF30414(v29);
          sub_26BF2A30C(&v35);
          sub_26BE00258(v35, *(&v35 + 1));
          v33 = v32 + v30;
          if (!__OFADD__(v32, v30))
          {
            result = v28 + v33;
            if (!__OFADD__(v28, v33))
            {
              goto LABEL_16;
            }

LABEL_25:
            __break(1u);
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_16:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.Extension.ExtensionType.description.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      return 0x6163696C7070612ELL;
    }

    if (v1 == 2)
    {
      return 0x746568637461722ELL;
    }
  }

  else
  {
    switch(v1)
    {
      case 3u:
        return 0xD000000000000015;
      case 4u:
        return 0x616E72657478652ELL;
      case 5u:
        return 0xD000000000000010;
    }
  }

  sub_26C00AC1C();

  v3 = sub_26C00AEFC();
  MEMORY[0x26D699090](v3);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_26BF7F6E0()
{
  result = qword_28045FB78;
  if (!qword_28045FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FB78);
  }

  return result;
}

void sub_26BF7F748(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for MLS.IdentityError();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (v13 == 2)
  {
    v31 = &type metadata for SwiftMLSFeatureFlags;
    v32 = sub_26BE295D8();
    LOBYTE(v29) = 0;
    v14 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(&v29);
    if ((v14 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      *v15 = 0xD000000000000023;
      *(v15 + 8) = 0x800000026C02D1C0;
      *(v15 + 112) = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v13 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_26BF809AC(a1, a2, &v29);
  if (!v4)
  {
    v21 = *(&v29 + 1);
    v22 = v30;
    swift_beginAccess();
    v24 = *(v3 + 96);
    v23 = *(v3 + 104);
    v25[0] = *(v3 + 72);
    v26 = *(v3 + 80);
    v27 = v24;
    v28 = v23;

    MLS.Cryptography.Ciphersuite.importSignaturePrivateKey(_:deviceConstrained:)(v21, v22, 0, &v29);

    sub_26BE00258(v21, v22);

    sub_26BE2E410(&v29, a3);
    return;
  }

  *&v29 = v4;
  v16 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_26BE8A6E8(v11);
    goto LABEL_16;
  }

  if (*v11 != -34018)
  {
LABEL_16:

    return;
  }

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v17 = sub_26C009A5C();
  __swift_project_value_buffer(v17, qword_280478E70);
  v18 = sub_26C009A3C();
  v19 = sub_26C00AA0C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26BDFE000, v18, v19, "Was not entitled to access keychain, gracefully falling back to default behavior", v20, 2u);
    MEMORY[0x26D69A4E0](v20, -1, -1);
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
}

uint64_t sub_26BF7FA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (v9 == 2)
  {
    v24 = &type metadata for SwiftMLSFeatureFlags;
    v25 = sub_26BE295D8();
    LOBYTE(v23[0]) = 0;
    v10 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v23);
    if ((v10 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      *v11 = 0xD000000000000023;
      *(v11 + 8) = 0x800000026C02D1C0;
      *(v11 + 112) = 2;
      return swift_willThrow();
    }
  }

  else if ((v9 & 1) == 0)
  {
    goto LABEL_3;
  }

  swift_beginAccess();
  v19 = *(v3 + 72);
  v13 = v3;
  v20 = *(v3 + 80);
  v21 = *(v3 + 96);
  v22 = *(v3 + 104);

  MLS.Cryptography.Ciphersuite.generateSignaturePrivateKey()(v23);

  if (!v4)
  {
    v15 = v24;
    v14 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v16 = (*(*(v14 + 8) + 40))(v15);
    if (*(v13 + 72))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    *a3 = v18;
    *(a3 + 8) = v16;
    *(a3 + 16) = v17;
    *(a3 + 24) = a1;
    *(a3 + 32) = a2;

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t sub_26BF7FC30(__int16 *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a1 + 3);
  v7 = *(a1 + 4);
  swift_beginAccess();
  v9 = *(v1 + 288);
  *&v54 = *(v1 + 280);
  *(&v54 + 1) = v9;

  MEMORY[0x26D699090](0x696369747261702ELL, 0xEC000000746E6170);
  v10 = *(&v54 + 1);
  v52 = v54;
  LOWORD(v54) = v4;
  *(&v54 + 1) = v5;
  v55 = v6;
  v56 = v8;
  v57 = v7;
  swift_bridgeObjectRetain_n();

  v11 = sub_26BEE70C8();
  if (v2)
  {
    swift_bridgeObjectRelease_n();
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v14 = v12;
    v51 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0125E0;
    v16 = *MEMORY[0x277CDC228];
    *(inited + 32) = sub_26C00A48C();
    *(inited + 40) = v17;
    v18 = *MEMORY[0x277CDC238];
    type metadata accessor for CFString(0);
    v20 = v19;
    *(inited + 72) = v19;
    *(inited + 48) = v18;
    v21 = *MEMORY[0x277CDC5C8];
    *(inited + 80) = sub_26C00A48C();
    *(inited + 88) = v22;
    v50 = v14;
    v23 = v8;
    v24 = MEMORY[0x277D839B0];
    *(inited + 120) = MEMORY[0x277D839B0];
    *(inited + 96) = 1;
    v25 = *MEMORY[0x277CDC140];
    *(inited + 128) = sub_26C00A48C();
    *(inited + 136) = v26;
    *(inited + 168) = v24;
    *(inited + 144) = 0;
    v27 = *MEMORY[0x277CDBED8];
    *(inited + 176) = sub_26C00A48C();
    *(inited + 184) = v28;
    v29 = *MEMORY[0x277CDBEE0];
    *(inited + 216) = v20;
    *(inited + 192) = v29;
    v30 = *MEMORY[0x277CDC120];
    *(inited + 224) = sub_26C00A48C();
    *(inited + 232) = v31;
    v32 = MEMORY[0x277D837D0];
    *(inited + 264) = MEMORY[0x277D837D0];
    *(inited + 240) = v52;
    *(inited + 248) = v10;
    v33 = *MEMORY[0x277CDBF20];
    *(inited + 272) = sub_26C00A48C();
    *(inited + 280) = v34;
    *(inited + 312) = v32;
    *(inited + 288) = v23;
    *(inited + 296) = v7;
    v35 = *MEMORY[0x277CDC5E8];
    *(inited + 320) = sub_26C00A48C();
    *(inited + 328) = v36;
    *(inited + 360) = MEMORY[0x277CC9318];
    *(inited + 336) = v51;
    *(inited + 344) = v50;
    v37 = v18;
    v38 = v29;
    sub_26BE00608(v51, v50);
    v39 = sub_26C0055D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
    swift_arrayDestroy();
    v40 = *(v3 + 304);
    if (v40)
    {
      v41 = *(v3 + 296);
      v42 = *MEMORY[0x277CDBEC8];
      v43 = sub_26C00A48C();
      v45 = v44;
      v56 = MEMORY[0x277D837D0];
      *&v54 = v41;
      *(&v54 + 1) = v40;
      sub_26BE5B0F0(&v54, v53);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v39;
      sub_26BE57784(v53, v43, v45, isUniquelyReferenced_nonNull_native);
    }

    v47 = sub_26C00A37C();

    v48 = SecItemAdd(v47, 0);

    if (v48)
    {

      type metadata accessor for MLS.IdentityError();
      sub_26BF80E4C();
      swift_allocError();
      *v49 = v48;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_26BE00258(v51, v50);
    }

    else
    {
      sub_26BE00258(v51, v50);
      return v52;
    }
  }
}

uint64_t sub_26BF80010@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result[56] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C01FEA0;
  v9 = *MEMORY[0x277CDC228];
  *(inited + 32) = sub_26C00A48C();
  *(inited + 40) = v10;
  v11 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  v13 = v12;
  *(inited + 72) = v12;
  *(inited + 48) = v11;
  v14 = *MEMORY[0x277CDC5C8];
  *(inited + 80) = sub_26C00A48C();
  *(inited + 88) = v15;
  v16 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  v73 = *MEMORY[0x277CDC120];
  *(inited + 128) = sub_26C00A48C();
  *(inited + 136) = v17;
  v18 = MEMORY[0x277D837D0];
  *(inited + 168) = MEMORY[0x277D837D0];
  v71 = a1;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  v74 = *MEMORY[0x277CDBF20];
  *(inited + 176) = sub_26C00A48C();
  *(inited + 184) = v19;
  *(inited + 216) = v18;
  v72 = a3;
  *(inited + 192) = a3;
  *(inited + 200) = a4;
  v20 = *MEMORY[0x277CDC140];
  *(inited + 224) = sub_26C00A48C();
  *(inited + 232) = v21;
  *(inited + 264) = v16;
  *(inited + 240) = 0;
  v22 = *MEMORY[0x277CDC428];
  *(inited + 272) = sub_26C00A48C();
  *(inited + 280) = v23;
  v24 = *MEMORY[0x277CDC438];
  *(inited + 312) = v13;
  *(inited + 288) = v24;
  v25 = *MEMORY[0x277CDC550];
  *(inited + 320) = sub_26C00A48C();
  *(inited + 328) = v26;
  *(inited + 360) = v16;
  *(inited + 336) = 1;
  v27 = *MEMORY[0x277CDC558];
  *(inited + 368) = sub_26C00A48C();
  *(inited + 376) = v28;
  *(inited + 408) = v16;
  *(inited + 384) = 1;
  v29 = v11;

  v30 = v24;
  v31 = sub_26C0055D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
  swift_arrayDestroy();
  swift_beginAccess();
  v32 = *(v80 + 304);
  if (v32)
  {
    v33 = *(v80 + 296);
    v34 = *MEMORY[0x277CDBEC8];
    v35 = sub_26C00A48C();
    v37 = v36;
    v84 = MEMORY[0x277D837D0];
    v82 = v33;
    *&v83 = v32;
    sub_26BE5B0F0(&v82, v81);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result[0] = v31;
    sub_26BE57784(v81, v35, v37, isUniquelyReferenced_nonNull_native);
  }

  result[0] = 0;
  v39 = sub_26C00A37C();

  v40 = SecItemCopyMatching(v39, result);

  if (v40 == -25300)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    goto LABEL_25;
  }

  if (v40)
  {
    type metadata accessor for MLS.IdentityError();
    sub_26BF80E4C();
    swift_allocError();
    *v62 = v40;
LABEL_24:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_25;
  }

  if (!result[0] || (v82 = result[0], swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB80, &qword_26C01FEC0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_23:
    type metadata accessor for MLS.IdentityError();
    sub_26BF80E4C();
    swift_allocError();
    goto LABEL_24;
  }

  v41 = *&v81[0];
  v42 = *MEMORY[0x277CDC5E8];
  v43 = sub_26C00A48C();
  if (!*(v41 + 16))
  {
    goto LABEL_21;
  }

  v45 = sub_26BEBB618(v43, v44);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_26BE2E2EC(*(v41 + 56) + 32 * v45, &v82);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v48 = v81[0];
  v49 = sub_26C00A48C();
  if (!*(v41 + 16))
  {
    goto LABEL_26;
  }

  v51 = sub_26BEBB618(v49, v50);
  v53 = v52;

  if ((v53 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_26BE2E2EC(*(v41 + 56) + 32 * v51, &v82);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26BE00258(v48, *(&v48 + 1));
    goto LABEL_23;
  }

  v55 = *(&v81[0] + 1);
  v54 = *&v81[0];
  v56 = sub_26C00A48C();
  if (!*(v41 + 16))
  {
    sub_26BE00258(v48, *(&v48 + 1));

    goto LABEL_21;
  }

  v75 = v54;
  v58 = sub_26BEBB618(v56, v57);
  v60 = v59;

  if ((v60 & 1) == 0)
  {
LABEL_26:
    sub_26BE00258(v48, *(&v48 + 1));
LABEL_21:

LABEL_22:

    goto LABEL_23;
  }

  sub_26BE2E2EC(*(v41 + 56) + 32 * v58, &v82);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    sub_26BE00258(v48, *(&v48 + 1));
    goto LABEL_22;
  }

  v61 = v81[0];
  if (v75 == v72 && v55 == a4)
  {
  }

  else
  {
    v65 = sub_26C00AF2C();

    if ((v65 & 1) == 0)
    {

      v70 = v48;
LABEL_40:
      sub_26BE00258(v70, *(&v48 + 1));
      goto LABEL_23;
    }
  }

  if (v61 == __PAIR128__(a2, v71))
  {

    goto LABEL_36;
  }

  v66 = sub_26C00AF2C();

  if ((v66 & 1) == 0)
  {
    v70 = v48;
    goto LABEL_40;
  }

LABEL_36:
  sub_26BEE71B8(v48, *(&v48 + 1), &v82);
  if (!v77)
  {
    v67 = v84;
    v68 = v85;
    v69 = v83;
    *a5 = v82;
    *(a5 + 8) = v69;
    *(a5 + 24) = v67;
    *(a5 + 32) = v68;
  }

LABEL_25:
  v63 = swift_unknownObjectRelease();
  v64 = *MEMORY[0x277D85DE8];
  return v63;
}

uint64_t sub_26BF806E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C01FEB0;
  v10 = *MEMORY[0x277CDC228];
  *(inited + 32) = sub_26C00A48C();
  *(inited + 40) = v11;
  v12 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  *(inited + 72) = v13;
  *(inited + 48) = v12;
  v14 = *MEMORY[0x277CDC5C8];
  *(inited + 80) = sub_26C00A48C();
  *(inited + 88) = v15;
  v16 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  v17 = *MEMORY[0x277CDC120];
  *(inited + 128) = sub_26C00A48C();
  *(inited + 136) = v18;
  v19 = MEMORY[0x277D837D0];
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  v20 = v19;
  v21 = *MEMORY[0x277CDBF20];
  *(inited + 176) = sub_26C00A48C();
  *(inited + 184) = v22;
  *(inited + 216) = v20;
  *(inited + 192) = a3;
  *(inited + 200) = a4;
  v23 = *MEMORY[0x277CDC140];
  *(inited + 224) = sub_26C00A48C();
  *(inited + 232) = v24;
  *(inited + 264) = v16;
  *(inited + 240) = 0;
  v25 = v12;

  v26 = sub_26C0055D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
  swift_arrayDestroy();
  swift_beginAccess();
  v27 = *(v4 + 304);
  if (v27)
  {
    v28 = *(v4 + 296);
    v29 = *MEMORY[0x277CDBEC8];
    v30 = sub_26C00A48C();
    v32 = v31;
    v41 = v20;
    *&v40 = v28;
    *(&v40 + 1) = v27;
    sub_26BE5B0F0(&v40, v39);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v26;
    sub_26BE57784(v39, v30, v32, isUniquelyReferenced_nonNull_native);
  }

  v34 = sub_26C00A37C();

  v35 = SecItemDelete(v34);

  if (v35 == -25300)
  {
    v36 = 0;
  }

  else if (v35)
  {
    type metadata accessor for MLS.IdentityError();
    sub_26BF80E4C();
    swift_allocError();
    *v37 = v35;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v36 = 1;
  }

  return v36 & 1;
}

void sub_26BF809AC(uint64_t a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  swift_beginAccess();
  v8 = *(v3 + 288);
  v40 = *(v3 + 280);
  *&v41 = v8;

  MEMORY[0x26D699090](0x696369747261702ELL, 0xEC000000746E6170);
  v10 = v40;
  v9 = v41;

  sub_26BF80010(v40, v41, a1, a2, &v40);
  if (v4)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v44 = a3;
    v11 = v43;
    if (v43)
    {
      v38 = v41;
      v12 = v42;
      v13 = v40;
      if (qword_28045DF40 != -1)
      {
        swift_once();
      }

      v14 = sub_26C009A5C();
      __swift_project_value_buffer(v14, qword_280478E70);
      v15 = sub_26C009A3C();
      v16 = sub_26C00AA1C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v36 = v13;
        v18 = v12;
        v19 = swift_slowAlloc();
        v40 = v19;
        *v17 = 136315138;
        v20 = sub_26BE29740(v10, v9, &v40);

        *(v17 + 4) = v20;
        _os_log_impl(&dword_26BDFE000, v15, v16, "Retrieved existing participant private key and info from keychain with service = %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        v21 = v19;
        v12 = v18;
        v13 = v36;
        MEMORY[0x26D69A4E0](v21, -1, -1);
        MEMORY[0x26D69A4E0](v17, -1, -1);
      }

      else
      {
      }

      v32 = v44;
      *v44 = v13;
      *(v32 + 4) = v38;
      *(v32 + 3) = v12;
      *(v32 + 4) = v11;
    }

    else
    {
      if (qword_28045DF40 != -1)
      {
        swift_once();
      }

      v22 = sub_26C009A5C();
      __swift_project_value_buffer(v22, qword_280478E70);
      v23 = sub_26C009A3C();
      v24 = sub_26C00AA1C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_26BDFE000, v23, v24, "Did not find existing participant private key in keychain, generating a new one", v25, 2u);
        MEMORY[0x26D69A4E0](v25, -1, -1);
      }

      sub_26BF7FA80(a1, a2, &v40);
      v35 = v40;
      v26 = v41;
      v34 = v42;
      v37 = *(&v41 + 1);
      v39 = v43;
      v27 = sub_26C009A3C();
      v28 = sub_26C00AA1C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40 = v30;
        *v29 = 136315138;
        v31 = sub_26BE29740(v10, v9, &v40);

        *(v29 + 4) = v31;
        _os_log_impl(&dword_26BDFE000, v27, v28, "Storing new participant private key in keychain with service = %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x26D69A4E0](v30, -1, -1);
        MEMORY[0x26D69A4E0](v29, -1, -1);
      }

      else
      {
      }

      v33 = v44;
      LOWORD(v40) = v35;
      *&v41 = v26;
      *(&v41 + 1) = v37;
      v42 = v34;
      v43 = v39;
      sub_26BF7FC30(&v40);

      *v33 = v35;
      *(v33 + 1) = v26;
      *(v33 + 2) = v37;
      *(v33 + 3) = v34;
      *(v33 + 4) = v39;
    }
  }
}

unint64_t sub_26BF80E4C()
{
  result = qword_28045EB48;
  if (!qword_28045EB48)
  {
    type metadata accessor for MLS.IdentityError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB48);
  }

  return result;
}

uint64_t sub_26BF80EA4(__int128 *a1)
{
  v2 = &v73;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v51 - v5;
  v7 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[12];
  v12 = a1[10];
  v97 = a1[11];
  v98 = v11;
  v13 = a1[12];
  v99[0] = a1[13];
  *(v99 + 9) = *(a1 + 217);
  v14 = a1[7];
  v15 = a1[9];
  v94 = a1[8];
  v95 = v15;
  v16 = a1[9];
  v96 = a1[10];
  v17 = a1[3];
  v18 = a1[5];
  v90 = a1[4];
  v91 = v18;
  v19 = a1[5];
  v20 = a1[7];
  v92 = a1[6];
  v93 = v20;
  v21 = a1[1];
  v87[0] = *a1;
  v87[1] = v21;
  v22 = a1[3];
  v24 = *a1;
  v23 = a1[1];
  v88 = a1[2];
  v89 = v22;
  v84 = v97;
  v85 = v13;
  v86[0] = a1[13];
  *(v86 + 9) = *(a1 + 217);
  v81 = v94;
  v82 = v16;
  v83 = v12;
  v77 = v90;
  v78 = v19;
  v79 = v92;
  v80 = v14;
  v73 = v24;
  v74 = v23;
  v75 = v88;
  v76 = v17;
  sub_26BE2FB24(v87, &v59);
  v25 = v100;
  v26 = sub_26BEDC390(&v73);
  if (v25)
  {
    v71 = v85;
    v72[0] = v86[0];
    *(v72 + 9) = *(v86 + 9);
    v67 = v81;
    v68 = v82;
    v69 = v83;
    v70 = v84;
    v63 = v77;
    v64 = v78;
    v65 = v79;
    v66 = v80;
    v59 = v73;
    v60 = v74;
    v61 = v75;
    v62 = v76;
    sub_26BE71494(&v59);
    return v2;
  }

  v100 = 0;
  v52 = v10;
  v53 = v6;
  v54 = v26;
  v70 = v84;
  v71 = v85;
  v72[0] = v86[0];
  *(v72 + 9) = *(v86 + 9);
  v67 = v81;
  v68 = v82;
  v69 = v83;
  v63 = v77;
  v64 = v78;
  v65 = v79;
  v66 = v80;
  v59 = v73;
  v60 = v74;
  v61 = v75;
  v62 = v76;
  sub_26BE71494(&v59);
  v27 = a1[12];
  v57[8] = a1[11];
  v57[9] = v27;
  v58[0] = a1[13];
  *(v58 + 9) = *(a1 + 217);
  v28 = a1[8];
  v57[4] = a1[7];
  v57[5] = v28;
  v29 = a1[10];
  v57[6] = a1[9];
  v57[7] = v29;
  v30 = a1[4];
  v57[0] = a1[3];
  v57[1] = v30;
  v31 = a1[6];
  v57[2] = a1[5];
  v57[3] = v31;
  v32 = sub_26BE6917C(v57);
  if (v32)
  {
    v33 = v55;
    if (v32 == 1)
    {
      nullsub_1(v57);
      v34 = 2;
    }

    else
    {
      nullsub_1(v57);
      v34 = 3;
    }
  }

  else
  {
    nullsub_1(v57);
    v34 = 1;
    v33 = v55;
  }

  v35 = type metadata accessor for MLS.PublicMessage();
  v36 = *(v35 + 20);
  LOBYTE(v56) = v34;
  v37 = v100;
  result = sub_26BED4DD8((a1 + v36), &v56);
  if (v37)
  {
    return v2;
  }

  v2 = (v54 + result);
  if (__OFADD__(v54, result))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (*(a1 + 28))
  {
    return v2;
  }

  v39 = v53;
  sub_26BED5200(a1 + *(v35 + 24), v53);
  if ((*(v33 + 48))(v39, 1, v7) == 1)
  {
    sub_26BF81F80(v39);
    sub_26BE01600();
    swift_allocError();
    *v40 = 5;
    swift_willThrow();
    return v2;
  }

  v41 = v52;
  sub_26BE2FABC(v39, v52, type metadata accessor for MLS.Cryptography.MACTag);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009C3C();
  v42 = sub_26BE12418(v56);
  v44 = v43;

  v45 = v44 >> 62;
  if ((v44 >> 62) > 1)
  {
    v46 = 0;
    if (v45 != 2 || (v48 = *(v42 + 16), v47 = *(v42 + 24), v46 = v47 - v48, !__OFSUB__(v47, v48)))
    {
LABEL_23:
      v100 = sub_26BF30414(v46);
      sub_26BE11228(v42, v44);
      sub_26BE00258(v42, v44);
      result = sub_26BF82058(v41, type metadata accessor for MLS.Cryptography.MACTag);
      v49 = v100 + v46;
      if (!__OFADD__(v100, v46))
      {
        v50 = __OFADD__(v2, v49);
        v2 = (v2 + v49);
        if (!v50)
        {
          return v2;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (!v45)
  {
    v46 = BYTE6(v44);
    goto LABEL_23;
  }

  if (!__OFSUB__(HIDWORD(v42), v42))
  {
    v46 = HIDWORD(v42) - v42;
    goto LABEL_23;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_26BF813DC(_OWORD *a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v52 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v52 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v52 - v13;
  v15 = type metadata accessor for MLS.FramedContentAuthData();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEDD03C(v77);
  if (v1)
  {
    return;
  }

  v55 = v6;
  v56 = v18;
  v57 = v9;
  v19 = v89;
  v58 = 0;
  v73 = v87;
  v74[0] = v88[0];
  *(v74 + 9) = *(v88 + 9);
  v69 = v83;
  v70 = v84;
  v71 = v85;
  v72 = v86;
  v65 = v79;
  v66 = v80;
  v67 = v81;
  v68 = v82;
  v61 = v77[0];
  v62 = v77[1];
  v63 = v77[2];
  v64 = v78;
  v75[8] = v86;
  v75[9] = v87;
  v76[0] = v88[0];
  *(v76 + 9) = *(v88 + 9);
  v75[4] = v82;
  v75[5] = v83;
  v75[6] = v84;
  v75[7] = v85;
  v75[0] = v78;
  v75[1] = v79;
  v75[2] = v80;
  v75[3] = v81;
  v20 = sub_26BE6917C(v75);
  if (!v20)
  {
    nullsub_1(v75);
    v21 = v15;
    goto LABEL_7;
  }

  v21 = v15;
  if (v20 == 1)
  {
    nullsub_1(v75);
LABEL_7:
    v22 = v14;
    v23 = v58;
    v24 = sub_26BF2F7B0();
    if (v23)
    {
LABEL_13:
      sub_26BE71494(&v61);
      return;
    }

    v26 = v25;
    v27 = v24;
    v58 = 0;
    v28 = 1;
    goto LABEL_9;
  }

  nullsub_1(v75);
  v44 = v58;
  v45 = sub_26BF2F7B0();
  if (v44)
  {
    goto LABEL_13;
  }

  v22 = v14;
  v26 = v46;
  v27 = v45;
  v47 = sub_26BF2F7B0();
  v58 = 0;
  v59 = v47;
  v60 = v51;
  sub_26C009C5C();
  v28 = 0;
LABEL_9:
  v29 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v30 = *(v29 - 8);
  v53 = *(v30 + 56);
  v54 = v29;
  v52[1] = v30 + 56;
  v53(v12, v28, 1);
  sub_26BF81FE8(v12, v22);
  v31 = *(v21 + 20);
  v32 = v56;
  sub_26BF81FE8(v22, v56 + v31);
  *v32 = v27;
  v32[1] = v26;
  if (BYTE12(v62))
  {
    v33 = v57;
    v34 = v55;
    v35 = 1;
LABEL_11:
    (v53)(v34, v35, 1, v54);
    sub_26BF81FE8(v34, v33);
    v36 = type metadata accessor for MLS.PublicMessage();
    sub_26BE2FABC(v32, v19 + *(v36 + 20), type metadata accessor for MLS.FramedContentAuthData);
    sub_26BF81FE8(v33, v19 + *(v36 + 24));
    v37 = v74[0];
    v19[12] = v73;
    v19[13] = v37;
    *(v19 + 217) = *(v74 + 9);
    v38 = v70;
    v19[8] = v69;
    v19[9] = v38;
    v39 = v72;
    v19[10] = v71;
    v19[11] = v39;
    v40 = v66;
    v19[4] = v65;
    v19[5] = v40;
    v41 = v68;
    v19[6] = v67;
    v19[7] = v41;
    v42 = v62;
    *v19 = v61;
    v19[1] = v42;
    v43 = v64;
    v19[2] = v63;
    v19[3] = v43;
    return;
  }

  v48 = v58;
  v49 = sub_26BF2F7B0();
  v58 = v48;
  v33 = v57;
  if (!v48)
  {
    v59 = v49;
    v60 = v50;
    v34 = v55;
    sub_26C009C5C();
    v35 = 0;
    goto LABEL_11;
  }

  sub_26BE71494(&v61);
  sub_26BF82058(v32, type metadata accessor for MLS.FramedContentAuthData);
}

uint64_t MLS.PublicMessage.content.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[13];
  v35 = v1[12];
  v36[0] = v3;
  *(v36 + 9) = *(v1 + 217);
  v4 = v1[7];
  v5 = v1[9];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v7 = v1[9];
  v8 = v1[11];
  v33 = v1[10];
  v9 = v33;
  v34 = v8;
  v10 = v1[3];
  v11 = v1[5];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v13 = v1[5];
  v14 = v1[7];
  v29 = v1[6];
  v15 = v29;
  v30 = v14;
  v16 = v1[1];
  v24[0] = *v1;
  v24[1] = v16;
  v17 = v1[3];
  v19 = *v1;
  v18 = v1[1];
  v25 = v1[2];
  v20 = v25;
  v26 = v17;
  v21 = v1[13];
  a1[12] = v35;
  a1[13] = v21;
  *(a1 + 217) = *(v1 + 217);
  a1[8] = v6;
  a1[9] = v7;
  a1[10] = v9;
  a1[11] = v2;
  a1[4] = v12;
  a1[5] = v13;
  a1[6] = v15;
  a1[7] = v4;
  *a1 = v19;
  a1[1] = v18;
  a1[2] = v20;
  a1[3] = v10;
  return sub_26BE2FB24(v24, &v23);
}

__n128 MLS.PublicMessage.content.setter(uint64_t a1)
{
  v3 = v1[13];
  v17[12] = v1[12];
  v18[0] = v3;
  *(v18 + 9) = *(v1 + 217);
  v4 = v1[9];
  v17[8] = v1[8];
  v17[9] = v4;
  v5 = v1[11];
  v17[10] = v1[10];
  v17[11] = v5;
  v6 = v1[5];
  v17[4] = v1[4];
  v17[5] = v6;
  v7 = v1[7];
  v17[6] = v1[6];
  v17[7] = v7;
  v8 = v1[1];
  v17[0] = *v1;
  v17[1] = v8;
  v9 = v1[3];
  v17[2] = v1[2];
  v17[3] = v9;
  sub_26BE71494(v17);
  v10 = *(a1 + 208);
  v1[12] = *(a1 + 192);
  v1[13] = v10;
  *(v1 + 217) = *(a1 + 217);
  v11 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v11;
  v12 = *(a1 + 176);
  v1[10] = *(a1 + 160);
  v1[11] = v12;
  v13 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v13;
  v14 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v14;
  v15 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v15;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t MLS.PublicMessage.auth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.PublicMessage() + 20);

  return sub_26BF81A4C(v3, a1);
}

uint64_t type metadata accessor for MLS.PublicMessage()
{
  result = qword_28045FB88;
  if (!qword_28045FB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BF81A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.FramedContentAuthData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLS.PublicMessage.auth.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.PublicMessage() + 20);

  return sub_26BF81AF4(a1, v3);
}

uint64_t sub_26BF81AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.FramedContentAuthData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.PublicMessage.membershipTag.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.PublicMessage() + 24);

  return sub_26BED5200(v3, a1);
}

uint64_t MLS.PublicMessage.membershipTag.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.PublicMessage() + 24);

  return sub_26BED52B4(a1, v3);
}

uint64_t sub_26BF81C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 28);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for MLS.FramedContentAuthData();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26BF81DC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 28) = -a2;
  }

  else
  {
    v8 = type metadata accessor for MLS.FramedContentAuthData();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26BF81EEC()
{
  type metadata accessor for MLS.FramedContentAuthData();
  if (v0 <= 0x3F)
  {
    sub_26BED5830();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BF81F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BF81FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF82058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BF820D8()
{
  v1 = *(v0 + 480);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_26C005A58(MEMORY[0x277D84F90]);
  v98 = sub_26C005ED4(v2);
  v4 = sub_26C005FE4(v2);
  v5 = sub_26C008DEC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v0 + 488) = sub_26C008DDC();
  swift_beginAccess();
  v8 = *(v1 + 40);
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = -1;
  v13 = -1 << *(*(v1 + 40) + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & v9;
  v15 = (63 - v13) >> 6;
  v101 = *(v1 + 40);

  v17 = 0;
  v99 = v15;
  for (i = v10; ; v10 = i)
  {
    *(v0 + 496) = v4;
    *(v0 + 504) = v3;
    if (!v14)
    {
      break;
    }

    v24 = v17;
LABEL_11:
    v25 = __clz(__rbit64(v14)) | (v24 << 6);
    v26 = (*(v101 + 48) + 16 * v25);
    v108 = *v26;
    v110 = v26[1];
    v27 = *(*(v101 + 56) + 8 * v25);

    v107 = v27;
    sub_26BF90058(v28);
    v29 = sub_26C00909C();
    v31 = v30;
    sub_26BE00258(0, 0xC000000000000000);
    v32 = sub_26C0090EC();
    v34 = v33;
    sub_26BE00258(v29, v31);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26BE57E40(v32, v34, v108, v110, isUniquelyReferenced_nonNull_native);

    v36 = v3;
    swift_beginAccess();
    sub_26BE14FF4(v107 + 112, v0 + 16);
    sub_26BE038A8(v0 + 24, v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB98, &qword_26C01FEF8);
    type metadata accessor for MLS.Storage.InMemoryGroupStateStore();
    swift_dynamicCast();
    *(v0 + 424) = *(v0 + 416);
    sub_26BF863B4(&qword_28045FBA0, type metadata accessor for MLS.Storage.InMemoryGroupStateStore);
    v37 = sub_26C008DCC();
    v39 = v38;

    result = sub_26BF8622C(v0 + 64, v0 + 224);
    if (!*(v0 + 248))
    {
      goto LABEL_54;
    }

    sub_26BE03890((v0 + 224), v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FBA8, &qword_26C01FF00);
    type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2();
    swift_dynamicCast();
    *(v0 + 440) = *(v0 + 432);
    sub_26BF863B4(&qword_28045FBB0, type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2);
    v103 = sub_26C008DCC();
    v104 = v40;
    v105 = v37;
    v106 = v39;

    sub_26BE038A8(v0 + 104, v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FBB8, &qword_26C01FF08);
    type metadata accessor for MLS.Storage.InMemoryClientStateStore();
    swift_dynamicCast();
    *(v0 + 456) = *(v0 + 448);
    sub_26BF863B4(&qword_28045FBC0, type metadata accessor for MLS.Storage.InMemoryClientStateStore);
    v41 = sub_26C008DCC();
    v43 = v42;
    v102 = v36;

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v111 = v4;
    v46 = sub_26BEBB618(v108, v110);
    v47 = v4;
    v48 = *(v4 + 16);
    v49 = (v45 & 1) == 0;
    result = v48 + v49;
    if (__OFADD__(v48, v49))
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return result;
    }

    v50 = v45;
    if (*(v47 + 24) >= result)
    {
      if ((v44 & 1) == 0)
      {
        sub_26BE6F574();
      }
    }

    else
    {
      sub_26BE6C784(result, v44);
      v51 = sub_26BEBB618(v108, v110);
      if ((v50 & 1) != (v52 & 1))
      {

        return sub_26C00AF8C();
      }

      v46 = v51;
    }

    v14 &= v14 - 1;
    if (v50)
    {

      v4 = v111;
      v18 = (v111[7] + 48 * v46);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      v109 = v18[5];
      *v18 = v105;
      v18[1] = v106;
      v18[2] = v103;
      v18[3] = v104;
      v18[4] = v41;
      v18[5] = v43;
      sub_26BE00258(v19, v20);
      sub_26BE00258(v21, v22);
      sub_26BE00258(v23, v109);

      result = sub_26BE29538(v0 + 16);
    }

    else
    {
      v4 = v111;
      v111[(v46 >> 6) + 8] |= 1 << v46;
      v53 = (v111[6] + 16 * v46);
      *v53 = v108;
      v53[1] = v110;
      v54 = (v111[7] + 48 * v46);
      *v54 = v105;
      v54[1] = v106;
      v54[2] = v103;
      v54[3] = v104;
      v54[4] = v41;
      v54[5] = v43;

      result = sub_26BE29538(v0 + 16);
      v55 = v111[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_53;
      }

      v111[2] = v57;
    }

    v17 = v24;
    v3 = v102;
    v15 = v99;
  }

  while (1)
  {
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      __break(1u);
      goto LABEL_52;
    }

    if (v24 >= v15)
    {
      break;
    }

    v14 = *(v10 + 8 * v24);
    ++v17;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v58 = *(v0 + 480);

  swift_beginAccess();
  v59 = *(v58 + 48);
  *(v0 + 512) = v59;
  v60 = *(v59 + 32);
  *(v0 + 624) = v60;
  v61 = 1 << v60;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  else
  {
    v62 = -1;
  }

  v63 = v62 & *(v59 + 64);

  v64 = 0;
  v65 = MEMORY[0x277D84F90];
  if (!v63)
  {
LABEL_26:
    while (1)
    {
      v66 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_51;
      }

      result = *(v0 + 512);
      if (v66 >= (((1 << *(v0 + 624)) + 63) >> 6))
      {
        v85 = *(v0 + 496);
        v84 = *(v0 + 504);
        v86 = *(v0 + 488);

        *(v0 + 376) = v84;
        *(v0 + 384) = v98;
        *(v0 + 392) = v85;
        sub_26BF8629C();
        v87 = sub_26C008DCC();
        v89 = v88;
        v91 = *(v0 + 496);
        v90 = *(v0 + 504);
        v92 = *(v0 + 488);

        v93 = *(v0 + 8);

        return v93(v87, v89);
      }

      v63 = *(result + 8 * v66 + 64);
      ++v64;
      if (v63)
      {
        v64 = v66;
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    result = *(v0 + 512);
LABEL_30:
    *(v0 + 528) = v64;
    *(v0 + 520) = v63;
    v67 = __clz(__rbit64(v63)) | (v64 << 6);
    v68 = (*(result + 48) + 16 * v67);
    v69 = *v68;
    *(v0 + 536) = *v68;
    v70 = v68[1];
    *(v0 + 544) = v70;
    v71 = *(*(result + 56) + 8 * v67);
    *(v0 + 552) = v71;

    v72 = sub_26C005A58(v65);

    v73 = swift_isUniquelyReferenced_nonNull_native();
    sub_26BE57C94(v72, v69, v70, v73);

    v74 = *(v71 + 32);
    *(v0 + 625) = v74;
    v75 = -1 << v74;
    v76 = -(-1 << v74) < 64 ? ~(-1 << -v75) : -1;
    v77 = v76 & *(v71 + 64);
    *(v0 + 560) = v98;

    if (v77)
    {
      break;
    }

    v78 = 0;
    v79 = ((63 - v75) >> 6) - 1;
    v80 = *(v0 + 552);
    while (v79 != v78)
    {
      v81 = v78 + 1;
      v77 = *(v80 + 8 * v78++ + 72);
      if (v77)
      {
        goto LABEL_47;
      }
    }

    v82 = *(v0 + 544);
    v83 = *(v0 + 552);

    v64 = *(v0 + 528);
    v63 = (*(v0 + 520) - 1) & *(v0 + 520);
    if (!v63)
    {
      goto LABEL_26;
    }
  }

  v81 = 0;
  v80 = *(v0 + 552);
LABEL_47:
  *(v0 + 576) = v81;
  *(v0 + 568) = v77;
  v94 = __clz(__rbit64(v77)) | (v81 << 6);
  v95 = (*(v80 + 48) + 16 * v94);
  *(v0 + 584) = *v95;
  *(v0 + 592) = v95[1];
  v96 = *(*(v80 + 56) + 8 * v94);
  *(v0 + 600) = v96;

  v97 = swift_task_alloc();
  *(v0 + 608) = v97;
  *v97 = v0;
  v97[1] = sub_26BF82BA8;

  return sub_26BE8FE74(v0 + 400, v96, v96);
}

uint64_t sub_26BF82BA8()
{
  v2 = *(*v1 + 608);
  v5 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = sub_26BF832BC;
  }

  else
  {
    v3 = sub_26BF82CBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF82CBC()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v8 = *(v0 + 400);
  v4 = *(v0 + 408);
  v5 = sub_26C0090EC();
  v7 = v6;
  sub_26BE00258(v8, v4);
  LOBYTE(v8) = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 464) = v1;
  v10 = sub_26BEBB618(v3, v2);
  v11 = *(v1 + 16);
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v9;
  if (*(*(v0 + 560) + 24) >= result)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_19;
    }

    if ((v9 & 1) == 0)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      v35 = result;
      sub_26BE6F748();
      result = v35;
      v30 = *(v0 + 592);
      if ((v8 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

LABEL_8:
    while (1)
    {
      v8 = *(v0 + 592);
      v18 = *(v0 + 584);
      v2 = *(v0 + 464);
      v19 = *(*(v2 + 56) + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 472) = v19;
      result = sub_26BEBB618(v18, v8);
      v22 = *(v19 + 16);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (!v24)
      {
        break;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      result = sub_26BE6F400();
      if ((v2 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    LOBYTE(v8) = v21;
    if (*(v19 + 24) >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v26 = *(v0 + 592);
      v27 = *(v0 + 584);
      sub_26BE6CAA8(v25, isUniquelyReferenced_nonNull_native);
      v28 = *(v0 + 472);
      result = sub_26BEBB618(v27, v26);
      if ((v8 & 1) != (v29 & 1))
      {
        goto LABEL_11;
      }
    }

    v30 = *(v0 + 592);
    if ((v8 & 1) == 0)
    {
LABEL_22:
      v36 = *(v0 + 584);
      v32 = *(v0 + 472);
      v32[(result >> 6) + 8] |= 1 << result;
      v37 = (v32[6] + 16 * result);
      *v37 = v36;
      v37[1] = v30;
      v38 = (v32[7] + 16 * result);
      *v38 = v5;
      v38[1] = v7;
      v39 = v32[2];
      v24 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v24)
      {
        goto LABEL_53;
      }

      v32[2] = v40;
LABEL_24:
      v41 = *(v0 + 600);
      *(*(v2 + 56) + 8 * v10) = v32;

      v42 = *(v0 + 616);
      v43 = *(v0 + 576);
      v44 = *(v0 + 568);
      *(v0 + 560) = v2;
      v45 = (v44 - 1) & v44;
      if (v45)
      {
LABEL_25:
        *(v0 + 576) = v43;
        *(v0 + 568) = v45;
        v46 = *(v0 + 552);
        v47 = __clz(__rbit64(v45)) | (v43 << 6);
        v48 = (*(v46 + 48) + 16 * v47);
        *(v0 + 584) = *v48;
        *(v0 + 592) = v48[1];
        v49 = *(*(v46 + 56) + 8 * v47);
        *(v0 + 600) = v49;

        v50 = swift_task_alloc();
        *(v0 + 608) = v50;
        *v50 = v0;
        v50[1] = sub_26BF82BA8;

        return sub_26BE8FE74(v0 + 400, v49, v49);
      }

      v51 = MEMORY[0x277D84F90];
      v52 = v43;
      while (1)
      {
        while (1)
        {
          v43 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            __break(1u);
            goto LABEL_52;
          }

          if (v43 >= (((1 << *(v0 + 625)) + 63) >> 6))
          {
            break;
          }

          v45 = *(*(v0 + 552) + 8 * v43 + 64);
          ++v52;
          if (v45)
          {
            goto LABEL_25;
          }
        }

        v53 = *(v0 + 544);
        v54 = *(v0 + 552);

        v55 = *(v0 + 528);
        v56 = (*(v0 + 520) - 1) & *(v0 + 520);
        if (!v56)
        {
          break;
        }

        result = *(v0 + 512);
LABEL_39:
        *(v0 + 528) = v55;
        *(v0 + 520) = v56;
        v58 = __clz(__rbit64(v56)) | (v55 << 6);
        v59 = (*(result + 48) + 16 * v58);
        v60 = *v59;
        *(v0 + 536) = *v59;
        v61 = v59[1];
        *(v0 + 544) = v61;
        v62 = *(*(result + 56) + 8 * v58);
        *(v0 + 552) = v62;

        v63 = sub_26C005A58(v51);

        v64 = swift_isUniquelyReferenced_nonNull_native();
        sub_26BE57C94(v63, v60, v61, v64);

        v65 = *(v62 + 32);
        *(v0 + 625) = v65;
        v66 = 1 << v65;
        if (v66 < 64)
        {
          v67 = ~(-1 << v66);
        }

        else
        {
          v67 = -1;
        }

        v45 = v67 & *(v62 + 64);
        *(v0 + 560) = v2;

        v52 = 0;
        v43 = 0;
        if (v45)
        {
          goto LABEL_25;
        }
      }

      while (1)
      {
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        result = *(v0 + 512);
        if (v57 >= (((1 << *(v0 + 624)) + 63) >> 6))
        {
          v69 = *(v0 + 496);
          v68 = *(v0 + 504);
          v70 = *(v0 + 488);

          *(v0 + 376) = v68;
          *(v0 + 384) = v2;
          *(v0 + 392) = v69;
          sub_26BF8629C();
          v71 = sub_26C008DCC();
          v73 = v72;
          v75 = *(v0 + 496);
          v74 = *(v0 + 504);
          v76 = *(v0 + 488);

          if (v42)
          {
            v77 = *(v0 + 8);

            return v77();
          }

          else
          {
            v78 = *(v0 + 8);

            return v78(v71, v73);
          }
        }

        v56 = *(result + 8 * v57 + 64);
        ++v55;
        if (v56)
        {
          v55 = v57;
          goto LABEL_39;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

LABEL_16:
    v31 = result;

    v32 = *(v0 + 472);
    v33 = (v32[7] + 16 * v31);
    v34 = v33[1];
    *v33 = v5;
    v33[1] = v7;

    goto LABEL_24;
  }

  v14 = *(v0 + 544);
  v15 = *(v0 + 536);
  sub_26BE6C4D0(result, v8);
  v16 = *(v0 + 464);
  result = sub_26BEBB618(v15, v14);
  if ((v2 & 1) == (v17 & 1))
  {
    v10 = result;
    if (v2)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_11:

  return sub_26C00AF8C();
}

uint64_t sub_26BF832D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[103] = v3;
  v4[102] = a3;
  v4[101] = a2;
  v4[100] = a1;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26BF83374, 0, 0);
}

uint64_t sub_26BF83374()
{
  v185 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 102);
  v2 = *(v0 + 101);
  v3 = MEMORY[0x277D84F90];
  v4 = sub_26C005C70(MEMORY[0x277D84F90]);
  v5 = sub_26C005C84(v3);
  v6 = sub_26C008DBC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_26C008DAC();
  sub_26BF862F0();
  sub_26C008D9C();
  v167 = v5;
  v10 = *(v0 + 64);
  *(v0 + 105) = v10;
  v163 = *(v0 + 65);
  *(v0 + 106) = v163;
  v11 = *(v0 + 66);
  *(v0 + 107) = v11;
  v12 = v10 + 64;
  v13 = -1;
  v14 = -1 << *(v10 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v10 + 64);
  v16 = (63 - v14) >> 6;
  v168 = v10;

  v17 = 0;
  v164 = v16;
  v165 = v12;
  v166 = v11;
  v181 = v0;
  *(v0 + 108) = v4;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v19 = (v18 << 10) | (16 * __clz(__rbit64(v15)));
      v20 = (*(v168 + 48) + v19);
      v21 = v20[1];
      v182 = *v20;
      v22 = (*(v168 + 56) + v19);
      v23 = *v22;
      v24 = v22[1];
      sub_26BE295A0(*(v181 + 100), (v181 + 1));

      v25 = sub_26C00903C();
      if (v26 >> 60 == 15)
      {
        goto LABEL_116;
      }

      v27 = v25;
      v28 = v26;
      type metadata accessor for MLS.RCSClient();
      v29 = MLS.Client.Client.__allocating_init(configuration:rawValue:)(v181 + 1, v27, v28);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26BE57A68(v29, v182, v21, isUniquelyReferenced_nonNull_native);

      if (!*(v11 + 16))
      {
        goto LABEL_103;
      }

      v31 = sub_26BEBB618(v182, v21);
      if ((v32 & 1) == 0)
      {
        goto LABEL_104;
      }

      if (!*(v4 + 16))
      {
        goto LABEL_105;
      }

      v33 = (*(v11 + 56) + 48 * v31);
      v35 = *v33;
      v34 = v33[1];
      v37 = v33[2];
      v36 = v33[3];
      v39 = v33[4];
      v38 = v33[5];
      sub_26BE00608(*v33, v34);
      v176 = v37;
      v178 = v36;
      sub_26BE00608(v37, v36);
      sub_26BE00608(v39, v38);
      v40 = sub_26BEBB618(v182, v21);
      if ((v41 & 1) == 0)
      {
        goto LABEL_106;
      }

      v170 = v39;
      v42 = *(*(v4 + 56) + 8 * v40);
      *(v181 + 52) = type metadata accessor for MLS.Storage.InMemoryGroupStateStore();
      *(v181 + 53) = &protocol witness table for MLS.Storage.InMemoryGroupStateStore;
      sub_26BF863B4(&qword_28045FBD8, type metadata accessor for MLS.Storage.InMemoryGroupStateStore);

      sub_26C008D9C();
      v43 = v34;
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1((v42 + 120));
      sub_26BE03890((v181 + 392), v42 + 120);
      swift_endAccess();

      if (!*(v4 + 16))
      {
        goto LABEL_107;
      }

      v44 = sub_26BEBB618(v182, v21);
      if ((v45 & 1) == 0)
      {
        goto LABEL_108;
      }

      v46 = *(*(v4 + 56) + 8 * v44);
      *(v181 + 57) = type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2();
      *(v181 + 58) = &protocol witness table for MLS.Storage.InMemoryGroupStateStoreV2;
      sub_26BF863B4(&qword_28045FBE0, type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2);

      sub_26C008D9C();
      swift_beginAccess();
      sub_26BF86344((v181 + 27), v46 + 160);
      swift_endAccess();

      if (!*(v4 + 16))
      {
        goto LABEL_109;
      }

      v47 = sub_26BEBB618(v182, v21);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        goto LABEL_110;
      }

      v50 = *(*(v4 + 56) + 8 * v47);
      *(v181 + 62) = type metadata accessor for MLS.Storage.InMemoryClientStateStore();
      *(v181 + 63) = &protocol witness table for MLS.Storage.InMemoryClientStateStore;
      sub_26BF863B4(&qword_28045FBE8, type metadata accessor for MLS.Storage.InMemoryClientStateStore);

      sub_26C008D9C();
      v15 &= v15 - 1;
      sub_26BE00258(v35, v43);
      sub_26BE00258(v176, v178);
      sub_26BE00258(v170, v38);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1((v50 + 200));
      sub_26BE03890((v181 + 472), v50 + 200);
      swift_endAccess();

      v17 = v18;
      v16 = v164;
      v12 = v165;
      v11 = v166;
      *(v181 + 108) = v4;
      if (!v15)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  v51 = *(v163 + 32);
  *(v181 + 385) = v51;
  v52 = 1 << v51;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & *(v163 + 64);

  v55 = 0;
  if (v54)
  {
    while (1)
    {
      v56 = *(v181 + 106);
LABEL_32:
      *(v181 + 110) = v55;
      *(v181 + 109) = v54;
      v58 = __clz(__rbit64(v54)) | (v55 << 6);
      v59 = (*(v56 + 48) + 16 * v58);
      v60 = *v59;
      *(v181 + 111) = *v59;
      v61 = v59[1];
      *(v181 + 112) = v61;
      v62 = *(*(v56 + 56) + 8 * v58);
      *(v181 + 113) = v62;

      v63 = sub_26C005CAC(MEMORY[0x277D84F90]);

      v64 = swift_isUniquelyReferenced_nonNull_native();
      sub_26BE57A28(v63, v60, v61, v64);

      v65 = *(v62 + 32);
      *(v181 + 386) = v65;
      v66 = -1 << v65;
      v67 = -(-1 << v65) < 64 ? ~(-1 << -v66) : -1;
      v68 = v67 & *(v62 + 64);
      *(v181 + 114) = v167;

      if (v68)
      {
        break;
      }

      v69 = 0;
      v70 = *(v181 + 113);
      while (((63 - v66) >> 6) - 1 != v69)
      {
        v71 = v69 + 1;
        v68 = *(v70 + 8 * v69++ + 72);
        if (v68)
        {
          goto LABEL_93;
        }
      }

      v72 = *(v181 + 112);
      v73 = *(v181 + 113);

      v55 = *(v181 + 110);
      v54 = (*(v181 + 109) - 1) & *(v181 + 109);
      if (!v54)
      {
        goto LABEL_28;
      }
    }

    v71 = 0;
    v70 = *(v181 + 113);
LABEL_93:
    *(v181 + 116) = v71;
    *(v181 + 115) = v68;
    v148 = *(v181 + 108);
    v149 = (v71 << 10) | (16 * __clz(__rbit64(v68)));
    v150 = (*(v70 + 48) + v149);
    *(v181 + 117) = *v150;
    *(v181 + 118) = v150[1];
    v151 = (*(v70 + 56) + v149);
    v152 = *v151;
    *(v181 + 119) = v151[1];
    if (*(v148 + 16))
    {
      v153 = *(v181 + 112);
      v154 = *(v181 + 111);

      v155 = sub_26BEBB618(v154, v153);
      if (v156)
      {
        v157 = *(*(*(v181 + 108) + 56) + 8 * v155);

        result = sub_26C00903C();
        if (v158 >> 60 == 15)
        {
          __break(1u);
        }

        else
        {
          v159 = result;
          v160 = v158;
          type metadata accessor for MLS.Group.PureSwiftGroup();
          v161 = swift_task_alloc();
          *(v181 + 120) = v161;
          *v161 = v181;
          v161[1] = sub_26BF8445C;
          v162 = *MEMORY[0x277D85DE8];

          return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v157, v159, v160);
        }

        return result;
      }

LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  while (1)
  {
LABEL_28:
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_101;
    }

    if (v57 >= (((1 << *(v181 + 385)) + 63) >> 6))
    {
      break;
    }

    v56 = *(v181 + 106);
    v54 = *(v56 + 8 * v57 + 64);
    ++v55;
    if (v54)
    {
      v55 = v57;
      goto LABEL_32;
    }
  }

  v74 = *(v181 + 108);
  v75 = *(v181 + 106);
  v76 = *(v181 + 103);

  swift_beginAccess();
  v77 = v76[5];
  v76[5] = v74;

  swift_beginAccess();
  v78 = v76[6];
  v76[6] = v167;

  v79 = sub_26C005C98(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v80 = v76[7];
  v76[7] = v79;

  v81 = v76[6];
  v84 = *(v81 + 64);
  v83 = v81 + 64;
  v82 = v84;
  v85 = -1 << *(v76[6] + 32);
  if (-v85 < 64)
  {
    v86 = ~(-1 << -v85);
  }

  else
  {
    v86 = -1;
  }

  v87 = v86 & v82;
  v88 = (63 - v85) >> 6;
  v172 = v76[6];

  v89 = 0;
  v183 = v76;
  v169 = v88;
  v171 = v83;
LABEL_47:
  if (!v87)
  {
    while (1)
    {
      v90 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        break;
      }

      if (v90 >= v88)
      {
        goto LABEL_88;
      }

      v87 = *(v83 + 8 * v90);
      ++v89;
      if (v87)
      {
        goto LABEL_52;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v90 = v89;
LABEL_52:
  v173 = (v87 - 1) & v87;
  v91 = __clz(__rbit64(v87)) | (v90 << 6);
  v92 = (*(v172 + 48) + 16 * v91);
  v93 = v92[1];
  v177 = *v92;
  v94 = *(*(v172 + 56) + 8 * v91);
  v95 = v94 + 64;
  v96 = -1 << *(v94 + 32);
  if (-v96 < 64)
  {
    v97 = ~(-1 << -v96);
  }

  else
  {
    v97 = -1;
  }

  v98 = v97 & *(v94 + 64);
  v99 = (63 - v96) >> 6;
  v180 = v94;
  swift_bridgeObjectRetain_n();
  v179 = v93;

  v100 = 0;
  v174 = v99;
  v175 = v95;
  if (!v98)
  {
    goto LABEL_56;
  }

  while (1)
  {
LABEL_60:
    v102 = (*(v180 + 48) + ((v100 << 10) | (16 * __clz(__rbit64(v98)))));
    v104 = *v102;
    v103 = v102[1];
    v105 = *(v76[7] + 16);

    if (!v105 || (, sub_26BEBB618(v104, v103), v107 = v106, , (v107 & 1) == 0))
    {
      swift_beginAccess();
      v108 = v76[7];
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v110 = v76[7];
      v76[7] = 0x8000000000000000;
      v111 = sub_26BEBB618(v104, v103);
      v113 = v110[2];
      v114 = (v112 & 1) == 0;
      v115 = __OFADD__(v113, v114);
      v116 = v113 + v114;
      if (v115)
      {
        goto LABEL_112;
      }

      v117 = v112;
      if (v110[3] >= v116)
      {
        if ((v109 & 1) == 0)
        {
          v121 = v111;
          sub_26BE6F3EC();
          v111 = v121;
          if (v117)
          {
            goto LABEL_68;
          }

          goto LABEL_70;
        }
      }

      else
      {
        sub_26BE6C4BC(v116, v109);
        v111 = sub_26BEBB618(v104, v103);
        if ((v117 & 1) != (v118 & 1))
        {
          goto LABEL_89;
        }
      }

      if (v117)
      {
LABEL_68:
        v119 = v110[7];
        v120 = *(v119 + 8 * v111);
        *(v119 + 8 * v111) = MEMORY[0x277D84F90];

LABEL_72:
        v76 = v183;
        v183[7] = v110;
        swift_endAccess();
        goto LABEL_73;
      }

LABEL_70:
      v110[(v111 >> 6) + 8] |= 1 << v111;
      v122 = (v110[6] + 16 * v111);
      *v122 = v104;
      v122[1] = v103;
      *(v110[7] + 8 * v111) = MEMORY[0x277D84F90];
      v123 = v110[2];
      v115 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v115)
      {
        goto LABEL_113;
      }

      v110[2] = v124;

      goto LABEL_72;
    }

LABEL_73:
    swift_beginAccess();
    v125 = v76[7];
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v76[7];
    v184 = v127;
    v76[7] = 0x8000000000000000;
    v129 = sub_26BEBB618(v104, v103);
    v130 = v127[2];
    v131 = (v128 & 1) == 0;
    v132 = v130 + v131;
    if (__OFADD__(v130, v131))
    {
      goto LABEL_111;
    }

    v133 = v128;
    if (v127[3] < v132)
    {
      sub_26BE6C4BC(v132, v126);
      v134 = sub_26BEBB618(v104, v103);
      if ((v133 & 1) != (v135 & 1))
      {
LABEL_89:
        v147 = *MEMORY[0x277D85DE8];

        return sub_26C00AF8C();
      }

      v129 = v134;
      if ((v133 & 1) == 0)
      {
        break;
      }

      goto LABEL_80;
    }

    if (v126)
    {
      if ((v128 & 1) == 0)
      {
        break;
      }

      goto LABEL_80;
    }

    sub_26BE6F3EC();
    if ((v133 & 1) == 0)
    {
      break;
    }

LABEL_80:
    v136 = *(v127[7] + 8 * v129);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_26BEEDAF4(0, *(v136 + 2) + 1, 1, v136);
    }

    v138 = *(v136 + 2);
    v137 = *(v136 + 3);
    if (v138 >= v137 >> 1)
    {
      v136 = sub_26BEEDAF4((v137 > 1), v138 + 1, 1, v136);
    }

    v98 &= v98 - 1;
    *(v136 + 2) = v138 + 1;
    v139 = &v136[16 * v138];
    *(v139 + 4) = v177;
    *(v139 + 5) = v179;

    *(v184[7] + 8 * v129) = v136;

    v76 = v183;
    v183[7] = v184;
    swift_endAccess();
    v99 = v174;
    v95 = v175;
    if (!v98)
    {
      while (1)
      {
LABEL_56:
        v101 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          goto LABEL_100;
        }

        if (v101 >= v99)
        {
          break;
        }

        v98 = *(v95 + 8 * v101);
        ++v100;
        if (v98)
        {
          v100 = v101;
          goto LABEL_60;
        }
      }

      v89 = v90;
      v88 = v169;
      v83 = v171;
      v87 = v173;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_88:
  v140 = *(v181 + 108);
  v141 = *(v181 + 107);
  v142 = *(v181 + 106);
  v143 = *(v181 + 105);
  v144 = *(v181 + 104);

  v145 = *(v181 + 1);
  v146 = *MEMORY[0x277D85DE8];

  return v145();
}

uint64_t sub_26BF8445C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 960);
  v16 = *v2;
  v3[121] = a1;
  v3[122] = v1;

  if (v1)
  {
    v5 = v3[119];
    v6 = v3[118];
    v7 = v3[113];
    v8 = v3[112];
    v9 = v3[107];
    v10 = v3[106];
    v11 = v3[105];

    v12 = sub_26BF859D4;
  }

  else
  {
    v12 = sub_26BF84608;
  }

  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_26BF84608()
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = v0[114];
  v3 = v0[112];
  v4 = v0[111];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[95] = v2;
  v7 = sub_26BEBB618(v4, v3);
  v8 = *(v2 + 16);
  v9 = (v6 & 1) == 0;
  v10 = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    goto LABEL_34;
  }

  v3 = v6;
  if (*(v0[114] + 24) >= v10)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_38;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_8:
    while (1)
    {
      isUniquelyReferenced_nonNull_native = v0[121];
      v3 = v0[95];
      v0[123] = v3;
      v14 = *(*(v3 + 56) + 8 * v7);
      v1 = v0[118];
      v15 = v0[117];
      if (!isUniquelyReferenced_nonNull_native)
      {
        break;
      }

      v16 = v0[118];

      v17 = swift_isUniquelyReferenced_nonNull_native();
      v0[99] = v14;
      v10 = sub_26BEBB618(v15, v1);
      v19 = v14[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_40;
      }

      LOBYTE(v1) = v18;
      if (v14[3] < v22)
      {
        v23 = v0[118];
        v24 = v0[117];
        sub_26BE6C208(v22, v17);
        v25 = v0[99];
        v10 = sub_26BEBB618(v24, v23);
        if ((v1 & 1) == (v26 & 1))
        {
          goto LABEL_20;
        }

        goto LABEL_12;
      }

      if ((v17 & 1) == 0)
      {
LABEL_41:
        v52 = v10;
        sub_26BE6F278();
        v10 = v52;
      }

LABEL_20:
      v14 = v0[99];
      v36 = v0[118];
      if (v1)
      {
        v37 = v14[7];
        v38 = *(v37 + 8 * v10);
        *(v37 + 8 * v10) = isUniquelyReferenced_nonNull_native;

LABEL_22:
        if (v14)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      sub_26BF7F1A8(v10, v0[117], v0[118], isUniquelyReferenced_nonNull_native, v0[99]);
      if (v14)
      {
        goto LABEL_23;
      }

LABEL_25:
      sub_26BF25CA8(*(v3 + 48) + 16 * v7);
      sub_26C006458(v7, v3);
LABEL_26:
      v7 = v0[118];
      isUniquelyReferenced_nonNull_native = v0[117];
      v1 = v0[112];
      v39 = v0[111];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
      v40 = swift_allocObject();
      v0[124] = v40;
      *(v40 + 16) = xmmword_26C011280;
      v0[93] = 0;
      v0[94] = 0xE000000000000000;
      sub_26C00AC1C();
      v41 = v0[94];

      v0[91] = 0x20746E65696C63;
      v0[92] = 0xE700000000000000;
      MEMORY[0x26D699090](v39, v1);
      MEMORY[0x26D699090](0x2070756F7267202CLL, 0xE800000000000000);
      MEMORY[0x26D699090](isUniquelyReferenced_nonNull_native, v7);
      MEMORY[0x26D699090](0xD000000000000016, 0x800000026C02D1F0);
      if (!*(v3 + 16))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v42 = sub_26BEBB618(v0[111], v0[112]);
      if ((v43 & 1) == 0)
      {
        goto LABEL_35;
      }

      v3 = *(*(v3 + 56) + 8 * v42);
      if (*(v3 + 16))
      {
        v7 = v0[119];
        isUniquelyReferenced_nonNull_native = v0[118];
        v44 = v0[117];

        v45 = sub_26BEBB618(v44, isUniquelyReferenced_nonNull_native);
        LOBYTE(v1) = v46;

        if (v1)
        {
          v47 = *(*(v3 + 56) + 8 * v45);
          v0[125] = v47;

          v48 = (*v47 + 264);
          v53 = (*v48 + **v48);
          v49 = (*v48)[1];
          v50 = swift_task_alloc();
          v0[126] = v50;
          *v50 = v0;
          v50[1] = sub_26BF84B84;
          v51 = *MEMORY[0x277D85DE8];

          return v53();
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v10 = sub_26BE6F250();
      if ((v3 & 1) == 0)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v29 = v0[118];

    v30 = sub_26BEBB618(v15, v1);
    v32 = v31;

    if (v32)
    {
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v0[98] = v14;
      if (!v33)
      {
        sub_26BE6F278();
        v14 = v0[98];
      }

      v34 = *(v14[6] + 16 * v30 + 8);

      v35 = *(v14[7] + 8 * v30);

      sub_26C0018C8(v30, v14);
LABEL_23:
      *(*(v3 + 56) + 8 * v7) = v14;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v11 = v0[112];
  v1 = v0[111];
  sub_26BE6C1E0(v10, isUniquelyReferenced_nonNull_native);
  v12 = v0[95];
  v10 = sub_26BEBB618(v1, v11);
  if ((v3 & 1) == (v13 & 1))
  {
    v7 = v10;
    if ((v3 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_8;
  }

LABEL_12:
  v27 = *MEMORY[0x277D85DE8];

  return sub_26C00AF8C();
}

uint64_t sub_26BF84B84(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 1008);
  v5 = *(*v2 + 1000);
  v9 = *v2;
  *(v3 + 1016) = a1;
  *(v3 + 1024) = a2;

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26BF84CD4, 0, 0);
}

uint64_t sub_26BF84CD4()
{
  v161 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1024);
  if (v1 >> 60 == 15)
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
    goto LABEL_43;
  }

  v4 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v1);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v4 != 2)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v6 = *(*(v0 + 1016) + 16);
  v7 = *(*(v0 + 1016) + 24);
  v5 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
LABEL_10:
    v8 = *(v0 + 1016);
    v9 = *(v0 + 1020);
    v10 = __OFSUB__(v9, v8);
    v11 = v9 - v8;
    if (v10)
    {
      goto LABEL_134;
    }

    v5 = v11;
  }

LABEL_12:
  v12 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_42;
  }

  *(v0 + 768) = MEMORY[0x277D84F90];
  sub_26BECB834(0, v5 & ~(v5 >> 63), 0);
  v158 = (v0 + 768);
  v12 = *(v0 + 768);
  if (v4 == 2)
  {
    v13 = *(v0 + 1016);
    v14 = *(v13 + 16);
  }

  else
  {
    if (v4 != 1)
    {
LABEL_20:
      if (v5 < 0)
      {
        goto LABEL_135;
      }

      v14 = 0;
      v13 = *(v0 + 1016);
      goto LABEL_22;
    }

    v13 = *(v0 + 1016);
    v14 = v13;
  }

  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:
  v15 = *(v0 + 1024);
  do
  {
    if (v4 == 2)
    {
      if (v14 < *(v13 + 16))
      {
        goto LABEL_121;
      }

      if (v14 >= *(v13 + 24))
      {
        goto LABEL_124;
      }

      v20 = sub_26C008E9C();
      if (!v20)
      {
        goto LABEL_137;
      }

      v17 = v20;
      v21 = sub_26C008ECC();
      v19 = v14 - v21;
      if (__OFSUB__(v14, v21))
      {
        goto LABEL_126;
      }

LABEL_35:
      v22 = *(v17 + v19);
      goto LABEL_38;
    }

    if (v4 == 1)
    {
      if (v14 < v13 || v14 >= v13 >> 32)
      {
        goto LABEL_123;
      }

      v16 = sub_26C008E9C();
      if (!v16)
      {
        goto LABEL_136;
      }

      v17 = v16;
      v18 = sub_26C008ECC();
      v19 = v14 - v18;
      if (__OFSUB__(v14, v18))
      {
        goto LABEL_125;
      }

      goto LABEL_35;
    }

    if (v14 >= BYTE6(v15))
    {
      goto LABEL_122;
    }

    *(v0 + 371) = v13;
    *(v0 + 379) = v15;
    *(v0 + 381) = BYTE2(v15);
    *(v0 + 382) = BYTE3(v15);
    *(v0 + 383) = BYTE4(v15);
    *(v0 + 384) = BYTE5(v15);
    v22 = *(v0 + 371 + v14);
LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA78, &qword_26C020500);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_26C011280;
    *(v23 + 56) = MEMORY[0x277D84B78];
    *(v23 + 64) = MEMORY[0x277D84BC0];
    *(v23 + 32) = v22;
    v24 = sub_26C00A4BC();
    *v158 = v12;
    v27 = *(v12 + 16);
    v26 = *(v12 + 24);
    if (v27 >= v26 >> 1)
    {
      v150 = v24;
      v29 = v25;
      sub_26BECB834((v26 > 1), v27 + 1, 1);
      v25 = v29;
      v24 = v150;
      v12 = *v158;
    }

    *(v12 + 16) = v27 + 1;
    v28 = v12 + 16 * v27;
    *(v28 + 32) = v24;
    *(v28 + 40) = v25;
    ++v14;
    --v5;
  }

  while (v5);
  v1 = *(v0 + 1024);
LABEL_42:
  v30 = *(v0 + 1016);
  *(v0 + 776) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  v31 = sub_26C00A3EC();
  v2 = v32;
  sub_26BE136AC(v30, v1);

  v3 = v31;
LABEL_43:
  v33 = *(v0 + 992);
  MEMORY[0x26D699090](v3, v2);

  v34 = *(v0 + 728);
  v35 = *(v0 + 736);
  v33[7] = MEMORY[0x277D837D0];
  v33[4] = v34;
  v33[5] = v35;
  sub_26C00B03C();

  v36 = *(v0 + 984);
  v37 = *(v0 + 928);
  v38 = *(v0 + 920);
  *(v0 + 912) = v36;
  v39 = (v38 - 1) & v38;
  if (v39)
  {
    goto LABEL_44;
  }

  v57 = v37;
LABEL_51:
  while (2)
  {
    v37 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
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
      goto LABEL_129;
    }

    if (v37 < (((1 << *(v0 + 386)) + 63) >> 6))
    {
      v39 = *(*(v0 + 904) + 8 * v37 + 64);
      ++v57;
      if (v39)
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  v58 = *(v0 + 896);
  v59 = *(v0 + 904);

  v60 = *(v0 + 880);
  v61 = (*(v0 + 872) - 1) & *(v0 + 872);
  v152 = v36;
  if (v61)
  {
    v62 = *(v0 + 848);
    goto LABEL_61;
  }

  while (1)
  {
    v63 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_127;
    }

    if (v63 >= (((1 << *(v0 + 385)) + 63) >> 6))
    {
      break;
    }

    v62 = *(v0 + 848);
    v61 = *(v62 + 8 * v63 + 64);
    ++v60;
    if (v61)
    {
      v60 = v63;
LABEL_61:
      *(v0 + 880) = v60;
      *(v0 + 872) = v61;
      v64 = __clz(__rbit64(v61)) | (v60 << 6);
      v65 = (*(v62 + 48) + 16 * v64);
      v66 = *v65;
      *(v0 + 888) = *v65;
      v67 = v65[1];
      *(v0 + 896) = v67;
      v68 = *(*(v62 + 56) + 8 * v64);
      *(v0 + 904) = v68;

      v69 = sub_26C005CAC(MEMORY[0x277D84F90]);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26BE57A28(v69, v66, v67, isUniquelyReferenced_nonNull_native);

      v36 = v152;
      v71 = *(v68 + 32);
      *(v0 + 386) = v71;
      v72 = 1 << v71;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      else
      {
        v73 = -1;
      }

      v39 = v73 & *(v68 + 64);
      *(v0 + 912) = v152;

      v57 = 0;
      v37 = 0;
      if (v39)
      {
LABEL_44:
        *(v0 + 928) = v37;
        *(v0 + 920) = v39;
        v40 = *(v0 + 904);
        v41 = *(v0 + 864);
        v42 = (v37 << 10) | (16 * __clz(__rbit64(v39)));
        v43 = (*(v40 + 48) + v42);
        *(v0 + 936) = *v43;
        *(v0 + 944) = v43[1];
        v44 = (*(v40 + 56) + v42);
        v45 = *v44;
        *(v0 + 952) = v44[1];
        if (*(v41 + 16))
        {
          v46 = *(v0 + 896);
          v47 = *(v0 + 888);

          v48 = sub_26BEBB618(v47, v46);
          if (v49)
          {
            v50 = *(*(*(v0 + 864) + 56) + 8 * v48);

            result = sub_26C00903C();
            if (v52 >> 60 == 15)
            {
              __break(1u);
            }

            else
            {
              v53 = result;
              v54 = v52;
              type metadata accessor for MLS.Group.PureSwiftGroup();
              v55 = swift_task_alloc();
              *(v0 + 960) = v55;
              *v55 = v0;
              v55[1] = sub_26BF8445C;
              v56 = *MEMORY[0x277D85DE8];

              return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v50, v53, v54);
            }

            return result;
          }

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
LABEL_137:
          __break(1u);
        }

LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      goto LABEL_51;
    }
  }

  v74 = *(v0 + 864);
  v75 = *(v0 + 848);
  v76 = *(v0 + 824);

  swift_beginAccess();
  v77 = v76[5];
  v76[5] = v74;

  swift_beginAccess();
  v78 = v76[6];
  v76[6] = v36;

  v79 = sub_26C005C98(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v80 = v76[7];
  v76[7] = v79;

  v81 = v76[6];
  v84 = *(v81 + 64);
  v83 = v81 + 64;
  v82 = v84;
  v85 = -1 << *(v76[6] + 32);
  if (-v85 < 64)
  {
    v86 = ~(-1 << -v85);
  }

  else
  {
    v86 = -1;
  }

  v87 = v86 & v82;
  v88 = (63 - v85) >> 6;
  v149 = v76[6];

  v89 = 0;
  v156 = v76;
  v147 = v88;
  v148 = v83;
LABEL_71:
  if (!v87)
  {
    while (1)
    {
      v90 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        goto LABEL_128;
      }

      if (v90 >= v88)
      {
        goto LABEL_113;
      }

      v87 = *(v83 + 8 * v90);
      ++v89;
      if (v87)
      {
        goto LABEL_76;
      }
    }
  }

  v90 = v89;
LABEL_76:
  v151 = (v87 - 1) & v87;
  v91 = __clz(__rbit64(v87)) | (v90 << 6);
  v92 = (*(v149 + 48) + 16 * v91);
  v93 = v92[1];
  v155 = *v92;
  v94 = *(*(v149 + 56) + 8 * v91);
  v95 = v94 + 64;
  v96 = -1 << *(v94 + 32);
  if (-v96 < 64)
  {
    v97 = ~(-1 << -v96);
  }

  else
  {
    v97 = -1;
  }

  v98 = v97 & *(v94 + 64);
  v99 = (63 - v96) >> 6;
  v159 = v94;
  swift_bridgeObjectRetain_n();
  v157 = v93;

  v100 = 0;
  v153 = v99;
  v154 = v95;
  if (!v98)
  {
    goto LABEL_80;
  }

  while (1)
  {
LABEL_84:
    v102 = (*(v159 + 48) + ((v100 << 10) | (16 * __clz(__rbit64(v98)))));
    v104 = *v102;
    v103 = v102[1];
    v105 = *(v76[7] + 16);

    if (!v105 || (, sub_26BEBB618(v104, v103), v107 = v106, , (v107 & 1) == 0))
    {
      swift_beginAccess();
      v108 = v76[7];
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v110 = v76[7];
      v76[7] = 0x8000000000000000;
      v111 = sub_26BEBB618(v104, v103);
      v113 = v110[2];
      v114 = (v112 & 1) == 0;
      v10 = __OFADD__(v113, v114);
      v115 = v113 + v114;
      if (v10)
      {
        goto LABEL_132;
      }

      v116 = v112;
      if (v110[3] < v115)
      {
        sub_26BE6C4BC(v115, v109);
        v111 = sub_26BEBB618(v104, v103);
        if ((v116 & 1) != (v117 & 1))
        {
          goto LABEL_116;
        }

        v76 = v156;
        if ((v116 & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_93:
        v118 = v110[7];
        v119 = *(v118 + 8 * v111);
        *(v118 + 8 * v111) = MEMORY[0x277D84F90];

LABEL_97:
        v76[7] = v110;
        swift_endAccess();
        goto LABEL_98;
      }

      if (v109)
      {
        if (v112)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v120 = v111;
        sub_26BE6F3EC();
        v111 = v120;
        if (v116)
        {
          goto LABEL_93;
        }
      }

LABEL_95:
      v110[(v111 >> 6) + 8] |= 1 << v111;
      v121 = (v110[6] + 16 * v111);
      *v121 = v104;
      v121[1] = v103;
      *(v110[7] + 8 * v111) = MEMORY[0x277D84F90];
      v122 = v110[2];
      v10 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v10)
      {
        goto LABEL_133;
      }

      v110[2] = v123;

      goto LABEL_97;
    }

LABEL_98:
    swift_beginAccess();
    v124 = v76[7];
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v76[7];
    v160 = v126;
    v76[7] = 0x8000000000000000;
    v128 = sub_26BEBB618(v104, v103);
    v129 = v126[2];
    v130 = (v127 & 1) == 0;
    v131 = v129 + v130;
    if (__OFADD__(v129, v130))
    {
      goto LABEL_131;
    }

    v132 = v127;
    if (v126[3] < v131)
    {
      sub_26BE6C4BC(v131, v125);
      v133 = sub_26BEBB618(v104, v103);
      if ((v132 & 1) != (v134 & 1))
      {
LABEL_116:
        v146 = *MEMORY[0x277D85DE8];

        return sub_26C00AF8C();
      }

      v128 = v133;
      if ((v132 & 1) == 0)
      {
        break;
      }

      goto LABEL_105;
    }

    if (v125)
    {
      if ((v127 & 1) == 0)
      {
        break;
      }

      goto LABEL_105;
    }

    sub_26BE6F3EC();
    if ((v132 & 1) == 0)
    {
      break;
    }

LABEL_105:
    v135 = *(v126[7] + 8 * v128);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v135 = sub_26BEEDAF4(0, *(v135 + 2) + 1, 1, v135);
    }

    v95 = v154;
    v137 = *(v135 + 2);
    v136 = *(v135 + 3);
    if (v137 >= v136 >> 1)
    {
      v135 = sub_26BEEDAF4((v136 > 1), v137 + 1, 1, v135);
    }

    v98 &= v98 - 1;
    *(v135 + 2) = v137 + 1;
    v138 = &v135[16 * v137];
    *(v138 + 4) = v155;
    *(v138 + 5) = v157;

    *(v160[7] + 8 * v128) = v135;

    v76 = v156;
    v156[7] = v160;
    swift_endAccess();
    v99 = v153;
    if (!v98)
    {
      while (1)
      {
LABEL_80:
        v101 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          goto LABEL_120;
        }

        if (v101 >= v99)
        {
          break;
        }

        v98 = *(v95 + 8 * v101);
        ++v100;
        if (v98)
        {
          v100 = v101;
          goto LABEL_84;
        }
      }

      v89 = v90;
      v87 = v151;
      v88 = v147;
      v83 = v148;
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_113:
  v139 = *(v0 + 864);
  v140 = *(v0 + 856);
  v141 = *(v0 + 848);
  v142 = *(v0 + 840);
  v143 = *(v0 + 832);

  v144 = *(v0 + 8);
  v145 = *MEMORY[0x277D85DE8];

  return v144();
}

uint64_t sub_26BF859D4()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[108];
  v4 = v0[106];
  v5 = v0[104];

  v6 = v0[122];
  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_26BF85AA4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC68, &qword_26C0201A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BF86F60();
  sub_26C00B10C();
  v18 = *v3;
  v15 = *v3;
  v14 = 0;
  sub_26BF86FB4(&v18, v13);
  sub_26BE3AFC4();
  sub_26C00AEBC();
  sub_26BE00258(v15, *(&v15 + 1));
  if (!v2)
  {
    v17 = v3[1];
    v15 = v3[1];
    v14 = 1;
    sub_26BF86FB4(&v17, v13);
    sub_26C00AEBC();
    sub_26BE00258(v15, *(&v15 + 1));
    v15 = v3[2];
    v16 = v15;
    v14 = 2;
    sub_26BF86FB4(&v16, v13);
    sub_26C00AEBC();
    sub_26BE00258(v15, *(&v15 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BF85CC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FBF0, &qword_26C020178);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BF864A4();
  sub_26C00B10C();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E980, &qword_26C012660);
  sub_26BF86E14(&qword_28045FC00);
  sub_26C00AEBC();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC08, &qword_26C020180);
    sub_26BF86E80(&qword_28045FC10, &qword_28045FC00);
    sub_26C00AEBC();
    v17 = a4;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC18, &qword_26C020188);
    sub_26BF864F8(&qword_28045FC20, sub_26BF8657C);
    sub_26C00AEBC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26BF85F64()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61745370756F7267;
  }
}

uint64_t sub_26BF85FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BF865D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BF86000(uint64_t a1)
{
  v2 = sub_26BF86F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BF8603C(uint64_t a1)
{
  v2 = sub_26BF86F60();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BF86078@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26BF86700(a1, v6);
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

uint64_t sub_26BF860D4()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x53656761726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746E65696C63;
  }
}

uint64_t sub_26BF8613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BF869CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BF86164(uint64_t a1)
{
  v2 = sub_26BF864A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BF861A0(uint64_t a1)
{
  v2 = sub_26BF864A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BF861DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26BF86AF0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_26BF8622C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA20, &qword_26C029070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BF8629C()
{
  result = qword_28045FBC8;
  if (!qword_28045FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FBC8);
  }

  return result;
}

unint64_t sub_26BF862F0()
{
  result = qword_28045FBD0;
  if (!qword_28045FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FBD0);
  }

  return result;
}

uint64_t sub_26BF86344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA20, &qword_26C029070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF863B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BF8640C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26BF86454(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_26BF864A4()
{
  result = qword_28045FBF8;
  if (!qword_28045FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FBF8);
  }

  return result;
}

uint64_t sub_26BF864F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045FC18, &qword_26C020188);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BF8657C()
{
  result = qword_28045FC28;
  if (!qword_28045FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC28);
  }

  return result;
}

uint64_t sub_26BF865D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61745370756F7267 && a2 == 0xEF65726F74536574;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026C02D230 == a2 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C02D250 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BF86700@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC58, &qword_26C020198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BF86F60();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  sub_26BE3B018();
  sub_26C00AE3C();
  v11 = v25;
  v23 = a2;
  v24 = v26;
  v27 = 1;
  sub_26C00AE3C();
  v21 = v25;
  v22 = v26;
  v27 = 2;
  sub_26C00AE3C();
  (*(v6 + 8))(v9, v5);
  v12 = v25;
  v13 = v26;
  v14 = v11;
  v15 = v11;
  v16 = v24;
  sub_26BE00608(v15, v24);
  v18 = v21;
  v17 = v22;
  sub_26BE00608(v21, v22);
  sub_26BE00608(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26BE00258(v14, v16);
  sub_26BE00258(v18, v17);
  result = sub_26BE00258(v12, v13);
  v20 = v23;
  *v23 = v14;
  v20[1] = v16;
  v20[2] = v18;
  v20[3] = v17;
  v20[4] = v12;
  v20[5] = v13;
  return result;
}

uint64_t sub_26BF869CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E65696C63 && a2 == 0xE700000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026C02D210 == a2 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53656761726F7473 && a2 == 0xEC00000065746174)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BF86AF0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC30, &qword_26C020190);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BF864A4();
  sub_26C00B0FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E980, &qword_26C012660);
  v11 = 0;
  sub_26BF86E14(&qword_28045FC38);
  sub_26C00AE3C();
  v9 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC08, &qword_26C020180);
  v11 = 1;
  sub_26BF86E80(&qword_28045FC40, &qword_28045FC38);
  sub_26C00AE3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC18, &qword_26C020188);
  v11 = 2;
  sub_26BF864F8(&qword_28045FC48, sub_26BF86F0C);
  sub_26C00AE3C();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_26BF86E14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E980, &qword_26C012660);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BF86E80(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045FC08, &qword_26C020180);
    sub_26BF86E14(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BF86F0C()
{
  result = qword_28045FC50;
  if (!qword_28045FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC50);
  }

  return result;
}

unint64_t sub_26BF86F60()
{
  result = qword_28045FC60;
  if (!qword_28045FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC60);
  }

  return result;
}

unint64_t sub_26BF87034()
{
  result = qword_28045FC70;
  if (!qword_28045FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC70);
  }

  return result;
}

unint64_t sub_26BF8708C()
{
  result = qword_28045FC78;
  if (!qword_28045FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC78);
  }

  return result;
}

unint64_t sub_26BF870E4()
{
  result = qword_28045FC80;
  if (!qword_28045FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC80);
  }

  return result;
}

unint64_t sub_26BF8713C()
{
  result = qword_28045FC88;
  if (!qword_28045FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC88);
  }

  return result;
}

unint64_t sub_26BF87194()
{
  result = qword_28045FC90;
  if (!qword_28045FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC90);
  }

  return result;
}

unint64_t sub_26BF871EC()
{
  result = qword_28045FC98;
  if (!qword_28045FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC98);
  }

  return result;
}

uint64_t sub_26BF87240(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v28 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_48;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v42 = MEMORY[0x277D84F90];
    v9 = v5 & ~(v5 >> 63);
    sub_26BECB834(0, v9, 0);
    v8 = v42;
    if (v4 == 2)
    {
      v10 = *(a1 + 16);
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_18;
      }

      v10 = a1;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_20:
      v29 = v4;
      while (1)
      {
        if (!v9)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
        }

        if (v4 == 2)
        {
          if (v10 < *(a1 + 16))
          {
            goto LABEL_42;
          }

          if (v10 >= *(a1 + 24))
          {
            goto LABEL_45;
          }

          v15 = sub_26C008E9C();
          if (!v15)
          {
            goto LABEL_51;
          }

          v12 = v15;
          v16 = sub_26C008ECC();
          v14 = v10 - v16;
          if (__OFSUB__(v10, v16))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v4 != 1)
          {
            if (v10 >= BYTE6(a2))
            {
              goto LABEL_43;
            }

            v30 = a1;
            v31 = BYTE2(a1);
            v32 = BYTE3(a1);
            v33 = v28;
            v34 = BYTE5(a1);
            v35 = BYTE6(a1);
            v36 = HIBYTE(a1);
            v37 = a2;
            v38 = BYTE2(a2);
            v39 = BYTE3(a2);
            v40 = BYTE4(a2);
            v41 = BYTE5(a2);
            v17 = *(&v30 + v10);
            goto LABEL_37;
          }

          if (v10 < a1 || v10 >= a1 >> 32)
          {
            goto LABEL_44;
          }

          v11 = sub_26C008E9C();
          if (!v11)
          {
            goto LABEL_50;
          }

          v12 = v11;
          v13 = sub_26C008ECC();
          v14 = v10 - v13;
          if (__OFSUB__(v10, v13))
          {
            goto LABEL_46;
          }
        }

        v17 = *(v12 + v14);
LABEL_37:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA78, &qword_26C020500);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_26C011280;
        *(v18 + 56) = MEMORY[0x277D84B78];
        *(v18 + 64) = MEMORY[0x277D84BC0];
        *(v18 + 32) = v17;
        v19 = sub_26C00A4BC();
        v42 = v8;
        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        if (v22 >= v21 >> 1)
        {
          v27 = v19;
          v24 = v20;
          sub_26BECB834((v21 > 1), v22 + 1, 1);
          v20 = v24;
          v19 = v27;
          v8 = v42;
        }

        *(v8 + 16) = v22 + 1;
        v23 = v8 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        ++v10;
        --v9;
        --v5;
        LODWORD(v4) = v29;
        if (!v5)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_18:
    if (v5 < 0)
    {
      goto LABEL_49;
    }

    v10 = 0;
    goto LABEL_20;
  }

LABEL_40:
  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_26BF875C0, 0, 0);
}

uint64_t sub_26BF875C0()
{
  v26 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_26C009A5C();
  v0[10] = __swift_project_value_buffer(v4, qword_280478EE8);

  sub_26BE00608(v2, v1);
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();

  sub_26BE00258(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136315394;

    v12 = sub_26BE16A38();
    v14 = v13;

    v15 = sub_26BE29740(v12, v14, v25);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v0[5] = sub_26BF87240(v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
    v16 = sub_26C00A3EC();
    v18 = v17;

    v19 = sub_26BE29740(v16, v18, v25);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_26BDFE000, v5, v6, "%s: loading group with groupID %s from storage", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v11, -1, -1);
    MEMORY[0x26D69A4E0](v10, -1, -1);
  }

  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_26BF878AC;
  v21 = v0[7];
  v22 = v0[8];
  v23 = v0[6];

  return sub_26BF7D8CC(v23, v21, v22);
}

uint64_t sub_26BF878AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v8 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    v6 = sub_26BF87F18;
  }

  else
  {
    v6 = sub_26BF879C4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF879C4()
{
  v61 = v0;
  v1 = v0[13];
  if (v1 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_9:
      sub_26BE136AC(v0[12], v1);
      goto LABEL_11;
    }

    v3 = v0[12];
    if (*(v3 + 16) != *(v3 + 24))
    {
      goto LABEL_18;
    }

LABEL_11:
    v4 = v0[10];
    v6 = v0[7];
    v5 = v0[8];
    sub_26BE00608(v6, v5);
    v7 = sub_26C009A3C();
    v8 = sub_26C00AA1C();
    sub_26BE00258(v6, v5);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[14];
      v57 = v0[12];
      v58 = v0[13];
      v11 = v0[7];
      v10 = v0[8];
      v56 = v10;
      v59 = v0[6];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v60[0] = v13;
      *v12 = 136315138;
      v0[2] = sub_26BF87240(v11, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
      v14 = sub_26C00A3EC();
      v16 = v15;

      v17 = sub_26BE29740(v14, v16, v60);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26BDFE000, v7, v8, "Group with ID %s not found in storage", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D69A4E0](v13, -1, -1);
      MEMORY[0x26D69A4E0](v12, -1, -1);
      sub_26BE136AC(v57, v58);
      sub_26BE00258(v11, v56);
    }

    else
    {
      v19 = v0[7];
      v18 = v0[8];
      v20 = v0[6];
      sub_26BE136AC(v0[12], v0[13]);

      sub_26BE00258(v19, v18);
    }

    v21 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v3 = v0[12];
    if (v3 == v3 >> 32)
    {
      goto LABEL_11;
    }

LABEL_18:
    sub_26BE2E408(v3, v1);
    goto LABEL_19;
  }

  if ((v1 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  v24 = v0[10];
  v26 = v0[7];
  v25 = v0[8];
  sub_26BE00608(v26, v25);
  v27 = sub_26C009A3C();
  v28 = sub_26C00AA1C();
  sub_26BE00258(v26, v25);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v0[14];
    v31 = v0[7];
    v30 = v0[8];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v60[0] = v33;
    *v32 = 136315138;
    v0[4] = sub_26BF87240(v31, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
    v34 = sub_26C00A3EC();
    v36 = v35;

    v37 = sub_26BE29740(v34, v36, v60);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_26BDFE000, v27, v28, "Loaded group with ID %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x26D69A4E0](v33, -1, -1);
    MEMORY[0x26D69A4E0](v32, -1, -1);
  }

  else
  {

    v29 = v0[14];
  }

  v38 = v0[12];
  v39 = v0[13];
  v40 = v0[6];

  sub_26BE2E408(v38, v39);
  v41 = sub_26BF8BCC8(v40, v38, v39);
  if (!v29)
  {
    v50 = v0[12];
    v51 = v0[13];
    v53 = v0[7];
    v52 = v0[8];
    v54 = v0[6];
    v55 = v41;
    sub_26BE136AC(v50, v51);
    sub_26BE136AC(v50, v51);
    sub_26BE00258(v53, v52);

    v21 = v55;
LABEL_15:
    v22 = v0[1];

    return v22(v21);
  }

  v43 = v0[12];
  v42 = v0[13];
  v44 = v0[8];
  v46 = v0[6];
  v45 = v0[7];
  v0[3] = v0[9];
  swift_getMetatypeMetadata();
  v47 = sub_26C00A4FC();
  sub_26BE826C4(v47, v48, v43, v42);

  swift_willThrow();
  sub_26BE00258(v45, v44);

  sub_26BE136AC(v43, v42);
  sub_26BE136AC(v43, v42);
  v49 = v0[1];

  return v49();
}

uint64_t sub_26BF87F18()
{
  v1 = v0[6];
  sub_26BE00258(v0[7], v0[8]);

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF87F90(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = (a2 + 40);
  v4 = *(a2 + 16) + 1;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  while (--v4)
  {
    v7 = v3 + 2;
    v8 = *(v3 - 2);
    v9 = bswap64(*v3);
    v22 = v5;
    v23 = v6;
    v19 = v9;
    v20 = &v19;
    v21 = &v20;
    v10 = __swift_project_boxed_opaque_existential_1(&v20, v5);
    v12 = *v10;
    v11 = v10[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v20);
    LODWORD(v19) = bswap32(v8);
    v22 = v5;
    v23 = v6;
    v20 = &v19;
    v21 = (&v19 + 4);
    v13 = __swift_project_boxed_opaque_existential_1(&v20, v5);
    v15 = *v13;
    v14 = v13[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v20);
    v3 = v7;
    v16 = __OFADD__(a1, 12);
    a1 += 12;
    if (v16)
    {
      __break(1u);
      break;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_26BF880D8(uint64_t a1)
{
  *&v248[119] = *MEMORY[0x277D85DE8];
  v215 = type metadata accessor for FileInfoAndSender();
  v211 = *(v215 - 8);
  v2 = *(v211 + 64);
  v3 = MEMORY[0x28223BE20](v215);
  v209 = &v199 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v212 = &v199 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v208 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v213 = &v199 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v210 = &v199 - v13;
  MEMORY[0x28223BE20](v12);
  v214 = &v199 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  v216 = *(v15 - 8);
  v217 = v15;
  v16 = *(v216 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v218 = (&v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v219 = &v199 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v199 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v199 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v199 - v28;
  v30 = sub_26C00928C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v199 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = *(a1 + 56);
  v35 = v221;
  result = MLS.Identity.Credential.serializedRepresentation.getter();
  if (v35)
  {
    goto LABEL_23;
  }

  v206 = v29;
  v207 = v34;
  v221 = v31;
  v204 = v27;
  v205 = v22;
  MLS.Credential.init(rawValue:)(result, v37, &v234);
  v38 = &v223;
  v201 = *(&v234 + 1);
  v202 = v234;
  v40 = *(a1 + 32);
  v39 = *(a1 + 40);
  v200 = a1;
  v41 = v39 >> 62;
  if ((v39 >> 62) <= 1)
  {
    v42 = v220;
    if (!v41)
    {
      v29 = BYTE6(v39);
      goto LABEL_12;
    }

    LODWORD(v43) = HIDWORD(v40) - v40;
    if (__OFSUB__(HIDWORD(v40), v40))
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v29 = v43;
    goto LABEL_10;
  }

  v42 = v220;
  if (v41 == 2)
  {
    v44 = *(v40 + 16);
    v43 = *(v40 + 24);
    v29 = v43 - v44;
    if (__OFSUB__(v43, v44))
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_10:
    sub_26BE00608(v40, v39);
    v35 = 0;
    goto LABEL_12;
  }

  v29 = 0;
LABEL_12:
  v45 = sub_26BF30414(v29);
  v203 = v35;
  v46 = v45;
  sub_26BE11228(v40, v39);
  v47 = sub_26BE00258(v40, v39);
  v49 = __OFADD__(v46, v29);
  v29 += v46;
  if (v49)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v50 = v200;
  *&v223 = bswap64(*(v200 + 24));
  v31 = MEMORY[0x277D838B0];
  v40 = MEMORY[0x277CC9C18];
  *(&v235 + 1) = MEMORY[0x277D838B0];
  *&v236 = MEMORY[0x277CC9C18];
  *&v234 = &v223;
  *(&v234 + 1) = &v223 + 8;
  v51 = __swift_project_boxed_opaque_existential_1(&v234, MEMORY[0x277D838B0]);
  v53 = *v51;
  v52 = v51[1];
  sub_26C00908C();
  v47 = __swift_destroy_boxed_opaque_existential_1(&v234);
  v49 = __OFADD__(v29, 8);
  v29 += 8;
  if (v49)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  LODWORD(v223) = bswap32(*(v50 + 152));
  *(&v235 + 1) = v31;
  *&v236 = v40;
  *&v234 = &v223;
  *(&v234 + 1) = &v223 + 4;
  v54 = __swift_project_boxed_opaque_existential_1(&v234, v31);
  v56 = *v54;
  v55 = v54[1];
  sub_26C00908C();
  v47 = __swift_destroy_boxed_opaque_existential_1(&v234);
  v57 = v29 + 4;
  if (__OFADD__(v29, 4))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (*(v50 + 72))
  {
    v58 = 512;
  }

  else
  {
    v58 = 256;
  }

  LOWORD(v223) = v58;
  *(&v235 + 1) = v31;
  *&v236 = v40;
  *&v234 = &v223;
  *(&v234 + 1) = &v223 + 2;
  v59 = __swift_project_boxed_opaque_existential_1(&v234, v31);
  v61 = *v59;
  v60 = v59[1];
  sub_26C00908C();
  v47 = __swift_destroy_boxed_opaque_existential_1(&v234);
  v29 += 6;
  if (__OFADD__(v57, 2))
  {
    goto LABEL_65;
  }

  v62 = *(v50 + 48);
  swift_beginAccess();
  v63 = v221;
  v64 = v30;
  v65 = v207;
  (v221[2])();
  v35 = v203;
  v66 = sub_26BF8FDE4();
  if (v35)
  {
    (v63[1])(v65, v64);
    result = sub_26BE0489C(v202, v201);
    goto LABEL_23;
  }

  v67 = v66;
  v68 = v63[1];
  v31 = (v63 + 1);
  v69 = v68(v65, v64);
  v38 = (v29 + v67);
  if (__OFADD__(v29, v67))
  {
    __break(1u);
    goto LABEL_90;
  }

  v70 = v200;
  swift_beginAccess();
  sub_26BE038A8(v70 + 112, &v234);
  v71 = sub_26BE136C4(&v234);
  v73 = v201;
  v72 = v202;
  v75 = v71;
  v76 = __swift_destroy_boxed_opaque_existential_1(&v234);
  v49 = __OFADD__(v38, v75);
  v38 = (v38 + v75);
  if (v49)
  {
    __break(1u);
    goto LABEL_107;
  }

  *&v234 = v72;
  *(&v234 + 1) = v73;
  v77 = sub_26BE03BF4(&v234);
  v203 = 0;
  if (__OFADD__(v38, v77))
  {
    goto LABEL_118;
  }

  v199 = v38 + v77;
  v78 = v200;
  swift_beginAccess();
  v79 = *(v78 + 160);
  v80 = *(v79 + 16);
  if (v80)
  {
    v38 = v42;
    v81 = sub_26BE32898(*(v79 + 16), 0);
    v221 = sub_26BE33594(&v234, (v81 + 4), v80, v79);
    v207 = v236;
    swift_bridgeObjectRetain_n();
    sub_26BE2DA4C();
    if (v221 != v80)
    {
      __break(1u);
      goto LABEL_120;
    }

    v73 = v201;
    v40 = MEMORY[0x277CC9C18];
  }

  else
  {
    v81 = MEMORY[0x277D84F90];
  }

  v38 = &v223;
  *&v234 = v81;
  v35 = v203;
  sub_26BF8A868(&v234);
  if (!v35)
  {
    v82 = v234;
    v234 = xmmword_26C00BBD0;
    *&v235 = 0;
    v83 = sub_26BF87F90(0, v82);
    v84 = sub_26BF30414(v83);
    v31 = v40;
    v203 = 0;
    v85 = v84;
    sub_26BF2A30C(&v234);
    sub_26BE00258(v234, *(&v234 + 1));

    v86 = v85 + v83;
    if (!__OFADD__(v85, v83))
    {
      v87 = v200;
      v38 = &v199[v86];
      v88 = v219;
      if (!__OFADD__(v199, v86))
      {
        *&v223 = 0x300000000000000;
        *(&v235 + 1) = MEMORY[0x277D838B0];
        *&v236 = v40;
        *&v234 = &v223;
        *(&v234 + 1) = &v223 + 8;
        v89 = __swift_project_boxed_opaque_existential_1(&v234, MEMORY[0x277D838B0]);
        v91 = *v89;
        v90 = v89[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v234);
        v92 = v38 + 1;
        if (!__OFADD__(v38, 8))
        {
          v93 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
          swift_beginAccess();
          v94 = v87 + v93;
          v38 = v206;
          sub_26BE2E1F0(v94, v206, &qword_28045E8D8, &qword_26C012580);
          v40 = v204;
          sub_26BE2E1F0(v38, v204, &qword_28045E8D8, &qword_26C012580);
          v95 = v217;
          if ((*(v216 + 48))(v40, 1, v217) == 1)
          {
            sub_26BE2E258(v40, &qword_28045E8D8, &qword_26C012580);
            LOBYTE(v223) = 0;
            *(&v235 + 1) = MEMORY[0x277D838B0];
            *&v236 = v31;
            *&v234 = &v223;
            *(&v234 + 1) = &v223 + 1;
            v96 = __swift_project_boxed_opaque_existential_1(&v234, MEMORY[0x277D838B0]);
            v98 = *v96;
            v97 = v96[1];
            sub_26C00908C();
            __swift_destroy_boxed_opaque_existential_1(&v234);
            sub_26BE2E258(v38, &qword_28045E8D8, &qword_26C012580);
            v99 = 1;
            goto LABEL_36;
          }

          v126 = v205;
          sub_26BF8E898(v40, v205);
          v247 = 1;
          *(&v224 + 1) = MEMORY[0x277D838B0];
          *&v225 = v31;
          *&v223 = &v247;
          *(&v223 + 1) = v248;
          v127 = __swift_project_boxed_opaque_existential_1(&v223, MEMORY[0x277D838B0]);
          v129 = *v127;
          v128 = v127[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v223);
          sub_26BE2E1F0(v126, v88, &qword_28045E8E0, &unk_26C0204E0);
          v130 = (v88 + *(v95 + 48));
          v131 = v130[9];
          v132 = v88;
          v29 = &v223;
          v242 = v130[8];
          v243 = v131;
          v244 = v130[10];
          v133 = v130[5];
          v238 = v130[4];
          v239 = v133;
          v134 = v130[7];
          v240 = v130[6];
          v241 = v134;
          v135 = v130[1];
          v234 = *v130;
          v235 = v135;
          v136 = v130[3];
          v236 = v130[2];
          v237 = v136;
          v137 = v218;
          sub_26BE2E12C(v132, v218);
          v138 = (v137 + *(v95 + 48));
          v139 = v243;
          v138[8] = v242;
          v138[9] = v139;
          v138[10] = v244;
          v140 = v239;
          v138[4] = v238;
          v138[5] = v140;
          v141 = v241;
          v138[6] = v240;
          v138[7] = v141;
          v142 = v235;
          *v138 = v234;
          v138[1] = v142;
          v143 = v237;
          v138[2] = v236;
          v138[3] = v143;
          sub_26BE6FF30(&v234, &v223);
          v35 = v203;
          v144 = sub_26BEDD4A8(v137);
          if (v35)
          {
            v203 = v35;
            v157 = v202;
            sub_26BE2E258(v218, &qword_28045E8E0, &unk_26C0204E0);
            sub_26BE0489C(v157, v73);
            sub_26BE6FF8C(&v234);
            sub_26BE2E258(v205, &qword_28045E8E0, &unk_26C0204E0);
            sub_26BE2E258(v206, &qword_28045E8D8, &qword_26C012580);
            result = sub_26BF8E984(v219, type metadata accessor for MLS.GroupState);
LABEL_23:
            v74 = *MEMORY[0x277D85DE8];
            return result;
          }

          v38 = v144;
          v151 = v138[9];
          v231 = v138[8];
          v232 = v151;
          v233 = v138[10];
          v152 = v138[5];
          v227 = v138[4];
          v228 = v152;
          v153 = v138[7];
          v229 = v138[6];
          v230 = v153;
          v154 = v138[1];
          v223 = *v138;
          v224 = v154;
          v155 = v138[3];
          v225 = v138[2];
          v226 = v155;
          v156 = sub_26BE7945C(&v223);
          v203 = 0;
          v163 = v38 + v156;
          if (__OFADD__(v38, v156))
          {
            goto LABEL_126;
          }

          v38 = &unk_26C0204E0;
          sub_26BE2E258(v218, &qword_28045E8E0, &unk_26C0204E0);
          sub_26BE6FF8C(&v234);
          sub_26BE2E258(v205, &qword_28045E8E0, &unk_26C0204E0);
          sub_26BE2E258(v206, &qword_28045E8D8, &qword_26C012580);
          v47 = sub_26BF8E984(v219, type metadata accessor for MLS.GroupState);
          v99 = (v163 + 1);
          if (!__OFADD__(v163, 1))
          {
LABEL_36:
            v221 = (v92 + v99);
            if (!__OFADD__(v92, v99))
            {
              v100 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
              v101 = v200;
              swift_beginAccess();
              v102 = v214;
              sub_26BE2E1F0(v101 + v100, v214, &qword_28045FA38, &qword_26C01D890);
              v103 = v210;
              sub_26BE2E1F0(v102, v210, &qword_28045FA38, &qword_26C01D890);
              v40 = *(v211 + 48);
              if ((v40)(v103, 1, v215) == 1)
              {
                v38 = &qword_28045FA38;
                sub_26BE2E258(v103, &qword_28045FA38, &qword_26C01D890);
                LOBYTE(v223) = 0;
                *(&v235 + 1) = MEMORY[0x277D838B0];
                *&v236 = v31;
                *&v234 = &v223;
                *(&v234 + 1) = &v223 + 1;
                v104 = __swift_project_boxed_opaque_existential_1(&v234, MEMORY[0x277D838B0]);
                v106 = *v104;
                v105 = v104[1];
                sub_26C00908C();
                __swift_destroy_boxed_opaque_existential_1(&v234);
                sub_26BE2E258(v102, &qword_28045FA38, &qword_26C01D890);
                v107 = 1;
LABEL_39:
                v49 = __OFADD__(v221, v107);
                v221 = (v221 + v107);
                if (!v49)
                {
                  v108 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject;
                  v109 = v200;
                  swift_beginAccess();
                  v110 = v109 + v108;
                  v111 = v213;
                  sub_26BE2E1F0(v110, v213, &qword_28045FA38, &qword_26C01D890);
                  v112 = v208;
                  sub_26BE2E1F0(v111, v208, &qword_28045FA38, &qword_26C01D890);
                  if ((v40)(v112, 1, v215) == 1)
                  {
                    v38 = &qword_28045FA38;
                    sub_26BE2E258(v112, &qword_28045FA38, &qword_26C01D890);
                    LOBYTE(v223) = 0;
                    *(&v235 + 1) = MEMORY[0x277D838B0];
                    *&v236 = v31;
                    *&v234 = &v223;
                    *(&v234 + 1) = &v223 + 1;
                    v113 = __swift_project_boxed_opaque_existential_1(&v234, MEMORY[0x277D838B0]);
                    v115 = *v113;
                    v114 = v113[1];
                    sub_26C00908C();
                    __swift_destroy_boxed_opaque_existential_1(&v234);
                    sub_26BE2E258(v213, &qword_28045FA38, &qword_26C01D890);
                    v116 = 1;
                    goto LABEL_42;
                  }

                  sub_26BF8E9E4(v112, v209, type metadata accessor for FileInfoAndSender);
                  LOBYTE(v223) = 1;
                  *(&v235 + 1) = MEMORY[0x277D838B0];
                  *&v236 = v31;
                  *&v234 = &v223;
                  *(&v234 + 1) = &v223 + 1;
                  v158 = __swift_project_boxed_opaque_existential_1(&v234, MEMORY[0x277D838B0]);
                  v160 = *v158;
                  v159 = v158[1];
                  sub_26C00908C();
                  __swift_destroy_boxed_opaque_existential_1(&v234);
                  type metadata accessor for FileInfo(0);
                  sub_26BF8E93C(&qword_28045EFE8, type metadata accessor for FileInfo);
                  v35 = v203;
                  v47 = sub_26C00998C();
                  v29 = v35;
                  if (v35)
                  {
                    sub_26BE0489C(v202, v201);
                    sub_26BF8E984(v209, type metadata accessor for FileInfoAndSender);
                    v150 = v213;
                    goto LABEL_54;
                  }

LABEL_66:
                  v39 = v47;
                  v38 = v48;
                  v43 = v48 >> 62;
                  if ((v48 >> 62) <= 1)
                  {
                    if (v43)
                    {
                      if (__OFSUB__(HIDWORD(v47), v47))
                      {
                        goto LABEL_133;
                      }

                      v164 = HIDWORD(v47) - v47;
                    }

                    else
                    {
                      v164 = BYTE6(v48);
                    }

                    goto LABEL_99;
                  }

LABEL_75:
                  if (v43 != 2)
                  {
                    v164 = 0;
                    goto LABEL_99;
                  }

                  v167 = *(v39 + 16);
                  v166 = *(v39 + 24);
                  v164 = v166 - v167;
                  if (!__OFSUB__(v166, v167))
                  {
LABEL_99:
                    v35 = v29;
                    v184 = sub_26BF30414(v164);
                    v203 = v29;
                    if (v29)
                    {
                      sub_26BE0489C(v202, v201);
                      sub_26BE00258(v39, v38);
LABEL_101:
                      sub_26BF8E984(v209, type metadata accessor for FileInfoAndSender);
                      v150 = v213;
                      goto LABEL_54;
                    }

                    v185 = v184;
                    sub_26BE11228(v39, v38);
                    sub_26BE00258(v39, v38);
                    v38 = (v185 + v164);
                    if (!__OFADD__(v185, v164))
                    {
                      sub_26BE2E1F0(v209 + *(v215 + 20), &v223, &qword_28045E698, &unk_26C0204F0);
                      if (!*(&v225 + 1))
                      {
                        goto LABEL_112;
                      }

                      v234 = v223;
                      v235 = v224;
                      v236 = v225;
                      *&v237 = v226;
                      v222 = 1;
                      *(&v224 + 1) = MEMORY[0x277D838B0];
                      *&v225 = v31;
                      *&v223 = &v222;
                      *(&v223 + 1) = &v223;
                      v186 = __swift_project_boxed_opaque_existential_1(&v223, MEMORY[0x277D838B0]);
                      v188 = *v186;
                      v187 = v186[1];
                      sub_26C00908C();
                      __swift_destroy_boxed_opaque_existential_1(&v223);
                      v35 = v203;
                      v189 = sub_26BF8A6AC(&v234);
                      v203 = v35;
                      if (v35)
                      {
                        sub_26BE0489C(v202, v201);
                        sub_26BE2DBC4(&v234);
                        goto LABEL_101;
                      }

                      v196 = v189;
                      sub_26BE2DBC4(&v234);
                      sub_26BF8E984(v209, type metadata accessor for FileInfoAndSender);
                      sub_26BE2E258(v213, &qword_28045FA38, &qword_26C01D890);
                      v195 = (v196 + 1);
                      if (!__OFADD__(v196, 1))
                      {
                        goto LABEL_114;
                      }

                      goto LABEL_136;
                    }

                    goto LABEL_132;
                  }

                  __break(1u);
LABEL_79:
                  if (__OFSUB__(HIDWORD(v39), v39))
                  {
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
                    goto LABEL_135;
                  }

                  v162 = HIDWORD(v39) - v39;
LABEL_82:
                  v35 = v29;
                  v168 = sub_26BF30414(v162);
                  v203 = v29;
                  if (v29)
                  {
                    sub_26BE0489C(v202, v201);
                    sub_26BE00258(v39, v38);
                    goto LABEL_84;
                  }

                  v169 = v168;
                  sub_26BE11228(v39, v38);
                  sub_26BE00258(v39, v38);
                  v38 = (v169 + v162);
                  if (!__OFADD__(v169, v162))
                  {
                    sub_26BE2E1F0(v212 + *(v215 + 20), &v223, &qword_28045E698, &unk_26C0204F0);
                    if (*(&v225 + 1))
                    {
                      v234 = v223;
                      v235 = v224;
                      v236 = v225;
                      *&v237 = v226;
                      v245 = 1;
                      *(&v224 + 1) = MEMORY[0x277D838B0];
                      *&v225 = v31;
                      *&v223 = &v245;
                      *(&v223 + 1) = v246;
                      v170 = __swift_project_boxed_opaque_existential_1(&v223, MEMORY[0x277D838B0]);
                      v172 = *v170;
                      v171 = v170[1];
                      sub_26C00908C();
                      __swift_destroy_boxed_opaque_existential_1(&v223);
                      v35 = v203;
                      v76 = sub_26BF8A6AC(&v234);
                      v203 = v35;
                      if (!v35)
                      {
LABEL_107:
                        v190 = v76;
                        sub_26BE2DBC4(&v234);
                        sub_26BF8E984(v212, type metadata accessor for FileInfoAndSender);
                        sub_26BE2E258(v214, &qword_28045FA38, &qword_26C01D890);
                        v183 = v190 + 1;
                        if (!__OFADD__(v190, 1))
                        {
                          goto LABEL_108;
                        }

LABEL_135:
                        __break(1u);
LABEL_136:
                        __break(1u);
                        goto LABEL_137;
                      }

                      sub_26BE0489C(v202, v201);
                      sub_26BE2DBC4(&v234);
LABEL_84:
                      sub_26BF8E984(v212, type metadata accessor for FileInfoAndSender);
                      v150 = v214;
                      goto LABEL_54;
                    }

                    while (1)
                    {
                      sub_26BE2E258(&v223, &qword_28045E698, &unk_26C0204F0);
                      LOBYTE(v223) = 0;
                      *(&v235 + 1) = MEMORY[0x277D838B0];
                      *&v236 = v31;
                      *&v234 = &v223;
                      *(&v234 + 1) = &v223 + 1;
                      v180 = __swift_project_boxed_opaque_existential_1(&v234, MEMORY[0x277D838B0]);
                      v182 = *v180;
                      v181 = v180[1];
                      sub_26C00908C();
                      __swift_destroy_boxed_opaque_existential_1(&v234);
                      sub_26BF8E984(v212, type metadata accessor for FileInfoAndSender);
                      sub_26BE2E258(v214, &qword_28045FA38, &qword_26C01D890);
                      v183 = 1;
LABEL_108:
                      v49 = __OFADD__(v38, v183);
                      v191 = v38 + v183;
                      if (v49)
                      {
                        goto LABEL_130;
                      }

                      v49 = __OFADD__(v191, 1);
                      v107 = (v191 + 1);
                      if (!v49)
                      {
                        goto LABEL_39;
                      }

                      __break(1u);
LABEL_112:
                      sub_26BE2E258(&v223, &qword_28045E698, &unk_26C0204F0);
                      LOBYTE(v223) = 0;
                      *(&v235 + 1) = MEMORY[0x277D838B0];
                      *&v236 = v31;
                      *&v234 = &v223;
                      *(&v234 + 1) = &v223 + 1;
                      v192 = __swift_project_boxed_opaque_existential_1(&v234, MEMORY[0x277D838B0]);
                      v194 = *v192;
                      v193 = v192[1];
                      sub_26C00908C();
                      __swift_destroy_boxed_opaque_existential_1(&v234);
                      sub_26BF8E984(v209, type metadata accessor for FileInfoAndSender);
                      sub_26BE2E258(v213, &qword_28045FA38, &qword_26C01D890);
                      v195 = 1;
LABEL_114:
                      v49 = __OFADD__(v38, v195);
                      v197 = v38 + v195;
                      if (v49)
                      {
                        goto LABEL_134;
                      }

                      v49 = __OFADD__(v197, 1);
                      v116 = (v197 + 1);
                      if (v49)
                      {
                        break;
                      }

LABEL_42:
                      v117 = v221 + v116;
                      if (__OFADD__(v221, v116))
                      {
                        goto LABEL_125;
                      }

                      v118 = *(v200 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch);

                      v35 = v203;
                      v120 = sub_26BF89B44(v119);
                      v38 = v35;
                      if (v35)
                      {
                        sub_26BE0489C(v202, v201);

                        goto LABEL_23;
                      }

                      v121 = v120;

                      v49 = __OFADD__(v117, v121);
                      v29 = &v117[v121];
                      if (v49)
                      {
                        goto LABEL_127;
                      }

                      v122 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
                      v123 = v200;
                      swift_beginAccess();
                      v124 = *(v123 + v122);

                      v69 = sub_26BF89B44(v125);
LABEL_90:
                      v173 = v69;

                      v49 = __OFADD__(v29, v173);
                      v174 = v29 + v173;
                      if (v49)
                      {
                        goto LABEL_131;
                      }

                      v175 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
                      v176 = v200;
                      swift_beginAccess();
                      v177 = *(v176 + v175);

                      v35 = v38;
                      v179 = sub_26BF8A2E8(v178);
                      sub_26BE0489C(v202, v201);

                      if (v38)
                      {
                        goto LABEL_23;
                      }

                      result = v174 + v179;
                      if (!__OFADD__(v174, v179))
                      {
                        goto LABEL_23;
                      }

                      __break(1u);
                    }

                    __break(1u);
LABEL_118:
                    __break(1u);
                  }

LABEL_128:
                  __break(1u);
                  goto LABEL_129;
                }

                goto LABEL_124;
              }

              sub_26BF8E9E4(v103, v212, type metadata accessor for FileInfoAndSender);
              LOBYTE(v223) = 1;
              *(&v235 + 1) = MEMORY[0x277D838B0];
              *&v236 = v31;
              *&v234 = &v223;
              *(&v234 + 1) = &v223 + 1;
              v145 = __swift_project_boxed_opaque_existential_1(&v234, MEMORY[0x277D838B0]);
              v147 = *v145;
              v146 = v145[1];
              sub_26C00908C();
              __swift_destroy_boxed_opaque_existential_1(&v234);
              type metadata accessor for FileInfo(0);
              sub_26BF8E93C(&qword_28045EFE8, type metadata accessor for FileInfo);
              v35 = v203;
              v148 = sub_26C00998C();
              v29 = v35;
              if (v35)
              {
                sub_26BE0489C(v202, v201);
                sub_26BF8E984(v212, type metadata accessor for FileInfoAndSender);
                v150 = v102;
LABEL_54:
                result = sub_26BE2E258(v150, &qword_28045FA38, &qword_26C01D890);
                goto LABEL_23;
              }

              v39 = v148;
              v38 = v149;
              v161 = v149 >> 62;
              if ((v149 >> 62) <= 1)
              {
                if (!v161)
                {
                  v162 = BYTE6(v149);
                  goto LABEL_82;
                }

                goto LABEL_79;
              }

              if (v161 != 2)
              {
                v162 = 0;
                goto LABEL_82;
              }

              v165 = *(v148 + 16);
              v43 = *(v148 + 24);
              v162 = v43 - v165;
              if (!__OFSUB__(v43, v165))
              {
                goto LABEL_82;
              }

              __break(1u);
              goto LABEL_73;
            }

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
            goto LABEL_128;
          }

          __break(1u);
          goto LABEL_62;
        }

LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

LABEL_137:

  v198 = v38[22];

  __break(1u);
  return result;
}

unint64_t MLS.Group.GroupStorageVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BF89780()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BF897F4()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BF89870@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C0098EC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for FileInfo(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26BF2F7B0();
  if (!v1)
  {
    v22 = result;
    v23 = v10;
    *&v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v11 = result;
    v12 = v10;
    sub_26BE00608(result, v10);
    sub_26C0098DC();
    sub_26BF8E93C(&qword_28045EFE8, type metadata accessor for FileInfo);
    sub_26C00999C();
    sub_26BE00258(v11, v12);
    v13 = sub_26BEE62D4();
    if ((v13 & 0x100) != 0)
    {
      v14 = 1;
    }

    else
    {
      if (v13 == 1)
      {
        sub_26BF8A748(&v18);
        goto LABEL_8;
      }

      if (!v13)
      {
        v21 = 0;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
LABEL_8:
        sub_26BF8E9E4(v8, a1, type metadata accessor for FileInfo);
        result = type metadata accessor for FileInfoAndSender();
        v15 = a1 + *(result + 20);
        v16 = v19;
        *v15 = v18;
        *(v15 + 16) = v16;
        *(v15 + 32) = v20;
        *(v15 + 48) = v21;
        return result;
      }

      v14 = 5;
    }

    sub_26BE01600();
    swift_allocError();
    *v17 = v14;
    swift_willThrow();
    return sub_26BF8E984(v8, type metadata accessor for FileInfo);
  }

  return result;
}

uint64_t sub_26BF89AF8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_26BF89B44(a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF89B44(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = sub_26C00A4EC();
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78[0] = bswap64(*(a1 + 16));
  v81 = MEMORY[0x277D838B0];
  v82 = MEMORY[0x277CC9C18];
  v79 = v78;
  v80 = &v78[1];
  v7 = __swift_project_boxed_opaque_existential_1(&v79, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v79);
  v10 = *(a1 + 16);
  v77 = v1;
  v69 = v4;
  v63 = a1;
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = sub_26BE32884(v10, 0);
  v12 = sub_26BE33330(&v79, v11 + 4, v10, a1);

  sub_26BE2DA4C();
  if (v12 != v10)
  {
    __break(1u);
LABEL_4:
    v11 = MEMORY[0x277D84F90];
  }

  v79 = v11;
  sub_26BF8A7FC(&v79);
  if (v2)
  {

    __break(1u);
    return result;
  }

  v13 = v79;
  v66 = *(v79 + 2);
  if (!v66)
  {

    v16 = 8;
    goto LABEL_49;
  }

  v60[1] = 0;
  v14 = 0;
  v67 = (v76 + 8);
  v62 = v78 + 1;
  v61 = v78 + 2;
  v70 = v78 + 4;
  v64 = &v78[1];
  v15 = (v79 + 40);
  v16 = 8;
  v17 = v63;
  v65 = v79;
  while (1)
  {
    if (v14 >= *(v13 + 2))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    if (!*(v17 + 16))
    {
      goto LABEL_51;
    }

    v18 = *(v15 - 1);
    v19 = *v15;

    v20 = sub_26BEBB618(v18, v19);
    if ((v21 & 1) == 0)
    {
      goto LABEL_52;
    }

    v75 = v16;
    v22 = *(v17 + 56) + 16 * v20;
    v74 = *v22;
    v73 = *(v22 + 8);
    v23 = v68;
    sub_26C00A4CC();
    v76 = v19;
    v16 = sub_26C00A49C();
    v25 = v24;
    (*v67)(v23, v69);
    if (v25 >> 60 == 15)
    {
      sub_26BE01600();
      swift_allocError();
      *v56 = 9;
      swift_willThrow();

      goto LABEL_49;
    }

    v26 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      if (v26 != 2)
      {
        v27 = 0;
LABEL_26:
        LOBYTE(v78[0]) = v27;
        v81 = MEMORY[0x277D838B0];
        v82 = MEMORY[0x277CC9C18];
        v79 = v78;
        v80 = v62;
        v35 = __swift_project_boxed_opaque_existential_1(&v79, MEMORY[0x277D838B0]);
        v37 = *v35;
        v36 = v35[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v79);
        v34 = 13;
        goto LABEL_28;
      }

      v29 = *(v16 + 16);
      v28 = *(v16 + 24);
      v27 = v28 - v29;
      if (__OFSUB__(v28, v29))
      {
        goto LABEL_54;
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_21;
    }

    if (!v26)
    {
      v27 = BYTE6(v25);
      goto LABEL_21;
    }

    v30 = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      goto LABEL_55;
    }

    v27 = v30;
    if ((v30 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_21:
    if (v27 < 0x40)
    {
      goto LABEL_26;
    }

    if (v27 >> 14)
    {
      if (v27 >> 30)
      {
        break;
      }

      LODWORD(v78[0]) = bswap32(v27 | 0x80000000);
      v81 = MEMORY[0x277D838B0];
      v82 = MEMORY[0x277CC9C18];
      v79 = v78;
      v80 = v70;
      v31 = __swift_project_boxed_opaque_existential_1(&v79, MEMORY[0x277D838B0]);
      v33 = *v31;
      v32 = v31[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v79);
      v34 = 16;
    }

    else
    {
      LOWORD(v78[0]) = bswap32(v27 | 0x4000) >> 16;
      v81 = MEMORY[0x277D838B0];
      v82 = MEMORY[0x277CC9C18];
      v79 = v78;
      v80 = v61;
      v38 = __swift_project_boxed_opaque_existential_1(&v79, MEMORY[0x277D838B0]);
      v40 = *v38;
      v39 = v38[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v79);
      v34 = 14;
    }

LABEL_28:
    v81 = MEMORY[0x277CC9318];
    v82 = MEMORY[0x277CC9300];
    v79 = v16;
    v80 = v25;
    v41 = __swift_project_boxed_opaque_existential_1(&v79, MEMORY[0x277CC9318]);
    v42 = *v41;
    v43 = v41[1];
    v44 = v43 >> 62;
    v71 = v34;
    v72 = v27;
    if ((v43 >> 62) > 1)
    {
      if (v44 != 2)
      {
        memset(v78, 0, 14);
        goto LABEL_42;
      }

      v45 = *(v42 + 16);
      v46 = *(v42 + 24);
      sub_26BE2E408(v16, v25);
      if (sub_26C008E9C() && __OFSUB__(v45, sub_26C008ECC()))
      {
        goto LABEL_58;
      }

      if (__OFSUB__(v46, v45))
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (!v44)
      {
        v78[0] = v42;
        LOWORD(v78[1]) = v43;
        BYTE2(v78[1]) = BYTE2(v43);
        BYTE3(v78[1]) = BYTE3(v43);
        BYTE4(v78[1]) = BYTE4(v43);
        BYTE5(v78[1]) = BYTE5(v43);
LABEL_42:
        sub_26C00908C();
        goto LABEL_43;
      }

      v47 = v42;
      if (v42 >> 32 < v42)
      {
        goto LABEL_56;
      }

      sub_26BE2E408(v16, v25);
      if (sub_26C008E9C() && __OFSUB__(v47, sub_26C008ECC()))
      {
        goto LABEL_59;
      }
    }

    sub_26C008EBC();
    sub_26C00908C();
    sub_26BE136AC(v16, v25);
    v17 = v63;
LABEL_43:
    __swift_destroy_boxed_opaque_existential_1(&v79);
    v78[0] = bswap64(v73);
    v48 = MEMORY[0x277D838B0];
    v81 = MEMORY[0x277D838B0];
    v49 = MEMORY[0x277CC9C18];
    v82 = MEMORY[0x277CC9C18];
    v79 = v78;
    v80 = v64;
    v50 = __swift_project_boxed_opaque_existential_1(&v79, MEMORY[0x277D838B0]);
    v52 = *v50;
    v51 = v50[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v79);
    LODWORD(v78[0]) = bswap32(v74);
    v81 = v48;
    v82 = v49;
    v79 = v78;
    v80 = v70;
    v53 = __swift_project_boxed_opaque_existential_1(&v79, v48);
    v55 = *v53;
    v54 = v53[1];
    sub_26C00908C();

    __swift_destroy_boxed_opaque_existential_1(&v79);
    v16 = v75 + v71 + v72;
    v13 = v65;
    if (__OFADD__(v75, v71 + v72))
    {
      goto LABEL_53;
    }

    ++v14;
    v15 += 2;
    if (v66 == v14)
    {

      goto LABEL_49;
    }
  }

  sub_26BE01600();
  swift_allocError();
  *v57 = 3;
  swift_willThrow();

  sub_26BE136AC(v16, v25);
LABEL_49:
  v58 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_26BF8A2E8(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v47 = sub_26C00921C();
  v45 = *(v47 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = bswap64(*(a1 + 16));
  v51 = MEMORY[0x277D838B0];
  v52 = MEMORY[0x277CC9C18];
  v49 = &v48;
  v50 = &v49;
  v6 = __swift_project_boxed_opaque_existential_1(&v49, MEMORY[0x277D838B0]);
  v8 = *v6;
  v7 = v6[1];
  v43 = v1;
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v49);
  v9 = *(a1 + 16);
  v44 = a1;
  if (v9)
  {
    v10 = sub_26BE32898(v9, 0);
    v11 = sub_26BE33488(&v49, (v10 + 32), v9, a1);

    sub_26BE2DA4C();
    if (v11 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_5:
  v49 = v10;
  sub_26BF8A868(&v49);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v12 = *(v49 + 2);
    if (v12)
    {
      v40 = &v49;
      v41 = v45 + 16;
      v39 = (&v48 + 4);
      v38[2] = 0;
      v38[3] = v45 + 8;
      v38[0] = 20 * v12 + 8;
      v38[1] = v49;
      v13 = (v49 + 40);
      v14 = 0x666666666666665;
      do
      {
        v15 = v44;
        if (!*(v44 + 16))
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
        }

        v16 = *(v13 - 2);
        v17 = *v13;
        v18 = sub_26BEBB598(v16, *v13);
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }

        v46 = v12;
        v20 = v45;
        v21 = v42;
        (*(v45 + 16))(v42, *(v15 + 56) + *(v45 + 72) * v18, v47);
        v48 = bswap64(v17);
        v22 = MEMORY[0x277D838B0];
        v51 = MEMORY[0x277D838B0];
        v52 = MEMORY[0x277CC9C18];
        v23 = v40;
        v49 = &v48;
        v50 = v40;
        v24 = __swift_project_boxed_opaque_existential_1(&v49, MEMORY[0x277D838B0]);
        v26 = *v24;
        v25 = v24[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v49);
        LODWORD(v48) = bswap32(v16);
        v51 = v22;
        v27 = MEMORY[0x277CC9C18];
        v52 = MEMORY[0x277CC9C18];
        v49 = &v48;
        v50 = v39;
        v28 = __swift_project_boxed_opaque_existential_1(&v49, v22);
        v30 = *v28;
        v29 = v28[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v49);
        sub_26C0091EC();
        v51 = v22;
        v52 = v27;
        v48 = bswap64(v31);
        v49 = &v48;
        v50 = v23;
        v32 = __swift_project_boxed_opaque_existential_1(&v49, v22);
        v34 = *v32;
        v33 = v32[1];
        sub_26C00908C();
        (*(v20 + 8))(v21, v47);
        __swift_destroy_boxed_opaque_existential_1(&v49);
        if (!v14)
        {
          goto LABEL_17;
        }

        v13 += 2;
        --v14;
        v12 = v46 - 1;
      }

      while (v46 != 1);
      v35 = v38[0];
    }

    else
    {
      v35 = 8;
    }

    v36 = *MEMORY[0x277D85DE8];
    return v35;
  }

  return result;
}

char *sub_26BF8A6AC(__int128 *a1)
{
  v8 = *a1;
  result = MLS.Identity.Credential.serializedRepresentation.getter();
  if (!v1)
  {
    MLS.Credential.init(rawValue:)(result, v4, &v9);
    v8 = v9;
    v5 = sub_26BE03BF4(&v8);
    sub_26BE0489C(v8, *(&v8 + 1));
    v6 = sub_26BE108EC(a1 + 2);
    v7 = __OFADD__(v5, v6);
    result = (v5 + v6);
    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26BF8A748@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BE03DC0(v9);
  if (!v1)
  {
    v4 = v9[0];
    sub_26BE10AD8(v9);
    v7 = v4;
    sub_26BE04890(v4, *(&v4 + 1));
    sub_26C006590(&v7, v8);
    sub_26BE0489C(v4, *(&v4 + 1));
    v5 = v8[0];
    v6 = v8[1];
    result = sub_26BE03890(v9, (a1 + 2));
    *a1 = v5;
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_26BF8A7FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD97EC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26BF8A8D4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26BF8A868(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD9800(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26BF8A9CC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26BF8A8D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26C00AEEC();
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
        v5 = sub_26C00A74C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26BF8AC28(v7, v8, a1, v4);
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
    return sub_26BF8AAC4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BF8A9CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26C00AEEC();
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
        v5 = sub_26C00A74C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26BF8B204(v7, v8, a1, v4);
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
    return sub_26BF8AB94(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BF8AAC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_26C00AF2C(), (result & 1) == 0))
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

uint64_t sub_26BF8AB94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 16 * a3);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = v8 < *v11;
      if (v8 == *v11)
      {
        v12 = v9 < *(v11 + 8);
      }

      if (!v12)
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v11 + 16) = *v11;
      *v11 = v8;
      *(v11 + 8) = v9;
      v11 -= 16;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BF8AC28(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_26BFD9590(v8);
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
        sub_26BF8B7D0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_26C00AF2C();
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
            result = sub_26C00AF2C();
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
      result = sub_26BEEC164(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_26BEEC164((v39 > 1), v40 + 1, 1, v8);
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
        sub_26BF8B7D0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26BFD9590(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26BFD9504(v44);
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
    if (v37 || (result = sub_26C00AF2C(), (result & 1) == 0))
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

uint64_t sub_26BF8B204(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_26BFD9590(v10);
      v10 = result;
    }

    v90 = *(v10 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = *&v10[16 * v90];
        v92 = *&v10[16 * v90 + 24];
        sub_26BF8B9F8((*a3 + 16 * v91), (*a3 + 16 * *&v10[16 * v90 + 16]), (*a3 + 16 * v92), v5);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BFD9590(v10);
        }

        if (v90 - 2 >= *(v10 + 2))
        {
          goto LABEL_121;
        }

        v93 = &v10[16 * v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        result = sub_26BFD9504(v90 - 1);
        v90 = *(v10 + 2);
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 16 * v9;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = 16 * v11;
      v16 = *a3 + 16 * v11;
      v17 = v13 < *v16;
      if (v13 == *v16)
      {
        v17 = v14 < *(v16 + 8);
      }

      v18 = v11 + 2;
      v19 = (v16 + 40);
      while (v7 != v18)
      {
        v20 = *(v19 - 2);
        v22 = *v19;
        v19 += 2;
        v21 = v22;
        v23 = v22 >= v14;
        v24 = v20 == v13;
        v25 = v20 >= v13;
        if (v24)
        {
          v26 = v23;
        }

        else
        {
          v26 = v25;
        }

        ++v18;
        v14 = v21;
        v13 = v20;
        if (v17 == v26)
        {
          v9 = v18 - 1;
          if (!v17)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }
      }

      v9 = v7;
      if (!v17)
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v9 < v11)
      {
        goto LABEL_124;
      }

      if (v11 < v9)
      {
        v27 = 0;
        v28 = 16 * v9;
        v29 = v11;
        do
        {
          if (v29 != v9 + v27 - 1)
          {
            v34 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v30 = (v34 + v15);
            v31 = v34 + v28;
            v32 = *v30;
            v33 = *(v30 + 1);
            *v30 = *(v31 - 16);
            *(v31 - 16) = v32;
            *(v31 - 8) = v33;
          }

          ++v29;
          --v27;
          v28 -= 16;
          v15 += 16;
        }

        while (v29 < v9 + v27);
        v7 = a3[1];
      }
    }

LABEL_25:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_123;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_125;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_44:
    if (v9 < v11)
    {
      goto LABEL_122;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEC164(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v45 = *(v10 + 3);
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_26BEEC164((v45 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v46;
    v47 = &v10[16 * v5];
    *(v47 + 4) = v11;
    *(v47 + 5) = v9;
    v48 = *v95;
    if (!*v95)
    {
      goto LABEL_132;
    }

    if (v5)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v10 + 4);
          v51 = *(v10 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_64:
          if (v53)
          {
            goto LABEL_111;
          }

          v66 = &v10[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_114;
          }

          v72 = &v10[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_118;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v76 = &v10[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_78:
        if (v71)
        {
          goto LABEL_113;
        }

        v79 = &v10[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_116;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_85:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v88 = *&v10[16 * v87 + 32];
        v5 = *&v10[16 * v49 + 40];
        sub_26BF8B9F8((*a3 + 16 * v88), (*a3 + 16 * *&v10[16 * v49 + 32]), (*a3 + 16 * v5), v48);
        if (v4)
        {
        }

        if (v5 < v88)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BFD9590(v10);
        }

        if (v87 >= *(v10 + 2))
        {
          goto LABEL_108;
        }

        v89 = &v10[16 * v87];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        result = sub_26BFD9504(v49);
        v46 = *(v10 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v10[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_109;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_110;
      }

      v61 = &v10[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_112;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_115;
      }

      if (v65 >= v57)
      {
        v83 = &v10[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_119;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_95;
    }
  }

  v35 = *a3;
  v36 = *a3 + 16 * v9 - 16;
  v37 = v11 - v9;
LABEL_35:
  v38 = (v35 + 16 * v9);
  v39 = *v38;
  v40 = *(v38 + 1);
  v41 = v37;
  v42 = v36;
  while (1)
  {
    v43 = v39 < *v42;
    if (v39 == *v42)
    {
      v43 = v40 < *(v42 + 8);
    }

    if (!v43)
    {
LABEL_34:
      ++v9;
      v36 += 16;
      --v37;
      if (v9 != v7)
      {
        goto LABEL_35;
      }

      v9 = v7;
      goto LABEL_44;
    }

    if (!v35)
    {
      break;
    }

    *(v42 + 16) = *v42;
    *v42 = v39;
    *(v42 + 8) = v40;
    v42 -= 16;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_34;
    }
  }

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
  return result;
}

uint64_t sub_26BF8B7D0(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_26C00AF2C() & 1) != 0)
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
      if (!v21 && (sub_26C00AF2C() & 1) != 0)
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

uint64_t sub_26BF8B9F8(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 < *v4;
      if (*v6 == *v4)
      {
        v17 = *(v6 + 1) < *(v4 + 1);
      }

      if (v17)
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
LABEL_26:
    v18 = v6 - 16;
    v5 -= 16;
    v19 = v14;
    do
    {
      v20 = *(v19 - 16);
      v19 -= 16;
      v21 = v5 + 16;
      v22 = *(v6 - 4);
      v23 = v20 < v22;
      if (v20 == v22)
      {
        v23 = *(v19 + 8) < *(v6 - 1);
      }

      if (v23)
      {
        if (v21 != v6)
        {
          *v5 = *v18;
        }

        if (v14 <= v4 || (v6 -= 16, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v21 != v14)
      {
        *v5 = *v19;
      }

      v5 -= 16;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_39:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v24 >> 4));
  }

  return 1;
}

uint64_t sub_26BF8BC34(uint64_t a1, uint64_t a2)
{
  result = sub_26C008E9C();
  if (!result || (result = sub_26C008ECC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C008EBC();
      return sub_26C00908C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BF8BCC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v342 = a1;
  v343 = a2;
  v363 = *MEMORY[0x277D85DE8];
  v5 = sub_26C00921C();
  v337 = *(v5 - 8);
  v338 = v5;
  v6 = *(v337 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v336 = v310 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v335 = v310 - v9;
  v10 = sub_26C00A4EC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v334 = (v310 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for MLS.GroupState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v310 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v333 = (v310 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v332 = v310 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v310 - v24;
  v26 = sub_26C00928C();
  v27 = *(v26 - 8);
  v339 = v26;
  v340 = v27;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v310 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v310 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v310 - v35;
  v37 = 0;
  v38 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v38 != 2)
    {
      goto LABEL_7;
    }

    v39 = v343;
    v37 = *(v343 + 16);
  }

  else
  {
    if (!v38)
    {
      goto LABEL_7;
    }

    v39 = v343;
    v37 = v343;
  }

  sub_26BE00608(v39, a3);
LABEL_7:
  v341 = v36;
  v40 = v343;
  v360 = v343;
  v361 = a3;
  v362 = v37;
  v41 = a3;
  v42 = sub_26BF2F7B0();
  v44 = v3;
  if (v3)
  {
    sub_26BE00258(v360, v361);
    sub_26BE00258(v40, v41);
LABEL_9:

    goto LABEL_16;
  }

  v329 = v41;
  v330 = v42;
  v331 = v43;
  v45 = sub_26BEEE594();
  if ((v46 & 1) != 0 || (v47 = v45, v48 = sub_26BEE6028(), (v48 & 0x100000000) != 0) || (v49 = v48, v50 = sub_26BEE6180(), (v50 & 0x10000) != 0))
  {
    sub_26BE01600();
    swift_allocError();
    *v53 = 1;
    swift_willThrow();

    sub_26BE00258(v330, v331);
    sub_26BE00258(v343, v329);
    goto LABEL_15;
  }

  LODWORD(v328) = v50;
  v51 = sub_26BF2F7B0();
  v326 = v49;
  v327 = v47;
  v355 = MEMORY[0x277CC9318];
  v356 = MEMORY[0x277CC9300];
  aBlock = v51;
  *&v354 = v52;
  v56 = __swift_project_boxed_opaque_existential_1(&aBlock, MEMORY[0x277CC9318]);
  v58 = *v56;
  v59 = *(v56 + 8);
  v60 = v59 >> 62;
  if ((v59 >> 62) > 1)
  {
    v61 = v341;
    if (v60 != 2)
    {
      *&v350[6] = 0;
      *v350 = 0;
      v62 = v350;
      goto LABEL_29;
    }

    v61 = *(v58 + 16);
    v325 = *(v58 + 24);
    v56 = sub_26C008E9C();
    if (v56)
    {
      v324 = v56;
      v56 = sub_26C008ECC();
      if (__OFSUB__(v61, v56))
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v324 = &v61[v324 - v56];
    }

    else
    {
      v324 = 0;
    }

    v66 = __OFSUB__(v325, v61);
    v61 = (v325 - v61);
    if (!v66)
    {
      v67 = sub_26C008EBC();
LABEL_35:
      if (v67 >= v61)
      {
        v68 = v61;
      }

      else
      {
        v68 = v67;
      }

      v69 = &v324[v68];
      if (v324)
      {
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      sub_26BE77028(v324, v70, v359);
      v61 = v341;
      goto LABEL_42;
    }

LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v61 = v341;
  if (v60)
  {
    v63 = v58;
    v64 = v58 >> 32;
    v325 = (v64 - v63);
    if (v64 >= v63)
    {
      v61 = v63;
      v65 = sub_26C008E9C();
      if (!v65)
      {
        v324 = 0;
        goto LABEL_34;
      }

      v324 = v65;
      v56 = sub_26C008ECC();
      if (!__OFSUB__(v61, v56))
      {
        v324 = &v61[v324 - v56];
LABEL_34:
        v67 = sub_26C008EBC();
        v61 = v325;
        goto LABEL_35;
      }

LABEL_108:
      __break(1u);
LABEL_109:
      v83 = v56;
      p_aBlock = v57;
      sub_26BE00608(v56, v57);
      MLS.Credential.init(rawValue:)(v83, p_aBlock, v350);
      if (v44)
      {
        sub_26BE0489C(v324, v325);

        sub_26BE00258(v330, v331);
        v110 = v83;
        v111 = p_aBlock;
        goto LABEL_100;
      }

      v358[0] = *v350;
      v358[1] = *&v350[8];
      v322 = *&v350[8];
      v323 = *v350;
      sub_26BE04890(*v350, *&v350[8]);
      sub_26C006590(v358, v350);
      v312 = 0;
LABEL_117:
      sub_26BE0489C(v323, v322);
      sub_26BE00258(v83, p_aBlock);
      v321 = *v350;
      v322 = *&v350[8];
      v117 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
      v118 = v342;
      swift_beginAccess();
      v119 = v340;
      v120 = *(v340 + 16);
      v121 = v118 + v117;
      v122 = v339;
      v320 = v340 + 16;
      *&v319 = v120;
      v120(v34, v121, v339);
      v123 = sub_26C00923C();
      v125 = *(v119 + 8);
      v124 = v119 + 8;
      v340 = v124;
      v323 = v125;
      (v125)(v34, v122);
      if ((v123 & 1) == 0)
      {

        if (qword_28045DF80 != -1)
        {
          swift_once();
        }

        v144 = sub_26C009A5C();
        __swift_project_value_buffer(v144, qword_280478EE8);
        (v319)(v31, v341, v339);
        v145 = v330;
        v146 = v331;
        sub_26BE00608(v330, v331);
        v147 = sub_26C009A3C();
        v148 = sub_26C00AA0C();
        sub_26BE00258(v145, v146);
        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          v338 = swift_slowAlloc();
          aBlock = v338;
          *v149 = 136315394;
          *v350 = sub_26BF87240(v330, v331);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
          sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
          v150 = sub_26C00A3EC();
          v152 = v151;

          v153 = sub_26BE29740(v150, v152, &aBlock);

          *(v149 + 4) = v153;
          *(v149 + 12) = 2080;
          sub_26BF8E93C(&qword_28045E450, MEMORY[0x277CC95F0]);
          v34 = v339;
          v154 = sub_26C00AEFC();
          v156 = v155;
          (v323)(v31, v34);
          v157 = sub_26BE29740(v154, v156, &aBlock);

          *(v149 + 14) = v157;
          _os_log_impl(&dword_26BDFE000, v147, v148, "Loaded group (%s) for incorrect client (%s)", v149, 0x16u);
          v158 = v338;
          swift_arrayDestroy();
          MEMORY[0x26D69A4E0](v158, -1, -1);
          MEMORY[0x26D69A4E0](v149, -1, -1);
        }

        else
        {

          (v323)(v31, v339);
        }

        v159 = sub_26C00A45C();
        v160 = swift_allocObject();
        *(v160 + 16) = 2564;
        v356 = sub_26BF8E918;
        v357 = v160;
        aBlock = MEMORY[0x277D85DD0];
        *&v354 = 1107296256;
        *(&v354 + 1) = sub_26BEB8234;
        v355 = &block_descriptor_5;
        v161 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v161);

        sub_26BE01600();
        swift_allocError();
        *v162 = 10;
        swift_willThrow();
        sub_26BE0489C(v324, v325);

        goto LABEL_127;
      }

      if ((v311 - 3) < 0xFFFFFFFE)
      {
        __break(1u);
LABEL_195:
        sub_26BE01600();
        swift_allocError();
        *v223 = 9;
        swift_willThrow();
        sub_26BE00258(v124, v123);
LABEL_307:

        goto LABEL_192;
      }

      v350[0] = v311 != 1;
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v350, &aBlock);
      LODWORD(v320) = aBlock;
      v319 = v354;
      v317 = v356;
      v318 = v355;
      v126 = type metadata accessor for MLS.Group.PureSwiftGroup();
      v127 = *(v126 + 48);
      v128 = *(v126 + 52);
      v129 = swift_allocObject();
      *(v129 + 160) = MEMORY[0x277D84FA0];
      v130 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
      v132 = *(v131 - 8);
      v315 = *(v132 + 56);
      v316 = v131;
      v314 = v132 + 56;
      v315(v129 + v130, 1, 1);
      v133 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
      v134 = type metadata accessor for FileInfoAndSender();
      v135 = *(v134 - 8);
      v136 = *(v135 + 56);
      v137 = v135 + 56;
      v136(v129 + v133, 1, 1, v134);
      v313 = v134;
      v310[1] = v137;
      v311 = v136;
      v136(v129 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject, 1, 1, v134);
      v138 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch;
      v139 = v321;
      v140 = v322;
      sub_26BE04890(v321, v322);

      sub_26BE00608(v330, v331);
      v34 = MEMORY[0x277D84F90];
      *(v129 + v138) = sub_26C0047C0(MEMORY[0x277D84F90]);
      v141 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
      *(v129 + v141) = sub_26C0047C0(v34);
      v142 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
      *(v129 + v142) = sub_26C0048D4(v34);
      v350[0] = v320;
      *&v350[8] = v319;
      v351 = v318;
      v352 = v317;
      v347 = v139;
      v348 = v140;
      v143 = v312;
      v320 = sub_26BE3EFC0(v342, v330, v331, v350, &v347);
      v73 = v143;
      if (v143)
      {
        sub_26BE0489C(v324, v325);

LABEL_127:
        sub_26BE0489C(v321, v322);
        sub_26BE00258(v330, v331);
        sub_26BE00258(v343, v329);
        __swift_destroy_boxed_opaque_existential_1(v359);
        (v323)(v341, v339);
        goto LABEL_15;
      }

      v34 = v320;
      v163 = *(v320 + 32);
      v164 = *(v320 + 40);
      v165 = v330;
      v166 = v331;
      *(v320 + 32) = v330;
      *(v34 + 5) = v166;

      sub_26BE00608(v165, v166);

      sub_26BE00258(v163, v164);
      v167 = v326;
      *(v34 + 3) = v327;
      *(v34 + 38) = v167;
      sub_26BE038A8(v359, &aBlock);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1(v34 + 14);
      sub_26BE03890(&aBlock, (v34 + 112));
      swift_endAccess();

      v168 = sub_26BEC7E78(v61);

      swift_beginAccess();
      v169 = *(v34 + 20);
      *(v34 + 20) = v168;

      if (!v328)
      {
LABEL_152:
        sub_26BE0489C(v324, v325);

        sub_26BE0489C(v321, v322);
        sub_26BE00258(v330, v331);
        sub_26BE00258(v343, v329);
        __swift_destroy_boxed_opaque_existential_1(v359);
        (v323)(v341, v339);
        sub_26BE00258(v360, v361);
        v34 = v320;
        goto LABEL_16;
      }

      v170 = sub_26BEE62D4();
      if ((v170 & 0x100) != 0)
      {
        goto LABEL_189;
      }

      if (v170)
      {
        if (v170 != 1)
        {
          goto LABEL_146;
        }

        sub_26BEDDD14(v16);
        sub_26BE799B4(v328, v349);
        v73 = 0;
        v182 = &v25[*(v316 + 48)];
        sub_26BF8E9E4(v16, v25, type metadata accessor for MLS.GroupState);
        v183 = 0;
        v184 = v349[9];
        *(v182 + 8) = v349[8];
        *(v182 + 9) = v184;
        *(v182 + 10) = v349[10];
        v185 = v349[5];
        *(v182 + 4) = v349[4];
        *(v182 + 5) = v185;
        v186 = v349[7];
        *(v182 + 6) = v349[6];
        *(v182 + 7) = v186;
        v187 = v349[1];
        *v182 = v349[0];
        *(v182 + 1) = v187;
        v188 = v349[3];
        *(v182 + 2) = v349[2];
        *(v182 + 3) = v188;
LABEL_135:
        (v315)(v25, v183, 1, v316);
        v171 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
        v172 = v320;
        swift_beginAccess();
        sub_26BE7170C(v25, v172 + v171, &qword_28045E8D8, &qword_26C012580);
        swift_endAccess();
        v173 = sub_26BEE62D4();
        if ((v173 & 0x100) != 0)
        {
          goto LABEL_199;
        }

        if (v173)
        {
          if (v173 != 1)
          {
            goto LABEL_146;
          }

          sub_26BF89870(v332);
          if (v73)
          {
            goto LABEL_192;
          }

          v174 = 0;
        }

        else
        {
          v174 = 1;
        }

        v175 = v332;
        v311(v332, v174, 1, v313);
        v176 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
        v177 = v320;
        swift_beginAccess();
        sub_26BE7170C(v175, v177 + v176, &qword_28045FA38, &qword_26C01D890);
        swift_endAccess();
        v178 = sub_26BEE62D4();
        if ((v178 & 0x100) != 0)
        {
          goto LABEL_199;
        }

        if (!v178)
        {
          v179 = 1;
LABEL_148:
          v189 = v333;
          v311(v333, v179, 1, v313);
          v190 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject;
          v191 = v320;
          swift_beginAccess();
          sub_26BE7170C(v189, v191 + v190, &qword_28045FA38, &qword_26C01D890);
          swift_endAccess();
          v327 = sub_26BEEE594();
          if (v192)
          {
            goto LABEL_199;
          }

          v34 = sub_26C0047C0(MEMORY[0x277D84F90]);
          if (!v327)
          {
LABEL_151:
            v193 = *(v320 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch);
            *(v320 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch) = v34;

            if (v328 == 1)
            {
              goto LABEL_152;
            }

            v332 = sub_26BEEE594();
            if (v221)
            {
LABEL_189:
              sub_26BE01600();
              swift_allocError();
              v181 = 1;
              goto LABEL_190;
            }

            v333 = sub_26C0047C0(MEMORY[0x277D84F90]);
            if (!v332)
            {
LABEL_198:
              v224 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
              v225 = v320;
              swift_beginAccess();
              v226 = *(v225 + v224);
              *(v225 + v224) = v333;

              v332 = sub_26BEEE594();
              if (v227)
              {
LABEL_199:
                sub_26BE01600();
                swift_allocError();
                *v228 = 1;
                goto LABEL_191;
              }

              v334 = sub_26C0048D4(MEMORY[0x277D84F90]);
              if (!v332)
              {
LABEL_301:
                sub_26BE0489C(v324, v325);

                sub_26BE0489C(v321, v322);
                sub_26BE00258(v330, v331);
                sub_26BE00258(v343, v329);
                __swift_destroy_boxed_opaque_existential_1(v359);
                (v323)(v341, v339);
                sub_26BE00258(v360, v361);
                v305 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
                v34 = v320;
                swift_beginAccess();
                v306 = *&v34[v305];
                *&v34[v305] = v334;

                goto LABEL_16;
              }

              v326 = (v337 + 8);
              v327 = (v337 + 16);
              v318 = v337 + 40;
              *&v319 = v337 + 32;
              while (1)
              {
                v346 = 0;
                v274 = (v362 + 8);
                if (__OFADD__(v362, 8))
                {
                  goto LABEL_324;
                }

                v275 = v361 >> 62;
                if ((v361 >> 62) <= 1)
                {
                  break;
                }

                if (v275 == 2)
                {
                  v276 = *(v360 + 24);
                  goto LABEL_265;
                }

                if (v274 > 0)
                {
                  goto LABEL_302;
                }

LABEL_268:
                v347 = v360;
                v348 = v361;
                if (v274 < v362)
                {
                  goto LABEL_325;
                }

                v344 = v362;
                v345 = v362 + 8;
                sub_26BE00608(v360, v361);
                v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
                v34 = sub_26BE016A8();
                sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
                v333 = v277;
                sub_26C008E1C();
                sub_26BE00258(v347, v348);
                v328 = v346;
                v362 = v274;
                LODWORD(v346) = 0;
                v278 = v274 + 4;
                if (__OFADD__(v274, 4))
                {
                  goto LABEL_326;
                }

                v279 = v361 >> 62;
                if ((v361 >> 62) <= 1)
                {
                  if (v279)
                  {
                    v280 = v360 >> 32;
                  }

                  else
                  {
                    v280 = BYTE6(v361);
                  }

LABEL_276:
                  if (v280 < v278)
                  {
                    goto LABEL_302;
                  }

                  goto LABEL_279;
                }

                if (v279 == 2)
                {
                  v280 = *(v360 + 24);
                  goto LABEL_276;
                }

                if (v278 > 0)
                {
                  goto LABEL_302;
                }

LABEL_279:
                v347 = v360;
                v348 = v361;
                if (v278 < v274)
                {
                  goto LABEL_327;
                }

                v344 = v274;
                v345 = (v274 + 4);
                sub_26BE00608(v360, v361);
                sub_26C008E1C();
                sub_26BE00258(v347, v348);
                v281 = v346;
                v362 = (v274 + 4);
                v346 = 0;
                v282 = v274 + 12;
                if (__OFADD__(v278, 8))
                {
                  goto LABEL_328;
                }

                v283 = v361 >> 62;
                if ((v361 >> 62) <= 1)
                {
                  if (v283)
                  {
                    v284 = v360 >> 32;
                  }

                  else
                  {
                    v284 = BYTE6(v361);
                  }

LABEL_287:
                  if (v284 < v282)
                  {
                    goto LABEL_302;
                  }

                  goto LABEL_290;
                }

                if (v283 == 2)
                {
                  v284 = *(v360 + 24);
                  goto LABEL_287;
                }

                if (v282 > 0)
                {
LABEL_302:
                  sub_26BE01600();
                  swift_allocError();
                  *v307 = 1;
                  swift_willThrow();

                  goto LABEL_192;
                }

LABEL_290:
                v347 = v360;
                v348 = v361;
                if (v282 < v278)
                {
                  goto LABEL_329;
                }

                v285 = bswap64(v328);
                v286 = bswap32(v281);
                v344 = v278;
                v345 = (v278 + 8);
                sub_26BE00608(v360, v361);
                sub_26C008E1C();
                sub_26BE00258(v347, v348);
                v362 = v282;
                v287 = v335;
                sub_26C0091DC();
                (*v327)(v336, v287, v338);
                v288 = v334;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v347 = v288;
                v34 = v285;
                v291 = sub_26BEBB598(v286, v285);
                v292 = *(v288 + 16);
                v293 = (v290 & 1) == 0;
                v294 = v292 + v293;
                if (__OFADD__(v292, v293))
                {
                  goto LABEL_330;
                }

                v295 = v290;
                if (v334[3] >= v294)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_26BE6DEF4();
                  }
                }

                else
                {
                  sub_26BE6A238(v294, isUniquelyReferenced_nonNull_native);
                  v296 = sub_26BEBB598(v286, v34);
                  if ((v295 & 1) != (v297 & 1))
                  {
                    goto LABEL_333;
                  }

                  v291 = v296;
                }

                v334 = v347;
                if (v295)
                {
                  v272 = v337;
                  v273 = v338;
                  (*(v337 + 40))(v334[7] + *(v337 + 72) * v291, v336, v338);
                  (*(v272 + 8))(v335, v273);
                }

                else
                {
                  v298 = v334;
                  v334[(v291 >> 6) + 8] |= 1 << v291;
                  v299 = v298[6] + 16 * v291;
                  *v299 = v286;
                  *(v299 + 8) = v34;
                  v300 = v337;
                  v301 = v338;
                  (*(v337 + 32))(v298[7] + *(v337 + 72) * v291, v336, v338);
                  (*(v300 + 8))(v335, v301);
                  v302 = v298[2];
                  v66 = __OFADD__(v302, 1);
                  v303 = v302 + 1;
                  if (v66)
                  {
                    goto LABEL_331;
                  }

                  v334[2] = v303;
                }

                if (!--v332)
                {
                  goto LABEL_301;
                }
              }

              if (v275)
              {
                v276 = v360 >> 32;
              }

              else
              {
                v276 = BYTE6(v361);
              }

LABEL_265:
              if (v276 < v274)
              {
                goto LABEL_302;
              }

              goto LABEL_268;
            }

            while (1)
            {
              v230 = v360;
              v34 = v361;
              v231 = v362;
              sub_26BE00608(v360, v361);
              sub_26BE00608(v230, v34);
              sub_26BF30764(&v360, v350);
              if (v73)
              {
                sub_26BE00258(v360, v361);
                v360 = v230;
                v361 = v34;
                v362 = v231;
                sub_26BE00258(v230, v34);
                swift_willThrow();
                v360 = v230;
                v361 = v34;
                v362 = v231;
                goto LABEL_306;
              }

              if (v350[8])
              {
                sub_26BE00258(v360, v361);
                v360 = v230;
                v361 = v34;
                v235 = v34;
                v234 = v230;
                v362 = v231;
LABEL_305:
                sub_26BE00258(v234, v235);
                v360 = v230;
                v361 = v34;
                v362 = v231;
                sub_26BE01600();
                swift_allocError();
                *v308 = 1;
LABEL_306:
                swift_willThrow();
                goto LABEL_307;
              }

              v232 = *v350;
              sub_26BE00258(v230, v34);
              v233 = &v362[v232];
              if (__OFADD__(v362, v232))
              {
                goto LABEL_315;
              }

              v234 = v360;
              v235 = v361;
              v236 = v361 >> 62;
              if ((v361 >> 62) <= 1)
              {
                break;
              }

              if (v236 == 2)
              {
                v237 = *(v360 + 24);
                goto LABEL_211;
              }

              if (v233 > 0)
              {
                goto LABEL_305;
              }

LABEL_214:
              if (v233 < v362)
              {
                goto LABEL_316;
              }

              v238 = sub_26C00909C();
              v239 = v238;
              v241 = v240;
              v362 = v233;
              v242 = v240 >> 62;
              if ((v240 >> 62) > 1)
              {
                if (v242 != 2)
                {
                  goto LABEL_222;
                }

                v238 = *(v238 + 16);
                v243 = *(v239 + 24);
              }

              else
              {
                if (!v242)
                {
                  goto LABEL_222;
                }

                v238 = v238;
                v243 = v239 >> 32;
              }

              if (v243 < v238)
              {
                goto LABEL_317;
              }

LABEL_222:
              v244 = sub_26C00909C();
              v246 = v245;
              sub_26BE00258(v239, v241);
              sub_26BE00258(v230, v34);
              sub_26C00A4CC();
              v328 = sub_26C00A4AC();
              if (!v247)
              {
                sub_26BE01600();
                swift_allocError();
                *v309 = 9;
                swift_willThrow();
                sub_26BE00258(v244, v246);
                goto LABEL_307;
              }

              v34 = v247;
              sub_26BE00258(v244, v246);
              v344 = 0;
              v248 = v233 + 8;
              if (__OFADD__(v233, 8))
              {
                goto LABEL_318;
              }

              v249 = v361 >> 62;
              if ((v361 >> 62) <= 1)
              {
                if (v249)
                {
                  v250 = v360 >> 32;
                }

                else
                {
                  v250 = BYTE6(v361);
                }

LABEL_230:
                if (v250 < v248)
                {
                  goto LABEL_300;
                }

                goto LABEL_233;
              }

              if (v249 == 2)
              {
                v250 = *(v360 + 24);
                goto LABEL_230;
              }

              if (v248 > 0)
              {
                goto LABEL_300;
              }

LABEL_233:
              *v350 = v360;
              *&v350[8] = v361;
              if (v248 < v233)
              {
                goto LABEL_319;
              }

              v347 = v233;
              v348 = v233 + 8;
              sub_26BE00608(v360, v361);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
              sub_26BE016A8();
              sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
              sub_26C008E1C();
              sub_26BE00258(*v350, *&v350[8]);
              v327 = v344;
              v362 = (v233 + 8);
              LODWORD(v344) = 0;
              v251 = v233 + 12;
              if (__OFADD__(v248, 4))
              {
                goto LABEL_320;
              }

              v252 = v361 >> 62;
              if ((v361 >> 62) <= 1)
              {
                if (v252)
                {
                  v253 = v360 >> 32;
                }

                else
                {
                  v253 = BYTE6(v361);
                }

LABEL_241:
                if (v253 < v251)
                {
                  goto LABEL_300;
                }

                goto LABEL_244;
              }

              if (v252 == 2)
              {
                v253 = *(v360 + 24);
                goto LABEL_241;
              }

              if (v251 > 0)
              {
LABEL_300:

                sub_26BE01600();
                swift_allocError();
                *v304 = 1;
                goto LABEL_306;
              }

LABEL_244:
              *v350 = v360;
              *&v350[8] = v361;
              if (v251 < v248)
              {
                goto LABEL_321;
              }

              v347 = (v233 + 8);
              v348 = v233 + 12;
              sub_26BE00608(v360, v361);
              sub_26C008E1C();
              sub_26BE00258(*v350, *&v350[8]);
              v254 = v344;
              v362 = (v233 + 12);
              v255 = v333;
              v256 = swift_isUniquelyReferenced_nonNull_native();
              *v350 = v255;
              v258 = sub_26BEBB618(v328, v34);
              v259 = v255[2];
              v260 = (v257 & 1) == 0;
              v261 = v259 + v260;
              if (__OFADD__(v259, v260))
              {
                goto LABEL_322;
              }

              v262 = v257;
              if (v333[3] >= v261)
              {
                if ((v256 & 1) == 0)
                {
                  sub_26BE6E178();
                }
              }

              else
              {
                sub_26BE6A5B8(v261, v256);
                v263 = sub_26BEBB618(v328, v34);
                if ((v262 & 1) != (v264 & 1))
                {
                  goto LABEL_332;
                }

                v258 = v263;
              }

              v265 = bswap64(v327);
              v266 = bswap32(v254);
              v333 = *v350;
              if (v262)
              {
                v229 = v333[7] + 16 * v258;
                *v229 = v266;
                *(v229 + 8) = v265;
              }

              else
              {
                v267 = v333;
                v333[(v258 >> 6) + 8] |= 1 << v258;
                v268 = (v267[6] + 16 * v258);
                *v268 = v328;
                v268[1] = v34;
                v269 = v267[7] + 16 * v258;
                *v269 = v266;
                *(v269 + 8) = v265;
                v270 = v267[2];
                v66 = __OFADD__(v270, 1);
                v271 = v270 + 1;
                if (v66)
                {
                  goto LABEL_323;
                }

                v333[2] = v271;
              }

              if (!--v332)
              {
                goto LABEL_198;
              }
            }

            if (v236)
            {
              v237 = v360 >> 32;
            }

            else
            {
              v237 = BYTE6(v361);
            }

LABEL_211:
            if (v237 < v233)
            {
              goto LABEL_305;
            }

            goto LABEL_214;
          }

          while (1)
          {
            v195 = sub_26BF2F7B0();
            if (v73)
            {
              goto LABEL_307;
            }

            v124 = v195;
            v123 = v196;
            sub_26C00A4CC();
            v332 = sub_26C00A4AC();
            v333 = v197;
            if (!v197)
            {
              goto LABEL_195;
            }

            sub_26BE00258(v124, v123);
            v344 = 0;
            v198 = (v362 + 8);
            if (__OFADD__(v362, 8))
            {
              __break(1u);
LABEL_310:
              __break(1u);
LABEL_311:
              __break(1u);
LABEL_312:
              __break(1u);
LABEL_313:
              __break(1u);
LABEL_314:
              __break(1u);
LABEL_315:
              __break(1u);
LABEL_316:
              __break(1u);
LABEL_317:
              __break(1u);
LABEL_318:
              __break(1u);
LABEL_319:
              __break(1u);
LABEL_320:
              __break(1u);
LABEL_321:
              __break(1u);
LABEL_322:
              __break(1u);
LABEL_323:
              __break(1u);
LABEL_324:
              __break(1u);
LABEL_325:
              __break(1u);
LABEL_326:
              __break(1u);
LABEL_327:
              __break(1u);
LABEL_328:
              __break(1u);
LABEL_329:
              __break(1u);
LABEL_330:
              __break(1u);
LABEL_331:
              __break(1u);
LABEL_332:
              sub_26C00AF8C();
              __break(1u);
LABEL_333:
              result = sub_26C00AF8C();
              __break(1u);
              return result;
            }

            v199 = v361 >> 62;
            if ((v361 >> 62) <= 1)
            {
              break;
            }

            if (v199 == 2)
            {
              v200 = *(v360 + 24);
              goto LABEL_164;
            }

            if (v198 > 0)
            {
              goto LABEL_193;
            }

LABEL_167:
            *v350 = v360;
            *&v350[8] = v361;
            if (v198 < v362)
            {
              goto LABEL_310;
            }

            v347 = v362;
            v348 = (v362 + 8);
            sub_26BE00608(v360, v361);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
            sub_26BE016A8();
            sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
            sub_26C008E1C();
            sub_26BE00258(*v350, *&v350[8]);
            v326 = v344;
            v362 = v198;
            LODWORD(v344) = 0;
            v201 = v198 + 4;
            if (__OFADD__(v198, 4))
            {
              goto LABEL_311;
            }

            v202 = v361 >> 62;
            if ((v361 >> 62) <= 1)
            {
              if (v202)
              {
                v203 = v360 >> 32;
              }

              else
              {
                v203 = BYTE6(v361);
              }

LABEL_175:
              if (v203 < v201)
              {
                goto LABEL_193;
              }

              goto LABEL_178;
            }

            if (v202 == 2)
            {
              v203 = *(v360 + 24);
              goto LABEL_175;
            }

            if (v201 > 0)
            {
LABEL_193:

              sub_26BE01600();
              swift_allocError();
              *v222 = 1;
              swift_willThrow();
              goto LABEL_307;
            }

LABEL_178:
            *v350 = v360;
            *&v350[8] = v361;
            if (v201 < v198)
            {
              goto LABEL_312;
            }

            v347 = v198;
            v348 = v198 + 4;
            sub_26BE00608(v360, v361);
            sub_26C008E1C();
            sub_26BE00258(*v350, *&v350[8]);
            v204 = v344;
            v362 = v201;
            v205 = swift_isUniquelyReferenced_nonNull_native();
            *v350 = v34;
            v207 = sub_26BEBB618(v332, v333);
            v208 = *(v34 + 2);
            v209 = (v206 & 1) == 0;
            v210 = v208 + v209;
            if (__OFADD__(v208, v209))
            {
              goto LABEL_313;
            }

            v211 = v206;
            if (*(v34 + 3) >= v210)
            {
              if ((v205 & 1) == 0)
              {
                sub_26BE6E178();
              }
            }

            else
            {
              sub_26BE6A5B8(v210, v205);
              v212 = sub_26BEBB618(v332, v333);
              if ((v211 & 1) != (v213 & 1))
              {
                goto LABEL_332;
              }

              v207 = v212;
            }

            v214 = bswap64(v326);
            v215 = bswap32(v204);
            v34 = *v350;
            if (v211)
            {
              v194 = *(*v350 + 56) + 16 * v207;
              *v194 = v215;
              *(v194 + 8) = v214;
            }

            else
            {
              *(*v350 + 8 * (v207 >> 6) + 64) |= 1 << v207;
              v216 = (*(v34 + 6) + 16 * v207);
              v217 = v333;
              *v216 = v332;
              v216[1] = v217;
              v218 = *(v34 + 7) + 16 * v207;
              *v218 = v215;
              *(v218 + 8) = v214;
              v219 = *(v34 + 2);
              v66 = __OFADD__(v219, 1);
              v220 = v219 + 1;
              if (v66)
              {
                goto LABEL_314;
              }

              *(v34 + 2) = v220;
            }

            v327 = (v327 - 1);
            if (!v327)
            {
              goto LABEL_151;
            }
          }

          if (v199)
          {
            v200 = v360 >> 32;
          }

          else
          {
            v200 = BYTE6(v361);
          }

LABEL_164:
          if (v200 < v198)
          {
            goto LABEL_193;
          }

          goto LABEL_167;
        }

        if (v178 == 1)
        {
          sub_26BF89870(v333);
          if (!v73)
          {
            v179 = 0;
            goto LABEL_148;
          }

LABEL_192:
          sub_26BE0489C(v324, v325);

          sub_26BE0489C(v321, v322);
          sub_26BE00258(v330, v331);
          sub_26BE00258(v343, v329);
          __swift_destroy_boxed_opaque_existential_1(v359);
          (v323)(v341, v339);
          sub_26BE00258(v360, v361);
          goto LABEL_9;
        }

LABEL_146:
        sub_26BE01600();
        swift_allocError();
        v181 = 5;
LABEL_190:
        *v180 = v181;
LABEL_191:
        swift_willThrow();
        goto LABEL_192;
      }

LABEL_134:
      v183 = 1;
      goto LABEL_135;
    }

    __break(1u);
    goto LABEL_106;
  }

  *v350 = *v56;
  *&v350[8] = v59;
  v350[10] = BYTE2(v59);
  v350[11] = BYTE3(v59);
  v350[12] = BYTE4(v59);
  v350[13] = BYTE5(v59);
  v62 = &v350[BYTE6(v59)];
LABEL_29:
  sub_26BE77028(v350, v62, v359);
LABEL_42:
  v71 = v359[0];
  v72 = v359[1];
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_26BF8ED18(v71, v72);
  sub_26BE00258(v71, v72);
  sub_26BE108C0();
  sub_26BE03DC0(&aBlock);
  v73 = 0;
  v324 = aBlock;
  v325 = v354;
  v75 = v360;
  v74 = v361;
  v323 = v362;
  sub_26BE00608(v360, v361);
  sub_26BE00608(v75, v74);
  sub_26BF30764(&v360, &aBlock);
  v318 = v75;
  *&v319 = v74;
  if (v354)
  {
    sub_26BE00258(v360, v361);
    v77 = v318;
    v76 = v319;
    v360 = v318;
    v361 = v319;
    v78 = v319;
    v79 = v318;
    v80 = v323;
    v362 = v323;
LABEL_44:
    sub_26BE00258(v79, v78);
    v360 = v77;
    v361 = v76;
    v362 = v80;
    sub_26BE01600();
    swift_allocError();
    *v81 = 1;
    v82 = v324;
    goto LABEL_45;
  }

  v83 = aBlock;
  sub_26BE00258(v318, v319);
  if (v83 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v84 = 5;
    swift_willThrow();
    goto LABEL_102;
  }

  v312 = 0;
  p_aBlock = &v360;
  v86 = sub_26BF2A44C(v83);
  if (v87 >> 60 == 15)
  {
    v79 = v360;
    v78 = v361;
    v77 = v318;
    v76 = v319;
    v80 = v323;
    goto LABEL_44;
  }

  LODWORD(v311) = v328;
  v89 = v87 >> 62;
  v313 = v86 >> 32;
  v314 = BYTE6(v87);
  v61 = MEMORY[0x277D84F90];
  v321 = v87 >> 62;
  v322 = v87;
  v328 = v86;
  if ((v87 >> 62) <= 1)
  {
    goto LABEL_54;
  }

LABEL_51:
  if (v89 == 2)
  {
    v90 = *(v86 + 24);
  }

  else
  {
    v90 = 0;
  }

  while (1)
  {
    v66 = __OFSUB__(v90, v88);
    v91 = v90 - v88;
    if (v66)
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if (v91 < 1)
    {
      break;
    }

    v358[0] = 0;
    v83 = v88 + 8;
    if (__OFADD__(v88, 8))
    {
      goto LABEL_113;
    }

    if (v89 <= 1)
    {
      v92 = v314;
      if (v89)
      {
        v92 = v313;
      }

LABEL_64:
      if (v92 < v83)
      {
        goto LABEL_88;
      }

      goto LABEL_67;
    }

    if (v89 == 2)
    {
      v92 = *(v86 + 24);
      goto LABEL_64;
    }

    if (v83 > 0)
    {
      goto LABEL_88;
    }

LABEL_67:
    v320 = v61;
    aBlock = v86;
    *&v354 = v87;
    if (v83 < v88)
    {
      goto LABEL_114;
    }

    v317 = v88;
    *v350 = v88;
    *&v350[8] = v88 + 8;
    sub_26BE00608(v86, v87);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    v94 = sub_26BE016A8();
    v95 = sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
    p_aBlock = &aBlock;
    v315 = v94;
    v316 = v93;
    v61 = v95;
    sub_26C008E1C();
    sub_26BE00258(aBlock, v354);
    v96 = v358[0];
    LODWORD(v358[0]) = 0;
    v97 = v83 + 4;
    if (__OFADD__(v83, 4))
    {
      goto LABEL_115;
    }

    if (v321 <= 1)
    {
      v98 = v314;
      v99 = v328;
      if (v321)
      {
        v98 = v313;
      }

LABEL_74:
      if (v98 < v97)
      {
        goto LABEL_88;
      }

      goto LABEL_77;
    }

    v99 = v328;
    if (v321 == 2)
    {
      v98 = *(v328 + 24);
      goto LABEL_74;
    }

    if (v97 > 0)
    {
LABEL_88:
      sub_26BE01600();
      swift_allocError();
      *v105 = 1;
      goto LABEL_101;
    }

LABEL_77:
    aBlock = v99;
    *&v354 = v322;
    if (v97 < v83)
    {
      goto LABEL_116;
    }

    v73 = v96;
    *v350 = v83;
    *&v350[8] = v83 + 4;
    sub_26BE00608(v99, v322);
    sub_26C008E1C();
    sub_26BE00258(aBlock, v354);
    LODWORD(v316) = v358[0];
    v61 = v320;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_26BEEC80C(0, *(v61 + 2) + 1, 1, v61);
    }

    v83 = *(v61 + 2);
    v100 = *(v61 + 3);
    p_aBlock = (v83 + 1);
    LODWORD(v89) = v321;
    v87 = v322;
    v86 = v328;
    if (v83 >= v100 >> 1)
    {
      v103 = sub_26BEEC80C((v100 > 1), v83 + 1, 1, v61);
      LODWORD(v89) = v321;
      v87 = v322;
      v61 = v103;
      v86 = v328;
    }

    v101 = bswap32(v316);
    *(v61 + 2) = p_aBlock;
    v102 = &v61[16 * v83];
    *(v102 + 8) = v101;
    *(v102 + 5) = bswap64(v73);
    v88 = v317 + 12;
    if (v89 > 1)
    {
      goto LABEL_51;
    }

LABEL_54:
    v90 = v314;
    if (v89)
    {
      v90 = v313;
    }
  }

  if (v89 > 1)
  {
    if (v321 == 2)
    {
      v104 = *(v328 + 24);
    }

    else
    {
      v104 = 0;
    }
  }

  else
  {
    v104 = v313;
    if (!v321)
    {
      v104 = v314;
    }
  }

  if (__OFSUB__(v104, v88))
  {
    __break(1u);
    goto LABEL_134;
  }

  if (v104 == v88)
  {
    sub_26BE00258(v328, v322);
    sub_26BE00258(v318, v319);
    v106 = sub_26BEEE594();
    if (v107)
    {
      v108 = 0;
    }

    else
    {
      v108 = v106;
    }

    v328 = v108;
    if (v108 > 3)
    {

      sub_26BE01600();
      swift_allocError();
      *v109 = 7;
      swift_willThrow();
      sub_26BE0489C(v324, v325);

      v110 = v330;
      v111 = v331;
LABEL_100:
      sub_26BE00258(v110, v111);
      sub_26BE00258(v343, v329);
      __swift_destroy_boxed_opaque_existential_1(v359);
      (*(v340 + 8))(v341, v339);
      goto LABEL_15;
    }

    aBlock = v324;
    *&v354 = v325;
    v116 = v312;
    v56 = MLS.Credential.rawValue.getter();
    v44 = v116;
    if (v116)
    {

      sub_26BE00258(v330, v331);
      sub_26BE00258(v343, v329);
      __swift_destroy_boxed_opaque_existential_1(v359);
      (*(v340 + 8))(v341, v339);
      sub_26BE00258(v360, v361);
      sub_26BE0489C(v324, v325);
      goto LABEL_16;
    }

    goto LABEL_109;
  }

  sub_26BE01654();
  swift_allocError();
  *v112 = 0;
  v112[112] = 1;
LABEL_101:
  swift_willThrow();

  sub_26BE00258(v328, v322);
  v61 = v341;
LABEL_102:
  v113 = v323;
  v82 = v324;
  v115 = v318;
  v114 = v319;
  sub_26BE00258(v360, v361);
  v360 = v115;
  v361 = v114;
  v362 = v113;
LABEL_45:
  swift_willThrow();
  sub_26BE0489C(v82, v325);

  sub_26BE00258(v330, v331);
  sub_26BE00258(v343, v329);
  __swift_destroy_boxed_opaque_existential_1(v359);
  (*(v340 + 8))(v61, v339);
LABEL_15:
  sub_26BE00258(v360, v361);
LABEL_16:
  v54 = *MEMORY[0x277D85DE8];
  return v34;
}