uint64_t sub_189110BD0(void *a1)
{
  v2 = v1;
  *&v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D780);
  *&v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  *&v72 = &v60 - v4;
  *&v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D788);
  *&v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  *&v69 = &v60 - v5;
  *&v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D790);
  *&v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  *&v64 = &v60 - v6;
  *&v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D798);
  *&v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D7A0);
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D7A8);
  v61 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D7B0);
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v15 = &v60 - v14;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_189114C3C();
  v76 = v15;
  sub_18A4A89C8();
  v16 = v2[7];
  v81[6] = v2[6];
  v82 = v16;
  v83 = *(v2 + 128);
  v17 = v2[3];
  v81[2] = v2[2];
  v18 = v2[4];
  v81[5] = v2[5];
  v81[3] = v17;
  v81[4] = v18;
  v19 = *v2;
  v81[1] = v2[1];
  v81[0] = v19;
  v20 = sub_189112364(v81);
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      signpost_c2_entryLock_start(v21, v22);
      v49 = v48;
      v50 = v48[2];
      v68 = v48[3];
      v72 = v50;
      LOBYTE(v79) = 4;
      sub_189114CE4();
      v51 = v49[1];
      v74 = *v49;
      v73 = v51;
      v41 = v69;
      v33 = v77;
      v34 = v76;
      sub_18A4A85A8();
      v80 = v73;
      v79 = v74;
      v78 = 0;
      type metadata accessor for UIEdgeInsets(0);
      sub_189114E88(&qword_1EA93D7C8);
      v42 = v71;
      v52 = v88;
      sub_18A4A85D8();
      if (!v52)
      {
        v80 = v68;
        v79 = v72;
        v78 = 1;
        sub_18A4A85D8();
      }

      v43 = &v82;
    }

    else
    {
      v32 = v88;
      v33 = v77;
      v34 = v76;
      if (v20 != 4)
      {
        LOBYTE(v79) = 0;
        sub_189114E34();
        sub_18A4A85A8();
        (*(v61 + 8))(v13, v11);
        return (*(v75 + 8))(v34, v33);
      }

      signpost_c2_entryLock_start(v21, v22);
      v36 = v35;
      v37 = v35[2];
      v68 = v35[3];
      v69 = v37;
      v38 = v35[4];
      v66 = v35[5];
      v67 = v38;
      v39 = v35[6];
      v64 = v35[7];
      v65 = v39;
      LOBYTE(v79) = 5;
      sub_189114C90();
      v40 = v36[1];
      v71 = *v36;
      v70 = v40;
      v41 = v72;
      sub_18A4A85A8();
      v80 = v70;
      v79 = v71;
      v78 = 0;
      type metadata accessor for UIEdgeInsets(0);
      sub_189114E88(&qword_1EA93D7C8);
      v42 = v74;
      sub_18A4A85D8();
      if (!v32)
      {
        v80 = v68;
        v79 = v69;
        v78 = 1;
        sub_18A4A85D8();
        v80 = v66;
        v79 = v67;
        v78 = 2;
        sub_18A4A85D8();
        v80 = v64;
        v79 = v65;
        v78 = 3;
        sub_18A4A85D8();
      }

      v43 = &v85;
    }

    (*(*(v43 - 32) + 8))(v41, v42);
    return (*(v75 + 8))(v34, v33);
  }

  if (v20)
  {
    v23 = v88;
    if (v20 == 1)
    {
      signpost_c2_entryLock_start(v21, v22);
      v25 = v24;
      v26 = v24[2];
      v71 = v24[3];
      v72 = v26;
      LOBYTE(v79) = 2;
      sub_189114D8C();
      v27 = v25[1];
      v74 = *v25;
      v73 = v27;
      v28 = v63;
      v29 = v77;
      v30 = v76;
      sub_18A4A85A8();
      v80 = v73;
      v79 = v74;
      v78 = 0;
      type metadata accessor for UIEdgeInsets(0);
      sub_189114E88(&qword_1EA93D7C8);
      v31 = v66;
      sub_18A4A85D8();
      if (!v23)
      {
        v80 = v71;
        v79 = v72;
        v78 = 1;
        sub_18A4A85D8();
      }

      (*(v65 + 8))(v28, v31);
      return (*(v75 + 8))(v30, v29);
    }

    else
    {
      signpost_c2_entryLock_start(v21, v22);
      v54 = v53[1];
      v86 = *v53;
      v87 = v54;
      LOBYTE(v79) = 3;
      sub_189114D38();
      v55 = v64;
      v56 = v77;
      v57 = v76;
      sub_18A4A85A8();
      v79 = v86;
      v80 = v87;
      type metadata accessor for UIEdgeInsets(0);
      sub_189114E88(&qword_1EA93D7C8);
      v58 = v68;
      sub_18A4A85D8();
      (*(v67 + 8))(v55, v58);
      return (*(v75 + 8))(v57, v56);
    }
  }

  else
  {
    signpost_c2_entryLock_start(v21, v22);
    v45 = v44[1];
    v84 = *v44;
    v85 = v45;
    LOBYTE(v79) = 1;
    sub_189114DE0();
    v46 = v77;
    v47 = v76;
    sub_18A4A85A8();
    v79 = v84;
    v80 = v85;
    type metadata accessor for UIEdgeInsets(0);
    sub_189114E88(&qword_1EA93D7C8);
    sub_18A4A85D8();
    (*(v62 + 8))(v10, v8);
    return (*(v75 + 8))(v47, v46);
  }
}

uint64_t sub_189111838(uint64_t a1)
{
  v2 = sub_189114DE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111874(uint64_t a1)
{
  v2 = sub_189114DE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1891118B0()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0xD00000000000001CLL;
  if (v1 != 4)
  {
    v3 = 1751343461;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000014;
  if (v1 == 1)
  {
    v4 = 7105633;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_189111958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18911339C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18911198C(uint64_t a1)
{
  v2 = sub_189114C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1891119C8(uint64_t a1)
{
  v2 = sub_189114C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_189111A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1891135A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_189111A4C(uint64_t a1)
{
  v2 = sub_189114C90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111A88(uint64_t a1)
{
  v2 = sub_189114C90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_189111AC4(uint64_t a1)
{
  v2 = sub_189114E34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111B00(uint64_t a1)
{
  v2 = sub_189114E34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_189111B3C(uint64_t a1)
{
  v2 = sub_189114D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111B78(uint64_t a1)
{
  v2 = sub_189114D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_189111BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_18A4A86C8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_18A4A86C8();

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

uint64_t sub_189111C80(uint64_t a1)
{
  v2 = sub_189114CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111CBC(uint64_t a1)
{
  v2 = sub_189114CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_189111CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_18A4A86C8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_189111D78(uint64_t a1)
{
  v2 = sub_189114D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111DB4(uint64_t a1)
{
  v2 = sub_189114D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_189111DF0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = sub_1891136E8(a1, v8).n128_u64[0];
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_189111E74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_189112FF4(v11, v13) & 1;
}

id sub_189111FD0(char *a1, double a2, double a3, double a4, double a5, uint64_t a6, void (*a7)(__int128 *))
{
  *&v15 = a2;
  *(&v15 + 1) = a3;
  *&v16 = a4;
  *(&v16 + 1) = a5;
  a7(&v15);
  v8 = &a1[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets];
  v9 = v22;
  *(v8 + 6) = v21;
  *(v8 + 7) = v9;
  v8[128] = v23;
  v10 = v18;
  *(v8 + 2) = v17;
  *(v8 + 3) = v10;
  v11 = v20;
  *(v8 + 4) = v19;
  *(v8 + 5) = v11;
  v12 = v16;
  *v8 = v15;
  *(v8 + 1) = v12;
  v14.receiver = a1;
  v14.super_class = _UISceneSafeAreaEdgeInsetConcreteResolver;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_189112084(char *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, void (*a11)(__int128 *))
{
  *&v19 = a2;
  *(&v19 + 1) = a3;
  *&v20 = a4;
  *(&v20 + 1) = a5;
  *&v21 = a6;
  *(&v21 + 1) = a7;
  *&v22 = a8;
  *(&v22 + 1) = a9;
  a11(&v19);
  v12 = &a1[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets];
  v13 = v26;
  *(v12 + 6) = v25;
  *(v12 + 7) = v13;
  v12[128] = v27;
  v14 = v22;
  *(v12 + 2) = v21;
  *(v12 + 3) = v14;
  v15 = v24;
  *(v12 + 4) = v23;
  *(v12 + 5) = v15;
  v16 = v20;
  *v12 = v19;
  *(v12 + 1) = v16;
  v18.receiver = a1;
  v18.super_class = _UISceneSafeAreaEdgeInsetConcreteResolver;
  return objc_msgSendSuper2(&v18, sel_init);
}

int8x16_t _UISceneSafeAreaEdgeInsetConcreteResolver.safeAreaEdgeInsets(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 112);
  v15[6] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 96);
  v15[7] = v3;
  v16 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 128);
  v4 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 48);
  v15[2] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 32);
  v15[3] = v4;
  v5 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 80);
  v15[4] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 64);
  v15[5] = v5;
  v6 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 16);
  v15[0] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets);
  v15[1] = v6;
  v7 = sub_189112364(v15);
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        signpost_c2_entryLock_start(v8, v9);
        if ((a1 - 3) >= 2)
        {
          return *v10;
        }

        return v10[2];
      }

      signpost_c2_entryLock_start(v8, v9);
      result = *v14;
      v13 = v14[1];
      if (a1 != 2)
      {
        if (a1 == 4)
        {
          return vextq_s8(result, v13, 8uLL);
        }

        else if (a1 == 3)
        {
          return vextq_s8(v13, result, 8uLL);
        }

        return result;
      }

      return v13;
    }

    signpost_c2_entryLock_start(v8, v9);
    return *v10;
  }

  if (v7 != 3)
  {
    if (v7 != 4)
    {
      return *&UIEdgeInsetsZero.top;
    }

    signpost_c2_entryLock_start(v8, v9);
    switch(a1)
    {
      case 2:
        return v10[4];
      case 3:
        return v10[6];
      case 4:
        return v10[2];
    }

    return *v10;
  }

  signpost_c2_entryLock_start(v8, v9);
  result = v12[2];
  v13 = v12[3];
  if (a1 != 4)
  {
    if (a1 == 3)
    {
      return v13;
    }

    result = *v12;
    v13 = v12[1];
    if (a1 == 2)
    {
      return v13;
    }
  }

  return result;
}

uint64_t sub_189112364(uint64_t a1)
{
  if (*(a1 + 128) <= 4u)
  {
    return *(a1 + 128);
  }

  else
  {
    return (*a1 + 5);
  }
}

unint64_t _UISceneSafeAreaEdgeInsetConcreteResolver.description.getter()
{
  sub_18A4A80E8();

  v0 = sub_18A4A72F8();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

uint64_t _UISceneSafeAreaEdgeInsetConcreteResolver.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, &v12);
  if (!*(&v13 + 1))
  {
    sub_188A553EC(&v12);
    goto LABEL_5;
  }

  type metadata accessor for _UISceneSafeAreaEdgeInsetConcreteResolver(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v3 = *&v10[0];
  v4 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 112);
  v10[6] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 96);
  v10[7] = v4;
  v11 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 128);
  v5 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 48);
  v10[2] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 32);
  v10[3] = v5;
  v6 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 80);
  v10[4] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 64);
  v10[5] = v6;
  v7 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 16);
  v10[0] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets);
  v10[1] = v7;
  v17 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 80];
  v18 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 96];
  v19 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 112];
  v20 = v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 128];
  v13 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 16];
  v14 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 32];
  v15 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 48];
  v16 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 64];
  v12 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets];

  v8 = sub_189112FF4(v10, &v12);
  return v8 & 1;
}

id _UISceneSafeAreaEdgeInsetConcreteResolver.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_1891146A0(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t _UISceneSafeAreaEdgeInsetConcreteResolver.encode(withBSXPCCoder:)(void *a1)
{
  v2 = sub_18A4A72D8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18A4A23E8();
  swift_allocObject();
  sub_18A4A23D8();
  sub_189114960();
  v3 = sub_18A4A23C8();
  v5 = v4;

  sub_18A4A72C8();
  sub_18A4A72A8();
  if (v6)
  {
    v7 = sub_18A4A7258();

    v8 = sub_18A4A7258();
    [a1 encodeObject:v7 forKey:v8];
  }

  return sub_188DC0F30(v3, v5);
}

void _UISceneSafeAreaEdgeInsetCompositeResolver.safeAreaEdgeInsets(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers);
  if (v3 >> 62)
  {
    v4 = sub_18A4A7F68();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0.0;
  v5 = 0.0;
  v8 = 0.0;
  v7 = 0.0;
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v9 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = sub_188E4B094(v9, v3);
        }

        else
        {
          v10 = *(v3 + 8 * v9 + 32);
        }

        v11 = v10;
        ++v9;
        [v10 safeAreaEdgeInsetsForOrientation_];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        if (v6 <= v13)
        {
          v6 = v13;
        }

        if (v5 <= v15)
        {
          v5 = v15;
        }

        if (v8 <= v17)
        {
          v8 = v17;
        }

        if (v7 <= v19)
        {
          v7 = v19;
        }
      }

      while (v4 != v9);
    }
  }
}

uint64_t _UISceneSafeAreaEdgeInsetCompositeResolver.description.getter()
{
  sub_18A4A80E8();
  v1 = MEMORY[0x18CFE22D0](0xD000000000000036, 0x800000018A6AA6B0);
  v2 = *(v0 + OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers);
  v3 = type metadata accessor for _UISceneSafeAreaEdgeInsetResolver(v1);
  v4 = MEMORY[0x18CFE24A0](v2, v3);
  MEMORY[0x18CFE22D0](v4);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

uint64_t _UISceneSafeAreaEdgeInsetCompositeResolver.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, v8);
  if (!v9)
  {
    sub_188A553EC(v8);
    goto LABEL_5;
  }

  type metadata accessor for _UISceneSafeAreaEdgeInsetCompositeResolver(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers);
  v4 = *&v7[OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers];

  v5 = sub_1890159A4(v3, v4);

  return v5 & 1;
}

uint64_t sub_189112D04(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_188A553EC(v10);
  return v8 & 1;
}

id _sSo33_UISceneSafeAreaEdgeInsetResolverC5UIKitE10bsxpcCoderABSgSo13BSXPCDecoding_p_tcfC_0(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBSXPCCoder_];
  swift_unknownObjectRelease();
  return v1;
}

id _UISceneSafeAreaEdgeInsetCompositeResolver.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_1891149DC(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_189112E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a4(a3);
  swift_unknownObjectRelease();
  return v6;
}

void _UISceneSafeAreaEdgeInsetCompositeResolver.encode(withBSXPCCoder:)(void *a1)
{
  type metadata accessor for _UISceneSafeAreaEdgeInsetResolver(a1);
  v2 = sub_18A4A7518();
  v3 = sub_18A4A7258();
  [a1 encodeCollection:v2 forKey:v3];
}

uint64_t sub_189112FF4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 112);
  v76[6] = *(a1 + 96);
  v76[7] = v3;
  v77 = *(a1 + 128);
  v4 = *(a1 + 48);
  v76[2] = *(a1 + 32);
  v76[3] = v4;
  v5 = *(a1 + 80);
  v76[4] = *(a1 + 64);
  v76[5] = v5;
  v6 = *(a1 + 16);
  v76[0] = *a1;
  v76[1] = v6;
  v7 = sub_189112364(v76);
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        signpost_c2_entryLock_start(v8, v9);
        v63 = v10[1];
        v65 = *v10;
        v59 = v10[3];
        v61 = v10[2];
        v11 = a2[3];
        v69 = a2[2];
        v70 = v11;
        v12 = a2[1];
        v67 = *a2;
        v68 = v12;
        v75 = *(a2 + 128);
        v13 = a2[7];
        v73 = a2[6];
        v74 = v13;
        v14 = a2[5];
        v71 = a2[4];
        v72 = v14;
        if (sub_189112364(&v67) != 1)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      signpost_c2_entryLock_start(v8, v9);
      v29 = *v44;
      v28 = v44[1];
      v31 = v44[2];
      v30 = v44[3];
      v45 = a2[7];
      v73 = a2[6];
      v74 = v45;
      v75 = *(a2 + 128);
      v46 = a2[1];
      v67 = *a2;
      v68 = v46;
      v47 = a2[3];
      v69 = a2[2];
      v70 = v47;
      v48 = a2[5];
      v71 = a2[4];
      v72 = v48;
      if (sub_189112364(&v67) != 2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      signpost_c2_entryLock_start(v8, v9);
      v29 = *v27;
      v28 = v27[1];
      v31 = v27[2];
      v30 = v27[3];
      v32 = a2[7];
      v73 = a2[6];
      v74 = v32;
      v75 = *(a2 + 128);
      v33 = a2[1];
      v67 = *a2;
      v68 = v33;
      v34 = a2[3];
      v69 = a2[2];
      v70 = v34;
      v35 = a2[5];
      v71 = a2[4];
      v72 = v35;
      if (sub_189112364(&v67))
      {
        goto LABEL_26;
      }
    }

    signpost_c2_entryLock_start(v36, v37);
    if (v29 != *v49 || v28 != v49[1] || v31 != v49[2] || v30 != v49[3])
    {
      goto LABEL_26;
    }

LABEL_24:
    v25 = 1;
    return v25 & 1;
  }

  if (v7 == 3)
  {
    signpost_c2_entryLock_start(v8, v9);
    v63 = v38[1];
    v65 = *v38;
    v59 = v38[3];
    v61 = v38[2];
    v39 = a2[3];
    v69 = a2[2];
    v70 = v39;
    v40 = a2[1];
    v67 = *a2;
    v68 = v40;
    v75 = *(a2 + 128);
    v41 = a2[7];
    v73 = a2[6];
    v74 = v41;
    v42 = a2[5];
    v71 = a2[4];
    v72 = v42;
    if (sub_189112364(&v67) != 3)
    {
      goto LABEL_26;
    }

LABEL_16:
    signpost_c2_entryLock_start(v15, v16);
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v65, *v43), vceqq_f64(v63, v43[1])))))
    {
      v26 = vuzp1q_s32(vceqq_f64(v61, v43[2]), vceqq_f64(v59, v43[3]));
      goto LABEL_18;
    }

LABEL_26:
    v25 = 0;
    return v25 & 1;
  }

  if (v7 != 4)
  {
    v50 = a2[7];
    v73 = a2[6];
    v74 = v50;
    v75 = *(a2 + 128);
    v51 = a2[3];
    v69 = a2[2];
    v70 = v51;
    v52 = a2[5];
    v71 = a2[4];
    v72 = v52;
    v53 = a2[1];
    v67 = *a2;
    v68 = v53;
    if (sub_189112364(&v67) != 5)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  signpost_c2_entryLock_start(v8, v9);
  v64 = v17[1];
  v66 = *v17;
  v60 = v17[3];
  v62 = v17[2];
  v57 = v17[4];
  v58 = v17[5];
  v55 = v17[6];
  v56 = v17[7];
  v18 = a2[1];
  v67 = *a2;
  v68 = v18;
  v19 = a2[5];
  v71 = a2[4];
  v72 = v19;
  v75 = *(a2 + 128);
  v20 = a2[7];
  v73 = a2[6];
  v74 = v20;
  v21 = a2[3];
  v69 = a2[2];
  v70 = v21;
  if (sub_189112364(&v67) != 4)
  {
    goto LABEL_26;
  }

  signpost_c2_entryLock_start(v22, v23);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v66, *v24), vceqq_f64(v64, v24[1])))) & 1) == 0)
  {
    goto LABEL_26;
  }

  v25 = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v62, v24[2]), vceqq_f64(v60, v24[3])))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v57, v24[4]), vceqq_f64(v58, v24[5])), xmmword_18A650B80)) & 0xF) == 0)
  {
    v26 = vuzp1q_s32(vceqq_f64(v55, v24[6]), vceqq_f64(v56, v24[7]));
LABEL_18:
    v25 = vminv_u16(vmovn_s32(v26));
  }

  return v25 & 1;
}

uint64_t sub_18911339C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_18A4A86C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_18A4A86C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018A6AA8A0 == a2 || (sub_18A4A86C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018A6AA8C0 == a2 || (sub_18A4A86C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000018A6AA8E0 == a2 || (sub_18A4A86C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1751343461 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_18A4A86C8();

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

uint64_t sub_1891135A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18A4A86C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_18A4A86C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000 || (sub_18A4A86C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 13151 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_18A4A86C8();

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

__n128 sub_1891136E8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D7F8);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v70.n128_u64[0] = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D800);
  v61 = *(v6 - 8);
  *&v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v69.n128_u64[0] = &v52 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D808);
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v68.n128_u64[0] = &v52 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D810);
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  *&v65 = &v52 - v9;
  *&v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D818);
  v56 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D820);
  v55 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D828);
  v71 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v18 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v18);
  sub_189114C3C();
  v19 = v72.n128_u64[0];
  sub_18A4A8998();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v14;
  v53 = v12;
  v54 = v11;
  v21 = v67;
  v22 = v68.n128_u64[0];
  v72.n128_u64[0] = 0;
  v23 = v69.n128_u64[0];
  v24 = v70.n128_u64[0];
  v25 = sub_18A4A8598();
  v26 = (2 * *(v25 + 16)) | 1;
  v100 = v25;
  v101 = v25 + 32;
  v102 = 0;
  v103 = v26;
  v27 = sub_189116DAC();
  if (v27 == 6 || v102 != v103 >> 1)
  {
    v31 = sub_18A4A8188();
    swift_allocError();
    v32 = v15;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D830);
    *v34 = &_s12SafeAreaTypeON;
    sub_18A4A8558();
    sub_18A4A8178();
    (*(*(v31 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    (*(v71 + 8))(v17, v32);
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    return result;
  }

  if (v27 > 2u)
  {
    if (v27 == 3)
    {
      v74.n128_u8[0] = 3;
      sub_189114D38();
      v41 = v72.n128_u64[0];
      sub_18A4A8548();
      v42 = v71;
      if (!v41)
      {
        type metadata accessor for UIEdgeInsets(0);
        sub_189114E88(&qword_1EA93D838);
        v45 = v60;
        sub_18A4A8588();
        (*(v58 + 8))(v22, v45);
        (*(v42 + 8))(v17, v15);
        swift_unknownObjectRelease();
        v74 = v89;
        v75 = v90;
        sub_189114EE4(&v74);
        v97 = v80;
        v98 = v81;
        v99 = v82;
        v93 = v76;
        v94 = v77;
        v95 = v78;
        v96 = v79;
        v91 = v74;
        v92 = v75;
        v48 = v66;
        goto LABEL_29;
      }

      (*(v71 + 8))(v17, v15);
      goto LABEL_10;
    }

    v36 = v71;
    if (v27 == 4)
    {
      v74.n128_u8[0] = 4;
      sub_189114CE4();
      v37 = v23;
      v38 = v72.n128_u64[0];
      sub_18A4A8548();
      v48 = v66;
      if (!v38)
      {
        v72.n128_u64[0] = v15;
        type metadata accessor for UIEdgeInsets(0);
        v74.n128_u8[0] = 0;
        sub_189114E88(&qword_1EA93D838);
        v39 = v62;
        sub_18A4A8588();
        v68 = v90;
        v70 = v89;
        LOBYTE(v85) = 1;
        sub_18A4A8588();
        (*(v61 + 8))(v37, v39);
        (*(v36 + 8))(v17, v72.n128_u64[0]);
        swift_unknownObjectRelease();
        v74 = v70;
        v75 = v68;
        v76 = v87;
        v77 = v88;
        sub_189114ED8(&v74);
        v97 = v80;
        v98 = v81;
        v99 = v82;
        v93 = v76;
        v94 = v77;
        v95 = v78;
        v96 = v79;
        v91 = v74;
        v92 = v75;
        goto LABEL_29;
      }
    }

    else
    {
      v74.n128_u8[0] = 5;
      sub_189114C90();
      v44 = v72.n128_u64[0];
      sub_18A4A8548();
      if (!v44)
      {
        type metadata accessor for UIEdgeInsets(0);
        v74.n128_u8[0] = 0;
        sub_189114E88(&qword_1EA93D838);
        v47 = v63;
        sub_18A4A8588();
        v69 = v90;
        v72 = v89;
        v74.n128_u8[0] = 1;
        sub_18A4A8588();
        v67 = v88;
        v68 = v87;
        v74.n128_u8[0] = 2;
        sub_18A4A8588();
        v62 = v86;
        v65 = v85;
        v104 = 3;
        sub_18A4A8588();
        (*(v64 + 8))(v24, v47);
        (*(v36 + 8))(v17, v15);
        swift_unknownObjectRelease();
        v74 = v72;
        v75 = v69;
        v76 = v68;
        v77 = v67;
        v78 = v65;
        v79 = v62;
        v80 = v83;
        v81 = v84;
        sub_189114ECC(&v74);
        v97 = v80;
        v98 = v81;
        v99 = v82;
        v93 = v76;
        v94 = v77;
        v95 = v78;
        v96 = v79;
        v91 = v74;
        v92 = v75;
        goto LABEL_25;
      }
    }

    (*(v36 + 8))(v17, v15);
    goto LABEL_10;
  }

  if (!v27)
  {
    v74.n128_u8[0] = 0;
    sub_189114E34();
    v40 = v72.n128_u64[0];
    sub_18A4A8548();
    if (v40)
    {
      v30 = v71;
      goto LABEL_21;
    }

    (*(v55 + 8))(v20, v53);
    (*(v71 + 8))(v17, v15);
    swift_unknownObjectRelease();
    sub_189114F04(&v91);
LABEL_25:
    v48 = v66;
    goto LABEL_29;
  }

  v28 = v72.n128_u64[0];
  if (v27 != 1)
  {
    v74.n128_u8[0] = 2;
    sub_189114D8C();
    v43 = v65;
    sub_18A4A8548();
    v30 = v71;
    if (!v28)
    {
      type metadata accessor for UIEdgeInsets(0);
      v74.n128_u8[0] = 0;
      sub_189114E88(&qword_1EA93D838);
      v46 = v57;
      sub_18A4A8588();
      v70 = v90;
      v72 = v89;
      LOBYTE(v85) = 1;
      sub_18A4A8588();
      (*(v59 + 8))(v43, v46);
      (*(v30 + 8))(v17, v15);
      swift_unknownObjectRelease();
      v74 = v72;
      v75 = v70;
      v76 = v87;
      v77 = v88;
      sub_189114EF0(&v74);
      v97 = v80;
      v98 = v81;
      v99 = v82;
      v93 = v76;
      v94 = v77;
      v95 = v78;
      v96 = v79;
      v91 = v74;
      v92 = v75;
      v48 = v66;
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  v74.n128_u8[0] = 1;
  sub_189114DE0();
  v29 = v54;
  sub_18A4A8548();
  v30 = v71;
  if (v28)
  {
LABEL_21:
    (*(v30 + 8))(v17, v15);
    goto LABEL_10;
  }

  type metadata accessor for UIEdgeInsets(0);
  sub_189114E88(&qword_1EA93D838);
  sub_18A4A8588();
  (*(v56 + 8))(v29, v21);
  (*(v30 + 8))(v17, v15);
  swift_unknownObjectRelease();
  v74 = v89;
  v75 = v90;
  sub_189114EFC(&v74);
  v97 = v80;
  v98 = v81;
  v99 = v82;
  v93 = v76;
  v94 = v77;
  v95 = v78;
  v96 = v79;
  v91 = v74;
  v92 = v75;
  v48 = v66;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_0Tm(v73);
  v49 = v98;
  *(v48 + 96) = v97;
  *(v48 + 112) = v49;
  *(v48 + 128) = v99;
  v50 = v94;
  *(v48 + 32) = v93;
  *(v48 + 48) = v50;
  v51 = v96;
  *(v48 + 64) = v95;
  *(v48 + 80) = v51;
  result = v92;
  *v48 = v91;
  *(v48 + 16) = result;
  return result;
}

id sub_1891146A0(void *a1)
{
  v3 = sub_18A4A72D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A7258();
  v8 = [a1 decodeStringForKey_];

  if (!v8 || (sub_18A4A7288(), v8, sub_18A4A72C8(), v9 = sub_18A4A7298(), v11 = v10, , (*(v4 + 8))(v6, v3), v11 >> 60 == 15))
  {
    sub_189114F04(&v26);
    v12 = &v1[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets];
    v13 = v33;
    *(v12 + 6) = v32;
    *(v12 + 7) = v13;
    v12[128] = v34;
    v14 = v29;
    *(v12 + 2) = v28;
    *(v12 + 3) = v14;
    v15 = v31;
    *(v12 + 4) = v30;
    *(v12 + 5) = v15;
    v16 = v27;
    *v12 = v26;
    *(v12 + 1) = v16;
    v25.receiver = v1;
    v25.super_class = _UISceneSafeAreaEdgeInsetConcreteResolver;
    return objc_msgSendSuper2(&v25, sel_init);
  }

  else
  {
    sub_18A4A23B8();
    swift_allocObject();
    sub_18A4A23A8();
    sub_189114F24();
    sub_18A4A2398();

    v17 = &v1[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets];
    v18 = v33;
    *(v17 + 6) = v32;
    *(v17 + 7) = v18;
    v17[128] = v34;
    v19 = v29;
    *(v17 + 2) = v28;
    *(v17 + 3) = v19;
    v20 = v31;
    *(v17 + 4) = v30;
    *(v17 + 5) = v20;
    v21 = v27;
    *v17 = v26;
    *(v17 + 1) = v21;
    v24.receiver = v1;
    v24.super_class = _UISceneSafeAreaEdgeInsetConcreteResolver;
    v22 = objc_msgSendSuper2(&v24, sel_init);
    sub_188DBF840(v9, v11);
    return v22;
  }
}

unint64_t sub_189114960()
{
  result = qword_1EA93D740;
  if (!qword_1EA93D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D740);
  }

  return result;
}

id sub_1891149DC(void *a1)
{
  sub_188A34624(0, &qword_1EA93D840);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneSafeAreaEdgeInsetResolver(ObjCClassFromMetadata);
  v4 = swift_getObjCClassFromMetadata();
  v5 = sub_18A4A7258();
  v6 = [a1 decodeCollectionOfClass:ObjCClassFromMetadata containingClass:v4 forKey:v5];

  if (v6 && (v7 = [v6 bs_array], swift_unknownObjectRelease(), v7) && (v8 = sub_18A4A7548(), v7, v9 = sub_189115710(v8), , v9))
  {
    *&v1[OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers] = v9;
    v12 = v1;
    v10 = &v12;
  }

  else
  {
    *&v1[OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers] = MEMORY[0x1E69E7CC0];
    v13.receiver = v1;
    v10 = &v13;
  }

  v10->super_class = _UISceneSafeAreaEdgeInsetCompositeResolver;
  return [(objc_super *)v10 init];
}

uint64_t _s12SafeAreaTypeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 129))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 128);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s12SafeAreaTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

uint64_t sub_189114BF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    LOBYTE(a2) = 5;
    *(result + 120) = 0;
  }

  *(result + 128) = a2;
  return result;
}

unint64_t sub_189114C3C()
{
  result = qword_1EA93D7B8;
  if (!qword_1EA93D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7B8);
  }

  return result;
}

unint64_t sub_189114C90()
{
  result = qword_1EA93D7C0;
  if (!qword_1EA93D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7C0);
  }

  return result;
}

unint64_t sub_189114CE4()
{
  result = qword_1EA93D7D0;
  if (!qword_1EA93D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7D0);
  }

  return result;
}

unint64_t sub_189114D38()
{
  result = qword_1EA93D7D8;
  if (!qword_1EA93D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7D8);
  }

  return result;
}

unint64_t sub_189114D8C()
{
  result = qword_1EA93D7E0;
  if (!qword_1EA93D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7E0);
  }

  return result;
}

unint64_t sub_189114DE0()
{
  result = qword_1EA93D7E8;
  if (!qword_1EA93D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7E8);
  }

  return result;
}

unint64_t sub_189114E34()
{
  result = qword_1EA93D7F0;
  if (!qword_1EA93D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7F0);
  }

  return result;
}

uint64_t sub_189114E88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIEdgeInsets(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_189114F04(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 5;
  return result;
}

unint64_t sub_189114F24()
{
  result = qword_1EA93D848;
  if (!qword_1EA93D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D848);
  }

  return result;
}

unint64_t sub_189114FEC()
{
  result = qword_1EA93D850;
  if (!qword_1EA93D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D850);
  }

  return result;
}

unint64_t sub_189115044()
{
  result = qword_1EA93D858;
  if (!qword_1EA93D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D858);
  }

  return result;
}

unint64_t sub_18911509C()
{
  result = qword_1EA93D860;
  if (!qword_1EA93D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D860);
  }

  return result;
}

unint64_t sub_1891150F4()
{
  result = qword_1EA93D868;
  if (!qword_1EA93D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D868);
  }

  return result;
}

unint64_t sub_18911514C()
{
  result = qword_1EA93D870;
  if (!qword_1EA93D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D870);
  }

  return result;
}

unint64_t sub_1891151A4()
{
  result = qword_1EA93D878;
  if (!qword_1EA93D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D878);
  }

  return result;
}

unint64_t sub_1891151FC()
{
  result = qword_1EA93D880;
  if (!qword_1EA93D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D880);
  }

  return result;
}

unint64_t sub_189115254()
{
  result = qword_1EA93D888;
  if (!qword_1EA93D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D888);
  }

  return result;
}

unint64_t sub_1891152AC()
{
  result = qword_1EA93D890;
  if (!qword_1EA93D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D890);
  }

  return result;
}

unint64_t sub_189115304()
{
  result = qword_1EA93D898;
  if (!qword_1EA93D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D898);
  }

  return result;
}

unint64_t sub_18911535C()
{
  result = qword_1EA93D8A0;
  if (!qword_1EA93D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8A0);
  }

  return result;
}

unint64_t sub_1891153B4()
{
  result = qword_1EA93D8A8;
  if (!qword_1EA93D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8A8);
  }

  return result;
}

unint64_t sub_18911540C()
{
  result = qword_1EA93D8B0;
  if (!qword_1EA93D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8B0);
  }

  return result;
}

unint64_t sub_189115464()
{
  result = qword_1EA93D8B8;
  if (!qword_1EA93D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8B8);
  }

  return result;
}

unint64_t sub_1891154BC()
{
  result = qword_1EA93D8C0;
  if (!qword_1EA93D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8C0);
  }

  return result;
}

unint64_t sub_189115514()
{
  result = qword_1EA93D8C8;
  if (!qword_1EA93D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8C8);
  }

  return result;
}

unint64_t sub_18911556C()
{
  result = qword_1EA93D8D0;
  if (!qword_1EA93D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8D0);
  }

  return result;
}

unint64_t sub_1891155C4()
{
  result = qword_1EA93D8D8;
  if (!qword_1EA93D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8D8);
  }

  return result;
}

unint64_t sub_18911561C()
{
  result = qword_1EA93D8E0;
  if (!qword_1EA93D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8E0);
  }

  return result;
}

unint64_t sub_189115674()
{
  result = qword_1EA93D8E8;
  if (!qword_1EA93D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8E8);
  }

  return result;
}

uint64_t sub_18911572C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v10 = MEMORY[0x1E69E7CC0];
  v6 = *(a1 + 16);
  sub_18A4A8208();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_188A55598(i, v9);
    a3(a2);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_18A4A81D8();
    sub_18A4A8218();
    sub_18A4A8228();
    sub_18A4A81E8();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t sub_189115A44(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D940);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D948);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D950);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D958);
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_189117C64();
  sub_18A4A89C8();
  if (!*(v2 + 64))
  {
    LOBYTE(v34) = 1;
    sub_189117D0C();
    v17 = v33;
    sub_18A4A85A8();
    v21 = v2[1];
    v34 = *v2;
    v35 = v21;
    v22 = v2[3];
    v36 = v2[2];
    v37 = v22;
    type metadata accessor for _UICornerInsets(0);
    sub_189117DB4(&qword_1EA93D970);
    v23 = v28;
    sub_18A4A85D8();
    (*(v27 + 8))(v8, v23);
    return (*(v32 + 8))(v15, v17);
  }

  if (*(v2 + 64) == 1)
  {
    LOBYTE(v34) = 2;
    sub_189117CB8();
    v16 = v29;
    v17 = v33;
    sub_18A4A85A8();
    v18 = v2[1];
    v34 = *v2;
    v35 = v18;
    v19 = v2[3];
    v36 = v2[2];
    v37 = v19;
    type metadata accessor for _UICornerInsets(0);
    sub_189117DB4(&qword_1EA93D970);
    v20 = v31;
    sub_18A4A85D8();
    (*(v30 + 8))(v16, v20);
    return (*(v32 + 8))(v15, v17);
  }

  LOBYTE(v34) = 0;
  sub_189117D60();
  v25 = v33;
  sub_18A4A85A8();
  (*(v10 + 8))(v12, v9);
  return (*(v32 + 8))(v15, v25);
}

uint64_t sub_189115EB8(uint64_t a1)
{
  v2 = sub_189117D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189115EF4(uint64_t a1)
{
  v2 = sub_189117D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_189115F30()
{
  v1 = 7105633;
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
    return 1701736302;
  }
}

uint64_t sub_189115F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_189116E84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_189115FB4(uint64_t a1)
{
  v2 = sub_189117C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189115FF0(uint64_t a1)
{
  v2 = sub_189117C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18911602C(uint64_t a1)
{
  v2 = sub_189117D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189116068(uint64_t a1)
{
  v2 = sub_189117D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1891160A4(uint64_t a1)
{
  v2 = sub_189117CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1891160E0(uint64_t a1)
{
  v2 = sub_189117CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_18911611C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = sub_189116FA4(a1, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

BOOL sub_1891161B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_189116DE0(v7, v9);
}

id sub_189116278(char *a1, uint64_t a2, _OWORD *a3, char a4)
{
  v4 = &a1[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets];
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  *v4 = *a3;
  *(v4 + 1) = v5;
  *(v4 + 2) = v6;
  *(v4 + 3) = v7;
  v4[64] = a4;
  v9.receiver = a1;
  v9.super_class = _UISceneSafeAreaCornerInsetConcreteResolver;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t _UISceneSafeAreaCornerInsetConcreteResolver.safeAreaCornerInsets(for:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (!*(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 64))
  {
    goto LABEL_7;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (*(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 64) == 1)
  {
    switch(result)
    {
      case 2:
        v3 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32);
        v4 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 40);
        v5 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48);
        v6 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 56);
        v7 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
        v8 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 8);
        v9 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16);
        v10 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 24);
        goto LABEL_8;
      case 4:
        v3 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 24);
        v4 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16);
        v5 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 40);
        v6 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32);
        v7 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 56);
        v8 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48);
        v9 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 8);
        v10 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
        goto LABEL_8;
      case 3:
        v3 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 56);
        v4 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48);
        v5 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 8);
        v6 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
        v7 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 24);
        v8 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16);
        v9 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 40);
        v10 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32);
        goto LABEL_8;
    }

LABEL_7:
    v3 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    v4 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 8);
    v5 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16);
    v6 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 24);
    v7 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32);
    v8 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 40);
    v9 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48);
    v10 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 56);
  }

LABEL_8:
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  return result;
}

BOOL _UISceneSafeAreaCornerInsetConcreteResolver.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, &v13);
  if (!*(&v14 + 1))
  {
    sub_188A553EC(&v13);
    return 0;
  }

  type metadata accessor for _UISceneSafeAreaCornerInsetConcreteResolver(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *&v11[0];
  v4 = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48);
  v11[2] = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32);
  v11[3] = v4;
  v12 = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 64);
  v5 = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16);
  v11[0] = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
  v11[1] = v5;
  v13 = *&v3[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets];
  v6 = *&v3[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16];
  v7 = *&v3[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32];
  v8 = *&v3[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48];
  v17 = v3[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 64];
  v15 = v7;
  v16 = v8;
  v14 = v6;

  return sub_189116DE0(v11, &v13);
}

id _UISceneSafeAreaCornerInsetConcreteResolver.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_1891176E0(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t _UISceneSafeAreaCornerInsetConcreteResolver.encode(withBSXPCCoder:)(void *a1)
{
  v2 = sub_18A4A72D8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18A4A23E8();
  swift_allocObject();
  sub_18A4A23D8();
  sub_189117958();
  v3 = sub_18A4A23C8();
  v5 = v4;

  sub_18A4A72C8();
  sub_18A4A72A8();
  if (v6)
  {
    v7 = sub_18A4A7258();

    v8 = sub_18A4A7258();
    [a1 encodeObject:v7 forKey:v8];
  }

  return sub_188DC0F30(v3, v5);
}

void _UISceneSafeAreaCornerInsetCompositeResolver.safeAreaCornerInsets(for:)(uint64_t a1@<X0>, float64x2_t *a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v8 = 0uLL;
LABEL_11:
    *a2 = v15;
    a2[1] = v14;
    a2[2] = v13;
    a2[3] = v8;
    return;
  }

  v6 = sub_18A4A7F68();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v8 = 0uLL;
    do
    {
      v12 = v8;
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_188E4B0B4(v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      ++v7;
      [v9 safeAreaCornerInsetsForOrientation_];
      v14 = vbslq_s8(vcgeq_f64(v17, v14), v17, v14);
      v15 = vbslq_s8(vcgeq_f64(v16, v15), v16, v15);
      v11 = v19;
      v13 = vbslq_s8(vcgeq_f64(v18, v13), v18, v13);

      v8 = vbslq_s8(vcgeq_f64(v11, v12), v11, v12);
    }

    while (v6 != v7);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t _UISceneSafeAreaCornerInsetCompositeResolver.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, v8);
  if (!v9)
  {
    sub_188A553EC(v8);
    goto LABEL_5;
  }

  type metadata accessor for _UISceneSafeAreaCornerInsetCompositeResolver(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers);
  v4 = *&v7[OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers];

  v5 = sub_1890159D0(v3, v4);

  return v5 & 1;
}

uint64_t sub_189116B08(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_188A553EC(v10);
  return v8 & 1;
}

id _UISceneSafeAreaCornerInsetCompositeResolver.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_1891179C0(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_189116BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a4(a3);
  swift_unknownObjectRelease();
  return v6;
}

void _UISceneSafeAreaCornerInsetCompositeResolver.encode(withBSXPCCoder:)(void *a1)
{
  type metadata accessor for _UISceneSafeAreaCornerInsetResolver(a1);
  v2 = sub_18A4A7518();
  v3 = sub_18A4A7258();
  [a1 encodeCollection:v2 forKey:v3];
}

uint64_t sub_189116DAC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_189116DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (!*(a1 + 64))
  {
    if (*(a2 + 64))
    {
      return 0;
    }

    return vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))))) & 1;
  }

  if (*(a1 + 64) == 1)
  {
    if (v2 != 1)
    {
      return 0;
    }

    return vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))))) & 1;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v4 = vorrq_s8(vorrq_s8(*a2, *(a2 + 32)), vorrq_s8(*(a2 + 16), *(a2 + 48)));
  return !*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
}

uint64_t sub_189116E84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_18A4A86C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_18A4A86C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018A6AA8C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_18A4A86C8();

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

__n128 sub_189116FA4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D988);
  v51.n128_u64[0] = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  *&v54 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D990);
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D998);
  *&v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93D9A0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - v13;
  v15 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v15);
  sub_189117C64();
  v16 = v55;
  sub_18A4A8998();
  if (v16)
  {
    goto LABEL_20;
  }

  v17 = v53;
  v46 = 0;
  v47 = v12;
  *&v55 = v14;
  v18 = sub_18A4A8598();
  v19 = *(v18 + 16);
  if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
  {
    v22 = sub_18A4A8188();
    swift_allocError();
    v23 = v11;
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D830);
    *v25 = &_s18SafeAreaCornerTypeON;
    v26 = v55;
    sub_18A4A8558();
    sub_18A4A8178();
    (*(*(v22 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v47 + 8))(v26, v23);
LABEL_19:
    swift_unknownObjectRelease();
LABEL_20:
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    return result;
  }

  if (!*(v18 + 32))
  {
    LOBYTE(v56) = 0;
    sub_189117D60();
    v31 = v55;
    v32 = v46;
    sub_18A4A8548();
    if (v32)
    {
      v29 = *(v47 + 8);
      v30 = v31;
      goto LABEL_15;
    }

    (*(v17 + 8))(v10, v8);
    (*(v47 + 8))(v31, v11);
    swift_unknownObjectRelease();
    v40 = 0uLL;
    v54 = 0u;
    v55 = 0u;
    v39 = 2;
    v53 = 0u;
    goto LABEL_23;
  }

  if (v20 == 1)
  {
    LOBYTE(v56) = 1;
    sub_189117D0C();
    v27 = v55;
    v28 = v46;
    sub_18A4A8548();
    if (v28)
    {
      v29 = *(v47 + 8);
      v30 = v27;
LABEL_15:
      v33 = v11;
LABEL_18:
      v29(v30, v33);
      goto LABEL_19;
    }

    type metadata accessor for _UICornerInsets(0);
    sub_189117DB4(&unk_1EA93D9B0);
    v38 = v49;
    sub_18A4A8588();
    (*(v50 + 8))(v7, v38);
    (*(v47 + 8))(v27, v11);
    swift_unknownObjectRelease();
    v39 = 0;
    v54 = v57;
    v55 = v56;
    v40 = v59;
    v53 = v58;
LABEL_23:
    v51 = v40;
    v36 = v52;
    goto LABEL_25;
  }

  LOBYTE(v56) = 2;
  sub_189117CB8();
  v34 = v55;
  v35 = v46;
  sub_18A4A8548();
  v33 = v11;
  v36 = v52;
  if (v35)
  {
    v29 = *(v47 + 8);
    v30 = v34;
    goto LABEL_18;
  }

  v41 = v33;
  type metadata accessor for _UICornerInsets(0);
  sub_189117DB4(&unk_1EA93D9B0);
  v42 = v48;
  sub_18A4A8588();
  v43 = v47;
  (*(v51.n128_u64[0] + 8))(0, v42);
  (*(v43 + 8))(v55, v41);
  swift_unknownObjectRelease();
  v54 = v57;
  v55 = v56;
  v39 = 1;
  v53 = v58;
  v51 = v59;
LABEL_25:
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  v44 = v54;
  *v36 = v55;
  *(v36 + 16) = v44;
  result = v51;
  *(v36 + 32) = v53;
  *(v36 + 48) = result;
  *(v36 + 64) = v39;
  return result;
}

id sub_1891176E0(void *a1)
{
  v3 = sub_18A4A72D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A7258();
  v8 = [a1 decodeStringForKey_];

  if (!v8 || (sub_18A4A7288(), v8, sub_18A4A72C8(), v9 = sub_18A4A7298(), v11 = v10, , (*(v4 + 8))(v6, v3), v11 >> 60 == 15))
  {
    v12 = &v1[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets];
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *(v12 + 3) = 0u;
    v12[64] = 2;
    v24.receiver = v1;
    v24.super_class = _UISceneSafeAreaCornerInsetConcreteResolver;
    return objc_msgSendSuper2(&v24, sel_init);
  }

  else
  {
    sub_18A4A23B8();
    swift_allocObject();
    sub_18A4A23A8();
    sub_189117DF8();
    sub_18A4A2398();

    v13 = &v1[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets];
    v14 = v22;
    *(v13 + 2) = v21;
    *(v13 + 3) = v14;
    v13[64] = v23;
    v15 = v20;
    *v13 = v19;
    *(v13 + 1) = v15;
    v18.receiver = v1;
    v18.super_class = _UISceneSafeAreaCornerInsetConcreteResolver;
    v16 = objc_msgSendSuper2(&v18, sel_init);
    sub_188DBF840(v9, v11);
    return v16;
  }
}

unint64_t sub_189117958()
{
  result = qword_1EA93D900;
  if (!qword_1EA93D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D900);
  }

  return result;
}

id sub_1891179C0(void *a1)
{
  sub_188A34624(0, &qword_1EA93D840);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneSafeAreaCornerInsetResolver(ObjCClassFromMetadata);
  v4 = swift_getObjCClassFromMetadata();
  v5 = sub_18A4A7258();
  v6 = [a1 decodeCollectionOfClass:ObjCClassFromMetadata containingClass:v4 forKey:v5];

  if (v6 && (v7 = [v6 bs_array], swift_unknownObjectRelease(), v7) && (v8 = sub_18A4A7548(), v7, v10 = sub_18911572C(v8, v9, type metadata accessor for _UISceneSafeAreaCornerInsetResolver), , v10))
  {
    *&v1[OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers] = v10;
    v13 = v1;
    v11 = &v13;
  }

  else
  {
    *&v1[OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers] = MEMORY[0x1E69E7CC0];
    v14.receiver = v1;
    v11 = &v14;
  }

  v11->super_class = _UISceneSafeAreaCornerInsetCompositeResolver;
  return [(objc_super *)v11 init];
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t _s18SafeAreaCornerTypeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s18SafeAreaCornerTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_189117C10(uint64_t a1)
{
  if (*(a1 + 64) <= 1u)
  {
    return *(a1 + 64);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_189117C28(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_189117C64()
{
  result = qword_1EA93D960;
  if (!qword_1EA93D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D960);
  }

  return result;
}

unint64_t sub_189117CB8()
{
  result = qword_1EA93D968;
  if (!qword_1EA93D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D968);
  }

  return result;
}

unint64_t sub_189117D0C()
{
  result = qword_1EA93D978;
  if (!qword_1EA93D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D978);
  }

  return result;
}

unint64_t sub_189117D60()
{
  result = qword_1EA93D980;
  if (!qword_1EA93D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D980);
  }

  return result;
}

uint64_t sub_189117DB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UICornerInsets(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_189117DF8()
{
  result = qword_1EA93D9C0;
  if (!qword_1EA93D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9C0);
  }

  return result;
}

unint64_t sub_189117E90()
{
  result = qword_1EA93D9C8;
  if (!qword_1EA93D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9C8);
  }

  return result;
}

unint64_t sub_189117EE8()
{
  result = qword_1EA93D9D0;
  if (!qword_1EA93D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9D0);
  }

  return result;
}

unint64_t sub_189117F40()
{
  result = qword_1EA93D9D8;
  if (!qword_1EA93D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9D8);
  }

  return result;
}

unint64_t sub_189117F98()
{
  result = qword_1EA93D9E0;
  if (!qword_1EA93D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9E0);
  }

  return result;
}

unint64_t sub_189117FF0()
{
  result = qword_1EA93D9E8;
  if (!qword_1EA93D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9E8);
  }

  return result;
}

unint64_t sub_189118048()
{
  result = qword_1EA93D9F0;
  if (!qword_1EA93D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9F0);
  }

  return result;
}

unint64_t sub_1891180A0()
{
  result = qword_1EA93D9F8;
  if (!qword_1EA93D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9F8);
  }

  return result;
}

unint64_t sub_1891180F8()
{
  result = qword_1EA93DA00;
  if (!qword_1EA93DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DA00);
  }

  return result;
}

unint64_t sub_189118150()
{
  result = qword_1EA93DA08;
  if (!qword_1EA93DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DA08);
  }

  return result;
}

unint64_t sub_1891181A8()
{
  result = qword_1EA93DA10;
  if (!qword_1EA93DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DA10);
  }

  return result;
}

unint64_t sub_189118200()
{
  result = qword_1EA93DA18;
  if (!qword_1EA93DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DA18);
  }

  return result;
}

void sub_18911825C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A2B48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      sub_188E723D4(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_189118478(void **a1)
{
  v2 = *(sub_18A4A2B48() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_18917F088(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_18911CBD8(v5);
  *a1 = v3;
}

unint64_t sub_189118554()
{
  result = qword_1EA93DA20;
  if (!qword_1EA93DA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93DA20);
  }

  return result;
}

uint64_t UITableView._intelligenceCollectSubelements(in:using:transformToRoot:)(uint64_t a1, void (*a2)(void, double, double, double, double), uint64_t a3, double a4, double a5, double a6, double a7)
{
  v365 = a3;
  v366 = a2;
  v340 = a7;
  v274 = sub_18A4A3678();
  v273 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v274);
  v272 = &v270 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = sub_18A4A3688();
  v276 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v275 = &v270 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_18A4A3BC8();
  v278 = *(v323 - 8);
  MEMORY[0x1EEE9AC00](v323);
  v319 = &v270 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_18A4A3BF8();
  v270 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317);
  v357 = &v270 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v299 = &v270 - v17;
  v307 = sub_18A4A4258();
  v364 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307);
  v298 = &v270 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0);
  MEMORY[0x1EEE9AC00](v288);
  v287 = &v270 - v19;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120);
  MEMORY[0x1EEE9AC00](v297);
  v286 = &v270 - v20;
  v326 = sub_18A4A3D18();
  v363 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326);
  v296 = &v270 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v316 = &v270 - v23;
  v285 = sub_18A4A3E48();
  v289 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v284 = &v270 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v283 = &v270 - v26;
  v356 = sub_18A4A3BA8();
  v355 = *(v356 - 8);
  MEMORY[0x1EEE9AC00](v356);
  v315 = &v270 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v354 = &v270 - v29;
  v330 = sub_18A4A3888();
  v349 = *(v330 - 8);
  MEMORY[0x1EEE9AC00](v330);
  v360 = &v270 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v318 = &v270 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v325 = &v270 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v332 = &v270 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v358 = &v270 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v370 = (&v270 - v40);
  v368 = sub_18A4A3CC8();
  v361 = *(v368 - 8);
  MEMORY[0x1EEE9AC00](v368);
  v271 = &v270 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v336 = &v270 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v335 = &v270 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v359 = &v270 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v305 = &v270 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v314 = &v270 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v367 = &v270 - v53;
  v369 = sub_18A4A2B48();
  v348 = *(v369 - 1);
  MEMORY[0x1EEE9AC00](v369);
  v322 = &v270 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v331 = &v270 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v341 = &v270 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v303 = &v270 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v321 = &v270 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v333 = &v270 - v64;
  v350 = sub_18A4A4168();
  v346 = *(v350 - 1);
  MEMORY[0x1EEE9AC00](v350);
  v344 = &v270 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v345 = (&v270 - v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v352 = &v270 - v69;
  v362 = sub_18A4A3E68();
  v353 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v343 = &v270 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v351 = (&v270 - v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C140);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v302 = &v270 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v339 = &v270 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v270 - v78;
  v80 = sub_18A4A4088();
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v270 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v270 - v85;
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&aBlock, v378);
  sub_18A4A3E88();
  v371 = v7;
  v347 = sub_18911BD30();
  v87 = *(v81 + 8);
  v293 = v86;
  v87(v86, v80);
  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  v88 = *(v364 + 56);
  v306 = v79;
  v89 = v79;
  v90 = v352;
  v301 = v364 + 56;
  v300 = v88;
  v88(v89, 1, 1, v307);
  v342 = a1;
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&aBlock, v378);
  v91 = v353;
  sub_18A4A3E88();
  sub_18A4A3E98();
  v295 = v80;
  v92 = v80;
  v93 = v362;
  v294 = v81 + 8;
  v292 = v87;
  v87(v83, v92);
  if ((v91[6])(v90, 1, v93) == 1)
  {
    sub_188A3F5FC(v90, &unk_1EA9340C0);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  }

  else
  {
    v94 = v351;
    (v91)[4](v351, v90, v93);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    v95 = UITableView._appIntentsDataSourcePayloadProvider.getter(&v382);
    if (*(&v383 + 1))
    {
      sub_188A8F66C(&v382, &aBlock);

      v97 = v345;
      sub_1890E6534(v96, v345);
      __swift_project_boxed_opaque_existential_0(&aBlock, v378);
      v98 = sub_18A4A4268();
      __swift_project_boxed_opaque_existential_0(&aBlock, v378);
      v99 = sub_18A4A4278();
      v334 = v98;
      if (v99)
      {
        (v91)[2](v343, v94, v93);
        sub_188A53994(&aBlock, &v382);
        v100 = v346;
        v101 = v350;
        (v346[2])(v344, v97, v350);

        v102 = v339;
        sub_18A4A4228();
        v100[1](v97, v101);
        (v91[1])(v94, v93);
        v300(v102, 0, 1, v307);
        sub_1890C3D9C(v102, v306);
      }

      else
      {
        v346[1](v97, v350);
        (v91[1])(v94, v93);
      }

      v103 = v368;
      v105 = v369;
      v106 = v364;
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      v104 = v370;
      goto LABEL_10;
    }

    (v91[1])(v94, v93, v95);
    sub_188A3F5FC(&v382, &unk_1EA93C160);
  }

  v334 = 0;
  v103 = v368;
  v104 = v370;
  v105 = v369;
  v106 = v364;
LABEL_10:
  v107 = __swift_project_boxed_opaque_existential_0(v347 + 5, v347[8]);
  v108 = MEMORY[0x1EEE9AC00](v107);
  (*(v110 + 16))(&v270 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0), v108);
  *(&v383 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v382);
  sub_18A4A7458();
  v362 = 0;
  v346 = (v348 + 48);
  v339 = v348 + 32;
  v344 = (v361 + 56);
  v351 = &v377;
  v352 = v348 + 16;
  v350 = (v361 + 48);
  v364 = v361 + 32;
  v313 = *MEMORY[0x1E69DBBC0];
  v353 = (v355 + 13);
  v312 = (v355 + 1);
  v355 = (v361 + 8);
  v329 = (v349 + 16);
  v328 = *MEMORY[0x1E69DBBA8];
  v327 = (v349 + 8);
  v320 = (v348 + 56);
  v311 = *MEMORY[0x1E69DBC38];
  v310 = v363 + 13;
  v282 = v289 + 16;
  v309 = (v363 + 1);
  v281 = v289 + 32;
  v280 = v289 + 56;
  v279 = v289 + 8;
  v304 = (v106 + 48);
  v291 = (v106 + 32);
  v290 = "CornerInsetCompositeResolver";
  v338 = (v348 + 8);
  v363 = MEMORY[0x1E69E7CC8];
  v345 = (v361 + 16);
  v308 = xmmword_18A64BFB0;
  v111 = v341;
  for (i = v104; ; i = v370)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v382, *(&v383 + 1));
    v113 = v333;
    sub_18A4A7D78();
    v114 = *v346;
    if ((*v346)(v113, 1, v105) == 1)
    {
      break;
    }

    v337 = *v339;
    v337(v111, v113, v105);
    v115 = (*v344)(i, 1, 1, v103);
    MEMORY[0x1EEE9AC00](v115);
    v116 = v371;
    *(&v270 - 2) = v371;
    *(&v270 - 1) = v111;
    *&v373 = 1;
    v117 = swift_allocObject();
    v117[2] = &v373;
    v117[3] = sub_18911CBB0;
    v117[4] = &v270 - 4;
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = sub_18911CAE0;
    *(isEscapingClosureAtFileLocation + 24) = v117;
    v379 = sub_188E3FE50;
    v380 = isEscapingClosureAtFileLocation;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v377 = sub_188A4A968;
    v378 = &block_descriptor_44_2;
    v119 = _Block_copy(&aBlock);

    [v116 performUsingPresentationValues_];
    _Block_release(v119);
    LOBYTE(v119) = swift_isEscapingClosureAtFileLocation();

    if (v119)
    {
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
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      sub_18A4A87A8();
      __break(1u);

      __break(1u);
      return result;
    }

    v343 = v114;
    isEscapingClosureAtFileLocation = v373;
    if (v373 == 1)
    {
      goto LABEL_99;
    }

    v121 = v371;
    v122 = v369;
    v123 = v370;
    if (isEscapingClosureAtFileLocation)
    {
      MEMORY[0x1EEE9AC00](v120);
      *(&v270 - 10) = v121;
      *(&v270 - 9) = isEscapingClosureAtFileLocation;
      *(&v270 - 8) = a4;
      *(&v270 - 7) = a5;
      v124 = v340;
      *(&v270 - 6) = a6;
      *(&v270 - 5) = v124;
      v125 = v366;
      *(&v270 - 4) = v342;
      *(&v270 - 3) = v125;
      *(&v270 - 2) = v365;
      v126 = v358;
      sub_18A4A33C8();
      sub_188DC900C(isEscapingClosureAtFileLocation);
      sub_188A3F5FC(v123, &unk_1EA934040);
      sub_188A3F704(v126, v123, &unk_1EA934040);
    }

    sub_18907FBC8(v111, v347[3]);
    v127 = sub_18A4A2B08();
    [v121 globalRowForRowAtIndexPath_];

    v349 = *v352;
    (v349)(v331, v111, v122);
    sub_18A4A3878();
    v128 = v332;
    sub_188A3F29C(v123, v332, &unk_1EA934040);
    v103 = v368;
    v348 = *v350;
    if ((v348)(v128, 1, v368) == 1)
    {
      v129 = sub_188A3F5FC(v128, &unk_1EA934040);
      v130 = v362;
    }

    else
    {
      isEscapingClosureAtFileLocation = v314;
      v324 = *v364;
      v324(v314, v128, v103);
      v131 = v354;
      sub_18A4A3C08();
      v132 = *v353;
      v133 = v315;
      v134 = v356;
      (*v353)(v315, v313, v356);
      v135 = MEMORY[0x18CFDEAE0](v131, v133);
      v136 = *v312;
      (*v312)(v133, v134);
      v136(v131, v134);
      if (v135)
      {
        v137 = v360;
        v138 = v330;
        (*v329)(v131, v360, v330);
        v132(v131, v328, v134);
        sub_18A4A3C18();
        (*v327)(v137, v138);
        sub_188A3F5FC(v370, &unk_1EA934040);
        v324(v367, isEscapingClosureAtFileLocation, v103);
        v139 = v362;
        v140 = v369;
        v111 = v341;
        v141 = v334;
        goto LABEL_27;
      }

      v129 = (*v355)(isEscapingClosureAtFileLocation, v103);
      v130 = v362;
      v111 = v341;
    }

    MEMORY[0x1EEE9AC00](v129);
    v142 = v371;
    *(&v270 - 2) = v371;
    *(&v270 - 1) = v111;
    v374 = 0u;
    v373 = 0u;
    v375 = 1;
    v143 = swift_allocObject();
    v143[2] = &v373;
    v143[3] = sub_18911CBB8;
    v143[4] = &v270 - 4;
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = sub_189122200;
    *(isEscapingClosureAtFileLocation + 24) = v143;
    v379 = sub_188E3FE50;
    v380 = isEscapingClosureAtFileLocation;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v377 = sub_188A4A968;
    v378 = &block_descriptor_55_3;
    v144 = _Block_copy(&aBlock);

    [v142 performUsingPresentationValues_];
    _Block_release(v144);
    LOBYTE(v144) = swift_isEscapingClosureAtFileLocation();

    if (v144)
    {
      goto LABEL_91;
    }

    if (v375)
    {
      goto LABEL_100;
    }

    v145 = *(&v374 + 1);
    v146 = *&v374;
    v147 = *(&v373 + 1);
    v148 = *&v373;

    v366(v371, v148, v147, v146, v145);
    v149 = v325;
    sub_188A3F29C(v370, v325, &unk_1EA934040);
    v103 = v368;
    if ((v348)(v149, 1, v368) == 1)
    {
      sub_188A3F5FC(v149, &unk_1EA934040);
    }

    else
    {
      v150 = v361;
      v151 = *(v361 + 32);
      v152 = v305;
      v151(v305, v149, v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
      v153 = (*(v150 + 80) + 32) & ~*(v150 + 80);
      v154 = swift_allocObject();
      *(v154 + 16) = v308;
      v151((v154 + v153), v152, v103);
    }

    v140 = v369;
    v141 = v334;
    v155 = v354;
    v156 = v360;
    isEscapingClosureAtFileLocation = v330;
    (*v329)(v354, v360, v330);
    (*v353)(v155, v328, v356);
    sub_18A4A3748();
    (*v327)(v156, isEscapingClosureAtFileLocation);
    sub_188A3F5FC(v370, &unk_1EA934040);
    v139 = v130;
    v111 = v341;
LABEL_27:
    v157 = v363;
    if (v141)
    {
      sub_1890E6F70(&aBlock);
      if (aBlock)
      {
        v158 = v321;
        (v349)(v321, v111, v140);
        (*v320)(v158, 0, 1, v140);
      }

      else
      {
        isEscapingClosureAtFileLocation = v381;
        v159 = sub_18A4A2B08();
        v160 = [isEscapingClosureAtFileLocation dataSourceIndexPathForPresentationIndexPath_];

        if (v160)
        {
          v161 = v303;
          sub_18A4A2B18();

          v162 = 0;
        }

        else
        {
          v162 = 1;
          v161 = v303;
        }

        (*v320)(v161, v162, 1, v140);
        v158 = v321;
        sub_188A3F704(v161, v321, &unk_1EA93C130);
      }

      sub_1890C3D10(&aBlock);
      if ((v343)(v158, 1, v140) == 1)
      {
        sub_188A3F5FC(v158, &unk_1EA93C130);
      }

      else
      {
        v163 = v322;
        v337(v322, v158, v140);
        v164 = v316;
        (v349)(v316, v163, v140);
        v348 = *v310;
        (v348)(v164, v311, v326);
        if (*(v141 + 16) && (v165 = sub_188E8BD28(v164), v164 = v316, (v166 & 1) != 0))
        {
          v167 = v289;
          v168 = *(v141 + 56) + *(v289 + 72) * v165;
          v169 = v316;
          v170 = *(v289 + 16);
          v171 = v284;
          v172 = v285;
          v170(v284, v168, v285);
          v173 = *v309;
          (*v309)(v169, v326);
          v174 = v283;
          (*(v167 + 32))(v283, v171, v172);
          v175 = v287;
          v170(v287, v174, v172);
          (*(v167 + 56))(v175, 0, 1, v172);
          sub_18A4A3848();
          sub_18A4A3978();
          (*(v167 + 8))(v174, v172);
        }

        else
        {
          v173 = *v309;
          (*v309)(v164, v326);
        }

        v176 = v306;
        v177 = v307;
        v178 = v302;
        isEscapingClosureAtFileLocation = &unk_1EA93C140;
        sub_188A3F29C(v306, v302, &unk_1EA93C140);
        if ((*v304)(v178, 1, v177) == 1)
        {
          (*v338)(v322, v140);
          sub_188A3F5FC(v178, &unk_1EA93C140);
        }

        else
        {
          v179 = *v291;
          v362 = v139;
          v180 = v298;
          v179(v298, v178, v177);
          sub_18A4A3448();
          __swift_project_boxed_opaque_existential_0(&v373, *(&v374 + 1));
          v181 = v293;
          sub_18A4A3E88();
          v182 = sub_18A4A6E88();
          v183 = v299;
          (*(*(v182 - 8) + 56))(v299, 1, 1, v182);
          v184 = sub_18A4A3958();
          sub_18A4A3838();
          sub_188A3F5FC(v183, &unk_1EA93C110);
          v292(v181, v295);
          v184(v372, 0);
          __swift_destroy_boxed_opaque_existential_0Tm(&v373);
          v185 = v296;
          v186 = v322;
          (v349)(v296, v322, v369);
          isEscapingClosureAtFileLocation = v326;
          (v348)(v185, v311, v326);
          sub_18A4A4248();
          v173(v185, isEscapingClosureAtFileLocation);
          __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
          v187 = v186;
          v111 = v341;
          (*v338)(v187, v369);
          sub_188A3F5FC(v176, &unk_1EA93C140);
          v188 = v180;
          v139 = v362;
          v179(v176, v188, v177);
          v300(v176, 0, 1, v177);
        }

        v103 = v368;
        v157 = v363;
      }
    }

    if (sub_18A4A2B28() < 1)
    {
      goto LABEL_89;
    }

    v189 = sub_18A4A2B58();
    (*v345)(v359, v367, v103);
    sub_188A55B8C(v139);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v157;
    isEscapingClosureAtFileLocation = sub_188C4585C(v189);
    v192 = v157[2];
    v193 = (v191 & 1) == 0;
    v194 = &v192[v193];
    if (__OFADD__(v192, v193))
    {
      goto LABEL_90;
    }

    v195 = v191;
    if (v157[3] >= v194)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_188FA6DF4();
        v157 = aBlock;
      }
    }

    else
    {
      sub_1890C10CC(v194, isUniquelyReferenced_nonNull_native);
      v157 = aBlock;
      v196 = sub_188C4585C(v189);
      if ((v195 & 1) != (v197 & 1))
      {
        goto LABEL_105;
      }

      isEscapingClosureAtFileLocation = v196;
    }

    if ((v195 & 1) == 0)
    {
      v157[(isEscapingClosureAtFileLocation >> 6) + 8] = (v157[(isEscapingClosureAtFileLocation >> 6) + 8] | (1 << isEscapingClosureAtFileLocation));
      *&v157[6][8 * isEscapingClosureAtFileLocation] = v189;
      *&v157[7][8 * isEscapingClosureAtFileLocation] = MEMORY[0x1E69E7CC0];
      v198 = v157[2];
      v199 = __OFADD__(v198, 1);
      v200 = v198 + 1;
      if (v199)
      {
        goto LABEL_97;
      }

      v157[2] = v200;
    }

    v201 = v157[7];
    v202 = *&v201[8 * isEscapingClosureAtFileLocation];
    v203 = swift_isUniquelyReferenced_nonNull_native();
    *&v201[8 * isEscapingClosureAtFileLocation] = v202;
    v363 = v157;
    if ((v203 & 1) == 0)
    {
      v202 = sub_188DFA260(0, v202[2] + 1, 1, v202);
      *&v201[8 * isEscapingClosureAtFileLocation] = v202;
    }

    v105 = v369;
    v205 = v202[2];
    v204 = v202[3];
    if (v205 >= v204 >> 1)
    {
      *&v201[8 * isEscapingClosureAtFileLocation] = sub_188DFA260(v204 > 1, v205 + 1, 1, v202);
    }

    v206 = v361;
    (*(v361 + 8))(v367, v103);
    v207 = *&v201[8 * isEscapingClosureAtFileLocation];
    *(v207 + 16) = v205 + 1;
    (*(v206 + 32))(v207 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v205, v359, v103);
    (*v338)(v111, v105);
    v362 = sub_188F49350;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v382);
  if (!(*v304)(v306, 1, v307))
  {
    sub_18A4A4238();
  }

  v208 = v363;
  v209 = v363[2];
  if (v209)
  {
    v210 = sub_1890BA4EC(v363[2], 0);
    v211 = sub_1890BA164(&aBlock, v210 + 4, v209, v208);
    isEscapingClosureAtFileLocation = v379;

    sub_188E036A4();
    if (v211 != v209)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v210 = MEMORY[0x1E69E7CC0];
  }

  *&aBlock = v210;
  isEscapingClosureAtFileLocation = 0;
  sub_1890B9A14(&aBlock);
  v212 = v371;

  v213 = aBlock;
  v214 = *(aBlock + 16);
  LODWORD(v360) = *MEMORY[0x1E69DBC10];
  v359 = v214;
  if (v214)
  {
    v215 = 0;
    v370 = &v377;
    v352 = (v278 + 104);
    v350 = (v270 + 16);
    LODWORD(v349) = *MEMORY[0x1E69DBBF8];
    v348 = (v270 + 8);
    v216 = (aBlock + 40);
    v369 = MEMORY[0x1E69E7CC0];
    v351 = aBlock;
    while (v215 < v213[2])
    {
      v217 = *(v216 - 1);
      v218 = *v216;
      v363 = v216;
      MEMORY[0x1EEE9AC00](v213);
      *(&v270 - 2) = v212;
      *(&v270 - 1) = v217;
      *&v382 = 0;
      BYTE8(v382) = 1;
      v219 = swift_allocObject();
      v219[2] = &v382;
      v219[3] = sub_18911CA9C;
      v219[4] = &v270 - 4;
      v220 = swift_allocObject();
      *(v220 + 16) = sub_18911CAD0;
      *(v220 + 24) = v219;
      v379 = sub_188A4B574;
      v380 = v220;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v377 = sub_188A4A968;
      v378 = &block_descriptor_117;
      v221 = v212;
      v222 = _Block_copy(&aBlock);
      v367 = v218;

      [v221 performUsingPresentationValues_];
      _Block_release(v222);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_93;
      }

      if (BYTE8(v382))
      {
        goto LABEL_101;
      }

      v223 = v215;

      (*v352)(v319, v360, v323);
      v224 = *v344;
      v225 = v368;
      (*v344)(v358, 1, 1, v368);
      v224(v318, 1, 1, v225);

      v226 = sub_18A4A3BB8();
      MEMORY[0x1EEE9AC00](v226);
      v227 = v371;
      *(&v270 - 2) = v371;
      *(&v270 - 1) = v217;
      *&v382 = 1;
      v228 = swift_allocObject();
      v228[2] = &v382;
      v228[3] = sub_18911CAD4;
      v228[4] = &v270 - 4;
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = sub_18911CAE0;
      *(isEscapingClosureAtFileLocation + 24) = v228;
      v379 = sub_188E3FE50;
      v380 = isEscapingClosureAtFileLocation;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v377 = sub_188A4A968;
      v378 = &block_descriptor_13_2;
      v229 = _Block_copy(&aBlock);

      [v227 performUsingPresentationValues_];
      _Block_release(v229);
      LOBYTE(v229) = swift_isEscapingClosureAtFileLocation();

      if (v229)
      {
        goto LABEL_94;
      }

      v230 = v382;
      if (v382 == 1)
      {
        goto LABEL_102;
      }

      if (v230)
      {
        MEMORY[0x1EEE9AC00](v231);
        *(&v270 - 10) = v227;
        *(&v270 - 9) = v230;
        *(&v270 - 8) = a4;
        *(&v270 - 7) = a5;
        v232 = v340;
        *(&v270 - 6) = a6;
        *(&v270 - 5) = v232;
        v233 = v366;
        *(&v270 - 4) = v342;
        *(&v270 - 3) = v233;
        *(&v270 - 2) = v365;
        sub_18A4A33C8();
        sub_18A4A3BE8();
        sub_188DC900C(v230);
      }

      MEMORY[0x1EEE9AC00](v231);
      *(&v270 - 2) = v227;
      *(&v270 - 1) = v217;
      *&v382 = 1;
      v234 = swift_allocObject();
      v234[2] = &v382;
      v234[3] = sub_18911CAF8;
      v234[4] = &v270 - 4;
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = sub_1891221FC;
      *(isEscapingClosureAtFileLocation + 24) = v234;
      v379 = sub_188E3FE50;
      v380 = isEscapingClosureAtFileLocation;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v377 = sub_188A4A968;
      v378 = &block_descriptor_24_4;
      v235 = _Block_copy(&aBlock);

      v212 = v371;

      [v212 performUsingPresentationValues_];
      _Block_release(v235);
      LOBYTE(v235) = swift_isEscapingClosureAtFileLocation();

      if (v235)
      {
        goto LABEL_95;
      }

      v236 = v382;
      if (v382 == 1)
      {
        goto LABEL_103;
      }

      if (v236)
      {
        MEMORY[0x1EEE9AC00](v237);
        *(&v270 - 10) = v212;
        *(&v270 - 9) = v236;
        *(&v270 - 8) = a4;
        *(&v270 - 7) = a5;
        v238 = v340;
        *(&v270 - 6) = a6;
        *(&v270 - 5) = v238;
        v239 = v366;
        *(&v270 - 4) = v342;
        *(&v270 - 3) = v239;
        *(&v270 - 2) = v365;
        sub_18A4A33C8();
        sub_18A4A3BD8();
        sub_188DC900C(v236);
      }

      MEMORY[0x1EEE9AC00](v237);
      *(&v270 - 2) = v212;
      *(&v270 - 1) = v217;
      v382 = 0u;
      v383 = 0u;
      LOBYTE(AssociatedConformanceWitness) = 1;
      v240 = swift_allocObject();
      v240[2] = &v382;
      v240[3] = sub_18911CB04;
      v240[4] = &v270 - 4;
      v241 = swift_allocObject();
      *(v241 + 16) = sub_18911CB08;
      *(v241 + 24) = v240;
      v379 = sub_188E3FE50;
      v380 = v241;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v377 = sub_188A4A968;
      v378 = &block_descriptor_34;
      v242 = _Block_copy(&aBlock);

      [v212 performUsingPresentationValues_];
      _Block_release(v242);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_96;
      }

      if (AssociatedConformanceWitness)
      {
        goto LABEL_104;
      }

      v243 = v383;
      v244 = v382;

      v366(v212, *&v244, *(&v244 + 1), *&v243, *(&v243 + 1));
      v245 = v354;
      v246 = v357;
      v247 = v317;
      (*v350)(v354, v357, v317);
      v248 = v353;
      (*v353)(v245, v349, v356);
      v249 = v335;
      sub_18A4A3748();
      (*v348)(v246, v247);
      v250 = v368;
      (*v345)(v336, v249, v368);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v369 = sub_188DFA260(0, v369[2] + 1, 1, v369);
      }

      v252 = v369[2];
      v251 = v369[3];
      if (v252 >= v251 >> 1)
      {
        v369 = sub_188DFA260(v251 > 1, v252 + 1, 1, v369);
      }

      ++v215;
      isEscapingClosureAtFileLocation = v361;
      (*(v361 + 8))(v335, v250);
      v253 = v369;
      v369[2] = v252 + 1;
      (*(isEscapingClosureAtFileLocation + 32))(v253 + ((*(isEscapingClosureAtFileLocation + 80) + 32) & ~*(isEscapingClosureAtFileLocation + 80)) + *(isEscapingClosureAtFileLocation + 72) * v252, v336, v250);
      v216 = v363 + 2;
      v213 = v351;
      if (v359 == (v223 + 1))
      {
        goto LABEL_87;
      }
    }

    goto LABEL_92;
  }

  v369 = MEMORY[0x1E69E7CC0];
  v245 = v354;
  v248 = v353;
LABEL_87:

  [v212 _rowDataNumberOfSections];
  [v212 _rowDataNumberOfRows];
  v254 = v272;
  (*(v278 + 104))(v272, v360, v323);
  (*(v273 + 104))(v254, *MEMORY[0x1E69DBA98], v274);
  v255 = v275;
  v256 = sub_18A4A3668();
  MEMORY[0x1EEE9AC00](v256);
  *(&v270 - 8) = v212;
  *(&v270 - 7) = a4;
  *(&v270 - 6) = a5;
  v257 = v340;
  *(&v270 - 5) = a6;
  *(&v270 - 4) = v257;
  v258 = v366;
  *(&v270 - 3) = v342;
  *(&v270 - 2) = v258;
  *(&v270 - 1) = v365;
  sub_18A4A33D8();
  [v212 contentSize];
  v258(v212, 0.0, 0.0, v259, v260);
  v261 = v276;
  v262 = v255;
  v263 = v277;
  (*(v276 + 16))(v245, v255, v277);
  (*v248)(v245, *MEMORY[0x1E69DBB90], v356);
  v264 = v271;
  sub_18A4A3748();
  sub_18A4A3988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
  v265 = v361;
  v266 = (*(v361 + 80) + 32) & ~*(v361 + 80);
  v267 = swift_allocObject();
  *(v267 + 16) = v308;
  v268 = v368;
  (*(v265 + 16))(v267 + v266, v264, v368);
  sub_18A4A3438();

  (*(v265 + 8))(v264, v268);
  (*(v261 + 8))(v262, v263);
  sub_188A3F5FC(v306, &unk_1EA93C140);
  return sub_188A55B8C(v362);
}

uint64_t sub_18911BD30()
{
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v1 = swift_allocObject();
  v1[2] = v0;
  v1[3] = &v11;
  v1[4] = &v10;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_189122198;
  *(v2 + 24) = v1;
  v9[4] = sub_188E3FE50;
  v9[5] = v2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188A4A968;
  v9[3] = &block_descriptor_168_1;
  v3 = _Block_copy(v9);
  v4 = v0;

  [v4 performUsingPresentationValues_];
  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v7 = v10;
    v6 = v11;

    v8 = sub_18911E528(v4, v6, v7);

    return v8;
  }

  return result;
}

double UITableView._appIntentsDataSourcePayloadProvider.getter@<D0>(uint64_t a1@<X8>)
{
  if ([v1 _internalAppIntentsDataSourcePayloadProvider])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_188A3F5FC(v6, &qword_1EA934050);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C170);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18911BFC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = sub_188DFA228;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188DFA16C;
  aBlock[3] = &block_descriptor_144;
  v17 = _Block_copy(aBlock);

  v19.receiver = a1;
  v19.super_class = UITableView;
  objc_msgSendSuper2(&v19, sel__intelligenceCollectSubelementsIn_using_transformToRoot_, a2, v17, a5, a6, a7, a8);
  _Block_release(v17);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18911C1EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  v27[4] = a11;
  v27[5] = v23;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_188DFA16C;
  v27[3] = a12;
  v24 = _Block_copy(v27);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_18911C350(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_18A4A2B08();
  v5 = [a1 cellForRowAtIndexPath_];

  *a2 = v5;
}

uint64_t sub_18911C3B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v21[4] = sub_188DFA1F8;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_188DFA16C;
  v21[3] = &block_descriptor_137_1;
  v19 = _Block_copy(v21);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v19);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

id sub_18911C514(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = [a1 indexPathsForSelectedRows];
  if (v6)
  {
    v7 = v6;
    sub_18A4A2B48();
    v8 = sub_18A4A7548();

    *a2 = v8;
  }

  result = [a1 indexPathsForVisibleRows];
  if (result)
  {
    v10 = result;
    sub_18A4A2B48();
    v11 = sub_18A4A7548();

    *a3 = v11;
  }

  return result;
}

uint64_t UITableView._appIntentsDataSourcePayloadProvider.setter(uint64_t a1)
{
  sub_188A3F29C(a1, v12, &unk_1EA93C160);
  v3 = v13;
  if (v13)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_18A4A86A8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v9 = 0;
  }

  [v1 _setInternalAppIntentsDataSourcePayloadProvider_];
  swift_unknownObjectRelease();
  return sub_188A3F5FC(a1, &unk_1EA93C160);
}

void (*UITableView._appIntentsDataSourcePayloadProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  UITableView._appIntentsDataSourcePayloadProvider.getter(v3);
  return sub_18911C7DC;
}

void sub_18911C7DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_188A3F29C(*a1, v2 + 40, &unk_1EA93C160);
    sub_188A3F29C(v2 + 40, v2 + 80, &unk_1EA93C160);
    v3 = *(v2 + 104);
    if (v3)
    {
      v4 = __swift_project_boxed_opaque_existential_0((v2 + 80), *(v2 + 104));
      v5 = *(v3 - 8);
      v6 = MEMORY[0x1EEE9AC00](v4);
      v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v5 + 16))(v8, v6);
      v9 = sub_18A4A86A8();
      (*(v5 + 8))(v8, v3);
      __swift_destroy_boxed_opaque_existential_0Tm(v2 + 80);
    }

    else
    {
      v9 = 0;
    }

    [*(v2 + 160) _setInternalAppIntentsDataSourcePayloadProvider_];
    swift_unknownObjectRelease();
    sub_188A3F5FC(v2 + 40, &unk_1EA93C160);
  }

  else
  {
    sub_188A3F29C(*a1, v2 + 120, &unk_1EA93C160);
    v10 = *(v2 + 144);
    if (v10)
    {
      v11 = __swift_project_boxed_opaque_existential_0((v2 + 120), *(v2 + 144));
      v12 = *(v10 - 8);
      v13 = MEMORY[0x1EEE9AC00](v11);
      v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = sub_18A4A86A8();
      (*(v12 + 8))(v15, v10);
      __swift_destroy_boxed_opaque_existential_0Tm(v2 + 120);
    }

    else
    {
      v16 = 0;
    }

    [*(v2 + 160) _setInternalAppIntentsDataSourcePayloadProvider_];
    swift_unknownObjectRelease();
  }

  sub_188A3F5FC(v2, &unk_1EA93C160);
  free(v2);
}

id sub_18911CA9C@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) numberOfRowsInSection_];
  *a1 = result;
  return result;
}

void sub_18911CBD8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_18A4A85F8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_18A4A2B48();
        v6 = sub_18A4A75D8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_18A4A2B48() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_18911CFB4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_18911CD04(0, v2, 1, a1);
  }
}

void sub_18911CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_18A4A2B48();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v31 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1890E7A48(&qword_1EA92F718);
      v26 = sub_18A4A7218();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_18911CFB4(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_18A4A2B48();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v119 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v119 - v14;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_18917EF5C(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_18911D9B4(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_18917EF5C(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_18917EED0(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1890E7A48(&qword_1EA92F718);
      LODWORD(v133) = sub_18A4A7218();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_18A4A7218() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_188E4B688(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_188E4B688((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_18911D9B4(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_18917EF5C(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_18917EED0(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1890E7A48(&qword_1EA92F718);
    v109 = sub_18A4A7218();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_18911D9B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = sub_18A4A2B48();
  v8 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v42 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v53 = a3;
  v15 = (a2 - a1) / v13;
  v57 = a1;
  v56 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v46 = (v8 + 8);
      v47 = (v8 + 16);
      v28 = a4 + v17;
      v29 = v53;
      v44 = a1;
      v45 = a4;
      v48 = v27;
      do
      {
        v42 = v26;
        v30 = a2 + v27;
        v31 = v26;
        v49 = a2;
        v50 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v57 = a2;
            v26 = v42;
            goto LABEL_59;
          }

          v33 = v29;
          v43 = v31;
          v53 = v29 + v27;
          v34 = v28 + v27;
          v35 = *v47;
          v36 = v51;
          v37 = v28 + v27;
          v38 = v28;
          v39 = v54;
          (*v47)(v51, v37, v54);
          v40 = v52;
          (v35)(v52, v30, v39);
          sub_1890E7A48(&qword_1EA92F718);
          LOBYTE(v35) = sub_18A4A7218();
          v41 = *v46;
          (*v46)(v40, v39);
          v41(v36, v39);
          if (v35)
          {
            break;
          }

          v31 = v34;
          v29 = v53;
          if (v33 < v38 || v53 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v50;
            a1 = v44;
          }

          else
          {
            v30 = v50;
            a1 = v44;
            if (v33 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v45;
          v27 = v48;
          a2 = v49;
          if (!v32)
          {
            v26 = v31;
            goto LABEL_58;
          }
        }

        v29 = v53;
        if (v33 < v49 || v53 >= v49)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v44;
          v28 = v38;
        }

        else
        {
          a2 = v50;
          a1 = v44;
          v28 = v38;
          if (v33 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v43;
        v27 = v48;
      }

      while (v28 > v45);
    }

LABEL_58:
    v57 = a2;
LABEL_59:
    v55 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a4 + v16;
    v55 = a4 + v16;
    if (v16 >= 1 && a2 < v53)
    {
      v48 = *(v8 + 16);
      v49 = v8 + 16;
      v46 = v13;
      v47 = (v8 + 8);
      do
      {
        v19 = v51;
        v20 = v54;
        v21 = v48;
        v48(v51, a2, v54);
        v22 = v52;
        v21(v52, a4, v20);
        sub_1890E7A48(&qword_1EA92F718);
        LOBYTE(v21) = sub_18A4A7218();
        v23 = *v47;
        (*v47)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v46;
          if (a1 < a2 || a1 >= v46 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v46;
          v25 = v46 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v56 = v25;
          a4 += v24;
        }

        a1 += v24;
        v57 = a1;
      }

      while (a4 < v50 && a2 < v53);
    }
  }

  sub_18911DF7C(&v57, &v56, &v55);
}

uint64_t sub_18911DF7C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_18A4A2B48();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_18911E060(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_18911E200(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1891221A4(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x18CFEA5B0](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_18911E200(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v30 = a1;
  v6 = sub_18A4A2B48();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v40 = &v27 - v12;
  v33 = *(a3 + 16);
  if (v33)
  {
    v29 = 0;
    v13 = 0;
    v38 = *(v10 + 16);
    v39 = v10 + 16;
    v32 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v14 = *(v10 + 72);
    v36 = a4 + 56;
    v37 = v14;
    v15 = (v10 + 8);
    v35 = a4;
    while (1)
    {
      v34 = v13;
      v38(v40, v32 + v37 * v13, v6, v11);
      sub_1890E7A48(&qword_1EA92F720);
      v18 = sub_18A4A7198();
      v19 = -1 << *(a4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v31 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23 = ~v19;
      while (1)
      {
        (v38)(v8, *(v35 + 48) + v20 * v37, v6);
        sub_1890E7A48(&qword_1EA92F710);
        v24 = sub_18A4A7248();
        v16 = *v15;
        (*v15)(v8, v6);
        if (v24)
        {
          break;
        }

        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
        {
          a4 = v35;
          goto LABEL_4;
        }
      }

      result = (v16)(v40, v6);
      v26 = v30[v21];
      v30[v21] = v26 | v22;
      if ((v26 & v22) != 0)
      {
        a4 = v35;
LABEL_5:
        v17 = v34;
        goto LABEL_6;
      }

      v17 = v34;
      a4 = v35;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return result;
      }

      ++v29;
LABEL_6:
      v13 = v17 + 1;
      if (v13 == v33)
      {
        goto LABEL_17;
      }
    }

    v16 = *v15;
LABEL_4:
    v16(v40, v6);
    goto LABEL_5;
  }

  v29 = 0;
LABEL_17:

  return sub_189192CB0(v30, v28, v29, a4);
}

uint64_t sub_18911E528(void *a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_188F991B8(a2);

  v8 = sub_188F991B8(v7);

  if ((sub_18A4A4058() & 1) == 0)
  {
    v6 = sub_18911E060(a3, v6);
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v9 = sub_18A4A4038();
  if (v10)
  {
    goto LABEL_6;
  }

  v11 = v9;
  if (*(v8 + 16) <= *(v6 + 2) >> 3)
  {
    v29 = v6;

    sub_1891D7378(v8);
    v12 = v6;
  }

  else
  {

    v12 = sub_189191398(v8, v6);
  }

  v27 = *(v12 + 16);

  if (v11 >= v27)
  {
    goto LABEL_6;
  }

  v6 = sub_18911E060(a3, v6);
  v13 = 1;
LABEL_7:

  sub_18911825C(v8, v6);
  v15 = v14;
  v16 = *(v14 + 16);
  if (!v16)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v28 = a1;
  v17 = sub_1890BA2D0(v16, 0);
  v18 = *(sub_18A4A2B48() - 8);
  sub_1890B9EC0(&v29, &v17[(*(v18 + 80) + 32) & ~*(v18 + 80)], v16, v15);
  v20 = v19;

  sub_188E036A4();
  if (v20 == v16)
  {
    a1 = v28;
LABEL_11:
    v29 = v17;
    sub_189118478(&v29);

    v21 = v29;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937EF8);
    v23 = sub_1890E7BAC();
    type metadata accessor for DataSourceBackedViewIntelligenceCollectionState();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 96) = 0u;
    *(v24 + 112) = 0u;
    *(v24 + 128) = 0u;
    *(v24 + 144) = 0u;
    *(v24 + 160) = 0u;
    *(v24 + 24) = v6;
    *(v24 + 32) = v8;
    *(v24 + 40) = v21;
    *(v24 + 64) = v22;
    *(v24 + 72) = v23;
    *(v24 + 80) = v13;
    *(v24 + 88) = a1;
    v25 = a1;
    return v24;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_18911E7BC(uint64_t a1, void *a2, char *a3, double a4, double a5, double a6, double a7)
{
  v372 = a2;
  v347 = a1;
  v343 = a7;
  v324 = sub_18A4A3BC8();
  v279 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v320 = &v270 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = sub_18A4A3BF8();
  v271 = *(v318 - 8);
  MEMORY[0x1EEE9AC00](v318);
  v361 = &v270 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = sub_18A4A3678();
  v274 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v273 = &v270 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_18A4A3688();
  v277 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v276 = &v270 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0);
  MEMORY[0x1EEE9AC00](v289);
  v288 = &v270 - v15;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120);
  MEMORY[0x1EEE9AC00](v300);
  v287 = &v270 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v299 = &v270 - v18;
  v309 = sub_18A4A4258();
  v370 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v298 = &v270 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_18A4A3D18();
  v366 = *(v327 - 8);
  MEMORY[0x1EEE9AC00](v327);
  v297 = &v270 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v305 = &v270 - v22;
  v286 = sub_18A4A3E48();
  v290 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v285 = &v270 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v284 = &v270 - v25;
  v360 = sub_18A4A3BA8();
  v365 = *(v360 - 8);
  MEMORY[0x1EEE9AC00](v360);
  v317 = &v270 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v358 = &v270 - v28;
  v331 = sub_18A4A3888();
  v353 = *(v331 - 8);
  MEMORY[0x1EEE9AC00](v331);
  v364 = &v270 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v319 = &v270 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v326 = &v270 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v333 = &v270 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v362 = &v270 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v341 = &v270 - v39;
  v40 = sub_18A4A3CC8();
  v367 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v337 = &v270 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v336 = &v270 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v272 = &v270 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v307 = &v270 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v363 = &v270 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v316 = &v270 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v369 = &v270 - v53;
  v371 = sub_18A4A2B48();
  v352 = *(v371 - 1);
  MEMORY[0x1EEE9AC00](v371);
  v323 = &v270 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v332 = &v270 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v345 = &v270 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v304 = &v270 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v322 = &v270 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v334 = &v270 - v64;
  v355 = sub_18A4A4168();
  v354 = *(v355 - 1);
  MEMORY[0x1EEE9AC00](v355);
  v349 = &v270 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v350 = (&v270 - v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v368 = &v270 - v69;
  v357 = sub_18A4A3E68();
  v359 = *(v357 - 1);
  MEMORY[0x1EEE9AC00](v357);
  v348 = &v270 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v356 = &v270 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C140);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v303 = &v270 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v346 = (&v270 - v76);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v270 - v78;
  v80 = sub_18A4A4088();
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v270 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v270 - v85;
  v344 = a3;
  v374 = a3;
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&aBlock, v381);
  sub_18A4A3E88();
  v351 = sub_18911BD30();
  v87 = *(v81 + 8);
  v294 = v86;
  v87(v86, v80);
  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  v88 = *(v370 + 56);
  v308 = v79;
  v89 = v79;
  v90 = v357;
  v302 = v370 + 56;
  v301 = v88;
  v88(v89, 1, 1, v309);
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&aBlock, v381);
  sub_18A4A3E88();
  v91 = v368;
  sub_18A4A3E98();
  v92 = v83;
  v93 = v359;
  v296 = v80;
  v295 = v81 + 8;
  v293 = v87;
  v87(v92, v80);
  if ((v93[6])(v91, 1, v90) == 1)
  {
    sub_188A3F5FC(v91, &unk_1EA9340C0);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  }

  else
  {
    v94 = v356;
    (v93[4])(v356, v91, v90);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    v95 = UITableView._appIntentsDataSourcePayloadProvider.getter(&v385);
    if (*(&v386 + 1))
    {
      sub_188A8F66C(&v385, &aBlock);

      v97 = v350;
      sub_1890E6534(v96, v350);
      __swift_project_boxed_opaque_existential_0(&aBlock, v381);
      v98 = sub_18A4A4268();
      __swift_project_boxed_opaque_existential_0(&aBlock, v381);
      v99 = sub_18A4A4278();
      v335 = v98;
      if (v99)
      {
        (v93[2])(v348, v94, v90);
        sub_188A53994(&aBlock, &v385);
        v100 = v354;
        v101 = v355;
        (v354[2])(v349, v97, v355);

        v102 = v346;
        sub_18A4A4228();
        (v100[1])(v97, v101);
        v93[1](v94, v90);
        v301(v102, 0, 1, v309);
        sub_1890C3D9C(v102, v308);
      }

      else
      {
        (v354[1])(v97, v355);
        v93[1](v94, v90);
      }

      v104 = v371;
      v105 = v334;
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      v103 = v341;
      goto LABEL_10;
    }

    (v93[1])(v94, v90, v95);
    sub_188A3F5FC(&v385, &unk_1EA93C160);
  }

  v335 = 0;
  v103 = v341;
  v104 = v371;
  v105 = v334;
LABEL_10:
  v106 = __swift_project_boxed_opaque_existential_0(v351 + 5, v351[8]);
  v107 = MEMORY[0x1EEE9AC00](v106);
  (*(v109 + 16))(&v270 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0), v107);
  *(&v386 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v385);
  sub_18A4A7458();
  v110 = 0;
  v350 = v352 + 48;
  v340 = (v352 + 32);
  v348 = (v367 + 56);
  v355 = &v380;
  v356 = v352 + 16;
  v354 = (v367 + 48);
  v368 = (v367 + 32);
  v315 = *MEMORY[0x1E69DBBC0];
  v357 = (v365 + 104);
  v314 = (v365 + 8);
  v359 = (v367 + 8);
  v330 = (v353 + 16);
  v329 = *MEMORY[0x1E69DBBA8];
  v328 = (v353 + 8);
  v342 = v344 + 16;
  v321 = (v352 + 56);
  v313 = *MEMORY[0x1E69DBC38];
  v312 = (v366 + 13);
  v283 = v290 + 16;
  v311 = (v366 + 1);
  v282 = v290 + 32;
  v281 = v290 + 56;
  v280 = v290 + 8;
  v306 = (v370 + 48);
  v292 = (v370 + 32);
  v291 = "CornerInsetCompositeResolver";
  v339 = (v352 + 8);
  v349 = (v367 + 16);
  v310 = xmmword_18A64BFB0;
  v366 = MEMORY[0x1E69E7CC8];
  v370 = v40;
  v111 = v345;
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v385, *(&v386 + 1));
    sub_18A4A7D78();
    v112 = *v350;
    v113 = (*v350)(v105, 1, v104);
    v365 = v110;
    if (v113 == 1)
    {
      break;
    }

    v338 = *v340;
    (v338)(v111, v105, v104);
    v114 = v103;
    v115 = v103;
    v116 = v40;
    v117 = (*v348)(v115, 1, 1, v40);
    MEMORY[0x1EEE9AC00](v117);
    v118 = v372;
    *(&v270 - 2) = v372;
    *(&v270 - 1) = v111;
    *&v376 = 1;
    v119 = swift_allocObject();
    v119[2] = &v376;
    v119[3] = sub_189122258;
    v119[4] = &v270 - 4;
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = sub_1891221FC;
    *(isEscapingClosureAtFileLocation + 24) = v119;
    v382 = sub_188E3FE50;
    v383 = isEscapingClosureAtFileLocation;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v380 = sub_188A4A968;
    v381 = &block_descriptor_118_4;
    v121 = _Block_copy(&aBlock);

    [v118 performUsingPresentationValues_];
    _Block_release(v121);
    LOBYTE(v121) = swift_isEscapingClosureAtFileLocation();

    if (v121)
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      _Block_release(v344);
      sub_18A4A87A8();
      __break(1u);

      __break(1u);
      return result;
    }

    v346 = v112;
    isEscapingClosureAtFileLocation = v376;
    if (v376 == 1)
    {
      goto LABEL_100;
    }

    if (isEscapingClosureAtFileLocation)
    {
      MEMORY[0x1EEE9AC00](v122);
      *(&v270 - 10) = v118;
      *(&v270 - 9) = isEscapingClosureAtFileLocation;
      *(&v270 - 8) = a4;
      *(&v270 - 7) = a5;
      v123 = v343;
      *(&v270 - 6) = a6;
      *(&v270 - 5) = v123;
      *(&v270 - 4) = v347;
      *(&v270 - 3) = sub_188B17584;
      *(&v270 - 2) = &v373;
      v124 = v362;
      sub_18A4A33C8();
      sub_188DC900C(isEscapingClosureAtFileLocation);
      sub_188A3F5FC(v114, &unk_1EA934040);
      sub_188A3F704(v124, v114, &unk_1EA934040);
    }

    sub_18907FBC8(v111, v351[3]);
    v125 = sub_18A4A2B08();
    [v118 globalRowForRowAtIndexPath_];

    v353 = *v356;
    (v353)(v332, v111, v371);
    sub_18A4A3878();
    v126 = v333;
    sub_188A3F29C(v114, v333, &unk_1EA934040);
    v352 = *v354;
    if ((v352)(v126, 1, v116) == 1)
    {
      v127 = sub_188A3F5FC(v126, &unk_1EA934040);
      v128 = v371;
    }

    else
    {
      v129 = v316;
      v325 = *v368;
      v325(v316, v126, v116);
      v130 = v358;
      sub_18A4A3C08();
      v131 = *v357;
      v132 = v317;
      v133 = v360;
      (*v357)(v317, v315, v360);
      v134 = MEMORY[0x18CFDEAE0](v130, v132);
      v135 = *v314;
      (*v314)(v132, v133);
      v135(v130, v133);
      if (v134)
      {
        isEscapingClosureAtFileLocation = v364;
        v136 = v331;
        (*v330)(v130, v364, v331);
        v131(v130, v329, v133);
        sub_18A4A3C18();
        (*v328)(isEscapingClosureAtFileLocation, v136);
        v137 = v341;
        sub_188A3F5FC(v341, &unk_1EA934040);
        v325(v369, v129, v116);
        v40 = v116;
        v103 = v137;
        v128 = v371;
        v138 = v345;
        v139 = v335;
        if (!v335)
        {
          goto LABEL_44;
        }

LABEL_28:
        sub_1890E6F70(&aBlock);
        if (aBlock)
        {
          v157 = v322;
          (v353)(v322, v138, v128);
          (*v321)(v157, 0, 1, v128);
        }

        else
        {
          isEscapingClosureAtFileLocation = v384;
          v158 = sub_18A4A2B08();
          v159 = [isEscapingClosureAtFileLocation dataSourceIndexPathForPresentationIndexPath_];

          if (v159)
          {
            isEscapingClosureAtFileLocation = v304;
            sub_18A4A2B18();

            v160 = isEscapingClosureAtFileLocation;
            v161 = 0;
          }

          else
          {
            v161 = 1;
            v160 = v304;
          }

          (*v321)(v160, v161, 1, v128);
          v162 = v160;
          v157 = v322;
          sub_188A3F704(v162, v322, &unk_1EA93C130);
        }

        sub_1890C3D10(&aBlock);
        if ((v346)(v157, 1, v128) == 1)
        {
          sub_188A3F5FC(v157, &unk_1EA93C130);
        }

        else
        {
          v163 = v157;
          v164 = v323;
          (v338)(v323, v163, v128);
          v165 = v305;
          (v353)(v305, v164, v128);
          v352 = *v312;
          (v352)(v165, v313, v327);
          if (*(v139 + 16) && (v166 = sub_188E8BD28(v165), (v167 & 1) != 0))
          {
            v168 = v290;
            v169 = *(v290 + 16);
            v170 = v285;
            v171 = v286;
            v169(v285, *(v139 + 56) + *(v290 + 72) * v166, v286);
            v172 = *v311;
            (*v311)(v165, v327);
            v173 = v284;
            (*(v168 + 32))(v284, v170, v171);
            v174 = v288;
            v169(v288, v173, v171);
            (*(v168 + 56))(v174, 0, 1, v171);
            sub_18A4A3848();
            sub_18A4A3978();
            (*(v168 + 8))(v173, v171);
          }

          else
          {
            v172 = *v311;
            (*v311)(v165, v327);
          }

          v175 = v308;
          v176 = v309;
          v177 = v303;
          isEscapingClosureAtFileLocation = &unk_1EA93C140;
          sub_188A3F29C(v308, v303, &unk_1EA93C140);
          if ((*v306)(v177, 1, v176) == 1)
          {
            (*v339)(v323, v371);
            sub_188A3F5FC(v177, &unk_1EA93C140);
          }

          else
          {
            v338 = v172;
            v346 = *v292;
            v178 = v298;
            v346(v298, v177, v176);
            sub_18A4A3448();
            __swift_project_boxed_opaque_existential_0(&v376, *(&v377 + 1));
            v179 = v294;
            sub_18A4A3E88();
            v180 = sub_18A4A6E88();
            v181 = v299;
            (*(*(v180 - 8) + 56))(v299, 1, 1, v180);
            v182 = sub_18A4A3958();
            sub_18A4A3838();
            sub_188A3F5FC(v181, &unk_1EA93C110);
            v293(v179, v296);
            v182(v375, 0);
            __swift_destroy_boxed_opaque_existential_0Tm(&v376);
            v183 = v297;
            v184 = v323;
            v185 = v371;
            (v353)(v297, v323, v371);
            isEscapingClosureAtFileLocation = v327;
            (v352)(v183, v313, v327);
            sub_18A4A4248();
            v338(v183, isEscapingClosureAtFileLocation);
            __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
            v186 = v184;
            v138 = v345;
            (*v339)(v186, v185);
            sub_188A3F5FC(v175, &unk_1EA93C140);
            v346(v175, v178, v176);
            v301(v175, 0, 1, v176);
          }

          v103 = v341;
        }

        goto LABEL_44;
      }

      v127 = (*v359)(v129, v116);
      v128 = v371;
      v111 = v345;
    }

    MEMORY[0x1EEE9AC00](v127);
    v140 = v372;
    *(&v270 - 2) = v372;
    *(&v270 - 1) = v111;
    v377 = 0u;
    v376 = 0u;
    v378 = 1;
    v141 = swift_allocObject();
    v141[2] = &v376;
    v141[3] = sub_189122250;
    v141[4] = &v270 - 4;
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = sub_189122200;
    *(isEscapingClosureAtFileLocation + 24) = v141;
    v382 = sub_188E3FE50;
    v383 = isEscapingClosureAtFileLocation;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v380 = sub_188A4A968;
    v381 = &block_descriptor_130_0;
    v142 = _Block_copy(&aBlock);

    [v140 performUsingPresentationValues_];
    _Block_release(v142);
    LOBYTE(v142) = swift_isEscapingClosureAtFileLocation();

    if (v142)
    {
      goto LABEL_93;
    }

    if (v378)
    {
      goto LABEL_101;
    }

    v143 = *(&v377 + 1);
    v144 = *&v377;
    v145 = *(&v376 + 1);
    v146 = *&v376;

    (*(v344 + 2))(v344, v372, v146, v145, v144, v143);
    v147 = v341;
    v148 = v326;
    sub_188A3F29C(v341, v326, &unk_1EA934040);
    v149 = v370;
    if ((v352)(v148, 1, v370) == 1)
    {
      sub_188A3F5FC(v148, &unk_1EA934040);
    }

    else
    {
      v150 = v367;
      v151 = *(v367 + 32);
      v152 = v307;
      v151(v307, v148, v149);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
      v153 = (*(v150 + 80) + 32) & ~*(v150 + 80);
      v154 = swift_allocObject();
      *(v154 + 16) = v310;
      v151((v154 + v153), v152, v149);
    }

    v139 = v335;
    v155 = v358;
    v156 = v364;
    isEscapingClosureAtFileLocation = v331;
    (*v330)(v358, v364, v331);
    (*v357)(v155, v329, v360);
    sub_18A4A3748();
    (*v328)(v156, isEscapingClosureAtFileLocation);
    v103 = v147;
    sub_188A3F5FC(v147, &unk_1EA934040);
    v40 = v370;
    v138 = v345;
    if (v139)
    {
      goto LABEL_28;
    }

LABEL_44:
    if (sub_18A4A2B28() < 1)
    {
      goto LABEL_91;
    }

    v187 = sub_18A4A2B58();
    (*v349)(v363, v369, v40);
    sub_188A55B8C(v365);
    v188 = v366;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v188;
    isEscapingClosureAtFileLocation = sub_188C4585C(v187);
    v191 = v188[2];
    v192 = (v190 & 1) == 0;
    v193 = v191 + v192;
    if (__OFADD__(v191, v192))
    {
      goto LABEL_92;
    }

    v194 = v190;
    if (v188[3] >= v193)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v190)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_188FA6DF4();
        v188 = aBlock;
        if (v194)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      sub_1890C10CC(v193, isUniquelyReferenced_nonNull_native);
      v188 = aBlock;
      v195 = sub_188C4585C(v187);
      if ((v194 & 1) != (v196 & 1))
      {
        goto LABEL_106;
      }

      isEscapingClosureAtFileLocation = v195;
      if (v194)
      {
        goto LABEL_54;
      }
    }

    v188[(isEscapingClosureAtFileLocation >> 6) + 8] |= 1 << isEscapingClosureAtFileLocation;
    *(v188[6] + 8 * isEscapingClosureAtFileLocation) = v187;
    *(v188[7] + 8 * isEscapingClosureAtFileLocation) = MEMORY[0x1E69E7CC0];
    v197 = v188[2];
    v198 = __OFADD__(v197, 1);
    v199 = v197 + 1;
    if (v198)
    {
      goto LABEL_99;
    }

    v188[2] = v199;
LABEL_54:
    v366 = v188;
    v200 = v188[7];
    v201 = *(v200 + 8 * isEscapingClosureAtFileLocation);
    v202 = swift_isUniquelyReferenced_nonNull_native();
    *(v200 + 8 * isEscapingClosureAtFileLocation) = v201;
    v203 = v138;
    if ((v202 & 1) == 0)
    {
      v201 = sub_188DFA260(0, v201[2] + 1, 1, v201);
      *(v200 + 8 * isEscapingClosureAtFileLocation) = v201;
    }

    v104 = v371;
    v105 = v334;
    v205 = v201[2];
    v204 = v201[3];
    if (v205 >= v204 >> 1)
    {
      *(v200 + 8 * isEscapingClosureAtFileLocation) = sub_188DFA260(v204 > 1, v205 + 1, 1, v201);
    }

    v206 = v367;
    (*(v367 + 8))(v369, v40);
    v207 = *(v200 + 8 * isEscapingClosureAtFileLocation);
    *(v207 + 16) = v205 + 1;
    (*(v206 + 32))(v207 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v205, v363, v40);
    v111 = v203;
    (*v339)(v203, v104);
    v110 = sub_188F49350;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v385);
  if (!(*v306)(v308, 1, v309))
  {
    sub_18A4A4238();
  }

  v208 = v366;
  v209 = v366[2];
  if (v209)
  {
    v210 = sub_1890BA4EC(v366[2], 0);
    v211 = sub_1890BA164(&aBlock, v210 + 4, v209, v208);

    sub_188E036A4();
    if (v211 != v209)
    {
      __break(1u);
      goto LABEL_66;
    }
  }

  else
  {
LABEL_66:
    v210 = MEMORY[0x1E69E7CC0];
  }

  *&aBlock = v210;
  isEscapingClosureAtFileLocation = 0;
  sub_1890B9A14(&aBlock);

  v213 = aBlock;
  v214 = *(aBlock + 16);
  LODWORD(v363) = *MEMORY[0x1E69DBC10];
  v215 = v370;
  v356 = v214;
  if (v214)
  {
    v216 = 0;
    v371 = &v380;
    v355 = (v279 + 104);
    v353 = (v271 + 16);
    LODWORD(v352) = *MEMORY[0x1E69DBBF8];
    v350 = (v271 + 8);
    v217 = (aBlock + 40);
    v369 = MEMORY[0x1E69E7CC0];
    v354 = aBlock;
    while (v216 < v213[2])
    {
      v218 = *(v217 - 1);
      v219 = *v217;
      v364 = v217;
      MEMORY[0x1EEE9AC00](v212);
      v220 = v372;
      *(&v270 - 2) = v372;
      *(&v270 - 1) = v218;
      *&v385 = 0;
      BYTE8(v385) = 1;
      v221 = swift_allocObject();
      v221[2] = &v385;
      v221[3] = sub_189122218;
      v221[4] = &v270 - 4;
      v222 = swift_allocObject();
      *(v222 + 16) = sub_189122204;
      *(v222 + 24) = v221;
      v382 = sub_188E3FE50;
      v383 = v222;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v380 = sub_188A4A968;
      v381 = &block_descriptor_67_1;
      v223 = _Block_copy(&aBlock);
      v366 = v219;

      [v220 performUsingPresentationValues_];
      _Block_release(v223);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_95;
      }

      if (BYTE8(v385))
      {
        goto LABEL_102;
      }

      v224 = v216;

      (*v355)(v320, v363, v324);
      v225 = *v348;
      v226 = v370;
      (*v348)(v362, 1, 1, v370);
      v225(v319, 1, 1, v226);

      v227 = sub_18A4A3BB8();
      MEMORY[0x1EEE9AC00](v227);
      v228 = v372;
      *(&v270 - 2) = v372;
      *(&v270 - 1) = v218;
      *&v385 = 1;
      v229 = swift_allocObject();
      v229[2] = &v385;
      v229[3] = sub_189122244;
      v229[4] = &v270 - 4;
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = sub_1891221FC;
      *(isEscapingClosureAtFileLocation + 24) = v229;
      v382 = sub_188E3FE50;
      v383 = isEscapingClosureAtFileLocation;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v380 = sub_188A4A968;
      v381 = &block_descriptor_79_3;
      v230 = _Block_copy(&aBlock);

      [v228 performUsingPresentationValues_];
      _Block_release(v230);
      LOBYTE(v230) = swift_isEscapingClosureAtFileLocation();

      if (v230)
      {
        goto LABEL_96;
      }

      v231 = v385;
      if (v385 == 1)
      {
        goto LABEL_103;
      }

      v233 = v372;
      if (v231)
      {
        MEMORY[0x1EEE9AC00](v232);
        *(&v270 - 10) = v233;
        *(&v270 - 9) = v231;
        *(&v270 - 8) = a4;
        *(&v270 - 7) = a5;
        v234 = v343;
        *(&v270 - 6) = a6;
        *(&v270 - 5) = v234;
        *(&v270 - 4) = v347;
        *(&v270 - 3) = sub_188B17584;
        *(&v270 - 2) = &v373;
        sub_18A4A33C8();
        sub_18A4A3BE8();
        sub_188DC900C(v231);
      }

      MEMORY[0x1EEE9AC00](v232);
      *(&v270 - 2) = v233;
      *(&v270 - 1) = v218;
      *&v385 = 1;
      v235 = swift_allocObject();
      v235[2] = &v385;
      v235[3] = sub_189122248;
      v235[4] = &v270 - 4;
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = sub_1891221FC;
      *(isEscapingClosureAtFileLocation + 24) = v235;
      v382 = sub_188E3FE50;
      v383 = isEscapingClosureAtFileLocation;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v380 = sub_188A4A968;
      v381 = &block_descriptor_91;
      v236 = _Block_copy(&aBlock);

      [v233 performUsingPresentationValues_];
      _Block_release(v236);
      LOBYTE(v236) = swift_isEscapingClosureAtFileLocation();

      if (v236)
      {
        goto LABEL_97;
      }

      v237 = v385;
      if (v385 == 1)
      {
        goto LABEL_104;
      }

      v239 = v372;
      if (v237)
      {
        MEMORY[0x1EEE9AC00](v238);
        *(&v270 - 10) = v239;
        *(&v270 - 9) = v237;
        *(&v270 - 8) = a4;
        *(&v270 - 7) = a5;
        v240 = v343;
        *(&v270 - 6) = a6;
        *(&v270 - 5) = v240;
        *(&v270 - 4) = v347;
        *(&v270 - 3) = sub_188B17584;
        *(&v270 - 2) = &v373;
        sub_18A4A33C8();
        sub_18A4A3BD8();
        sub_188DC900C(v237);
      }

      MEMORY[0x1EEE9AC00](v238);
      *(&v270 - 2) = v239;
      *(&v270 - 1) = v218;
      v385 = 0u;
      v386 = 0u;
      LOBYTE(AssociatedConformanceWitness) = 1;
      v241 = swift_allocObject();
      v241[2] = &v385;
      v241[3] = sub_18912224C;
      v241[4] = &v270 - 4;
      v242 = swift_allocObject();
      *(v242 + 16) = sub_189122200;
      *(v242 + 24) = v241;
      v382 = sub_188E3FE50;
      v383 = v242;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v380 = sub_188A4A968;
      v381 = &block_descriptor_103_4;
      v243 = _Block_copy(&aBlock);

      [v239 performUsingPresentationValues_];
      _Block_release(v243);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_98;
      }

      if (AssociatedConformanceWitness)
      {
        goto LABEL_105;
      }

      v244 = v386;
      v245 = v385;

      (*(v344 + 2))(v344, v372, *&v245, *(&v245 + 1), *&v244, *(&v244 + 1));
      isEscapingClosureAtFileLocation = v358;
      v246 = v361;
      v247 = v318;
      (*v353)(v358, v361, v318);
      v248 = v357;
      (*v357)(isEscapingClosureAtFileLocation, v352, v360);
      v249 = v336;
      sub_18A4A3748();
      (*v350)(v246, v247);
      (*v349)(v337, v249, v370);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v369 = sub_188DFA260(0, *(v369 + 2) + 1, 1, v369);
      }

      v213 = v354;
      v251 = *(v369 + 2);
      v250 = *(v369 + 3);
      if (v251 >= v250 >> 1)
      {
        v369 = sub_188DFA260(v250 > 1, v251 + 1, 1, v369);
      }

      ++v216;
      v252 = v367;
      v215 = v370;
      (*(v367 + 8))(v336, v370);
      v253 = v369;
      *(v369 + 2) = v251 + 1;
      v212 = (*(v252 + 32))(&v253[((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v251], v337, v215);
      v217 = v364 + 16;
      if (v356 == (v224 + 1))
      {
        goto LABEL_89;
      }
    }

    goto LABEL_94;
  }

  v369 = MEMORY[0x1E69E7CC0];
  isEscapingClosureAtFileLocation = v358;
  v248 = v357;
LABEL_89:

  v254 = isEscapingClosureAtFileLocation;
  v255 = v248;
  v256 = v372;
  [v372 _rowDataNumberOfSections];
  [v256 _rowDataNumberOfRows];
  v257 = v273;
  (*(v279 + 104))(v273, v363, v324);
  (*(v274 + 104))(v257, *MEMORY[0x1E69DBA98], v275);
  v258 = v276;
  v259 = sub_18A4A3668();
  MEMORY[0x1EEE9AC00](v259);
  *(&v270 - 8) = v256;
  *(&v270 - 7) = a4;
  *(&v270 - 6) = a5;
  v260 = v343;
  *(&v270 - 5) = a6;
  *(&v270 - 4) = v260;
  *(&v270 - 3) = v347;
  *(&v270 - 2) = sub_188B17584;
  *(&v270 - 1) = &v373;
  sub_18A4A33D8();
  [v256 contentSize];
  (*(v344 + 2))(v344, v256, 0.0, 0.0, v261, v262);
  v263 = v277;
  v264 = v278;
  (*(v277 + 16))(v254, v258, v278);
  (*v255)(v254, *MEMORY[0x1E69DBB90], v360);
  v265 = v272;
  sub_18A4A3748();
  sub_18A4A3988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
  v266 = v367;
  v267 = (*(v367 + 80) + 32) & ~*(v367 + 80);
  v268 = swift_allocObject();
  *(v268 + 16) = v310;
  (*(v266 + 16))(v268 + v267, v265, v215);
  sub_18A4A3438();

  (*(v266 + 8))(v265, v215);
  (*(v263 + 8))(v258, v264);
  sub_188A3F5FC(v308, &unk_1EA93C140);
  return sub_188A55B8C(v365);
}

void *sub_189121FB4()
{
  v1 = *(v0 + 16);
  result = (*(v0 + 24))(&v3);
  *v1 = v3;
  *(v1 + 8) = 0;
  return result;
}

id sub_189121FF8@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  result = [*(v2 + 16) *a1];
  *a2 = result;
  return result;
}

id sub_189122034@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) rectForSection_];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

uint64_t sub_189122084(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + 16);
  (*(v1 + 24))(&v6);
  v3 = *v2;
  *v2 = v6;

  return a1(v3);
}

void sub_1891220E0(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_18A4A2B08();
  [v3 rectForRowAtIndexPath_];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
}

double sub_189122154()
{
  v1 = *(v0 + 16);
  (*(v0 + 24))(v4);
  result = *v4;
  v3 = v4[1];
  *v1 = v4[0];
  *(v1 + 16) = v3;
  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_1891221A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_18911E200(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void *sub_189122384(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v2 = a1;
    return a1;
  }

  v4 = [a1 superview];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_189122384();

  return v6;
}

uint64_t sub_189122420(unint64_t a1, void *a2)
{
  sub_188A34624(0, &qword_1ED490230);
  v6 = sub_18A4A7C88();
  result = 0;
  if ((v6 & 1) == 0)
  {
    v110 = a1;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = &selRef_stopSpinner;
    if (a1)
    {
      v10 = *(MEMORY[0x1E69E7CC0] + 24);
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_120;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      a1 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(a1);
      v14 = v13 - 32;
      if (v13 < 32)
      {
        v14 = v13 - 25;
      }

      v15 = v14 >> 3;
      *(a1 + 16) = v12;
      *(a1 + 24) = (2 * v15) | 1;
      v16 = (a1 + 32);
      v17 = v8[3] >> 1;
      v18 = (a1 + 32 + 8 * v17);
      v19 = v15 & 0x7FFFFFFFFFFFFFFFLL;
      if (v8[2])
      {
        if (a1 != v8 || v16 >= &v8[v17 + 4])
        {
          memcpy(v16, v8 + 4, 8 * v17);
        }

        v8[2] = 0;
      }

      v21 = v19 + ~v17;
      v22 = v110;
      *v18 = v110;
      v2 = [v22 superview];

      if (v2)
      {
        v3 = &unk_18A64BA50;
        do
        {
          if (v21)
          {
            ++v18;
            v23 = __OFSUB__(v21--, 1);
            if (v23)
            {
              goto LABEL_118;
            }
          }

          else
          {
            v24 = *(a1 + 24);
            if (((v24 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_120;
            }

            v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
            if (v25 <= 1)
            {
              v26 = 1;
            }

            else
            {
              v26 = v25;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
            v27 = swift_allocObject();
            v28 = _swift_stdlib_malloc_size(v27);
            v29 = v28 - 32;
            if (v28 < 32)
            {
              v29 = v28 - 25;
            }

            v30 = v29 >> 3;
            v27[2] = v26;
            v27[3] = (2 * (v29 >> 3)) | 1;
            v31 = (v27 + 4);
            v32 = *(a1 + 24) >> 1;
            if (*(a1 + 16))
            {
              v33 = (a1 + 32);
              if (v27 != a1 || v31 >= v33 + 8 * v32)
              {
                memmove(v27 + 4, v33, 8 * v32);
              }

              *(a1 + 16) = 0;
            }

            v18 = (v31 + 8 * v32);
            v34 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

            a1 = v27;
            v23 = __OFSUB__(v34, 1);
            v21 = v34 - 1;
            if (v23)
            {
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
              goto LABEL_125;
            }
          }

          *v18 = v2;
          v35 = [v2 superview];

          v2 = v35;
        }

        while (v35);
      }
    }

    else
    {
      v21 = 0;
      a1 = MEMORY[0x1E69E7CC0];
    }

    v36 = *(a1 + 24);
    if (v36 >= 2)
    {
      v37 = v36 >> 1;
      v23 = __OFSUB__(v37, v21);
      v38 = v37 - v21;
      if (v23)
      {
        goto LABEL_123;
      }

      *(a1 + 16) = v38;
    }

    v109 = a2;
    v39 = MEMORY[0x1E69E7CC0];
    if (a2)
    {
      v40 = *(MEMORY[0x1E69E7CC0] + 24);
      if (((v40 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_121;
      }

      v41 = v40 & 0xFFFFFFFFFFFFFFFELL;
      if (v41 <= 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = v41;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      v2 = swift_allocObject();
      v43 = _swift_stdlib_malloc_size(v2);
      v44 = v43 - 32;
      if (v43 < 32)
      {
        v44 = v43 - 25;
      }

      v45 = v44 >> 3;
      *(v2 + 16) = v42;
      *(v2 + 24) = (2 * v45) | 1;
      v46 = (v2 + 32);
      v47 = v39[3] >> 1;
      v48 = (v2 + 32 + 8 * v47);
      v49 = v45 & 0x7FFFFFFFFFFFFFFFLL;
      if (v39[2])
      {
        if (v2 != v39 || v46 >= &v39[v47 + 4])
        {
          memcpy(v46, v39 + 4, 8 * v47);
        }

        v39[2] = 0;
      }

      v3 = (v49 + ~v47);
      v50 = v109;
      *v48 = v109;
      v51 = [v50 superview];

      if (v51)
      {
        do
        {
          if (v3)
          {
            ++v48;
            v23 = __OFSUB__(v3--, 1);
            if (v23)
            {
              goto LABEL_119;
            }
          }

          else
          {
            v52 = *(v2 + 24);
            if (((v52 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_121;
            }

            v53 = v52 & 0xFFFFFFFFFFFFFFFELL;
            if (v53 <= 1)
            {
              v54 = 1;
            }

            else
            {
              v54 = v53;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
            v55 = swift_allocObject();
            v56 = _swift_stdlib_malloc_size(v55);
            v57 = v56 - 32;
            if (v56 < 32)
            {
              v57 = v56 - 25;
            }

            v58 = v57 >> 3;
            v55[2] = v54;
            v55[3] = (2 * (v57 >> 3)) | 1;
            v59 = (v55 + 4);
            v60 = *(v2 + 24) >> 1;
            if (*(v2 + 16))
            {
              v61 = (v2 + 32);
              if (v55 != v2 || v59 >= v61 + 8 * v60)
              {
                memmove(v55 + 4, v61, 8 * v60);
              }

              *(v2 + 16) = 0;
            }

            v48 = (v59 + 8 * v60);
            v62 = (v58 & 0x7FFFFFFFFFFFFFFFLL) - v60;

            v2 = v55;
            v23 = __OFSUB__(v62, 1);
            v3 = (v62 - 1);
            if (v23)
            {
              goto LABEL_119;
            }
          }

          *v48 = v51;
          v63 = [v51 superview];

          v51 = v63;
        }

        while (v63);
      }
    }

    else
    {
      v3 = 0;
      v2 = MEMORY[0x1E69E7CC0];
    }

    v64 = *(v2 + 24);
    if (v64 >= 2)
    {
      v65 = v64 >> 1;
      v23 = __OFSUB__(v65, v3);
      v66 = v65 - v3;
      if (v23)
      {
        goto LABEL_124;
      }

      *(v2 + 16) = v66;
    }

    v9 = sub_188F98498(v67);

    v111 = v109;
    MEMORY[0x1EEE9AC00](v68);
    v102 = &v111;
    if (sub_188B21F78(sub_188B60290, &v101, a1))
    {

      return 1;
    }

    if (sub_18907FAA4(v110, v9))
    {

      return -1;
    }

    if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
    {
LABEL_125:
      v69 = sub_18A4A7F68();
      if (v69)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v69 = *(a1 + 16);
      if (v69)
      {
LABEL_83:
        v70 = 0;
        v108 = a1 + 32;
        v109 = (a1 & 0xC000000000000001);
        v107 = v9 & 0xC000000000000001;
        v71 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v9 < 0)
        {
          v71 = v9;
        }

        v104 = v71;
        v105 = v69;
        v110 = (v9 + 56);
        do
        {
          if (v109)
          {
            v74 = sub_188E49300(v70, a1);
            v75 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              goto LABEL_100;
            }
          }

          else
          {
            if (v70 >= *(a1 + 16))
            {
              goto LABEL_122;
            }

            v74 = *(v108 + 8 * v70);
            v75 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }
          }

          v106 = v70;
          if (v107)
          {
            v3 = v74;
            v72 = v74;
            v73 = sub_18A4A7FC8();

            if (v73)
            {
              goto LABEL_101;
            }
          }

          else
          {
            v3 = v74;
            if (*(v9 + 16))
            {
              sub_188A34624(0, &qword_1ED48F680);
              v76 = sub_18A4A7C78();
              v77 = -1 << *(v9 + 32);
              v78 = v76 & ~v77;
              if ((*&v110[(v78 >> 3) & 0xFFFFFFFFFFFFFF8] >> v78))
              {
                v79 = ~v77;
                while (1)
                {
                  v80 = v9;
                  v81 = *(*(v9 + 48) + 8 * v78);
                  v82 = sub_18A4A7C88();

                  v9 = v80;
                  if (v82)
                  {
                    break;
                  }

                  v78 = (v78 + 1) & v79;
                  if (((*&v110[(v78 >> 3) & 0xFFFFFFFFFFFFFF8] >> v78) & 1) == 0)
                  {
                    goto LABEL_87;
                  }
                }

LABEL_101:
                v83 = v3;
                v84 = sub_188FE3A74(v3, v2);
                if ((v85 & 1) == 0)
                {
                  v86 = v84;
                  v87 = v106 - 1;
                  if (__OFSUB__(v106, 1))
                  {
                    __break(1u);
                    goto LABEL_129;
                  }

                  if (v109)
                  {
                    v88 = sub_188E49300(v87, a1);
                    goto LABEL_108;
                  }

                  if ((v87 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_133;
                  }

                  if (v87 < *(a1 + 16))
                  {
                    v88 = *(v108 + 8 * v87);
LABEL_108:
                    v110 = v88;
                    v87 = v86 - 1;
                    if (!__OFSUB__(v86, 1))
                    {
                      if ((v2 & 0xC000000000000001) == 0)
                      {
                        if ((v87 & 0x8000000000000000) != 0)
                        {
                          __break(1u);
                        }

                        else if (v87 < *(v2 + 16))
                        {
                          v89 = *(v2 + 8 * v87 + 32);
                          goto LABEL_113;
                        }

                        __break(1u);
LABEL_133:
                        __break(1u);
                        goto LABEL_134;
                      }

LABEL_130:
                      v89 = sub_188E49300(v87, v2);
LABEL_113:
                      v90 = v89;
                      v91 = [v83 subviews];
                      sub_188A34624(0, &qword_1ED48F680);
                      v92 = sub_18A4A7548();

                      v93 = sub_188FE3A74(v110, v92);
                      v95 = v94;

                      if (v95)
                      {
                        v103 = 0;
                        v100 = 110;
                      }

                      else
                      {
                        v96 = [v83 subviews];
                        v97 = sub_18A4A7548();

                        v98 = sub_188FE3A74(v90, v97);
                        LOBYTE(v96) = v99;

                        if ((v96 & 1) == 0)
                        {

                          if (v93 >= v98)
                          {
                            return v98 < v93;
                          }

                          else
                          {
                            return -1;
                          }
                        }

                        v103 = 0;
                        v100 = 111;
                      }

LABEL_138:
                      v102 = v100;
                      result = sub_18A4A8398();
                      __break(1u);
                      return result;
                    }

LABEL_129:
                    __break(1u);
                    goto LABEL_130;
                  }

LABEL_134:
                  __break(1u);
                }

                v103 = 0;
                v100 = 106;
                goto LABEL_138;
              }
            }
          }

LABEL_87:

          v70 = v75;
        }

        while (v75 != v105);
      }
    }

    return 0;
  }

  return result;
}

uint64_t UICollectionLayoutListConfiguration.FooterMode.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

id UICollectionLayoutListConfiguration.appearance.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*v1 + 16) appearance];
  if (result >= 5)
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id (*UICollectionLayoutListConfiguration.showsSeparators.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) showsSeparators];
  return sub_189122F60;
}

uint64_t UICollectionLayoutListConfiguration.separatorConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) separatorConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_189122FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + 16) separatorConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

void UICollectionLayoutListConfiguration.separatorConfiguration.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_188C702D8();
  v3 = *(v1 + 16);
  v5 = v2;
  v4 = v3;

  [v5 setSeparatorConfiguration_];
}

uint64_t (*UICollectionLayoutListConfiguration.itemSeparatorHandler.getter())@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = [*(*v0 + 16) itemSeparatorHandler];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_189124E64;
    *(v4 + 24) = v3;
    return sub_189124E6C;
  }

  return result;
}

void *sub_189123170@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t@<X0>, uint64_t@<X1>, uint64_t *@<X8>)@<X8>)
{
  result = [*(*a1 + 16) itemSeparatorHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_1891251C4;
    result[3] = v5;
    v6 = sub_1891251F0;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

id sub_18912321C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18A4A2B08();
  v6 = (*(a3 + 16))(a3, v5, a2);

  return v6;
}

uint64_t sub_189123280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, id)@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*a2 + 16);
  v8 = a3(a1, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
  result = swift_allocObject();
  *(result + 16) = v8;
  *a4 = result;
  return result;
}

id (*UICollectionLayoutListConfiguration.itemSeparatorHandler.modify(uint64_t (**a1)@<X0>(uint64_t@<X0>, uint64_t@<X1>, uint64_t *@<X8>)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*(*v1 + 16) itemSeparatorHandler];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v3 = swift_allocObject();
    v3[2] = sub_1891251C4;
    v3[3] = v5;
    v6 = sub_1891251F0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = v3;
  return sub_1891233D8;
}

id sub_1891233D8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return UICollectionLayoutListConfiguration.itemSeparatorHandler.setter(*a1, v3);
  }

  sub_188A52E38(*a1);
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter(v2, v3);

  return sub_188A55B8C(v2);
}

id UICollectionLayoutListConfiguration.backgroundColor.getter()
{
  v1 = [*(*v0 + 16) backgroundColor];

  return v1;
}

void (*UICollectionLayoutListConfiguration.backgroundColor.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) backgroundColor];
  return sub_1891234F0;
}

void sub_1891234F0(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_188C6FFB4(v4);

    v3 = v2;
  }

  else
  {
    sub_188C6FFB4(*a1);
    v3 = v4;
  }
}

id (*UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.getter())(uint64_t a1)
{
  result = [*(*v0 + 16) leadingSwipeActionsConfigurationProvider];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_189124E74;
  }

  return result;
}

void *sub_1891235D4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X8>)@<X8>)
{
  result = [*(*a1 + 16) leadingSwipeActionsConfigurationProvider];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_1891251F4;
    result[3] = v5;
    v6 = sub_1891251CC;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_189123680(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1891251BC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1);
  sub_188C701F8(v4, v3, &block_descriptor_188_1, &selRef_setLeadingSwipeActionsConfigurationProvider_);

  return sub_188A55B8C(v4);
}

id sub_189123734(uint64_t a1, uint64_t a2)
{
  v3 = sub_18A4A2B08();
  v4 = (*(a2 + 16))(a2, v3);

  return v4;
}

id sub_189123788(uint64_t a1)
{
  v2 = sub_18A4A2B48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_18A4A2B18();

  v7 = v6(v5);

  (*(v3 + 8))(v5, v2);

  return v7;
}

void (*UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) leadingSwipeActionsConfigurationProvider];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_1891251F4;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_18912395C;
}

id (*UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.getter())(uint64_t)
{
  result = [*(*v0 + 16) trailingSwipeActionsConfigurationProvider];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_1891251F4;
  }

  return result;
}

void *sub_1891239F0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  result = [*(*a1 + 16) trailingSwipeActionsConfigurationProvider];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_1891251F4;
    result[3] = v5;
    v6 = sub_18912516C;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_189123A9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_189125134;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1);
  sub_188C701F8(v4, v3, &block_descriptor_185, &selRef_setTrailingSwipeActionsConfigurationProvider_);

  return sub_188A55B8C(v4);
}

void (*UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) trailingSwipeActionsConfigurationProvider];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_1891251F4;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_189123C18;
}

void sub_189123C34(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    sub_188A52E38(*(*a1 + 48));
    v10 = sub_188C702D8();
    v11 = v10;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_189123788;
      v6[3] = a5;
      v12 = _Block_copy(v6);
      sub_188A52E38(v7);
      v13 = v11;
    }

    else
    {
      v19 = v10;
      v12 = 0;
    }

    [v11 *a4];
    _Block_release(v12);

    sub_188A55B8C(v7);
    v20 = v6[6];
  }

  else
  {
    v15 = sub_188C702D8();
    v16 = v15;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_189123788;
      v6[3] = a3;
      v17 = _Block_copy(v6);
      v18 = v16;
      sub_188A52E38(v7);
    }

    else
    {
      v21 = v15;
      v17 = 0;
    }

    [v16 *a4];
    _Block_release(v17);

    v20 = v7;
  }

  sub_188A55B8C(v20);

  free(v6);
}

id UICollectionLayoutListConfiguration.headerMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*v1 + 16) headerMode];
  if (result >= 3)
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id (*UICollectionLayoutListConfiguration.headerMode.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [*(*v1 + 16) headerMode];
  if (v3 >= 3)
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v3;
    return sub_189123F4C;
  }

  return result;
}

id sub_189123F4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_188C702D8();

  return [v2 setHeaderMode_];
}

id UICollectionLayoutListConfiguration.footerMode.getter@<X0>(char *a1@<X8>)
{
  result = [*(*v1 + 16) footerMode];
  if (!result)
  {
    v4 = 0;
LABEL_5:
    *a1 = v4;
    return result;
  }

  if (result == 1)
  {
    v4 = 1;
    goto LABEL_5;
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

id (*UICollectionLayoutListConfiguration.footerMode.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = [*(*v1 + 16) footerMode];
  if (!v3)
  {
    v4 = 0;
LABEL_5:
    *(a1 + 8) = v4;
    return sub_189124104;
  }

  if (v3 == 1)
  {
    v4 = 1;
    goto LABEL_5;
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

id (*UICollectionLayoutListConfiguration.headerTopPadding.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  [*(*v1 + 16) headerTopPadding];
  *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
  v4 = v3;
  if (v3 == 1.79769313e308)
  {
    v4 = 0.0;
  }

  *a1 = v4;
  *(a1 + 8) = v3 == 1.79769313e308;
  return sub_189124198;
}

unint64_t UICollectionLayoutListConfiguration.contentHuggingElements.getter@<X0>(unint64_t *a1@<X8>)
{
  result = [*(*v1 + 16) contentHuggingElements];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t UICollectionLayoutListConfiguration.contentHuggingElements.setter(uint64_t *a1)
{
  v2 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    [*(*v1 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188C2E864();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0);
    v4 = swift_allocObject();
    *(v4 + 16) = v5;

    *v1 = v4;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return [*(*v1 + 16) setContentHuggingElements_];
  }

  __break(1u);
  return result;
}

uint64_t (*UICollectionLayoutListConfiguration.contentHuggingElements.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  result = [*(*v1 + 16) contentHuggingElements];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_189124348;
  }

  return result;
}

id (*UICollectionLayoutListConfiguration._cornerRadius.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  [*(*v1 + 16) _cornerRadius];
  *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
  v4 = v3;
  if (v3 == 1.79769313e308)
  {
    v4 = 0.0;
  }

  *a1 = v4;
  *(a1 + 8) = v3 == 1.79769313e308;
  return sub_189124448;
}

id sub_189124454(uint64_t a1, uint64_t a2, const char **a3)
{
  v4 = (a1 + 24);
  if (!*(a1 + 8))
  {
    v4 = a1;
  }

  v5 = *v4;
  v6 = sub_188C702D8();
  v7 = *a3;

  return [v6 v7];
}

uint64_t (*UICollectionLayoutListConfiguration._willBeginSwipingHandler.getter())()
{
  result = [*(*v0 + 16) _willBeginSwipingHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_188A4AA04;
  }

  return result;
}

void *sub_189124528@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = [*(*a1 + 16) _willBeginSwipingHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_188EB2CC4;
    result[3] = v5;
    v6 = sub_188E3FE50;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_1891245D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188EB2CAC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1);
  sub_188C70D78(v4, v3, &block_descriptor_182, &selRef__setWillBeginSwipingHandler_);

  return sub_188A55B8C(v4);
}

void (*UICollectionLayoutListConfiguration._willBeginSwipingHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) _willBeginSwipingHandler];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188EB2CC4;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_189124750;
}

uint64_t (*UICollectionLayoutListConfiguration._didEndSwipingHandler.getter())()
{
  result = [*(*v0 + 16) _didEndSwipingHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_188EB2CC4;
  }

  return result;
}

void *sub_1891247E4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = [*(*a1 + 16) _didEndSwipingHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_188EB2CC4;
    result[3] = v5;
    v6 = sub_188A4B574;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_189124890(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188A6D638;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1);
  sub_188C70D78(v4, v3, &block_descriptor_179_1, &selRef__setDidEndSwipingHandler_);

  return sub_188A55B8C(v4);
}

void (*UICollectionLayoutListConfiguration._didEndSwipingHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) _didEndSwipingHandler];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188EB2CC4;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_189124A0C;
}

void sub_189124A28(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    sub_188A52E38(*(*a1 + 48));
    v10 = sub_188C702D8();
    v11 = v10;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188A4A8F0;
      v6[3] = a5;
      v12 = _Block_copy(v6);
      sub_188A52E38(v7);
      v13 = v11;
    }

    else
    {
      v19 = v10;
      v12 = 0;
    }

    [v11 *a4];
    _Block_release(v12);

    sub_188A55B8C(v7);
    v20 = v6[6];
  }

  else
  {
    v15 = sub_188C702D8();
    v16 = v15;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188A4A8F0;
      v6[3] = a3;
      v17 = _Block_copy(v6);
      v18 = v16;
      sub_188A52E38(v7);
    }

    else
    {
      v21 = v15;
      v17 = 0;
    }

    [v16 *a4];
    _Block_release(v17);

    v20 = v7;
  }

  sub_188A55B8C(v20);

  free(v6);
}

id UICollectionLayoutListConfiguration._sectionHeaderHugsContent.setter(char a1)
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    [*(*v1 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188C2E864();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0);
    v3 = swift_allocObject();
    *(v3 + 16) = v5;

    *v1 = v3;
  }

  return [*(*v1 + 16) setContentHuggingElements_];
}

id (*UICollectionLayoutListConfiguration._sectionHeaderHugsContent.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) contentHuggingElements] == 1;
  return sub_189124D58;
}

id sub_189124D64(uint64_t a1, uint64_t a2, const char **a3)
{
  v4 = *(a1 + 8);
  v5 = sub_188C702D8();
  v6 = *a3;

  return [v5 v6];
}

id (*UICollectionLayoutListConfiguration._hasCompactSectionSpacing.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) _hasCompactSectionSpacing];
  return sub_189124E3C;
}

unint64_t sub_189124E80()
{
  result = qword_1EA93DAA8;
  if (!qword_1EA93DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DAA8);
  }

  return result;
}

unint64_t sub_189124ED8()
{
  result = qword_1EA93DAB0;
  if (!qword_1EA93DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DAB0);
  }

  return result;
}

unint64_t sub_189124F30()
{
  result = qword_1EA93DAB8;
  if (!qword_1EA93DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DAB8);
  }

  return result;
}

unint64_t sub_189124F88()
{
  result = qword_1EA93DAC0;
  if (!qword_1EA93DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DAC0);
  }

  return result;
}

unint64_t sub_189124FE0()
{
  result = qword_1EA93DAC8;
  if (!qword_1EA93DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DAC8);
  }

  return result;
}

id keypath_get_88Tm@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  result = [*(*a1 + 16) *a2];
  v6 = v5;
  if (v5 == 1.79769313e308)
  {
    v6 = 0.0;
  }

  *a3 = v6;
  *(a3 + 8) = v5 == 1.79769313e308;
  return result;
}

id keypath_set_89Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (*(a1 + 8))
  {
    v6 = &UICollectionViewLayoutAutomaticDimension;
  }

  else
  {
    v6 = a1;
  }

  v7 = *v6;
  v8 = sub_188C702D8();
  v9 = *a5;

  return [v8 v9];
}

id keypath_set_87Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v6 = *a1;
  v7 = sub_188C702D8();
  v8 = *a5;

  return [v7 v8];
}

uint64_t sub_18912516C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1891251F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_189125290(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_188FAA1E8(v1, v2);
}

id sub_1891252D0(uint64_t a1)
{
  sub_188A55598(a1, v6);
  v1 = type metadata accessor for ScrollPocketCollectorModel();
  if (!swift_dynamicCast())
  {
    return [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
  }

  v6[4] = v5;
  v2 = sub_188FAB9F8(&unk_1EA938E60);
  (*(v2 + 40))(v6, v1, v2);
  sub_188F216CC();

  v3 = sub_18A4A7518();

  return v3;
}

id sub_1891253DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6[3] = swift_getObjectType();
  v6[0] = a2;
  swift_unknownObjectRetain();
  v4 = v3(v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v6);

  return v4;
}

double sub_189125454@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_188A55598(a1, v6);
  v3 = type metadata accessor for ScrollPocketCollectorModel();
  if (swift_dynamicCast() && (Strong = swift_weakLoadStrong(), , Strong))
  {
    *(a2 + 24) = v3;
    *a2 = Strong;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id sub_1891254F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v14[3] = swift_getObjectType();
  v14[0] = a2;
  swift_unknownObjectRetain();
  v3(v12, v14);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_18A4A86A8();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v14);

  return v10;
}

uint64_t sub_1891257C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____UIScrollPocketCollectorInteraction_model);
  v6 = *(v5 + 32);
  if (v6)
  {
    if (a2)
    {
      v7 = *(v5 + 24) == a1 && v6 == a2;
      if (v7 || (sub_18A4A86C8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188FAB9F8(&qword_1ED490BC0);
    sub_18A4A2BF8();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
}

uint64_t sub_189125928()
{
  result = _UIScrollPocketEnabled();
  if (result)
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 traitCollection];

      sub_188A85EE4();
    }

    Strong = swift_weakLoadStrong();
    swift_weakAssign();
    sub_188FAA380(Strong);
  }

  return result;
}

unint64_t type metadata accessor for _UIScrollPocketCollectorInteraction()
{
  result = qword_1EA93DAE0;
  if (!qword_1EA93DAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93DAE0);
  }

  return result;
}

id _UIAncestralDescription(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _UIAncestralDescription(v3, v4, 0);

  return v5;
}

id _UIRecursiveDescription(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _UIRecursiveDescription(v3, v4, 0);

  return v5;
}

void sub_189125E68(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v5 = [(_UISceneHostingController *)v2 _fbScene];
  type metadata accessor for _UISceneKeyValueStorageExtension(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneKeyValueStorageComponent();
  if (![v5 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()])
  {

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v7 = a1();
  swift_unknownObjectRelease();

LABEL_7:
  *a2 = v7;
}

id sub_189125F40@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for _UISceneKeyValueStorageExtension(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneKeyValueStorageComponent();
  result = [v2 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];
  if (!result)
  {
    goto LABEL_5;
  }

  if (!swift_dynamicCastClass())
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = a1();
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = v7;
  return result;
}

void sub_189126010(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v5 = [v2 _FBSScene];
  type metadata accessor for _UISceneKeyValueStorageExtension(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneKeyValueStorageComponent();
  if (![v5 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()])
  {

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v7 = a1();
  swift_unknownObjectRelease();

LABEL_7:
  *a2 = v7;
}

uint64_t dispatch thunk of UISceneKeyValueStorage.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))();
}

{
  return (*(a5 + 40))();
}

{
  return (*(a5 + 72))();
}

{
  return (*(a5 + 120))();
}

{
  return (*(a5 + 136))();
}

uint64_t dispatch thunk of UISceneKeyValueStorage.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 16))();
}

{
  return (*(a6 + 48))();
}

{
  return (*(a6 + 80))();
}

uint64_t dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 24))();
}

{
  return (*(a7 + 56))();
}

{
  return (*(a7 + 88))();
}

{
  return (*(a7 + 128))();
}

{
  return (*(a7 + 144))();
}

uint64_t dispatch thunk of UISceneKeyValueStorage.observe<A, B>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 32))();
}

{
  return (*(a8 + 64))();
}

{
  return (*(a8 + 96))();
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 64))();
}

{
  return (*(a5 + 112))();
}

{
  return (*(a5 + 184))();
}

{
  return (*(a5 + 208))();
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 24))();
}

{
  return (*(a6 + 72))();
}

{
  return (*(a6 + 120))();
}

{
  return (*(a6 + 216))();
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 32))();
}

{
  return (*(a6 + 80))();
}

{
  return (*(a6 + 128))();
}

{
  return (*(a6 + 200))();
}

{
  return (*(a6 + 224))();
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 40))();
}

{
  return (*(a6 + 88))();
}

{
  return (*(a6 + 136))();
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 48))();
}

{
  return (*(a7 + 96))();
}

{
  return (*(a7 + 144))();
}

{
  return (*(a7 + 192))();
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 56))();
}

{
  return (*(a7 + 104))();
}

{
  return (*(a7 + 152))();
}

id sub_1891264A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v24 = sub_188A4B574;
  v25 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188A4A968;
  v23 = &block_descriptor_120;
  v8 = _Block_copy(&aBlock);

  v24 = sub_188A81164;
  v25 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188A4A8F0;
  v23 = &block_descriptor_9_2;
  v9 = _Block_copy(&aBlock);

  [v6 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v9);
  _Block_release(v8);
  swift_beginAccess();
  if (*(v5 + 16))
  {
    swift_beginAccess();
  }

  else
  {
    sub_188A81190(MEMORY[0x1E69E7CC0]);
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    v14 = v2;

    v15 = sub_188E85338();
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties);
      v17 = v15;

      MEMORY[0x1EEE9AC00](v18);
      os_unfair_lock_lock((v16 + 24));
      sub_1891272AC((v16 + 16));
      os_unfair_lock_unlock((v16 + 24));
    }

    else
    {
    }

    v19 = sub_188E85338();
    if (v19)
    {
      v19[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_clearsCapturedPropertiesOnStabilization] = 0;
    }

    return [v14 setValue_];
  }

  return result;
}

void sub_189126858(void *a1)
{
  v2 = sub_188E85338();
  if (v2)
  {
    v21 = v2;
    v3 = *(v2 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties);

    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 16);

    os_unfair_lock_unlock((v3 + 24));

    v5 = -1 << *(v4 + 32);
    v6 = ~v5;
    v7 = *(v4 + 64);
    v8 = -v5;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v38 = v4;
    v39 = v4 + 64;
    v40 = v6;
    v41 = 0;
    v42 = v9 & v7;
    sub_188A813A8(&v30);
    v10 = v30;
    v35 = *&v31[40];
    v36 = *&v31[56];
    v37 = v32;
    v33 = *&v31[8];
    v34 = *&v31[24];
    if (v30)
    {
      while (1)
      {
        *&v31[16] = v35;
        *&v31[32] = v36;
        *&v31[48] = v37;
        v30 = v33;
        *v31 = v34;
        sub_1891272F4(&v31[24], &v26);
        if (!v27)
        {
          v18 = &v26;
          goto LABEL_12;
        }

        sub_188A8F66C(&v26, v29);
        sub_1891272F4(&v30, &v23);
        if (!v24)
        {
          break;
        }

        sub_188A8F66C(&v23, &v26);
        v11 = v27;
        v12 = v28;
        __swift_project_boxed_opaque_existential_0(&v26, v27);
        [a1 value];
        sub_189126BB4(v29, v11, v12, &v23);
        v13 = [v10 layer];
        v14 = v24;
        v15 = v25;
        __swift_project_boxed_opaque_existential_0(&v23, v24);
        (*(v15 + 80))(v22, v14, v15);
        __swift_project_boxed_opaque_existential_0(v22, v22[3]);
        v16 = sub_18A4A86A8();
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        v17 = sub_18A4A7258();

        [v13 setValue:v16 forKeyPath:v17];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        sub_188A8F7CC(&v30);
        __swift_destroy_boxed_opaque_existential_0Tm(&v23);
        __swift_destroy_boxed_opaque_existential_0Tm(&v26);
        sub_188A813A8(&v30);
        v10 = v30;
        v35 = *&v31[40];
        v36 = *&v31[56];
        v37 = v32;
        v33 = *&v31[8];
        v34 = *&v31[24];
        if (!v30)
        {
          goto LABEL_9;
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      v18 = &v23;
LABEL_12:
      sub_189127364(v18);
      v19 = [v10 layer];
      v20 = sub_18A4A7258();

      [v19 setValue:0 forKeyPath:v20];

      sub_188A8F7CC(&v30);
      sub_188E036A4();
    }

    else
    {
LABEL_9:
      sub_188E036A4();
    }
  }
}

uint64_t sub_189126BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = a3;
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &boxed_opaque_existential_0 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &boxed_opaque_existential_0 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &boxed_opaque_existential_0 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &boxed_opaque_existential_0 - v19;
  sub_188A53994(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936558);
  v21 = swift_dynamicCast();
  v22 = *(v11 + 56);
  if (v21)
  {
    v22(v10, 0, 1, a2);
    (*(v11 + 32))(v20, v10, a2);
    v23 = v30;
    a4[3] = a2;
    a4[4] = v23;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
    v24 = *(v11 + 16);
    v24(boxed_opaque_existential_0, v31, a2);
    sub_18A4A83D8();
    v24(v17, v14, a2);
    sub_18A4A4E98();
    v25 = *(v11 + 8);
    v25(v14, a2);
    sub_18A4A83E8();
    v25(v17, a2);
    return (v25)(v20, a2);
  }

  else
  {
    v22(v10, 1, 1, a2);
    (*(v8 + 8))(v10, v7);
    v27 = v30;
    a4[3] = a2;
    a4[4] = v27;
    v28 = __swift_allocate_boxed_opaque_existential_0(a4);
    return (*(v11 + 16))(v28, v31, a2);
  }
}

void sub_189126EF4(void *a1)
{
  v2 = sub_188E85338();
  if (v2)
  {
    v19 = v2;
    v3 = *(v2 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties);

    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 16);

    os_unfair_lock_unlock((v3 + 24));

    v5 = -1 << *(v4 + 32);
    v6 = ~v5;
    v7 = *(v4 + 64);
    v8 = -v5;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v36 = v4;
    v37 = v4 + 64;
    v38 = v6;
    v39 = 0;
    v40 = v9 & v7;
    sub_188A813A8(&v28);
    v10 = v28;
    v33 = *&v29[40];
    v34 = *&v29[56];
    v35 = v30;
    v31 = *&v29[8];
    v32 = *&v29[24];
    if (v28)
    {
      while (1)
      {
        *&v29[16] = v33;
        *&v29[32] = v34;
        *&v29[48] = v35;
        v28 = v31;
        *v29 = v32;
        sub_1891272F4(&v29[24], &v24);
        if (!v25)
        {
          v17 = &v24;
          goto LABEL_12;
        }

        sub_188A8F66C(&v24, v27);
        sub_1891272F4(&v28, &v21);
        if (!v22)
        {
          break;
        }

        sub_188A8F66C(&v21, &v24);
        v11 = v25;
        v12 = v26;
        __swift_project_boxed_opaque_existential_0(&v24, v25);
        [a1 presentationValue];
        sub_189126BB4(v27, v11, v12, &v21);
        v13 = v22;
        v14 = v23;
        __swift_project_boxed_opaque_existential_0(&v21, v22);
        (*(v14 + 80))(v20, v13, v14);
        __swift_project_boxed_opaque_existential_0(v20, v20[3]);
        v15 = sub_18A4A86A8();
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        v16 = sub_18A4A7258();

        [v10 _setPresentationValue_forKey_];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        sub_188A8F7CC(&v28);
        __swift_destroy_boxed_opaque_existential_0Tm(&v21);
        __swift_destroy_boxed_opaque_existential_0Tm(&v24);
        sub_188A813A8(&v28);
        v10 = v28;
        v33 = *&v29[40];
        v34 = *&v29[56];
        v35 = v30;
        v31 = *&v29[8];
        v32 = *&v29[24];
        if (!v28)
        {
          goto LABEL_9;
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v17 = &v21;
LABEL_12:
      sub_189127364(v17);
      v18 = sub_18A4A7258();

      [v10 _setPresentationValue_forKey_];

      sub_188A8F7CC(&v28);
      sub_188E036A4();
    }

    else
    {
LABEL_9:
      sub_188E036A4();
    }
  }
}

uint64_t sub_1891272AC(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t sub_1891272F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_189127364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_189127500(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____UIPointerLensView_flexInteraction;
  *&v4[v9] = [objc_allocWithZone(_UIFlexInteraction) init];
  v10 = OBJC_IVAR____UIPointerLensView_warpBackdrop;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v11 = OBJC_IVAR____UIPointerLensView_element;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
  v134.receiver = v4;
  v134.super_class = type metadata accessor for _UIPointerLensView();
  v12 = objc_msgSendSuper2(&v134, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____UIPointerLensView_flexInteraction];
  v14 = v12;
  [v13 setPreferredActivationMode_];
  [v14 setUserInteractionEnabled_];
  v15 = [v14 layer];
  [v15 setAllowsHitTesting_];

  v16 = [v14 layer];
  v17 = *MEMORY[0x1E69796E8];
  [v16 setCornerCurve_];

  v18 = [v14 layer];
  [v18 setAllowsEdgeAntialiasing_];

  v19 = [v14 layer];
  [v19 setAllowsGroupOpacity_];

  v20 = OBJC_IVAR____UIPointerLensView_element;
  [*&v14[OBJC_IVAR____UIPointerLensView_element] setCornerCurve_];
  [*&v14[v20] setAllowsEdgeAntialiasing_];
  [*&v14[v20] setGradientOvalization_];
  v21 = [v14 layer];
  v132 = v20;
  [v21 addSublayer_];

  v22 = OBJC_IVAR____UIPointerLensView_warpBackdrop;
  [*&v14[OBJC_IVAR____UIPointerLensView_warpBackdrop] setMarginWidth_];
  v128 = v22;
  v23 = *&v14[v22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_18A64BFB0;
  v127 = sub_18A4A7288();
  v130 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9401B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_18A668560;
  *(v26 + 32) = sub_18A4A7288();
  *(v26 + 72) = MEMORY[0x1E69E6158];
  *(v26 + 40) = v27;
  strcpy((v26 + 48), "warpSdfLayer");
  *(v26 + 61) = 0;
  *(v26 + 62) = -5120;
  *(v26 + 80) = sub_18A4A7288();
  *(v26 + 88) = v28;
  v29 = MEMORY[0x1E69E63B0];
  *(v26 + 120) = MEMORY[0x1E69E63B0];
  *(v26 + 96) = 0xC024800000000000;
  *(v26 + 128) = sub_18A4A7288();
  *(v26 + 136) = v30;
  *(v26 + 168) = v29;
  *(v26 + 144) = 0x4014800000000000;
  *(v26 + 176) = sub_18A4A7288();
  *(v26 + 184) = v31;
  *(v26 + 216) = v29;
  *(v26 + 192) = 0x4014800000000000;
  *(v26 + 224) = sub_18A4A7288();
  *(v26 + 232) = v32;
  *(v26 + 264) = v29;
  *(v26 + 240) = 0x4014800000000000;
  *(v26 + 272) = sub_18A4A7288();
  *(v26 + 280) = v33;
  *(v26 + 312) = v29;
  *(v26 + 288) = 0xBFF0000000000000;
  *(v26 + 320) = sub_18A4A7288();
  *(v26 + 328) = v34;
  *(v26 + 360) = v29;
  *(v26 + 336) = 0xBFE0000000000000;
  *(v26 + 368) = sub_18A4A7288();
  *(v26 + 376) = v35;
  *(v26 + 408) = v29;
  *(v26 + 384) = 0x3FF0000000000000;
  *(v26 + 416) = sub_18A4A7288();
  *(v26 + 424) = v36;
  *(v26 + 456) = v29;
  *(v26 + 432) = 0x4014000000000000;
  *(v26 + 464) = sub_18A4A7288();
  *(v26 + 472) = v37;
  *(v26 + 504) = v29;
  *(v26 + 480) = 0;
  *(v26 + 512) = sub_18A4A7288();
  *(v26 + 520) = v38;
  *(v26 + 552) = v29;
  *(v26 + 528) = 0;
  *(v26 + 560) = sub_18A4A7288();
  *(v26 + 568) = v39;
  *(v26 + 600) = v29;
  *(v26 + 576) = 0x3FF0000000000000;
  *(v26 + 608) = sub_18A4A7288();
  *(v26 + 616) = v40;
  *(v26 + 648) = v29;
  *(v26 + 624) = 0x3FF0000000000000;
  *(v26 + 656) = sub_18A4A7288();
  *(v26 + 664) = v41;
  *(v26 + 696) = v29;
  *(v26 + 672) = 0x3FF0000000000000;
  *(v26 + 704) = sub_18A4A7288();
  *(v26 + 712) = v42;
  *(v26 + 744) = v29;
  *(v26 + 720) = 0xC034800000000000;
  *(v26 + 752) = sub_18A4A7288();
  *(v26 + 760) = v43;
  *(v26 + 792) = v29;
  *(v26 + 768) = 0xBFF0000000000000;
  *(v26 + 800) = sub_18A4A7288();
  *(v26 + 808) = v44;
  *(v26 + 840) = v29;
  *(v26 + 816) = 0;
  *(v26 + 848) = sub_18A4A7288();
  *(v26 + 856) = v45;
  *(v26 + 888) = v29;
  *(v26 + 864) = 0;
  *(v26 + 896) = sub_18A4A7288();
  *(v26 + 904) = v46;
  *(v26 + 936) = v29;
  *(v26 + 912) = 0x4058800000000000;
  *(v26 + 944) = sub_18A4A7288();
  *(v26 + 952) = v47;
  *(v26 + 984) = v29;
  *(v26 + 960) = 0x3FF0000000000000;
  *(v26 + 992) = sub_18A4A7288();
  *(v26 + 1000) = v48;
  *(v26 + 1032) = v29;
  *(v26 + 1008) = 0x3FF0000000000000;
  *(v26 + 1040) = sub_18A4A7288();
  *(v26 + 1048) = v49;
  *(v26 + 1080) = v29;
  *(v26 + 1056) = 0;
  *(v26 + 1088) = sub_18A4A7288();
  *(v26 + 1096) = v50;
  *(v26 + 1128) = v29;
  *(v26 + 1104) = 0x3FF0000000000000;
  *(v26 + 1136) = sub_18A4A7288();
  *(v26 + 1144) = v51;
  v52 = v23;
  result = [v14 tintColor];
  if (result)
  {
    v54 = result;
    v55 = [result colorWithAlphaComponent_];

    v56 = [v55 CGColor];
    type metadata accessor for CGColor(0);
    v58 = v57;
    *(v26 + 1176) = v57;
    *(v26 + 1152) = v56;
    *(v26 + 1184) = sub_18A4A7288();
    *(v26 + 1192) = v59;
    *(v26 + 1224) = v29;
    *(v26 + 1200) = 0x4034800000000000;
    *(v26 + 1232) = sub_18A4A7288();
    *(v26 + 1240) = v60;
    *(v26 + 1272) = v29;
    *(v26 + 1248) = 0x4034800000000000;
    *(v26 + 1280) = sub_18A4A7288();
    *(v26 + 1288) = v61;
    *(v26 + 1320) = v29;
    *(v26 + 1296) = 0x4034800000000000;
    *(v26 + 1328) = sub_18A4A7288();
    *(v26 + 1336) = v62;
    *(v26 + 1368) = v29;
    *(v26 + 1344) = 0x3FF0000000000000;
    *(v26 + 1376) = sub_18A4A7288();
    *(v26 + 1384) = v63;
    *(v26 + 1416) = v29;
    *(v26 + 1392) = 0;
    *(v26 + 1424) = sub_18A4A7288();
    *(v26 + 1432) = v64;
    *(v26 + 1464) = v29;
    *(v26 + 1440) = 0;
    *(v26 + 1472) = sub_18A4A7288();
    v65 = MEMORY[0x1E69E6370];
    *(v26 + 1480) = v66;
    *(v26 + 1512) = v65;
    *(v26 + 1488) = 1;
    *(v26 + 1520) = sub_18A4A7288();
    *(v26 + 1528) = v67;
    *(v26 + 1560) = v29;
    *(v26 + 1536) = 0x3FF0000000000000;
    *(v26 + 1568) = sub_18A4A7288();
    *(v26 + 1576) = v68;
    *(v26 + 1608) = v29;
    *(v26 + 1584) = 0x3FE8000000000000;
    *(v26 + 1616) = sub_18A4A7288();
    *(v26 + 1624) = v69;
    *(v26 + 1656) = v29;
    *(v26 + 1632) = 0x3FF3333333333333;
    *(v26 + 1664) = sub_18A4A7288();
    *(v26 + 1672) = v70;
    v71 = [objc_opt_self() clearColor];
    v72 = [v71 CGColor];

    *(v26 + 1704) = v58;
    *(v26 + 1680) = v72;
    *(v26 + 1712) = sub_18A4A7288();
    *(v26 + 1720) = v73;
    *(v26 + 1752) = v29;
    *(v26 + 1728) = 0;
    v74 = sub_188AF3DD8(v26);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DB8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1891289B4(v127, v130, v74);
    v76 = v75;

    v131 = sub_188A34624(0, &qword_1ED48EE50);
    *(v24 + 56) = v131;
    *(v24 + 32) = v76;
    v77 = sub_18A4A7518();

    [v52 setFilters_];

    v78 = [v14 layer];
    v79 = v128;
    [v78 addSublayer_];

    v80 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
    v81 = sub_18A4A7258();
    [v80 setName_];

    v82 = [objc_allocWithZone(MEMORY[0x1E6979480]) init];
    [v82 setMinimum_];
    [v82 setMaximum_];
    [v80 setEffect_];

    [v80 setEffectOffset_];
    v83 = *&v14[v132];
    v84 = objc_allocWithZone(MEMORY[0x1E6979408]);
    v85 = v83;
    v86 = [v84 init];
    [v86 setSourceLayer_];
    [v86 setHidesSourceLayer_];
    [v86 setMatchesPosition_];
    [v86 setMatchesTransform_];

    [v80 addSublayer_];
    v129 = v80;
    [*&v14[v79] addSublayer_];
    v87 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
    v88 = sub_1891284D0(-0.523598776);
    [v87 setEffect_];

    v133[0] = xmmword_18A668570;
    v133[1] = xmmword_18A668580;
    v133[2] = xmmword_18A668590;
    v133[3] = xmmword_18A6685A0;
    v133[4] = xmmword_18A6685B0;
    result = [objc_opt_self() valueWithCAColorMatrix_];
    if (result)
    {
      v89 = result;
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_18A64BFB0;
      v91 = sub_18A4A7288();
      v93 = v92;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18A64BFB0;
      *(inited + 32) = sub_18A4A7288();
      *(inited + 40) = v95;
      v96 = sub_188A34624(0, &qword_1ED48EC30);
      *(inited + 72) = v96;
      *(inited + 48) = v89;
      v97 = v87;
      v98 = v89;
      v99 = sub_188AF3DD8(inited);
      swift_setDeallocating();
      sub_189128E7C(inited + 32);
      sub_1891289B4(v91, v93, v99);
      v101 = v100;

      *(v90 + 56) = v131;
      *(v90 + 32) = v101;
      v102 = sub_18A4A7518();

      [v97 setFilters_];

      v103 = *&v14[v132];
      v104 = objc_allocWithZone(MEMORY[0x1E6979408]);
      v105 = v103;
      v106 = [v104 init];
      [v106 setSourceLayer_];
      [v106 setHidesSourceLayer_];
      [v106 setMatchesPosition_];
      [v106 setMatchesTransform_];

      [v97 addSublayer_];
      v107 = [v14 layer];
      [v107 &selRef:v97 addIndexes:?];

      v108 = [objc_allocWithZone(MEMORY[0x1E6979478]) &selRef_inhibitSetupOrientation];
      v109 = sub_1891284D0(2.61799388);
      [v108 setEffect_];

      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_18A64BFB0;
      v111 = sub_18A4A7288();
      v113 = v112;
      v114 = swift_initStackObject();
      *(v114 + 16) = xmmword_18A64BFB0;
      *(v114 + 32) = sub_18A4A7288();
      *(v114 + 72) = v96;
      *(v114 + 40) = v115;
      *(v114 + 48) = v98;
      v116 = v98;
      v117 = v108;
      v118 = sub_188AF3DD8(v114);
      swift_setDeallocating();
      sub_189128E7C(v114 + 32);
      sub_1891289B4(v111, v113, v118);
      v120 = v119;

      *(v110 + 56) = v131;
      *(v110 + 32) = v120;
      v121 = sub_18A4A7518();

      [v117 setFilters_];

      v122 = *&v14[v132];
      v123 = objc_allocWithZone(MEMORY[0x1E6979408]);
      v124 = v122;
      v125 = [v123 init];
      [v125 setSourceLayer_];
      [v125 setHidesSourceLayer_];
      [v125 setMatchesPosition_];
      [v125 setMatchesTransform_];

      [v117 addSublayer_];
      v126 = [v14 layer];

      [v126 addSublayer_];
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}