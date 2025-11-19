id sub_275494548()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TonePicker.init(alertType:topic:defaultToneIdentifier:selectedToneIdentifier:showsDefault:noneTonePlacement:noneString:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12)
{
  v19 = *a10;
  [objc_allocWithZone(_s8DelegateCMa()) init];
  sub_275498338();
  v20 = *(&v36 + 1);
  *(a8 + 48) = v36;
  *(a8 + 56) = v20;
  v34 = 0;
  sub_275498338();
  *(a8 + 64) = v36;
  *&v36 = a4;
  *(&v36 + 1) = a5;
  v31 = a5;
  v32 = a6;
  v37 = a6;
  v38 = a7;
  v33 = a7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C38, &qword_275498B70);
  MEMORY[0x277C78250](&v34, v21);
  v22 = v35;
  if (a3)
  {
    v23 = sub_2754983C8();

    v24 = a12;
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_6:
    v25 = 0;
    v26 = a9;
    if (v24)
    {
      goto LABEL_4;
    }

LABEL_7:
    v27 = 0;
    goto LABEL_8;
  }

  v23 = 0;
  v24 = a12;
  if (!v35)
  {
    goto LABEL_6;
  }

LABEL_3:
  v25 = sub_2754983C8();

  v26 = a9;
  if (!v24)
  {
    goto LABEL_7;
  }

LABEL_4:
  v27 = sub_2754983C8();

LABEL_8:
  LOBYTE(v29) = v19 == 1;
  v28 = [objc_allocWithZone(MEMORY[0x277D71F30]) initWithAlertType:a1 topic:a2 defaultToneIdentifier:v23 selectedToneIdentifier:v25 showsDefault:v26 & 1 showsNone:v19 != 0 isNoneAtTop:v29 noneString:v27];

  *(a8 + 32) = v28;
  *(a8 + 40) = 0;
  *a8 = a4;
  *(a8 + 8) = v31;
  *(a8 + 16) = v32;
  *(a8 + 24) = v33;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id TonePicker.alertType.getter()
{
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C40, &qword_275498B78);
  sub_275498348();
  v1 = [v3 alertType];

  return v1;
}

id TonePicker.topic.getter()
{
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C40, &qword_275498B78);
  sub_275498348();
  v1 = [v3 topic];

  return v1;
}

uint64_t TonePicker.defaultToneIdentifier.getter()
{
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C40, &qword_275498B78);
  sub_275498348();
  v1 = [v4 defaultToneIdentifier];

  v2 = sub_2754983D8();
  return v2;
}

uint64_t TonePicker.selectedToneIdentifier.getter()
{
  v1 = *(v0 + 8);
  v4[2] = *v0;
  v4[3] = v1;
  v5 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C38, &qword_275498B70);
  MEMORY[0x277C78250](v4, v2);
  return v4[0];
}

double sub_2754949B4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  v9 = *(a1 + 1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C38, &qword_275498B70);
  MEMORY[0x277C78250](&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t sub_275494A14(uint64_t *a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 1);
  v3 = *a1;
  v4 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C38, &qword_275498B70);
  return sub_275498388();
}

uint64_t TonePicker.selectedToneIdentifier.setter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C38, &qword_275498B70);
  return sub_275498388();
}

void (*TonePicker.selectedToneIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 96) = *v1;
  *(v3 + 104) = v6;
  v8 = v1[2];
  v7 = v1[3];
  v4[14] = v8;
  v4[15] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v8;
  v4[3] = v7;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C38, &qword_275498B70);
  MEMORY[0x277C78250]();
  return sub_275494B98;
}

void sub_275494B98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[16];
  v7 = v2[14];
  v2[5] = v3;
  v2[6] = v7;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    sub_275498388();

    v8 = v2[9];
  }

  else
  {
    sub_275498388();
  }

  free(v2);
}

uint64_t TonePicker.$selectedToneIdentifier.getter()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C38, &qword_275498B70);
  sub_275498398();
  return v2;
}

void sub_275494CCC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C40, &qword_275498B78);
  sub_275498348();
  v3 = [v8 numberOfSections];

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      sub_275498348();
      v5 = [v8 pickerItemForSection_];

      v6 = v5;
      MEMORY[0x277C782D0]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_275498408();
      }

      sub_275498418();
    }
  }
}

id sub_275494E2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v17 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v20 = v4;
  v21 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C40, &qword_275498B78);
  sub_275498348();
  v6 = [v18 selectedToneIdentifier];

  if (v6)
  {
    v7 = sub_2754983D8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v20 = v1;
  v21 = v2;
  v22 = v3;
  v23 = v17;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C38, &qword_275498B70);
  MEMORY[0x277C78250](&v18);
  if (!v9)
  {
    if (!v19)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (!v19)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v7 == v18 && v9 == v19)
  {

    goto LABEL_15;
  }

  v16 = sub_275498458();

  if (v16)
  {
    goto LABEL_15;
  }

LABEL_11:
  v20 = v4;
  v21 = v5;
  sub_275498348();
  v11 = v18;
  v20 = v1;
  v21 = v2;
  v22 = v3;
  v23 = v17;
  MEMORY[0x277C78250](&v18, v10);
  if (v19)
  {
    v12 = sub_2754983C8();
  }

  else
  {
    v12 = 0;
  }

  [v11 setSelectedToneIdentifier_];

LABEL_15:
  v20 = v4;
  v21 = v5;
  sub_275498348();
  v13 = v18;
  v14 = [v18 selectedTonePickerItem];

  return v14;
}

uint64_t TonePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v17 = v1[2];
  v18 = v3;
  v19 = v1[4];
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C48, &qword_275498B80);
  sub_275495AFC();
  sub_2754982A8();
  v5 = swift_allocObject();
  v6 = v18;
  *(v5 + 3) = v17;
  *(v5 + 4) = v6;
  *(v5 + 5) = v19;
  v7 = v16;
  *(v5 + 1) = v15;
  *(v5 + 2) = v7;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C60, &qword_275498B88) + 36));
  *v8 = sub_275495C20;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  v9 = swift_allocObject();
  v10 = v18;
  v9[3] = v17;
  v9[4] = v10;
  v9[5] = v19;
  v11 = v16;
  v9[1] = v15;
  v9[2] = v11;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C68, &qword_275498B90) + 36));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = sub_275495C28;
  v12[3] = v9;
  sub_275495C30(&v15, v14);
  return sub_275495C30(&v15, v14);
}

void sub_2754951B0(_OWORD *a1)
{
  if (qword_2809F3C30 != -1)
  {
    swift_once();
  }

  v2 = sub_275498268();
  __swift_project_value_buffer(v2, qword_2809F4190);
  sub_275495C30(a1, v32);
  v3 = sub_275498248();
  v4 = sub_275498428();
  if (!os_log_type_enabled(v3, v4))
  {

    sub_2754964E4(a1);
    goto LABEL_7;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  *&v33 = v6;
  *v5 = 136315138;
  v32[0] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C40, &qword_275498B78);
  sub_275498348();
  [v31 alertType];

  v7 = NSStringFromTLAlertType();
  if (v7)
  {
    v8 = v7;
    sub_2754964E4(a1);
    v9 = sub_2754983D8();
    v11 = v10;

    v12 = sub_275496514(v9, v11, &v33);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_275493000, v3, v4, "Tone picker for %s appearing.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x277C78690](v6, -1, -1);
    MEMORY[0x277C78690](v5, -1, -1);

LABEL_7:
    v33 = a1[3];
    v32[0] = a1[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3CB0, &qword_275498D30);
    sub_275498348();
    v13 = swift_allocObject();
    v14 = a1[4];
    *(v13 + 4) = a1[3];
    *(v13 + 5) = v14;
    v15 = a1[2];
    *(v13 + 2) = a1[1];
    *(v13 + 3) = v15;
    *(v13 + 1) = *a1;
    v16 = &v31[OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onTonesReload];
    v17 = *&v31[OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onTonesReload];
    v18 = *&v31[OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onTonesReload + 8];
    *v16 = sub_275496B68;
    v16[1] = v13;
    sub_275495C30(a1, v32);
    sub_275496B70(v17);

    v32[0] = v33;
    sub_275498348();
    v19 = swift_allocObject();
    v20 = a1[4];
    *(v19 + 4) = a1[3];
    *(v19 + 5) = v20;
    v21 = a1[2];
    *(v19 + 2) = a1[1];
    *(v19 + 3) = v21;
    *(v19 + 1) = *a1;
    v22 = &v31[OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onToneUpdatedCheckedStatus];
    v23 = *&v31[OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onToneUpdatedCheckedStatus];
    v24 = *&v31[OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onToneUpdatedCheckedStatus + 8];
    *v22 = sub_275496B80;
    v22[1] = v19;
    sub_275495C30(a1, v32);
    sub_275496B70(v23);

    v32[0] = v33;
    sub_275498348();
    v25 = swift_allocObject();
    v26 = a1[4];
    *(v25 + 4) = a1[3];
    *(v25 + 5) = v26;
    v27 = a1[2];
    *(v25 + 2) = a1[1];
    *(v25 + 3) = v27;
    *(v25 + 1) = *a1;
    v28 = &v31[OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onToneSelected];
    v29 = *&v31[OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onToneSelected];
    v30 = *&v31[OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onToneSelected + 8];
    *v28 = sub_275496B88;
    v28[1] = v25;
    sub_275495C30(a1, v32);
    sub_275496B70(v29);

    v32[0] = a1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C40, &qword_275498B78);
    sub_275498348();
    v32[0] = v33;
    sub_275498348();
    [v31 setDelegate_];

    return;
  }

  sub_2754964E4(a1);
  __break(1u);
}

uint64_t sub_2754955BC(uint64_t a1)
{
  v4 = *(a1 + 64);
  v2[1] = *(a1 + 64);
  v5 = *(&v4 + 1);
  sub_275496B90(&v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3CC0, &unk_275498D40);
  result = sub_275498348();
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v2[0] = v4;
    sub_275498358();
    return sub_275496C00(&v4);
  }

  return result;
}

uint64_t sub_27549565C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 64);
  v4[1] = *(a3 + 64);
  v7 = *(&v6 + 1);
  sub_275496B90(&v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3CC0, &unk_275498D40);
  result = sub_275498348();
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v4[0] = v6;
    sub_275498358();
    return sub_275496C00(&v6);
  }

  return result;
}

uint64_t sub_2754956FC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *a3;
  v5 = a3[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C38, &qword_275498B70);
  return sub_275498388();
}

void sub_275495758(uint64_t a1)
{
  if (qword_2809F3C30 != -1)
  {
    swift_once();
  }

  v2 = sub_275498268();
  __swift_project_value_buffer(v2, qword_2809F4190);
  sub_275495C30(a1, v16);
  v3 = sub_275498248();
  v4 = sub_275498428();
  if (!os_log_type_enabled(v3, v4))
  {

    sub_2754964E4(a1);
    goto LABEL_7;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v15 = v6;
  *v5 = 136315138;
  v16[0] = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C40, &qword_275498B78);
  sub_275498348();
  [v14 alertType];

  v7 = NSStringFromTLAlertType();
  if (v7)
  {
    v8 = v7;
    sub_2754964E4(a1);
    v9 = sub_2754983D8();
    v11 = v10;

    v12 = sub_275496514(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_275493000, v3, v4, "Tone picker for %s disappearing.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x277C78690](v6, -1, -1);
    MEMORY[0x277C78690](v5, -1, -1);

LABEL_7:
    v16[0] = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C40, &qword_275498B78);
    sub_275498348();
    v13 = v15;
    [v15 finishedWithPicker];

    return;
  }

  sub_2754964E4(a1);
  __break(1u);
}

uint64_t sub_275495980(__int128 *a1)
{
  v2 = a1[2];
  v3 = a1[4];
  v19 = a1[3];
  v20 = v3;
  v4 = *a1;
  v17 = a1[1];
  v18 = v2;
  v16 = v4;
  v5 = sub_275494E2C();
  v6 = a1[2];
  v7 = a1[4];
  v19 = a1[3];
  v20 = v7;
  v8 = *a1;
  v17 = a1[1];
  v18 = v6;
  v16 = v8;
  sub_275494CCC();
  v15 = v9;
  swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  v11 = *a1;
  *(v10 + 40) = a1[1];
  v12 = a1[3];
  *(v10 + 56) = a1[2];
  *(v10 + 72) = v12;
  *(v10 + 88) = a1[4];
  *(v10 + 24) = v11;
  sub_275495C30(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3CC8, &qword_275498D78);
  sub_275496D2C(&unk_2809F3CD0, &qword_2809F3CC8, &qword_275498D78);
  sub_275495BC8();
  return sub_2754983A8();
}

unint64_t sub_275495AFC()
{
  result = qword_2809F3C50;
  if (!qword_2809F3C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F3C48, &qword_275498B80);
    sub_275495BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F3C50);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_275495BC8()
{
  result = qword_2809F3C58;
  if (!qword_2809F3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F3C58);
  }

  return result;
}

id sub_275495C68@<X0>(void **a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = swift_allocObject();
  v8 = a3[3];
  v7[3] = a3[2];
  v7[4] = v8;
  v7[5] = a3[4];
  v9 = a3[1];
  v7[1] = *a3;
  v7[2] = v9;
  *a4 = v6;
  a4[1] = a2;
  a4[2] = sub_275496DE4;
  a4[3] = v7;
  v10 = v6;
  sub_275495C30(a3, v13);

  return a2;
}

void sub_275495D10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C40, &qword_275498B78);
  sub_275498348();
  [v3 didSelectTonePickerItem_];
}

uint64_t TonePicker.NoneTonePlacement.hashValue.getter()
{
  v1 = *v0;
  sub_275498468();
  MEMORY[0x277C78350](v1);
  return sub_275498488();
}

uint64_t sub_275495E20()
{
  v1 = *v0;
  sub_275498468();
  MEMORY[0x277C78350](v1);
  return sub_275498488();
}

uint64_t sub_275495E94()
{
  v1 = *v0;
  sub_275498468();
  MEMORY[0x277C78350](v1);
  return sub_275498488();
}

unint64_t sub_275495F20()
{
  result = qword_2809F3C80;
  if (!qword_2809F3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F3C80);
  }

  return result;
}

uint64_t sub_275495FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v17 = v1[2];
  v18 = v3;
  v19 = v1[4];
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C48, &qword_275498B80);
  sub_275495AFC();
  sub_2754982A8();
  v5 = swift_allocObject();
  v6 = v18;
  *(v5 + 3) = v17;
  *(v5 + 4) = v6;
  *(v5 + 5) = v19;
  v7 = v16;
  *(v5 + 1) = v15;
  *(v5 + 2) = v7;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C60, &qword_275498B88) + 36));
  *v8 = sub_275496DEC;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  v9 = swift_allocObject();
  v10 = v18;
  v9[3] = v17;
  v9[4] = v10;
  v9[5] = v19;
  v11 = v16;
  v9[1] = v15;
  v9[2] = v11;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3C68, &qword_275498B90) + 36));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = sub_275496DF0;
  v12[3] = v9;
  sub_275495C30(&v15, v14);
  return sub_275495C30(&v15, v14);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_275496144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_27549618C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TonePicker.NoneTonePlacement(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TonePicker.NoneTonePlacement(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_275496368()
{
  result = qword_2809F3C88;
  if (!qword_2809F3C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F3C68, &qword_275498B90);
    sub_2754963F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F3C88);
  }

  return result;
}

unint64_t sub_2754963F4()
{
  result = qword_2809F3C90;
  if (!qword_2809F3C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F3C60, &qword_275498B88);
    sub_275496D2C(&qword_2809F3C98, &qword_2809F3CA0, &qword_275498D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F3C90);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_275496514(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2754965E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_275496B08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2754965E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2754966EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_275498448();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2754966EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_275496738(a1, a2);
  sub_275496868(&unk_288419B90);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_275496738(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_275496954(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_275498448();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2754983E8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_275496954(v10, 0);
        result = sub_275498438();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_275496868(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
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

  result = sub_2754969C8(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_275496954(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3CA8, &qword_275498D28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2754969C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3CA8, &qword_275498D28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_275496B08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_275496B70(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_275496B90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3CB8, &qword_275498D38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275496C00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3CC0, &unk_275498D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_275496C74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 section];
  *a2 = result;
  return result;
}

uint64_t sub_275496CA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_275496D2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

id sub_275497094()
{
  v2.receiver = v0;
  v2.super_class = _s8DelegateCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_275497154(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_275497170(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2754971B8(uint64_t result, int a2, int a3)
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

uint64_t sub_275497224(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_275497628(a1);
  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = a2;

  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3DE0, &qword_275498E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3DD8, &unk_275498E28);
  sub_275496D2C(&qword_2809F3DE8, &qword_2809F3DE0, &qword_275498E60);
  sub_275497804();
  sub_275496D2C(&qword_2809F3DD0, &qword_2809F3DD8, &unk_275498E28);
  return sub_2754983A8();
}

void sub_27549739C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2754983D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_275497404(void **a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = v9;
  sub_275497914();
  v11 = a2;
  v12 = a3;

  v13 = v9;
  return sub_275498368();
}

uint64_t sub_2754974F0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3DC0, &qword_275498E20);
  sub_275497578();
  return sub_2754983B8();
}

unint64_t sub_275497578()
{
  result = qword_2809F3DC8;
  if (!qword_2809F3DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F3DC0, &qword_275498E20);
    sub_275496D2C(&qword_2809F3DD0, &qword_2809F3DD8, &unk_275498E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F3DC8);
  }

  return result;
}

unint64_t sub_275497628(void *a1)
{
  v12 = MEMORY[0x277D84F90];
  result = [a1 numberOfChildren];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = [a1 childItemAtIndex_];
      if (v6)
      {
        v7 = v6;
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8 && (v9 = [v8 itemKind], v9 <= 1) && !v9)
        {
          v10 = v7;
          MEMORY[0x277C782D0]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_275498408();
          }

          sub_275498418();

          v5 = v12;
        }

        else
        {
        }
      }

      ++v4;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

uint64_t sub_2754977B0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_275497804()
{
  result = qword_2809F3DF0;
  if (!qword_2809F3DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F3DF8, &unk_275498E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F3DF0);
  }

  return result;
}

uint64_t sub_275497880()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_275497900@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

unint64_t sub_275497914()
{
  result = qword_2809F3E00;
  if (!qword_2809F3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F3E00);
  }

  return result;
}

unint64_t sub_27549796C()
{
  result = qword_2809F3E08;
  if (!qword_2809F3E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F3E10, &qword_275498E78);
    sub_275497578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F3E08);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_275497A10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_275497A58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_275497AC4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3E20, &qword_275498F00);
  v41 = *(v43 - 8);
  v5 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v7 = &v37[-v6];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3E28, &qword_275498F08);
  v8 = *(*(v40 - 8) + 64);
  v9 = (MEMORY[0x28223BE20])();
  v45 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v37[-v12];
  MEMORY[0x28223BE20](v11);
  v42 = &v37[-v14];
  result = [a1 text];
  if (result)
  {
    v16 = result;
    v17 = sub_2754983D8();
    v19 = v18;

    v46 = v17;
    v47 = v19;
    sub_275497EB0();
    v20 = sub_2754982C8();
    v22 = v21;
    v24 = v23;
    sub_275498288();
    v25 = sub_2754982B8();
    v27 = v26;
    v38 = v28;
    v39 = v29;
    sub_275497F04(v20, v22, v24 & 1);

    v30 = sub_275498328();
    v31 = sub_275498318();
    v46 = v30;
    v47 = v31;
    sub_275498298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3E38, &qword_275498F10);
    sub_275497F14();
    sub_2754982F8();

    if (v44)
    {
      v32 = 1.0;
    }

    else
    {
      v32 = 0.0;
    }

    (*(v41 + 32))(v13, v7, v43);
    *&v13[*(v40 + 36)] = v32;
    v33 = v42;
    sub_275497FCC(v13, v42);
    v34 = v45;
    sub_27549803C(v33, v45);
    *a3 = v25;
    *(a3 + 8) = v27;
    v35 = v38 & 1;
    *(a3 + 16) = v38 & 1;
    *(a3 + 24) = v39;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3E58, qword_275498F20);
    sub_27549803C(v34, a3 + *(v36 + 64));
    sub_2754980AC(v25, v27, v35);

    sub_2754980BC(v33);
    sub_2754980BC(v34);
    sub_275497F04(v25, v27, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_275497E48@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = sub_275498278();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3E18, &qword_275498EF8);
  return sub_275497AC4(v3, v4, a1 + *(v5 + 44));
}

unint64_t sub_275497EB0()
{
  result = qword_2809F3E30;
  if (!qword_2809F3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F3E30);
  }

  return result;
}

uint64_t sub_275497F04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_275497F14()
{
  result = qword_2809F3E40;
  if (!qword_2809F3E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F3E38, &qword_275498F10);
    sub_275496D2C(&qword_2809F3E48, &qword_2809F3E50, &qword_275498F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F3E40);
  }

  return result;
}

uint64_t sub_275497FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3E28, &qword_275498F08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27549803C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3E28, &qword_275498F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2754980AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2754980BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F3E28, &qword_275498F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275498168()
{
  v0 = sub_275498268();
  __swift_allocate_value_buffer(v0, qword_2809F4190);
  __swift_project_value_buffer(v0, qword_2809F4190);
  return sub_275498258();
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