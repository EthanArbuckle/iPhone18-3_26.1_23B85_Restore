Swift::Void __swiftcall Assertion.acquire()()
{
  v1 = *v0;
  v2 = *v0;
  v12 = v0[5];
  *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
  *(&v6 + 1) = 121;
  v7 = 2;
  v8 = xmmword_25F309F80;
  v9 = "acquire()";
  v10 = 9;
  v11 = 2;
  v3 = *(v1 + 80);
  sub_25F305C1C();
  v4 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v6, v4, WitnessTable);
  if (v13)
  {
    (*(*(v2 + 88) + 24))(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
    *(&v6 + 1) = 121;
    v7 = 2;
    v8 = xmmword_25F309F90;
    v9 = "acquire()";
    v10 = 9;
    v11 = 2;
    sub_25F213F98(&v6);
  }
}

void *Assertion.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t Assertion.__deallocating_deinit()
{
  Assertion.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25F1DE91C()
{
  v1 = *v0;
  sub_25F1DEEFC();
}

id RBSAssertion.onInvalidation(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_25F1DEF18;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_25F1DEA90;
    v9[3] = &block_descriptor_0;
    v7 = _Block_copy(v9);
    sub_25F1D2078(a1);

    [v3 setInvalidationHandler_];
    _Block_release(v7);
    return sub_25F1AC3AC(a1);
  }

  else
  {

    return [v2 setInvalidationHandler_];
  }
}

void sub_25F1DEA90(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

id sub_25F1DEB48()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ([v0 acquireWithError_])
  {
    result = v4[0];
  }

  else
  {
    v2 = v4[0];
    sub_25F3043FC();

    result = swift_willThrow();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Assertion<>.init(pid:domain:name:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = [objc_opt_self() targetWithPid_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC8, &qword_25F309FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25F309FA0;
  v11 = sub_25F304DDC();

  v12 = sub_25F304DDC();

  v13 = [objc_opt_self() attributeWithDomain:v11 name:v12];

  *(v10 + 32) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v15 = sub_25F304DDC();
  sub_25F1DEF5C();
  v16 = sub_25F30524C();

  v17 = [v14 initWithExplanation:v15 target:v9 attributes:v16];

  v18 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v18);

  MEMORY[0x25F8D7130](41, 0xE100000000000000);

  MEMORY[0x25F8D7130](10272, 0xE200000000000000);

  swift_allocObject();
  return sub_25F1DD914(v17, a6, a7);
}

uint64_t sub_25F1DEE28(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_25F1DEE88(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_25F1DEF18(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F1DEF5C()
{
  result = qword_27FD53CD0[0];
  if (!qword_27FD53CD0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD53CD0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_25F1DF100(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_25F1DF144@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = **(v2 + 16);
  v4 = *a1;
  *a1 = v3;
  *a2 = v4;
  return v3;
}

uint64_t sub_25F1DF180(uint64_t result)
{
  v1 = *(result + 96);
  *(result + 72) &= 0x1FFuLL;
  *(result + 96) = v1;
  return result;
}

uint64_t AgentSymbolTable.__allocating_init(dataProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_25F1A42F8(a1, v2 + 16);
  return v2;
}

uint64_t AgentSymbolTable.orderedSymbolAddresses.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

Swift::String __swiftcall AgentSymbolTable.symbolName(for:)(Swift::UInt64 a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 24))(a1, v3, v4);
  if (!v6)
  {
    v5 = 0x746164206461623CLL;
    v6 = 0xEA00000000003E61;
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall AgentSymbolTable.symbolName(covering:)(Swift::UInt64 covering)
{
  v2 = v1;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = sub_25F1DF404(covering, v6);
  if (v8)
  {

LABEL_9:
    v7 = 0;
    v8 = 0;
    goto LABEL_15;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= *(v6 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(v6 + 8 * v7 + 32);

  if (covering <= v9 || (covering - v9) >> 20 != 0)
  {
    goto LABEL_9;
  }

  v11 = v2[5];
  v12 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v11);
  v7 = (*(v12 + 24))(v9, v11, v12);
  if (!v8)
  {
    v7 = 0x746164206461623CLL;
    v8 = 0xEA00000000003E61;
  }

LABEL_15:
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

unint64_t sub_25F1DF404(unint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v5 = 0;
  v6 = v2 - 1;
  while (!__OFSUB__(v6, v5))
  {
    v7 = v5 + (v6 - v5) / 2;
    if (__OFADD__(v5, (v6 - v5) / 2))
    {
      goto LABEL_14;
    }

    if (v7 >= v2)
    {
      goto LABEL_15;
    }

    if (*(a2 + 32 + 8 * v7) > a1)
    {
      v6 = v7 - 1;
    }

    else
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_16;
      }

      result = v7;
    }

    if (v6 < v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t AgentSymbolTable.symbolCount.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t AgentSymbolTable.augmentCrashReport(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  v8 = (*(v7 + 16))(v6, v7);
  sub_25F1DF920(a1, a2);
  result = type metadata accessor for CrashReport(0);
  v53 = *(result + 48);
  v10 = *(a2 + v53);
  v55 = *(v10 + 16);
  if (!v55)
  {
  }

  v11 = result;
  v12 = 0;
  v13 = v8 + 32;
  v14 = 1;
  v50 = a2;
  v51 = v3;
  v49 = v8;
  v54 = result;
  while (1)
  {
    v15 = v14;
    v16 = 80 * v12;
    v17 = (v10 + 80 * v12);
    v19 = v17[4];
    v18 = v17[5];
    v20 = *(v17 + 89);
    v71 = v17[3];
    v21 = v17[2];
    *(v73 + 9) = v20;
    v72 = v19;
    v73[0] = v18;
    v70 = v21;
    v69 = v17[2];
    v23 = v17[4];
    v22 = v17[5];
    *(v68 + 9) = *(v17 + 89);
    v67 = v23;
    v68[0] = v22;
    if (*(&v71 + 1))
    {
      v63 = v69;
      v64 = v71;
      goto LABEL_21;
    }

    if ((v70 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    v24 = *(a2 + *(v11 + 44));
    if (v70 >= *(v24 + 16))
    {
      goto LABEL_47;
    }

    v25 = *(v24 + 72 * v70 + 64);
    v26 = __CFADD__(v25, *(&v70 + 1));
    v27 = v25 + *(&v70 + 1);
    if (v26)
    {
      goto LABEL_48;
    }

    v28 = *(v8 + 16);
    if (v28)
    {
      break;
    }

LABEL_20:
    v63 = v69;
    v64 = v71;
LABEL_21:
    v65 = v67;
    v66[0] = v68[0];
    *(v66 + 9) = *(v68 + 9);
    sub_25F1DF984(&v70, &v58);
    result = sub_25F1DF9E0(&v63);
LABEL_22:
    if (v15 == v55)
    {
    }

    v14 = v15 + 1;
    v12 = v15;
    if (v15 >= *(v10 + 16))
    {
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
      goto LABEL_51;
    }
  }

  result = 0;
  v29 = 0;
  v30 = v28 - 1;
  v31 = 1;
  do
  {
    while (1)
    {
      if (__OFSUB__(v30, v29))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v32 = v29 + (v30 - v29) / 2;
      if (__OFADD__(v29, (v30 - v29) / 2))
      {
        goto LABEL_43;
      }

      if (v32 >= v28)
      {
        goto LABEL_44;
      }

      if (v27 < *(v13 + 8 * v32))
      {
        break;
      }

      v29 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_49;
      }

      v31 = 0;
      result = v32;
      if (v30 < v29)
      {
        goto LABEL_25;
      }
    }

    v30 = v32 - 1;
  }

  while ((v32 - 1) >= v29);
  v32 = result;
  if (v31)
  {
    goto LABEL_20;
  }

LABEL_25:
  if (v32 >= v28)
  {
    goto LABEL_50;
  }

  v33 = *(v13 + 8 * v32);
  v34 = v27 > v33;
  v35 = (v27 - v33) >> 20;
  if (!v34 || v35 != 0)
  {
    v63 = v69;
    v64 = v71;
    v65 = v67;
    v66[0] = v68[0];
    *(v66 + 9) = *(v68 + 9);
    sub_25F1DF984(&v70, &v58);
    result = sub_25F1DF9E0(&v63);
LABEL_37:
    v11 = v54;
    goto LABEL_22;
  }

  v37 = v3[5];
  v38 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v37);
  v52 = *(v38 + 24);
  sub_25F1DF984(&v70, &v63);
  v39 = v52(v33, v37, v38);
  v41 = v40;

  if (!v41)
  {
    v39 = 0x746164206461623CLL;
    v41 = 0xEA00000000003E61;
  }

  v63 = v69;
  *&v64 = v39;
  *(&v64 + 1) = v41;
  v65 = v67;
  v66[0] = v68[0];
  *(v66 + 9) = *(v68 + 9);
  sub_25F1DF984(&v63, &v58);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F1E0B70(v10);
    v10 = result;
  }

  a2 = v50;
  v3 = v51;
  if (v12 < *(v10 + 16))
  {
    v42 = (v10 + v16);
    v56[0] = *(v10 + v16 + 32);
    v43 = *(v10 + v16 + 48);
    v44 = *(v10 + v16 + 64);
    v45 = *(v10 + v16 + 80);
    *&v57[9] = *(v10 + v16 + 89);
    v56[2] = v44;
    *v57 = v45;
    v56[1] = v43;
    v47 = v65;
    v46 = v66[0];
    v48 = v64;
    *(v42 + 89) = *(v66 + 9);
    v42[4] = v47;
    v42[5] = v46;
    v42[3] = v48;
    v42[2] = v63;
    sub_25F1DF9E0(v56);
    *(v50 + v53) = v10;
    v58 = v69;
    v59 = v39;
    v60 = v41;
    v61 = v67;
    v62[0] = v68[0];
    *(v62 + 9) = *(v68 + 9);
    result = sub_25F1DF9E0(&v58);
    v8 = v49;
    goto LABEL_37;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_25F1DF920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashReport(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AgentSymbolTable.mappingSize.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t AgentSymbolTable.swiftEntrySectionPointer.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t AgentSymbolTable.mappingSizeDescription.getter()
{
  v1 = v0;
  sub_25F305FAC();

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  (*(v3 + 8))(v2, v3);
  v4 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v4);

  MEMORY[0x25F8D7130](0x203A657A6973202CLL, 0xE800000000000000);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  (*(v6 + 32))(v5, v6);
  v7 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v7);

  return 0x3A736C6F626D7973;
}

uint64_t AgentSymbolTable.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t SwiftEntrySectionPayload.init(jsonPayload:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_25F3041CC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_25F3041BC();
  v10 = sub_25F1DFD80(a1, a2);
  v12 = v11;
  sub_25F1E0B84();
  sub_25F3041AC();

  result = sub_25F1D4BB0(v10, v12);
  if (!v3)
  {
    *a3 = v14;
  }

  return result;
}

uint64_t sub_25F1DFD80(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53DD0, &qword_25F30A430);
  if (swift_dynamicCast())
  {
    sub_25F1A42F8(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_25F30434C();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25F1E1B18(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25F30605C();
  }

  sub_25F1E113C(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_25F1E1864(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_25F1E1204(sub_25F1E1B80);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25F30450C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_25F2925C8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25F304FAC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25F304FFC();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25F30605C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_25F2925C8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25F304FBC();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_25F30451C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_25F30451C();
    sub_25F1D4B9C(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_25F1D4B9C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25F1B70AC(*&__src[0], *(&__src[0] + 1));

  sub_25F1D4BB0(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

char *SwiftEntrySectionPayload.jsonPayload.getter()
{
  v2 = sub_25F304E6C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = sub_25F3041FC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_25F3041EC();
  v18[1] = v6;
  sub_25F1E0BD8();
  v10 = sub_25F3041DC();
  if (!v1)
  {
    v12 = v10;
    v13 = v11;
    sub_25F304E4C();
    v5 = sub_25F304E2C();
    v15 = v14;
    sub_25F1D4BB0(v12, v13);
    if (!v15)
    {
      sub_25F1E0C2C();
      swift_allocError();
      *v17 = v5;
      v17[1] = 0;
      v17[2] = v5;
      v17[3] = 0;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t sub_25F1E03E4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F1E0414()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_25F1E046C()
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](0);
  return sub_25F30676C();
}

uint64_t sub_25F1E04D8()
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](0);
  return sub_25F30676C();
}

uint64_t sub_25F1E0538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x536E6F6974636573 && a2 == 0xEC00000074726174)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F30659C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F1E05DC(uint64_t a1)
{
  v2 = sub_25F1E0C80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F1E0618(uint64_t a1)
{
  v2 = sub_25F1E0C80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SwiftEntrySectionPayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53D78, &qword_25F30A090);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F1E0C80();
  sub_25F3067BC();
  sub_25F30646C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SwiftEntrySectionPayload.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t SwiftEntrySectionPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53D88, &qword_25F30A098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F1E0C80();
  sub_25F3067AC();
  if (!v2)
  {
    v11 = sub_25F30644C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25F1E096C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53D78, &qword_25F30A090);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F1E0C80();
  sub_25F3067BC();
  sub_25F30646C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_25F1E0AA4()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t sub_25F1E0B18()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

unint64_t sub_25F1E0B84()
{
  result = qword_27FD53D60;
  if (!qword_27FD53D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D60);
  }

  return result;
}

unint64_t sub_25F1E0BD8()
{
  result = qword_27FD53D68;
  if (!qword_27FD53D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D68);
  }

  return result;
}

unint64_t sub_25F1E0C2C()
{
  result = qword_27FD53D70;
  if (!qword_27FD53D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D70);
  }

  return result;
}

unint64_t sub_25F1E0C80()
{
  result = qword_27FD53D80;
  if (!qword_27FD53D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D80);
  }

  return result;
}

unint64_t sub_25F1E0CD8()
{
  result = qword_27FD53D90;
  if (!qword_27FD53D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D90);
  }

  return result;
}

uint64_t sub_25F1E0E20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_25F1E0E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_25F1E0EE4(uint64_t a1)
{
  *(a1 + 8) = sub_25F1E0F14();
  result = sub_25F1E0F68();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F1E0F14()
{
  result = qword_27FD53D98;
  if (!qword_27FD53D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D98);
  }

  return result;
}

unint64_t sub_25F1E0F68()
{
  result = qword_27FD53DA0;
  if (!qword_27FD53DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53DA0);
  }

  return result;
}

unint64_t sub_25F1E0FC0()
{
  result = qword_27FD53DA8;
  if (!qword_27FD53DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53DA8);
  }

  return result;
}

unint64_t sub_25F1E1018()
{
  result = qword_27FD53DB0;
  if (!qword_27FD53DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53DB0);
  }

  return result;
}

unint64_t sub_25F1E1070()
{
  result = qword_27FD53DB8;
  if (!qword_27FD53DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53DB8);
  }

  return result;
}

uint64_t sub_25F1E113C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_25F1E17AC(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_25F30430C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_25F3042BC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25F3044FC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_25F1E1204(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_25F1D4BB0(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25F1D4BB0(v6, v5);
    *v3 = xmmword_25F30A080;
    sub_25F1D4BB0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25F3042CC() && __OFSUB__(v6, sub_25F3042FC()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_25F30430C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_25F3042AC();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_25F1E16A8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_25F1D4BB0(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_25F30A080;
    sub_25F1D4BB0(0, 0xC000000000000000);
    sub_25F3044EC();
    result = sub_25F1E16A8(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_25F1E15A8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25F1E17AC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25F1E1904(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25F1E1980(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25F1E163C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25F1E16A8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25F3042CC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25F3042FC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25F3042EC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_25F1E175C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_25F305FBC();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F1E17AC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25F1E1864(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_25F30430C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_25F3042DC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25F3044FC();
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

uint64_t sub_25F1E1904(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25F30430C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25F3042BC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25F3044FC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25F1E1980(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25F30430C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25F3042BC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25F1E1A04(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53DC0, &qword_25F30A428);
  v10 = sub_25F1E1AB4();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25F1E15A8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_25F1E1AB4()
{
  result = qword_27FD53DC8;
  if (!qword_27FD53DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD53DC0, &qword_25F30A428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53DC8);
  }

  return result;
}

uint64_t sub_25F1E1B18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53DD8, &qword_25F30A438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_25F1E1B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25F1E163C(sub_25F1E1BE8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_25F1E1C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + *(a1 + 20);
  v6 = (v5 + *(type metadata accessor for CrashReport(0) + 20));
  v8 = *v6;
  v9 = v6[1];

  MEMORY[0x25F8D7130](0x6465687361726320, a3);
  return v8;
}

void sub_25F1E1C9C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t type metadata accessor for CrashReportError.GenericCrashError()
{
  result = qword_27FD53DE0;
  if (!qword_27FD53DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F1E1D24()
{
  sub_25F1E1DA8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CrashReport(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F1E1DA8()
{
  if (!qword_27FD53DF0)
  {
    v0 = sub_25F305C1C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD53DF0);
    }
  }
}

uint64_t sub_25F1E1E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53DF8, &unk_25F30A470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F1E1E6C()
{
  result = qword_27FD53E00;
  if (!qword_27FD53E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD53E00);
  }

  return result;
}

void NSTask.standardOutputPipe.setter(void *a1)
{
  [v1 setStandardOutput_];
}

void (*NSTask.standardOutputPipe.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = NSTask.standardOutputPipe.getter();
  return sub_25F1E1F48;
}

void sub_25F1E1F48(id *a1)
{
  v1 = *a1;
  [a1[1] setStandardOutput_];
}

uint64_t sub_25F1E1F9C(SEL *a1)
{
  if ([v1 *a1])
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_25F1E1E6C();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_25F1E1E04(v6);
    return 0;
  }
}

void NSTask.standardErrorPipe.setter(void *a1)
{
  [v1 setStandardError_];
}

void (*NSTask.standardErrorPipe.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = NSTask.standardErrorPipe.getter();
  return sub_25F1E20DC;
}

void sub_25F1E20DC(id *a1)
{
  v1 = *a1;
  [a1[1] setStandardError_];
}

uint64_t NSTask.makeStream(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E08, &qword_25F30B780);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  result = [v2 isRunning];
  if (result)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    *(&v10 - 2) = v2;
    *(&v10 - 1) = a1;
    (*(v5 + 104))(v8, *MEMORY[0x277D85778], v4);
    return sub_25F30553C();
  }

  return result;
}

void sub_25F1E2280(uint64_t a1, void *a2)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CCAC10]) init];
  v4 = a2;
  v5 = v6;
  swift_setAtReferenceWritableKeyPath();

  sub_25F1E34D0(v5, a1);
}

uint64_t NSTask.makeCombinedStream()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E08, &qword_25F30B780);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - v4;
  result = [v0 isRunning];
  if (result)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    *(&v7 - 2) = v0;
    (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
    return sub_25F30553C();
  }

  return result;
}

void sub_25F1E2468(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCAC10]) init];
  [a2 setStandardOutput_];
  [a2 setStandardError_];
  sub_25F1E34D0(v4, a1);
}

uint64_t sub_25F1E2500(void *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53E30, &unk_25F30A580);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = sub_25F30455C();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 availableData];
  v15 = sub_25F30453C();
  v17 = v16;

  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2 || *(v15 + 16) == *(v15 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v18)
  {
    if (v15 == v15 >> 32)
    {
      goto LABEL_10;
    }

LABEL_7:
    v24 = v10;
    if (v18 == 2)
    {
      v19 = *(v15 + 16);
    }

    goto LABEL_13;
  }

  if ((v17 & 0xFF000000000000) != 0)
  {
    v24 = v10;
LABEL_13:
    sub_25F1B70AC(v15, v17);
    sub_25F30456C();
    for (i = sub_25F30454C(); (i & 0x100) == 0; i = sub_25F30454C())
    {
      v26 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E28, &qword_25F30A578);
      sub_25F3054BC();
      (*(v6 + 8))(v9, v5);
    }

    (*(v25 + 8))(v13, v24);
    return sub_25F1D4BB0(v15, v17);
  }

LABEL_10:
  v20 = [a3 fileHandleForReading];
  [v20 setReadabilityHandler_];
  _Block_release(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E28, &qword_25F30A578);
  sub_25F3054CC();

  return sub_25F1D4BB0(v15, v17);
}

uint64_t NSTask.run(interruptible:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  return MEMORY[0x2822009F8](sub_25F1E2830, 0, 0);
}

uint64_t sub_25F1E2830()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_25F1E2944;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v6, &unk_25F30A490, v3, sub_25F1E3224, v4, 0, 0, v7);
}

uint64_t sub_25F1E2944()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_25F1E2A80;
  }

  else
  {
    v6 = *(v2 + 24);
    v5 = *(v2 + 32);

    v4 = sub_25F1E2A68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F1E2A80()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t sub_25F1E2AEC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 48) = a3;
  *(v3 + 16) = a2;
  return MEMORY[0x2822009F8](sub_25F1E2B10, 0, 0);
}

uint64_t sub_25F1E2B10()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_25F1E2C0C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_25F1E2C0C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_25F1E2DB4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_25F1E2D28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F1E2D28()
{
  if (*(v0 + 48) == 1 && (v1 = *(v0 + 40), sub_25F3055AC(), v1))
  {
    v2 = *(v0 + 8);
  }

  else
  {
    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_25F1E2DB4()
{
  v1 = v0[3];

  v2 = v0[5];
  v3 = v0[1];

  return v3();
}

uint64_t sub_25F1E2E18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F1AFDB0;

  return sub_25F1E2AEC(a1, v4, v5);
}

uint64_t sub_25F1E2EC8(uint64_t a1, void *a2, char a3)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E20, &qword_25F30A570);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock[-1] - v9;
  (*(v7 + 16))(&aBlock[-1] - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(&v12[v11], v10, v6);
  aBlock[4] = sub_25F1E344C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1E3780;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);

  [a2 setTerminationHandler_];
  _Block_release(v13);
  if (a3)
  {
    sub_25F3055AC();
  }

  aBlock[0] = 0;
  if ([a2 launchAndReturnError_])
  {
    v14 = aBlock[0];
    result = sub_25F30559C();
    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = aBlock[0];
    v17 = sub_25F3043FC();

    swift_willThrow();
    [a2 setTerminationHandler_];
    aBlock[0] = v17;
    sub_25F30540C();
    result = sub_25F30559C();
    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (a3)
  {
    result = [a2 isRunning];
    if (result)
    {
      result = [a2 terminate];
    }
  }

LABEL_10:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25F1E315C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_25F1E31C4(uint64_t result, id a2)
{
  if (result)
  {
    result = [a2 isRunning];
    if (result)
    {

      return [a2 terminate];
    }
  }

  return result;
}

void sub_25F1E3224()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *(v0 + 24);
    if ([v1 isRunning])
    {

      [v1 terminate];
    }
  }
}

Swift::Bool __swiftcall NSTask.hasNonZeroExit()()
{
  result = [v0 isRunning];
  if (!result)
  {
    return [v0 terminationReason] != 1 || objc_msgSend(v0, sel_terminationStatus) != 0;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSTask.checkNonZeroExit()()
{
  if ([v0 isRunning])
  {
    __break(1u);
  }

  else if ([v0 terminationReason] != 1 || objc_msgSend(v0, sel_terminationStatus))
  {
    sub_25F1E3384();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_25F1E3384()
{
  result = qword_27FD53E10;
  if (!qword_27FD53E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53E10);
  }

  return result;
}

unint64_t sub_25F1E33EC()
{
  result = qword_27FD53E18;
  if (!qword_27FD53E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53E18);
  }

  return result;
}

uint64_t sub_25F1E344C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E20, &qword_25F30A570) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_25F30541C();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F1E34D0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E28, &qword_25F30A578);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [a1 fileHandleForReading];
  (*(v5 + 16))(v8, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_25F1E36D0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1E3780;
  aBlock[3] = &block_descriptor_18;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  sub_25F1D2078(sub_25F1E36D0);

  [v9 setReadabilityHandler_];

  _Block_release(v12);
}

uint64_t sub_25F1E36D0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E28, &qword_25F30A578) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25F1E2500(a1, v1 + v4, v5);
}

uint64_t MutableBox.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MutableBox.value.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*MutableBox.value.modify())()
{
  v1 = *(*v0 + 88);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t MutableBox.clone()(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - v5;
  v8 = *(v7 + 88);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  return MutableBox.__allocating_init(_:)(v6);
}

uint64_t _s20PreviewsFoundationOS10MutableBoxCyACyxGxcfC_0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 88), a1);
  return v5;
}

uint64_t ImmutableBox.clone()()
{
  v1 = (*(*(*(*v0 + 80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v7 - v2;
  (*(v5 + 16))(&v7 - v2, v0 + *(v4 + 88));
  return MutableBox.__allocating_init(_:)(v3);
}

uint64_t _s20PreviewsFoundationOS10MutableBoxCfD_0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Lens.modify(in:_:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v15 - v12;
  (*(a5 + 24))(a1, a4, a5);
  a2(v13);
  (*(a5 + 32))(v13, a1, a4, a5);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_25F1E4094(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 136) - 8) + 32))(v5 + *(*v5 + 152), a1);
  return v5;
}

uint64_t sub_25F1E4128(uint64_t a1)
{
  v2 = *(*(*v1 + 144) + 24);
  v3 = *(*v1 + 136);
  v4 = v1 + *(*v1 + 152);
  return v2(a1, v3);
}

uint64_t sub_25F1E419C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*v2 + 144) + 32);
  v4 = *(*v2 + 136);
  v5 = v2 + *(*v2 + 152);
  return v3(a1, a2, v4);
}

uint64_t sub_25F1E4268()
{
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 152));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t AnyLens.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AnyLens.init<A>(_:)(a1, a2, a3);
  return v6;
}

uint64_t *AnyLens.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = *(v9 + 16);
  v14(&v19 - v15, a1, a2);
  if (swift_dynamicCast())
  {
    v16 = v19;
    (*(v9 + 8))(a1, a2);
    v17 = *(v16 + 16);
  }

  else
  {
    v19 = *(v8 + 80);
    v20 = a2;
    v21 = a3;
    type metadata accessor for AnyLens.Box();
    v14(v13, a1, a2);
    v17 = sub_25F1E4094(v13);
    (*(v9 + 8))(a1, a2);
  }

  v4[2] = v17;
  return v4;
}

uint64_t AnyLens.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AnyLens.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t WritableKeyPath.set(_:in:)(uint64_t a1)
{
  v2 = *(*(*(*v1 + *MEMORY[0x277D84308] + 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - v3);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_25F1E48CC(uint64_t a1)
{
  v1 = *(a1 + 136);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CancelationToken<>.cancel<A>(onInvalidationOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  (*(a3 + 16))(a2, a3);
  sub_25F1E58B0(v4, v5, v6);
}

{
  v4 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v4;
  v7 = *(v3 + 32);
  (*(a3 + 16))(a2, a3);
  sub_25F1E5A34(v6);
}

double sub_25F1E49D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25F21FC78(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F21E05C();
      v11 = v13;
    }

    sub_25F1E6CBC(*(v11 + 56) + 32 * v8, a2);
    sub_25F1BB048(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_25F3081D0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

double sub_25F1E4A70@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25F21935C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F21E334();
      v11 = v13;
    }

    sub_25F1BF670(*(v11 + 48) + 40 * v8);
    sub_25F1B707C((*(v11 + 56) + 32 * v8), a2);
    sub_25F1BB39C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_25F1E4B54(uint64_t a1, uint64_t a2)
{
  sub_25F1B7174(a1, v6, &qword_27FD54160, &qword_25F30A9A0);
  if (v6[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v6[1] == 1;
  }

  if (v4)
  {
    sub_25F1E6C54(v6);
    sub_25F1E5418(a2, v7);
    sub_25F1E6C54(a1);
    return sub_25F1E6C54(v7);
  }

  else
  {
    sub_25F1E6CBC(v6, v7);
    sub_25F1E5244(v7, a2, v6);
    sub_25F1E6C54(a1);
    sub_25F1E6C54(v6);
    return sub_25F1E6CF4(v7);
  }
}

uint64_t sub_25F1E4C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t))
{
  if (!a1)
  {
    v15 = a6(a3);
    goto LABEL_5;
  }

  v11 = a4(a1, a2, a3);
  if (v11)
  {
    v13 = v11;
    v14 = v12;
    a5(a1, a2);
    v15 = v13;
    v16 = v14;
LABEL_5:

    return a5(v15, v16);
  }

  v18 = *(v6 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_25F2EFED4(0, *(v18 + 2) + 1, 1, v18);
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_25F2EFED4((v19 > 1), v20 + 1, 1, v18);
  }

  result = a5(a1, a2);
  *(v18 + 2) = v20 + 1;
  *&v18[8 * v20 + 32] = a3;
  *(v6 + 8) = v18;
  return result;
}

uint64_t sub_25F1E4DAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_25F1E6B9C();
  v6 = MEMORY[0x25F8D6C60](v4, &type metadata for Identifier, &type metadata for IsolatedInvalidationObserverBox, v5);
  v7 = sub_25F2EFED4(0, v4, 0, MEMORY[0x277D84F90]);
  v8 = *(a1 + 16);
  if (!v8)
  {

LABEL_20:
    *a2 = v6;
    a2[1] = v7;
    return result;
  }

  v28 = a2;
  v9 = 0;
  v10 = a1 + 32;
  while (v9 < *(a1 + 16))
  {
    sub_25F1B7174(v10, &v30, &qword_27FD54168, &qword_25F30A9A8);
    v11 = v30;
    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = sub_25F2EFED4((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    *&v7[8 * v13 + 32] = v11;
    v14 = v30;
    sub_25F1E6CBC(&v31, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_25F21FC78(v14);
    v18 = v6[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_22;
    }

    v22 = v17;
    if (v6[3] < v21)
    {
      sub_25F21AF28(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_25F21FC78(v14);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_24;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v26 = v16;
    sub_25F21E05C();
    v16 = v26;
    if (v22)
    {
LABEL_3:
      sub_25F1E72A8(v29, v6[7] + 32 * v16);
      goto LABEL_4;
    }

LABEL_14:
    v6[(v16 >> 6) + 8] |= 1 << v16;
    *(v6[6] + 8 * v16) = v14;
    sub_25F1E6CBC(v29, v6[7] + 32 * v16);
    v24 = v6[2];
    v20 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v20)
    {
      goto LABEL_23;
    }

    v6[2] = v25;
LABEL_4:
    ++v9;
    v10 += 40;
    if (v8 == v9)
    {

      a2 = v28;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t sub_25F1E5008@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = sub_25F1E6B9C();
  v5 = MEMORY[0x25F8D6C60](v3, &type metadata for Identifier, &type metadata for ConcurrentInvalidationObserverBox, v4);
  v6 = sub_25F2EFED4(0, v3, 0, MEMORY[0x277D84F90]);
  v29 = *(a1 + 16);
  if (!v29)
  {
LABEL_18:

    *a2 = v5;
    a2[1] = v6;
    return result;
  }

  v7 = 0;
  v8 = (a1 + 40);
  while (v7 < *(a1 + 16))
  {
    v11 = *(v8 - 1);
    v13 = *(v6 + 2);
    v12 = *(v6 + 3);
    v30 = *v8;
    v14 = *(v8 + 1);

    if (v13 >= v12 >> 1)
    {
      v6 = sub_25F2EFED4((v12 > 1), v13 + 1, 1, v6);
    }

    *(v6 + 2) = v13 + 1;
    *&v6[8 * v13 + 32] = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_25F21FC78(v11);
    v18 = v5[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_20;
    }

    v22 = v17;
    if (v5[3] < v21)
    {
      sub_25F21A760(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_25F21FC78(v11);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v26 = v16;
    sub_25F21DC04();
    v16 = v26;
    if (v22)
    {
LABEL_3:
      v9 = (v5[7] + 16 * v16);
      v10 = v9[1];
      *v9 = v30;
      v9[1] = v14;

      goto LABEL_4;
    }

LABEL_14:
    v5[(v16 >> 6) + 8] |= 1 << v16;
    *(v5[6] + 8 * v16) = v11;
    *(v5[7] + 16 * v16) = v30;
    v24 = v5[2];
    v20 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v5[2] = v25;
LABEL_4:
    ++v7;
    v8 = (v8 + 24);
    if (v29 == v7)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

double sub_25F1E5244@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25F1E6D24(a1, v11);
  sub_25F1E6E80(v11, a2, v12);
  if (v12[0])
  {
    v6 = 0;
  }

  else
  {
    v6 = v12[1] == 1;
  }

  if (v6)
  {
    sub_25F1E6C54(v12);
    v8 = *(v3 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2EFED4(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_25F2EFED4((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    *&v8[8 * v10 + 32] = a2;
    *(v3 + 8) = v8;
    result = 0.0;
    *a3 = xmmword_25F3081D0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    sub_25F1E6CBC(v12, a3);
  }

  return result;
}

uint64_t sub_25F1E533C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_25F21FC78(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v20 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25F21DC04();
    v10 = v20;
  }

  v11 = v7;
  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_25F1BAB94(v11, v10);
  *v2 = v10;
  v15 = v2[1];
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_8:
    __break(1u);
    return 0;
  }

  v17 = 0;
  v18 = v15 + 32;
  while (*(v18 + 8 * v17) != a1)
  {
    if (v16 == ++v17)
    {
      goto LABEL_8;
    }
  }

  sub_25F2C1C8C(v17, &v20);
  return v13;
}

uint64_t sub_25F1E5418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25F1E49D4(a1, v11);
  v5 = v11;
  if (v11[0])
  {
    v6 = 0;
  }

  else
  {
    v6 = v11[1] == 1;
  }

  if (v6)
  {
    goto LABEL_10;
  }

  v5 = sub_25F1E6CBC(v11, v12);
  v7 = *(v2 + 8);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    result = sub_25F1E6C54(v5);
    *a2 = xmmword_25F3081D0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    return result;
  }

  v5 = 0;
  v9 = v7 + 32;
  while (*(v9 + 8 * v5) != a1)
  {
    if (v8 == ++v5)
    {
      goto LABEL_9;
    }
  }

  sub_25F2C1C8C(v5, v11);
  return sub_25F1E6CBC(v12, a2);
}

uint64_t sub_25F1E54CC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_25F21FC78(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v20 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25F21F6D8();
    v10 = v20;
  }

  v11 = v7;
  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_25F1BAB94(v11, v10);
  *v2 = v10;
  v15 = v2[1];
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_8:
    __break(1u);
    return 0;
  }

  v17 = 0;
  v18 = v15 + 32;
  while (*(v18 + 8 * v17) != a1)
  {
    if (v16 == ++v17)
    {
      goto LABEL_8;
    }
  }

  sub_25F2C1C8C(v17, &v20);
  return v13;
}

uint64_t sub_25F1E55A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = sub_25F305C1C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v10 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v11 = *(v10 + 2);
  *(v10 + 2) = v11 + 1;
  os_unfair_lock_unlock(v10 + 6);
  v12 = *(v5 - 8);
  (*(v12 + 16))(v9, a1, v5);
  (*(v12 + 56))(v9, 0, 1, v5);
  v16 = v11;
  sub_25F1E6B9C();
  v13 = type metadata accessor for OrderedDictionary();
  result = OrderedDictionary.subscript.setter(v9, &v16, v13);
  *a3 = v11;
  return result;
}

uint64_t sub_25F1E5724(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_25F305C1C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = *a1;
  (*(*(v3 - 8) + 56))(&v11 - v6, 1, 1, v3);
  v12 = v8;
  sub_25F1E6B9C();
  v9 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.subscript.setter(v7, &v12, v9);
}

uint64_t sub_25F1E5808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getTupleTypeMetadata2();
  v4 = sub_25F3052DC();
  v5 = sub_25F1E6B9C();
  OrderedDictionary.init(dictionaryLiteral:)(v4, &type metadata for Identifier, a1, v5, a2);
  type metadata accessor for CancelationToken();
  result = sub_25F3052DC();
  *(a2 + 16) = result;
  return result;
}

void sub_25F1E58B0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v6 = *(*(v3 + 32) + 152);
  os_unfair_lock_lock(v6 + 21);
  sub_25F1E72E8(&v6[4], &v14);
  os_unfair_lock_unlock(v6 + 21);
  if (v15 == 1)
  {
    v8 = v14;
    v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
    v15 = 130;
    v18 = "manage(_:)";
    v19 = 10;
    v16 = 2;
    v17 = xmmword_25F30A6E0;
    v20 = 2;
    v9 = *(a3 + 152);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock(v9 + 19);
    sub_25F1D3EBC(&v9[4], v10);
    os_unfair_lock_unlock(v9 + 19);
    if ((v10[0] & 1) == 0)
    {
      a1();
    }

    sub_25F1A4678(v8, 1);
  }
}

void sub_25F1E5A34(__int128 *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  v2 = *(*(v1 + 32) + 152);
  os_unfair_lock_lock(v2 + 21);
  sub_25F1E7350(&v2[4], &v7);
  os_unfair_lock_unlock(v2 + 21);
  if (v8 == 1)
  {
    v3 = v7;
    v14 = v4;
    v15 = v5;
    v16 = v6;
    v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
    v8 = 130;
    v9 = 2;
    v10 = xmmword_25F30A6E0;
    v11 = "manage(_:)";
    v12 = 10;
    v13 = 2;
    sub_25F29FB04();
    sub_25F1A4678(v3, 1);
  }
}

uint64_t IsolatedInvalidationHandle.executor.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 48);
  return result;
}

uint64_t IsolatedInvalidationHandle.executor.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*IsolatedInvalidationHandle.executor.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_25F1E5C5C;
}

void sub_25F1E5C5C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *IsolatedInvalidationHandle.__allocating_init(dsoHandle:file:line:column:function:on:name:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = swift_allocObject();
  v15[6] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v15[6] = a11;
  swift_unknownObjectWeakAssign();
  v15[2] = a12;
  v15[3] = a13;
  v16 = MEMORY[0x277D84F90];
  sub_25F1E4DAC(MEMORY[0x277D84F90], v27);
  v17 = v27[0];
  v18 = v27[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540B8, &unk_25F30A6F0);
  v19 = swift_allocObject();
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C0, &qword_25F30DF50);
  v20 = swift_allocObject();
  *(v20 + 84) = 0;

  swift_unknownObjectRelease();
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v16;
  *(v20 + 81) = v28;

  *(v19 + 152) = v20;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = a8;
  *(v19 + 72) = a9;
  *(v19 + 80) = 0;
  *(v19 + 88) = 0;
  *(v19 + 96) = xmmword_25F3077E0;
  *(v19 + 112) = 2;
  *(v19 + 120) = 0xD00000000000001CLL;
  *(v19 + 128) = 0x800000025F317BC0;
  *(v19 + 136) = 0x6164696C61766E69;
  *(v19 + 144) = 0xEB00000000646574;
  v15[4] = v19;
  return v15;
}

void *IsolatedInvalidationHandle.init(dsoHandle:file:line:column:function:on:name:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13[6] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v13[6] = a11;
  swift_unknownObjectWeakAssign();
  v13[2] = a12;
  v13[3] = a13;
  v16 = MEMORY[0x277D84F90];
  sub_25F1E4DAC(MEMORY[0x277D84F90], v27);
  v17 = v27[0];
  v18 = v27[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540B8, &unk_25F30A6F0);
  v19 = swift_allocObject();
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C0, &qword_25F30DF50);
  v20 = swift_allocObject();
  *(v20 + 84) = 0;

  swift_unknownObjectRelease();
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v16;
  *(v20 + 81) = v28;

  *(v19 + 152) = v20;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = a8;
  *(v19 + 72) = a9;
  *(v19 + 80) = 0;
  *(v19 + 88) = 0;
  *(v19 + 96) = xmmword_25F3077E0;
  *(v19 + 112) = 2;
  *(v19 + 120) = 0xD00000000000001CLL;
  *(v19 + 128) = 0x800000025F317BC0;
  *(v19 + 136) = 0x6164696C61766E69;
  *(v19 + 144) = 0xEB00000000646574;
  v13[4] = v19;
  return v13;
}

uint64_t sub_25F1E609C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);
    v2 = MEMORY[0x28223BE20](result);
    v4 = *(v3 + 152);
    MEMORY[0x28223BE20](v2);
    os_unfair_lock_lock(v4 + 21);
    sub_25F1E6C38(&v4[4], &v5);
    os_unfair_lock_unlock(v4 + 21);

    return sub_25F1A4678(v5, v6);
  }

  return result;
}

uint64_t IsolatedInvalidationHandle.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_25F1E61D0(v0 + 40);
  return v0;
}

uint64_t IsolatedInvalidationHandle.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_25F1E61D0(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void *ConcurrentInvalidationHandle.__allocating_init(dsoHandle:file:line:column:function:name:failureMode:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v15 = swift_allocObject();
  v16 = *a12;
  v17 = a12[1];
  v18 = *(a12 + 16);
  v15[2] = a10;
  v15[3] = a11;
  v19 = MEMORY[0x277D84F90];
  sub_25F1E5008(MEMORY[0x277D84F90], &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C8, &qword_25F30A700);
  v20 = swift_allocObject();
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD540D0, &qword_25F30A708);
  v21 = swift_allocObject();
  *(v21 + 84) = 0;
  *(v21 + 16) = v27;
  *(v21 + 32) = v19;
  *(v21 + 81) = v28;
  *(v20 + 152) = v21;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  *(v20 + 64) = a8;
  *(v20 + 72) = a9;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0;
  *(v20 + 96) = v16;
  *(v20 + 104) = v17;
  *(v20 + 112) = v18;
  *(v20 + 120) = 0xD00000000000001ELL;
  *(v20 + 128) = 0x800000025F317BE0;
  *(v20 + 136) = 0x6164696C61766E69;
  *(v20 + 144) = 0xEB00000000646574;
  v15[4] = v20;
  return v15;
}

void *ConcurrentInvalidationHandle.init(dsoHandle:file:line:column:function:name:failureMode:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v17 = *a12;
  v18 = a12[1];
  v19 = *(a12 + 16);
  v12[2] = a10;
  v12[3] = a11;
  sub_25F1E5008(MEMORY[0x277D84F90], &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C8, &qword_25F30A700);
  v20 = swift_allocObject();
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD540D0, &qword_25F30A708);
  v21 = swift_allocObject();
  *(v21 + 84) = 0;
  *(v21 + 16) = v26;
  *(v21 + 32) = MEMORY[0x277D84F90];
  *(v21 + 81) = v27;
  *(v20 + 152) = v21;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  *(v20 + 64) = a8;
  *(v20 + 72) = a9;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0;
  *(v20 + 96) = v17;
  *(v20 + 104) = v18;
  *(v20 + 112) = v19;
  *(v20 + 120) = 0xD00000000000001ELL;
  *(v20 + 128) = 0x800000025F317BE0;
  *(v20 + 136) = 0x6164696C61766E69;
  *(v20 + 144) = 0xEB00000000646574;
  v12[4] = v20;
  return v12;
}

uint64_t ConcurrentInvalidationHandle.__allocating_init(name:failureMode:callsite:)(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v8 = swift_allocObject();
  ConcurrentInvalidationHandle.init(name:failureMode:callsite:)(a1, a2, a3, a4);
  return v8;
}

void *ConcurrentInvalidationHandle.init(name:failureMode:callsite:)(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v4[2] = a1;
  v4[3] = a2;
  v9 = MEMORY[0x277D84F90];
  sub_25F1E5008(MEMORY[0x277D84F90], &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C8, &qword_25F30A700);
  v10 = swift_allocObject();
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD540D0, &qword_25F30A708);
  v11 = swift_allocObject();
  *(v11 + 84) = 0;
  *(v11 + 16) = v14;
  *(v11 + 32) = v9;
  *(v11 + 81) = v15;
  *(v10 + 152) = v11;
  v12 = a4[1];
  *(v10 + 16) = *a4;
  *(v10 + 32) = v12;
  *(v10 + 48) = a4[2];
  *(v10 + 57) = *(a4 + 41);
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = v6;
  *(v10 + 104) = v7;
  *(v10 + 112) = v8;
  *(v10 + 120) = 0xD00000000000001ELL;
  *(v10 + 128) = 0x800000025F317BE0;
  *(v10 + 136) = 0x6164696C61766E69;
  *(v10 + 144) = 0xEB00000000646574;
  v4[4] = v10;
  return v4;
}

uint64_t sub_25F1E6724()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);
    v2 = MEMORY[0x28223BE20](result);
    v4 = *(v3 + 152);
    MEMORY[0x28223BE20](v2);
    os_unfair_lock_lock(v4 + 21);
    sub_25F1E7368(&v4[4], &v5);
    os_unfair_lock_unlock(v4 + 21);

    return sub_25F1A4678(v5, v6);
  }

  return result;
}

uint64_t ConcurrentInvalidationHandle.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t ConcurrentInvalidationHandle.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_25F1E6A0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F1E6A58(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

uint64_t sub_25F1E6AAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F1E6AFC(uint64_t *a1, int a2)
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

uint64_t sub_25F1E6B44(uint64_t result, int a2, int a3)
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

unint64_t sub_25F1E6B9C()
{
  result = qword_27FD54158;
  if (!qword_27FD54158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54158);
  }

  return result;
}

uint64_t sub_25F1E6BF0()
{
  v1 = *(v0 + 16);
  v3 = xmmword_25F3081D0;
  v4 = 0;
  v5 = 0;
  return sub_25F1E4B54(&v3, v1);
}

uint64_t sub_25F1E6C54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54160, &qword_25F30A9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1E6D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v12 = sub_25F21FC78(a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_25F21A760(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_25F21FC78(a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_25F30665C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v12;
    sub_25F21DC04();
    v12 = v22;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_25F211774(v12, a3, a1, a2, v11);
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = (v11[7] + 16 * v12);
  result = *v19;
  v21 = v19[1];
  *v19 = a1;
  v19[1] = a2;
LABEL_11:
  *v5 = v11;
  return result;
}

uint64_t sub_25F1E6E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v12 = sub_25F21FC78(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_25F21AF28(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_25F21FC78(a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_25F30665C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v12;
    sub_25F21E05C();
    v12 = v21;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    result = sub_25F211824(v12, a2, a1, v11);
    *a3 = xmmword_25F3081D0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = 32 * v12;
  sub_25F1E6CBC(v11[7] + 32 * v12, a3);
  result = sub_25F1E6CBC(a1, v11[7] + v19);
LABEL_11:
  *v5 = v11;
  return result;
}

uint64_t sub_25F1E6FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v12 = sub_25F21FC78(a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_25F21D638(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_25F21FC78(a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_25F30665C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v12;
    sub_25F21F6D8();
    v12 = v22;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_25F211774(v12, a3, a1, a2, v11);
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = (v11[7] + 16 * v12);
  result = *v19;
  v21 = v19[1];
  *v19 = a1;
  v19[1] = a2;
LABEL_11:
  *v5 = v11;
  return result;
}

uint64_t sub_25F1E70E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_25F2EFFD8(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_25F2EFFD8((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v9 = &v6[3 * v8];
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v5;
  *(a1 + 16) = v6;
}

uint64_t sub_25F1E71B4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_25F2F05C4(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_25F2F05C4((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v11 = &v8[5 * v10];
  v11[4] = v3;
  v11[5] = v4;
  v11[6] = v6;
  v11[7] = v5;
  v11[8] = v7;
  *(a1 + 16) = v8;
  swift_unknownObjectRetain();
}

uint64_t sub_25F1E7304()
{
  v1 = sub_25F1E533C(*(v0 + 16));

  return sub_25F1AC3AC(v1);
}

uint64_t Set.map<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a1;
  v51 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v49 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = v41 - v15;
  v16 = sub_25F305C1C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v54 = v41 - v18;
  v47 = a5;
  v48 = a7;
  v61 = sub_25F304A3C();
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_25F305E7C();
    result = sub_25F3056AC();
    a3 = v56;
    v42 = v57;
    v20 = v58;
    v21 = v59;
    v22 = v60;
  }

  else
  {
    v23 = -1 << *(a3 + 32);
    v24 = *(a3 + 56);
    v42 = a3 + 56;
    v20 = ~v23;
    v25 = -v23;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v22 = v26 & v24;

    v21 = 0;
  }

  v52 = a3;
  v53 = a4 - 8;
  v41[1] = v20;
  v27 = (v20 + 64) >> 6;
  v45 = (v11 + 8);
  if (a3 < 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v28 = v54;
  if (v22)
  {
    v44 = v22;
    v29 = v22;
    v30 = v21;
LABEL_17:
    v43 = v21;
    v22 = (v29 - 1) & v29;
    v35 = *(a3 + 48);
    v32 = *(a4 - 8);
    v33 = v32;
    (*(v32 + 16))(v54, v35 + *(v32 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), a4);
    while (1)
    {
      (*(v33 + 56))(v28, 0, 1, a4);
      v36 = v55;
      v50(v28);
      (*(v32 + 8))(v28, a4);
      v55 = v36;
      if (v36)
      {
        break;
      }

      v37 = v47;
      sub_25F3056FC();
      v38 = a4;
      v39 = v46;
      sub_25F30568C();
      v40 = v39;
      a4 = v38;
      result = (*v45)(v40, v37);
      v21 = v30;
      a3 = v52;
      if ((v52 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_10:
      v31 = sub_25F305E8C();
      v28 = v54;
      if (!v31)
      {
        goto LABEL_21;
      }

      sub_25F30655C();
      swift_unknownObjectRelease();
      v32 = *(a4 - 8);
      v33 = v32;
      v43 = v21;
      v44 = v22;
      v30 = v21;
    }

    sub_25F1BF034();
  }

  else
  {
    v34 = v21;
    while (1)
    {
      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
LABEL_21:
        (*(*(a4 - 8) + 56))(v28, 1, 1, a4);
        sub_25F1BF034();
        return v61;
      }

      v29 = *(v42 + 8 * v30);
      ++v34;
      if (v29)
      {
        v44 = 0;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Set.inserting(_:)()
{
  sub_25F30539C();

  swift_getWitnessTable();
  return sub_25F30567C();
}

uint64_t static StandardErrorCapture.captureStdErr(toFileName:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v23 = a2;
  v24 = a3;
  v6 = sub_25F30441C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F3044DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v19 = [objc_opt_self() defaultManager];
  v20 = [v19 temporaryDirectory];

  sub_25F30449C();
  v27 = a1;
  v28 = v23;
  (*(v7 + 104))(v10, *MEMORY[0x277CC91D0], v6);
  sub_25F1BF118();
  sub_25F3044CC();
  (*(v7 + 8))(v10, v6);
  v21 = *(v12 + 8);
  v21(v16, v11);
  _s20PreviewsFoundationOS20StandardErrorCaptureO010captureStdE05toURL4file4liney0B00J0V_SSSitFZ_0(v18, v24, v25, v26);
  return (v21)(v18, v11);
}

void sub_25F1E7AF4(uint64_t *a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = a1[1];
  if (v6)
  {
    v7 = *a1;
    if (*a1 != v4 || v6 != v5)
    {
      v9 = a1[3];
      v10 = a1[4];
      v11 = a1[2];
      v12 = *a1;
      if ((sub_25F30659C() & 1) == 0)
      {
        if (qword_27FD528B8 != -1)
        {
          swift_once();
        }

        v13 = sub_25F30479C();
        __swift_project_value_buffer(v13, qword_27FD57088);

        v14 = sub_25F30477C();
        v15 = sub_25F305A0C();
        if (os_log_type_enabled(v14, v15))
        {
          v21 = v11;
          v16 = swift_slowAlloc();
          v25 = v10;
          v17 = swift_slowAlloc();
          *&v24 = v17;
          *v16 = 136446722;
          *(v16 + 4) = sub_25F1C53AC(v7, v6, &v24);
          *(v16 + 12) = 2082;
          *(v16 + 14) = sub_25F1C53AC(v21, v9, &v24);
          *(v16 + 22) = 2048;
          *(v16 + 24) = v25;

          _os_log_impl(&dword_25F1A2000, v14, v15, "Already captured stderror to %{public}s from %{public}s:%ld", v16, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25F8D9510](v17, -1, -1);
          MEMORY[0x25F8D9510](v16, -1, -1);
        }

        else
        {
        }
      }
    }

    *a3 = 1;
  }

  else
  {
    v18 = *(a2 + 4);
    v20 = *a2;
    v23 = a2[1];
    v19 = v23;
    v24 = v20;
    *a1 = v4;
    a1[1] = v5;
    *(a1 + 1) = v19;
    a1[4] = v18;
    *a3 = 0;
    sub_25F1E8C70(&v24, v22);
    sub_25F1E8C70(&v23, v22);
  }
}

id sub_25F1E7D34(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25F30446C();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_25F3044DC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_25F3043FC();

    swift_willThrow();
    v9 = sub_25F3044DC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t static StandardErrorCapture.print(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F30462C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD52750 != -1)
  {
    swift_once();
  }

  v9 = qword_27FD54170;
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  v10 = sub_25F3045BC();
  (*(v5 + 8))(v8, v4);
  v11 = [v9 stringFromDate_];

  v12 = sub_25F304E0C();
  v14 = v13;

  v18[0] = v12;
  v18[1] = v14;
  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  MEMORY[0x25F8D7130](a1, a2);
  MEMORY[0x25F8D7130](10, 0xE100000000000000);
  v15 = sub_25F3047CC();
  v16 = sub_25F304EAC();

  fputs((v16 + 32), v15);
}

id sub_25F1E8044()
{
  v0 = sub_25F3046EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_25F3046DC();
  v6 = sub_25F3046CC();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  result = [v5 setFormatOptions_];
  qword_27FD54170 = v5;
  return result;
}

double sub_25F1E8164()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54188, &qword_25F30AA10);
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *(v0 + 44) = 0u;
  qword_27FD54178 = v0;
  return result;
}

BOOL sub_25F1E81AC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_25F30659C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_25F30659C()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

void _s20PreviewsFoundationOS20StandardErrorCaptureO010captureStdE05toURL4file4liney0B00J0V_SSSitFZ_0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_25F30462C();
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F3044DC();
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v11);
  v70 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F304E6C();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v18 = sub_25F3044AC();
  v20 = v19;
  v73 = v18;
  v78[0] = v18;
  v78[1] = v19;
  v78[2] = a2;
  v78[3] = a3;
  v78[4] = a4;
  v21 = qword_27FD52758;

  if (v21 != -1)
  {
    v22 = swift_once();
  }

  v23 = qword_27FD54178;
  MEMORY[0x28223BE20](v22);
  *(&v63 - 2) = v78;
  os_unfair_lock_lock((v23 + 56));
  sub_25F1E8C08((v23 + 16), &v76);
  os_unfair_lock_unlock((v23 + 56));

  if (v76)
  {
  }

  else
  {
    v65 = v8;
    if (qword_27FD528B8 != -1)
    {
      swift_once();
    }

    v24 = sub_25F30479C();
    v25 = __swift_project_value_buffer(v24, qword_27FD57088);

    v26 = sub_25F30477C();
    v27 = sub_25F305A0C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v64 = v25;
      v29 = v28;
      v30 = swift_slowAlloc();
      v76 = v30;
      *v29 = 136315650;
      *(v29 + 4) = sub_25F1C53AC(v73, v20, &v76);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_25F1C53AC(a2, a3, &v76);
      *(v29 + 22) = 2048;
      *(v29 + 24) = a4;
      _os_log_impl(&dword_25F1A2000, v26, v27, "Redirecting stderr to %s, from %s:%ld", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v30, -1, -1);
      MEMORY[0x25F8D9510](v29, -1, -1);
    }

    v31 = objc_opt_self();
    v32 = [v31 processInfo];
    v33 = [v32 processName];

    v34 = sub_25F304E0C();
    v36 = v35;

    v37 = [v31 processInfo];
    LODWORD(v64) = [v37 processIdentifier];

    v38 = [objc_opt_self() defaultManager];
    v39 = v74;
    sub_25F3044BC();
    v40 = sub_25F304DDC();

    LOBYTE(v37) = [v38 fileExistsAtPath_];

    v41 = v65;
    if ((v37 & 1) == 0)
    {
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_25F304E4C();
      sub_25F1BF118();
      sub_25F305D4C();
      (*(v68 + 8))(v17, v69);
    }

    sub_25F1E8C24();
    v42 = v70;
    (*(v71 + 16))(v70, v39, v72);
    v43 = sub_25F1E7D34(v42);

    [v43 seekToEndOfFile];
    v44 = [v43 fileDescriptor];
    v45 = [objc_opt_self() fileHandleWithStandardError];
    v46 = [v45 fileDescriptor];

    if (dup2(v44, v46) == -1)
    {

      v59 = MEMORY[0x25F8D6970](v58);
      v60 = sub_25F30477C();
      v61 = sub_25F305A0C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 67109120;
        *(v62 + 4) = v59;
        _os_log_impl(&dword_25F1A2000, v60, v61, "Failed to dup stderr to logHandle: %d", v62, 8u);
        MEMORY[0x25F8D9510](v62, -1, -1);
      }
    }

    else
    {
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_25F305FAC();
      MEMORY[0x25F8D7130](0x202F2F0A0ALL, 0xE500000000000000);
      if (qword_27FD52750 != -1)
      {
        swift_once();
      }

      v47 = qword_27FD54170;
      v48 = v66;
      _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
      v49 = sub_25F3045BC();
      (*(v67 + 8))(v48, v41);
      v50 = [v47 stringFromDate_];

      v51 = sub_25F304E0C();
      v53 = v52;

      MEMORY[0x25F8D7130](v51, v53);

      MEMORY[0x25F8D7130](0xD00000000000001FLL, 0x800000025F317D20);
      MEMORY[0x25F8D7130](v34, v36);

      MEMORY[0x25F8D7130](0x203A646970202CLL, 0xE700000000000000);
      v75 = v64;
      v54 = sub_25F3064DC();
      MEMORY[0x25F8D7130](v54);

      MEMORY[0x25F8D7130](657952, 0xE300000000000000);
      v55 = sub_25F3047CC();
      v56 = sub_25F304EAC();

      fputs((v56 + 32), v55);

      v57 = sub_25F3047CC();
      fflush(v57);
    }
  }
}

unint64_t sub_25F1E8C24()
{
  result = qword_27FD54180;
  if (!qword_27FD54180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD54180);
  }

  return result;
}

uint64_t Future.publisher()()
{
  v1 = *(*v0 + 80);
  sub_25F1E8DA8();
  sub_25F30484C();

  sub_25F30485C();
  swift_getWitnessTable();
  v2 = sub_25F30486C();

  return v2;
}

unint64_t sub_25F1E8DA8()
{
  result = qword_27FD54190;
  if (!qword_27FD54190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54190);
  }

  return result;
}

uint64_t sub_25F1E8DFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = a1;
  v6[4] = a2;

  Future.observeFinish(_:)(sub_25F1E9298, v6);
}

uint64_t sub_25F1E8EAC(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t a4)
{
  v26 = a2;
  sub_25F1E8DA8();
  v6 = sub_25F30678C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v25 - v10);
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FutureTermination();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v25 - v18);
  (*(v20 + 16))(&v25 - v18, a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *v19;
      *v11 = *v19;
      swift_storeEnumTagMultiPayload();
      v23 = v22;
      v26(v11);
    }

    else
    {
      *v11 = 0;
      swift_storeEnumTagMultiPayload();
      v26(v11);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    (*(v12 + 32))(v15, v19, a4);
    (*(v12 + 16))(v11, v15, a4);
    swift_storeEnumTagMultiPayload();
    v26(v11);
    (*(v7 + 8))(v11, v6);
    return (*(v12 + 8))(v15, a4);
  }
}

uint64_t sub_25F1E91AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25F1E91FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25F1E9250(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25F1E9268(void *result, int a2)
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

uint64_t sub_25F1E92C4()
{
  result = sub_25F1E92F8(0x5054585F5444, 0xE600000000000000);
  byte_27FD54198 = result & 1;
  return result;
}

uint64_t sub_25F1E92F8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 environment];

  v6 = sub_25F304A6C();
  if (*(v6 + 16) && (v7 = sub_25F219234(a1, a2), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];

    v14[0] = v11;
    v14[1] = v10;
    sub_25F1E9530(v14, &v13);

    return v13;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_25F1E9438()
{
  result = sub_25F1E92F8(18755, 0xE200000000000000);
  byte_27FD54199 = result & 1;
  return result;
}

uint64_t sub_25F1E9488()
{
  result = sub_25F1E92F8(0xD00000000000001FLL, 0x800000025F317D40);
  byte_27FD5419A = result & 1;
  return result;
}

uint64_t sub_25F1E94E8(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_25F1E9530@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (sub_25F304BFC() == 1702195828 && v5 == 0xE400000000000000)
  {
    goto LABEL_14;
  }

  v7 = sub_25F30659C();

  if (v7)
  {
LABEL_15:
    result = 1;
    goto LABEL_16;
  }

  if (sub_25F304BFC() == 7562617 && v8 == 0xE300000000000000)
  {
LABEL_14:

    goto LABEL_15;
  }

  v10 = sub_25F30659C();

  if ((v10 & 1) != 0 || v3 == 49 && v4 == 0xE100000000000000)
  {
    goto LABEL_15;
  }

  result = sub_25F30659C();
LABEL_16:
  *a2 = result & 1;
  return result;
}

uint64_t isAutomation.getter()
{
  if (qword_281561A58 != -1)
  {
    swift_once();
  }

  if (byte_27FD54198)
  {
    return 1;
  }

  if (qword_281561A60 != -1)
  {
    swift_once();
  }

  return byte_27FD54199;
}

void catchAndRethrow<A>(_:errorHandler:)(void (*a1)(void), uint64_t a2, void (*a3)(void *))
{
  a1();
  if (v3)
  {
    v5 = v3;
    a3(v3);
  }
}

uint64_t Error.future<A>()(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_25F30650C();
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

  type metadata accessor for Future();
  v10 = sub_25F1C15B0("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Error+UVAdditions.swift", 129, 2, 31, 16, "future()", 8, 2, v8);

  return v10;
}

uint64_t DiagnosticsReporter.__allocating_init(storeArchiveAt:)(uint64_t a1)
{
  v2 = sub_25F3044DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DiagnosticsReporter.DiagnosticsURL();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = swift_allocObject();
  sub_25F1E9D64(a1, v10);
  v12 = 0;
  v13 = 0;
  if ((*(v3 + 48))(v10, 1, v2) != 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v12 = sub_25F3044BC();
    v13 = v14;
    (*(v3 + 8))(v6, v2);
  }

  swift_beginAccess();
  v22 = qword_27FD57C28;
  v21 = 0;
  v15 = type metadata accessor for DiagnosticsCollector(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = DiagnosticsCollector.init(options:simulatorDiagnosticsDeviceSet:outputDirectory:prefix:suffix:)(&v22, &v21, v12, v13, 0, 0, 0, 0);
  sub_25F1E9FCC(a1);
  *(v11 + 16) = v18;
  return v11;
}

uint64_t DiagnosticsReporter.init(storeArchiveAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F3044DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DiagnosticsReporter.DiagnosticsURL();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F1E9D64(a1, v12);
  v13 = 0;
  v14 = 0;
  if ((*(v5 + 48))(v12, 1, v4) != 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    v13 = sub_25F3044BC();
    v14 = v15;
    (*(v5 + 8))(v8, v4);
  }

  swift_beginAccess();
  v23 = qword_27FD57C28;
  v22 = 0;
  v16 = type metadata accessor for DiagnosticsCollector(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = DiagnosticsCollector.init(options:simulatorDiagnosticsDeviceSet:outputDirectory:prefix:suffix:)(&v23, &v22, v13, v14, 0, 0, 0, 0);
  sub_25F1E9FCC(a1);
  *(v2 + 16) = v19;
  return v2;
}

uint64_t type metadata accessor for DiagnosticsReporter.DiagnosticsURL()
{
  result = qword_27FD541A0;
  if (!qword_27FD541A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F1E9D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiagnosticsReporter.DiagnosticsURL();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1E9DC8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock(v1 + 8);
  sub_25F2B23E4(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 8);
  return v3;
}

void sub_25F1E9E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = *(*(v5 + 16) + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock((v11 + 32));
  if (v10)
  {
    v12 = *(v11 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 24) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v12 + 2);

      v18 = sub_25F2F14F4(0, v17 + 1, 1, v12);
      v19 = *(v11 + 24);
      *(v11 + 24) = v18;

      v12 = *(v11 + 24);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_25F2F14F4((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[32 * v15];
    *(v16 + 4) = a1;
    *(v16 + 5) = a2;
    *(v16 + 6) = a3;
    *(v16 + 7) = a4;
    *(v11 + 24) = v12;
  }

  else
  {

    sub_25F1EA028(0, 0, a1, a2, a3, a4);
  }

  os_unfair_lock_unlock((v11 + 32));
}

uint64_t DiagnosticsReporter.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DiagnosticsReporter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F1E9FCC(uint64_t a1)
{
  v2 = type metadata accessor for DiagnosticsReporter.DiagnosticsURL();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1EA028(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v19 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 3) >> 1)
  {
    if (v9 <= v14)
    {
      v21 = v14;
    }

    else
    {
      v21 = v9;
    }

    v8 = sub_25F2F14F4(isUniquelyReferenced_nonNull_native, v21, 1, v8);
    *v6 = v8;
  }

  result = sub_25F1EA234(v10, a2, 1, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

uint64_t sub_25F1EA1DC()
{
  v0 = sub_25F3044DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

char *sub_25F1EA234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *v7;
  v16 = (v15 + 32 + 32 * a1);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v8);
  v19 = a3 - v8;
  if (v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);
  v18 = __OFSUB__(v20, a2);
  v21 = v20 - a2;
  if (v18)
  {
    goto LABEL_21;
  }

  result = &v16[4 * a3];
  v22 = (v15 + 32 + 32 * a2);
  if (result != v22 || result >= &v22[32 * v21])
  {
    result = memmove(result, v22, 32 * v21);
  }

  v24 = *(v15 + 16);
  v18 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v15 + 16) = v25;
LABEL_13:
  if (a3 > 0)
  {
    *v16 = a4;
    v16[1] = a5;
    v16[2] = a6;
    v16[3] = a7;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:

    __break(1u);
    return result;
  }
}

unint64_t sub_25F1EA36C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_25F1EA444(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_25F2F084C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_25F1EA36C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t StaticBuiltProductPathProvider.paths.getter()
{
  v2 = *v0;
  v5 = *(v1 + 8);

  return v5(v3);
}

uint64_t sub_25F1EA574()
{
  v2 = *v0;
  v5 = *(v1 + 8);

  return v5(v3);
}

uint64_t dispatch thunk of BuiltProductPathProvider.paths.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1EA6F4;

  return v9(a1, a2);
}

uint64_t sub_25F1EA6F4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_25F1EA800()
{
  v0 = sub_25F30475C();
  __swift_allocate_value_buffer(v0, qword_27FD541B0);
  __swift_project_value_buffer(v0, qword_27FD541B0);
  return sub_25F1EA84C();
}

uint64_t sub_25F1EA84C()
{
  v0 = sub_25F30479C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_25F304DDC();
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    sub_25F30478C();
    return sub_25F30473C();
  }

  else
  {

    return MEMORY[0x282200CF8]();
  }
}

uint64_t static OSSignposter.ultraviolet.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52768 != -1)
  {
    swift_once();
  }

  v2 = sub_25F30475C();
  v3 = __swift_project_value_buffer(v2, qword_27FD541B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

PreviewsFoundationOS::VersionNumber __swiftcall VersionNumber.init(major:minor:update:)(Swift::Int major, Swift::Int minor, Swift::Int update)
{
  *v3 = major;
  v3[1] = minor;
  v3[2] = update;
  result.update = update;
  result.minor = minor;
  result.major = major;
  return result;
}

PreviewsFoundationOS::VersionNumber_optional __swiftcall VersionNumber.init(_:)(Swift::String a1)
{
  v43 = v1;
  v44 = a1;
  sub_25F1BF118();
  v2 = sub_25F305CEC();

  v7 = *(v2 + 16);
  if (!v7)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_76:
    v38 = *(v2 + 16);

    if (v38 != *(v9 + 16) || (v38 - 1) >= 3)
    {

      *v43 = 0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      *(v43 + 24) = 1;
      goto LABEL_93;
    }

    v40 = *(v9 + 32);
    if (v38 == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(v9 + 40);
      if (v38 == 3)
      {
        v42 = *(v9 + 48);
LABEL_87:

        *v43 = v40;
        *(v43 + 8) = v41;
        *(v43 + 16) = v42;
        *(v43 + 24) = 0;
        goto LABEL_93;
      }
    }

    v42 = 0;
    goto LABEL_87;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v8 < *(v2 + 16))
  {
    v10 = (v2 + 32 + 16 * v8);
    v11 = *v10;
    v12 = v10[1];
    ++v8;
    v13 = HIBYTE(v12) & 0xF;
    v4 = v11 & 0xFFFFFFFFFFFFLL;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {
      goto LABEL_66;
    }

    if ((v12 & 0x1000000000000000) == 0)
    {
      if ((v12 & 0x2000000000000000) != 0)
      {
        v44._countAndFlagsBits = v11;
        v44._object = (v12 & 0xFFFFFFFFFFFFFFLL);
        if (v11 == 43)
        {
          if (!v13)
          {
            goto LABEL_89;
          }

          if (--v13)
          {
            v16 = 0;
            v26 = &v44._countAndFlagsBits + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v13)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v11 == 45)
        {
          if (!v13)
          {
            goto LABEL_91;
          }

          if (--v13)
          {
            v16 = 0;
            v20 = &v44._countAndFlagsBits + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v13)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v13)
        {
          v16 = 0;
          v31 = &v44;
          while (1)
          {
            v32 = LOBYTE(v31->_countAndFlagsBits) - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            v31 = (v31 + 1);
            if (!--v13)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else
      {
        if ((v11 & 0x1000000000000000) != 0)
        {
          isUniquelyReferenced_nonNull_native = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = sub_25F30605C();
        }

        v15 = *isUniquelyReferenced_nonNull_native;
        if (v15 == 43)
        {
          if (v4 < 1)
          {
            goto LABEL_92;
          }

          v13 = v4 - 1;
          if (v4 != 1)
          {
            v16 = 0;
            if (!isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_56;
            }

            v23 = (isUniquelyReferenced_nonNull_native + 1);
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              ++v23;
              if (!--v13)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v15 == 45)
        {
          if (v4 < 1)
          {
            goto LABEL_90;
          }

          v13 = v4 - 1;
          if (v4 != 1)
          {
            v16 = 0;
            if (isUniquelyReferenced_nonNull_native)
            {
              v17 = (isUniquelyReferenced_nonNull_native + 1);
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  goto LABEL_64;
                }

                v19 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_64;
                }

                v16 = v19 - v18;
                if (__OFSUB__(v19, v18))
                {
                  goto LABEL_64;
                }

                ++v17;
                if (!--v13)
                {
                  goto LABEL_65;
                }
              }
            }

LABEL_56:
            LOBYTE(v13) = 0;
LABEL_65:
            if ((v13 & 1) == 0)
            {
              goto LABEL_69;
            }

            goto LABEL_66;
          }
        }

        else
        {
          if (!v4)
          {
            goto LABEL_64;
          }

          v16 = 0;
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_56;
          }

          while (1)
          {
            v29 = *isUniquelyReferenced_nonNull_native - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++isUniquelyReferenced_nonNull_native;
            if (!--v4)
            {
              goto LABEL_56;
            }
          }
        }
      }

LABEL_64:
      v16 = 0;
      LOBYTE(v13) = 1;
      goto LABEL_65;
    }

    v16 = sub_25F2F1970(v11, v12, 10);
    v35 = v34;

    if ((v35 & 1) == 0)
    {
LABEL_69:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_25F2F070C(0, *(v9 + 16) + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v37 = *(v9 + 16);
      v36 = *(v9 + 24);
      if (v37 >= v36 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_25F2F070C((v36 > 1), v37 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      *(v9 + 16) = v37 + 1;
      *(v9 + 8 * v37 + 32) = v16;
    }

LABEL_66:
    if (v8 == v7)
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  result.value.update = v5;
  result.value.minor = v4;
  result.value.major = isUniquelyReferenced_nonNull_native;
  result.is_nil = v6;
  return result;
}

__n128 static VersionNumber.current.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  [v2 operatingSystemVersion];
  v3 = v7;
  v5 = v6;

  result = v5;
  *a1 = v5;
  a1[1].n128_u64[0] = v3;
  return result;
}

uint64_t VersionNumber.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v6 = *v0;
  v7 = sub_25F3064DC();
  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  v3 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v3);

  result = v7;
  if (v2)
  {
    MEMORY[0x25F8D7130](46, 0xE100000000000000);
    v5 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v5);

    return v7;
  }

  return result;
}

uint64_t VersionNumber.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x25F8D88E0](*v0);
  MEMORY[0x25F8D88E0](v1);
  return MEMORY[0x25F8D88E0](v2);
}

uint64_t VersionNumber.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  MEMORY[0x25F8D88E0](v2);
  MEMORY[0x25F8D88E0](v3);
  return sub_25F30676C();
}

uint64_t sub_25F1EB190()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  MEMORY[0x25F8D88E0](v2);
  MEMORY[0x25F8D88E0](v3);
  return sub_25F30676C();
}

uint64_t sub_25F1EB1FC()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x25F8D88E0](*v0);
  MEMORY[0x25F8D88E0](v1);
  return MEMORY[0x25F8D88E0](v2);
}

uint64_t sub_25F1EB244()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  MEMORY[0x25F8D88E0](v2);
  MEMORY[0x25F8D88E0](v3);
  return sub_25F30676C();
}

BOOL sub_25F1EB2B0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_25F1EB2EC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_25F1EB328(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s20PreviewsFoundationOS13VersionNumberV1loiySbAC_ACtFZ_0(&v5, &v7);
}

BOOL _s20PreviewsFoundationOS13VersionNumberV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

unint64_t sub_25F1EB3E0()
{
  result = qword_27FD541C8;
  if (!qword_27FD541C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD541C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VersionNumber(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for VersionNumber(uint64_t result, int a2, int a3)
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

uint64_t sub_25F1EB50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a3(0);
  a5[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v10 = *(*(a2 - 8) + 32);

  return v10(boxed_opaque_existential_1, a1, a2);
}

uint64_t sub_25F1EB5C8@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = v4[3];
  v13 = __swift_project_boxed_opaque_existential_1(v4, v12);
  sub_25F1EB6AC(v13, v12, a3, v11);
  return (*(*(a1 - 8) + 32))(a4, v11, a1);
}

uint64_t sub_25F1EB6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  result = a3(0);
  if (result == a2)
  {
    v8 = *(*(result - 8) + 16);

    return v8(a4, a1, result);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SendableHashableErasingBox.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  a4[3] = type metadata accessor for SendableHashableErasingBox.ValueWrapper();
  a4[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v11 = *(v8 + 32);
  v11(boxed_opaque_existential_1, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_25F30677C();
  MEMORY[0x25F8D88E0](a2);
  sub_25F304BDC();
  a4[5] = sub_25F30675C();
  v11((&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0)), a1, a2);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (v11)(v13 + v12, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[6] = sub_25F1EBB74;
  a4[7] = v13;
  return result;
}

uint64_t sub_25F1EB920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25[-1] - v11;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v25[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 16))(v25, v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54358, &unk_25F30B040);
  v19 = swift_dynamicCast();
  v20 = *(v13 + 56);
  if (v19)
  {
    v20(v12, 0, 1, a3);
    (*(v13 + 32))(v16, v12, a3);
    v21 = *(a4 + 8);
    v22 = sub_25F304DCC();
    (*(v13 + 8))(v16, a3);
  }

  else
  {
    v20(v12, 1, 1, a3);
    (*(v8 + 8))(v12, v7);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t static SendableHashableErasingBox.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  return (*(a1 + 48))(a2) & 1;
}

uint64_t SendableHashableErasingBox.forceUnwrap<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SendableHashableErasingBox.ValueWrapper();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = v2[3];
  v10 = __swift_project_boxed_opaque_existential_1(v2, v9);
  sub_25F1EBD04(v10, v9, v8);
  return (*(*(a1 - 8) + 32))(a2, v8, a1);
}

uint64_t sub_25F1EBD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = type metadata accessor for SendableHashableErasingBox.ValueWrapper();
  if (result == a2)
  {
    v7 = *(*(result - 8) + 16);

    return v7(a3, a1, result);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F1EBD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  *(a2 + 24) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v4 = *(*(v6 - 8) + 16);

  return v4(boxed_opaque_existential_1, v2);
}

uint64_t sub_25F1EBE28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_25F304BDC();
}

uint64_t sub_25F1EBE34(uint64_t a1)
{
  sub_25F30671C();
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t sub_25F1EBE88(uint64_t a1, uint64_t a2)
{
  sub_25F30671C();
  sub_25F1EBE28(v4, a2);
  return sub_25F30676C();
}

uint64_t SendableHashableErasingBox.hashValue.getter()
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](*(v0 + 40));
  return sub_25F30676C();
}

uint64_t sub_25F1EBF1C()
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](*(v0 + 40));
  return sub_25F30676C();
}

uint64_t sub_25F1EBF8C()
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](*(v0 + 40));
  return sub_25F30676C();
}

unint64_t sub_25F1EBFD0()
{
  result = qword_27FD541D0[0];
  if (!qword_27FD541D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD541D0);
  }

  return result;
}

uint64_t sub_25F1EC024(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  return (*(a1 + 48))(a2) & 1;
}

uint64_t sub_25F1EC07C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25F1EC0C4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_25F1EC12C(uint64_t a1)
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

uint64_t sub_25F1EC1B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t SubscriberCollection.init()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25F1E6B9C();

  return OrderedDictionary.init()(&type metadata for Identifier, a1, v4, a2);
}

double static SubscriberCollection.add(callsite:_:modify:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t (*)(uint64_t a1))@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v12 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v13 = *(v12 + 2);
  *(v12 + 2) = v13 + 1;
  os_unfair_lock_unlock(v12 + 6);
  MEMORY[0x28223BE20](v14);
  v18 = a5;
  v19 = v13;
  v20 = a2;
  a3(sub_25F1ED1E4);
  v15 = a1[1];
  v21[0] = *a1;
  v21[1] = v15;
  v22[0] = a1[2];
  *(v22 + 9) = *(a1 + 41);
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = v13;

  return CancellationToken.init(callsite:didCancel:)(v21, sub_25F1ED1F0, v16, a6);
}

uint64_t sub_25F1EC3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25F305C1C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = *(a4 - 8);
  (*(v11 + 16))(&v14 - v9, a3, a4);
  (*(v11 + 56))(v10, 0, 1, a4);
  v15 = a2;
  sub_25F1E6B9C();
  v12 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.subscript.setter(v10, &v15, v12);
}

uint64_t sub_25F1EC4D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F305C1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v11 = a2;
  sub_25F1E6B9C();
  v8 = type metadata accessor for OrderedDictionary();
  OrderedDictionary.removeValue(forKey:)(&v11, v8, v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t static SubscriberCollection.add<A>(callsite:_:at:of:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = (*a3 + *MEMORY[0x277D84568]);
  v11 = *v10;
  v12 = v10[1];
  v13 = MEMORY[0x277D84F78];
  v14 = default argument 1 of captureWeak<A, B, C>(_:deinitialized:toInvoke:)(*v10, v12, MEMORY[0x277D84F78] + 8);
  v16 = v15;

  v17 = captureWeak<A, B, C>(_:deinitialized:toInvoke:)(a4, v14, v16, sub_25F1ED244, a3, v11, v12, v13 + 8);
  v19 = v18;

  v20 = swift_allocObject();
  v21 = *(v12 + 16);
  v20[2] = v21;
  v20[3] = v11;
  v20[4] = v17;
  v20[5] = v19;
  static SubscriberCollection.add(callsite:_:modify:)(a1, a2, sub_25F1ED24C, v20, v21, a5);
}

uint64_t sub_25F1EC730(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = swift_allocObject();
  v9 = (v7 + *MEMORY[0x277D84568]);
  v8[2] = *(v9[1] + 16);
  v8[3] = *v9;
  v8[4] = a2;
  v8[5] = a3;
  v14 = a1;
  swift_unknownObjectRetain();
  v10 = swift_modifyAtReferenceWritableKeyPath();
  a2(v11);
  v10(v13, 0);

  return swift_unknownObjectRelease();
}

uint64_t SubscriberCollection.all.getter(uint64_t a1)
{
  v5 = *v1;
  v2 = *(a1 + 16);
  sub_25F1E6B9C();
  v3 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.lazyValues.getter(v3);
}

uint64_t SubscriberCollection.notifyAll(closure:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = (&v39 - v13);
  v48 = sub_25F305C1C();
  v44 = *(v48 - 8);
  v14 = *(v44 + 64);
  v15 = MEMORY[0x28223BE20](v48);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = v3[1];
  v21 = v4;
  *&v52 = *v3;
  *(&v52 + 1) = v20;
  v53 = 0;
  sub_25F1E6B9C();
  v22 = type metadata accessor for OrderedDictionary();
  v49 = (v5 + 32);
  v50 = v22;
  v40 = (v9 + 32);
  v23 = (v9 + 56);
  v24 = (v44 + 32);
  v25 = (v9 + 48);
  v44 = v5 + 8;

  v26 = 0;
  v41 = v17;
  while (1)
  {
    if (v26 == OrderedDictionary.endIndex.getter(v50))
    {
      v27 = 1;
      goto LABEL_6;
    }

    v28 = v25;
    v29 = v24;
    v30 = v23;
    v51 = v52;
    v31 = v21;
    v32 = *(TupleTypeMetadata2 + 48);
    v33 = v42;
    OrderedDictionary.subscript.getter(v42, v42 + v32, v26, v50);
    v34 = v43;
    *v43 = *v33;
    v35 = v33 + v32;
    v21 = v31;
    v17 = v41;
    (*v49)(&v34[*(TupleTypeMetadata2 + 48)], v35, v31);
    result = (*v40)(v17, v34, TupleTypeMetadata2);
    if (__OFADD__(v26++, 1))
    {
      break;
    }

    v27 = 0;
    v53 = v26;
    v23 = v30;
    v24 = v29;
    v25 = v28;
LABEL_6:
    (*v23)(v17, v27, 1, TupleTypeMetadata2);
    (*v24)(v19, v17, v48);
    if ((*v25)(v19, 1, TupleTypeMetadata2) == 1)
    {
    }

    v38 = v45;
    (*v49)(v45, &v19[*(TupleTypeMetadata2 + 48)], v21);
    v46(v38);
    (*v44)(v38, v21);
  }

  __break(1u);
  return result;
}

uint64_t SubscriberCollection.isEmpty.getter(uint64_t a1)
{
  v5 = *v1;
  v2 = *(a1 + 16);
  sub_25F1E6B9C();
  v3 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.isEmpty.getter(v3) & 1;
}

uint64_t SubscriberCollection.count.getter(uint64_t a1)
{
  v5 = *v1;
  v2 = *(a1 + 16);
  sub_25F1E6B9C();
  v3 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.count.getter(v3);
}

Swift::Void __swiftcall SubscriberCollection.removeAll()()
{
  v2 = *(v0 + 16);
  v3 = sub_25F1E6B9C();
  OrderedDictionary.init()(&type metadata for Identifier, v2, v3, &v6);
  v5 = *v1;
  v4 = v1[1];

  *v1 = v6;
}

uint64_t SubscriberCollection.sort(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v8[2] = *(a3 + 16);
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = a1;
  v8[6] = a2;
  sub_25F1E6B9C();
  v6 = type metadata accessor for OrderedDictionary();

  OrderedDictionary.sort(using:)(sub_25F1ED2A4, v8, v6);
}

uint64_t sub_25F1ECE4C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7)
{
  v34[1] = a6;
  v35 = a5;
  v12 = sub_25F305C1C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v39 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v34 - v17;
  v19 = *(a7 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v16);
  v34[0] = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v34 - v23;
  v25 = *a1;
  v36 = *a2;
  v37 = a3;
  v41 = a3;
  v42 = a4;
  v38 = a4;
  v40 = v25;
  sub_25F1E6B9C();
  v26 = type metadata accessor for OrderedDictionary();
  OrderedDictionary.subscript.getter(&v40, v26);
  v27 = v19[6];
  result = v27(v18, 1, a7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29 = v19[4];
    v29(v24, v18, a7);
    v41 = v37;
    v42 = v38;
    v40 = v36;
    v30 = v39;
    OrderedDictionary.subscript.getter(&v40, v26);
    result = v27(v30, 1, a7);
    if (result != 1)
    {
      v31 = v34[0];
      v29(v34[0], v30, a7);
      v32 = v35(v24, v31);
      v33 = v19[1];
      v33(v31, a7);
      v33(v24, a7);
      return v32 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t SubscriberCollection<A>.notify()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    while (v5 < *(v2 + 16))
    {
      if (!*(v1 + 16))
      {
        goto LABEL_11;
      }

      result = sub_25F21FC78(*(v2 + 32 + 8 * v5));
      if ((v6 & 1) == 0)
      {
        goto LABEL_12;
      }

      v7 = *(v1 + 56) + 16 * result;
      v9 = *v7;
      v8 = *(v7 + 8);
      ++v5;

      v9(v10);

      if (v3 == v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_7:
  }

  return result;
}

uint64_t sub_25F1ED1F0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v5[2] = v0[2];
  v5[3] = v3;
  return v1(sub_25F1ED308, v5);
}

uint64_t sub_25F1ED24C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  v6[1] = *(v2 + 16);
  v7 = a1;
  v8 = a2;
  return v4(sub_25F1CDB58, v6);
}

uint64_t sub_25F1ED2B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Callsite.init(_:_:_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t Callsite.file.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t Callsite.function.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  return result;
}

unint64_t static Callsite.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  if ((sub_25F1ED400(*a2, *(a2 + 8), *(a2 + 16), *a1, *(a1 + 8), *(a1 + 16)) & 1) == 0)
  {
    return 0;
  }

  return sub_25F1ED400(v6, v7, v8, v3, v4, v5);
}

unint64_t sub_25F1ED400(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, size_t __n, unint64_t a6)
{
  v6 = a6;
  v8 = a3;
  v9 = a6 | a3;
  if ((a6 | a3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__n != a2)
  {
    return 0;
  }

  a6 = a4;
  a3 = result;
  if ((v6 & 1) == 0)
  {
    if (a4)
    {
      sub_25F1ED600(__n, a4, result, v8, v6, &v18);
      return v18;
    }

    goto LABEL_15;
  }

  v9 = HIDWORD(a4);
  if (HIDWORD(a4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a4 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  v9 = a4 >> 16;
  if (a4 >> 16 > 0x10)
  {
    goto LABEL_17;
  }

  if (a4 > 0x7F)
  {
LABEL_18:
    v11 = (a6 & 0x3F) << 8;
    v12 = (a6 >> 6) + v11 + 33217;
    v13 = (v11 | (a6 >> 6) & 0x3F) << 8;
    v14 = (a6 >> 18) + ((v13 | (a6 >> 12) & 0x3F) << 8) - 2122219023;
    v15 = (a6 >> 12) + v13 + 8487393;
    if (v9)
    {
      v10 = v14;
    }

    else
    {
      v10 = v15;
    }

    if (a6 < 0x800)
    {
      v10 = v12;
    }

    goto LABEL_12;
  }

  v10 = a4 + 1;
LABEL_12:
  v17 = (v10 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v10) >> 3))));
  sub_25F1ED600(__n, &v17, a3, v8, v6, &v16);
  return v16;
}

unint64_t sub_25F1ED550(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  if ((sub_25F1ED400(*a2, *(a2 + 8), *(a2 + 16), *a1, *(a1 + 8), *(a1 + 16)) & 1) == 0)
  {
    return 0;
  }

  return sub_25F1ED400(v6, v7, v8, v3, v4, v5);
}

uint64_t sub_25F1ED600@<X0>(size_t __n@<X6>, uint64_t result@<X0>, unint64_t a3@<X2>, char a4@<W4>, char a5@<W7>, BOOL *a6@<X8>)
{
  if ((a4 & 1) == 0)
  {
    if (a3)
    {
      if (!result)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if ((a5 & 1) == 0)
      {
        p_s2 = a3;
LABEL_14:
        result = memcmp(result, p_s2, __n);
        *a6 = result == 0;
        return result;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = HIDWORD(a3);
  if (HIDWORD(a3))
  {
    goto LABEL_16;
  }

  if ((a3 & 0xFFFFF800) == 0xD800)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = a3 >> 16;
  if (a3 >> 16 > 0x10)
  {
    goto LABEL_18;
  }

  if (a3 <= 0x7F)
  {
    v9 = a3 + 1;
    goto LABEL_11;
  }

LABEL_19:
  v10 = (a3 & 0x3F) << 8;
  v11 = (a3 >> 6) + v10 + 33217;
  v12 = (v10 | (a3 >> 6) & 0x3F) << 8;
  v13 = (a3 >> 18) + ((v12 | (a3 >> 12) & 0x3F) << 8) - 2122219023;
  v14 = (a3 >> 12) + v12 + 8487393;
  if (v6)
  {
    v9 = v13;
  }

  else
  {
    v9 = v14;
  }

  if (a3 < 0x800)
  {
    v9 = v11;
  }

LABEL_11:
  __s2 = (v9 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v9) & 0x18)));
  if (result)
  {
    if ((a5 & 1) == 0)
    {
      p_s2 = &__s2;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t Callsite.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 16);
  v8 = *(v0 + 56);
  sub_25F305FAC();
  sub_25F1ED8D0();
  v9 = sub_25F305B8C();
  v10 = [v9 lastPathComponent];

  v11 = sub_25F304E0C();

  MEMORY[0x25F8D7130](58, 0xE100000000000000);
  v12 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v12);

  MEMORY[0x25F8D7130](58, 0xE100000000000000);
  v13 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v13);

  MEMORY[0x25F8D7130](0x206E696874697720, 0xE800000000000000);
  v14 = sub_25F305FFC();
  MEMORY[0x25F8D7130](v14);

  return v11;
}

unint64_t sub_25F1ED8D0()
{
  result = qword_27FD543E0[0];
  if (!qword_27FD543E0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD543E0);
  }

  return result;
}

__n128 CallsiteError.callsite.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 32);
  result = *(v1 + 41);
  *(a1 + 41) = result;
  return result;
}

uint64_t CallsiteError.init(underlying:callsite:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = a2[1];
  *a4 = *a2;
  a4[1] = v7;
  a4[2] = a2[2];
  *(a4 + 41) = *(a2 + 41);
  v8 = type metadata accessor for CallsiteError();
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 36);

  return v9(v10, a1, a3);
}

uint64_t CallsiteError.isPotentialCrash.getter(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = v1 + *(a1 + 36);
  Error.humanReadable.getter(*(a1 + 16), v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  LOBYTE(v4) = (*(v5 + 96))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4 & 1;
}

uint64_t sub_25F1EDAD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.errorDescription.getter(a1, WitnessTable);
}

uint64_t sub_25F1EDB24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.description.getter(a1, WitnessTable);
}

uint64_t Error.trackingCallsite(callsite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[1];
  v22 = *v8;
  v23 = v11;
  v24[0] = v8[2];
  *(v24 + 9) = *(v8 + 41);
  Error.humanReadable.getter(v12, v25);
  v14 = v26;
  v13 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v6 + 16))(v10, v3, a2);
  v15 = type metadata accessor for CallsiteError();
  swift_getWitnessTable();
  v16 = swift_allocError();
  v18 = v23;
  v17 = v24[0];
  v19 = v22;
  *(v20 + 41) = *(v24 + 9);
  v20[1] = v18;
  v20[2] = v17;
  *v20 = v19;
  (*(v6 + 32))(v20 + *(v15 + 36), v10, a2);
  HumanReadableError.withUnderlying(_:)(v16, v14, v13, a3);

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t Error.isCancelationError.getter(uint64_t a1)
{
  v3 = sub_25F30543C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = *(v9 + 16);
  v14(&v18 - v15, v1, a1);
  if (swift_dynamicCast())
  {
    (*(v4 + 8))(v8, v3);
    return 1;
  }

  else
  {
    v14(v13, v1, a1);
    result = swift_dynamicCast();
    if (result)
    {
      v17 = result;

      return v17;
    }
  }

  return result;
}

uint64_t sub_25F1EDF28(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
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

uint64_t sub_25F1EDFC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F1EDFE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t sub_25F1EE02C(uint64_t a1)
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

uint64_t sub_25F1EE0AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 57) & ~v6);
  }

  v8 = ((v6 + 57) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 57) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_25F1EE20C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 57) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 57] & ~v8;

  v18(v19);
}

uint64_t sub_25F1EE430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F1EE478(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

Swift::String __swiftcall lengthPrefixedNameSuitableForMangledSymbolName(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = _s20PreviewsFoundationOS8PunycodeO6encode6stringSSSgSS_tFZ_0(a1._countAndFlagsBits, a1._object);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
  }

  else
  {

    v5 = countAndFlagsBits;
    v6 = object;
  }

  v7 = sub_25F30505C();
  if (v7)
  {
    v8 = 95;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = 0xE100000000000000;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = sub_25F304F2C();
  v11 = sub_25F304F2C();
  v12 = v11 < v10;
  if (v11 >= v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = 12336;
  }

  if (v12)
  {
    v14 = 0xE200000000000000;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  MEMORY[0x25F8D7130](v13, v14);

  sub_25F304F2C();
  v15 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v15);

  MEMORY[0x25F8D7130](v8, v9);

  MEMORY[0x25F8D7130](v5, v6);

  v16 = 0;
  v17 = 0xE000000000000000;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

Swift::tuple_module_String_name_String_optional __swiftcall demangleSimpleType(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_25F305BCC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v9 = sub_25F304DDC();
  v10 = [v8 initWithString_];

  v11 = v4[13];
  v42 = *MEMORY[0x277CC9E90];
  v41 = v11;
  v11(v7);
  sub_25F305BDC();
  v13 = v12;
  v14 = v4[1];
  v14(v7, v3);
  if (v13)
  {

LABEL_15:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_26;
  }

  sub_25F305BAC();
  v39 = countAndFlagsBits;
  v40 = object;
  if (sub_25F30509C() == 95 && v15 == 0xE100000000000000)
  {

    goto LABEL_10;
  }

  v17 = sub_25F30659C();

  if (v17)
  {
LABEL_10:
    sub_25F305BBC();
  }

  sub_25F305BAC();
  v18 = sub_25F304F5C();
  v19 = sub_25F305BAC();
  if (v18 >> 14 < v19 >> 14)
  {
    __break(1u);
    goto LABEL_25;
  }

  v23 = sub_25F3050CC();
  v24 = MEMORY[0x25F8D7070](v23);
  v26 = v25;

  v38 = v24;
  sub_25F305B9C();
  if (!v27 || (, v41(v7, v42, v3), sub_25F305BDC(), v29 = v28, v14(v7, v3), (v29 & 1) != 0))
  {

    goto LABEL_15;
  }

  sub_25F305BAC();
  if (sub_25F30509C() == 95 && v30 == 0xE100000000000000)
  {
  }

  else
  {
    v31 = sub_25F30659C();

    if ((v31 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_25F305BBC();

LABEL_22:
  sub_25F305BAC();
  v32 = sub_25F304F5C();
  v19 = sub_25F305BAC();
  if (v32 >> 14 < v19 >> 14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = sub_25F3050CC();
  v34 = MEMORY[0x25F8D7070](v33);
  v36 = v35;

  v22 = v36;
  v21 = v34;
  v20 = v26;
  v19 = v38;
LABEL_26:
  result.value.name._object = v22;
  result.value.name._countAndFlagsBits = v21;
  result.value.module._object = v20;
  result.value.module._countAndFlagsBits = v19;
  return result;
}

uint64_t OrderedDictionary.subscript.getter(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return sub_25F304B8C();
}

uint64_t OrderedDictionary.subscript.setter(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - v14;
  v16 = *(v6 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v8[2];
  v25 = a1;
  v20(v15, a1, v7);
  if ((*(v16 + 48))(v15, 1, v6) == 1)
  {
    v21 = v8[1];
    v21(v15, v7);
    OrderedDictionary.removeValue(forKey:)(a2, a3, v12);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v21(v25, v7);
    return (v21)(v12, v7);
  }

  else
  {
    (*(v16 + 32))(v19, v15, v6);
    OrderedDictionary.updateValue(_:forKey:)(v19, a2, a3, v12);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v23 = v8[1];
    v23(v25, v7);
    v23(v12, v7);
    return (*(v16 + 8))(v19, v6);
  }
}

uint64_t OrderedDictionary.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = sub_25F305C1C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v44 = &v34 - v13;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v43 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v34 = *(v18 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = &v34 - v19;
  sub_25F30531C();
  v46 = a4;
  *&v48 = MEMORY[0x25F8D6C60]();
  *(&v48 + 1) = sub_25F3052DC();
  v45 = a2;
  v42 = sub_25F30539C();
  sub_25F30529C();
  if (sub_25F30531C())
  {
    v21 = 0;
    v22 = *(TupleTypeMetadata2 + 48);
    v40 = v20;
    v41 = (v18 + 16);
    v38 = (v14 + 16);
    v39 = v22;
    v37 = (v14 + 32);
    v35 = a5;
    v36 = a3 - 8;
    v23 = v43;
    while (1)
    {
      v24 = sub_25F3052FC();
      sub_25F30528C();
      if (v24)
      {
        (*(v18 + 16))(v20, a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v21, TupleTypeMetadata2);
        v25 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_25F30601C();
        if (v34 != 8)
        {
          __break(1u);
          return result;
        }

        v47 = result;
        (*v41)(v20, &v47, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v25 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          a5 = v35;
          goto LABEL_13;
        }
      }

      v26 = v45;
      (*v38)(v23, v20, v45);
      sub_25F30533C();
      (*v37)(v23, v20, v26);
      v27 = *(a3 - 8);
      v28 = &v20[v39];
      v29 = TupleTypeMetadata2;
      v30 = a1;
      v31 = v18;
      v32 = v44;
      (*(v27 + 32))(v44, v28, a3);
      (*(v27 + 56))(v32, 0, 1, a3);
      sub_25F304B4C();
      v18 = v31;
      a1 = v30;
      TupleTypeMetadata2 = v29;
      v20 = v40;
      sub_25F304B9C();
      ++v21;
      if (v25 == sub_25F30531C())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a5 = v48;
  return result;
}

uint64_t OrderedDictionary.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a4;
  v6 = *(a3 + 16);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F305C1C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  (*(v13 + 16))(v16, a1, v12);
  v22 = *(a3 + 32);
  sub_25F304B4C();
  v23 = v29;
  sub_25F304A9C();
  if ((*(v13 + 48))(v21, 1, v12) == 1)
  {
    (*(v18 + 8))(v21, v17);
    (*(v28 + 16))(v10, v23, v6);
    sub_25F30539C();
    sub_25F30533C();
    v24 = 1;
    v25 = v30;
  }

  else
  {
    v26 = v30;
    (*(v13 + 32))(v30, v21, v12);
    v24 = 0;
    v25 = v26;
  }

  return (*(v13 + 56))(v25, v24, 1, v12);
}

uint64_t OrderedDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = a3;
  v5 = *(a2 + 16);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](a1);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  v16 = *(v9 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 32);
  sub_25F304B4C();
  v31 = a1;
  v21 = v33;
  sub_25F304A8C();
  if ((*(v16 + 48))(v15, 1, v9) == 1)
  {
    (*(v11 + 8))(v15, v10);
    v22 = 1;
    v23 = v32;
    return (*(v16 + 56))(v23, v22, 1, v9);
  }

  v24 = v15;
  v25 = *(v16 + 32);
  v25(v19, v24, v9);
  v34 = *(v21 + 8);
  sub_25F30539C();
  swift_getWitnessTable();
  v26 = *(v20 + 8);
  result = sub_25F3058CC();
  if ((v35 & 1) == 0)
  {
    v28 = v29;
    sub_25F30535C();
    (*(v30 + 8))(v28, v5);
    v23 = v32;
    v25(v32, v19, v9);
    v22 = 0;
    return (*(v16 + 56))(v23, v22, 1, v9);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall OrderedDictionary.removeAll()()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  sub_25F304B4C();
  sub_25F304B3C();
  sub_25F30539C();
  sub_25F30538C();
}

uint64_t OrderedDictionary.filter(_:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v56 = a1;
  v57 = a2;
  v45 = a4;
  v6 = a3[3];
  v7 = sub_25F305C1C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v44 - v9;
  v10 = a3[2];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v48 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v44 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v62 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - v20;
  v23 = *v4;
  v22 = v4[1];
  v63 = a3;
  OrderedDictionary.init()(v10, v6, a3[4], &v70);
  v58 = v23;

  if (sub_25F30531C())
  {
    v24 = 0;
    v61 = v6;
    v54 = v6 - 8;
    v55 = v10 - 8;
    v51 = (v12 + 8);
    v46 = (v12 + 16);
    v50 = v10;
    v52 = v22;
    v53 = TupleTypeMetadata2;
    v47 = v21;
    while (1)
    {
      v71 = v24;
      v68 = v58;
      v69 = v22;
      v65 = *(TupleTypeMetadata2 + 48);
      v25 = v62;
      OrderedDictionary.subscript.getter(v62, v62 + v65, v24, v63);
      v60 = *(v10 - 8);
      v64 = *(v60 + 32);
      v64(v21, v25, v10);
      v26 = *(TupleTypeMetadata2 + 48);
      v27 = v10;
      v28 = v61;
      v59 = *(v61 - 8);
      v29 = *(v59 + 32);
      result = v29(&v21[v26], v25 + v65, v61);
      if (__OFADD__(v71, 1))
      {
        break;
      }

      v65 = v71 + 1;
      v31 = *(TupleTypeMetadata2 + 48);
      v32 = v66;
      v64(v66, v21, v27);
      v29(&v32[v31], &v21[v26], v28);
      v33 = v67;
      v34 = v56(v32, &v32[v31]);
      v67 = v33;
      if (v33)
      {
        (*v51)(v66, v53);
      }

      if (v34)
      {
        v35 = v29;
        v36 = *v46;
        v37 = v62;
        v38 = v66;
        TupleTypeMetadata2 = v53;
        (*v46)(v62, v66, v53);
        v64 = *(TupleTypeMetadata2 + 48);
        v39 = v48;
        v36(v48, v38, TupleTypeMetadata2);
        v40 = v49;
        v41 = v61;
        v35(v49, &v39[*(TupleTypeMetadata2 + 48)], v61);
        v42 = v59;
        (*(v59 + 56))(v40, 0, 1, v41);
        OrderedDictionary.subscript.setter(v40, v37, v63);
        (*v51)(v38, TupleTypeMetadata2);
        v10 = v50;
        (*(v60 + 8))(v39, v50);
        v43 = v64 + v37;
        v21 = v47;
        (*(v42 + 8))(v43, v41);
      }

      else
      {
        TupleTypeMetadata2 = v53;
        (*v51)(v66, v53);
        v10 = v50;
      }

      v22 = v52;
      v24 = v71 + 1;
      if (v65 == sub_25F30531C())
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    *v45 = v70;
  }

  return result;
}

uint64_t OrderedDictionary.append(contentsOf:)(void *a1, void *a2)
{
  v63 = a1;
  v4 = a2[3];
  v56 = sub_25F305C1C();
  v62 = *(v56 - 8);
  v5 = *(v62 + 64);
  v6 = MEMORY[0x28223BE20](v56);
  v8 = &v47 - v7;
  v54 = *(v4 - 8);
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a2;
  v12 = a2[2];
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v51 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v49 = &v47 - v22;
  v23 = sub_25F305C1C();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v67 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v61 = &v47 - v27;
  v64 = (v54 + 32);
  v65 = (v13 + 32);
  v48 = (v18 + 32);
  v28 = *v63;
  v29 = v63[1];
  v59 = (v30 + 32);
  v60 = (v18 + 56);
  v58 = (v18 + 48);
  v54 += 8;
  v55 = (v62 + 8);
  v52 = v28;
  v53 = (v13 + 8);

  v31 = 0;
  v62 = v29;
  v63 = v12;
  v50 = v4;
  while (1)
  {
    if (v31 == sub_25F30531C())
    {
      v32 = 1;
      goto LABEL_6;
    }

    v33 = v29;
    v34 = v23;
    v35 = v2;
    v68 = v52;
    v69 = v33;
    v36 = v12;
    v37 = *(TupleTypeMetadata2 + 48);
    v38 = v49;
    OrderedDictionary.subscript.getter(v49, v49 + v37, v31, v66);
    v39 = v51;
    (*v65)(v51, v38, v36);
    v40 = (v38 + v37);
    v4 = v50;
    (*v64)(&v39[*(TupleTypeMetadata2 + 48)], v40, v50);
    result = (*v48)(v67, v39, TupleTypeMetadata2);
    if (__OFADD__(v31++, 1))
    {
      break;
    }

    v32 = 0;
    v2 = v35;
    v12 = v63;
    v23 = v34;
LABEL_6:
    (*v60)(v67, v32, 1, TupleTypeMetadata2);
    v43 = v61;
    (*v59)();
    if ((*v58)(v43, 1, TupleTypeMetadata2) == 1)
    {
    }

    v44 = *(TupleTypeMetadata2 + 48);
    (*v65)(v16, v43, v12);
    v45 = &v43[v44];
    v46 = v57;
    (*v64)(v57, v45, v4);
    OrderedDictionary.updateValue(_:forKey:)(v46, v16, v66, v8);
    (*v55)(v8, v56);
    v12 = v63;
    (*v54)(v46, v4);
    (*v53)(v16, v12);
    v29 = v62;
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.values.getter(void *a1)
{
  v12 = *v1;
  v3 = a1[3];
  v9 = a1[2];
  v10 = v3;
  v11 = a1[4];
  v8[2] = v9;
  v8[3] = v11;
  v8[4] = swift_getKeyPath();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_25F1C1AC4(sub_25F1F32FC, v8, a1, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  return v6;
}

uint64_t OrderedDictionary.keys.getter()
{
  sub_25F1F3320();
}

uint64_t OrderedDictionary.endIndex.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  return sub_25F30531C();
}

Swift::Int __swiftcall OrderedDictionary.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = a2;
  v7 = a4[3];
  v8 = sub_25F305C1C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v23 - v11;
  v13 = a4[2];
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v10);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v4;
  v18 = v4[1];
  sub_25F3053DC();
  (*(v14 + 16))(a1, v17, v13);
  v20 = a4[4];
  sub_25F304B8C();
  v21 = *(v7 - 8);
  result = (*(v21 + 48))(v12, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 8))(v17, v13);
    return (*(v21 + 32))(v24, v12, v7);
  }

  return result;
}

uint64_t static OrderedDictionary<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a2;
  v10 = a2[1];
  if ((sub_25F304B6C() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a5 + 8);

  return MEMORY[0x2821FC390](v8, v10, a3, v11);
}

uint64_t OrderedDictionary.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_getTupleTypeMetadata2();
  v8 = sub_25F3052DC();
  v9 = sub_25F1CCBBC(v8, a1, a2, a3);

  *a4 = v9;
  result = sub_25F3052DC();
  a4[1] = result;
  return result;
}

uint64_t OrderedDictionary.lazyValues.getter(void *a1)
{
  v10[1] = *v1;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F8D7310](v10, a1, WitnessTable);
  v4 = a1[2];
  v9 = a1[3];
  v5 = a1[4];
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = KeyPath;
  sub_25F305FEC();
  swift_getWitnessTable();
  sub_25F30638C();
}

uint64_t OrderedDictionary.isEmpty.getter(uint64_t a1)
{
  v4 = *(v1 + 8);
  v2 = *(a1 + 16);
  sub_25F30539C();
  swift_getWitnessTable();
  return sub_25F30588C() & 1;
}

uint64_t OrderedDictionary.count.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  return sub_25F30531C();
}

uint64_t OrderedDictionary.sort(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  sub_25F30539C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_25F304D6C();
}

double OrderedDictionary.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v63 = a6;
  v57 = a7;
  v58 = a1;
  v11 = sub_25F305C1C();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v65 = &v52 - v14;
  v67 = *(a2 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x28223BE20](v13);
  v53 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = sub_25F305C1C();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v52 - v21;
  v23 = *(a4 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v28 = *(v54 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v52 - v29;
  v66 = a3;
  OrderedDictionary.init()(a2, a3, a5, &v68);
  v55 = v23;
  v31 = v23;
  v32 = v30;
  (*(v31 + 16))(v26, v58, a4);
  sub_25F3050DC();
  v56 = a4;
  v33 = a2;
  v34 = v53;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v36 = *(TupleTypeMetadata2 - 8);
  v37 = *(v36 + 48);
  v38 = v36 + 48;
  if (v37(v22, 1, TupleTypeMetadata2) != 1)
  {
    v39 = *(v67 + 32);
    v67 += 32;
    v59 = v66 - 8;
    v60 = v39;
    v63 = AssociatedConformanceWitness;
    v64 = v32;
    v61 = v38;
    v62 = v37;
    do
    {
      v40 = *(TupleTypeMetadata2 + 48);
      v60(v34, v22, v33);
      v41 = v22;
      v43 = v65;
      v42 = v66;
      v44 = AssociatedTypeWitness;
      v45 = TupleTypeMetadata2;
      v46 = v34;
      v47 = v33;
      v48 = a5;
      v49 = *(v66 - 8);
      (*(v49 + 32))(v65, &v41[v40], v66);
      (*(v49 + 56))(v43, 0, 1, v42);
      a5 = v48;
      v33 = v47;
      v34 = v46;
      TupleTypeMetadata2 = v45;
      AssociatedTypeWitness = v44;
      v32 = v64;
      v22 = v41;
      v50 = type metadata accessor for OrderedDictionary();
      OrderedDictionary.subscript.setter(v43, v34, v50);
      sub_25F305CDC();
    }

    while (v62(v41, 1, TupleTypeMetadata2) != 1);
  }

  (*(v55 + 8))(v58, v56);
  (*(v54 + 8))(v32, AssociatedTypeWitness);
  result = *&v68;
  *v57 = v68;
  return result;
}

double OrderedDictionary.init<A>(_:uniquingKeysWith:)@<D0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v94 = a7;
  v78 = a3;
  v77 = a2;
  v71 = a1;
  v70 = a8;
  v76 = sub_25F305C1C();
  v84 = *(v76 - 8);
  v11 = v84[8];
  v12 = MEMORY[0x28223BE20](v76);
  v91 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v66 - v15;
  v72 = *(a5 - 8);
  v16 = *(v72 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v75 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v66 = &v66 - v20;
  v95 = a4;
  v93 = *(a4 - 8);
  v21 = *(v93 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v89 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = sub_25F305C1C();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v66 - v30;
  v32 = *(a6 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v35 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  v37 = *(v67 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v66 - v38;
  OrderedDictionary.init()(v95, a5, v94, &v96);
  v68 = v32;
  (*(v32 + 16))(v35, v71, a6);
  sub_25F3050DC();
  v69 = a6;
  v40 = v66;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v92 = v39;
  v88 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v42 = *(TupleTypeMetadata2 - 8);
  v43 = *(v42 + 48);
  v86 = v42 + 48;
  v87 = v43;
  if (v43(v31, 1, TupleTypeMetadata2) != 1)
  {
    v85 = *(v93 + 32);
    v45 = (v72 + 32);
    v82 = (v93 + 16);
    v83 = (v72 + 48);
    v80 = (v72 + 8);
    v81 = (v72 + 56);
    v93 += 32;
    v79 = (v93 - 24);
    v73 = (v84 + 1);
    v72 += 16;
    v84 = v45;
    v74 = v31;
    do
    {
      v57 = *(TupleTypeMetadata2 + 48);
      v85(v25, v31, v95);
      v58 = *v45;
      (*v45)(v40, &v31[v57], a5);
      v59 = type metadata accessor for OrderedDictionary();
      v60 = v59[2];
      v61 = v59[3];
      v62 = v59[4];
      v63 = v90;
      sub_25F304B8C();
      if ((*v83)(v63, 1, a5) == 1)
      {
        (*v73)(v63, v76);
        v64 = v89;
        (*v82)(v89, v25, v95);
        v65 = v91;
        (*v72)(v91, v40, a5);
        (*v81)(v65, 0, 1, a5);
        OrderedDictionary.subscript.setter(v65, v64, v59);
        (*v80)(v40, a5);
      }

      else
      {
        v46 = v40;
        v47 = v75;
        v58(v75, v63, a5);
        v48 = AssociatedTypeWitness;
        v49 = TupleTypeMetadata2;
        v50 = v25;
        v51 = v89;
        (*v82)(v89, v50, v95);
        v52 = v91;
        v77(v47, v46);
        (*v81)(v52, 0, 1, a5);
        v53 = v51;
        v25 = v50;
        TupleTypeMetadata2 = v49;
        AssociatedTypeWitness = v48;
        v31 = v74;
        OrderedDictionary.subscript.setter(v52, v53, v59);
        v54 = *v80;
        v55 = v47;
        v40 = v46;
        (*v80)(v55, a5);
        v54(v46, a5);
      }

      (*v79)(v25, v95);
      sub_25F305CDC();
      v56 = v87(v31, 1, TupleTypeMetadata2);
      v45 = v84;
    }

    while (v56 != 1);
  }

  (*(v68 + 8))(v71, v69);
  (*(v67 + 8))(v92, AssociatedTypeWitness);
  result = *&v96;
  *v70 = v96;
  return result;
}

uint64_t sub_25F1F1524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  v3 = sub_25F304ADC();

  v4 = sub_25F30531C();

  if (v3 != v4)
  {
    v6[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/OrderedDictionary.swift";
    v6[1] = 129;
    v7 = 2;
    v8 = xmmword_25F30B300;
    v9 = "init(dictionary:orderedKeys:)";
    v10 = 29;
    v11 = 2;
    return sub_25F213F98(v6);
  }

  return result;
}

uint64_t sub_25F1F15FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(*a2 + *MEMORY[0x277D84DE8]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  (*(v6 + 16))(&v15 - v11);
  v13 = *(v5 + 48);
  (*(*(a3 - 8) + 32))(v10, v12, a3);
  (*(*(*(v4 + *MEMORY[0x277D84DE8] + 8) - 8) + 32))(&v10[v13], &v12[v13]);
  swift_getAtKeyPath();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_25F1F17D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = MEMORY[0x277D84DE8];
  v6 = *(*a2 + *MEMORY[0x277D84DE8]);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  (*(v7 + 16))(&v16 - v12);
  v14 = *(v6 + 48);
  (*(*(a3 - 8) + 32))(v11, v13, a3);
  (*(*(*(v4 + *v5 + 8) - 8) + 32))(&v11[v14], &v13[v14]);
  swift_getAtKeyPath();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_25F1F19A4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + a3;
  v5 = *(a2 + a3 - 24);
  v6 = *(v4 - 16);
  v7 = *(v4 - 8);
  v10 = *a1;
  v8 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.subscript.getter(a2, v8);
}

uint64_t sub_25F1F1A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - v13;
  v15 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v21 - v16;
  (*(v18 + 16))(&v21 - v16, a3, v6);
  (*(v10 + 16))(v14, a1, v9);
  v19 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.subscript.setter(v14, v17, v19);
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = a3[3];
  v10 = sub_25F305C1C();
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  v13 = v6;
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v11 + 64));
    v14 = malloc(v12);
  }

  v8[5] = v14;
  v15 = a3[2];
  v8[6] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v8[7] = v16;
  v18 = *(v16 + 64);
  if (v13)
  {
    v8[8] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v8[8] = malloc(*(v16 + 64));
    v19 = malloc(v18);
  }

  v8[9] = v19;
  (*(v17 + 16))();
  v20 = *v3;
  v21 = a3[4];
  sub_25F304B8C();
  return sub_25F1F1D8C;
}

void sub_25F1F1D8C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v13 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v11 = *v2;
    v10 = v2[1];
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v13);
    OrderedDictionary.subscript.setter(v7, v3, v11);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    v12 = v2[1];
    OrderedDictionary.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_25F1F1EA0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 24);
  v6 = *(a2 + a3 - 16);
  v7 = *(a2 + a3 - 8);
  v8 = *a2;
  v12 = *a1;
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  v10 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.subscript.getter(a4, a4 + v9, v8, v10);
}

uint64_t sub_25F1F1F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v16 - v10;
  (*(v12 + 16))(&v16 - v10, a1, TupleTypeMetadata2);
  v13 = *(TupleTypeMetadata2 + 48);
  v14 = type metadata accessor for OrderedDictionary();
  return sub_25F1F334C(v11, &v11[v13], v14);
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t *a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = a3[2];
  v11 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[2] = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  v9[3] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[5] = v15;
  v16 = *(TupleTypeMetadata2 + 48);
  v17 = *v3;
  *(v9 + 12) = v16;
  OrderedDictionary.subscript.getter(v15, v15 + v16, a2, a3);
  return sub_25F1F21B0;
}

void sub_25F1F21B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  if (a2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = *v2;
    v7 = *(v2 + 8);
    (*(v6 + 16))(*(v2 + 32), *(v2 + 40), v5);
    sub_25F1F334C(v4, v4 + *(v5 + 48), v8);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    v9 = *(v2 + 8);
    sub_25F1F334C(*(v2 + 40), v3 + *(v2 + 48), *v2);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t OrderedDictionary.appending(contentsOf:)@<X0>(__int128 *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  *a3 = v6;
  a3[1] = v7;
  v9 = *a1;

  return OrderedDictionary.append(contentsOf:)(&v9, a2);
}

uint64_t OrderedDictionary.subtract(_:)(uint64_t *a1, void *a2)
{
  v4 = a2[3];
  v48 = sub_25F305C1C();
  v53 = *(v48 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v48);
  v47 = &v39 - v7;
  v56 = a2;
  v8 = a2[2];
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v42 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v41 = &v39 - v17;
  v52 = sub_25F305C1C();
  v18 = *(*(v52 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v52);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  v24 = (v9 + 32);
  v54 = v4 - 8;
  v55 = v4;
  v40 = (v13 + 32);
  v25 = *a1;
  v26 = a1[1];
  v50 = (v27 + 32);
  v51 = (v13 + 56);
  v49 = (v13 + 48);
  v44 = (v9 + 8);
  v45 = (v53 + 8);
  v43 = v25;

  v28 = 0;
  v53 = v26;
  while (1)
  {
    if (v28 == sub_25F30531C())
    {
      v29 = 1;
      goto LABEL_6;
    }

    v57 = v43;
    v58 = v26;
    v30 = *(TupleTypeMetadata2 + 48);
    v31 = v41;
    OrderedDictionary.subscript.getter(v41, v41 + v30, v28, v56);
    v32 = v42;
    (*v24)(v42, v31, v8);
    (*(*(v55 - 8) + 32))(&v32[*(TupleTypeMetadata2 + 48)], v31 + v30);
    result = (*v40)(v21, v32, TupleTypeMetadata2);
    if (__OFADD__(v28++, 1))
    {
      break;
    }

    v29 = 0;
LABEL_6:
    (*v51)(v21, v29, 1, TupleTypeMetadata2);
    (*v50)(v23, v21, v52);
    if ((*v49)(v23, 1, TupleTypeMetadata2) == 1)
    {
    }

    v35 = *(TupleTypeMetadata2 + 48);
    v36 = v46;
    (*v24)(v46, v23, v8);
    v37 = v47;
    OrderedDictionary.removeValue(forKey:)(v36, v56, v47);
    (*v45)(v37, v48);
    v38 = v36;
    v26 = v53;
    (*v44)(v38, v8);
    (*(*(v55 - 8) + 8))(&v23[v35]);
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.union<A>(groupsIn:)@<X0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v7 = a2[2];
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v15 = *(v14 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  v17 = *(v60 + 64);
  v18 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v49 - v20;
  v21 = sub_25F305C1C();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v56 = &v49 - v26;
  v27 = a1;
  v28 = *a1;
  v29 = v27[1];
  v30 = *v4;
  v31 = v4[1];
  v63 = (v65 + 32);
  v64 = v29;
  v52 = (v60 + 32);
  *&v69 = v30;
  *(&v69 + 1) = v31;
  v61 = (v32 + 32);
  v62 = (v60 + 56);
  v59 = (v65 + 16);
  v60 += 48;
  v58 = (v65 + 8);

  v33 = v56;

  v57 = v28;
  v34 = v64;

  v65 = 0;
  v51 = v21;
  v53 = v25;
  while (1)
  {
    if (v65 == sub_25F30531C())
    {
      v35 = 1;
      goto LABEL_7;
    }

    v36 = v15;
    v37 = v13;
    v38 = v11;
    v67 = v57;
    v68 = v34;
    v39 = *(TupleTypeMetadata2 + 48);
    v40 = TupleTypeMetadata2;
    v41 = v54;
    OrderedDictionary.subscript.getter(v54, v54 + v39, v65, a2);
    v42 = v55;
    (*v63)(v55, v41, v7);
    v43 = *(v41 + v39);
    TupleTypeMetadata2 = v40;
    *&v42[*(v40 + 48)] = v43;
    v25 = v53;
    result = (*v52)(v53, v42, TupleTypeMetadata2);
    if (__OFADD__(v65, 1))
    {
      break;
    }

    ++v65;
    v35 = 0;
    v11 = v38;
    v13 = v37;
    v15 = v36;
    v21 = v51;
    v33 = v56;
LABEL_7:
    (*v62)(v25, v35, 1, TupleTypeMetadata2);
    (*v61)(v33, v25, v21);
    if ((*v60)(v33, 1, TupleTypeMetadata2) == 1)
    {

      *v50 = v69;
      return result;
    }

    v45 = *&v33[*(TupleTypeMetadata2 + 48)];
    (*v63)(v13, v33, v7);
    v46 = a2[4];
    sub_25F304B8C();
    v47 = v66;
    if (!v66)
    {
      v48 = *(v15 + 16);
      v47 = sub_25F3052DC();
    }

    v66 = v45;
    v67 = v47;
    swift_getWitnessTable();
    sub_25F30532C();
    (*v59)(v11, v13, v7);
    v66 = v67;
    OrderedDictionary.subscript.setter(&v66, v11, a2);
    (*v58)(v13, v7);
    v34 = v64;
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.mapValues<A>(_:)@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  result = sub_25F304B2C();
  if (!v3)
  {
    v11 = result;

    return sub_25F1F1524(v11, v6, a2);
  }

  return result;
}

void (*sub_25F1F2D74(void *a1, uint64_t a2, void *a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = OrderedDictionary.subscript.modify(v6, a2, a3);
  return sub_25F1DC004;
}

uint64_t sub_25F1F2DFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedDictionary.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_25F1F2E24(uint64_t *a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = a3[2];
  v9 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_25F1F2FB8(v8, *a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_25F1DC364;
}

void (*sub_25F1F2FB8(uint64_t *a1, uint64_t a2, void *a3))(uint64_t a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = a3[2];
  v11 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v9 + 16) = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  *(v9 + 24) = v13;
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  *(v9 + 32) = v14;
  *v9 = *v3;
  OrderedDictionary.subscript.getter(v14, v14 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_25F1CC970;
}

uint64_t sub_25F1F30F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F1F314C()
{
  swift_getWitnessTable();
  v1 = sub_25F2B6F1C();
  v3 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OrderedDictionary<>.hash(into:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  sub_25F304B5C();

  return MEMORY[0x2821FC380](a1, v5, v7, v8);
}

uint64_t OrderedDictionary<>.hashValue.getter(void *a1)
{
  v5 = *v1;
  sub_25F30671C();
  OrderedDictionary<>.hash(into:)(v4, a1);
  return sub_25F30676C();
}

uint64_t sub_25F1F32A8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_25F30671C();
  OrderedDictionary<>.hash(into:)(v6, a2);
  return sub_25F30676C();
}

uint64_t sub_25F1F334C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v5 = *(a3 + 24);
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v19 - v15;
  (*(*(v11 - 8) + 32))(&v19 - v15, a1, v11);
  v17 = *(TupleTypeMetadata2 + 48);
  (*(*(v5 - 8) + 32))(&v16[v17], v19, v5);
  OrderedDictionary.updateValue(_:forKey:)(&v16[v17], v16, a3, v10);
  (*(v7 + 8))(v10, v6);
  return (*(v13 + 8))(v16, TupleTypeMetadata2);
}

uint64_t sub_25F1F3558(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F1F361C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_25F1F3658(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v10 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v11 = *(v10 + 2);
  *(v10 + 2) = v11 + 1;
  os_unfair_lock_unlock(v10 + 6);
  *a5 = v11;
  a5[1] = a1;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = a4;
}

uint64_t ManagedResource.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ManagedResource.init(_:)(a1);
  return v5;
}

uint64_t ManagedResource.init(_:)(uint64_t a1)
{
  v3 = v1 + *(*v1 + 96);
  v4 = *(*v1 + 80);
  type metadata accessor for ManagedResource.Request();
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v3 + 40) = sub_25F3052DC();
  (*(*(v4 - 8) + 32))(v1 + *(*v1 + 88), a1, v4);
  return v1;
}

double ManagedResource.requestUnderlying(receive:revoke:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = *(*v6 + 80);

  sub_25F1F3658(a1, a2, a3, a4, v26);
  if (sub_25F1F3990(v6, v26))
  {
    (*(&v26[0] + 1))(v6 + *(*v6 + 88));
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v15 = v26[1];
  *(v14 + 32) = v26[0];
  *(v14 + 48) = v15;
  *(v14 + 64) = v27;
  *&v18 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ManagedResource.swift";
  *(&v18 + 1) = 127;
  v19 = 2;
  v20 = xmmword_25F30B5D0;
  v21 = "requestUnderlying(receive:revoke:)";
  v22 = 34;
  v23 = 2;
  CancellationToken.init(callsite:didCancel:)(&v18, sub_25F1F3BBC, v14, &v24);
  v16 = v25;
  result = *&v24;
  *a5 = v24;
  *(a5 + 16) = v16;
  return result;
}

BOOL sub_25F1F3990(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v17 = *(a2 + 24);
  v18 = *(a2 + 8);
  v4 = *a1;
  v5 = (a1 + *(*a1 + 96));
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *(a2 + 16);
    v20[0] = *a2;
    v20[1] = v7;
    v21 = *(a2 + 32);
    swift_beginAccess();
    v8 = *(v4 + 80);
    v9 = type metadata accessor for ManagedResource.Request();
    (*(*(v9 - 8) + 16))(v19, a2, v9);
    sub_25F30539C();
    sub_25F30533C();
    swift_endAccess();
  }

  else
  {
    v10 = *v5;
    v11 = v5[2];
    v12 = v5[3];
    v13 = v5[4];
    *v5 = v3;
    *(v5 + 1) = v18;
    *(v5 + 3) = v17;
    v14 = *(v4 + 80);
    v15 = type metadata accessor for ManagedResource.Request();
    (*(*(v15 - 8) + 16))(v20, a2, v15);
    sub_25F1F406C(v10, 0);
  }

  return v6 == 0;
}

uint64_t sub_25F1F3B54(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *a2;
    sub_25F1F3BC8(&v4);
  }

  return result;
}

uint64_t sub_25F1F3BC8(uint64_t *a1)
{
  v2 = v1;
  sub_25F1F3D14(&v12, v11, v1, *a1);
  v4 = v12;
  v3 = v13;
  v5 = v14;
  v6 = v11[1];
  v10 = v11[0];
  if (v13)
  {

    v5(v7);
  }

  if (v6)
  {
    v8 = *(*v1 + 88);

    v6(v2 + v8);
    sub_25F1F406C(v4, v3);
    sub_25F1F406C(v10, v6);
  }

  else
  {

    return sub_25F1F406C(v4, v3);
  }
}

uint64_t sub_25F1F3D14(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = (a3 + *(*a3 + 96));
  v9 = swift_beginAccess();
  v10 = v8[1];
  if (v10)
  {
    v11 = *v8 == a4;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v34 = v8[3];
    v32 = v8[4];
    v33 = v8[2];
    swift_beginAccess();
    v20 = *(v7 + 80);
    type metadata accessor for ManagedResource.Request();
    v21 = sub_25F30539C();

    WitnessTable = swift_getWitnessTable();
    v23 = swift_getWitnessTable();
    MEMORY[0x25F8D7B40](v35, v21, WitnessTable, v23);
    v24 = v36;
    v25 = *v8;
    v26 = v8[1];
    v27 = v8[2];
    v28 = v8[3];
    v29 = v8[4];
    v30 = v35[1];
    *v8 = v35[0];
    *(v8 + 1) = v30;
    v8[4] = v24;
    swift_endAccess();
    sub_25F1F406C(v25, v26);
    *a1 = a4;
    a1[1] = v10;
    a1[2] = v33;
    a1[3] = v34;
    a1[4] = v32;
    v15 = *v8;
    v16 = v8[1];
    v17 = v8[2];
    v18 = v8[3];
    v19 = v8[4];
    result = sub_25F1F4314(v15, v16);
  }

  else
  {
    *&v35[0] = v8[5];
    MEMORY[0x28223BE20](v9);
    v31 = *(v7 + 80);
    type metadata accessor for ManagedResource.Request();
    sub_25F30539C();

    swift_getWitnessTable();
    v12 = sub_25F30609C();
    v13 = v8[5];
    v8[5] = v12;

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  *a2 = v15;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v19;
  return result;
}

uint64_t ManagedResource.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = (v0 + *(*v0 + 96));
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_25F1F406C(*v1, v1[1]);

  return v0;
}

uint64_t sub_25F1F406C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ManagedResource.__deallocating_deinit()
{
  ManagedResource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}