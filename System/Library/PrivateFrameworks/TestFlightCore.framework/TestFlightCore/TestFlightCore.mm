void sub_26D2D2818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D2D2978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D2D2B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26D2D2CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D2D2E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D2D2FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D2D3C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t TFAMPCFStringGetCharacterAtIndex(UniChar *buffer, int64_t a2, uint64_t *a3)
{
  if (a2 < 0 || (v6 = *(buffer + 36), v6 <= a2))
  {
    v9 = 0;
    goto LABEL_6;
  }

  v7 = *(buffer + 33);
  if (v7)
  {
    v8 = *(v7 + 2 * *(buffer + 35) + 2 * a2);
  }

  else
  {
    v12 = *(buffer + 34);
    if (v12)
    {
      v8 = *(v12 + *(buffer + 35) + a2);
    }

    else
    {
      if (*(buffer + 38) <= a2 || (v13 = *(buffer + 37), v13 > a2))
      {
        v14 = a2 - 4;
        if (a2 < 4)
        {
          v14 = 0;
        }

        if (v14 + 128 < v6)
        {
          v6 = v14 + 128;
        }

        *(buffer + 37) = v14;
        *(buffer + 38) = v6;
        v24.length = v6 - v14;
        v24.location = *(buffer + 35) + v14;
        CFStringGetCharacters(*(buffer + 32), v24, buffer);
        v13 = *(buffer + 37);
      }

      v8 = buffer[a2 - v13];
    }
  }

  v9 = v8;
  if (v8 >> 10 != 54 || (v15 = *(buffer + 36), (v15 - 1) <= a2))
  {
LABEL_6:
    v10 = 1;
    if (!a3)
    {
      return v9;
    }

LABEL_7:
    *a3 = v10;
    return v9;
  }

  v16 = a2 + 1;
  v17 = *(buffer + 33);
  if (v17)
  {
    v18 = *(v17 + 2 * *(buffer + 35) + 2 * v16);
  }

  else
  {
    v19 = *(buffer + 34);
    if (v19)
    {
      v18 = *(v19 + *(buffer + 35) + v16);
    }

    else
    {
      if (*(buffer + 38) <= v16 || (v20 = *(buffer + 37), v20 > v16))
      {
        v21 = a2 - 3;
        if (a2 < 3)
        {
          v21 = 0;
        }

        if (v21 + 128 < v15)
        {
          v15 = v21 + 128;
        }

        *(buffer + 37) = v21;
        *(buffer + 38) = v15;
        v25.length = v15 - v21;
        v25.location = *(buffer + 35) + v21;
        CFStringGetCharacters(*(buffer + 32), v25, buffer);
        v20 = *(buffer + 37);
      }

      v18 = buffer[v16 - v20];
    }
  }

  v22 = v18 & 0xFC00;
  v23 = (v9 << 10) + v18 - 56613888;
  v10 = 1;
  if (v22 == 56320)
  {
    v10 = 2;
    v9 = v23;
  }

  else
  {
    v9 = v9;
  }

  if (a3)
  {
    goto LABEL_7;
  }

  return v9;
}

void __defaultParagraphStyle_block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:0];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultLTRParagraphStyleAttribute;
  defaultParagraphStyle_defaultLTRParagraphStyleAttribute = v0;
}

void __defaultParagraphStyle_block_invoke_2()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:-1];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultNaturalParagraphStyleAttribute;
  defaultParagraphStyle_defaultNaturalParagraphStyleAttribute = v0;
}

void __defaultParagraphStyle_block_invoke_3()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:1];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultRTLParagraphStyleAttribute;
  defaultParagraphStyle_defaultRTLParagraphStyleAttribute = v0;
}

void sub_26D2DE488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26D2E418C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id TFLocalizedString(void *a1)
{
  v1 = TFLocalizedString_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    TFLocalizedString_cold_1();
  }

  v3 = [TFLocalizedString_frameworkBundle localizedStringForKey:v2 value:&stru_287EAC508 table:@"Localizable"];

  return v3;
}

uint64_t __TFLocalizedString_block_invoke()
{
  TFLocalizedString_frameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_26D2E62C0@<X0>(uint64_t a1@<X8>)
{
  v45 = sub_26D30FA88();
  v52 = 1;
  *&v46[0] = sub_26D2F96AC();
  *(&v46[0] + 1) = v2;
  sub_26D2E9230();
  v3 = sub_26D30FD58();
  v5 = v4;
  v7 = v6;
  sub_26D30FC48();
  v8 = sub_26D30FD28();
  v10 = v9;
  v12 = v11;

  sub_26D2E92E4(v3, v5, v7 & 1);

  sub_26D30FC68();
  v42 = sub_26D30FD08();
  v43 = v13;
  v15 = v14;
  LOBYTE(v3) = v16;
  sub_26D2E92E4(v8, v10, v12 & 1);

  sub_26D2F96AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26D313B40;
  v18 = sub_26D2E96EC();
  swift_beginAccess();
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);

  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_26D2E92F4();
  *(v17 + 32) = v19;
  *(v17 + 40) = v20;
  v21 = sub_26D3100D8();
  v23 = v22;

  *&v46[0] = v21;
  *(&v46[0] + 1) = v23;
  v24 = sub_26D30FD58();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  KeyPath = swift_getKeyPath();
  v44 = sub_26D30FB58();
  LOBYTE(v46[0]) = v3 & 1;
  v28 &= 1u;
  sub_26D2E9348(v42, v15, v3 & 1);

  sub_26D2E9348(v24, v26, v28);

  sub_26D2E92E4(v24, v26, v28);

  sub_26D2E92E4(v42, v15, v3 & 1);

  *(&v54 + 1) = *v50;
  DWORD1(v54) = *&v50[3];
  *(&v56 + 1) = *v49;
  DWORD1(v56) = *&v49[3];
  BYTE11(v57) = v48;
  *(&v57 + 9) = v47;
  *&v53 = v42;
  *(&v53 + 1) = v15;
  LOBYTE(v54) = v3 & 1;
  *(&v54 + 1) = v43;
  *&v55 = v24;
  *(&v55 + 1) = v26;
  LOBYTE(v56) = v28;
  *(&v56 + 1) = v30;
  *&v57 = KeyPath;
  BYTE8(v57) = 0;
  HIDWORD(v57) = v44;
  v58[0] = v42;
  v58[1] = v15;
  v59 = v3 & 1;
  *v60 = *v50;
  *&v60[3] = *&v50[3];
  v61 = v43;
  v62 = v24;
  v63 = v26;
  v64 = v28;
  *&v65[3] = *&v49[3];
  *v65 = *v49;
  v66 = v30;
  v67 = KeyPath;
  v68 = 0;
  v69 = v47;
  v70 = v48;
  v71 = v44;
  sub_26D2E9114(&v53, v46, &qword_2804F9180);
  sub_26D2E9284(v58, &qword_2804F9180);
  *&v51[23] = v54;
  *&v51[39] = v55;
  *&v51[55] = v56;
  *&v51[71] = v57;
  *&v51[7] = v53;
  LOBYTE(v3) = v52;
  sub_26D30FFE8();
  sub_26D30F968();
  LOBYTE(v30) = sub_26D30FBC8();
  result = sub_26D30F7B8();
  *a1 = v45;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 49) = *&v51[32];
  *(a1 + 65) = *&v51[48];
  *(a1 + 81) = *&v51[64];
  *(a1 + 96) = *&v51[79];
  *(a1 + 17) = *v51;
  *(a1 + 33) = *&v51[16];
  v33 = v46[0];
  v34 = v46[1];
  v35 = v46[3];
  *(a1 + 136) = v46[2];
  *(a1 + 120) = v34;
  *(a1 + 104) = v33;
  v36 = v46[4];
  v37 = v46[5];
  *(a1 + 200) = v46[6];
  *(a1 + 184) = v37;
  *(a1 + 168) = v36;
  *(a1 + 152) = v35;
  *(a1 + 216) = v30;
  *(a1 + 224) = v38;
  *(a1 + 232) = v39;
  *(a1 + 240) = v40;
  *(a1 + 248) = v41;
  *(a1 + 256) = 0;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26D2E67D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9188);
  sub_26D2E6C18();
  return sub_26D2EDE0C(sub_26D2E6C10);
}

uint64_t sub_26D2E6840@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_26D30FAA8();
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F91A0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9198);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - v13;
  v37 = sub_26D2F96AC();
  v38 = v15;
  sub_26D2E97F8();
  swift_getKeyPath();
  sub_26D2E71D8(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);
  sub_26D30F8D8();

  sub_26D2E9230();
  sub_26D310008();
  KeyPath = swift_getKeyPath();
  v17 = &v9[*(v6 + 36)];
  *v17 = KeyPath;
  v17[8] = 0;
  v18 = sub_26D2E6DB4();
  sub_26D30FE28();
  sub_26D2E9284(v9, &qword_2804F91A0);
  sub_26D30FA98();
  v35 = v6;
  v36 = v18;
  swift_getOpaqueTypeConformance2();
  sub_26D2E71D8(&qword_2804F91D0, MEMORY[0x277CDDF20]);
  v19 = v34;
  v20 = v32;
  sub_26D30FDB8();
  (*(v33 + 8))(v5, v20);
  (*(v11 + 8))(v14, v10);
  LOBYTE(v18) = sub_26D30FBD8();
  sub_26D30F7B8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9188);
  v30 = v19 + *(result + 36);
  *v30 = v18;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  return result;
}

unint64_t sub_26D2E6C18()
{
  result = qword_2804F9190;
  if (!qword_2804F9190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9198);
    sub_26D30FAA8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F91A0);
    sub_26D2E6DB4();
    swift_getOpaqueTypeConformance2();
    sub_26D2E71D8(&qword_2804F91D0, MEMORY[0x277CDDF20]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9190);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26D2E6DB4()
{
  result = qword_2804F91A8;
  if (!qword_2804F91A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F91A0);
    sub_26D2E906C(&qword_2804F91B0, &qword_2804F91B8);
    sub_26D2E906C(&qword_2804F91C0, &qword_2804F91C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F91A8);
  }

  return result;
}

uint64_t sub_26D2E6E98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D2F334C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D2E6F04()
{
  v0 = sub_26D30F398();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_26D30F3C8();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F91D8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_26D2E97F8();
  swift_getKeyPath();
  sub_26D2E71D8(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);
  sub_26D30F8D8();

  sub_26D310078();
  v8 = sub_26D310088();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_26D30F3B8();
  sub_26D30F388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F91E8);
  sub_26D2E906C(&qword_2804F91F0, &qword_2804F91E8);
  return sub_26D30F3D8();
}

uint64_t sub_26D2E7180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D2F3F74();
  *a1 = result;
  return result;
}

uint64_t sub_26D2E71D8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_26D2E7220@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_26D30FFE8();
  v4 = v3;
  sub_26D2EDE0C(sub_26D2E72A8);
  result = v6;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = v4;
  a1[1] = v6;
  a1[2].n128_u8[0] = v7;
  a1[2].n128_u64[1] = v8;
  return result;
}

uint64_t sub_26D2E72A8@<X0>(uint64_t a1@<X8>)
{
  sub_26D2F96AC();
  sub_26D2E9230();
  result = sub_26D30FD58();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t View.title(appName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9);
  (v10)(a3, v9, a2);
  return (*(v7 + 8))(v9, a2);
}

uint64_t View.toolbar(isSubmissionDisabled:submitAction:cancelAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9);
  (v10)(a3, v9, a2);
  return (*(v7 + 8))(v9, a2);
}

uint64_t View.minimumFrame()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v9(v8);
  (v9)(a2, v8, a1);
  return (*(v6 + 8))(v8, a1);
}

uint64_t sub_26D2E7624()
{
  v0 = [objc_opt_self() systemBackgroundColor];

  return MEMORY[0x28212FFB0](v0);
}

double sub_26D2E7668@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_26D2E7678@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_2804FAAA0 + 16);
  swift_beginAccess();
  return sub_26D2E9114(v1 + v3, a1, &qword_2804F91F8);
}

id sub_26D2E7724(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_26D2E7768(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + qword_2804FAAA0 + 16);
  *(v4 + 4) = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v1 + *((*v3 & *v1) + qword_2804FAAA0 + 24)) = 0;
  *(v1 + *((*v3 & *v1) + qword_2804FAAA0 + 32)) = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for TFHostingController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_26D2E78E8(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_26D2E8288(a1);
  (*(*(*(v2 + qword_2804FAAA0) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_26D2E7968(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_26D2E8288(a1);
  (*(*(*(v3 + qword_2804FAAA0) - 8) + 8))(a1);
  return v4;
}

void *sub_26D2E7A0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = sub_26D2E8400(a1, a2);
  (*(*(*(v3 + qword_2804FAAA0) - 8) + 8))(a1);
  return v7;
}

void *sub_26D2E7A98(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85000] & *v2;
  v5 = sub_26D2E8400(a1, a2);
  (*(*(*(v4 + qword_2804FAAA0) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_26D2E7B3C()
{
  sub_26D2E7678(v6);
  if (!v7)
  {
    return sub_26D2E9284(v6, &qword_2804F91F8);
  }

  sub_26D2E8DD8(v6, v3);
  sub_26D2E9284(v6, &qword_2804F91F8);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  (*(v1 + 24))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_26D2E7C08()
{
  sub_26D2E7678(v6);
  if (!v7)
  {
    return sub_26D2E9284(v6, &qword_2804F91F8);
  }

  sub_26D2E8DD8(v6, v3);
  sub_26D2E9284(v6, &qword_2804F91F8);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  (*(v1 + 16))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_26D2E7CD4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_26D310248();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v9);
}

id sub_26D2E7D48()
{
  v1 = v0;
  sub_26D2E7678(v11);
  v2 = v12;
  if (v12)
  {
    v3 = v13;
    v4 = __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v5 = *(v2 - 8);
    MEMORY[0x28223BE20](v4, v4);
    v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    sub_26D2E9284(v11, &qword_2804F91F8);
    v8 = (*(v3 + 8))(v2, v3);
    (*(v5 + 8))(v7, v2);
  }

  else
  {
    sub_26D2E9284(v11, &qword_2804F91F8);
    v8 = 1;
  }

  result = *(v1 + *((*MEMORY[0x277D85000] & *v1) + qword_2804FAAA0 + 24));
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

void sub_26D2E7F9C()
{
  v1 = MEMORY[0x277D85000];
  sub_26D2E9284(v0 + *((*MEMORY[0x277D85000] & *v0) + qword_2804FAAA0 + 16), &qword_2804F91F8);

  v2 = *(v0 + *((*v1 & *v0) + qword_2804FAAA0 + 32));
}

id sub_26D2E80A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TFHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26D2E8124(void *a1)
{
  v2 = MEMORY[0x277D85000];
  sub_26D2E9284(a1 + *((*MEMORY[0x277D85000] & *a1) + qword_2804FAAA0 + 16), &qword_2804F91F8);

  v3 = *(a1 + *((*v2 & *a1) + qword_2804FAAA0 + 32));
}

uint64_t sub_26D2E8234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D30F9C8();
  *a1 = result;
  return result;
}

uint64_t sub_26D2E8288(uint64_t a1)
{
  MEMORY[0x28223BE20](a1, a1);
  v3 = &v10 - v2;
  v5 = v1 + *(v4 + 16);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v1 + *((*v6 & *v1) + *(v7 + 2720) + 24)) = 0;
  *(v1 + *((*v6 & *v1) + *(v7 + 2720) + 32)) = 0;
  (*(v8 + 16))(v3);
  return sub_26D30FAB8();
}

void *sub_26D2E8400(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  MEMORY[0x28223BE20](a1, a1);
  v6 = &v66 - v5;
  v8 = v2 + *(v7 + 16);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v2 + *((*v4 & *v2) + qword_2804FAAA0 + 24)) = 0;
  *(v2 + *((*v4 & *v2) + qword_2804FAAA0 + 32)) = 0;
  (*(v9 + 16))(v6);
  v10 = sub_26D30FAB8();
  v67 = a2;
  sub_26D2E8DD8(a2, v68);
  v11 = (v10 + *((*v4 & *v10) + qword_2804FAAA0 + 16));
  swift_beginAccess();
  v66 = v11;
  sub_26D2E917C(v68, v11);
  swift_endAccess();
  if (sub_26D30FFB8())
  {
    v12 = sub_26D3100B8();
    v13 = objc_opt_self();
    v14 = v4;
    v15 = [v13 systemImageNamed_];

    v68[0] = v10;
    v16 = objc_allocWithZone(MEMORY[0x277D751E0]);
    type metadata accessor for TFHostingController();
    v17 = [v16 initWithImage:v15 style:2 target:sub_26D3102E8() action:sel_performSubmitActionWithSender_];

    v18 = v14;
    swift_unknownObjectRelease();
    v19 = *((*v14 & *v10) + qword_2804FAAA0 + 24);
    v20 = *(v10 + v19);
    *(v10 + v19) = v17;

    v21 = sub_26D3100B8();
    v22 = [v13 systemImageNamed_];

    v68[0] = v10;
    v23 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v22 style:0 target:sub_26D3102E8() action:sel_performCancelActionWithSender_];
  }

  else
  {
    sub_26D2F96AC();
    v24 = type metadata accessor for TFHostingController();
    v69 = v24;
    v68[0] = v10;
    v25 = v10;
    v26 = sub_26D3100B8();

    v27 = v69;
    if (v69)
    {
      v28 = __swift_project_boxed_opaque_existential_1Tm(v68, v69);
      v29 = *(v27 - 8);
      MEMORY[0x28223BE20](v28, v28);
      v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v31);
      v32 = sub_26D3102E8();
      (*(v29 + 8))(v31, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
    }

    else
    {
      v32 = 0;
    }

    v33 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v26 style:2 target:v32 action:sel_performSubmitActionWithSender_];

    swift_unknownObjectRelease();
    v18 = MEMORY[0x277D85000];
    v34 = *((*MEMORY[0x277D85000] & *v25) + qword_2804FAAA0 + 24);
    v35 = *(v25 + v34);
    *(v25 + v34) = v33;

    sub_26D2F96AC();
    v69 = v24;
    v68[0] = v25;
    v36 = v25;
    v37 = sub_26D3100B8();

    v38 = v69;
    if (v69)
    {
      v39 = __swift_project_boxed_opaque_existential_1Tm(v68, v69);
      v40 = *(v38 - 8);
      MEMORY[0x28223BE20](v39, v39);
      v42 = &v66 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v42);
      v43 = sub_26D3102E8();
      (*(v40 + 8))(v42, v38);
      v18 = MEMORY[0x277D85000];
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
    }

    else
    {
      v43 = 0;
    }

    v23 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v37 style:0 target:v43 action:sel_performCancelActionWithSender_];
  }

  swift_unknownObjectRelease();
  v44 = *((*v18 & *v10) + qword_2804FAAA0 + 32);
  v45 = *(v10 + v44);
  *(v10 + v44) = v23;

  v46 = v10;
  v47 = [v46 navigationItem];
  v48 = *(v46 + *((*v18 & *v46) + qword_2804FAAA0 + 32));
  [v47 setLeftBarButtonItem_];

  v49 = [v46 navigationItem];
  v50 = *((*v18 & *v46) + qword_2804FAAA0 + 24);
  v51 = *(v46 + v50);
  [v49 setRightBarButtonItem_];

  v52 = *(v46 + v50);
  if (v52)
  {
    v53 = v66[3];
    if (v53)
    {
      v54 = v66[4];
      v55 = __swift_project_boxed_opaque_existential_1Tm(v66, v66[3]);
      v56 = *(v53 - 8);
      MEMORY[0x28223BE20](v55, v55);
      v58 = &v66 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v58);
      v59 = *(v54 + 8);
      v60 = v52;
      v61 = v59(v53, v54);
      (*(v56 + 8))(v58, v53);
    }

    else
    {
      v62 = v52;
      v61 = 0;
    }

    [v52 setEnabled_];
  }

  v63 = [objc_opt_self() defaultCenter];
  v64 = v46;
  [v63 addObserver:v64 selector:sel_updateSubmitActionEnablementStateWithSender_ name:*sub_26D2F2608() object:0];

  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  return v64;
}

uint64_t sub_26D2E8DD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26D2E8EA0()
{
  result = qword_2804F9200;
  if (!qword_2804F9200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9208);
    sub_26D2E8F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9200);
  }

  return result;
}

unint64_t sub_26D2E8F2C()
{
  result = qword_2804F9210;
  if (!qword_2804F9210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9218);
    sub_26D2E906C(&qword_2804F9220, &qword_2804F9228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9210);
  }

  return result;
}

uint64_t sub_26D2E906C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26D2E9114(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26D2E917C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F91F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26D2E9230()
{
  result = qword_2804F9250;
  if (!qword_2804F9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9250);
  }

  return result;
}

uint64_t sub_26D2E9284(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26D2E92E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26D2E92F4()
{
  result = qword_2804F9260;
  if (!qword_2804F9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9260);
  }

  return result;
}

uint64_t sub_26D2E9348(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26D2E939C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26D30FA38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  sub_26D2E9114(v2, &v16 - v11, &qword_2804F9268);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26D30F808();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_26D310198();
    v15 = sub_26D30FB68();
    sub_26D30F718();

    sub_26D30FA28();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_26D2E959C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26D2E9620(uint64_t a1)
{
  v2 = sub_26D30F808();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26D30F998();
}

uint64_t sub_26D2E96EC()
{
  type metadata accessor for FeedbackView();
}

uint64_t type metadata accessor for FeedbackView()
{
  result = qword_2804FA010;
  if (!qword_2804FA010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D2E9770(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FeedbackView() + 20);

  *(v3 + 8) = a1;
  return result;
}

uint64_t sub_26D2E97F8()
{
  type metadata accessor for FeedbackView();
  type metadata accessor for FeedbackViewModel();
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);

  return sub_26D30F8C8();
}

uint64_t sub_26D2E9890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  MEMORY[0x28223BE20](v2, v3);
  sub_26D2E9114(a1, &v6 - v4, &qword_2804F9270);
  sub_26D30FF08();
  return sub_26D2E9284(a1, &qword_2804F9270);
}

uint64_t sub_26D2E9958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  v10 = sub_26D30F5B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D2E9114(a1, v9, &qword_2804F9270);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    v16 = v9;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    type metadata accessor for FeedbackView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278);
    sub_26D30FF18();
    if (v15(v6, 1, v10) == 1)
    {
      sub_26D2E9284(v6, &qword_2804F9270);
      sub_26D2F97E0(v14);
      return (*(v11 + 8))(v14, v10);
    }

    (*(v11 + 8))(v14, v10);
    v16 = v6;
  }

  return sub_26D2E9284(v16, &qword_2804F9270);
}

uint64_t sub_26D2E9BE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11 - v8;
  type metadata accessor for FeedbackView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278);
  sub_26D30FF18();
  sub_26D2E9114(a1, v6, &qword_2804F9270);
  sub_26D30FF28();
  sub_26D2E9958(v9);
  sub_26D2E9284(a1, &qword_2804F9270);
  return sub_26D2E9284(v9, &qword_2804F9270);
}

void (*sub_26D2E9D24(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[4] = v7;
  *(v5 + 12) = *(type metadata accessor for FeedbackView() + 24);
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278);
  sub_26D30FF18();
  return sub_26D2E9E6C;
}

void sub_26D2E9E6C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 8);
  if (a2)
  {
    sub_26D2E9114(*(*a1 + 32), v5, &qword_2804F9270);
    sub_26D30FF18();
    sub_26D2E9114(v5, v6, &qword_2804F9270);
    sub_26D30FF28();
    sub_26D2E9958(v4);
    sub_26D2E9284(v4, &qword_2804F9270);
  }

  else
  {
    sub_26D30FF18();
    sub_26D2E9114(v3, v4, &qword_2804F9270);
    sub_26D30FF28();
    sub_26D2E9958(v5);
  }

  sub_26D2E9284(v5, &qword_2804F9270);
  sub_26D2E9284(v3, &qword_2804F9270);
  free(v3);
  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_26D2E9FE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26D30F5B8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_26D2EA06C(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for FeedbackView();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278);
  return a1(v2);
}

uint64_t sub_26D2EA104()
{
  type metadata accessor for FeedbackView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9280);
  sub_26D30FF18();
  return v1;
}

uint64_t sub_26D2EA16C()
{
  type metadata accessor for FeedbackView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9280);
  return sub_26D30FF28();
}

void (*sub_26D2EA1DC(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for FeedbackView() + 28));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9280);
  sub_26D30FF18();
  return sub_26D2EA298;
}

void sub_26D2EA298(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_26D30FF28();

  free(v1);
}

uint64_t sub_26D2EA308()
{
  type metadata accessor for FeedbackView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9280);
  sub_26D30FF38();
  return v1;
}

uint64_t sub_26D2EA374@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17[-v8];
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for FeedbackView();
  v11 = sub_26D30F5B8();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_26D2E9114(v9, v6, &qword_2804F9270);
  sub_26D30FF08();
  sub_26D2E9284(v9, &qword_2804F9270);
  v12 = a1 + v10[7];
  v17[15] = 0;
  sub_26D30FF08();
  v13 = v18;
  *v12 = v17[16];
  *(v12 + 1) = v13;
  *(a1 + v10[8]) = 0x403E000000000000;
  v14 = (a1 + v10[5]);
  type metadata accessor for FeedbackViewModel();
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);
  result = sub_26D30F8B8();
  *v14 = result;
  v14[1] = v16;
  return result;
}

uint64_t sub_26D2EA5BC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9288);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14[-v6];
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9290);
  sub_26D2EABE0();
  sub_26D30F928();
  sub_26D2E906C(&qword_2804F92C0, &qword_2804F9288);
  View.minimumFrame()(v3, a1);
  (*(v4 + 8))(v7, v3);
  v8 = *(v1 + *(type metadata accessor for FeedbackView() + 20) + 8);
  type metadata accessor for FeedbackViewModel();
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);

  v9 = sub_26D30F8B8();
  v11 = v10;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92C8) + 36));
  *v12 = v9;
  v12[1] = v11;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92D0) + 36)) = v8;
}

uint64_t sub_26D2EA7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for FeedbackView();
  v4 = v3 - 8;
  v35 = *(v3 - 8);
  v5 = *(v35 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v34 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92A8);
  v38 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v33 - v16;
  v33 = &v33 - v16;
  v39 = a1;
  sub_26D30FB98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9590);
  sub_26D2E906C(&qword_2804F9598, &qword_2804F9590);
  sub_26D30F7C8();
  v18 = *(a1 + *(v4 + 28) + 8);
  swift_beginAccess();
  v19 = *(v18 + 32);
  sub_26D2E906C(&qword_2804F92A0, &qword_2804F92A8);

  View.title(appName:)(v19, v10, v17);

  v20 = *(v38 + 8);
  v38 += 8;
  v20(v14, v10);
  LOBYTE(v19) = sub_26D2F2B84();
  v21 = v34;
  sub_26D2F1CD0(a1, v34);
  v22 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v23 = swift_allocObject();
  sub_26D2F1D38(v21, v23 + v22);
  v24 = v36;
  sub_26D2F1CD0(a1, v36);
  v25 = swift_allocObject();
  sub_26D2F1D38(v24, v25 + v22);
  v26 = v19 & 1;
  v27 = v37;
  v28 = v33;
  View.toolbar(isSubmissionDisabled:submitAction:cancelAction:)(v26, v10, v37);

  v20(v28, v10);
  sub_26D30FE58();
  v29 = sub_26D30FE88();

  v30 = sub_26D30FBB8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9290);
  v32 = v27 + *(result + 36);
  *v32 = v29;
  *(v32 + 8) = v30;
  return result;
}

unint64_t sub_26D2EABE0()
{
  result = qword_2804F9298;
  if (!qword_2804F9298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9290);
    sub_26D2E906C(&qword_2804F92A0, &qword_2804F92A8);
    sub_26D2E906C(&qword_2804F92B0, &qword_2804F92B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9298);
  }

  return result;
}

uint64_t sub_26D2EACC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v145 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9460);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v137 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v133 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95A8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v140 = (&v133 - v12);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95B0);
  v14 = MEMORY[0x28223BE20](v139, v13);
  v144 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v138 = &v133 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v149 = &v133 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9430);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v136 = &v133 - v23;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95B8);
  v25 = MEMORY[0x28223BE20](v135, v24);
  v143 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v133 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v151 = &v133 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95C0);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = &v133 - v35;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95C8);
  v38 = MEMORY[0x28223BE20](v134, v37);
  v142 = &v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = &v133 - v42;
  MEMORY[0x28223BE20](v41, v44);
  v150 = &v133 - v45;
  v148 = sub_26D30FA88();
  v177 = 1;
  v46 = a1;
  sub_26D2E62C0(v175);
  memcpy(v178, v175, sizeof(v178));
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9388);
  v47 = swift_allocObject();
  v152 = xmmword_26D313CE0;
  *(v47 + 16) = xmmword_26D313CE0;
  v48 = sub_26D30FBE8();
  *(v47 + 32) = v48;
  v49 = sub_26D30FC08();
  *(v47 + 33) = v49;
  v50 = sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v48)
  {
    v50 = sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() == v49)
  {
    v147 = v50;
  }

  else
  {
    v147 = sub_26D30FBF8();
  }

  type metadata accessor for FeedbackView();
  sub_26D30F7B8();
  v141 = v51;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  memcpy(v173, v178, 0x101uLL);
  v175[264] = 0;
  memcpy(&v176[7], v173, 0x108uLL);
  v146 = v177;
  *v36 = sub_26D30FA88();
  *(v36 + 1) = 0;
  v36[16] = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95D0);
  sub_26D2EB9AC(v46, &v36[*(v58 + 44)]);
  v59 = swift_allocObject();
  *(v59 + 16) = v152;
  v60 = sub_26D30FBE8();
  *(v59 + 32) = v60;
  v61 = sub_26D30FC08();
  *(v59 + 33) = v61;
  v62 = sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v60)
  {
    v62 = sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() != v61)
  {
    v62 = sub_26D30FBF8();
  }

  sub_26D30F7B8();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_26D2F2534(v36, v43, &qword_2804F95C0);
  v71 = &v43[*(v134 + 36)];
  *v71 = v62;
  *(v71 + 1) = v64;
  *(v71 + 2) = v66;
  *(v71 + 3) = v68;
  *(v71 + 4) = v70;
  v71[40] = 0;
  sub_26D2F2534(v43, v150, &qword_2804F95C8);
  v72 = v136;
  v73 = v46;
  sub_26D2ED03C(v46, v136);
  v74 = swift_allocObject();
  *(v74 + 16) = v152;
  v75 = sub_26D30FBE8();
  *(v74 + 32) = v75;
  v76 = sub_26D30FC08();
  *(v74 + 33) = v76;
  v77 = sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v75)
  {
    v77 = sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() != v76)
  {
    v77 = sub_26D30FBF8();
  }

  sub_26D30F7B8();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  sub_26D2F2534(v72, v30, &qword_2804F9430);
  v86 = &v30[*(v135 + 36)];
  *v86 = v77;
  *(v86 + 1) = v79;
  *(v86 + 2) = v81;
  *(v86 + 3) = v83;
  *(v86 + 4) = v85;
  v86[40] = 0;
  sub_26D2F2534(v30, v151, &qword_2804F95B8);
  v87 = sub_26D30FA88();
  v88 = v140;
  *v140 = v87;
  *(v88 + 8) = 0;
  *(v88 + 16) = 1;
  v89 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95D8) + 44);
  *v9 = sub_26D30FA88();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92E8);
  sub_26D2ED86C(v73, &v9[*(v90 + 44)]);
  sub_26D2EC318(&v164);
  v91 = v137;
  sub_26D2E9114(v9, v137, &qword_2804F9460);
  sub_26D2E9114(v91, v89, &qword_2804F9460);
  v92 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95E0) + 48);
  v93 = v168;
  v170 = v168;
  v94 = v167;
  v169[2] = v166;
  v169[3] = v167;
  v95 = v165;
  v96 = v164;
  v169[0] = v164;
  v169[1] = v165;
  *(v92 + 32) = v166;
  *(v92 + 48) = v94;
  *(v92 + 64) = v93;
  *v92 = v96;
  *(v92 + 16) = v95;
  sub_26D2E9114(v169, v155, &qword_2804F9470);
  sub_26D2E9284(v9, &qword_2804F9460);
  v171[2] = v166;
  v171[3] = v167;
  v172 = v168;
  v171[0] = v164;
  v171[1] = v165;
  sub_26D2E9284(v171, &qword_2804F9470);
  sub_26D2E9284(v91, &qword_2804F9460);
  v97 = swift_allocObject();
  *(v97 + 16) = v152;
  v98 = sub_26D30FBE8();
  *(v97 + 32) = v98;
  v99 = sub_26D30FC08();
  *(v97 + 33) = v99;
  v100 = sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v98)
  {
    v100 = sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() != v99)
  {
    v100 = sub_26D30FBF8();
  }

  sub_26D30F7B8();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = v138;
  sub_26D2F2534(v88, v138, &qword_2804F95A8);
  v110 = v109 + *(v139 + 36);
  *v110 = v100;
  *(v110 + 8) = v102;
  *(v110 + 16) = v104;
  *(v110 + 24) = v106;
  *(v110 + 32) = v108;
  *(v110 + 40) = 0;
  v111 = sub_26D2F2534(v109, v149, &qword_2804F95B0);
  nullsub_1(v111);
  v112 = swift_allocObject();
  *(v112 + 16) = v152;
  v113 = sub_26D30FBE8();
  *(v112 + 32) = v113;
  v114 = sub_26D30FC08();
  *(v112 + 33) = v114;
  v115 = sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v113)
  {
    v115 = sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() != v114)
  {
    v115 = sub_26D30FBF8();
  }

  sub_26D30F7B8();
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v124 = v142;
  sub_26D2E9114(v150, v142, &qword_2804F95C8);
  v125 = v143;
  sub_26D2E9114(v151, v143, &qword_2804F95B8);
  v126 = v149;
  v127 = v144;
  sub_26D2E9114(v149, v144, &qword_2804F95B0);
  v154[0] = v148;
  v154[1] = 0;
  LOBYTE(v154[2]) = v146;
  memcpy(&v154[2] + 1, v176, 0x10FuLL);
  LOBYTE(v154[36]) = v147;
  *(&v154[36] + 1) = *v174;
  HIDWORD(v154[36]) = *&v174[3];
  v128 = v141;
  v154[37] = v141;
  v154[38] = v53;
  v154[39] = v55;
  v154[40] = v57;
  LOBYTE(v154[41]) = 0;
  v129 = v145;
  memcpy(v145, v154, 0x149uLL);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95E8);
  sub_26D2E9114(v124, &v129[v130[12]], &qword_2804F95C8);
  sub_26D2E9114(v125, &v129[v130[16]], &qword_2804F95B8);
  sub_26D2E9114(v127, &v129[v130[20]], &qword_2804F95B0);
  v131 = &v129[v130[24]];
  *v131 = v115;
  *(v131 + 1) = v117;
  *(v131 + 2) = v119;
  *(v131 + 3) = v121;
  *(v131 + 4) = v123;
  v131[40] = 0;
  sub_26D2E9114(v154, v155, &qword_2804F95F0);
  sub_26D2E9284(v126, &qword_2804F95B0);
  sub_26D2E9284(v151, &qword_2804F95B8);
  sub_26D2E9284(v150, &qword_2804F95C8);
  sub_26D2E9284(v127, &qword_2804F95B0);
  sub_26D2E9284(v125, &qword_2804F95B8);
  sub_26D2E9284(v124, &qword_2804F95C8);
  v155[0] = v148;
  v155[1] = 0;
  v156 = v146;
  memcpy(v157, v176, 0x10FuLL);
  v157[271] = v147;
  *v158 = *v174;
  *&v158[3] = *&v174[3];
  v159 = v128;
  v160 = v53;
  v161 = v55;
  v162 = v57;
  v163 = 0;
  return sub_26D2E9284(v155, &qword_2804F95F0);
}

uint64_t sub_26D2EB9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9248);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92D8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92E0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9418);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v37 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9238);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v37 - v29;
  sub_26D2E67D0();
  v31 = *(a1 + *(type metadata accessor for FeedbackView() + 20) + 8);
  swift_beginAccess();
  if (*(v31 + 24) == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9240, &qword_2804F9248);
    sub_26D30FAF8();
  }

  else
  {
    sub_26D2E6F04();
    v33 = v37;
    v32 = v38;
    (*(v37 + 16))(v10, v6, v38);
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9240, &qword_2804F9248);
    sub_26D30FAF8();
    (*(v33 + 8))(v6, v32);
  }

  sub_26D2F2534(v14, v22, &qword_2804F92E0);
  sub_26D2E9114(v30, v27, &qword_2804F9238);
  sub_26D2E9114(v22, v19, &qword_2804F9418);
  v34 = v39;
  sub_26D2E9114(v27, v39, &qword_2804F9238);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95F8);
  sub_26D2E9114(v19, v34 + *(v35 + 48), &qword_2804F9418);
  sub_26D2E9284(v22, &qword_2804F9418);
  sub_26D2E9284(v30, &qword_2804F9238);
  sub_26D2E9284(v19, &qword_2804F9418);
  return sub_26D2E9284(v27, &qword_2804F9238);
}

uint64_t sub_26D2EBE28@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9248);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92D8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92E0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v18 - v14;
  v16 = *(v1 + *(type metadata accessor for FeedbackView() + 20) + 8);
  swift_beginAccess();
  if (*(v16 + 24) == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9240, &qword_2804F9248);
    sub_26D30FAF8();
  }

  else
  {
    sub_26D2E6F04();
    (*(v4 + 16))(v11, v7, v3);
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9240, &qword_2804F9248);
    sub_26D30FAF8();
    (*(v4 + 8))(v7, v3);
  }

  return sub_26D2F2534(v15, a1, &qword_2804F92E0);
}

uint64_t sub_26D2EC0EC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata, a2);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata, a2);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_26D310028();
}

uint64_t sub_26D2EC2C4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26D30FA88();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92E8);
  return sub_26D2ED86C(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_26D2EC318@<X0>(uint64_t a1@<X8>)
{
  v79 = sub_26D30F438();
  v3 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v4);
  v84 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_26D30F448();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v6);
  v82 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D30F468();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v80 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v78 = v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92F0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v88 = v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92F8);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v89 = v76 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9300);
  v87 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v20);
  v95 = v76 - v21;
  v22 = sub_26D30F4B8();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v86 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26D30F488();
  v92 = *(v25 - 8);
  v93 = v25;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v90 = v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v77 = v76 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v91 = v76 - v33;
  v34 = *(v1 + *(type metadata accessor for FeedbackView() + 20) + 8);
  swift_beginAccess();
  v35 = v34[6];
  v36 = v34[7];
  if ((v36 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v37 = v35 & 0xFFFFFFFFFFFFLL;
  }

  swift_beginAccess();
  v38 = v34[8];
  v39 = v34[9];
  if ((v39 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v39) & 0xF;
  }

  else
  {
    v40 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v85 = sub_26D2F96AC();
  v42 = v41;
  if (v37)
  {
    if (v40)
    {
      v76[1] = sub_26D2F96AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_26D313CF0;
      v44 = v3;
      v45 = MEMORY[0x277D837D0];
      *(v43 + 56) = MEMORY[0x277D837D0];
      v46 = sub_26D2E92F4();
      *(v43 + 32) = v35;
      *(v43 + 40) = v36;
      *(v43 + 96) = v45;
      *(v43 + 104) = v46;
      *(v43 + 64) = v46;
      *(v43 + 72) = v38;
      *(v43 + 80) = v39;
      *(v43 + 136) = v45;
      *(v43 + 144) = v46;
      v3 = v44;
      v47 = v85;
      *(v43 + 112) = v85;
      *(v43 + 120) = v42;

      goto LABEL_15;
    }

    sub_26D2F96AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_26D313CE0;
    v53 = MEMORY[0x277D837D0];
    *(v52 + 56) = MEMORY[0x277D837D0];
    v54 = sub_26D2E92F4();
    *(v52 + 32) = v35;
    *(v52 + 40) = v36;
    *(v52 + 96) = v53;
    *(v52 + 104) = v54;
    v47 = v85;
    *(v52 + 64) = v54;
    *(v52 + 72) = v47;
    *(v52 + 80) = v42;
  }

  else
  {

    if (v40)
    {
      v48 = v3;
      sub_26D2F96AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_26D313CE0;
      v50 = MEMORY[0x277D837D0];
      *(v49 + 56) = MEMORY[0x277D837D0];
      v51 = sub_26D2E92F4();
      *(v49 + 32) = v38;
      *(v49 + 40) = v39;
      *(v49 + 96) = v50;
      *(v49 + 104) = v51;
      v47 = v85;
      *(v49 + 64) = v51;
      *(v49 + 72) = v47;
      *(v49 + 80) = v42;

      v3 = v48;
      goto LABEL_15;
    }

    sub_26D2F96AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_26D313B40;
    *(v55 + 56) = MEMORY[0x277D837D0];
    *(v55 + 64) = sub_26D2E92F4();
    v47 = v85;
    *(v55 + 32) = v85;
    *(v55 + 40) = v42;
  }

LABEL_15:
  sub_26D3100D8();

  sub_26D30F4A8();
  v56 = v91;
  sub_26D30F498();
  v100 = v47;
  v101 = v42;
  v57 = sub_26D30F628();
  v58 = v88;
  (*(*(v57 - 8) + 56))(v88, 1, 1, v57);
  sub_26D2F1C80(&qword_2804F9308, MEMORY[0x277CC8C40]);
  sub_26D2E9230();
  v59 = v89;
  v60 = v93;
  sub_26D30F4D8();
  sub_26D2E9284(v58, &qword_2804F92F0);
  if ((*(v87 + 48))(v59, 1, v94) == 1)
  {

    sub_26D2E9284(v59, &qword_2804F92F8);
    v61 = v92;
  }

  else
  {
    sub_26D2F2534(v59, v95, &qword_2804F9300);
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_26D310298();
    MEMORY[0x26D6BB9C0](91, 0xE100000000000000);
    MEMORY[0x26D6BB9C0](v47, v42);

    MEMORY[0x26D6BB9C0](0xD000000000000033, 0x800000026D316F60);
    v62 = sub_26D30F5B8();
    (*(*(v62 - 8) + 56))(v78, 1, 1, v62);
    (*(v81 + 104))(v82, *MEMORY[0x277CC8BB0], v83);
    (*(v3 + 104))(v84, *MEMORY[0x277CC8B98], v79);
    sub_26D30F458();
    v63 = v77;
    sub_26D30F478();
    sub_26D2E906C(&qword_2804F9310, &qword_2804F9300);
    v64 = v95;
    sub_26D30F428();
    v61 = v92;
    (*(v92 + 8))(v63, v60);
    sub_26D2E9284(v64, &qword_2804F9300);
  }

  (*(v61 + 16))(v90, v56, v60);
  v65 = sub_26D30FD48();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  KeyPath = swift_getKeyPath();
  v73 = sub_26D30FB58();
  v99 = v69 & 1;
  v98 = 1;
  v74 = sub_26D30FCE8();
  (*(v61 + 8))(v56, v60);
  result = swift_getKeyPath();
  *a1 = v65;
  *(a1 + 8) = v67;
  *(a1 + 16) = v99;
  *(a1 + 17) = v100;
  *(a1 + 20) = *(&v100 + 3);
  *(a1 + 24) = v71;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = v98;
  *(a1 + 49) = v96;
  *(a1 + 51) = v97;
  *(a1 + 52) = v73;
  *(a1 + 56) = result;
  *(a1 + 64) = v74;
  return result;
}

uint64_t sub_26D2ECF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FeedbackViewModel();
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);

  v7[0] = sub_26D30F8B8();
  v7[1] = v5;
  MEMORY[0x26D6BB6F0](v7, a2, &type metadata for FeedbackViewAlert, a3);
}

uint64_t sub_26D2ED03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9550);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9450);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v18 - v11;
  v13 = *(a1 + *(type metadata accessor for FeedbackView() + 20) + 8);
  swift_beginAccess();
  if (*(v13 + 24) == 2 || (v14 = *(sub_26D2F5034() + 16), , !v14))
  {
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9448, &qword_2804F9450);
    return sub_26D30FAF8();
  }

  else
  {
    v15 = sub_26D30FB78();
    v18[1] = v18;
    MEMORY[0x28223BE20](v15, v16);
    v18[2] = a2;
    v18[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9558);
    sub_26D2E906C(&qword_2804F9560, &qword_2804F9558);
    sub_26D30F7C8();
    (*(v9 + 16))(v7, v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9448, &qword_2804F9450);
    sub_26D30FAF8();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_26D2ED35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedbackView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  *a2 = sub_26D30FA48();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9568);
  v8 = *(sub_26D2F5034() + 16);

  v12[0] = 0;
  v12[1] = v8;
  swift_getKeyPath();
  sub_26D2F1CD0(a1, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_26D2F1D38(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9570);
  sub_26D2F1E1C();
  sub_26D2F1EFC();
  return sub_26D30FFA8();
}

uint64_t sub_26D2ED510@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedbackView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6 - 8, v9);
  v11 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - v13;
  v15 = *a1;
  result = sub_26D2F5034();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *(result + 16))
  {
    v17 = *(result + 8 * v15 + 32);

    sub_26D2F1CD0(a2, v14);
    v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    sub_26D2F1D38(v14, v20 + v18);
    *(v20 + v19) = v15;
    sub_26D2F1CD0(a2, v11);
    v21 = swift_allocObject();
    result = sub_26D2F1D38(v11, v21 + v18);
    *(v21 + v19) = v15;
    *a3 = v17;
    a3[1] = sub_26D2F1F54;
    a3[2] = v20;
    a3[3] = sub_26D2F21C8;
    a3[4] = v21;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D2ED6E0(uint64_t a1, unint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v16 - v13;
  type metadata accessor for FeedbackView();
  sub_26D2F8F38(a2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278);
  sub_26D30FF18();
  sub_26D2E9114(v14, v7, &qword_2804F9270);
  sub_26D30FF28();
  sub_26D2E9958(v11);
  sub_26D2E9284(v11, &qword_2804F9270);
  return sub_26D2E9284(v14, &qword_2804F9270);
}

uint64_t sub_26D2ED85C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_26D2ED86C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9540);
  v3 = v2 - 8;
  v5 = MEMORY[0x28223BE20](v2, v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v37 - v8;
  sub_26D30FA58();
  v10 = sub_26D30FD38();
  v12 = v11;
  v14 = v13;
  v40 = sub_26D30FB58();
  v15 = sub_26D30FD18();
  v17 = v16;
  v19 = v18;
  sub_26D2E92E4(v10, v12, v14 & 1);

  sub_26D30FC78();
  v20 = sub_26D30FD08();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_26D2E92E4(v15, v17, v19 & 1);

  sub_26D2EDB18(v9);
  LOBYTE(v15) = sub_26D30FBD8();
  sub_26D30F7B8();
  v27 = &v9[*(v3 + 44)];
  *v27 = v15;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = v38;
  sub_26D2E9114(v9, v38, &qword_2804F9540);
  v33 = v39;
  *v39 = v20;
  v33[1] = v22;
  *(v33 + 16) = v24 & 1;
  v33[3] = v26;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9548);
  sub_26D2E9114(v32, v34 + *(v35 + 48), &qword_2804F9540);
  sub_26D2E9348(v20, v22, v24 & 1);

  sub_26D2E9284(v9, &qword_2804F9540);
  sub_26D2E9284(v32, &qword_2804F9540);
  sub_26D2E92E4(v20, v22, v24 & 1);
}

uint64_t sub_26D2EDB18@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_26D30FAA8();
  v2 = *(v1 - 8);
  v16 = v1;
  v17 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F91B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v15 - v9;
  v11 = sub_26D30FA58();
  v15[1] = v12;
  v15[2] = v11;
  type metadata accessor for FeedbackView();
  type metadata accessor for FeedbackViewModel();
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);
  sub_26D30F8C8();
  swift_getKeyPath();
  sub_26D30F8D8();

  sub_26D30FFF8();
  sub_26D30FA98();
  sub_26D2E906C(&qword_2804F91B0, &qword_2804F91B8);
  sub_26D2F1C80(&qword_2804F91D0, MEMORY[0x277CDDF20]);
  v13 = v16;
  sub_26D30FDB8();
  (*(v17 + 8))(v5, v13);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26D2EDE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16[-v8];
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9290);
  sub_26D2EABE0();
  sub_26D30F928();
  sub_26D2E906C(&qword_2804F92C0, &qword_2804F9288);
  View.minimumFrame()(v5, a2);
  (*(v6 + 8))(v9, v5);
  v10 = *(v2 + *(a1 + 20) + 8);
  type metadata accessor for FeedbackViewModel();
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);

  v11 = sub_26D30F8B8();
  v13 = v12;
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92C8) + 36));
  *v14 = v11;
  v14[1] = v13;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92D0) + 36)) = v10;
}

uint64_t sub_26D2EE084()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_26D2EE0B4()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_26D2EE0E4@<X0>(uint64_t a1@<X8>)
{
  v48 = sub_26D30FB48();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9318);
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v6);
  v8 = &v44 - v7;
  v9 = sub_26D30FEE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CE0FE0], v9);
  v14 = sub_26D30FEF8();
  (*(v10 + 8))(v13, v9);
  sub_26D2E7338();
  sub_26D30FFD8();
  sub_26D30F878();
  v52 = 1;
  *&v51[6] = v53;
  *&v51[22] = v54;
  *&v51[38] = v55;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9320) + 36));
  v16 = *(sub_26D30F958() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_26D30FA68();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #10.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9328) + 36)] = 256;
  v24 = *&v51[16];
  *(a1 + 18) = *v51;
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v24;
  *(a1 + 50) = *&v51[32];
  *(a1 + 64) = *&v51[46];
  v45 = sub_26D30FFC8();
  v44 = v25;
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9330) + 36);
  v27 = swift_allocObject();
  v28 = *(v1 + 16);
  *(v27 + 16) = *v1;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(v1 + 32);
  v50 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9338);
  sub_26D2F0058();
  sub_26D30FF58();
  sub_26D30FB38();
  sub_26D2E906C(&qword_2804F9358, &qword_2804F9318);
  sub_26D2F1C80(&qword_2804F9360, MEMORY[0x277CDE0B8]);
  v29 = v46;
  v30 = v48;
  sub_26D30FD88();
  (*(v49 + 8))(v5, v30);
  (*(v47 + 8))(v8, v29);
  *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9368) + 36)) = xmmword_26D313D00;
  v31 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9370) + 36));
  v32 = v44;
  *v31 = v45;
  v31[1] = v32;
  v33 = sub_26D30FBC8();
  sub_26D30F7B8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9378);
  v43 = a1 + *(result + 36);
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_26D2EE6F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9380);
  v4 = *(a1 + 16);
  sub_26D30F918();
  swift_getTupleTypeMetadata2();
  sub_26D310018();
  swift_getWitnessTable();
  v5 = sub_26D30FF88();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v25 - v7;
  v9 = sub_26D30F918();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v26 = &v25 - v16;
  sub_26D30FFE8();
  v17 = *(a1 + 24);
  v29 = v4;
  v30 = v17;
  v31 = v2;
  sub_26D30FF78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D313CE0;
  LOBYTE(v4) = sub_26D30FBE8();
  *(inited + 32) = v4;
  v19 = sub_26D30FC08();
  *(inited + 33) = v19;
  sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v4)
  {
    sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() != v19)
  {
    sub_26D30FBF8();
  }

  WitnessTable = swift_getWitnessTable();
  sub_26D30FE08();
  (*(v27 + 8))(v8, v5);
  v32 = WitnessTable;
  v33 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v21 = *(v10 + 16);
  v22 = v26;
  v21(v26, v14, v9);
  v23 = *(v10 + 8);
  v23(v14, v9);
  v21(v28, v22, v9);
  return (v23)(v22, v9);
}

uint64_t sub_26D2EEAA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a2;
  v36 = a3;
  v33 = a1;
  v3 = sub_26D30F918();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v35 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9380);
  v34 = v11;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v31 - v17;
  type metadata accessor for CornerRadiusView();
  v19 = sub_26D2E7624();
  v20 = sub_26D2E761C();
  v21 = &v18[*(v11 + 36)];
  v22 = *(sub_26D30F958() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_26D30FA68();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = v20;
  v21[1] = v20;
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9328) + 36)) = 256;
  *v18 = v19;
  *(v18 + 4) = 256;
  sub_26D30FBB8();
  v25 = v32;
  sub_26D30FE08();
  v40[2] = v25;
  v40[3] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v27 = *(v4 + 16);
  v28 = v35;
  v27(v35, v8, v3);
  v29 = *(v4 + 8);
  v29(v8, v3);
  sub_26D2E9114(v18, v15, &qword_2804F9380);
  v40[0] = v15;
  v27(v8, v28, v3);
  v40[1] = v8;
  v39[0] = v34;
  v39[1] = v3;
  v37 = sub_26D2F1B9C();
  v38 = WitnessTable;
  sub_26D2EC0EC(v40, 2uLL, v39);
  v29(v28, v3);
  sub_26D2E9284(v18, &qword_2804F9380);
  v29(v8, v3);
  return sub_26D2E9284(v15, &qword_2804F9380);
}

uint64_t sub_26D2EEE20()
{
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);

  return sub_26D30F8B8();
}

uint64_t sub_26D2EEEC0(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_26D2EEF0C()
{
  type metadata accessor for FeedbackViewModel();
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);

  return sub_26D30F8C8();
}

uint64_t sub_26D2EEF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26D2F38F8();
  sub_26D2E9230();
  v5 = sub_26D30FD58();
  v15 = v6;
  v16 = v5;
  v14 = v7;
  sub_26D310158();

  v8 = sub_26D310148();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  v9[5] = a3;

  v11 = sub_26D310148();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = a2;
  v12[5] = a3;
  sub_26D30FF98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9398);
  sub_26D2E906C(&qword_2804F93A0, &qword_2804F9390);
  sub_26D2E906C(&qword_2804F93A8, &qword_2804F9398);
  sub_26D30FDD8();
  sub_26D2E92E4(v16, v15, v14 & 1);
}

uint64_t sub_26D2EF1FC()
{
  type metadata accessor for FeedbackViewModel();
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);

  return sub_26D30F8B8();
}

uint64_t sub_26D2EF284()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93B0);
  sub_26D30F708();
  *(swift_allocObject() + 16) = xmmword_26D313D10;
  sub_26D30F6C8();
  sub_26D30F6E8();
  sub_26D30F6D8();
  sub_26D30F6F8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93B8);
  sub_26D2E906C(&qword_2804F93C0, &qword_2804F93B8);
  sub_26D30FDE8();
}

void sub_26D2EF420(unint64_t a1, uint64_t a2)
{
  v19 = sub_26D30F708();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v8 = sub_26D3102C8();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = (v4 + 8);
    v17[1] = v21;
    v18 = a1 & 0xC000000000000001;
    v11 = a1;
    do
    {
      if (v18)
      {
        v12 = MEMORY[0x26D6BBB80](v9, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v9 + 32);
      }

      v13 = v12;
      ++v9;
      sub_26D30F6C8();
      sub_26D30F6B8();
      (*v10)(v7, v19);
      v14 = sub_26D3100B8();

      v21[2] = sub_26D2F1ACC;
      v21[3] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v21[0] = sub_26D2EFA34;
      v21[1] = &block_descriptor;
      v15 = _Block_copy(aBlock);

      v16 = [v13 loadFileRepresentationForTypeIdentifier:v14 completionHandler:v15];
      _Block_release(v15);

      a1 = v11;
    }

    while (v8 != v9);
  }
}

void sub_26D2EF670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v26 - v6;
  v8 = sub_26D30F5B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D2E9114(a1, v7, &qword_2804F9270);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26D2E9284(v7, &qword_2804F9270);
    sub_26D310188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26D313B40;
    if (a2)
    {
      swift_getErrorValue();
      a2 = sub_26D310308();
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_26D2E92F4();
    v23 = 0x800000026D317040;
    v24 = 0xD000000000000016;
    if (v15)
    {
      v24 = a2;
      v23 = v15;
    }

    *(v13 + 32) = v24;
    *(v13 + 40) = v23;
    sub_26D2F1AEC();
    v25 = sub_26D310208();
    sub_26D30F718();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_26D30F568();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9518);
    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = swift_allocObject();
    v26 = xmmword_26D313B40;
    *(v17 + 16) = xmmword_26D313B40;
    (*(v9 + 16))(v17 + v16, v12, v8);
    sub_26D2F7D98(v17);

    sub_26D310178();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
    v18 = swift_allocObject();
    *(v18 + 16) = v26;
    v19 = sub_26D30F5A8();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_26D2E92F4();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_26D2F1AEC();
    v22 = sub_26D310208();
    sub_26D30F718();

    sub_26D30F548();
    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_26D2EFA34(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    sub_26D30F558();
    v11 = sub_26D30F5B8();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = sub_26D30F5B8();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a3;
  v10(v9, a3);

  return sub_26D2E9284(v9, &qword_2804F9270);
}

uint64_t sub_26D2EFBAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93B0);
  sub_26D30F708();
  *(swift_allocObject() + 16) = xmmword_26D313D10;
  sub_26D30F6C8();
  sub_26D30F6E8();
  sub_26D30F6D8();
  sub_26D30F6F8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93B8);
  sub_26D2E906C(&qword_2804F93C0, &qword_2804F93B8);
  sub_26D30FDE8();
}

uint64_t sub_26D2EFD4C@<X0>(uint64_t a1@<X8>)
{
  result = sub_26D30FA08();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26D2EFDB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D30F9E8();
  *a1 = result;
  return result;
}

uint64_t sub_26D2EFE08()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double sub_26D2EFE78@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26D30FFD8();
  v14 = v3;
  v15 = v2;
  v13 = sub_26D30FE78();
  sub_26D2E7320();
  sub_26D2E7320();
  sub_26D30FFD8();
  sub_26D30F878();
  v4 = sub_26D30FED8();
  v5 = sub_26D30FE78();
  v6 = sub_26D30FE58();
  v7 = sub_26D2E731C();
  *&v16 = v13;
  *(&v16 + 1) = v34;
  LOBYTE(v17) = BYTE8(v34);
  *(&v17 + 1) = v35;
  v18[0] = BYTE8(v35);
  *&v18[8] = v36;
  *&v18[24] = v4;
  *&v19 = v5;
  *(&v19 + 1) = v6;
  *&v20 = swift_getKeyPath();
  *(&v20 + 1) = v7;
  v21[0] = v13;
  v21[1] = v34;
  v22 = BYTE8(v34);
  v23 = v35;
  v24 = BYTE8(v35);
  v25 = v36;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v20;
  v30 = v7;
  sub_26D2E9114(&v16, &v34, &qword_2804F9538);
  sub_26D2E9284(v21, &qword_2804F9538);
  v36 = *v18;
  v37 = *&v18[16];
  v38 = v19;
  v39 = v20;
  v34 = v16;
  v35 = v17;
  sub_26D30FFD8();
  sub_26D30F878();
  *a1 = v15;
  *(a1 + 8) = v14;
  v8 = v37;
  *(a1 + 48) = v36;
  *(a1 + 64) = v8;
  v9 = v39;
  *(a1 + 80) = v38;
  *(a1 + 96) = v9;
  v10 = v35;
  *(a1 + 16) = v34;
  *(a1 + 32) = v10;
  v11 = v32;
  *(a1 + 112) = v31;
  *(a1 + 128) = v11;
  result = *&v33;
  *(a1 + 144) = v33;
  return result;
}

unint64_t sub_26D2F0058()
{
  result = qword_2804F9340;
  if (!qword_2804F9340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9338);
    sub_26D2E906C(&qword_2804F9348, &qword_2804F9350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9340);
  }

  return result;
}

uint64_t sub_26D2F0120@<X0>(BOOL *a1@<X8>)
{
  result = sub_26D2F38F8();
  v4 = v3;
  if (v3)
  {
  }

  *a1 = v4 != 0;
  return result;
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D2F01D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_26D2F96AC();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_26D2E9230();

  return sub_26D30FF68();
}

uint64_t sub_26D2F0370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26D2F04C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93C8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_26D2F0604()
{
  sub_26D2F06C0();
  if (v0 <= 0x3F)
  {
    sub_26D2F0718();
    if (v1 <= 0x3F)
    {
      sub_26D2F07AC();
      if (v2 <= 0x3F)
      {
        sub_26D2F0810();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26D2F06C0()
{
  if (!qword_2804F93D0)
  {
    sub_26D30F808();
    v0 = sub_26D30F818();
    if (!v1)
    {
      atomic_store(v0, &qword_2804F93D0);
    }
  }
}

void sub_26D2F0718()
{
  if (!qword_2804F93D8)
  {
    type metadata accessor for FeedbackViewModel();
    sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel);
    v0 = sub_26D30F8E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2804F93D8);
    }
  }
}

void sub_26D2F07AC()
{
  if (!qword_2804F93E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9270);
    v0 = sub_26D30FF48();
    if (!v1)
    {
      atomic_store(v0, &qword_2804F93E0);
    }
  }
}

void sub_26D2F0810()
{
  if (!qword_2804F93E8)
  {
    v0 = sub_26D30FF48();
    if (!v1)
    {
      atomic_store(v0, &qword_2804F93E8);
    }
  }
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

uint64_t sub_26D2F0874(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26D2F08BC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26D2F091C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26D2F098C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

  return v5 + (v6 | v11) + 1;
}

char *sub_26D2F0ACC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D2F0CF8(uint64_t a1, int a2)
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

uint64_t sub_26D2F0D40(uint64_t result, int a2, int a3)
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

unint64_t sub_26D2F0DA0()
{
  result = qword_2804F93F0;
  if (!qword_2804F93F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F92D0);
    sub_26D2F0E2C();
    sub_26D2F0F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F93F0);
  }

  return result;
}

unint64_t sub_26D2F0E2C()
{
  result = qword_2804F93F8;
  if (!qword_2804F93F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F92C8);
    sub_26D2E906C(&qword_2804F92C0, &qword_2804F9288);
    sub_26D2F0EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F93F8);
  }

  return result;
}

unint64_t sub_26D2F0EE4()
{
  result = qword_2804F9400;
  if (!qword_2804F9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9400);
  }

  return result;
}

unint64_t sub_26D2F0F38()
{
  result = qword_2804F9408;
  if (!qword_2804F9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9408);
  }

  return result;
}

unint64_t sub_26D2F0FD0()
{
  result = qword_2804F9420;
  if (!qword_2804F9420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F92E0);
    sub_26D2E906C(&qword_2804F9240, &qword_2804F9248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9420);
  }

  return result;
}

uint64_t sub_26D2F10CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26D2F1148()
{
  result = qword_2804F9438;
  if (!qword_2804F9438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9440);
    sub_26D2E906C(&qword_2804F9448, &qword_2804F9450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9438);
  }

  return result;
}

unint64_t sub_26D2F1248()
{
  result = qword_2804F9468;
  if (!qword_2804F9468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9470);
    sub_26D2F1300();
    sub_26D2E906C(&qword_2804F94B8, &qword_2804F94C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9468);
  }

  return result;
}

unint64_t sub_26D2F1300()
{
  result = qword_2804F9478;
  if (!qword_2804F9478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9480);
    sub_26D2F13B8();
    sub_26D2E906C(&qword_2804F94A8, &qword_2804F94B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9478);
  }

  return result;
}

unint64_t sub_26D2F13B8()
{
  result = qword_2804F9488;
  if (!qword_2804F9488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9490);
    sub_26D2E906C(&qword_2804F9498, &qword_2804F94A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9488);
  }

  return result;
}

unint64_t sub_26D2F1474()
{
  result = qword_2804F94C8;
  if (!qword_2804F94C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9378);
    sub_26D2F1500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F94C8);
  }

  return result;
}

unint64_t sub_26D2F1500()
{
  result = qword_2804F94D0;
  if (!qword_2804F94D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9330);
    sub_26D2F15B8();
    sub_26D2E906C(&qword_2804F9508, &qword_2804F9370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F94D0);
  }

  return result;
}

unint64_t sub_26D2F15B8()
{
  result = qword_2804F94D8;
  if (!qword_2804F94D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9320);
    sub_26D2F1670();
    sub_26D2E906C(&qword_2804F9500, &qword_2804F9328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F94D8);
  }

  return result;
}

unint64_t sub_26D2F1670()
{
  result = qword_2804F94E0;
  if (!qword_2804F94E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F94E8);
    sub_26D2F16FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F94E0);
  }

  return result;
}

unint64_t sub_26D2F16FC()
{
  result = qword_2804F94F0;
  if (!qword_2804F94F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F94F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F94F0);
  }

  return result;
}

uint64_t sub_26D2F1780()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9380);
  sub_26D30F918();
  swift_getTupleTypeMetadata2();
  sub_26D310018();
  swift_getWitnessTable();
  sub_26D30FF88();
  sub_26D30F918();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26D2F1894()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9390);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9398);
  sub_26D2E906C(&qword_2804F93A0, &qword_2804F9390);
  sub_26D2E906C(&qword_2804F93A8, &qword_2804F9398);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26D2F1984()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F93B8);
  sub_26D2E906C(&qword_2804F93C0, &qword_2804F93B8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx14TestFlightCore08FeedbackC5AlertVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_26D30F918();
  a3();
  return swift_getWitnessTable();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26D2F1AEC()
{
  result = qword_2804F9510;
  if (!qword_2804F9510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804F9510);
  }

  return result;
}

uint64_t sub_26D2F1B38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26D2F1B9C()
{
  result = qword_2804F9520;
  if (!qword_2804F9520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9380);
    sub_26D2E906C(&qword_2804F9528, &qword_2804F9530);
    sub_26D2E906C(&qword_2804F9500, &qword_2804F9328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9520);
  }

  return result;
}

uint64_t sub_26D2F1C80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D2F1CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D2F1D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D2F1D9C@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for FeedbackView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26D2ED510(a1, v6, a2);
}

unint64_t sub_26D2F1E1C()
{
  result = qword_2804F9578;
  if (!qword_2804F9578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9570);
    sub_26D2F1EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9578);
  }

  return result;
}

unint64_t sub_26D2F1EA8()
{
  result = qword_2804F9580;
  if (!qword_2804F9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9580);
  }

  return result;
}

unint64_t sub_26D2F1EFC()
{
  result = qword_2804F9588;
  if (!qword_2804F9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9588);
  }

  return result;
}

uint64_t sub_26D2F1F54()
{
  v1 = *(type metadata accessor for FeedbackView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26D2ED6E0(v0 + v2, v3);
}

uint64_t objectdestroy_54Tm()
{
  v1 = type metadata accessor for FeedbackView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26D30F808();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 24);
  v7 = sub_26D30F5B8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_26D2F2260@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_26D30FA78();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95A0);
  return sub_26D2EACC4(v3, (a1 + *(v4 + 44)));
}

uint64_t objectdestroy_51Tm()
{
  v1 = type metadata accessor for FeedbackView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26D30F808();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 24);
  v7 = sub_26D30F5B8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26D2F2534(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26D2F25D0()
{
  result = sub_26D3100B8();
  qword_2804FAAB0 = result;
  return result;
}

uint64_t *sub_26D2F2608()
{
  if (qword_2804FA0B0 != -1)
  {
    swift_once();
  }

  return &qword_2804FAAB0;
}

uint64_t sub_26D2F2658()
{
  result = sub_26D3100B8();
  qword_2804FAAB8 = result;
  return result;
}

uint64_t *sub_26D2F2690()
{
  if (qword_2804FA0B8 != -1)
  {
    swift_once();
  }

  return &qword_2804FAAB8;
}

uint64_t sub_26D2F2718(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_26D2F27E4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_26D2F2880()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_26D2F28CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_26D2F2970()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_26D2F29BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_26D2F2A64()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_26D2F2AB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_26D2F2B84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  return v1;
}

uint64_t sub_26D2F2BF8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  *a1 = v3;
  return result;
}

uint64_t sub_26D2F2C78()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t sub_26D2F2CEC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t (*sub_26D2F2D5C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26D30F768();
  return sub_26D2FDFFC;
}

uint64_t sub_26D2F2E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9608);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9600);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F2F5C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9608);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__isSubmitButtonDisabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9600);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2FDFF8;
}

void sub_26D2F30FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v0 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v1 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v1 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D30F778();

    v3 = *(v5 + 16);

    v2 = v3 == 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v5) = v2;

  sub_26D30F788();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  if (v0 != v2)
  {
    v4 = [objc_opt_self() defaultCenter];
    if (qword_2804FA0B0 != -1)
    {
      swift_once();
    }

    [v4 postNotificationName:qword_2804FAAB0 object:0 userInfo:{0, v5}];
  }
}

uint64_t sub_26D2F334C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  return v1;
}

void sub_26D2F33C0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D30F788();
  sub_26D2F30FC();
}

void (*sub_26D2F3440(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_26D2F3504;
}

void sub_26D2F3504(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[2] = v4;
  v3[3] = v5;

  if (a2)
  {

    sub_26D30F788();
    sub_26D2F30FC();
  }

  else
  {
    sub_26D30F788();
    sub_26D2F30FC();
  }

  free(v3);
}

uint64_t sub_26D2F35FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9618);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9610);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F3734(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9618);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__testerFeedbackText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9610);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2F38A4;
}

uint64_t sub_26D2F38F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  return v1;
}

double sub_26D2F396C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_26D2F39EC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t sub_26D2F3A70()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t (*sub_26D2F3AEC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26D30F768();
  return sub_26D2F3B90;
}

uint64_t sub_26D2F3BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9630);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9628);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F3CF4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9630);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__alertMessage;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9628);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2FDFF8;
}

uint64_t sub_26D2F3E78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v0 = *(v4[0] + 16);

  if (v0)
  {
    v2 = sub_26D2F3F88();
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = sub_26D30F768();
    sub_26D2F4600(v2);
    v3(v4, 0);
  }

  return result;
}

void *sub_26D2F3F88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728);
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v64 = &v40 - v3;
  v4 = sub_26D30F618();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v56 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v65 = &v40 - v10;
  v55 = sub_26D30F3A8();
  v11 = *(v55 - 8);
  v13 = MEMORY[0x28223BE20](v55, v12);
  v53 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v14;
  MEMORY[0x28223BE20](v13, v15);
  v52 = &v40 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = v0;
  sub_26D30F778();

  v17 = *(v66 + 16);
  if (v17)
  {
    v19 = *(v11 + 16);
    v18 = v11 + 16;
    v49 = v19;
    v20 = *(v18 + 64);
    v47 = ~v20;
    v40 = v66;
    v21 = (v66 + ((v20 + 32) & ~v20));
    v46 = *(v18 + 56);
    v63 = v5 + 16;
    v48 = v20;
    v45 = v6 + v20;
    v44 = v5 + 32;
    v43 = (v18 + 16);
    v42 = (v18 - 8);
    v41 = (v5 + 8);
    v22 = MEMORY[0x277D84F90];
    v50 = v18;
    v51 = v5;
    do
    {
      v61 = v22;
      v62 = v17;
      v23 = v52;
      v24 = v55;
      v25 = v49;
      v49(v52, v21, v55);
      sub_26D30F608();
      v60 = *(v5 + 16);
      v26 = v56;
      v60(v56, v65, v4);
      v27 = v53;
      v25(v53, v23, v24);
      v28 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v29 = (v45 + v28) & v47;
      v30 = swift_allocObject();
      *(v30 + 16) = v59;
      v31 = v26;
      v32 = v65;
      (*(v5 + 32))(v30 + v28, v31, v4);
      (*v43)(v30 + v29, v27, v24);
      sub_26D2FD43C();
      v33 = v64;

      v34 = sub_26D30F378();

      v35 = v23;
      v22 = v61;
      (*v42)(v35, v24);
      v36 = *(v58 + 48);
      v60(v33, v32, v4);
      *(v33 + v36) = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_26D2FA4F0(0, v22[2] + 1, 1, v22);
      }

      v38 = v22[2];
      v37 = v22[3];
      v5 = v51;
      if (v38 >= v37 >> 1)
      {
        v22 = sub_26D2FA4F0(v37 > 1, v38 + 1, 1, v22);
      }

      (*v41)(v32, v4);
      v22[2] = v38 + 1;
      sub_26D2FD490(v64, v22 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v38);
      v21 += v46;
      v17 = v62 - 1;
    }

    while (v62 != 1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v22;
}

uint64_t (*sub_26D2F44F4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26D30F768();
  return sub_26D2FDFFC;
}

void sub_26D2F4598(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_26D2F4600(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_26D2FA4F0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t (*sub_26D2F4760(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  *a1 = a1[1];
  return sub_26D2F47F4;
}

uint64_t sub_26D2F4844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9648);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9640);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F497C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9648);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__selectedPhotos;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9640);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2FDFF8;
}

uint64_t sub_26D2F4B28()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t sub_26D2F4BA4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t sub_26D2F4C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9660);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9658);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F4D68(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9660);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadingPhotos;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9658);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2FDFF8;
}

uint64_t sub_26D2F4F20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_26D2F5048()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  return v1;
}

uint64_t sub_26D2F50C8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  *a1 = v3;
  return result;
}

uint64_t sub_26D2F516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = sub_26D30F788();
  return a7(v8);
}

uint64_t sub_26D2F5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_26D30F788();
  return a4(v5);
}

uint64_t (*sub_26D2F52A4(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  *a1 = a1[1];
  return sub_26D2F5338;
}

uint64_t sub_26D2F5360(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v8;

  if (a2)
  {

    v9 = sub_26D30F788();
    a5(v9);
  }

  else
  {
    v11 = sub_26D30F788();
    return (a5)(v11);
  }
}

uint64_t sub_26D2F5468(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_26D30F748();
  return swift_endAccess();
}

uint64_t sub_26D2F54E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9678);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9670);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F5618(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9678);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadedPhotos;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9670);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2FDFF8;
}

void sub_26D2F5788(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_26D30F758();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_26D30F758();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_26D2F58F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL;
  swift_beginAccess();
  return sub_26D2E9114(v1 + v3, a1, &qword_2804F9270);
}

uint64_t sub_26D2F5958(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL;
  swift_beginAccess();
  sub_26D2FDF70(a1, v1 + v3, &qword_2804F9270);
  return swift_endAccess();
}

uint64_t sub_26D2F5A28()
{
  v10 = sub_26D3101C8();
  v0 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26D3101B8();
  MEMORY[0x28223BE20](v4, v5);
  v6 = sub_26D310068();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9[1] = sub_26D2FC7CC(0, &qword_2804F9680);
  sub_26D310058();
  v11 = MEMORY[0x277D84F90];
  sub_26D2FCA50(&qword_2804F9688, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9690);
  sub_26D2FCA98(&qword_2804F9698, &qword_2804F9690);
  sub_26D310258();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  return sub_26D3101F8();
}

id sub_26D2F5C80()
{
  v1 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_imageLoadingQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_26D2F5CD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_imageLoadingQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_26D2F5D8C(void *a1)
{
  swift_allocObject();
  v2 = sub_26D2FB370(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_26D2F5DD8(void *a1)
{
  v1 = sub_26D2FB370(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_26D2F5E0C()
{
  sub_26D30F578();
  v0 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v1 = sub_26D3100B8();

  v2 = [v0 initWithContentsOfFile_];

  if (v2)
  {
    return sub_26D30FEC8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D2F5E98(uint64_t a1)
{
  v2 = sub_26D30F408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_26D30F3E8();

  v7(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_26D2F5F8C(int64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v21 - v6;
  v8 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9)
  {
    v10 = *(v9 + 16);
  }

  else
  {
    v10 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v11 = *(v22 + 16);

  if (a1 < 0 || (v10 == v11 ? (v12 = v11 <= a1) : (v12 = 1), !v12 ? (v13 = v10 <= a1) : (v13 = 1), v13))
  {
    sub_26D3101A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D83B88];
    *(v16 + 16) = xmmword_26D313B40;
    v18 = MEMORY[0x277D83C10];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = a1;
    sub_26D2FC7CC(0, &qword_2804F9510);
    v19 = sub_26D310208();
    sub_26D30F718();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D30F778();

    sub_26D2F6280(a1);

    v14 = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    v21[1] = v14;

    sub_26D30F788();
    sub_26D2F30FC();
    if (*(v2 + v8))
    {
      sub_26D2F6308(a1, v7);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v20 = sub_26D30F5B8();
    (*(*(v20 - 8) + 56))(v7, v15, 1, v20);
    sub_26D2E9284(v7, &qword_2804F9270);
  }
}

uint64_t sub_26D2F6280(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26D2FB2FC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26D2F6308@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26D2FB2B0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_26D30F5B8();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

BOOL sub_26D2F6410()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v0 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v0 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v2 = *(v3 + 16);

  return v2 != 0;
}

uint64_t sub_26D2F6500()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_unknownObjectRetain();
    sub_26D30F778();

    v3 = sub_26D3100B8();

    swift_beginAccess();

    v4 = sub_26D3100B8();

    swift_beginAccess();
    sub_26D30F5B8();

    v5 = sub_26D310108();

    [v2 feedbackWillSendFeedbackSubmissionWithFeedbackText:v3 emailAddress:v4 screenshotURLs:v5];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_26D2F6678()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return [result feedbackWillCancelSubmission];
  }

  return result;
}

uint64_t sub_26D2F66BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v42 = sub_26D310038();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D310068();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26D30F3A8();
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v46, v13);
  v32 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26D30F618();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v18 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 8);
  v35 = *a1;
  v34 = v19;
  v36 = *(a1 + 16);
  v20 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_imageLoadingQueue;
  v33 = a2;
  swift_beginAccess();
  v37 = *(a2 + v20);
  (*(v15 + 16))(v18, v39, v14);
  (*(v11 + 16))(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v46);
  v21 = (*(v15 + 80) + 33) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 8) & ~*(v11 + 80);
  v24 = swift_allocObject();
  v25 = v35;
  *(v24 + 16) = v35;
  *(v24 + 24) = v19;
  LOBYTE(v19) = v36;
  *(v24 + 32) = v36;
  (*(v15 + 32))(v24 + v21, v18, v14);
  *(v24 + v22) = v33;
  (*(v11 + 32))(v24 + v23, v32, v46);
  aBlock[4] = sub_26D2FD688;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26D2FDFE4;
  aBlock[3] = &block_descriptor_39;
  v26 = _Block_copy(aBlock);
  v27 = v37;
  sub_26D2FD76C(v25, v34, v19);

  v28 = v40;
  sub_26D310048();
  v47 = MEMORY[0x277D84F90];
  sub_26D2FCA50(&qword_2804F96B8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96C0);
  sub_26D2FCA98(&qword_2804F96C8, &qword_2804F96C0);
  v30 = v41;
  v29 = v42;
  sub_26D310258();
  MEMORY[0x26D6BBAC0](0, v28, v30, v26);
  _Block_release(v26);

  (*(v45 + 8))(v30, v29);
  (*(v43 + 8))(v28, v44);
}

uint64_t sub_26D2F6BB4(uint64_t a1, unint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a6;
  v69 = a5;
  v78 = a1;
  v79 = a4;
  v8 = sub_26D310038();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26D310068();
  v71 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v70 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_26D30F3A8();
  v67 = *(v76 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v76, v17);
  v75 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_26D30F618();
  v66 = *(v74 - 8);
  v18 = *(v66 + 64);
  MEMORY[0x28223BE20](v74, v19);
  v73 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26D30F5B8();
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  result = MEMORY[0x28223BE20](v23, v24);
  v29 = &v60 - v28;
  if ((a3 & 1) == 0 && a2 >> 60 != 15)
  {
    v65 = v27;
    v61 = v12;
    v62 = v13;
    v63 = v9;
    v64 = v8;
    v72 = v26;
    v77 = result;
    v30 = NSTemporaryDirectory();
    v31 = sub_26D3100C8();
    v33 = v32;

    aBlock = v31;
    v81 = v33;

    MEMORY[0x26D6BB9C0](47, 0xE100000000000000);

    v34 = aBlock;
    v35 = v81;
    v36 = sub_26D30F5E8();
    v38 = v37;
    aBlock = v34;
    v81 = v35;

    MEMORY[0x26D6BB9C0](v36, v38);

    sub_26D30F508();

    sub_26D30F5D8();
    sub_26D30F578();
    v39 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v40 = sub_26D3100B8();

    v41 = [v39 initWithContentsOfFile_];

    if (v41 && (v42 = sub_26D30FEC8()) != 0)
    {
      sub_26D2FC7CC(0, &qword_2804F9680);

      v78 = sub_26D3101D8();
      v43 = v72;
      (*(v72 + 16))(v65, v29, v77);
      v44 = v66;
      (*(v66 + 16))(v73, v79, v74);
      v45 = v67;
      (*(v67 + 16))(v75, v68, v76);
      v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
      v79 = (v21 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = (*(v44 + 80) + v79 + 8) & ~*(v44 + 80);
      v48 = (v18 + *(v45 + 80) + v47) & ~*(v45 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v69;
      (*(v43 + 32))(v49 + v46, v65, v77);
      *(v49 + v79) = v42;
      (*(v44 + 32))(v49 + v47, v73, v74);
      (*(v45 + 32))(v49 + v48, v75, v76);
      v84 = sub_26D2FD9D8;
      v85 = v49;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v82 = sub_26D2FDFE4;
      v83 = &block_descriptor_45;
      v50 = _Block_copy(&aBlock);

      v51 = v70;
      sub_26D310048();
      aBlock = MEMORY[0x277D84F90];
      sub_26D2FCA50(&qword_2804F96B8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96C0);
      sub_26D2FCA98(&qword_2804F96C8, &qword_2804F96C0);
      v52 = v61;
      v53 = v64;
      sub_26D310258();
      v54 = v78;
      MEMORY[0x26D6BBAC0](0, v51, v52, v50);
      _Block_release(v50);

      (*(v63 + 8))(v52, v53);
      (*(v71 + 8))(v51, v62);
    }

    else
    {
      sub_26D3101A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_26D313B40;
      v56 = sub_26D30F5A8();
      v58 = v57;
      *(v55 + 56) = MEMORY[0x277D837D0];
      *(v55 + 64) = sub_26D2E92F4();
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      sub_26D2FC7CC(0, &qword_2804F9510);
      v59 = sub_26D310208();
      sub_26D30F718();
    }

    return (*(v72 + 8))(v29, v77);
  }

  return result;
}

uint64_t sub_26D2F74A4(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a5;
  v64 = sub_26D30F3A8();
  v63 = *(v64 - 8);
  v10 = MEMORY[0x28223BE20](v64 - 8, v9);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v61 = &v56 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v69 = &v56 - v16;
  v17 = sub_26D30F5B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  KeyPath = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  swift_beginAccess();
  if (*(a1 + v22))
  {
    (v18[2])(KeyPath, a2, v17);
    v23 = *(a1 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = a1;
    *(a1 + v22) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_55:
      v23 = sub_26D2FA6E0(0, *(v23 + 16) + 1, 1, v23, &qword_2804F9518, &unk_26D3141D0, MEMORY[0x277CC9260]);
      *(v5 + v22) = v23;
    }

    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_26D2FA6E0(v25 > 1, v26 + 1, 1, v23, &qword_2804F9518, &unk_26D3141D0, MEMORY[0x277CC9260]);
    }

    *(v23 + 16) = v26 + 1;
    (v18[4])(v23 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + v18[9] * v26, KeyPath, v17);
    a1 = v5;
    *(v5 + v22) = v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  MEMORY[0x26D6BB9D0](v27);
  if (*(v70[0] + 16) >= *(v70[0] + 24) >> 1)
  {
    goto LABEL_50;
  }

LABEL_7:
  sub_26D310138();
  v28 = v70[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v71 = v28;

  sub_26D30F788();
  sub_26D2F30FC();
  v18 = &v56;
  MEMORY[0x28223BE20](v29, v30);
  *(&v56 - 2) = a4;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v22 = v70;
  v31 = sub_26D30F768();
  v17 = v32;
  v23 = 0;
  v33 = sub_26D2FAC74(sub_26D2FDB1C, (&v56 - 4));
  v34 = *(*v17 + 16);
  if (v34 < v33)
  {
    __break(1u);
    goto LABEL_52;
  }

  sub_26D2FDCA0(v33, v34);
  v31(v70, 0);

  v5 = &v56;
  MEMORY[0x28223BE20](v35, v36);
  v17 = (&v56 - 4);
  *(&v56 - 2) = v65;
  v22 = swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v37 = v70[0];
  result = sub_26D2FAFA8(sub_26D2FDD60, (&v56 - 4), v70[0], MEMORY[0x277CE4440]);
  if (v39)
  {
    v23 = v37[2];
    v40 = v23;
    goto LABEL_14;
  }

  v23 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v67 = result;
  v57 = &v56;
  v58 = a1;
  KeyPath = v37 + 2;
  v41 = v37[2];
  if (v23 != v41)
  {
    v46 = v64;
    v66 = (v63 + 16);
    v62 = (v63 + 8);
    v59 = (v63 + 40);
    while (1)
    {
      if (v23 >= v41)
      {
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
        sub_26D310128();
        goto LABEL_7;
      }

      v18 = ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v68 = v37;
      v5 = (v18 + v37);
      a4 = *(v63 + 72);
      a1 = a4 * v23;
      v47 = *(v63 + 16);
      v47(v69, v5 + a4 * v23, v46);
      v22 = sub_26D30F368();
      v49 = v48;
      v50 = sub_26D30F368();
      v17 = v51;
      if (!v49)
      {
        break;
      }

      if (!v51)
      {
        goto LABEL_33;
      }

      if (v22 == v50 && v49 == v51)
      {

LABEL_42:
        v46 = v64;
        (*v62)(v69, v64);
        v37 = v68;
        goto LABEL_25;
      }

      v22 = sub_26D3102F8();

      v46 = v64;
      (*v62)(v69, v64);
      if (v22)
      {
        v37 = v68;
        goto LABEL_25;
      }

LABEL_34:
      v52 = v67;
      if (v23 == v67)
      {
        v37 = v68;
      }

      else
      {
        if (v67 < 0)
        {
          goto LABEL_46;
        }

        v53 = *KeyPath;
        if (v67 >= *KeyPath)
        {
          goto LABEL_47;
        }

        v17 = a4 * v67;
        v54 = v5 + a4 * v67;
        a4 = v66;
        v47(v61, v54, v46);
        if (v23 >= v53)
        {
          goto LABEL_48;
        }

        v55 = v5 + a1;
        v5 = v60;
        v47(v60, v55, v46);
        v37 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_26D2FB310(v37);
        }

        a4 = v59;
        v22 = v18 + v37;
        v18 = *v59;
        (*v59)(v22 + v17, v5, v46);
        if (v23 >= v37[2])
        {
          goto LABEL_49;
        }

        (v18)(v22 + a1, v61, v46);
        v52 = v67;
      }

      v67 = v52 + 1;
LABEL_25:
      ++v23;
      KeyPath = v37 + 2;
      v41 = v37[2];
      if (v23 == v41)
      {
        goto LABEL_12;
      }
    }

    if (!v51)
    {
      goto LABEL_42;
    }

LABEL_33:

    v46 = v64;
    (*v62)(v69, v64);
    goto LABEL_34;
  }

LABEL_12:
  v40 = v67;
  if (v23 < v67)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v5 = v57;
  if (v67 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_14:
  v22 = v40;
  v42 = v40 - v23;
  v18 = (v23 + v42);
  if (__OFADD__(v23, v42))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v70[0] = v37;
  if (!v43 || v18 > v37[3] >> 1)
  {
    if (v23 <= v18)
    {
      v44 = v18;
    }

    else
    {
      v44 = v23;
    }

    v37 = sub_26D2FA6E0(v43, v44, 1, v37, &qword_2804F9740, &unk_26D314690, MEMORY[0x277CE4440]);
    v70[0] = v37;
  }

  sub_26D2FDE28(v22, v23, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v71 = v37;

  v45 = sub_26D30F788();
  return sub_26D2F3E78(v45);
}

uint64_t sub_26D2F7D54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_26D2F7D98(uint64_t a1)
{
  v130 = *MEMORY[0x277D85DE8];
  v106 = sub_26D310038();
  v2 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v3);
  v105 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_26D310068();
  v5 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v6);
  v103 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_26D30F618();
  v8 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v9);
  v111 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D30F5B8();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v102 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v117 = &v94 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v94 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v26 = &v94 - v24;
  v27 = *(a1 + 16);
  if (v27)
  {
    v126 = 0;
    v29 = *(v25 + 16);
    v28 = v25 + 16;
    v30 = *(v28 + 64);
    v31 = (a1 + ((v30 + 32) & ~v30));
    v120 = (v28 - 8);
    v121 = v29;
    v108 = (v8 + 8);
    v101 = v30;
    v100 = (v30 + 24) & ~v30;
    v99 = (v23 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = (v28 + 16);
    v97 = v128;
    v96 = (v2 + 8);
    v95 = (v5 + 8);
    v122 = v28;
    v118 = *(v28 + 56);
    v123 = xmmword_26D313B40;
    v32 = MEMORY[0x277D837D0];
    v116 = xmmword_26D313CE0;
    v119 = v11;
    v110 = &v94 - v24;
    v109 = v21;
    v29(v26, v31, v11);
    while (1)
    {
      v42 = [objc_opt_self() defaultManager];
      v43 = sub_26D30F518();
      aBlock[0] = 0;
      v44 = [v42 URLForDirectory:99 inDomain:1 appropriateForURL:v43 create:1 error:aBlock];

      v45 = aBlock[0];
      if (!v44)
      {
        break;
      }

      v124 = v31;
      v125 = v27;
      sub_26D30F558();
      v46 = v45;

      sub_26D310178();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
      v47 = swift_allocObject();
      *(v47 + 16) = v123;
      v48 = sub_26D30F5A8();
      v50 = v49;
      *(v47 + 56) = v32;
      v51 = sub_26D2E92F4();
      *(v47 + 64) = v51;
      *(v47 + 32) = v48;
      *(v47 + 40) = v50;
      sub_26D2FC7CC(0, &qword_2804F9510);
      v52 = sub_26D310208();
      sub_26D30F718();

      v53 = v21;
      v54 = v126;
      v55 = sub_26D30F5C8();
      if (v54)
      {
        aBlock[0] = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96A0);
        v33 = sub_26D2FC7CC(0, &qword_2804F96A8);
        swift_dynamicCast();
        v34 = v129;
        sub_26D310188();
        v35 = swift_allocObject();
        *(v35 + 16) = v116;
        v36 = sub_26D30F5A8();
        *(v35 + 56) = MEMORY[0x277D837D0];
        *(v35 + 64) = v51;
        *(v35 + 32) = v36;
        *(v35 + 40) = v37;
        *(v35 + 96) = v33;
        *(v35 + 104) = sub_26D2FC814();
        *(v35 + 72) = v34;
        v38 = v34;
        v39 = sub_26D310208();
        sub_26D30F718();

        v11 = v119;
        v40 = *v120;
        (*v120)(v53, v119);
        v40(v26, v11);

        v126 = 0;
        v21 = v53;
        v41 = v125;
      }

      else
      {
        v57 = v56;
        v115 = v51;
        v58 = v111;
        v59 = v55;
        sub_26D30F608();
        sub_26D30F5E8();
        (*v108)(v58, v112);
        v60 = v117;
        sub_26D30F528();

        v113 = v59;
        v114 = v57;
        sub_26D30F5D8();
        sub_26D310178();
        v61 = swift_allocObject();
        *(v61 + 16) = v123;
        v62 = sub_26D30F5A8();
        v63 = v115;
        *(v61 + 56) = MEMORY[0x277D837D0];
        *(v61 + 64) = v63;
        *(v61 + 32) = v62;
        *(v61 + 40) = v64;
        v65 = sub_26D310208();
        sub_26D30F718();

        v41 = v125;
        v126 = 0;
        sub_26D30F578();
        v66 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v67 = sub_26D3100B8();

        v68 = [v66 initWithContentsOfFile_];

        if (v68)
        {
          v69 = sub_26D30FEC8();
          sub_26D2FC7CC(0, &qword_2804F9680);

          v125 = sub_26D3101D8();
          v70 = v102;
          v11 = v119;
          v121(v102, v60, v119);
          v71 = v99;
          v72 = swift_allocObject();
          *(v72 + 16) = v107;
          (*v98)(v72 + v100, v70, v11);
          *(v72 + v71) = v69;
          v128[2] = sub_26D2FC9A8;
          v128[3] = v72;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v128[0] = sub_26D2FDFE4;
          v128[1] = &block_descriptor_0;
          v73 = _Block_copy(aBlock);

          v74 = v103;
          sub_26D310048();
          aBlock[0] = MEMORY[0x277D84F90];
          sub_26D2FCA50(&qword_2804F96B8, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96C0);
          sub_26D2FCA98(&qword_2804F96C8, &qword_2804F96C0);
          v75 = v105;
          v76 = v60;
          v77 = v106;
          sub_26D310258();
          v78 = v125;
          MEMORY[0x26D6BBAC0](0, v74, v75, v73);
          _Block_release(v73);

          sub_26D2FC87C(v113, v114);

          (*v96)(v75, v77);
          (*v95)(v74, v104);
          v79 = *v120;
          (*v120)(v76, v11);
        }

        else
        {
          sub_26D310188();
          v80 = swift_allocObject();
          *(v80 + 16) = v123;
          v81 = sub_26D30F5A8();
          v82 = v115;
          *(v80 + 56) = MEMORY[0x277D837D0];
          *(v80 + 64) = v82;
          *(v80 + 32) = v81;
          *(v80 + 40) = v83;
          v84 = sub_26D310208();
          sub_26D30F718();
          sub_26D2FC87C(v113, v114);

          v11 = v119;
          v79 = *v120;
          (*v120)(v60, v119);
        }

        v21 = v109;
        v79(v109, v11);
        v26 = v110;
        v79(v110, v11);
      }

      v31 = &v124[v118];
      v27 = v41 - 1;
      v32 = MEMORY[0x277D837D0];
      if (!v27)
      {
        return;
      }

      v121(v26, v31, v11);
    }

    v85 = aBlock[0];
    v86 = sub_26D30F4C8();

    swift_willThrow();
    aBlock[0] = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96A0);
    v87 = sub_26D2FC7CC(0, &qword_2804F96A8);
    swift_dynamicCast();
    v88 = v129;
    sub_26D310188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
    v89 = swift_allocObject();
    *(v89 + 16) = v123;
    *(v89 + 56) = v87;
    *(v89 + 64) = sub_26D2FC814();
    *(v89 + 32) = v88;
    sub_26D2FC7CC(0, &qword_2804F9510);
    v90 = v88;
    v91 = v26;
    v92 = v90;
    v93 = sub_26D310208();
    sub_26D30F718();

    (*v120)(v91, v11);
  }
}

void sub_26D2F8BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26D30F5B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  swift_beginAccess();
  if (*(a1 + v9))
  {
    (*(v5 + 16))(v8, a2, v4);
    v10 = *(a1 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_26D2FA6E0(0, v10[2] + 1, 1, v10, &qword_2804F9518, &unk_26D3141D0, MEMORY[0x277CC9260]);
      *(a1 + v9) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_26D2FA6E0(v12 > 1, v13 + 1, 1, v10, &qword_2804F9518, &unk_26D3141D0, MEMORY[0x277CC9260]);
    }

    v10[2] = v13 + 1;
    (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
    *(a1 + v9) = v10;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  MEMORY[0x26D6BB9D0](v14);
  if (*(v22 + 16) >= *(v22 + 24) >> 1)
  {
    sub_26D310128();
  }

  sub_26D310138();
  v15 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  v21[1] = v15;

  sub_26D30F788();
  sub_26D2F30FC();
  sub_26D310178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26D313B40;
  v17 = sub_26D30F5A8();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_26D2E92F4();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_26D2FC7CC(0, &qword_2804F9510);
  v20 = sub_26D310208();
  sub_26D30F718();
}

uint64_t sub_26D2F8F38@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = sub_26D30F4E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v72 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v65 - v11;
  v13 = sub_26D30F5B8();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v73 = v65 - v20;
  v21 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  swift_beginAccess();
  v22 = *(v2 + v21);
  if (!v22)
  {
    return (*(v14 + 56))(a2, 1, 1, v13);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
  }

  if (*(v22 + 16) <= a1)
  {
    goto LABEL_15;
  }

  v70 = v6;
  v71 = v5;
  v23 = *(v14 + 16);
  v23(v18, v22 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a1, v13);
  v24 = v73;
  (*(v14 + 32))(v73, v18, v13);
  v23(v12, v24, v13);
  v68 = *(v14 + 56);
  v69 = v14 + 56;
  v68(v12, 0, 1, v13);
  v25 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL;
  swift_beginAccess();
  sub_26D2FDF70(v12, v2 + v25, &qword_2804F9270);
  swift_endAccess();
  v26 = sub_26D2F96AC();
  v28 = v27;
  v29 = NSTemporaryDirectory();
  v30 = sub_26D3100C8();
  v32 = v31;

  v74 = v30;
  v75 = v32;

  MEMORY[0x26D6BB9C0](47, 0xE100000000000000);

  MEMORY[0x26D6BB9C0](v26, v28);

  MEMORY[0x26D6BB9C0](1735290926, 0xE400000000000000);

  v33 = v74;
  v34 = v75;
  v35 = [objc_opt_self() defaultManager];
  v36 = sub_26D3100B8();
  LODWORD(v26) = [v35 fileExistsAtPath_];

  if (v26)
  {
    v37 = sub_26D3100B8();
    v74 = 0;
    v38 = [v35 removeItemAtPath:v37 error:&v74];

    if (v38)
    {
      v39 = v74;
    }

    else
    {
      v41 = v74;
      v42 = v12;
      v43 = v33;
      v44 = sub_26D30F4C8();

      swift_willThrow();
      LODWORD(v66) = sub_26D3101A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
      v45 = a2;
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_26D313B40;
      *(v46 + 56) = MEMORY[0x277D837D0];
      *(v46 + 64) = sub_26D2E92F4();
      *(v46 + 32) = v43;
      *(v46 + 40) = v34;
      sub_26D2FC7CC(0, &qword_2804F9510);

      v47 = sub_26D310208();
      sub_26D30F718();
      a2 = v45;

      v48 = v44;
      v33 = v43;
      v12 = v42;
    }
  }

  v67 = v12;
  v49 = v73;
  sub_26D30F578();
  v50 = sub_26D3100B8();

  v51 = sub_26D3100B8();
  v74 = 0;
  v52 = v33;
  v53 = [v35 copyItemAtPath:v50 toPath:v51 error:&v74];

  if (v53)
  {
    v54 = v74;
  }

  else
  {
    v55 = v74;
    v66 = sub_26D30F4C8();

    swift_willThrow();
    v65[3] = sub_26D3101A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_26D313CE0;
    v57 = sub_26D30F578();
    v58 = a2;
    v60 = v59;
    v61 = MEMORY[0x277D837D0];
    *(v56 + 56) = MEMORY[0x277D837D0];
    v62 = sub_26D2E92F4();
    *(v56 + 32) = v57;
    *(v56 + 40) = v60;
    a2 = v58;
    *(v56 + 96) = v61;
    *(v56 + 104) = v62;
    *(v56 + 64) = v62;
    *(v56 + 72) = v52;
    *(v56 + 80) = v34;
    sub_26D2FC7CC(0, &qword_2804F9510);

    v63 = sub_26D310208();
    sub_26D30F718();
  }

  v64 = v68;
  v68(v67, 1, 1, v13);
  (*(v70 + 104))(v72, *MEMORY[0x277CC91D8], v71);
  sub_26D30F598();
  (*(v14 + 8))(v49, v13);
  return v64(a2, 0, 1, v13);
}

uint64_t sub_26D2F96AC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v1 = sub_26D3100B8();
  v2 = [v0 initWithPath_];

  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_26D3100B8();
  v5 = sub_26D3100B8();
  v6 = sub_26D3100B8();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_26D3100C8();
  return v8;
}

uint64_t sub_26D2F97E0(uint64_t a1)
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96D0);
  MEMORY[0x28223BE20](v90, v3);
  v5 = &v75 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v75 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v75 - v20;
  v22 = sub_26D30F5B8();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v76 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v89 = &v75 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v97 = &v75 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v80 = &v75 - v34;
  v35 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  result = swift_beginAccess();
  v95 = v35;
  v98 = v1;
  v37 = *(v1 + v35);
  if (!v37)
  {
    return result;
  }

  v79 = v14;
  v77 = v10;
  v78 = a1;
  v85 = v5;
  v38 = *(v37 + 16);
  v39 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL;
  v40 = v98;
  swift_beginAccess();
  v87 = v39;
  sub_26D2E9114(v40 + v39, v21, &qword_2804F9270);
  v41 = *(v23 + 48);
  v86 = v23 + 48;
  if (v41(v21, 1, v22) == 1)
  {
    return sub_26D2E9284(v21, &qword_2804F9270);
  }

  v84 = v41;
  v94 = v18;
  v88 = v23;
  v91 = *(v23 + 32);
  v92 = v23 + 32;
  result = v91(v80, v21, v22);
  if (!v38)
  {
    return (*(v88 + 8))(v80, v22);
  }

  v42 = v38;
  v43 = 0;
  v44 = 0;
  v83 = v88 + 16;
  v82 = v88 + 56;
  v93 = (v88 + 8);
  v75 = xmmword_26D313CE0;
  v81 = v38;
  while (1)
  {
    v45 = *(v98 + v95);
    if (!v45)
    {
      goto LABEL_9;
    }

    if (v43 >= *(v45 + 16))
    {
      break;
    }

    v96 = v44;
    v46 = v88;
    v47 = v89;
    v48 = *(v88 + 16);
    v48(v89, v45 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v43, v22);
    v49 = v97;
    v91(v97, v47, v22);
    v50 = v94;
    v48(v94, v49, v22);
    (*(v46 + 56))(v50, 0, 1, v22);
    v51 = *(v90 + 48);
    v52 = v85;
    sub_26D2E9114(v50, v85, &qword_2804F9270);
    sub_26D2E9114(v98 + v87, v52 + v51, &qword_2804F9270);
    v53 = v84;
    if (v84(v52, 1, v22) == 1)
    {
      sub_26D2E9284(v50, &qword_2804F9270);
      v54 = v53(v52 + v51, 1, v22);
      v44 = v96;
      if (v54 == 1)
      {
        sub_26D2E9284(v52, &qword_2804F9270);
LABEL_17:
        v59 = [objc_opt_self() defaultManager];
        v60 = v77;
        sub_26D310168();
        if (v44)
        {

          sub_26D3101A8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
          v61 = swift_allocObject();
          *(v61 + 16) = v75;
          v62 = sub_26D30F5A8();
          v64 = v63;
          v65 = MEMORY[0x277D837D0];
          *(v61 + 56) = MEMORY[0x277D837D0];
          v66 = sub_26D2E92F4();
          *(v61 + 64) = v66;
          *(v61 + 32) = v62;
          *(v61 + 40) = v64;
          v67 = sub_26D30F5A8();
          *(v61 + 96) = v65;
          *(v61 + 104) = v66;
          *(v61 + 72) = v67;
          *(v61 + 80) = v68;
          sub_26D2FC7CC(0, &qword_2804F9510);
          v69 = sub_26D310208();
          sub_26D30F718();

          v44 = 0;
        }

        else
        {
          sub_26D2E9284(v60, &qword_2804F9270);
        }

        sub_26D30F578();
        v70 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v71 = sub_26D3100B8();

        v72 = [v70 initWithContentsOfFile_];

        if (v72)
        {
          v73 = sub_26D30FEC8();
          swift_getKeyPath();
          swift_getKeyPath();

          sub_26D30F778();

          v74 = v99;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_26D2FB2FC(v74);
            v74 = result;
          }

          if (v43 >= *(v74 + 16))
          {
            goto LABEL_29;
          }

          *(v74 + 8 * v43 + 32) = v73;

          swift_getKeyPath();
          swift_getKeyPath();
          v99 = v74;

          sub_26D30F788();
          sub_26D2F30FC();
        }

        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v55 = v79;
    sub_26D2E9114(v52, v79, &qword_2804F9270);
    if (v53(v52 + v51, 1, v22) == 1)
    {
      sub_26D2E9284(v94, &qword_2804F9270);
      (*v93)(v55, v22);
      v44 = v96;
LABEL_7:
      sub_26D2E9284(v52, &qword_2804F96D0);
      goto LABEL_8;
    }

    v56 = v76;
    v91(v76, (v52 + v51), v22);
    sub_26D2FCA50(&qword_2804F96D8, MEMORY[0x277CC9260]);
    v57 = sub_26D3100A8();
    v58 = *v93;
    (*v93)(v56, v22);
    sub_26D2E9284(v94, &qword_2804F9270);
    v58(v55, v22);
    sub_26D2E9284(v52, &qword_2804F9270);
    v44 = v96;
    if (v57)
    {
      goto LABEL_17;
    }

LABEL_8:
    result = (*v93)(v97, v22);
    v42 = v81;
LABEL_9:
    if (v42 == ++v43)
    {
      return (*(v88 + 8))(v80, v22);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26D2FA164()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__isSubmitButtonDisabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__testerFeedbackText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9610);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__alertMessage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9628);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__selectedPhotos;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9640);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadingPhotos;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9658);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  v11 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadedPhotos;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9670);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  sub_26D2E9284(v0 + OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL, &qword_2804F9270);

  return v0;
}

uint64_t sub_26D2FA3AC()
{
  sub_26D2FA164();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D2FA404@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D30F728();
  *a1 = result;
  return result;
}

id sub_26D2FA4A0()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    return [result feedbackWillCancelSubmission];
  }

  return result;
}

size_t sub_26D2FA4F0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9730);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_26D2FA6E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_26D2FA8BC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_26D30F5B8();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v42 - v16;
  v18 = *v2;
  v19 = v56;
  result = sub_26D2FAFA8(a1, a2, *v2, MEMORY[0x277CC9260]);
  if (!v19)
  {
    v52 = v17;
    v56 = 0;
    if (v21)
    {
      return *(v18 + 16);
    }

    v22 = v5;
    v44 = v10;
    v45 = v14;
    v49 = a1;
    v43 = v2;
    v54 = result;
    v23 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v24 = v18;
      v26 = (v18 + 16);
      v25 = *(v18 + 16);
      v27 = v52;
      if (v23 == v25)
      {
        return v54;
      }

      v28 = v22;
      v51 = v6 + 16;
      v47 = v6;
      v48 = (v6 + 8);
      v42 = (v6 + 40);
      v46 = a2;
      while (v23 < v25)
      {
        v29 = *(v6 + 80);
        v55 = v24;
        v50 = (v29 + 32) & ~v29;
        v30 = v24 + v50;
        v31 = *(v6 + 72);
        v32 = *(v6 + 16);
        v53 = v31 * v23;
        v32(v27, &v30[v31 * v23], v28);
        v33 = v56;
        v34 = v49(v27);
        v56 = v33;
        if (v33)
        {
          return (*v48)(v27, v28);
        }

        v35 = v34;
        result = (*v48)(v27, v28);
        if (v35)
        {
          v6 = v47;
          v27 = v52;
          v24 = v55;
        }

        else
        {
          v36 = v54;
          if (v23 == v54)
          {
            v6 = v47;
            v27 = v52;
            v24 = v55;
          }

          else
          {
            if ((v54 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v37 = *v26;
            if (v54 >= v37)
            {
              goto LABEL_27;
            }

            v38 = v31 * v54;
            result = (v32)(v45, &v30[v38], v28);
            if (v23 >= v37)
            {
              goto LABEL_28;
            }

            v39 = v44;
            v32(v44, &v30[v53], v28);
            v24 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_26D2FB2B0(v24);
            }

            v40 = v24 + v50;
            v41 = *v42;
            result = (*v42)(v24 + v50 + v38, v39, v28);
            v6 = v47;
            if (v23 >= v24[2])
            {
              goto LABEL_29;
            }

            result = v41(&v40[v53], v45, v28);
            *v43 = v24;
            v36 = v54;
            v27 = v52;
          }

          v54 = v36 + 1;
        }

        ++v23;
        v26 = v24 + 2;
        v25 = v24[2];
        if (v23 == v25)
        {
          return v54;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26D2FAC74(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v36 - v17;
  v19 = *v2;
  result = sub_26D2FB098(a1, a2, *v2);
  if (!v3)
  {
    v48 = 0;
    if (v21)
    {
      return v19[2];
    }

    v41 = v18;
    v42 = a1;
    v37 = v15;
    v38 = v11;
    v36 = v2;
    v46 = result;
    v22 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v24 = v19 + 2;
      v23 = v19[2];
      if (v22 == v23)
      {
        return v46;
      }

      v39 = v7;
      v40 = a2;
      while (v22 < v23)
      {
        v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v47 = v19;
        v43 = v25;
        v26 = *(v7 + 72);
        v44 = v26 * v22;
        v45 = v19 + v25;
        v27 = v41;
        sub_26D2E9114(v19 + v25 + v26 * v22, v41, &qword_2804F9728);
        v28 = v48;
        v29 = v42(v27);
        result = sub_26D2E9284(v27, &qword_2804F9728);
        v48 = v28;
        if (v28)
        {
          return result;
        }

        if (v29)
        {
          v7 = v39;
          v19 = v47;
        }

        else
        {
          v30 = v46;
          if (v22 == v46)
          {
            v7 = v39;
            v19 = v47;
          }

          else
          {
            if ((v46 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v31 = *v24;
            if (v46 >= *v24)
            {
              goto LABEL_27;
            }

            v32 = v26 * v46;
            v33 = v45;
            result = sub_26D2E9114(&v45[v26 * v46], v37, &qword_2804F9728);
            if (v22 >= v31)
            {
              goto LABEL_28;
            }

            v34 = v44;
            sub_26D2E9114(&v33[v44], v38, &qword_2804F9728);
            v19 = v47;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_26D2FB35C(v19);
            }

            v35 = v19 + v43;
            result = sub_26D2FDF70(v38, v19 + v43 + v32, &qword_2804F9728);
            if (v22 >= v19[2])
            {
              goto LABEL_29;
            }

            result = sub_26D2FDF70(v37, &v35[v34], &qword_2804F9728);
            *v36 = v19;
            v7 = v39;
            v30 = v46;
          }

          v46 = v30 + 1;
        }

        ++v22;
        v24 = v19 + 2;
        v23 = v19[2];
        if (v22 == v23)
        {
          return v46;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26D2FAFA8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_26D2FB098(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728) - 8);
    v9 = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_26D2FB1A4(uint64_t a1)
{
  v2 = sub_26D310268();

  return sub_26D2FB1E8(a1, v2);
}

unint64_t sub_26D2FB1E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26D2FD1B8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D6BBB50](v9, a1);
      sub_26D2FD108(v9);
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

uint64_t sub_26D2FB370(void *a1)
{
  v144 = a1;
  v148 = sub_26D30F5B8();
  v143 = *(v148 - 8);
  v3 = MEMORY[0x28223BE20](v148, v2);
  v136 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v139 = &v120 - v7;
  MEMORY[0x28223BE20](v6, v8);
  v145 = &v120 - v9;
  v141 = sub_26D3101C8();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v10);
  v138 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_26D3101B8();
  MEMORY[0x28223BE20](v137, v12);
  *&v134 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26D310068();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v132 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9670);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v17);
  v128 = &v120 - v18;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9658);
  v126 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v19);
  v125 = &v120 - v20;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9640);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v21);
  v122 = &v120 - v22;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9628);
  v23 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v24);
  v26 = &v120 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9610);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v120 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9600);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v120 - v35;
  v1[2] = 0;
  v127 = v1 + 2;
  v1[4] = 0;
  v131 = v1 + 4;
  v1[5] = 0xE000000000000000;
  v1[6] = 0;
  v133 = v1 + 6;
  v1[8] = 0;
  v135 = (v1 + 8);
  v1[7] = 0xE000000000000000;
  v1[9] = 0xE000000000000000;
  v37 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__isSubmitButtonDisabled;
  LOBYTE(aBlock) = 1;
  sub_26D30F738();
  (*(v33 + 32))(v1 + v37, v36, v32);
  v38 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__testerFeedbackText;
  aBlock = 0;
  v147 = 0xE000000000000000;
  v151 = 0xE000000000000000;
  sub_26D30F738();
  v39 = v1 + v38;
  v40 = v1;
  (*(v28 + 32))(v39, v31, v27);
  v41 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__alertMessage;
  v151 = 0;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9620);
  sub_26D30F738();
  (*(v23 + 32))(v1 + v41, v26, v121);
  v42 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__selectedPhotos;
  v43 = MEMORY[0x277D84F90];
  aBlock = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9638);
  v44 = v122;
  sub_26D30F738();
  (*(v123 + 32))(&v40[v42], v44, v124);
  v45 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadingPhotos;
  aBlock = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9650);
  v46 = v125;
  sub_26D30F738();
  (*(v126 + 32))(&v40[v45], v46, v146);
  v146 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  *&v40[OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs] = v43;
  v47 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadedPhotos;
  aBlock = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9668);
  v48 = v128;
  sub_26D30F738();
  (*(v129 + 32))(&v40[v47], v48, v130);
  (*(v143 + 56))(&v40[OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL], 1, 1, v148);
  v49 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_imageLoadingQueue;
  sub_26D2FC7CC(0, &qword_2804F9680);
  sub_26D310058();
  aBlock = v43;
  sub_26D2FCA50(&qword_2804F9688, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9690);
  sub_26D2FCA98(&qword_2804F9698, &qword_2804F9690);
  sub_26D310258();
  (*(v140 + 13))(v138, *MEMORY[0x277D85260], v141);
  v50 = v40;
  *&v40[v49] = sub_26D3101F8();
  v51 = v144;
  v52 = v127;
  swift_beginAccess();
  *v52 = v51;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v40 + 3) = [v51 feedbackSessionContext];
  v53 = [v51 feedbackAppName];
  v54 = sub_26D3100C8();
  v56 = v55;

  v57 = v131;
  swift_beginAccess();
  *v57 = v54;
  *(v40 + 5) = v56;

  v58 = [v51 feedbackDeveloperName];
  v59 = sub_26D3100C8();
  v61 = v60;

  v62 = v133;
  swift_beginAccess();
  *v62 = v59;
  *(v40 + 7) = v61;

  v63 = [v51 feedbackTesterEmailAddress];
  if (v63)
  {
    v64 = v63;
    v65 = sub_26D3100C8();
    v147 = v66;
  }

  else
  {
    v65 = 0;
  }

  swift_beginAccess();
  v67 = v147;
  *(v40 + 8) = v65;
  *(v40 + 9) = v67;

  v68 = [v51 feedbackInitialScreenshotURLs];
  v69 = v148;
  v70 = v145;
  v71 = v146;
  if (v68)
  {
    v72 = v68;
    v73 = sub_26D310118();
  }

  else
  {
    v73 = 0;
  }

  swift_beginAccess();
  *(v50 + v71) = v73;

  v74 = *(v50 + v71);
  v142 = v50;
  if (v74 && (v75 = v74[2]) != 0)
  {
    v76 = (v143 + 16);
    v77 = *(v143 + 16);
    v137 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    v78 = v74 + v137;
    v79 = *(v143 + 72);
    v140 = (v143 + 8);
    v135 = (v143 + 32);
    v133 = v74;

    v147 = MEMORY[0x277D84F90];
    v134 = xmmword_26D313B40;
    v144 = v76;
    v141 = v79;
    v138 = v77;
    do
    {
      v82 = v148;
      (v77)(v70, v78, v148);
      sub_26D30F578();
      v83 = v77;
      v84 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v85 = sub_26D3100B8();

      v86 = [v84 initWithContentsOfFile_];

      if (v86)
      {
        sub_26D30FEC8();
        swift_getKeyPath();
        swift_getKeyPath();

        sub_26D30F778();

        MEMORY[0x26D6BB9D0](v80);
        if (*(aBlock + 16) >= *(aBlock + 24) >> 1)
        {
          sub_26D310128();
        }

        sub_26D310138();
        v81 = aBlock;
        swift_getKeyPath();
        swift_getKeyPath();
        v149 = v81;

        sub_26D30F788();
        sub_26D2F30FC();

        v70 = v145;
        (*v140)(v145, v148);
        v71 = v146;
        v77 = v138;
        v73 = v141;
      }

      else
      {
        sub_26D3101A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258);
        v87 = swift_allocObject();
        *(v87 + 16) = v134;
        v88 = sub_26D30F4F8();
        v90 = v89;
        *(v87 + 56) = MEMORY[0x277D837D0];
        *(v87 + 64) = sub_26D2E92F4();
        *(v87 + 32) = v88;
        *(v87 + 40) = v90;
        v70 = v145;
        sub_26D2FC7CC(0, &qword_2804F9510);
        v91 = sub_26D310208();
        sub_26D30F718();

        (v83)(v139, v70, v82);
        v77 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_26D2FA6E0(0, v147[2] + 1, 1, v147, &qword_2804F9518, &unk_26D3141D0, MEMORY[0x277CC9260]);
        }

        v71 = v146;
        v93 = v147[2];
        v92 = v147[3];
        if (v93 >= v92 >> 1)
        {
          v147 = sub_26D2FA6E0(v92 > 1, v93 + 1, 1, v147, &qword_2804F9518, &unk_26D3141D0, MEMORY[0x277CC9260]);
        }

        v94 = v148;
        (*v140)(v70, v148);
        v95 = v147;
        v147[2] = v93 + 1;
        v73 = v141;
        (*v135)(&v95[v137 + v93 * v141], v139, v94);
      }

      v78 += v73;
      --v75;
    }

    while (v75);

    v96 = v147;
    v50 = v142;
    v69 = v148;
  }

  else
  {
    v96 = MEMORY[0x277D84F90];
  }

  v97 = v136;
  v141 = v96[2];
  if (v141)
  {
    v98 = 0;
    v99 = 0;
    v135 = ((*(v143 + 80) + 32) & ~*(v143 + 80));
    v140 = v135 + v96;
    v139 = (v143 + 16);
    v138 = (v143 + 8);
    v147 = v96;
    do
    {
      if (v98 >= v96[2])
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v103 = *(v143 + 72);
      (*(v143 + 16))(v97, &v140[v103 * v98], v69);
      v104 = swift_beginAccess();
      if (*(v50 + v71))
      {
        v145 = &v120;
        MEMORY[0x28223BE20](v104, v105);
        *(&v120 - 2) = v97;
        v106 = sub_26D2FA8BC(sub_26D2FCF80, (&v120 - 4));
        if (v99)
        {

          result = swift_endAccess();
          __break(1u);
          return result;
        }

        v107 = v106;
        v108 = v50;
        v73 = *(v50 + v71);
        v50 = *(v73 + 16);
        v109 = v50 - v106;
        if (v50 < v106)
        {
          goto LABEL_50;
        }

        if (v106 < 0)
        {
          goto LABEL_51;
        }

        v144 = 0;
        v110 = v106;
        if (__OFADD__(v50, v106 - v50))
        {
          goto LABEL_52;
        }

        v137 = v106 - v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v108 + v71) = v73;
        if (!isUniquelyReferenced_nonNull_native || v110 > *(v73 + 24) >> 1)
        {
          if (v50 <= v110)
          {
            v112 = v50 - v109;
          }

          else
          {
            v112 = v50;
          }

          v73 = sub_26D2FA6E0(isUniquelyReferenced_nonNull_native, v112, 1, v73, &qword_2804F9518, &unk_26D3141D0, MEMORY[0x277CC9260]);
          *(v108 + v71) = v73;
        }

        v113 = v135 + v73;
        v114 = v107 * v103;
        v115 = v135 + v73 + v107 * v103;
        swift_arrayDestroy();
        if (v50 != v107)
        {
          if (v114 < v50 * v103 || v115 >= &v113[v50 * v103 + (*(v73 + 16) - v50) * v103])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v114 != v50 * v103)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v100 = *(v73 + 16);
          v101 = __OFADD__(v100, v137);
          v102 = v100 + v137;
          if (v101)
          {
            goto LABEL_53;
          }

          *(v73 + 16) = v102;
        }

        v50 = v142;
        v71 = v146;
        *(v142 + v146) = v73;
        swift_endAccess();
        v69 = v148;
        v97 = v136;
        v96 = v147;
        v99 = v144;
      }

      else
      {
        swift_endAccess();
      }

      ++v98;
      (*v138)(v97, v69);
    }

    while (v141 != v98);
  }

  v73 = [objc_opt_self() defaultCenter];
  if (qword_2804FA0B8 != -1)
  {
LABEL_54:
    swift_once();
  }

  v116 = qword_2804FAAB8;
  v154 = sub_26D2FCFB0;
  v155 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v151 = 1107296256;
  v152 = sub_26D2F5E98;
  v153 = &block_descriptor_30;
  v117 = _Block_copy(&aBlock);

  v118 = [v73 addObserverForName:v116 object:0 queue:0 usingBlock:v117];
  _Block_release(v117);
  swift_unknownObjectRelease();

  sub_26D2F30FC();
  return v50;
}

uint64_t sub_26D2FC7CC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26D2FC814()
{
  result = qword_2804F96B0;
  if (!qword_2804F96B0)
  {
    sub_26D2FC7CC(255, &qword_2804F96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F96B0);
  }

  return result;
}

uint64_t sub_26D2FC87C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26D2FC8D0()
{
  v1 = sub_26D30F5B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_26D2FC9A8()
{
  v1 = *(sub_26D30F5B8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_26D2F8BA8(v2, v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26D2FCA50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D2FCA98(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for FeedbackViewModel()
{
  result = qword_2804FA1D0;
  if (!qword_2804FA1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26D2FCB88()
{
  sub_26D2FCF2C(319, &qword_2804F96E0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_26D2FCF2C(319, &qword_2804F96E8, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      sub_26D2FCE58(319, &qword_2804F96F0, &qword_2804F9620);
      if (v2 <= 0x3F)
      {
        sub_26D2FCE58(319, &qword_2804F96F8, &qword_2804F9638);
        if (v3 <= 0x3F)
        {
          sub_26D2FCE58(319, &qword_2804F9700, &qword_2804F9650);
          if (v4 <= 0x3F)
          {
            sub_26D2FCE58(319, &qword_2804F9708, &qword_2804F9668);
            if (v5 <= 0x3F)
            {
              sub_26D2FCEAC();
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26D2FCE58(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_26D30F798();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26D2FCEAC()
{
  if (!qword_2804F9710)
  {
    sub_26D30F5B8();
    v0 = sub_26D310218();
    if (!v1)
    {
      atomic_store(v0, &qword_2804F9710);
    }
  }
}

void sub_26D2FCF2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26D2FCFB0()
{
  v0 = sub_26D30F3F8();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_26D310288();
  if (!*(v1 + 16) || (v2 = sub_26D2FB1A4(&v7), (v3 & 1) == 0))
  {

    sub_26D2FD108(&v7);
LABEL_8:
    v9 = 0u;
    v10 = 0u;
    return sub_26D2E9284(&v9, &qword_2804F9720);
  }

  sub_26D2FD15C(*(v1 + 56) + 32 * v2, &v9);
  sub_26D2FD108(&v7);

  if (!*(&v10 + 1))
  {
    return sub_26D2E9284(&v9, &qword_2804F9720);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v5 = v7;
    v6 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v5;
    v8 = v6;

    return sub_26D30F788();
  }

  return result;
}

uint64_t sub_26D2FD15C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26D2FD214()
{
  v1 = sub_26D30F618();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_26D30F3A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_26D2FD364(uint64_t a1)
{
  v3 = *(sub_26D30F618() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_26D30F3A8() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_26D2F66BC(a1, v7, v1 + v4, v8);
}

unint64_t sub_26D2FD43C()
{
  result = qword_2804F9738;
  if (!qword_2804F9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9738);
  }

  return result;
}

uint64_t sub_26D2FD490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D2FD500()
{
  v1 = sub_26D30F618();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_26D30F3A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  sub_26D2FD668(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

void sub_26D2FD668(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_26D2FD674(a1, a2);
  }
}

uint64_t sub_26D2FD674(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D2FC87C(a1, a2);
  }

  return a1;
}

uint64_t sub_26D2FD688()
{
  v1 = *(sub_26D30F618() - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_26D30F3A8() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + v3);
  v9 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_26D2F6BB4(v5, v6, v7, v0 + v2, v8, v9);
}

id sub_26D2FD76C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_26D2FD778(a1, a2);
  }
}

uint64_t sub_26D2FD778(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D2FD78C(a1, a2);
  }

  return a1;
}

uint64_t sub_26D2FD78C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26D2FD7E0()
{
  v17 = sub_26D30F5B8();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 24) & ~v2;
  v3 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_26D30F618();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_26D30F3A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;

  (*(v1 + 8))(v0 + v15, v17);

  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v14, v12 | 7);
}

uint64_t sub_26D2FD9D8()
{
  v1 = *(sub_26D30F5B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_26D30F618() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_26D30F3A8() - 8);
  v8 = *(v0 + v3);
  v9 = *(v0 + 16);
  v10 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_26D2F74A4(v9, v0 + v2, v8, v0 + v5, v10);
}

unint64_t sub_26D2FDB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_26D2FDCA0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_26D2FA4F0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_26D2FDB4C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_26D2FDD60()
{
  v0 = sub_26D30F368();
  v2 = v1;
  v3 = sub_26D30F368();
  if (v2)
  {
    if (v4)
    {
      if (v0 == v3 && v2 == v4)
      {

        v6 = 1;
      }

      else
      {
        v6 = sub_26D3102F8();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v6 = 1;
      return v6 & 1;
    }

    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_26D2FDE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_26D30F3A8();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_26D2FDF70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26D2FE000@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26D30FA38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  sub_26D2E9114(v2, &v16 - v11, &qword_2804F9268);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26D30F808();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_26D310198();
    v15 = sub_26D30FB68();
    sub_26D30F718();

    sub_26D30FA28();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_26D2FE200()
{
  v1 = sub_26D30FA38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WhatToTestViewAllPlatforms() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26D310198();
    v9 = sub_26D30FB68();
    sub_26D30F718();

    sub_26D30FA28();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t type metadata accessor for WhatToTestViewAllPlatforms()
{
  result = qword_2804FA270;
  if (!qword_2804FA270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D2FE3A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9750);
  sub_26D2FE434();
  return sub_26D30F928();
}

unint64_t sub_26D2FE434()
{
  result = qword_2804F9758;
  if (!qword_2804F9758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9750);
    sub_26D2FE4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9758);
  }

  return result;
}

unint64_t sub_26D2FE4C0()
{
  result = qword_2804F9760;
  if (!qword_2804F9760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9768);
    sub_26D2FE54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9760);
  }

  return result;
}

unint64_t sub_26D2FE54C()
{
  result = qword_2804F9770;
  if (!qword_2804F9770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9780);
    sub_26D2FE614();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9770);
  }

  return result;
}

unint64_t sub_26D2FE614()
{
  result = qword_2804F9788;
  if (!qword_2804F9788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9780);
    sub_26D2E906C(&qword_2804F9790, &qword_2804F9798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9788);
  }

  return result;
}

void sub_26D2FE6CC(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9798);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9780);
  MEMORY[0x28223BE20](v6, v7);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9838);
  MEMORY[0x28223BE20](v15, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9778);
  MEMORY[0x28223BE20](v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9768);
  MEMORY[0x28223BE20](v11, v12);
  *v5 = sub_26D30FA78();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9840);
  sub_26D2FEAEC(v1, &v5[*(v13 + 44)]);
}

void sub_26D2FE8F0()
{
  sub_26D30FFD8();
  sub_26D30F968();
  sub_26D2F2534(v1, v0, &qword_2804F9798);
  v4 = (v0 + *(v2 + 36));
  v5 = *(v3 - 152);
  v4[4] = *(v3 - 168);
  v4[5] = v5;
  v4[6] = *(v3 - 136);
  v6 = *(v3 - 216);
  *v4 = *(v3 - 232);
  v4[1] = v6;
  v7 = *(v3 - 184);
  v4[2] = *(v3 - 200);
  v4[3] = v7;
  sub_26D2FE614();
  sub_26D30C894();
}

uint64_t sub_26D2FE9A4()
{
  sub_26D2E9284(v0, &qword_2804F9780);
  v8 = sub_26D30FBD8();
  sub_26D30F7B8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v5 + 32))(v1, v4, *(v7 - 248));
  v17 = v1 + *(v2 + 44);
  *v17 = v8;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  v18 = sub_26D30FBC8();
  sub_26D30F7B8();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_26D2F2534(v1, v6, &qword_2804F9778);
  v27 = v6 + *(v3 + 44);
  *v27 = v18;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  v28 = sub_26D30F938();
  v29 = sub_26D30FBB8();
  v30 = *(v7 - 240);
  sub_26D2F2534(v6, v30, &qword_2804F9768);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9750);
  v32 = v30 + *(result + 36);
  *v32 = v28;
  *(v32 + 8) = v29;
  return result;
}

void sub_26D2FEAEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v200 = a1;
  v183 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9848);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v199 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v198 = &v152 - v7;
  v8 = type metadata accessor for WhatToTestViewAllPlatforms();
  v169 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v170 = v10;
  v171 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9850);
  v177 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v11);
  v172 = &v152 - v12;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9858);
  MEMORY[0x28223BE20](v180, v13);
  v178 = &v152 - v14;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9860);
  v16 = MEMORY[0x28223BE20](v181, v15);
  v182 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v197 = &v152 - v19;
  v20 = sub_26D30FB28();
  v167 = *(v20 - 8);
  v168 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v155 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9868);
  v24 = *(v23 - 8);
  v156 = v23;
  v157 = v24;
  MEMORY[0x28223BE20](v23, v25);
  v154 = &v152 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9870);
  v161 = *(v27 - 8);
  v162 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v153 = &v152 - v29;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9878);
  v164 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v30);
  v159 = &v152 - v31;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9880);
  MEMORY[0x28223BE20](v158, v32);
  v165 = &v152 - v33;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9888);
  v35 = MEMORY[0x28223BE20](v163, v34);
  v202 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v160 = &v152 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v195 = &v152 - v41;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9890) - 8;
  MEMORY[0x28223BE20](v186, v42);
  v185 = (&v152 - v43);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9898) - 8;
  v45 = MEMORY[0x28223BE20](v189, v44);
  v196 = &v152 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v187 = &v152 - v49;
  MEMORY[0x28223BE20](v48, v50);
  v201 = &v152 - v51;
  sub_26D2FE200();
  sub_26D304DB4(v228);

  v52 = v228[0];

  sub_26D303430(v228);
  if (*(&v52 + 1))
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v54 = 0xE000000000000000;
  if (*(&v52 + 1))
  {
    v54 = *(&v52 + 1);
  }

  v204 = v53;
  v205 = v54;
  v188 = sub_26D2E9230();
  v55 = sub_26D30FD58();
  v57 = v56;
  v59 = v58;
  sub_26D30FCB8();
  v60 = sub_26D30FD28();
  v62 = v61;
  v64 = v63;

  sub_26D2E92E4(v55, v57, v59 & 1);

  sub_26D30FC68();
  v65 = sub_26D30FD08();
  v192 = v66;
  v193 = v65;
  LOBYTE(v55) = v67;
  v194 = v68;
  sub_26D2E92E4(v60, v62, v64 & 1);

  v191 = sub_26D30FBE8();
  v184 = sub_26D30ABA4();
  sub_26D30F7B8();
  v175 = v70;
  v176 = v69;
  v173 = v72;
  v174 = v71;
  v190 = v55 & 1;
  v220 = v55 & 1;
  v219 = 0;
  sub_26D30FFE8();
  sub_26D30F968();
  v224 = v228[7];
  v225 = v228[8];
  v226 = v228[9];
  v227 = v228[10];
  v221 = v228[4];
  v222 = v228[5];
  v223 = v228[6];
  v73 = sub_26D30FA48();
  v74 = v185;
  *v185 = v73;
  *(v74 + 8) = 0x402C000000000000;
  *(v74 + 16) = 0;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98A0);
  sub_26D300108(v74 + *(v75 + 44));
  LOBYTE(v55) = sub_26D30FBE8();
  sub_26D30F7B8();
  v76 = v74 + *(v186 + 44);
  *v76 = v55;
  *(v76 + 8) = v77;
  *(v76 + 16) = v78;
  *(v76 + 24) = v79;
  *(v76 + 32) = v80;
  *(v76 + 40) = 0;
  sub_26D30FFE8();
  sub_26D30F968();
  v81 = v187;
  sub_26D2F2534(v74, v187, &qword_2804F9890);
  v82 = (v81 + *(v189 + 44));
  v83 = v228[16];
  v82[4] = v228[15];
  v82[5] = v83;
  v82[6] = v228[17];
  v84 = v228[12];
  *v82 = v228[11];
  v82[1] = v84;
  v85 = v228[14];
  v82[2] = v228[13];
  v82[3] = v85;
  sub_26D2F2534(v81, v201, &qword_2804F9898);
  sub_26D2FE200();
  sub_26D304DB4(&v229);

  v86 = v230;
  v87 = v231;

  sub_26D303430(&v229);
  if (v87)
  {
    v88 = v86;
  }

  else
  {
    v88 = 0;
  }

  v89 = 0xE000000000000000;
  if (v87)
  {
    v89 = v87;
  }

  v204 = v88;
  v205 = v89;
  v90 = sub_26D30FD58();
  v92 = v91;
  v94 = v93;
  sub_26D30FCC8();
  v95 = sub_26D30FD28();
  v97 = v96;
  v99 = v98;

  sub_26D2E92E4(v90, v92, v94 & 1);

  sub_26D30FC98();
  v100 = sub_26D30FD08();
  v187 = v101;
  v188 = v100;
  LOBYTE(v90) = v102;
  v189 = v103;
  v104 = v99 & 1;
  v105 = v153;
  sub_26D2E92E4(v95, v97, v104);

  LODWORD(v186) = sub_26D30FBE8();
  sub_26D30F7B8();
  LODWORD(v185) = v90 & 1;
  v211 = v90 & 1;
  v210 = 0;
  sub_26D30FFE8();
  sub_26D30F968();
  v215 = v235;
  v216 = v236;
  v217 = v237;
  v218 = v238;
  v212 = v232;
  v213 = v233;
  v214 = v234;
  v203 = v200;
  sub_26D30FB98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98A8);
  v106 = v155;
  sub_26D2E906C(&qword_2804F98B0, &qword_2804F98A8);
  v107 = v154;
  v108 = v156;
  sub_26D30F7C8();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98B8);
  v110 = sub_26D2E906C(&qword_2804F98C0, &qword_2804F9868);
  v111 = sub_26D3035AC();
  View.conditional<A>(_:)(sub_26D301040, 0, v108, v109, v110, v111, v105);
  (*(v157 + 8))(v107, v108);
  sub_26D30FB18();
  LOBYTE(v107) = sub_26D30FB98();
  sub_26D30FB88();
  sub_26D30FB88();
  if (sub_26D30FB88() != v107)
  {
    sub_26D30FB88();
  }

  v204 = v108;
  v205 = v109;
  v206 = v110;
  v207 = v111;
  swift_getOpaqueTypeConformance2();
  v112 = v159;
  v113 = v162;
  sub_26D30FDC8();
  (*(v167 + 8))(v106, v168);
  (*(v161 + 8))(v105, v113);
  sub_26D30FFE8();
  sub_26D30F968();
  v114 = v165;
  (*(v164 + 32))(v165, v112, v166);
  v115 = &v114[*(v158 + 36)];
  v116 = v244;
  *(v115 + 4) = v243;
  *(v115 + 5) = v116;
  *(v115 + 6) = v245;
  v117 = v240;
  *v115 = v239;
  *(v115 + 1) = v117;
  v118 = v242;
  *(v115 + 2) = v241;
  *(v115 + 3) = v118;
  v119 = sub_26D30FBA8();
  sub_26D30F7B8();
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v128 = v114;
  v129 = v160;
  sub_26D2F2534(v128, v160, &qword_2804F9880);
  v130 = v129 + *(v163 + 36);
  *v130 = v119;
  *(v130 + 8) = v121;
  *(v130 + 16) = v123;
  *(v130 + 24) = v125;
  *(v130 + 32) = v127;
  *(v130 + 40) = 0;
  v131 = sub_26D2F2534(v129, v195, &qword_2804F9888);
  v133 = MEMORY[0x28223BE20](v131, v132);
  v134 = v200;
  v135 = sub_26D30ECB0(v133);
  v137 = v136;
  v138 = v171;
  sub_26D3039F0(v134, v171);
  v139 = (*(v169 + 80) + 16) & ~*(v169 + 80);
  v140 = swift_allocObject();
  sub_26D303B74(v138, v140 + v139);
  v204 = v135;
  LOBYTE(v205) = v137 & 1;
  v206 = sub_26D303BD8;
  v207 = v140;
  v209 = 0;
  v208 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98E8);
  sub_26D303C70();
  sub_26D303FA8();
  v141 = v172;
  sub_26D30F8A8();
  v142 = *sub_26D30AB98();
  v143 = sub_26D2E906C(&qword_2804F9958, &qword_2804F9850);
  v145 = v178;
  v144 = v179;
  View.borderModifier(radius:)(v179, v143, v142);
  (*(v177 + 8))(v141, v144);
  v146 = sub_26D30FBA8();
  sub_26D30F7B8();
  v147 = &v145[*(v180 + 36)];
  *v147 = v146;
  *(v147 + 1) = v148;
  *(v147 + 2) = v149;
  *(v147 + 3) = v150;
  *(v147 + 4) = v151;
  v147[40] = 0;
  sub_26D304088();
  sub_26D30C894();
}

uint64_t sub_26D2FFB18()
{
  sub_26D2E9284(v1, &qword_2804F9858);
  v8 = sub_26D30FBD8();
  sub_26D30F7B8();
  v9 = v2 + *(*(v0 + 232) + 36);
  *v9 = v8;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11;
  *(v9 + 24) = v12;
  *(v9 + 32) = v13;
  *(v9 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9920);
  sub_26D303E98();
  v14 = *(v0 + 360);
  sub_26D30FF58();
  v15 = *(v0 + 344);
  sub_26D2E9114(*(v0 + 384), v15, &qword_2804F9898);
  sub_26D2E9114(v3, *(v0 + 392), &qword_2804F9888);
  v16 = v2;
  v17 = *(v0 + 240);
  sub_26D2E9114(v16, v17, &qword_2804F9860);
  sub_26D2E9114(v14, *(v0 + 368), &qword_2804F9848);
  v18 = *(v0 + 312);
  *(v0 + 432) = *(v0 + 320);
  *(v0 + 440) = v18;
  *(v0 + 448) = *(v0 + 304);
  *(v0 + 449) = *(v0 + 1385);
  *(v0 + 452) = *(v0 + 1388);
  *(v0 + 456) = *(v0 + 328);
  *(v0 + 464) = *(v0 + 308);
  *(v0 + 465) = *(v0 + 1378);
  *(v0 + 468) = *(v0 + 1381);
  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  *(v0 + 472) = v19;
  *(v0 + 480) = v20;
  v22 = *(v0 + 168);
  v21 = *(v0 + 176);
  *(v0 + 488) = v21;
  *(v0 + 496) = v22;
  *(v0 + 504) = 0;
  v23 = *(v0 + 1416);
  *(v0 + 505) = *(v0 + 1400);
  v24 = *(v0 + 1432);
  *(v0 + 553) = *(v0 + 1448);
  *(v0 + 537) = v24;
  *(v0 + 521) = v23;
  *(v0 + 616) = *(v0 + 1511);
  v25 = *(v0 + 1480);
  *(v0 + 601) = *(v0 + 1496);
  v26 = *(v0 + 1464);
  *(v0 + 585) = v25;
  *(v0 + 569) = v26;
  v27 = *(v0 + 432);
  v28 = *(v0 + 448);
  v29 = *(v0 + 480);
  v30 = *(v0 + 248);
  v30[2] = *(v0 + 464);
  v30[3] = v29;
  *v30 = v27;
  v30[1] = v28;
  v31 = *(v0 + 496);
  v32 = *(v0 + 512);
  v33 = *(v0 + 544);
  v30[6] = *(v0 + 528);
  v30[7] = v33;
  v30[4] = v31;
  v30[5] = v32;
  v34 = *(v0 + 560);
  v35 = *(v0 + 576);
  v36 = *(v0 + 608);
  v30[10] = *(v0 + 592);
  v30[11] = v36;
  v30[8] = v34;
  v30[9] = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9968);
  sub_26D2E9114(v15, v30 + v37[12], &qword_2804F9898);
  v38 = (v30 + v37[16]);
  v39 = *(v0 + 280);
  *(v0 + 624) = *(v0 + 288);
  *(v0 + 632) = v39;
  *(v0 + 640) = *(v0 + 264);
  *(v0 + 641) = *(v0 + 1225);
  *(v0 + 644) = *(v0 + 1228);
  *(v0 + 648) = *(v0 + 296);
  *(v0 + 656) = *(v0 + 272);
  *(v0 + 657) = *(v0 + 1218);
  *(v0 + 660) = *(v0 + 1221);
  *(v0 + 664) = v4;
  *(v0 + 672) = v5;
  *(v0 + 680) = v6;
  *(v0 + 688) = v7;
  *(v0 + 696) = 0;
  v40 = *(v0 + 1256);
  *(v0 + 697) = *(v0 + 1240);
  v41 = *(v0 + 1272);
  *(v0 + 745) = *(v0 + 1288);
  *(v0 + 729) = v41;
  *(v0 + 713) = v40;
  *(v0 + 808) = *(v0 + 1351);
  v42 = *(v0 + 1320);
  *(v0 + 793) = *(v0 + 1336);
  v43 = *(v0 + 1304);
  *(v0 + 777) = v42;
  *(v0 + 761) = v43;
  v44 = *(v0 + 624);
  v45 = *(v0 + 640);
  v46 = *(v0 + 672);
  v38[2] = *(v0 + 656);
  v38[3] = v46;
  *v38 = v44;
  v38[1] = v45;
  v47 = *(v0 + 688);
  v48 = *(v0 + 704);
  v49 = *(v0 + 736);
  v38[6] = *(v0 + 720);
  v38[7] = v49;
  v38[4] = v47;
  v38[5] = v48;
  v50 = *(v0 + 752);
  v51 = *(v0 + 768);
  v52 = *(v0 + 800);
  v38[10] = *(v0 + 784);
  v38[11] = v52;
  v38[8] = v50;
  v38[9] = v51;
  sub_26D2E9114(*(v0 + 392), v30 + v37[20], &qword_2804F9888);
  v53 = v30 + v37[24];
  *v53 = 0;
  v53[8] = 1;
  sub_26D2E9114(v17, v30 + v37[28], &qword_2804F9860);
  v54 = *(v0 + 368);
  sub_26D2E9114(v54, v30 + v37[32], &qword_2804F9848);
  sub_26D2E9114(v0 + 432, v0 + 1008, &qword_2804F9920);
  sub_26D2E9114(v0 + 624, v0 + 1008, &qword_2804F9920);
  sub_26D2E9284(*(v0 + 360), &qword_2804F9848);
  sub_26D2E9284(*(v0 + 352), &qword_2804F9860);
  sub_26D2E9284(*(v0 + 336), &qword_2804F9888);
  sub_26D2E9284(*(v0 + 384), &qword_2804F9898);
  sub_26D2E9284(v54, &qword_2804F9848);
  sub_26D2E9284(v17, &qword_2804F9860);
  sub_26D2E9284(*(v0 + 392), &qword_2804F9888);
  v55 = *(v0 + 280);
  *(v0 + 816) = *(v0 + 288);
  *(v0 + 824) = v55;
  *(v0 + 832) = *(v0 + 264);
  *(v0 + 833) = *(v0 + 1225);
  *(v0 + 836) = *(v0 + 1228);
  *(v0 + 840) = *(v0 + 296);
  *(v0 + 848) = *(v0 + 272);
  *(v0 + 849) = *(v0 + 1218);
  *(v0 + 852) = *(v0 + 1221);
  *(v0 + 856) = v4;
  *(v0 + 864) = v5;
  *(v0 + 872) = v6;
  *(v0 + 880) = v7;
  *(v0 + 888) = 0;
  v56 = *(v0 + 1320);
  *(v0 + 953) = *(v0 + 1304);
  *(v0 + 969) = v56;
  *(v0 + 985) = *(v0 + 1336);
  *(v0 + 1000) = *(v0 + 1351);
  v57 = *(v0 + 1256);
  *(v0 + 889) = *(v0 + 1240);
  *(v0 + 905) = v57;
  v58 = *(v0 + 1288);
  *(v0 + 921) = *(v0 + 1272);
  *(v0 + 937) = v58;
  sub_26D2E9284(v0 + 816, &qword_2804F9920);
  sub_26D2E9284(*(v0 + 344), &qword_2804F9898);
  v59 = *(v0 + 312);
  *(v0 + 1008) = *(v0 + 320);
  *(v0 + 1016) = v59;
  *(v0 + 1024) = *(v0 + 304);
  *(v0 + 1025) = *(v0 + 1385);
  *(v0 + 1028) = *(v0 + 1388);
  *(v0 + 1032) = *(v0 + 328);
  *(v0 + 1040) = *(v0 + 308);
  *(v0 + 1041) = *(v0 + 1378);
  *(v0 + 1044) = *(v0 + 1381);
  *(v0 + 1048) = v19;
  *(v0 + 1056) = v20;
  *(v0 + 1064) = v21;
  *(v0 + 1072) = v22;
  *(v0 + 1080) = 0;
  v60 = *(v0 + 1480);
  *(v0 + 1145) = *(v0 + 1464);
  *(v0 + 1161) = v60;
  *(v0 + 1177) = *(v0 + 1496);
  *(v0 + 1192) = *(v0 + 1511);
  v61 = *(v0 + 1416);
  *(v0 + 1081) = *(v0 + 1400);
  *(v0 + 1097) = v61;
  v62 = *(v0 + 1448);
  *(v0 + 1113) = *(v0 + 1432);
  *(v0 + 1129) = v62;
  return sub_26D2E9284(v0 + 1008, &qword_2804F9920);
}

uint64_t sub_26D300108@<X0>(uint64_t a1@<X8>)
{
  v146 = a1;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9978);
  v137 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v1);
  v3 = &v132 - v2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9980);
  MEMORY[0x28223BE20](v133, v4);
  v135 = &v132 - v5;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9988);
  MEMORY[0x28223BE20](v134, v6);
  v138 = &v132 - v7;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9990);
  MEMORY[0x28223BE20](v136, v8);
  v142 = &v132 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9998);
  v11 = *(v10 - 8);
  v143 = v10;
  v144 = v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v140 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v139 = &v132 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v132 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v132 - v27;
  v29 = sub_26D30F5B8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F99A0);
  v36 = MEMORY[0x28223BE20](v34 - 8, v35);
  v145 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v147 = &v132 - v39;
  sub_26D2FE200();
  sub_26D3060F8(v28);

  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_26D2E9284(v28, &qword_2804F9270);
    v40 = 1;
    v41 = v147;
    v42 = v143;
  }

  else
  {
    (*(v30 + 32))(v33, v28, v29);
    (*(v30 + 16))(v25, v33, v29);
    (*(v30 + 56))(v25, 0, 1, v29);
    sub_26D2E9114(v25, v21, &qword_2804F9270);
    v43 = swift_allocObject();
    v43[2] = sub_26D300E40;
    v43[3] = 0;
    v43[4] = sub_26D300F5C;
    v43[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F99C0);
    sub_26D304268();
    sub_26D30F7A8();
    sub_26D2E9284(v25, &qword_2804F9270);
    sub_26D2FE200();
    v44 = sub_26D307038();

    if (v44)
    {
      v45 = 2;
    }

    else
    {
      v45 = 0;
    }

    v46 = v135;
    (*(v137 + 32))(v135, v3, v141);
    v46[*(v133 + 36)] = v45;
    sub_26D30FFD8();
    sub_26D30F878();
    v47 = v46;
    v48 = v138;
    sub_26D2F2534(v47, v138, &qword_2804F9980);
    v49 = (v48 + *(v134 + 36));
    v50 = *&v178[39];
    *v49 = *&v178[23];
    v49[1] = v50;
    v49[2] = *&v178[55];
    v51 = sub_26D30FBC8();
    sub_26D30F7B8();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v48;
    v61 = v142;
    sub_26D2F2534(v60, v142, &qword_2804F9988);
    v62 = v61 + *(v136 + 36);
    *v62 = v51;
    *(v62 + 8) = v53;
    *(v62 + 16) = v55;
    *(v62 + 24) = v57;
    *(v62 + 32) = v59;
    *(v62 + 40) = 0;
    v63 = sub_26D30FBD8();
    sub_26D30F7B8();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    (*(v30 + 8))(v33, v29);
    v72 = v61;
    v73 = v140;
    sub_26D2F2534(v72, v140, &qword_2804F9990);
    v74 = v143;
    v75 = v73 + *(v143 + 36);
    *v75 = v63;
    *(v75 + 8) = v65;
    *(v75 + 16) = v67;
    *(v75 + 24) = v69;
    *(v75 + 32) = v71;
    *(v75 + 40) = 0;
    v76 = v73;
    v77 = v139;
    sub_26D2F2534(v76, v139, &qword_2804F9998);
    v78 = v147;
    sub_26D2F2534(v77, v147, &qword_2804F9998);
    v40 = 0;
    v41 = v78;
    v42 = v74;
  }

  (*(v144 + 56))(v41, v40, 1, v42);
  v144 = sub_26D30FA88();
  v154 = 0;
  sub_26D2FE200();
  v79 = sub_26D306B90();
  v81 = v80;

  if (v81)
  {
    v82 = v79;
  }

  else
  {
    v82 = 0;
  }

  v83 = 0xE000000000000000;
  if (v81)
  {
    v84 = v81;
  }

  else
  {
    v84 = 0xE000000000000000;
  }

  v173 = v82;
  v174 = v84;
  sub_26D2E9230();
  v85 = sub_26D30FD58();
  v87 = v86;
  v89 = v88;
  sub_26D30FCF8();
  v90 = sub_26D30FD28();
  v141 = v91;
  v142 = v90;
  LODWORD(v140) = v92;
  v143 = v93;

  sub_26D2E92E4(v85, v87, v89 & 1);

  sub_26D2FE200();
  v94 = sub_26D3066C4();

  if (v94)
  {
    v173 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F99F0);
    sub_26D2E906C(&qword_2804F99F8, &qword_2804F99F0);
    v95 = sub_26D310098();
    v83 = v96;
  }

  else
  {
    v95 = 0;
  }

  v173 = v95;
  v174 = v83;
  v97 = sub_26D30FD58();
  v99 = v98;
  v101 = v100;
  sub_26D30FC28();
  v102 = sub_26D30FD28();
  v104 = v103;
  v106 = v105;
  v139 = v107;

  sub_26D2E92E4(v97, v99, v101 & 1);

  v108 = sub_26D30FBC8();
  sub_26D30F7B8();
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v180 = v106 & 1;
  v178[87] = 0;
  v117 = sub_26D30FB58();
  LOBYTE(v97) = v140 & 1;
  v178[71] = v140 & 1;
  *&v171 = v102;
  *(&v171 + 1) = v104;
  v172[0] = v106 & 1;
  *&v172[1] = v155;
  *&v172[4] = *(&v155 + 3);
  *&v172[8] = v139;
  v172[16] = v108;
  *&v172[17] = *v179;
  *&v172[20] = *&v179[3];
  *&v172[24] = v110;
  *&v172[32] = v112;
  *&v172[40] = v114;
  *&v172[48] = v116;
  v172[56] = 0;
  *&v172[57] = v181;
  v172[59] = v182;
  *&v172[60] = v117;
  LODWORD(v140) = v140 & 1;
  v151 = *&v172[32];
  v152 = *&v172[48];
  v149 = *v172;
  v150 = *&v172[16];
  v148 = v171;
  v173 = v102;
  v174 = v104;
  v175 = v106 & 1;
  *(&v176 + 3) = *(&v155 + 3);
  LODWORD(v176) = v155;
  *(&v176 + 7) = v139;
  HIBYTE(v176) = v108;
  *(v177 + 3) = *&v179[3];
  LODWORD(v177[0]) = *v179;
  *(v177 + 7) = v110;
  *(v177 + 15) = v112;
  *(&v177[1] + 7) = v114;
  *(&v177[1] + 15) = v116;
  BYTE7(v177[2]) = 0;
  BYTE10(v177[2]) = v182;
  WORD4(v177[2]) = v181;
  *(&v177[2] + 11) = v117;
  v119 = v141;
  v118 = v142;
  sub_26D2E9348(v142, v141, v97);
  v120 = v143;

  sub_26D2E9114(&v171, v162, &qword_2804F9A00);
  sub_26D2E9284(&v173, &qword_2804F9A00);
  sub_26D2E92E4(v118, v119, v97);

  v160 = v151;
  v161 = v152;
  v158 = v149;
  v159 = v150;
  v157 = v148;
  v169 = v151;
  v170 = v152;
  *(&v156 + 1) = v171;
  DWORD1(v156) = *(&v171 + 3);
  *&v155 = v118;
  *(&v155 + 1) = v119;
  LOBYTE(v156) = v140;
  *(&v156 + 1) = v120;
  v162[0] = v118;
  v162[1] = v119;
  v163 = v140;
  *&v164[3] = *(&v171 + 3);
  *v164 = v171;
  v165 = v120;
  v167 = v149;
  v168 = v150;
  v166 = v148;
  sub_26D2E9114(&v155, &v173, &qword_2804F99A8);
  sub_26D2E9284(v162, &qword_2804F99A8);
  *&v153[55] = v158;
  *&v153[71] = v159;
  *&v153[87] = v160;
  *&v153[103] = v161;
  *&v153[7] = v155;
  *&v153[23] = v156;
  *&v153[39] = v157;
  LOBYTE(v120) = v154;
  v121 = v147;
  v122 = v145;
  sub_26D2E9114(v147, v145, &qword_2804F99A0);
  v123 = v146;
  sub_26D2E9114(v122, v146, &qword_2804F99A0);
  v124 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F99B0) + 48);
  *&v172[81] = *&v153[80];
  *&v172[65] = *&v153[64];
  *&v172[97] = *&v153[96];
  *&v172[1] = *v153;
  v125 = v123 + v124;
  v126 = v144;
  v171 = v144;
  v172[0] = v120;
  *&v172[112] = *&v153[111];
  *&v172[17] = *&v153[16];
  *&v172[33] = *&v153[32];
  *&v172[49] = *&v153[48];
  *(v125 + 128) = *&v153[111];
  v127 = *&v172[96];
  *(v125 + 96) = *&v172[80];
  *(v125 + 112) = v127;
  v128 = *&v172[32];
  *(v125 + 32) = *&v172[16];
  *(v125 + 48) = v128;
  v129 = *v172;
  *v125 = v171;
  *(v125 + 16) = v129;
  v130 = *&v172[64];
  *(v125 + 64) = *&v172[48];
  *(v125 + 80) = v130;
  sub_26D2E9114(&v171, &v173, &qword_2804F99B8);
  sub_26D2E9284(v121, &qword_2804F99A0);
  v177[3] = *&v153[64];
  v177[4] = *&v153[80];
  *v178 = *&v153[96];
  v176 = *v153;
  v177[0] = *&v153[16];
  v177[1] = *&v153[32];
  v173 = v126;
  v174 = 0;
  v175 = v120;
  *&v178[15] = *&v153[111];
  v177[2] = *&v153[48];
  sub_26D2E9284(&v173, &qword_2804F99B8);
  return sub_26D2E9284(v122, &qword_2804F99A0);
}

uint64_t sub_26D300E40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26D30FEE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v7 = sub_26D30FEF8();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 257;
  return result;
}

uint64_t sub_26D300F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26D30FA78();
  sub_26D30FE98();
  v3 = sub_26D30FE88();

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_26D300FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_26D307038())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  return MEMORY[0x26D6BB6F0](&v7, a2, &type metadata for IconMaskModifier, a3);
}

uint64_t sub_26D301040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9970);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98D8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98B8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v32 - v14;
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 1)
  {
    v18 = sub_26D30FBD8();
    sub_26D30F7B8();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9868);
    (*(*(v27 - 8) + 16))(v10, a1, v27);
    v28 = &v10[*(v7 + 36)];
    *v28 = v18;
    *(v28 + 1) = v20;
    *(v28 + 2) = v22;
    *(v28 + 3) = v24;
    *(v28 + 4) = v26;
    v28[40] = 0;
    sub_26D2E9114(v10, v6, &qword_2804F98D8);
    swift_storeEnumTagMultiPayload();
    sub_26D303664();
    sub_26D2E906C(&qword_2804F98C0, &qword_2804F9868);
    sub_26D30FAF8();
    sub_26D2E9284(v10, &qword_2804F98D8);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9868);
    (*(*(v29 - 8) + 16))(v6, a1, v29);
    swift_storeEnumTagMultiPayload();
    sub_26D303664();
    sub_26D2E906C(&qword_2804F98C0, &qword_2804F9868);
    sub_26D30FAF8();
  }

  v30 = v33;
  sub_26D2F2534(v15, v33, &qword_2804F98B8);
  return (*(v12 + 56))(v30, 0, 1, v11);
}

__n128 sub_26D301414@<Q0>(uint64_t a1@<X8>)
{
  *&v25 = sub_26D2F96AC();
  *(&v25 + 1) = v2;
  sub_26D2E9230();
  v3 = sub_26D30FD58();
  v5 = v4;
  v7 = v6;
  sub_26D30FCF8();
  v8 = sub_26D30FD28();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_26D2E92E4(v3, v5, v7 & 1);

  LOBYTE(v3) = sub_26D30FC18();
  sub_26D30F7B8();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_26D30FFD8();
  sub_26D30F968();
  *&v24[55] = v28;
  *&v24[71] = v29;
  *&v24[87] = v30;
  *&v24[103] = v31;
  *&v24[7] = v25;
  *&v24[23] = v26;
  *&v24[39] = v27;
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v3;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
  *(a1 + 56) = v20;
  *(a1 + 64) = v22;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v24[64];
  *(a1 + 153) = *&v24[80];
  *(a1 + 169) = *&v24[96];
  *(a1 + 184) = *(&v31 + 1);
  *(a1 + 73) = *v24;
  *(a1 + 89) = *&v24[16];
  result = *&v24[32];
  *(a1 + 105) = *&v24[32];
  *(a1 + 121) = *&v24[48];
  return result;
}

uint64_t sub_26D301604@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for WhatToTestViewAllPlatforms() + 20);
  type metadata accessor for WhatToTestViewModel();
  sub_26D30236C(&qword_2804F9748, type metadata accessor for WhatToTestViewModel);
  result = sub_26D30F828();
  *v2 = result;
  v2[8] = v4 & 1;
  return result;
}

uint64_t sub_26D3016C8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26D301728()
{
  type metadata accessor for WhatToTestViewModel();
  sub_26D30236C(&qword_2804F9748, type metadata accessor for WhatToTestViewModel);
  return sub_26D30F828();
}

uint64_t sub_26D301798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_26D2F2534(a1, a4, &qword_2804F93C8);
  result = type metadata accessor for WhatToTestViewAllPlatforms();
  v8 = a4 + *(result + 20);
  *v8 = a2;
  *(v8 + 8) = a3 & 1;
  return result;
}

uint64_t sub_26D3017FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9750);
  sub_26D2FE434();
  return sub_26D30F928();
}

uint64_t sub_26D30186C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v6 pointSize];

  v7 = sub_26D30FC58();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_26D30FCA8();
  sub_26D2E9284(v5, &qword_2804F97A0);
  sub_26D30FC88();
  v8 = sub_26D30FCD8();

  return v8;
}

uint64_t sub_26D3019B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v37 = a3;
  v4 = sub_26D30FEE8();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97C8);
  MEMORY[0x28223BE20](v33, v8);
  v10 = &v30 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97D0);
  MEMORY[0x28223BE20](v35, v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97D8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v30 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97E0);
  MEMORY[0x28223BE20](v36, v18);
  v20 = &v30 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97E8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v30 - v23;
  if (a2 == 2)
  {
    sub_26D30FED8();
    v27 = v32;
    (*(v32 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v31 = sub_26D30FEF8();

    (*(v27 + 8))(v7, v4);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97F0);
    (*(*(v28 - 8) + 16))(v10, v34, v28);
    v29 = &v10[*(v33 + 36)];
    *v29 = v31;
    *(v29 + 1) = 0;
    *(v29 + 8) = 1;
    sub_26D2E9114(v10, v17, &qword_2804F97C8);
    swift_storeEnumTagMultiPayload();
    sub_26D302A88();
    sub_26D302B6C();
    sub_26D30FAF8();
    sub_26D2E9114(v20, v13, &qword_2804F97E0);
    swift_storeEnumTagMultiPayload();
    sub_26D3029FC();
    sub_26D2E906C(&qword_2804F9808, &qword_2804F97F0);
    sub_26D30FAF8();
    sub_26D2E9284(v20, &qword_2804F97E0);
    return sub_26D2E9284(v10, &qword_2804F97C8);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97F0);
    if (a2 == 1)
    {
      (*(*(v25 - 8) + 16))(v24, v34, v25);
      *&v24[*(v21 + 36)] = 256;
      sub_26D2E9114(v24, v17, &qword_2804F97E8);
      swift_storeEnumTagMultiPayload();
      sub_26D302A88();
      sub_26D302B6C();
      sub_26D30FAF8();
      sub_26D2E9114(v20, v13, &qword_2804F97E0);
      swift_storeEnumTagMultiPayload();
      sub_26D3029FC();
      sub_26D2E906C(&qword_2804F9808, &qword_2804F97F0);
      sub_26D30FAF8();
      sub_26D2E9284(v20, &qword_2804F97E0);
      return sub_26D2E9284(v24, &qword_2804F97E8);
    }

    else
    {
      (*(*(v25 - 8) + 16))(v13, v34, v25);
      swift_storeEnumTagMultiPayload();
      sub_26D3029FC();
      sub_26D2E906C(&qword_2804F9808, &qword_2804F97F0);
      return sub_26D30FAF8();
    }
  }
}